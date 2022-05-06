; ModuleID = '/llk/IR/net/ethernet/eth.c_pt.bc'
source_filename = "../net/ethernet/eth.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_eth_header:\09\09\09\09\09"
module asm "\09.asciz \09\22eth_header\22\09\09\09\09\09"
module asm "__kstrtabns_eth_header:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_eth_get_headlen:\09\09\09\09\09"
module asm "\09.asciz \09\22eth_get_headlen\22\09\09\09\09\09"
module asm "__kstrtabns_eth_get_headlen:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_eth_type_trans:\09\09\09\09\09"
module asm "\09.asciz \09\22eth_type_trans\22\09\09\09\09\09"
module asm "__kstrtabns_eth_type_trans:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_eth_header_parse:\09\09\09\09\09"
module asm "\09.asciz \09\22eth_header_parse\22\09\09\09\09\09"
module asm "__kstrtabns_eth_header_parse:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_eth_header_cache:\09\09\09\09\09"
module asm "\09.asciz \09\22eth_header_cache\22\09\09\09\09\09"
module asm "__kstrtabns_eth_header_cache:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_eth_header_cache_update:\09\09\09\09\09"
module asm "\09.asciz \09\22eth_header_cache_update\22\09\09\09\09\09"
module asm "__kstrtabns_eth_header_cache_update:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_eth_header_parse_protocol:\09\09\09\09\09"
module asm "\09.asciz \09\22eth_header_parse_protocol\22\09\09\09\09\09"
module asm "__kstrtabns_eth_header_parse_protocol:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_eth_prepare_mac_addr_change:\09\09\09\09\09"
module asm "\09.asciz \09\22eth_prepare_mac_addr_change\22\09\09\09\09\09"
module asm "__kstrtabns_eth_prepare_mac_addr_change:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_eth_commit_mac_addr_change:\09\09\09\09\09"
module asm "\09.asciz \09\22eth_commit_mac_addr_change\22\09\09\09\09\09"
module asm "__kstrtabns_eth_commit_mac_addr_change:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_eth_mac_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22eth_mac_addr\22\09\09\09\09\09"
module asm "__kstrtabns_eth_mac_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_eth_validate_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22eth_validate_addr\22\09\09\09\09\09"
module asm "__kstrtabns_eth_validate_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ether_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22ether_setup\22\09\09\09\09\09"
module asm "__kstrtabns_ether_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_alloc_etherdev_mqs:\09\09\09\09\09"
module asm "\09.asciz \09\22alloc_etherdev_mqs\22\09\09\09\09\09"
module asm "__kstrtabns_alloc_etherdev_mqs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sysfs_format_mac:\09\09\09\09\09"
module asm "\09.asciz \09\22sysfs_format_mac\22\09\09\09\09\09"
module asm "__kstrtabns_sysfs_format_mac:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_eth_gro_receive:\09\09\09\09\09"
module asm "\09.asciz \09\22eth_gro_receive\22\09\09\09\09\09"
module asm "__kstrtabns_eth_gro_receive:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_eth_gro_complete:\09\09\09\09\09"
module asm "\09.asciz \09\22eth_gro_complete\22\09\09\09\09\09"
module asm "__kstrtabns_eth_gro_complete:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_eth_platform_get_mac_address:\09\09\09\09\09"
module asm "\09.asciz \09\22eth_platform_get_mac_address\22\09\09\09\09\09"
module asm "__kstrtabns_eth_platform_get_mac_address:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_platform_get_ethdev_address:\09\09\09\09\09"
module asm "\09.asciz \09\22platform_get_ethdev_address\22\09\09\09\09\09"
module asm "__kstrtabns_platform_get_ethdev_address:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fwnode_get_mac_address:\09\09\09\09\09"
module asm "\09.asciz \09\22fwnode_get_mac_address\22\09\09\09\09\09"
module asm "__kstrtabns_fwnode_get_mac_address:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_device_get_mac_address:\09\09\09\09\09"
module asm "\09.asciz \09\22device_get_mac_address\22\09\09\09\09\09"
module asm "__kstrtabns_device_get_mac_address:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_device_get_ethdev_address:\09\09\09\09\09"
module asm "\09.asciz \09\22device_get_ethdev_address\22\09\09\09\09\09"
module asm "__kstrtabns_device_get_ethdev_address:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.header_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.flow_dissector = type { i32, [28 x i16] }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.atomic_t = type { i32 }
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
%struct.packet_offload = type { i16, i16, %struct.offload_callbacks, %struct.list_head }
%struct.offload_callbacks = type { ptr, ptr, ptr }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.138, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type {}
%union.anon.138 = type { ptr }
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
%struct.netdevice_tracker = type {}
%struct.flow_keys_basic = type { %struct.flow_dissector_key_control, %struct.flow_dissector_key_basic }
%struct.flow_dissector_key_control = type { i16, i16, i32 }
%struct.flow_dissector_key_basic = type { i16, i8, i8 }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%struct.sk_buff = type { %union.anon, %union.anon.139, %union.anon.140, [48 x i8], %union.anon.141, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.143, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%union.anon.139 = type { ptr }
%union.anon.140 = type { i64 }
%union.anon.141 = type { %struct.anon.142 }
%struct.anon.142 = type { i32, ptr }
%union.anon.143 = type { %struct.anon.144 }
%struct.anon.144 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.145, i32, i32, i32, i16, i16, %union.anon.147, %union.anon.148, %union.anon.149, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.145 = type { i32 }
%union.anon.147 = type { i32 }
%union.anon.148 = type { i32 }
%union.anon.149 = type { i16 }
%struct.dsa_port = type { %union.anon.120, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, [6 x i8], i8, i8, ptr, i32, ptr, %struct.devlink_port, ptr, %struct.phylink_config, ptr, ptr, %struct.list_head, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.120 = type { ptr }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.109 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.109 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }
%struct.hh_cache = type { i32, %struct.seqlock_t, [24 x i32] }
%struct.neighbour = type { ptr, ptr, ptr, i32, i32, %struct.rwlock_t, %struct.refcount_struct, i32, %struct.sk_buff_head, %struct.timer_list, i32, %struct.atomic_t, i8, i8, i8, i8, i32, %struct.seqlock_t, [4 x i8], [32 x i8], %struct.hh_cache, ptr, ptr, %struct.list_head, %struct.list_head, %struct.callback_head, ptr, %struct.netdevice_tracker, [0 x i8] }
%struct.sk_buff_head = type { %union.anon.5, i32, %struct.spinlock }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.sockaddr = type { i16, [14 x i8] }

@__kstrtab_eth_header = external dso_local constant [0 x i8], align 1
@__kstrtabns_eth_header = external dso_local constant [0 x i8], align 1
@__ksymtab_eth_header = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @eth_header to i32), ptr @__kstrtab_eth_header, ptr @__kstrtabns_eth_header }, section "___ksymtab+eth_header", align 4
@__kstrtab_eth_get_headlen = external dso_local constant [0 x i8], align 1
@__kstrtabns_eth_get_headlen = external dso_local constant [0 x i8], align 1
@__ksymtab_eth_get_headlen = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @eth_get_headlen to i32), ptr @__kstrtab_eth_get_headlen, ptr @__kstrtabns_eth_get_headlen }, section "___ksymtab+eth_get_headlen", align 4
@__kstrtab_eth_type_trans = external dso_local constant [0 x i8], align 1
@__kstrtabns_eth_type_trans = external dso_local constant [0 x i8], align 1
@__ksymtab_eth_type_trans = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @eth_type_trans to i32), ptr @__kstrtab_eth_type_trans, ptr @__kstrtabns_eth_type_trans }, section "___ksymtab+eth_type_trans", align 4
@__kstrtab_eth_header_parse = external dso_local constant [0 x i8], align 1
@__kstrtabns_eth_header_parse = external dso_local constant [0 x i8], align 1
@__ksymtab_eth_header_parse = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @eth_header_parse to i32), ptr @__kstrtab_eth_header_parse, ptr @__kstrtabns_eth_header_parse }, section "___ksymtab+eth_header_parse", align 4
@__kstrtab_eth_header_cache = external dso_local constant [0 x i8], align 1
@__kstrtabns_eth_header_cache = external dso_local constant [0 x i8], align 1
@__ksymtab_eth_header_cache = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @eth_header_cache to i32), ptr @__kstrtab_eth_header_cache, ptr @__kstrtabns_eth_header_cache }, section "___ksymtab+eth_header_cache", align 4
@__kstrtab_eth_header_cache_update = external dso_local constant [0 x i8], align 1
@__kstrtabns_eth_header_cache_update = external dso_local constant [0 x i8], align 1
@__ksymtab_eth_header_cache_update = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @eth_header_cache_update to i32), ptr @__kstrtab_eth_header_cache_update, ptr @__kstrtabns_eth_header_cache_update }, section "___ksymtab+eth_header_cache_update", align 4
@__kstrtab_eth_header_parse_protocol = external dso_local constant [0 x i8], align 1
@__kstrtabns_eth_header_parse_protocol = external dso_local constant [0 x i8], align 1
@__ksymtab_eth_header_parse_protocol = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @eth_header_parse_protocol to i32), ptr @__kstrtab_eth_header_parse_protocol, ptr @__kstrtabns_eth_header_parse_protocol }, section "___ksymtab+eth_header_parse_protocol", align 4
@__kstrtab_eth_prepare_mac_addr_change = external dso_local constant [0 x i8], align 1
@__kstrtabns_eth_prepare_mac_addr_change = external dso_local constant [0 x i8], align 1
@__ksymtab_eth_prepare_mac_addr_change = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @eth_prepare_mac_addr_change to i32), ptr @__kstrtab_eth_prepare_mac_addr_change, ptr @__kstrtabns_eth_prepare_mac_addr_change }, section "___ksymtab+eth_prepare_mac_addr_change", align 4
@__kstrtab_eth_commit_mac_addr_change = external dso_local constant [0 x i8], align 1
@__kstrtabns_eth_commit_mac_addr_change = external dso_local constant [0 x i8], align 1
@__ksymtab_eth_commit_mac_addr_change = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @eth_commit_mac_addr_change to i32), ptr @__kstrtab_eth_commit_mac_addr_change, ptr @__kstrtabns_eth_commit_mac_addr_change }, section "___ksymtab+eth_commit_mac_addr_change", align 4
@__kstrtab_eth_mac_addr = external dso_local constant [0 x i8], align 1
@__kstrtabns_eth_mac_addr = external dso_local constant [0 x i8], align 1
@__ksymtab_eth_mac_addr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @eth_mac_addr to i32), ptr @__kstrtab_eth_mac_addr, ptr @__kstrtabns_eth_mac_addr }, section "___ksymtab+eth_mac_addr", align 4
@__kstrtab_eth_validate_addr = external dso_local constant [0 x i8], align 1
@__kstrtabns_eth_validate_addr = external dso_local constant [0 x i8], align 1
@__ksymtab_eth_validate_addr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @eth_validate_addr to i32), ptr @__kstrtab_eth_validate_addr, ptr @__kstrtabns_eth_validate_addr }, section "___ksymtab+eth_validate_addr", align 4
@eth_header_ops = dso_local constant %struct.header_ops { ptr @eth_header, ptr @eth_header_parse, ptr @eth_header_cache, ptr @eth_header_cache_update, ptr null, ptr @eth_header_parse_protocol }, align 64
@__kstrtab_ether_setup = external dso_local constant [0 x i8], align 1
@__kstrtabns_ether_setup = external dso_local constant [0 x i8], align 1
@__ksymtab_ether_setup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ether_setup to i32), ptr @__kstrtab_ether_setup, ptr @__kstrtabns_ether_setup }, section "___ksymtab+ether_setup", align 4
@.str = private unnamed_addr constant [6 x i8] c"eth%d\00", align 1
@__kstrtab_alloc_etherdev_mqs = external dso_local constant [0 x i8], align 1
@__kstrtabns_alloc_etherdev_mqs = external dso_local constant [0 x i8], align 1
@__ksymtab_alloc_etherdev_mqs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @alloc_etherdev_mqs to i32), ptr @__kstrtab_alloc_etherdev_mqs, ptr @__kstrtabns_alloc_etherdev_mqs }, section "___ksymtab+alloc_etherdev_mqs", align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"%*phC\0A\00", align 1
@__kstrtab_sysfs_format_mac = external dso_local constant [0 x i8], align 1
@__kstrtabns_sysfs_format_mac = external dso_local constant [0 x i8], align 1
@__ksymtab_sysfs_format_mac = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sysfs_format_mac to i32), ptr @__kstrtab_sysfs_format_mac, ptr @__kstrtabns_sysfs_format_mac }, section "___ksymtab+sysfs_format_mac", align 4
@__kstrtab_eth_gro_receive = external dso_local constant [0 x i8], align 1
@__kstrtabns_eth_gro_receive = external dso_local constant [0 x i8], align 1
@__ksymtab_eth_gro_receive = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @eth_gro_receive to i32), ptr @__kstrtab_eth_gro_receive, ptr @__kstrtabns_eth_gro_receive }, section "___ksymtab+eth_gro_receive", align 4
@__kstrtab_eth_gro_complete = external dso_local constant [0 x i8], align 1
@__kstrtabns_eth_gro_complete = external dso_local constant [0 x i8], align 1
@__ksymtab_eth_gro_complete = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @eth_gro_complete to i32), ptr @__kstrtab_eth_gro_complete, ptr @__kstrtabns_eth_gro_complete }, section "___ksymtab+eth_gro_complete", align 4
@__initcall__kmod_eth__492_495_eth_offload_init5 = internal global ptr @eth_offload_init, section ".initcall5.init", align 4
@__kstrtab_eth_platform_get_mac_address = external dso_local constant [0 x i8], align 1
@__kstrtabns_eth_platform_get_mac_address = external dso_local constant [0 x i8], align 1
@__ksymtab_eth_platform_get_mac_address = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @eth_platform_get_mac_address to i32), ptr @__kstrtab_eth_platform_get_mac_address, ptr @__kstrtabns_eth_platform_get_mac_address }, section "___ksymtab+eth_platform_get_mac_address", align 4
@__kstrtab_platform_get_ethdev_address = external dso_local constant [0 x i8], align 1
@__kstrtabns_platform_get_ethdev_address = external dso_local constant [0 x i8], align 1
@__ksymtab_platform_get_ethdev_address = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @platform_get_ethdev_address to i32), ptr @__kstrtab_platform_get_ethdev_address, ptr @__kstrtabns_platform_get_ethdev_address }, section "___ksymtab+platform_get_ethdev_address", align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"mac-address\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"local-mac-address\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"address\00", align 1
@__kstrtab_fwnode_get_mac_address = external dso_local constant [0 x i8], align 1
@__kstrtabns_fwnode_get_mac_address = external dso_local constant [0 x i8], align 1
@__ksymtab_fwnode_get_mac_address = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fwnode_get_mac_address to i32), ptr @__kstrtab_fwnode_get_mac_address, ptr @__kstrtabns_fwnode_get_mac_address }, section "___ksymtab+fwnode_get_mac_address", align 4
@__kstrtab_device_get_mac_address = external dso_local constant [0 x i8], align 1
@__kstrtabns_device_get_mac_address = external dso_local constant [0 x i8], align 1
@__ksymtab_device_get_mac_address = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @device_get_mac_address to i32), ptr @__kstrtab_device_get_mac_address, ptr @__kstrtabns_device_get_mac_address }, section "___ksymtab+device_get_mac_address", align 4
@__kstrtab_device_get_ethdev_address = external dso_local constant [0 x i8], align 1
@__kstrtabns_device_get_ethdev_address = external dso_local constant [0 x i8], align 1
@__ksymtab_device_get_ethdev_address = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @device_get_ethdev_address to i32), ptr @__kstrtab_device_get_ethdev_address, ptr @__kstrtabns_device_get_ethdev_address }, section "___ksymtab+device_get_ethdev_address", align 4
@flow_keys_basic_dissector = external dso_local global %struct.flow_dissector, align 4
@init_net = external dso_local global %struct.net, align 64
@eth_packet_offload = internal global %struct.packet_offload { i16 22629, i16 10, %struct.offload_callbacks { ptr null, ptr @eth_gro_receive, ptr @eth_gro_complete }, %struct.list_head zeroinitializer }, section ".data..read_mostly", align 4
@llvm.compiler.used = appending global [22 x ptr] [ptr @__initcall__kmod_eth__492_495_eth_offload_init5, ptr @__ksymtab_alloc_etherdev_mqs, ptr @__ksymtab_device_get_ethdev_address, ptr @__ksymtab_device_get_mac_address, ptr @__ksymtab_eth_commit_mac_addr_change, ptr @__ksymtab_eth_get_headlen, ptr @__ksymtab_eth_gro_complete, ptr @__ksymtab_eth_gro_receive, ptr @__ksymtab_eth_header, ptr @__ksymtab_eth_header_cache, ptr @__ksymtab_eth_header_cache_update, ptr @__ksymtab_eth_header_parse, ptr @__ksymtab_eth_header_parse_protocol, ptr @__ksymtab_eth_mac_addr, ptr @__ksymtab_eth_platform_get_mac_address, ptr @__ksymtab_eth_prepare_mac_addr_change, ptr @__ksymtab_eth_type_trans, ptr @__ksymtab_eth_validate_addr, ptr @__ksymtab_ether_setup, ptr @__ksymtab_fwnode_get_mac_address, ptr @__ksymtab_platform_get_ethdev_address, ptr @__ksymtab_sysfs_format_mac], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @eth_header(ptr noundef %0, ptr nocapture noundef readonly %1, i16 noundef zeroext %2, ptr noundef readonly %3, ptr noundef readonly %4, i32 noundef %5) #0 {
  %7 = tail call ptr @skb_push(ptr noundef %0, i32 noundef 14) #12
  switch i16 %2, label %10 [
    i16 4, label %8
    i16 1, label %8
  ]

8:                                                ; preds = %6, %6
  %9 = trunc i32 %5 to i16
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi i16 [ %9, %8 ], [ %2, %6 ]
  %12 = tail call i16 @llvm.bswap.i16(i16 %11)
  %13 = getelementptr inbounds %struct.ethhdr, ptr %7, i32 0, i32 2
  store i16 %12, ptr %13, align 1
  %14 = icmp eq ptr %4, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 72
  %17 = load ptr, ptr %16, align 32
  br label %18

18:                                               ; preds = %15, %10
  %19 = phi ptr [ %4, %10 ], [ %17, %15 ]
  %20 = getelementptr inbounds %struct.ethhdr, ptr %7, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %20, ptr noundef align 1 dereferenceable(6) %19, i32 6, i1 false)
  %21 = icmp eq ptr %3, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %7, ptr noundef nonnull align 1 dereferenceable(6) %3, i32 6, i1 false)
  br label %29

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 14
  %25 = load i32, ptr %24, align 8
  %26 = and i32 %25, 136
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(6) %7, i8 0, i32 6, i1 false) #12
  br label %29

29:                                               ; preds = %28, %23, %22
  %30 = phi i32 [ 14, %22 ], [ 14, %28 ], [ -14, %23 ]
  ret i32 %30
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @eth_get_headlen(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.flow_keys_basic, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #12
  %5 = icmp ult i32 %2, 14
  br i1 %5, label %17, label %6, !prof !8

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.ethhdr, ptr %1, i32 0, i32 2
  %8 = load i16, ptr %7, align 1
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i32 12, i1 false) #12
  %9 = call zeroext i1 @__skb_flow_dissect(ptr noundef nonnull @init_net, ptr noundef null, ptr noundef nonnull @flow_keys_basic_dissector, ptr noundef nonnull %4, ptr noundef %1, i16 noundef zeroext %8, i32 noundef 14, i32 noundef %2, i32 noundef 1) #12
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = load i16, ptr %4, align 4
  %12 = call i16 @llvm.umax.i16(i16 %11, i16 14)
  %13 = zext i16 %12 to i32
  br label %17

14:                                               ; preds = %6
  %15 = call i32 @__skb_get_poff(ptr noundef null, ptr noundef %1, ptr noundef nonnull %4, i32 noundef %2) #12
  %16 = call i32 @llvm.umin.i32(i32 %15, i32 %2)
  br label %17

17:                                               ; preds = %14, %10, %3
  %18 = phi i32 [ %16, %14 ], [ %13, %10 ], [ %2, %3 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #12
  ret i32 %18
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__skb_get_poff(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i16 @eth_type_trans(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #12
  store i16 0, ptr %3, align 2, !annotation !9
  %4 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 2
  store ptr %1, ptr %4, align 8
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %8 = load ptr, ptr %7, align 8
  %9 = ptrtoint ptr %6 to i32
  %10 = ptrtoint ptr %8 to i32
  %11 = sub i32 %9, %10
  %12 = trunc i32 %11 to i16
  %13 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 19
  store i16 %12, ptr %13, align 2
  %14 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %15 = load i32, ptr %14, align 8
  %16 = icmp ult i32 %15, 14
  br i1 %16, label %25, label %17, !prof !8

17:                                               ; preds = %2
  %18 = add i32 %15, -14
  store i32 %18, ptr %14, align 8
  %19 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %20 = load i32, ptr %19, align 4
  %21 = icmp ult i32 %18, %20
  br i1 %21, label %22, label %23, !prof !8

22:                                               ; preds = %17
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #12, !srcloc !10
  unreachable

23:                                               ; preds = %17
  %24 = getelementptr i8, ptr %6, i32 14
  store ptr %24, ptr %5, align 4
  br label %25

25:                                               ; preds = %23, %2
  %26 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 72
  %27 = load ptr, ptr %26, align 32
  %28 = load i32, ptr %6, align 4
  %29 = load i32, ptr %27, align 4
  %30 = xor i32 %29, %28
  %31 = getelementptr i8, ptr %6, i32 4
  %32 = load i16, ptr %31, align 2
  %33 = getelementptr i8, ptr %27, i32 4
  %34 = load i16, ptr %33, align 2
  %35 = xor i16 %34, %32
  %36 = zext i16 %35 to i32
  %37 = or i32 %30, %36
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %64, label %39, !prof !11

39:                                               ; preds = %25
  %40 = and i32 %28, 1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %59, label %42, !prof !11

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 83
  %44 = load i32, ptr %43, align 4
  %45 = xor i32 %44, %28
  %46 = getelementptr %struct.net_device, ptr %1, i32 0, i32 83, i32 4
  %47 = load i16, ptr %46, align 2
  %48 = xor i16 %47, %32
  %49 = zext i16 %48 to i32
  %50 = or i32 %45, %49
  %51 = icmp eq i32 %50, 0
  %52 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %53 = load i16, ptr %52, align 8
  %54 = and i16 %53, -8
  br i1 %51, label %55, label %57

55:                                               ; preds = %42
  %56 = or i16 %54, 1
  store i16 %56, ptr %52, align 8
  br label %64

57:                                               ; preds = %42
  %58 = or i16 %54, 2
  store i16 %58, ptr %52, align 8
  br label %64

59:                                               ; preds = %39
  %60 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %61 = load i16, ptr %60, align 8
  %62 = and i16 %61, -8
  %63 = or i16 %62, 3
  store i16 %63, ptr %60, align 8
  br label %64

64:                                               ; preds = %59, %57, %55, %25
  %65 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 67
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.dsa_port, ptr %66, i32 0, i32 3
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %84, !prof !11

72:                                               ; preds = %68, %64
  %73 = getelementptr inbounds %struct.ethhdr, ptr %6, i32 0, i32 2
  %74 = load i16, ptr %73, align 1
  %75 = and i16 %74, 254
  %76 = icmp ugt i16 %75, 5
  br i1 %76, label %84, label %77, !prof !11

77:                                               ; preds = %72
  %78 = call fastcc ptr @skb_header_pointer(ptr noundef %0, ptr noundef nonnull %3)
  %79 = icmp eq ptr %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %77
  %81 = load i16, ptr %78, align 2
  %82 = icmp eq i16 %81, -1
  br i1 %82, label %84, label %83

83:                                               ; preds = %80, %77
  br label %84

84:                                               ; preds = %83, %80, %72, %68
  %85 = phi i16 [ 1024, %83 ], [ -2048, %68 ], [ 256, %80 ], [ %74, %72 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #12
  ret i16 %85
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @skb_header_pointer(ptr noundef %0, ptr noundef %1) unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %8 = load i32, ptr %7, align 4
  %9 = sub i32 %6, %8
  %10 = icmp sgt i32 %9, 1
  br i1 %10, label %17, label %11, !prof !11

11:                                               ; preds = %2
  %12 = icmp eq ptr %0, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %11
  %14 = tail call i32 @skb_copy_bits(ptr noundef nonnull %0, i32 noundef 0, ptr noundef %1, i32 noundef 2) #12
  %15 = icmp slt i32 %14, 0
  %16 = select i1 %15, ptr null, ptr %1, !prof !8
  br label %17

17:                                               ; preds = %13, %11, %2
  %18 = phi ptr [ %4, %2 ], [ null, %11 ], [ %16, %13 ]
  ret ptr %18
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @eth_header_parse(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 19
  %6 = load i16, ptr %5, align 2
  %7 = zext i16 %6 to i32
  %8 = getelementptr i8, ptr %4, i32 %7
  %9 = getelementptr inbounds %struct.ethhdr, ptr %8, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %1, ptr noundef align 1 dereferenceable(6) %9, i32 6, i1 false)
  ret i32 6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @eth_header_cache(ptr nocapture noundef readonly %0, ptr noundef %1, i16 noundef zeroext %2) #0 {
  %4 = icmp eq i16 %2, 256
  br i1 %4, label %15, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.hh_cache, ptr %1, i32 0, i32 2
  %7 = getelementptr i8, ptr %6, i32 2
  %8 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 26
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %6, i32 14
  store i16 %2, ptr %10, align 1
  %11 = getelementptr %struct.hh_cache, ptr %1, i32 0, i32 2, i32 2
  %12 = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 72
  %13 = load ptr, ptr %12, align 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %11, ptr noundef align 1 dereferenceable(6) %13, i32 6, i1 false)
  %14 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 19
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %7, ptr noundef align 8 dereferenceable(6) %14, i32 6, i1 false)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !12
  store volatile i32 14, ptr %1, align 4
  br label %15

15:                                               ; preds = %5, %3
  %16 = phi i32 [ 0, %5 ], [ -1, %3 ]
  ret i32 %16
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @eth_header_cache_update(ptr nocapture noundef writeonly %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #8 {
  %4 = getelementptr inbounds %struct.hh_cache, ptr %0, i32 0, i32 2
  %5 = getelementptr i8, ptr %4, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %5, ptr noundef align 1 dereferenceable(6) %2, i32 6, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @eth_header_parse_protocol(ptr nocapture noundef readonly %0) #9 {
  %2 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 19
  %5 = load i16, ptr %4, align 2
  %6 = zext i16 %5 to i32
  %7 = getelementptr i8, ptr %3, i32 %6
  %8 = getelementptr inbounds %struct.ethhdr, ptr %7, i32 0, i32 2
  %9 = load i16, ptr %8, align 1
  ret i16 %9
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @eth_prepare_mac_addr_change(ptr noundef %0, ptr nocapture noundef readonly %1) #10 {
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 15
  %4 = load i64, ptr %3, align 16
  %5 = and i64 %4, 32768
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %7, %2
  %13 = getelementptr inbounds %struct.sockaddr, ptr %1, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %12
  %18 = getelementptr %struct.sockaddr, ptr %1, i32 0, i32 1, i32 4
  %19 = load i16, ptr %18, align 2
  %20 = zext i16 %19 to i32
  %21 = or i32 %14, %20
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %22, i32 -99, i32 0
  br label %24

24:                                               ; preds = %17, %12, %7
  %25 = phi i32 [ -16, %7 ], [ -99, %12 ], [ %23, %17 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @eth_commit_mac_addr_change(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sockaddr, ptr %1, i32 0, i32 1
  tail call void @dev_addr_mod(ptr noundef %0, i32 noundef 0, ptr noundef %3, i32 noundef 6) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @eth_mac_addr(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 15
  %4 = load i64, ptr %3, align 16
  %5 = and i64 %4, 32768
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %7, %2
  %13 = getelementptr inbounds %struct.sockaddr, ptr %1, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %12
  %18 = getelementptr %struct.sockaddr, ptr %1, i32 0, i32 1, i32 4
  %19 = load i16, ptr %18, align 2
  %20 = zext i16 %19 to i32
  %21 = or i32 %14, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  tail call void @dev_addr_mod(ptr noundef %0, i32 noundef 0, ptr noundef %13, i32 noundef 6) #12
  br label %24

24:                                               ; preds = %23, %17, %12, %7
  %25 = phi i32 [ 0, %23 ], [ -99, %12 ], [ -16, %7 ], [ -99, %17 ]
  ret i32 %25
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @eth_validate_addr(ptr nocapture noundef readonly %0) #9 {
  %2 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 72
  %3 = load ptr, ptr %2, align 32
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %3, i32 4
  %9 = load i16, ptr %8, align 2
  %10 = zext i16 %9 to i32
  %11 = or i32 %4, %10
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, i32 -99, i32 0
  br label %14

14:                                               ; preds = %7, %1
  %15 = phi i32 [ -99, %1 ], [ %13, %7 ]
  ret i32 %15
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @ether_setup(ptr nocapture noundef %0) #8 {
  %2 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 44
  store ptr @eth_header_ops, ptr %2, align 16
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 32
  store i16 1, ptr %3, align 16
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 19
  store i16 14, ptr %4, align 2
  %5 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 33
  store i8 14, ptr %5, align 2
  %6 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 20
  store i32 1500, ptr %6, align 4
  %7 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 30
  store i32 68, ptr %7, align 8
  %8 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 31
  store i32 1500, ptr %8, align 4
  %9 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 51
  store i8 6, ptr %9, align 1
  %10 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 91
  store i32 1000, ptr %10, align 16
  %11 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 14
  store i32 4098, ptr %11, align 8
  %12 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 15
  %13 = load i64, ptr %12, align 16
  %14 = or i64 %13, 2048
  store i64 %14, ptr %12, align 16
  %15 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 83
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(6) %15, i8 -1, i32 6, i1 false) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @alloc_etherdev_mqs(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call ptr @alloc_netdev_mqs(i32 noundef %0, ptr noundef nonnull @.str, i8 noundef zeroext 0, ptr noundef nonnull @ether_setup, i32 noundef %1, i32 noundef %2) #12
  ret ptr %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_netdev_mqs(i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sysfs_format_mac(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %0, i32 noundef 4096, ptr noundef nonnull @.str.1, i32 noundef %2, ptr noundef %1) #12
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @eth_gro_receive(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 8
  %4 = load i32, ptr %3, align 8
  %5 = add i32 %4, 14
  %6 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr i8, ptr %7, i32 %4
  %9 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = icmp ult i32 %10, %5
  br i1 %11, label %12, label %30

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %14 = load i32, ptr %13, align 8
  %15 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %16 = load i32, ptr %15, align 4
  %17 = sub i32 %14, %16
  %18 = icmp ugt i32 %5, %17
  br i1 %18, label %19, label %25, !prof !8

19:                                               ; preds = %12
  %20 = icmp ult i32 %14, %5
  br i1 %20, label %111, label %21, !prof !8

21:                                               ; preds = %19
  %22 = sub i32 %5, %17
  %23 = tail call ptr @__pskb_pull_tail(ptr noundef %1, i32 noundef %22) #12
  %24 = icmp eq ptr %23, null
  br i1 %24, label %111, label %25

25:                                               ; preds = %21, %12
  store ptr null, ptr %6, align 8
  store i32 0, ptr %9, align 4
  %26 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr i8, ptr %27, i32 %4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %111, label %30, !prof !8

30:                                               ; preds = %25, %2
  %31 = phi ptr [ %28, %25 ], [ %8, %2 ]
  %32 = load ptr, ptr %0, align 4
  %33 = icmp eq ptr %32, %0
  br i1 %33, label %73, label %34

34:                                               ; preds = %30
  %35 = getelementptr i8, ptr %31, i32 2
  %36 = getelementptr i8, ptr %31, i32 6
  %37 = getelementptr i8, ptr %31, i32 10
  br label %38

38:                                               ; preds = %70, %34
  %39 = phi ptr [ %32, %34 ], [ %71, %70 ]
  %40 = getelementptr inbounds %struct.sk_buff, ptr %39, i32 0, i32 3, i32 26
  %41 = load i16, ptr %40, align 2
  %42 = and i16 %41, 1
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %70, label %44

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.sk_buff, ptr %39, i32 0, i32 17
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr i8, ptr %46, i32 %4
  %48 = getelementptr i8, ptr %47, i32 2
  %49 = load i16, ptr %31, align 2
  %50 = load i16, ptr %47, align 2
  %51 = xor i16 %50, %49
  %52 = zext i16 %51 to i32
  %53 = load i32, ptr %35, align 4
  %54 = load i32, ptr %48, align 4
  %55 = xor i32 %54, %53
  %56 = or i32 %55, %52
  %57 = load i32, ptr %36, align 4
  %58 = getelementptr i8, ptr %47, i32 6
  %59 = load i32, ptr %58, align 4
  %60 = xor i32 %59, %57
  %61 = or i32 %56, %60
  %62 = load i32, ptr %37, align 4
  %63 = getelementptr i8, ptr %47, i32 10
  %64 = load i32, ptr %63, align 4
  %65 = xor i32 %64, %62
  %66 = or i32 %61, %65
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %44
  %69 = and i16 %41, -2
  store i16 %69, ptr %40, align 2
  br label %70

70:                                               ; preds = %68, %44, %38
  %71 = load ptr, ptr %39, align 4
  %72 = icmp eq ptr %71, %0
  br i1 %72, label %73, label %38

73:                                               ; preds = %70, %30
  %74 = getelementptr inbounds %struct.ethhdr, ptr %31, i32 0, i32 2
  %75 = load i16, ptr %74, align 1
  %76 = tail call ptr @gro_find_receive_by_type(i16 noundef zeroext %75) #12
  %77 = icmp eq ptr %76, null
  br i1 %77, label %111, label %78

78:                                               ; preds = %73
  %79 = load i32, ptr %3, align 8
  %80 = add i32 %79, 14
  store i32 %80, ptr %3, align 8
  %81 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 26
  %82 = load i16, ptr %81, align 2
  %83 = and i16 %82, 4
  %84 = icmp eq i16 %83, 0
  br i1 %84, label %92, label %85

85:                                               ; preds = %78
  %86 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 28
  %87 = load i32, ptr %86, align 4
  %88 = sub i32 0, %87
  %89 = tail call i32 @csum_partial(ptr noundef %31, i32 noundef 14, i32 noundef %88) #12
  %90 = sub i32 0, %89
  store i32 %90, ptr %86, align 4
  %91 = load i16, ptr %81, align 2
  br label %92

92:                                               ; preds = %85, %78
  %93 = phi i16 [ %82, %78 ], [ %91, %85 ]
  %94 = lshr i16 %93, 11
  %95 = trunc i16 %94 to i8
  %96 = add nuw nsw i8 %95, 1
  %97 = and i8 %96, 15
  %98 = zext i8 %97 to i16
  %99 = shl nuw nsw i16 %98, 11
  %100 = and i16 %93, -30721
  %101 = or i16 %99, %100
  store i16 %101, ptr %81, align 2
  %102 = icmp eq i8 %97, 15
  br i1 %102, label %103, label %107, !prof !8

103:                                              ; preds = %92
  %104 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 12
  %105 = load i16, ptr %104, align 4
  %106 = or i16 %105, 1
  store i16 %106, ptr %104, align 4
  br label %111

107:                                              ; preds = %92
  %108 = getelementptr inbounds %struct.packet_offload, ptr %76, i32 0, i32 2, i32 1
  %109 = load ptr, ptr %108, align 4
  %110 = tail call ptr %109(ptr noundef %0, ptr noundef %1) #12
  br label %111

111:                                              ; preds = %107, %103, %73, %25, %21, %19
  %112 = phi i16 [ 1, %25 ], [ 1, %73 ], [ 0, %107 ], [ 0, %103 ], [ 1, %21 ], [ 1, %19 ]
  %113 = phi ptr [ null, %25 ], [ null, %73 ], [ %110, %107 ], [ null, %103 ], [ null, %21 ], [ null, %19 ]
  %114 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 12
  %115 = load i16, ptr %114, align 4
  %116 = or i16 %115, %112
  store i16 %116, ptr %114, align 4
  ret ptr %113
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gro_find_receive_by_type(i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @eth_gro_complete(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 %1
  %6 = getelementptr inbounds %struct.ethhdr, ptr %5, i32 0, i32 2
  %7 = load i16, ptr %6, align 1
  %8 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %9 = load i16, ptr %8, align 8
  %10 = and i16 %9, 8192
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %14 = load ptr, ptr %13, align 8
  %15 = ptrtoint ptr %4 to i32
  %16 = ptrtoint ptr %14 to i32
  %17 = sub i32 %15, %16
  %18 = trunc i32 %17 to i16
  %19 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 15
  %20 = trunc i32 %1 to i16
  %21 = add i16 %18, %20
  store i16 %21, ptr %19, align 2
  br label %22

22:                                               ; preds = %12, %2
  %23 = tail call ptr @gro_find_complete_by_type(i16 noundef zeroext %7) #12
  %24 = icmp eq ptr %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.packet_offload, ptr %23, i32 0, i32 2, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = add i32 %1, 14
  %29 = tail call i32 %27(ptr noundef %0, i32 noundef %28) #12
  br label %30

30:                                               ; preds = %25, %22
  %31 = phi i32 [ %29, %25 ], [ -38, %22 ]
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gro_find_complete_by_type(i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @eth_offload_init() #11 section ".init.text" {
  tail call void @dev_add_offload(ptr noundef nonnull @eth_packet_offload) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local ptr @arch_get_platform_mac_address() local_unnamed_addr #0 {
  ret ptr null
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @eth_platform_get_mac_address(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i32 @of_get_mac_address(ptr noundef %4, ptr noundef %1) #12
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %2
  %8 = tail call ptr @arch_get_platform_mac_address()
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %7
  %11 = load i32, ptr %8, align 4
  store i32 %11, ptr %1, align 4
  %12 = getelementptr i8, ptr %8, i32 4
  %13 = load i16, ptr %12, align 2
  %14 = getelementptr i8, ptr %1, i32 4
  store i16 %13, ptr %14, align 2
  br label %15

15:                                               ; preds = %10, %7, %2
  %16 = phi i32 [ 0, %10 ], [ 0, %2 ], [ -19, %7 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_mac_address(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @platform_get_ethdev_address(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = alloca [6 x i8], align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(6) %3, i8 0, i32 6, i1 false), !annotation !9
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = call i32 @of_get_mac_address(ptr noundef %5, ptr noundef nonnull %3) #12
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %2
  %9 = call ptr @arch_get_platform_mac_address() #12
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %8
  %12 = load i32, ptr %9, align 4
  store i32 %12, ptr %3, align 4
  %13 = getelementptr i8, ptr %9, i32 4
  %14 = load i16, ptr %13, align 2
  %15 = getelementptr inbounds i8, ptr %3, i32 4
  store i16 %14, ptr %15, align 4
  br label %16

16:                                               ; preds = %11, %2
  call void @dev_addr_mod(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %3, i32 noundef 6) #12
  br label %17

17:                                               ; preds = %16, %8
  %18 = phi i32 [ 0, %16 ], [ -19, %8 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #12
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvmem_get_mac_address(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4, !annotation !9
  %4 = tail call ptr @nvmem_cell_get(ptr noundef %0, ptr noundef nonnull @.str.2) #12
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = ptrtoint ptr %4 to i32
  br label %30

8:                                                ; preds = %2
  %9 = call ptr @nvmem_cell_read(ptr noundef %4, ptr noundef nonnull %3) #12
  call void @nvmem_cell_put(ptr noundef %4) #12
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = ptrtoint ptr %9 to i32
  br label %30

13:                                               ; preds = %8
  %14 = load i32, ptr %3, align 4
  %15 = icmp eq i32 %14, 6
  br i1 %15, label %16, label %26

16:                                               ; preds = %13
  %17 = load i32, ptr %9, align 4
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %16
  %21 = getelementptr i8, ptr %9, i32 4
  %22 = load i16, ptr %21, align 2
  %23 = zext i16 %22 to i32
  %24 = or i32 %17, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20, %16, %13
  call void @kfree(ptr noundef %9) #12
  br label %30

27:                                               ; preds = %20
  store i32 %17, ptr %1, align 4
  %28 = load i16, ptr %21, align 2
  %29 = getelementptr i8, ptr %1, i32 4
  store i16 %28, ptr %29, align 2
  call void @kfree(ptr noundef %9) #12
  br label %30

30:                                               ; preds = %27, %26, %11, %6
  %31 = phi i32 [ %7, %6 ], [ %12, %11 ], [ -22, %26 ], [ 0, %27 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvmem_cell_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvmem_cell_read(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvmem_cell_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fwnode_get_mac_address(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @fwnode_property_read_u8_array(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef %1, i32 noundef 6) #12
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %15

5:                                                ; preds = %2
  %6 = load i32, ptr %1, align 4
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %5
  %10 = getelementptr i8, ptr %1, i32 4
  %11 = load i16, ptr %10, align 2
  %12 = zext i16 %11 to i32
  %13 = or i32 %6, %12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %42

15:                                               ; preds = %9, %5, %2
  %16 = tail call i32 @fwnode_property_read_u8_array(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef %1, i32 noundef 6) #12
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %15
  %19 = load i32, ptr %1, align 4
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = getelementptr i8, ptr %1, i32 4
  %24 = load i16, ptr %23, align 2
  %25 = zext i16 %24 to i32
  %26 = or i32 %19, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %22, %18, %15
  %29 = tail call i32 @fwnode_property_read_u8_array(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef %1, i32 noundef 6) #12
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %28
  %32 = load i32, ptr %1, align 4
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = getelementptr i8, ptr %1, i32 4
  %37 = load i16, ptr %36, align 2
  %38 = zext i16 %37 to i32
  %39 = or i32 %32, %38
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35, %31, %28
  br label %42

42:                                               ; preds = %41, %35, %22, %9
  %43 = phi i32 [ 0, %9 ], [ 0, %22 ], [ -2, %41 ], [ 0, %35 ]
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @device_get_mac_address(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @dev_fwnode(ptr noundef %0) #12
  %4 = tail call i32 @fwnode_get_mac_address(ptr noundef %3, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @device_get_ethdev_address(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca [6 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %3, i8 0, i32 6, i1 false), !annotation !9
  %4 = tail call ptr @dev_fwnode(ptr noundef %0) #12
  %5 = call i32 @fwnode_get_mac_address(ptr noundef %4, ptr noundef nonnull %3) #12
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  call void @dev_addr_mod(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %3, i32 noundef 6) #12
  br label %8

8:                                                ; preds = %7, %2
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #12
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__skb_flow_dissect(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_add_offload(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_u8_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind }

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
!9 = !{!"auto-init"}
!10 = !{i64 2153447331, i64 2153447819, i64 2153447368, i64 2153447424, i64 2153447458, i64 2153447482, i64 2153447523, i64 2153447544, i64 2153447572, i64 2153447606}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2157229413}
