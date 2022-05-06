; ModuleID = '/llk/IR/net/ipv6/ip6_tunnel.c_pt.bc'
source_filename = "../net/ipv6/ip6_tunnel.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip6_tnl_parse_tlv_enc_lim:\09\09\09\09\09"
module asm "\09.asciz \09\22ip6_tnl_parse_tlv_enc_lim\22\09\09\09\09\09"
module asm "__kstrtabns_ip6_tnl_parse_tlv_enc_lim:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip6_tnl_get_cap:\09\09\09\09\09"
module asm "\09.asciz \09\22ip6_tnl_get_cap\22\09\09\09\09\09"
module asm "__kstrtabns_ip6_tnl_get_cap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip6_tnl_rcv_ctl:\09\09\09\09\09"
module asm "\09.asciz \09\22ip6_tnl_rcv_ctl\22\09\09\09\09\09"
module asm "__kstrtabns_ip6_tnl_rcv_ctl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip6_tnl_rcv:\09\09\09\09\09"
module asm "\09.asciz \09\22ip6_tnl_rcv\22\09\09\09\09\09"
module asm "__kstrtabns_ip6_tnl_rcv:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip6_tnl_xmit_ctl:\09\09\09\09\09"
module asm "\09.asciz \09\22ip6_tnl_xmit_ctl\22\09\09\09\09\09"
module asm "__kstrtabns_ip6_tnl_xmit_ctl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip6_tnl_xmit:\09\09\09\09\09"
module asm "\09.asciz \09\22ip6_tnl_xmit\22\09\09\09\09\09"
module asm "__kstrtabns_ip6_tnl_xmit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip6_tnl_change_mtu:\09\09\09\09\09"
module asm "\09.asciz \09\22ip6_tnl_change_mtu\22\09\09\09\09\09"
module asm "__kstrtabns_ip6_tnl_change_mtu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip6_tnl_get_iflink:\09\09\09\09\09"
module asm "\09.asciz \09\22ip6_tnl_get_iflink\22\09\09\09\09\09"
module asm "__kstrtabns_ip6_tnl_get_iflink:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip6_tnl_encap_add_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22ip6_tnl_encap_add_ops\22\09\09\09\09\09"
module asm "__kstrtabns_ip6_tnl_encap_add_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip6_tnl_encap_del_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22ip6_tnl_encap_del_ops\22\09\09\09\09\09"
module asm "__kstrtabns_ip6_tnl_encap_del_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip6_tnl_encap_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22ip6_tnl_encap_setup\22\09\09\09\09\09"
module asm "__kstrtabns_ip6_tnl_encap_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip6_tnl_get_link_net:\09\09\09\09\09"
module asm "\09.asciz \09\22ip6_tnl_get_link_net\22\09\09\09\09\09"
module asm "__kstrtabns_ip6_tnl_get_link_net:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.166 }
%union.anon.166 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type {}
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.35, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.35 = type { %struct.anon.36 }
%struct.anon.36 = type { ptr, i32, i32, i32 }
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
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.xfrm6_tunnel = type { ptr, ptr, ptr, ptr, i32 }
%struct.rtnl_link_ops = type { %struct.list_head, ptr, i32, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.header_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.tnl_ptk_info = type { i16, i16, i32, i32, i32 }
%struct.nla_policy = type { i8, i8, i16, %union.anon.75 }
%union.anon.75 = type { i32 }
%struct.sk_buff = type { %union.anon.48, %union.anon.51, %union.anon.52, [48 x i8], %union.anon.53, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.55, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { ptr, ptr, %union.anon.50 }
%union.anon.50 = type { ptr }
%union.anon.51 = type { ptr }
%union.anon.52 = type { i64 }
%union.anon.53 = type { %struct.anon.54 }
%struct.anon.54 = type { i32, ptr }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.57, i32, i32, i32, i16, i16, %union.anon.59, %union.anon.60, %union.anon.61, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.57 = type { i32 }
%union.anon.59 = type { i32 }
%union.anon.60 = type { i32 }
%union.anon.61 = type { i16 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.70 }
%union.anon.70 = type { [4 x i32] }
%struct.frag_hdr = type { i8, i8, i16, i32 }
%struct.ipv6_opt_hdr = type { i8, i8 }
%struct.ipv6_tlv_tnl_enc_lim = type { i8, i8, i8 }
%struct.ip6_tnl = type { ptr, ptr, %struct.netdevice_tracker, ptr, %struct.__ip6_tnl_parm, %struct.flowi, %struct.dst_cache, %struct.gro_cells, i32, i32, i32, i32, i32, i32, i32, %struct.ip_tunnel_encap, i32 }
%struct.netdevice_tracker = type {}
%struct.__ip6_tnl_parm = type { [16 x i8], i32, i8, i8, i8, i8, i32, i32, %struct.in6_addr, %struct.in6_addr, i16, i16, i32, i32, i32, i32, i8, i8, i16 }
%struct.flowi = type { %union.anon.81 }
%union.anon.81 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.kuid_t = type { i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.dst_cache = type { ptr, i32 }
%struct.gro_cells = type { ptr }
%struct.ip_tunnel_encap = type { i16, i16, i16, i16 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.171, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.189, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.171 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type {}
%union.anon.189 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.pcpu_sw_netstats = type { i64, i64, i64, i64, %struct.u64_stats_sync, [28 x i8] }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.ipv6_tel_txoption = type { %struct.ipv6_txoptions, [8 x i8] }
%struct.ipv6_txoptions = type { %struct.refcount_struct, i32, i16, i16, ptr, ptr, ptr, ptr, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, %struct.netdevice_tracker }
%struct.metadata_dst = type { %struct.dst_entry, i32, %union.anon.190 }
%union.anon.190 = type { %struct.ip_tunnel_info }
%struct.ip_tunnel_info = type { %struct.ip_tunnel_key, %struct.dst_cache, i8, i8 }
%struct.ip_tunnel_key = type { i64, %union.anon.191, i16, i8, i8, i32, i16, i16 }
%union.anon.191 = type { %struct.anon.193 }
%struct.anon.193 = type { %struct.in6_addr, %struct.in6_addr }
%struct.lwtunnel_state = type { i16, i16, i16, %struct.atomic_t, ptr, ptr, %struct.callback_head, [0 x i8] }
%struct.neighbour = type { ptr, ptr, ptr, i32, i32, %struct.rwlock_t, %struct.refcount_struct, i32, %struct.sk_buff_head, %struct.timer_list, i32, %struct.atomic_t, i8, i8, i8, i8, i32, %struct.seqlock_t, [4 x i8], [32 x i8], %struct.hh_cache, ptr, ptr, %struct.list_head, %struct.list_head, %struct.callback_head, ptr, %struct.netdevice_tracker, [0 x i8] }
%struct.sk_buff_head = type { %union.anon.77, i32, %struct.spinlock }
%union.anon.77 = type { %struct.anon.78 }
%struct.anon.78 = type { ptr, ptr }
%struct.hh_cache = type { i32, %struct.seqlock_t, [24 x i32] }
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.rt6key = type { %struct.in6_addr, i32 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.ip6_tnl_encap_ops = type { ptr, ptr, ptr }
%struct.flow_keys = type { %struct.flow_dissector_key_control, %struct.flow_dissector_key_basic, %struct.flow_dissector_key_tags, %struct.flow_dissector_key_vlan, %struct.flow_dissector_key_vlan, %struct.flow_dissector_key_keyid, %struct.flow_dissector_key_ports, %struct.flow_dissector_key_icmp, %struct.flow_dissector_key_addrs, [4 x i8] }
%struct.flow_dissector_key_control = type { i16, i16, i32 }
%struct.flow_dissector_key_basic = type { i16, i8, i8 }
%struct.flow_dissector_key_tags = type { i32 }
%struct.flow_dissector_key_vlan = type { %union.anon.194, i16 }
%union.anon.194 = type { %struct.anon.195 }
%struct.anon.195 = type { i16 }
%struct.flow_dissector_key_keyid = type { i32 }
%struct.flow_dissector_key_ports = type { %union.anon.196 }
%union.anon.196 = type { i32 }
%struct.flow_dissector_key_icmp = type { %struct.anon.198, i16 }
%struct.anon.198 = type { i8, i8 }
%struct.flow_dissector_key_addrs = type { %union.anon.199 }
%union.anon.199 = type { %struct.flow_dissector_key_ipv6_addrs }
%struct.flow_dissector_key_ipv6_addrs = type { %struct.in6_addr, %struct.in6_addr }
%struct.vlan_hdr = type { i16, i16 }
%struct.ip6_tnl_net = type { ptr, [32 x ptr], [1 x ptr], [2 x ptr], ptr }
%struct.inet6_skb_parm = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.ip_options = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, [0 x i8] }
%struct.ip6_tnl_parm = type { [16 x i8], i32, i8, i8, i8, i32, i32, %struct.in6_addr, %struct.in6_addr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.flowi4 = type { %struct.flowi_common, i32, i32, %union.flowi_uli }
%struct.anon.82 = type { i16, i16 }
%struct.rtable = type { %struct.dst_entry, i32, i32, i16, i8, i8, i32, i8, %union.anon.132, i32, %struct.list_head, ptr }
%union.anon.132 = type { %struct.in6_addr }

@__UNIQUE_ID_author618 = internal constant [22 x i8] c"author=Ville Nuorvala\00", section ".modinfo", align 1
@__UNIQUE_ID_description619 = internal constant [34 x i8] c"description=IPv6 tunneling device\00", section ".modinfo", align 1
@__UNIQUE_ID_license620 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias621 = internal constant [23 x i8] c"alias=rtnl-link-ip6tnl\00", section ".modinfo", align 1
@__UNIQUE_ID_alias622 = internal constant [21 x i8] c"alias=netdev-ip6tnl0\00", section ".modinfo", align 1
@__param_str_log_ecn_error = internal constant [14 x i8] c"log_ecn_error\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@log_ecn_error = internal global i8 1, align 1
@__param_log_ecn_error = internal constant %struct.kernel_param { ptr @__param_str_log_ecn_error, ptr @__this_module, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.166 { ptr @log_ecn_error } }, section "__param", align 4
@__UNIQUE_ID_log_ecn_errortype623 = internal constant [28 x i8] c"parmtype=log_ecn_error:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_log_ecn_error624 = internal constant [59 x i8] c"parm=log_ecn_error:Log packets received with corrupted ECN\00", section ".modinfo", align 1
@__kstrtab_ip6_tnl_parse_tlv_enc_lim = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip6_tnl_parse_tlv_enc_lim = external dso_local constant [0 x i8], align 1
@__ksymtab_ip6_tnl_parse_tlv_enc_lim = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip6_tnl_parse_tlv_enc_lim to i32), ptr @__kstrtab_ip6_tnl_parse_tlv_enc_lim, ptr @__kstrtabns_ip6_tnl_parse_tlv_enc_lim }, section "___ksymtab+ip6_tnl_parse_tlv_enc_lim", align 4
@__kstrtab_ip6_tnl_get_cap = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip6_tnl_get_cap = external dso_local constant [0 x i8], align 1
@__ksymtab_ip6_tnl_get_cap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip6_tnl_get_cap to i32), ptr @__kstrtab_ip6_tnl_get_cap, ptr @__kstrtabns_ip6_tnl_get_cap }, section "___ksymtab+ip6_tnl_get_cap", align 4
@__kstrtab_ip6_tnl_rcv_ctl = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip6_tnl_rcv_ctl = external dso_local constant [0 x i8], align 1
@__ksymtab_ip6_tnl_rcv_ctl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip6_tnl_rcv_ctl to i32), ptr @__kstrtab_ip6_tnl_rcv_ctl, ptr @__kstrtabns_ip6_tnl_rcv_ctl }, section "___ksymtab_gpl+ip6_tnl_rcv_ctl", align 4
@__kstrtab_ip6_tnl_rcv = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip6_tnl_rcv = external dso_local constant [0 x i8], align 1
@__ksymtab_ip6_tnl_rcv = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip6_tnl_rcv to i32), ptr @__kstrtab_ip6_tnl_rcv, ptr @__kstrtabns_ip6_tnl_rcv }, section "___ksymtab+ip6_tnl_rcv", align 4
@ip6_tnl_xmit_ctl._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.ip6_tnl_xmit_ctl = private unnamed_addr constant [17 x i8] c"ip6_tnl_xmit_ctl\00", align 1
@.str = private unnamed_addr constant [58 x i8] c"\014ip6_tunnel: %s xmit: Local address not yet configured!\0A\00", align 1
@ip6_tnl_xmit_ctl._rs.1 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.2 = private unnamed_addr constant [73 x i8] c"\014ip6_tunnel: %s xmit: Routing loop! Remote address found on this node!\0A\00", align 1
@__kstrtab_ip6_tnl_xmit_ctl = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip6_tnl_xmit_ctl = external dso_local constant [0 x i8], align 1
@__ksymtab_ip6_tnl_xmit_ctl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip6_tnl_xmit_ctl to i32), ptr @__kstrtab_ip6_tnl_xmit_ctl, ptr @__kstrtabns_ip6_tnl_xmit_ctl }, section "___ksymtab_gpl+ip6_tnl_xmit_ctl", align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"\014ip6_tunnel: %s: Local routing loop detected!\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@__kstrtab_ip6_tnl_xmit = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip6_tnl_xmit = external dso_local constant [0 x i8], align 1
@__ksymtab_ip6_tnl_xmit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip6_tnl_xmit to i32), ptr @__kstrtab_ip6_tnl_xmit, ptr @__kstrtabns_ip6_tnl_xmit }, section "___ksymtab+ip6_tnl_xmit", align 4
@__kstrtab_ip6_tnl_change_mtu = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip6_tnl_change_mtu = external dso_local constant [0 x i8], align 1
@__ksymtab_ip6_tnl_change_mtu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip6_tnl_change_mtu to i32), ptr @__kstrtab_ip6_tnl_change_mtu, ptr @__kstrtabns_ip6_tnl_change_mtu }, section "___ksymtab+ip6_tnl_change_mtu", align 4
@__kstrtab_ip6_tnl_get_iflink = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip6_tnl_get_iflink = external dso_local constant [0 x i8], align 1
@__ksymtab_ip6_tnl_get_iflink = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip6_tnl_get_iflink to i32), ptr @__kstrtab_ip6_tnl_get_iflink, ptr @__kstrtabns_ip6_tnl_get_iflink }, section "___ksymtab+ip6_tnl_get_iflink", align 4
@ip6tun_encaps = external dso_local global [8 x ptr], align 4
@__kstrtab_ip6_tnl_encap_add_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip6_tnl_encap_add_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_ip6_tnl_encap_add_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip6_tnl_encap_add_ops to i32), ptr @__kstrtab_ip6_tnl_encap_add_ops, ptr @__kstrtabns_ip6_tnl_encap_add_ops }, section "___ksymtab+ip6_tnl_encap_add_ops", align 4
@__kstrtab_ip6_tnl_encap_del_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip6_tnl_encap_del_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_ip6_tnl_encap_del_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip6_tnl_encap_del_ops to i32), ptr @__kstrtab_ip6_tnl_encap_del_ops, ptr @__kstrtabns_ip6_tnl_encap_del_ops }, section "___ksymtab+ip6_tnl_encap_del_ops", align 4
@__kstrtab_ip6_tnl_encap_setup = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip6_tnl_encap_setup = external dso_local constant [0 x i8], align 1
@__ksymtab_ip6_tnl_encap_setup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip6_tnl_encap_setup to i32), ptr @__kstrtab_ip6_tnl_encap_setup, ptr @__kstrtabns_ip6_tnl_encap_setup }, section "___ksymtab_gpl+ip6_tnl_encap_setup", align 4
@__kstrtab_ip6_tnl_get_link_net = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip6_tnl_get_link_net = external dso_local constant [0 x i8], align 1
@__ksymtab_ip6_tnl_get_link_net = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip6_tnl_get_link_net to i32), ptr @__kstrtab_ip6_tnl_get_link_net, ptr @__kstrtabns_ip6_tnl_get_link_net }, section "___ksymtab+ip6_tnl_get_link_net", align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"include/linux/if_vlan.h\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"\016ip6_tunnel: non-ECT from %pI6 with DS=%#x\0A\00", align 1
@init_net = external dso_local global %struct.net, align 64
@ip6_tnl_net_ops = internal global %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @ip6_tnl_init_net, ptr null, ptr null, ptr @ip6_tnl_exit_batch_net, ptr @ip6_tnl_net_id, i32 148 }, align 4
@ip4ip6_handler = internal global %struct.xfrm6_tunnel { ptr @ip4ip6_rcv, ptr null, ptr @ip4ip6_err, ptr null, i32 1 }, section ".data..read_mostly", align 4
@.str.7 = private unnamed_addr constant [41 x i8] c"\013ip6_tunnel: %s: can't register ip4ip6\0A\00", align 1
@__func__.ip6_tunnel_init = private unnamed_addr constant [16 x i8] c"ip6_tunnel_init\00", align 1
@ip6ip6_handler = internal global %struct.xfrm6_tunnel { ptr @ip6ip6_rcv, ptr null, ptr @ip6ip6_err, ptr null, i32 1 }, section ".data..read_mostly", align 4
@.str.8 = private unnamed_addr constant [41 x i8] c"\013ip6_tunnel: %s: can't register ip6ip6\0A\00", align 1
@ip6_link_ops = internal global %struct.rtnl_link_ops { %struct.list_head zeroinitializer, ptr @.str.15, i32 248, ptr null, ptr @ip6_tnl_dev_setup, i8 0, i32 20, ptr @ip6_tnl_policy, ptr @ip6_tnl_validate, ptr @ip6_tnl_newlink, ptr @ip6_tnl_changelink, ptr @ip6_tnl_dellink, ptr @ip6_tnl_get_size, ptr @ip6_tnl_fill_info, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @ip6_tnl_get_link_net, ptr null, ptr null }, section ".data..read_mostly", align 4
@ip6_tnl_net_id = internal global i32 0, section ".data..read_mostly", align 4
@.str.10 = private unnamed_addr constant [8 x i8] c"ip6tnl0\00", align 1
@sysctl_fb_tunnels_only_for_init_net = external dso_local local_unnamed_addr global i32, align 4
@ip6_tnl_netdev_ops = internal constant %struct.net_device_ops { ptr @ip6_tnl_dev_init, ptr @ip6_tnl_dev_uninit, ptr null, ptr null, ptr @ip6_tnl_start_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ip6_tnl_siocdevprivate, ptr null, ptr @ip6_tnl_change_mtu, ptr null, ptr null, ptr @dev_get_tstats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ip6_tnl_get_iflink, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@ip_tunnel_header_ops = external dso_local constant %struct.header_ops, align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@.str.13 = private unnamed_addr constant [10 x i8] c"ip6tnl%%d\00", align 1
@tpi_v4 = internal constant %struct.tnl_ptk_info { i16 0, i16 8, i32 0, i32 0, i32 0 }, align 4
@tpi_v6 = internal constant %struct.tnl_ptk_info { i16 0, i16 -8826, i32 0, i32 0, i32 0 }, align 4
@.str.15 = private unnamed_addr constant [7 x i8] c"ip6tnl\00", align 1
@ip6_tnl_policy = internal constant [21 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.75 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 16, %union.anon.75 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 16, %union.anon.75 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.75 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.75 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.75 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.75 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.75 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.75 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.75 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.75 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.75 zeroinitializer }, %struct.nla_policy { i8 6, i8 0, i16 0, %union.anon.75 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.75 zeroinitializer }], align 4
@.str.16 = private unnamed_addr constant [43 x i8] c"\016ip6_tunnel: %s: can't deregister ip4ip6\0A\00", align 1
@__func__.ip6_tunnel_cleanup = private unnamed_addr constant [19 x i8] c"ip6_tunnel_cleanup\00", align 1
@.str.17 = private unnamed_addr constant [43 x i8] c"\016ip6_tunnel: %s: can't deregister ip6ip6\0A\00", align 1
@llvm.compiler.used = appending global [20 x ptr] [ptr @__UNIQUE_ID_alias621, ptr @__UNIQUE_ID_alias622, ptr @__UNIQUE_ID_author618, ptr @__UNIQUE_ID_description619, ptr @__UNIQUE_ID_license620, ptr @__UNIQUE_ID_log_ecn_error624, ptr @__UNIQUE_ID_log_ecn_errortype623, ptr @__ksymtab_ip6_tnl_change_mtu, ptr @__ksymtab_ip6_tnl_encap_add_ops, ptr @__ksymtab_ip6_tnl_encap_del_ops, ptr @__ksymtab_ip6_tnl_encap_setup, ptr @__ksymtab_ip6_tnl_get_cap, ptr @__ksymtab_ip6_tnl_get_iflink, ptr @__ksymtab_ip6_tnl_get_link_net, ptr @__ksymtab_ip6_tnl_parse_tlv_enc_lim, ptr @__ksymtab_ip6_tnl_rcv, ptr @__ksymtab_ip6_tnl_rcv_ctl, ptr @__ksymtab_ip6_tnl_xmit, ptr @__ksymtab_ip6_tnl_xmit_ctl, ptr @__param_log_ecn_error], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i16 @ip6_tnl_parse_tlv_enc_lim(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %4 = load ptr, ptr %3, align 4
  %5 = ptrtoint ptr %1 to i32
  %6 = ptrtoint ptr %4 to i32
  %7 = sub i32 %5, %6
  %8 = getelementptr inbounds %struct.ipv6hdr, ptr %1, i32 0, i32 3
  %9 = load i8, ptr %8, align 2
  %10 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %11 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %12 = tail call zeroext i1 @ipv6_ext_hdr(i8 noundef zeroext %9) #22
  %13 = icmp ne i8 %9, 59
  %14 = and i1 %12, %13
  br i1 %14, label %15, label %109

15:                                               ; preds = %2
  %16 = add i32 %7, 40
  br label %17

17:                                               ; preds = %101, %15
  %18 = phi i8 [ %9, %15 ], [ %102, %101 ]
  %19 = phi i32 [ %16, %15 ], [ %105, %101 ]
  %20 = add i32 %19, 2
  %21 = load i32, ptr %10, align 8
  %22 = load i32, ptr %11, align 4
  %23 = sub i32 %21, %22
  %24 = icmp ugt i32 %20, %23
  br i1 %24, label %25, label %31, !prof !9

25:                                               ; preds = %17
  %26 = icmp ult i32 %21, %20
  br i1 %26, label %109, label %27, !prof !9

27:                                               ; preds = %25
  %28 = sub i32 %20, %23
  %29 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %28) #22
  %30 = icmp eq ptr %29, null
  br i1 %30, label %109, label %31

31:                                               ; preds = %27, %17
  %32 = load ptr, ptr %3, align 4
  %33 = getelementptr i8, ptr %32, i32 %19
  switch i8 %18, label %47 [
    i8 44, label %34
    i8 51, label %38
  ]

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.frag_hdr, ptr %33, i32 0, i32 2
  %36 = load i16, ptr %35, align 2
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %44, label %109

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %33, i32 0, i32 1
  %40 = load i8, ptr %39, align 1
  %41 = zext i8 %40 to i16
  %42 = shl nuw nsw i16 %41, 2
  %43 = add nuw nsw i16 %42, 8
  br label %44

44:                                               ; preds = %38, %34
  %45 = phi i16 [ %43, %38 ], [ 8, %34 ]
  %46 = load i8, ptr %33, align 1
  br label %101

47:                                               ; preds = %31
  %48 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %33, i32 0, i32 1
  %49 = load i8, ptr %48, align 1
  %50 = zext i8 %49 to i16
  %51 = shl nuw nsw i16 %50, 3
  %52 = add nuw nsw i16 %51, 8
  %53 = load i8, ptr %33, align 1
  %54 = icmp eq i8 %18, 60
  br i1 %54, label %55, label %101

55:                                               ; preds = %47
  %56 = zext i16 %52 to i32
  %57 = add i32 %19, %56
  %58 = load i32, ptr %10, align 8
  %59 = load i32, ptr %11, align 4
  %60 = sub i32 %58, %59
  %61 = icmp ugt i32 %57, %60
  br i1 %61, label %62, label %70, !prof !9

62:                                               ; preds = %55
  %63 = icmp ult i32 %58, %57
  br i1 %63, label %109, label %64, !prof !9

64:                                               ; preds = %62
  %65 = sub i32 %57, %60
  %66 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %65) #22
  %67 = icmp eq ptr %66, null
  br i1 %67, label %109, label %68

68:                                               ; preds = %64
  %69 = load ptr, ptr %3, align 4
  br label %70

70:                                               ; preds = %68, %55
  %71 = phi ptr [ %69, %68 ], [ %32, %55 ]
  %72 = getelementptr i8, ptr %71, i32 %19
  br label %73

73:                                               ; preds = %96, %70
  %74 = phi i32 [ 2, %70 ], [ %98, %96 ]
  %75 = phi i16 [ 2, %70 ], [ %97, %96 ]
  %76 = getelementptr i8, ptr %72, i32 %74
  %77 = load i8, ptr %76, align 1
  switch i8 %77, label %78 [
    i8 4, label %81
    i8 0, label %94
  ]

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.ipv6_tlv_tnl_enc_lim, ptr %76, i32 0, i32 1
  %80 = load i8, ptr %79, align 1
  br label %89

81:                                               ; preds = %73
  %82 = getelementptr inbounds %struct.ipv6_tlv_tnl_enc_lim, ptr %76, i32 0, i32 1
  %83 = load i8, ptr %82, align 1
  %84 = icmp eq i8 %83, 1
  br i1 %84, label %85, label %89

85:                                               ; preds = %81
  %86 = sub i32 %19, %7
  %87 = add i32 %86, %74
  %88 = trunc i32 %87 to i16
  br label %109

89:                                               ; preds = %81, %78
  %90 = phi i8 [ %80, %78 ], [ %83, %81 ]
  %91 = zext i8 %90 to i16
  %92 = add i16 %75, 2
  %93 = add i16 %92, %91
  br label %96

94:                                               ; preds = %73
  %95 = add i16 %75, 1
  br label %96

96:                                               ; preds = %94, %89
  %97 = phi i16 [ %93, %89 ], [ %95, %94 ]
  %98 = zext i16 %97 to i32
  %99 = add nuw nsw i32 %98, 3
  %100 = icmp ugt i32 %99, %56
  br i1 %100, label %101, label %73

101:                                              ; preds = %96, %47, %44
  %102 = phi i8 [ %53, %47 ], [ %46, %44 ], [ %53, %96 ]
  %103 = phi i16 [ %52, %47 ], [ %45, %44 ], [ %52, %96 ]
  %104 = zext i16 %103 to i32
  %105 = add i32 %19, %104
  %106 = tail call zeroext i1 @ipv6_ext_hdr(i8 noundef zeroext %102) #22
  %107 = icmp ne i8 %102, 59
  %108 = and i1 %106, %107
  br i1 %108, label %17, label %109

109:                                              ; preds = %101, %85, %64, %62, %34, %27, %25, %2
  %110 = phi i16 [ %88, %85 ], [ 0, %2 ], [ 0, %34 ], [ 0, %101 ], [ 0, %27 ], [ 0, %25 ], [ 0, %64 ], [ 0, %62 ]
  ret i16 %110
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ipv6_ext_hdr(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ip6_tnl_get_cap(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @__ipv6_addr_type(ptr noundef %1) #22
  %5 = and i32 %4, 65535
  %6 = tail call i32 @__ipv6_addr_type(ptr noundef %2) #22
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %5, 0
  %9 = icmp eq i32 %7, 0
  %10 = select i1 %8, i1 true, i1 %9
  br i1 %10, label %34, label %11

11:                                               ; preds = %3
  %12 = and i32 %4, 3
  %13 = icmp eq i32 %12, 0
  %14 = and i32 %6, 3
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %13, i1 true, i1 %15
  br i1 %16, label %34, label %17

17:                                               ; preds = %11
  %18 = or i32 %7, %5
  %19 = and i32 %18, 16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %17
  %22 = and i32 %18, 32
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.ip6_tnl, ptr %0, i32 0, i32 4, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %24, %21
  %29 = shl i32 %4, 16
  %30 = and i32 %29, 65536
  %31 = shl i32 %6, 17
  %32 = and i32 %31, 131072
  %33 = or i32 %32, %30
  br label %34

34:                                               ; preds = %28, %24, %17, %11, %3
  %35 = phi i32 [ 0, %17 ], [ 0, %24 ], [ 0, %11 ], [ 262144, %3 ], [ %33, %28 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ip6_tnl_rcv_ctl(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.ip6_tnl, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.ip6_tnl, ptr %0, i32 0, i32 4, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 131072
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %44

10:                                               ; preds = %3
  %11 = and i32 %7, 262144
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %66, label %13

13:                                               ; preds = %10
  %14 = tail call i32 @__ipv6_addr_type(ptr noundef %1) #22
  %15 = and i32 %14, 65535
  %16 = tail call i32 @__ipv6_addr_type(ptr noundef %2) #22
  %17 = and i32 %16, 65535
  %18 = icmp eq i32 %15, 0
  %19 = icmp eq i32 %17, 0
  %20 = select i1 %18, i1 true, i1 %19
  br i1 %20, label %66, label %21

21:                                               ; preds = %13
  %22 = and i32 %14, 3
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %16, 3
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %23, i1 true, i1 %25
  br i1 %26, label %66, label %27

27:                                               ; preds = %21
  %28 = or i32 %17, %15
  %29 = and i32 %28, 16
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %66

31:                                               ; preds = %27
  %32 = and i32 %28, 32
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.ip6_tnl, ptr %0, i32 0, i32 4, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 0
  %38 = and i32 %16, 1
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %37, i1 true, i1 %39
  br i1 %40, label %66, label %44

41:                                               ; preds = %31
  %42 = and i32 %16, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %66, label %44

44:                                               ; preds = %41, %34, %3
  %45 = getelementptr inbounds %struct.ip6_tnl, ptr %0, i32 0, i32 4, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %44
  %49 = tail call ptr @dev_get_by_index_rcu(ptr noundef %5, i32 noundef %46) #22
  br label %50

50:                                               ; preds = %48, %44
  %51 = phi ptr [ %49, %48 ], [ null, %44 ]
  %52 = load i32, ptr %1, align 4
  %53 = and i32 %52, 255
  %54 = icmp eq i32 %53, 255
  br i1 %54, label %58, label %55

55:                                               ; preds = %50
  %56 = tail call i32 @ipv6_chk_addr_and_flags(ptr noundef %5, ptr noundef %1, ptr noundef %51, i1 noundef zeroext false, i32 noundef 0, i32 noundef 64) #22
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %66, label %58, !prof !9

58:                                               ; preds = %55, %50
  %59 = load i32, ptr %6, align 4
  %60 = and i32 %59, 64
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = tail call i32 @ipv6_chk_addr_and_flags(ptr noundef %5, ptr noundef %2, ptr noundef %51, i1 noundef zeroext true, i32 noundef 0, i32 noundef 64) #22
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %66, !prof !10

65:                                               ; preds = %62, %58
  br label %66

66:                                               ; preds = %65, %62, %55, %41, %34, %27, %21, %13, %10
  %67 = phi i32 [ 0, %41 ], [ 0, %10 ], [ 1, %65 ], [ 0, %62 ], [ 0, %55 ], [ 0, %27 ], [ 0, %34 ], [ 0, %21 ], [ 0, %13 ]
  ret i32 %67
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index_rcu(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_chk_addr_and_flags(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ip6_tnl_rcv(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, i1 noundef zeroext %4) #0 {
  %6 = getelementptr inbounds %struct.tnl_ptk_info, ptr %2, i32 0, i32 1
  %7 = load i16, ptr %6, align 2
  %8 = icmp eq i16 %7, 8
  %9 = select i1 %8, ptr @ip4ip6_dscp_ecn_decapsulate, ptr @ip6ip6_dscp_ecn_decapsulate
  tail call fastcc void @__ip6_tnl_rcv(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %9, i1 noundef zeroext %4)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ip6ip6_dscp_ecn_decapsulate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.ip6_tnl, ptr %0, i32 0, i32 4, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 16
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %20, label %8

8:                                                ; preds = %3
  %9 = load i16, ptr %1, align 2
  %10 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 16
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 13, i32 0, i32 18
  %13 = load i16, ptr %12, align 4
  %14 = zext i16 %13 to i32
  %15 = getelementptr i8, ptr %11, i32 %14
  %16 = load i16, ptr %15, align 2
  %17 = and i16 %16, 16368
  %18 = and i16 %9, -16369
  %19 = or i16 %17, %18
  store i16 %19, ptr %15, align 2
  br label %20

20:                                               ; preds = %8, %3
  %21 = tail call fastcc i32 @IP6_ECN_decapsulate(ptr noundef %1, ptr noundef %2)
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ip4ip6_dscp_ecn_decapsulate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.ip6_tnl, ptr %0, i32 0, i32 4, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 16
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %40, label %8

8:                                                ; preds = %3
  %9 = load i16, ptr %1, align 2
  %10 = tail call i16 @llvm.bswap.i16(i16 %9) #22
  %11 = lshr i16 %10, 4
  %12 = trunc i16 %11 to i8
  %13 = and i8 %12, -4
  %14 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 16
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 13, i32 0, i32 18
  %17 = load i16, ptr %16, align 4
  %18 = zext i16 %17 to i32
  %19 = getelementptr i8, ptr %15, i32 %18
  %20 = getelementptr inbounds %struct.iphdr, ptr %19, i32 0, i32 7
  %21 = load i16, ptr %20, align 2
  %22 = tail call i16 @llvm.bswap.i16(i16 %21) #22
  %23 = zext i16 %22 to i32
  %24 = getelementptr inbounds %struct.iphdr, ptr %19, i32 0, i32 1
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i32
  %27 = add nuw nsw i32 %23, %26
  %28 = icmp ult i32 %27, 65535
  %29 = add nuw nsw i32 %27, 1
  %30 = and i32 %29, 65535
  %31 = select i1 %28, i32 %27, i32 %30
  %32 = and i8 %25, 3
  %33 = or i8 %32, %13
  %34 = zext i8 %33 to i32
  %35 = sub nsw i32 %31, %34
  %36 = lshr i32 %35, 16
  %37 = add nsw i32 %36, %35
  %38 = trunc i32 %37 to i16
  %39 = tail call i16 @llvm.bswap.i16(i16 %38) #22
  store i16 %39, ptr %20, align 2
  store i8 %33, ptr %24, align 1
  br label %40

40:                                               ; preds = %8, %3
  %41 = tail call fastcc i32 @IP6_ECN_decapsulate(ptr noundef %1, ptr noundef %2)
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__ip6_tnl_rcv(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr nocapture noundef readonly %4, i1 noundef zeroext %5) unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 18
  %10 = load i16, ptr %9, align 4
  %11 = zext i16 %10 to i32
  %12 = getelementptr i8, ptr %8, i32 %11
  %13 = load i16, ptr %2, align 4
  %14 = and i16 %13, 256
  %15 = icmp eq i16 %14, 0
  %16 = getelementptr inbounds %struct.ip6_tnl, ptr %0, i32 0, i32 4, i32 10
  %17 = load i16, ptr %16, align 4
  %18 = and i16 %17, 256
  %19 = icmp eq i16 %18, 0
  br i1 %15, label %20, label %21

20:                                               ; preds = %6
  br i1 %19, label %28, label %22

21:                                               ; preds = %6
  br i1 %19, label %22, label %28

22:                                               ; preds = %21, %20
  %23 = getelementptr inbounds %struct.ip6_tnl, ptr %0, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 36, i32 12
  %26 = load i32, ptr %25, align 8
  %27 = add i32 %26, 1
  store i32 %27, ptr %25, align 8
  br label %201

28:                                               ; preds = %21, %20
  %29 = and i16 %17, 2048
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %52, label %31

31:                                               ; preds = %28
  %32 = and i16 %13, 2048
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.ip6_tnl, ptr %0, i32 0, i32 10
  %36 = load i32, ptr %35, align 4
  %37 = icmp ne i32 %36, 0
  %38 = getelementptr inbounds %struct.tnl_ptk_info, ptr %2, i32 0, i32 3
  %39 = load i32, ptr %38, align 4
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  %41 = sub i32 %40, %36
  %42 = icmp slt i32 %41, 0
  %43 = select i1 %37, i1 %42, i1 false
  br i1 %43, label %44, label %50

44:                                               ; preds = %34, %31
  %45 = getelementptr inbounds %struct.ip6_tnl, ptr %0, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.net_device, ptr %46, i32 0, i32 36, i32 14
  %48 = load i32, ptr %47, align 8
  %49 = add i32 %48, 1
  store i32 %49, ptr %47, align 8
  br label %201

50:                                               ; preds = %34
  %51 = add i32 %40, 1
  store i32 %51, ptr %35, align 4
  br label %52

52:                                               ; preds = %50, %28
  %53 = getelementptr inbounds %struct.tnl_ptk_info, ptr %2, i32 0, i32 1
  %54 = load i16, ptr %53, align 2
  %55 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 16
  store i16 %54, ptr %55, align 8
  %56 = getelementptr inbounds %struct.ip6_tnl, ptr %0, i32 0, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.net_device, ptr %57, i32 0, i32 32
  %59 = load i16, ptr %58, align 16
  %60 = icmp eq i16 %59, 1
  br i1 %60, label %61, label %116

61:                                               ; preds = %52
  %62 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %63 = load i32, ptr %62, align 8
  %64 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %65 = load i32, ptr %64, align 4
  %66 = sub i32 %63, %65
  %67 = icmp ult i32 %66, 14
  br i1 %67, label %68, label %80, !prof !9

68:                                               ; preds = %61
  %69 = icmp ult i32 %63, 14
  br i1 %69, label %75, label %70, !prof !9

70:                                               ; preds = %68
  %71 = sub nuw nsw i32 14, %66
  %72 = tail call ptr @__pskb_pull_tail(ptr noundef %1, i32 noundef %71) #22
  %73 = icmp eq ptr %72, null
  %74 = load ptr, ptr %56, align 4
  br i1 %73, label %75, label %80

75:                                               ; preds = %70, %68
  %76 = phi ptr [ %57, %68 ], [ %74, %70 ]
  %77 = getelementptr inbounds %struct.net_device, ptr %76, i32 0, i32 36, i32 10
  %78 = load i32, ptr %77, align 8
  %79 = add i32 %78, 1
  store i32 %79, ptr %77, align 8
  br label %201

80:                                               ; preds = %70, %61
  %81 = phi ptr [ %57, %61 ], [ %74, %70 ]
  %82 = load ptr, ptr %7, align 8
  %83 = load i16, ptr %9, align 4
  %84 = zext i16 %83 to i32
  %85 = getelementptr i8, ptr %82, i32 %84
  %86 = tail call zeroext i16 @eth_type_trans(ptr noundef %1, ptr noundef %81) #22
  store i16 %86, ptr %55, align 8
  %87 = load ptr, ptr %7, align 8
  %88 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13
  %89 = load i16, ptr %88, align 8
  %90 = lshr i16 %89, 5
  %91 = trunc i16 %90 to i2
  switch i2 %91, label %126 [
    i2 -2, label %92
    i2 -1, label %103
  ]

92:                                               ; preds = %80
  %93 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 19
  %94 = load i16, ptr %93, align 2
  %95 = zext i16 %94 to i32
  %96 = getelementptr i8, ptr %87, i32 %95
  %97 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 4
  %98 = load i32, ptr %97, align 4
  %99 = sub i32 0, %98
  %100 = tail call i32 @csum_partial(ptr noundef %96, i32 noundef 14, i32 noundef %99) #22
  %101 = sub i32 0, %100
  store i32 %101, ptr %97, align 4
  %102 = load ptr, ptr %7, align 8
  br label %126

103:                                              ; preds = %80
  %104 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 4
  %105 = load i16, ptr %104, align 4
  %106 = zext i16 %105 to i32
  %107 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %108 = load ptr, ptr %107, align 4
  %109 = ptrtoint ptr %108 to i32
  %110 = ptrtoint ptr %87 to i32
  %111 = add i32 %106, %110
  %112 = sub i32 %111, %109
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %126

114:                                              ; preds = %103
  %115 = and i16 %89, -97
  store i16 %115, ptr %88, align 8
  br label %126

116:                                              ; preds = %52
  %117 = getelementptr inbounds %struct.anon.49, ptr %1, i32 0, i32 2
  store ptr %57, ptr %117, align 8
  %118 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %119 = load ptr, ptr %118, align 4
  %120 = load ptr, ptr %7, align 8
  %121 = ptrtoint ptr %119 to i32
  %122 = ptrtoint ptr %120 to i32
  %123 = sub i32 %121, %122
  %124 = trunc i32 %123 to i16
  %125 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 19
  store i16 %124, ptr %125, align 2
  br label %126

126:                                              ; preds = %116, %114, %103, %92, %80
  %127 = phi ptr [ %120, %116 ], [ %87, %80 ], [ %102, %92 ], [ %87, %103 ], [ %87, %114 ]
  %128 = phi ptr [ %12, %116 ], [ %85, %80 ], [ %85, %92 ], [ %85, %103 ], [ %85, %114 ]
  %129 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %130 = load ptr, ptr %129, align 4
  %131 = ptrtoint ptr %130 to i32
  %132 = ptrtoint ptr %127 to i32
  %133 = sub i32 %131, %132
  %134 = trunc i32 %133 to i16
  store i16 %134, ptr %9, align 4
  %135 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(24) %135, i8 0, i32 24, i1 false)
  %136 = load ptr, ptr %56, align 4
  %137 = getelementptr inbounds %struct.anon.49, ptr %1, i32 0, i32 2
  store ptr %136, ptr %137, align 8
  %138 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13
  %139 = load i16, ptr %138, align 8
  %140 = and i16 %139, 256
  %141 = icmp eq i16 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %126
  %143 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 7
  store i32 0, ptr %143, align 8
  %144 = and i16 %139, -769
  store i16 %144, ptr %138, align 8
  br label %145

145:                                              ; preds = %142, %126
  %146 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 9
  store i16 0, ptr %146, align 4
  tail call void @skb_scrub_packet(ptr noundef %1, i1 noundef zeroext false) #22
  %147 = tail call i32 %4(ptr noundef %0, ptr noundef %128, ptr noundef %1) #22, !callees !11
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %168, label %149, !prof !10

149:                                              ; preds = %145
  br i1 %5, label %150, label %161

150:                                              ; preds = %149
  %151 = tail call i32 @net_ratelimit() #22
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %161, label %153

153:                                              ; preds = %150
  %154 = getelementptr inbounds %struct.ipv6hdr, ptr %128, i32 0, i32 5
  %155 = load i16, ptr %128, align 2
  %156 = tail call i16 @llvm.bswap.i16(i16 %155) #22
  %157 = lshr i16 %156, 4
  %158 = and i16 %157, 255
  %159 = zext i16 %158 to i32
  %160 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %154, i32 noundef %159) #23
  br label %161

161:                                              ; preds = %153, %150, %149
  %162 = icmp sgt i32 %147, 1
  br i1 %162, label %163, label %168

163:                                              ; preds = %161
  %164 = load ptr, ptr %56, align 4
  %165 = getelementptr inbounds %struct.net_device, ptr %164, i32 0, i32 36, i32 13
  %166 = load i32, ptr %165, align 4
  %167 = add i32 %166, 1
  store i32 %167, ptr %165, align 4
  br label %201

168:                                              ; preds = %161, %145
  %169 = load ptr, ptr %56, align 4
  %170 = getelementptr inbounds %struct.net_device, ptr %169, i32 0, i32 110
  %171 = load ptr, ptr %170, align 8
  %172 = ptrtoint ptr %171 to i32
  %173 = tail call i32 @llvm.read_register.i32(metadata !0) #22
  %174 = inttoptr i32 %173 to ptr
  %175 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %174) #12, !srcloc !12
  %176 = add i32 %175, %172
  %177 = inttoptr i32 %176 to ptr
  %178 = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %177, i32 0, i32 4
  %179 = load i32, ptr %178, align 4
  %180 = add i32 %179, 1
  store i32 %180, ptr %178, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #22, !srcloc !13
  %181 = load i64, ptr %177, align 32
  %182 = add i64 %181, 1
  store i64 %182, ptr %177, align 32
  %183 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %184 = load i32, ptr %183, align 8
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %177, i32 0, i32 1
  %187 = load i64, ptr %186, align 8
  %188 = add i64 %187, %185
  store i64 %188, ptr %186, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #22, !srcloc !14
  %189 = load i32, ptr %178, align 4
  %190 = add i32 %189, 1
  store i32 %190, ptr %178, align 4
  tail call void @skb_scrub_packet(ptr noundef %1, i1 noundef zeroext false) #22
  %191 = icmp eq ptr %3, null
  br i1 %191, label %198, label %192

192:                                              ; preds = %168
  %193 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 3
  %194 = load i16, ptr %193, align 2
  %195 = or i16 %194, 16384
  store i16 %195, ptr %193, align 2
  %196 = ptrtoint ptr %3 to i32
  %197 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 4
  store i32 %196, ptr %197, align 8
  br label %198

198:                                              ; preds = %192, %168
  %199 = getelementptr inbounds %struct.ip6_tnl, ptr %0, i32 0, i32 7
  %200 = tail call i32 @gro_cells_receive(ptr noundef %199, ptr noundef %1) #22
  br label %210

201:                                              ; preds = %163, %75, %44, %22
  %202 = phi ptr [ %56, %163 ], [ %56, %75 ], [ %45, %44 ], [ %23, %22 ]
  %203 = load ptr, ptr %202, align 4
  %204 = getelementptr inbounds %struct.net_device, ptr %203, i32 0, i32 36, i32 4
  %205 = load i32, ptr %204, align 8
  %206 = add i32 %205, 1
  store i32 %206, ptr %204, align 8
  %207 = icmp eq ptr %3, null
  br i1 %207, label %209, label %208

208:                                              ; preds = %201
  tail call void @dst_release(ptr noundef nonnull %3) #22
  br label %209

209:                                              ; preds = %208, %201
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #22
  br label %210

210:                                              ; preds = %209, %198
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ip6_tnl_xmit_ctl(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.ip6_tnl, ptr %0, i32 0, i32 4
  %5 = getelementptr inbounds %struct.ip6_tnl, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.ip6_tnl, ptr %0, i32 0, i32 4, i32 5
  %8 = load i8, ptr %7, align 1, !range !15
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %81

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.ip6_tnl, ptr %0, i32 0, i32 4, i32 7
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 65536
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %49

15:                                               ; preds = %10
  %16 = and i32 %12, 262144
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %81, label %18

18:                                               ; preds = %15
  %19 = tail call i32 @__ipv6_addr_type(ptr noundef %1) #22
  %20 = and i32 %19, 65535
  %21 = tail call i32 @__ipv6_addr_type(ptr noundef %2) #22
  %22 = and i32 %21, 65535
  %23 = icmp eq i32 %20, 0
  %24 = icmp eq i32 %22, 0
  %25 = select i1 %23, i1 true, i1 %24
  br i1 %25, label %81, label %26

26:                                               ; preds = %18
  %27 = and i32 %19, 3
  %28 = icmp eq i32 %27, 0
  %29 = and i32 %21, 3
  %30 = icmp eq i32 %29, 0
  %31 = select i1 %28, i1 true, i1 %30
  br i1 %31, label %81, label %32

32:                                               ; preds = %26
  %33 = or i32 %22, %20
  %34 = and i32 %33, 16
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %81

36:                                               ; preds = %32
  %37 = and i32 %33, 32
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.ip6_tnl, ptr %0, i32 0, i32 4, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 0
  %43 = and i32 %19, 1
  %44 = icmp eq i32 %43, 0
  %45 = select i1 %42, i1 true, i1 %44
  br i1 %45, label %81, label %49

46:                                               ; preds = %36
  %47 = and i32 %19, 1
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %81, label %49

49:                                               ; preds = %46, %39, %10
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !16
  %50 = getelementptr inbounds %struct.ip6_tnl, ptr %0, i32 0, i32 4, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %49
  %54 = tail call ptr @dev_get_by_index_rcu(ptr noundef %6, i32 noundef %51) #22
  br label %55

55:                                               ; preds = %53, %49
  %56 = phi ptr [ %54, %53 ], [ null, %49 ]
  %57 = tail call i32 @ipv6_chk_addr_and_flags(ptr noundef %6, ptr noundef %1, ptr noundef %56, i1 noundef zeroext false, i32 noundef 0, i32 noundef 64) #22
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %62, !prof !9

59:                                               ; preds = %55
  %60 = tail call i32 @___ratelimit(ptr noundef nonnull @ip6_tnl_xmit_ctl._rs, ptr noundef nonnull @__func__.ip6_tnl_xmit_ctl) #22
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %79, label %76

62:                                               ; preds = %55
  %63 = load i32, ptr %11, align 4
  %64 = and i32 %63, 64
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %79

66:                                               ; preds = %62
  %67 = load i32, ptr %2, align 4
  %68 = and i32 %67, 255
  %69 = icmp eq i32 %68, 255
  br i1 %69, label %79, label %70

70:                                               ; preds = %66
  %71 = tail call i32 @ipv6_chk_addr_and_flags(ptr noundef %6, ptr noundef %2, ptr noundef %56, i1 noundef zeroext true, i32 noundef 0, i32 noundef 64) #22
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %79, label %73, !prof !10

73:                                               ; preds = %70
  %74 = tail call i32 @___ratelimit(ptr noundef nonnull @ip6_tnl_xmit_ctl._rs.1, ptr noundef nonnull @__func__.ip6_tnl_xmit_ctl) #22
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %73, %59
  %77 = phi ptr [ @.str, %59 ], [ @.str.2, %73 ]
  %78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %77, ptr noundef %4) #23
  br label %79

79:                                               ; preds = %76, %73, %70, %66, %62, %59
  %80 = phi i32 [ 0, %59 ], [ 0, %73 ], [ 1, %70 ], [ 1, %66 ], [ 1, %62 ], [ 0, %76 ]
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !17
  br label %81

81:                                               ; preds = %79, %46, %39, %32, %26, %18, %15, %3
  %82 = phi i32 [ 1, %3 ], [ %80, %79 ], [ 0, %46 ], [ 0, %15 ], [ 0, %32 ], [ 0, %39 ], [ 0, %26 ], [ 0, %18 ]
  ret i32 %82
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ip6_tnl_xmit(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3, i32 noundef %4, ptr nocapture noundef writeonly %5, i8 noundef zeroext %6) #0 {
  %8 = alloca i8, align 1
  %9 = alloca %struct.ipv6_tel_txoption, align 4
  store i8 %6, ptr %8, align 1
  %10 = getelementptr i8, ptr %1, i32 1408
  %11 = getelementptr i8, ptr %1, i32 1416
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr i8, ptr %1, i32 1412
  %14 = load ptr, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %9) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %9, i8 0, i32 44, i1 false), !annotation !18
  %15 = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 32
  %16 = load i16, ptr %15, align 16
  %17 = icmp eq i16 %16, 1
  %18 = select i1 %17, i32 -14, i32 0
  %19 = getelementptr i8, ptr %1, i32 1636
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr i8, ptr %1, i32 1420
  %22 = getelementptr i8, ptr %1, i32 1443
  %23 = load i8, ptr %22, align 1, !range !15
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %54, label %25

25:                                               ; preds = %7
  %26 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  %27 = load i32, ptr %26, align 8
  %28 = and i32 %27, -2
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %50, label %30

30:                                               ; preds = %25
  %31 = inttoptr i32 %28 to ptr
  %32 = getelementptr inbounds %struct.dst_entry, ptr %31, i32 0, i32 7
  %33 = load i16, ptr %32, align 4
  %34 = and i16 %33, 128
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.metadata_dst, ptr %31, i32 0, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.metadata_dst, ptr %31, i32 0, i32 2
  br label %50

42:                                               ; preds = %36, %30
  %43 = getelementptr inbounds %struct.dst_entry, ptr %31, i32 0, i32 13
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = load i16, ptr %44, align 4
  switch i16 %47, label %50 [
    i16 2, label %48
    i16 4, label %48
  ]

48:                                               ; preds = %46, %46
  %49 = getelementptr inbounds %struct.lwtunnel_state, ptr %44, i32 0, i32 7
  br label %50

50:                                               ; preds = %48, %46, %42, %40, %25
  %51 = phi ptr [ %41, %40 ], [ %49, %48 ], [ null, %46 ], [ null, %42 ], [ null, %25 ]
  %52 = getelementptr inbounds %struct.ip_tunnel_key, ptr %51, i32 0, i32 4
  %53 = load i8, ptr %52, align 1
  br label %138

54:                                               ; preds = %7
  %55 = getelementptr i8, ptr %1, i32 1442
  %56 = load i8, ptr %55, align 2
  %57 = getelementptr i8, ptr %1, i32 1468
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr i8, ptr %1, i32 1472
  %60 = load i32, ptr %59, align 4
  %61 = or i32 %60, %58
  %62 = getelementptr i8, ptr %1, i32 1476
  %63 = load i32, ptr %62, align 4
  %64 = or i32 %61, %63
  %65 = getelementptr i8, ptr %1, i32 1480
  %66 = load i32, ptr %65, align 4
  %67 = or i32 %64, %66
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %117

69:                                               ; preds = %54
  %70 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 16
  %71 = load i16, ptr %70, align 8
  %72 = icmp eq i16 %71, -8826
  br i1 %72, label %73, label %129

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  %75 = load i32, ptr %74, align 8
  %76 = and i32 %75, -2
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %455, label %78

78:                                               ; preds = %73
  %79 = inttoptr i32 %76 to ptr
  %80 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %81 = load ptr, ptr %80, align 8
  %82 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %83 = load i16, ptr %82, align 4
  %84 = zext i16 %83 to i32
  %85 = getelementptr i8, ptr %81, i32 %84
  %86 = getelementptr inbounds %struct.ipv6hdr, ptr %85, i32 0, i32 6
  %87 = getelementptr inbounds %struct.dst_entry, ptr %79, i32 0, i32 1
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr inbounds %struct.dst_ops, ptr %88, i32 0, i32 14
  %90 = load ptr, ptr %89, align 8
  %91 = tail call ptr %90(ptr noundef nonnull %79, ptr noundef null, ptr noundef %86) #22
  %92 = icmp ugt ptr %91, inttoptr (i32 -4096 to ptr)
  %93 = icmp eq ptr %91, null
  %94 = or i1 %92, %93
  br i1 %94, label %455, label %95

95:                                               ; preds = %78
  %96 = getelementptr inbounds %struct.neighbour, ptr %91, i32 0, i32 28
  %97 = tail call i32 @__ipv6_addr_type(ptr noundef %96) #22
  %98 = and i32 %97, 65535
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %95
  %101 = load ptr, ptr %80, align 8
  %102 = load i16, ptr %82, align 4
  %103 = zext i16 %102 to i32
  %104 = getelementptr i8, ptr %101, i32 %103
  %105 = getelementptr inbounds %struct.ipv6hdr, ptr %104, i32 0, i32 6
  br label %106

106:                                              ; preds = %100, %95
  %107 = phi ptr [ %105, %100 ], [ %96, %95 ]
  %108 = getelementptr inbounds %struct.flowi6, ptr %3, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %108, ptr noundef align 4 dereferenceable(16) %107, i32 16, i1 false)
  %109 = getelementptr inbounds %struct.neighbour, ptr %91, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %109) #22, !srcloc !20
  %110 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %109, ptr %109, i32 1, ptr elementtype(i32) %109) #22, !srcloc !21
  %111 = extractvalue { i32, i32, i32 } %110, 0
  %112 = icmp eq i32 %111, 1
  br i1 %112, label %116, label %113

113:                                              ; preds = %106
  %114 = icmp sgt i32 %111, 0
  br i1 %114, label %129, label %115, !prof !10

115:                                              ; preds = %113
  tail call void @refcount_warn_saturate(ptr noundef %109, i32 noundef 3) #22
  br label %129

116:                                              ; preds = %106
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !22
  tail call void @neigh_destroy(ptr noundef nonnull %91) #22
  br label %129

117:                                              ; preds = %54
  %118 = getelementptr i8, ptr %1, i32 1440
  %119 = load i8, ptr %118, align 4
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %129, label %121

121:                                              ; preds = %117
  %122 = getelementptr i8, ptr %1, i32 1448
  %123 = load i32, ptr %122, align 4
  %124 = and i32 %123, 34
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %121
  %127 = getelementptr i8, ptr %1, i32 1600
  %128 = tail call ptr @dst_cache_get(ptr noundef %127) #22
  br label %129

129:                                              ; preds = %126, %121, %117, %116, %115, %113, %69
  %130 = phi i1 [ true, %126 ], [ false, %121 ], [ false, %69 ], [ false, %117 ], [ false, %113 ], [ false, %115 ], [ false, %116 ]
  %131 = phi ptr [ %128, %126 ], [ null, %121 ], [ null, %69 ], [ null, %117 ], [ null, %113 ], [ null, %115 ], [ null, %116 ]
  %132 = getelementptr inbounds %struct.flowi6, ptr %3, i32 0, i32 2
  %133 = getelementptr inbounds %struct.flowi6, ptr %3, i32 0, i32 1
  %134 = tail call i32 @ip6_tnl_xmit_ctl(ptr noundef %10, ptr noundef %132, ptr noundef %133)
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %455, label %136

136:                                              ; preds = %129
  %137 = icmp eq ptr %131, null
  br i1 %137, label %138, label %179

138:                                              ; preds = %136, %50
  %139 = phi i1 [ false, %50 ], [ %130, %136 ]
  %140 = phi i8 [ %53, %50 ], [ %56, %136 ]
  %141 = zext i8 %2 to i32
  %142 = getelementptr inbounds %struct.flowi6, ptr %3, i32 0, i32 3
  %143 = load i32, ptr %142, align 8
  %144 = shl nuw nsw i32 %141, 20
  %145 = tail call i32 @llvm.bswap.i32(i32 %144) #22
  %146 = or i32 %143, %145
  store i32 %146, ptr %142, align 8
  %147 = tail call ptr @ip6_route_output_flags(ptr noundef %12, ptr noundef null, ptr noundef %3, i32 noundef 0) #22
  %148 = getelementptr inbounds %struct.dst_entry, ptr %147, i32 0, i32 15
  %149 = load i16, ptr %148, align 4
  %150 = icmp eq i16 %149, 0
  br i1 %150, label %151, label %455

151:                                              ; preds = %138
  %152 = tail call ptr @xfrm_lookup(ptr noundef %12, ptr noundef %147, ptr noundef %3, ptr noundef null, i32 noundef 0) #22
  %153 = icmp ugt ptr %152, inttoptr (i32 -4096 to ptr)
  br i1 %153, label %154, label %156

154:                                              ; preds = %151
  %155 = ptrtoint ptr %152 to i32
  br label %455

156:                                              ; preds = %151
  %157 = load i8, ptr %22, align 1, !range !15
  %158 = icmp eq i8 %157, 0
  br i1 %158, label %179, label %159

159:                                              ; preds = %156
  %160 = getelementptr inbounds %struct.flowi6, ptr %3, i32 0, i32 2
  %161 = load i32, ptr %160, align 4
  %162 = getelementptr %struct.flowi6, ptr %3, i32 0, i32 2, i32 0, i32 0, i32 1
  %163 = load i32, ptr %162, align 4
  %164 = or i32 %163, %161
  %165 = getelementptr %struct.flowi6, ptr %3, i32 0, i32 2, i32 0, i32 0, i32 2
  %166 = load i32, ptr %165, align 4
  %167 = or i32 %164, %166
  %168 = getelementptr %struct.flowi6, ptr %3, i32 0, i32 2, i32 0, i32 0, i32 3
  %169 = load i32, ptr %168, align 4
  %170 = or i32 %167, %169
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %179

172:                                              ; preds = %159
  %173 = getelementptr inbounds %struct.rt6_info, ptr %152, i32 0, i32 6
  %174 = load ptr, ptr %173, align 4
  %175 = load ptr, ptr %174, align 4
  %176 = getelementptr inbounds %struct.flowi6, ptr %3, i32 0, i32 1
  %177 = tail call i32 @ipv6_dev_get_saddr(ptr noundef %12, ptr noundef %175, ptr noundef %176, i32 noundef 0, ptr noundef %160) #22
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %455

179:                                              ; preds = %172, %159, %156, %136
  %180 = phi ptr [ %131, %136 ], [ %152, %172 ], [ %152, %159 ], [ %152, %156 ]
  %181 = phi ptr [ null, %136 ], [ %152, %172 ], [ %152, %159 ], [ %152, %156 ]
  %182 = phi i1 [ %130, %136 ], [ %139, %172 ], [ %139, %159 ], [ %139, %156 ]
  %183 = phi i8 [ %56, %136 ], [ %140, %172 ], [ %140, %159 ], [ %140, %156 ]
  %184 = load ptr, ptr %180, align 4
  %185 = icmp eq ptr %184, %1
  br i1 %185, label %186, label %194

186:                                              ; preds = %179
  %187 = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 36, i32 9
  %188 = load i32, ptr %187, align 4
  %189 = add i32 %188, 1
  store i32 %189, ptr %187, align 4
  %190 = tail call i32 @net_ratelimit() #22
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %475, label %192

192:                                              ; preds = %186
  %193 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %21) #23
  br label %475

194:                                              ; preds = %179
  %195 = getelementptr inbounds %struct.dst_entry, ptr %180, i32 0, i32 1
  %196 = load ptr, ptr %195, align 4
  %197 = getelementptr inbounds %struct.dst_ops, ptr %196, i32 0, i32 5
  %198 = load ptr, ptr %197, align 4
  %199 = tail call i32 %198(ptr noundef %180) #22
  %200 = getelementptr i8, ptr %1, i32 1632
  %201 = load i32, ptr %200, align 8
  %202 = sub i32 -40, %20
  %203 = add i32 %18, %202
  %204 = add i32 %203, %199
  %205 = sub i32 %204, %201
  %206 = icmp sgt i32 %4, -1
  %207 = add i32 %205, -8
  %208 = select i1 %206, i32 %207, i32 %205
  %209 = select i1 %206, i32 48, i32 40
  %210 = add i32 %20, %209
  %211 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 16
  %212 = load i16, ptr %211, align 8
  %213 = icmp eq i16 %212, -8826
  %214 = select i1 %213, i32 1280, i32 68
  %215 = tail call i32 @llvm.smax.i32(i32 %208, i32 %214)
  %216 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  %217 = load i32, ptr %216, align 8
  %218 = and i32 %217, -2
  %219 = inttoptr i32 %218 to ptr
  %220 = icmp eq i32 %218, 0
  br i1 %220, label %229, label %221

221:                                              ; preds = %194
  %222 = getelementptr inbounds %struct.dst_entry, ptr %219, i32 0, i32 1
  %223 = load ptr, ptr %222, align 4
  %224 = getelementptr inbounds %struct.dst_ops, ptr %223, i32 0, i32 11
  %225 = load ptr, ptr %224, align 4
  %226 = icmp eq ptr %225, null
  br i1 %226, label %229, label %227

227:                                              ; preds = %221
  tail call void %225(ptr noundef nonnull %219, ptr noundef null, ptr noundef %0, i32 noundef %215, i1 noundef zeroext false) #22
  %228 = load i32, ptr %200, align 8
  br label %229

229:                                              ; preds = %227, %221, %194
  %230 = phi i32 [ %201, %194 ], [ %201, %221 ], [ %228, %227 ]
  %231 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %232 = load i32, ptr %231, align 8
  %233 = add i32 %232, %18
  %234 = sub i32 %233, %230
  %235 = icmp ugt i32 %234, %215
  br i1 %235, label %236, label %243

236:                                              ; preds = %229
  %237 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %238 = load ptr, ptr %237, align 4
  %239 = getelementptr inbounds %struct.skb_shared_info, ptr %238, i32 0, i32 4
  %240 = load i16, ptr %239, align 4
  %241 = icmp eq i16 %240, 0
  br i1 %241, label %242, label %243

242:                                              ; preds = %236
  store i32 %215, ptr %5, align 4
  br label %475

243:                                              ; preds = %236, %229
  %244 = getelementptr i8, ptr %1, i32 1612
  %245 = load i32, ptr %244, align 4
  %246 = icmp sgt i32 %245, 0
  br i1 %246, label %247, label %270

247:                                              ; preds = %243
  %248 = load volatile i32, ptr @jiffies, align 64
  %249 = getelementptr i8, ptr %1, i32 1616
  %250 = load i32, ptr %249, align 8
  %251 = add i32 %248, -3000
  %252 = sub i32 %251, %250
  %253 = icmp slt i32 %252, 0
  br i1 %253, label %254, label %269

254:                                              ; preds = %247
  %255 = add nsw i32 %245, -1
  store i32 %255, ptr %244, align 4
  %256 = load i32, ptr %216, align 8
  %257 = and i32 %256, -2
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %270, label %259

259:                                              ; preds = %254
  %260 = inttoptr i32 %257 to ptr
  %261 = getelementptr inbounds %struct.dst_entry, ptr %260, i32 0, i32 1
  %262 = load ptr, ptr %261, align 4
  %263 = icmp eq ptr %262, null
  br i1 %263, label %270, label %264

264:                                              ; preds = %259
  %265 = getelementptr inbounds %struct.dst_ops, ptr %262, i32 0, i32 10
  %266 = load ptr, ptr %265, align 8
  %267 = icmp eq ptr %266, null
  br i1 %267, label %270, label %268

268:                                              ; preds = %264
  tail call void %266(ptr noundef %0) #22
  br label %270

269:                                              ; preds = %247
  store i32 0, ptr %244, align 4
  br label %270

270:                                              ; preds = %269, %268, %264, %259, %254, %243
  tail call void @skb_scrub_packet(ptr noundef %0, i1 noundef zeroext false) #22
  %271 = getelementptr inbounds %struct.net_device, ptr %184, i32 0, i32 19
  %272 = load i16, ptr %271, align 2
  %273 = zext i16 %272 to i32
  %274 = getelementptr inbounds %struct.net_device, ptr %184, i32 0, i32 21
  %275 = load i16, ptr %274, align 8
  %276 = zext i16 %275 to i32
  %277 = add nuw nsw i32 %276, %273
  %278 = and i32 %277, 131056
  %279 = add i32 %210, 16
  %280 = add i32 %279, %278
  %281 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %282 = load ptr, ptr %281, align 4
  %283 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %284 = load ptr, ptr %283, align 8
  %285 = ptrtoint ptr %282 to i32
  %286 = ptrtoint ptr %284 to i32
  %287 = sub i32 %285, %286
  %288 = icmp ult i32 %287, %280
  br i1 %288, label %308, label %289

289:                                              ; preds = %270
  %290 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 19
  %291 = load volatile i32, ptr %290, align 4
  %292 = icmp eq i32 %291, 1
  br i1 %292, label %293, label %308

293:                                              ; preds = %289
  %294 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 11
  %295 = load i8, ptr %294, align 2
  %296 = and i8 %295, 1
  %297 = icmp eq i8 %296, 0
  br i1 %297, label %317, label %298

298:                                              ; preds = %293
  %299 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %300 = load ptr, ptr %299, align 4
  %301 = getelementptr inbounds %struct.skb_shared_info, ptr %300, i32 0, i32 10
  %302 = load volatile i32, ptr %301, align 4
  %303 = and i32 %302, 65535
  %304 = icmp eq i32 %303, 1
  br i1 %304, label %317, label %305

305:                                              ; preds = %298
  %306 = tail call fastcc i32 @skb_clone_writable(ptr noundef %0)
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %308, label %317

308:                                              ; preds = %305, %289, %270
  %309 = tail call ptr @skb_realloc_headroom(ptr noundef %0, i32 noundef %280) #22
  %310 = icmp eq ptr %309, null
  br i1 %310, label %475, label %311

311:                                              ; preds = %308
  %312 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 1
  %313 = load ptr, ptr %312, align 4
  %314 = icmp eq ptr %313, null
  br i1 %314, label %316, label %315

315:                                              ; preds = %311
  tail call void @skb_set_owner_w(ptr noundef nonnull %309, ptr noundef nonnull %313) #22
  br label %316

316:                                              ; preds = %315, %311
  tail call void @consume_skb(ptr noundef %0) #22
  br label %317

317:                                              ; preds = %316, %305, %298, %293
  %318 = phi ptr [ %0, %305 ], [ %0, %298 ], [ %309, %316 ], [ %0, %293 ]
  %319 = load i8, ptr %22, align 1, !range !15
  %320 = icmp eq i8 %319, 0
  br i1 %320, label %325, label %321

321:                                              ; preds = %317
  %322 = getelementptr i8, ptr %1, i32 1640
  %323 = load i16, ptr %322, align 8
  %324 = icmp eq i16 %323, 0
  br i1 %324, label %331, label %475

325:                                              ; preds = %317
  %326 = icmp ne ptr %181, null
  %327 = and i1 %182, %326
  br i1 %327, label %328, label %331

328:                                              ; preds = %325
  %329 = getelementptr i8, ptr %1, i32 1600
  %330 = getelementptr inbounds %struct.flowi6, ptr %3, i32 0, i32 2
  tail call void @dst_cache_set_ip6(ptr noundef %329, ptr noundef nonnull %181, ptr noundef %330) #22
  br label %331

331:                                              ; preds = %328, %325, %321
  %332 = icmp ne ptr %180, null
  %333 = zext i1 %332 to i8
  %334 = getelementptr inbounds %struct.sk_buff, ptr %318, i32 0, i32 13, i32 0, i32 3
  %335 = load i16, ptr %334, align 2
  %336 = lshr i16 %335, 14
  %337 = trunc i16 %336 to i8
  %338 = and i8 %337, 1
  %339 = or i8 %338, %333
  %340 = zext i8 %339 to i16
  %341 = shl nuw nsw i16 %340, 14
  %342 = and i16 %335, -16385
  %343 = or i16 %341, %342
  store i16 %343, ptr %334, align 2
  %344 = ptrtoint ptr %180 to i32
  %345 = getelementptr inbounds %struct.sk_buff, ptr %318, i32 0, i32 4
  store i32 %344, ptr %345, align 8
  %346 = icmp eq i8 %183, 0
  br i1 %346, label %347, label %371

347:                                              ; preds = %331
  %348 = getelementptr inbounds %struct.sk_buff, ptr %318, i32 0, i32 13, i32 0, i32 16
  %349 = load i16, ptr %348, align 8
  switch i16 %349, label %368 [
    i16 8, label %350
    i16 -8826, label %359
  ]

350:                                              ; preds = %347
  %351 = getelementptr inbounds %struct.sk_buff, ptr %318, i32 0, i32 16
  %352 = load ptr, ptr %351, align 8
  %353 = getelementptr inbounds %struct.sk_buff, ptr %318, i32 0, i32 13, i32 0, i32 18
  %354 = load i16, ptr %353, align 4
  %355 = zext i16 %354 to i32
  %356 = getelementptr i8, ptr %352, i32 %355
  %357 = getelementptr inbounds %struct.iphdr, ptr %356, i32 0, i32 5
  %358 = load i8, ptr %357, align 4
  br label %371

359:                                              ; preds = %347
  %360 = getelementptr inbounds %struct.sk_buff, ptr %318, i32 0, i32 16
  %361 = load ptr, ptr %360, align 8
  %362 = getelementptr inbounds %struct.sk_buff, ptr %318, i32 0, i32 13, i32 0, i32 18
  %363 = load i16, ptr %362, align 4
  %364 = zext i16 %363 to i32
  %365 = getelementptr i8, ptr %361, i32 %364
  %366 = getelementptr inbounds %struct.ipv6hdr, ptr %365, i32 0, i32 4
  %367 = load i8, ptr %366, align 1
  br label %371

368:                                              ; preds = %347
  %369 = tail call i32 @ip6_dst_hoplimit(ptr noundef %180) #22
  %370 = trunc i32 %369 to i8
  br label %371

371:                                              ; preds = %368, %359, %350, %331
  %372 = phi i8 [ %358, %350 ], [ %367, %359 ], [ %370, %368 ], [ %183, %331 ]
  %373 = load ptr, ptr %180, align 4
  %374 = getelementptr inbounds %struct.net_device, ptr %373, i32 0, i32 19
  %375 = load i16, ptr %374, align 2
  %376 = zext i16 %375 to i32
  %377 = getelementptr inbounds %struct.net_device, ptr %373, i32 0, i32 21
  %378 = load i16, ptr %377, align 8
  %379 = zext i16 %378 to i32
  %380 = add nuw nsw i32 %379, %376
  %381 = and i32 %380, 131056
  %382 = getelementptr inbounds %struct.dst_entry, ptr %180, i32 0, i32 9
  %383 = load i16, ptr %382, align 4
  %384 = zext i16 %383 to i32
  %385 = getelementptr i8, ptr %1, i32 1628
  %386 = load i32, ptr %385, align 4
  %387 = add nuw nsw i32 %384, 56
  %388 = add i32 %387, %386
  %389 = add i32 %388, %381
  %390 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 21
  %391 = load i16, ptr %390, align 8
  %392 = zext i16 %391 to i32
  %393 = icmp ugt i32 %389, %392
  br i1 %393, label %394, label %396

394:                                              ; preds = %371
  %395 = trunc i32 %389 to i16
  store i16 %395, ptr %390, align 8
  br label %396

396:                                              ; preds = %394, %371
  %397 = getelementptr i8, ptr %1, i32 1640
  %398 = load i16, ptr %397, align 8
  %399 = icmp eq i16 %398, 0
  br i1 %399, label %416, label %400

400:                                              ; preds = %396
  %401 = icmp ugt i16 %398, 7
  br i1 %401, label %478, label %402

402:                                              ; preds = %400
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !16
  %403 = load i16, ptr %397, align 8
  %404 = zext i16 %403 to i32
  %405 = getelementptr [8 x ptr], ptr @ip6tun_encaps, i32 0, i32 %404
  %406 = load volatile ptr, ptr %405, align 4
  %407 = icmp eq ptr %406, null
  br i1 %407, label %412, label %408, !prof !9

408:                                              ; preds = %402
  %409 = getelementptr inbounds %struct.ip6_tnl_encap_ops, ptr %406, i32 0, i32 1
  %410 = load ptr, ptr %409, align 4
  %411 = icmp eq ptr %410, null
  br i1 %411, label %412, label %413, !prof !9

412:                                              ; preds = %408, %402
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !17
  br label %478

413:                                              ; preds = %408
  %414 = call i32 %410(ptr noundef %318, ptr noundef %397, ptr noundef nonnull %8, ptr noundef %3) #22
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !17
  %415 = icmp eq i32 %414, 0
  br i1 %415, label %416, label %478

416:                                              ; preds = %413, %396
  br i1 %206, label %417, label %427

417:                                              ; preds = %416
  %418 = trunc i32 %4 to i8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %9, i8 0, i32 44, i1 false) #22
  %419 = getelementptr inbounds %struct.ipv6_tel_txoption, ptr %9, i32 0, i32 1
  %420 = getelementptr inbounds %struct.ipv6_tel_txoption, ptr %9, i32 0, i32 1, i32 2
  store i8 4, ptr %420, align 2
  %421 = getelementptr inbounds %struct.ipv6_tel_txoption, ptr %9, i32 0, i32 1, i32 3
  store i8 1, ptr %421, align 1
  %422 = getelementptr inbounds %struct.ipv6_tel_txoption, ptr %9, i32 0, i32 1, i32 4
  store i8 %418, ptr %422, align 4
  %423 = getelementptr inbounds %struct.ipv6_tel_txoption, ptr %9, i32 0, i32 1, i32 5
  store i8 1, ptr %423, align 1
  %424 = getelementptr inbounds %struct.ipv6_tel_txoption, ptr %9, i32 0, i32 1, i32 6
  store i8 1, ptr %424, align 2
  %425 = getelementptr inbounds %struct.ipv6_txoptions, ptr %9, i32 0, i32 7
  store ptr %419, ptr %425, align 4
  %426 = getelementptr inbounds %struct.ipv6_txoptions, ptr %9, i32 0, i32 3
  store i16 8, ptr %426, align 2
  call void @ipv6_push_frag_opts(ptr noundef %318, ptr noundef nonnull %9, ptr noundef nonnull %8) #22
  br label %427

427:                                              ; preds = %417, %416
  %428 = call ptr @skb_push(ptr noundef %318, i32 noundef 40) #22
  %429 = getelementptr inbounds %struct.sk_buff, ptr %318, i32 0, i32 17
  %430 = load ptr, ptr %429, align 4
  %431 = getelementptr inbounds %struct.sk_buff, ptr %318, i32 0, i32 16
  %432 = load ptr, ptr %431, align 8
  %433 = ptrtoint ptr %430 to i32
  %434 = ptrtoint ptr %432 to i32
  %435 = sub i32 %433, %434
  %436 = trunc i32 %435 to i16
  %437 = getelementptr inbounds %struct.sk_buff, ptr %318, i32 0, i32 13, i32 0, i32 18
  store i16 %436, ptr %437, align 4
  %438 = and i32 %435, 65535
  %439 = getelementptr i8, ptr %432, i32 %438
  %440 = zext i8 %2 to i32
  %441 = getelementptr inbounds %struct.flowi6, ptr %3, i32 0, i32 3
  %442 = load i32, ptr %441, align 8
  %443 = call fastcc i32 @ip6_make_flowlabel(ptr noundef %12, ptr noundef %318, i32 noundef %442, ptr noundef %3)
  %444 = shl nuw nsw i32 %440, 20
  %445 = or i32 %444, 1610612736
  %446 = call i32 @llvm.bswap.i32(i32 %445) #22
  %447 = or i32 %443, %446
  store i32 %447, ptr %439, align 4
  %448 = getelementptr inbounds %struct.ipv6hdr, ptr %439, i32 0, i32 4
  store i8 %372, ptr %448, align 1
  %449 = load i8, ptr %8, align 1
  %450 = getelementptr inbounds %struct.ipv6hdr, ptr %439, i32 0, i32 3
  store i8 %449, ptr %450, align 2
  %451 = getelementptr inbounds %struct.ipv6hdr, ptr %439, i32 0, i32 5
  %452 = getelementptr inbounds %struct.flowi6, ptr %3, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %451, ptr noundef align 8 dereferenceable(16) %452, i32 16, i1 false)
  %453 = getelementptr inbounds %struct.ipv6hdr, ptr %439, i32 0, i32 6
  %454 = getelementptr inbounds %struct.flowi6, ptr %3, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %453, ptr noundef align 8 dereferenceable(16) %454, i32 16, i1 false)
  call fastcc void @ip6tunnel_xmit(ptr noundef %318, ptr noundef %1)
  br label %478

455:                                              ; preds = %172, %154, %138, %129, %78, %73
  %456 = phi ptr [ %147, %138 ], [ null, %154 ], [ %152, %172 ], [ %131, %129 ], [ null, %78 ], [ null, %73 ]
  %457 = phi i32 [ -1, %138 ], [ %155, %154 ], [ -1, %172 ], [ -1, %129 ], [ -1, %78 ], [ -1, %73 ]
  %458 = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 36, i32 17
  %459 = load i32, ptr %458, align 4
  %460 = add i32 %459, 1
  store i32 %460, ptr %458, align 4
  %461 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  %462 = load i32, ptr %461, align 8
  %463 = and i32 %462, -2
  %464 = icmp eq i32 %463, 0
  br i1 %464, label %475, label %465

465:                                              ; preds = %455
  %466 = inttoptr i32 %463 to ptr
  %467 = getelementptr inbounds %struct.dst_entry, ptr %466, i32 0, i32 1
  %468 = load ptr, ptr %467, align 4
  %469 = icmp eq ptr %468, null
  br i1 %469, label %475, label %470

470:                                              ; preds = %465
  %471 = getelementptr inbounds %struct.dst_ops, ptr %468, i32 0, i32 10
  %472 = load ptr, ptr %471, align 8
  %473 = icmp eq ptr %472, null
  br i1 %473, label %475, label %474

474:                                              ; preds = %470
  tail call void %472(ptr noundef %0) #22
  br label %475

475:                                              ; preds = %474, %470, %465, %455, %321, %308, %242, %192, %186
  %476 = phi ptr [ %180, %192 ], [ %180, %186 ], [ %180, %321 ], [ %180, %242 ], [ %180, %308 ], [ %456, %455 ], [ %456, %465 ], [ %456, %470 ], [ %456, %474 ]
  %477 = phi i32 [ -1, %192 ], [ -1, %186 ], [ -1, %321 ], [ -90, %242 ], [ -1, %308 ], [ %457, %455 ], [ %457, %465 ], [ %457, %470 ], [ %457, %474 ]
  tail call void @dst_release(ptr noundef %476) #22
  br label %478

478:                                              ; preds = %475, %427, %413, %412, %400
  %479 = phi i32 [ %477, %475 ], [ 0, %427 ], [ %414, %413 ], [ -22, %412 ], [ -22, %400 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %9) #22
  ret i32 %479
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dst_cache_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfrm_lookup(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_dev_get_saddr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_scrub_packet(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal fastcc i32 @skb_clone_writable(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 11
  %3 = load i8, ptr %2, align 2
  %4 = and i8 %3, 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %15, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.skb_shared_info, ptr %8, i32 0, i32 10
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %10, 65535
  %12 = ashr i32 %10, 16
  %13 = sub nsw i32 %11, %12
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %28

15:                                               ; preds = %6, %1
  %16 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %19 = load ptr, ptr %18, align 8
  %20 = ptrtoint ptr %17 to i32
  %21 = ptrtoint ptr %19 to i32
  %22 = sub i32 %20, %21
  %23 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 8
  %24 = load i16, ptr %23, align 2
  %25 = zext i16 %24 to i32
  %26 = icmp ule i32 %22, %25
  %27 = zext i1 %26 to i32
  br label %28

28:                                               ; preds = %15, %6
  %29 = phi i32 [ 0, %6 ], [ %27, %15 ]
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_realloc_headroom(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_set_owner_w(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_cache_set_ip6(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_dst_hoplimit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipv6_push_frag_opts(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ip6_make_flowlabel(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #7 {
  %5 = alloca %struct.flow_keys, align 8
  %6 = and i32 %2, -61696
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %50

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 1, i32 17
  %10 = load i8, ptr %9, align 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %50, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13
  %14 = load i16, ptr %13, align 8
  %15 = and i16 %14, 768
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 7
  %19 = load i32, ptr %18, align 8
  br label %41

20:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(72) %5, i8 0, i32 72, i1 false) #22, !annotation !18
  %21 = call i32 @__get_hash_from_flowi6(ptr noundef %3, ptr noundef nonnull %5) #22
  %22 = getelementptr inbounds %struct.flow_keys, ptr %5, i32 0, i32 6
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i16, ptr %13, align 8
  %27 = and i16 %26, -769
  br label %34

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.flow_keys, ptr %5, i32 0, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  %32 = load i16, ptr %13, align 8
  %33 = and i16 %32, -769
  br i1 %31, label %36, label %34

34:                                               ; preds = %28, %25
  %35 = phi i16 [ %27, %25 ], [ %33, %28 ]
  br label %36

36:                                               ; preds = %34, %28
  %37 = phi i16 [ %35, %34 ], [ %33, %28 ]
  %38 = phi i16 [ 768, %34 ], [ 512, %28 ]
  %39 = or i16 %38, %37
  store i16 %39, ptr %13, align 8
  %40 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 7
  store i32 %21, ptr %40, align 8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #22
  br label %41

41:                                               ; preds = %36, %17
  %42 = phi i32 [ %19, %17 ], [ %21, %36 ]
  %43 = call i32 @llvm.fshl.i32(i32 %42, i32 %42, i32 16) #22
  %44 = and i32 %43, -61696
  %45 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 1, i32 27
  %46 = load i8, ptr %45, align 1
  %47 = icmp eq i8 %46, 0
  %48 = or i32 %44, 2048
  %49 = select i1 %47, i32 %44, i32 %48
  br label %50

50:                                               ; preds = %41, %8, %4
  %51 = phi i32 [ %49, %41 ], [ 0, %8 ], [ %6, %4 ]
  ret i32 %51
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ip6tunnel_xmit(ptr noundef %0, ptr noundef %1) unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(24) %3, i8 0, i32 24, i1 false)
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %5 = load i32, ptr %4, align 8
  %6 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 14
  %9 = load i16, ptr %8, align 4
  %10 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @ip6_local_out(ptr noundef nonnull @init_net, ptr noundef null, ptr noundef %0) #22
  %13 = icmp eq ptr %1, null
  br i1 %13, label %59, label %14

14:                                               ; preds = %2
  %15 = zext i16 %9 to i32
  %16 = getelementptr i8, ptr %7, i32 %15
  %17 = ptrtoint ptr %16 to i32
  %18 = ptrtoint ptr %11 to i32
  %19 = sub i32 %18, %17
  %20 = add i32 %19, %5
  %21 = and i32 %12, -3
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %48, !prof !10

23:                                               ; preds = %14
  %24 = icmp sgt i32 %20, 0
  br i1 %24, label %25, label %46

25:                                               ; preds = %23
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !23
  %26 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 110
  %27 = load ptr, ptr %26, align 8
  %28 = ptrtoint ptr %27 to i32
  %29 = tail call i32 @llvm.read_register.i32(metadata !0) #22
  %30 = inttoptr i32 %29 to ptr
  %31 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %30) #12, !srcloc !12
  %32 = add i32 %31, %28
  %33 = inttoptr i32 %32 to ptr
  %34 = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %33, i32 0, i32 4
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %35, 1
  store i32 %36, ptr %34, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #22, !srcloc !13
  %37 = zext i32 %20 to i64
  %38 = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %33, i32 0, i32 3
  %39 = load i64, ptr %38, align 8
  %40 = add i64 %39, %37
  store i64 %40, ptr %38, align 8
  %41 = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %33, i32 0, i32 2
  %42 = load i64, ptr %41, align 16
  %43 = add i64 %42, 1
  store i64 %43, ptr %41, align 16
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #22, !srcloc !14
  %44 = load i32, ptr %34, align 4
  %45 = add i32 %44, 1
  store i32 %45, ptr %34, align 4
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !24
  br label %59

46:                                               ; preds = %23
  %47 = icmp slt i32 %20, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %46, %14
  %49 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 5
  %50 = load i32, ptr %49, align 4
  %51 = add i32 %50, 1
  store i32 %51, ptr %49, align 4
  %52 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 16
  %53 = load i32, ptr %52, align 4
  %54 = add i32 %53, 1
  store i32 %54, ptr %52, align 4
  br label %59

55:                                               ; preds = %46
  %56 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 7
  %57 = load i32, ptr %56, align 4
  %58 = add i32 %57, 1
  store i32 %58, ptr %56, align 4
  br label %59

59:                                               ; preds = %55, %48, %25, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @ip6_tnl_change_mtu(ptr nocapture noundef %0, i32 noundef %1) #8 {
  %3 = getelementptr i8, ptr %0, i32 1440
  %4 = load i8, ptr %3, align 4
  %5 = icmp eq i8 %4, 41
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = icmp slt i32 %1, 1280
  br i1 %7, label %26, label %12

8:                                                ; preds = %2
  %9 = icmp slt i32 %1, 68
  br i1 %9, label %26, label %10

10:                                               ; preds = %8
  %11 = icmp eq i8 %4, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %10, %6
  %13 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 19
  %14 = load i16, ptr %13, align 2
  %15 = zext i16 %14 to i32
  %16 = sub nuw nsw i32 65575, %15
  %17 = icmp ult i32 %16, %1
  br i1 %17, label %26, label %24

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 19
  %20 = load i16, ptr %19, align 2
  %21 = xor i16 %20, -1
  %22 = zext i16 %21 to i32
  %23 = icmp ult i32 %22, %1
  br i1 %23, label %26, label %24

24:                                               ; preds = %18, %12
  %25 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 20
  store i32 %1, ptr %25, align 4
  br label %26

26:                                               ; preds = %24, %18, %12, %8, %6
  %27 = phi i32 [ 0, %24 ], [ -22, %6 ], [ -22, %8 ], [ -22, %12 ], [ -22, %18 ]
  ret i32 %27
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @ip6_tnl_get_iflink(ptr nocapture noundef readonly %0) #9 {
  %2 = getelementptr i8, ptr %0, i32 1436
  %3 = load i32, ptr %2, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ip6_tnl_encap_add_ops(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp ugt i32 %1, 7
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  %5 = getelementptr [8 x ptr], ptr @ip6tun_encaps, i32 0, i32 %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !25
  %6 = ptrtoint ptr %0 to i32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %5) #22, !srcloc !20
  br label %7

7:                                                ; preds = %7, %4
  %8 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %5, i32 0, i32 %6) #22, !srcloc !26
  %9 = extractvalue { i32, i32 } %8, 0
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %7

11:                                               ; preds = %7
  %12 = extractvalue { i32, i32 } %8, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !27
  %13 = icmp ne i32 %12, 0
  %14 = sext i1 %13 to i32
  br label %15

15:                                               ; preds = %11, %2
  %16 = phi i32 [ %14, %11 ], [ -34, %2 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ip6_tnl_encap_del_ops(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp ugt i32 %1, 7
  br i1 %3, label %16, label %4

4:                                                ; preds = %2
  %5 = getelementptr [8 x ptr], ptr @ip6tun_encaps, i32 0, i32 %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !28
  %6 = ptrtoint ptr %0 to i32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %5) #22, !srcloc !20
  br label %7

7:                                                ; preds = %7, %4
  %8 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %5, i32 %6, i32 0) #22, !srcloc !26
  %9 = extractvalue { i32, i32 } %8, 0
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %7

11:                                               ; preds = %7
  %12 = extractvalue { i32, i32 } %8, 1
  %13 = inttoptr i32 %12 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !29
  %14 = icmp ne ptr %13, %0
  %15 = sext i1 %14 to i32
  tail call void @synchronize_net() #22
  br label %16

16:                                               ; preds = %11, %2
  %17 = phi i32 [ %15, %11 ], [ -34, %2 ]
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ip6_tnl_encap_setup(ptr nocapture noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ip6_tnl, ptr %0, i32 0, i32 15
  store i64 0, ptr %3, align 8
  %4 = load i16, ptr %1, align 2
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %23, label %6

6:                                                ; preds = %2
  %7 = icmp ugt i16 %4, 7
  br i1 %7, label %40, label %8

8:                                                ; preds = %6
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !16
  %9 = load i16, ptr %1, align 2
  %10 = zext i16 %9 to i32
  %11 = getelementptr [8 x ptr], ptr @ip6tun_encaps, i32 0, i32 %10
  %12 = load volatile ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14, !prof !9

14:                                               ; preds = %8
  %15 = load ptr, ptr %12, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18, !prof !9

17:                                               ; preds = %14, %8
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !17
  br label %40

18:                                               ; preds = %14
  %19 = tail call i32 %15(ptr noundef %1) #22
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !17
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %40, label %21

21:                                               ; preds = %18
  %22 = load i16, ptr %1, align 2
  br label %23

23:                                               ; preds = %21, %2
  %24 = phi i16 [ %22, %21 ], [ 0, %2 ]
  %25 = phi i32 [ %19, %21 ], [ 0, %2 ]
  store i16 %24, ptr %3, align 8
  %26 = getelementptr inbounds %struct.ip_tunnel_encap, ptr %1, i32 0, i32 2
  %27 = load i16, ptr %26, align 2
  %28 = getelementptr inbounds %struct.ip6_tnl, ptr %0, i32 0, i32 15, i32 2
  store i16 %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.ip_tunnel_encap, ptr %1, i32 0, i32 3
  %30 = load i16, ptr %29, align 2
  %31 = getelementptr inbounds %struct.ip6_tnl, ptr %0, i32 0, i32 15, i32 3
  store i16 %30, ptr %31, align 2
  %32 = getelementptr inbounds %struct.ip_tunnel_encap, ptr %1, i32 0, i32 1
  %33 = load i16, ptr %32, align 2
  %34 = getelementptr inbounds %struct.ip6_tnl, ptr %0, i32 0, i32 15, i32 1
  store i16 %33, ptr %34, align 2
  %35 = getelementptr inbounds %struct.ip6_tnl, ptr %0, i32 0, i32 14
  store i32 %25, ptr %35, align 4
  %36 = getelementptr inbounds %struct.ip6_tnl, ptr %0, i32 0, i32 13
  %37 = load i32, ptr %36, align 8
  %38 = add i32 %37, %25
  %39 = getelementptr inbounds %struct.ip6_tnl, ptr %0, i32 0, i32 12
  store i32 %38, ptr %39, align 4
  br label %40

40:                                               ; preds = %23, %18, %17, %6
  %41 = phi i32 [ 0, %23 ], [ %19, %18 ], [ -22, %17 ], [ -22, %6 ]
  ret i32 %41
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @ip6_tnl_get_link_net(ptr nocapture noundef readonly %0) #9 {
  %2 = getelementptr i8, ptr %0, i32 1416
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #10 section ".init.text" {
  %1 = tail call zeroext i1 @ipv6_mod_enabled() #22
  br i1 %1, label %2, label %25

2:                                                ; preds = %0
  %3 = tail call i32 @register_pernet_device(ptr noundef nonnull @ip6_tnl_net_ops) #22
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %25, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @xfrm6_tunnel_register(ptr noundef nonnull @ip4ip6_handler, i16 noundef zeroext 2) #22
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.ip6_tunnel_init) #23
  br label %23

10:                                               ; preds = %5
  %11 = tail call i32 @xfrm6_tunnel_register(ptr noundef nonnull @ip6ip6_handler, i16 noundef zeroext 10) #22
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.ip6_tunnel_init) #23
  br label %20

15:                                               ; preds = %10
  %16 = tail call i32 @rtnl_link_register(ptr noundef nonnull @ip6_link_ops) #22
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %15
  %19 = tail call i32 @xfrm6_tunnel_deregister(ptr noundef nonnull @ip6ip6_handler, i16 noundef zeroext 10) #22
  br label %20

20:                                               ; preds = %18, %13
  %21 = phi i32 [ %11, %13 ], [ %16, %18 ]
  %22 = tail call i32 @xfrm6_tunnel_deregister(ptr noundef nonnull @ip4ip6_handler, i16 noundef zeroext 2) #22
  br label %23

23:                                               ; preds = %20, %8
  %24 = phi i32 [ %6, %8 ], [ %21, %20 ]
  tail call void @unregister_pernet_device(ptr noundef nonnull @ip6_tnl_net_ops) #22
  br label %25

25:                                               ; preds = %23, %15, %2, %0
  %26 = phi i32 [ -95, %0 ], [ 0, %15 ], [ %3, %2 ], [ %24, %23 ]
  ret i32 %26
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #10 section ".exit.text" {
  tail call void @rtnl_link_unregister(ptr noundef nonnull @ip6_link_ops) #22
  %1 = tail call i32 @xfrm6_tunnel_deregister(ptr noundef nonnull @ip4ip6_handler, i16 noundef zeroext 2) #22
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.ip6_tunnel_cleanup) #23
  br label %5

5:                                                ; preds = %3, %0
  %6 = tail call i32 @xfrm6_tunnel_deregister(ptr noundef nonnull @ip6ip6_handler, i16 noundef zeroext 10) #22
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.ip6_tunnel_cleanup) #23
  br label %10

10:                                               ; preds = %8, %5
  tail call void @unregister_pernet_device(ptr noundef nonnull @ip6_tnl_net_ops) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @IP6_ECN_decapsulate(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #7 {
  %3 = alloca %struct.vlan_hdr, align 4
  %4 = alloca %struct.vlan_hdr, align 4
  %5 = alloca %struct.vlan_hdr, align 4
  %6 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 16
  %7 = load i16, ptr %6, align 8
  %8 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 7
  %9 = load i16, ptr %8, align 8
  %10 = zext i16 %9 to i32
  switch i16 %7, label %52 [
    i16 -22392, label %11
    i16 129, label %11
  ]

11:                                               ; preds = %2, %2
  %12 = icmp eq i16 %9, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %11
  %14 = icmp ult i16 %9, 4
  br i1 %14, label %15, label %16, !prof !9

15:                                               ; preds = %13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 598, i32 noundef 9, ptr noundef null) #22
  br label %306

16:                                               ; preds = %13
  %17 = add nsw i32 %10, -4
  br label %18

18:                                               ; preds = %16, %11
  %19 = phi i32 [ %17, %16 ], [ 14, %11 ]
  %20 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %21 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %22 = icmp eq ptr %1, null
  %23 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  br label %24

24:                                               ; preds = %50, %18
  %25 = phi i32 [ %19, %18 ], [ %51, %50 ]
  %26 = phi i32 [ 8, %18 ], [ %43, %50 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #22
  store i32 0, ptr %5, align 4, !annotation !18
  %27 = load i32, ptr %20, align 8
  %28 = load i32, ptr %21, align 4
  %29 = add i32 %25, %28
  %30 = sub i32 %27, %29
  %31 = icmp sgt i32 %30, 3
  br i1 %31, label %32, label %35, !prof !10

32:                                               ; preds = %24
  %33 = load ptr, ptr %23, align 4
  %34 = getelementptr i8, ptr %33, i32 %25
  br label %40

35:                                               ; preds = %24
  br i1 %22, label %46, label %36

36:                                               ; preds = %35
  %37 = call i32 @skb_copy_bits(ptr noundef nonnull %1, i32 noundef %25, ptr noundef nonnull %5, i32 noundef 4) #22
  %38 = icmp slt i32 %37, 0
  %39 = select i1 %38, ptr null, ptr %5, !prof !9
  br label %40

40:                                               ; preds = %36, %32
  %41 = phi ptr [ %34, %32 ], [ %39, %36 ]
  %42 = icmp eq ptr %41, null
  %43 = add nsw i32 %26, -1
  %44 = icmp eq i32 %43, 0
  %45 = select i1 %42, i1 true, i1 %44, !prof !9
  br i1 %45, label %46, label %47, !prof !9

46:                                               ; preds = %40, %35
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #22
  br label %306

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.vlan_hdr, ptr %41, i32 0, i32 1
  %49 = load i16, ptr %48, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #22
  switch i16 %49, label %52 [
    i16 -22392, label %50
    i16 129, label %50
  ]

50:                                               ; preds = %47, %47
  %51 = add nsw i32 %25, 4
  br label %24

52:                                               ; preds = %47, %2
  %53 = phi i16 [ %7, %2 ], [ %49, %47 ]
  switch i16 %53, label %306 [
    i16 8, label %54
    i16 -8826, label %63
  ]

54:                                               ; preds = %52
  %55 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %56 = load ptr, ptr %55, align 8
  %57 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 18
  %58 = load i16, ptr %57, align 4
  %59 = zext i16 %58 to i32
  %60 = getelementptr i8, ptr %56, i32 %59
  %61 = getelementptr inbounds %struct.iphdr, ptr %60, i32 0, i32 1
  %62 = load i8, ptr %61, align 1
  br label %74

63:                                               ; preds = %52
  %64 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %65 = load ptr, ptr %64, align 8
  %66 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 18
  %67 = load i16, ptr %66, align 4
  %68 = zext i16 %67 to i32
  %69 = getelementptr i8, ptr %65, i32 %68
  %70 = load i16, ptr %69, align 2
  %71 = call i16 @llvm.bswap.i16(i16 %70) #22
  %72 = lshr i16 %71, 4
  %73 = trunc i16 %72 to i8
  br label %74

74:                                               ; preds = %63, %54
  %75 = phi i8 [ %73, %63 ], [ %62, %54 ]
  %76 = load i16, ptr %0, align 2
  %77 = call i16 @llvm.bswap.i16(i16 %76) #22
  %78 = lshr i16 %77, 4
  %79 = trunc i16 %78 to i8
  %80 = and i8 %75, 3
  %81 = icmp eq i8 %80, 0
  %82 = and i8 %79, 3
  br i1 %81, label %83, label %87

83:                                               ; preds = %74
  %84 = zext i8 %82 to i32
  switch i32 %84, label %86 [
    i32 0, label %199
    i32 2, label %306
    i32 1, label %306
    i32 3, label %85
  ]

85:                                               ; preds = %83
  br label %306

86:                                               ; preds = %83
  unreachable

87:                                               ; preds = %74
  %88 = trunc i16 %78 to i2
  switch i2 %88, label %306 [
    i2 -1, label %89
    i2 1, label %201
  ]

89:                                               ; preds = %87
  %90 = load i16, ptr %6, align 8
  %91 = load i16, ptr %8, align 8
  %92 = zext i16 %91 to i32
  switch i16 %90, label %134 [
    i16 -22392, label %93
    i16 129, label %93
  ]

93:                                               ; preds = %89, %89
  %94 = icmp eq i16 %91, 0
  br i1 %94, label %100, label %95

95:                                               ; preds = %93
  %96 = icmp ult i16 %91, 4
  br i1 %96, label %97, label %98, !prof !9

97:                                               ; preds = %95
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 598, i32 noundef 9, ptr noundef null) #22
  br label %306

98:                                               ; preds = %95
  %99 = add nsw i32 %92, -4
  br label %100

100:                                              ; preds = %98, %93
  %101 = phi i32 [ %99, %98 ], [ 14, %93 ]
  %102 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %103 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %104 = icmp eq ptr %1, null
  %105 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  br label %106

106:                                              ; preds = %132, %100
  %107 = phi i32 [ %101, %100 ], [ %133, %132 ]
  %108 = phi i32 [ 8, %100 ], [ %125, %132 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #22
  store i32 0, ptr %4, align 4, !annotation !18
  %109 = load i32, ptr %102, align 8
  %110 = load i32, ptr %103, align 4
  %111 = add i32 %107, %110
  %112 = sub i32 %109, %111
  %113 = icmp sgt i32 %112, 3
  br i1 %113, label %114, label %117, !prof !10

114:                                              ; preds = %106
  %115 = load ptr, ptr %105, align 4
  %116 = getelementptr i8, ptr %115, i32 %107
  br label %122

117:                                              ; preds = %106
  br i1 %104, label %128, label %118

118:                                              ; preds = %117
  %119 = call i32 @skb_copy_bits(ptr noundef nonnull %1, i32 noundef %107, ptr noundef nonnull %4, i32 noundef 4) #22
  %120 = icmp slt i32 %119, 0
  %121 = select i1 %120, ptr null, ptr %4, !prof !9
  br label %122

122:                                              ; preds = %118, %114
  %123 = phi ptr [ %116, %114 ], [ %121, %118 ]
  %124 = icmp eq ptr %123, null
  %125 = add nsw i32 %108, -1
  %126 = icmp eq i32 %125, 0
  %127 = select i1 %124, i1 true, i1 %126, !prof !9
  br i1 %127, label %128, label %129, !prof !9

128:                                              ; preds = %122, %117
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #22
  br label %306

129:                                              ; preds = %122
  %130 = getelementptr inbounds %struct.vlan_hdr, ptr %123, i32 0, i32 1
  %131 = load i16, ptr %130, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #22
  switch i16 %131, label %134 [
    i16 -22392, label %132
    i16 129, label %132
  ]

132:                                              ; preds = %129, %129
  %133 = add nsw i32 %107, 4
  br label %106

134:                                              ; preds = %129, %89
  %135 = phi i16 [ %90, %89 ], [ %131, %129 ]
  switch i16 %135, label %306 [
    i16 8, label %136
    i16 -8826, label %165
  ]

136:                                              ; preds = %134
  %137 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %138 = load ptr, ptr %137, align 8
  %139 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 18
  %140 = load i16, ptr %139, align 4
  %141 = zext i16 %140 to i32
  %142 = getelementptr i8, ptr %138, i32 %141
  %143 = getelementptr i8, ptr %142, i32 20
  %144 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 14
  %145 = load ptr, ptr %144, align 8
  %146 = icmp ugt ptr %143, %145
  br i1 %146, label %306, label %147

147:                                              ; preds = %136
  %148 = getelementptr inbounds %struct.iphdr, ptr %142, i32 0, i32 1
  %149 = load i8, ptr %148, align 1
  %150 = add i8 %149, 1
  %151 = and i8 %150, 2
  %152 = icmp eq i8 %151, 0
  br i1 %152, label %306, label %153

153:                                              ; preds = %147
  %154 = and i8 %150, 3
  %155 = zext i8 %154 to i16
  %156 = shl nuw nsw i16 %155, 8
  %157 = add nuw nsw i16 %156, -1025
  %158 = getelementptr inbounds %struct.iphdr, ptr %142, i32 0, i32 7
  %159 = load i16, ptr %158, align 2
  %160 = add i16 %159, %157
  %161 = icmp ult i16 %160, %157
  %162 = zext i1 %161 to i16
  %163 = add i16 %160, %162
  store i16 %163, ptr %158, align 2
  %164 = or i8 %149, 3
  store i8 %164, ptr %148, align 1
  br label %306

165:                                              ; preds = %134
  %166 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %167 = load ptr, ptr %166, align 8
  %168 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 18
  %169 = load i16, ptr %168, align 4
  %170 = zext i16 %169 to i32
  %171 = getelementptr i8, ptr %167, i32 %170
  %172 = getelementptr i8, ptr %171, i32 40
  %173 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 14
  %174 = load ptr, ptr %173, align 8
  %175 = icmp ugt ptr %172, %174
  br i1 %175, label %306, label %176

176:                                              ; preds = %165
  %177 = load i16, ptr %171, align 2
  %178 = and i16 %177, 12288
  %179 = icmp eq i16 %178, 0
  br i1 %179, label %306, label %180

180:                                              ; preds = %176
  %181 = load i32, ptr %171, align 4
  %182 = or i32 %181, 12288
  store i32 %182, ptr %171, align 4
  %183 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13
  %184 = load i16, ptr %183, align 8
  %185 = and i16 %184, 96
  %186 = icmp eq i16 %185, 64
  br i1 %186, label %187, label %306

187:                                              ; preds = %180
  %188 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 4
  %189 = load i32, ptr %188, align 4
  %190 = xor i32 %181, -1
  %191 = add i32 %189, %190
  %192 = icmp ult i32 %191, %190
  %193 = zext i1 %192 to i32
  %194 = add i32 %191, %182
  %195 = add i32 %194, %193
  %196 = icmp ult i32 %195, %182
  %197 = zext i1 %196 to i32
  %198 = add i32 %195, %197
  store i32 %198, ptr %188, align 4
  br label %306

199:                                              ; preds = %83
  %200 = icmp eq i8 %82, 1
  br i1 %200, label %201, label %306

201:                                              ; preds = %199, %87
  %202 = load i16, ptr %6, align 8
  %203 = load i16, ptr %8, align 8
  %204 = zext i16 %203 to i32
  switch i16 %202, label %246 [
    i16 -22392, label %205
    i16 129, label %205
  ]

205:                                              ; preds = %201, %201
  %206 = icmp eq i16 %203, 0
  br i1 %206, label %212, label %207

207:                                              ; preds = %205
  %208 = icmp ult i16 %203, 4
  br i1 %208, label %209, label %210, !prof !9

209:                                              ; preds = %207
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 598, i32 noundef 9, ptr noundef null) #22
  br label %306

210:                                              ; preds = %207
  %211 = add nsw i32 %204, -4
  br label %212

212:                                              ; preds = %210, %205
  %213 = phi i32 [ %211, %210 ], [ 14, %205 ]
  %214 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %215 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %216 = icmp eq ptr %1, null
  %217 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  br label %218

218:                                              ; preds = %244, %212
  %219 = phi i32 [ %213, %212 ], [ %245, %244 ]
  %220 = phi i32 [ 8, %212 ], [ %237, %244 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #22
  store i32 0, ptr %3, align 4, !annotation !18
  %221 = load i32, ptr %214, align 8
  %222 = load i32, ptr %215, align 4
  %223 = add i32 %219, %222
  %224 = sub i32 %221, %223
  %225 = icmp sgt i32 %224, 3
  br i1 %225, label %226, label %229, !prof !10

226:                                              ; preds = %218
  %227 = load ptr, ptr %217, align 4
  %228 = getelementptr i8, ptr %227, i32 %219
  br label %234

229:                                              ; preds = %218
  br i1 %216, label %240, label %230

230:                                              ; preds = %229
  %231 = call i32 @skb_copy_bits(ptr noundef nonnull %1, i32 noundef %219, ptr noundef nonnull %3, i32 noundef 4) #22
  %232 = icmp slt i32 %231, 0
  %233 = select i1 %232, ptr null, ptr %3, !prof !9
  br label %234

234:                                              ; preds = %230, %226
  %235 = phi ptr [ %228, %226 ], [ %233, %230 ]
  %236 = icmp eq ptr %235, null
  %237 = add nsw i32 %220, -1
  %238 = icmp eq i32 %237, 0
  %239 = select i1 %236, i1 true, i1 %238, !prof !9
  br i1 %239, label %240, label %241, !prof !9

240:                                              ; preds = %234, %229
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #22
  br label %306

241:                                              ; preds = %234
  %242 = getelementptr inbounds %struct.vlan_hdr, ptr %235, i32 0, i32 1
  %243 = load i16, ptr %242, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #22
  switch i16 %243, label %246 [
    i16 -22392, label %244
    i16 129, label %244
  ]

244:                                              ; preds = %241, %241
  %245 = add nsw i32 %219, 4
  br label %218

246:                                              ; preds = %241, %201
  %247 = phi i16 [ %202, %201 ], [ %243, %241 ]
  switch i16 %247, label %306 [
    i16 8, label %248
    i16 -8826, label %272
  ]

248:                                              ; preds = %246
  %249 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %250 = load ptr, ptr %249, align 8
  %251 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 18
  %252 = load i16, ptr %251, align 4
  %253 = zext i16 %252 to i32
  %254 = getelementptr i8, ptr %250, i32 %253
  %255 = getelementptr i8, ptr %254, i32 20
  %256 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 14
  %257 = load ptr, ptr %256, align 8
  %258 = icmp ugt ptr %255, %257
  br i1 %258, label %306, label %259

259:                                              ; preds = %248
  %260 = getelementptr inbounds %struct.iphdr, ptr %254, i32 0, i32 1
  %261 = load i8, ptr %260, align 1
  %262 = and i8 %261, 3
  %263 = icmp eq i8 %262, 2
  br i1 %263, label %264, label %306

264:                                              ; preds = %259
  %265 = getelementptr inbounds %struct.iphdr, ptr %254, i32 0, i32 7
  %266 = load i16, ptr %265, align 2
  %267 = add i16 %266, 256
  %268 = icmp ugt i16 %266, -257
  %269 = zext i1 %268 to i16
  %270 = add i16 %267, %269
  store i16 %270, ptr %265, align 2
  %271 = xor i8 %261, 3
  store i8 %271, ptr %260, align 1
  br label %306

272:                                              ; preds = %246
  %273 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %274 = load ptr, ptr %273, align 8
  %275 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 18
  %276 = load i16, ptr %275, align 4
  %277 = zext i16 %276 to i32
  %278 = getelementptr i8, ptr %274, i32 %277
  %279 = getelementptr i8, ptr %278, i32 40
  %280 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 14
  %281 = load ptr, ptr %280, align 8
  %282 = icmp ugt ptr %279, %281
  br i1 %282, label %306, label %283

283:                                              ; preds = %272
  %284 = load i16, ptr %278, align 2
  %285 = and i16 %284, 12288
  %286 = icmp eq i16 %285, 8192
  br i1 %286, label %287, label %306

287:                                              ; preds = %283
  %288 = load i32, ptr %278, align 4
  %289 = xor i32 %288, 12288
  store i32 %289, ptr %278, align 4
  %290 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13
  %291 = load i16, ptr %290, align 8
  %292 = and i16 %291, 96
  %293 = icmp eq i16 %292, 64
  br i1 %293, label %294, label %306

294:                                              ; preds = %287
  %295 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 4
  %296 = load i32, ptr %295, align 4
  %297 = xor i32 %288, -1
  %298 = add i32 %296, %297
  %299 = icmp ult i32 %298, %297
  %300 = zext i1 %299 to i32
  %301 = add i32 %298, %289
  %302 = add i32 %301, %300
  %303 = icmp ult i32 %302, %289
  %304 = zext i1 %303 to i32
  %305 = add i32 %302, %304
  store i32 %305, ptr %295, align 4
  br label %306

306:                                              ; preds = %294, %287, %283, %272, %264, %259, %248, %246, %240, %209, %199, %187, %180, %176, %165, %153, %147, %136, %134, %128, %97, %87, %85, %83, %83, %52, %46, %15
  %307 = phi i32 [ 0, %52 ], [ 0, %199 ], [ 2, %85 ], [ 0, %97 ], [ 0, %128 ], [ 0, %134 ], [ 0, %136 ], [ 0, %147 ], [ 0, %153 ], [ 0, %165 ], [ 0, %176 ], [ 0, %180 ], [ 0, %187 ], [ 0, %209 ], [ 0, %240 ], [ 0, %246 ], [ 0, %248 ], [ 0, %259 ], [ 0, %264 ], [ 0, %272 ], [ 0, %283 ], [ 0, %287 ], [ 0, %294 ], [ 1, %83 ], [ 1, %83 ], [ 0, %87 ], [ 0, %15 ], [ 0, %46 ]
  ret i32 %307
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gro_cells_receive(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @neigh_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip6_route_output_flags(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_hash_from_flowi6(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_local_out(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ipv6_mod_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm6_tunnel_register(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_link_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm6_tunnel_deregister(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ip6_tnl_init_net(ptr noundef %0) #10 section ".init.text" {
  %2 = load i32, ptr @ip6_tnl_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !16
  %3 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 37
  %4 = load volatile ptr, ptr %3, align 64
  %5 = getelementptr [0 x ptr], ptr %4, i32 0, i32 %2
  %6 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !17
  %7 = getelementptr inbounds %struct.ip6_tnl_net, ptr %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.ip6_tnl_net, ptr %6, i32 0, i32 3
  store ptr %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.ip6_tnl_net, ptr %6, i32 0, i32 1
  %10 = getelementptr %struct.ip6_tnl_net, ptr %6, i32 0, i32 3, i32 1
  store ptr %9, ptr %10, align 4
  %11 = load i32, ptr @sysctl_fb_tunnels_only_for_init_net, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %1
  %14 = icmp eq ptr %0, @init_net
  %15 = icmp eq i32 %11, 1
  %16 = select i1 %14, i1 %15, i1 false
  br i1 %16, label %17, label %42

17:                                               ; preds = %13, %1
  %18 = tail call ptr @alloc_netdev_mqs(i32 noundef 248, ptr noundef nonnull @.str.10, i8 noundef zeroext 0, ptr noundef nonnull @ip6_tnl_dev_setup, i32 noundef 1, i32 noundef 1) #22
  store ptr %18, ptr %6, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %42, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 114
  store ptr @ip6_link_ops, ptr %21, align 4
  %22 = load ptr, ptr %6, align 4
  %23 = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 23
  %24 = load i64, ptr %23, align 16
  %25 = or i64 %24, 8192
  store i64 %25, ptr %23, align 16
  %26 = load ptr, ptr %6, align 4
  %27 = getelementptr i8, ptr %26, i32 1408
  %28 = load i32, ptr @ip6_tnl_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !16
  %29 = load volatile ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 37), align 64
  %30 = getelementptr [0 x ptr], ptr %29, i32 0, i32 %28
  %31 = load ptr, ptr %30, align 4
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !17
  %32 = getelementptr i8, ptr %26, i32 1440
  store i8 41, ptr %32, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !30
  %33 = getelementptr inbounds %struct.ip6_tnl_net, ptr %31, i32 0, i32 2
  store volatile ptr %27, ptr %33, align 4
  %34 = load ptr, ptr %6, align 4
  %35 = tail call i32 @register_netdev(ptr noundef %34) #22
  %36 = icmp slt i32 %35, 0
  %37 = load ptr, ptr %6, align 4
  br i1 %36, label %41, label %38

38:                                               ; preds = %20
  %39 = getelementptr i8, ptr %37, i32 1420
  %40 = tail call ptr @strcpy(ptr noundef %39, ptr noundef %37)
  br label %42

41:                                               ; preds = %20
  tail call void @free_netdev(ptr noundef %37) #22
  br label %42

42:                                               ; preds = %41, %38, %17, %13
  %43 = phi i32 [ 0, %38 ], [ 0, %13 ], [ %35, %41 ], [ -12, %17 ]
  ret i32 %43
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ip6_tnl_exit_batch_net(ptr noundef readonly %0) #13 section ".ref.text" {
  %2 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #22
  store ptr %2, ptr %2, align 8
  %3 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %3, align 4
  call void @rtnl_lock() #22
  %4 = load ptr, ptr %0, align 4
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %11, label %6

6:                                                ; preds = %6, %1
  %7 = phi ptr [ %9, %6 ], [ %4, %1 ]
  %8 = getelementptr i8, ptr %7, i32 -36
  call fastcc void @ip6_tnl_destroy_tunnels(ptr noundef %8, ptr noundef nonnull %2)
  %9 = load ptr, ptr %7, align 4
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %11, label %6

11:                                               ; preds = %6, %1
  call void @unregister_netdevice_many(ptr noundef nonnull %2) #22
  call void @rtnl_unlock() #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_netdev_mqs(i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ip6_tnl_dev_setup(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 16
  store ptr @ip6_tnl_netdev_ops, ptr %2, align 8
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 44
  store ptr @ip_tunnel_header_ops, ptr %3, align 16
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 105
  store i8 1, ptr %4, align 8
  %5 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 106
  store ptr @ip6_dev_free, ptr %5, align 4
  %6 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 32
  store i16 769, ptr %6, align 16
  %7 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 14
  %8 = load i32, ptr %7, align 8
  %9 = or i32 %8, 128
  store i32 %9, ptr %7, align 8
  %10 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 51
  store i8 16, ptr %10, align 1
  %11 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 23
  %12 = load i64, ptr %11, align 16
  %13 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 15
  %14 = load i64, ptr %13, align 16
  %15 = and i64 %14, -131105
  store i64 %15, ptr %13, align 16
  %16 = or i64 %12, 26845450345
  store i64 %16, ptr %11, align 16
  %17 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 24
  %18 = load i64, ptr %17, align 8
  %19 = or i64 %18, 26845446249
  store i64 %19, ptr %17, align 8
  %20 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 50
  store i8 1, ptr %20, align 8
  %21 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 49
  tail call void @get_random_bytes(ptr noundef %21, i32 noundef 6) #22
  %22 = load i8, ptr %21, align 1
  %23 = and i8 %22, -4
  %24 = or i8 %23, 2
  store i8 %24, ptr %21, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ip6_dev_free(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 1608
  tail call void @gro_cells_destroy(ptr noundef %2) #22
  %3 = getelementptr i8, ptr %0, i32 1600
  tail call void @dst_cache_destroy(ptr noundef %3) #22
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 110
  %5 = load ptr, ptr %4, align 8
  tail call void @free_percpu(ptr noundef %5) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ip6_tnl_dev_init(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 1408
  %3 = getelementptr i8, ptr %0, i32 1412
  store ptr %0, ptr %3, align 4
  %4 = getelementptr i8, ptr %0, i32 1416
  store ptr @init_net, ptr %4, align 8
  %5 = tail call noalias ptr @__alloc_percpu_gfp(i32 noundef 64, i32 noundef 32, i32 noundef 3264) #24
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = load i32, ptr @nr_cpu_ids, align 4
  %9 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #25
  %10 = icmp ult i32 %9, %8
  br i1 %10, label %11, label %24

11:                                               ; preds = %7
  %12 = ptrtoint ptr %5 to i32
  br label %15

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 110
  store ptr null, ptr %14, align 8
  br label %80

15:                                               ; preds = %15, %11
  %16 = phi i32 [ %9, %11 ], [ %22, %15 ]
  %17 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %16
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, %12
  %20 = inttoptr i32 %19 to ptr
  %21 = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %20, i32 0, i32 4
  store i32 0, ptr %21, align 4
  %22 = tail call i32 @cpumask_next(i32 noundef %16, ptr noundef nonnull @__cpu_possible_mask) #25
  %23 = icmp ult i32 %22, %8
  br i1 %23, label %15, label %24

24:                                               ; preds = %15, %7
  %25 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 110
  store ptr %5, ptr %25, align 8
  %26 = getelementptr i8, ptr %0, i32 1600
  %27 = tail call i32 @dst_cache_init(ptr noundef %26, i32 noundef 3264) #22
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %69

29:                                               ; preds = %24
  %30 = getelementptr i8, ptr %0, i32 1608
  %31 = tail call i32 @gro_cells_init(ptr noundef %30, ptr noundef %0) #22
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %68

33:                                               ; preds = %29
  %34 = getelementptr i8, ptr %0, i32 1632
  store i32 0, ptr %34, align 8
  %35 = getelementptr i8, ptr %0, i32 1636
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr i8, ptr %0, i32 1628
  store i32 %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 32
  store i16 769, ptr %38, align 16
  %39 = trunc i32 %36 to i16
  %40 = add i16 %39, 136
  %41 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 19
  store i16 %40, ptr %41, align 2
  %42 = sub i32 1460, %36
  %43 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 20
  store i32 %42, ptr %43, align 4
  %44 = getelementptr i8, ptr %0, i32 1448
  %45 = load i32, ptr %44, align 4
  %46 = and i32 %45, 1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %33
  %49 = sub i32 1452, %36
  store i32 %49, ptr %43, align 4
  br label %50

50:                                               ; preds = %48, %33
  %51 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 30
  store i32 68, ptr %51, align 8
  %52 = zext i16 %40 to i32
  %53 = sub nuw nsw i32 65575, %52
  %54 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 31
  store i32 %53, ptr %54, align 4
  %55 = icmp eq ptr %0, null
  br i1 %55, label %72, label %56

56:                                               ; preds = %50
  %57 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #22, !srcloc !31
  %58 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 99
  %59 = load ptr, ptr %58, align 8
  %60 = ptrtoint ptr %59 to i32
  %61 = tail call i32 @llvm.read_register.i32(metadata !0) #22
  %62 = inttoptr i32 %61 to ptr
  %63 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %62) #12, !srcloc !12
  %64 = add i32 %63, %60
  %65 = inttoptr i32 %64 to ptr
  %66 = load i32, ptr %65, align 4
  %67 = add i32 %66, 1
  store i32 %67, ptr %65, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %57) #22, !srcloc !32
  br label %72

68:                                               ; preds = %29
  tail call void @dst_cache_destroy(ptr noundef %26) #22
  br label %69

69:                                               ; preds = %68, %24
  %70 = phi i32 [ %27, %24 ], [ %31, %68 ]
  %71 = load ptr, ptr %25, align 8
  tail call void @free_percpu(ptr noundef %71) #22
  store ptr null, ptr %25, align 8
  br label %80

72:                                               ; preds = %56, %50
  tail call fastcc void @ip6_tnl_link_config(ptr noundef %2)
  %73 = getelementptr i8, ptr %0, i32 1443
  %74 = load i8, ptr %73, align 1, !range !15
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 15
  %78 = load i64, ptr %77, align 16
  %79 = and i64 %78, -131105
  store i64 %79, ptr %77, align 16
  br label %80

80:                                               ; preds = %76, %72, %69, %13
  %81 = phi i32 [ 0, %76 ], [ 0, %72 ], [ %70, %69 ], [ -12, %13 ]
  ret i32 %81
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ip6_tnl_dev_uninit(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 1408
  %3 = getelementptr i8, ptr %0, i32 1416
  %4 = load ptr, ptr %3, align 8
  %5 = load i32, ptr @ip6_tnl_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !16
  %6 = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 37
  %7 = load volatile ptr, ptr %6, align 64
  %8 = getelementptr [0 x ptr], ptr %7, i32 0, i32 %5
  %9 = load ptr, ptr %8, align 4
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !17
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.ip6_tnl_net, ptr %9, i32 0, i32 2
  store volatile ptr null, ptr %13, align 4
  br label %77

14:                                               ; preds = %1
  %15 = getelementptr i8, ptr %0, i32 1443
  %16 = load i8, ptr %15, align 1, !range !15
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.ip6_tnl_net, ptr %9, i32 0, i32 4
  store volatile ptr null, ptr %19, align 4
  br label %20

20:                                               ; preds = %18, %14
  %21 = getelementptr i8, ptr %0, i32 1468
  %22 = getelementptr i8, ptr %0, i32 1452
  %23 = load i32, ptr %21, align 4
  %24 = getelementptr i8, ptr %0, i32 1472
  %25 = load i32, ptr %24, align 4
  %26 = or i32 %25, %23
  %27 = getelementptr i8, ptr %0, i32 1476
  %28 = load i32, ptr %27, align 4
  %29 = or i32 %26, %28
  %30 = getelementptr i8, ptr %0, i32 1480
  %31 = load i32, ptr %30, align 4
  %32 = or i32 %29, %31
  %33 = icmp eq i32 %32, 0
  %34 = load i32, ptr %22, align 4
  %35 = getelementptr i8, ptr %0, i32 1456
  %36 = load i32, ptr %35, align 4
  br i1 %33, label %42, label %37

37:                                               ; preds = %20
  %38 = getelementptr i8, ptr %0, i32 1460
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr i8, ptr %0, i32 1464
  %41 = load i32, ptr %40, align 4
  br label %51

42:                                               ; preds = %20
  %43 = or i32 %36, %34
  %44 = getelementptr i8, ptr %0, i32 1460
  %45 = load i32, ptr %44, align 4
  %46 = or i32 %43, %45
  %47 = getelementptr i8, ptr %0, i32 1464
  %48 = load i32, ptr %47, align 4
  %49 = or i32 %46, %48
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %63, label %51

51:                                               ; preds = %42, %37
  %52 = phi i32 [ %41, %37 ], [ %48, %42 ]
  %53 = phi i32 [ %39, %37 ], [ %45, %42 ]
  %54 = xor i32 %25, %23
  %55 = xor i32 %54, %28
  %56 = xor i32 %55, %31
  %57 = xor i32 %56, %34
  %58 = xor i32 %57, %36
  %59 = xor i32 %58, %52
  %60 = xor i32 %59, %53
  %61 = mul i32 %60, 1640531527
  %62 = lshr i32 %61, 27
  br label %63

63:                                               ; preds = %51, %42
  %64 = phi i32 [ 0, %42 ], [ %62, %51 ]
  %65 = phi i32 [ 0, %42 ], [ 1, %51 ]
  %66 = getelementptr %struct.ip6_tnl_net, ptr %9, i32 0, i32 3, i32 %65
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr ptr, ptr %67, i32 %64
  br label %69

69:                                               ; preds = %73, %63
  %70 = phi ptr [ %68, %63 ], [ %71, %73 ]
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  %74 = icmp eq ptr %71, %2
  br i1 %74, label %75, label %69

75:                                               ; preds = %73
  %76 = load ptr, ptr %2, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !33
  store volatile ptr %76, ptr %70, align 4
  br label %77

77:                                               ; preds = %75, %69, %12
  %78 = load volatile i32, ptr @jiffies, align 64
  %79 = getelementptr i8, ptr %0, i32 1604
  store i32 %78, ptr %79, align 4
  %80 = icmp eq ptr %0, null
  br i1 %80, label %93, label %81

81:                                               ; preds = %77
  %82 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #22, !srcloc !31
  %83 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 99
  %84 = load ptr, ptr %83, align 8
  %85 = ptrtoint ptr %84 to i32
  %86 = tail call i32 @llvm.read_register.i32(metadata !0) #22
  %87 = inttoptr i32 %86 to ptr
  %88 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %87) #12, !srcloc !12
  %89 = add i32 %88, %85
  %90 = inttoptr i32 %89 to ptr
  %91 = load i32, ptr %90, align 4
  %92 = add i32 %91, -1
  store i32 %92, ptr %90, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %82) #22, !srcloc !32
  br label %93

93:                                               ; preds = %81, %77
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ip6_tnl_start_xmit(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.inet6_skb_parm, align 4
  %4 = alloca %struct.ip_options, align 4
  %5 = alloca %struct.inet6_skb_parm, align 4
  %6 = alloca %struct.flowi6, align 8
  %7 = alloca i32, align 4
  %8 = getelementptr i8, ptr %1, i32 1412
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 16
  %11 = load i16, ptr %10, align 8
  %12 = icmp eq i16 %11, 8
  %13 = select i1 %12, i32 20, i32 0
  %14 = icmp eq i16 %11, -8826
  %15 = select i1 %14, i32 40, i32 %13
  %16 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %19 = load i16, ptr %18, align 4
  %20 = zext i16 %19 to i32
  %21 = getelementptr i8, ptr %17, i32 %20
  %22 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %23 = load ptr, ptr %22, align 4
  %24 = ptrtoint ptr %21 to i32
  %25 = ptrtoint ptr %23 to i32
  %26 = sub i32 %24, %25
  %27 = add i32 %26, %15
  %28 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %29 = load i32, ptr %28, align 8
  %30 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %31 = load i32, ptr %30, align 4
  %32 = sub i32 %29, %31
  %33 = icmp ugt i32 %27, %32
  br i1 %33, label %34, label %42, !prof !9

34:                                               ; preds = %2
  %35 = icmp ult i32 %29, %27
  br i1 %35, label %275, label %36, !prof !9

36:                                               ; preds = %34
  %37 = sub i32 %27, %32
  %38 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %37) #22
  %39 = icmp eq ptr %38, null
  br i1 %39, label %275, label %40

40:                                               ; preds = %36
  %41 = load i16, ptr %10, align 8
  br label %42

42:                                               ; preds = %40, %2
  %43 = phi i16 [ %41, %40 ], [ %11, %2 ]
  switch i16 %43, label %275 [
    i16 8, label %74
    i16 -8826, label %44
    i16 18312, label %73
  ]

44:                                               ; preds = %42
  %45 = load ptr, ptr %16, align 8
  %46 = load i16, ptr %18, align 4
  %47 = zext i16 %46 to i32
  %48 = getelementptr i8, ptr %45, i32 %47
  %49 = getelementptr i8, ptr %1, i32 1468
  %50 = getelementptr inbounds %struct.ipv6hdr, ptr %48, i32 0, i32 5
  %51 = load i32, ptr %49, align 4
  %52 = load i32, ptr %50, align 4
  %53 = xor i32 %52, %51
  %54 = getelementptr i8, ptr %1, i32 1472
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr %struct.ipv6hdr, ptr %48, i32 0, i32 5, i32 0, i32 0, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = xor i32 %57, %55
  %59 = or i32 %58, %53
  %60 = getelementptr i8, ptr %1, i32 1476
  %61 = load i32, ptr %60, align 4
  %62 = getelementptr %struct.ipv6hdr, ptr %48, i32 0, i32 5, i32 0, i32 0, i32 2
  %63 = load i32, ptr %62, align 4
  %64 = xor i32 %63, %61
  %65 = or i32 %59, %64
  %66 = getelementptr i8, ptr %1, i32 1480
  %67 = load i32, ptr %66, align 4
  %68 = getelementptr %struct.ipv6hdr, ptr %48, i32 0, i32 5, i32 0, i32 0, i32 3
  %69 = load i32, ptr %68, align 4
  %70 = xor i32 %69, %67
  %71 = or i32 %65, %70
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %275, label %74

73:                                               ; preds = %42
  br label %74

74:                                               ; preds = %73, %44, %42
  %75 = phi i1 [ true, %44 ], [ false, %42 ], [ false, %73 ]
  %76 = phi i1 [ false, %44 ], [ true, %42 ], [ false, %73 ]
  %77 = phi i8 [ 41, %44 ], [ 4, %42 ], [ -119, %73 ]
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #22
  store i32 0, ptr %7, align 4, !annotation !18
  %78 = getelementptr i8, ptr %1, i32 1440
  %79 = load volatile i8, ptr %78, align 4
  %80 = icmp ne i8 %79, %77
  %81 = icmp ne i8 %79, 0
  %82 = and i1 %80, %81
  br i1 %82, label %273, label %83

83:                                               ; preds = %74
  %84 = getelementptr i8, ptr %1, i32 1443
  %85 = load i8, ptr %84, align 1, !range !15
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %147, label %87

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  %89 = load i32, ptr %88, align 8
  %90 = and i32 %89, -2
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %273, label %92

92:                                               ; preds = %87
  %93 = inttoptr i32 %90 to ptr
  %94 = getelementptr inbounds %struct.dst_entry, ptr %93, i32 0, i32 7
  %95 = load i16, ptr %94, align 4
  %96 = and i16 %95, 128
  %97 = icmp eq i16 %96, 0
  br i1 %97, label %104, label %98

98:                                               ; preds = %92
  %99 = getelementptr inbounds %struct.metadata_dst, ptr %93, i32 0, i32 1
  %100 = load i32, ptr %99, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.metadata_dst, ptr %93, i32 0, i32 2
  br label %112

104:                                              ; preds = %98, %92
  %105 = getelementptr inbounds %struct.dst_entry, ptr %93, i32 0, i32 13
  %106 = load ptr, ptr %105, align 4
  %107 = icmp eq ptr %106, null
  br i1 %107, label %273, label %108

108:                                              ; preds = %104
  %109 = load i16, ptr %106, align 4
  switch i16 %109, label %273 [
    i16 2, label %110
    i16 4, label %110
  ]

110:                                              ; preds = %108, %108
  %111 = getelementptr inbounds %struct.lwtunnel_state, ptr %106, i32 0, i32 7
  br label %112

112:                                              ; preds = %110, %102
  %113 = phi ptr [ %103, %102 ], [ %111, %110 ]
  %114 = icmp eq ptr %113, null
  br i1 %114, label %273, label %115, !prof !9

115:                                              ; preds = %112
  %116 = getelementptr inbounds %struct.ip_tunnel_info, ptr %113, i32 0, i32 3
  %117 = load i8, ptr %116, align 1
  %118 = and i8 %117, 3
  %119 = icmp eq i8 %118, 3
  br i1 %119, label %120, label %273, !prof !34

120:                                              ; preds = %115
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(88) %6, i8 0, i32 88, i1 false) #22
  %121 = getelementptr inbounds %struct.flowi_common, ptr %6, i32 0, i32 5
  store i8 %77, ptr %121, align 2
  %122 = getelementptr inbounds %struct.flowi6, ptr %6, i32 0, i32 2
  %123 = getelementptr inbounds %struct.ip_tunnel_key, ptr %113, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %122, ptr noundef align 8 dereferenceable(16) %123, i32 16, i1 false) #22
  %124 = getelementptr inbounds %struct.flowi6, ptr %6, i32 0, i32 1
  %125 = getelementptr inbounds %struct.ip_tunnel_key, ptr %113, i32 0, i32 1, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %124, ptr noundef align 8 dereferenceable(16) %125, i32 16, i1 false) #22
  %126 = getelementptr inbounds %struct.ip_tunnel_key, ptr %113, i32 0, i32 5
  %127 = load i32, ptr %126, align 4
  %128 = getelementptr inbounds %struct.flowi6, ptr %6, i32 0, i32 3
  store i32 %127, ptr %128, align 8
  %129 = getelementptr inbounds %struct.ip_tunnel_key, ptr %113, i32 0, i32 3
  %130 = load i8, ptr %129, align 2
  switch i8 %77, label %249 [
    i8 4, label %131
    i8 41, label %138
  ]

131:                                              ; preds = %120
  %132 = load ptr, ptr %16, align 8
  %133 = load i16, ptr %18, align 4
  %134 = zext i16 %133 to i32
  %135 = getelementptr i8, ptr %132, i32 %134
  %136 = getelementptr inbounds %struct.iphdr, ptr %135, i32 0, i32 1
  %137 = load i8, ptr %136, align 1
  br label %249

138:                                              ; preds = %120
  %139 = load ptr, ptr %16, align 8
  %140 = load i16, ptr %18, align 4
  %141 = zext i16 %140 to i32
  %142 = getelementptr i8, ptr %139, i32 %141
  %143 = load i16, ptr %142, align 2
  %144 = tail call i16 @llvm.bswap.i16(i16 %143) #22
  %145 = lshr i16 %144, 4
  %146 = trunc i16 %145 to i8
  br label %249

147:                                              ; preds = %83
  %148 = getelementptr i8, ptr %1, i32 1448
  %149 = load i32, ptr %148, align 4
  %150 = and i32 %149, 1
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %147
  %153 = getelementptr i8, ptr %1, i32 1441
  %154 = load i8, ptr %153, align 1
  %155 = zext i8 %154 to i32
  br label %156

156:                                              ; preds = %152, %147
  %157 = phi i32 [ -1, %147 ], [ %155, %152 ]
  br i1 %75, label %158, label %199

158:                                              ; preds = %156
  %159 = load ptr, ptr %16, align 8
  %160 = load i16, ptr %18, align 4
  %161 = zext i16 %160 to i32
  %162 = getelementptr i8, ptr %159, i32 %161
  %163 = tail call zeroext i16 @ip6_tnl_parse_tlv_enc_lim(ptr noundef %0, ptr noundef %162) #22
  %164 = zext i16 %163 to i32
  %165 = icmp eq i16 %163, 0
  %166 = load ptr, ptr %16, align 8
  %167 = load i16, ptr %18, align 4
  %168 = zext i16 %167 to i32
  br i1 %165, label %180, label %169

169:                                              ; preds = %158
  %170 = getelementptr i8, ptr %166, i32 %168
  %171 = getelementptr i8, ptr %170, i32 %164
  %172 = getelementptr inbounds %struct.ipv6_tlv_tnl_enc_lim, ptr %171, i32 0, i32 2
  %173 = load i8, ptr %172, align 1
  %174 = icmp eq i8 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %169
  %176 = add nuw nsw i32 %164, 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i32 24, i1 false) #22
  call void @icmp6_send(ptr noundef %0, i8 noundef zeroext 4, i8 noundef zeroext 0, i32 noundef %176, ptr noundef null, ptr noundef nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #22
  br label %273

177:                                              ; preds = %169
  %178 = zext i8 %173 to i32
  %179 = add nsw i32 %178, -1
  br label %180

180:                                              ; preds = %177, %158
  %181 = phi i32 [ %179, %177 ], [ %157, %158 ]
  %182 = getelementptr i8, ptr %1, i32 1512
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(88) %6, ptr noundef align 8 dereferenceable(88) %182, i32 88, i1 false) #22
  %183 = getelementptr inbounds %struct.flowi_common, ptr %6, i32 0, i32 5
  store i8 %77, ptr %183, align 2
  %184 = load i32, ptr %148, align 4
  %185 = and i32 %184, 32
  %186 = icmp eq i32 %185, 0
  %187 = getelementptr i8, ptr %1, i32 1496
  %188 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 11
  %189 = select i1 %186, ptr %187, ptr %188
  %190 = load i32, ptr %189, align 4
  %191 = getelementptr inbounds %struct.flowi_common, ptr %6, i32 0, i32 2
  store i32 %190, ptr %191, align 8
  %192 = getelementptr i8, ptr %166, i32 %168
  %193 = load i16, ptr %192, align 2
  %194 = tail call i16 @llvm.bswap.i16(i16 %193) #22
  %195 = lshr i16 %194, 4
  %196 = trunc i16 %195 to i8
  %197 = and i32 %184, 2
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %225, label %232

199:                                              ; preds = %156
  %200 = getelementptr i8, ptr %1, i32 1512
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(88) %6, ptr noundef align 8 dereferenceable(88) %200, i32 88, i1 false) #22
  %201 = getelementptr inbounds %struct.flowi_common, ptr %6, i32 0, i32 5
  store i8 %77, ptr %201, align 2
  %202 = and i32 %149, 32
  %203 = icmp eq i32 %202, 0
  %204 = getelementptr i8, ptr %1, i32 1496
  %205 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 11
  %206 = select i1 %203, ptr %204, ptr %205
  %207 = load i32, ptr %206, align 4
  %208 = getelementptr inbounds %struct.flowi_common, ptr %6, i32 0, i32 2
  store i32 %207, ptr %208, align 8
  br i1 %76, label %209, label %242

209:                                              ; preds = %199
  %210 = load ptr, ptr %16, align 8
  %211 = load i16, ptr %18, align 4
  %212 = zext i16 %211 to i32
  %213 = getelementptr i8, ptr %210, i32 %212
  %214 = getelementptr inbounds %struct.iphdr, ptr %213, i32 0, i32 1
  %215 = load i8, ptr %214, align 1
  %216 = and i32 %149, 2
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %249

218:                                              ; preds = %209
  %219 = getelementptr i8, ptr %1, i32 1444
  %220 = load i32, ptr %219, align 4
  %221 = and i32 %220, 61455
  %222 = tail call i32 @llvm.bswap.i32(i32 %221) #22
  %223 = lshr exact i32 %222, 20
  %224 = trunc i32 %223 to i8
  br label %249

225:                                              ; preds = %180
  %226 = getelementptr i8, ptr %1, i32 1444
  %227 = load i32, ptr %226, align 4
  %228 = and i32 %227, 61455
  %229 = tail call i32 @llvm.bswap.i32(i32 %228) #22
  %230 = lshr exact i32 %229, 20
  %231 = trunc i32 %230 to i8
  br label %232

232:                                              ; preds = %225, %180
  %233 = phi i8 [ %231, %225 ], [ %196, %180 ]
  %234 = and i32 %184, 4
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %249, label %236

236:                                              ; preds = %232
  %237 = load i32, ptr %192, align 4
  %238 = and i32 %237, -61696
  %239 = getelementptr inbounds %struct.flowi6, ptr %6, i32 0, i32 3
  %240 = load i32, ptr %239, align 8
  %241 = or i32 %240, %238
  store i32 %241, ptr %239, align 8
  br label %249

242:                                              ; preds = %199
  %243 = getelementptr i8, ptr %1, i32 1444
  %244 = load i32, ptr %243, align 4
  %245 = and i32 %244, 61455
  %246 = tail call i32 @llvm.bswap.i32(i32 %245) #22
  %247 = lshr exact i32 %246, 20
  %248 = trunc i32 %247 to i8
  br label %249

249:                                              ; preds = %242, %236, %232, %218, %209, %138, %131, %120
  %250 = phi i32 [ %157, %242 ], [ %181, %236 ], [ %181, %232 ], [ %157, %218 ], [ %157, %209 ], [ -1, %120 ], [ -1, %138 ], [ -1, %131 ]
  %251 = phi i8 [ %248, %242 ], [ %233, %236 ], [ %233, %232 ], [ %224, %218 ], [ %215, %209 ], [ %130, %120 ], [ %130, %138 ], [ %130, %131 ]
  %252 = phi i8 [ %248, %242 ], [ %196, %236 ], [ %196, %232 ], [ %215, %218 ], [ %215, %209 ], [ %130, %120 ], [ %146, %138 ], [ %137, %131 ]
  %253 = getelementptr inbounds %struct.flowi_common, ptr %6, i32 0, i32 8
  store i32 0, ptr %253, align 4
  %254 = tail call i32 @iptunnel_handle_offloads(ptr noundef %0, i32 noundef 512) #22
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %256, label %273

256:                                              ; preds = %249
  %257 = and i8 %252, 3
  %258 = icmp eq i8 %257, 3
  %259 = select i1 %258, i8 2, i8 %257
  %260 = and i8 %251, -4
  %261 = or i8 %259, %260
  %262 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 12
  store i8 %77, ptr %262, align 8
  %263 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 3
  %264 = load i16, ptr %263, align 2
  %265 = or i16 %264, 512
  store i16 %265, ptr %263, align 2
  %266 = call i32 @ip6_tnl_xmit(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %261, ptr noundef nonnull %6, i32 noundef %250, ptr noundef nonnull %7, i8 noundef zeroext %77) #22
  switch i32 %266, label %273 [
    i32 0, label %274
    i32 -90, label %267
  ]

267:                                              ; preds = %256
  switch i8 %77, label %273 [
    i8 4, label %268
    i8 41, label %271
  ]

268:                                              ; preds = %267
  %269 = load i32, ptr %7, align 4
  %270 = call i32 @llvm.bswap.i32(i32 %269) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false) #22
  call void @__icmp_send(ptr noundef %0, i32 noundef 3, i32 noundef 4, i32 noundef %270, ptr noundef nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #22
  br label %273

271:                                              ; preds = %267
  %272 = load i32, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i32 24, i1 false) #22
  call void @icmp6_send(ptr noundef %0, i8 noundef zeroext 2, i8 noundef zeroext 0, i32 noundef %272, ptr noundef null, ptr noundef nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #22
  br label %273

273:                                              ; preds = %271, %268, %267, %256, %249, %175, %115, %112, %108, %104, %87, %74
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %6) #22
  br label %275

274:                                              ; preds = %256
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %6) #22
  br label %282

275:                                              ; preds = %273, %44, %42, %36, %34
  %276 = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 36, i32 5
  %277 = load i32, ptr %276, align 4
  %278 = add i32 %277, 1
  store i32 %278, ptr %276, align 4
  %279 = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 36, i32 7
  %280 = load i32, ptr %279, align 4
  %281 = add i32 %280, 1
  store i32 %281, ptr %279, align 4
  call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #22
  br label %282

282:                                              ; preds = %275, %274
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ip6_tnl_siocdevprivate(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.ip6_tnl_parm, align 4
  %6 = alloca %struct.__ip6_tnl_parm, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %5, i8 0, i32 64, i1 false), !annotation !18
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %6) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(88) %6, i8 0, i32 88, i1 false), !annotation !18
  %7 = getelementptr i8, ptr %0, i32 1408
  %8 = getelementptr i8, ptr %0, i32 1416
  %9 = load ptr, ptr %8, align 8
  %10 = load i32, ptr @ip6_tnl_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !16
  %11 = getelementptr inbounds %struct.net, ptr %9, i32 0, i32 37
  %12 = load volatile ptr, ptr %11, align 64
  %13 = getelementptr [0 x ptr], ptr %12, i32 0, i32 %10
  %14 = load ptr, ptr %13, align 4
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(88) %6, i8 0, i32 88, i1 false)
  switch i32 %3, label %244 [
    i32 35312, label %15
    i32 35313, label %98
    i32 35315, label %98
    i32 35314, label %189
  ]

15:                                               ; preds = %4
  %16 = load ptr, ptr %14, align 4
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %18, label %60

18:                                               ; preds = %15
  %19 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 64, i32 -1090519040) #26, !srcloc !35
  %20 = extractvalue { i32, i32 } %19, 0
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %30, !prof !10

22:                                               ; preds = %18
  %23 = tail call ptr @llvm.thread.pointer() #22
  %24 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 3
  %25 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %24) #12, !srcloc !36
  %26 = and i32 %25, -13
  %27 = or i32 %26, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %27) #22, !srcloc !37
  tail call void asm sideeffect "isb ", "~{memory}"() #22, !srcloc !38
  %28 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %2, i32 noundef 64) #22
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %25) #22, !srcloc !37
  call void asm sideeffect "isb ", "~{memory}"() #22, !srcloc !38
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30, !prof !10

30:                                               ; preds = %22, %18
  %31 = phi i32 [ %28, %22 ], [ 64, %18 ]
  %32 = sub i32 64, %31
  %33 = getelementptr i8, ptr %5, i32 %32
  call void @llvm.memset.p0.i32(ptr align 1 %33, i8 0, i32 %31, i1 false) #22
  br label %244

34:                                               ; preds = %22
  %35 = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %6, i32 0, i32 8
  %36 = getelementptr inbounds %struct.ip6_tnl_parm, ptr %5, i32 0, i32 7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %35, ptr noundef align 4 dereferenceable(16) %36, i32 16, i1 false) #22
  %37 = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %6, i32 0, i32 9
  %38 = getelementptr inbounds %struct.ip6_tnl_parm, ptr %5, i32 0, i32 8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %37, ptr noundef align 4 dereferenceable(16) %38, i32 16, i1 false) #22
  %39 = getelementptr inbounds %struct.ip6_tnl_parm, ptr %5, i32 0, i32 6
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %6, i32 0, i32 7
  store i32 %40, ptr %41, align 4
  %42 = getelementptr inbounds %struct.ip6_tnl_parm, ptr %5, i32 0, i32 4
  %43 = load i8, ptr %42, align 2
  %44 = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %6, i32 0, i32 4
  store i8 %43, ptr %44, align 2
  %45 = getelementptr inbounds %struct.ip6_tnl_parm, ptr %5, i32 0, i32 3
  %46 = load i8, ptr %45, align 1
  %47 = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %6, i32 0, i32 3
  store i8 %46, ptr %47, align 1
  %48 = getelementptr inbounds %struct.ip6_tnl_parm, ptr %5, i32 0, i32 5
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %6, i32 0, i32 6
  store i32 %49, ptr %50, align 4
  %51 = getelementptr inbounds %struct.ip6_tnl_parm, ptr %5, i32 0, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %6, i32 0, i32 1
  store i32 %52, ptr %53, align 4
  %54 = getelementptr inbounds %struct.ip6_tnl_parm, ptr %5, i32 0, i32 2
  %55 = load i8, ptr %54, align 4
  %56 = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %6, i32 0, i32 2
  store i8 %55, ptr %56, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %5, i32 16, i1 false) #22
  %57 = call fastcc ptr @ip6_tnl_locate(ptr noundef %9, ptr noundef nonnull %6, i32 noundef 0)
  %58 = icmp ugt ptr %57, inttoptr (i32 -4096 to ptr)
  %59 = select i1 %58, ptr %7, ptr %57
  br label %61

60:                                               ; preds = %15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %5, i8 0, i32 64, i1 false)
  br label %61

61:                                               ; preds = %60, %34
  %62 = phi ptr [ %7, %60 ], [ %59, %34 ]
  %63 = getelementptr inbounds %struct.ip6_tnl, ptr %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.ip6_tnl_parm, ptr %5, i32 0, i32 7
  %65 = getelementptr inbounds %struct.ip6_tnl, ptr %62, i32 0, i32 4, i32 8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %64, ptr noundef align 4 dereferenceable(16) %65, i32 16, i1 false) #22
  %66 = getelementptr inbounds %struct.ip6_tnl_parm, ptr %5, i32 0, i32 8
  %67 = getelementptr inbounds %struct.ip6_tnl, ptr %62, i32 0, i32 4, i32 9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %66, ptr noundef align 4 dereferenceable(16) %67, i32 16, i1 false) #22
  %68 = getelementptr inbounds %struct.ip6_tnl, ptr %62, i32 0, i32 4, i32 7
  %69 = load i32, ptr %68, align 4
  %70 = getelementptr inbounds %struct.ip6_tnl_parm, ptr %5, i32 0, i32 6
  store i32 %69, ptr %70, align 4
  %71 = getelementptr inbounds %struct.ip6_tnl, ptr %62, i32 0, i32 4, i32 4
  %72 = load i8, ptr %71, align 2
  %73 = getelementptr inbounds %struct.ip6_tnl_parm, ptr %5, i32 0, i32 4
  store i8 %72, ptr %73, align 2
  %74 = getelementptr inbounds %struct.ip6_tnl, ptr %62, i32 0, i32 4, i32 3
  %75 = load i8, ptr %74, align 1
  %76 = getelementptr inbounds %struct.ip6_tnl_parm, ptr %5, i32 0, i32 3
  store i8 %75, ptr %76, align 1
  %77 = getelementptr inbounds %struct.ip6_tnl, ptr %62, i32 0, i32 4, i32 6
  %78 = load i32, ptr %77, align 4
  %79 = getelementptr inbounds %struct.ip6_tnl_parm, ptr %5, i32 0, i32 5
  store i32 %78, ptr %79, align 4
  %80 = getelementptr inbounds %struct.ip6_tnl, ptr %62, i32 0, i32 4, i32 1
  %81 = load i32, ptr %80, align 4
  %82 = getelementptr inbounds %struct.ip6_tnl_parm, ptr %5, i32 0, i32 1
  store i32 %81, ptr %82, align 4
  %83 = getelementptr inbounds %struct.ip6_tnl, ptr %62, i32 0, i32 4, i32 2
  %84 = load i8, ptr %83, align 4
  %85 = getelementptr inbounds %struct.ip6_tnl_parm, ptr %5, i32 0, i32 2
  store i8 %84, ptr %85, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef align 4 dereferenceable(16) %63, i32 16, i1 false) #22
  %86 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 64, i32 -1090519040) #26, !srcloc !39
  %87 = extractvalue { i32, i32 } %86, 0
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %244

89:                                               ; preds = %61
  %90 = tail call ptr @llvm.thread.pointer() #22
  %91 = getelementptr inbounds %struct.thread_info, ptr %90, i32 0, i32 3
  %92 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %91) #12, !srcloc !36
  %93 = and i32 %92, -13
  %94 = or i32 %93, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %94) #22, !srcloc !37
  call void asm sideeffect "isb ", "~{memory}"() #22, !srcloc !38
  %95 = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %5, i32 noundef 64) #22
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %92) #22, !srcloc !37
  call void asm sideeffect "isb ", "~{memory}"() #22, !srcloc !38
  %96 = icmp eq i32 %95, 0
  %97 = select i1 %96, i32 0, i32 -14
  br label %244

98:                                               ; preds = %4, %4
  %99 = getelementptr inbounds %struct.net, ptr %9, i32 0, i32 11
  %100 = load ptr, ptr %99, align 4
  %101 = tail call zeroext i1 @ns_capable(ptr noundef %100, i32 noundef 12) #22
  br i1 %101, label %102, label %244

102:                                              ; preds = %98
  %103 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 64, i32 -1090519040) #26
  %104 = extractvalue { i32, i32 } %103, 0
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %114, !prof !10

106:                                              ; preds = %102
  %107 = tail call ptr @llvm.thread.pointer() #22
  %108 = getelementptr inbounds %struct.thread_info, ptr %107, i32 0, i32 3
  %109 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %108) #12, !srcloc !36
  %110 = and i32 %109, -13
  %111 = or i32 %110, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %111) #22, !srcloc !37
  tail call void asm sideeffect "isb ", "~{memory}"() #22, !srcloc !38
  %112 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %2, i32 noundef 64) #22
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %109) #22, !srcloc !37
  call void asm sideeffect "isb ", "~{memory}"() #22, !srcloc !38
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %118, label %114, !prof !10

114:                                              ; preds = %106, %102
  %115 = phi i32 [ %112, %106 ], [ 64, %102 ]
  %116 = sub i32 64, %115
  %117 = getelementptr i8, ptr %5, i32 %116
  call void @llvm.memset.p0.i32(ptr align 1 %117, i8 0, i32 %115, i1 false) #22
  br label %244

118:                                              ; preds = %106
  %119 = getelementptr inbounds %struct.ip6_tnl_parm, ptr %5, i32 0, i32 2
  %120 = load i8, ptr %119, align 4
  switch i8 %120, label %244 [
    i8 41, label %121
    i8 4, label %121
    i8 0, label %121
  ]

121:                                              ; preds = %118, %118, %118
  %122 = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %6, i32 0, i32 8
  %123 = getelementptr inbounds %struct.ip6_tnl_parm, ptr %5, i32 0, i32 7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %122, ptr noundef align 4 dereferenceable(16) %123, i32 16, i1 false) #22
  %124 = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %6, i32 0, i32 9
  %125 = getelementptr inbounds %struct.ip6_tnl_parm, ptr %5, i32 0, i32 8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %124, ptr noundef align 4 dereferenceable(16) %125, i32 16, i1 false) #22
  %126 = getelementptr inbounds %struct.ip6_tnl_parm, ptr %5, i32 0, i32 6
  %127 = load i32, ptr %126, align 4
  %128 = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %6, i32 0, i32 7
  store i32 %127, ptr %128, align 4
  %129 = getelementptr inbounds %struct.ip6_tnl_parm, ptr %5, i32 0, i32 4
  %130 = load i8, ptr %129, align 2
  %131 = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %6, i32 0, i32 4
  store i8 %130, ptr %131, align 2
  %132 = getelementptr inbounds %struct.ip6_tnl_parm, ptr %5, i32 0, i32 3
  %133 = load i8, ptr %132, align 1
  %134 = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %6, i32 0, i32 3
  store i8 %133, ptr %134, align 1
  %135 = getelementptr inbounds %struct.ip6_tnl_parm, ptr %5, i32 0, i32 5
  %136 = load i32, ptr %135, align 4
  %137 = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %6, i32 0, i32 6
  store i32 %136, ptr %137, align 4
  %138 = getelementptr inbounds %struct.ip6_tnl_parm, ptr %5, i32 0, i32 1
  %139 = load i32, ptr %138, align 4
  %140 = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %6, i32 0, i32 1
  store i32 %139, ptr %140, align 4
  %141 = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %6, i32 0, i32 2
  store i8 %120, ptr %141, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %5, i32 16, i1 false) #22
  %142 = icmp eq i32 %3, 35313
  %143 = zext i1 %142 to i32
  %144 = call fastcc ptr @ip6_tnl_locate(ptr noundef %9, ptr noundef nonnull %6, i32 noundef %143)
  %145 = icmp eq i32 %3, 35315
  br i1 %145, label %146, label %162

146:                                              ; preds = %121
  %147 = icmp ugt ptr %144, inttoptr (i32 -4096 to ptr)
  br i1 %147, label %152, label %148

148:                                              ; preds = %146
  %149 = getelementptr inbounds %struct.ip6_tnl, ptr %144, i32 0, i32 1
  %150 = load ptr, ptr %149, align 4
  %151 = icmp eq ptr %150, %0
  br i1 %151, label %152, label %244

152:                                              ; preds = %148, %146
  %153 = phi ptr [ %144, %148 ], [ %7, %146 ]
  %154 = load ptr, ptr %14, align 4
  %155 = icmp eq ptr %154, %0
  br i1 %155, label %156, label %161

156:                                              ; preds = %152
  %157 = load i8, ptr %141, align 4
  %158 = getelementptr inbounds %struct.ip6_tnl, ptr %153, i32 0, i32 4, i32 2
  store i8 %157, ptr %158, align 4
  %159 = getelementptr inbounds %struct.ip6_tnl, ptr %153, i32 0, i32 1
  %160 = load ptr, ptr %159, align 4
  call void @netdev_state_change(ptr noundef %160) #22
  br label %162

161:                                              ; preds = %152
  call fastcc void @ip6_tnl_update(ptr noundef %153, ptr noundef nonnull %6)
  br label %162

162:                                              ; preds = %161, %156, %121
  %163 = phi ptr [ %153, %156 ], [ %153, %161 ], [ %144, %121 ]
  %164 = icmp ugt ptr %163, inttoptr (i32 -4096 to ptr)
  br i1 %164, label %187, label %165

165:                                              ; preds = %162
  %166 = getelementptr inbounds %struct.ip6_tnl, ptr %163, i32 0, i32 4
  %167 = getelementptr inbounds %struct.ip6_tnl, ptr %163, i32 0, i32 4, i32 8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %123, ptr noundef align 4 dereferenceable(16) %167, i32 16, i1 false) #22
  %168 = getelementptr inbounds %struct.ip6_tnl, ptr %163, i32 0, i32 4, i32 9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %125, ptr noundef align 4 dereferenceable(16) %168, i32 16, i1 false) #22
  %169 = getelementptr inbounds %struct.ip6_tnl, ptr %163, i32 0, i32 4, i32 7
  %170 = load i32, ptr %169, align 4
  store i32 %170, ptr %126, align 4
  %171 = getelementptr inbounds %struct.ip6_tnl, ptr %163, i32 0, i32 4, i32 4
  %172 = load i8, ptr %171, align 2
  store i8 %172, ptr %129, align 2
  %173 = getelementptr inbounds %struct.ip6_tnl, ptr %163, i32 0, i32 4, i32 3
  %174 = load i8, ptr %173, align 1
  store i8 %174, ptr %132, align 1
  %175 = getelementptr inbounds %struct.ip6_tnl, ptr %163, i32 0, i32 4, i32 6
  %176 = load i32, ptr %175, align 4
  store i32 %176, ptr %135, align 4
  %177 = getelementptr inbounds %struct.ip6_tnl, ptr %163, i32 0, i32 4, i32 1
  %178 = load i32, ptr %177, align 4
  store i32 %178, ptr %138, align 4
  %179 = getelementptr inbounds %struct.ip6_tnl, ptr %163, i32 0, i32 4, i32 2
  %180 = load i8, ptr %179, align 4
  store i8 %180, ptr %119, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef align 4 dereferenceable(16) %166, i32 16, i1 false) #22
  %181 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %108) #12, !srcloc !36
  %182 = and i32 %181, -13
  %183 = or i32 %182, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %183) #22, !srcloc !37
  call void asm sideeffect "isb ", "~{memory}"() #22, !srcloc !38
  %184 = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %5, i32 noundef 64) #22
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %181) #22, !srcloc !37
  call void asm sideeffect "isb ", "~{memory}"() #22, !srcloc !38
  %185 = icmp eq i32 %184, 0
  %186 = select i1 %185, i32 0, i32 -14
  br label %244

187:                                              ; preds = %162
  %188 = ptrtoint ptr %163 to i32
  br label %244

189:                                              ; preds = %4
  %190 = getelementptr inbounds %struct.net, ptr %9, i32 0, i32 11
  %191 = load ptr, ptr %190, align 4
  %192 = tail call zeroext i1 @ns_capable(ptr noundef %191, i32 noundef 12) #22
  br i1 %192, label %193, label %244

193:                                              ; preds = %189
  %194 = load ptr, ptr %14, align 4
  %195 = icmp eq ptr %194, %0
  br i1 %195, label %196, label %242

196:                                              ; preds = %193
  %197 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 64, i32 -1090519040) #26, !srcloc !35
  %198 = extractvalue { i32, i32 } %197, 0
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %208, !prof !10

200:                                              ; preds = %196
  %201 = tail call ptr @llvm.thread.pointer() #22
  %202 = getelementptr inbounds %struct.thread_info, ptr %201, i32 0, i32 3
  %203 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %202) #12, !srcloc !36
  %204 = and i32 %203, -13
  %205 = or i32 %204, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %205) #22, !srcloc !37
  tail call void asm sideeffect "isb ", "~{memory}"() #22, !srcloc !38
  %206 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %2, i32 noundef 64) #22
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %203) #22, !srcloc !37
  call void asm sideeffect "isb ", "~{memory}"() #22, !srcloc !38
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %212, label %208, !prof !10

208:                                              ; preds = %200, %196
  %209 = phi i32 [ %206, %200 ], [ 64, %196 ]
  %210 = sub i32 64, %209
  %211 = getelementptr i8, ptr %5, i32 %210
  call void @llvm.memset.p0.i32(ptr align 1 %211, i8 0, i32 %209, i1 false) #22
  br label %244

212:                                              ; preds = %200
  %213 = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %6, i32 0, i32 8
  %214 = getelementptr inbounds %struct.ip6_tnl_parm, ptr %5, i32 0, i32 7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %213, ptr noundef align 4 dereferenceable(16) %214, i32 16, i1 false) #22
  %215 = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %6, i32 0, i32 9
  %216 = getelementptr inbounds %struct.ip6_tnl_parm, ptr %5, i32 0, i32 8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %215, ptr noundef align 4 dereferenceable(16) %216, i32 16, i1 false) #22
  %217 = getelementptr inbounds %struct.ip6_tnl_parm, ptr %5, i32 0, i32 6
  %218 = load i32, ptr %217, align 4
  %219 = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %6, i32 0, i32 7
  store i32 %218, ptr %219, align 4
  %220 = getelementptr inbounds %struct.ip6_tnl_parm, ptr %5, i32 0, i32 4
  %221 = load i8, ptr %220, align 2
  %222 = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %6, i32 0, i32 4
  store i8 %221, ptr %222, align 2
  %223 = getelementptr inbounds %struct.ip6_tnl_parm, ptr %5, i32 0, i32 3
  %224 = load i8, ptr %223, align 1
  %225 = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %6, i32 0, i32 3
  store i8 %224, ptr %225, align 1
  %226 = getelementptr inbounds %struct.ip6_tnl_parm, ptr %5, i32 0, i32 5
  %227 = load i32, ptr %226, align 4
  %228 = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %6, i32 0, i32 6
  store i32 %227, ptr %228, align 4
  %229 = getelementptr inbounds %struct.ip6_tnl_parm, ptr %5, i32 0, i32 1
  %230 = load i32, ptr %229, align 4
  %231 = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %6, i32 0, i32 1
  store i32 %230, ptr %231, align 4
  %232 = getelementptr inbounds %struct.ip6_tnl_parm, ptr %5, i32 0, i32 2
  %233 = load i8, ptr %232, align 4
  %234 = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %6, i32 0, i32 2
  store i8 %233, ptr %234, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %5, i32 16, i1 false) #22
  %235 = call fastcc ptr @ip6_tnl_locate(ptr noundef %9, ptr noundef nonnull %6, i32 noundef 0)
  %236 = icmp ugt ptr %235, inttoptr (i32 -4096 to ptr)
  br i1 %236, label %244, label %237

237:                                              ; preds = %212
  %238 = getelementptr inbounds %struct.ip6_tnl, ptr %235, i32 0, i32 1
  %239 = load ptr, ptr %238, align 4
  %240 = load ptr, ptr %14, align 4
  %241 = icmp eq ptr %239, %240
  br i1 %241, label %244, label %242

242:                                              ; preds = %237, %193
  %243 = phi ptr [ %0, %193 ], [ %239, %237 ]
  call void @unregister_netdevice_queue(ptr noundef %243, ptr noundef null) #22
  br label %244

244:                                              ; preds = %242, %237, %212, %208, %189, %187, %165, %148, %118, %114, %98, %89, %61, %30, %4
  %245 = phi i32 [ -2, %212 ], [ -1, %237 ], [ 0, %242 ], [ -1, %189 ], [ -22, %118 ], [ %188, %187 ], [ -1, %98 ], [ -17, %148 ], [ -22, %4 ], [ -14, %30 ], [ -14, %61 ], [ -14, %114 ], [ -14, %208 ], [ %97, %89 ], [ %186, %165 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #22
  ret i32 %245
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_get_tstats64(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ip6_tnl_link_config(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ip6_tnl, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ip6_tnl, ptr %0, i32 0, i32 5
  %5 = getelementptr inbounds %struct.ip6_tnl, ptr %0, i32 0, i32 4, i32 8
  tail call void @dev_addr_mod(ptr noundef %3, i32 noundef 0, ptr noundef %5, i32 noundef 16) #22
  %6 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 83
  %7 = getelementptr inbounds %struct.ip6_tnl, ptr %0, i32 0, i32 4, i32 9
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %6, ptr noundef align 4 dereferenceable(16) %7, i32 16, i1 false)
  %8 = getelementptr inbounds %struct.ip6_tnl, ptr %0, i32 0, i32 5, i32 0, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %8, ptr noundef align 4 dereferenceable(16) %5, i32 16, i1 false)
  %9 = getelementptr inbounds %struct.ip6_tnl, ptr %0, i32 0, i32 5, i32 0, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %9, ptr noundef align 4 dereferenceable(16) %7, i32 16, i1 false)
  %10 = getelementptr inbounds %struct.ip6_tnl, ptr %0, i32 0, i32 4, i32 1
  %11 = load i32, ptr %10, align 4
  store i32 %11, ptr %4, align 8
  %12 = getelementptr inbounds %struct.ip6_tnl, ptr %0, i32 0, i32 5, i32 0, i32 0, i32 3
  store i32 0, ptr %12, align 8
  %13 = getelementptr inbounds %struct.ip6_tnl, ptr %0, i32 0, i32 4, i32 7
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 2
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.ip6_tnl, ptr %0, i32 0, i32 4, i32 6
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 61455
  store i32 %20, ptr %12, align 8
  br label %21

21:                                               ; preds = %17, %1
  %22 = phi i32 [ %20, %17 ], [ 0, %1 ]
  %23 = and i32 %14, 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.ip6_tnl, ptr %0, i32 0, i32 4, i32 6
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, -61696
  %29 = or i32 %22, %28
  store i32 %29, ptr %12, align 8
  br label %30

30:                                               ; preds = %25, %21
  %31 = and i32 %14, -458753
  store i32 %31, ptr %13, align 4
  %32 = tail call i32 @__ipv6_addr_type(ptr noundef %5) #22
  %33 = and i32 %32, 65535
  %34 = tail call i32 @__ipv6_addr_type(ptr noundef %7) #22
  %35 = and i32 %34, 65535
  %36 = icmp eq i32 %33, 0
  %37 = icmp eq i32 %35, 0
  %38 = select i1 %36, i1 true, i1 %37
  br i1 %38, label %61, label %39

39:                                               ; preds = %30
  %40 = and i32 %32, 3
  %41 = icmp eq i32 %40, 0
  %42 = and i32 %34, 3
  %43 = icmp eq i32 %42, 0
  %44 = select i1 %41, i1 true, i1 %43
  br i1 %44, label %61, label %45

45:                                               ; preds = %39
  %46 = or i32 %35, %33
  %47 = and i32 %46, 16
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %45
  %50 = and i32 %46, 32
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %49
  %53 = load i32, ptr %10, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %52, %49
  %56 = shl i32 %32, 16
  %57 = and i32 %56, 65536
  %58 = shl i32 %34, 17
  %59 = and i32 %58, 131072
  %60 = or i32 %59, %57
  br label %61

61:                                               ; preds = %55, %52, %45, %39, %30
  %62 = phi i32 [ 0, %45 ], [ 0, %52 ], [ 0, %39 ], [ 262144, %30 ], [ %60, %55 ]
  %63 = load i32, ptr %13, align 4
  %64 = or i32 %63, %62
  store i32 %64, ptr %13, align 4
  %65 = and i32 %64, 196608
  %66 = icmp eq i32 %65, 196608
  %67 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 14
  %68 = load i32, ptr %67, align 8
  %69 = and i32 %68, -17
  %70 = select i1 %66, i32 16, i32 0
  %71 = or i32 %69, %70
  store i32 %71, ptr %67, align 8
  %72 = getelementptr inbounds %struct.ip6_tnl, ptr %0, i32 0, i32 13
  store i32 0, ptr %72, align 8
  %73 = getelementptr inbounds %struct.ip6_tnl, ptr %0, i32 0, i32 14
  %74 = load i32, ptr %73, align 4
  %75 = getelementptr inbounds %struct.ip6_tnl, ptr %0, i32 0, i32 12
  store i32 %74, ptr %75, align 4
  %76 = add i32 %74, 40
  %77 = load i32, ptr %13, align 4
  %78 = and i32 %77, 65536
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %119, label %80

80:                                               ; preds = %61
  %81 = tail call i32 @__ipv6_addr_type(ptr noundef %7) #22
  %82 = and i32 %81, 34
  %83 = getelementptr inbounds %struct.ip6_tnl, ptr %0, i32 0, i32 3
  %84 = load ptr, ptr %83, align 8
  %85 = load i32, ptr %10, align 4
  %86 = tail call ptr @rt6_lookup(ptr noundef %84, ptr noundef %7, ptr noundef %5, i32 noundef %85, ptr noundef null, i32 noundef %82) #22
  %87 = icmp eq ptr %86, null
  br i1 %87, label %91, label %88

88:                                               ; preds = %80
  %89 = load ptr, ptr %86, align 4
  tail call void @dst_release(ptr noundef nonnull %86) #22
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %98

91:                                               ; preds = %88, %80
  %92 = load i32, ptr %10, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %119, label %94

94:                                               ; preds = %91
  %95 = load ptr, ptr %83, align 8
  %96 = tail call ptr @__dev_get_by_index(ptr noundef %95, i32 noundef %92) #22
  %97 = icmp eq ptr %96, null
  br i1 %97, label %119, label %98

98:                                               ; preds = %94, %88
  %99 = phi ptr [ %96, %94 ], [ %89, %88 ]
  %100 = getelementptr inbounds %struct.net_device, ptr %99, i32 0, i32 19
  %101 = load i16, ptr %100, align 2
  %102 = trunc i32 %76 to i16
  %103 = add i16 %101, %102
  %104 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 19
  store i16 %103, ptr %104, align 2
  %105 = getelementptr inbounds %struct.net_device, ptr %99, i32 0, i32 20
  %106 = load i32, ptr %105, align 4
  %107 = tail call i32 @llvm.umin.i32(i32 %106, i32 65575)
  %108 = sub i32 %107, %76
  %109 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 20
  store i32 %108, ptr %109, align 4
  %110 = load i32, ptr %13, align 4
  %111 = and i32 %110, 1
  %112 = icmp eq i32 %111, 0
  %113 = add i32 %108, -8
  %114 = select i1 %112, i32 %113, i32 %108
  %115 = icmp ult i32 %114, 1280
  %116 = or i1 %112, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %98
  %118 = tail call i32 @llvm.umax.i32(i32 %114, i32 1280)
  store i32 %118, ptr %109, align 4
  br label %119

119:                                              ; preds = %117, %98, %94, %91, %61
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu_gfp(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #16

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dst_cache_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gro_cells_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_cache_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rt6_lookup(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iptunnel_handle_offloads(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @icmp6_send(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__icmp_send(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @ip6_tnl_locate(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca [16 x i8], align 1
  %5 = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %1, i32 0, i32 9
  %6 = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %1, i32 0, i32 8
  %7 = load i32, ptr @ip6_tnl_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !16
  %8 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 37
  %9 = load volatile ptr, ptr %8, align 64
  %10 = getelementptr [0 x ptr], ptr %9, i32 0, i32 %7
  %11 = load ptr, ptr %10, align 4
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !17
  %12 = load i32, ptr %5, align 4
  %13 = getelementptr %struct.__ip6_tnl_parm, ptr %1, i32 0, i32 9, i32 0, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = or i32 %14, %12
  %16 = getelementptr %struct.__ip6_tnl_parm, ptr %1, i32 0, i32 9, i32 0, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = or i32 %15, %17
  %19 = getelementptr %struct.__ip6_tnl_parm, ptr %1, i32 0, i32 9, i32 0, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = or i32 %18, %20
  %22 = icmp eq i32 %21, 0
  %23 = load i32, ptr %6, align 4
  %24 = getelementptr %struct.__ip6_tnl_parm, ptr %1, i32 0, i32 8, i32 0, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  br i1 %22, label %31, label %26

26:                                               ; preds = %3
  %27 = getelementptr %struct.__ip6_tnl_parm, ptr %1, i32 0, i32 8, i32 0, i32 0, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr %struct.__ip6_tnl_parm, ptr %1, i32 0, i32 8, i32 0, i32 0, i32 3
  %30 = load i32, ptr %29, align 4
  br label %40

31:                                               ; preds = %3
  %32 = or i32 %25, %23
  %33 = getelementptr %struct.__ip6_tnl_parm, ptr %1, i32 0, i32 8, i32 0, i32 0, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = or i32 %32, %34
  %36 = getelementptr %struct.__ip6_tnl_parm, ptr %1, i32 0, i32 8, i32 0, i32 0, i32 3
  %37 = load i32, ptr %36, align 4
  %38 = or i32 %35, %37
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %52, label %40

40:                                               ; preds = %31, %26
  %41 = phi i32 [ %30, %26 ], [ %37, %31 ]
  %42 = phi i32 [ %28, %26 ], [ %34, %31 ]
  %43 = xor i32 %14, %12
  %44 = xor i32 %43, %17
  %45 = xor i32 %44, %20
  %46 = xor i32 %45, %23
  %47 = xor i32 %46, %25
  %48 = xor i32 %47, %41
  %49 = xor i32 %48, %42
  %50 = mul i32 %49, 1640531527
  %51 = lshr i32 %50, 27
  br label %52

52:                                               ; preds = %40, %31
  %53 = phi i32 [ %37, %31 ], [ %41, %40 ]
  %54 = phi i32 [ %34, %31 ], [ %42, %40 ]
  %55 = phi i32 [ 0, %31 ], [ %51, %40 ]
  %56 = phi i32 [ 0, %31 ], [ 1, %40 ]
  %57 = getelementptr %struct.ip6_tnl_net, ptr %11, i32 0, i32 3, i32 %56
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr ptr, ptr %58, i32 %55
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %110, label %62

62:                                               ; preds = %52
  %63 = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %1, i32 0, i32 1
  br label %64

64:                                               ; preds = %107, %62
  %65 = phi ptr [ %60, %62 ], [ %108, %107 ]
  %66 = getelementptr inbounds %struct.ip6_tnl, ptr %65, i32 0, i32 4, i32 8
  %67 = load i32, ptr %66, align 4
  %68 = xor i32 %67, %23
  %69 = getelementptr %struct.ip6_tnl, ptr %65, i32 0, i32 4, i32 8, i32 0, i32 0, i32 1
  %70 = load i32, ptr %69, align 4
  %71 = xor i32 %70, %25
  %72 = or i32 %71, %68
  %73 = getelementptr %struct.ip6_tnl, ptr %65, i32 0, i32 4, i32 8, i32 0, i32 0, i32 2
  %74 = load i32, ptr %73, align 4
  %75 = xor i32 %74, %54
  %76 = or i32 %72, %75
  %77 = getelementptr %struct.ip6_tnl, ptr %65, i32 0, i32 4, i32 8, i32 0, i32 0, i32 3
  %78 = load i32, ptr %77, align 4
  %79 = xor i32 %78, %53
  %80 = or i32 %76, %79
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %107

82:                                               ; preds = %64
  %83 = getelementptr inbounds %struct.ip6_tnl, ptr %65, i32 0, i32 4, i32 9
  %84 = load i32, ptr %83, align 4
  %85 = xor i32 %84, %12
  %86 = getelementptr %struct.ip6_tnl, ptr %65, i32 0, i32 4, i32 9, i32 0, i32 0, i32 1
  %87 = load i32, ptr %86, align 4
  %88 = xor i32 %87, %14
  %89 = or i32 %88, %85
  %90 = getelementptr %struct.ip6_tnl, ptr %65, i32 0, i32 4, i32 9, i32 0, i32 0, i32 2
  %91 = load i32, ptr %90, align 4
  %92 = xor i32 %91, %17
  %93 = or i32 %89, %92
  %94 = getelementptr %struct.ip6_tnl, ptr %65, i32 0, i32 4, i32 9, i32 0, i32 0, i32 3
  %95 = load i32, ptr %94, align 4
  %96 = xor i32 %95, %20
  %97 = or i32 %93, %96
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %82
  %100 = load i32, ptr %63, align 4
  %101 = getelementptr inbounds %struct.ip6_tnl, ptr %65, i32 0, i32 4, i32 1
  %102 = load i32, ptr %101, align 4
  %103 = icmp eq i32 %100, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %99
  %105 = icmp eq i32 %2, 0
  %106 = select i1 %105, ptr %65, ptr inttoptr (i32 -17 to ptr)
  br label %134

107:                                              ; preds = %99, %82, %64
  %108 = load ptr, ptr %65, align 4
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %64

110:                                              ; preds = %107, %52
  %111 = icmp eq i32 %2, 0
  br i1 %111, label %134, label %112

112:                                              ; preds = %110
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %4, i8 0, i32 16, i1 false) #22, !annotation !18
  %113 = load i8, ptr %1, align 4
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %119, label %115

115:                                              ; preds = %112
  %116 = tail call zeroext i1 @dev_valid_name(ptr noundef %1) #22
  br i1 %116, label %117, label %132

117:                                              ; preds = %115
  %118 = call i32 @strlcpy(ptr noundef nonnull %4, ptr noundef %1, i32 noundef 16) #22
  br label %121

119:                                              ; preds = %112
  %120 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %4, ptr noundef nonnull @.str.13) #22
  br label %121

121:                                              ; preds = %119, %117
  %122 = call ptr @alloc_netdev_mqs(i32 noundef 248, ptr noundef nonnull %4, i8 noundef zeroext 0, ptr noundef nonnull @ip6_tnl_dev_setup, i32 noundef 1, i32 noundef 1) #22
  %123 = icmp eq ptr %122, null
  br i1 %123, label %132, label %124

124:                                              ; preds = %121
  %125 = getelementptr i8, ptr %122, i32 1408
  %126 = getelementptr i8, ptr %122, i32 1420
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(88) %126, ptr noundef align 4 dereferenceable(88) %1, i32 88, i1 false) #22
  %127 = getelementptr i8, ptr %122, i32 1416
  store ptr @init_net, ptr %127, align 8
  %128 = call fastcc i32 @ip6_tnl_create2(ptr noundef nonnull %122) #22
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %124
  call void @free_netdev(ptr noundef nonnull %122) #22
  %131 = inttoptr i32 %128 to ptr
  br label %132

132:                                              ; preds = %130, %124, %121, %115
  %133 = phi ptr [ %125, %124 ], [ %131, %130 ], [ inttoptr (i32 -12 to ptr), %121 ], [ inttoptr (i32 -7 to ptr), %115 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #22
  br label %134

134:                                              ; preds = %132, %110, %104
  %135 = phi ptr [ %133, %132 ], [ inttoptr (i32 -19 to ptr), %110 ], [ %106, %104 ]
  ret ptr %135
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ip6_tnl_update(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ip6_tnl, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 8
  %5 = load i32, ptr @ip6_tnl_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !16
  %6 = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 37
  %7 = load volatile ptr, ptr %6, align 64
  %8 = getelementptr [0 x ptr], ptr %7, i32 0, i32 %5
  %9 = load ptr, ptr %8, align 4
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !17
  %10 = getelementptr inbounds %struct.ip6_tnl, ptr %0, i32 0, i32 4, i32 5
  %11 = load i8, ptr %10, align 1, !range !15
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.ip6_tnl_net, ptr %9, i32 0, i32 4
  store volatile ptr null, ptr %14, align 4
  br label %15

15:                                               ; preds = %13, %2
  %16 = getelementptr inbounds %struct.ip6_tnl, ptr %0, i32 0, i32 4, i32 9
  %17 = getelementptr inbounds %struct.ip6_tnl, ptr %0, i32 0, i32 4, i32 8
  %18 = load i32, ptr %16, align 4
  %19 = getelementptr %struct.ip6_tnl, ptr %0, i32 0, i32 4, i32 9, i32 0, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = or i32 %20, %18
  %22 = getelementptr %struct.ip6_tnl, ptr %0, i32 0, i32 4, i32 9, i32 0, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = or i32 %21, %23
  %25 = getelementptr %struct.ip6_tnl, ptr %0, i32 0, i32 4, i32 9, i32 0, i32 0, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = or i32 %24, %26
  %28 = icmp eq i32 %27, 0
  %29 = load i32, ptr %17, align 4
  %30 = getelementptr %struct.ip6_tnl, ptr %0, i32 0, i32 4, i32 8, i32 0, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  br i1 %28, label %37, label %32

32:                                               ; preds = %15
  %33 = getelementptr %struct.ip6_tnl, ptr %0, i32 0, i32 4, i32 8, i32 0, i32 0, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr %struct.ip6_tnl, ptr %0, i32 0, i32 4, i32 8, i32 0, i32 0, i32 3
  %36 = load i32, ptr %35, align 4
  br label %46

37:                                               ; preds = %15
  %38 = or i32 %31, %29
  %39 = getelementptr %struct.ip6_tnl, ptr %0, i32 0, i32 4, i32 8, i32 0, i32 0, i32 2
  %40 = load i32, ptr %39, align 4
  %41 = or i32 %38, %40
  %42 = getelementptr %struct.ip6_tnl, ptr %0, i32 0, i32 4, i32 8, i32 0, i32 0, i32 3
  %43 = load i32, ptr %42, align 4
  %44 = or i32 %41, %43
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %58, label %46

46:                                               ; preds = %37, %32
  %47 = phi i32 [ %36, %32 ], [ %43, %37 ]
  %48 = phi i32 [ %34, %32 ], [ %40, %37 ]
  %49 = xor i32 %20, %18
  %50 = xor i32 %49, %23
  %51 = xor i32 %50, %26
  %52 = xor i32 %51, %29
  %53 = xor i32 %52, %31
  %54 = xor i32 %53, %47
  %55 = xor i32 %54, %48
  %56 = mul i32 %55, 1640531527
  %57 = lshr i32 %56, 27
  br label %58

58:                                               ; preds = %46, %37
  %59 = phi i32 [ 0, %37 ], [ %57, %46 ]
  %60 = phi i32 [ 0, %37 ], [ 1, %46 ]
  %61 = getelementptr %struct.ip6_tnl_net, ptr %9, i32 0, i32 3, i32 %60
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr ptr, ptr %62, i32 %59
  br label %64

64:                                               ; preds = %68, %58
  %65 = phi ptr [ %63, %58 ], [ %66, %68 ]
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = icmp eq ptr %66, %0
  br i1 %69, label %70, label %64

70:                                               ; preds = %68
  %71 = load ptr, ptr %0, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !33
  store volatile ptr %71, ptr %65, align 4
  br label %72

72:                                               ; preds = %70, %64
  tail call void @synchronize_net() #22
  %73 = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %1, i32 0, i32 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %17, ptr noundef align 4 dereferenceable(16) %73, i32 16, i1 false) #22
  %74 = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %1, i32 0, i32 9
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %16, ptr noundef align 4 dereferenceable(16) %74, i32 16, i1 false) #22
  %75 = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %1, i32 0, i32 7
  %76 = load i32, ptr %75, align 4
  %77 = getelementptr inbounds %struct.ip6_tnl, ptr %0, i32 0, i32 4, i32 7
  store i32 %76, ptr %77, align 4
  %78 = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %1, i32 0, i32 4
  %79 = load i8, ptr %78, align 2
  %80 = getelementptr inbounds %struct.ip6_tnl, ptr %0, i32 0, i32 4, i32 4
  store i8 %79, ptr %80, align 2
  %81 = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %1, i32 0, i32 3
  %82 = load i8, ptr %81, align 1
  %83 = getelementptr inbounds %struct.ip6_tnl, ptr %0, i32 0, i32 4, i32 3
  store i8 %82, ptr %83, align 1
  %84 = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %1, i32 0, i32 6
  %85 = load i32, ptr %84, align 4
  %86 = getelementptr inbounds %struct.ip6_tnl, ptr %0, i32 0, i32 4, i32 6
  store i32 %85, ptr %86, align 4
  %87 = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %1, i32 0, i32 1
  %88 = load i32, ptr %87, align 4
  %89 = getelementptr inbounds %struct.ip6_tnl, ptr %0, i32 0, i32 4, i32 1
  store i32 %88, ptr %89, align 4
  %90 = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %1, i32 0, i32 2
  %91 = load i8, ptr %90, align 4
  %92 = getelementptr inbounds %struct.ip6_tnl, ptr %0, i32 0, i32 4, i32 2
  store i8 %91, ptr %92, align 4
  %93 = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %1, i32 0, i32 14
  %94 = load i32, ptr %93, align 4
  %95 = getelementptr inbounds %struct.ip6_tnl, ptr %0, i32 0, i32 4, i32 14
  store i32 %94, ptr %95, align 4
  %96 = load volatile i32, ptr @jiffies, align 64
  %97 = getelementptr inbounds %struct.ip6_tnl, ptr %0, i32 0, i32 6, i32 1
  store i32 %96, ptr %97, align 4
  tail call fastcc void @ip6_tnl_link_config(ptr noundef %0) #22
  %98 = load i32, ptr %16, align 4
  %99 = load i32, ptr %19, align 4
  %100 = or i32 %99, %98
  %101 = load i32, ptr %22, align 4
  %102 = or i32 %100, %101
  %103 = load i32, ptr %25, align 4
  %104 = or i32 %102, %103
  %105 = icmp eq i32 %104, 0
  %106 = load i32, ptr %17, align 4
  %107 = load i32, ptr %30, align 4
  br i1 %105, label %113, label %108

108:                                              ; preds = %72
  %109 = getelementptr %struct.ip6_tnl, ptr %0, i32 0, i32 4, i32 8, i32 0, i32 0, i32 2
  %110 = load i32, ptr %109, align 4
  %111 = getelementptr %struct.ip6_tnl, ptr %0, i32 0, i32 4, i32 8, i32 0, i32 0, i32 3
  %112 = load i32, ptr %111, align 4
  br label %122

113:                                              ; preds = %72
  %114 = or i32 %107, %106
  %115 = getelementptr %struct.ip6_tnl, ptr %0, i32 0, i32 4, i32 8, i32 0, i32 0, i32 2
  %116 = load i32, ptr %115, align 4
  %117 = or i32 %114, %116
  %118 = getelementptr %struct.ip6_tnl, ptr %0, i32 0, i32 4, i32 8, i32 0, i32 0, i32 3
  %119 = load i32, ptr %118, align 4
  %120 = or i32 %117, %119
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %134, label %122

122:                                              ; preds = %113, %108
  %123 = phi i32 [ %112, %108 ], [ %119, %113 ]
  %124 = phi i32 [ %110, %108 ], [ %116, %113 ]
  %125 = xor i32 %99, %98
  %126 = xor i32 %125, %101
  %127 = xor i32 %126, %103
  %128 = xor i32 %127, %106
  %129 = xor i32 %128, %107
  %130 = xor i32 %129, %123
  %131 = xor i32 %130, %124
  %132 = mul i32 %131, 1640531527
  %133 = lshr i32 %132, 27
  br label %134

134:                                              ; preds = %122, %113
  %135 = phi i32 [ 0, %113 ], [ %133, %122 ]
  %136 = phi i32 [ 0, %113 ], [ 1, %122 ]
  %137 = getelementptr %struct.ip6_tnl_net, ptr %9, i32 0, i32 3, i32 %136
  %138 = load ptr, ptr %137, align 4
  %139 = load i8, ptr %10, align 1, !range !15
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %143, label %141

141:                                              ; preds = %134
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !40
  %142 = getelementptr inbounds %struct.ip6_tnl_net, ptr %9, i32 0, i32 4
  store volatile ptr %0, ptr %142, align 4
  br label %143

143:                                              ; preds = %141, %134
  %144 = getelementptr ptr, ptr %138, i32 %135
  %145 = load ptr, ptr %144, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !41
  store volatile ptr %145, ptr %0, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !42
  store volatile ptr %0, ptr %144, align 4
  %146 = getelementptr inbounds %struct.ip6_tnl, ptr %0, i32 0, i32 1
  %147 = load ptr, ptr %146, align 4
  tail call void @netdev_state_change(ptr noundef %147) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #17

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dev_valid_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #18

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #19

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ip6_tnl_create2(ptr noundef %0) unnamed_addr #0 {
  %2 = load i32, ptr @ip6_tnl_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !16
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 37), align 64
  %4 = getelementptr [0 x ptr], ptr %3, i32 0, i32 %2
  %5 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !17
  %6 = getelementptr i8, ptr %0, i32 1408
  %7 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 114
  store ptr @ip6_link_ops, ptr %7, align 4
  %8 = tail call i32 @register_netdevice(ptr noundef %0) #22
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %68, label %10

10:                                               ; preds = %1
  %11 = getelementptr i8, ptr %0, i32 1420
  %12 = tail call ptr @strcpy(ptr noundef %11, ptr noundef %0)
  %13 = getelementptr i8, ptr %0, i32 1468
  %14 = getelementptr i8, ptr %0, i32 1452
  %15 = load i32, ptr %13, align 4
  %16 = getelementptr i8, ptr %0, i32 1472
  %17 = load i32, ptr %16, align 4
  %18 = or i32 %17, %15
  %19 = getelementptr i8, ptr %0, i32 1476
  %20 = load i32, ptr %19, align 4
  %21 = or i32 %18, %20
  %22 = getelementptr i8, ptr %0, i32 1480
  %23 = load i32, ptr %22, align 4
  %24 = or i32 %21, %23
  %25 = icmp eq i32 %24, 0
  %26 = load i32, ptr %14, align 4
  %27 = getelementptr i8, ptr %0, i32 1456
  %28 = load i32, ptr %27, align 4
  br i1 %25, label %34, label %29

29:                                               ; preds = %10
  %30 = getelementptr i8, ptr %0, i32 1460
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr i8, ptr %0, i32 1464
  %33 = load i32, ptr %32, align 4
  br label %43

34:                                               ; preds = %10
  %35 = or i32 %28, %26
  %36 = getelementptr i8, ptr %0, i32 1460
  %37 = load i32, ptr %36, align 4
  %38 = or i32 %35, %37
  %39 = getelementptr i8, ptr %0, i32 1464
  %40 = load i32, ptr %39, align 4
  %41 = or i32 %38, %40
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %55, label %43

43:                                               ; preds = %34, %29
  %44 = phi i32 [ %33, %29 ], [ %40, %34 ]
  %45 = phi i32 [ %31, %29 ], [ %37, %34 ]
  %46 = xor i32 %17, %15
  %47 = xor i32 %46, %20
  %48 = xor i32 %47, %23
  %49 = xor i32 %48, %26
  %50 = xor i32 %49, %28
  %51 = xor i32 %50, %44
  %52 = xor i32 %51, %45
  %53 = mul i32 %52, 1640531527
  %54 = lshr i32 %53, 27
  br label %55

55:                                               ; preds = %43, %34
  %56 = phi i32 [ 0, %34 ], [ %54, %43 ]
  %57 = phi i32 [ 0, %34 ], [ 1, %43 ]
  %58 = getelementptr %struct.ip6_tnl_net, ptr %5, i32 0, i32 3, i32 %57
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr i8, ptr %0, i32 1443
  %61 = load i8, ptr %60, align 1, !range !15
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %55
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !40
  %64 = getelementptr inbounds %struct.ip6_tnl_net, ptr %5, i32 0, i32 4
  store volatile ptr %6, ptr %64, align 4
  br label %65

65:                                               ; preds = %63, %55
  %66 = getelementptr ptr, ptr %59, i32 %56
  %67 = load ptr, ptr %66, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !41
  store volatile ptr %67, ptr %6, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !42
  store volatile ptr %6, ptr %66, align 4
  br label %68

68:                                               ; preds = %65, %1
  %69 = phi i32 [ 0, %65 ], [ %8, %1 ]
  ret i32 %69
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_state_change(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdevice_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gro_cells_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ip6_tnl_destroy_tunnels(ptr noundef %0, ptr noundef %1) unnamed_addr #13 section ".ref.text" {
  %3 = load i32, ptr @ip6_tnl_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !16
  %4 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 37
  %5 = load volatile ptr, ptr %4, align 64
  %6 = getelementptr [0 x ptr], ptr %5, i32 0, i32 %3
  %7 = load ptr, ptr %6, align 4
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !17
  %8 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 16
  %9 = load ptr, ptr %8, align 32
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %11, label %13

11:                                               ; preds = %21, %2
  %12 = getelementptr %struct.ip6_tnl_net, ptr %7, i32 0, i32 1, i32 0
  br label %23

13:                                               ; preds = %21, %2
  %14 = phi ptr [ %15, %21 ], [ %9, %2 ]
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr i8, ptr %14, i32 1140
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, @ip6_link_ops
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = getelementptr i8, ptr %14, i32 -40
  tail call void @unregister_netdevice_queue(ptr noundef %20, ptr noundef %1) #22
  br label %21

21:                                               ; preds = %19, %13
  %22 = icmp eq ptr %15, %8
  br i1 %22, label %11, label %13

23:                                               ; preds = %23, %11
  %24 = phi ptr [ %12, %11 ], [ %25, %23 ]
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %23

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.ip6_tnl_net, ptr %7, i32 0, i32 2
  br label %29

29:                                               ; preds = %29, %27
  %30 = phi ptr [ %28, %27 ], [ %31, %29 ]
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %29

33:                                               ; preds = %29
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdevice_many(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ip4ip6_rcv(ptr noundef %0) #0 {
  %2 = tail call fastcc i32 @ipxip6_rcv(ptr noundef %0, i8 noundef zeroext 4, ptr noundef nonnull @tpi_v4, ptr noundef nonnull @ip4ip6_dscp_ecn_decapsulate)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ip4ip6_err(ptr noundef %0, ptr nocapture noundef readnone %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca %struct.flowi4, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #22
  %12 = tail call i32 @llvm.bswap.i32(i32 %5)
  store i32 %12, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #22
  store i32 0, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #22
  store i8 %2, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #22
  store i8 %3, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %11) #22
  %13 = getelementptr inbounds i8, ptr %11, i32 32
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %13, i8 0, i32 24, i1 false), !annotation !18
  %14 = call fastcc i32 @ip6_tnl_err(ptr noundef %0, i8 noundef zeroext 4, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %8, ptr noundef nonnull %7, i32 noundef %4)
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %162, label %16

16:                                               ; preds = %6
  %17 = load i32, ptr %8, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %162, label %19

19:                                               ; preds = %16
  %20 = load i8, ptr %9, align 1
  switch i8 %20, label %162 [
    i8 1, label %21
    i8 2, label %24
  ]

21:                                               ; preds = %19
  %22 = load i8, ptr %10, align 1
  %23 = icmp eq i8 %22, 3
  br i1 %23, label %27, label %162

24:                                               ; preds = %19
  %25 = load i8, ptr %10, align 1
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %162

27:                                               ; preds = %24, %21
  %28 = phi i1 [ true, %24 ], [ false, %21 ]
  %29 = phi i32 [ 4, %24 ], [ 1, %21 ]
  %30 = add i32 %4, 20
  %31 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %32 = load i32, ptr %31, align 8
  %33 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %34 = load i32, ptr %33, align 4
  %35 = sub i32 %32, %34
  %36 = icmp ugt i32 %30, %35
  br i1 %36, label %37, label %43, !prof !9

37:                                               ; preds = %27
  %38 = icmp ult i32 %32, %30
  br i1 %38, label %162, label %39, !prof !9

39:                                               ; preds = %37
  %40 = sub i32 %30, %35
  %41 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %40) #22
  %42 = icmp eq ptr %41, null
  br i1 %42, label %162, label %43

43:                                               ; preds = %39, %27
  %44 = tail call ptr @skb_clone(ptr noundef %0, i32 noundef 2592) #22
  %45 = icmp eq ptr %44, null
  br i1 %45, label %162, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.sk_buff, ptr %44, i32 0, i32 4
  %48 = load i32, ptr %47, align 8
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %46
  %51 = and i32 %48, 1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = and i32 %48, -2
  %55 = inttoptr i32 %54 to ptr
  tail call void @dst_release(ptr noundef %55) #22
  br label %56

56:                                               ; preds = %53, %50
  store i32 0, ptr %47, align 8
  br label %57

57:                                               ; preds = %56, %46
  %58 = tail call ptr @skb_pull(ptr noundef nonnull %44, i32 noundef %4) #22
  %59 = getelementptr inbounds %struct.sk_buff, ptr %44, i32 0, i32 17
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.sk_buff, ptr %44, i32 0, i32 16
  %62 = load ptr, ptr %61, align 8
  %63 = ptrtoint ptr %60 to i32
  %64 = ptrtoint ptr %62 to i32
  %65 = sub i32 %63, %64
  %66 = trunc i32 %65 to i16
  %67 = getelementptr inbounds %struct.sk_buff, ptr %44, i32 0, i32 13, i32 0, i32 18
  store i16 %66, ptr %67, align 4
  %68 = and i32 %65, 65535
  %69 = getelementptr i8, ptr %62, i32 %68
  %70 = getelementptr inbounds %struct.iphdr, ptr %69, i32 0, i32 8
  %71 = load i32, ptr %70, align 4
  %72 = getelementptr inbounds %struct.iphdr, ptr %69, i32 0, i32 1
  %73 = load i8, ptr %72, align 1
  %74 = and i8 %73, 30
  store i32 0, ptr %11, align 8
  %75 = getelementptr inbounds %struct.flowi_common, ptr %11, i32 0, i32 1
  store i32 1, ptr %75, align 4
  %76 = getelementptr inbounds %struct.flowi_common, ptr %11, i32 0, i32 2
  store i32 0, ptr %76, align 8
  %77 = getelementptr inbounds %struct.flowi_common, ptr %11, i32 0, i32 3
  store i8 %74, ptr %77, align 4
  %78 = getelementptr inbounds %struct.flowi_common, ptr %11, i32 0, i32 4
  store i8 0, ptr %78, align 1
  %79 = getelementptr inbounds %struct.flowi_common, ptr %11, i32 0, i32 5
  store i8 4, ptr %79, align 2
  %80 = getelementptr inbounds %struct.flowi_common, ptr %11, i32 0, i32 6
  %81 = getelementptr inbounds %struct.flowi4, ptr %11, i32 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(17) %80, i8 0, i64 17, i1 false) #22
  store i32 %71, ptr %81, align 4
  %82 = getelementptr inbounds %struct.flowi4, ptr %11, i32 0, i32 1
  store i32 0, ptr %82, align 8
  %83 = getelementptr inbounds %struct.flowi4, ptr %11, i32 0, i32 3
  store i16 0, ptr %83, align 8
  %84 = getelementptr inbounds %struct.anon.82, ptr %83, i32 0, i32 1
  store i16 0, ptr %84, align 2
  %85 = getelementptr inbounds %struct.flowi_common, ptr %11, i32 0, i32 10
  store i32 0, ptr %85, align 8
  %86 = call ptr @ip_route_output_flow(ptr noundef nonnull @init_net, ptr noundef nonnull %11, ptr noundef null) #22
  %87 = icmp ugt ptr %86, inttoptr (i32 -4096 to ptr)
  br i1 %87, label %161, label %88

88:                                               ; preds = %57
  %89 = load ptr, ptr %86, align 4
  %90 = getelementptr inbounds %struct.anon.49, ptr %44, i32 0, i32 2
  store ptr %89, ptr %90, align 8
  call void @dst_release(ptr noundef %86) #22
  %91 = getelementptr inbounds %struct.rtable, ptr %86, i32 0, i32 2
  %92 = load i32, ptr %91, align 4
  %93 = icmp sgt i32 %92, -1
  %94 = getelementptr inbounds %struct.iphdr, ptr %69, i32 0, i32 9
  %95 = load i32, ptr %94, align 4
  %96 = load i32, ptr %70, align 4
  %97 = load i8, ptr %72, align 1
  br i1 %93, label %122, label %98

98:                                               ; preds = %88
  %99 = and i8 %97, 30
  %100 = call fastcc ptr @ip_route_output_ports(ptr noundef nonnull %11, i32 noundef %95, i32 noundef %96, i8 noundef zeroext %99)
  %101 = icmp ugt ptr %100, inttoptr (i32 -4096 to ptr)
  br i1 %101, label %161, label %102

102:                                              ; preds = %98
  %103 = load ptr, ptr %100, align 4
  %104 = getelementptr inbounds %struct.net_device, ptr %103, i32 0, i32 32
  %105 = load i16, ptr %104, align 16
  %106 = icmp eq i16 %105, 769
  br i1 %106, label %108, label %107

107:                                              ; preds = %102
  call void @dst_release(ptr noundef %100) #22
  br label %161

108:                                              ; preds = %102
  %109 = icmp ne ptr %100, null
  %110 = zext i1 %109 to i8
  %111 = getelementptr inbounds %struct.sk_buff, ptr %44, i32 0, i32 13, i32 0, i32 3
  %112 = load i16, ptr %111, align 2
  %113 = lshr i16 %112, 14
  %114 = trunc i16 %113 to i8
  %115 = and i8 %114, 1
  %116 = or i8 %115, %110
  %117 = zext i8 %116 to i16
  %118 = shl nuw nsw i16 %117, 14
  %119 = and i16 %112, -16385
  %120 = or i16 %118, %119
  store i16 %120, ptr %111, align 2
  %121 = ptrtoint ptr %100 to i32
  store i32 %121, ptr %47, align 8
  br label %134

122:                                              ; preds = %88
  %123 = load ptr, ptr %90, align 8
  %124 = call fastcc i32 @ip_route_input(ptr noundef nonnull %44, i32 noundef %95, i32 noundef %96, i8 noundef zeroext %97, ptr noundef %123)
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %161

126:                                              ; preds = %122
  %127 = load i32, ptr %47, align 8
  %128 = and i32 %127, -2
  %129 = inttoptr i32 %128 to ptr
  %130 = load ptr, ptr %129, align 4
  %131 = getelementptr inbounds %struct.net_device, ptr %130, i32 0, i32 32
  %132 = load i16, ptr %131, align 16
  %133 = icmp eq i16 %132, 769
  br i1 %133, label %134, label %161

134:                                              ; preds = %126, %108
  %135 = phi i32 [ %127, %126 ], [ %121, %108 ]
  %136 = load i32, ptr %7, align 4
  br i1 %28, label %137, label %158

137:                                              ; preds = %134
  %138 = and i32 %135, -2
  %139 = inttoptr i32 %138 to ptr
  %140 = getelementptr inbounds %struct.dst_entry, ptr %139, i32 0, i32 1
  %141 = load ptr, ptr %140, align 4
  %142 = getelementptr inbounds %struct.dst_ops, ptr %141, i32 0, i32 5
  %143 = load ptr, ptr %142, align 4
  %144 = call i32 %143(ptr noundef %139) #22
  %145 = icmp ugt i32 %136, %144
  br i1 %145, label %161, label %146

146:                                              ; preds = %137
  %147 = load i32, ptr %47, align 8
  %148 = and i32 %147, -2
  %149 = inttoptr i32 %148 to ptr
  %150 = icmp eq i32 %148, 0
  br i1 %150, label %158, label %151

151:                                              ; preds = %146
  %152 = getelementptr inbounds %struct.dst_entry, ptr %149, i32 0, i32 1
  %153 = load ptr, ptr %152, align 4
  %154 = getelementptr inbounds %struct.dst_ops, ptr %153, i32 0, i32 11
  %155 = load ptr, ptr %154, align 4
  %156 = icmp eq ptr %155, null
  br i1 %156, label %158, label %157

157:                                              ; preds = %151
  call void %155(ptr noundef nonnull %149, ptr noundef null, ptr noundef nonnull %44, i32 noundef %136, i1 noundef zeroext false) #22
  br label %158

158:                                              ; preds = %157, %151, %146, %134
  %159 = call i32 @llvm.bswap.i32(i32 %136)
  %160 = getelementptr inbounds %struct.sk_buff, ptr %44, i32 0, i32 3, i32 4
  call void @__icmp_send(ptr noundef nonnull %44, i32 noundef 3, i32 noundef %29, i32 noundef %159, ptr noundef %160) #22
  br label %161

161:                                              ; preds = %158, %137, %126, %122, %107, %98, %57
  call void @kfree_skb_reason(ptr noundef nonnull %44, i32 noundef 0) #22
  br label %162

162:                                              ; preds = %161, %43, %39, %37, %24, %21, %19, %16, %6
  %163 = phi i32 [ 0, %161 ], [ %14, %6 ], [ 0, %16 ], [ 0, %21 ], [ 0, %24 ], [ 0, %19 ], [ 0, %39 ], [ 0, %43 ], [ 0, %37 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #22
  ret i32 %163
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ipxip6_rcv(ptr noundef %0, i8 noundef zeroext %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %8 = load i16, ptr %7, align 4
  %9 = zext i16 %8 to i32
  %10 = getelementptr i8, ptr %6, i32 %9
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !16
  %11 = getelementptr inbounds %struct.anon.49, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 17
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.ipv6hdr, ptr %10, i32 0, i32 5
  %16 = getelementptr inbounds %struct.ipv6hdr, ptr %10, i32 0, i32 6
  %17 = tail call fastcc ptr @ip6_tnl_lookup(i32 noundef %14, ptr noundef %15, ptr noundef %16)
  %18 = icmp eq ptr %17, null
  br i1 %18, label %113, label %19

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.ip6_tnl, ptr %17, i32 0, i32 4, i32 2
  %21 = load volatile i8, ptr %20, align 4
  %22 = icmp ne i8 %21, %1
  %23 = icmp ne i8 %21, 0
  %24 = and i1 %22, %23
  br i1 %24, label %115, label %25

25:                                               ; preds = %19
  %26 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 23), align 4
  %27 = and i8 %26, 1
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %48

29:                                               ; preds = %25
  %30 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 13), align 16
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 12
  %34 = load i8, ptr %33, align 1
  %35 = and i8 %34, 1
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %62, label %37

37:                                               ; preds = %32, %29
  %38 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  %39 = load i32, ptr %38, align 8
  %40 = and i32 %39, -2
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %59, label %42

42:                                               ; preds = %37
  %43 = inttoptr i32 %40 to ptr
  %44 = getelementptr inbounds %struct.dst_entry, ptr %43, i32 0, i32 7
  %45 = load i16, ptr %44, align 4
  %46 = and i16 %45, 4
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %59, label %62

48:                                               ; preds = %25
  %49 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  %50 = load i32, ptr %49, align 8
  %51 = and i32 %50, -2
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %48
  %54 = inttoptr i32 %51 to ptr
  %55 = getelementptr inbounds %struct.dst_entry, ptr %54, i32 0, i32 7
  %56 = load i16, ptr %55, align 4
  %57 = and i16 %56, 4
  %58 = icmp eq i16 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %53, %48, %42, %37
  %60 = tail call i32 @__xfrm_policy_check(ptr noundef null, i32 noundef 0, ptr noundef %0, i16 noundef zeroext 10) #22
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %115, label %62

62:                                               ; preds = %59, %53, %42, %32
  %63 = load ptr, ptr %5, align 8
  %64 = load i16, ptr %7, align 4
  %65 = zext i16 %64 to i32
  %66 = getelementptr i8, ptr %63, i32 %65
  %67 = getelementptr inbounds %struct.ipv6hdr, ptr %66, i32 0, i32 6
  %68 = getelementptr inbounds %struct.ipv6hdr, ptr %66, i32 0, i32 5
  %69 = tail call i32 @ip6_tnl_rcv_ctl(ptr noundef nonnull %17, ptr noundef %67, ptr noundef %68)
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %115, label %71

71:                                               ; preds = %62
  %72 = getelementptr inbounds %struct.tnl_ptk_info, ptr %2, i32 0, i32 1
  %73 = load i16, ptr %72, align 2
  %74 = tail call i32 @__iptunnel_pull_header(ptr noundef %0, i32 noundef 0, i16 noundef zeroext %73, i1 noundef zeroext false, i1 noundef zeroext false) #22
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %115

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.ip6_tnl, ptr %17, i32 0, i32 4, i32 5
  %78 = load i8, ptr %77, align 1, !range !15
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %109, label %80

80:                                               ; preds = %76
  %81 = load ptr, ptr %5, align 8
  %82 = load i16, ptr %7, align 4
  %83 = zext i16 %82 to i32
  %84 = getelementptr i8, ptr %81, i32 %83
  %85 = load i16, ptr %84, align 2
  %86 = getelementptr inbounds %struct.ipv6hdr, ptr %84, i32 0, i32 4
  %87 = load i8, ptr %86, align 1
  %88 = load i32, ptr %84, align 4
  %89 = tail call ptr @metadata_dst_alloc(i8 noundef zeroext 0, i32 noundef 0, i32 noundef 2592) #22
  %90 = icmp eq ptr %89, null
  br i1 %90, label %115, label %91

91:                                               ; preds = %80
  %92 = and i32 %88, -61696
  %93 = tail call i16 @llvm.bswap.i16(i16 %85) #22
  %94 = lshr i16 %93, 4
  %95 = trunc i16 %94 to i8
  %96 = getelementptr inbounds %struct.ipv6hdr, ptr %84, i32 0, i32 6
  %97 = getelementptr inbounds %struct.ipv6hdr, ptr %84, i32 0, i32 5
  %98 = getelementptr inbounds %struct.metadata_dst, ptr %89, i32 0, i32 2, i32 0, i32 2
  store i8 0, ptr %98, align 8
  %99 = getelementptr inbounds %struct.metadata_dst, ptr %89, i32 0, i32 2
  %100 = getelementptr inbounds %struct.metadata_dst, ptr %89, i32 0, i32 2, i32 0, i32 3
  store i8 2, ptr %100, align 1
  %101 = getelementptr inbounds %struct.metadata_dst, ptr %89, i32 0, i32 2, i32 0, i32 0, i32 2
  store i16 0, ptr %101, align 8
  store i64 0, ptr %99, align 8
  %102 = getelementptr inbounds %struct.metadata_dst, ptr %89, i32 0, i32 2, i32 0, i32 0, i32 6
  store i16 0, ptr %102, align 8
  %103 = getelementptr inbounds %struct.metadata_dst, ptr %89, i32 0, i32 2, i32 0, i32 0, i32 7
  store i16 0, ptr %103, align 2
  %104 = getelementptr inbounds %struct.metadata_dst, ptr %89, i32 0, i32 2, i32 0, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %104, ptr noundef align 4 dereferenceable(16) %97, i32 16, i1 false) #22
  %105 = getelementptr inbounds %struct.metadata_dst, ptr %89, i32 0, i32 2, i32 0, i32 0, i32 1, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %105, ptr noundef align 4 dereferenceable(16) %96, i32 16, i1 false) #22
  %106 = getelementptr inbounds %struct.metadata_dst, ptr %89, i32 0, i32 2, i32 0, i32 0, i32 3
  store i8 %95, ptr %106, align 2
  %107 = getelementptr inbounds %struct.metadata_dst, ptr %89, i32 0, i32 2, i32 0, i32 0, i32 4
  store i8 %87, ptr %107, align 1
  %108 = getelementptr inbounds %struct.metadata_dst, ptr %89, i32 0, i32 2, i32 0, i32 0, i32 5
  store i32 %92, ptr %108, align 4
  br label %109

109:                                              ; preds = %91, %76
  %110 = phi ptr [ %89, %91 ], [ null, %76 ]
  %111 = load i8, ptr @log_ecn_error, align 1, !range !15
  %112 = icmp ne i8 %111, 0
  tail call fastcc void @__ip6_tnl_rcv(ptr noundef nonnull %17, ptr noundef %0, ptr noundef %2, ptr noundef %110, ptr noundef %3, i1 noundef zeroext %112)
  br label %113

113:                                              ; preds = %109, %4
  %114 = phi i32 [ 0, %109 ], [ -1, %4 ]
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !17
  br label %116

115:                                              ; preds = %80, %71, %62, %59, %19
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !17
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #22
  br label %116

116:                                              ; preds = %115, %113
  %117 = phi i32 [ 0, %115 ], [ %114, %113 ]
  ret i32 %117
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @ip6_tnl_lookup(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = load i32, ptr %1, align 4
  %5 = getelementptr [4 x i32], ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr [4 x i32], ptr %1, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr [4 x i32], ptr %1, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = load i32, ptr %2, align 4
  %12 = getelementptr [4 x i32], ptr %2, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr [4 x i32], ptr %2, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr [4 x i32], ptr %2, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = xor i32 %6, %4
  %19 = xor i32 %18, %8
  %20 = xor i32 %19, %10
  %21 = xor i32 %20, %11
  %22 = xor i32 %21, %13
  %23 = xor i32 %22, %15
  %24 = xor i32 %23, %17
  %25 = mul i32 %24, 1640531527
  %26 = lshr i32 %25, 27
  %27 = load i32, ptr @ip6_tnl_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !16
  %28 = load volatile ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 37), align 64
  %29 = getelementptr [0 x ptr], ptr %28, i32 0, i32 %27
  %30 = load ptr, ptr %29, align 4
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !17
  %31 = getelementptr %struct.ip6_tnl_net, ptr %30, i32 0, i32 1, i32 %26
  %32 = load volatile ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  %34 = load i32, ptr %2, align 4
  %35 = load i32, ptr %12, align 4
  %36 = load i32, ptr %14, align 4
  %37 = load i32, ptr %16, align 4
  br i1 %33, label %93, label %38

38:                                               ; preds = %89, %3
  %39 = phi ptr [ %91, %89 ], [ %32, %3 ]
  %40 = phi ptr [ %90, %89 ], [ null, %3 ]
  %41 = getelementptr inbounds %struct.ip6_tnl, ptr %39, i32 0, i32 4, i32 8
  %42 = load i32, ptr %41, align 4
  %43 = xor i32 %42, %34
  %44 = getelementptr %struct.ip6_tnl, ptr %39, i32 0, i32 4, i32 8, i32 0, i32 0, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = xor i32 %45, %35
  %47 = or i32 %46, %43
  %48 = getelementptr %struct.ip6_tnl, ptr %39, i32 0, i32 4, i32 8, i32 0, i32 0, i32 2
  %49 = load i32, ptr %48, align 4
  %50 = xor i32 %49, %36
  %51 = or i32 %47, %50
  %52 = getelementptr %struct.ip6_tnl, ptr %39, i32 0, i32 4, i32 8, i32 0, i32 0, i32 3
  %53 = load i32, ptr %52, align 4
  %54 = xor i32 %53, %37
  %55 = or i32 %51, %54
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %89

57:                                               ; preds = %38
  %58 = getelementptr inbounds %struct.ip6_tnl, ptr %39, i32 0, i32 4, i32 9
  %59 = load i32, ptr %1, align 4
  %60 = load i32, ptr %58, align 4
  %61 = xor i32 %60, %59
  %62 = load i32, ptr %5, align 4
  %63 = getelementptr %struct.ip6_tnl, ptr %39, i32 0, i32 4, i32 9, i32 0, i32 0, i32 1
  %64 = load i32, ptr %63, align 4
  %65 = xor i32 %64, %62
  %66 = or i32 %65, %61
  %67 = load i32, ptr %7, align 4
  %68 = getelementptr %struct.ip6_tnl, ptr %39, i32 0, i32 4, i32 9, i32 0, i32 0, i32 2
  %69 = load i32, ptr %68, align 4
  %70 = xor i32 %69, %67
  %71 = or i32 %66, %70
  %72 = load i32, ptr %9, align 4
  %73 = getelementptr %struct.ip6_tnl, ptr %39, i32 0, i32 4, i32 9, i32 0, i32 0, i32 3
  %74 = load i32, ptr %73, align 4
  %75 = xor i32 %74, %72
  %76 = or i32 %71, %75
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %89

78:                                               ; preds = %57
  %79 = getelementptr inbounds %struct.ip6_tnl, ptr %39, i32 0, i32 1
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr inbounds %struct.net_device, ptr %80, i32 0, i32 14
  %82 = load i32, ptr %81, align 8
  %83 = and i32 %82, 1
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %78
  %86 = getelementptr inbounds %struct.ip6_tnl, ptr %39, i32 0, i32 4, i32 1
  %87 = load i32, ptr %86, align 4
  %88 = icmp eq i32 %87, %0
  br i1 %88, label %243, label %89

89:                                               ; preds = %85, %78, %57, %38
  %90 = phi ptr [ %40, %78 ], [ %40, %57 ], [ %40, %38 ], [ %39, %85 ]
  %91 = load volatile ptr, ptr %39, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %38

93:                                               ; preds = %89, %3
  %94 = phi ptr [ null, %3 ], [ %90, %89 ]
  %95 = xor i32 %35, %34
  %96 = xor i32 %95, %36
  %97 = xor i32 %96, %37
  %98 = mul i32 %97, 1640531527
  %99 = lshr i32 %98, 27
  %100 = getelementptr %struct.ip6_tnl_net, ptr %30, i32 0, i32 1, i32 %99
  %101 = load volatile ptr, ptr %100, align 4
  %102 = icmp eq ptr %101, null
  br i1 %102, label %153, label %103

103:                                              ; preds = %149, %93
  %104 = phi ptr [ %151, %149 ], [ %101, %93 ]
  %105 = phi ptr [ %150, %149 ], [ %94, %93 ]
  %106 = getelementptr inbounds %struct.ip6_tnl, ptr %104, i32 0, i32 4, i32 8
  %107 = load i32, ptr %106, align 4
  %108 = xor i32 %107, %34
  %109 = getelementptr %struct.ip6_tnl, ptr %104, i32 0, i32 4, i32 8, i32 0, i32 0, i32 1
  %110 = load i32, ptr %109, align 4
  %111 = xor i32 %110, %35
  %112 = or i32 %111, %108
  %113 = getelementptr %struct.ip6_tnl, ptr %104, i32 0, i32 4, i32 8, i32 0, i32 0, i32 2
  %114 = load i32, ptr %113, align 4
  %115 = xor i32 %114, %36
  %116 = or i32 %112, %115
  %117 = getelementptr %struct.ip6_tnl, ptr %104, i32 0, i32 4, i32 8, i32 0, i32 0, i32 3
  %118 = load i32, ptr %117, align 4
  %119 = xor i32 %118, %37
  %120 = or i32 %116, %119
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %149

122:                                              ; preds = %103
  %123 = getelementptr inbounds %struct.ip6_tnl, ptr %104, i32 0, i32 4, i32 9
  %124 = load i32, ptr %123, align 4
  %125 = getelementptr %struct.ip6_tnl, ptr %104, i32 0, i32 4, i32 9, i32 0, i32 0, i32 1
  %126 = load i32, ptr %125, align 4
  %127 = or i32 %126, %124
  %128 = getelementptr %struct.ip6_tnl, ptr %104, i32 0, i32 4, i32 9, i32 0, i32 0, i32 2
  %129 = load i32, ptr %128, align 4
  %130 = or i32 %127, %129
  %131 = getelementptr %struct.ip6_tnl, ptr %104, i32 0, i32 4, i32 9, i32 0, i32 0, i32 3
  %132 = load i32, ptr %131, align 4
  %133 = or i32 %130, %132
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %149

135:                                              ; preds = %122
  %136 = getelementptr inbounds %struct.ip6_tnl, ptr %104, i32 0, i32 1
  %137 = load ptr, ptr %136, align 4
  %138 = getelementptr inbounds %struct.net_device, ptr %137, i32 0, i32 14
  %139 = load i32, ptr %138, align 8
  %140 = and i32 %139, 1
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %149, label %142

142:                                              ; preds = %135
  %143 = getelementptr inbounds %struct.ip6_tnl, ptr %104, i32 0, i32 4, i32 1
  %144 = load i32, ptr %143, align 4
  %145 = icmp eq i32 %144, %0
  br i1 %145, label %243, label %146

146:                                              ; preds = %142
  %147 = icmp eq ptr %105, null
  %148 = select i1 %147, ptr %104, ptr %105
  br label %149

149:                                              ; preds = %146, %135, %122, %103
  %150 = phi ptr [ %105, %135 ], [ %105, %122 ], [ %105, %103 ], [ %148, %146 ]
  %151 = load volatile ptr, ptr %104, align 4
  %152 = icmp eq ptr %151, null
  br i1 %152, label %153, label %103

153:                                              ; preds = %149, %93
  %154 = phi ptr [ %94, %93 ], [ %150, %149 ]
  %155 = load i32, ptr %1, align 4
  %156 = load i32, ptr %5, align 4
  %157 = load i32, ptr %7, align 4
  %158 = load i32, ptr %9, align 4
  %159 = xor i32 %156, %155
  %160 = xor i32 %159, %157
  %161 = xor i32 %160, %158
  %162 = mul i32 %161, 1640531527
  %163 = lshr i32 %162, 27
  %164 = getelementptr %struct.ip6_tnl_net, ptr %30, i32 0, i32 1, i32 %163
  %165 = load volatile ptr, ptr %164, align 4
  %166 = icmp eq ptr %165, null
  br i1 %166, label %217, label %167

167:                                              ; preds = %213, %153
  %168 = phi ptr [ %215, %213 ], [ %165, %153 ]
  %169 = phi ptr [ %214, %213 ], [ %154, %153 ]
  %170 = getelementptr inbounds %struct.ip6_tnl, ptr %168, i32 0, i32 4, i32 9
  %171 = load i32, ptr %170, align 4
  %172 = xor i32 %171, %155
  %173 = getelementptr %struct.ip6_tnl, ptr %168, i32 0, i32 4, i32 9, i32 0, i32 0, i32 1
  %174 = load i32, ptr %173, align 4
  %175 = xor i32 %174, %156
  %176 = or i32 %175, %172
  %177 = getelementptr %struct.ip6_tnl, ptr %168, i32 0, i32 4, i32 9, i32 0, i32 0, i32 2
  %178 = load i32, ptr %177, align 4
  %179 = xor i32 %178, %157
  %180 = or i32 %176, %179
  %181 = getelementptr %struct.ip6_tnl, ptr %168, i32 0, i32 4, i32 9, i32 0, i32 0, i32 3
  %182 = load i32, ptr %181, align 4
  %183 = xor i32 %182, %158
  %184 = or i32 %180, %183
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %213

186:                                              ; preds = %167
  %187 = getelementptr inbounds %struct.ip6_tnl, ptr %168, i32 0, i32 4, i32 8
  %188 = load i32, ptr %187, align 4
  %189 = getelementptr %struct.ip6_tnl, ptr %168, i32 0, i32 4, i32 8, i32 0, i32 0, i32 1
  %190 = load i32, ptr %189, align 4
  %191 = or i32 %190, %188
  %192 = getelementptr %struct.ip6_tnl, ptr %168, i32 0, i32 4, i32 8, i32 0, i32 0, i32 2
  %193 = load i32, ptr %192, align 4
  %194 = or i32 %191, %193
  %195 = getelementptr %struct.ip6_tnl, ptr %168, i32 0, i32 4, i32 8, i32 0, i32 0, i32 3
  %196 = load i32, ptr %195, align 4
  %197 = or i32 %194, %196
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %213

199:                                              ; preds = %186
  %200 = getelementptr inbounds %struct.ip6_tnl, ptr %168, i32 0, i32 1
  %201 = load ptr, ptr %200, align 4
  %202 = getelementptr inbounds %struct.net_device, ptr %201, i32 0, i32 14
  %203 = load i32, ptr %202, align 8
  %204 = and i32 %203, 1
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %213, label %206

206:                                              ; preds = %199
  %207 = getelementptr inbounds %struct.ip6_tnl, ptr %168, i32 0, i32 4, i32 1
  %208 = load i32, ptr %207, align 4
  %209 = icmp eq i32 %208, %0
  br i1 %209, label %243, label %210

210:                                              ; preds = %206
  %211 = icmp eq ptr %169, null
  %212 = select i1 %211, ptr %168, ptr %169
  br label %213

213:                                              ; preds = %210, %199, %186, %167
  %214 = phi ptr [ %169, %199 ], [ %169, %186 ], [ %169, %167 ], [ %212, %210 ]
  %215 = load volatile ptr, ptr %168, align 4
  %216 = icmp eq ptr %215, null
  br i1 %216, label %217, label %167

217:                                              ; preds = %213, %153
  %218 = phi ptr [ %154, %153 ], [ %214, %213 ]
  %219 = icmp eq ptr %218, null
  br i1 %219, label %220, label %243

220:                                              ; preds = %217
  %221 = getelementptr inbounds %struct.ip6_tnl_net, ptr %30, i32 0, i32 4
  %222 = load volatile ptr, ptr %221, align 4
  %223 = icmp eq ptr %222, null
  br i1 %223, label %231, label %224

224:                                              ; preds = %220
  %225 = getelementptr inbounds %struct.ip6_tnl, ptr %222, i32 0, i32 1
  %226 = load ptr, ptr %225, align 4
  %227 = getelementptr inbounds %struct.net_device, ptr %226, i32 0, i32 14
  %228 = load i32, ptr %227, align 8
  %229 = and i32 %228, 1
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %231, label %243

231:                                              ; preds = %224, %220
  %232 = getelementptr inbounds %struct.ip6_tnl_net, ptr %30, i32 0, i32 2
  %233 = load volatile ptr, ptr %232, align 4
  %234 = icmp eq ptr %233, null
  br i1 %234, label %242, label %235

235:                                              ; preds = %231
  %236 = getelementptr inbounds %struct.ip6_tnl, ptr %233, i32 0, i32 1
  %237 = load ptr, ptr %236, align 4
  %238 = getelementptr inbounds %struct.net_device, ptr %237, i32 0, i32 14
  %239 = load i32, ptr %238, align 8
  %240 = and i32 %239, 1
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %242, label %243

242:                                              ; preds = %235, %231
  br label %243

243:                                              ; preds = %242, %235, %224, %217, %206, %142, %85
  %244 = phi ptr [ null, %242 ], [ %218, %217 ], [ %222, %224 ], [ %233, %235 ], [ %168, %206 ], [ %104, %142 ], [ %39, %85 ]
  ret ptr %244
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xfrm_policy_check(ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iptunnel_pull_header(ptr noundef, i32 noundef, i16 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @metadata_dst_alloc(i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ip6_tnl_err(ptr noundef %0, i8 noundef zeroext %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef %5, i32 noundef %6) unnamed_addr #0 {
  %8 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.anon.49, ptr %0, i32 0, i32 2
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !16
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 17
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.ipv6hdr, ptr %9, i32 0, i32 6
  %15 = getelementptr inbounds %struct.ipv6hdr, ptr %9, i32 0, i32 5
  %16 = tail call fastcc ptr @ip6_tnl_lookup(i32 noundef %13, ptr noundef %14, ptr noundef %15)
  %17 = icmp eq ptr %16, null
  br i1 %17, label %71, label %18

18:                                               ; preds = %7
  %19 = getelementptr inbounds %struct.ip6_tnl, ptr %16, i32 0, i32 4, i32 2
  %20 = load volatile i8, ptr %19, align 4
  %21 = icmp ne i8 %20, %1
  %22 = icmp ne i8 %20, 0
  %23 = and i1 %21, %22
  br i1 %23, label %71, label %24

24:                                               ; preds = %18
  %25 = load i8, ptr %2, align 1
  switch i8 %25, label %65 [
    i8 1, label %26
    i8 3, label %27
    i8 4, label %30
    i8 2, label %48
    i8 -119, label %61
  ]

26:                                               ; preds = %24
  br label %65

27:                                               ; preds = %24
  %28 = load i8, ptr %3, align 1
  %29 = icmp eq i8 %28, 0
  br label %65

30:                                               ; preds = %24
  %31 = load i8, ptr %3, align 1
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %65

33:                                               ; preds = %30
  %34 = load ptr, ptr %8, align 4
  %35 = tail call zeroext i16 @ip6_tnl_parse_tlv_enc_lim(ptr noundef %0, ptr noundef %34)
  %36 = zext i16 %35 to i32
  %37 = icmp eq i16 %35, 0
  br i1 %37, label %65, label %38

38:                                               ; preds = %33
  %39 = load i32, ptr %5, align 4
  %40 = add i32 %39, -2
  %41 = icmp eq i32 %40, %36
  br i1 %41, label %42, label %65

42:                                               ; preds = %38
  %43 = load ptr, ptr %8, align 4
  %44 = getelementptr i8, ptr %43, i32 %36
  %45 = getelementptr inbounds %struct.ipv6_tlv_tnl_enc_lim, ptr %44, i32 0, i32 2
  %46 = load i8, ptr %45, align 1
  %47 = icmp eq i8 %46, 0
  br label %65

48:                                               ; preds = %24
  %49 = load i32, ptr %5, align 4
  %50 = tail call i32 @llvm.bswap.i32(i32 %49)
  tail call void @ip6_update_pmtu(ptr noundef %0, ptr noundef nonnull @init_net, i32 noundef %50, i32 noundef 0, i32 noundef 0, [1 x i32] zeroinitializer) #22
  %51 = load i32, ptr %5, align 4
  %52 = sub i32 %51, %6
  %53 = tail call i32 @llvm.umax.i32(i32 %52, i32 1280)
  %54 = getelementptr inbounds %struct.ipv6hdr, ptr %9, i32 0, i32 2
  %55 = load i16, ptr %54, align 4
  %56 = tail call i16 @llvm.bswap.i16(i16 %55)
  %57 = add i16 %56, 40
  %58 = zext i16 %57 to i32
  %59 = icmp ult i32 %53, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %48
  br label %65

61:                                               ; preds = %24
  %62 = load ptr, ptr %10, align 8
  %63 = getelementptr inbounds %struct.net_device, ptr %62, i32 0, i32 17
  %64 = load i32, ptr %63, align 4
  tail call void @ip6_redirect(ptr noundef %0, ptr noundef nonnull @init_net, i32 noundef %64, i32 noundef 0, [1 x i32] zeroinitializer) #22
  br label %65

65:                                               ; preds = %61, %60, %48, %42, %38, %33, %30, %27, %26, %24
  %66 = phi i8 [ 3, %24 ], [ 3, %61 ], [ 3, %26 ], [ 3, %27 ], [ 3, %38 ], [ 3, %33 ], [ 3, %42 ], [ 0, %60 ], [ 3, %48 ], [ 3, %30 ]
  %67 = phi i32 [ 0, %24 ], [ 0, %61 ], [ 0, %26 ], [ 0, %27 ], [ 0, %38 ], [ 0, %33 ], [ 0, %42 ], [ %53, %60 ], [ 0, %48 ], [ 0, %30 ]
  %68 = phi i1 [ false, %24 ], [ false, %61 ], [ true, %26 ], [ %29, %27 ], [ false, %38 ], [ false, %33 ], [ %47, %42 ], [ true, %60 ], [ false, %48 ], [ false, %30 ]
  %69 = phi i8 [ 1, %24 ], [ 1, %61 ], [ 1, %26 ], [ 1, %27 ], [ 1, %38 ], [ 1, %33 ], [ 1, %42 ], [ 2, %60 ], [ 1, %48 ], [ 1, %30 ]
  %70 = zext i1 %68 to i32
  store i8 %69, ptr %2, align 1
  store i8 %66, ptr %3, align 1
  store i32 %67, ptr %5, align 4
  store i32 %70, ptr %4, align 4
  br label %71

71:                                               ; preds = %65, %18, %7
  %72 = phi i32 [ -2, %18 ], [ 0, %65 ], [ -2, %7 ]
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !17
  ret i32 %72
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @ip_route_output_ports(ptr noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3) unnamed_addr #7 {
  store i32 0, ptr %0, align 8
  %5 = getelementptr inbounds %struct.flowi_common, ptr %0, i32 0, i32 1
  store i32 1, ptr %5, align 4
  %6 = getelementptr inbounds %struct.flowi_common, ptr %0, i32 0, i32 2
  store i32 0, ptr %6, align 8
  %7 = getelementptr inbounds %struct.flowi_common, ptr %0, i32 0, i32 3
  store i8 %3, ptr %7, align 4
  %8 = getelementptr inbounds %struct.flowi_common, ptr %0, i32 0, i32 4
  store i8 0, ptr %8, align 1
  %9 = getelementptr inbounds %struct.flowi_common, ptr %0, i32 0, i32 5
  store i8 4, ptr %9, align 2
  %10 = getelementptr inbounds %struct.flowi_common, ptr %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.flowi4, ptr %0, i32 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(17) %10, i8 0, i64 17, i1 false)
  store i32 %1, ptr %11, align 4
  %12 = getelementptr inbounds %struct.flowi4, ptr %0, i32 0, i32 1
  store i32 %2, ptr %12, align 8
  %13 = getelementptr inbounds %struct.flowi4, ptr %0, i32 0, i32 3
  store i16 0, ptr %13, align 8
  %14 = getelementptr inbounds %struct.anon.82, ptr %13, i32 0, i32 1
  store i16 0, ptr %14, align 2
  %15 = getelementptr inbounds %struct.flowi_common, ptr %0, i32 0, i32 10
  store i32 0, ptr %15, align 8
  %16 = tail call ptr @ip_route_output_flow(ptr noundef nonnull @init_net, ptr noundef %0, ptr noundef null) #22
  ret ptr %16
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ip_route_input(ptr noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3, ptr noundef %4) unnamed_addr #7 {
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !16
  %6 = tail call i32 @ip_route_input_noref(ptr noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3, ptr noundef %4) #22
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %42

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 1
  %12 = icmp ne i32 %11, 0
  %13 = icmp ugt i32 %10, 1
  %14 = and i1 %13, %12
  br i1 %14, label %15, label %38

15:                                               ; preds = %8
  %16 = and i32 %10, -2
  %17 = inttoptr i32 %16 to ptr
  %18 = getelementptr inbounds %struct.dst_entry, ptr %17, i32 0, i32 18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !43
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %18) #22, !srcloc !20
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %18, ptr %18, i32 0, i32 1, ptr elementtype(i32) %18) #22, !srcloc !44
  %20 = extractvalue { i32, i32, i32 } %19, 0
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !45
  br label %23

23:                                               ; preds = %22, %15
  %24 = phi ptr [ null, %15 ], [ %17, %22 ]
  %25 = ptrtoint ptr %24 to i32
  store i32 %25, ptr %9, align 8
  %26 = icmp ne ptr %24, null
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 3
  %29 = load i16, ptr %28, align 2
  %30 = lshr i16 %29, 14
  %31 = trunc i16 %30 to i8
  %32 = and i8 %31, 1
  %33 = or i8 %32, %27
  %34 = zext i8 %33 to i16
  %35 = shl nuw nsw i16 %34, 14
  %36 = and i16 %29, -16385
  %37 = or i16 %35, %36
  store i16 %37, ptr %28, align 2
  br label %38

38:                                               ; preds = %23, %8
  %39 = phi i32 [ %10, %8 ], [ %25, %23 ]
  %40 = icmp ult i32 %39, 2
  %41 = select i1 %40, i32 -22, i32 0
  br label %42

42:                                               ; preds = %38, %5
  %43 = phi i32 [ %6, %5 ], [ %41, %38 ]
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !17
  ret i32 %43
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip6_update_pmtu(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip6_redirect(ptr noundef, ptr noundef, i32 noundef, i32 noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_route_output_flow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_route_input_noref(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ip6ip6_rcv(ptr noundef %0) #0 {
  %2 = tail call fastcc i32 @ipxip6_rcv(ptr noundef %0, i8 noundef zeroext 41, ptr noundef nonnull @tpi_v6, ptr noundef nonnull @ip6ip6_dscp_ecn_decapsulate)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ip6ip6_err(ptr noundef %0, ptr nocapture noundef readnone %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #22
  %11 = tail call i32 @llvm.bswap.i32(i32 %5)
  store i32 %11, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #22
  store i32 0, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #22
  store i8 %2, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #22
  store i8 %3, ptr %10, align 1
  %12 = call fastcc i32 @ip6_tnl_err(ptr noundef %0, i8 noundef zeroext 41, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %8, ptr noundef nonnull %7, i32 noundef %4)
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %71, label %14

14:                                               ; preds = %6
  %15 = load i32, ptr %8, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %71, label %17

17:                                               ; preds = %14
  %18 = add i32 %4, 40
  %19 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %20 = load i32, ptr %19, align 8
  %21 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %22 = load i32, ptr %21, align 4
  %23 = sub i32 %20, %22
  %24 = icmp ugt i32 %18, %23
  br i1 %24, label %25, label %31, !prof !9

25:                                               ; preds = %17
  %26 = icmp ult i32 %20, %18
  br i1 %26, label %71, label %27, !prof !9

27:                                               ; preds = %25
  %28 = sub i32 %18, %23
  %29 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %28) #22
  %30 = icmp eq ptr %29, null
  br i1 %30, label %71, label %31

31:                                               ; preds = %27, %17
  %32 = tail call ptr @skb_clone(ptr noundef %0, i32 noundef 2592) #22
  %33 = icmp eq ptr %32, null
  br i1 %33, label %71, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.sk_buff, ptr %32, i32 0, i32 4
  %36 = load i32, ptr %35, align 8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %34
  %39 = and i32 %36, 1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = and i32 %36, -2
  %43 = inttoptr i32 %42 to ptr
  tail call void @dst_release(ptr noundef %43) #22
  br label %44

44:                                               ; preds = %41, %38
  store i32 0, ptr %35, align 8
  br label %45

45:                                               ; preds = %44, %34
  %46 = tail call ptr @skb_pull(ptr noundef nonnull %32, i32 noundef %4) #22
  %47 = getelementptr inbounds %struct.sk_buff, ptr %32, i32 0, i32 17
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.sk_buff, ptr %32, i32 0, i32 16
  %50 = load ptr, ptr %49, align 8
  %51 = ptrtoint ptr %48 to i32
  %52 = ptrtoint ptr %50 to i32
  %53 = sub i32 %51, %52
  %54 = trunc i32 %53 to i16
  %55 = getelementptr inbounds %struct.sk_buff, ptr %32, i32 0, i32 13, i32 0, i32 18
  store i16 %54, ptr %55, align 4
  %56 = and i32 %53, 65535
  %57 = getelementptr i8, ptr %50, i32 %56
  %58 = getelementptr inbounds %struct.ipv6hdr, ptr %57, i32 0, i32 5
  %59 = tail call ptr @rt6_lookup(ptr noundef nonnull @init_net, ptr noundef %58, ptr noundef null, i32 noundef 0, ptr noundef nonnull %32, i32 noundef 0) #22
  %60 = icmp eq ptr %59, null
  br i1 %60, label %66, label %61

61:                                               ; preds = %45
  %62 = load ptr, ptr %59, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.anon.49, ptr %32, i32 0, i32 2
  store ptr %62, ptr %65, align 8
  br label %66

66:                                               ; preds = %64, %61, %45
  %67 = load i8, ptr %9, align 1
  %68 = load i8, ptr %10, align 1
  %69 = load i32, ptr %7, align 4
  %70 = getelementptr inbounds %struct.sk_buff, ptr %32, i32 0, i32 3
  tail call void @icmp6_send(ptr noundef nonnull %32, i8 noundef zeroext %67, i8 noundef zeroext %68, i32 noundef %69, ptr noundef null, ptr noundef %70) #22
  tail call void @dst_release(ptr noundef %59) #22
  tail call void @kfree_skb_reason(ptr noundef nonnull %32, i32 noundef 0) #22
  br label %71

71:                                               ; preds = %66, %31, %27, %25, %14, %6
  %72 = phi i32 [ %12, %6 ], [ 0, %66 ], [ 0, %27 ], [ 0, %14 ], [ 0, %31 ], [ 0, %25 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #22
  ret i32 %72
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @ip6_tnl_validate(ptr nocapture noundef readnone %0, ptr noundef readonly %1, ptr nocapture noundef readnone %2) #20 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %3
  %6 = getelementptr ptr, ptr %1, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = getelementptr i8, ptr %7, i32 4
  %11 = load i8, ptr %10, align 1
  switch i8 %11, label %13 [
    i8 41, label %12
    i8 4, label %12
    i8 0, label %12
  ]

12:                                               ; preds = %9, %9, %9
  br label %13

13:                                               ; preds = %12, %9, %5, %3
  %14 = phi i32 [ 0, %12 ], [ 0, %5 ], [ 0, %3 ], [ -22, %9 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ip6_tnl_newlink(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr nocapture noundef readnone %4) #0 {
  %6 = alloca %struct.ip_tunnel_encap, align 8
  %7 = load i32, ptr @ip6_tnl_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !16
  %8 = load volatile ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 37), align 64
  %9 = getelementptr [0 x ptr], ptr %8, i32 0, i32 %7
  %10 = load ptr, ptr %9, align 4
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #22
  store i64 0, ptr %6, align 8
  %11 = icmp eq ptr %3, null
  br i1 %11, label %94, label %12

12:                                               ; preds = %5
  %13 = getelementptr ptr, ptr %3, i32 15
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = getelementptr i8, ptr %14, i32 4
  %18 = load i16, ptr %17, align 2
  store i16 %18, ptr %6, align 8
  br label %19

19:                                               ; preds = %16, %12
  %20 = phi i16 [ %18, %16 ], [ 0, %12 ]
  %21 = xor i1 %15, true
  %22 = getelementptr ptr, ptr %3, i32 16
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %19
  %26 = getelementptr i8, ptr %23, i32 4
  %27 = load i16, ptr %26, align 2
  %28 = getelementptr inbounds %struct.ip_tunnel_encap, ptr %6, i32 0, i32 1
  store i16 %27, ptr %28, align 2
  br label %29

29:                                               ; preds = %25, %19
  %30 = phi i16 [ %27, %25 ], [ 0, %19 ]
  %31 = phi i1 [ true, %25 ], [ %21, %19 ]
  %32 = getelementptr ptr, ptr %3, i32 17
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = getelementptr ptr, ptr %3, i32 18
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %52, label %46

39:                                               ; preds = %29
  %40 = getelementptr i8, ptr %33, i32 4
  %41 = load i16, ptr %40, align 2
  %42 = getelementptr inbounds %struct.ip_tunnel_encap, ptr %6, i32 0, i32 2
  store i16 %41, ptr %42, align 4
  %43 = getelementptr ptr, ptr %3, i32 18
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %53, label %46

46:                                               ; preds = %39, %35
  %47 = phi ptr [ %44, %39 ], [ %37, %35 ]
  %48 = phi i16 [ %41, %39 ], [ 0, %35 ]
  %49 = getelementptr i8, ptr %47, i32 4
  %50 = load i16, ptr %49, align 2
  %51 = getelementptr inbounds %struct.ip_tunnel_encap, ptr %6, i32 0, i32 3
  store i16 %50, ptr %51, align 2
  br label %53

52:                                               ; preds = %35
  br i1 %31, label %53, label %94

53:                                               ; preds = %52, %46, %39
  %54 = phi i16 [ %48, %46 ], [ 0, %52 ], [ %41, %39 ]
  %55 = phi i16 [ %50, %46 ], [ 0, %52 ], [ 0, %39 ]
  %56 = getelementptr i8, ptr %1, i32 1640
  store i64 0, ptr %56, align 8
  %57 = icmp eq i16 %20, 0
  br i1 %57, label %80, label %58

58:                                               ; preds = %53
  %59 = icmp ugt i16 %20, 7
  br i1 %59, label %139, label %60

60:                                               ; preds = %58
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !16
  %61 = zext i16 %20 to i32
  %62 = getelementptr [8 x ptr], ptr @ip6tun_encaps, i32 0, i32 %61
  %63 = load volatile ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %68, label %65, !prof !9

65:                                               ; preds = %60
  %66 = load ptr, ptr %63, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %69, !prof !9

68:                                               ; preds = %65, %60
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !17
  br label %139

69:                                               ; preds = %65
  %70 = call i32 %66(ptr noundef nonnull %6) #22
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !17
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %139, label %72

72:                                               ; preds = %69
  %73 = load i16, ptr %6, align 8
  %74 = getelementptr inbounds %struct.ip_tunnel_encap, ptr %6, i32 0, i32 2
  %75 = load i16, ptr %74, align 4
  %76 = getelementptr inbounds %struct.ip_tunnel_encap, ptr %6, i32 0, i32 3
  %77 = load i16, ptr %76, align 2
  %78 = getelementptr inbounds %struct.ip_tunnel_encap, ptr %6, i32 0, i32 1
  %79 = load i16, ptr %78, align 2
  br label %80

80:                                               ; preds = %72, %53
  %81 = phi i16 [ %79, %72 ], [ %30, %53 ]
  %82 = phi i16 [ %77, %72 ], [ %55, %53 ]
  %83 = phi i16 [ %75, %72 ], [ %54, %53 ]
  %84 = phi i16 [ %73, %72 ], [ 0, %53 ]
  %85 = phi i32 [ %70, %72 ], [ 0, %53 ]
  store i16 %84, ptr %56, align 8
  %86 = getelementptr i8, ptr %1, i32 1644
  store i16 %83, ptr %86, align 4
  %87 = getelementptr i8, ptr %1, i32 1646
  store i16 %82, ptr %87, align 2
  %88 = getelementptr i8, ptr %1, i32 1642
  store i16 %81, ptr %88, align 2
  %89 = getelementptr i8, ptr %1, i32 1636
  store i32 %85, ptr %89, align 4
  %90 = getelementptr i8, ptr %1, i32 1632
  %91 = load i32, ptr %90, align 8
  %92 = add i32 %91, %85
  %93 = getelementptr i8, ptr %1, i32 1628
  store i32 %92, ptr %93, align 4
  br label %94

94:                                               ; preds = %80, %52, %5
  %95 = getelementptr i8, ptr %1, i32 1420
  call fastcc void @ip6_tnl_netlink_parms(ptr noundef %3, ptr noundef %95)
  %96 = getelementptr i8, ptr %1, i32 1443
  %97 = load i8, ptr %96, align 1, !range !15
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.ip6_tnl_net, ptr %10, i32 0, i32 4
  %101 = load ptr, ptr %100, align 4
  %102 = icmp eq ptr %101, null
  br i1 %102, label %106, label %139

103:                                              ; preds = %94
  %104 = call fastcc ptr @ip6_tnl_locate(ptr noundef nonnull @init_net, ptr noundef %95, i32 noundef 0)
  %105 = icmp ugt ptr %104, inttoptr (i32 -4096 to ptr)
  br i1 %105, label %106, label %139

106:                                              ; preds = %103, %99
  %107 = call fastcc i32 @ip6_tnl_create2(ptr noundef %1)
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %139

109:                                              ; preds = %106
  %110 = getelementptr ptr, ptr %2, i32 4
  %111 = load ptr, ptr %110, align 4
  %112 = icmp eq ptr %111, null
  br i1 %112, label %139, label %113

113:                                              ; preds = %109
  %114 = getelementptr i8, ptr %111, i32 4
  %115 = load i32, ptr %114, align 4
  %116 = getelementptr i8, ptr %1, i32 1440
  %117 = load i8, ptr %116, align 4
  %118 = icmp eq i8 %117, 41
  br i1 %118, label %119, label %121

119:                                              ; preds = %113
  %120 = icmp slt i32 %115, 1280
  br i1 %120, label %139, label %125

121:                                              ; preds = %113
  %122 = icmp slt i32 %115, 68
  br i1 %122, label %139, label %123

123:                                              ; preds = %121
  %124 = icmp eq i8 %117, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %123, %119
  %126 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 19
  %127 = load i16, ptr %126, align 2
  %128 = zext i16 %127 to i32
  %129 = sub nuw nsw i32 65575, %128
  %130 = icmp ult i32 %129, %115
  br i1 %130, label %139, label %137

131:                                              ; preds = %123
  %132 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 19
  %133 = load i16, ptr %132, align 2
  %134 = xor i16 %133, -1
  %135 = zext i16 %134 to i32
  %136 = icmp ugt i32 %115, %135
  br i1 %136, label %139, label %137

137:                                              ; preds = %131, %125
  %138 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 20
  store i32 %115, ptr %138, align 4
  br label %139

139:                                              ; preds = %137, %131, %125, %121, %119, %109, %106, %103, %99, %69, %68, %58
  %140 = phi i32 [ -17, %99 ], [ -17, %103 ], [ 0, %109 ], [ %107, %106 ], [ 0, %119 ], [ 0, %121 ], [ 0, %125 ], [ 0, %131 ], [ 0, %137 ], [ -22, %58 ], [ -22, %68 ], [ %70, %69 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #22
  ret i32 %140
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ip6_tnl_changelink(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = alloca %struct.__ip6_tnl_parm, align 4
  %6 = alloca %struct.ip_tunnel_encap, align 8
  %7 = getelementptr i8, ptr %0, i32 1408
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %5) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(88) %5, i8 0, i32 88, i1 false), !annotation !18
  %8 = getelementptr i8, ptr %0, i32 1416
  %9 = load ptr, ptr %8, align 8
  %10 = load i32, ptr @ip6_tnl_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !16
  %11 = getelementptr inbounds %struct.net, ptr %9, i32 0, i32 37
  %12 = load volatile ptr, ptr %11, align 64
  %13 = getelementptr [0 x ptr], ptr %12, i32 0, i32 %10
  %14 = load ptr, ptr %13, align 4
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #22
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %0
  br i1 %16, label %114, label %17

17:                                               ; preds = %4
  store i64 0, ptr %6, align 8
  %18 = icmp eq ptr %2, null
  br i1 %18, label %101, label %19

19:                                               ; preds = %17
  %20 = getelementptr ptr, ptr %2, i32 15
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = getelementptr i8, ptr %21, i32 4
  %25 = load i16, ptr %24, align 2
  store i16 %25, ptr %6, align 8
  br label %26

26:                                               ; preds = %23, %19
  %27 = phi i16 [ %25, %23 ], [ 0, %19 ]
  %28 = xor i1 %22, true
  %29 = getelementptr ptr, ptr %2, i32 16
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %26
  %33 = getelementptr i8, ptr %30, i32 4
  %34 = load i16, ptr %33, align 2
  %35 = getelementptr inbounds %struct.ip_tunnel_encap, ptr %6, i32 0, i32 1
  store i16 %34, ptr %35, align 2
  br label %36

36:                                               ; preds = %32, %26
  %37 = phi i16 [ %34, %32 ], [ 0, %26 ]
  %38 = phi i1 [ true, %32 ], [ %28, %26 ]
  %39 = getelementptr ptr, ptr %2, i32 17
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = getelementptr ptr, ptr %2, i32 18
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %59, label %53

46:                                               ; preds = %36
  %47 = getelementptr i8, ptr %40, i32 4
  %48 = load i16, ptr %47, align 2
  %49 = getelementptr inbounds %struct.ip_tunnel_encap, ptr %6, i32 0, i32 2
  store i16 %48, ptr %49, align 4
  %50 = getelementptr ptr, ptr %2, i32 18
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %60, label %53

53:                                               ; preds = %46, %42
  %54 = phi ptr [ %51, %46 ], [ %44, %42 ]
  %55 = phi i16 [ %48, %46 ], [ 0, %42 ]
  %56 = getelementptr i8, ptr %54, i32 4
  %57 = load i16, ptr %56, align 2
  %58 = getelementptr inbounds %struct.ip_tunnel_encap, ptr %6, i32 0, i32 3
  store i16 %57, ptr %58, align 2
  br label %60

59:                                               ; preds = %42
  br i1 %38, label %60, label %101

60:                                               ; preds = %59, %53, %46
  %61 = phi i16 [ %55, %53 ], [ 0, %59 ], [ %48, %46 ]
  %62 = phi i16 [ %57, %53 ], [ 0, %59 ], [ 0, %46 ]
  %63 = getelementptr i8, ptr %0, i32 1640
  store i64 0, ptr %63, align 8
  %64 = icmp eq i16 %27, 0
  br i1 %64, label %87, label %65

65:                                               ; preds = %60
  %66 = icmp ugt i16 %27, 7
  br i1 %66, label %114, label %67

67:                                               ; preds = %65
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !16
  %68 = zext i16 %27 to i32
  %69 = getelementptr [8 x ptr], ptr @ip6tun_encaps, i32 0, i32 %68
  %70 = load volatile ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %75, label %72, !prof !9

72:                                               ; preds = %67
  %73 = load ptr, ptr %70, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %76, !prof !9

75:                                               ; preds = %72, %67
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !17
  br label %114

76:                                               ; preds = %72
  %77 = call i32 %73(ptr noundef nonnull %6) #22
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !17
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %114, label %79

79:                                               ; preds = %76
  %80 = load i16, ptr %6, align 8
  %81 = getelementptr inbounds %struct.ip_tunnel_encap, ptr %6, i32 0, i32 2
  %82 = load i16, ptr %81, align 4
  %83 = getelementptr inbounds %struct.ip_tunnel_encap, ptr %6, i32 0, i32 3
  %84 = load i16, ptr %83, align 2
  %85 = getelementptr inbounds %struct.ip_tunnel_encap, ptr %6, i32 0, i32 1
  %86 = load i16, ptr %85, align 2
  br label %87

87:                                               ; preds = %79, %60
  %88 = phi i16 [ %86, %79 ], [ %37, %60 ]
  %89 = phi i16 [ %84, %79 ], [ %62, %60 ]
  %90 = phi i16 [ %82, %79 ], [ %61, %60 ]
  %91 = phi i16 [ %80, %79 ], [ 0, %60 ]
  %92 = phi i32 [ %77, %79 ], [ 0, %60 ]
  store i16 %91, ptr %63, align 8
  %93 = getelementptr i8, ptr %0, i32 1644
  store i16 %90, ptr %93, align 4
  %94 = getelementptr i8, ptr %0, i32 1646
  store i16 %89, ptr %94, align 2
  %95 = getelementptr i8, ptr %0, i32 1642
  store i16 %88, ptr %95, align 2
  %96 = getelementptr i8, ptr %0, i32 1636
  store i32 %92, ptr %96, align 4
  %97 = getelementptr i8, ptr %0, i32 1632
  %98 = load i32, ptr %97, align 8
  %99 = add i32 %98, %92
  %100 = getelementptr i8, ptr %0, i32 1628
  store i32 %99, ptr %100, align 4
  br label %101

101:                                              ; preds = %87, %59, %17
  call fastcc void @ip6_tnl_netlink_parms(ptr noundef %2, ptr noundef nonnull %5)
  %102 = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %5, i32 0, i32 5
  %103 = load i8, ptr %102, align 1, !range !15
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %105, label %114

105:                                              ; preds = %101
  %106 = call fastcc ptr @ip6_tnl_locate(ptr noundef %9, ptr noundef nonnull %5, i32 noundef 0)
  %107 = icmp ugt ptr %106, inttoptr (i32 -4096 to ptr)
  br i1 %107, label %112, label %108

108:                                              ; preds = %105
  %109 = getelementptr inbounds %struct.ip6_tnl, ptr %106, i32 0, i32 1
  %110 = load ptr, ptr %109, align 4
  %111 = icmp eq ptr %110, %0
  br i1 %111, label %112, label %114

112:                                              ; preds = %108, %105
  %113 = phi ptr [ %106, %108 ], [ %7, %105 ]
  call fastcc void @ip6_tnl_update(ptr noundef %113, ptr noundef nonnull %5)
  br label %114

114:                                              ; preds = %112, %108, %101, %76, %75, %65, %4
  %115 = phi i32 [ 0, %112 ], [ -22, %4 ], [ -22, %101 ], [ -17, %108 ], [ -22, %65 ], [ -22, %75 ], [ %77, %76 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %5) #22
  ret i32 %115
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ip6_tnl_dellink(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load i32, ptr @ip6_tnl_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !16
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 37), align 64
  %5 = getelementptr [0 x ptr], ptr %4, i32 0, i32 %3
  %6 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !17
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  tail call void @unregister_netdevice_queue(ptr noundef %0, ptr noundef %1) #22
  br label %10

10:                                               ; preds = %9, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @ip6_tnl_get_size(ptr nocapture noundef readnone %0) #21 {
  ret i32 132
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ip6_tnl_fill_info(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = getelementptr i8, ptr %1, i32 1436
  %15 = load i32, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #22
  store i32 %15, ptr %13, align 4
  %16 = call i32 @nla_put(ptr noundef %0, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %13) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #22
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %83

18:                                               ; preds = %2
  %19 = getelementptr i8, ptr %1, i32 1452
  %20 = call i32 @nla_put(ptr noundef %0, i32 noundef 2, i32 noundef 16, ptr noundef %19) #22
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %83

22:                                               ; preds = %18
  %23 = getelementptr i8, ptr %1, i32 1468
  %24 = call i32 @nla_put(ptr noundef %0, i32 noundef 3, i32 noundef 16, ptr noundef %23) #22
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %83

26:                                               ; preds = %22
  %27 = getelementptr i8, ptr %1, i32 1442
  %28 = load i8, ptr %27, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #22
  store i8 %28, ptr %12, align 1
  %29 = call i32 @nla_put(ptr noundef %0, i32 noundef 4, i32 noundef 1, ptr noundef nonnull %12) #22
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #22
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %83

31:                                               ; preds = %26
  %32 = getelementptr i8, ptr %1, i32 1441
  %33 = load i8, ptr %32, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #22
  store i8 %33, ptr %11, align 1
  %34 = call i32 @nla_put(ptr noundef %0, i32 noundef 6, i32 noundef 1, ptr noundef nonnull %11) #22
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #22
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %83

36:                                               ; preds = %31
  %37 = getelementptr i8, ptr %1, i32 1444
  %38 = load i32, ptr %37, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #22
  store i32 %38, ptr %10, align 4
  %39 = call i32 @nla_put(ptr noundef %0, i32 noundef 7, i32 noundef 4, ptr noundef nonnull %10) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #22
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %83

41:                                               ; preds = %36
  %42 = getelementptr i8, ptr %1, i32 1448
  %43 = load i32, ptr %42, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #22
  store i32 %43, ptr %9, align 4
  %44 = call i32 @nla_put(ptr noundef %0, i32 noundef 8, i32 noundef 4, ptr noundef nonnull %9) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #22
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %83

46:                                               ; preds = %41
  %47 = getelementptr i8, ptr %1, i32 1440
  %48 = load i8, ptr %47, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #22
  store i8 %48, ptr %8, align 1
  %49 = call i32 @nla_put(ptr noundef %0, i32 noundef 9, i32 noundef 1, ptr noundef nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #22
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %83

51:                                               ; preds = %46
  %52 = getelementptr i8, ptr %1, i32 1496
  %53 = load i32, ptr %52, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #22
  store i32 %53, ptr %7, align 4
  %54 = call i32 @nla_put(ptr noundef %0, i32 noundef 20, i32 noundef 4, ptr noundef nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #22
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %83

56:                                               ; preds = %51
  %57 = getelementptr i8, ptr %1, i32 1640
  %58 = load i16, ptr %57, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #22
  store i16 %58, ptr %6, align 2
  %59 = call i32 @nla_put(ptr noundef %0, i32 noundef 15, i32 noundef 2, ptr noundef nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #22
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %83

61:                                               ; preds = %56
  %62 = getelementptr i8, ptr %1, i32 1644
  %63 = load i16, ptr %62, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #22
  store i16 %63, ptr %5, align 2
  %64 = call i32 @nla_put(ptr noundef %0, i32 noundef 17, i32 noundef 2, ptr noundef nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #22
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %83

66:                                               ; preds = %61
  %67 = getelementptr i8, ptr %1, i32 1646
  %68 = load i16, ptr %67, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #22
  store i16 %68, ptr %4, align 2
  %69 = call i32 @nla_put(ptr noundef %0, i32 noundef 18, i32 noundef 2, ptr noundef nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #22
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %83

71:                                               ; preds = %66
  %72 = getelementptr i8, ptr %1, i32 1642
  %73 = load i16, ptr %72, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #22
  store i16 %73, ptr %3, align 2
  %74 = call i32 @nla_put(ptr noundef %0, i32 noundef 16, i32 noundef 2, ptr noundef nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #22
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %71
  %77 = getelementptr i8, ptr %1, i32 1443
  %78 = load i8, ptr %77, align 1, !range !15
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %76
  %81 = call i32 @nla_put(ptr noundef %0, i32 noundef 19, i32 noundef 0, ptr noundef null) #22
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %80, %71, %66, %61, %56, %51, %46, %41, %36, %31, %26, %22, %18, %2
  br label %84

84:                                               ; preds = %83, %80, %76
  %85 = phi i32 [ -90, %83 ], [ 0, %80 ], [ 0, %76 ]
  ret i32 %85
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ip6_tnl_netlink_parms(ptr noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = alloca %struct.in6_addr, align 4
  %4 = alloca %struct.in6_addr, align 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(88) %1, i8 0, i32 88, i1 false)
  %5 = icmp eq ptr %0, null
  br i1 %5, label %82, label %6

6:                                                ; preds = %2
  %7 = getelementptr ptr, ptr %0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = getelementptr i8, ptr %8, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %1, i32 0, i32 1
  store i32 %12, ptr %13, align 4
  br label %14

14:                                               ; preds = %10, %6
  %15 = getelementptr ptr, ptr %0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %1, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false) #22, !alias.scope !46, !annotation !18
  %20 = call i32 @nla_memcpy(ptr noundef nonnull %3, ptr noundef nonnull %16, i32 noundef 16) #22
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %19, ptr noundef nonnull align 4 dereferenceable(16) %3, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #22
  br label %21

21:                                               ; preds = %18, %14
  %22 = getelementptr ptr, ptr %0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %1, i32 0, i32 9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false) #22, !alias.scope !49, !annotation !18
  %27 = call i32 @nla_memcpy(ptr noundef nonnull %4, ptr noundef nonnull %23, i32 noundef 16) #22
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %26, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #22
  br label %28

28:                                               ; preds = %25, %21
  %29 = getelementptr ptr, ptr %0, i32 4
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = getelementptr i8, ptr %30, i32 4
  %34 = load i8, ptr %33, align 1
  %35 = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %1, i32 0, i32 4
  store i8 %34, ptr %35, align 2
  br label %36

36:                                               ; preds = %32, %28
  %37 = getelementptr ptr, ptr %0, i32 6
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = getelementptr i8, ptr %38, i32 4
  %42 = load i8, ptr %41, align 1
  %43 = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %1, i32 0, i32 3
  store i8 %42, ptr %43, align 1
  br label %44

44:                                               ; preds = %40, %36
  %45 = getelementptr ptr, ptr %0, i32 7
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = getelementptr i8, ptr %46, i32 4
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %1, i32 0, i32 6
  store i32 %50, ptr %51, align 4
  br label %52

52:                                               ; preds = %48, %44
  %53 = getelementptr ptr, ptr %0, i32 8
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = getelementptr i8, ptr %54, i32 4
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %1, i32 0, i32 7
  store i32 %58, ptr %59, align 4
  br label %60

60:                                               ; preds = %56, %52
  %61 = getelementptr ptr, ptr %0, i32 9
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %68, label %64

64:                                               ; preds = %60
  %65 = getelementptr i8, ptr %62, i32 4
  %66 = load i8, ptr %65, align 1
  %67 = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %1, i32 0, i32 2
  store i8 %66, ptr %67, align 4
  br label %68

68:                                               ; preds = %64, %60
  %69 = getelementptr ptr, ptr %0, i32 19
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %74, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %1, i32 0, i32 5
  store i8 1, ptr %73, align 1
  br label %74

74:                                               ; preds = %72, %68
  %75 = getelementptr ptr, ptr %0, i32 20
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %82, label %78

78:                                               ; preds = %74
  %79 = getelementptr i8, ptr %76, i32 4
  %80 = load i32, ptr %79, align 4
  %81 = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %1, i32 0, i32 14
  store i32 %80, ptr %81, align 4
  br label %82

82:                                               ; preds = %78, %74, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_link_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { inlinehint mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind readonly }
attributes #13 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #18 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #19 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #22 = { nounwind }
attributes #23 = { cold nounwind }
attributes #24 = { nounwind allocsize(0) }
attributes #25 = { nounwind readonly willreturn }
attributes #26 = { nounwind readnone }

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
!11 = distinct !{ptr @ip4ip6_dscp_ecn_decapsulate, ptr @ip6ip6_dscp_ecn_decapsulate, null}
!12 = !{i64 523358}
!13 = !{i64 2149438996}
!14 = !{i64 2149439297}
!15 = !{i8 0, i8 2}
!16 = !{i64 2149101476}
!17 = !{i64 2149101693}
!18 = !{!"auto-init"}
!19 = !{i64 2148202046}
!20 = !{i64 598980, i64 2148088951, i64 2148088977, i64 2148089024, i64 2148089046, i64 2148089074, i64 2148089094}
!21 = !{i64 2148104181, i64 2148104213, i64 2148104242, i64 2148104276, i64 2148104307, i64 2148104330}
!22 = !{i64 2149051109}
!23 = !{i64 2157258308}
!24 = !{i64 2157259148}
!25 = !{i64 2157660714}
!26 = !{i64 610354, i64 610375, i64 610398, i64 610417, i64 610436}
!27 = !{i64 2157661101}
!28 = !{i64 2157663490}
!29 = !{i64 2157663877}
!30 = !{i64 2157678426}
!31 = !{i64 504658, i64 504719}
!32 = !{i64 507675}
!33 = !{i64 2157610441}
!34 = !{!"branch_weights", i32 4000000, i32 4001}
!35 = !{i64 2151451838, i64 2151451863}
!36 = !{i64 3947950}
!37 = !{i64 3948147}
!38 = !{i64 2151433426}
!39 = !{i64 2151452416, i64 2151452441}
!40 = !{i64 2157580275}
!41 = !{i64 2157588384}
!42 = !{i64 2157595165}
!43 = !{i64 2148099873}
!44 = !{i64 585549, i64 585574, i64 585596, i64 585612, i64 585624, i64 585644, i64 585668, i64 585684, i64 585696}
!45 = !{i64 2148099999}
!46 = !{!47}
!47 = distinct !{!47, !48, !"nla_get_in6_addr: argument 0"}
!48 = distinct !{!48, !"nla_get_in6_addr"}
!49 = !{!50}
!50 = distinct !{!50, !51, !"nla_get_in6_addr: argument 0"}
!51 = distinct !{!51, !"nla_get_in6_addr"}
