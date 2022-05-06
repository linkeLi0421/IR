; ModuleID = '/llk/IR/net/ethtool/ioctl.c_pt.bc'
source_filename = "../net/ethtool/ioctl.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ethtool_op_get_link:\09\09\09\09\09"
module asm "\09.asciz \09\22ethtool_op_get_link\22\09\09\09\09\09"
module asm "__kstrtabns_ethtool_op_get_link:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ethtool_op_get_ts_info:\09\09\09\09\09"
module asm "\09.asciz \09\22ethtool_op_get_ts_info\22\09\09\09\09\09"
module asm "__kstrtabns_ethtool_op_get_ts_info:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ethtool_intersect_link_masks:\09\09\09\09\09"
module asm "\09.asciz \09\22ethtool_intersect_link_masks\22\09\09\09\09\09"
module asm "__kstrtabns_ethtool_intersect_link_masks:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ethtool_convert_legacy_u32_to_link_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22ethtool_convert_legacy_u32_to_link_mode\22\09\09\09\09\09"
module asm "__kstrtabns_ethtool_convert_legacy_u32_to_link_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ethtool_convert_link_mode_to_legacy_u32:\09\09\09\09\09"
module asm "\09.asciz \09\22ethtool_convert_link_mode_to_legacy_u32\22\09\09\09\09\09"
module asm "__kstrtabns_ethtool_convert_link_mode_to_legacy_u32:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___ethtool_get_link_ksettings:\09\09\09\09\09"
module asm "\09.asciz \09\22__ethtool_get_link_ksettings\22\09\09\09\09\09"
module asm "__kstrtabns___ethtool_get_link_ksettings:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ethtool_virtdev_set_link_ksettings:\09\09\09\09\09"
module asm "\09.asciz \09\22ethtool_virtdev_set_link_ksettings\22\09\09\09\09\09"
module asm "__kstrtabns_ethtool_virtdev_set_link_ksettings:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_netdev_rss_key_fill:\09\09\09\09\09"
module asm "\09.asciz \09\22netdev_rss_key_fill\22\09\09\09\09\09"
module asm "__kstrtabns_netdev_rss_key_fill:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ethtool_sprintf:\09\09\09\09\09"
module asm "\09.asciz \09\22ethtool_sprintf\22\09\09\09\09\09"
module asm "__kstrtabns_ethtool_sprintf:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ethtool_rx_flow_rule_create:\09\09\09\09\09"
module asm "\09.asciz \09\22ethtool_rx_flow_rule_create\22\09\09\09\09\09"
module asm "__kstrtabns_ethtool_rx_flow_rule_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ethtool_rx_flow_rule_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22ethtool_rx_flow_rule_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_ethtool_rx_flow_rule_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.static_key_true = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.in6_addr = type { %union.anon.47 }
%union.anon.47 = type { [4 x i32] }
%struct.ethtool_pauseparam = type { i32, i32, i32, i32 }
%struct.ethtool_fecparam = type { i32, i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.168, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.ref_tracker_dir = type {}
%struct.possible_net_t = type {}
%union.anon.168 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.ethtool_ts_info = type { i32, i32, i32, i32, [3 x i32], i32, [3 x i32] }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.167, i32 }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.anon.167 = type { [3 x i32], [3 x i32], [3 x i32] }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.__va_list = type { ptr }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.phy_driver = type { %struct.mdio_driver_common, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mdio_driver_common = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_value = type { i32, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ethtool_devlink_compat = type { ptr, %union.anon.173 }
%union.anon.173 = type { %struct.ethtool_drvinfo }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.30, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.30 = type { %struct.anon.31 }
%struct.anon.31 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.57, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.57 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.ethtool_rx_flow_rule = type { ptr, [0 x i32] }
%struct.flow_match = type { ptr, ptr, ptr }
%struct.ethtool_rx_flow_spec = type { i32, %union.ethtool_flow_union, %struct.ethtool_flow_ext, %union.ethtool_flow_union, %struct.ethtool_flow_ext, i64, i32 }
%union.ethtool_flow_union = type { %struct.ethtool_tcpip6_spec, [12 x i8] }
%struct.ethtool_tcpip6_spec = type { [4 x i32], [4 x i32], i16, i16, i8 }
%struct.ethtool_flow_ext = type { [2 x i8], [6 x i8], i16, i16, [2 x i32] }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.ethtool_rx_flow_key = type { %struct.flow_dissector_key_basic, %union.anon.187, %struct.flow_dissector_key_ports, %struct.flow_dissector_key_ip, %struct.flow_dissector_key_vlan, %struct.flow_dissector_key_eth_addrs }
%struct.flow_dissector_key_basic = type { i16, i8, i8 }
%union.anon.187 = type { %struct.flow_dissector_key_ipv6_addrs }
%struct.flow_dissector_key_ipv6_addrs = type { %struct.in6_addr, %struct.in6_addr }
%struct.flow_dissector_key_ports = type { %union.anon.188 }
%union.anon.188 = type { i32 }
%struct.flow_dissector_key_ip = type { i8, i8 }
%struct.flow_dissector_key_vlan = type { %union.anon.190, i16 }
%union.anon.190 = type { %struct.anon.191 }
%struct.anon.191 = type { i16 }
%struct.flow_dissector_key_eth_addrs = type { [6 x i8], [6 x i8] }
%struct.ethtool_tcpip4_spec = type { i32, i32, i16, i16, i8 }
%struct.anon.189 = type { i16, i16 }
%struct.flow_rule = type { %struct.flow_match, %struct.flow_action }
%struct.flow_action = type { i32, [0 x %struct.flow_action_entry] }
%struct.flow_action_entry = type { i32, i32, i32, ptr, ptr, %union.anon.174, ptr }
%union.anon.174 = type { %struct.anon.179 }
%struct.anon.179 = type { i32, i64, i64, i64, i32 }
%struct.ethtool_rx_flow_spec_input = type { ptr, i32 }
%struct.ethtool_cmd = type { i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i32, i32, i16, i8, i8, i32, [2 x i32] }
%struct.rtnl_link_ops = type { %struct.list_head, ptr, i32, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.157 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.157 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.ethtool_regs = type { i32, i32, i32, [0 x i8] }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.ethtool_eee = type { i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%struct.ethtool_eeprom = type { i32, i32, i32, i32, [0 x i8] }
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.kernel_ethtool_coalesce = type { i8, i8 }
%struct.ethtool_ringparam = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.kernel_ethtool_ringparam = type { i32 }
%struct.ethtool_test = type { i32, i32, i32, i32, [0 x i64] }
%struct.ethtool_gstrings = type { i32, i32, i32, [0 x i8] }
%struct.ethtool_phy_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_stats = type { i32, i32, [0 x i64] }
%struct.ethtool_perm_addr = type { i32, i32, [0 x i8] }
%struct.ethtool_rxnfc = type { i32, i32, i64, %struct.ethtool_rx_flow_spec, %union.anon.166, [0 x i32] }
%union.anon.166 = type { i32 }
%struct.ethtool_sset_info = type { i32, i32, i64, [0 x i32] }
%struct.ethtool_rxfh = type { i32, i32, i32, i32, i8, [3 x i8], i32, [0 x i32] }
%struct.ethtool_gfeatures = type { i32, i32, [0 x %struct.ethtool_get_features_block] }
%struct.ethtool_get_features_block = type { i32, i32, i32, i32 }
%struct.ethtool_sfeatures = type { i32, i32, [0 x %struct.ethtool_set_features_block] }
%struct.ethtool_set_features_block = type { i32, i32 }
%struct.ethtool_channels = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_dump = type { i32, i32, i32, i32, [0 x i8] }
%struct.ethtool_modinfo = type { i32, i32, i32, [8 x i32] }
%struct.ethtool_tunable = type { i32, i32, i32, i32, [0 x ptr] }
%struct.ethtool_per_queue_op = type { i32, i32, [128 x i32], [0 x i8] }
%struct.ethtool_link_usettings = type { %struct.ethtool_link_settings, %struct.anon.192 }
%struct.anon.192 = type { [3 x i32], [3 x i32], [3 x i32] }

@__kstrtab_ethtool_op_get_link = external dso_local constant [0 x i8], align 1
@__kstrtabns_ethtool_op_get_link = external dso_local constant [0 x i8], align 1
@__ksymtab_ethtool_op_get_link = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ethtool_op_get_link to i32), ptr @__kstrtab_ethtool_op_get_link, ptr @__kstrtabns_ethtool_op_get_link }, section "___ksymtab+ethtool_op_get_link", align 4
@__kstrtab_ethtool_op_get_ts_info = external dso_local constant [0 x i8], align 1
@__kstrtabns_ethtool_op_get_ts_info = external dso_local constant [0 x i8], align 1
@__ksymtab_ethtool_op_get_ts_info = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ethtool_op_get_ts_info to i32), ptr @__kstrtab_ethtool_op_get_ts_info, ptr @__kstrtabns_ethtool_op_get_ts_info }, section "___ksymtab+ethtool_op_get_ts_info", align 4
@__kstrtab_ethtool_intersect_link_masks = external dso_local constant [0 x i8], align 1
@__kstrtabns_ethtool_intersect_link_masks = external dso_local constant [0 x i8], align 1
@__ksymtab_ethtool_intersect_link_masks = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ethtool_intersect_link_masks to i32), ptr @__kstrtab_ethtool_intersect_link_masks, ptr @__kstrtabns_ethtool_intersect_link_masks }, section "___ksymtab+ethtool_intersect_link_masks", align 4
@__kstrtab_ethtool_convert_legacy_u32_to_link_mode = external dso_local constant [0 x i8], align 1
@__kstrtabns_ethtool_convert_legacy_u32_to_link_mode = external dso_local constant [0 x i8], align 1
@__ksymtab_ethtool_convert_legacy_u32_to_link_mode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ethtool_convert_legacy_u32_to_link_mode to i32), ptr @__kstrtab_ethtool_convert_legacy_u32_to_link_mode, ptr @__kstrtabns_ethtool_convert_legacy_u32_to_link_mode }, section "___ksymtab+ethtool_convert_legacy_u32_to_link_mode", align 4
@__kstrtab_ethtool_convert_link_mode_to_legacy_u32 = external dso_local constant [0 x i8], align 1
@__kstrtabns_ethtool_convert_link_mode_to_legacy_u32 = external dso_local constant [0 x i8], align 1
@__ksymtab_ethtool_convert_link_mode_to_legacy_u32 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ethtool_convert_link_mode_to_legacy_u32 to i32), ptr @__kstrtab_ethtool_convert_link_mode_to_legacy_u32, ptr @__kstrtabns_ethtool_convert_link_mode_to_legacy_u32 }, section "___ksymtab+ethtool_convert_link_mode_to_legacy_u32", align 4
@__ethtool_get_link_ksettings.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [20 x i8] c"net/ethtool/ioctl.c\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", align 1
@__kstrtab___ethtool_get_link_ksettings = external dso_local constant [0 x i8], align 1
@__kstrtabns___ethtool_get_link_ksettings = external dso_local constant [0 x i8], align 1
@__ksymtab___ethtool_get_link_ksettings = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__ethtool_get_link_ksettings to i32), ptr @__kstrtab___ethtool_get_link_ksettings, ptr @__kstrtabns___ethtool_get_link_ksettings }, section "___ksymtab+__ethtool_get_link_ksettings", align 4
@__kstrtab_ethtool_virtdev_set_link_ksettings = external dso_local constant [0 x i8], align 1
@__kstrtabns_ethtool_virtdev_set_link_ksettings = external dso_local constant [0 x i8], align 1
@__ksymtab_ethtool_virtdev_set_link_ksettings = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ethtool_virtdev_set_link_ksettings to i32), ptr @__kstrtab_ethtool_virtdev_set_link_ksettings, ptr @__kstrtabns_ethtool_virtdev_set_link_ksettings }, section "___ksymtab+ethtool_virtdev_set_link_ksettings", align 4
@netdev_rss_key_fill.___done = internal global i8 0, section ".data.once", align 1
@netdev_rss_key_fill.___once_key = internal global %struct.static_key_true { %struct.static_key { %struct.atomic_t { i32 1 } } }, align 4
@netdev_rss_key = dso_local global [52 x i8] zeroinitializer, section ".data..read_mostly", align 1
@__kstrtab_netdev_rss_key_fill = external dso_local constant [0 x i8], align 1
@__kstrtabns_netdev_rss_key_fill = external dso_local constant [0 x i8], align 1
@__ksymtab_netdev_rss_key_fill = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @netdev_rss_key_fill to i32), ptr @__kstrtab_netdev_rss_key_fill, ptr @__kstrtabns_netdev_rss_key_fill }, section "___ksymtab+netdev_rss_key_fill", align 4
@__kstrtab_ethtool_sprintf = external dso_local constant [0 x i8], align 1
@__kstrtabns_ethtool_sprintf = external dso_local constant [0 x i8], align 1
@__ksymtab_ethtool_sprintf = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ethtool_sprintf to i32), ptr @__kstrtab_ethtool_sprintf, ptr @__kstrtabns_ethtool_sprintf }, section "___ksymtab+ethtool_sprintf", align 4
@ethtool_rx_flow_rule_create.zero_addr = internal global %struct.in6_addr zeroinitializer, align 4
@__kstrtab_ethtool_rx_flow_rule_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_ethtool_rx_flow_rule_create = external dso_local constant [0 x i8], align 1
@__ksymtab_ethtool_rx_flow_rule_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ethtool_rx_flow_rule_create to i32), ptr @__kstrtab_ethtool_rx_flow_rule_create, ptr @__kstrtabns_ethtool_rx_flow_rule_create }, section "___ksymtab+ethtool_rx_flow_rule_create", align 4
@__kstrtab_ethtool_rx_flow_rule_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_ethtool_rx_flow_rule_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_ethtool_rx_flow_rule_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ethtool_rx_flow_rule_destroy to i32), ptr @__kstrtab_ethtool_rx_flow_rule_destroy, ptr @__kstrtabns_ethtool_rx_flow_rule_destroy }, section "___ksymtab+ethtool_rx_flow_rule_destroy", align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@ethtool_get_settings.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ethtool_set_settings.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"5.17.0\00", align 1
@__const.ethtool_get_pauseparam.pauseparam = private unnamed_addr constant %struct.ethtool_pauseparam { i32 18, i32 0, i32 0, i32 0 }, align 4
@ethtool_get_strings.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ethtool_phy_ops = external dso_local local_unnamed_addr global ptr, align 4
@netdev_features_strings = external dso_local local_unnamed_addr constant [64 x [32 x i8]], align 1
@rss_hash_func_strings = external dso_local local_unnamed_addr constant [3 x [32 x i8]], align 1
@tunable_strings = external dso_local local_unnamed_addr constant [5 x [32 x i8]], align 1
@phy_tunable_strings = external dso_local local_unnamed_addr constant [4 x [32 x i8]], align 1
@link_mode_names = external dso_local local_unnamed_addr constant [0 x [32 x i8]], align 1
@ethtool_phys_id.busy = internal unnamed_addr global i1 false, align 1
@ethtool_get_stats.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ethtool_get_phy_stats.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ethtool_get_link_ksettings.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ethtool_set_link_ksettings.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__const.ethtool_get_fecparam.fecparam = private unnamed_addr constant %struct.ethtool_fecparam { i32 80, i32 0, i32 0, i32 0 }, align 4
@ethtool_get_fecparam.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@llvm.compiler.used = appending global [11 x ptr] [ptr @__ksymtab___ethtool_get_link_ksettings, ptr @__ksymtab_ethtool_convert_legacy_u32_to_link_mode, ptr @__ksymtab_ethtool_convert_link_mode_to_legacy_u32, ptr @__ksymtab_ethtool_intersect_link_masks, ptr @__ksymtab_ethtool_op_get_link, ptr @__ksymtab_ethtool_op_get_ts_info, ptr @__ksymtab_ethtool_rx_flow_rule_create, ptr @__ksymtab_ethtool_rx_flow_rule_destroy, ptr @__ksymtab_ethtool_sprintf, ptr @__ksymtab_ethtool_virtdev_set_link_ksettings, ptr @__ksymtab_netdev_rss_key_fill], section "llvm.metadata"
@switch.table.ethtool_rx_flow_rule_create = private unnamed_addr constant [6 x i8] c"\06\11\06\06\06\11", align 1

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @ethtool_op_get_link(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %3 = load volatile i32, ptr %2, align 4
  %4 = lshr i32 %3, 2
  %5 = and i32 %4, 1
  %6 = xor i32 %5, 1
  ret i32 %6
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @ethtool_op_get_ts_info(ptr nocapture readnone %0, ptr nocapture noundef writeonly %1) #1 {
  %3 = getelementptr inbounds %struct.ethtool_ts_info, ptr %1, i32 0, i32 1
  store i32 26, ptr %3, align 4
  %4 = getelementptr inbounds %struct.ethtool_ts_info, ptr %1, i32 0, i32 2
  store i32 -1, ptr %4, align 4
  ret i32 0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ethtool_intersect_link_masks(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %1, i32 0, i32 1
  %4 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %3, align 4
  %6 = load i32, ptr %4, align 4
  %7 = and i32 %6, %5
  store i32 %7, ptr %4, align 4
  %8 = getelementptr %struct.ethtool_link_ksettings, ptr %1, i32 0, i32 1, i32 1, i32 0
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr %struct.ethtool_link_ksettings, ptr %0, i32 0, i32 1, i32 1, i32 0
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, %9
  store i32 %12, ptr %10, align 4
  %13 = getelementptr %struct.ethtool_link_ksettings, ptr %1, i32 0, i32 1, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr %struct.ethtool_link_ksettings, ptr %0, i32 0, i32 1, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, %14
  store i32 %17, ptr %15, align 4
  %18 = getelementptr %struct.ethtool_link_ksettings, ptr %1, i32 0, i32 1, i32 1, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr %struct.ethtool_link_ksettings, ptr %0, i32 0, i32 1, i32 1, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, %19
  store i32 %22, ptr %20, align 4
  %23 = getelementptr %struct.ethtool_link_ksettings, ptr %1, i32 0, i32 1, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr %struct.ethtool_link_ksettings, ptr %0, i32 0, i32 1, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, %24
  store i32 %27, ptr %25, align 4
  %28 = getelementptr %struct.ethtool_link_ksettings, ptr %1, i32 0, i32 1, i32 1, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr %struct.ethtool_link_ksettings, ptr %0, i32 0, i32 1, i32 1, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, %29
  store i32 %32, ptr %30, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @ethtool_convert_legacy_u32_to_link_mode(ptr nocapture noundef writeonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds i8, ptr %0, i32 4
  store i64 0, ptr %3, align 4
  store i32 %1, ptr %0, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @ethtool_convert_link_mode_to_legacy_u32(ptr nocapture noundef writeonly %0, ptr noundef %1) #5 {
  %3 = alloca [3 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #20
  %4 = getelementptr inbounds i8, ptr %3, i32 4
  store i64 0, ptr %4, align 4
  store i32 -1, ptr %3, align 4
  call void @__bitmap_complement(ptr noundef nonnull %3, ptr noundef nonnull %3, i32 noundef 92) #20
  %5 = call i32 @__bitmap_intersects(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 92) #20
  %6 = icmp eq i32 %5, 0
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #20
  %7 = load i32, ptr %1, align 4
  store i32 %7, ptr %0, align 4
  ret i1 %6
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__ethtool_get_link_ksettings(ptr noundef %0, ptr noundef %1) #5 {
  %3 = tail call i32 @rtnl_is_locked() #20
  %4 = icmp eq i32 %3, 0
  %5 = load i1, ptr @__ethtool_get_link_ksettings.__already_done, align 1
  %6 = xor i1 %5, true
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %9, !prof !9

8:                                                ; preds = %2
  store i1 true, ptr @__ethtool_get_link_ksettings.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 455, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 455) #20
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 42
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.ethtool_ops, ptr %11, i32 0, i32 56
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %9
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(88) %1, i8 0, i32 88, i1 false)
  %16 = load ptr, ptr %10, align 8
  %17 = getelementptr inbounds %struct.ethtool_ops, ptr %16, i32 0, i32 56
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 %18(ptr noundef %0, ptr noundef %1) #20
  br label %20

20:                                               ; preds = %15, %9
  %21 = phi i32 [ %19, %15 ], [ -95, %9 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @ethtool_virtdev_validate_cmd(ptr noundef %0) local_unnamed_addr #5 {
  %2 = alloca %struct.ethtool_link_settings, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #20
  %3 = getelementptr inbounds i8, ptr %2, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %3, i8 0, i32 40, i1 false)
  %4 = getelementptr inbounds %struct.ethtool_link_settings, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ethtool_link_settings, ptr %2, i32 0, i32 1
  store i32 %5, ptr %6, align 4
  %7 = getelementptr inbounds %struct.ethtool_link_settings, ptr %2, i32 0, i32 3
  store i8 -1, ptr %7, align 1
  %8 = getelementptr inbounds %struct.ethtool_link_settings, ptr %0, i32 0, i32 2
  %9 = load i8, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ethtool_link_settings, ptr %2, i32 0, i32 2
  store i8 %9, ptr %10, align 4
  %11 = load i32, ptr %0, align 4
  store i32 %11, ptr %2, align 4
  %12 = getelementptr inbounds %struct.ethtool_link_settings, ptr %0, i32 0, i32 9
  %13 = load i8, ptr %12, align 1
  %14 = getelementptr inbounds %struct.ethtool_link_settings, ptr %2, i32 0, i32 9
  store i8 %13, ptr %14, align 1
  %15 = call i32 @bcmp(ptr noundef nonnull dereferenceable(48) %2, ptr noundef dereferenceable(48) %0, i32 48)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %0, i32 0, i32 1
  %19 = tail call i32 @_find_first_bit_le(ptr noundef %18, i32 noundef 92) #20
  %20 = icmp eq i32 %19, 92
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %0, i32 0, i32 1, i32 2
  %23 = tail call i32 @_find_first_bit_le(ptr noundef %22, i32 noundef 92) #20
  %24 = icmp eq i32 %23, 92
  br label %25

25:                                               ; preds = %21, %17, %1
  %26 = phi i1 [ false, %17 ], [ false, %1 ], [ %24, %21 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #20
  ret i1 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ethtool_virtdev_set_link_ksettings(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #5 {
  %5 = alloca %struct.ethtool_link_settings, align 4
  %6 = getelementptr inbounds %struct.ethtool_link_settings, ptr %1, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ethtool_link_settings, ptr %1, i32 0, i32 2
  %9 = load i8, ptr %8, align 4
  %10 = icmp slt i32 %7, -1
  br i1 %10, label %32, label %11

11:                                               ; preds = %4
  switch i8 %9, label %32 [
    i8 0, label %12
    i8 1, label %12
    i8 -1, label %12
  ]

12:                                               ; preds = %11, %11, %11
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #20
  %13 = getelementptr inbounds i8, ptr %5, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %13, i8 0, i32 40, i1 false) #20
  %14 = getelementptr inbounds %struct.ethtool_link_settings, ptr %5, i32 0, i32 1
  store i32 %7, ptr %14, align 4
  %15 = getelementptr inbounds %struct.ethtool_link_settings, ptr %5, i32 0, i32 3
  store i8 -1, ptr %15, align 1
  store i8 %9, ptr %13, align 4
  %16 = load i32, ptr %1, align 4
  store i32 %16, ptr %5, align 4
  %17 = getelementptr inbounds %struct.ethtool_link_settings, ptr %1, i32 0, i32 9
  %18 = load i8, ptr %17, align 1
  %19 = getelementptr inbounds %struct.ethtool_link_settings, ptr %5, i32 0, i32 9
  store i8 %18, ptr %19, align 1
  %20 = call i32 @bcmp(ptr noundef nonnull dereferenceable(48) %5, ptr noundef dereferenceable(48) %1, i32 48) #20
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %1, i32 0, i32 1
  %24 = tail call i32 @_find_first_bit_le(ptr noundef %23, i32 noundef 92) #20
  %25 = icmp eq i32 %24, 92
  br i1 %25, label %27, label %26

26:                                               ; preds = %22, %12
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #20
  br label %32

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %1, i32 0, i32 1, i32 2
  %29 = tail call i32 @_find_first_bit_le(ptr noundef %28, i32 noundef 92) #20
  %30 = icmp eq i32 %29, 92
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #20
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 %7, ptr %2, align 4
  store i8 %9, ptr %3, align 1
  br label %32

32:                                               ; preds = %31, %27, %26, %11, %4
  %33 = phi i32 [ 0, %31 ], [ -22, %27 ], [ -22, %4 ], [ -22, %26 ], [ -22, %11 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @netdev_rss_key_fill(ptr nocapture noundef writeonly %0, i32 noundef %1) #5 {
  %3 = alloca i32, align 4
  %4 = icmp ugt i32 %1, 52
  br i1 %4, label %5, label %6, !prof !9

5:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ethtool/ioctl.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1062, 0\0A.popsection", ""() #20, !srcloc !10
  unreachable

6:                                                ; preds = %2
  %7 = load volatile i32, ptr @netdev_rss_key_fill.___once_key, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %13, !prof !9

9:                                                ; preds = %6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #20
  store i32 0, ptr %3, align 4, !annotation !11
  %10 = call zeroext i1 @__do_once_start(ptr noundef nonnull @netdev_rss_key_fill.___done, ptr noundef nonnull %3) #20
  br i1 %10, label %11, label %12, !prof !9

11:                                               ; preds = %9
  call void @get_random_bytes(ptr noundef nonnull @netdev_rss_key, i32 noundef 52) #20
  call void @__do_once_done(ptr noundef nonnull @netdev_rss_key_fill.___done, ptr noundef nonnull @netdev_rss_key_fill.___once_key, ptr noundef nonnull %3, ptr noundef null) #20
  br label %12

12:                                               ; preds = %11, %9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #20
  br label %13

13:                                               ; preds = %12, %6
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %0, ptr nonnull align 1 @netdev_rss_key, i32 %1, i1 false)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__do_once_start(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__do_once_done(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ethtool_sprintf(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ...) #9 {
  %3 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #20
  store i32 0, ptr %3, align 4, !annotation !11
  call void @llvm.va_start(ptr nonnull %3)
  %4 = load ptr, ptr %0, align 4
  %5 = load i32, ptr %3, align 4
  %6 = insertvalue [1 x i32] poison, i32 %5, 0
  %7 = call i32 @vsnprintf(ptr noundef %4, i32 noundef 32, ptr noundef %1, [1 x i32] %6)
  call void @llvm.va_end(ptr nonnull %3)
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr i8, ptr %8, i32 32
  store ptr %9, ptr %0, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #20
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #10

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @vsnprintf(ptr nocapture noundef, i32 noundef, ptr nocapture noundef readonly, [1 x i32] noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #10

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ethtool_get_module_info_call(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 42
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 121
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %28

10:                                               ; preds = %2
  %11 = icmp eq ptr %6, null
  br i1 %11, label %22, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.phy_device, ptr %6, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.phy_driver, ptr %14, i32 0, i32 27
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = tail call i32 %18(ptr noundef nonnull %6, ptr noundef %1) #20
  br label %28

22:                                               ; preds = %16, %12, %10
  %23 = getelementptr inbounds %struct.ethtool_ops, ptr %4, i32 0, i32 48
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = tail call i32 %24(ptr noundef %0, ptr noundef %1) #20
  br label %28

28:                                               ; preds = %26, %22, %20, %2
  %29 = phi i32 [ %21, %20 ], [ %27, %26 ], [ -95, %22 ], [ -95, %2 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ethtool_get_module_eeprom_call(ptr noundef %0, ptr noundef %1, ptr noundef %2) #5 {
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 42
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 121
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %29

11:                                               ; preds = %3
  %12 = icmp eq ptr %7, null
  br i1 %12, label %23, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.phy_device, ptr %7, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.phy_driver, ptr %15, i32 0, i32 28
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = tail call i32 %19(ptr noundef nonnull %7, ptr noundef %1, ptr noundef %2) #20
  br label %29

23:                                               ; preds = %17, %13, %11
  %24 = getelementptr inbounds %struct.ethtool_ops, ptr %5, i32 0, i32 49
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = tail call i32 %25(ptr noundef %0, ptr noundef %1, ptr noundef %2) #20
  br label %29

29:                                               ; preds = %27, %23, %21, %3
  %30 = phi i32 [ %22, %21 ], [ %28, %27 ], [ -95, %23 ], [ -95, %3 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dev_ethtool(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 {
  %4 = alloca %struct.ethtool_value, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #20
  store i32 0, ptr %6, align 4, !annotation !11
  %7 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 4, i32 -1090519040) #21, !srcloc !12
  %8 = extractvalue { i32, i32 } %7, 0
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %18, !prof !13

10:                                               ; preds = %3
  %11 = tail call ptr @llvm.thread.pointer() #20
  %12 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %13 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %12) #18, !srcloc !14
  %14 = and i32 %13, -13
  %15 = or i32 %14, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #20, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %16 = call i32 @arm_copy_from_user(ptr noundef nonnull %6, ptr noundef %2, i32 noundef 4) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18, !prof !13

18:                                               ; preds = %10, %3
  %19 = phi i32 [ %16, %10 ], [ 4, %3 ]
  %20 = sub i32 4, %19
  %21 = getelementptr i8, ptr %6, i32 %20
  call void @llvm.memset.p0.i32(ptr align 1 %21, i8 0, i32 %19, i1 false) #20
  br label %314

22:                                               ; preds = %10
  %23 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %24 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 3520, i32 noundef 200) #22
  %25 = icmp eq ptr %24, null
  br i1 %25, label %314, label %26

26:                                               ; preds = %22
  %27 = load i32, ptr %6, align 4
  %28 = icmp eq i32 %27, 51
  br i1 %28, label %29, label %46

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.ethtool_devlink_compat, ptr %24, i32 0, i32 1
  %31 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 136, i32 -1090519040) #21, !srcloc !12
  %32 = extractvalue { i32, i32 } %31, 0
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %40, !prof !13

34:                                               ; preds = %29
  %35 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %12) #18, !srcloc !14
  %36 = and i32 %35, -13
  %37 = or i32 %36, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %37) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %38 = call i32 @arm_copy_from_user(ptr noundef %30, ptr noundef %2, i32 noundef 136) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %35) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %44, label %40, !prof !13

40:                                               ; preds = %34, %29
  %41 = phi i32 [ %38, %34 ], [ 136, %29 ]
  %42 = sub i32 136, %41
  %43 = getelementptr i8, ptr %30, i32 %42
  call void @llvm.memset.p0.i32(ptr align 1 %43, i8 0, i32 %41, i1 false) #20
  br label %307

44:                                               ; preds = %34
  %45 = getelementptr %struct.ethtool_devlink_compat, ptr %24, i32 0, i32 1, i32 0, i32 5, i32 3
  store i8 0, ptr %45, align 1
  br label %46

46:                                               ; preds = %44, %26
  call void @rtnl_lock() #20
  %47 = load i32, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  store i32 0, ptr %5, align 4, !annotation !11
  %48 = call ptr @__dev_get_by_name(ptr noundef %0, ptr noundef %1) #20
  %49 = icmp eq ptr %48, null
  br i1 %49, label %278, label %50

50:                                               ; preds = %46
  %51 = icmp eq i32 %47, 75
  br i1 %51, label %52, label %67

52:                                               ; preds = %50
  %53 = getelementptr i8, ptr %2, i32 4
  %54 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %53, i32 4, i32 -1090519040) #21, !srcloc !12
  %55 = extractvalue { i32, i32 } %54, 0
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %63, !prof !13

57:                                               ; preds = %52
  %58 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %12) #18, !srcloc !14
  %59 = and i32 %58, -13
  %60 = or i32 %59, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %60) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %61 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %53, i32 noundef 4) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %58) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %68, label %63, !prof !13

63:                                               ; preds = %57, %52
  %64 = phi i32 [ %61, %57 ], [ 4, %52 ]
  %65 = sub i32 4, %64
  %66 = getelementptr i8, ptr %5, i32 %65
  call void @llvm.memset.p0.i32(ptr align 1 %66, i8 0, i32 %64, i1 false) #20
  br label %278

67:                                               ; preds = %50
  store i32 %47, ptr %5, align 4
  br label %70

68:                                               ; preds = %57
  %69 = load i32, ptr %5, align 4
  br label %70

70:                                               ; preds = %68, %67
  %71 = phi i32 [ %69, %68 ], [ %47, %67 ]
  switch i32 %71, label %72 [
    i32 1, label %76
    i32 3, label %76
    i32 7, label %76
    i32 10, label %76
    i32 14, label %76
    i32 16, label %76
    i32 18, label %76
    i32 20, label %76
    i32 22, label %76
    i32 24, label %76
    i32 55, label %76
    i32 27, label %76
    i32 29, label %76
    i32 74, label %76
    i32 30, label %76
    i32 32, label %76
    i32 33, label %76
    i32 35, label %76
    i32 43, label %76
    i32 37, label %76
    i32 39, label %76
    i32 41, label %76
    i32 45, label %76
    i32 46, label %76
    i32 47, label %76
    i32 48, label %76
    i32 56, label %76
    i32 70, label %76
    i32 58, label %76
    i32 60, label %76
    i32 65, label %76
    i32 68, label %76
    i32 72, label %76
    i32 78, label %76
    i32 76, label %76
    i32 80, label %76
  ]

72:                                               ; preds = %70
  %73 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 11
  %74 = load ptr, ptr %73, align 4
  %75 = call zeroext i1 @ns_capable(ptr noundef %74, i32 noundef 12) #20
  br i1 %75, label %76, label %278

76:                                               ; preds = %72, %70, %70, %70, %70, %70, %70, %70, %70, %70, %70, %70, %70, %70, %70, %70, %70, %70, %70, %70, %70, %70, %70, %70, %70, %70, %70, %70, %70, %70, %70, %70, %70, %70, %70, %70, %70
  %77 = getelementptr inbounds %struct.net_device, ptr %48, i32 0, i32 111, i32 1
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %82, label %80

80:                                               ; preds = %76
  %81 = call i32 @__pm_runtime_resume(ptr noundef nonnull %78, i32 noundef 4) #20
  br label %82

82:                                               ; preds = %80, %76
  %83 = getelementptr inbounds %struct.net_device, ptr %48, i32 0, i32 6
  %84 = load volatile i32, ptr %83, align 4
  %85 = and i32 %84, 2
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %272, label %87

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.net_device, ptr %48, i32 0, i32 42
  %89 = load ptr, ptr %88, align 8
  %90 = getelementptr inbounds %struct.ethtool_ops, ptr %89, i32 0, i32 27
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %96, label %93

93:                                               ; preds = %87
  %94 = call i32 %91(ptr noundef nonnull %48) #20
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %272, label %96

96:                                               ; preds = %93, %87
  %97 = getelementptr inbounds %struct.net_device, ptr %48, i32 0, i32 23
  %98 = load i64, ptr %97, align 16
  switch i32 %47, label %261 [
    i32 1, label %99
    i32 2, label %101
    i32 3, label %103
    i32 4, label %105
    i32 5, label %107
    i32 6, label %109
    i32 7, label %111
    i32 8, label %116
    i32 68, label %123
    i32 69, label %125
    i32 9, label %127
    i32 10, label %134
    i32 11, label %136
    i32 12, label %138
    i32 14, label %140
    i32 15, label %142
    i32 16, label %144
    i32 17, label %146
    i32 18, label %148
    i32 19, label %150
    i32 26, label %152
    i32 27, label %154
    i32 28, label %156
    i32 29, label %158
    i32 32, label %160
    i32 37, label %162
    i32 38, label %184
    i32 39, label %186
    i32 40, label %193
    i32 41, label %198
    i32 45, label %198
    i32 46, label %198
    i32 47, label %198
    i32 48, label %198
    i32 42, label %200
    i32 49, label %200
    i32 50, label %200
    i32 51, label %202
    i32 52, label %204
    i32 55, label %206
    i32 56, label %208
    i32 57, label %210
    i32 70, label %212
    i32 71, label %214
    i32 58, label %216
    i32 59, label %218
    i32 22, label %220
    i32 20, label %220
    i32 24, label %220
    i32 30, label %220
    i32 35, label %220
    i32 43, label %220
    i32 23, label %222
    i32 21, label %222
    i32 25, label %222
    i32 31, label %222
    i32 36, label %222
    i32 44, label %222
    i32 60, label %224
    i32 61, label %226
    i32 62, label %228
    i32 63, label %230
    i32 64, label %232
    i32 65, label %234
    i32 66, label %236
    i32 67, label %238
    i32 72, label %240
    i32 73, label %242
    i32 74, label %244
    i32 75, label %246
    i32 76, label %249
    i32 77, label %251
    i32 78, label %253
    i32 79, label %255
    i32 80, label %257
    i32 81, label %259
  ]

99:                                               ; preds = %96
  %100 = call fastcc i32 @ethtool_get_settings(ptr noundef nonnull %48, ptr noundef %2) #20
  br label %261

101:                                              ; preds = %96
  %102 = call fastcc i32 @ethtool_set_settings(ptr noundef nonnull %48, ptr noundef %2) #20
  br label %261

103:                                              ; preds = %96
  %104 = call fastcc i32 @ethtool_get_drvinfo(ptr noundef nonnull %48, ptr noundef nonnull %24) #20
  br label %261

105:                                              ; preds = %96
  %106 = call fastcc i32 @ethtool_get_regs(ptr noundef nonnull %48, ptr noundef %2) #20
  br label %261

107:                                              ; preds = %96
  %108 = call fastcc i32 @ethtool_get_wol(ptr noundef nonnull %48, ptr noundef %2) #20
  br label %261

109:                                              ; preds = %96
  %110 = call fastcc i32 @ethtool_set_wol(ptr noundef nonnull %48, ptr noundef %2) #20
  br label %261

111:                                              ; preds = %96
  %112 = load ptr, ptr %88, align 8
  %113 = getelementptr inbounds %struct.ethtool_ops, ptr %112, i32 0, i32 8
  %114 = load ptr, ptr %113, align 4
  %115 = call fastcc i32 @ethtool_get_value(ptr noundef nonnull %48, ptr noundef %2, i32 noundef 7, ptr noundef %114) #20
  br label %261

116:                                              ; preds = %96
  %117 = load ptr, ptr %88, align 8
  %118 = getelementptr inbounds %struct.ethtool_ops, ptr %117, i32 0, i32 9
  %119 = load ptr, ptr %118, align 4
  %120 = call fastcc i32 @ethtool_set_value_void(ptr noundef nonnull %48, ptr noundef %2, ptr noundef %119) #20
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %261

122:                                              ; preds = %116
  call void @ethtool_notify(ptr noundef nonnull %48, i32 noundef 8, ptr noundef null) #20
  br label %261

123:                                              ; preds = %96
  %124 = call fastcc i32 @ethtool_get_eee(ptr noundef nonnull %48, ptr noundef %2) #20
  br label %261

125:                                              ; preds = %96
  %126 = call fastcc i32 @ethtool_set_eee(ptr noundef nonnull %48, ptr noundef %2) #20
  br label %261

127:                                              ; preds = %96
  %128 = load ptr, ptr %88, align 8
  %129 = getelementptr inbounds %struct.ethtool_ops, ptr %128, i32 0, i32 10
  %130 = load ptr, ptr %129, align 4
  %131 = icmp eq ptr %130, null
  br i1 %131, label %261, label %132

132:                                              ; preds = %127
  %133 = call i32 %130(ptr noundef nonnull %48) #20
  br label %261

134:                                              ; preds = %96
  %135 = call fastcc i32 @ethtool_get_link(ptr noundef nonnull %48, ptr noundef %2) #20
  br label %261

136:                                              ; preds = %96
  %137 = call fastcc i32 @ethtool_get_eeprom(ptr noundef nonnull %48, ptr noundef %2) #20
  br label %261

138:                                              ; preds = %96
  %139 = call fastcc i32 @ethtool_set_eeprom(ptr noundef nonnull %48, ptr noundef %2) #20
  br label %261

140:                                              ; preds = %96
  %141 = call fastcc i32 @ethtool_get_coalesce(ptr noundef nonnull %48, ptr noundef %2) #20
  br label %261

142:                                              ; preds = %96
  %143 = call fastcc i32 @ethtool_set_coalesce(ptr noundef nonnull %48, ptr noundef %2) #20
  br label %261

144:                                              ; preds = %96
  %145 = call fastcc i32 @ethtool_get_ringparam(ptr noundef nonnull %48, ptr noundef %2) #20
  br label %261

146:                                              ; preds = %96
  %147 = call fastcc i32 @ethtool_set_ringparam(ptr noundef nonnull %48, ptr noundef %2) #20
  br label %261

148:                                              ; preds = %96
  %149 = call fastcc i32 @ethtool_get_pauseparam(ptr noundef nonnull %48, ptr noundef %2) #20
  br label %261

150:                                              ; preds = %96
  %151 = call fastcc i32 @ethtool_set_pauseparam(ptr noundef nonnull %48, ptr noundef %2) #20
  br label %261

152:                                              ; preds = %96
  %153 = call fastcc i32 @ethtool_self_test(ptr noundef nonnull %48, ptr noundef %2) #20
  br label %261

154:                                              ; preds = %96
  %155 = call fastcc i32 @ethtool_get_strings(ptr noundef nonnull %48, ptr noundef %2) #20
  br label %261

156:                                              ; preds = %96
  %157 = call fastcc i32 @ethtool_phys_id(ptr noundef nonnull %48, ptr noundef %2) #20
  br label %261

158:                                              ; preds = %96
  %159 = call fastcc i32 @ethtool_get_stats(ptr noundef nonnull %48, ptr noundef %2) #20
  br label %261

160:                                              ; preds = %96
  %161 = call fastcc i32 @ethtool_get_perm_addr(ptr noundef nonnull %48, ptr noundef %2) #20
  br label %261

162:                                              ; preds = %96
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  store i32 37, ptr %4, align 8
  %163 = getelementptr inbounds %struct.ethtool_value, ptr %4, i32 0, i32 1
  %164 = trunc i64 %98 to i32
  %165 = and i32 %164, 33152
  %166 = lshr i64 %98, 11
  %167 = trunc i64 %166 to i32
  %168 = and i32 %167, 134217728
  %169 = or i32 %168, %165
  %170 = and i32 %167, 268435456
  %171 = or i32 %169, %170
  store i32 %171, ptr %163, align 4
  %172 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 8, i32 -1090519040) #21, !srcloc !17
  %173 = extractvalue { i32, i32 } %172, 0
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %182

175:                                              ; preds = %162
  %176 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %12) #18, !srcloc !14
  %177 = and i32 %176, -13
  %178 = or i32 %177, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %178) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %179 = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %4, i32 noundef 8) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %176) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %180 = icmp eq i32 %179, 0
  %181 = select i1 %180, i32 0, i32 -14
  br label %182

182:                                              ; preds = %175, %162
  %183 = phi i32 [ -14, %162 ], [ %181, %175 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  br label %261

184:                                              ; preds = %96
  %185 = call fastcc i32 @ethtool_set_value(ptr noundef nonnull %48, ptr noundef %2, ptr noundef nonnull @__ethtool_set_flags) #20
  br label %261

186:                                              ; preds = %96
  %187 = load ptr, ptr %88, align 8
  %188 = getelementptr inbounds %struct.ethtool_ops, ptr %187, i32 0, i32 29
  %189 = load ptr, ptr %188, align 4
  %190 = call fastcc i32 @ethtool_get_value(ptr noundef nonnull %48, ptr noundef %2, i32 noundef 39, ptr noundef %189) #20
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %261

192:                                              ; preds = %186
  call void @ethtool_notify(ptr noundef nonnull %48, i32 noundef 15, ptr noundef null) #20
  br label %261

193:                                              ; preds = %96
  %194 = load ptr, ptr %88, align 8
  %195 = getelementptr inbounds %struct.ethtool_ops, ptr %194, i32 0, i32 30
  %196 = load ptr, ptr %195, align 4
  %197 = call fastcc i32 @ethtool_set_value(ptr noundef nonnull %48, ptr noundef %2, ptr noundef %196) #20
  br label %261

198:                                              ; preds = %96, %96, %96, %96, %96
  %199 = call fastcc i32 @ethtool_get_rxnfc(ptr noundef nonnull %48, i32 noundef %47, ptr noundef %2) #20
  br label %261

200:                                              ; preds = %96, %96, %96
  %201 = call fastcc i32 @ethtool_set_rxnfc(ptr noundef nonnull %48, i32 noundef %47, ptr noundef %2) #20
  br label %261

202:                                              ; preds = %96
  %203 = call fastcc i32 @ethtool_flash_device(ptr noundef nonnull %48, ptr noundef nonnull %24) #20
  br label %261

204:                                              ; preds = %96
  %205 = call fastcc i32 @ethtool_reset(ptr noundef nonnull %48, ptr noundef %2) #20
  br label %261

206:                                              ; preds = %96
  %207 = call fastcc i32 @ethtool_get_sset_info(ptr noundef nonnull %48, ptr noundef %2) #20
  br label %261

208:                                              ; preds = %96
  %209 = call fastcc i32 @ethtool_get_rxfh_indir(ptr noundef nonnull %48, ptr noundef %2) #20
  br label %261

210:                                              ; preds = %96
  %211 = call fastcc i32 @ethtool_set_rxfh_indir(ptr noundef nonnull %48, ptr noundef %2) #20
  br label %261

212:                                              ; preds = %96
  %213 = call fastcc i32 @ethtool_get_rxfh(ptr noundef nonnull %48, ptr noundef %2) #20
  br label %261

214:                                              ; preds = %96
  %215 = call fastcc i32 @ethtool_set_rxfh(ptr noundef nonnull %48, ptr noundef %2) #20
  br label %261

216:                                              ; preds = %96
  %217 = call fastcc i32 @ethtool_get_features(ptr noundef nonnull %48, ptr noundef %2) #20
  br label %261

218:                                              ; preds = %96
  %219 = call fastcc i32 @ethtool_set_features(ptr noundef nonnull %48, ptr noundef %2) #20
  br label %261

220:                                              ; preds = %96, %96, %96, %96, %96, %96
  %221 = call fastcc i32 @ethtool_get_one_feature(ptr noundef nonnull %48, ptr noundef %2, i32 noundef %47) #20
  br label %261

222:                                              ; preds = %96, %96, %96, %96, %96, %96
  %223 = call fastcc i32 @ethtool_set_one_feature(ptr noundef nonnull %48, ptr noundef %2, i32 noundef %47) #20
  br label %261

224:                                              ; preds = %96
  %225 = call fastcc i32 @ethtool_get_channels(ptr noundef nonnull %48, ptr noundef %2) #20
  br label %261

226:                                              ; preds = %96
  %227 = call fastcc i32 @ethtool_set_channels(ptr noundef nonnull %48, ptr noundef %2) #20
  br label %261

228:                                              ; preds = %96
  %229 = call fastcc i32 @ethtool_set_dump(ptr noundef nonnull %48, ptr noundef %2) #20
  br label %261

230:                                              ; preds = %96
  %231 = call fastcc i32 @ethtool_get_dump_flag(ptr noundef nonnull %48, ptr noundef %2) #20
  br label %261

232:                                              ; preds = %96
  %233 = call fastcc i32 @ethtool_get_dump_data(ptr noundef nonnull %48, ptr noundef %2) #20
  br label %261

234:                                              ; preds = %96
  %235 = call fastcc i32 @ethtool_get_ts_info(ptr noundef nonnull %48, ptr noundef %2) #20
  br label %261

236:                                              ; preds = %96
  %237 = call fastcc i32 @ethtool_get_module_info(ptr noundef nonnull %48, ptr noundef %2) #20
  br label %261

238:                                              ; preds = %96
  %239 = call fastcc i32 @ethtool_get_module_eeprom(ptr noundef nonnull %48, ptr noundef %2) #20
  br label %261

240:                                              ; preds = %96
  %241 = call fastcc i32 @ethtool_get_tunable(ptr noundef nonnull %48, ptr noundef %2) #20
  br label %261

242:                                              ; preds = %96
  %243 = call fastcc i32 @ethtool_set_tunable(ptr noundef nonnull %48, ptr noundef %2) #20
  br label %261

244:                                              ; preds = %96
  %245 = call fastcc i32 @ethtool_get_phy_stats(ptr noundef nonnull %48, ptr noundef %2) #20
  br label %261

246:                                              ; preds = %96
  %247 = load i32, ptr %5, align 4
  %248 = call fastcc i32 @ethtool_set_per_queue(ptr noundef nonnull %48, ptr noundef %2, i32 noundef %247) #20
  br label %261

249:                                              ; preds = %96
  %250 = call fastcc i32 @ethtool_get_link_ksettings(ptr noundef nonnull %48, ptr noundef %2) #20
  br label %261

251:                                              ; preds = %96
  %252 = call fastcc i32 @ethtool_set_link_ksettings(ptr noundef nonnull %48, ptr noundef %2) #20
  br label %261

253:                                              ; preds = %96
  %254 = call fastcc i32 @get_phy_tunable(ptr noundef nonnull %48, ptr noundef %2) #20
  br label %261

255:                                              ; preds = %96
  %256 = call fastcc i32 @set_phy_tunable(ptr noundef nonnull %48, ptr noundef %2) #20
  br label %261

257:                                              ; preds = %96
  %258 = call fastcc i32 @ethtool_get_fecparam(ptr noundef nonnull %48, ptr noundef %2) #20
  br label %261

259:                                              ; preds = %96
  %260 = call fastcc i32 @ethtool_set_fecparam(ptr noundef nonnull %48, ptr noundef %2) #20
  br label %261

261:                                              ; preds = %259, %257, %255, %253, %251, %249, %246, %244, %242, %240, %238, %236, %234, %232, %230, %228, %226, %224, %222, %220, %218, %216, %214, %212, %210, %208, %206, %204, %202, %200, %198, %193, %192, %186, %184, %182, %160, %158, %156, %154, %152, %150, %148, %146, %144, %142, %140, %138, %136, %134, %132, %127, %125, %123, %122, %116, %111, %109, %107, %105, %103, %101, %99, %96
  %262 = phi i32 [ %260, %259 ], [ %258, %257 ], [ %256, %255 ], [ %254, %253 ], [ %252, %251 ], [ %250, %249 ], [ %248, %246 ], [ %245, %244 ], [ %243, %242 ], [ %241, %240 ], [ %239, %238 ], [ %237, %236 ], [ %235, %234 ], [ %233, %232 ], [ %231, %230 ], [ %229, %228 ], [ %227, %226 ], [ %225, %224 ], [ %223, %222 ], [ %221, %220 ], [ %219, %218 ], [ %217, %216 ], [ %215, %214 ], [ %213, %212 ], [ %211, %210 ], [ %209, %208 ], [ %207, %206 ], [ %205, %204 ], [ %203, %202 ], [ %201, %200 ], [ %199, %198 ], [ %197, %193 ], [ %190, %186 ], [ 0, %192 ], [ %185, %184 ], [ %183, %182 ], [ %161, %160 ], [ %159, %158 ], [ %157, %156 ], [ %155, %154 ], [ %153, %152 ], [ %151, %150 ], [ %149, %148 ], [ %147, %146 ], [ %145, %144 ], [ %143, %142 ], [ %141, %140 ], [ %139, %138 ], [ %137, %136 ], [ %135, %134 ], [ %126, %125 ], [ %124, %123 ], [ %120, %116 ], [ 0, %122 ], [ %115, %111 ], [ %110, %109 ], [ %108, %107 ], [ %106, %105 ], [ %104, %103 ], [ %102, %101 ], [ %100, %99 ], [ -95, %96 ], [ %133, %132 ], [ -95, %127 ]
  %263 = load ptr, ptr %88, align 8
  %264 = getelementptr inbounds %struct.ethtool_ops, ptr %263, i32 0, i32 28
  %265 = load ptr, ptr %264, align 4
  %266 = icmp eq ptr %265, null
  br i1 %266, label %268, label %267

267:                                              ; preds = %261
  call void %265(ptr noundef nonnull %48) #20
  br label %268

268:                                              ; preds = %267, %261
  %269 = load i64, ptr %97, align 16
  %270 = icmp eq i64 %98, %269
  br i1 %270, label %272, label %271

271:                                              ; preds = %268
  call void @netdev_features_change(ptr noundef nonnull %48) #20
  br label %272

272:                                              ; preds = %271, %268, %93, %82
  %273 = phi i32 [ %94, %93 ], [ %262, %271 ], [ %262, %268 ], [ -19, %82 ]
  %274 = load ptr, ptr %77, align 4
  %275 = icmp eq ptr %274, null
  br i1 %275, label %280, label %276

276:                                              ; preds = %272
  %277 = call i32 @__pm_runtime_idle(ptr noundef nonnull %274, i32 noundef 5) #20
  br label %280

278:                                              ; preds = %72, %63, %46
  %279 = phi i32 [ -14, %63 ], [ -1, %72 ], [ -19, %46 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  call void @rtnl_unlock() #20
  br label %307

280:                                              ; preds = %276, %272
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  call void @rtnl_unlock() #20
  %281 = icmp eq i32 %273, 0
  br i1 %281, label %282, label %307

282:                                              ; preds = %280
  %283 = load i32, ptr %6, align 4
  switch i32 %283, label %307 [
    i32 51, label %284
    i32 3, label %290
  ]

284:                                              ; preds = %282
  %285 = load ptr, ptr %24, align 8
  %286 = icmp eq ptr %285, null
  br i1 %286, label %312, label %287

287:                                              ; preds = %284
  %288 = getelementptr inbounds %struct.ethtool_devlink_compat, ptr %24, i32 0, i32 1, i32 0, i32 1, i32 4
  %289 = call i32 @devlink_compat_flash_update(ptr noundef nonnull %285, ptr noundef %288) #20
  br label %307

290:                                              ; preds = %282
  %291 = load ptr, ptr %24, align 8
  %292 = icmp eq ptr %291, null
  br i1 %292, label %295, label %293

293:                                              ; preds = %290
  %294 = getelementptr inbounds %struct.ethtool_devlink_compat, ptr %24, i32 0, i32 1, i32 0, i32 3
  call void @devlink_compat_running_version(ptr noundef nonnull %291, ptr noundef %294, i32 noundef 32) #20
  br label %295

295:                                              ; preds = %293, %290
  %296 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 196, i32 -1090519040) #21, !srcloc !17
  %297 = extractvalue { i32, i32 } %296, 0
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %299, label %307

299:                                              ; preds = %295
  %300 = getelementptr inbounds %struct.ethtool_devlink_compat, ptr %24, i32 0, i32 1
  %301 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %12) #18, !srcloc !14
  %302 = and i32 %301, -13
  %303 = or i32 %302, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %303) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %304 = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef %300, i32 noundef 196) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %301) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %305 = icmp eq i32 %304, 0
  %306 = select i1 %305, i32 0, i32 -14
  br label %307

307:                                              ; preds = %299, %295, %287, %282, %280, %278, %40
  %308 = phi i32 [ %279, %278 ], [ %289, %287 ], [ 0, %282 ], [ %273, %280 ], [ -14, %40 ], [ -14, %295 ], [ %306, %299 ]
  %309 = load ptr, ptr %24, align 8
  %310 = icmp eq ptr %309, null
  br i1 %310, label %312, label %311

311:                                              ; preds = %307
  call void @devlink_put(ptr noundef nonnull %309) #20
  br label %312

312:                                              ; preds = %311, %307, %284
  %313 = phi i32 [ %308, %311 ], [ %308, %307 ], [ 0, %284 ]
  call void @kfree(ptr noundef nonnull %24) #20
  br label %314

314:                                              ; preds = %312, %22, %18
  %315 = phi i32 [ %313, %312 ], [ -12, %22 ], [ -14, %18 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #20
  ret i32 %315
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_compat_flash_update(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_compat_running_version(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_put(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ethtool_rx_flow_rule_create(ptr nocapture noundef readonly %0) #5 {
  %2 = load ptr, ptr %0, align 4
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 184) #22
  %5 = icmp eq ptr %4, null
  br i1 %5, label %337, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @flow_rule_alloc(i32 noundef 1) #20
  store ptr %7, ptr %4, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  tail call void @kfree(ptr noundef nonnull %4) #20
  br label %337

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ethtool_rx_flow_rule, ptr %4, i32 0, i32 1
  store ptr %11, ptr %7, align 8
  %12 = getelementptr inbounds %struct.ethtool_rx_flow_rule, ptr %4, i32 31
  %13 = load ptr, ptr %4, align 8
  %14 = getelementptr inbounds %struct.flow_match, ptr %13, i32 0, i32 1
  store ptr %12, ptr %14, align 4
  %15 = getelementptr inbounds %struct.ethtool_rx_flow_rule, ptr %4, i32 16
  %16 = load ptr, ptr %4, align 8
  %17 = getelementptr inbounds %struct.flow_match, ptr %16, i32 0, i32 2
  store ptr %15, ptr %17, align 8
  store i16 -1, ptr %12, align 4
  %18 = load i32, ptr %2, align 8
  %19 = and i32 %18, 536870911
  switch i32 %19, label %217 [
    i32 18, label %20
    i32 1, label %68
    i32 2, label %68
    i32 5, label %144
    i32 6, label %144
  ]

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %2, i32 0, i32 1
  %22 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %2, i32 0, i32 3
  %23 = getelementptr inbounds %struct.ethhdr, ptr %22, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr %struct.ethhdr, ptr %22, i32 0, i32 1, i32 4
  %26 = load i16, ptr %25, align 2
  %27 = zext i16 %26 to i32
  %28 = or i32 %24, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %43, label %30

30:                                               ; preds = %20
  %31 = getelementptr inbounds %struct.ethtool_rx_flow_key, ptr %15, i32 0, i32 5
  %32 = getelementptr inbounds %struct.flow_dissector_key_eth_addrs, ptr %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.ethhdr, ptr %21, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  store i32 %34, ptr %32, align 4
  %35 = getelementptr %struct.ethhdr, ptr %21, i32 0, i32 1, i32 4
  %36 = load i16, ptr %35, align 2
  %37 = getelementptr %struct.flow_dissector_key_eth_addrs, ptr %31, i32 0, i32 1, i32 4
  store i16 %36, ptr %37, align 8
  %38 = getelementptr inbounds %struct.ethtool_rx_flow_key, ptr %12, i32 0, i32 5
  %39 = getelementptr inbounds %struct.flow_dissector_key_eth_addrs, ptr %38, i32 0, i32 1
  %40 = load i32, ptr %23, align 4
  store i32 %40, ptr %39, align 8
  %41 = load i16, ptr %25, align 2
  %42 = getelementptr %struct.flow_dissector_key_eth_addrs, ptr %38, i32 0, i32 1, i32 4
  store i16 %41, ptr %42, align 4
  br label %43

43:                                               ; preds = %30, %20
  %44 = load i32, ptr %22, align 4
  %45 = getelementptr %struct.ethtool_rx_flow_spec, ptr %2, i32 0, i32 3, i32 0, i32 0, i32 1
  %46 = load i16, ptr %45, align 2
  %47 = zext i16 %46 to i32
  %48 = or i32 %44, %47
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %60, label %50

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.ethtool_rx_flow_key, ptr %15, i32 0, i32 5
  %52 = load i32, ptr %21, align 4
  store i32 %52, ptr %51, align 4
  %53 = getelementptr %struct.ethtool_rx_flow_spec, ptr %2, i32 0, i32 1, i32 0, i32 0, i32 1
  %54 = load i16, ptr %53, align 2
  %55 = getelementptr i8, ptr %51, i32 4
  store i16 %54, ptr %55, align 2
  %56 = getelementptr inbounds %struct.ethtool_rx_flow_key, ptr %12, i32 0, i32 5
  %57 = load i32, ptr %22, align 4
  store i32 %57, ptr %56, align 4
  %58 = load i16, ptr %45, align 2
  %59 = getelementptr i8, ptr %56, i32 4
  store i16 %58, ptr %59, align 2
  br label %60

60:                                               ; preds = %50, %43
  %61 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %2, i32 0, i32 3, i32 0, i32 0, i32 3
  %62 = load i16, ptr %61, align 1
  %63 = icmp eq i16 %62, 0
  br i1 %63, label %219, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %2, i32 0, i32 1, i32 0, i32 0, i32 3
  %66 = load i16, ptr %65, align 1
  store i16 %66, ptr %15, align 8
  %67 = load i16, ptr %61, align 1
  store i16 %67, ptr %12, align 4
  br label %219

68:                                               ; preds = %10, %10
  store i16 8, ptr %15, align 8
  %69 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %2, i32 0, i32 1
  %70 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %2, i32 0, i32 3
  %71 = load i32, ptr %70, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %68
  %74 = load i32, ptr %69, align 4
  %75 = getelementptr inbounds %struct.ethtool_rx_flow_rule, ptr %4, i32 17
  store i32 %74, ptr %75, align 4
  %76 = load i32, ptr %70, align 4
  %77 = getelementptr inbounds %struct.ethtool_rx_flow_rule, ptr %4, i32 32
  store i32 %76, ptr %77, align 8
  br label %78

78:                                               ; preds = %73, %68
  %79 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %2, i32 0, i32 3, i32 0, i32 0, i32 1
  %80 = load i32, ptr %79, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %2, i32 0, i32 1, i32 0, i32 0, i32 1
  %84 = load i32, ptr %83, align 4
  %85 = getelementptr inbounds %struct.ethtool_rx_flow_rule, ptr %4, i32 18
  store i32 %84, ptr %85, align 8
  %86 = load i32, ptr %79, align 4
  %87 = getelementptr inbounds %struct.ethtool_rx_flow_rule, ptr %4, i32 33
  store i32 %86, ptr %87, align 4
  br label %88

88:                                               ; preds = %82, %78
  %89 = load i32, ptr %70, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load i32, ptr %79, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %91, %88
  %95 = load i32, ptr %11, align 4
  %96 = or i32 %95, 4
  store i32 %96, ptr %11, align 4
  %97 = getelementptr %struct.ethtool_rx_flow_rule, ptr %4, i32 3
  store i16 4, ptr %97, align 4
  br label %98

98:                                               ; preds = %94, %91
  %99 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %2, i32 0, i32 3, i32 0, i32 0, i32 2
  %100 = load i16, ptr %99, align 4
  %101 = icmp eq i16 %100, 0
  br i1 %101, label %108, label %102

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %2, i32 0, i32 1, i32 0, i32 0, i32 2
  %104 = load i16, ptr %103, align 4
  %105 = getelementptr inbounds %struct.ethtool_rx_flow_rule, ptr %4, i32 25
  store i16 %104, ptr %105, align 4
  %106 = load i16, ptr %99, align 4
  %107 = getelementptr inbounds %struct.ethtool_rx_flow_rule, ptr %4, i32 40
  store i16 %106, ptr %107, align 8
  br label %108

108:                                              ; preds = %102, %98
  %109 = getelementptr inbounds %struct.ethtool_tcpip4_spec, ptr %70, i32 0, i32 3
  %110 = load i16, ptr %109, align 2
  %111 = icmp eq i16 %110, 0
  br i1 %111, label %120, label %112

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.ethtool_tcpip4_spec, ptr %69, i32 0, i32 3
  %114 = load i16, ptr %113, align 2
  %115 = getelementptr inbounds %struct.ethtool_rx_flow_rule, ptr %4, i32 25
  %116 = getelementptr inbounds %struct.anon.189, ptr %115, i32 0, i32 1
  store i16 %114, ptr %116, align 2
  %117 = load i16, ptr %109, align 2
  %118 = getelementptr inbounds %struct.ethtool_rx_flow_rule, ptr %4, i32 40
  %119 = getelementptr inbounds %struct.anon.189, ptr %118, i32 0, i32 1
  store i16 %117, ptr %119, align 2
  br label %120

120:                                              ; preds = %112, %108
  %121 = load i16, ptr %99, align 4
  %122 = icmp eq i16 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %120
  %124 = load i16, ptr %109, align 2
  %125 = icmp eq i16 %124, 0
  br i1 %125, label %130, label %126

126:                                              ; preds = %123, %120
  %127 = load i32, ptr %11, align 4
  %128 = or i32 %127, 16
  store i32 %128, ptr %11, align 4
  %129 = getelementptr %struct.ethtool_rx_flow_rule, ptr %4, i32 4
  store i16 36, ptr %129, align 8
  br label %130

130:                                              ; preds = %126, %123
  %131 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %2, i32 0, i32 3, i32 0, i32 0, i32 3
  %132 = load i8, ptr %131, align 4
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %219, label %134

134:                                              ; preds = %130
  %135 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %2, i32 0, i32 1, i32 0, i32 0, i32 3
  %136 = load i8, ptr %135, align 4
  %137 = getelementptr inbounds %struct.ethtool_rx_flow_rule, ptr %4, i32 26
  store i8 %136, ptr %137, align 8
  %138 = load i8, ptr %131, align 4
  %139 = getelementptr inbounds %struct.ethtool_rx_flow_rule, ptr %4, i32 41
  store i8 %138, ptr %139, align 4
  %140 = load i32, ptr %11, align 4
  %141 = or i32 %140, 2097152
  store i32 %141, ptr %11, align 4
  %142 = getelementptr inbounds %struct.ethtool_rx_flow_rule, ptr %4, i32 2
  %143 = getelementptr [28 x i16], ptr %142, i32 0, i32 21
  store i16 40, ptr %143, align 2
  br label %219

144:                                              ; preds = %10, %10
  store i16 -8826, ptr %15, align 8
  %145 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %2, i32 0, i32 3
  %146 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %145, ptr noundef nonnull dereferenceable(16) @ethtool_rx_flow_rule_create.zero_addr, i32 16)
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %152, label %148

148:                                              ; preds = %144
  %149 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %2, i32 0, i32 1
  %150 = getelementptr inbounds %struct.ethtool_rx_flow_rule, ptr %4, i32 17
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %150, ptr noundef align 4 dereferenceable(16) %149, i32 16, i1 false)
  %151 = getelementptr inbounds %struct.ethtool_rx_flow_rule, ptr %4, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %151, ptr noundef align 4 dereferenceable(16) %145, i32 16, i1 false)
  br label %152

152:                                              ; preds = %148, %144
  %153 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %2, i32 0, i32 3, i32 0, i32 1
  %154 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %153, ptr noundef nonnull dereferenceable(16) @ethtool_rx_flow_rule_create.zero_addr, i32 16)
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %160, label %156

156:                                              ; preds = %152
  %157 = getelementptr inbounds %struct.ethtool_rx_flow_rule, ptr %4, i32 21
  %158 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %2, i32 0, i32 1, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %157, ptr noundef align 4 dereferenceable(16) %158, i32 16, i1 false)
  %159 = getelementptr inbounds %struct.ethtool_rx_flow_rule, ptr %4, i32 36
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %159, ptr noundef align 4 dereferenceable(16) %153, i32 16, i1 false)
  br label %160

160:                                              ; preds = %156, %152
  %161 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %145, ptr noundef nonnull dereferenceable(16) @ethtool_rx_flow_rule_create.zero_addr, i32 16)
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %160
  %164 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %153, ptr noundef nonnull dereferenceable(16) @ethtool_rx_flow_rule_create.zero_addr, i32 16)
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %171, label %166

166:                                              ; preds = %163, %160
  %167 = load i32, ptr %11, align 4
  %168 = or i32 %167, 8
  store i32 %168, ptr %11, align 4
  %169 = getelementptr inbounds %struct.ethtool_rx_flow_rule, ptr %4, i32 2
  %170 = getelementptr [28 x i16], ptr %169, i32 0, i32 3
  store i16 4, ptr %170, align 2
  br label %171

171:                                              ; preds = %166, %163
  %172 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %2, i32 0, i32 3, i32 0, i32 2
  %173 = load i16, ptr %172, align 4
  %174 = icmp eq i16 %173, 0
  br i1 %174, label %181, label %175

175:                                              ; preds = %171
  %176 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %2, i32 0, i32 1, i32 0, i32 2
  %177 = load i16, ptr %176, align 4
  %178 = getelementptr inbounds %struct.ethtool_rx_flow_rule, ptr %4, i32 25
  store i16 %177, ptr %178, align 4
  %179 = load i16, ptr %172, align 4
  %180 = getelementptr inbounds %struct.ethtool_rx_flow_rule, ptr %4, i32 40
  store i16 %179, ptr %180, align 8
  br label %181

181:                                              ; preds = %175, %171
  %182 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %2, i32 0, i32 3, i32 0, i32 3
  %183 = load i16, ptr %182, align 2
  %184 = icmp eq i16 %183, 0
  br i1 %184, label %193, label %185

185:                                              ; preds = %181
  %186 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %2, i32 0, i32 1, i32 0, i32 3
  %187 = load i16, ptr %186, align 2
  %188 = getelementptr inbounds %struct.ethtool_rx_flow_rule, ptr %4, i32 25
  %189 = getelementptr inbounds %struct.anon.189, ptr %188, i32 0, i32 1
  store i16 %187, ptr %189, align 2
  %190 = load i16, ptr %182, align 2
  %191 = getelementptr inbounds %struct.ethtool_rx_flow_rule, ptr %4, i32 40
  %192 = getelementptr inbounds %struct.anon.189, ptr %191, i32 0, i32 1
  store i16 %190, ptr %192, align 2
  br label %193

193:                                              ; preds = %185, %181
  %194 = load i16, ptr %172, align 4
  %195 = icmp eq i16 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %193
  %197 = load i16, ptr %182, align 2
  %198 = icmp eq i16 %197, 0
  br i1 %198, label %203, label %199

199:                                              ; preds = %196, %193
  %200 = load i32, ptr %11, align 4
  %201 = or i32 %200, 16
  store i32 %201, ptr %11, align 4
  %202 = getelementptr %struct.ethtool_rx_flow_rule, ptr %4, i32 4
  store i16 36, ptr %202, align 8
  br label %203

203:                                              ; preds = %199, %196
  %204 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %2, i32 0, i32 3, i32 0, i32 4
  %205 = load i8, ptr %204, align 4
  %206 = icmp eq i8 %205, 0
  br i1 %206, label %219, label %207

207:                                              ; preds = %203
  %208 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %2, i32 0, i32 1, i32 0, i32 4
  %209 = load i8, ptr %208, align 4
  %210 = getelementptr inbounds %struct.ethtool_rx_flow_rule, ptr %4, i32 26
  store i8 %209, ptr %210, align 8
  %211 = load i8, ptr %204, align 4
  %212 = getelementptr inbounds %struct.ethtool_rx_flow_rule, ptr %4, i32 41
  store i8 %211, ptr %212, align 4
  %213 = load i32, ptr %11, align 4
  %214 = or i32 %213, 2097152
  store i32 %214, ptr %11, align 4
  %215 = getelementptr inbounds %struct.ethtool_rx_flow_rule, ptr %4, i32 2
  %216 = getelementptr [28 x i16], ptr %215, i32 0, i32 21
  store i16 40, ptr %216, align 2
  br label %219

217:                                              ; preds = %10
  %218 = load ptr, ptr %4, align 8
  tail call void @kfree(ptr noundef %218) #20
  tail call void @kfree(ptr noundef nonnull %4) #20
  br label %337

219:                                              ; preds = %207, %203, %134, %130, %64, %60
  %220 = load i32, ptr %2, align 8
  %221 = and i32 %220, 536870911
  %222 = add nsw i32 %221, -1
  %223 = icmp ult i32 %222, 6
  br i1 %223, label %224, label %234

224:                                              ; preds = %219
  %225 = trunc i32 %222 to i8
  %226 = lshr i8 51, %225
  %227 = and i8 %226, 1
  %228 = icmp eq i8 %227, 0
  br i1 %228, label %234, label %229

229:                                              ; preds = %224
  %230 = getelementptr inbounds [6 x i8], ptr @switch.table.ethtool_rx_flow_rule_create, i32 0, i32 %222
  %231 = load i8, ptr %230, align 1
  %232 = getelementptr inbounds %struct.flow_dissector_key_basic, ptr %15, i32 0, i32 1
  store i8 %231, ptr %232, align 2
  %233 = getelementptr inbounds %struct.flow_dissector_key_basic, ptr %12, i32 0, i32 1
  store i8 -1, ptr %233, align 2
  br label %234

234:                                              ; preds = %229, %224, %219
  %235 = load i32, ptr %11, align 4
  %236 = or i32 %235, 2
  store i32 %236, ptr %11, align 4
  %237 = getelementptr inbounds %struct.ethtool_rx_flow_rule, ptr %4, i32 2
  %238 = getelementptr [28 x i16], ptr %237, i32 0, i32 1
  store i16 0, ptr %238, align 2
  %239 = load i32, ptr %2, align 8
  %240 = icmp sgt i32 %239, -1
  br i1 %240, label %302, label %241

241:                                              ; preds = %234
  %242 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %2, i32 0, i32 4, i32 2
  %243 = load i16, ptr %242, align 4
  %244 = icmp eq i16 %243, 0
  br i1 %244, label %253, label %245

245:                                              ; preds = %241
  %246 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %2, i32 0, i32 2, i32 2
  %247 = load i16, ptr %246, align 4
  %248 = getelementptr inbounds %struct.ethtool_rx_flow_key, ptr %15, i32 0, i32 4
  %249 = getelementptr inbounds %struct.flow_dissector_key_vlan, ptr %248, i32 0, i32 1
  store i16 %247, ptr %249, align 4
  %250 = load i16, ptr %242, align 4
  %251 = getelementptr inbounds %struct.ethtool_rx_flow_key, ptr %12, i32 0, i32 4
  %252 = getelementptr inbounds %struct.flow_dissector_key_vlan, ptr %251, i32 0, i32 1
  store i16 %250, ptr %252, align 8
  br label %253

253:                                              ; preds = %245, %241
  %254 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %2, i32 0, i32 4, i32 3
  %255 = load i16, ptr %254, align 2
  %256 = icmp eq i16 %255, 0
  br i1 %256, label %293, label %257

257:                                              ; preds = %253
  %258 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %2, i32 0, i32 2, i32 3
  %259 = load i16, ptr %258, align 2
  %260 = and i16 %259, -241
  %261 = tail call i16 @llvm.bswap.i16(i16 %260)
  %262 = getelementptr inbounds %struct.ethtool_rx_flow_key, ptr %15, i32 0, i32 4
  %263 = load i16, ptr %262, align 2
  %264 = and i16 %263, -4096
  %265 = or i16 %264, %261
  store i16 %265, ptr %262, align 2
  %266 = load i16, ptr %254, align 2
  %267 = and i16 %266, -241
  %268 = tail call i16 @llvm.bswap.i16(i16 %267)
  %269 = getelementptr inbounds %struct.ethtool_rx_flow_key, ptr %12, i32 0, i32 4
  %270 = load i16, ptr %269, align 2
  %271 = and i16 %270, -4096
  %272 = or i16 %271, %268
  store i16 %272, ptr %269, align 2
  %273 = load i16, ptr %258, align 2
  %274 = shl i16 %273, 8
  %275 = and i16 %274, 4096
  %276 = and i16 %265, -4097
  %277 = or i16 %275, %276
  store i16 %277, ptr %262, align 2
  %278 = load i16, ptr %254, align 2
  %279 = shl i16 %278, 8
  %280 = and i16 %279, 4096
  %281 = and i16 %272, -4097
  %282 = or i16 %280, %281
  store i16 %282, ptr %269, align 2
  %283 = load i16, ptr %258, align 2
  %284 = shl i16 %283, 8
  %285 = and i16 %284, -8192
  %286 = and i16 %277, 8191
  %287 = or i16 %285, %286
  store i16 %287, ptr %262, align 2
  %288 = load i16, ptr %254, align 2
  %289 = shl i16 %288, 8
  %290 = and i16 %289, -8192
  %291 = and i16 %282, 8191
  %292 = or i16 %290, %291
  store i16 %292, ptr %269, align 2
  br label %293

293:                                              ; preds = %257, %253
  %294 = load i16, ptr %242, align 4
  %295 = icmp eq i16 %294, 0
  br i1 %295, label %296, label %299

296:                                              ; preds = %293
  %297 = load i16, ptr %254, align 2
  %298 = icmp eq i16 %297, 0
  br i1 %298, label %302, label %299

299:                                              ; preds = %296, %293
  %300 = or i32 %235, 1026
  store i32 %300, ptr %11, align 4
  %301 = getelementptr %struct.ethtool_rx_flow_rule, ptr %4, i32 7
  store i16 42, ptr %301, align 4
  br label %302

302:                                              ; preds = %299, %296, %234
  %303 = phi i32 [ %236, %296 ], [ %300, %299 ], [ %236, %234 ]
  %304 = load i32, ptr %2, align 8
  %305 = and i32 %304, 1073741824
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %314, label %307

307:                                              ; preds = %302
  %308 = getelementptr inbounds %struct.ethtool_rx_flow_key, ptr %15, i32 0, i32 5
  %309 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %2, i32 0, i32 2, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %308, ptr noundef align 2 dereferenceable(6) %309, i32 6, i1 false)
  %310 = getelementptr inbounds %struct.ethtool_rx_flow_key, ptr %12, i32 0, i32 5
  %311 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %2, i32 0, i32 4, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %310, ptr noundef align 2 dereferenceable(6) %311, i32 6, i1 false)
  %312 = or i32 %303, 128
  store i32 %312, ptr %11, align 4
  %313 = getelementptr [28 x i16], ptr %237, i32 0, i32 7
  store i16 46, ptr %313, align 2
  br label %314

314:                                              ; preds = %307, %302
  %315 = load ptr, ptr %4, align 8
  %316 = getelementptr inbounds %struct.flow_rule, ptr %315, i32 1
  %317 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %2, i32 0, i32 5
  %318 = load i64, ptr %317, align 8
  switch i64 %318, label %321 [
    i64 -1, label %319
    i64 -2, label %320
  ]

319:                                              ; preds = %314
  store i32 1, ptr %316, align 8
  br label %337

320:                                              ; preds = %314
  store i32 19, ptr %316, align 8
  br label %337

321:                                              ; preds = %314
  store i32 20, ptr %316, align 8
  %322 = load i32, ptr %2, align 8
  %323 = and i32 %322, 536870912
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %329, label %325

325:                                              ; preds = %321
  %326 = getelementptr inbounds %struct.ethtool_rx_flow_spec_input, ptr %0, i32 0, i32 1
  %327 = load i32, ptr %326, align 4
  %328 = getelementptr inbounds %struct.flow_rule, ptr %315, i32 2
  store i32 %327, ptr %328, align 8
  br label %329

329:                                              ; preds = %325, %321
  %330 = load i64, ptr %317, align 8
  %331 = lshr i64 %330, 32
  %332 = trunc i64 %331 to i8
  %333 = getelementptr inbounds %struct.flow_rule, ptr %315, i32 2, i32 0, i32 2
  store i8 %332, ptr %333, align 8
  %334 = load i64, ptr %317, align 8
  %335 = trunc i64 %334 to i32
  %336 = getelementptr inbounds %struct.flow_rule, ptr %315, i32 2, i32 0, i32 1
  store i32 %335, ptr %336, align 4
  br label %337

337:                                              ; preds = %329, %320, %319, %217, %9, %1
  %338 = phi ptr [ inttoptr (i32 -22 to ptr), %217 ], [ inttoptr (i32 -12 to ptr), %9 ], [ %4, %329 ], [ %4, %320 ], [ %4, %319 ], [ inttoptr (i32 -12 to ptr), %1 ]
  ret ptr %338
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @flow_rule_alloc(i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ethtool_rx_flow_rule_destroy(ptr noundef %0) #5 {
  %2 = load ptr, ptr %0, align 4
  tail call void @kfree(ptr noundef %2) #20
  tail call void @kfree(ptr noundef %0) #20
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_complement(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_intersects(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_le(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #13

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dev_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ethtool_get_settings(ptr noundef %0, ptr noundef %1) unnamed_addr #5 {
  %3 = alloca [3 x i32], align 4
  %4 = alloca [3 x i32], align 4
  %5 = alloca [3 x i32], align 4
  %6 = alloca %struct.ethtool_link_ksettings, align 4
  %7 = alloca %struct.ethtool_cmd, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %7) #20
  %8 = tail call i32 @rtnl_is_locked() #20
  %9 = icmp eq i32 %8, 0
  %10 = load i1, ptr @ethtool_get_settings.__already_done, align 1
  %11 = xor i1 %10, true
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %14, !prof !9

13:                                               ; preds = %2
  store i1 true, ptr @ethtool_get_settings.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 672, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 672) #20
  br label %14

14:                                               ; preds = %13, %2
  %15 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 42
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.ethtool_ops, ptr %16, i32 0, i32 56
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %83, label %20

20:                                               ; preds = %14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(88) %6, i8 0, i32 88, i1 false)
  %21 = call i32 %18(ptr noundef %0, ptr noundef nonnull %6) #20
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %83, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds i8, ptr %7, i32 20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %24, i8 0, i32 24, i1 false) #20
  %25 = getelementptr inbounds %struct.ethtool_cmd, ptr %7, i32 0, i32 1
  %26 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %6, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #20
  %27 = getelementptr inbounds i8, ptr %5, i32 4
  store i64 0, ptr %27, align 4
  store i32 -1, ptr %5, align 4
  call void @__bitmap_complement(ptr noundef nonnull %5, ptr noundef nonnull %5, i32 noundef 92) #20
  %28 = call i32 @__bitmap_intersects(ptr noundef nonnull %5, ptr noundef %26, i32 noundef 92) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #20
  %29 = load i32, ptr %26, align 4
  store i32 %29, ptr %25, align 4
  %30 = getelementptr inbounds %struct.ethtool_cmd, ptr %7, i32 0, i32 2
  %31 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %6, i32 0, i32 1, i32 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #20
  %32 = getelementptr inbounds i8, ptr %4, i32 4
  store i64 0, ptr %32, align 4
  store i32 -1, ptr %4, align 4
  call void @__bitmap_complement(ptr noundef nonnull %4, ptr noundef nonnull %4, i32 noundef 92) #20
  %33 = call i32 @__bitmap_intersects(ptr noundef nonnull %4, ptr noundef %31, i32 noundef 92) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #20
  %34 = load i32, ptr %31, align 4
  store i32 %34, ptr %30, align 4
  %35 = getelementptr inbounds %struct.ethtool_cmd, ptr %7, i32 0, i32 15
  %36 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %6, i32 0, i32 1, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #20
  %37 = getelementptr inbounds i8, ptr %3, i32 4
  store i64 0, ptr %37, align 4
  store i32 -1, ptr %3, align 4
  call void @__bitmap_complement(ptr noundef nonnull %3, ptr noundef nonnull %3, i32 noundef 92) #20
  %38 = call i32 @__bitmap_intersects(ptr noundef nonnull %3, ptr noundef %36, i32 noundef 92) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #20
  %39 = load i32, ptr %36, align 4
  store i32 %39, ptr %35, align 4
  %40 = getelementptr inbounds %struct.ethtool_link_settings, ptr %6, i32 0, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = trunc i32 %41 to i16
  %43 = getelementptr inbounds %struct.ethtool_cmd, ptr %7, i32 0, i32 3
  store i16 %42, ptr %43, align 4
  %44 = lshr i32 %41, 16
  %45 = trunc i32 %44 to i16
  %46 = getelementptr inbounds %struct.ethtool_cmd, ptr %7, i32 0, i32 12
  store i16 %45, ptr %46, align 4
  %47 = getelementptr inbounds %struct.ethtool_link_settings, ptr %6, i32 0, i32 2
  %48 = load i8, ptr %47, align 4
  %49 = getelementptr inbounds %struct.ethtool_cmd, ptr %7, i32 0, i32 4
  store i8 %48, ptr %49, align 2
  %50 = getelementptr inbounds %struct.ethtool_link_settings, ptr %6, i32 0, i32 3
  %51 = load i8, ptr %50, align 1
  %52 = getelementptr inbounds %struct.ethtool_cmd, ptr %7, i32 0, i32 5
  store i8 %51, ptr %52, align 1
  %53 = getelementptr inbounds %struct.ethtool_link_settings, ptr %6, i32 0, i32 4
  %54 = load i8, ptr %53, align 2
  %55 = getelementptr inbounds %struct.ethtool_cmd, ptr %7, i32 0, i32 6
  store i8 %54, ptr %55, align 4
  %56 = getelementptr inbounds %struct.ethtool_link_settings, ptr %6, i32 0, i32 5
  %57 = load i8, ptr %56, align 1
  %58 = getelementptr inbounds %struct.ethtool_cmd, ptr %7, i32 0, i32 8
  store i8 %57, ptr %58, align 2
  %59 = getelementptr inbounds %struct.ethtool_link_settings, ptr %6, i32 0, i32 6
  %60 = load i8, ptr %59, align 4
  %61 = getelementptr inbounds %struct.ethtool_cmd, ptr %7, i32 0, i32 9
  store i8 %60, ptr %61, align 1
  %62 = getelementptr inbounds %struct.ethtool_link_settings, ptr %6, i32 0, i32 7
  %63 = load i8, ptr %62, align 1
  %64 = getelementptr inbounds %struct.ethtool_cmd, ptr %7, i32 0, i32 13
  store i8 %63, ptr %64, align 2
  %65 = getelementptr inbounds %struct.ethtool_link_settings, ptr %6, i32 0, i32 8
  %66 = load i8, ptr %65, align 2
  %67 = getelementptr inbounds %struct.ethtool_cmd, ptr %7, i32 0, i32 14
  store i8 %66, ptr %67, align 1
  %68 = getelementptr inbounds %struct.ethtool_link_settings, ptr %6, i32 0, i32 10
  %69 = load i8, ptr %68, align 4
  %70 = getelementptr inbounds %struct.ethtool_cmd, ptr %7, i32 0, i32 7
  store i8 %69, ptr %70, align 1
  store i32 1, ptr %7, align 4
  %71 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 44, i32 -1090519040) #21, !srcloc !17
  %72 = extractvalue { i32, i32 } %71, 0
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %23
  %75 = tail call ptr @llvm.thread.pointer() #20
  %76 = getelementptr inbounds %struct.thread_info, ptr %75, i32 0, i32 3
  %77 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %76) #18, !srcloc !14
  %78 = and i32 %77, -13
  %79 = or i32 %78, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %79) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %80 = call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef nonnull %7, i32 noundef 44) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %77) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %81 = icmp eq i32 %80, 0
  %82 = select i1 %81, i32 0, i32 -14
  br label %83

83:                                               ; preds = %74, %23, %20, %14
  %84 = phi i32 [ -95, %14 ], [ %21, %20 ], [ -14, %23 ], [ %82, %74 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %6) #20
  ret i32 %84
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ethtool_set_settings(ptr noundef %0, ptr noundef %1) unnamed_addr #5 {
  %3 = alloca %struct.ethtool_link_ksettings, align 4
  %4 = alloca %struct.ethtool_cmd, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %3) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(88) %3, i8 0, i32 88, i1 false), !annotation !11
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %4) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %4, i8 0, i32 44, i1 false), !annotation !11
  %5 = tail call i32 @rtnl_is_locked() #20
  %6 = icmp eq i32 %5, 0
  %7 = load i1, ptr @ethtool_set_settings.__already_done, align 1
  %8 = xor i1 %7, true
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %11, !prof !9

10:                                               ; preds = %2
  store i1 true, ptr @ethtool_set_settings.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 705, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 705) #20
  br label %11

11:                                               ; preds = %10, %2
  %12 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 44, i32 -1090519040) #21, !srcloc !12
  %13 = extractvalue { i32, i32 } %12, 0
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %23, !prof !13

15:                                               ; preds = %11
  %16 = tail call ptr @llvm.thread.pointer() #20
  %17 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 3
  %18 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %17) #18, !srcloc !14
  %19 = and i32 %18, -13
  %20 = or i32 %19, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %20) #20, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %21 = call i32 @arm_copy_from_user(ptr noundef nonnull %4, ptr noundef %1, i32 noundef 44) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %18) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23, !prof !13

23:                                               ; preds = %15, %11
  %24 = phi i32 [ %21, %15 ], [ 44, %11 ]
  %25 = sub i32 44, %24
  %26 = getelementptr i8, ptr %4, i32 %25
  call void @llvm.memset.p0.i32(ptr align 1 %26, i8 0, i32 %24, i1 false) #20
  br label %43

27:                                               ; preds = %15
  %28 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 42
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds %struct.ethtool_ops, ptr %29, i32 0, i32 57
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %43, label %33

33:                                               ; preds = %27
  %34 = call zeroext i1 @convert_legacy_settings_to_link_ksettings(ptr noundef nonnull %3, ptr noundef nonnull %4) #20
  br i1 %34, label %35, label %43

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.ethtool_link_settings, ptr %3, i32 0, i32 9
  store i8 3, ptr %36, align 1
  %37 = load ptr, ptr %28, align 8
  %38 = getelementptr inbounds %struct.ethtool_ops, ptr %37, i32 0, i32 57
  %39 = load ptr, ptr %38, align 4
  %40 = call i32 %39(ptr noundef %0, ptr noundef nonnull %3) #20
  %41 = icmp sgt i32 %40, -1
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  call void @ethtool_notify(ptr noundef %0, i32 noundef 3, ptr noundef null) #20
  call void @ethtool_notify(ptr noundef %0, i32 noundef 5, ptr noundef null) #20
  br label %43

43:                                               ; preds = %42, %35, %33, %27, %23
  %44 = phi i32 [ -95, %27 ], [ -22, %33 ], [ %40, %42 ], [ %40, %35 ], [ -14, %23 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3) #20
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ethtool_get_drvinfo(ptr noundef %0, ptr noundef %1) unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 42
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.ethtool_devlink_compat, ptr %1, i32 0, i32 1
  store i32 3, ptr %5, align 4
  %6 = getelementptr inbounds %struct.ethtool_devlink_compat, ptr %1, i32 0, i32 1, i32 0, i32 2
  %7 = tail call i32 @strlcpy(ptr noundef %6, ptr noundef nonnull @.str.4, i32 noundef 32) #20
  %8 = getelementptr inbounds %struct.ethtool_ops, ptr %4, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  tail call void %9(ptr noundef %0, ptr noundef %5) #20
  br label %45

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 111, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %36, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 6
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %36, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.ethtool_devlink_compat, ptr %1, i32 0, i32 1, i32 0, i32 4
  %22 = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load ptr, ptr %14, align 4
  br label %27

27:                                               ; preds = %25, %20
  %28 = phi ptr [ %26, %25 ], [ %23, %20 ]
  %29 = tail call i32 @strlcpy(ptr noundef %21, ptr noundef %28, i32 noundef 32) #20
  %30 = getelementptr inbounds %struct.ethtool_devlink_compat, ptr %1, i32 0, i32 1, i32 0, i32 1
  %31 = load ptr, ptr %13, align 4
  %32 = getelementptr inbounds %struct.device, ptr %31, i32 0, i32 6
  %33 = load ptr, ptr %32, align 8
  %34 = load ptr, ptr %33, align 4
  %35 = tail call i32 @strlcpy(ptr noundef %30, ptr noundef %34, i32 noundef 32) #20
  br label %45

36:                                               ; preds = %16, %12
  %37 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 114
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %101, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.ethtool_devlink_compat, ptr %1, i32 0, i32 1, i32 0, i32 1
  %42 = getelementptr inbounds %struct.rtnl_link_ops, ptr %38, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = tail call i32 @strlcpy(ptr noundef %41, ptr noundef %43, i32 noundef 32) #20
  br label %45

45:                                               ; preds = %40, %27, %11
  %46 = getelementptr inbounds %struct.ethtool_ops, ptr %4, i32 0, i32 31
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %66, label %49

49:                                               ; preds = %45
  %50 = tail call i32 %47(ptr noundef %0, i32 noundef 0) #20
  %51 = icmp sgt i32 %50, -1
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.ethtool_devlink_compat, ptr %1, i32 0, i32 1, i32 0, i32 9
  store i32 %50, ptr %53, align 4
  br label %54

54:                                               ; preds = %52, %49
  %55 = load ptr, ptr %46, align 4
  %56 = tail call i32 %55(ptr noundef %0, i32 noundef 1) #20
  %57 = icmp sgt i32 %56, -1
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.ethtool_devlink_compat, ptr %1, i32 0, i32 1, i32 0, i32 8
  store i32 %56, ptr %59, align 4
  br label %60

60:                                               ; preds = %58, %54
  %61 = load ptr, ptr %46, align 4
  %62 = tail call i32 %61(ptr noundef %0, i32 noundef 2) #20
  %63 = icmp sgt i32 %62, -1
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.ethtool_devlink_compat, ptr %1, i32 0, i32 1, i32 0, i32 7
  store i32 %62, ptr %65, align 4
  br label %66

66:                                               ; preds = %64, %60, %45
  %67 = getelementptr inbounds %struct.ethtool_ops, ptr %4, i32 0, i32 4
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %75, label %70

70:                                               ; preds = %66
  %71 = tail call i32 %68(ptr noundef %0) #20
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.ethtool_devlink_compat, ptr %1, i32 0, i32 1, i32 0, i32 11
  store i32 %71, ptr %74, align 4
  br label %75

75:                                               ; preds = %73, %70, %66
  %76 = getelementptr inbounds %struct.ethtool_ops, ptr %4, i32 0, i32 13
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %75
  %80 = tail call i32 %77(ptr noundef %0) #20
  %81 = getelementptr inbounds %struct.ethtool_devlink_compat, ptr %1, i32 0, i32 1, i32 0, i32 10
  store i32 %80, ptr %81, align 4
  br label %82

82:                                               ; preds = %79, %75
  %83 = getelementptr inbounds %struct.ethtool_devlink_compat, ptr %1, i32 0, i32 1, i32 0, i32 3
  %84 = load i8, ptr %83, align 4
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %86, label %101

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 16
  %88 = load ptr, ptr %87, align 8
  %89 = getelementptr inbounds %struct.net_device_ops, ptr %88, i32 0, i32 70
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %99, label %92

92:                                               ; preds = %86
  %93 = tail call ptr %90(ptr noundef %0) #20
  %94 = icmp eq ptr %93, null
  br i1 %94, label %99, label %95

95:                                               ; preds = %92
  %96 = getelementptr inbounds %struct.devlink_port, ptr %93, i32 0, i32 3
  %97 = load ptr, ptr %96, align 4
  %98 = tail call ptr @devlink_try_get(ptr noundef %97) #20
  br label %99

99:                                               ; preds = %95, %92, %86
  %100 = phi ptr [ %98, %95 ], [ null, %86 ], [ null, %92 ]
  store ptr %100, ptr %1, align 4
  br label %101

101:                                              ; preds = %99, %82, %36
  %102 = phi i32 [ -95, %36 ], [ 0, %99 ], [ 0, %82 ]
  ret i32 %102
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ethtool_get_regs(ptr noundef %0, ptr noundef %1) unnamed_addr #5 {
  %3 = alloca %struct.ethtool_regs, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %3, i8 0, i32 12, i1 false), !annotation !11
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 42
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.ethtool_ops, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %66, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.ethtool_ops, ptr %5, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %66, label %13

13:                                               ; preds = %9
  %14 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 12, i32 -1090519040) #21
  %15 = extractvalue { i32, i32 } %14, 0
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %25, !prof !13

17:                                               ; preds = %13
  %18 = tail call ptr @llvm.thread.pointer() #20
  %19 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %20 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %19) #18, !srcloc !14
  %21 = and i32 %20, -13
  %22 = or i32 %21, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %22) #20, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %23 = call i32 @arm_copy_from_user(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 12) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %20) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25, !prof !13

25:                                               ; preds = %17, %13
  %26 = phi i32 [ %23, %17 ], [ 12, %13 ]
  %27 = sub i32 12, %26
  %28 = getelementptr i8, ptr %3, i32 %27
  call void @llvm.memset.p0.i32(ptr align 1 %28, i8 0, i32 %26, i1 false) #20
  br label %66

29:                                               ; preds = %17
  %30 = load ptr, ptr %10, align 4
  %31 = call i32 %30(ptr noundef %0) #20
  %32 = icmp slt i32 %31, 1
  br i1 %32, label %66, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.ethtool_regs, ptr %3, i32 0, i32 2
  %35 = load i32, ptr %34, align 4
  %36 = icmp ugt i32 %35, %31
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 %31, ptr %34, align 4
  br label %38

38:                                               ; preds = %37, %33
  %39 = call noalias ptr @vzalloc(i32 noundef %31) #23
  %40 = icmp eq ptr %39, null
  br i1 %40, label %66, label %41

41:                                               ; preds = %38
  %42 = load i32, ptr %34, align 4
  %43 = call i32 @llvm.umin.i32(i32 %42, i32 %31)
  %44 = load ptr, ptr %6, align 4
  call void %44(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %39) #20
  %45 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %19) #18, !srcloc !14
  %46 = and i32 %45, -13
  %47 = or i32 %46, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %47) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %48 = call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef nonnull %3, i32 noundef 12) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %45) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %64

50:                                               ; preds = %41
  %51 = getelementptr i8, ptr %1, i32 12
  %52 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %51, i32 %43, i32 -1090519040) #21, !srcloc !17
  %53 = extractvalue { i32, i32 } %52, 0
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %19) #18, !srcloc !14
  %57 = and i32 %56, -13
  %58 = or i32 %57, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %58) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %59 = call i32 @arm_copy_to_user(ptr noundef %51, ptr noundef nonnull %39, i32 noundef %43) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %56) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  br label %60

60:                                               ; preds = %55, %50
  %61 = phi i32 [ %59, %55 ], [ %43, %50 ]
  %62 = icmp eq i32 %61, 0
  %63 = select i1 %62, i32 0, i32 -14
  br label %64

64:                                               ; preds = %60, %41
  %65 = phi i32 [ -14, %41 ], [ %63, %60 ]
  call void @vfree(ptr noundef nonnull %39) #20
  br label %66

66:                                               ; preds = %64, %38, %29, %25, %9, %2
  %67 = phi i32 [ %65, %64 ], [ -95, %9 ], [ -95, %2 ], [ %31, %29 ], [ -12, %38 ], [ -14, %25 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #20
  ret i32 %67
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ethtool_get_wol(ptr noundef %0, ptr noundef %1) unnamed_addr #5 {
  %3 = alloca %struct.ethtool_wolinfo, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #20
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 42
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.ethtool_ops, ptr %5, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %23, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %10, i8 0, i32 16, i1 false)
  store i32 5, ptr %3, align 4
  call void %7(ptr noundef %0, ptr noundef nonnull %3) #20
  %11 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 20, i32 -1090519040) #21, !srcloc !17
  %12 = extractvalue { i32, i32 } %11, 0
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %9
  %15 = tail call ptr @llvm.thread.pointer() #20
  %16 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 3
  %17 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %16) #18, !srcloc !14
  %18 = and i32 %17, -13
  %19 = or i32 %18, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %19) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %20 = call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef nonnull %3, i32 noundef 20) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, i32 0, i32 -14
  br label %23

23:                                               ; preds = %14, %9, %2
  %24 = phi i32 [ -95, %2 ], [ -14, %9 ], [ %22, %14 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #20
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ethtool_set_wol(ptr noundef %0, ptr noundef %1) unnamed_addr #5 {
  %3 = alloca %struct.ethtool_wolinfo, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, i8 0, i32 20, i1 false), !annotation !11
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 42
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.ethtool_ops, ptr %5, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %40, label %9

9:                                                ; preds = %2
  %10 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 20, i32 -1090519040) #21, !srcloc !12
  %11 = extractvalue { i32, i32 } %10, 0
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %21, !prof !13

13:                                               ; preds = %9
  %14 = tail call ptr @llvm.thread.pointer() #20
  %15 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %16 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %15) #18, !srcloc !14
  %17 = and i32 %16, -13
  %18 = or i32 %17, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %18) #20, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %19 = call i32 @arm_copy_from_user(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 20) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %16) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21, !prof !13

21:                                               ; preds = %13, %9
  %22 = phi i32 [ %19, %13 ], [ 20, %9 ]
  %23 = sub i32 20, %22
  %24 = getelementptr i8, ptr %3, i32 %23
  call void @llvm.memset.p0.i32(ptr align 1 %24, i8 0, i32 %22, i1 false) #20
  br label %40

25:                                               ; preds = %13
  %26 = load ptr, ptr %4, align 8
  %27 = getelementptr inbounds %struct.ethtool_ops, ptr %26, i32 0, i32 7
  %28 = load ptr, ptr %27, align 4
  %29 = call i32 %28(ptr noundef %0, ptr noundef nonnull %3) #20
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %3, i32 0, i32 2
  %33 = load i32, ptr %32, align 4
  %34 = icmp ne i32 %33, 0
  %35 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 124
  %36 = zext i1 %34 to i8
  %37 = load i8, ptr %35, align 1
  %38 = and i8 %37, -2
  %39 = or i8 %38, %36
  store i8 %39, ptr %35, align 1
  call void @ethtool_notify(ptr noundef %0, i32 noundef 10, ptr noundef null) #20
  br label %40

40:                                               ; preds = %31, %25, %21, %2
  %41 = phi i32 [ 0, %31 ], [ -95, %2 ], [ %29, %25 ], [ -14, %21 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #20
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ethtool_get_value(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef readonly %3) unnamed_addr #5 {
  %5 = alloca %struct.ethtool_value, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #20
  store i32 %2, ptr %5, align 8
  %6 = icmp eq ptr %3, null
  br i1 %6, label %22, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.ethtool_value, ptr %5, i32 0, i32 1
  %9 = tail call i32 %3(ptr noundef %0) #20
  store i32 %9, ptr %8, align 4
  %10 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 8, i32 -1090519040) #21, !srcloc !17
  %11 = extractvalue { i32, i32 } %10, 0
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %7
  %14 = tail call ptr @llvm.thread.pointer() #20
  %15 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %16 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %15) #18, !srcloc !14
  %17 = and i32 %16, -13
  %18 = or i32 %17, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %18) #20, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %19 = call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef nonnull %5, i32 noundef 8) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %16) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, i32 0, i32 -14
  br label %22

22:                                               ; preds = %13, %7, %4
  %23 = phi i32 [ -95, %4 ], [ -14, %7 ], [ %21, %13 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ethtool_set_value_void(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2) unnamed_addr #5 {
  %4 = alloca %struct.ethtool_value, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  store i64 0, ptr %4, align 8, !annotation !11
  %5 = icmp eq ptr %2, null
  br i1 %5, label %25, label %6

6:                                                ; preds = %3
  %7 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 8, i32 -1090519040) #21, !srcloc !12
  %8 = extractvalue { i32, i32 } %7, 0
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %18, !prof !13

10:                                               ; preds = %6
  %11 = tail call ptr @llvm.thread.pointer() #20
  %12 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %13 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %12) #18, !srcloc !14
  %14 = and i32 %13, -13
  %15 = or i32 %14, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #20, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %16 = call i32 @arm_copy_from_user(ptr noundef nonnull %4, ptr noundef %1, i32 noundef 8) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18, !prof !13

18:                                               ; preds = %10, %6
  %19 = phi i32 [ %16, %10 ], [ 8, %6 ]
  %20 = sub i32 8, %19
  %21 = getelementptr i8, ptr %4, i32 %20
  call void @llvm.memset.p0.i32(ptr align 1 %21, i8 0, i32 %19, i1 false) #20
  br label %25

22:                                               ; preds = %10
  %23 = getelementptr inbounds %struct.ethtool_value, ptr %4, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  call void %2(ptr noundef %0, i32 noundef %24) #20
  br label %25

25:                                               ; preds = %22, %18, %3
  %26 = phi i32 [ 0, %22 ], [ -95, %3 ], [ -14, %18 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethtool_notify(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ethtool_get_eee(ptr noundef %0, ptr noundef %1) unnamed_addr #5 {
  %3 = alloca %struct.ethtool_eee, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #20
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 42
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.ethtool_ops, ptr %5, i32 0, i32 50
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %26, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %10, i8 0, i32 36, i1 false)
  store i32 68, ptr %3, align 4
  %11 = call i32 %7(ptr noundef %0, ptr noundef nonnull %3) #20
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %9
  %14 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 40, i32 -1090519040) #21, !srcloc !17
  %15 = extractvalue { i32, i32 } %14, 0
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %13
  %18 = tail call ptr @llvm.thread.pointer() #20
  %19 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %20 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %19) #18, !srcloc !14
  %21 = and i32 %20, -13
  %22 = or i32 %21, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %22) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %23 = call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef nonnull %3, i32 noundef 40) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %20) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %24, i32 0, i32 -14
  br label %26

26:                                               ; preds = %17, %13, %9, %2
  %27 = phi i32 [ -95, %2 ], [ %11, %9 ], [ -14, %13 ], [ %25, %17 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #20
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ethtool_set_eee(ptr noundef %0, ptr noundef %1) unnamed_addr #5 {
  %3 = alloca %struct.ethtool_eee, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %3, i8 0, i32 40, i1 false), !annotation !11
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 42
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.ethtool_ops, ptr %5, i32 0, i32 51
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %32, label %9

9:                                                ; preds = %2
  %10 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 40, i32 -1090519040) #21, !srcloc !12
  %11 = extractvalue { i32, i32 } %10, 0
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %21, !prof !13

13:                                               ; preds = %9
  %14 = tail call ptr @llvm.thread.pointer() #20
  %15 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %16 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %15) #18, !srcloc !14
  %17 = and i32 %16, -13
  %18 = or i32 %17, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %18) #20, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %19 = call i32 @arm_copy_from_user(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 40) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %16) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21, !prof !13

21:                                               ; preds = %13, %9
  %22 = phi i32 [ %19, %13 ], [ 40, %9 ]
  %23 = sub i32 40, %22
  %24 = getelementptr i8, ptr %3, i32 %23
  call void @llvm.memset.p0.i32(ptr align 1 %24, i8 0, i32 %22, i1 false) #20
  br label %32

25:                                               ; preds = %13
  %26 = load ptr, ptr %4, align 8
  %27 = getelementptr inbounds %struct.ethtool_ops, ptr %26, i32 0, i32 51
  %28 = load ptr, ptr %27, align 4
  %29 = call i32 %28(ptr noundef %0, ptr noundef nonnull %3) #20
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  call void @ethtool_notify(ptr noundef %0, i32 noundef 25, ptr noundef null) #20
  br label %32

32:                                               ; preds = %31, %25, %21, %2
  %33 = phi i32 [ -95, %2 ], [ 0, %31 ], [ %29, %25 ], [ -14, %21 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #20
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ethtool_get_link(ptr noundef %0, ptr noundef %1) unnamed_addr #5 {
  %3 = alloca %struct.ethtool_value, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  store i64 10, ptr %3, align 8
  %4 = tail call i32 @__ethtool_get_link(ptr noundef %0) #20
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %20, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ethtool_value, ptr %3, i32 0, i32 1
  store i32 %4, ptr %7, align 4
  %8 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 8, i32 -1090519040) #21, !srcloc !17
  %9 = extractvalue { i32, i32 } %8, 0
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %6
  %12 = tail call ptr @llvm.thread.pointer() #20
  %13 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %14 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %13) #18, !srcloc !14
  %15 = and i32 %14, -13
  %16 = or i32 %15, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %16) #20, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %17 = call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef nonnull %3, i32 noundef 8) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %18, i32 0, i32 -14
  br label %20

20:                                               ; preds = %11, %6, %2
  %21 = phi i32 [ %4, %2 ], [ -14, %6 ], [ %19, %11 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ethtool_get_eeprom(ptr noundef %0, ptr noundef %1) unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 42
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.ethtool_ops, ptr %4, i32 0, i32 14
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %20, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ethtool_ops, ptr %4, i32 0, i32 13
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %20, label %12

12:                                               ; preds = %8
  %13 = tail call i32 %10(ptr noundef %0) #20
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %12
  %16 = load ptr, ptr %5, align 4
  %17 = load ptr, ptr %9, align 4
  %18 = tail call i32 %17(ptr noundef %0) #20
  %19 = tail call fastcc i32 @ethtool_get_any_eeprom(ptr noundef %0, ptr noundef %1, ptr noundef %16, i32 noundef %18)
  br label %20

20:                                               ; preds = %15, %12, %8, %2
  %21 = phi i32 [ %19, %15 ], [ -95, %12 ], [ -95, %8 ], [ -95, %2 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ethtool_set_eeprom(ptr noundef %0, ptr noundef %1) unnamed_addr #5 {
  %3 = alloca %struct.ethtool_eeprom, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !11
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 42
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %1, i32 16
  %7 = getelementptr inbounds %struct.ethtool_ops, ptr %5, i32 0, i32 15
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %81, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.ethtool_ops, ptr %5, i32 0, i32 13
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %81, label %14

14:                                               ; preds = %10
  %15 = tail call i32 %12(ptr noundef %0) #20
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %81, label %17

17:                                               ; preds = %14
  %18 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 16, i32 -1090519040) #21, !srcloc !12
  %19 = extractvalue { i32, i32 } %18, 0
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %29, !prof !13

21:                                               ; preds = %17
  %22 = tail call ptr @llvm.thread.pointer() #20
  %23 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 3
  %24 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %23) #18, !srcloc !14
  %25 = and i32 %24, -13
  %26 = or i32 %25, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %26) #20, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %27 = call i32 @arm_copy_from_user(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 16) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %24) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29, !prof !13

29:                                               ; preds = %21, %17
  %30 = phi i32 [ %27, %21 ], [ 16, %17 ]
  %31 = sub i32 16, %30
  %32 = getelementptr i8, ptr %3, i32 %31
  call void @llvm.memset.p0.i32(ptr align 1 %32, i8 0, i32 %30, i1 false) #20
  br label %81

33:                                               ; preds = %21
  %34 = getelementptr inbounds %struct.ethtool_eeprom, ptr %3, i32 0, i32 2
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.ethtool_eeprom, ptr %3, i32 0, i32 3
  %37 = load i32, ptr %36, align 4
  %38 = add i32 %37, %35
  %39 = icmp ugt i32 %38, %35
  br i1 %39, label %40, label %81

40:                                               ; preds = %33
  %41 = load ptr, ptr %11, align 4
  %42 = call i32 %41(ptr noundef %0) #20
  %43 = icmp ugt i32 %38, %42
  br i1 %43, label %81, label %44

44:                                               ; preds = %40
  %45 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %46 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %45, i32 noundef 1052096, i32 noundef 4096) #22
  %47 = icmp eq ptr %46, null
  br i1 %47, label %81, label %48

48:                                               ; preds = %44
  %49 = load i32, ptr %36, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %79, label %51

51:                                               ; preds = %72, %48
  %52 = phi ptr [ %74, %72 ], [ %6, %48 ]
  %53 = phi i32 [ %77, %72 ], [ %49, %48 ]
  %54 = call i32 @llvm.umin.i32(i32 %53, i32 4096)
  store i32 %54, ptr %36, align 4
  %55 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %52, i32 %54, i32 -1090519040) #21, !srcloc !12
  %56 = extractvalue { i32, i32 } %55, 0
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %64, !prof !13

58:                                               ; preds = %51
  %59 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %23) #18, !srcloc !14
  %60 = and i32 %59, -13
  %61 = or i32 %60, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %61) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %62 = call i32 @arm_copy_from_user(ptr noundef nonnull %46, ptr noundef %52, i32 noundef %54) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %59) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %68, label %64, !prof !13

64:                                               ; preds = %58, %51
  %65 = phi i32 [ %62, %58 ], [ %54, %51 ]
  %66 = sub i32 %54, %65
  %67 = getelementptr i8, ptr %46, i32 %66
  call void @llvm.memset.p0.i32(ptr align 1 %67, i8 0, i32 %65, i1 false) #20
  br label %79

68:                                               ; preds = %58
  %69 = load ptr, ptr %7, align 4
  %70 = call i32 %69(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %46) #20
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %68
  %73 = load i32, ptr %36, align 4
  %74 = getelementptr i8, ptr %52, i32 %73
  %75 = load i32, ptr %34, align 4
  %76 = add i32 %75, %73
  store i32 %76, ptr %34, align 4
  %77 = sub i32 %53, %73
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %51

79:                                               ; preds = %72, %68, %64, %48
  %80 = phi i32 [ -14, %64 ], [ 0, %48 ], [ 0, %72 ], [ %70, %68 ]
  call void @kfree(ptr noundef nonnull %46) #20
  br label %81

81:                                               ; preds = %79, %44, %40, %33, %29, %14, %10, %2
  %82 = phi i32 [ %80, %79 ], [ -95, %14 ], [ -95, %10 ], [ -95, %2 ], [ -22, %33 ], [ -22, %40 ], [ -12, %44 ], [ -14, %29 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #20
  ret i32 %82
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ethtool_get_coalesce(ptr noundef %0, ptr noundef %1) unnamed_addr #16 {
  %3 = alloca %struct.ethtool_coalesce, align 4
  %4 = alloca %struct.kernel_ethtool_coalesce, align 2
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %3) #20
  %5 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(92) %5, i8 0, i32 88, i1 false)
  store i32 14, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #20
  store i16 0, ptr %4, align 2
  %6 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 42
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.ethtool_ops, ptr %7, i32 0, i32 16
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %27, label %11

11:                                               ; preds = %2
  %12 = call i32 %9(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef null) #20
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %11
  %15 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 92, i32 -1090519040) #21, !srcloc !17
  %16 = extractvalue { i32, i32 } %15, 0
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %14
  %19 = tail call ptr @llvm.thread.pointer() #20
  %20 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 3
  %21 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %20) #18, !srcloc !14
  %22 = and i32 %21, -13
  %23 = or i32 %22, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %23) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %24 = call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef nonnull %3, i32 noundef 92) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %21) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, i32 0, i32 -14
  br label %27

27:                                               ; preds = %18, %14, %11, %2
  %28 = phi i32 [ -95, %2 ], [ %12, %11 ], [ -14, %14 ], [ %26, %18 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %3) #20
  ret i32 %28
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ethtool_set_coalesce(ptr noundef %0, ptr noundef %1) unnamed_addr #16 {
  %3 = alloca %struct.kernel_ethtool_coalesce, align 2
  %4 = alloca %struct.ethtool_coalesce, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #20
  store i16 0, ptr %3, align 2
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %4) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(92) %4, i8 0, i32 92, i1 false), !annotation !11
  %5 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 42
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.ethtool_ops, ptr %6, i32 0, i32 17
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %154, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.ethtool_ops, ptr %6, i32 0, i32 16
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %154, label %14

14:                                               ; preds = %10
  %15 = call i32 %12(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef null) #20
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %154

17:                                               ; preds = %14
  %18 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 92, i32 -1090519040) #21, !srcloc !12
  %19 = extractvalue { i32, i32 } %18, 0
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %29, !prof !13

21:                                               ; preds = %17
  %22 = tail call ptr @llvm.thread.pointer() #20
  %23 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 3
  %24 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %23) #18, !srcloc !14
  %25 = and i32 %24, -13
  %26 = or i32 %25, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %26) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %27 = call i32 @arm_copy_from_user(ptr noundef nonnull %4, ptr noundef %1, i32 noundef 92) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %24) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29, !prof !13

29:                                               ; preds = %21, %17
  %30 = phi i32 [ %27, %21 ], [ 92, %17 ]
  %31 = sub i32 92, %30
  %32 = getelementptr i8, ptr %4, i32 %31
  call void @llvm.memset.p0.i32(ptr align 1 %32, i8 0, i32 %30, i1 false) #20
  br label %154

33:                                               ; preds = %21
  %34 = load ptr, ptr %5, align 8
  %35 = getelementptr inbounds %struct.ethtool_ops, ptr %34, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.ethtool_coalesce, ptr %4, i32 0, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i32
  %41 = getelementptr inbounds %struct.ethtool_coalesce, ptr %4, i32 0, i32 2
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 0
  %44 = or i32 %40, 2
  %45 = select i1 %43, i32 %40, i32 %44
  %46 = getelementptr inbounds %struct.ethtool_coalesce, ptr %4, i32 0, i32 3
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 0
  %49 = or i32 %45, 4
  %50 = select i1 %48, i32 %45, i32 %49
  %51 = getelementptr inbounds %struct.ethtool_coalesce, ptr %4, i32 0, i32 4
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, 0
  %54 = or i32 %50, 8
  %55 = select i1 %53, i32 %50, i32 %54
  %56 = getelementptr inbounds %struct.ethtool_coalesce, ptr %4, i32 0, i32 5
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, 0
  %59 = or i32 %55, 16
  %60 = select i1 %58, i32 %55, i32 %59
  %61 = getelementptr inbounds %struct.ethtool_coalesce, ptr %4, i32 0, i32 6
  %62 = load i32, ptr %61, align 4
  %63 = icmp eq i32 %62, 0
  %64 = or i32 %60, 32
  %65 = select i1 %63, i32 %60, i32 %64
  %66 = getelementptr inbounds %struct.ethtool_coalesce, ptr %4, i32 0, i32 7
  %67 = load i32, ptr %66, align 4
  %68 = icmp eq i32 %67, 0
  %69 = or i32 %65, 64
  %70 = select i1 %68, i32 %65, i32 %69
  %71 = getelementptr inbounds %struct.ethtool_coalesce, ptr %4, i32 0, i32 8
  %72 = load i32, ptr %71, align 4
  %73 = icmp eq i32 %72, 0
  %74 = or i32 %70, 128
  %75 = select i1 %73, i32 %70, i32 %74
  %76 = getelementptr inbounds %struct.ethtool_coalesce, ptr %4, i32 0, i32 9
  %77 = load i32, ptr %76, align 4
  %78 = icmp eq i32 %77, 0
  %79 = or i32 %75, 256
  %80 = select i1 %78, i32 %75, i32 %79
  %81 = getelementptr inbounds %struct.ethtool_coalesce, ptr %4, i32 0, i32 10
  %82 = load i32, ptr %81, align 4
  %83 = icmp eq i32 %82, 0
  %84 = or i32 %80, 512
  %85 = select i1 %83, i32 %80, i32 %84
  %86 = getelementptr inbounds %struct.ethtool_coalesce, ptr %4, i32 0, i32 11
  %87 = load i32, ptr %86, align 4
  %88 = icmp eq i32 %87, 0
  %89 = or i32 %85, 1024
  %90 = select i1 %88, i32 %85, i32 %89
  %91 = getelementptr inbounds %struct.ethtool_coalesce, ptr %4, i32 0, i32 12
  %92 = load i32, ptr %91, align 4
  %93 = icmp eq i32 %92, 0
  %94 = or i32 %90, 2048
  %95 = select i1 %93, i32 %90, i32 %94
  %96 = getelementptr inbounds %struct.ethtool_coalesce, ptr %4, i32 0, i32 13
  %97 = load i32, ptr %96, align 4
  %98 = icmp eq i32 %97, 0
  %99 = or i32 %95, 4096
  %100 = select i1 %98, i32 %95, i32 %99
  %101 = getelementptr inbounds %struct.ethtool_coalesce, ptr %4, i32 0, i32 14
  %102 = load i32, ptr %101, align 4
  %103 = icmp eq i32 %102, 0
  %104 = or i32 %100, 8192
  %105 = select i1 %103, i32 %100, i32 %104
  %106 = getelementptr inbounds %struct.ethtool_coalesce, ptr %4, i32 0, i32 15
  %107 = load i32, ptr %106, align 4
  %108 = icmp eq i32 %107, 0
  %109 = or i32 %105, 16384
  %110 = select i1 %108, i32 %105, i32 %109
  %111 = getelementptr inbounds %struct.ethtool_coalesce, ptr %4, i32 0, i32 16
  %112 = load i32, ptr %111, align 4
  %113 = icmp eq i32 %112, 0
  %114 = or i32 %110, 32768
  %115 = select i1 %113, i32 %110, i32 %114
  %116 = getelementptr inbounds %struct.ethtool_coalesce, ptr %4, i32 0, i32 17
  %117 = load i32, ptr %116, align 4
  %118 = icmp eq i32 %117, 0
  %119 = or i32 %115, 65536
  %120 = select i1 %118, i32 %115, i32 %119
  %121 = getelementptr inbounds %struct.ethtool_coalesce, ptr %4, i32 0, i32 18
  %122 = load i32, ptr %121, align 4
  %123 = icmp eq i32 %122, 0
  %124 = or i32 %120, 131072
  %125 = select i1 %123, i32 %120, i32 %124
  %126 = getelementptr inbounds %struct.ethtool_coalesce, ptr %4, i32 0, i32 19
  %127 = load i32, ptr %126, align 4
  %128 = icmp eq i32 %127, 0
  %129 = or i32 %125, 262144
  %130 = select i1 %128, i32 %125, i32 %129
  %131 = getelementptr inbounds %struct.ethtool_coalesce, ptr %4, i32 0, i32 20
  %132 = load i32, ptr %131, align 4
  %133 = icmp eq i32 %132, 0
  %134 = or i32 %130, 524288
  %135 = select i1 %133, i32 %130, i32 %134
  %136 = getelementptr inbounds %struct.ethtool_coalesce, ptr %4, i32 0, i32 21
  %137 = load i32, ptr %136, align 4
  %138 = icmp eq i32 %137, 0
  %139 = or i32 %135, 1048576
  %140 = select i1 %138, i32 %135, i32 %139
  %141 = getelementptr inbounds %struct.ethtool_coalesce, ptr %4, i32 0, i32 22
  %142 = load i32, ptr %141, align 4
  %143 = icmp eq i32 %142, 0
  %144 = or i32 %140, 2097152
  %145 = select i1 %143, i32 %140, i32 %144
  %146 = and i32 %145, %36
  %147 = icmp eq i32 %146, %145
  br i1 %147, label %148, label %154

148:                                              ; preds = %33
  %149 = getelementptr inbounds %struct.ethtool_ops, ptr %34, i32 0, i32 17
  %150 = load ptr, ptr %149, align 4
  %151 = call i32 %150(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef null) #20
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %148
  call void @ethtool_notify(ptr noundef %0, i32 noundef 21, ptr noundef null) #20
  br label %154

154:                                              ; preds = %153, %148, %33, %29, %14, %10, %2
  %155 = phi i32 [ -95, %10 ], [ -95, %2 ], [ %15, %14 ], [ -95, %33 ], [ 0, %153 ], [ %151, %148 ], [ -14, %29 ]
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #20
  ret i32 %155
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ethtool_get_ringparam(ptr noundef %0, ptr noundef %1) unnamed_addr #5 {
  %3 = alloca %struct.ethtool_ringparam, align 4
  %4 = alloca %struct.kernel_ethtool_ringparam, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #20
  %5 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %5, i8 0, i32 32, i1 false)
  store i32 16, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #20
  store i32 0, ptr %4, align 4
  %6 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 42
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.ethtool_ops, ptr %7, i32 0, i32 18
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %24, label %11

11:                                               ; preds = %2
  call void %9(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef null) #20
  %12 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 36, i32 -1090519040) #21, !srcloc !17
  %13 = extractvalue { i32, i32 } %12, 0
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %11
  %16 = tail call ptr @llvm.thread.pointer() #20
  %17 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 3
  %18 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %17) #18, !srcloc !14
  %19 = and i32 %18, -13
  %20 = or i32 %19, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %20) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %21 = call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef nonnull %3, i32 noundef 36) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %18) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %22, i32 0, i32 -14
  br label %24

24:                                               ; preds = %15, %11, %2
  %25 = phi i32 [ -95, %2 ], [ -14, %11 ], [ %23, %15 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #20
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ethtool_set_ringparam(ptr noundef %0, ptr noundef %1) unnamed_addr #5 {
  %3 = alloca %struct.ethtool_ringparam, align 4
  %4 = alloca %struct.ethtool_ringparam, align 4
  %5 = alloca %struct.kernel_ethtool_ringparam, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %3, i8 0, i32 36, i1 false), !annotation !11
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #20
  %6 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %6, i8 0, i32 32, i1 false)
  store i32 16, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  store i32 0, ptr %5, align 4, !annotation !11
  %7 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 42
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.ethtool_ops, ptr %8, i32 0, i32 19
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %66, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.ethtool_ops, ptr %8, i32 0, i32 18
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %66, label %16

16:                                               ; preds = %12
  %17 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 36, i32 -1090519040) #21, !srcloc !12
  %18 = extractvalue { i32, i32 } %17, 0
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %28, !prof !13

20:                                               ; preds = %16
  %21 = tail call ptr @llvm.thread.pointer() #20
  %22 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 3
  %23 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %22) #18, !srcloc !14
  %24 = and i32 %23, -13
  %25 = or i32 %24, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %25) #20, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %26 = call i32 @arm_copy_from_user(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 36) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %23) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %32, label %28, !prof !13

28:                                               ; preds = %20, %16
  %29 = phi i32 [ %26, %20 ], [ 36, %16 ]
  %30 = sub i32 36, %29
  %31 = getelementptr i8, ptr %3, i32 %30
  call void @llvm.memset.p0.i32(ptr align 1 %31, i8 0, i32 %29, i1 false) #20
  br label %66

32:                                               ; preds = %20
  %33 = load ptr, ptr %7, align 8
  %34 = getelementptr inbounds %struct.ethtool_ops, ptr %33, i32 0, i32 18
  %35 = load ptr, ptr %34, align 4
  call void %35(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef null) #20
  %36 = getelementptr inbounds %struct.ethtool_ringparam, ptr %3, i32 0, i32 5
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.ethtool_ringparam, ptr %4, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = icmp ugt i32 %37, %39
  br i1 %40, label %66, label %41

41:                                               ; preds = %32
  %42 = getelementptr inbounds %struct.ethtool_ringparam, ptr %3, i32 0, i32 6
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.ethtool_ringparam, ptr %4, i32 0, i32 2
  %45 = load i32, ptr %44, align 4
  %46 = icmp ugt i32 %43, %45
  br i1 %46, label %66, label %47

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.ethtool_ringparam, ptr %3, i32 0, i32 7
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr inbounds %struct.ethtool_ringparam, ptr %4, i32 0, i32 3
  %51 = load i32, ptr %50, align 4
  %52 = icmp ugt i32 %49, %51
  br i1 %52, label %66, label %53

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.ethtool_ringparam, ptr %3, i32 0, i32 8
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr inbounds %struct.ethtool_ringparam, ptr %4, i32 0, i32 4
  %57 = load i32, ptr %56, align 4
  %58 = icmp ugt i32 %55, %57
  br i1 %58, label %66, label %59

59:                                               ; preds = %53
  %60 = load ptr, ptr %7, align 8
  %61 = getelementptr inbounds %struct.ethtool_ops, ptr %60, i32 0, i32 19
  %62 = load ptr, ptr %61, align 4
  %63 = call i32 %62(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef null) #20
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  call void @ethtool_notify(ptr noundef %0, i32 noundef 17, ptr noundef null) #20
  br label %66

66:                                               ; preds = %65, %59, %53, %47, %41, %32, %28, %12, %2
  %67 = phi i32 [ -95, %12 ], [ -95, %2 ], [ -22, %53 ], [ -22, %47 ], [ -22, %41 ], [ -22, %32 ], [ 0, %65 ], [ %63, %59 ], [ -14, %28 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #20
  ret i32 %67
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ethtool_get_pauseparam(ptr noundef %0, ptr noundef %1) unnamed_addr #5 {
  %3 = alloca %struct.ethtool_pauseparam, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #20
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) @__const.ethtool_get_pauseparam.pauseparam, i32 16, i1 false)
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 42
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.ethtool_ops, ptr %5, i32 0, i32 21
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %22, label %9

9:                                                ; preds = %2
  call void %7(ptr noundef %0, ptr noundef nonnull %3) #20
  %10 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 16, i32 -1090519040) #21, !srcloc !17
  %11 = extractvalue { i32, i32 } %10, 0
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %9
  %14 = tail call ptr @llvm.thread.pointer() #20
  %15 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %16 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %15) #18, !srcloc !14
  %17 = and i32 %16, -13
  %18 = or i32 %17, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %18) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %19 = call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef nonnull %3, i32 noundef 16) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %16) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, i32 0, i32 -14
  br label %22

22:                                               ; preds = %13, %9, %2
  %23 = phi i32 [ -95, %2 ], [ -14, %9 ], [ %21, %13 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #20
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ethtool_set_pauseparam(ptr noundef %0, ptr noundef %1) unnamed_addr #5 {
  %3 = alloca %struct.ethtool_pauseparam, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !11
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 42
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.ethtool_ops, ptr %5, i32 0, i32 22
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %32, label %9

9:                                                ; preds = %2
  %10 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 16, i32 -1090519040) #21, !srcloc !12
  %11 = extractvalue { i32, i32 } %10, 0
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %21, !prof !13

13:                                               ; preds = %9
  %14 = tail call ptr @llvm.thread.pointer() #20
  %15 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %16 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %15) #18, !srcloc !14
  %17 = and i32 %16, -13
  %18 = or i32 %17, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %18) #20, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %19 = call i32 @arm_copy_from_user(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 16) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %16) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21, !prof !13

21:                                               ; preds = %13, %9
  %22 = phi i32 [ %19, %13 ], [ 16, %9 ]
  %23 = sub i32 16, %22
  %24 = getelementptr i8, ptr %3, i32 %23
  call void @llvm.memset.p0.i32(ptr align 1 %24, i8 0, i32 %22, i1 false) #20
  br label %32

25:                                               ; preds = %13
  %26 = load ptr, ptr %4, align 8
  %27 = getelementptr inbounds %struct.ethtool_ops, ptr %26, i32 0, i32 22
  %28 = load ptr, ptr %27, align 4
  %29 = call i32 %28(ptr noundef %0, ptr noundef nonnull %3) #20
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  call void @ethtool_notify(ptr noundef %0, i32 noundef 23, ptr noundef null) #20
  br label %32

32:                                               ; preds = %31, %25, %21, %2
  %33 = phi i32 [ -95, %2 ], [ 0, %31 ], [ %29, %25 ], [ -14, %21 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #20
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ethtool_self_test(ptr noundef %0, ptr noundef %1) unnamed_addr #5 {
  %3 = alloca %struct.ethtool_test, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !11
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 42
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.ethtool_ops, ptr %5, i32 0, i32 23
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %87, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.ethtool_ops, ptr %5, i32 0, i32 31
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %87, label %13

13:                                               ; preds = %9
  %14 = tail call i32 %11(ptr noundef %0, i32 noundef 0) #20
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %87, label %16

16:                                               ; preds = %13
  %17 = icmp eq i32 %14, 0
  br i1 %17, label %18, label %19, !prof !9

18:                                               ; preds = %16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1906, i32 noundef 9, ptr noundef null) #20
  br label %19

19:                                               ; preds = %18, %16
  %20 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 16, i32 -1090519040) #21
  %21 = extractvalue { i32, i32 } %20, 0
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %31, !prof !13

23:                                               ; preds = %19
  %24 = tail call ptr @llvm.thread.pointer() #20
  %25 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 3
  %26 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %25) #18, !srcloc !14
  %27 = and i32 %26, -13
  %28 = or i32 %27, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %28) #20, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %29 = call i32 @arm_copy_from_user(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 16) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %26) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %31, !prof !13

31:                                               ; preds = %23, %19
  %32 = phi i32 [ %29, %23 ], [ 16, %19 ]
  %33 = sub i32 16, %32
  %34 = getelementptr i8, ptr %3, i32 %33
  call void @llvm.memset.p0.i32(ptr align 1 %34, i8 0, i32 %32, i1 false) #20
  br label %87

35:                                               ; preds = %23
  %36 = getelementptr inbounds %struct.ethtool_test, ptr %3, i32 0, i32 3
  store i32 %14, ptr %36, align 4
  %37 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %14, i32 8) #20
  %38 = extractvalue { i32, i1 } %37, 1
  br i1 %38, label %87, label %39, !prof !9

39:                                               ; preds = %35
  %40 = extractvalue { i32, i1 } %37, 0
  %41 = call noalias align 64 ptr @__kmalloc(i32 noundef %40, i32 noundef 1052096) #23
  %42 = icmp eq ptr %41, null
  br i1 %42, label %87, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %45 = call i32 @_test_and_set_bit(i32 noundef 5, ptr noundef %44) #20
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  call void @linkwatch_fire_event(ptr noundef %0) #20
  br label %48

48:                                               ; preds = %47, %43
  %49 = load ptr, ptr %6, align 4
  call void %49(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %41) #20
  %50 = call i32 @_test_and_clear_bit(i32 noundef 5, ptr noundef %44) #20
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %48
  call void @linkwatch_fire_event(ptr noundef %0) #20
  br label %53

53:                                               ; preds = %52, %48
  %54 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %25) #18, !srcloc !14
  %55 = and i32 %54, -13
  %56 = or i32 %55, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %56) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %57 = call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef nonnull %3, i32 noundef 16) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %54) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %85

59:                                               ; preds = %53
  %60 = getelementptr i8, ptr %1, i32 16
  %61 = load i32, ptr %36, align 4
  %62 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %61, i32 8) #20
  %63 = extractvalue { i32, i1 } %62, 1
  %64 = extractvalue { i32, i1 } %62, 0
  %65 = select i1 %63, i32 -1, i32 %64
  %66 = icmp slt i32 %65, 0
  %67 = load i1, ptr @check_copy_size.__already_done, align 1
  %68 = xor i1 %67, true
  %69 = select i1 %66, i1 %68, i1 false
  br i1 %69, label %70, label %71, !prof !9

70:                                               ; preds = %59
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 230, i32 noundef 9, ptr noundef null) #20
  br label %71

71:                                               ; preds = %70, %59
  br i1 %66, label %85, label %72, !prof !9

72:                                               ; preds = %71
  %73 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %60, i32 %65, i32 -1090519040) #21, !srcloc !17
  %74 = extractvalue { i32, i32 } %73, 0
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %72
  %77 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %25) #18, !srcloc !14
  %78 = and i32 %77, -13
  %79 = or i32 %78, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %79) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %80 = call i32 @arm_copy_to_user(ptr noundef %60, ptr noundef nonnull %41, i32 noundef %65) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %77) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  br label %81

81:                                               ; preds = %76, %72
  %82 = phi i32 [ %80, %76 ], [ %64, %72 ]
  %83 = icmp eq i32 %82, 0
  %84 = select i1 %83, i32 0, i32 -14
  br label %85

85:                                               ; preds = %81, %71, %53
  %86 = phi i32 [ -14, %53 ], [ -14, %71 ], [ %84, %81 ]
  call void @kfree(ptr noundef nonnull %41) #20
  br label %87

87:                                               ; preds = %85, %39, %35, %31, %13, %9, %2
  %88 = phi i32 [ %86, %85 ], [ -95, %9 ], [ -95, %2 ], [ %14, %13 ], [ -12, %39 ], [ -14, %31 ], [ -12, %35 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #20
  ret i32 %88
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ethtool_get_strings(ptr noundef %0, ptr noundef %1) unnamed_addr #5 {
  %3 = alloca %struct.ethtool_gstrings, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %3, i8 0, i32 12, i1 false), !annotation !11
  %4 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 12, i32 -1090519040) #21
  %5 = extractvalue { i32, i32 } %4, 0
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %15, !prof !13

7:                                                ; preds = %2
  %8 = tail call ptr @llvm.thread.pointer() #20
  %9 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %10 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %9) #18, !srcloc !14
  %11 = and i32 %10, -13
  %12 = or i32 %11, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #20, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %13 = call i32 @arm_copy_from_user(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 12) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15, !prof !13

15:                                               ; preds = %7, %2
  %16 = phi i32 [ %13, %7 ], [ 12, %2 ]
  %17 = sub i32 12, %16
  %18 = getelementptr i8, ptr %3, i32 %17
  call void @llvm.memset.p0.i32(ptr align 1 %18, i8 0, i32 %16, i1 false) #20
  br label %143

19:                                               ; preds = %7
  %20 = getelementptr inbounds %struct.ethtool_gstrings, ptr %3, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = load ptr, ptr @ethtool_phy_ops, align 4
  %23 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 42
  %24 = load ptr, ptr %23, align 8
  switch i32 %21, label %44 [
    i32 4, label %54
    i32 5, label %25
    i32 6, label %26
    i32 8, label %27
    i32 7, label %28
    i32 9, label %43
  ]

25:                                               ; preds = %19
  br label %54

26:                                               ; preds = %19
  br label %54

27:                                               ; preds = %19
  br label %54

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %30 = load ptr, ptr %29, align 8
  %31 = icmp eq ptr %30, null
  br i1 %31, label %44, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.ethtool_ops, ptr %24, i32 0, i32 61
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  %36 = icmp ne ptr %22, null
  %37 = select i1 %35, i1 %36, i1 false
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = load ptr, ptr %22, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = call i32 %39(ptr noundef nonnull %30) #20
  br label %57

43:                                               ; preds = %19
  br label %54

44:                                               ; preds = %38, %32, %28, %19
  %45 = getelementptr inbounds %struct.ethtool_ops, ptr %24, i32 0, i32 31
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %143, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.ethtool_ops, ptr %24, i32 0, i32 24
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %143, label %52

52:                                               ; preds = %48
  %53 = call i32 %46(ptr noundef %0, i32 noundef %21) #20
  br label %57

54:                                               ; preds = %43, %27, %26, %25, %19
  %55 = phi i32 [ 64, %19 ], [ 92, %43 ], [ 4, %27 ], [ 5, %26 ], [ 3, %25 ]
  %56 = getelementptr inbounds %struct.ethtool_gstrings, ptr %3, i32 0, i32 2
  store i32 %55, ptr %56, align 4
  br label %71

57:                                               ; preds = %52, %41
  %58 = phi i32 [ %42, %41 ], [ %53, %52 ]
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %143, label %60

60:                                               ; preds = %57
  %61 = icmp ugt i32 %58, 67108863
  br i1 %61, label %143, label %62

62:                                               ; preds = %60
  %63 = icmp eq i32 %58, 0
  %64 = load i1, ptr @ethtool_get_strings.__already_done, align 1
  %65 = xor i1 %64, true
  %66 = select i1 %63, i1 %65, i1 false
  br i1 %66, label %67, label %69, !prof !9

67:                                               ; preds = %62
  store i1 true, ptr @ethtool_get_strings.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1947, i32 noundef 9, ptr noundef null) #20
  %68 = getelementptr inbounds %struct.ethtool_gstrings, ptr %3, i32 0, i32 2
  store i32 0, ptr %68, align 4
  br label %105

69:                                               ; preds = %62
  %70 = getelementptr inbounds %struct.ethtool_gstrings, ptr %3, i32 0, i32 2
  store i32 %58, ptr %70, align 4
  br i1 %63, label %105, label %71

71:                                               ; preds = %69, %54
  %72 = phi ptr [ %56, %54 ], [ %70, %69 ]
  %73 = phi i32 [ %55, %54 ], [ %58, %69 ]
  %74 = shl nuw nsw i32 %73, 5
  %75 = call noalias ptr @vzalloc(i32 noundef %74) #23
  %76 = icmp eq ptr %75, null
  br i1 %76, label %143, label %77

77:                                               ; preds = %71
  %78 = load i32, ptr %20, align 4
  %79 = load ptr, ptr @ethtool_phy_ops, align 4
  %80 = load ptr, ptr %23, align 8
  switch i32 %78, label %102 [
    i32 4, label %81
    i32 5, label %82
    i32 6, label %83
    i32 8, label %84
    i32 7, label %85
    i32 9, label %101
  ]

81:                                               ; preds = %77
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(2048) %75, ptr noundef nonnull align 1 dereferenceable(2048) @netdev_features_strings, i32 2048, i1 false) #20
  br label %105

82:                                               ; preds = %77
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(96) %75, ptr noundef nonnull align 1 dereferenceable(96) @rss_hash_func_strings, i32 96, i1 false) #20
  br label %105

83:                                               ; preds = %77
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(160) %75, ptr noundef nonnull align 1 dereferenceable(160) @tunable_strings, i32 160, i1 false) #20
  br label %105

84:                                               ; preds = %77
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %75, ptr noundef nonnull align 1 dereferenceable(128) @phy_tunable_strings, i32 128, i1 false) #20
  br label %105

85:                                               ; preds = %77
  %86 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %87 = load ptr, ptr %86, align 8
  %88 = icmp eq ptr %87, null
  br i1 %88, label %102, label %89

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.ethtool_ops, ptr %80, i32 0, i32 61
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, null
  %93 = icmp ne ptr %79, null
  %94 = select i1 %92, i1 %93, i1 false
  br i1 %94, label %95, label %102

95:                                               ; preds = %89
  %96 = getelementptr inbounds %struct.ethtool_phy_ops, ptr %79, i32 0, i32 1
  %97 = load ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %102, label %99

99:                                               ; preds = %95
  %100 = call i32 %97(ptr noundef nonnull %87, ptr noundef nonnull %75) #20
  br label %105

101:                                              ; preds = %77
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(2944) %75, ptr noundef nonnull align 1 dereferenceable(2944) @link_mode_names, i32 2944, i1 false) #20
  br label %105

102:                                              ; preds = %95, %89, %85, %77
  %103 = getelementptr inbounds %struct.ethtool_ops, ptr %80, i32 0, i32 24
  %104 = load ptr, ptr %103, align 4
  call void %104(ptr noundef %0, i32 noundef %78, ptr noundef nonnull %75) #20
  br label %105

105:                                              ; preds = %102, %101, %99, %84, %83, %82, %81, %69, %67
  %106 = phi ptr [ %70, %69 ], [ %68, %67 ], [ %72, %81 ], [ %72, %82 ], [ %72, %83 ], [ %72, %84 ], [ %72, %99 ], [ %72, %101 ], [ %72, %102 ]
  %107 = phi ptr [ null, %69 ], [ null, %67 ], [ %75, %81 ], [ %75, %82 ], [ %75, %83 ], [ %75, %84 ], [ %75, %99 ], [ %75, %101 ], [ %75, %102 ]
  %108 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %9) #18, !srcloc !14
  %109 = and i32 %108, -13
  %110 = or i32 %109, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %110) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %111 = call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef nonnull %3, i32 noundef 12) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %108) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %141

113:                                              ; preds = %105
  %114 = load i32, ptr %106, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %140, label %116

116:                                              ; preds = %113
  %117 = getelementptr i8, ptr %1, i32 12
  %118 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %114, i32 32) #20
  %119 = extractvalue { i32, i1 } %118, 1
  %120 = extractvalue { i32, i1 } %118, 0
  %121 = select i1 %119, i32 -1, i32 %120
  %122 = icmp slt i32 %121, 0
  %123 = load i1, ptr @check_copy_size.__already_done, align 1
  %124 = xor i1 %123, true
  %125 = select i1 %122, i1 %124, i1 false
  br i1 %125, label %126, label %127, !prof !9

126:                                              ; preds = %116
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 230, i32 noundef 9, ptr noundef null) #20
  br label %127

127:                                              ; preds = %126, %116
  br i1 %122, label %141, label %128, !prof !9

128:                                              ; preds = %127
  %129 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %117, i32 %121, i32 -1090519040) #21, !srcloc !17
  %130 = extractvalue { i32, i32 } %129, 0
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %128
  %133 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %9) #18, !srcloc !14
  %134 = and i32 %133, -13
  %135 = or i32 %134, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %135) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %136 = call i32 @arm_copy_to_user(ptr noundef %117, ptr noundef %107, i32 noundef %121) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %133) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  br label %137

137:                                              ; preds = %132, %128
  %138 = phi i32 [ %136, %132 ], [ %120, %128 ]
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %137, %113
  br label %141

141:                                              ; preds = %140, %137, %127, %105
  %142 = phi i32 [ -14, %105 ], [ -14, %137 ], [ 0, %140 ], [ -14, %127 ]
  call void @vfree(ptr noundef %107) #20
  br label %143

143:                                              ; preds = %141, %71, %60, %57, %48, %44, %15
  %144 = phi i32 [ %142, %141 ], [ %58, %57 ], [ -12, %60 ], [ -12, %71 ], [ -14, %15 ], [ -95, %48 ], [ -95, %44 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #20
  ret i32 %144
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ethtool_phys_id(ptr noundef %0, ptr noundef %1) unnamed_addr #5 {
  %3 = alloca %struct.ethtool_value, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  store i64 0, ptr %3, align 8, !annotation !11
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 42
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.ethtool_ops, ptr %5, i32 0, i32 25
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %101, label %9

9:                                                ; preds = %2
  %10 = load i1, ptr @ethtool_phys_id.busy, align 1
  br i1 %10, label %101, label %11

11:                                               ; preds = %9
  %12 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 8, i32 -1090519040) #21, !srcloc !12
  %13 = extractvalue { i32, i32 } %12, 0
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %23, !prof !13

15:                                               ; preds = %11
  %16 = tail call ptr @llvm.thread.pointer() #20
  %17 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 3
  %18 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %17) #18, !srcloc !14
  %19 = and i32 %18, -13
  %20 = or i32 %19, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %20) #20, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %21 = call i32 @arm_copy_from_user(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 8) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %18) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23, !prof !13

23:                                               ; preds = %15, %11
  %24 = phi i32 [ %21, %15 ], [ 8, %11 ]
  %25 = sub i32 8, %24
  %26 = getelementptr i8, ptr %3, i32 %25
  call void @llvm.memset.p0.i32(ptr align 1 %26, i8 0, i32 %24, i1 false) #20
  br label %101

27:                                               ; preds = %15
  %28 = load ptr, ptr %6, align 4
  %29 = call i32 %28(ptr noundef %0, i32 noundef 1) #20
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %101, label %31

31:                                               ; preds = %27
  store i1 true, ptr @ethtool_phys_id.busy, align 1
  %32 = icmp eq ptr %0, null
  br i1 %32, label %45, label %33

33:                                               ; preds = %31
  %34 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #20, !srcloc !18
  %35 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 99
  %36 = load ptr, ptr %35, align 8
  %37 = ptrtoint ptr %36 to i32
  %38 = call i32 @llvm.read_register.i32(metadata !0) #20
  %39 = inttoptr i32 %38 to ptr
  %40 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %39) #18, !srcloc !19
  %41 = add i32 %40, %37
  %42 = inttoptr i32 %41 to ptr
  %43 = load i32, ptr %42, align 4
  %44 = add i32 %43, 1
  store i32 %44, ptr %42, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %34) #20, !srcloc !20
  br label %45

45:                                               ; preds = %33, %31
  call void @rtnl_unlock() #20
  %46 = icmp eq i32 %29, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %45
  %48 = getelementptr inbounds %struct.ethtool_value, ptr %3, i32 0, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, 0
  %51 = mul i32 %49, 100
  %52 = select i1 %50, i32 2147483647, i32 %51
  %53 = call i32 @schedule_timeout_interruptible(i32 noundef %52) #20
  br label %84

54:                                               ; preds = %45
  %55 = shl nuw i32 %29, 1
  %56 = sdiv i32 100, %55
  %57 = getelementptr inbounds %struct.ethtool_value, ptr %3, i32 0, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = mul i32 %58, %55
  %60 = zext i32 %59 to i64
  br label %61

61:                                               ; preds = %79, %54
  %62 = phi i64 [ 0, %54 ], [ %64, %79 ]
  call void @rtnl_lock() #20
  %63 = load ptr, ptr %6, align 4
  %64 = add i64 %62, 1
  %65 = and i64 %62, 1
  %66 = icmp eq i64 %65, 0
  %67 = select i1 %66, i32 2, i32 3
  %68 = call i32 %63(ptr noundef %0, i32 noundef %67) #20
  call void @rtnl_unlock() #20
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %84

70:                                               ; preds = %61
  %71 = call i32 @schedule_timeout_interruptible(i32 noundef %56) #20
  %72 = load volatile i32, ptr %16, align 4
  %73 = and i32 %72, 256
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %84, !prof !13

75:                                               ; preds = %70
  %76 = load volatile i32, ptr %16, align 4
  %77 = and i32 %76, 1
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %75
  %80 = load i32, ptr %57, align 4
  %81 = icmp eq i32 %80, 0
  %82 = icmp ult i64 %64, %60
  %83 = select i1 %81, i1 true, i1 %82
  br i1 %83, label %61, label %84

84:                                               ; preds = %79, %75, %70, %61, %47
  %85 = phi i32 [ 0, %47 ], [ 0, %70 ], [ 0, %79 ], [ %68, %61 ], [ 0, %75 ]
  call void @rtnl_lock() #20
  br i1 %32, label %98, label %86

86:                                               ; preds = %84
  %87 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #20, !srcloc !18
  %88 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 99
  %89 = load ptr, ptr %88, align 8
  %90 = ptrtoint ptr %89 to i32
  %91 = call i32 @llvm.read_register.i32(metadata !0) #20
  %92 = inttoptr i32 %91 to ptr
  %93 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %92) #18, !srcloc !19
  %94 = add i32 %93, %90
  %95 = inttoptr i32 %94 to ptr
  %96 = load i32, ptr %95, align 4
  %97 = add i32 %96, -1
  store i32 %97, ptr %95, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %87) #20, !srcloc !20
  br label %98

98:                                               ; preds = %86, %84
  store i1 false, ptr @ethtool_phys_id.busy, align 1
  %99 = load ptr, ptr %6, align 4
  %100 = call i32 %99(ptr noundef %0, i32 noundef 0) #20
  br label %101

101:                                              ; preds = %98, %27, %23, %9, %2
  %102 = phi i32 [ %85, %98 ], [ -95, %2 ], [ -16, %9 ], [ %29, %27 ], [ -14, %23 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  ret i32 %102
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ethtool_get_stats(ptr noundef %0, ptr noundef %1) unnamed_addr #5 {
  %3 = alloca %struct.ethtool_stats, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  store i64 0, ptr %3, align 8, !annotation !11
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 42
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.ethtool_ops, ptr %5, i32 0, i32 26
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %71, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.ethtool_ops, ptr %5, i32 0, i32 31
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %71, label %13

13:                                               ; preds = %9
  %14 = tail call i32 %11(ptr noundef %0, i32 noundef 1) #20
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %71, label %16

16:                                               ; preds = %13
  %17 = icmp ugt i32 %14, 268435455
  br i1 %17, label %71, label %18

18:                                               ; preds = %16
  %19 = icmp eq i32 %14, 0
  %20 = load i1, ptr @ethtool_get_stats.__already_done, align 1
  %21 = xor i1 %20, true
  %22 = select i1 %19, i1 %21, i1 false
  br i1 %22, label %23, label %24, !prof !9

23:                                               ; preds = %18
  store i1 true, ptr @ethtool_get_stats.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2059, i32 noundef 9, ptr noundef null) #20
  br label %24

24:                                               ; preds = %23, %18
  %25 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 8, i32 -1090519040) #21
  %26 = extractvalue { i32, i32 } %25, 0
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %36, !prof !13

28:                                               ; preds = %24
  %29 = tail call ptr @llvm.thread.pointer() #20
  %30 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 3
  %31 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %30) #18, !srcloc !14
  %32 = and i32 %31, -13
  %33 = or i32 %32, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %33) #20, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %34 = call i32 @arm_copy_from_user(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 8) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %31) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %40, label %36, !prof !13

36:                                               ; preds = %28, %24
  %37 = phi i32 [ %34, %28 ], [ 8, %24 ]
  %38 = sub i32 8, %37
  %39 = getelementptr i8, ptr %3, i32 %38
  call void @llvm.memset.p0.i32(ptr align 1 %39, i8 0, i32 %37, i1 false) #20
  br label %71

40:                                               ; preds = %28
  %41 = getelementptr inbounds %struct.ethtool_stats, ptr %3, i32 0, i32 1
  store i32 %14, ptr %41, align 4
  br i1 %19, label %48, label %42

42:                                               ; preds = %40
  %43 = shl nuw nsw i32 %14, 3
  %44 = call noalias ptr @vzalloc(i32 noundef %43) #23
  %45 = icmp eq ptr %44, null
  br i1 %45, label %71, label %46

46:                                               ; preds = %42
  %47 = load ptr, ptr %6, align 4
  call void %47(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %44) #20
  br label %48

48:                                               ; preds = %46, %40
  %49 = phi ptr [ %44, %46 ], [ null, %40 ]
  %50 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %30) #18, !srcloc !14
  %51 = and i32 %50, -13
  %52 = or i32 %51, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %52) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %53 = call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef nonnull %3, i32 noundef 8) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %50) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %69

55:                                               ; preds = %48
  br i1 %19, label %68, label %56

56:                                               ; preds = %55
  %57 = getelementptr i8, ptr %1, i32 8
  %58 = shl nuw nsw i32 %14, 3
  %59 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %57, i32 %58, i32 -1090519040) #21, !srcloc !17
  %60 = extractvalue { i32, i32 } %59, 0
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %56
  %63 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %30) #18, !srcloc !14
  %64 = and i32 %63, -13
  %65 = or i32 %64, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %65) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %66 = call i32 @arm_copy_to_user(ptr noundef %57, ptr noundef %49, i32 noundef %58) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %63) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %62, %55
  br label %69

69:                                               ; preds = %68, %62, %56, %48
  %70 = phi i32 [ -14, %48 ], [ -14, %62 ], [ 0, %68 ], [ -14, %56 ]
  call void @vfree(ptr noundef %49) #20
  br label %71

71:                                               ; preds = %69, %42, %36, %16, %13, %9, %2
  %72 = phi i32 [ %70, %69 ], [ -95, %9 ], [ -95, %2 ], [ %14, %13 ], [ -12, %16 ], [ -12, %42 ], [ -14, %36 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  ret i32 %72
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ethtool_get_perm_addr(ptr noundef %0, ptr noundef %1) unnamed_addr #5 {
  %3 = alloca %struct.ethtool_perm_addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  store i64 0, ptr %3, align 8, !annotation !11
  %4 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 8, i32 -1090519040) #21
  %5 = extractvalue { i32, i32 } %4, 0
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %15, !prof !13

7:                                                ; preds = %2
  %8 = tail call ptr @llvm.thread.pointer() #20
  %9 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %10 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %9) #18, !srcloc !14
  %11 = and i32 %10, -13
  %12 = or i32 %11, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #20, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %13 = call i32 @arm_copy_from_user(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 8) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15, !prof !13

15:                                               ; preds = %7, %2
  %16 = phi i32 [ %13, %7 ], [ 8, %2 ]
  %17 = sub i32 8, %16
  %18 = getelementptr i8, ptr %3, i32 %17
  call void @llvm.memset.p0.i32(ptr align 1 %18, i8 0, i32 %16, i1 false) #20
  br label %55

19:                                               ; preds = %7
  %20 = getelementptr inbounds %struct.ethtool_perm_addr, ptr %3, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 51
  %23 = load i8, ptr %22, align 1
  %24 = zext i8 %23 to i32
  %25 = icmp ult i32 %21, %24
  br i1 %25, label %55, label %26

26:                                               ; preds = %19
  store i32 %24, ptr %20, align 4
  %27 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %9) #18, !srcloc !14
  %28 = and i32 %27, -13
  %29 = or i32 %28, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %29) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %30 = call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef nonnull %3, i32 noundef 8) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %27) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %55

32:                                               ; preds = %26
  %33 = getelementptr i8, ptr %1, i32 8
  %34 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 49
  %35 = load i32, ptr %20, align 4
  %36 = icmp slt i32 %35, 0
  %37 = load i1, ptr @check_copy_size.__already_done, align 1
  %38 = xor i1 %37, true
  %39 = select i1 %36, i1 %38, i1 false
  br i1 %39, label %40, label %41, !prof !9

40:                                               ; preds = %32
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 230, i32 noundef 9, ptr noundef null) #20
  br label %41

41:                                               ; preds = %40, %32
  br i1 %36, label %55, label %42, !prof !9

42:                                               ; preds = %41
  %43 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %33, i32 %35, i32 -1090519040) #21, !srcloc !17
  %44 = extractvalue { i32, i32 } %43, 0
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %9) #18, !srcloc !14
  %48 = and i32 %47, -13
  %49 = or i32 %48, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %49) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %50 = call i32 @arm_copy_to_user(ptr noundef %33, ptr noundef %34, i32 noundef %35) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %47) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  br label %51

51:                                               ; preds = %46, %42
  %52 = phi i32 [ %50, %46 ], [ %35, %42 ]
  %53 = icmp eq i32 %52, 0
  %54 = select i1 %53, i32 0, i32 -14
  br label %55

55:                                               ; preds = %51, %41, %26, %19, %15
  %56 = phi i32 [ -525, %19 ], [ -14, %26 ], [ -14, %15 ], [ -14, %41 ], [ %54, %51 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ethtool_set_value(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2) unnamed_addr #5 {
  %4 = alloca %struct.ethtool_value, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  store i64 0, ptr %4, align 8, !annotation !11
  %5 = icmp eq ptr %2, null
  br i1 %5, label %26, label %6

6:                                                ; preds = %3
  %7 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 8, i32 -1090519040) #21, !srcloc !12
  %8 = extractvalue { i32, i32 } %7, 0
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %18, !prof !13

10:                                               ; preds = %6
  %11 = tail call ptr @llvm.thread.pointer() #20
  %12 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %13 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %12) #18, !srcloc !14
  %14 = and i32 %13, -13
  %15 = or i32 %14, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #20, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %16 = call i32 @arm_copy_from_user(ptr noundef nonnull %4, ptr noundef %1, i32 noundef 8) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18, !prof !13

18:                                               ; preds = %10, %6
  %19 = phi i32 [ %16, %10 ], [ 8, %6 ]
  %20 = sub i32 8, %19
  %21 = getelementptr i8, ptr %4, i32 %20
  call void @llvm.memset.p0.i32(ptr align 1 %21, i8 0, i32 %19, i1 false) #20
  br label %26

22:                                               ; preds = %10
  %23 = getelementptr inbounds %struct.ethtool_value, ptr %4, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = call i32 %2(ptr noundef %0, i32 noundef %24) #20
  br label %26

26:                                               ; preds = %22, %18, %3
  %27 = phi i32 [ %25, %22 ], [ -95, %3 ], [ -14, %18 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @__ethtool_set_flags(ptr noundef %0, i32 noundef %1) #5 {
  %3 = and i32 %1, -402686337
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %37

5:                                                ; preds = %2
  %6 = and i32 %1, 33152
  %7 = zext i32 %6 to i64
  %8 = and i32 %1, 134217728
  %9 = zext i32 %8 to i64
  %10 = shl nuw nsw i64 %9, 11
  %11 = or i64 %10, %7
  %12 = and i32 %1, 268435456
  %13 = zext i32 %12 to i64
  %14 = shl nuw nsw i64 %13, 11
  %15 = or i64 %11, %14
  %16 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 23
  %17 = load i64, ptr %16, align 16
  %18 = and i64 %17, 824633753984
  %19 = xor i64 %18, %15
  %20 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 24
  %21 = load i64, ptr %20, align 8
  %22 = xor i64 %21, -1
  %23 = and i64 %19, %22
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %5
  %26 = and i64 %19, %21
  %27 = icmp eq i64 %26, 0
  %28 = select i1 %27, i32 -95, i32 -22
  br label %37

29:                                               ; preds = %5
  %30 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 25
  %31 = load i64, ptr %30, align 32
  %32 = xor i64 %19, -1
  %33 = and i64 %31, %32
  %34 = and i64 %19, %15
  %35 = or i64 %33, %34
  store i64 %35, ptr %30, align 32
  %36 = tail call i32 @__netdev_update_features(ptr noundef %0) #20
  br label %37

37:                                               ; preds = %29, %25, %2
  %38 = phi i32 [ %28, %25 ], [ 0, %29 ], [ -22, %2 ]
  ret i32 %38
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ethtool_get_rxnfc(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #16 {
  %4 = alloca %struct.ethtool_rxnfc, align 8
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %4) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(192) %4, i8 0, i32 192, i1 false), !annotation !11
  %5 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 42
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.ethtool_ops, ptr %6, i32 0, i32 32
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %66, label %10

10:                                               ; preds = %3
  %11 = icmp eq i32 %1, 41
  %12 = select i1 %11, i32 16, i32 192
  %13 = call fastcc i32 @ethtool_rxnfc_copy_from_user(ptr noundef nonnull %4, ptr noundef %2, i32 noundef %12)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %66

15:                                               ; preds = %10
  br i1 %11, label %16, label %41

16:                                               ; preds = %15
  %17 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %4, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 536870912
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %41, label %21

21:                                               ; preds = %16
  %22 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 192, i32 -1090519040) #21, !srcloc !12
  %23 = extractvalue { i32, i32 } %22, 0
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %33, !prof !13

25:                                               ; preds = %21
  %26 = tail call ptr @llvm.thread.pointer() #20
  %27 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 3
  %28 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %27) #18, !srcloc !14
  %29 = and i32 %28, -13
  %30 = or i32 %29, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %30) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %31 = call i32 @arm_copy_from_user(ptr noundef nonnull %4, ptr noundef %2, i32 noundef 192) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %28) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33, !prof !13

33:                                               ; preds = %25, %21
  %34 = phi i32 [ %31, %25 ], [ 192, %21 ]
  %35 = sub i32 192, %34
  %36 = getelementptr i8, ptr %4, i32 %35
  call void @llvm.memset.p0.i32(ptr align 1 %36, i8 0, i32 %34, i1 false) #20
  br label %66

37:                                               ; preds = %25
  %38 = load i32, ptr %17, align 4
  %39 = and i32 %38, 536870912
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %66, label %41

41:                                               ; preds = %37, %16, %15
  %42 = phi i32 [ 192, %37 ], [ 16, %16 ], [ 192, %15 ]
  %43 = load i32, ptr %4, align 8
  %44 = icmp eq i32 %43, %1
  br i1 %44, label %45, label %66

45:                                               ; preds = %41
  %46 = icmp eq i32 %1, 48
  br i1 %46, label %47, label %57

47:                                               ; preds = %45
  %48 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %4, i32 0, i32 4
  %49 = load i32, ptr %48, align 8
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %47
  %52 = icmp ult i32 %49, 2097153
  br i1 %52, label %53, label %66

53:                                               ; preds = %51
  %54 = shl nuw nsw i32 %49, 2
  %55 = call noalias align 64 ptr @__kmalloc(i32 noundef %54, i32 noundef 1052096) #23
  %56 = icmp eq ptr %55, null
  br i1 %56, label %66, label %57

57:                                               ; preds = %53, %47, %45
  %58 = phi ptr [ %55, %53 ], [ null, %47 ], [ null, %45 ]
  %59 = load ptr, ptr %7, align 4
  %60 = call i32 %59(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %58) #20
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %57
  %63 = call fastcc i32 @ethtool_rxnfc_copy_to_user(ptr noundef %2, ptr noundef nonnull %4, i32 noundef %42, ptr noundef %58)
  br label %64

64:                                               ; preds = %62, %57
  %65 = phi i32 [ %60, %57 ], [ %63, %62 ]
  call void @kfree(ptr noundef %58) #20
  br label %66

66:                                               ; preds = %64, %53, %51, %41, %37, %33, %10, %3
  %67 = phi i32 [ %65, %64 ], [ -95, %3 ], [ -14, %10 ], [ -22, %37 ], [ -22, %41 ], [ -12, %53 ], [ -14, %33 ], [ -12, %51 ]
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %4) #20
  ret i32 %67
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ethtool_set_rxnfc(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #16 {
  %4 = alloca %struct.ethtool_rxnfc, align 8
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %4) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(192) %4, i8 0, i32 192, i1 false), !annotation !11
  %5 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 42
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.ethtool_ops, ptr %6, i32 0, i32 33
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %27, label %10

10:                                               ; preds = %3
  %11 = icmp eq i32 %1, 42
  %12 = select i1 %11, i32 16, i32 192
  %13 = call fastcc i32 @ethtool_rxnfc_copy_from_user(ptr noundef nonnull %4, ptr noundef %2, i32 noundef %12)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %10
  %16 = load ptr, ptr %5, align 8
  %17 = getelementptr inbounds %struct.ethtool_ops, ptr %16, i32 0, i32 33
  %18 = load ptr, ptr %17, align 4
  %19 = call i32 %18(ptr noundef %0, ptr noundef nonnull %4) #20
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %15
  %22 = icmp eq i32 %1, 50
  br i1 %22, label %23, label %26

23:                                               ; preds = %21
  %24 = call fastcc i32 @ethtool_rxnfc_copy_to_user(ptr noundef %2, ptr noundef nonnull %4, i32 noundef %12, ptr noundef null)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23, %21
  br label %27

27:                                               ; preds = %26, %23, %15, %10, %3
  %28 = phi i32 [ 0, %26 ], [ -95, %3 ], [ -14, %10 ], [ %19, %15 ], [ -14, %23 ]
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %4) #20
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ethtool_flash_device(ptr noundef %0, ptr noundef %1) unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 42
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.ethtool_ops, ptr %4, i32 0, i32 34
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %23

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 16
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.net_device_ops, ptr %10, i32 0, i32 70
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %8
  %15 = tail call ptr %12(ptr noundef %0) #20
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.devlink_port, ptr %15, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = tail call ptr @devlink_try_get(ptr noundef %19) #20
  br label %21

21:                                               ; preds = %17, %14, %8
  %22 = phi ptr [ %20, %17 ], [ null, %8 ], [ null, %14 ]
  store ptr %22, ptr %1, align 4
  br label %26

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.ethtool_devlink_compat, ptr %1, i32 0, i32 1
  %25 = tail call i32 %6(ptr noundef %0, ptr noundef %24) #20
  br label %26

26:                                               ; preds = %23, %21
  %27 = phi i32 [ %25, %23 ], [ 0, %21 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ethtool_reset(ptr noundef %0, ptr noundef %1) unnamed_addr #5 {
  %3 = alloca %struct.ethtool_value, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  store i64 0, ptr %3, align 8, !annotation !11
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 42
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.ethtool_ops, ptr %5, i32 0, i32 35
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %39, label %9

9:                                                ; preds = %2
  %10 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 8, i32 -1090519040) #21
  %11 = extractvalue { i32, i32 } %10, 0
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %21, !prof !13

13:                                               ; preds = %9
  %14 = tail call ptr @llvm.thread.pointer() #20
  %15 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %16 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %15) #18, !srcloc !14
  %17 = and i32 %16, -13
  %18 = or i32 %17, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %18) #20, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %19 = call i32 @arm_copy_from_user(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 8) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %16) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21, !prof !13

21:                                               ; preds = %13, %9
  %22 = phi i32 [ %19, %13 ], [ 8, %9 ]
  %23 = sub i32 8, %22
  %24 = getelementptr i8, ptr %3, i32 %23
  call void @llvm.memset.p0.i32(ptr align 1 %24, i8 0, i32 %22, i1 false) #20
  br label %39

25:                                               ; preds = %13
  %26 = load ptr, ptr %4, align 8
  %27 = getelementptr inbounds %struct.ethtool_ops, ptr %26, i32 0, i32 35
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.ethtool_value, ptr %3, i32 0, i32 1
  %30 = call i32 %28(ptr noundef %0, ptr noundef %29) #20
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %25
  %33 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %15) #18, !srcloc !14
  %34 = and i32 %33, -13
  %35 = or i32 %34, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %35) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %36 = call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef nonnull %3, i32 noundef 8) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %33) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %37 = icmp eq i32 %36, 0
  %38 = select i1 %37, i32 0, i32 -14
  br label %39

39:                                               ; preds = %32, %25, %21, %2
  %40 = phi i32 [ -95, %2 ], [ %30, %25 ], [ -14, %21 ], [ %38, %32 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  ret i32 %40
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ethtool_get_sset_info(ptr noundef %0, ptr noundef %1) unnamed_addr #16 {
  %3 = alloca %struct.ethtool_sset_info, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !11
  %4 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 16, i32 -1090519040) #21
  %5 = extractvalue { i32, i32 } %4, 0
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %15, !prof !13

7:                                                ; preds = %2
  %8 = tail call ptr @llvm.thread.pointer() #20
  %9 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %10 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %9) #18, !srcloc !14
  %11 = and i32 %10, -13
  %12 = or i32 %11, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #20, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %13 = call i32 @arm_copy_from_user(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 16) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15, !prof !13

15:                                               ; preds = %7, %2
  %16 = phi i32 [ %13, %7 ], [ 16, %2 ]
  %17 = sub i32 16, %16
  %18 = getelementptr i8, ptr %3, i32 %17
  call void @llvm.memset.p0.i32(ptr align 1 %18, i8 0, i32 %16, i1 false) #20
  br label %118

19:                                               ; preds = %7
  %20 = getelementptr inbounds %struct.ethtool_sset_info, ptr %3, i32 0, i32 2
  %21 = load i64, ptr %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %118, label %23

23:                                               ; preds = %19
  %24 = call i32 @__sw_hweight64(i64 noundef %21) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i32 16, i1 false)
  store i32 55, ptr %3, align 8
  %25 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %24, i32 4) #20
  %26 = extractvalue { i32, i1 } %25, 1
  br i1 %26, label %118, label %27, !prof !9

27:                                               ; preds = %23
  %28 = extractvalue { i32, i1 } %25, 0
  %29 = call noalias align 64 ptr @__kmalloc(i32 noundef %28, i32 noundef 1052096) #23
  %30 = icmp eq ptr %29, null
  br i1 %30, label %118, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 42
  %33 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  br label %34

34:                                               ; preds = %81, %31
  %35 = phi i32 [ 0, %31 ], [ %82, %81 ]
  %36 = phi i32 [ 0, %31 ], [ %83, %81 ]
  %37 = zext i32 %36 to i64
  %38 = shl nuw i64 1, %37
  %39 = and i64 %38, %21
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %81, label %41

41:                                               ; preds = %34
  %42 = load ptr, ptr @ethtool_phy_ops, align 4
  %43 = load ptr, ptr %32, align 8
  switch i32 %36, label %62 [
    i32 4, label %75
    i32 5, label %44
    i32 6, label %45
    i32 8, label %46
    i32 7, label %47
    i32 9, label %61
  ]

44:                                               ; preds = %41
  br label %75

45:                                               ; preds = %41
  br label %75

46:                                               ; preds = %41
  br label %75

47:                                               ; preds = %41
  %48 = load ptr, ptr %33, align 8
  %49 = icmp eq ptr %48, null
  br i1 %49, label %62, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.ethtool_ops, ptr %43, i32 0, i32 61
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  %54 = icmp ne ptr %42, null
  %55 = select i1 %53, i1 %54, i1 false
  br i1 %55, label %56, label %62

56:                                               ; preds = %50
  %57 = load ptr, ptr %42, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  %60 = call i32 %57(ptr noundef nonnull %48) #20
  br label %72

61:                                               ; preds = %41
  br label %75

62:                                               ; preds = %56, %50, %47, %41
  %63 = getelementptr inbounds %struct.ethtool_ops, ptr %43, i32 0, i32 31
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %81, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.ethtool_ops, ptr %43, i32 0, i32 24
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %81, label %70

70:                                               ; preds = %66
  %71 = call i32 %64(ptr noundef %0, i32 noundef %36) #20
  br label %72

72:                                               ; preds = %70, %59
  %73 = phi i32 [ %60, %59 ], [ %71, %70 ]
  %74 = icmp sgt i32 %73, -1
  br i1 %74, label %75, label %81

75:                                               ; preds = %72, %61, %46, %45, %44, %41
  %76 = phi i32 [ %73, %72 ], [ 64, %41 ], [ 92, %61 ], [ 4, %46 ], [ 5, %45 ], [ 3, %44 ]
  %77 = load i64, ptr %20, align 8
  %78 = or i64 %77, %38
  store i64 %78, ptr %20, align 8
  %79 = add i32 %35, 1
  %80 = getelementptr i32, ptr %29, i32 %35
  store i32 %76, ptr %80, align 4
  br label %81

81:                                               ; preds = %75, %72, %66, %62, %34
  %82 = phi i32 [ %79, %75 ], [ %35, %72 ], [ %35, %34 ], [ %35, %66 ], [ %35, %62 ]
  %83 = add nuw nsw i32 %36, 1
  %84 = icmp eq i32 %83, 64
  br i1 %84, label %85, label %34

85:                                               ; preds = %81
  %86 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %9) #18, !srcloc !14
  %87 = and i32 %86, -13
  %88 = or i32 %87, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %88) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %89 = call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef nonnull %3, i32 noundef 16) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %86) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %116

91:                                               ; preds = %85
  %92 = getelementptr i8, ptr %1, i32 16
  %93 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %82, i32 4) #20
  %94 = extractvalue { i32, i1 } %93, 1
  %95 = extractvalue { i32, i1 } %93, 0
  %96 = select i1 %94, i32 -1, i32 %95
  %97 = icmp slt i32 %96, 0
  %98 = load i1, ptr @check_copy_size.__already_done, align 1
  %99 = xor i1 %98, true
  %100 = select i1 %97, i1 %99, i1 false
  br i1 %100, label %101, label %102, !prof !9

101:                                              ; preds = %91
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 230, i32 noundef 9, ptr noundef null) #20
  br label %102

102:                                              ; preds = %101, %91
  br i1 %97, label %116, label %103, !prof !9

103:                                              ; preds = %102
  %104 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %92, i32 %96, i32 -1090519040) #21, !srcloc !17
  %105 = extractvalue { i32, i32 } %104, 0
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %103
  %108 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %9) #18, !srcloc !14
  %109 = and i32 %108, -13
  %110 = or i32 %109, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %110) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %111 = call i32 @arm_copy_to_user(ptr noundef %92, ptr noundef nonnull %29, i32 noundef %96) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %108) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  br label %112

112:                                              ; preds = %107, %103
  %113 = phi i32 [ %111, %107 ], [ %95, %103 ]
  %114 = icmp eq i32 %113, 0
  %115 = select i1 %114, i32 0, i32 -14
  br label %116

116:                                              ; preds = %112, %102, %85
  %117 = phi i32 [ -14, %85 ], [ -14, %102 ], [ %115, %112 ]
  call void @kfree(ptr noundef nonnull %29) #20
  br label %118

118:                                              ; preds = %116, %27, %23, %19, %15
  %119 = phi i32 [ %117, %116 ], [ 0, %19 ], [ -12, %27 ], [ -14, %15 ], [ -12, %23 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #20
  ret i32 %119
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ethtool_get_rxfh_indir(ptr noundef %0, ptr noundef %1) unnamed_addr #16 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #20
  store i32 0, ptr %3, align 4, !annotation !11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #20
  %5 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 42
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.ethtool_ops, ptr %6, i32 0, i32 37
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %85, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.ethtool_ops, ptr %6, i32 0, i32 38
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %85, label %14

14:                                               ; preds = %10
  %15 = tail call i32 %8(ptr noundef %0) #20
  store i32 %15, ptr %4, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %85, label %17

17:                                               ; preds = %14
  %18 = getelementptr i8, ptr %1, i32 4
  %19 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %18, i32 4, i32 -1090519040) #21
  %20 = extractvalue { i32, i32 } %19, 0
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %30, !prof !13

22:                                               ; preds = %17
  %23 = tail call ptr @llvm.thread.pointer() #20
  %24 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 3
  %25 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %24) #18, !srcloc !14
  %26 = and i32 %25, -13
  %27 = or i32 %26, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %27) #20, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %28 = call i32 @arm_copy_from_user(ptr noundef nonnull %3, ptr noundef %18, i32 noundef 4) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %25) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30, !prof !13

30:                                               ; preds = %22, %17
  %31 = phi i32 [ %28, %22 ], [ 4, %17 ]
  %32 = sub i32 4, %31
  %33 = getelementptr i8, ptr %3, i32 %32
  call void @llvm.memset.p0.i32(ptr align 1 %33, i8 0, i32 %31, i1 false) #20
  br label %85

34:                                               ; preds = %22
  %35 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %24) #18, !srcloc !14
  %36 = and i32 %35, -13
  %37 = or i32 %36, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %37) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %38 = call i32 @arm_copy_to_user(ptr noundef %18, ptr noundef nonnull %4, i32 noundef 4) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %35) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %85

40:                                               ; preds = %34
  %41 = load i32, ptr %3, align 4
  %42 = load i32, ptr %4, align 4
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = icmp eq i32 %41, 0
  %46 = select i1 %45, i32 0, i32 -22
  br label %85

47:                                               ; preds = %40
  %48 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %42, i32 4) #20
  %49 = extractvalue { i32, i1 } %48, 1
  br i1 %49, label %85, label %50, !prof !9

50:                                               ; preds = %47
  %51 = extractvalue { i32, i1 } %48, 0
  %52 = call noalias align 64 ptr @__kmalloc(i32 noundef %51, i32 noundef 1052096) #23
  %53 = icmp eq ptr %52, null
  br i1 %53, label %85, label %54

54:                                               ; preds = %50
  %55 = load ptr, ptr %5, align 8
  %56 = getelementptr inbounds %struct.ethtool_ops, ptr %55, i32 0, i32 38
  %57 = load ptr, ptr %56, align 4
  %58 = call i32 %57(ptr noundef %0, ptr noundef nonnull %52, ptr noundef null, ptr noundef null) #20
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %83

60:                                               ; preds = %54
  %61 = getelementptr i8, ptr %1, i32 8
  %62 = load i32, ptr %4, align 4
  %63 = shl i32 %62, 2
  %64 = icmp slt i32 %63, 0
  %65 = load i1, ptr @check_copy_size.__already_done, align 1
  %66 = xor i1 %65, true
  %67 = select i1 %64, i1 %66, i1 false
  br i1 %67, label %68, label %69, !prof !9

68:                                               ; preds = %60
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 230, i32 noundef 9, ptr noundef null) #20
  br label %69

69:                                               ; preds = %68, %60
  br i1 %64, label %83, label %70, !prof !9

70:                                               ; preds = %69
  %71 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %61, i32 %63, i32 -1090519040) #21, !srcloc !17
  %72 = extractvalue { i32, i32 } %71, 0
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %70
  %75 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %24) #18, !srcloc !14
  %76 = and i32 %75, -13
  %77 = or i32 %76, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %77) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %78 = call i32 @arm_copy_to_user(ptr noundef %61, ptr noundef nonnull %52, i32 noundef %63) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %75) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  br label %79

79:                                               ; preds = %74, %70
  %80 = phi i32 [ %78, %74 ], [ %63, %70 ]
  %81 = icmp eq i32 %80, 0
  %82 = select i1 %81, i32 0, i32 -14
  br label %83

83:                                               ; preds = %79, %69, %54
  %84 = phi i32 [ %58, %54 ], [ -14, %69 ], [ %82, %79 ]
  call void @kfree(ptr noundef nonnull %52) #20
  br label %85

85:                                               ; preds = %83, %50, %47, %44, %34, %30, %14, %10, %2
  %86 = phi i32 [ %46, %44 ], [ %84, %83 ], [ -95, %10 ], [ -95, %2 ], [ -95, %14 ], [ -14, %34 ], [ -12, %50 ], [ -14, %30 ], [ -12, %47 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #20
  ret i32 %86
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ethtool_set_rxfh_indir(ptr noundef %0, ptr noundef %1) unnamed_addr #16 {
  %3 = alloca %struct.ethtool_rxnfc, align 8
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %3) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(192) %3, i8 0, i32 192, i1 false), !annotation !11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #20
  store i32 0, ptr %4, align 4, !annotation !11
  %5 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 42
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.ethtool_ops, ptr %6, i32 0, i32 37
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %85, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.ethtool_ops, ptr %6, i32 0, i32 39
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %85, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.ethtool_ops, ptr %6, i32 0, i32 32
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %85, label %18

18:                                               ; preds = %14
  %19 = tail call i32 %8(ptr noundef %0) #20
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %85, label %21

21:                                               ; preds = %18
  %22 = getelementptr i8, ptr %1, i32 4
  %23 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %22, i32 4, i32 -1090519040) #21, !srcloc !12
  %24 = extractvalue { i32, i32 } %23, 0
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %34, !prof !13

26:                                               ; preds = %21
  %27 = tail call ptr @llvm.thread.pointer() #20
  %28 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 3
  %29 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %28) #18, !srcloc !14
  %30 = and i32 %29, -13
  %31 = or i32 %30, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %31) #20, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %32 = call i32 @arm_copy_from_user(ptr noundef nonnull %4, ptr noundef %22, i32 noundef 4) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %29) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34, !prof !13

34:                                               ; preds = %26, %21
  %35 = phi i32 [ %32, %26 ], [ 4, %21 ]
  %36 = sub i32 4, %35
  %37 = getelementptr i8, ptr %4, i32 %36
  call void @llvm.memset.p0.i32(ptr align 1 %37, i8 0, i32 %35, i1 false) #20
  br label %85

38:                                               ; preds = %26
  %39 = load i32, ptr %4, align 4
  %40 = icmp eq i32 %39, 0
  %41 = icmp eq i32 %39, %19
  %42 = select i1 %40, i1 true, i1 %41
  br i1 %42, label %43, label %85

43:                                               ; preds = %38
  %44 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %19, i32 4) #20
  %45 = extractvalue { i32, i1 } %44, 1
  br i1 %45, label %85, label %46, !prof !9

46:                                               ; preds = %43
  %47 = extractvalue { i32, i1 } %44, 0
  %48 = call noalias align 64 ptr @__kmalloc(i32 noundef %47, i32 noundef 1052096) #23
  %49 = icmp eq ptr %48, null
  br i1 %49, label %85, label %50

50:                                               ; preds = %46
  store i32 45, ptr %3, align 8
  %51 = load ptr, ptr %15, align 4
  %52 = call i32 %51(ptr noundef %0, ptr noundef nonnull %3, ptr noundef null) #20
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %83

54:                                               ; preds = %50
  %55 = load i32, ptr %4, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %3, i32 0, i32 2
  %59 = load i64, ptr %58, align 8
  %60 = trunc i64 %59 to i32
  br label %61

61:                                               ; preds = %61, %57
  %62 = phi i32 [ %65, %61 ], [ 0, %57 ]
  %63 = urem i32 %62, %60
  %64 = getelementptr i32, ptr %48, i32 %62
  store i32 %63, ptr %64, align 4
  %65 = add nuw i32 %62, 1
  %66 = icmp eq i32 %65, %19
  br i1 %66, label %71, label %61

67:                                               ; preds = %54
  %68 = getelementptr i8, ptr %1, i32 8
  %69 = call fastcc i32 @ethtool_copy_validate_indir(ptr noundef nonnull %48, ptr noundef %68, ptr noundef nonnull %3, i32 noundef %19)
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %83

71:                                               ; preds = %67, %61
  %72 = load ptr, ptr %11, align 4
  %73 = call i32 %72(ptr noundef %0, ptr noundef nonnull %48, ptr noundef null, i8 noundef zeroext 0) #20
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %71
  %76 = load i32, ptr %4, align 4
  %77 = icmp eq i32 %76, 0
  %78 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 15
  %79 = load i64, ptr %78, align 16
  %80 = and i64 %79, -8388609
  %81 = select i1 %77, i64 0, i64 8388608
  %82 = or i64 %80, %81
  store i64 %82, ptr %78, align 16
  br label %83

83:                                               ; preds = %75, %71, %67, %50
  %84 = phi i32 [ %52, %50 ], [ %73, %71 ], [ %69, %67 ], [ 0, %75 ]
  call void @kfree(ptr noundef nonnull %48) #20
  br label %85

85:                                               ; preds = %83, %46, %43, %38, %34, %18, %14, %10, %2
  %86 = phi i32 [ %84, %83 ], [ -95, %14 ], [ -95, %10 ], [ -95, %2 ], [ -95, %18 ], [ -22, %38 ], [ -12, %46 ], [ -14, %34 ], [ -12, %43 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %3) #20
  ret i32 %86
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ethtool_get_rxfh(ptr noundef %0, ptr noundef %1) unnamed_addr #16 {
  %3 = alloca %struct.ethtool_rxfh, align 4
  %4 = alloca i8, align 1
  %5 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 42
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i32 24, i1 false), !annotation !11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #20
  store i8 0, ptr %4, align 1
  %7 = getelementptr inbounds %struct.ethtool_ops, ptr %6, i32 0, i32 38
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %139, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.ethtool_ops, ptr %6, i32 0, i32 37
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = tail call i32 %12(ptr noundef %0) #20
  br label %16

16:                                               ; preds = %14, %10
  %17 = phi i32 [ %15, %14 ], [ 0, %10 ]
  %18 = getelementptr inbounds %struct.ethtool_ops, ptr %6, i32 0, i32 36
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %16
  %22 = tail call i32 %19(ptr noundef %0) #20
  br label %23

23:                                               ; preds = %21, %16
  %24 = phi i32 [ %22, %21 ], [ 0, %16 ]
  %25 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 24, i32 -1090519040) #21
  %26 = extractvalue { i32, i32 } %25, 0
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %36, !prof !13

28:                                               ; preds = %23
  %29 = tail call ptr @llvm.thread.pointer() #20
  %30 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 3
  %31 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %30) #18, !srcloc !14
  %32 = and i32 %31, -13
  %33 = or i32 %32, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %33) #20, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %34 = call i32 @arm_copy_from_user(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 24) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %31) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %40, label %36, !prof !13

36:                                               ; preds = %28, %23
  %37 = phi i32 [ %34, %28 ], [ 24, %23 ]
  %38 = sub i32 24, %37
  %39 = getelementptr i8, ptr %3, i32 %38
  call void @llvm.memset.p0.i32(ptr align 1 %39, i8 0, i32 %37, i1 false) #20
  br label %139

40:                                               ; preds = %28
  %41 = getelementptr inbounds %struct.ethtool_rxfh, ptr %3, i32 0, i32 2
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds %struct.ethtool_rxfh, ptr %3, i32 0, i32 3
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr inbounds %struct.ethtool_rxfh, ptr %3, i32 0, i32 5
  %46 = load i8, ptr %45, align 1
  %47 = icmp eq i8 %46, 0
  %48 = getelementptr inbounds %struct.ethtool_rxfh, ptr %3, i32 0, i32 5, i32 1
  %49 = load i8, ptr %48, align 2
  %50 = icmp eq i8 %49, 0
  %51 = select i1 %47, i1 %50, i1 false
  br i1 %51, label %52, label %139

52:                                               ; preds = %40
  %53 = getelementptr inbounds %struct.ethtool_rxfh, ptr %3, i32 0, i32 5, i32 2
  %54 = load i8, ptr %53, align 1
  %55 = icmp ne i8 %54, 0
  %56 = getelementptr inbounds %struct.ethtool_rxfh, ptr %3, i32 0, i32 6
  %57 = load i32, ptr %56, align 4
  %58 = icmp ne i32 %57, 0
  %59 = select i1 %55, i1 true, i1 %58
  br i1 %59, label %139, label %60

60:                                               ; preds = %52
  %61 = getelementptr inbounds %struct.ethtool_rxfh, ptr %3, i32 0, i32 1
  %62 = load i32, ptr %61, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.ethtool_ops, ptr %6, i32 0, i32 40
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %139, label %68

68:                                               ; preds = %64, %60
  store i32 %17, ptr %41, align 4
  store i32 %24, ptr %43, align 4
  %69 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %30) #18, !srcloc !14
  %70 = and i32 %69, -13
  %71 = or i32 %70, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %71) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %72 = call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef nonnull %3, i32 noundef 24) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %69) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %139

74:                                               ; preds = %68
  %75 = icmp eq i32 %42, 0
  %76 = icmp eq i32 %42, %17
  %77 = select i1 %75, i1 true, i1 %76
  br i1 %77, label %78, label %139

78:                                               ; preds = %74
  %79 = icmp eq i32 %44, 0
  %80 = icmp eq i32 %44, %24
  %81 = select i1 %79, i1 true, i1 %80
  br i1 %81, label %82, label %139

82:                                               ; preds = %78
  %83 = shl i32 %42, 2
  %84 = add i32 %83, %44
  %85 = call noalias align 64 ptr @__kmalloc(i32 noundef %84, i32 noundef 1052096) #23
  %86 = icmp eq ptr %85, null
  br i1 %86, label %139, label %87

87:                                               ; preds = %82
  %88 = select i1 %75, ptr null, ptr %85
  %89 = getelementptr i8, ptr %85, i32 %83
  %90 = select i1 %79, ptr null, ptr %89
  %91 = load i32, ptr %61, align 4
  %92 = icmp eq i32 %91, 0
  %93 = load ptr, ptr %5, align 8
  br i1 %92, label %98, label %94

94:                                               ; preds = %87
  %95 = getelementptr inbounds %struct.ethtool_ops, ptr %93, i32 0, i32 40
  %96 = load ptr, ptr %95, align 4
  %97 = call i32 %96(ptr noundef %0, ptr noundef %88, ptr noundef %90, ptr noundef nonnull %4, i32 noundef %91) #20
  br label %102

98:                                               ; preds = %87
  %99 = getelementptr inbounds %struct.ethtool_ops, ptr %93, i32 0, i32 38
  %100 = load ptr, ptr %99, align 4
  %101 = call i32 %100(ptr noundef %0, ptr noundef %88, ptr noundef %90, ptr noundef nonnull %4) #20
  br label %102

102:                                              ; preds = %98, %94
  %103 = phi i32 [ %97, %94 ], [ %101, %98 ]
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %137

105:                                              ; preds = %102
  %106 = getelementptr i8, ptr %1, i32 16
  %107 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %106, i32 1, i32 -1090519040) #21, !srcloc !17
  %108 = extractvalue { i32, i32 } %107, 0
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %137

110:                                              ; preds = %105
  %111 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %30) #18, !srcloc !14
  %112 = and i32 %111, -13
  %113 = or i32 %112, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %113) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %114 = call i32 @arm_copy_to_user(ptr noundef %106, ptr noundef nonnull %4, i32 noundef 1) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %111) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %137

116:                                              ; preds = %110
  %117 = getelementptr i8, ptr %1, i32 24
  %118 = icmp slt i32 %84, 0
  %119 = load i1, ptr @check_copy_size.__already_done, align 1
  %120 = xor i1 %119, true
  %121 = select i1 %118, i1 %120, i1 false
  br i1 %121, label %122, label %123, !prof !9

122:                                              ; preds = %116
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 230, i32 noundef 9, ptr noundef null) #20
  br label %123

123:                                              ; preds = %122, %116
  br i1 %118, label %133, label %124, !prof !9

124:                                              ; preds = %123
  %125 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %117, i32 %84, i32 -1090519040) #21, !srcloc !17
  %126 = extractvalue { i32, i32 } %125, 0
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %124
  %129 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %30) #18, !srcloc !14
  %130 = and i32 %129, -13
  %131 = or i32 %130, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %131) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %132 = call i32 @arm_copy_to_user(ptr noundef %117, ptr noundef nonnull %85, i32 noundef %84) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %129) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  br label %133

133:                                              ; preds = %128, %124, %123
  %134 = phi i32 [ %84, %123 ], [ %132, %128 ], [ %84, %124 ]
  %135 = icmp eq i32 %134, 0
  %136 = select i1 %135, i32 0, i32 -14
  br label %137

137:                                              ; preds = %133, %110, %105, %102
  %138 = phi i32 [ %103, %102 ], [ -14, %110 ], [ %136, %133 ], [ -14, %105 ]
  call void @kfree(ptr noundef nonnull %85) #20
  br label %139

139:                                              ; preds = %137, %82, %78, %74, %68, %64, %52, %40, %36, %2
  %140 = phi i32 [ %138, %137 ], [ -95, %2 ], [ -22, %52 ], [ -22, %40 ], [ -95, %64 ], [ -14, %68 ], [ -22, %78 ], [ -22, %74 ], [ -12, %82 ], [ -14, %36 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #20
  ret i32 %140
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ethtool_set_rxfh(ptr noundef %0, ptr noundef %1) unnamed_addr #16 {
  %3 = alloca %struct.ethtool_rxnfc, align 8
  %4 = alloca %struct.ethtool_rxfh, align 4
  %5 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 42
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %3) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(192) %3, i8 0, i32 192, i1 false), !annotation !11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false), !annotation !11
  %7 = getelementptr inbounds %struct.ethtool_ops, ptr %6, i32 0, i32 32
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %196, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.ethtool_ops, ptr %6, i32 0, i32 39
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %196, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.ethtool_ops, ptr %6, i32 0, i32 37
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = tail call i32 %16(ptr noundef %0) #20
  br label %20

20:                                               ; preds = %18, %14
  %21 = phi i32 [ %19, %18 ], [ 0, %14 ]
  %22 = getelementptr inbounds %struct.ethtool_ops, ptr %6, i32 0, i32 36
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %20
  %26 = tail call i32 %23(ptr noundef %0) #20
  br label %27

27:                                               ; preds = %25, %20
  %28 = phi i32 [ %26, %25 ], [ 0, %20 ]
  %29 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 24, i32 -1090519040) #21, !srcloc !12
  %30 = extractvalue { i32, i32 } %29, 0
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %40, !prof !13

32:                                               ; preds = %27
  %33 = tail call ptr @llvm.thread.pointer() #20
  %34 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 3
  %35 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %34) #18, !srcloc !14
  %36 = and i32 %35, -13
  %37 = or i32 %36, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %37) #20, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %38 = call i32 @arm_copy_from_user(ptr noundef nonnull %4, ptr noundef %1, i32 noundef 24) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %35) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %44, label %40, !prof !13

40:                                               ; preds = %32, %27
  %41 = phi i32 [ %38, %32 ], [ 24, %27 ]
  %42 = sub i32 24, %41
  %43 = getelementptr i8, ptr %4, i32 %42
  call void @llvm.memset.p0.i32(ptr align 1 %43, i8 0, i32 %41, i1 false) #20
  br label %196

44:                                               ; preds = %32
  %45 = getelementptr inbounds %struct.ethtool_rxfh, ptr %4, i32 0, i32 5
  %46 = load i8, ptr %45, align 1
  %47 = icmp eq i8 %46, 0
  %48 = getelementptr inbounds %struct.ethtool_rxfh, ptr %4, i32 0, i32 5, i32 1
  %49 = load i8, ptr %48, align 2
  %50 = icmp eq i8 %49, 0
  %51 = select i1 %47, i1 %50, i1 false
  br i1 %51, label %52, label %196

52:                                               ; preds = %44
  %53 = getelementptr inbounds %struct.ethtool_rxfh, ptr %4, i32 0, i32 5, i32 2
  %54 = load i8, ptr %53, align 1
  %55 = icmp ne i8 %54, 0
  %56 = getelementptr inbounds %struct.ethtool_rxfh, ptr %4, i32 0, i32 6
  %57 = load i32, ptr %56, align 4
  %58 = icmp ne i32 %57, 0
  %59 = select i1 %55, i1 true, i1 %58
  br i1 %59, label %196, label %60

60:                                               ; preds = %52
  %61 = getelementptr inbounds %struct.ethtool_rxfh, ptr %4, i32 0, i32 1
  %62 = load i32, ptr %61, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.ethtool_ops, ptr %6, i32 0, i32 41
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %196, label %68

68:                                               ; preds = %64, %60
  %69 = getelementptr inbounds %struct.ethtool_rxfh, ptr %4, i32 0, i32 2
  %70 = load i32, ptr %69, align 4
  %71 = add i32 %70, 1
  %72 = icmp ult i32 %71, 2
  %73 = icmp eq i32 %70, %21
  %74 = select i1 %72, i1 true, i1 %73
  br i1 %74, label %75, label %196

75:                                               ; preds = %68
  %76 = getelementptr inbounds %struct.ethtool_rxfh, ptr %4, i32 0, i32 3
  %77 = load i32, ptr %76, align 4
  %78 = icmp eq i32 %77, 0
  %79 = icmp eq i32 %77, %28
  %80 = select i1 %78, i1 true, i1 %79
  br i1 %80, label %81, label %196

81:                                               ; preds = %75
  %82 = icmp eq i32 %70, -1
  %83 = select i1 %82, i1 %78, i1 false
  %84 = getelementptr inbounds %struct.ethtool_rxfh, ptr %4, i32 0, i32 4
  %85 = load i8, ptr %84, align 4
  %86 = icmp eq i8 %85, 0
  %87 = select i1 %83, i1 %86, i1 false
  br i1 %87, label %196, label %88

88:                                               ; preds = %81
  %89 = shl i32 %21, 2
  %90 = select i1 %82, i32 0, i32 %89
  %91 = add i32 %77, %90
  %92 = call noalias align 64 ptr @__kmalloc(i32 noundef %91, i32 noundef 1052096) #23
  %93 = icmp eq ptr %92, null
  br i1 %93, label %196, label %94

94:                                               ; preds = %88
  store i32 45, ptr %3, align 8
  %95 = load ptr, ptr %7, align 4
  %96 = call i32 %95(ptr noundef %0, ptr noundef nonnull %3, ptr noundef null) #20
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %194

98:                                               ; preds = %94
  %99 = load i32, ptr %69, align 4
  %100 = add i32 %99, -1
  %101 = icmp ult i32 %100, -2
  br i1 %101, label %102, label %106

102:                                              ; preds = %98
  %103 = getelementptr i8, ptr %1, i32 24
  %104 = call fastcc i32 @ethtool_copy_validate_indir(ptr noundef nonnull %92, ptr noundef %103, ptr noundef nonnull %3, i32 noundef %99)
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %123, label %194

106:                                              ; preds = %98
  %107 = icmp eq i32 %99, 0
  br i1 %107, label %108, label %123

108:                                              ; preds = %106
  %109 = load i32, ptr %61, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %123

111:                                              ; preds = %108
  %112 = icmp eq i32 %21, 0
  br i1 %112, label %123, label %113

113:                                              ; preds = %111
  %114 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %3, i32 0, i32 2
  %115 = load i64, ptr %114, align 8
  %116 = trunc i64 %115 to i32
  br label %117

117:                                              ; preds = %117, %113
  %118 = phi i32 [ 0, %113 ], [ %121, %117 ]
  %119 = urem i32 %118, %116
  %120 = getelementptr i32, ptr %92, i32 %118
  store i32 %119, ptr %120, align 4
  %121 = add nuw i32 %118, 1
  %122 = icmp eq i32 %121, %21
  br i1 %122, label %123, label %117

123:                                              ; preds = %117, %111, %108, %106, %102
  %124 = phi ptr [ %92, %102 ], [ null, %106 ], [ null, %108 ], [ %92, %111 ], [ %92, %117 ]
  %125 = phi i1 [ false, %102 ], [ false, %106 ], [ true, %108 ], [ false, %111 ], [ false, %117 ]
  %126 = load i32, ptr %76, align 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %152, label %128

128:                                              ; preds = %123
  %129 = getelementptr i8, ptr %92, i32 %90
  %130 = getelementptr i8, ptr %1, i32 24
  %131 = getelementptr i8, ptr %130, i32 %90
  %132 = icmp slt i32 %126, 0
  %133 = load i1, ptr @check_copy_size.__already_done, align 1
  %134 = xor i1 %133, true
  %135 = select i1 %132, i1 %134, i1 false
  br i1 %135, label %136, label %137, !prof !9

136:                                              ; preds = %128
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 230, i32 noundef 9, ptr noundef null) #20
  br label %137

137:                                              ; preds = %136, %128
  br i1 %132, label %194, label %138, !prof !9

138:                                              ; preds = %137
  %139 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %131, i32 %126, i32 -1090519040) #21, !srcloc !12
  %140 = extractvalue { i32, i32 } %139, 0
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %148, !prof !13

142:                                              ; preds = %138
  %143 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %34) #18, !srcloc !14
  %144 = and i32 %143, -13
  %145 = or i32 %144, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %145) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %146 = call i32 @arm_copy_from_user(ptr noundef %129, ptr noundef %131, i32 noundef %126) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %143) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %152, label %148, !prof !13

148:                                              ; preds = %142, %138
  %149 = phi i32 [ %146, %142 ], [ %126, %138 ]
  %150 = sub i32 %126, %149
  %151 = getelementptr i8, ptr %129, i32 %150
  call void @llvm.memset.p0.i32(ptr align 1 %151, i8 0, i32 %149, i1 false) #20
  br label %194

152:                                              ; preds = %142, %123
  %153 = phi ptr [ null, %123 ], [ %129, %142 ]
  %154 = load i32, ptr %61, align 4
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %161, label %156

156:                                              ; preds = %152
  %157 = getelementptr inbounds %struct.ethtool_ops, ptr %6, i32 0, i32 41
  %158 = load ptr, ptr %157, align 4
  %159 = load i8, ptr %84, align 4
  %160 = call i32 %158(ptr noundef %0, ptr noundef %124, ptr noundef %153, i8 noundef zeroext %159, ptr noundef %61, i1 noundef zeroext %125) #20
  br label %165

161:                                              ; preds = %152
  %162 = load ptr, ptr %11, align 4
  %163 = load i8, ptr %84, align 4
  %164 = call i32 %162(ptr noundef %0, ptr noundef %124, ptr noundef %153, i8 noundef zeroext %163) #20
  br label %165

165:                                              ; preds = %161, %156
  %166 = phi i32 [ %160, %156 ], [ %164, %161 ]
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %194

168:                                              ; preds = %165
  %169 = getelementptr i8, ptr %1, i32 4
  %170 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %169, i32 4, i32 -1090519040) #21, !srcloc !17
  %171 = extractvalue { i32, i32 } %170, 0
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %180

173:                                              ; preds = %168
  %174 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %34) #18, !srcloc !14
  %175 = and i32 %174, -13
  %176 = or i32 %175, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %176) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %177 = call i32 @arm_copy_to_user(ptr noundef %169, ptr noundef %61, i32 noundef 4) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %174) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %178 = icmp eq i32 %177, 0
  %179 = select i1 %178, i32 0, i32 -14
  br label %180

180:                                              ; preds = %173, %168
  %181 = phi i32 [ -14, %168 ], [ %179, %173 ]
  %182 = load i32, ptr %61, align 4
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %194

184:                                              ; preds = %180
  %185 = load i32, ptr %69, align 4
  switch i32 %185, label %190 [
    i32 0, label %186
    i32 -1, label %194
  ]

186:                                              ; preds = %184
  %187 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 15
  %188 = load i64, ptr %187, align 16
  %189 = and i64 %188, -8388609
  store i64 %189, ptr %187, align 16
  br label %194

190:                                              ; preds = %184
  %191 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 15
  %192 = load i64, ptr %191, align 16
  %193 = or i64 %192, 8388608
  store i64 %193, ptr %191, align 16
  br label %194

194:                                              ; preds = %190, %186, %184, %180, %165, %148, %137, %102, %94
  %195 = phi i32 [ %96, %94 ], [ %104, %102 ], [ %166, %165 ], [ %181, %180 ], [ %181, %186 ], [ %181, %190 ], [ %181, %184 ], [ -14, %137 ], [ -14, %148 ]
  call void @kfree(ptr noundef nonnull %92) #20
  br label %196

196:                                              ; preds = %194, %88, %81, %75, %68, %64, %52, %44, %40, %10, %2
  %197 = phi i32 [ %195, %194 ], [ -95, %10 ], [ -95, %2 ], [ -22, %52 ], [ -22, %44 ], [ -95, %64 ], [ -22, %75 ], [ -22, %68 ], [ -22, %81 ], [ -12, %88 ], [ -14, %40 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %3) #20
  ret i32 %197
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ethtool_get_features(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #5 {
  %3 = alloca %struct.ethtool_gfeatures, align 8
  %4 = alloca [2 x %struct.ethtool_get_features_block], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  store i64 8589934650, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #20
  %5 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 24
  %6 = load i64, ptr %5, align 8
  %7 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 25
  %8 = load i64, ptr %7, align 32
  %9 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 23
  %10 = load i64, ptr %9, align 16
  %11 = trunc i64 %6 to i32
  store i32 %11, ptr %4, align 4
  %12 = trunc i64 %8 to i32
  %13 = getelementptr inbounds [2 x %struct.ethtool_get_features_block], ptr %4, i32 0, i32 0, i32 1
  store i32 %12, ptr %13, align 4
  %14 = trunc i64 %10 to i32
  %15 = getelementptr inbounds [2 x %struct.ethtool_get_features_block], ptr %4, i32 0, i32 0, i32 2
  store i32 %14, ptr %15, align 4
  %16 = getelementptr inbounds [2 x %struct.ethtool_get_features_block], ptr %4, i32 0, i32 0, i32 3
  store i32 13312, ptr %16, align 4
  %17 = lshr i64 %6, 32
  %18 = trunc i64 %17 to i32
  %19 = getelementptr inbounds [2 x %struct.ethtool_get_features_block], ptr %4, i32 0, i32 1
  store i32 %18, ptr %19, align 4
  %20 = lshr i64 %8, 32
  %21 = trunc i64 %20 to i32
  %22 = getelementptr inbounds [2 x %struct.ethtool_get_features_block], ptr %4, i32 0, i32 1, i32 1
  store i32 %21, ptr %22, align 4
  %23 = lshr i64 %10, 32
  %24 = trunc i64 %23 to i32
  %25 = getelementptr inbounds [2 x %struct.ethtool_get_features_block], ptr %4, i32 0, i32 1, i32 2
  store i32 %24, ptr %25, align 4
  %26 = getelementptr inbounds [2 x %struct.ethtool_get_features_block], ptr %4, i32 0, i32 1, i32 3
  store i32 0, ptr %26, align 4
  %27 = getelementptr i8, ptr %1, i32 4
  %28 = tail call ptr @llvm.thread.pointer() #20
  %29 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 3
  %30 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %29) #18, !srcloc !14
  %31 = and i32 %30, -13
  %32 = or i32 %31, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %32) #20, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %33 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %27, i32 -1090519041) #20, !srcloc !21
  %34 = extractvalue { i32, i32 } %33, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %30) #20, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %63

36:                                               ; preds = %2
  %37 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 8, i32 -1090519040) #21, !srcloc !17
  %38 = extractvalue { i32, i32 } %37, 0
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %63

40:                                               ; preds = %36
  %41 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %29) #18, !srcloc !14
  %42 = and i32 %41, -13
  %43 = or i32 %42, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %43) #20, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %44 = call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef nonnull %3, i32 noundef 8) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %41) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %63

46:                                               ; preds = %40
  %47 = extractvalue { i32, i32 } %33, 1
  %48 = call i32 @llvm.umin.i32(i32 %47, i32 2)
  %49 = getelementptr i8, ptr %1, i32 8
  %50 = shl nuw nsw i32 %48, 4
  %51 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %49, i32 %50, i32 -1090519040) #21, !srcloc !17
  %52 = extractvalue { i32, i32 } %51, 0
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %46
  %55 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %29) #18, !srcloc !14
  %56 = and i32 %55, -13
  %57 = or i32 %56, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %57) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %58 = call i32 @arm_copy_to_user(ptr noundef %49, ptr noundef nonnull %4, i32 noundef %50) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %55) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  br label %59

59:                                               ; preds = %54, %46
  %60 = phi i32 [ %58, %54 ], [ %50, %46 ]
  %61 = icmp eq i32 %60, 0
  %62 = select i1 %61, i32 0, i32 -14
  br label %63

63:                                               ; preds = %59, %40, %36, %2
  %64 = phi i32 [ -14, %2 ], [ -14, %40 ], [ %62, %59 ], [ -14, %36 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  ret i32 %64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ethtool_set_features(ptr noundef %0, ptr noundef %1) unnamed_addr #5 {
  %3 = alloca %struct.ethtool_sfeatures, align 8
  %4 = alloca [2 x %struct.ethtool_set_features_block], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  store i64 0, ptr %3, align 8, !annotation !11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false), !annotation !11
  %5 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 8, i32 -1090519040) #21, !srcloc !12
  %6 = extractvalue { i32, i32 } %5, 0
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %16, !prof !13

8:                                                ; preds = %2
  %9 = tail call ptr @llvm.thread.pointer() #20
  %10 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3
  %11 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %10) #18, !srcloc !14
  %12 = and i32 %11, -13
  %13 = or i32 %12, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #20, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %14 = call i32 @arm_copy_from_user(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 8) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16, !prof !13

16:                                               ; preds = %8, %2
  %17 = phi i32 [ %14, %8 ], [ 8, %2 ]
  %18 = sub i32 8, %17
  %19 = getelementptr i8, ptr %3, i32 %18
  call void @llvm.memset.p0.i32(ptr align 1 %19, i8 0, i32 %17, i1 false) #20
  br label %82

20:                                               ; preds = %8
  %21 = getelementptr inbounds %struct.ethtool_sfeatures, ptr %3, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %24, label %82

24:                                               ; preds = %20
  %25 = getelementptr i8, ptr %1, i32 8
  %26 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %25, i32 16, i32 -1090519040) #21, !srcloc !12
  %27 = extractvalue { i32, i32 } %26, 0
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %40, !prof !13

29:                                               ; preds = %24
  %30 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %10) #18, !srcloc !14
  %31 = and i32 %30, -13
  %32 = or i32 %31, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %32) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %33 = call i32 @arm_copy_from_user(ptr noundef nonnull %4, ptr noundef %25, i32 noundef 16) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %30) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %40, !prof !13

35:                                               ; preds = %29
  %36 = load i32, ptr %4, align 4
  %37 = zext i32 %36 to i64
  %38 = and i64 %37, 13312
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %44, label %82

40:                                               ; preds = %29, %24
  %41 = phi i32 [ %33, %29 ], [ 16, %24 ]
  %42 = sub i32 16, %41
  %43 = getelementptr i8, ptr %4, i32 %42
  call void @llvm.memset.p0.i32(ptr align 1 %43, i8 0, i32 %41, i1 false) #20
  br label %82

44:                                               ; preds = %35
  %45 = getelementptr inbounds [2 x %struct.ethtool_set_features_block], ptr %4, i32 0, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = zext i32 %46 to i64
  %48 = shl nuw i64 %47, 32
  %49 = or i64 %48, %37
  %50 = getelementptr inbounds [2 x %struct.ethtool_set_features_block], ptr %4, i32 0, i32 1, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = zext i32 %51 to i64
  %53 = shl nuw i64 %52, 32
  %54 = getelementptr inbounds [2 x %struct.ethtool_set_features_block], ptr %4, i32 0, i32 0, i32 1
  %55 = load i32, ptr %54, align 4
  %56 = zext i32 %55 to i64
  %57 = or i64 %53, %56
  %58 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 24
  %59 = load i64, ptr %58, align 8
  %60 = xor i64 %59, -1
  %61 = and i64 %49, %60
  %62 = icmp eq i64 %61, 0
  %63 = select i1 %62, i64 -1, i64 %59
  %64 = and i64 %63, %49
  %65 = xor i1 %62, true
  %66 = zext i1 %65 to i32
  %67 = xor i64 %64, -1
  %68 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 25
  %69 = load i64, ptr %68, align 32
  %70 = and i64 %69, %67
  %71 = and i64 %64, %57
  %72 = or i64 %70, %71
  store i64 %72, ptr %68, align 32
  %73 = call i32 @__netdev_update_features(ptr noundef %0) #20
  %74 = load i64, ptr %68, align 32
  %75 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 23
  %76 = load i64, ptr %75, align 16
  %77 = xor i64 %76, %74
  %78 = and i64 %77, %64
  %79 = icmp eq i64 %78, 0
  %80 = or i32 %66, 2
  %81 = select i1 %79, i32 %66, i32 %80
  br label %82

82:                                               ; preds = %44, %40, %35, %20, %16
  %83 = phi i32 [ %81, %44 ], [ -22, %20 ], [ -22, %35 ], [ -14, %16 ], [ -14, %40 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  ret i32 %83
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ethtool_get_one_feature(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) unnamed_addr #5 {
  %4 = alloca %struct.ethtool_value, align 8
  switch i32 %2, label %10 [
    i32 22, label %11
    i32 23, label %11
    i32 20, label %5
    i32 21, label %5
    i32 24, label %6
    i32 25, label %6
    i32 30, label %7
    i32 31, label %7
    i32 35, label %8
    i32 36, label %8
    i32 43, label %9
    i32 44, label %9
  ]

5:                                                ; preds = %3, %3
  br label %11

6:                                                ; preds = %3, %3
  br label %11

7:                                                ; preds = %3, %3
  br label %11

8:                                                ; preds = %3, %3
  br label %11

9:                                                ; preds = %3, %3
  br label %11

10:                                               ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ethtool/ioctl.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 247, 0\0A.popsection", ""() #20, !srcloc !22
  unreachable

11:                                               ; preds = %9, %8, %7, %6, %5, %3, %3
  %12 = phi i64 [ 16384, %9 ], [ 2048, %8 ], [ 1900544, %7 ], [ 65, %6 ], [ 1099511627776, %5 ], [ 103079215130, %3 ], [ 103079215130, %3 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  store i32 %2, ptr %4, align 8
  %13 = getelementptr inbounds %struct.ethtool_value, ptr %4, i32 0, i32 1
  %14 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 23
  %15 = load i64, ptr %14, align 16
  %16 = and i64 %15, %12
  %17 = icmp ne i64 %16, 0
  %18 = zext i1 %17 to i32
  store i32 %18, ptr %13, align 4
  %19 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 8, i32 -1090519040) #21, !srcloc !17
  %20 = extractvalue { i32, i32 } %19, 0
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %11
  %23 = tail call ptr @llvm.thread.pointer() #20
  %24 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 3
  %25 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %24) #18, !srcloc !14
  %26 = and i32 %25, -13
  %27 = or i32 %26, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %27) #20, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %28 = call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef nonnull %4, i32 noundef 8) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %25) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, i32 0, i32 -14
  br label %31

31:                                               ; preds = %22, %11
  %32 = phi i32 [ -14, %11 ], [ %30, %22 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ethtool_set_one_feature(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #5 {
  %4 = alloca %struct.ethtool_value, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  store i64 0, ptr %4, align 8, !annotation !11
  %5 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 8, i32 -1090519040) #21, !srcloc !12
  %6 = extractvalue { i32, i32 } %5, 0
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %16, !prof !13

8:                                                ; preds = %3
  %9 = tail call ptr @llvm.thread.pointer() #20
  %10 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3
  %11 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %10) #18, !srcloc !14
  %12 = and i32 %11, -13
  %13 = or i32 %12, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #20, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %14 = call i32 @arm_copy_from_user(ptr noundef nonnull %4, ptr noundef %1, i32 noundef 8) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16, !prof !13

16:                                               ; preds = %8, %3
  %17 = phi i32 [ %14, %8 ], [ 8, %3 ]
  %18 = sub i32 8, %17
  %19 = getelementptr i8, ptr %4, i32 %18
  call void @llvm.memset.p0.i32(ptr align 1 %19, i8 0, i32 %17, i1 false) #20
  br label %48

20:                                               ; preds = %8
  switch i32 %2, label %26 [
    i32 22, label %27
    i32 23, label %27
    i32 20, label %21
    i32 21, label %21
    i32 24, label %22
    i32 25, label %22
    i32 30, label %23
    i32 31, label %23
    i32 35, label %24
    i32 36, label %24
    i32 43, label %25
    i32 44, label %25
  ]

21:                                               ; preds = %20, %20
  br label %27

22:                                               ; preds = %20, %20
  br label %27

23:                                               ; preds = %20, %20
  br label %27

24:                                               ; preds = %20, %20
  br label %27

25:                                               ; preds = %20, %20
  br label %27

26:                                               ; preds = %20
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ethtool/ioctl.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 247, 0\0A.popsection", ""() #20, !srcloc !22
  unreachable

27:                                               ; preds = %25, %24, %23, %22, %21, %20, %20
  %28 = phi i64 [ 16384, %25 ], [ 2048, %24 ], [ 1900544, %23 ], [ 65, %22 ], [ 1099511627776, %21 ], [ 103079215130, %20 ], [ 103079215130, %20 ]
  %29 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 24
  %30 = load i64, ptr %29, align 8
  %31 = and i64 %30, %28
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %48, label %33

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.ethtool_value, ptr %4, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 25
  %39 = load i64, ptr %38, align 32
  %40 = or i64 %39, %31
  store i64 %40, ptr %38, align 32
  br label %46

41:                                               ; preds = %33
  %42 = xor i64 %31, -1
  %43 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 25
  %44 = load i64, ptr %43, align 32
  %45 = and i64 %44, %42
  store i64 %45, ptr %43, align 32
  br label %46

46:                                               ; preds = %41, %37
  %47 = call i32 @__netdev_update_features(ptr noundef %0) #20
  br label %48

48:                                               ; preds = %46, %27, %16
  %49 = phi i32 [ 0, %46 ], [ -95, %27 ], [ -14, %16 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  ret i32 %49
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ethtool_get_channels(ptr noundef %0, ptr noundef %1) unnamed_addr #16 {
  %3 = alloca %struct.ethtool_channels, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #20
  %4 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %4, i8 0, i32 32, i1 false)
  store i32 60, ptr %3, align 4
  %5 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 42
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.ethtool_ops, ptr %6, i32 0, i32 42
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %23, label %10

10:                                               ; preds = %2
  call void %8(ptr noundef %0, ptr noundef nonnull %3) #20
  %11 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 36, i32 -1090519040) #21, !srcloc !17
  %12 = extractvalue { i32, i32 } %11, 0
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %10
  %15 = tail call ptr @llvm.thread.pointer() #20
  %16 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 3
  %17 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %16) #18, !srcloc !14
  %18 = and i32 %17, -13
  %19 = or i32 %18, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %19) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %20 = call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef nonnull %3, i32 noundef 36) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, i32 0, i32 -14
  br label %23

23:                                               ; preds = %14, %10, %2
  %24 = phi i32 [ -95, %2 ], [ -14, %10 ], [ %22, %14 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #20
  ret i32 %24
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ethtool_set_channels(ptr noundef %0, ptr noundef %1) unnamed_addr #16 {
  %3 = alloca %struct.ethtool_channels, align 4
  %4 = alloca %struct.ethtool_channels, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %3, i8 0, i32 36, i1 false), !annotation !11
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #20
  %6 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %6, i8 0, i32 32, i1 false)
  store i32 60, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  store i32 0, ptr %5, align 4
  %7 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 42
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.ethtool_ops, ptr %8, i32 0, i32 43
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %108, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.ethtool_ops, ptr %8, i32 0, i32 42
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %108, label %16

16:                                               ; preds = %12
  %17 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 36, i32 -1090519040) #21, !srcloc !12
  %18 = extractvalue { i32, i32 } %17, 0
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %28, !prof !13

20:                                               ; preds = %16
  %21 = tail call ptr @llvm.thread.pointer() #20
  %22 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 3
  %23 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %22) #18, !srcloc !14
  %24 = and i32 %23, -13
  %25 = or i32 %24, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %25) #20, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %26 = call i32 @arm_copy_from_user(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 36) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %23) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %32, label %28, !prof !13

28:                                               ; preds = %20, %16
  %29 = phi i32 [ %26, %20 ], [ 36, %16 ]
  %30 = sub i32 36, %29
  %31 = getelementptr i8, ptr %3, i32 %30
  call void @llvm.memset.p0.i32(ptr align 1 %31, i8 0, i32 %29, i1 false) #20
  br label %108

32:                                               ; preds = %20
  %33 = load ptr, ptr %7, align 8
  %34 = getelementptr inbounds %struct.ethtool_ops, ptr %33, i32 0, i32 42
  %35 = load ptr, ptr %34, align 4
  call void %35(ptr noundef %0, ptr noundef nonnull %4) #20
  %36 = getelementptr inbounds %struct.ethtool_channels, ptr %3, i32 0, i32 5
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.ethtool_channels, ptr %4, i32 0, i32 5
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %41, label %59

41:                                               ; preds = %32
  %42 = getelementptr inbounds %struct.ethtool_channels, ptr %3, i32 0, i32 6
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.ethtool_channels, ptr %4, i32 0, i32 6
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.ethtool_channels, ptr %3, i32 0, i32 8
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr inbounds %struct.ethtool_channels, ptr %4, i32 0, i32 8
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %49, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.ethtool_channels, ptr %3, i32 0, i32 7
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr inbounds %struct.ethtool_channels, ptr %4, i32 0, i32 7
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %55, %57
  br i1 %58, label %108, label %59

59:                                               ; preds = %53, %47, %41, %32
  %60 = getelementptr inbounds %struct.ethtool_channels, ptr %4, i32 0, i32 1
  %61 = load i32, ptr %60, align 4
  %62 = icmp ugt i32 %37, %61
  br i1 %62, label %108, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.ethtool_channels, ptr %3, i32 0, i32 6
  %65 = load i32, ptr %64, align 4
  %66 = getelementptr inbounds %struct.ethtool_channels, ptr %4, i32 0, i32 2
  %67 = load i32, ptr %66, align 4
  %68 = icmp ugt i32 %65, %67
  br i1 %68, label %108, label %69

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct.ethtool_channels, ptr %3, i32 0, i32 8
  %71 = load i32, ptr %70, align 4
  %72 = getelementptr inbounds %struct.ethtool_channels, ptr %4, i32 0, i32 4
  %73 = load i32, ptr %72, align 4
  %74 = icmp ugt i32 %71, %73
  br i1 %74, label %108, label %75

75:                                               ; preds = %69
  %76 = getelementptr inbounds %struct.ethtool_channels, ptr %3, i32 0, i32 7
  %77 = load i32, ptr %76, align 4
  %78 = getelementptr inbounds %struct.ethtool_channels, ptr %4, i32 0, i32 3
  %79 = load i32, ptr %78, align 4
  %80 = icmp ugt i32 %77, %79
  br i1 %80, label %108, label %81

81:                                               ; preds = %75
  %82 = icmp eq i32 %71, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %81
  %84 = icmp ne i32 %37, 0
  %85 = icmp ne i32 %65, 0
  %86 = select i1 %84, i1 %85, i1 false
  br i1 %86, label %87, label %108

87:                                               ; preds = %83, %81
  %88 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 15
  %89 = load i64, ptr %88, align 16
  %90 = and i64 %89, 8388608
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %101, label %92

92:                                               ; preds = %87
  %93 = call i32 @ethtool_get_max_rxfh_channel(ptr noundef %0, ptr noundef nonnull %5) #20
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %92
  %96 = load i32, ptr %70, align 4
  %97 = load i32, ptr %36, align 4
  %98 = add i32 %97, %96
  %99 = load i32, ptr %5, align 4
  %100 = icmp ugt i32 %98, %99
  br i1 %100, label %101, label %108

101:                                              ; preds = %95, %92, %87
  %102 = load ptr, ptr %7, align 8
  %103 = getelementptr inbounds %struct.ethtool_ops, ptr %102, i32 0, i32 43
  %104 = load ptr, ptr %103, align 4
  %105 = call i32 %104(ptr noundef %0, ptr noundef nonnull %3) #20
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %101
  call void @ethtool_notify(ptr noundef %0, i32 noundef 19, ptr noundef null) #20
  br label %108

108:                                              ; preds = %107, %101, %95, %83, %75, %69, %63, %59, %53, %28, %12, %2
  %109 = phi i32 [ -95, %12 ], [ -95, %2 ], [ 0, %53 ], [ -22, %75 ], [ -22, %69 ], [ -22, %63 ], [ -22, %59 ], [ -22, %83 ], [ -22, %95 ], [ 0, %107 ], [ %105, %101 ], [ -14, %28 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #20
  ret i32 %109
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ethtool_set_dump(ptr noundef %0, ptr noundef %1) unnamed_addr #5 {
  %3 = alloca %struct.ethtool_dump, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !11
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 42
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.ethtool_ops, ptr %5, i32 0, i32 46
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %30, label %9

9:                                                ; preds = %2
  %10 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 16, i32 -1090519040) #21, !srcloc !12
  %11 = extractvalue { i32, i32 } %10, 0
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %21, !prof !13

13:                                               ; preds = %9
  %14 = tail call ptr @llvm.thread.pointer() #20
  %15 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %16 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %15) #18, !srcloc !14
  %17 = and i32 %16, -13
  %18 = or i32 %17, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %18) #20, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %19 = call i32 @arm_copy_from_user(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 16) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %16) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21, !prof !13

21:                                               ; preds = %13, %9
  %22 = phi i32 [ %19, %13 ], [ 16, %9 ]
  %23 = sub i32 16, %22
  %24 = getelementptr i8, ptr %3, i32 %23
  call void @llvm.memset.p0.i32(ptr align 1 %24, i8 0, i32 %22, i1 false) #20
  br label %30

25:                                               ; preds = %13
  %26 = load ptr, ptr %4, align 8
  %27 = getelementptr inbounds %struct.ethtool_ops, ptr %26, i32 0, i32 46
  %28 = load ptr, ptr %27, align 4
  %29 = call i32 %28(ptr noundef %0, ptr noundef nonnull %3) #20
  br label %30

30:                                               ; preds = %25, %21, %2
  %31 = phi i32 [ %29, %25 ], [ -95, %2 ], [ -14, %21 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #20
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ethtool_get_dump_flag(ptr noundef %0, ptr noundef %1) unnamed_addr #5 {
  %3 = alloca %struct.ethtool_dump, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !11
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 42
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.ethtool_ops, ptr %5, i32 0, i32 44
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %36, label %9

9:                                                ; preds = %2
  %10 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 16, i32 -1090519040) #21
  %11 = extractvalue { i32, i32 } %10, 0
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %21, !prof !13

13:                                               ; preds = %9
  %14 = tail call ptr @llvm.thread.pointer() #20
  %15 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %16 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %15) #18, !srcloc !14
  %17 = and i32 %16, -13
  %18 = or i32 %17, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %18) #20, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %19 = call i32 @arm_copy_from_user(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 16) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %16) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21, !prof !13

21:                                               ; preds = %13, %9
  %22 = phi i32 [ %19, %13 ], [ 16, %9 ]
  %23 = sub i32 16, %22
  %24 = getelementptr i8, ptr %3, i32 %23
  call void @llvm.memset.p0.i32(ptr align 1 %24, i8 0, i32 %22, i1 false) #20
  br label %36

25:                                               ; preds = %13
  %26 = load ptr, ptr %6, align 4
  %27 = call i32 %26(ptr noundef %0, ptr noundef nonnull %3) #20
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %25
  %30 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %15) #18, !srcloc !14
  %31 = and i32 %30, -13
  %32 = or i32 %31, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %32) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %33 = call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef nonnull %3, i32 noundef 16) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %30) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %34 = icmp eq i32 %33, 0
  %35 = select i1 %34, i32 0, i32 -14
  br label %36

36:                                               ; preds = %29, %25, %21, %2
  %37 = phi i32 [ -95, %2 ], [ %27, %25 ], [ -14, %21 ], [ %35, %29 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #20
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ethtool_get_dump_data(ptr noundef %0, ptr noundef %1) unnamed_addr #5 {
  %3 = alloca %struct.ethtool_dump, align 4
  %4 = alloca %struct.ethtool_dump, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #20
  %5 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 42
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.ethtool_ops, ptr %6, i32 0, i32 45
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %83, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.ethtool_ops, ptr %6, i32 0, i32 44
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %83, label %14

14:                                               ; preds = %10
  %15 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 16, i32 -1090519040) #21
  %16 = extractvalue { i32, i32 } %15, 0
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %26, !prof !13

18:                                               ; preds = %14
  %19 = tail call ptr @llvm.thread.pointer() #20
  %20 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 3
  %21 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %20) #18, !srcloc !14
  %22 = and i32 %21, -13
  %23 = or i32 %22, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %23) #20, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %24 = call i32 @arm_copy_from_user(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 16) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %21) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26, !prof !13

26:                                               ; preds = %18, %14
  %27 = phi i32 [ %24, %18 ], [ 16, %14 ]
  %28 = sub i32 16, %27
  %29 = getelementptr i8, ptr %3, i32 %28
  call void @llvm.memset.p0.i32(ptr align 1 %29, i8 0, i32 %27, i1 false) #20
  br label %83

30:                                               ; preds = %18
  %31 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %31, i8 0, i32 12, i1 false)
  store i32 63, ptr %4, align 4
  %32 = load ptr, ptr %11, align 4
  %33 = call i32 %32(ptr noundef %0, ptr noundef nonnull %4) #20
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %83

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.ethtool_dump, ptr %4, i32 0, i32 3
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.ethtool_dump, ptr %3, i32 0, i32 3
  %39 = load i32, ptr %38, align 4
  %40 = call i32 @llvm.umin.i32(i32 %37, i32 %39)
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %83, label %42

42:                                               ; preds = %35
  store i32 %40, ptr %38, align 4
  %43 = call noalias ptr @vzalloc(i32 noundef %37) #23
  %44 = icmp eq ptr %43, null
  br i1 %44, label %83, label %45

45:                                               ; preds = %42
  %46 = load ptr, ptr %7, align 4
  %47 = call i32 %46(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %43) #20
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %81

49:                                               ; preds = %45
  %50 = load i32, ptr %38, align 4
  %51 = icmp ne i32 %50, %40
  %52 = load i32, ptr %36, align 4
  %53 = icmp ne i32 %50, %52
  %54 = select i1 %51, i1 %53, i1 false
  br i1 %54, label %55, label %56, !prof !9

55:                                               ; preds = %49
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2303, i32 noundef 9, ptr noundef null) #20
  br label %56

56:                                               ; preds = %55, %49
  store i32 %40, ptr %38, align 4
  %57 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %20) #18, !srcloc !14
  %58 = and i32 %57, -13
  %59 = or i32 %58, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %59) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %60 = call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef nonnull %3, i32 noundef 16) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %57) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %81

62:                                               ; preds = %56
  %63 = getelementptr i8, ptr %1, i32 16
  %64 = icmp slt i32 %40, 0
  %65 = load i1, ptr @check_copy_size.__already_done, align 1
  %66 = xor i1 %65, true
  %67 = select i1 %64, i1 %66, i1 false
  br i1 %67, label %68, label %69, !prof !9

68:                                               ; preds = %62
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 230, i32 noundef 9, ptr noundef null) #20
  br label %69

69:                                               ; preds = %68, %62
  br i1 %64, label %81, label %70, !prof !9

70:                                               ; preds = %69
  %71 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %63, i32 %40, i32 -1090519040) #21, !srcloc !17
  %72 = extractvalue { i32, i32 } %71, 0
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %70
  %75 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %20) #18, !srcloc !14
  %76 = and i32 %75, -13
  %77 = or i32 %76, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %77) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %78 = call i32 @arm_copy_to_user(ptr noundef %63, ptr noundef nonnull %43, i32 noundef %40) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %75) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %79 = icmp eq i32 %78, 0
  %80 = select i1 %79, i32 0, i32 -14
  br label %81

81:                                               ; preds = %74, %70, %69, %56, %45
  %82 = phi i32 [ %47, %45 ], [ -14, %56 ], [ -14, %69 ], [ %80, %74 ], [ -14, %70 ]
  call void @vfree(ptr noundef nonnull %43) #20
  br label %83

83:                                               ; preds = %81, %42, %35, %30, %26, %10, %2
  %84 = phi i32 [ %82, %81 ], [ -95, %10 ], [ -95, %2 ], [ %33, %30 ], [ -14, %35 ], [ -12, %42 ], [ -14, %26 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #20
  ret i32 %84
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ethtool_get_ts_info(ptr noundef %0, ptr noundef %1) unnamed_addr #5 {
  %3 = alloca %struct.ethtool_ts_info, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %3) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %3, i8 0, i32 44, i1 false), !annotation !11
  %4 = call i32 @__ethtool_get_ts_info(ptr noundef %0, ptr noundef nonnull %3) #20
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %2
  %7 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 44, i32 -1090519040) #21, !srcloc !17
  %8 = extractvalue { i32, i32 } %7, 0
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %6
  %11 = tail call ptr @llvm.thread.pointer() #20
  %12 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %13 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %12) #18, !srcloc !14
  %14 = and i32 %13, -13
  %15 = or i32 %14, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %16 = call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef nonnull %3, i32 noundef 44) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %17, i32 0, i32 -14
  br label %19

19:                                               ; preds = %10, %6, %2
  %20 = phi i32 [ %4, %2 ], [ -14, %6 ], [ %18, %10 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %3) #20
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ethtool_get_module_info(ptr noundef %0, ptr noundef %1) unnamed_addr #5 {
  %3 = alloca %struct.ethtool_modinfo, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %3) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %3, i8 0, i32 44, i1 false), !annotation !11
  %4 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 44, i32 -1090519040) #21
  %5 = extractvalue { i32, i32 } %4, 0
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %15, !prof !13

7:                                                ; preds = %2
  %8 = tail call ptr @llvm.thread.pointer() #20
  %9 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %10 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %9) #18, !srcloc !14
  %11 = and i32 %10, -13
  %12 = or i32 %11, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #20, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %13 = call i32 @arm_copy_from_user(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 44) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15, !prof !13

15:                                               ; preds = %7, %2
  %16 = phi i32 [ %13, %7 ], [ 44, %2 ]
  %17 = sub i32 44, %16
  %18 = getelementptr i8, ptr %3, i32 %17
  call void @llvm.memset.p0.i32(ptr align 1 %18, i8 0, i32 %16, i1 false) #20
  br label %55

19:                                               ; preds = %7
  %20 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 42
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 121
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %55

27:                                               ; preds = %19
  %28 = icmp eq ptr %23, null
  br i1 %28, label %39, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.phy_device, ptr %23, i32 0, i32 1
  %31 = load ptr, ptr %30, align 8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.phy_driver, ptr %31, i32 0, i32 27
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = call i32 %35(ptr noundef nonnull %23, ptr noundef nonnull %3) #20
  br label %45

39:                                               ; preds = %33, %29, %27
  %40 = getelementptr inbounds %struct.ethtool_ops, ptr %21, i32 0, i32 48
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %55, label %43

43:                                               ; preds = %39
  %44 = call i32 %41(ptr noundef %0, ptr noundef nonnull %3) #20
  br label %45

45:                                               ; preds = %43, %37
  %46 = phi i32 [ %38, %37 ], [ %44, %43 ]
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %45
  %49 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %9) #18, !srcloc !14
  %50 = and i32 %49, -13
  %51 = or i32 %50, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %51) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %52 = call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef nonnull %3, i32 noundef 44) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %49) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %53 = icmp eq i32 %52, 0
  %54 = select i1 %53, i32 0, i32 -14
  br label %55

55:                                               ; preds = %48, %45, %39, %19, %15
  %56 = phi i32 [ %46, %45 ], [ -14, %15 ], [ -95, %39 ], [ -95, %19 ], [ %54, %48 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %3) #20
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ethtool_get_module_eeprom(ptr noundef %0, ptr noundef %1) unnamed_addr #5 {
  %3 = alloca %struct.ethtool_modinfo, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %3) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %3, i8 0, i32 44, i1 false), !annotation !11
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 42
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 121
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %36

11:                                               ; preds = %2
  %12 = icmp eq ptr %7, null
  br i1 %12, label %23, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.phy_device, ptr %7, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.phy_driver, ptr %15, i32 0, i32 27
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = call i32 %19(ptr noundef nonnull %7, ptr noundef nonnull %3) #20
  br label %29

23:                                               ; preds = %17, %13, %11
  %24 = getelementptr inbounds %struct.ethtool_ops, ptr %5, i32 0, i32 48
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %36, label %27

27:                                               ; preds = %23
  %28 = call i32 %25(ptr noundef %0, ptr noundef nonnull %3) #20
  br label %29

29:                                               ; preds = %27, %21
  %30 = phi i32 [ %22, %21 ], [ %28, %27 ]
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.ethtool_modinfo, ptr %3, i32 0, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = call fastcc i32 @ethtool_get_any_eeprom(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @ethtool_get_module_eeprom_call, i32 noundef %34)
  br label %36

36:                                               ; preds = %32, %29, %23, %2
  %37 = phi i32 [ %35, %32 ], [ %30, %29 ], [ -95, %23 ], [ -95, %2 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %3) #20
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ethtool_get_tunable(ptr noundef %0, ptr noundef %1) unnamed_addr #5 {
  %3 = alloca %struct.ethtool_tunable, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !11
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 42
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.ethtool_ops, ptr %5, i32 0, i32 52
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %77, label %9

9:                                                ; preds = %2
  %10 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 16, i32 -1090519040) #21, !srcloc !12
  %11 = extractvalue { i32, i32 } %10, 0
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %21, !prof !13

13:                                               ; preds = %9
  %14 = tail call ptr @llvm.thread.pointer() #20
  %15 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %16 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %15) #18, !srcloc !14
  %17 = and i32 %16, -13
  %18 = or i32 %17, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %18) #20, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %19 = call i32 @arm_copy_from_user(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 16) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %16) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21, !prof !13

21:                                               ; preds = %13, %9
  %22 = phi i32 [ %19, %13 ], [ 16, %9 ]
  %23 = sub i32 16, %22
  %24 = getelementptr i8, ptr %3, i32 %23
  call void @llvm.memset.p0.i32(ptr align 1 %24, i8 0, i32 %22, i1 false) #20
  br label %77

25:                                               ; preds = %13
  %26 = getelementptr inbounds %struct.ethtool_tunable, ptr %3, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  switch i32 %27, label %77 [
    i32 1, label %28
    i32 2, label %28
    i32 4, label %28
    i32 3, label %36
  ]

28:                                               ; preds = %25, %25, %25
  %29 = getelementptr inbounds %struct.ethtool_tunable, ptr %3, i32 0, i32 3
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 4
  %32 = getelementptr inbounds %struct.ethtool_tunable, ptr %3, i32 0, i32 2
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 3
  %35 = select i1 %31, i1 %34, i1 false
  br i1 %35, label %44, label %77

36:                                               ; preds = %25
  %37 = getelementptr inbounds %struct.ethtool_tunable, ptr %3, i32 0, i32 3
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 2
  %40 = getelementptr inbounds %struct.ethtool_tunable, ptr %3, i32 0, i32 2
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 2
  %43 = select i1 %39, i1 %42, i1 false
  br i1 %43, label %44, label %77

44:                                               ; preds = %36, %28
  %45 = phi i32 [ 2, %36 ], [ 4, %28 ]
  %46 = getelementptr inbounds %struct.ethtool_tunable, ptr %3, i32 0, i32 3
  %47 = call noalias align 64 ptr @__kmalloc(i32 noundef %45, i32 noundef 1052096) #23
  %48 = icmp eq ptr %47, null
  br i1 %48, label %77, label %49

49:                                               ; preds = %44
  %50 = load ptr, ptr %6, align 4
  %51 = call i32 %50(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %47) #20
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %75

53:                                               ; preds = %49
  %54 = getelementptr i8, ptr %1, i32 16
  %55 = load i32, ptr %46, align 4
  %56 = icmp slt i32 %55, 0
  %57 = load i1, ptr @check_copy_size.__already_done, align 1
  %58 = xor i1 %57, true
  %59 = select i1 %56, i1 %58, i1 false
  br i1 %59, label %60, label %61, !prof !9

60:                                               ; preds = %53
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 230, i32 noundef 9, ptr noundef null) #20
  br label %61

61:                                               ; preds = %60, %53
  br i1 %56, label %75, label %62, !prof !9

62:                                               ; preds = %61
  %63 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %54, i32 %55, i32 -1090519040) #21, !srcloc !17
  %64 = extractvalue { i32, i32 } %63, 0
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %62
  %67 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %15) #18, !srcloc !14
  %68 = and i32 %67, -13
  %69 = or i32 %68, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %69) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %70 = call i32 @arm_copy_to_user(ptr noundef %54, ptr noundef nonnull %47, i32 noundef %55) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %67) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  br label %71

71:                                               ; preds = %66, %62
  %72 = phi i32 [ %70, %66 ], [ %55, %62 ]
  %73 = icmp eq i32 %72, 0
  %74 = select i1 %73, i32 0, i32 -14
  br label %75

75:                                               ; preds = %71, %61, %49
  %76 = phi i32 [ %51, %49 ], [ -14, %61 ], [ %74, %71 ]
  call void @kfree(ptr noundef nonnull %47) #20
  br label %77

77:                                               ; preds = %75, %44, %36, %28, %25, %21, %2
  %78 = phi i32 [ %76, %75 ], [ -95, %2 ], [ -12, %44 ], [ -14, %21 ], [ -22, %28 ], [ -22, %36 ], [ -22, %25 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #20
  ret i32 %78
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ethtool_set_tunable(ptr noundef %0, ptr noundef %1) unnamed_addr #5 {
  %3 = alloca %struct.ethtool_tunable, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !11
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 42
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.ethtool_ops, ptr %5, i32 0, i32 53
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %54, label %9

9:                                                ; preds = %2
  %10 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 16, i32 -1090519040) #21, !srcloc !12
  %11 = extractvalue { i32, i32 } %10, 0
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %21, !prof !13

13:                                               ; preds = %9
  %14 = tail call ptr @llvm.thread.pointer() #20
  %15 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %16 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %15) #18, !srcloc !14
  %17 = and i32 %16, -13
  %18 = or i32 %17, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %18) #20, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %19 = call i32 @arm_copy_from_user(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 16) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %16) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21, !prof !13

21:                                               ; preds = %13, %9
  %22 = phi i32 [ %19, %13 ], [ 16, %9 ]
  %23 = sub i32 16, %22
  %24 = getelementptr i8, ptr %3, i32 %23
  call void @llvm.memset.p0.i32(ptr align 1 %24, i8 0, i32 %22, i1 false) #20
  br label %54

25:                                               ; preds = %13
  %26 = getelementptr inbounds %struct.ethtool_tunable, ptr %3, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  switch i32 %27, label %54 [
    i32 1, label %28
    i32 2, label %28
    i32 4, label %28
    i32 3, label %36
  ]

28:                                               ; preds = %25, %25, %25
  %29 = getelementptr inbounds %struct.ethtool_tunable, ptr %3, i32 0, i32 3
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 4
  %32 = getelementptr inbounds %struct.ethtool_tunable, ptr %3, i32 0, i32 2
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 3
  %35 = select i1 %31, i1 %34, i1 false
  br i1 %35, label %44, label %54

36:                                               ; preds = %25
  %37 = getelementptr inbounds %struct.ethtool_tunable, ptr %3, i32 0, i32 3
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 2
  %40 = getelementptr inbounds %struct.ethtool_tunable, ptr %3, i32 0, i32 2
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 2
  %43 = select i1 %39, i1 %42, i1 false
  br i1 %43, label %44, label %54

44:                                               ; preds = %36, %28
  %45 = phi i32 [ 2, %36 ], [ 4, %28 ]
  %46 = getelementptr i8, ptr %1, i32 16
  %47 = call ptr @memdup_user(ptr noundef %46, i32 noundef %45) #20
  %48 = icmp ugt ptr %47, inttoptr (i32 -4096 to ptr)
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = ptrtoint ptr %47 to i32
  br label %54

51:                                               ; preds = %44
  %52 = load ptr, ptr %6, align 4
  %53 = call i32 %52(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %47) #20
  call void @kfree(ptr noundef %47) #20
  br label %54

54:                                               ; preds = %51, %49, %36, %28, %25, %21, %2
  %55 = phi i32 [ %50, %49 ], [ %53, %51 ], [ -95, %2 ], [ -14, %21 ], [ -22, %28 ], [ -22, %36 ], [ -22, %25 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #20
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ethtool_get_phy_stats(ptr noundef %0, ptr noundef %1) unnamed_addr #5 {
  %3 = alloca %struct.ethtool_stats, align 8
  %4 = load ptr, ptr @ethtool_phy_ops, align 4
  %5 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 42
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  store i64 0, ptr %3, align 8, !annotation !11
  %9 = icmp eq ptr %8, null
  %10 = getelementptr inbounds %struct.ethtool_ops, ptr %6, i32 0, i32 61
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %9, label %13, label %18

13:                                               ; preds = %2
  br i1 %12, label %103, label %14

14:                                               ; preds = %13
  %15 = getelementptr inbounds %struct.ethtool_ops, ptr %6, i32 0, i32 31
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %103, label %26

18:                                               ; preds = %2
  %19 = icmp ne ptr %4, null
  %20 = select i1 %12, i1 %19, i1 false
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load ptr, ptr %4, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = tail call i32 %22(ptr noundef nonnull %8) #20
  br label %30

26:                                               ; preds = %21, %18, %14
  %27 = getelementptr inbounds %struct.ethtool_ops, ptr %6, i32 0, i32 31
  %28 = load ptr, ptr %27, align 4
  %29 = tail call i32 %28(ptr noundef %0, i32 noundef 7) #20
  br label %30

30:                                               ; preds = %26, %24
  %31 = phi i32 [ %25, %24 ], [ %29, %26 ]
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %103, label %33

33:                                               ; preds = %30
  %34 = icmp ugt i32 %31, 268435455
  br i1 %34, label %103, label %35

35:                                               ; preds = %33
  %36 = icmp eq i32 %31, 0
  %37 = load i1, ptr @ethtool_get_phy_stats.__already_done, align 1
  %38 = xor i1 %37, true
  %39 = select i1 %36, i1 %38, i1 false
  br i1 %39, label %40, label %41, !prof !9

40:                                               ; preds = %35
  store i1 true, ptr @ethtool_get_phy_stats.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2108, i32 noundef 9, ptr noundef null) #20
  br label %41

41:                                               ; preds = %40, %35
  %42 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 8, i32 -1090519040) #21
  %43 = extractvalue { i32, i32 } %42, 0
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %53, !prof !13

45:                                               ; preds = %41
  %46 = tail call ptr @llvm.thread.pointer() #20
  %47 = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 3
  %48 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %47) #18, !srcloc !14
  %49 = and i32 %48, -13
  %50 = or i32 %49, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %50) #20, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %51 = call i32 @arm_copy_from_user(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 8) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %48) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %57, label %53, !prof !13

53:                                               ; preds = %45, %41
  %54 = phi i32 [ %51, %45 ], [ 8, %41 ]
  %55 = sub i32 8, %54
  %56 = getelementptr i8, ptr %3, i32 %55
  call void @llvm.memset.p0.i32(ptr align 1 %56, i8 0, i32 %54, i1 false) #20
  br label %103

57:                                               ; preds = %45
  %58 = getelementptr inbounds %struct.ethtool_stats, ptr %3, i32 0, i32 1
  store i32 %31, ptr %58, align 4
  br i1 %36, label %79, label %59

59:                                               ; preds = %57
  %60 = shl nuw nsw i32 %31, 3
  %61 = call noalias ptr @vzalloc(i32 noundef %60) #23
  %62 = icmp eq ptr %61, null
  br i1 %62, label %103, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.ethtool_ops, ptr %6, i32 0, i32 61
  %65 = load ptr, ptr %64, align 4
  br i1 %9, label %77, label %66

66:                                               ; preds = %63
  %67 = icmp eq ptr %65, null
  %68 = icmp ne ptr %4, null
  %69 = select i1 %67, i1 %68, i1 false
  br i1 %69, label %70, label %77

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.ethtool_phy_ops, ptr %4, i32 0, i32 2
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %70
  %75 = call i32 %72(ptr noundef nonnull %8, ptr noundef nonnull %3, ptr noundef nonnull %61) #20
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %100, label %79

77:                                               ; preds = %70, %66, %63
  %78 = phi ptr [ null, %70 ], [ %65, %66 ], [ %65, %63 ]
  call void %78(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %61) #20
  br label %79

79:                                               ; preds = %77, %74, %57
  %80 = phi ptr [ %61, %74 ], [ %61, %77 ], [ null, %57 ]
  %81 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %47) #18, !srcloc !14
  %82 = and i32 %81, -13
  %83 = or i32 %82, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %83) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %84 = call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef nonnull %3, i32 noundef 8) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %81) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %100

86:                                               ; preds = %79
  br i1 %36, label %99, label %87

87:                                               ; preds = %86
  %88 = getelementptr i8, ptr %1, i32 8
  %89 = shl nuw nsw i32 %31, 3
  %90 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %88, i32 %89, i32 -1090519040) #21, !srcloc !17
  %91 = extractvalue { i32, i32 } %90, 0
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %87
  %94 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %47) #18, !srcloc !14
  %95 = and i32 %94, -13
  %96 = or i32 %95, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %96) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %97 = call i32 @arm_copy_to_user(ptr noundef %88, ptr noundef %80, i32 noundef %89) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %94) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %93, %86
  br label %100

100:                                              ; preds = %99, %93, %87, %79, %74
  %101 = phi ptr [ %61, %74 ], [ %80, %79 ], [ %80, %93 ], [ %80, %99 ], [ %80, %87 ]
  %102 = phi i32 [ %75, %74 ], [ -14, %79 ], [ -14, %93 ], [ 0, %99 ], [ -14, %87 ]
  call void @vfree(ptr noundef %101) #20
  br label %103

103:                                              ; preds = %100, %59, %53, %33, %30, %14, %13
  %104 = phi i32 [ %102, %100 ], [ -95, %14 ], [ -95, %13 ], [ %31, %30 ], [ -12, %33 ], [ -12, %59 ], [ -14, %53 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  ret i32 %104
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ethtool_set_per_queue(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #16 {
  %4 = alloca %struct.ethtool_per_queue_op, align 4
  call void @llvm.lifetime.start.p0(i64 520, ptr nonnull %4) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(520) %4, i8 0, i32 520, i1 false), !annotation !11
  %5 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 520, i32 -1090519040) #21, !srcloc !12
  %6 = extractvalue { i32, i32 } %5, 0
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %16, !prof !13

8:                                                ; preds = %3
  %9 = tail call ptr @llvm.thread.pointer() #20
  %10 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3
  %11 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %10) #18, !srcloc !14
  %12 = and i32 %11, -13
  %13 = or i32 %12, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #20, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %14 = call i32 @arm_copy_from_user(ptr noundef nonnull %4, ptr noundef %1, i32 noundef 520) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16, !prof !13

16:                                               ; preds = %8, %3
  %17 = phi i32 [ %14, %8 ], [ 520, %3 ]
  %18 = sub i32 520, %17
  %19 = getelementptr i8, ptr %4, i32 %18
  call void @llvm.memset.p0.i32(ptr align 1 %19, i8 0, i32 %17, i1 false) #20
  br label %29

20:                                               ; preds = %8
  %21 = getelementptr inbounds %struct.ethtool_per_queue_op, ptr %4, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, %2
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  switch i32 %2, label %29 [
    i32 14, label %25
    i32 15, label %27
  ]

25:                                               ; preds = %24
  %26 = call fastcc i32 @ethtool_get_per_queue_coalesce(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4)
  br label %29

27:                                               ; preds = %24
  %28 = call fastcc i32 @ethtool_set_per_queue_coalesce(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4)
  br label %29

29:                                               ; preds = %27, %25, %24, %20, %16
  %30 = phi i32 [ %28, %27 ], [ %26, %25 ], [ -22, %20 ], [ -95, %24 ], [ -14, %16 ]
  call void @llvm.lifetime.end.p0(i64 520, ptr nonnull %4) #20
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ethtool_get_link_ksettings(ptr noundef %0, ptr noundef %1) unnamed_addr #5 {
  %3 = alloca %struct.ethtool_link_usettings, align 4
  %4 = alloca %struct.ethtool_link_ksettings, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %4) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(88) %4, i8 0, i32 88, i1 false), !annotation !11
  %5 = tail call i32 @rtnl_is_locked() #20
  %6 = icmp eq i32 %5, 0
  %7 = load i1, ptr @ethtool_get_link_ksettings.__already_done, align 1
  %8 = xor i1 %7, true
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %11, !prof !9

10:                                               ; preds = %2
  store i1 true, ptr @ethtool_get_link_ksettings.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 542, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 542) #20
  br label %11

11:                                               ; preds = %10, %2
  %12 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 42
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.ethtool_ops, ptr %13, i32 0, i32 56
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %81, label %17

17:                                               ; preds = %11
  %18 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 48, i32 -1090519040) #21
  %19 = extractvalue { i32, i32 } %18, 0
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %29, !prof !13

21:                                               ; preds = %17
  %22 = tail call ptr @llvm.thread.pointer() #20
  %23 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 3
  %24 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %23) #18, !srcloc !14
  %25 = and i32 %24, -13
  %26 = or i32 %25, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %26) #20, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %27 = call i32 @arm_copy_from_user(ptr noundef nonnull %4, ptr noundef %1, i32 noundef 48) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %24) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29, !prof !13

29:                                               ; preds = %21, %17
  %30 = phi i32 [ %27, %21 ], [ 48, %17 ]
  %31 = sub i32 48, %30
  %32 = getelementptr i8, ptr %4, i32 %31
  call void @llvm.memset.p0.i32(ptr align 1 %32, i8 0, i32 %30, i1 false) #20
  br label %81

33:                                               ; preds = %21
  %34 = getelementptr inbounds %struct.ethtool_link_settings, ptr %4, i32 0, i32 9
  %35 = load i8, ptr %34, align 1
  %36 = icmp eq i8 %35, 3
  br i1 %36, label %45, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(88) %38, i8 0, i32 84, i1 false)
  store i32 76, ptr %4, align 4
  store i8 -3, ptr %34, align 1
  %39 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %23) #18, !srcloc !14
  %40 = and i32 %39, -13
  %41 = or i32 %40, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %41) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %42 = call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef nonnull %4, i32 noundef 48) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %39) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %43 = icmp eq i32 %42, 0
  %44 = select i1 %43, i32 0, i32 -14
  br label %81

45:                                               ; preds = %33
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(88) %4, i8 0, i32 88, i1 false)
  %46 = load ptr, ptr %12, align 8
  %47 = getelementptr inbounds %struct.ethtool_ops, ptr %46, i32 0, i32 56
  %48 = load ptr, ptr %47, align 4
  %49 = call i32 %48(ptr noundef %0, ptr noundef nonnull %4) #20
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %81, label %51

51:                                               ; preds = %45
  store i32 76, ptr %4, align 4
  store i8 3, ptr %34, align 1
  %52 = getelementptr inbounds %struct.ethtool_link_settings, ptr %4, i32 0, i32 11
  store i8 0, ptr %52, align 1
  %53 = getelementptr inbounds %struct.ethtool_link_settings, ptr %4, i32 0, i32 12
  store i8 0, ptr %53, align 2
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %3) #20
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(84) %3, ptr noundef nonnull align 4 dereferenceable(84) %4, i32 84, i1 false) #20
  %54 = getelementptr inbounds %struct.ethtool_link_usettings, ptr %3, i32 0, i32 1
  %55 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %4, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %54, ptr noundef align 4 dereferenceable(12) %55, i32 12, i1 false) #20
  %56 = getelementptr inbounds %struct.ethtool_link_usettings, ptr %3, i32 0, i32 1, i32 0, i32 2
  %57 = load i32, ptr %56, align 4
  %58 = and i32 %57, 268435455
  store i32 %58, ptr %56, align 4
  %59 = getelementptr inbounds %struct.ethtool_link_usettings, ptr %3, i32 0, i32 1, i32 1
  %60 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %4, i32 0, i32 1, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %59, ptr noundef align 4 dereferenceable(12) %60, i32 12, i1 false) #20
  %61 = getelementptr inbounds %struct.ethtool_link_usettings, ptr %3, i32 0, i32 1, i32 1, i32 2
  %62 = load i32, ptr %61, align 4
  %63 = and i32 %62, 268435455
  store i32 %63, ptr %61, align 4
  %64 = getelementptr inbounds %struct.ethtool_link_usettings, ptr %3, i32 0, i32 1, i32 2
  %65 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %4, i32 0, i32 1, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %64, ptr noundef align 4 dereferenceable(12) %65, i32 12, i1 false) #20
  %66 = getelementptr inbounds %struct.ethtool_link_usettings, ptr %3, i32 0, i32 1, i32 2, i32 2
  %67 = load i32, ptr %66, align 4
  %68 = and i32 %67, 268435455
  store i32 %68, ptr %66, align 4
  %69 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 84, i32 -1090519040) #21, !srcloc !17
  %70 = extractvalue { i32, i32 } %69, 0
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %51
  %73 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %23) #18, !srcloc !14
  %74 = and i32 %73, -13
  %75 = or i32 %74, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %75) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %76 = call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef nonnull %3, i32 noundef 84) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %73) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %77 = icmp eq i32 %76, 0
  %78 = select i1 %77, i32 0, i32 -14
  br label %79

79:                                               ; preds = %72, %51
  %80 = phi i32 [ -14, %51 ], [ %78, %72 ]
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %3) #20
  br label %81

81:                                               ; preds = %79, %45, %37, %29, %11
  %82 = phi i32 [ %80, %79 ], [ -95, %11 ], [ %49, %45 ], [ -14, %29 ], [ %44, %37 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %4) #20
  ret i32 %82
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ethtool_set_link_ksettings(ptr noundef %0, ptr noundef %1) unnamed_addr #5 {
  %3 = alloca %struct.ethtool_link_usettings, align 4
  %4 = alloca %struct.ethtool_link_ksettings, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %4) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(88) %4, i8 0, i32 88, i1 false), !annotation !11
  %5 = tail call i32 @rtnl_is_locked() #20
  %6 = icmp eq i32 %5, 0
  %7 = load i1, ptr @ethtool_set_link_ksettings.__already_done, align 1
  %8 = xor i1 %7, true
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %11, !prof !9

10:                                               ; preds = %2
  store i1 true, ptr @ethtool_set_link_ksettings.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 598, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 598) #20
  br label %11

11:                                               ; preds = %10, %2
  %12 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 42
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.ethtool_ops, ptr %13, i32 0, i32 57
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %81, label %17

17:                                               ; preds = %11
  %18 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 48, i32 -1090519040) #21, !srcloc !12
  %19 = extractvalue { i32, i32 } %18, 0
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %29, !prof !13

21:                                               ; preds = %17
  %22 = tail call ptr @llvm.thread.pointer() #20
  %23 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 3
  %24 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %23) #18, !srcloc !14
  %25 = and i32 %24, -13
  %26 = or i32 %25, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %26) #20, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %27 = call i32 @arm_copy_from_user(ptr noundef nonnull %4, ptr noundef %1, i32 noundef 48) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %24) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29, !prof !13

29:                                               ; preds = %21, %17
  %30 = phi i32 [ %27, %21 ], [ 48, %17 ]
  %31 = sub i32 48, %30
  %32 = getelementptr i8, ptr %4, i32 %31
  call void @llvm.memset.p0.i32(ptr align 1 %32, i8 0, i32 %30, i1 false) #20
  br label %81

33:                                               ; preds = %21
  %34 = getelementptr inbounds %struct.ethtool_link_settings, ptr %4, i32 0, i32 9
  %35 = load i8, ptr %34, align 1
  %36 = icmp eq i8 %35, 3
  br i1 %36, label %37, label %81

37:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %3) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(84) %3, i8 0, i32 84, i1 false) #20, !annotation !11
  %38 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 84, i32 -1090519040) #21, !srcloc !12
  %39 = extractvalue { i32, i32 } %38, 0
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %47, !prof !13

41:                                               ; preds = %37
  %42 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %23) #18, !srcloc !14
  %43 = and i32 %42, -13
  %44 = or i32 %43, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %44) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %45 = call i32 @arm_copy_from_user(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 84) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %42) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %48, label %47, !prof !13

47:                                               ; preds = %41, %37
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %3) #20
  br label %81

48:                                               ; preds = %41
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %4, ptr noundef nonnull align 4 dereferenceable(48) %3, i32 48, i1 false) #20
  %49 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %4, i32 0, i32 1
  %50 = getelementptr inbounds %struct.ethtool_link_usettings, ptr %3, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %49, ptr noundef align 4 dereferenceable(12) %50, i32 12, i1 false) #20
  %51 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %4, i32 0, i32 1, i32 0, i32 2
  %52 = load i32, ptr %51, align 4
  %53 = and i32 %52, 268435455
  store i32 %53, ptr %51, align 4
  %54 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %4, i32 0, i32 1, i32 1
  %55 = getelementptr inbounds %struct.ethtool_link_usettings, ptr %3, i32 0, i32 1, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %54, ptr noundef align 4 dereferenceable(12) %55, i32 12, i1 false) #20
  %56 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %4, i32 0, i32 1, i32 1, i32 2
  %57 = load i32, ptr %56, align 4
  %58 = and i32 %57, 268435455
  store i32 %58, ptr %56, align 4
  %59 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %4, i32 0, i32 1, i32 2
  %60 = getelementptr inbounds %struct.ethtool_link_usettings, ptr %3, i32 0, i32 1, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %59, ptr noundef align 4 dereferenceable(12) %60, i32 12, i1 false) #20
  %61 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %4, i32 0, i32 1, i32 2, i32 2
  %62 = load i32, ptr %61, align 4
  %63 = and i32 %62, 268435455
  store i32 %63, ptr %61, align 4
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %3) #20
  %64 = load i8, ptr %34, align 1
  %65 = icmp eq i8 %64, 3
  br i1 %65, label %66, label %81

66:                                               ; preds = %48
  %67 = getelementptr inbounds %struct.ethtool_link_settings, ptr %4, i32 0, i32 11
  %68 = load i8, ptr %67, align 1
  %69 = icmp ne i8 %68, 0
  %70 = getelementptr inbounds %struct.ethtool_link_settings, ptr %4, i32 0, i32 12
  %71 = load i8, ptr %70, align 2
  %72 = icmp ne i8 %71, 0
  %73 = select i1 %69, i1 true, i1 %72
  br i1 %73, label %81, label %74

74:                                               ; preds = %66
  %75 = load ptr, ptr %12, align 8
  %76 = getelementptr inbounds %struct.ethtool_ops, ptr %75, i32 0, i32 57
  %77 = load ptr, ptr %76, align 4
  %78 = call i32 %77(ptr noundef %0, ptr noundef nonnull %4) #20
  %79 = icmp sgt i32 %78, -1
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  call void @ethtool_notify(ptr noundef %0, i32 noundef 3, ptr noundef null) #20
  call void @ethtool_notify(ptr noundef %0, i32 noundef 5, ptr noundef null) #20
  br label %81

81:                                               ; preds = %80, %74, %66, %48, %47, %33, %29, %11
  %82 = phi i32 [ -95, %11 ], [ -22, %33 ], [ -14, %47 ], [ -22, %48 ], [ -22, %66 ], [ %78, %80 ], [ %78, %74 ], [ -14, %29 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %4) #20
  ret i32 %82
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @get_phy_tunable(ptr noundef %0, ptr noundef %1) unnamed_addr #5 {
  %3 = alloca %struct.ethtool_tunable, align 4
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !11
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.phy_device, ptr %5, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.phy_driver, ptr %9, i32 0, i32 35
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %11, %7, %2
  %16 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 42
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.ethtool_ops, ptr %17, i32 0, i32 62
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %103, label %21

21:                                               ; preds = %15, %11
  %22 = phi i1 [ false, %15 ], [ true, %11 ]
  %23 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 16, i32 -1090519040) #21, !srcloc !12
  %24 = extractvalue { i32, i32 } %23, 0
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %34, !prof !13

26:                                               ; preds = %21
  %27 = tail call ptr @llvm.thread.pointer() #20
  %28 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 3
  %29 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %28) #18, !srcloc !14
  %30 = and i32 %29, -13
  %31 = or i32 %30, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %31) #20, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %32 = call i32 @arm_copy_from_user(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 16) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %29) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34, !prof !13

34:                                               ; preds = %26, %21
  %35 = phi i32 [ %32, %26 ], [ 16, %21 ]
  %36 = sub i32 16, %35
  %37 = getelementptr i8, ptr %3, i32 %36
  call void @llvm.memset.p0.i32(ptr align 1 %37, i8 0, i32 %35, i1 false) #20
  br label %103

38:                                               ; preds = %26
  %39 = getelementptr inbounds %struct.ethtool_tunable, ptr %3, i32 0, i32 1
  %40 = load i32, ptr %39, align 4
  switch i32 %40, label %103 [
    i32 1, label %41
    i32 2, label %41
    i32 3, label %49
  ]

41:                                               ; preds = %38, %38
  %42 = getelementptr inbounds %struct.ethtool_tunable, ptr %3, i32 0, i32 3
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 1
  %45 = getelementptr inbounds %struct.ethtool_tunable, ptr %3, i32 0, i32 2
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, 1
  %48 = select i1 %44, i1 %47, i1 false
  br i1 %48, label %57, label %103

49:                                               ; preds = %38
  %50 = getelementptr inbounds %struct.ethtool_tunable, ptr %3, i32 0, i32 3
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 2
  %53 = getelementptr inbounds %struct.ethtool_tunable, ptr %3, i32 0, i32 2
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 2
  %56 = select i1 %52, i1 %55, i1 false
  br i1 %56, label %57, label %103

57:                                               ; preds = %49, %41
  %58 = phi i32 [ 2, %49 ], [ 1, %41 ]
  %59 = getelementptr inbounds %struct.ethtool_tunable, ptr %3, i32 0, i32 3
  %60 = call noalias align 64 ptr @__kmalloc(i32 noundef %58, i32 noundef 1052096) #23
  %61 = icmp eq ptr %60, null
  br i1 %61, label %103, label %62

62:                                               ; preds = %57
  br i1 %22, label %63, label %70

63:                                               ; preds = %62
  %64 = getelementptr inbounds %struct.phy_device, ptr %5, i32 0, i32 28
  call void @mutex_lock(ptr noundef %64) #20
  %65 = getelementptr inbounds %struct.phy_device, ptr %5, i32 0, i32 1
  %66 = load ptr, ptr %65, align 8
  %67 = getelementptr inbounds %struct.phy_driver, ptr %66, i32 0, i32 35
  %68 = load ptr, ptr %67, align 4
  %69 = call i32 %68(ptr noundef %5, ptr noundef nonnull %3, ptr noundef nonnull %60) #20
  call void @mutex_unlock(ptr noundef %64) #20
  br label %76

70:                                               ; preds = %62
  %71 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 42
  %72 = load ptr, ptr %71, align 8
  %73 = getelementptr inbounds %struct.ethtool_ops, ptr %72, i32 0, i32 62
  %74 = load ptr, ptr %73, align 4
  %75 = call i32 %74(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %60) #20
  br label %76

76:                                               ; preds = %70, %63
  %77 = phi i32 [ %69, %63 ], [ %75, %70 ]
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %101

79:                                               ; preds = %76
  %80 = getelementptr i8, ptr %1, i32 16
  %81 = load i32, ptr %59, align 4
  %82 = icmp slt i32 %81, 0
  %83 = load i1, ptr @check_copy_size.__already_done, align 1
  %84 = xor i1 %83, true
  %85 = select i1 %82, i1 %84, i1 false
  br i1 %85, label %86, label %87, !prof !9

86:                                               ; preds = %79
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 230, i32 noundef 9, ptr noundef null) #20
  br label %87

87:                                               ; preds = %86, %79
  br i1 %82, label %101, label %88, !prof !9

88:                                               ; preds = %87
  %89 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %80, i32 %81, i32 -1090519040) #21, !srcloc !17
  %90 = extractvalue { i32, i32 } %89, 0
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %88
  %93 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %28) #18, !srcloc !14
  %94 = and i32 %93, -13
  %95 = or i32 %94, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %95) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %96 = call i32 @arm_copy_to_user(ptr noundef %80, ptr noundef nonnull %60, i32 noundef %81) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %93) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  br label %97

97:                                               ; preds = %92, %88
  %98 = phi i32 [ %96, %92 ], [ %81, %88 ]
  %99 = icmp eq i32 %98, 0
  %100 = select i1 %99, i32 0, i32 -14
  br label %101

101:                                              ; preds = %97, %87, %76
  %102 = phi i32 [ %77, %76 ], [ -14, %87 ], [ %100, %97 ]
  call void @kfree(ptr noundef nonnull %60) #20
  br label %103

103:                                              ; preds = %101, %57, %49, %41, %38, %34, %15
  %104 = phi i32 [ %102, %101 ], [ -95, %15 ], [ -12, %57 ], [ -14, %34 ], [ -22, %41 ], [ -22, %49 ], [ -22, %38 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #20
  ret i32 %104
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @set_phy_tunable(ptr noundef %0, ptr noundef %1) unnamed_addr #5 {
  %3 = alloca %struct.ethtool_tunable, align 4
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !11
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.phy_device, ptr %5, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.phy_driver, ptr %9, i32 0, i32 35
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %11, %7, %2
  %16 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 42
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.ethtool_ops, ptr %17, i32 0, i32 63
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %80, label %21

21:                                               ; preds = %15, %11
  %22 = phi i1 [ false, %15 ], [ true, %11 ]
  %23 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 16, i32 -1090519040) #21, !srcloc !12
  %24 = extractvalue { i32, i32 } %23, 0
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %34, !prof !13

26:                                               ; preds = %21
  %27 = tail call ptr @llvm.thread.pointer() #20
  %28 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 3
  %29 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %28) #18, !srcloc !14
  %30 = and i32 %29, -13
  %31 = or i32 %30, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %31) #20, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %32 = call i32 @arm_copy_from_user(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 16) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %29) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34, !prof !13

34:                                               ; preds = %26, %21
  %35 = phi i32 [ %32, %26 ], [ 16, %21 ]
  %36 = sub i32 16, %35
  %37 = getelementptr i8, ptr %3, i32 %36
  call void @llvm.memset.p0.i32(ptr align 1 %37, i8 0, i32 %35, i1 false) #20
  br label %80

38:                                               ; preds = %26
  %39 = getelementptr inbounds %struct.ethtool_tunable, ptr %3, i32 0, i32 1
  %40 = load i32, ptr %39, align 4
  switch i32 %40, label %80 [
    i32 1, label %41
    i32 2, label %41
    i32 3, label %49
  ]

41:                                               ; preds = %38, %38
  %42 = getelementptr inbounds %struct.ethtool_tunable, ptr %3, i32 0, i32 3
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 1
  %45 = getelementptr inbounds %struct.ethtool_tunable, ptr %3, i32 0, i32 2
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, 1
  %48 = select i1 %44, i1 %47, i1 false
  br i1 %48, label %57, label %80

49:                                               ; preds = %38
  %50 = getelementptr inbounds %struct.ethtool_tunable, ptr %3, i32 0, i32 3
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 2
  %53 = getelementptr inbounds %struct.ethtool_tunable, ptr %3, i32 0, i32 2
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 2
  %56 = select i1 %52, i1 %55, i1 false
  br i1 %56, label %57, label %80

57:                                               ; preds = %49, %41
  %58 = phi i32 [ 2, %49 ], [ 1, %41 ]
  %59 = getelementptr i8, ptr %1, i32 16
  %60 = call ptr @memdup_user(ptr noundef %59, i32 noundef %58) #20
  %61 = icmp ugt ptr %60, inttoptr (i32 -4096 to ptr)
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = ptrtoint ptr %60 to i32
  br label %80

64:                                               ; preds = %57
  br i1 %22, label %65, label %72

65:                                               ; preds = %64
  %66 = getelementptr inbounds %struct.phy_device, ptr %5, i32 0, i32 28
  call void @mutex_lock(ptr noundef %66) #20
  %67 = getelementptr inbounds %struct.phy_device, ptr %5, i32 0, i32 1
  %68 = load ptr, ptr %67, align 8
  %69 = getelementptr inbounds %struct.phy_driver, ptr %68, i32 0, i32 36
  %70 = load ptr, ptr %69, align 4
  %71 = call i32 %70(ptr noundef %5, ptr noundef nonnull %3, ptr noundef %60) #20
  call void @mutex_unlock(ptr noundef %66) #20
  br label %78

72:                                               ; preds = %64
  %73 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 42
  %74 = load ptr, ptr %73, align 8
  %75 = getelementptr inbounds %struct.ethtool_ops, ptr %74, i32 0, i32 63
  %76 = load ptr, ptr %75, align 4
  %77 = call i32 %76(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %60) #20
  br label %78

78:                                               ; preds = %72, %65
  %79 = phi i32 [ %71, %65 ], [ %77, %72 ]
  call void @kfree(ptr noundef %60) #20
  br label %80

80:                                               ; preds = %78, %62, %49, %41, %38, %34, %15
  %81 = phi i32 [ %63, %62 ], [ %79, %78 ], [ -95, %15 ], [ -14, %34 ], [ -22, %41 ], [ -22, %49 ], [ -22, %38 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #20
  ret i32 %81
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ethtool_get_fecparam(ptr noundef %0, ptr noundef %1) unnamed_addr #5 {
  %3 = alloca %struct.ethtool_fecparam, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #20
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) @__const.ethtool_get_fecparam.fecparam, i32 16, i1 false)
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 42
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.ethtool_ops, ptr %5, i32 0, i32 59
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %35, label %9

9:                                                ; preds = %2
  %10 = call i32 %7(ptr noundef %0, ptr noundef nonnull %3) #20
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %35

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.ethtool_fecparam, ptr %3, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = icmp ne i32 %14, 0
  %16 = load i1, ptr @ethtool_get_fecparam.__already_done, align 1
  %17 = xor i1 %16, true
  %18 = select i1 %15, i1 %17, i1 false
  br i1 %18, label %19, label %20, !prof !9

19:                                               ; preds = %12
  store i1 true, ptr @ethtool_get_fecparam.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2698, i32 noundef 9, ptr noundef null) #20
  br label %20

20:                                               ; preds = %19, %12
  br i1 %15, label %21, label %22

21:                                               ; preds = %20
  store i32 0, ptr %13, align 4
  br label %22

22:                                               ; preds = %21, %20
  %23 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 16, i32 -1090519040) #21, !srcloc !17
  %24 = extractvalue { i32, i32 } %23, 0
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %22
  %27 = tail call ptr @llvm.thread.pointer() #20
  %28 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 3
  %29 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %28) #18, !srcloc !14
  %30 = and i32 %29, -13
  %31 = or i32 %30, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %31) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %32 = call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef nonnull %3, i32 noundef 16) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %29) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %33 = icmp eq i32 %32, 0
  %34 = select i1 %33, i32 0, i32 -14
  br label %35

35:                                               ; preds = %26, %22, %9, %2
  %36 = phi i32 [ -95, %2 ], [ %10, %9 ], [ -14, %22 ], [ %34, %26 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #20
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ethtool_set_fecparam(ptr noundef %0, ptr noundef %1) unnamed_addr #5 {
  %3 = alloca %struct.ethtool_fecparam, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !11
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 42
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.ethtool_ops, ptr %5, i32 0, i32 60
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %39, label %9

9:                                                ; preds = %2
  %10 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 16, i32 -1090519040) #21, !srcloc !12
  %11 = extractvalue { i32, i32 } %10, 0
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %21, !prof !13

13:                                               ; preds = %9
  %14 = tail call ptr @llvm.thread.pointer() #20
  %15 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %16 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %15) #18, !srcloc !14
  %17 = and i32 %16, -13
  %18 = or i32 %17, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %18) #20, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %19 = call i32 @arm_copy_from_user(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 16) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %16) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21, !prof !13

21:                                               ; preds = %13, %9
  %22 = phi i32 [ %19, %13 ], [ 16, %9 ]
  %23 = sub i32 16, %22
  %24 = getelementptr i8, ptr %3, i32 %23
  call void @llvm.memset.p0.i32(ptr align 1 %24, i8 0, i32 %22, i1 false) #20
  br label %39

25:                                               ; preds = %13
  %26 = getelementptr inbounds %struct.ethtool_fecparam, ptr %3, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = icmp ne i32 %27, 0
  %29 = and i32 %27, 1
  %30 = icmp eq i32 %29, 0
  %31 = and i1 %28, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.ethtool_fecparam, ptr %3, i32 0, i32 1
  store i32 0, ptr %33, align 4
  %34 = getelementptr inbounds %struct.ethtool_fecparam, ptr %3, i32 0, i32 3
  store i32 0, ptr %34, align 4
  %35 = load ptr, ptr %4, align 8
  %36 = getelementptr inbounds %struct.ethtool_ops, ptr %35, i32 0, i32 60
  %37 = load ptr, ptr %36, align 4
  %38 = call i32 %37(ptr noundef %0, ptr noundef nonnull %3) #20
  br label %39

39:                                               ; preds = %32, %25, %21, %2
  %40 = phi i32 [ %38, %32 ], [ -95, %2 ], [ -22, %25 ], [ -14, %21 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #20
  ret i32 %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_features_change(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @convert_legacy_settings_to_link_ksettings(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #17

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devlink_try_get(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ethtool_get_link(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ethtool_get_any_eeprom(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #5 {
  %5 = alloca %struct.ethtool_eeprom, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i32 16, i1 false), !annotation !11
  %6 = getelementptr i8, ptr %1, i32 16
  %7 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 16, i32 -1090519040) #21
  %8 = extractvalue { i32, i32 } %7, 0
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %18, !prof !13

10:                                               ; preds = %4
  %11 = tail call ptr @llvm.thread.pointer() #20
  %12 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %13 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %12) #18, !srcloc !14
  %14 = and i32 %13, -13
  %15 = or i32 %14, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #20, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %16 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %1, i32 noundef 16) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18, !prof !13

18:                                               ; preds = %10, %4
  %19 = phi i32 [ %16, %10 ], [ 16, %4 ]
  %20 = sub i32 16, %19
  %21 = getelementptr i8, ptr %5, i32 %20
  call void @llvm.memset.p0.i32(ptr align 1 %21, i8 0, i32 %19, i1 false) #20
  br label %81

22:                                               ; preds = %10
  %23 = getelementptr inbounds %struct.ethtool_eeprom, ptr %5, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.ethtool_eeprom, ptr %5, i32 0, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, %24
  %28 = icmp ule i32 %27, %24
  %29 = icmp ugt i32 %27, %3
  %30 = or i1 %28, %29
  br i1 %30, label %81, label %31

31:                                               ; preds = %22
  %32 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %33 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %32, i32 noundef 1052096, i32 noundef 4096) #22
  %34 = icmp eq ptr %33, null
  br i1 %34, label %81, label %35

35:                                               ; preds = %31
  %36 = load i32, ptr %25, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %67, label %38

38:                                               ; preds = %60, %35
  %39 = phi ptr [ %62, %60 ], [ %6, %35 ]
  %40 = phi i32 [ %65, %60 ], [ %36, %35 ]
  %41 = call i32 @llvm.umin.i32(i32 %40, i32 4096)
  store i32 %41, ptr %25, align 4
  %42 = call i32 %2(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %33) #20
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %67

44:                                               ; preds = %38
  %45 = load i32, ptr %25, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %67, label %47

47:                                               ; preds = %44
  %48 = icmp ugt i32 %45, 4096
  br i1 %48, label %49, label %50, !prof !9

49:                                               ; preds = %47
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.3, i32 noundef 4096, i32 noundef %45) #20
  br label %67

50:                                               ; preds = %47
  %51 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %39, i32 %45, i32 -1090519040) #21, !srcloc !17
  %52 = extractvalue { i32, i32 } %51, 0
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %50
  %55 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %12) #18, !srcloc !14
  %56 = and i32 %55, -13
  %57 = or i32 %56, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %57) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %58 = call i32 @arm_copy_to_user(ptr noundef %39, ptr noundef nonnull %33, i32 noundef %45) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %55) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %54
  %61 = load i32, ptr %25, align 4
  %62 = getelementptr i8, ptr %39, i32 %61
  %63 = load i32, ptr %23, align 4
  %64 = add i32 %63, %61
  store i32 %64, ptr %23, align 4
  %65 = sub i32 %40, %61
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %38

67:                                               ; preds = %60, %54, %50, %49, %44, %38, %35
  %68 = phi ptr [ %39, %49 ], [ %6, %35 ], [ %62, %60 ], [ %39, %38 ], [ %39, %44 ], [ %39, %54 ], [ %39, %50 ]
  %69 = phi i32 [ -14, %49 ], [ 0, %35 ], [ 0, %60 ], [ %42, %38 ], [ -5, %44 ], [ -14, %54 ], [ -14, %50 ]
  %70 = ptrtoint ptr %68 to i32
  %71 = ptrtoint ptr %6 to i32
  %72 = sub i32 %70, %71
  store i32 %72, ptr %25, align 4
  %73 = load i32, ptr %23, align 4
  %74 = sub i32 %73, %72
  store i32 %74, ptr %23, align 4
  %75 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %12) #18, !srcloc !14
  %76 = and i32 %75, -13
  %77 = or i32 %76, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %77) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %78 = call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef nonnull %5, i32 noundef 16) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %75) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %79 = icmp eq i32 %78, 0
  %80 = select i1 %79, i32 %69, i32 -14
  call void @kfree(ptr noundef nonnull %33) #20
  br label %81

81:                                               ; preds = %67, %31, %22, %18
  %82 = phi i32 [ %80, %67 ], [ -22, %22 ], [ -12, %31 ], [ -14, %18 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #20
  ret i32 %82
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @linkwatch_fire_event(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_interruptible(i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #18

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__netdev_update_features(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ethtool_rxnfc_copy_from_user(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #5 {
  %4 = icmp slt i32 %2, 0
  %5 = load i1, ptr @check_copy_size.__already_done, align 1
  %6 = xor i1 %5, true
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %9, !prof !9

8:                                                ; preds = %3
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 230, i32 noundef 9, ptr noundef null) #20
  br label %9

9:                                                ; preds = %8, %3
  br i1 %4, label %27, label %10, !prof !9

10:                                               ; preds = %9
  %11 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %2, i32 -1090519040) #21, !srcloc !12
  %12 = extractvalue { i32, i32 } %11, 0
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %21, !prof !13

14:                                               ; preds = %10
  %15 = tail call ptr @llvm.thread.pointer() #20
  %16 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 3
  %17 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %16) #18, !srcloc !14
  %18 = and i32 %17, -13
  %19 = or i32 %18, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %19) #20, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %20 = tail call i32 @arm_copy_from_user(ptr noundef %0, ptr noundef %1, i32 noundef %2) #20
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #20, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  br label %21

21:                                               ; preds = %14, %10
  %22 = phi i32 [ %20, %14 ], [ %2, %10 ]
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24, !prof !13

24:                                               ; preds = %21
  %25 = sub i32 %2, %22
  %26 = getelementptr i8, ptr %0, i32 %25
  tail call void @llvm.memset.p0.i32(ptr align 1 %26, i8 0, i32 %22, i1 false) #20
  br label %27

27:                                               ; preds = %24, %21, %9
  %28 = phi i32 [ 0, %21 ], [ -14, %9 ], [ -14, %24 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ethtool_rxnfc_copy_to_user(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #5 {
  %5 = icmp slt i32 %2, 0
  %6 = load i1, ptr @check_copy_size.__already_done, align 1
  %7 = xor i1 %6, true
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %10, !prof !9

9:                                                ; preds = %4
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 230, i32 noundef 9, ptr noundef null) #20
  br label %10

10:                                               ; preds = %9, %4
  br i1 %5, label %53, label %11, !prof !9

11:                                               ; preds = %10
  %12 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 %2, i32 -1090519040) #21, !srcloc !17
  %13 = extractvalue { i32, i32 } %12, 0
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %11
  %16 = tail call ptr @llvm.thread.pointer() #20
  %17 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 3
  %18 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %17) #18, !srcloc !14
  %19 = and i32 %18, -13
  %20 = or i32 %19, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %20) #20, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %21 = tail call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef %1, i32 noundef %2) #20
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %18) #20, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  br label %22

22:                                               ; preds = %15, %11
  %23 = phi i32 [ %21, %15 ], [ %2, %11 ]
  %24 = getelementptr i8, ptr %0, i32 188
  %25 = icmp eq i32 %23, 0
  br i1 %25, label %26, label %53

26:                                               ; preds = %22
  %27 = icmp eq ptr %3, null
  br i1 %27, label %52, label %28

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %1, i32 0, i32 4
  %30 = load i32, ptr %29, align 8
  %31 = shl i32 %30, 2
  %32 = icmp slt i32 %31, 0
  %33 = load i1, ptr @check_copy_size.__already_done, align 1
  %34 = xor i1 %33, true
  %35 = select i1 %32, i1 %34, i1 false
  br i1 %35, label %36, label %37, !prof !9

36:                                               ; preds = %28
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 230, i32 noundef 9, ptr noundef null) #20
  br label %37

37:                                               ; preds = %36, %28
  br i1 %32, label %53, label %38, !prof !9

38:                                               ; preds = %37
  %39 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %24, i32 %31, i32 -1090519040) #21, !srcloc !17
  %40 = extractvalue { i32, i32 } %39, 0
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %38
  %43 = tail call ptr @llvm.thread.pointer() #20
  %44 = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 3
  %45 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %44) #18, !srcloc !14
  %46 = and i32 %45, -13
  %47 = or i32 %46, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %47) #20, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %48 = tail call i32 @arm_copy_to_user(ptr noundef %24, ptr noundef nonnull %3, i32 noundef %31) #20
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %45) #20, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  br label %49

49:                                               ; preds = %42, %38
  %50 = phi i32 [ %48, %42 ], [ %31, %38 ]
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49, %26
  br label %53

53:                                               ; preds = %52, %49, %37, %22, %10
  %54 = phi i32 [ 0, %52 ], [ -14, %22 ], [ -14, %49 ], [ -14, %10 ], [ -14, %37 ]
  ret i32 %54
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight64(i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ethtool_copy_validate_indir(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #5 {
  %5 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %3, i32 4) #20
  %6 = extractvalue { i32, i1 } %5, 1
  %7 = extractvalue { i32, i1 } %5, 0
  %8 = select i1 %6, i32 -1, i32 %7
  %9 = icmp slt i32 %8, 0
  %10 = load i1, ptr @check_copy_size.__already_done, align 1
  %11 = xor i1 %10, true
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %14, !prof !9

13:                                               ; preds = %4
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 230, i32 noundef 9, ptr noundef null) #20
  br label %14

14:                                               ; preds = %13, %4
  br i1 %9, label %46, label %15, !prof !9

15:                                               ; preds = %14
  %16 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %8, i32 -1090519040) #21, !srcloc !12
  %17 = extractvalue { i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %26, !prof !13

19:                                               ; preds = %15
  %20 = tail call ptr @llvm.thread.pointer() #20
  %21 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 3
  %22 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %21) #18, !srcloc !14
  %23 = and i32 %22, -13
  %24 = or i32 %23, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %24) #20, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %25 = tail call i32 @arm_copy_from_user(ptr noundef %0, ptr noundef %1, i32 noundef %8) #20
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %22) #20, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  br label %26

26:                                               ; preds = %19, %15
  %27 = phi i32 [ %25, %19 ], [ %7, %15 ]
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %34, !prof !13

29:                                               ; preds = %26
  %30 = icmp eq i32 %3, 0
  br i1 %30, label %46, label %31

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %2, i32 0, i32 2
  %33 = load i64, ptr %32, align 8
  br label %40

34:                                               ; preds = %26
  %35 = sub i32 %8, %27
  %36 = getelementptr i8, ptr %0, i32 %35
  tail call void @llvm.memset.p0.i32(ptr align 1 %36, i8 0, i32 %27, i1 false) #20
  br label %46

37:                                               ; preds = %40
  %38 = add nuw i32 %41, 1
  %39 = icmp eq i32 %38, %3
  br i1 %39, label %46, label %40

40:                                               ; preds = %37, %31
  %41 = phi i32 [ 0, %31 ], [ %38, %37 ]
  %42 = getelementptr i32, ptr %0, i32 %41
  %43 = load i32, ptr %42, align 4
  %44 = zext i32 %43 to i64
  %45 = icmp ugt i64 %33, %44
  br i1 %45, label %37, label %46

46:                                               ; preds = %40, %37, %34, %29, %14
  %47 = phi i32 [ -14, %14 ], [ -14, %34 ], [ 0, %29 ], [ -22, %40 ], [ 0, %37 ]
  ret i32 %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_get_max_rxfh_channel(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ethtool_get_ts_info(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ethtool_get_per_queue_coalesce(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #16 {
  %4 = alloca [128 x i32], align 4
  %5 = alloca %struct.ethtool_coalesce, align 4
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %4) #20
  %6 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 42
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.ethtool_ops, ptr %7, i32 0, i32 54
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %45, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.ethtool_per_queue_op, ptr %2, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(512) %4, ptr noundef align 4 dereferenceable(512) %12, i32 512, i1 false) #20
  %13 = call i32 @_find_next_bit_le(ptr noundef nonnull %4, i32 noundef 4096, i32 noundef 0) #20
  %14 = icmp ult i32 %13, 4096
  br i1 %14, label %15, label %45

15:                                               ; preds = %11
  %16 = getelementptr i8, ptr %1, i32 520
  %17 = getelementptr inbounds i8, ptr %5, i32 4
  br label %18

18:                                               ; preds = %40, %15
  %19 = phi i32 [ %43, %40 ], [ %13, %15 ]
  %20 = phi ptr [ %41, %40 ], [ %16, %15 ]
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %5) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(92) %17, i8 0, i32 88, i1 false)
  store i32 14, ptr %5, align 4
  %21 = load ptr, ptr %6, align 8
  %22 = getelementptr inbounds %struct.ethtool_ops, ptr %21, i32 0, i32 54
  %23 = load ptr, ptr %22, align 4
  %24 = call i32 %23(ptr noundef %0, i32 noundef %19, ptr noundef nonnull %5) #20
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %18
  %27 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %20, i32 92, i32 -1090519040) #21, !srcloc !17
  %28 = extractvalue { i32, i32 } %27, 0
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %26
  %31 = tail call ptr @llvm.thread.pointer() #20
  %32 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 3
  %33 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %32) #18, !srcloc !14
  %34 = and i32 %33, -13
  %35 = or i32 %34, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %35) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %36 = call i32 @arm_copy_to_user(ptr noundef %20, ptr noundef nonnull %5, i32 noundef 92) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %33) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %30, %26, %18
  %39 = phi i32 [ -14, %30 ], [ %24, %18 ], [ -14, %26 ]
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %5) #20
  br label %45

40:                                               ; preds = %30
  %41 = getelementptr i8, ptr %20, i32 92
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %5) #20
  %42 = add nuw nsw i32 %19, 1
  %43 = call i32 @_find_next_bit_le(ptr noundef nonnull %4, i32 noundef 4096, i32 noundef %42) #20
  %44 = icmp ult i32 %43, 4096
  br i1 %44, label %18, label %45

45:                                               ; preds = %40, %38, %11, %3
  %46 = phi i32 [ -95, %3 ], [ %39, %38 ], [ 0, %11 ], [ 0, %40 ]
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %4) #20
  ret i32 %46
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ethtool_set_per_queue_coalesce(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #16 {
  %4 = alloca [128 x i32], align 4
  %5 = alloca %struct.ethtool_coalesce, align 4
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %4) #20
  %6 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 42
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.ethtool_ops, ptr %7, i32 0, i32 55
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %197, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.ethtool_ops, ptr %7, i32 0, i32 54
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %197, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.ethtool_per_queue_op, ptr %2, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(512) %4, ptr noundef align 4 dereferenceable(512) %16, i32 512, i1 false) #20
  %17 = call i32 @__bitmap_weight(ptr noundef nonnull %4, i32 noundef 4096) #20
  %18 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %17, i32 92) #20
  %19 = extractvalue { i32, i1 } %18, 1
  br i1 %19, label %197, label %20, !prof !9

20:                                               ; preds = %15
  %21 = extractvalue { i32, i1 } %18, 0
  %22 = call noalias align 64 ptr @__kmalloc(i32 noundef %21, i32 noundef 3264) #23
  %23 = icmp eq ptr %22, null
  br i1 %23, label %197, label %24

24:                                               ; preds = %20
  %25 = call i32 @_find_next_bit_le(ptr noundef nonnull %4, i32 noundef 4096, i32 noundef 0) #20
  %26 = icmp ult i32 %25, 4096
  br i1 %26, label %27, label %195

27:                                               ; preds = %24
  %28 = getelementptr i8, ptr %1, i32 520
  %29 = getelementptr inbounds %struct.ethtool_coalesce, ptr %5, i32 0, i32 1
  %30 = getelementptr inbounds %struct.ethtool_coalesce, ptr %5, i32 0, i32 2
  %31 = getelementptr inbounds %struct.ethtool_coalesce, ptr %5, i32 0, i32 3
  %32 = getelementptr inbounds %struct.ethtool_coalesce, ptr %5, i32 0, i32 4
  %33 = getelementptr inbounds %struct.ethtool_coalesce, ptr %5, i32 0, i32 5
  %34 = getelementptr inbounds %struct.ethtool_coalesce, ptr %5, i32 0, i32 6
  %35 = getelementptr inbounds %struct.ethtool_coalesce, ptr %5, i32 0, i32 7
  %36 = getelementptr inbounds %struct.ethtool_coalesce, ptr %5, i32 0, i32 8
  %37 = getelementptr inbounds %struct.ethtool_coalesce, ptr %5, i32 0, i32 9
  %38 = getelementptr inbounds %struct.ethtool_coalesce, ptr %5, i32 0, i32 10
  %39 = getelementptr inbounds %struct.ethtool_coalesce, ptr %5, i32 0, i32 11
  %40 = getelementptr inbounds %struct.ethtool_coalesce, ptr %5, i32 0, i32 12
  %41 = getelementptr inbounds %struct.ethtool_coalesce, ptr %5, i32 0, i32 13
  %42 = getelementptr inbounds %struct.ethtool_coalesce, ptr %5, i32 0, i32 14
  %43 = getelementptr inbounds %struct.ethtool_coalesce, ptr %5, i32 0, i32 15
  %44 = getelementptr inbounds %struct.ethtool_coalesce, ptr %5, i32 0, i32 16
  %45 = getelementptr inbounds %struct.ethtool_coalesce, ptr %5, i32 0, i32 17
  %46 = getelementptr inbounds %struct.ethtool_coalesce, ptr %5, i32 0, i32 18
  %47 = getelementptr inbounds %struct.ethtool_coalesce, ptr %5, i32 0, i32 19
  %48 = getelementptr inbounds %struct.ethtool_coalesce, ptr %5, i32 0, i32 20
  %49 = getelementptr inbounds %struct.ethtool_coalesce, ptr %5, i32 0, i32 21
  %50 = getelementptr inbounds %struct.ethtool_coalesce, ptr %5, i32 0, i32 22
  br label %51

51:                                               ; preds = %175, %27
  %52 = phi ptr [ %22, %27 ], [ %61, %175 ]
  %53 = phi i32 [ %25, %27 ], [ %178, %175 ]
  %54 = phi ptr [ %28, %27 ], [ %176, %175 ]
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %5) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(92) %5, i8 0, i32 92, i1 false), !annotation !11
  %55 = load ptr, ptr %6, align 8
  %56 = getelementptr inbounds %struct.ethtool_ops, ptr %55, i32 0, i32 54
  %57 = load ptr, ptr %56, align 4
  %58 = call i32 %57(ptr noundef %0, i32 noundef %53, ptr noundef %52) #20
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %180

60:                                               ; preds = %51
  %61 = getelementptr %struct.ethtool_coalesce, ptr %52, i32 1
  %62 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %54, i32 92, i32 -1090519040) #21, !srcloc !12
  %63 = extractvalue { i32, i32 } %62, 0
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %73, !prof !13

65:                                               ; preds = %60
  %66 = tail call ptr @llvm.thread.pointer() #20
  %67 = getelementptr inbounds %struct.thread_info, ptr %66, i32 0, i32 3
  %68 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %67) #18, !srcloc !14
  %69 = and i32 %68, -13
  %70 = or i32 %69, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %70) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %71 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %54, i32 noundef 92) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %68) #20, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !16
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %77, label %73, !prof !13

73:                                               ; preds = %65, %60
  %74 = phi i32 [ %71, %65 ], [ 92, %60 ]
  %75 = sub i32 92, %74
  %76 = getelementptr i8, ptr %5, i32 %75
  call void @llvm.memset.p0.i32(ptr align 1 %76, i8 0, i32 %74, i1 false) #20
  br label %180

77:                                               ; preds = %65
  %78 = load ptr, ptr %6, align 8
  %79 = getelementptr inbounds %struct.ethtool_ops, ptr %78, i32 0, i32 1
  %80 = load i32, ptr %79, align 4
  %81 = load i32, ptr %29, align 4
  %82 = icmp ne i32 %81, 0
  %83 = zext i1 %82 to i32
  %84 = load i32, ptr %30, align 4
  %85 = icmp eq i32 %84, 0
  %86 = or i32 %83, 2
  %87 = select i1 %85, i32 %83, i32 %86
  %88 = load i32, ptr %31, align 4
  %89 = icmp eq i32 %88, 0
  %90 = or i32 %87, 4
  %91 = select i1 %89, i32 %87, i32 %90
  %92 = load i32, ptr %32, align 4
  %93 = icmp eq i32 %92, 0
  %94 = or i32 %91, 8
  %95 = select i1 %93, i32 %91, i32 %94
  %96 = load i32, ptr %33, align 4
  %97 = icmp eq i32 %96, 0
  %98 = or i32 %95, 16
  %99 = select i1 %97, i32 %95, i32 %98
  %100 = load i32, ptr %34, align 4
  %101 = icmp eq i32 %100, 0
  %102 = or i32 %99, 32
  %103 = select i1 %101, i32 %99, i32 %102
  %104 = load i32, ptr %35, align 4
  %105 = icmp eq i32 %104, 0
  %106 = or i32 %103, 64
  %107 = select i1 %105, i32 %103, i32 %106
  %108 = load i32, ptr %36, align 4
  %109 = icmp eq i32 %108, 0
  %110 = or i32 %107, 128
  %111 = select i1 %109, i32 %107, i32 %110
  %112 = load i32, ptr %37, align 4
  %113 = icmp eq i32 %112, 0
  %114 = or i32 %111, 256
  %115 = select i1 %113, i32 %111, i32 %114
  %116 = load i32, ptr %38, align 4
  %117 = icmp eq i32 %116, 0
  %118 = or i32 %115, 512
  %119 = select i1 %117, i32 %115, i32 %118
  %120 = load i32, ptr %39, align 4
  %121 = icmp eq i32 %120, 0
  %122 = or i32 %119, 1024
  %123 = select i1 %121, i32 %119, i32 %122
  %124 = load i32, ptr %40, align 4
  %125 = icmp eq i32 %124, 0
  %126 = or i32 %123, 2048
  %127 = select i1 %125, i32 %123, i32 %126
  %128 = load i32, ptr %41, align 4
  %129 = icmp eq i32 %128, 0
  %130 = or i32 %127, 4096
  %131 = select i1 %129, i32 %127, i32 %130
  %132 = load i32, ptr %42, align 4
  %133 = icmp eq i32 %132, 0
  %134 = or i32 %131, 8192
  %135 = select i1 %133, i32 %131, i32 %134
  %136 = load i32, ptr %43, align 4
  %137 = icmp eq i32 %136, 0
  %138 = or i32 %135, 16384
  %139 = select i1 %137, i32 %135, i32 %138
  %140 = load i32, ptr %44, align 4
  %141 = icmp eq i32 %140, 0
  %142 = or i32 %139, 32768
  %143 = select i1 %141, i32 %139, i32 %142
  %144 = load i32, ptr %45, align 4
  %145 = icmp eq i32 %144, 0
  %146 = or i32 %143, 65536
  %147 = select i1 %145, i32 %143, i32 %146
  %148 = load i32, ptr %46, align 4
  %149 = icmp eq i32 %148, 0
  %150 = or i32 %147, 131072
  %151 = select i1 %149, i32 %147, i32 %150
  %152 = load i32, ptr %47, align 4
  %153 = icmp eq i32 %152, 0
  %154 = or i32 %151, 262144
  %155 = select i1 %153, i32 %151, i32 %154
  %156 = load i32, ptr %48, align 4
  %157 = icmp eq i32 %156, 0
  %158 = or i32 %155, 524288
  %159 = select i1 %157, i32 %155, i32 %158
  %160 = load i32, ptr %49, align 4
  %161 = icmp eq i32 %160, 0
  %162 = or i32 %159, 1048576
  %163 = select i1 %161, i32 %159, i32 %162
  %164 = load i32, ptr %50, align 4
  %165 = icmp eq i32 %164, 0
  %166 = or i32 %163, 2097152
  %167 = select i1 %165, i32 %163, i32 %166
  %168 = and i32 %167, %80
  %169 = icmp eq i32 %168, %167
  br i1 %169, label %170, label %180

170:                                              ; preds = %77
  %171 = getelementptr inbounds %struct.ethtool_ops, ptr %78, i32 0, i32 55
  %172 = load ptr, ptr %171, align 4
  %173 = call i32 %172(ptr noundef %0, i32 noundef %53, ptr noundef nonnull %5) #20
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %180

175:                                              ; preds = %170
  %176 = getelementptr i8, ptr %54, i32 92
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %5) #20
  %177 = add nuw nsw i32 %53, 1
  %178 = call i32 @_find_next_bit_le(ptr noundef nonnull %4, i32 noundef 4096, i32 noundef %177) #20
  %179 = icmp ult i32 %178, 4096
  br i1 %179, label %51, label %195

180:                                              ; preds = %170, %77, %73, %51
  %181 = phi i32 [ -14, %73 ], [ %58, %51 ], [ -95, %77 ], [ %173, %170 ]
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %5) #20
  %182 = call i32 @_find_next_bit_le(ptr noundef nonnull %4, i32 noundef %53, i32 noundef 0) #20
  %183 = icmp ult i32 %182, %53
  br i1 %183, label %184, label %195

184:                                              ; preds = %184, %180
  %185 = phi ptr [ %191, %184 ], [ %22, %180 ]
  %186 = phi i32 [ %193, %184 ], [ %182, %180 ]
  %187 = load ptr, ptr %6, align 8
  %188 = getelementptr inbounds %struct.ethtool_ops, ptr %187, i32 0, i32 55
  %189 = load ptr, ptr %188, align 4
  %190 = call i32 %189(ptr noundef %0, i32 noundef %186, ptr noundef %185) #20
  %191 = getelementptr %struct.ethtool_coalesce, ptr %185, i32 1
  %192 = add nuw i32 %186, 1
  %193 = call i32 @_find_next_bit_le(ptr noundef nonnull %4, i32 noundef %53, i32 noundef %192) #20
  %194 = icmp ult i32 %193, %53
  br i1 %194, label %184, label %195

195:                                              ; preds = %184, %180, %175, %24
  %196 = phi i32 [ %181, %180 ], [ 0, %24 ], [ %181, %184 ], [ 0, %175 ]
  call void @kfree(ptr noundef nonnull %22) #20
  br label %197

197:                                              ; preds = %195, %20, %15, %11, %3
  %198 = phi i32 [ %196, %195 ], [ -95, %11 ], [ -95, %3 ], [ -12, %20 ], [ -12, %15 ]
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %4) #20
  ret i32 %198
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

attributes #0 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind willreturn }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #14 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #18 = { nounwind readonly }
attributes #19 = { argmemonly nofree nounwind readonly willreturn }
attributes #20 = { nounwind }
attributes #21 = { nounwind readnone }
attributes #22 = { nounwind allocsize(2) }
attributes #23 = { nounwind allocsize(0) }

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
!10 = !{i64 2156655588, i64 2156656073, i64 2156655625, i64 2156655681, i64 2156655715, i64 2156655739, i64 2156655780, i64 2156655801, i64 2156655829, i64 2156655863}
!11 = !{!"auto-init"}
!12 = !{i64 2151145051, i64 2151145076}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 3641163}
!15 = !{i64 3641360}
!16 = !{i64 2151126639}
!17 = !{i64 2151145629, i64 2151145654}
!18 = !{i64 414121, i64 414182}
!19 = !{i64 432821}
!20 = !{i64 417138}
!21 = !{i64 2156597277, i64 2156597557, i64 2156597891, i64 2156598225}
!22 = !{i64 2156610428, i64 2156610912, i64 2156610465, i64 2156610521, i64 2156610555, i64 2156610579, i64 2156610620, i64 2156610641, i64 2156610669, i64 2156610703}
