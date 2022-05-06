; ModuleID = '/llk/IR/net/dsa/slave.c_pt.bc'
source_filename = "../net/dsa/slave.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dsa_enqueue_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22dsa_enqueue_skb\22\09\09\09\09\09"
module asm "__kstrtabns_dsa_enqueue_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dsa_port_phylink_mac_change:\09\09\09\09\09"
module asm "\09.asciz \09\22dsa_port_phylink_mac_change\22\09\09\09\09\09"
module asm "__kstrtabns_dsa_port_phylink_mac_change:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dsa_slave_dev_check:\09\09\09\09\09"
module asm "\09.asciz \09\22dsa_slave_dev_check\22\09\09\09\09\09"
module asm "__kstrtabns_dsa_slave_dev_check:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.dsa_switch = type { ptr, ptr, i32, i16, %struct.notifier_block, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32 }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dsa_switch_tree = type { %struct.list_head, %struct.list_head, %struct.raw_notifier_head, i32, %struct.kref, ptr, ptr, i32, i8, ptr, %struct.list_head, i32, i32 }
%struct.raw_notifier_head = type { ptr }
%struct.dsa_switch_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dsa_port = type { %union.anon.138, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, [6 x i8], i8, i8, ptr, i32, ptr, %struct.devlink_port, ptr, %struct.phylink_config, ptr, ptr, %struct.list_head, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.138 = type { ptr }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.127 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.127 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }
%struct.anon.49 = type { ptr, ptr, %union.anon.50 }
%union.anon.50 = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.118, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.143, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.118 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type {}
%struct.possible_net_t = type {}
%union.anon.143 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.dsa_device_ops = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8 }
%struct.dsa_hw_port = type { %struct.list_head, ptr, i32 }
%struct.pcpu_sw_netstats = type { i64, i64, i64, i64, %struct.u64_stats_sync, [28 x i8] }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.switchdev_obj_port_vlan = type { %struct.switchdev_obj, i16, i16 }
%struct.switchdev_obj = type { %struct.list_head, ptr, i32, i32, ptr, ptr }
%struct.netlink_ext_ack = type { ptr, ptr, ptr, [20 x i8], i8 }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.dsa_chip_data = type { ptr, i32, [12 x ptr], i32, ptr, [12 x ptr], [12 x ptr], [4 x i8] }
%struct.sk_buff = type { %union.anon.48, %union.anon.51, %union.anon.52, [48 x i8], %union.anon.53, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.55, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.48 = type { %struct.anon.49 }
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
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.flow_block_offload = type { i32, i32, i8, i8, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.flow_block_cb = type { %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.flow_block_indr, i32 }
%struct.flow_block_indr = type { %struct.list_head, ptr, ptr, i32, ptr, ptr, ptr }
%struct.dsa_slave_dump_ctx = type { ptr, ptr, ptr, i32 }
%struct.net_device_path = type { i32, ptr, %union.anon.131 }
%union.anon.131 = type { %struct.anon.133, [4 x i8] }
%struct.anon.133 = type { i32, i16, i16 }
%struct.tc_cls_matchall_offload = type { %struct.flow_cls_common_offload, i32, ptr, %struct.flow_stats, i32 }
%struct.flow_cls_common_offload = type { i32, i16, i32, ptr }
%struct.flow_stats = type { i64, i64, i64, i64, i32, i8 }
%struct.flow_rule = type { %struct.flow_match, %struct.flow_action }
%struct.flow_match = type { ptr, ptr, ptr }
%struct.flow_action = type { i32, [0 x %struct.flow_action_entry] }
%struct.flow_action_entry = type { i32, i32, i32, ptr, ptr, %union.anon.144, ptr }
%union.anon.144 = type { %struct.anon.149 }
%struct.anon.149 = type { i32, i64, i64, i64, i32 }
%struct.dsa_mall_tc_entry = type { %struct.list_head, i32, i32, %union.anon.161 }
%union.anon.161 = type { %struct.dsa_mall_policer_tc_entry }
%struct.dsa_mall_policer_tc_entry = type { i32, i64 }
%struct.dsa_mall_mirror_tc_entry = type { i8, i8 }
%struct.flow_cls_offload = type { %struct.flow_cls_common_offload, i32, i32, ptr, %struct.flow_stats, i32 }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.122 }
%union.anon.122 = type { [6 x i32], [24 x i8] }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.switchdev_attr = type { ptr, i32, i32, ptr, ptr, %union.anon.162 }
%union.anon.162 = type { %struct.switchdev_brport_flags }
%struct.switchdev_brport_flags = type { i32, i32 }
%struct.switchdev_notifier_fdb_info = type { %struct.switchdev_notifier_info, ptr, i16, i8 }
%struct.switchdev_notifier_info = type { ptr, ptr, ptr }
%struct.dsa_switchdev_event_work = type { ptr, i32, ptr, %struct.work_struct, i32, [6 x i8], i16, i8 }
%struct.netdev_notifier_changeupper_info = type { %struct.netdev_notifier_info, ptr, i8, i8, ptr }
%struct.netdev_notifier_info = type { ptr, ptr }
%struct.netdev_notifier_changelowerstate_info = type { %struct.netdev_notifier_info, ptr }

@.str = private unnamed_addr constant [14 x i8] c"dsa slave smi\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"dsa-%d.%d\00", align 1
@__kstrtab_dsa_enqueue_skb = external dso_local constant [0 x i8], align 1
@__kstrtabns_dsa_enqueue_skb = external dso_local constant [0 x i8], align 1
@__ksymtab_dsa_enqueue_skb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dsa_enqueue_skb to i32), ptr @__kstrtab_dsa_enqueue_skb, ptr @__kstrtabns_dsa_enqueue_skb }, section "___ksymtab_gpl+dsa_enqueue_skb", align 4
@__kstrtab_dsa_port_phylink_mac_change = external dso_local constant [0 x i8], align 1
@__kstrtabns_dsa_port_phylink_mac_change = external dso_local constant [0 x i8], align 1
@__ksymtab_dsa_port_phylink_mac_change = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dsa_port_phylink_mac_change to i32), ptr @__kstrtab_dsa_port_phylink_mac_change, ptr @__kstrtabns_dsa_port_phylink_mac_change }, section "___ksymtab_gpl+dsa_port_phylink_mac_change", align 4
@dsa_slave_ethtool_ops = internal constant %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @dsa_slave_get_drvinfo, ptr @dsa_slave_get_regs_len, ptr @dsa_slave_get_regs, ptr @dsa_slave_get_wol, ptr @dsa_slave_set_wol, ptr null, ptr null, ptr @dsa_slave_nway_reset, ptr @ethtool_op_get_link, ptr null, ptr @dsa_slave_get_eeprom_len, ptr @dsa_slave_get_eeprom, ptr @dsa_slave_set_eeprom, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dsa_slave_get_pauseparam, ptr @dsa_slave_set_pauseparam, ptr @dsa_slave_net_selftest, ptr @dsa_slave_get_strings, ptr null, ptr @dsa_slave_get_ethtool_stats, ptr null, ptr null, ptr null, ptr null, ptr @dsa_slave_get_sset_count, ptr @dsa_slave_get_rxnfc, ptr @dsa_slave_set_rxnfc, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dsa_slave_get_ts_info, ptr null, ptr null, ptr @dsa_slave_get_eee, ptr @dsa_slave_set_eee, ptr null, ptr null, ptr null, ptr null, ptr @dsa_slave_get_link_ksettings, ptr @dsa_slave_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dsa_slave_get_eth_phy_stats, ptr @dsa_slave_get_eth_mac_stats, ptr @dsa_slave_get_eth_ctrl_stats, ptr null, ptr null, ptr null }, align 4
@dsa_slave_netdev_ops = internal constant %struct.net_device_ops { ptr null, ptr null, ptr @dsa_slave_open, ptr @dsa_slave_close, ptr @dsa_slave_xmit, ptr null, ptr null, ptr @dsa_slave_change_rx_flags, ptr @dsa_slave_set_rx_mode, ptr @dsa_slave_set_mac_address, ptr null, ptr null, ptr @dsa_slave_ioctl, ptr null, ptr null, ptr null, ptr null, ptr @dsa_slave_change_mtu, ptr null, ptr null, ptr @dsa_slave_get_stats64, ptr null, ptr null, ptr null, ptr @dsa_slave_vlan_rx_add_vid, ptr @dsa_slave_vlan_rx_kill_vid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dsa_slave_setup_tc, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dsa_slave_fdb_dump, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dsa_slave_get_port_parent_id, ptr @dsa_slave_get_phys_port_name, ptr null, ptr null, ptr null, ptr @dsa_slave_get_iflink, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dsa_slave_get_devlink_port, ptr null, ptr null, ptr @dsa_slave_fill_forward_path }, align 4
@dsa_type = internal global %struct.device_type { ptr @.str.11, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@.str.2 = private unnamed_addr constant [57 x i8] c"error %d setting up PHY for tree %d, switch %d, port %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"nonfatal error %d setting MTU to %d on port %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"error %d registering interface %s\0A\00", align 1
@__kstrtab_dsa_slave_dev_check = external dso_local constant [0 x i8], align 1
@__kstrtabns_dsa_slave_dev_check = external dso_local constant [0 x i8], align 1
@__ksymtab_dsa_slave_dev_check = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dsa_slave_dev_check to i32), ptr @__kstrtab_dsa_slave_dev_check, ptr @__kstrtabns_dsa_slave_dev_check }, section "___ksymtab_gpl+dsa_slave_dev_check", align 4
@dsa_slave_switchdev_notifier = dso_local global %struct.notifier_block { ptr @dsa_slave_switchdev_event, ptr null, i32 0 }, align 4
@dsa_slave_switchdev_blocking_notifier = dso_local global %struct.notifier_block { ptr @dsa_slave_switchdev_blocking_event, ptr null, i32 0 }, align 4
@dsa_slave_nb = internal global %struct.notifier_block { ptr @dsa_slave_netdevice_event, ptr null, i32 0 }, section ".data..read_mostly", align 4
@.str.5 = private unnamed_addr constant [62 x i8] c"\013DSA: failed to unregister switchdev blocking notifier (%d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"\013DSA: failed to unregister switchdev notifier (%d)\0A\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"\013DSA: failed to unregister slave notifier (%d)\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"CPU port %d: %s\0A\00", align 1
@dsa_tree_list = external dso_local global %struct.list_head, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.10 = private unnamed_addr constant [23 x i8] c"Failed to restore MTU\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"dsa\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"N/A\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"platform\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"failed to open master %s\0A\00", align 1
@dsa_slave_block_cb_list = internal global %struct.list_head { ptr @dsa_slave_block_cb_list, ptr @dsa_slave_block_cb_list }, align 4
@__flow_action_hw_stats_check.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"include/net/flow_offload.h\00", align 1
@__flow_action_hw_stats_check.__msg = internal constant [59 x i8] c"dsa_core: Driver supports only default HW stats type \22any\22\00", align 1
@dsa_slave_add_cls_matchall_police.__msg = internal constant [43 x i8] c"dsa_core: Policing offload not implemented\00", align 1
@dsa_slave_add_cls_matchall_police.__msg.21 = internal constant [42 x i8] c"dsa_core: Only supported on ingress qdisc\00", align 1
@dsa_slave_add_cls_matchall_police.__msg.22 = internal constant [40 x i8] c"dsa_core: Only one port policer allowed\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"net/dsa/slave.c\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"include/net/netlink.h\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"p%d\00", align 1
@.str.26 = private unnamed_addr constant [31 x i8] c"failed to connect to PHY: %pe\0A\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"no phy at %d\0A\00", align 1
@.str.28 = private unnamed_addr constant [45 x i8] c"port %d failed to add %pM vid %d to fdb: %d\0A\00", align 1
@.str.29 = private unnamed_addr constant [50 x i8] c"port %d failed to delete %pM vid %d from fdb: %d\0A\00", align 1
@dsa_slave_vlan_add.__msg = internal constant [41 x i8] c"dsa_core: skipping configuration of VLAN\00", align 1
@dsa_slave_changeupper.__msg = internal constant [35 x i8] c"dsa_core: Offloading not supported\00", align 1
@dsa_slave_changeupper.__msg.31 = internal constant [35 x i8] c"dsa_core: Offloading not supported\00", align 1
@str = private unnamed_addr constant [33 x i8] c"tx_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 1
@str.33 = private unnamed_addr constant [33 x i8] c"tx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 1
@str.34 = private unnamed_addr constant [33 x i8] c"rx_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 1
@str.35 = private unnamed_addr constant [33 x i8] c"rx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_dsa_enqueue_skb, ptr @__ksymtab_dsa_port_phylink_mac_change, ptr @__ksymtab_dsa_slave_dev_check], section "llvm.metadata"

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dsa_slave_mii_bus_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.mii_bus, ptr %3, i32 0, i32 3
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr inbounds %struct.mii_bus, ptr %5, i32 0, i32 1
  store ptr @.str, ptr %6, align 4
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr inbounds %struct.mii_bus, ptr %7, i32 0, i32 4
  store ptr @dsa_slave_phy_read, ptr %8, align 4
  %9 = load ptr, ptr %2, align 4
  %10 = getelementptr inbounds %struct.mii_bus, ptr %9, i32 0, i32 5
  store ptr @dsa_slave_phy_write, ptr %10, align 8
  %11 = load ptr, ptr %2, align 4
  %12 = getelementptr inbounds %struct.mii_bus, ptr %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.dsa_switch_tree, ptr %14, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %12, i32 noundef 61, ptr noundef nonnull @.str.1, i32 noundef %16, i32 noundef %18)
  %20 = load ptr, ptr %0, align 4
  %21 = load ptr, ptr %2, align 4
  %22 = getelementptr inbounds %struct.mii_bus, ptr %21, i32 0, i32 9
  store ptr %20, ptr %22, align 4
  %23 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 9
  %24 = load i32, ptr %23, align 4
  %25 = xor i32 %24, -1
  %26 = load ptr, ptr %2, align 4
  %27 = getelementptr inbounds %struct.mii_bus, ptr %26, i32 0, i32 13
  store i32 %25, ptr %27, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsa_slave_phy_read(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.mii_bus, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.dsa_switch, ptr %5, i32 0, i32 9
  %7 = load i32, ptr %6, align 4
  %8 = shl nuw i32 1, %1
  %9 = and i32 %7, %8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.dsa_switch, ptr %5, i32 0, i32 8
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.dsa_switch_ops, ptr %13, i32 0, i32 8
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 %15(ptr noundef %5, i32 noundef %1, i32 noundef %2) #19
  br label %17

17:                                               ; preds = %11, %3
  %18 = phi i32 [ %16, %11 ], [ 65535, %3 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsa_slave_phy_write(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i16 noundef zeroext %3) #1 {
  %5 = getelementptr inbounds %struct.mii_bus, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.dsa_switch, ptr %6, i32 0, i32 9
  %8 = load i32, ptr %7, align 4
  %9 = shl nuw i32 1, %1
  %10 = and i32 %8, %9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.dsa_switch, ptr %6, i32 0, i32 8
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.dsa_switch_ops, ptr %14, i32 0, i32 9
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 %16(ptr noundef %6, i32 noundef %1, i32 noundef %2, i16 noundef zeroext %3) #19
  br label %18

18:                                               ; preds = %12, %4
  %19 = phi i32 [ %17, %12 ], [ 0, %4 ]
  ret i32 %19
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dsa_enqueue_skb(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr i8, ptr %1, i32 1416
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dsa_port, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.anon.49, ptr %0, i32 0, i32 2
  store ptr %7, ptr %8, align 8
  %9 = tail call i32 @dev_queue_xmit(ptr noundef %0) #19
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_queue_xmit(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @dsa_slave_manage_vlan_filtering(ptr nocapture noundef %0, i1 noundef zeroext %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 23
  %4 = load i64, ptr %3, align 16
  %5 = and i64 %4, -513
  %6 = select i1 %1, i64 512, i64 0
  %7 = or i64 %5, %6
  store i64 %7, ptr %3, align 16
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dsa_slave_change_mtu(ptr nocapture noundef %0, i32 noundef %1) #1 {
  %3 = getelementptr i8, ptr %0, i32 1416
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dsa_port, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dsa_port, ptr %4, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.dsa_port, ptr %4, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.dsa_switch, ptr %9, i32 0, i32 8
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.dsa_switch_ops, ptr %13, i32 0, i32 91
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %109, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.dsa_switch, ptr %9, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.dsa_switch_tree, ptr %19, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, %20
  br i1 %22, label %60, label %23

23:                                               ; preds = %41, %17
  %24 = phi ptr [ %43, %41 ], [ %21, %17 ]
  %25 = phi i32 [ %42, %41 ], [ 0, %17 ]
  %26 = getelementptr i8, ptr %24, i32 -280
  %27 = getelementptr i8, ptr %24, i32 -256
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 3
  br i1 %29, label %30, label %41

30:                                               ; preds = %23
  %31 = load ptr, ptr %26, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %41, label %33

33:                                               ; preds = %30
  %34 = icmp eq ptr %26, %4
  br i1 %34, label %38, label %35

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.net_device, ptr %31, i32 0, i32 20
  %37 = load i32, ptr %36, align 4
  br label %38

38:                                               ; preds = %35, %33
  %39 = phi i32 [ %37, %35 ], [ %1, %33 ]
  %40 = tail call i32 @llvm.smax.i32(i32 %25, i32 %39)
  br label %41

41:                                               ; preds = %38, %30, %23
  %42 = phi i32 [ %40, %38 ], [ %25, %23 ], [ %25, %30 ]
  %43 = load ptr, ptr %24, align 4
  %44 = icmp eq ptr %43, %20
  br i1 %44, label %45, label %23

45:                                               ; preds = %41
  br i1 %22, label %60, label %46

46:                                               ; preds = %55, %45
  %47 = phi ptr [ %56, %55 ], [ %21, %45 ]
  %48 = getelementptr i8, ptr %47, i32 -264
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, %9
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = getelementptr i8, ptr %47, i32 -260
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, %11
  br i1 %54, label %58, label %55

55:                                               ; preds = %51, %46
  %56 = load ptr, ptr %47, align 4
  %57 = icmp eq ptr %56, %20
  br i1 %57, label %60, label %46

58:                                               ; preds = %51
  %59 = getelementptr i8, ptr %47, i32 -280
  br label %60

60:                                               ; preds = %58, %55, %45, %17
  %61 = phi i32 [ %42, %58 ], [ %42, %45 ], [ 0, %17 ], [ %42, %55 ]
  %62 = phi ptr [ %59, %58 ], [ null, %45 ], [ null, %17 ], [ null, %55 ]
  %63 = getelementptr inbounds %struct.dsa_port, ptr %62, i32 0, i32 8
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 31
  %66 = load i32, ptr %65, align 4
  %67 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 31
  %68 = load i32, ptr %67, align 4
  %69 = tail call i32 @llvm.smin.i32(i32 %66, i32 %68)
  %70 = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 20
  %71 = load i32, ptr %70, align 4
  %72 = getelementptr inbounds %struct.dsa_port, ptr %64, i32 0, i32 1
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.dsa_device_ops, ptr %73, i32 0, i32 5
  %75 = load i32, ptr %74, align 4
  %76 = getelementptr inbounds %struct.dsa_device_ops, ptr %73, i32 0, i32 6
  %77 = load i32, ptr %76, align 4
  %78 = add i32 %75, %61
  %79 = add i32 %78, %77
  %80 = icmp sgt i32 %79, %69
  br i1 %80, label %109, label %81

81:                                               ; preds = %60
  %82 = icmp eq i32 %79, %71
  br i1 %82, label %89, label %83

83:                                               ; preds = %81
  %84 = tail call i32 @dev_set_mtu(ptr noundef %7, i32 noundef %79) #19
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %109, label %86

86:                                               ; preds = %83
  %87 = tail call i32 @dsa_port_mtu_change(ptr noundef %64, i32 noundef %61, i1 noundef zeroext false) #19
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %92, label %106

89:                                               ; preds = %81
  %90 = tail call i32 @dsa_port_mtu_change(ptr noundef %4, i32 noundef %1, i1 noundef zeroext true) #19
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %95, label %109

92:                                               ; preds = %86
  %93 = tail call i32 @dsa_port_mtu_change(ptr noundef %4, i32 noundef %1, i1 noundef zeroext true) #19
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %92, %89
  %96 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 20
  store i32 %1, ptr %96, align 4
  tail call fastcc void @dsa_bridge_mtu_normalization(ptr noundef %4)
  br label %109

97:                                               ; preds = %92
  %98 = load ptr, ptr %72, align 4
  %99 = getelementptr inbounds %struct.dsa_device_ops, ptr %98, i32 0, i32 5
  %100 = load i32, ptr %99, align 4
  %101 = getelementptr inbounds %struct.dsa_device_ops, ptr %98, i32 0, i32 6
  %102 = load i32, ptr %101, align 4
  %103 = add i32 %100, %102
  %104 = sub i32 %71, %103
  %105 = tail call i32 @dsa_port_mtu_change(ptr noundef %64, i32 noundef %104, i1 noundef zeroext false) #19
  br label %106

106:                                              ; preds = %97, %86
  %107 = phi i32 [ %93, %97 ], [ %87, %86 ]
  %108 = tail call i32 @dev_set_mtu(ptr noundef %7, i32 noundef %71) #19
  br label %109

109:                                              ; preds = %106, %95, %89, %83, %60, %2
  %110 = phi i32 [ 0, %95 ], [ -95, %2 ], [ -34, %60 ], [ %84, %83 ], [ %107, %106 ], [ %90, %89 ]
  ret i32 %110
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_mtu(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_port_mtu_change(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dsa_bridge_mtu_normalization(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #19
  %3 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dsa_switch, ptr %4, i32 0, i32 3
  %6 = load i16, ptr %5, align 4
  %7 = and i16 %6, 256
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %93, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 14
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %93, label %13

13:                                               ; preds = %9
  store volatile ptr %2, ptr %2, align 8
  %14 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %14, align 4
  %15 = load ptr, ptr @dsa_tree_list, align 4
  %16 = icmp eq ptr %15, @dsa_tree_list
  br i1 %16, label %77, label %21

17:                                               ; preds = %73, %21
  %18 = phi i32 [ %23, %21 ], [ %74, %73 ]
  %19 = load ptr, ptr %22, align 4
  %20 = icmp eq ptr %19, @dsa_tree_list
  br i1 %20, label %77, label %21

21:                                               ; preds = %17, %13
  %22 = phi ptr [ %19, %17 ], [ %15, %13 ]
  %23 = phi i32 [ %18, %17 ], [ 65535, %13 ]
  %24 = getelementptr inbounds %struct.dsa_switch_tree, ptr %22, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, %24
  br i1 %26, label %17, label %27

27:                                               ; preds = %73, %21
  %28 = phi ptr [ %75, %73 ], [ %25, %21 ]
  %29 = phi i32 [ %74, %73 ], [ %23, %21 ]
  %30 = getelementptr i8, ptr %28, i32 -280
  %31 = getelementptr i8, ptr %28, i32 -256
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 3
  br i1 %33, label %34, label %73

34:                                               ; preds = %27
  %35 = load ptr, ptr %10, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %34
  %38 = load ptr, ptr %35, align 4
  br label %39

39:                                               ; preds = %37, %34
  %40 = phi ptr [ %38, %37 ], [ null, %34 ]
  %41 = getelementptr i8, ptr %28, i32 -228
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %73, label %44

44:                                               ; preds = %39
  %45 = load ptr, ptr %42, align 4
  %46 = icmp ne ptr %40, null
  %47 = icmp ne ptr %45, null
  %48 = select i1 %46, i1 %47, i1 false
  %49 = icmp eq ptr %40, %45
  %50 = select i1 %48, i1 %49, i1 false
  br i1 %50, label %51, label %73

51:                                               ; preds = %44
  %52 = getelementptr i8, ptr %28, i32 -264
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.dsa_switch, ptr %53, i32 0, i32 3
  %55 = load i16, ptr %54, align 4
  %56 = and i16 %55, 256
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %73, label %58

58:                                               ; preds = %51
  %59 = load ptr, ptr %30, align 4
  %60 = getelementptr inbounds %struct.net_device, ptr %59, i32 0, i32 20
  %61 = load i32, ptr %60, align 4
  %62 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %63 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %62, i32 noundef 3520, i32 noundef 16) #20
  %64 = icmp eq ptr %63, null
  br i1 %64, label %86, label %65

65:                                               ; preds = %58
  %66 = call i32 @llvm.umin.i32(i32 %29, i32 %61)
  %67 = getelementptr inbounds %struct.dsa_hw_port, ptr %63, i32 0, i32 1
  store ptr %59, ptr %67, align 8
  %68 = load i32, ptr %60, align 4
  %69 = getelementptr inbounds %struct.dsa_hw_port, ptr %63, i32 0, i32 2
  store i32 %68, ptr %69, align 4
  %70 = load ptr, ptr %2, align 8
  %71 = getelementptr inbounds %struct.list_head, ptr %70, i32 0, i32 1
  store ptr %63, ptr %71, align 4
  store ptr %70, ptr %63, align 8
  %72 = getelementptr inbounds %struct.list_head, ptr %63, i32 0, i32 1
  store ptr %2, ptr %72, align 4
  store volatile ptr %63, ptr %2, align 8
  br label %73

73:                                               ; preds = %65, %51, %44, %39, %27
  %74 = phi i32 [ %29, %51 ], [ %29, %44 ], [ %29, %27 ], [ %66, %65 ], [ %29, %39 ]
  %75 = load ptr, ptr %28, align 4
  %76 = icmp eq ptr %75, %24
  br i1 %76, label %17, label %27

77:                                               ; preds = %17, %13
  %78 = phi i32 [ 65535, %13 ], [ %18, %17 ]
  %79 = load ptr, ptr %0, align 4
  %80 = getelementptr inbounds %struct.net_device, ptr %79, i32 0, i32 20
  %81 = load i32, ptr %80, align 4
  %82 = call fastcc i32 @dsa_hw_port_list_set_mtu(ptr noundef nonnull %2, i32 noundef %81)
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %77
  %85 = call fastcc i32 @dsa_hw_port_list_set_mtu(ptr noundef nonnull %2, i32 noundef %78)
  br label %86

86:                                               ; preds = %84, %77, %58
  %87 = load ptr, ptr %2, align 8
  %88 = icmp eq ptr %87, %2
  br i1 %88, label %93, label %89

89:                                               ; preds = %89, %86
  %90 = phi ptr [ %91, %89 ], [ %87, %86 ]
  %91 = load ptr, ptr %90, align 4
  call void @kfree(ptr noundef %90) #19
  %92 = icmp eq ptr %91, %2
  br i1 %92, label %93, label %89

93:                                               ; preds = %89, %86, %9, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dsa_port_phylink_mac_change(ptr noundef readonly %0, i32 noundef %1, i1 noundef zeroext %2) #1 {
  %4 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dsa_switch_tree, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %23, label %9

9:                                                ; preds = %18, %3
  %10 = phi ptr [ %19, %18 ], [ %7, %3 ]
  %11 = getelementptr i8, ptr %10, i32 -264
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = getelementptr i8, ptr %10, i32 -260
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, %1
  br i1 %17, label %21, label %18

18:                                               ; preds = %14, %9
  %19 = load ptr, ptr %10, align 4
  %20 = icmp eq ptr %19, %6
  br i1 %20, label %23, label %9

21:                                               ; preds = %14
  %22 = getelementptr i8, ptr %10, i32 -280
  br label %23

23:                                               ; preds = %21, %18, %3
  %24 = phi ptr [ %22, %21 ], [ null, %3 ], [ null, %18 ]
  %25 = getelementptr inbounds %struct.dsa_port, ptr %24, i32 0, i32 16
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  tail call void @phylink_mac_change(ptr noundef nonnull %26, i1 noundef zeroext %2) #19
  br label %29

29:                                               ; preds = %28, %23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_mac_change(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @dsa_slave_setup_tagger(ptr nocapture noundef %0) local_unnamed_addr #6 {
  %2 = getelementptr i8, ptr %0, i32 1416
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %0, i32 1408
  %5 = getelementptr inbounds %struct.dsa_port, ptr %3, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dsa_port, ptr %3, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.dsa_port, ptr %6, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.dsa_device_ops, ptr %11, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = trunc i32 %13 to i16
  %15 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 21
  store i16 %14, ptr %15, align 8
  %16 = load ptr, ptr %10, align 4
  %17 = getelementptr inbounds %struct.dsa_device_ops, ptr %16, i32 0, i32 6
  %18 = load i32, ptr %17, align 4
  %19 = trunc i32 %18 to i16
  %20 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 22
  store i16 %19, ptr %20, align 2
  %21 = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 21
  %22 = load i16, ptr %21, align 8
  %23 = add i16 %22, %14
  store i16 %23, ptr %15, align 8
  %24 = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 22
  %25 = load i16, ptr %24, align 2
  %26 = add i16 %25, %19
  store i16 %26, ptr %20, align 2
  %27 = load ptr, ptr %10, align 4
  %28 = load ptr, ptr %27, align 4
  store ptr %28, ptr %4, align 4
  %29 = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 26
  %30 = load i64, ptr %29, align 8
  %31 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 23
  %32 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 24
  %33 = load i64, ptr %32, align 8
  %34 = or i64 %33, 562949953421312
  store i64 %34, ptr %32, align 8
  %35 = or i64 %30, 562949953425408
  %36 = icmp eq i16 %26, 0
  %37 = and i64 %35, -66
  %38 = select i1 %36, i64 %35, i64 %37
  store i64 %38, ptr %31, align 16
  %39 = getelementptr inbounds %struct.dsa_switch, ptr %9, i32 0, i32 3
  %40 = load i16, ptr %39, align 4
  %41 = and i16 %40, 4
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %1
  %44 = or i64 %38, 512
  store i64 %44, ptr %31, align 16
  br label %45

45:                                               ; preds = %43, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dsa_slave_suspend(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr i8, ptr %0, i32 1416
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  tail call void @netif_device_detach(ptr noundef %0) #19
  tail call void @rtnl_lock() #19
  %9 = getelementptr inbounds %struct.dsa_port, ptr %3, i32 0, i32 16
  %10 = load ptr, ptr %9, align 4
  tail call void @phylink_stop(ptr noundef %10) #19
  tail call void @rtnl_unlock() #19
  br label %11

11:                                               ; preds = %8, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dsa_slave_resume(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr i8, ptr %0, i32 1416
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  tail call void @netif_device_attach(ptr noundef %0) #19
  tail call void @rtnl_lock() #19
  %9 = getelementptr inbounds %struct.dsa_port, ptr %3, i32 0, i32 16
  %10 = load ptr, ptr %9, align 4
  tail call void @phylink_start(ptr noundef %10) #19
  tail call void @rtnl_unlock() #19
  br label %11

11:                                               ; preds = %8, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_start(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dsa_slave_create(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dsa_switch, ptr %6, i32 0, i32 15
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 1, ptr %9, align 4
  br label %13

13:                                               ; preds = %12, %1
  %14 = phi i32 [ 1, %12 ], [ %10, %1 ]
  %15 = tail call ptr @alloc_netdev_mqs(i32 noundef 20, ptr noundef %8, i8 noundef zeroext 0, ptr noundef nonnull @ether_setup, i32 noundef %14, i32 noundef 1) #19
  %16 = icmp eq ptr %15, null
  br i1 %16, label %232, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 42
  store ptr @dsa_slave_ethtool_ops, ptr %18, align 8
  %19 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 9
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr %struct.dsa_port, ptr %0, i32 0, i32 9, i32 4
  %22 = load i16, ptr %21, align 2
  %23 = zext i16 %22 to i32
  %24 = or i32 %20, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 50
  %28 = load i8, ptr %27, align 8
  %29 = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 50
  store i8 %28, ptr %29, align 8
  %30 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 72
  %31 = load ptr, ptr %30, align 32
  br label %32

32:                                               ; preds = %26, %17
  %33 = phi ptr [ %31, %26 ], [ %19, %17 ]
  tail call void @dev_addr_mod(ptr noundef nonnull %15, i32 noundef 0, ptr noundef %33, i32 noundef 6) #19
  %34 = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 15
  %35 = load i64, ptr %34, align 16
  %36 = or i64 %35, 524288
  store i64 %36, ptr %34, align 16
  %37 = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 16
  store ptr @dsa_slave_netdev_ops, ptr %37, align 8
  %38 = getelementptr inbounds %struct.dsa_switch, ptr %6, i32 0, i32 8
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.dsa_switch_ops, ptr %39, i32 0, i32 92
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %48, label %43

43:                                               ; preds = %32
  %44 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 5
  %45 = load i32, ptr %44, align 4
  %46 = tail call i32 %41(ptr noundef %6, i32 noundef %45) #19
  %47 = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 31
  store i32 %46, ptr %47, align 4
  br label %48

48:                                               ; preds = %43, %32
  %49 = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 111, i32 4
  store ptr @dsa_type, ptr %49, align 16
  %50 = load ptr, ptr %5, align 4
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 111, i32 1
  store ptr %51, ptr %52, align 4
  %53 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 12
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 111, i32 25
  store ptr %54, ptr %55, align 16
  %56 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 26
  %57 = load i64, ptr %56, align 8
  %58 = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 26
  store i64 %57, ptr %58, align 8
  %59 = getelementptr i8, ptr %15, i32 1408
  %60 = tail call noalias ptr @__alloc_percpu_gfp(i32 noundef 64, i32 noundef 32, i32 noundef 3264) #21
  %61 = icmp eq ptr %60, null
  br i1 %61, label %77, label %62

62:                                               ; preds = %48
  %63 = load i32, ptr @nr_cpu_ids, align 4
  %64 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #22
  %65 = icmp ult i32 %64, %63
  br i1 %65, label %66, label %79

66:                                               ; preds = %62
  %67 = ptrtoint ptr %60 to i32
  br label %68

68:                                               ; preds = %68, %66
  %69 = phi i32 [ %64, %66 ], [ %75, %68 ]
  %70 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %69
  %71 = load i32, ptr %70, align 4
  %72 = add i32 %71, %67
  %73 = inttoptr i32 %72 to ptr
  %74 = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %73, i32 0, i32 4
  store i32 0, ptr %74, align 4
  %75 = tail call i32 @cpumask_next(i32 noundef %69, ptr noundef nonnull @__cpu_possible_mask) #22
  %76 = icmp ult i32 %75, %63
  br i1 %76, label %68, label %79

77:                                               ; preds = %48
  %78 = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 110
  store ptr null, ptr %78, align 8
  tail call void @free_netdev(ptr noundef nonnull %15) #19
  br label %232

79:                                               ; preds = %68, %62
  %80 = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 110
  store ptr %60, ptr %80, align 8
  %81 = getelementptr i8, ptr %15, i32 1412
  %82 = tail call i32 @gro_cells_init(ptr noundef %81, ptr noundef %15) #19
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %229

84:                                               ; preds = %79
  %85 = getelementptr i8, ptr %15, i32 1416
  store ptr %0, ptr %85, align 4
  %86 = getelementptr i8, ptr %15, i32 1420
  store volatile ptr %86, ptr %86, align 4
  %87 = getelementptr i8, ptr %15, i32 1424
  store ptr %86, ptr %87, align 4
  store ptr %15, ptr %0, align 4
  %88 = load ptr, ptr %85, align 4
  %89 = getelementptr inbounds %struct.dsa_port, ptr %88, i32 0, i32 8
  %90 = load ptr, ptr %89, align 4
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr inbounds %struct.dsa_port, ptr %88, i32 0, i32 4
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr inbounds %struct.dsa_port, ptr %90, i32 0, i32 1
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr inbounds %struct.dsa_device_ops, ptr %95, i32 0, i32 5
  %97 = load i32, ptr %96, align 4
  %98 = trunc i32 %97 to i16
  %99 = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 21
  store i16 %98, ptr %99, align 8
  %100 = load ptr, ptr %94, align 4
  %101 = getelementptr inbounds %struct.dsa_device_ops, ptr %100, i32 0, i32 6
  %102 = load i32, ptr %101, align 4
  %103 = trunc i32 %102 to i16
  %104 = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 22
  store i16 %103, ptr %104, align 2
  %105 = getelementptr inbounds %struct.net_device, ptr %91, i32 0, i32 21
  %106 = load i16, ptr %105, align 8
  %107 = add i16 %106, %98
  store i16 %107, ptr %99, align 8
  %108 = getelementptr inbounds %struct.net_device, ptr %91, i32 0, i32 22
  %109 = load i16, ptr %108, align 2
  %110 = add i16 %109, %103
  store i16 %110, ptr %104, align 2
  %111 = load ptr, ptr %94, align 4
  %112 = load ptr, ptr %111, align 4
  store ptr %112, ptr %59, align 4
  %113 = getelementptr inbounds %struct.net_device, ptr %91, i32 0, i32 26
  %114 = load i64, ptr %113, align 8
  %115 = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 23
  %116 = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 24
  %117 = load i64, ptr %116, align 8
  %118 = or i64 %117, 562949953421312
  store i64 %118, ptr %116, align 8
  %119 = or i64 %114, 562949953425408
  %120 = icmp eq i16 %110, 0
  %121 = and i64 %119, -66
  %122 = select i1 %120, i64 %119, i64 %121
  store i64 %122, ptr %115, align 16
  %123 = getelementptr inbounds %struct.dsa_switch, ptr %93, i32 0, i32 3
  %124 = load i16, ptr %123, align 4
  %125 = and i16 %124, 4
  %126 = icmp eq i16 %125, 0
  br i1 %126, label %129, label %127

127:                                              ; preds = %84
  %128 = or i64 %122, 512
  store i64 %128, ptr %115, align 16
  br label %129

129:                                              ; preds = %127, %84
  tail call void @netif_carrier_off(ptr noundef %15) #19
  %130 = load ptr, ptr %85, align 4
  %131 = getelementptr inbounds %struct.dsa_port, ptr %130, i32 0, i32 12
  %132 = load ptr, ptr %131, align 4
  %133 = getelementptr inbounds %struct.dsa_port, ptr %130, i32 0, i32 4
  %134 = load ptr, ptr %133, align 4
  %135 = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 111
  %136 = getelementptr inbounds %struct.dsa_port, ptr %130, i32 0, i32 17
  store ptr %135, ptr %136, align 4
  %137 = getelementptr inbounds %struct.dsa_port, ptr %130, i32 0, i32 17, i32 1
  store i32 0, ptr %137, align 4
  %138 = getelementptr inbounds %struct.dsa_switch, ptr %134, i32 0, i32 8
  %139 = load ptr, ptr %138, align 4
  %140 = getelementptr inbounds %struct.dsa_switch_ops, ptr %139, i32 0, i32 19
  %141 = load ptr, ptr %140, align 4
  %142 = icmp eq ptr %141, null
  br i1 %142, label %146, label %143

143:                                              ; preds = %129
  %144 = getelementptr inbounds %struct.dsa_port, ptr %130, i32 0, i32 17, i32 6
  store ptr @dsa_slave_phylink_fixed_state, ptr %144, align 4
  %145 = getelementptr inbounds %struct.dsa_port, ptr %130, i32 0, i32 17, i32 4
  store i8 1, ptr %145, align 2
  br label %146

146:                                              ; preds = %143, %129
  %147 = tail call i32 @dsa_port_phylink_create(ptr noundef %130) #19
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %195

149:                                              ; preds = %146
  %150 = load ptr, ptr %138, align 4
  %151 = getelementptr inbounds %struct.dsa_switch_ops, ptr %150, i32 0, i32 7
  %152 = load ptr, ptr %151, align 4
  %153 = icmp eq ptr %152, null
  br i1 %153, label %158, label %154

154:                                              ; preds = %149
  %155 = getelementptr inbounds %struct.dsa_port, ptr %130, i32 0, i32 5
  %156 = load i32, ptr %155, align 4
  %157 = tail call i32 %152(ptr noundef %134, i32 noundef %156) #19
  br label %158

158:                                              ; preds = %154, %149
  %159 = phi i32 [ %157, %154 ], [ 0, %149 ]
  %160 = getelementptr inbounds %struct.dsa_port, ptr %130, i32 0, i32 16
  %161 = load ptr, ptr %160, align 4
  %162 = tail call i32 @phylink_of_phy_connect(ptr noundef %161, ptr noundef %132, i32 noundef %159) #19
  %163 = icmp eq i32 %162, -19
  br i1 %163, label %164, label %188

164:                                              ; preds = %158
  %165 = getelementptr inbounds %struct.dsa_switch, ptr %134, i32 0, i32 10
  %166 = load ptr, ptr %165, align 4
  %167 = icmp eq ptr %166, null
  br i1 %167, label %191, label %168

168:                                              ; preds = %164
  %169 = getelementptr inbounds %struct.dsa_port, ptr %130, i32 0, i32 5
  %170 = load i32, ptr %169, align 4
  %171 = load ptr, ptr %85, align 4
  %172 = getelementptr inbounds %struct.dsa_port, ptr %171, i32 0, i32 4
  %173 = load ptr, ptr %172, align 4
  %174 = getelementptr inbounds %struct.dsa_switch, ptr %173, i32 0, i32 10
  %175 = load ptr, ptr %174, align 4
  %176 = tail call ptr @mdiobus_get_phy(ptr noundef %175, i32 noundef %170) #19
  %177 = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 120
  store ptr %176, ptr %177, align 8
  %178 = icmp eq ptr %176, null
  br i1 %178, label %179, label %180

179:                                              ; preds = %168
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %15, ptr noundef nonnull @.str.27, i32 noundef %170) #23
  br label %191

180:                                              ; preds = %168
  %181 = getelementptr inbounds %struct.phy_device, ptr %176, i32 0, i32 6
  %182 = load i32, ptr %181, align 8
  %183 = or i32 %182, %159
  store i32 %183, ptr %181, align 8
  %184 = getelementptr inbounds %struct.dsa_port, ptr %171, i32 0, i32 16
  %185 = load ptr, ptr %184, align 4
  %186 = load ptr, ptr %177, align 8
  %187 = tail call i32 @phylink_connect_phy(ptr noundef %185, ptr noundef %186) #19
  br label %188

188:                                              ; preds = %180, %158
  %189 = phi i32 [ %162, %158 ], [ %187, %180 ]
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %205, label %191

191:                                              ; preds = %188, %179, %164
  %192 = phi i32 [ %189, %188 ], [ -19, %164 ], [ -19, %179 ]
  %193 = inttoptr i32 %192 to ptr
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %15, ptr noundef nonnull @.str.26, ptr noundef %193) #23
  %194 = load ptr, ptr %160, align 4
  tail call void @phylink_destroy(ptr noundef %194) #19
  br label %195

195:                                              ; preds = %191, %146
  %196 = phi i32 [ %192, %191 ], [ %147, %146 ]
  %197 = getelementptr inbounds %struct.dsa_switch, ptr %6, i32 0, i32 1
  %198 = load ptr, ptr %197, align 4
  %199 = getelementptr inbounds %struct.dsa_switch_tree, ptr %198, i32 0, i32 3
  %200 = load i32, ptr %199, align 4
  %201 = getelementptr inbounds %struct.dsa_switch, ptr %6, i32 0, i32 2
  %202 = load i32, ptr %201, align 4
  %203 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 5
  %204 = load i32, ptr %203, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %15, ptr noundef nonnull @.str.2, i32 noundef %196, i32 noundef %200, i32 noundef %202, i32 noundef %204) #23
  br label %227

205:                                              ; preds = %188
  tail call void @rtnl_lock() #19
  %206 = tail call i32 @dsa_slave_change_mtu(ptr noundef %15, i32 noundef 1500)
  switch i32 %206, label %207 [
    i32 -95, label %211
    i32 0, label %211
  ]

207:                                              ; preds = %205
  %208 = load ptr, ptr %6, align 4
  %209 = getelementptr inbounds %struct.dsa_port, ptr %0, i32 0, i32 5
  %210 = load i32, ptr %209, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %208, ptr noundef nonnull @.str.3, i32 noundef %206, i32 noundef 1500, i32 noundef %210) #23
  br label %211

211:                                              ; preds = %207, %205, %205
  %212 = tail call i32 @register_netdevice(ptr noundef %15) #19
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %215, label %214

214:                                              ; preds = %211
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %4, ptr noundef nonnull @.str.4, i32 noundef %212, ptr noundef %15) #23
  tail call void @rtnl_unlock() #19
  br label %219

215:                                              ; preds = %211
  %216 = tail call i32 @netdev_upper_dev_link(ptr noundef %4, ptr noundef %15, ptr noundef null) #19
  tail call void @rtnl_unlock() #19
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %232, label %218

218:                                              ; preds = %215
  tail call void @unregister_netdev(ptr noundef %15) #19
  br label %219

219:                                              ; preds = %218, %214
  %220 = phi i32 [ %212, %214 ], [ %216, %218 ]
  tail call void @rtnl_lock() #19
  %221 = load ptr, ptr %85, align 4
  %222 = getelementptr inbounds %struct.dsa_port, ptr %221, i32 0, i32 16
  %223 = load ptr, ptr %222, align 4
  tail call void @phylink_disconnect_phy(ptr noundef %223) #19
  tail call void @rtnl_unlock() #19
  %224 = load ptr, ptr %85, align 4
  %225 = getelementptr inbounds %struct.dsa_port, ptr %224, i32 0, i32 16
  %226 = load ptr, ptr %225, align 4
  tail call void @phylink_destroy(ptr noundef %226) #19
  br label %227

227:                                              ; preds = %219, %195
  %228 = phi i32 [ %196, %195 ], [ %220, %219 ]
  tail call void @gro_cells_destroy(ptr noundef %81) #19
  br label %229

229:                                              ; preds = %227, %79
  %230 = phi i32 [ %82, %79 ], [ %228, %227 ]
  %231 = load ptr, ptr %80, align 8
  tail call void @free_percpu(ptr noundef %231) #19
  tail call void @free_netdev(ptr noundef %15) #19
  store ptr null, ptr %0, align 4
  br label %232

232:                                              ; preds = %229, %215, %77, %13
  %233 = phi i32 [ %230, %229 ], [ -12, %77 ], [ -12, %13 ], [ 0, %215 ]
  ret i32 %233
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_netdev_mqs(i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ether_setup(ptr noundef) #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu_gfp(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gro_cells_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netdev_upper_dev_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_disconnect_phy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gro_cells_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dsa_slave_destroy(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr i8, ptr %0, i32 1416
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dsa_port, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  tail call void @netif_carrier_off(ptr noundef %0) #19
  tail call void @rtnl_lock() #19
  tail call void @netdev_upper_dev_unlink(ptr noundef %6, ptr noundef %0) #19
  tail call void @unregister_netdevice_queue(ptr noundef %0, ptr noundef null) #19
  %7 = getelementptr inbounds %struct.dsa_port, ptr %3, i32 0, i32 16
  %8 = load ptr, ptr %7, align 4
  tail call void @phylink_disconnect_phy(ptr noundef %8) #19
  tail call void @rtnl_unlock() #19
  %9 = load ptr, ptr %7, align 4
  tail call void @phylink_destroy(ptr noundef %9) #19
  %10 = getelementptr i8, ptr %0, i32 1412
  tail call void @gro_cells_destroy(ptr noundef %10) #19
  %11 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 110
  %12 = load ptr, ptr %11, align 8
  tail call void @free_percpu(ptr noundef %12) #19
  tail call void @free_netdev(ptr noundef %0) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_upper_dev_unlink(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @dsa_slave_dev_check(ptr nocapture noundef readonly %0) #10 {
  %2 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, @dsa_slave_netdev_ops
  ret i1 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsa_slave_switchdev_event(ptr nocapture noundef readnone %0, i32 noundef %1, ptr noundef %2) #1 {
  %4 = load ptr, ptr %2, align 4
  switch i32 %1, label %17 [
    i32 9, label %5
    i32 3, label %11
    i32 4, label %11
  ]

5:                                                ; preds = %3
  %6 = tail call i32 @switchdev_handle_port_attr_set(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @dsa_slave_dev_check, ptr noundef nonnull @dsa_slave_port_attr_set) #19
  %7 = icmp eq i32 %6, 0
  %8 = sub i32 1, %6
  %9 = or i32 %8, 32768
  %10 = select i1 %7, i32 1, i32 %9
  br label %17

11:                                               ; preds = %3, %3
  %12 = tail call i32 @switchdev_handle_fdb_event_to_device(ptr noundef %4, i32 noundef %1, ptr noundef %2, ptr noundef nonnull @dsa_slave_dev_check, ptr noundef nonnull @dsa_foreign_dev_check, ptr noundef nonnull @dsa_slave_fdb_event, ptr noundef null) #19
  %13 = icmp eq i32 %12, 0
  %14 = sub i32 1, %12
  %15 = or i32 %14, 32768
  %16 = select i1 %13, i32 1, i32 %15
  br label %17

17:                                               ; preds = %11, %5, %3
  %18 = phi i32 [ %16, %11 ], [ %10, %5 ], [ 0, %3 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsa_slave_switchdev_blocking_event(ptr nocapture noundef readnone %0, i32 noundef %1, ptr noundef %2) #1 {
  %4 = load ptr, ptr %2, align 4
  switch i32 %1, label %23 [
    i32 7, label %5
    i32 8, label %11
    i32 9, label %17
  ]

5:                                                ; preds = %3
  %6 = tail call i32 @switchdev_handle_port_obj_add(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @dsa_slave_dev_check, ptr noundef nonnull @dsa_slave_port_obj_add) #19
  %7 = icmp eq i32 %6, 0
  %8 = sub i32 1, %6
  %9 = or i32 %8, 32768
  %10 = select i1 %7, i32 1, i32 %9
  br label %23

11:                                               ; preds = %3
  %12 = tail call i32 @switchdev_handle_port_obj_del(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @dsa_slave_dev_check, ptr noundef nonnull @dsa_slave_port_obj_del) #19
  %13 = icmp eq i32 %12, 0
  %14 = sub i32 1, %12
  %15 = or i32 %14, 32768
  %16 = select i1 %13, i32 1, i32 %15
  br label %23

17:                                               ; preds = %3
  %18 = tail call i32 @switchdev_handle_port_attr_set(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @dsa_slave_dev_check, ptr noundef nonnull @dsa_slave_port_attr_set) #19
  %19 = icmp eq i32 %18, 0
  %20 = sub i32 1, %18
  %21 = or i32 %20, 32768
  %22 = select i1 %19, i32 1, i32 %21
  br label %23

23:                                               ; preds = %17, %11, %5, %3
  %24 = phi i32 [ %22, %17 ], [ %16, %11 ], [ %10, %5 ], [ 0, %3 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dsa_slave_register_notifier() local_unnamed_addr #1 {
  %1 = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @dsa_slave_nb) #19
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %14

3:                                                ; preds = %0
  %4 = tail call i32 @register_switchdev_notifier(ptr noundef nonnull @dsa_slave_switchdev_notifier) #19
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %3
  %7 = tail call i32 @register_switchdev_blocking_notifier(ptr noundef nonnull @dsa_slave_switchdev_blocking_notifier) #19
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %6
  %10 = tail call i32 @unregister_switchdev_notifier(ptr noundef nonnull @dsa_slave_switchdev_notifier) #19
  br label %11

11:                                               ; preds = %9, %3
  %12 = phi i32 [ %4, %3 ], [ %7, %9 ]
  %13 = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @dsa_slave_nb) #19
  br label %14

14:                                               ; preds = %11, %6, %0
  %15 = phi i32 [ %12, %11 ], [ %1, %0 ], [ 0, %6 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_switchdev_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_switchdev_blocking_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_switchdev_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dsa_slave_unregister_notifier() local_unnamed_addr #1 {
  %1 = tail call i32 @unregister_switchdev_blocking_notifier(ptr noundef nonnull @dsa_slave_switchdev_blocking_notifier) #19
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %1) #23
  br label %5

5:                                                ; preds = %3, %0
  %6 = tail call i32 @unregister_switchdev_notifier(ptr noundef nonnull @dsa_slave_switchdev_notifier) #19
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %6) #23
  br label %10

10:                                               ; preds = %8, %5
  %11 = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @dsa_slave_nb) #19
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %11) #23
  br label %15

15:                                               ; preds = %13, %10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_switchdev_blocking_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsa_slave_vlan_rx_add_vid(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2) #1 {
  %4 = alloca %struct.switchdev_obj_port_vlan, align 4
  %5 = alloca %struct.netlink_ext_ack, align 4
  %6 = getelementptr i8, ptr %0, i32 1416
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dsa_port, ptr %7, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #19
  %9 = getelementptr inbounds %struct.switchdev_obj, ptr %4, i32 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  store i32 1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.switchdev_obj_port_vlan, ptr %4, i32 0, i32 2
  store i16 %2, ptr %10, align 2
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #19
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %5, i8 0, i32 36, i1 false)
  %11 = call i32 @dsa_port_vlan_add(ptr noundef %7, ptr noundef nonnull %4, ptr noundef nonnull %5) #19
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = load ptr, ptr %5, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %28, label %16

16:                                               ; preds = %13
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef nonnull %14) #23
  br label %28

17:                                               ; preds = %3
  %18 = load ptr, ptr %8, align 4
  %19 = call i32 @dsa_port_vlan_add(ptr noundef %18, ptr noundef nonnull %4, ptr noundef nonnull %5) #19
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %5, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %8, align 4
  %26 = getelementptr inbounds %struct.dsa_port, ptr %25, i32 0, i32 5
  %27 = load i32, ptr %26, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef %27, ptr noundef nonnull %22) #23
  br label %28

28:                                               ; preds = %24, %21, %17, %16, %13
  %29 = phi i32 [ %11, %16 ], [ %11, %13 ], [ %19, %24 ], [ %19, %21 ], [ 0, %17 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #19
  ret i32 %29
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #11

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_port_vlan_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsa_slave_vlan_rx_kill_vid(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, i16 noundef zeroext %2) #1 {
  %4 = alloca %struct.switchdev_obj_port_vlan, align 4
  %5 = getelementptr i8, ptr %0, i32 1416
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #19
  %7 = getelementptr inbounds %struct.switchdev_obj_port_vlan, ptr %4, i32 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  store i16 %2, ptr %7, align 2
  %8 = call i32 @dsa_port_vlan_del(ptr noundef %6, ptr noundef nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #19
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_port_vlan_del(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dsa_hw_port_list_set_mtu(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #1 {
  %3 = load ptr, ptr %0, align 4
  %4 = icmp eq ptr %3, %0
  br i1 %4, label %40, label %5

5:                                                ; preds = %19, %2
  %6 = phi ptr [ %20, %19 ], [ %3, %2 ]
  %7 = getelementptr inbounds %struct.dsa_hw_port, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 20
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, %1
  br i1 %11, label %19, label %12

12:                                               ; preds = %5
  %13 = tail call i32 @dev_set_mtu(ptr noundef %8, i32 noundef %1) #19
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %40, label %22

19:                                               ; preds = %12, %5
  %20 = load ptr, ptr %6, align 4
  %21 = icmp eq ptr %20, %0
  br i1 %21, label %40, label %5

22:                                               ; preds = %36, %15
  %23 = phi ptr [ %38, %36 ], [ %17, %15 ]
  %24 = getelementptr inbounds %struct.dsa_hw_port, ptr %23, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 20
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.dsa_hw_port, ptr %23, i32 0, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %36, label %31

31:                                               ; preds = %22
  %32 = tail call i32 @dev_set_mtu(ptr noundef %25, i32 noundef %29) #19
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = load ptr, ptr %24, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %35, ptr noundef nonnull @.str.10) #23
  br label %36

36:                                               ; preds = %34, %31, %22
  %37 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, %0
  br i1 %39, label %40, label %22

40:                                               ; preds = %36, %19, %15, %2
  %41 = phi i32 [ %13, %15 ], [ 0, %2 ], [ %13, %36 ], [ 0, %19 ]
  ret i32 %41
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dsa_slave_get_drvinfo(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ethtool_drvinfo, ptr %1, i32 0, i32 1
  %4 = tail call i32 @strlcpy(ptr noundef %3, ptr noundef nonnull @.str.11, i32 noundef 32) #19
  %5 = getelementptr inbounds %struct.ethtool_drvinfo, ptr %1, i32 0, i32 3
  %6 = tail call i32 @strlcpy(ptr noundef %5, ptr noundef nonnull @.str.12, i32 noundef 32) #19
  %7 = getelementptr inbounds %struct.ethtool_drvinfo, ptr %1, i32 0, i32 4
  %8 = tail call i32 @strlcpy(ptr noundef %7, ptr noundef nonnull @.str.13, i32 noundef 32) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsa_slave_get_regs_len(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr i8, ptr %0, i32 1416
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dsa_port, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dsa_switch, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dsa_switch_ops, ptr %7, i32 0, i32 41
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.dsa_port, ptr %3, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = tail call i32 %9(ptr noundef %5, i32 noundef %13) #19
  br label %15

15:                                               ; preds = %11, %1
  %16 = phi i32 [ %14, %11 ], [ -95, %1 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dsa_slave_get_regs(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = getelementptr i8, ptr %0, i32 1416
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dsa_port, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dsa_switch, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.dsa_switch_ops, ptr %9, i32 0, i32 42
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.dsa_port, ptr %5, i32 0, i32 5
  %15 = load i32, ptr %14, align 4
  tail call void %11(ptr noundef %7, i32 noundef %15, ptr noundef %1, ptr noundef %2) #19
  br label %16

16:                                               ; preds = %13, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dsa_slave_get_wol(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = getelementptr i8, ptr %0, i32 1416
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dsa_port, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dsa_port, ptr %4, i32 0, i32 16
  %8 = load ptr, ptr %7, align 4
  tail call void @phylink_ethtool_get_wol(ptr noundef %8, ptr noundef %1) #19
  %9 = getelementptr inbounds %struct.dsa_switch, ptr %6, i32 0, i32 8
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.dsa_switch_ops, ptr %10, i32 0, i32 29
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.dsa_port, ptr %4, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  tail call void %12(ptr noundef %6, i32 noundef %16, ptr noundef %1) #19
  br label %17

17:                                               ; preds = %14, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsa_slave_set_wol(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = getelementptr i8, ptr %0, i32 1416
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dsa_port, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dsa_port, ptr %4, i32 0, i32 16
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @phylink_ethtool_set_wol(ptr noundef %8, ptr noundef %1) #19
  %10 = getelementptr inbounds %struct.dsa_switch, ptr %6, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.dsa_switch_ops, ptr %11, i32 0, i32 30
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.dsa_port, ptr %4, i32 0, i32 5
  %17 = load i32, ptr %16, align 4
  %18 = tail call i32 %13(ptr noundef %6, i32 noundef %17, ptr noundef %1) #19
  br label %19

19:                                               ; preds = %15, %2
  %20 = phi i32 [ %18, %15 ], [ -95, %2 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsa_slave_nway_reset(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr i8, ptr %0, i32 1416
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dsa_port, ptr %3, i32 0, i32 16
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @phylink_ethtool_nway_reset(ptr noundef %5) #19
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsa_slave_get_eeprom_len(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr i8, ptr %0, i32 1416
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dsa_port, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dsa_switch, ptr %5, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.dsa_chip_data, ptr %7, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %9, %1
  %14 = getelementptr inbounds %struct.dsa_switch, ptr %5, i32 0, i32 8
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.dsa_switch_ops, ptr %15, i32 0, i32 38
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %13
  %20 = tail call i32 %17(ptr noundef %5) #19
  br label %21

21:                                               ; preds = %19, %13, %9
  %22 = phi i32 [ %20, %19 ], [ %11, %9 ], [ 0, %13 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsa_slave_get_eeprom(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = getelementptr i8, ptr %0, i32 1416
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dsa_port, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dsa_switch, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.dsa_switch_ops, ptr %9, i32 0, i32 39
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %3
  %14 = tail call i32 %11(ptr noundef %7, ptr noundef %1, ptr noundef %2) #19
  br label %15

15:                                               ; preds = %13, %3
  %16 = phi i32 [ %14, %13 ], [ -95, %3 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsa_slave_set_eeprom(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = getelementptr i8, ptr %0, i32 1416
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dsa_port, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dsa_switch, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.dsa_switch_ops, ptr %9, i32 0, i32 40
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %3
  %14 = tail call i32 %11(ptr noundef %7, ptr noundef %1, ptr noundef %2) #19
  br label %15

15:                                               ; preds = %13, %3
  %16 = phi i32 [ %14, %13 ], [ -95, %3 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dsa_slave_get_pauseparam(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = getelementptr i8, ptr %0, i32 1416
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dsa_port, ptr %4, i32 0, i32 16
  %6 = load ptr, ptr %5, align 4
  tail call void @phylink_ethtool_get_pauseparam(ptr noundef %6, ptr noundef %1) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsa_slave_set_pauseparam(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = getelementptr i8, ptr %0, i32 1416
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dsa_port, ptr %4, i32 0, i32 16
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @phylink_ethtool_set_pauseparam(ptr noundef %6, ptr noundef %1) #19
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dsa_slave_net_selftest(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = getelementptr i8, ptr %0, i32 1416
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dsa_port, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dsa_switch, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.dsa_switch_ops, ptr %9, i32 0, i32 28
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.dsa_port, ptr %5, i32 0, i32 5
  %15 = load i32, ptr %14, align 4
  tail call void %11(ptr noundef %7, i32 noundef %15, ptr noundef %1, ptr noundef %2) #19
  br label %17

16:                                               ; preds = %3
  tail call void @net_selftest(ptr noundef %0, ptr noundef %1, ptr noundef %2) #19
  br label %17

17:                                               ; preds = %16, %13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dsa_slave_get_strings(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) #1 {
  %4 = getelementptr i8, ptr %0, i32 1416
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dsa_port, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  switch i32 %1, label %22 [
    i32 1, label %8
    i32 0, label %21
  ]

8:                                                ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(32) @str, i32 noundef 32, i1 false)
  %9 = getelementptr i8, ptr %2, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(32) %9, ptr noundef nonnull align 1 dereferenceable(32) @str.33, i32 noundef 32, i1 false)
  %10 = getelementptr i8, ptr %2, i32 64
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(32) %10, ptr noundef nonnull align 1 dereferenceable(32) @str.34, i32 noundef 32, i1 false)
  %11 = getelementptr i8, ptr %2, i32 96
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(32) %11, ptr noundef nonnull align 1 dereferenceable(32) @str.35, i32 noundef 32, i1 false)
  %12 = getelementptr inbounds %struct.dsa_switch, ptr %7, i32 0, i32 8
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.dsa_switch_ops, ptr %13, i32 0, i32 20
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.dsa_port, ptr %5, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr i8, ptr %2, i32 128
  tail call void %15(ptr noundef %7, i32 noundef %19, i32 noundef 1, ptr noundef %20) #19
  br label %22

21:                                               ; preds = %3
  tail call void @net_selftest_get_strings(ptr noundef %2) #19
  br label %22

22:                                               ; preds = %21, %17, %8, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dsa_slave_get_ethtool_stats(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #1 {
  %4 = getelementptr i8, ptr %0, i32 1416
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dsa_port, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #22
  %9 = load i32, ptr @nr_cpu_ids, align 4
  %10 = icmp ult i32 %8, %9
  br i1 %10, label %11, label %56

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 110
  %13 = getelementptr i64, ptr %2, i32 1
  %14 = getelementptr i64, ptr %2, i32 2
  %15 = getelementptr i64, ptr %2, i32 3
  br label %16

16:                                               ; preds = %44, %11
  %17 = phi i32 [ %8, %11 ], [ %53, %44 ]
  %18 = load ptr, ptr %12, align 8
  %19 = ptrtoint ptr %18 to i32
  %20 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %17
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, %19
  %23 = inttoptr i32 %22 to ptr
  %24 = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %23, i32 0, i32 2
  %26 = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %23, i32 0, i32 3
  %27 = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %23, i32 0, i32 1
  br label %28

28:                                               ; preds = %36, %16
  %29 = load volatile i32, ptr %24, align 4
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %32, %28
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !9
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #19, !srcloc !10
  %33 = load volatile i32, ptr %24, align 4
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %32

36:                                               ; preds = %32, %28
  %37 = phi i32 [ %29, %28 ], [ %33, %32 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !11
  %38 = load i64, ptr %25, align 16
  %39 = load i64, ptr %26, align 8
  %40 = load i64, ptr %23, align 32
  %41 = load i64, ptr %27, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !12
  %42 = load volatile i32, ptr %24, align 4
  %43 = icmp eq i32 %42, %37
  br i1 %43, label %44, label %28

44:                                               ; preds = %36
  %45 = load i64, ptr %2, align 8
  %46 = add i64 %45, %38
  store i64 %46, ptr %2, align 8
  %47 = load i64, ptr %13, align 8
  %48 = add i64 %47, %39
  store i64 %48, ptr %13, align 8
  %49 = load i64, ptr %14, align 8
  %50 = add i64 %49, %40
  store i64 %50, ptr %14, align 8
  %51 = load i64, ptr %15, align 8
  %52 = add i64 %51, %41
  store i64 %52, ptr %15, align 8
  %53 = tail call i32 @cpumask_next(i32 noundef %17, ptr noundef nonnull @__cpu_possible_mask) #22
  %54 = load i32, ptr @nr_cpu_ids, align 4
  %55 = icmp ult i32 %53, %54
  br i1 %55, label %16, label %56

56:                                               ; preds = %44, %3
  %57 = getelementptr inbounds %struct.dsa_switch, ptr %7, i32 0, i32 8
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.dsa_switch_ops, ptr %58, i32 0, i32 21
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %66, label %62

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.dsa_port, ptr %5, i32 0, i32 5
  %64 = load i32, ptr %63, align 4
  %65 = getelementptr i64, ptr %2, i32 4
  tail call void %60(ptr noundef %7, i32 noundef %64, ptr noundef %65) #19
  br label %66

66:                                               ; preds = %62, %56
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsa_slave_get_sset_count(ptr nocapture noundef readonly %0, i32 noundef %1) #1 {
  %3 = getelementptr i8, ptr %0, i32 1416
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dsa_port, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  switch i32 %1, label %23 [
    i32 1, label %7
    i32 0, label %21
  ]

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.dsa_switch, ptr %6, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.dsa_switch_ops, ptr %9, i32 0, i32 22
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.dsa_port, ptr %4, i32 0, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = tail call i32 %11(ptr noundef %6, i32 noundef %15, i32 noundef 1) #19
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %13, %7
  %19 = phi i32 [ %16, %13 ], [ 0, %7 ]
  %20 = add nuw i32 %19, 4
  br label %23

21:                                               ; preds = %2
  %22 = tail call i32 @net_selftest_get_count() #19
  br label %23

23:                                               ; preds = %21, %18, %13, %2
  %24 = phi i32 [ %22, %21 ], [ %20, %18 ], [ %16, %13 ], [ -95, %2 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsa_slave_get_rxnfc(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = getelementptr i8, ptr %0, i32 1416
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dsa_port, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dsa_switch, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.dsa_switch_ops, ptr %9, i32 0, i32 59
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.dsa_port, ptr %5, i32 0, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = tail call i32 %11(ptr noundef %7, i32 noundef %15, ptr noundef %1, ptr noundef %2) #19
  br label %17

17:                                               ; preds = %13, %3
  %18 = phi i32 [ %16, %13 ], [ -95, %3 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsa_slave_set_rxnfc(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = getelementptr i8, ptr %0, i32 1416
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dsa_port, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dsa_switch, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dsa_switch_ops, ptr %8, i32 0, i32 60
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.dsa_port, ptr %4, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 %10(ptr noundef %6, i32 noundef %14, ptr noundef %1) #19
  br label %16

16:                                               ; preds = %12, %2
  %17 = phi i32 [ %15, %12 ], [ -95, %2 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsa_slave_get_ts_info(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = getelementptr i8, ptr %0, i32 1416
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dsa_port, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dsa_switch, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dsa_switch_ops, ptr %8, i32 0, i32 31
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.dsa_port, ptr %4, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 %10(ptr noundef %6, i32 noundef %14, ptr noundef %1) #19
  br label %16

16:                                               ; preds = %12, %2
  %17 = phi i32 [ %15, %12 ], [ -95, %2 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsa_slave_get_eee(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = getelementptr i8, ptr %0, i32 1416
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dsa_port, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %28, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.dsa_port, ptr %4, i32 0, i32 16
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %28, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.dsa_switch, ptr %6, i32 0, i32 8
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.dsa_switch_ops, ptr %16, i32 0, i32 37
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %28, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.dsa_port, ptr %4, i32 0, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = tail call i32 %18(ptr noundef %6, i32 noundef %22, ptr noundef %1) #19
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load ptr, ptr %11, align 4
  %27 = tail call i32 @phylink_ethtool_get_eee(ptr noundef %26, ptr noundef %1) #19
  br label %28

28:                                               ; preds = %25, %20, %14, %10, %2
  %29 = phi i32 [ %27, %25 ], [ -19, %10 ], [ -19, %2 ], [ -95, %14 ], [ %23, %20 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsa_slave_set_eee(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = getelementptr i8, ptr %0, i32 1416
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dsa_port, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %28, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.dsa_port, ptr %4, i32 0, i32 16
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %28, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.dsa_switch, ptr %6, i32 0, i32 8
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.dsa_switch_ops, ptr %16, i32 0, i32 36
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %28, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.dsa_port, ptr %4, i32 0, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = tail call i32 %18(ptr noundef %6, i32 noundef %22, ptr noundef %1) #19
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load ptr, ptr %11, align 4
  %27 = tail call i32 @phylink_ethtool_set_eee(ptr noundef %26, ptr noundef %1) #19
  br label %28

28:                                               ; preds = %25, %20, %14, %10, %2
  %29 = phi i32 [ %27, %25 ], [ -19, %10 ], [ -19, %2 ], [ -95, %14 ], [ %23, %20 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsa_slave_get_link_ksettings(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = getelementptr i8, ptr %0, i32 1416
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dsa_port, ptr %4, i32 0, i32 16
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @phylink_ethtool_ksettings_get(ptr noundef %6, ptr noundef %1) #19
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsa_slave_set_link_ksettings(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = getelementptr i8, ptr %0, i32 1416
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dsa_port, ptr %4, i32 0, i32 16
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @phylink_ethtool_ksettings_set(ptr noundef %6, ptr noundef %1) #19
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dsa_slave_get_eth_phy_stats(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = getelementptr i8, ptr %0, i32 1416
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dsa_port, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dsa_switch, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dsa_switch_ops, ptr %8, i32 0, i32 24
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.dsa_port, ptr %4, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  tail call void %10(ptr noundef %6, i32 noundef %14, ptr noundef %1) #19
  br label %15

15:                                               ; preds = %12, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dsa_slave_get_eth_mac_stats(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = getelementptr i8, ptr %0, i32 1416
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dsa_port, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dsa_switch, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dsa_switch_ops, ptr %8, i32 0, i32 25
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.dsa_port, ptr %4, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  tail call void %10(ptr noundef %6, i32 noundef %14, ptr noundef %1) #19
  br label %15

15:                                               ; preds = %12, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dsa_slave_get_eth_ctrl_stats(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = getelementptr i8, ptr %0, i32 1416
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dsa_port, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dsa_switch, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dsa_switch_ops, ptr %8, i32 0, i32 26
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.dsa_port, ptr %4, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  tail call void %10(ptr noundef %6, i32 noundef %14, ptr noundef %1) #19
  br label %15

15:                                               ; preds = %12, %2
  ret void
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_ethtool_get_wol(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_ethtool_set_wol(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_ethtool_nway_reset(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_ethtool_get_pauseparam(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_ethtool_set_pauseparam(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @net_selftest(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @net_selftest_get_strings(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_selftest_get_count() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_ethtool_get_eee(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_ethtool_set_eee(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_ethtool_ksettings_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_ethtool_ksettings_set(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsa_slave_open(ptr noundef %0) #1 {
  %2 = getelementptr i8, ptr %0, i32 1416
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dsa_port, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @dev_open(ptr noundef %6, ptr noundef null) #19
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.18, ptr noundef %6) #23
  br label %81

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 72
  %12 = load ptr, ptr %11, align 32
  %13 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 72
  %14 = load ptr, ptr %13, align 32
  %15 = load i32, ptr %12, align 4
  %16 = load i32, ptr %14, align 4
  %17 = xor i32 %16, %15
  %18 = getelementptr i8, ptr %12, i32 4
  %19 = load i16, ptr %18, align 2
  %20 = getelementptr i8, ptr %14, i32 4
  %21 = load i16, ptr %20, align 2
  %22 = xor i16 %21, %19
  %23 = zext i16 %22 to i32
  %24 = or i32 %17, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %10
  %27 = tail call i32 @dev_uc_add(ptr noundef %6, ptr noundef %12) #19
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %81, label %29

29:                                               ; preds = %26, %10
  %30 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 14
  %31 = load i32, ptr %30, align 8
  %32 = and i32 %31, 512
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = tail call i32 @dev_set_allmulti(ptr noundef %6, i32 noundef 1) #19
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %64, label %37

37:                                               ; preds = %34
  %38 = load i32, ptr %30, align 8
  br label %39

39:                                               ; preds = %37, %29
  %40 = phi i32 [ %38, %37 ], [ %31, %29 ]
  %41 = and i32 %40, 256
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = tail call i32 @dev_set_promiscuity(ptr noundef %6, i32 noundef 1) #19
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %57, label %46

46:                                               ; preds = %43, %39
  %47 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %48 = load ptr, ptr %47, align 8
  %49 = tail call i32 @dsa_port_enable_rt(ptr noundef %3, ptr noundef %48) #19
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %81, label %51

51:                                               ; preds = %46
  %52 = load i32, ptr %30, align 8
  %53 = and i32 %52, 256
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %51
  %56 = tail call i32 @dev_set_promiscuity(ptr noundef %6, i32 noundef -1) #19
  br label %57

57:                                               ; preds = %55, %51, %43
  %58 = phi i32 [ %44, %43 ], [ %49, %55 ], [ %49, %51 ]
  %59 = load i32, ptr %30, align 8
  %60 = and i32 %59, 512
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %57
  %63 = tail call i32 @dev_set_allmulti(ptr noundef %6, i32 noundef -1) #19
  br label %64

64:                                               ; preds = %62, %57, %34
  %65 = phi i32 [ %35, %34 ], [ %58, %62 ], [ %58, %57 ]
  %66 = load ptr, ptr %11, align 32
  %67 = load ptr, ptr %13, align 32
  %68 = load i32, ptr %66, align 4
  %69 = load i32, ptr %67, align 4
  %70 = xor i32 %69, %68
  %71 = getelementptr i8, ptr %66, i32 4
  %72 = load i16, ptr %71, align 2
  %73 = getelementptr i8, ptr %67, i32 4
  %74 = load i16, ptr %73, align 2
  %75 = xor i16 %74, %72
  %76 = zext i16 %75 to i32
  %77 = or i32 %70, %76
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %64
  %80 = tail call i32 @dev_uc_del(ptr noundef %6, ptr noundef %66) #19
  br label %81

81:                                               ; preds = %79, %64, %46, %26, %9
  %82 = phi i32 [ 0, %46 ], [ %7, %9 ], [ %65, %64 ], [ %65, %79 ], [ %27, %26 ]
  ret i32 %82
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsa_slave_close(ptr noundef %0) #1 {
  %2 = getelementptr i8, ptr %0, i32 1416
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dsa_port, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  tail call void @dsa_port_disable_rt(ptr noundef %3) #19
  tail call void @dev_mc_unsync(ptr noundef %6, ptr noundef %0) #19
  tail call void @dev_uc_unsync(ptr noundef %6, ptr noundef %0) #19
  %7 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 14
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 512
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = tail call i32 @dev_set_allmulti(ptr noundef %6, i32 noundef -1) #19
  %13 = load i32, ptr %7, align 8
  br label %14

14:                                               ; preds = %11, %1
  %15 = phi i32 [ %13, %11 ], [ %8, %1 ]
  %16 = and i32 %15, 256
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = tail call i32 @dev_set_promiscuity(ptr noundef %6, i32 noundef -1) #19
  br label %20

20:                                               ; preds = %18, %14
  %21 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 72
  %22 = load ptr, ptr %21, align 32
  %23 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 72
  %24 = load ptr, ptr %23, align 32
  %25 = load i32, ptr %22, align 4
  %26 = load i32, ptr %24, align 4
  %27 = xor i32 %26, %25
  %28 = getelementptr i8, ptr %22, i32 4
  %29 = load i16, ptr %28, align 2
  %30 = getelementptr i8, ptr %24, i32 4
  %31 = load i16, ptr %30, align 2
  %32 = xor i16 %31, %29
  %33 = zext i16 %32 to i32
  %34 = or i32 %27, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %20
  %37 = tail call i32 @dev_uc_del(ptr noundef %6, ptr noundef %22) #19
  br label %38

38:                                               ; preds = %36, %20
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsa_slave_xmit(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr i8, ptr %1, i32 1408
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %5 = load i32, ptr %4, align 8
  %6 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 110
  %7 = load ptr, ptr %6, align 8
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #19
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #15, !srcloc !13
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %13, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, 1
  store i32 %16, ptr %14, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #19, !srcloc !14
  %17 = zext i32 %5 to i64
  %18 = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %13, i32 0, i32 3
  %19 = load i64, ptr %18, align 8
  %20 = add i64 %19, %17
  store i64 %20, ptr %18, align 8
  %21 = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %13, i32 0, i32 2
  %22 = load i64, ptr %21, align 16
  %23 = add i64 %22, 1
  store i64 %23, ptr %21, align 16
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #19, !srcloc !15
  %24 = load i32, ptr %14, align 4
  %25 = add i32 %24, 1
  store i32 %25, ptr %14, align 4
  %26 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(48) %26, i8 0, i32 48, i1 false)
  %27 = getelementptr i8, ptr %1, i32 1416
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.dsa_port, ptr %28, i32 0, i32 4
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.skb_shared_info, ptr %32, i32 0, i32 3
  %34 = load i8, ptr %33, align 1
  %35 = and i8 %34, 1
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %46, label %37

37:                                               ; preds = %2
  %38 = getelementptr inbounds %struct.dsa_switch, ptr %30, i32 0, i32 8
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.dsa_switch_ops, ptr %39, i32 0, i32 76
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.dsa_port, ptr %28, i32 0, i32 5
  %45 = load i32, ptr %44, align 4
  tail call void %41(ptr noundef %30, i32 noundef %45, ptr noundef %0) #19
  br label %46

46:                                               ; preds = %43, %37, %2
  %47 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 21
  %48 = load i16, ptr %47, align 8
  %49 = zext i16 %48 to i32
  %50 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 22
  %51 = load i16, ptr %50, align 2
  %52 = zext i16 %51 to i32
  %53 = icmp eq i16 %51, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %46
  %55 = load i32, ptr %4, align 8
  %56 = icmp ult i32 %55, 60
  br i1 %56, label %57, label %60, !prof !16

57:                                               ; preds = %54
  %58 = add nuw nsw i32 %52, 60
  %59 = sub nuw nsw i32 %58, %55
  br label %60

60:                                               ; preds = %57, %54, %46
  %61 = phi i32 [ %59, %57 ], [ %52, %54 ], [ 0, %46 ]
  %62 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %65 = load ptr, ptr %64, align 8
  %66 = ptrtoint ptr %63 to i32
  %67 = ptrtoint ptr %65 to i32
  %68 = sub i32 %67, %66
  %69 = add i32 %68, %49
  %70 = icmp sgt i32 %69, 0
  %71 = tail call i32 @llvm.smax.i32(i32 %69, i32 0) #19
  %72 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %73 = load i32, ptr %72, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %60
  %76 = load ptr, ptr %31, align 4
  %77 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %78 = load ptr, ptr %77, align 8
  %79 = ptrtoint ptr %76 to i32
  %80 = ptrtoint ptr %78 to i32
  %81 = sub i32 %80, %79
  br label %82

82:                                               ; preds = %75, %60
  %83 = phi i32 [ %81, %75 ], [ 0, %60 ]
  %84 = add i32 %83, %61
  %85 = icmp sgt i32 %84, 0
  %86 = tail call i32 @llvm.smax.i32(i32 %84, i32 0) #19
  %87 = select i1 %70, i1 true, i1 %85
  br i1 %87, label %99, label %88, !prof !17

88:                                               ; preds = %82
  %89 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 11
  %90 = load i8, ptr %89, align 2
  %91 = and i8 %90, 1
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %105, label %93

93:                                               ; preds = %88
  %94 = load ptr, ptr %31, align 4
  %95 = getelementptr inbounds %struct.skb_shared_info, ptr %94, i32 0, i32 10
  %96 = load volatile i32, ptr %95, align 4
  %97 = and i32 %96, 65535
  %98 = icmp eq i32 %97, 1
  br i1 %98, label %105, label %99, !prof !18

99:                                               ; preds = %93, %82
  %100 = tail call i32 @pskb_expand_head(ptr noundef %0, i32 noundef %71, i32 noundef %86, i32 noundef 2592) #19
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %99
  %103 = load i16, ptr %50, align 2
  br label %105

104:                                              ; preds = %99
  tail call void @__dev_kfree_skb_any(ptr noundef %0, i32 noundef 1) #19
  br label %137

105:                                              ; preds = %102, %93, %88
  %106 = phi i16 [ %103, %102 ], [ %51, %88 ], [ %51, %93 ]
  %107 = icmp eq i16 %106, 0
  br i1 %107, label %125, label %108

108:                                              ; preds = %105
  %109 = load i32, ptr %4, align 8
  %110 = icmp ult i32 %109, 60
  br i1 %110, label %111, label %125, !prof !16

111:                                              ; preds = %108
  %112 = sub nuw nsw i32 60, %109
  %113 = tail call i32 @__skb_pad(ptr noundef %0, i32 noundef %112, i1 noundef zeroext true) #19
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %125

115:                                              ; preds = %111
  %116 = load i32, ptr %72, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %119, label %118, !prof !18

118:                                              ; preds = %115
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #19, !srcloc !19
  unreachable

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %121 = load ptr, ptr %120, align 8
  %122 = getelementptr i8, ptr %121, i32 %112
  store ptr %122, ptr %120, align 8
  %123 = load i32, ptr %4, align 8
  %124 = add i32 %123, %112
  store i32 %124, ptr %4, align 8
  br label %125

125:                                              ; preds = %119, %111, %108, %105
  %126 = load ptr, ptr %3, align 4
  %127 = tail call ptr %126(ptr noundef %0, ptr noundef %1) #19
  %128 = icmp eq ptr %127, null
  br i1 %128, label %129, label %130

129:                                              ; preds = %125
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #19
  br label %137

130:                                              ; preds = %125
  %131 = load ptr, ptr %27, align 4
  %132 = getelementptr inbounds %struct.dsa_port, ptr %131, i32 0, i32 8
  %133 = load ptr, ptr %132, align 4
  %134 = load ptr, ptr %133, align 4
  %135 = getelementptr inbounds %struct.anon.49, ptr %127, i32 0, i32 2
  store ptr %134, ptr %135, align 8
  %136 = tail call i32 @dev_queue_xmit(ptr noundef nonnull %127) #19
  br label %137

137:                                              ; preds = %130, %129, %104
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dsa_slave_change_rx_flags(ptr nocapture noundef readonly %0, i32 noundef %1) #1 {
  %3 = getelementptr i8, ptr %0, i32 1416
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dsa_port, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 14
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %29, label %12

12:                                               ; preds = %2
  %13 = and i32 %1, 512
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %12
  %16 = and i32 %9, 512
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %17, i32 -1, i32 1
  %19 = tail call i32 @dev_set_allmulti(ptr noundef %7, i32 noundef %18) #19
  br label %20

20:                                               ; preds = %15, %12
  %21 = and i32 %1, 256
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %20
  %24 = load i32, ptr %8, align 8
  %25 = and i32 %24, 256
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %26, i32 -1, i32 1
  %28 = tail call i32 @dev_set_promiscuity(ptr noundef %7, i32 noundef %27) #19
  br label %29

29:                                               ; preds = %23, %20, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dsa_slave_set_rx_mode(ptr noundef %0) #1 {
  %2 = getelementptr i8, ptr %0, i32 1416
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dsa_port, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @dev_mc_sync(ptr noundef %6, ptr noundef %0) #19
  %8 = tail call i32 @dev_uc_sync(ptr noundef %6, ptr noundef %0) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsa_slave_set_mac_address(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr i8, ptr %0, i32 1416
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dsa_port, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.sockaddr, ptr %1, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %58

12:                                               ; preds = %2
  %13 = getelementptr %struct.sockaddr, ptr %1, i32 0, i32 1, i32 4
  %14 = load i16, ptr %13, align 2
  %15 = zext i16 %14 to i32
  %16 = or i32 %9, %15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %58, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 14
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %57, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 72
  %25 = load ptr, ptr %24, align 32
  %26 = load i32, ptr %25, align 4
  %27 = xor i32 %26, %9
  %28 = getelementptr i8, ptr %25, i32 4
  %29 = load i16, ptr %28, align 2
  %30 = xor i16 %29, %14
  %31 = zext i16 %30 to i32
  %32 = or i32 %27, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %23
  %35 = tail call i32 @dev_uc_add(ptr noundef %7, ptr noundef %8) #19
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %58, label %37

37:                                               ; preds = %34
  %38 = load ptr, ptr %24, align 32
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr i8, ptr %38, i32 4
  %41 = load i16, ptr %40, align 2
  br label %42

42:                                               ; preds = %37, %23
  %43 = phi i16 [ %41, %37 ], [ %29, %23 ]
  %44 = phi i32 [ %39, %37 ], [ %26, %23 ]
  %45 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 72
  %46 = load ptr, ptr %45, align 32
  %47 = load i32, ptr %46, align 4
  %48 = xor i32 %44, %47
  %49 = getelementptr i8, ptr %46, i32 4
  %50 = load i16, ptr %49, align 2
  %51 = xor i16 %43, %50
  %52 = zext i16 %51 to i32
  %53 = or i32 %48, %52
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %42
  %56 = tail call i32 @dev_uc_del(ptr noundef %7, ptr noundef %46) #19
  br label %57

57:                                               ; preds = %55, %42, %18
  tail call void @dev_addr_mod(ptr noundef %0, i32 noundef 0, ptr noundef %8, i32 noundef 6) #19
  br label %58

58:                                               ; preds = %57, %34, %12, %2
  %59 = phi i32 [ 0, %57 ], [ -99, %12 ], [ %35, %34 ], [ -99, %2 ]
  ret i32 %59
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsa_slave_ioctl(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #1 {
  %4 = getelementptr i8, ptr %0, i32 1416
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dsa_port, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dsa_port, ptr %5, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  switch i32 %2, label %26 [
    i32 35249, label %10
    i32 35248, label %18
  ]

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.dsa_switch, ptr %7, i32 0, i32 8
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.dsa_switch_ops, ptr %12, i32 0, i32 74
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %10
  %17 = tail call i32 %14(ptr noundef %7, i32 noundef %9, ptr noundef %1) #19
  br label %30

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.dsa_switch, ptr %7, i32 0, i32 8
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.dsa_switch_ops, ptr %20, i32 0, i32 75
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %18
  %25 = tail call i32 %22(ptr noundef %7, i32 noundef %9, ptr noundef %1) #19
  br label %30

26:                                               ; preds = %18, %10, %3
  %27 = getelementptr inbounds %struct.dsa_port, ptr %5, i32 0, i32 16
  %28 = load ptr, ptr %27, align 4
  %29 = tail call i32 @phylink_mii_ioctl(ptr noundef %28, ptr noundef %1, i32 noundef %2) #19
  br label %30

30:                                               ; preds = %26, %24, %16
  %31 = phi i32 [ %29, %26 ], [ %25, %24 ], [ %17, %16 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dsa_slave_get_stats64(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr i8, ptr %0, i32 1416
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dsa_port, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dsa_switch, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dsa_switch_ops, ptr %8, i32 0, i32 27
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.dsa_port, ptr %4, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  tail call void %10(ptr noundef %6, i32 noundef %14, ptr noundef %1) #19
  br label %16

15:                                               ; preds = %2
  tail call void @dev_get_tstats64(ptr noundef %0, ptr noundef %1) #19
  br label %16

16:                                               ; preds = %15, %12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsa_slave_setup_tc(ptr noundef %0, i32 noundef %1, ptr noundef %2) #1 {
  %4 = getelementptr i8, ptr %0, i32 1416
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dsa_port, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  switch i32 %1, label %83 [
    i32 5, label %8
    i32 14, label %49
  ]

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.flow_block_offload, ptr %2, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  switch i32 %10, label %93 [
    i32 1, label %12
    i32 2, label %11
  ]

11:                                               ; preds = %8
  br label %12

12:                                               ; preds = %11, %8
  %13 = phi ptr [ @dsa_slave_setup_tc_block_cb_eg, %11 ], [ @dsa_slave_setup_tc_block_cb_ig, %8 ]
  %14 = getelementptr inbounds %struct.flow_block_offload, ptr %2, i32 0, i32 7
  store ptr @dsa_slave_block_cb_list, ptr %14, align 4
  %15 = load i32, ptr %2, align 4
  switch i32 %15, label %93 [
    i32 0, label %16
    i32 1, label %31
  ]

16:                                               ; preds = %12
  %17 = tail call zeroext i1 @flow_block_cb_is_busy(ptr noundef nonnull %13, ptr noundef %0, ptr noundef nonnull @dsa_slave_block_cb_list) #19
  br i1 %17, label %93, label %18

18:                                               ; preds = %16
  %19 = tail call ptr @flow_block_cb_alloc(ptr noundef nonnull %13, ptr noundef %0, ptr noundef %0, ptr noundef null) #19
  %20 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = ptrtoint ptr %19 to i32
  br label %93

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.flow_block_cb, ptr %19, i32 0, i32 1
  %25 = getelementptr inbounds %struct.flow_block_offload, ptr %2, i32 0, i32 6
  %26 = getelementptr inbounds %struct.flow_block_offload, ptr %2, i32 0, i32 6, i32 1
  %27 = load ptr, ptr %26, align 4
  store ptr %24, ptr %26, align 4
  store ptr %25, ptr %24, align 4
  %28 = getelementptr inbounds %struct.flow_block_cb, ptr %19, i32 0, i32 1, i32 1
  store ptr %27, ptr %28, align 4
  store volatile ptr %24, ptr %27, align 4
  %29 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @dsa_slave_block_cb_list, i32 0, i32 1), align 4
  store ptr %19, ptr getelementptr inbounds (%struct.list_head, ptr @dsa_slave_block_cb_list, i32 0, i32 1), align 4
  store ptr @dsa_slave_block_cb_list, ptr %19, align 4
  %30 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  store ptr %29, ptr %30, align 4
  store volatile ptr %19, ptr %29, align 4
  br label %93

31:                                               ; preds = %12
  %32 = getelementptr inbounds %struct.flow_block_offload, ptr %2, i32 0, i32 5
  %33 = load ptr, ptr %32, align 4
  %34 = tail call ptr @flow_block_cb_lookup(ptr noundef %33, ptr noundef nonnull %13, ptr noundef %0) #19
  %35 = icmp eq ptr %34, null
  br i1 %35, label %93, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.flow_block_cb, ptr %34, i32 0, i32 1
  %38 = getelementptr inbounds %struct.flow_block_offload, ptr %2, i32 0, i32 6
  %39 = getelementptr inbounds %struct.flow_block_cb, ptr %34, i32 0, i32 1, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = load ptr, ptr %37, align 4
  %42 = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  store ptr %40, ptr %42, align 4
  store volatile ptr %41, ptr %40, align 4
  %43 = load ptr, ptr %38, align 4
  %44 = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  store ptr %37, ptr %44, align 4
  store ptr %43, ptr %37, align 4
  store ptr %38, ptr %39, align 4
  store volatile ptr %37, ptr %38, align 4
  %45 = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = load ptr, ptr %34, align 4
  %48 = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  store ptr %46, ptr %48, align 4
  store volatile ptr %47, ptr %46, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %34, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %45, align 4
  br label %93

49:                                               ; preds = %3
  %50 = getelementptr inbounds %struct.dsa_port, ptr %5, i32 0, i32 5
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds %struct.dsa_switch, ptr %7, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.dsa_switch_tree, ptr %53, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, %54
  br i1 %56, label %71, label %57

57:                                               ; preds = %66, %49
  %58 = phi ptr [ %67, %66 ], [ %55, %49 ]
  %59 = getelementptr i8, ptr %58, i32 -264
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, %7
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = getelementptr i8, ptr %58, i32 -260
  %64 = load i32, ptr %63, align 4
  %65 = icmp eq i32 %64, %51
  br i1 %65, label %69, label %66

66:                                               ; preds = %62, %57
  %67 = load ptr, ptr %58, align 4
  %68 = icmp eq ptr %67, %54
  br i1 %68, label %71, label %57

69:                                               ; preds = %62
  %70 = getelementptr i8, ptr %58, i32 -280
  br label %71

71:                                               ; preds = %69, %66, %49
  %72 = phi ptr [ %70, %69 ], [ null, %49 ], [ null, %66 ]
  %73 = getelementptr inbounds %struct.dsa_port, ptr %72, i32 0, i32 8
  %74 = load ptr, ptr %73, align 4
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.net_device, ptr %75, i32 0, i32 16
  %77 = load ptr, ptr %76, align 8
  %78 = getelementptr inbounds %struct.net_device_ops, ptr %77, i32 0, i32 39
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %93, label %81

81:                                               ; preds = %71
  %82 = tail call i32 %79(ptr noundef %75, i32 noundef 14, ptr noundef %2) #19
  br label %93

83:                                               ; preds = %3
  %84 = getelementptr inbounds %struct.dsa_switch, ptr %7, i32 0, i32 8
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr inbounds %struct.dsa_switch_ops, ptr %85, i32 0, i32 68
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %93, label %89

89:                                               ; preds = %83
  %90 = getelementptr inbounds %struct.dsa_port, ptr %5, i32 0, i32 5
  %91 = load i32, ptr %90, align 4
  %92 = tail call i32 %87(ptr noundef %7, i32 noundef %91, i32 noundef %1, ptr noundef %2) #19
  br label %93

93:                                               ; preds = %89, %83, %81, %71, %36, %31, %23, %21, %16, %12, %8
  %94 = phi i32 [ %92, %89 ], [ -95, %83 ], [ 0, %36 ], [ %22, %21 ], [ 0, %23 ], [ -95, %8 ], [ -16, %16 ], [ -2, %31 ], [ -95, %12 ], [ %82, %81 ], [ -95, %71 ]
  ret i32 %94
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsa_slave_fdb_dump(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readnone %3, ptr nocapture noundef %4) #1 {
  %6 = alloca %struct.dsa_slave_dump_ctx, align 4
  %7 = getelementptr i8, ptr %2, i32 1416
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #19
  store ptr %2, ptr %6, align 4
  %9 = getelementptr inbounds %struct.dsa_slave_dump_ctx, ptr %6, i32 0, i32 1
  store ptr %0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.dsa_slave_dump_ctx, ptr %6, i32 0, i32 2
  store ptr %1, ptr %10, align 4
  %11 = getelementptr inbounds %struct.dsa_slave_dump_ctx, ptr %6, i32 0, i32 3
  %12 = load i32, ptr %4, align 4
  store i32 %12, ptr %11, align 4
  %13 = call i32 @dsa_port_fdb_dump(ptr noundef %8, ptr noundef nonnull @dsa_slave_port_fdb_do_dump, ptr noundef nonnull %6) #19
  %14 = load i32, ptr %11, align 4
  store i32 %14, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #19
  ret i32 %13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @dsa_slave_get_port_parent_id(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #6 {
  %3 = getelementptr i8, ptr %0, i32 1416
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dsa_port, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dsa_switch, ptr %6, i32 0, i32 14
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.dsa_switch, ptr %6, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.netdev_phys_item_id, ptr %1, i32 0, i32 1
  store i8 4, ptr %13, align 1
  %14 = getelementptr inbounds %struct.dsa_switch_tree, ptr %12, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  store i32 %15, ptr %1, align 1
  br label %16

16:                                               ; preds = %10, %2
  %17 = phi i32 [ 0, %10 ], [ -95, %2 ]
  ret i32 %17
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsa_slave_get_phys_port_name(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 1416
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dsa_port, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dsa_switch, ptr %7, i32 0, i32 14
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.dsa_port, ptr %5, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %1, i32 noundef %2, ptr noundef nonnull @.str.25, i32 noundef %13)
  %15 = icmp ult i32 %14, %2
  %16 = select i1 %15, i32 0, i32 -22
  br label %17

17:                                               ; preds = %11, %3
  %18 = phi i32 [ -95, %3 ], [ %16, %11 ]
  ret i32 %18
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @dsa_slave_get_iflink(ptr nocapture noundef readonly %0) #14 {
  %2 = getelementptr i8, ptr %0, i32 1416
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dsa_port, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 17
  %8 = load i32, ptr %7, align 4
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @dsa_slave_get_devlink_port(ptr nocapture noundef readonly %0) #14 {
  %2 = getelementptr i8, ptr %0, i32 1416
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dsa_port, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dsa_switch, ptr %5, i32 0, i32 14
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  %9 = getelementptr inbounds %struct.dsa_port, ptr %3, i32 0, i32 15
  %10 = select i1 %8, ptr null, ptr %9
  ret ptr %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @dsa_slave_fill_forward_path(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) #6 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr i8, ptr %3, i32 1416
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dsa_port, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.net_device_path, ptr %1, i32 0, i32 1
  store ptr %3, ptr %8, align 4
  store i32 4, ptr %1, align 4
  %9 = getelementptr inbounds %struct.dsa_port, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.dsa_device_ops, ptr %10, i32 0, i32 8
  %12 = load i32, ptr %11, align 4
  %13 = trunc i32 %12 to i16
  %14 = getelementptr inbounds %struct.net_device_path, ptr %1, i32 0, i32 2
  %15 = getelementptr inbounds %struct.net_device_path, ptr %1, i32 0, i32 2, i32 0, i32 1
  store i16 %13, ptr %15, align 4
  %16 = getelementptr inbounds %struct.dsa_port, ptr %5, i32 0, i32 5
  %17 = load i32, ptr %16, align 4
  store i32 %17, ptr %14, align 4
  %18 = load ptr, ptr %7, align 4
  store ptr %18, ptr %0, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_open(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_uc_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_allmulti(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_promiscuity(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_port_enable_rt(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_uc_del(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_port_disable_rt(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_mc_unsync(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_uc_unsync(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #15

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__skb_pad(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_mc_sync(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_uc_sync(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_mii_ioctl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_get_tstats64(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsa_slave_setup_tc_block_cb_ig(i32 noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = tail call fastcc i32 @dsa_slave_setup_tc_block_cb(i32 noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext true)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsa_slave_setup_tc_block_cb_eg(i32 noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = tail call fastcc i32 @dsa_slave_setup_tc_block_cb(i32 noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext false)
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flow_block_cb_is_busy(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @flow_block_cb_alloc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @flow_block_cb_lookup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dsa_slave_setup_tc_block_cb(i32 noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #1 {
  %5 = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 23
  %6 = load i64, ptr %5, align 16
  %7 = and i64 %6, 562949953421312
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %272, label %9

9:                                                ; preds = %4
  switch i32 %0, label %272 [
    i32 3, label %10
    i32 2, label %227
  ]

10:                                               ; preds = %9
  %11 = load i32, ptr %1, align 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %272

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.tc_cls_matchall_offload, ptr %1, i32 0, i32 1
  %15 = load i32, ptr %14, align 8
  switch i32 %15, label %272 [
    i32 0, label %16
    i32 1, label %181
  ]

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.flow_cls_common_offload, ptr %1, i32 0, i32 1
  %18 = load i16, ptr %17, align 4
  %19 = icmp eq i16 %18, 768
  %20 = getelementptr inbounds %struct.tc_cls_matchall_offload, ptr %1, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.flow_rule, ptr %21, i32 0, i32 1
  %23 = load i32, ptr %22, align 8
  %24 = icmp eq i32 %23, 1
  br i1 %19, label %25, label %98

25:                                               ; preds = %16
  br i1 %24, label %26, label %272

26:                                               ; preds = %25
  %27 = getelementptr inbounds %struct.flow_rule, ptr %21, i32 1
  %28 = load i32, ptr %27, align 8
  %29 = icmp eq i32 %28, 5
  br i1 %29, label %30, label %102

30:                                               ; preds = %26
  %31 = zext i1 %3 to i8
  %32 = getelementptr i8, ptr %2, i32 1416
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.dsa_port, ptr %33, i32 0, i32 4
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.dsa_switch, ptr %35, i32 0, i32 8
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.dsa_switch_ops, ptr %37, i32 0, i32 64
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %272, label %41

41:                                               ; preds = %30
  %42 = getelementptr inbounds %struct.flow_cls_common_offload, ptr %1, i32 0, i32 3
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.flow_rule, ptr %21, i32 1, i32 0, i32 2
  %45 = load i32, ptr %44, align 8
  %46 = icmp eq i32 %45, 0
  %47 = load i1, ptr @__flow_action_hw_stats_check.__already_done, align 1
  %48 = xor i1 %47, true
  %49 = select i1 %46, i1 %48, i1 false
  br i1 %49, label %50, label %52, !prof !16

50:                                               ; preds = %41
  store i1 true, ptr @__flow_action_hw_stats_check.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 354, i32 noundef 9, ptr noundef null) #19
  %51 = load i32, ptr %44, align 8
  br label %52

52:                                               ; preds = %50, %41
  %53 = phi i32 [ %45, %41 ], [ %51, %50 ]
  %54 = and i32 %53, 3
  %55 = icmp eq i32 %54, 3
  br i1 %55, label %59, label %56

56:                                               ; preds = %52
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__flow_action_hw_stats_check.__msg) #19
  %57 = icmp eq ptr %43, null
  br i1 %57, label %272, label %58

58:                                               ; preds = %56
  store ptr @__flow_action_hw_stats_check.__msg, ptr %43, align 4
  br label %272

59:                                               ; preds = %52
  %60 = load ptr, ptr %20, align 4
  %61 = getelementptr inbounds %struct.flow_rule, ptr %60, i32 2
  %62 = load ptr, ptr %61, align 8
  %63 = icmp eq ptr %62, null
  br i1 %63, label %272, label %64

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.net_device, ptr %62, i32 0, i32 16
  %66 = load ptr, ptr %65, align 8
  %67 = icmp eq ptr %66, @dsa_slave_netdev_ops
  br i1 %67, label %68, label %272

68:                                               ; preds = %64
  %69 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %70 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %69, i32 noundef 3520, i32 noundef 32) #20
  %71 = icmp eq ptr %70, null
  br i1 %71, label %272, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.tc_cls_matchall_offload, ptr %1, i32 0, i32 4
  %74 = load i32, ptr %73, align 8
  %75 = getelementptr inbounds %struct.dsa_mall_tc_entry, ptr %70, i32 0, i32 1
  store i32 %74, ptr %75, align 8
  %76 = getelementptr inbounds %struct.dsa_mall_tc_entry, ptr %70, i32 0, i32 2
  store i32 0, ptr %76, align 4
  %77 = getelementptr inbounds %struct.dsa_mall_tc_entry, ptr %70, i32 0, i32 3
  %78 = load ptr, ptr %61, align 8
  %79 = getelementptr i8, ptr %78, i32 1416
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr inbounds %struct.dsa_port, ptr %80, i32 0, i32 5
  %82 = load i32, ptr %81, align 4
  %83 = trunc i32 %82 to i8
  store i8 %83, ptr %77, align 8
  %84 = getelementptr inbounds %struct.dsa_mall_mirror_tc_entry, ptr %77, i32 0, i32 1
  store i8 %31, ptr %84, align 1
  %85 = load ptr, ptr %36, align 4
  %86 = getelementptr inbounds %struct.dsa_switch_ops, ptr %85, i32 0, i32 64
  %87 = load ptr, ptr %86, align 4
  %88 = getelementptr inbounds %struct.dsa_port, ptr %33, i32 0, i32 5
  %89 = load i32, ptr %88, align 4
  %90 = tail call i32 %87(ptr noundef %35, i32 noundef %89, ptr noundef %77, i1 noundef zeroext %3) #19
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %72
  tail call void @kfree(ptr noundef nonnull %70) #19
  br label %272

93:                                               ; preds = %72
  %94 = getelementptr i8, ptr %2, i32 1420
  %95 = getelementptr i8, ptr %2, i32 1424
  %96 = load ptr, ptr %95, align 4
  store ptr %70, ptr %95, align 4
  store ptr %94, ptr %70, align 8
  %97 = getelementptr inbounds %struct.list_head, ptr %70, i32 0, i32 1
  store ptr %96, ptr %97, align 4
  store volatile ptr %70, ptr %96, align 4
  br label %272

98:                                               ; preds = %16
  br i1 %24, label %99, label %272

99:                                               ; preds = %98
  %100 = getelementptr inbounds %struct.flow_rule, ptr %21, i32 1
  %101 = load i32, ptr %100, align 8
  br label %102

102:                                              ; preds = %99, %26
  %103 = phi i32 [ %101, %99 ], [ %28, %26 ]
  %104 = icmp eq i32 %103, 22
  br i1 %104, label %105, label %272

105:                                              ; preds = %102
  %106 = getelementptr inbounds %struct.flow_cls_common_offload, ptr %1, i32 0, i32 3
  %107 = load ptr, ptr %106, align 4
  %108 = getelementptr i8, ptr %2, i32 1416
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr inbounds %struct.dsa_port, ptr %109, i32 0, i32 4
  %111 = load ptr, ptr %110, align 4
  %112 = getelementptr inbounds %struct.dsa_switch, ptr %111, i32 0, i32 8
  %113 = load ptr, ptr %112, align 4
  %114 = getelementptr inbounds %struct.dsa_switch_ops, ptr %113, i32 0, i32 66
  %115 = load ptr, ptr %114, align 4
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %120

117:                                              ; preds = %105
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @dsa_slave_add_cls_matchall_police.__msg) #19
  %118 = icmp eq ptr %107, null
  br i1 %118, label %272, label %119

119:                                              ; preds = %117
  store ptr @dsa_slave_add_cls_matchall_police.__msg, ptr %107, align 4
  br label %272

120:                                              ; preds = %105
  br i1 %3, label %124, label %121

121:                                              ; preds = %120
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @dsa_slave_add_cls_matchall_police.__msg.21) #19
  %122 = icmp eq ptr %107, null
  br i1 %122, label %272, label %123

123:                                              ; preds = %121
  store ptr @dsa_slave_add_cls_matchall_police.__msg.21, ptr %107, align 4
  br label %272

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.flow_rule, ptr %21, i32 1, i32 0, i32 2
  %126 = load i32, ptr %125, align 8
  %127 = icmp eq i32 %126, 0
  %128 = load i1, ptr @__flow_action_hw_stats_check.__already_done, align 1
  %129 = xor i1 %128, true
  %130 = select i1 %127, i1 %129, i1 false
  br i1 %130, label %131, label %133, !prof !16

131:                                              ; preds = %124
  store i1 true, ptr @__flow_action_hw_stats_check.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 354, i32 noundef 9, ptr noundef null) #19
  %132 = load i32, ptr %125, align 8
  br label %133

133:                                              ; preds = %131, %124
  %134 = phi i32 [ %126, %124 ], [ %132, %131 ]
  %135 = and i32 %134, 3
  %136 = icmp eq i32 %135, 3
  br i1 %136, label %140, label %137

137:                                              ; preds = %133
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__flow_action_hw_stats_check.__msg) #19
  %138 = icmp eq ptr %107, null
  br i1 %138, label %272, label %139

139:                                              ; preds = %137
  store ptr @__flow_action_hw_stats_check.__msg, ptr %107, align 4
  br label %272

140:                                              ; preds = %133
  %141 = getelementptr i8, ptr %2, i32 1420
  br label %142

142:                                              ; preds = %146, %140
  %143 = phi ptr [ %141, %140 ], [ %144, %146 ]
  %144 = load ptr, ptr %143, align 4
  %145 = icmp eq ptr %144, %141
  br i1 %145, label %153, label %146

146:                                              ; preds = %142
  %147 = getelementptr inbounds %struct.dsa_mall_tc_entry, ptr %144, i32 0, i32 2
  %148 = load i32, ptr %147, align 4
  %149 = icmp eq i32 %148, 1
  br i1 %149, label %150, label %142

150:                                              ; preds = %146
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @dsa_slave_add_cls_matchall_police.__msg.22) #19
  %151 = icmp eq ptr %107, null
  br i1 %151, label %272, label %152

152:                                              ; preds = %150
  store ptr @dsa_slave_add_cls_matchall_police.__msg.22, ptr %107, align 4
  br label %272

153:                                              ; preds = %142
  %154 = load ptr, ptr %20, align 4
  %155 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %156 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %155, i32 noundef 3520, i32 noundef 32) #20
  %157 = icmp eq ptr %156, null
  br i1 %157, label %272, label %158

158:                                              ; preds = %153
  %159 = getelementptr inbounds %struct.tc_cls_matchall_offload, ptr %1, i32 0, i32 4
  %160 = load i32, ptr %159, align 8
  %161 = getelementptr inbounds %struct.dsa_mall_tc_entry, ptr %156, i32 0, i32 1
  store i32 %160, ptr %161, align 8
  %162 = getelementptr inbounds %struct.dsa_mall_tc_entry, ptr %156, i32 0, i32 2
  store i32 1, ptr %162, align 4
  %163 = getelementptr inbounds %struct.dsa_mall_tc_entry, ptr %156, i32 0, i32 3
  %164 = getelementptr inbounds %struct.flow_rule, ptr %154, i32 2
  %165 = getelementptr inbounds %struct.flow_rule, ptr %154, i32 2, i32 0, i32 2
  %166 = load i64, ptr %165, align 8
  %167 = getelementptr inbounds %struct.dsa_mall_tc_entry, ptr %156, i32 0, i32 3, i32 0, i32 1
  store i64 %166, ptr %167, align 8
  %168 = load i32, ptr %164, align 8
  store i32 %168, ptr %163, align 8
  %169 = load ptr, ptr %112, align 4
  %170 = getelementptr inbounds %struct.dsa_switch_ops, ptr %169, i32 0, i32 66
  %171 = load ptr, ptr %170, align 4
  %172 = getelementptr inbounds %struct.dsa_port, ptr %109, i32 0, i32 5
  %173 = load i32, ptr %172, align 4
  %174 = tail call i32 %171(ptr noundef %111, i32 noundef %173, ptr noundef %163) #19
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %177, label %176

176:                                              ; preds = %158
  tail call void @kfree(ptr noundef nonnull %156) #19
  br label %272

177:                                              ; preds = %158
  %178 = getelementptr i8, ptr %2, i32 1424
  %179 = load ptr, ptr %178, align 4
  store ptr %156, ptr %178, align 4
  store ptr %141, ptr %156, align 8
  %180 = getelementptr inbounds %struct.list_head, ptr %156, i32 0, i32 1
  store ptr %179, ptr %180, align 4
  store volatile ptr %156, ptr %179, align 4
  br label %272

181:                                              ; preds = %13
  %182 = getelementptr i8, ptr %2, i32 1416
  %183 = load ptr, ptr %182, align 4
  %184 = getelementptr inbounds %struct.dsa_port, ptr %183, i32 0, i32 4
  %185 = load ptr, ptr %184, align 4
  %186 = getelementptr inbounds %struct.tc_cls_matchall_offload, ptr %1, i32 0, i32 4
  %187 = load i32, ptr %186, align 8
  %188 = getelementptr i8, ptr %2, i32 1420
  br label %189

189:                                              ; preds = %193, %181
  %190 = phi ptr [ %188, %181 ], [ %191, %193 ]
  %191 = load ptr, ptr %190, align 4
  %192 = icmp eq ptr %191, %188
  br i1 %192, label %272, label %193

193:                                              ; preds = %189
  %194 = getelementptr inbounds %struct.dsa_mall_tc_entry, ptr %191, i32 0, i32 1
  %195 = load i32, ptr %194, align 8
  %196 = icmp eq i32 %195, %187
  br i1 %196, label %197, label %189

197:                                              ; preds = %193
  %198 = icmp eq ptr %191, null
  br i1 %198, label %272, label %199

199:                                              ; preds = %197
  %200 = getelementptr inbounds %struct.list_head, ptr %191, i32 0, i32 1
  %201 = load ptr, ptr %200, align 4
  %202 = load ptr, ptr %191, align 4
  %203 = getelementptr inbounds %struct.list_head, ptr %202, i32 0, i32 1
  store ptr %201, ptr %203, align 4
  store volatile ptr %202, ptr %201, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %191, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %200, align 4
  %204 = getelementptr inbounds %struct.dsa_mall_tc_entry, ptr %191, i32 0, i32 2
  %205 = load i32, ptr %204, align 4
  switch i32 %205, label %225 [
    i32 0, label %206
    i32 1, label %216
  ]

206:                                              ; preds = %199
  %207 = getelementptr inbounds %struct.dsa_switch, ptr %185, i32 0, i32 8
  %208 = load ptr, ptr %207, align 4
  %209 = getelementptr inbounds %struct.dsa_switch_ops, ptr %208, i32 0, i32 65
  %210 = load ptr, ptr %209, align 4
  %211 = icmp eq ptr %210, null
  br i1 %211, label %226, label %212

212:                                              ; preds = %206
  %213 = getelementptr inbounds %struct.dsa_port, ptr %183, i32 0, i32 5
  %214 = load i32, ptr %213, align 4
  %215 = getelementptr inbounds %struct.dsa_mall_tc_entry, ptr %191, i32 0, i32 3
  tail call void %210(ptr noundef %185, i32 noundef %214, ptr noundef %215) #19
  br label %226

216:                                              ; preds = %199
  %217 = getelementptr inbounds %struct.dsa_switch, ptr %185, i32 0, i32 8
  %218 = load ptr, ptr %217, align 4
  %219 = getelementptr inbounds %struct.dsa_switch_ops, ptr %218, i32 0, i32 67
  %220 = load ptr, ptr %219, align 4
  %221 = icmp eq ptr %220, null
  br i1 %221, label %226, label %222

222:                                              ; preds = %216
  %223 = getelementptr inbounds %struct.dsa_port, ptr %183, i32 0, i32 5
  %224 = load i32, ptr %223, align 4
  tail call void %220(ptr noundef %185, i32 noundef %224) #19
  br label %226

225:                                              ; preds = %199
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 1162, i32 noundef 9, ptr noundef null) #19
  br label %226

226:                                              ; preds = %225, %222, %216, %212, %206
  tail call void @kfree(ptr noundef nonnull %191) #19
  br label %272

227:                                              ; preds = %9
  %228 = getelementptr inbounds %struct.flow_cls_offload, ptr %1, i32 0, i32 1
  %229 = load i32, ptr %228, align 8
  switch i32 %229, label %272 [
    i32 0, label %230
    i32 1, label %244
    i32 2, label %258
  ]

230:                                              ; preds = %227
  %231 = getelementptr i8, ptr %2, i32 1416
  %232 = load ptr, ptr %231, align 4
  %233 = getelementptr inbounds %struct.dsa_port, ptr %232, i32 0, i32 4
  %234 = load ptr, ptr %233, align 4
  %235 = getelementptr inbounds %struct.dsa_switch, ptr %234, i32 0, i32 8
  %236 = load ptr, ptr %235, align 4
  %237 = getelementptr inbounds %struct.dsa_switch_ops, ptr %236, i32 0, i32 61
  %238 = load ptr, ptr %237, align 4
  %239 = icmp eq ptr %238, null
  br i1 %239, label %272, label %240

240:                                              ; preds = %230
  %241 = getelementptr inbounds %struct.dsa_port, ptr %232, i32 0, i32 5
  %242 = load i32, ptr %241, align 4
  %243 = tail call i32 %238(ptr noundef %234, i32 noundef %242, ptr noundef %1, i1 noundef zeroext %3) #19
  br label %272

244:                                              ; preds = %227
  %245 = getelementptr i8, ptr %2, i32 1416
  %246 = load ptr, ptr %245, align 4
  %247 = getelementptr inbounds %struct.dsa_port, ptr %246, i32 0, i32 4
  %248 = load ptr, ptr %247, align 4
  %249 = getelementptr inbounds %struct.dsa_switch, ptr %248, i32 0, i32 8
  %250 = load ptr, ptr %249, align 4
  %251 = getelementptr inbounds %struct.dsa_switch_ops, ptr %250, i32 0, i32 62
  %252 = load ptr, ptr %251, align 4
  %253 = icmp eq ptr %252, null
  br i1 %253, label %272, label %254

254:                                              ; preds = %244
  %255 = getelementptr inbounds %struct.dsa_port, ptr %246, i32 0, i32 5
  %256 = load i32, ptr %255, align 4
  %257 = tail call i32 %252(ptr noundef %248, i32 noundef %256, ptr noundef %1, i1 noundef zeroext %3) #19
  br label %272

258:                                              ; preds = %227
  %259 = getelementptr i8, ptr %2, i32 1416
  %260 = load ptr, ptr %259, align 4
  %261 = getelementptr inbounds %struct.dsa_port, ptr %260, i32 0, i32 4
  %262 = load ptr, ptr %261, align 4
  %263 = getelementptr inbounds %struct.dsa_switch, ptr %262, i32 0, i32 8
  %264 = load ptr, ptr %263, align 4
  %265 = getelementptr inbounds %struct.dsa_switch_ops, ptr %264, i32 0, i32 63
  %266 = load ptr, ptr %265, align 4
  %267 = icmp eq ptr %266, null
  br i1 %267, label %272, label %268

268:                                              ; preds = %258
  %269 = getelementptr inbounds %struct.dsa_port, ptr %260, i32 0, i32 5
  %270 = load i32, ptr %269, align 4
  %271 = tail call i32 %266(ptr noundef %262, i32 noundef %270, ptr noundef %1, i1 noundef zeroext %3) #19
  br label %272

272:                                              ; preds = %268, %258, %254, %244, %240, %230, %227, %226, %197, %189, %177, %176, %153, %152, %150, %139, %137, %123, %121, %119, %117, %102, %98, %93, %92, %68, %64, %59, %58, %56, %30, %25, %13, %10, %9, %4
  %273 = phi i32 [ -95, %4 ], [ -95, %9 ], [ -95, %10 ], [ -95, %13 ], [ -95, %102 ], [ -95, %98 ], [ %90, %92 ], [ 0, %93 ], [ -95, %30 ], [ -22, %59 ], [ -95, %64 ], [ -12, %68 ], [ -95, %56 ], [ -95, %58 ], [ %174, %176 ], [ 0, %177 ], [ -95, %119 ], [ -95, %117 ], [ -95, %123 ], [ -95, %121 ], [ -17, %152 ], [ -17, %150 ], [ -12, %153 ], [ -95, %137 ], [ -95, %139 ], [ -95, %25 ], [ 0, %197 ], [ 0, %226 ], [ -95, %227 ], [ %243, %240 ], [ -95, %230 ], [ %257, %254 ], [ -95, %244 ], [ %271, %268 ], [ -95, %258 ], [ 0, %189 ]
  ret i32 %273
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_port_fdb_dump(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsa_slave_port_fdb_do_dump(ptr noundef %0, i16 noundef zeroext %1, i1 noundef zeroext %2, ptr nocapture noundef %3) #1 {
  %5 = alloca i16, align 2
  %6 = getelementptr inbounds %struct.dsa_slave_dump_ctx, ptr %3, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dsa_slave_dump_ctx, ptr %3, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr %struct.netlink_callback, ptr %7, i32 0, i32 13, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %67, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.netlink_callback, ptr %7, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.nlmsghdr, ptr %15, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = load ptr, ptr %7, align 4
  %19 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 3, i32 12
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.dsa_slave_dump_ctx, ptr %3, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 6
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %82

26:                                               ; preds = %13
  %27 = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 15
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 14
  %30 = load ptr, ptr %29, align 8
  %31 = ptrtoint ptr %28 to i32
  %32 = ptrtoint ptr %30 to i32
  %33 = sub i32 %31, %32
  %34 = icmp slt i32 %33, 28
  br i1 %34, label %82, label %35, !prof !16

35:                                               ; preds = %26
  %36 = tail call ptr @__nlmsg_put(ptr noundef %22, i32 noundef %20, i32 noundef %17, i32 noundef 28, i32 noundef 12, i32 noundef 2) #19
  %37 = icmp eq ptr %36, null
  br i1 %37, label %82, label %38

38:                                               ; preds = %35
  %39 = getelementptr i8, ptr %36, i32 16
  store i8 7, ptr %39, align 4
  %40 = getelementptr i8, ptr %36, i32 17
  store i8 0, ptr %40, align 1
  %41 = getelementptr i8, ptr %36, i32 18
  store i16 0, ptr %41, align 2
  %42 = getelementptr i8, ptr %36, i32 26
  store i8 2, ptr %42, align 2
  %43 = getelementptr i8, ptr %36, i32 27
  store i8 0, ptr %43, align 1
  %44 = load ptr, ptr %3, align 4
  %45 = getelementptr inbounds %struct.net_device, ptr %44, i32 0, i32 17
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr i8, ptr %36, i32 20
  store i32 %46, ptr %47, align 4
  %48 = select i1 %2, i16 64, i16 2
  %49 = getelementptr i8, ptr %36, i32 24
  store i16 %48, ptr %49, align 4
  %50 = load ptr, ptr %21, align 4
  %51 = tail call i32 @nla_put(ptr noundef %50, i32 noundef 2, i32 noundef 6, ptr noundef %0) #19
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %70

53:                                               ; preds = %38
  %54 = icmp eq i16 %1, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %53
  %56 = load ptr, ptr %21, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #19
  store i16 %1, ptr %5, align 2
  %57 = call i32 @nla_put(ptr noundef %56, i32 noundef 5, i32 noundef 2, ptr noundef nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #19
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %55, %53
  %60 = load ptr, ptr %21, align 4
  %61 = getelementptr inbounds %struct.sk_buff, ptr %60, i32 0, i32 14
  %62 = load ptr, ptr %61, align 8
  %63 = ptrtoint ptr %62 to i32
  %64 = ptrtoint ptr %36 to i32
  %65 = sub i32 %63, %64
  store i32 %65, ptr %36, align 4
  %66 = load i32, ptr %8, align 4
  br label %67

67:                                               ; preds = %59, %4
  %68 = phi i32 [ %9, %4 ], [ %66, %59 ]
  %69 = add i32 %68, 1
  store i32 %69, ptr %8, align 4
  br label %82

70:                                               ; preds = %55, %38
  %71 = load ptr, ptr %21, align 4
  %72 = getelementptr inbounds %struct.sk_buff, ptr %71, i32 0, i32 17
  %73 = load ptr, ptr %72, align 4
  %74 = icmp ugt ptr %73, %36
  br i1 %74, label %75, label %77, !prof !16

75:                                               ; preds = %70
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 991, i32 noundef 9, ptr noundef null) #19
  %76 = load ptr, ptr %72, align 4
  br label %77

77:                                               ; preds = %75, %70
  %78 = phi ptr [ %76, %75 ], [ %73, %70 ]
  %79 = ptrtoint ptr %36 to i32
  %80 = ptrtoint ptr %78 to i32
  %81 = sub i32 %79, %80
  call void @skb_trim(ptr noundef %71, i32 noundef %81) #19
  br label %82

82:                                               ; preds = %77, %67, %35, %26, %13
  %83 = phi i32 [ 0, %67 ], [ -90, %77 ], [ -90, %35 ], [ -90, %26 ], [ -90, %13 ]
  ret i32 %83
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__nlmsg_put(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #16

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dsa_slave_phylink_fixed_state(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = getelementptr i8, ptr %0, i32 -232
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dsa_switch, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dsa_switch_ops, ptr %6, i32 0, i32 19
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %0, i32 -228
  %10 = load i32, ptr %9, align 4
  tail call void %8(ptr noundef %4, i32 noundef %10, ptr noundef %1) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_port_phylink_create(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_of_phy_connect(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdiobus_get_phy(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_connect_phy(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdevice_queue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @switchdev_handle_port_attr_set(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsa_slave_port_attr_set(ptr nocapture noundef readonly %0, ptr noundef readnone %1, ptr nocapture noundef readonly %2, ptr noundef %3) #1 {
  %5 = getelementptr i8, ptr %0, i32 1416
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %1, null
  %8 = icmp eq ptr %6, %1
  %9 = select i1 %7, i1 true, i1 %8
  br i1 %9, label %10, label %116

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.switchdev_attr, ptr %2, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  switch i32 %12, label %116 [
    i32 1, label %13
    i32 6, label %35
    i32 5, label %50
    i32 3, label %64
    i32 2, label %90
  ]

13:                                               ; preds = %10
  %14 = load ptr, ptr %2, align 4
  %15 = getelementptr inbounds %struct.dsa_port, ptr %6, i32 0, i32 14
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %28, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.dsa_port, ptr %6, i32 0, i32 18
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.dsa_port, ptr %6, i32 0, i32 19
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load ptr, ptr %6, align 4
  br label %28

28:                                               ; preds = %26, %22, %18, %13
  %29 = phi ptr [ %27, %26 ], [ null, %13 ], [ %20, %18 ], [ %24, %22 ]
  %30 = icmp eq ptr %29, %14
  br i1 %30, label %31, label %116

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.switchdev_attr, ptr %2, i32 0, i32 5
  %33 = load i8, ptr %32, align 4
  %34 = tail call i32 @dsa_port_set_state(ptr noundef %6, i8 noundef zeroext %33, i1 noundef zeroext true) #19
  br label %116

35:                                               ; preds = %10
  %36 = load ptr, ptr %2, align 4
  %37 = getelementptr inbounds %struct.dsa_port, ptr %6, i32 0, i32 14
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %35
  %41 = load ptr, ptr %38, align 4
  br label %42

42:                                               ; preds = %40, %35
  %43 = phi ptr [ %41, %40 ], [ null, %35 ]
  %44 = icmp eq ptr %43, %36
  br i1 %44, label %45, label %116

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.switchdev_attr, ptr %2, i32 0, i32 5
  %47 = load i8, ptr %46, align 4, !range !20
  %48 = icmp ne i8 %47, 0
  %49 = tail call i32 @dsa_port_vlan_filtering(ptr noundef %6, i1 noundef zeroext %48, ptr noundef %3) #19
  br label %116

50:                                               ; preds = %10
  %51 = load ptr, ptr %2, align 4
  %52 = getelementptr inbounds %struct.dsa_port, ptr %6, i32 0, i32 14
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %50
  %56 = load ptr, ptr %53, align 4
  br label %57

57:                                               ; preds = %55, %50
  %58 = phi ptr [ %56, %55 ], [ null, %50 ]
  %59 = icmp eq ptr %58, %51
  br i1 %59, label %60, label %116

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.switchdev_attr, ptr %2, i32 0, i32 5
  %62 = load i32, ptr %61, align 4
  %63 = tail call i32 @dsa_port_ageing_time(ptr noundef %6, i32 noundef %62) #19
  br label %116

64:                                               ; preds = %10
  %65 = load ptr, ptr %2, align 4
  %66 = getelementptr inbounds %struct.dsa_port, ptr %6, i32 0, i32 14
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %79, label %69

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.dsa_port, ptr %6, i32 0, i32 18
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %79

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.dsa_port, ptr %6, i32 0, i32 19
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = load ptr, ptr %6, align 4
  br label %79

79:                                               ; preds = %77, %73, %69, %64
  %80 = phi ptr [ %78, %77 ], [ null, %64 ], [ %71, %69 ], [ %75, %73 ]
  %81 = icmp eq ptr %80, %65
  br i1 %81, label %82, label %116

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.switchdev_attr, ptr %2, i32 0, i32 5
  %84 = load i32, ptr %83, align 4
  %85 = insertvalue [2 x i32] undef, i32 %84, 0
  %86 = getelementptr inbounds %struct.switchdev_attr, ptr %2, i32 0, i32 5, i32 0, i32 1
  %87 = load i32, ptr %86, align 4
  %88 = insertvalue [2 x i32] %85, i32 %87, 1
  %89 = tail call i32 @dsa_port_pre_bridge_flags(ptr noundef %6, [2 x i32] %88, ptr noundef %3) #19
  br label %116

90:                                               ; preds = %10
  %91 = load ptr, ptr %2, align 4
  %92 = getelementptr inbounds %struct.dsa_port, ptr %6, i32 0, i32 14
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %105, label %95

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.dsa_port, ptr %6, i32 0, i32 18
  %97 = load ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %105

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.dsa_port, ptr %6, i32 0, i32 19
  %101 = load ptr, ptr %100, align 4
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %105

103:                                              ; preds = %99
  %104 = load ptr, ptr %6, align 4
  br label %105

105:                                              ; preds = %103, %99, %95, %90
  %106 = phi ptr [ %104, %103 ], [ null, %90 ], [ %97, %95 ], [ %101, %99 ]
  %107 = icmp eq ptr %106, %91
  br i1 %107, label %108, label %116

108:                                              ; preds = %105
  %109 = getelementptr inbounds %struct.switchdev_attr, ptr %2, i32 0, i32 5
  %110 = load i32, ptr %109, align 4
  %111 = insertvalue [2 x i32] undef, i32 %110, 0
  %112 = getelementptr inbounds %struct.switchdev_attr, ptr %2, i32 0, i32 5, i32 0, i32 1
  %113 = load i32, ptr %112, align 4
  %114 = insertvalue [2 x i32] %111, i32 %113, 1
  %115 = tail call i32 @dsa_port_bridge_flags(ptr noundef %6, [2 x i32] %114, ptr noundef %3) #19
  br label %116

116:                                              ; preds = %108, %105, %82, %79, %60, %57, %45, %42, %31, %28, %10, %4
  %117 = phi i32 [ 0, %4 ], [ -95, %28 ], [ -95, %42 ], [ -95, %57 ], [ -95, %79 ], [ -95, %105 ], [ %115, %108 ], [ %89, %82 ], [ %63, %60 ], [ %49, %45 ], [ %34, %31 ], [ -95, %10 ]
  ret i32 %117
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @switchdev_handle_fdb_event_to_device(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal zeroext i1 @dsa_foreign_dev_check(ptr nocapture noundef readonly %0, ptr noundef readonly %1) #17 {
  %3 = getelementptr i8, ptr %0, i32 1416
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dsa_port, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dsa_switch, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 15
  %10 = load i64, ptr %9, align 16
  %11 = and i64 %10, 2
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %28, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.dsa_switch_tree, ptr %8, i32 0, i32 1
  br label %15

15:                                               ; preds = %25, %13
  %16 = phi ptr [ %14, %13 ], [ %17, %25 ]
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %14
  br i1 %18, label %55, label %19

19:                                               ; preds = %15
  %20 = getelementptr i8, ptr %17, i32 -228
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr %21, align 4
  br label %25

25:                                               ; preds = %23, %19
  %26 = phi ptr [ %24, %23 ], [ null, %19 ]
  %27 = icmp eq ptr %26, %1
  br i1 %27, label %55, label %15

28:                                               ; preds = %2
  %29 = and i64 %10, 512
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %55, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.dsa_switch_tree, ptr %8, i32 0, i32 1
  br label %33

33:                                               ; preds = %52, %31
  %34 = phi ptr [ %32, %31 ], [ %35, %52 ]
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, %32
  br i1 %36, label %55, label %37

37:                                               ; preds = %33
  %38 = getelementptr i8, ptr %35, i32 -280
  %39 = getelementptr i8, ptr %35, i32 -228
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %52, label %42

42:                                               ; preds = %37
  %43 = getelementptr i8, ptr %35, i32 -8
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = getelementptr i8, ptr %35, i32 -4
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load ptr, ptr %38, align 4
  br label %52

52:                                               ; preds = %50, %46, %42, %37
  %53 = phi ptr [ %51, %50 ], [ null, %37 ], [ %44, %42 ], [ %48, %46 ]
  %54 = icmp eq ptr %53, %1
  br i1 %54, label %55, label %33

55:                                               ; preds = %52, %33, %28, %25, %15
  %56 = phi i1 [ true, %28 ], [ %36, %33 ], [ %36, %52 ], [ %18, %15 ], [ %18, %25 ]
  ret i1 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsa_slave_fdb_event(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2, ptr noundef readnone %3, ptr nocapture noundef readonly %4) #1 {
  %6 = getelementptr i8, ptr %0, i32 1416
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %4, i32 0, i32 3
  %9 = load i8, ptr %8, align 2
  %10 = getelementptr inbounds %struct.dsa_port, ptr %7, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %3, null
  %13 = icmp eq ptr %7, %3
  %14 = select i1 %12, i1 true, i1 %13
  br i1 %14, label %15, label %118

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.dsa_switch, ptr %11, i32 0, i32 8
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.dsa_switch_ops, ptr %17, i32 0, i32 54
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %118, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.dsa_switch_ops, ptr %17, i32 0, i32 55
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %118, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 16
  %27 = load ptr, ptr %26, align 8
  %28 = icmp eq ptr %27, @dsa_slave_netdev_ops
  %29 = and i8 %9, 3
  %30 = icmp eq i8 %29, 0
  %31 = select i1 %28, i1 %30, i1 false
  br i1 %31, label %118, label %32

32:                                               ; preds = %25
  br i1 %30, label %33, label %38

33:                                               ; preds = %32
  %34 = getelementptr inbounds %struct.dsa_switch, ptr %11, i32 0, i32 3
  %35 = load i16, ptr %34, align 4
  %36 = and i16 %35, 32
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %118, label %38

38:                                               ; preds = %33, %32
  %39 = getelementptr inbounds %struct.dsa_switch, ptr %11, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 15
  %42 = load i64, ptr %41, align 16
  %43 = and i64 %42, 2
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %60, label %45

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.dsa_switch_tree, ptr %40, i32 0, i32 1
  br label %47

47:                                               ; preds = %57, %45
  %48 = phi ptr [ %46, %45 ], [ %49, %57 ]
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, %46
  br i1 %50, label %87, label %51

51:                                               ; preds = %47
  %52 = getelementptr i8, ptr %49, i32 -228
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %51
  %56 = load ptr, ptr %53, align 4
  br label %57

57:                                               ; preds = %55, %51
  %58 = phi ptr [ %56, %55 ], [ null, %51 ]
  %59 = icmp eq ptr %58, %1
  br i1 %59, label %87, label %47

60:                                               ; preds = %38
  %61 = and i64 %42, 512
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %87, label %63

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.dsa_switch_tree, ptr %40, i32 0, i32 1
  br label %65

65:                                               ; preds = %84, %63
  %66 = phi ptr [ %64, %63 ], [ %67, %84 ]
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, %64
  br i1 %68, label %87, label %69

69:                                               ; preds = %65
  %70 = getelementptr i8, ptr %67, i32 -280
  %71 = getelementptr i8, ptr %67, i32 -228
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %84, label %74

74:                                               ; preds = %69
  %75 = getelementptr i8, ptr %67, i32 -8
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %84

78:                                               ; preds = %74
  %79 = getelementptr i8, ptr %67, i32 -4
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  %83 = load ptr, ptr %70, align 4
  br label %84

84:                                               ; preds = %82, %78, %74, %69
  %85 = phi ptr [ %83, %82 ], [ null, %69 ], [ %76, %74 ], [ %80, %78 ]
  %86 = icmp eq ptr %85, %1
  br i1 %86, label %87, label %65

87:                                               ; preds = %84, %65, %60, %57, %47
  %88 = phi i1 [ true, %60 ], [ %68, %84 ], [ %68, %65 ], [ %50, %57 ], [ %50, %47 ]
  %89 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %90 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %89, i32 noundef 2848, i32 noundef 44) #20
  %91 = icmp eq ptr %90, null
  br i1 %91, label %118, label %92

92:                                               ; preds = %87
  %93 = and i8 %9, 2
  %94 = icmp ne i8 %93, 0
  %95 = select i1 %88, i1 true, i1 %94
  %96 = getelementptr inbounds %struct.dsa_switchdev_event_work, ptr %90, i32 0, i32 3
  store i32 -32, ptr %96, align 4
  %97 = getelementptr inbounds %struct.dsa_switchdev_event_work, ptr %90, i32 0, i32 3, i32 1
  store volatile ptr %97, ptr %97, align 8
  %98 = getelementptr inbounds %struct.dsa_switchdev_event_work, ptr %90, i32 0, i32 3, i32 1, i32 1
  store ptr %97, ptr %98, align 4
  %99 = getelementptr inbounds %struct.dsa_switchdev_event_work, ptr %90, i32 0, i32 3, i32 2
  store ptr @dsa_slave_switchdev_event_work, ptr %99, align 8
  store ptr %11, ptr %90, align 8
  %100 = getelementptr inbounds %struct.dsa_port, ptr %7, i32 0, i32 5
  %101 = load i32, ptr %100, align 4
  %102 = getelementptr inbounds %struct.dsa_switchdev_event_work, ptr %90, i32 0, i32 1
  store i32 %101, ptr %102, align 4
  %103 = getelementptr inbounds %struct.dsa_switchdev_event_work, ptr %90, i32 0, i32 4
  store i32 %2, ptr %103, align 4
  %104 = getelementptr inbounds %struct.dsa_switchdev_event_work, ptr %90, i32 0, i32 2
  store ptr %0, ptr %104, align 8
  %105 = getelementptr inbounds %struct.dsa_switchdev_event_work, ptr %90, i32 0, i32 5
  %106 = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %4, i32 0, i32 1
  %107 = load ptr, ptr %106, align 4
  %108 = load i32, ptr %107, align 4
  store i32 %108, ptr %105, align 8
  %109 = getelementptr i8, ptr %107, i32 4
  %110 = load i16, ptr %109, align 2
  %111 = getelementptr %struct.dsa_switchdev_event_work, ptr %90, i32 0, i32 5, i32 4
  store i16 %110, ptr %111, align 4
  %112 = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %4, i32 0, i32 2
  %113 = load i16, ptr %112, align 4
  %114 = getelementptr inbounds %struct.dsa_switchdev_event_work, ptr %90, i32 0, i32 6
  store i16 %113, ptr %114, align 2
  %115 = getelementptr inbounds %struct.dsa_switchdev_event_work, ptr %90, i32 0, i32 7
  %116 = zext i1 %95 to i8
  store i8 %116, ptr %115, align 8
  %117 = tail call zeroext i1 @dsa_schedule_work(ptr noundef %96) #19
  br label %118

118:                                              ; preds = %92, %87, %33, %25, %21, %15, %5
  %119 = phi i32 [ 0, %92 ], [ 0, %5 ], [ -95, %21 ], [ -95, %15 ], [ 0, %33 ], [ -12, %87 ], [ 0, %25 ]
  ret i32 %119
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_port_set_state(ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_port_vlan_filtering(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_port_ageing_time(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_port_pre_bridge_flags(ptr noundef, [2 x i32], ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_port_bridge_flags(ptr noundef, [2 x i32], ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dsa_slave_switchdev_event_work(ptr noundef %0) #1 {
  %2 = alloca %struct.switchdev_notifier_fdb_info, align 4
  %3 = getelementptr i8, ptr %0, i32 -12
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 -8
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dsa_switch, ptr %4, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dsa_switch_tree, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %9
  br i1 %11, label %26, label %12

12:                                               ; preds = %21, %1
  %13 = phi ptr [ %22, %21 ], [ %10, %1 ]
  %14 = getelementptr i8, ptr %13, i32 -264
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %4
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = getelementptr i8, ptr %13, i32 -260
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, %6
  br i1 %20, label %24, label %21

21:                                               ; preds = %17, %12
  %22 = load ptr, ptr %13, align 4
  %23 = icmp eq ptr %22, %9
  br i1 %23, label %26, label %12

24:                                               ; preds = %17
  %25 = getelementptr i8, ptr %13, i32 -280
  br label %26

26:                                               ; preds = %24, %21, %1
  %27 = phi ptr [ %25, %24 ], [ null, %1 ], [ null, %21 ]
  %28 = getelementptr i8, ptr %0, i32 16
  %29 = load i32, ptr %28, align 4
  switch i32 %29, label %131 [
    i32 3, label %30
    i32 4, label %109
  ]

30:                                               ; preds = %26
  %31 = getelementptr i8, ptr %0, i32 28
  %32 = load i8, ptr %31, align 4, !range !20
  %33 = icmp eq i8 %32, 0
  %34 = getelementptr i8, ptr %0, i32 20
  %35 = getelementptr i8, ptr %0, i32 26
  %36 = load i16, ptr %35, align 2
  br i1 %33, label %39, label %37

37:                                               ; preds = %30
  %38 = tail call i32 @dsa_port_host_fdb_add(ptr noundef %27, ptr noundef %34, i16 noundef zeroext %36) #19
  br label %41

39:                                               ; preds = %30
  %40 = tail call i32 @dsa_port_fdb_add(ptr noundef %27, ptr noundef %34, i16 noundef zeroext %36) #19
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %41
  %45 = load ptr, ptr %4, align 4
  %46 = getelementptr inbounds %struct.dsa_port, ptr %27, i32 0, i32 5
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr i8, ptr %0, i32 20
  %49 = getelementptr i8, ptr %0, i32 26
  %50 = load i16, ptr %49, align 2
  %51 = zext i16 %50 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.28, i32 noundef %47, ptr noundef %48, i32 noundef %51, i32 noundef %42) #23
  br label %131

52:                                               ; preds = %41
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #19
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false) #19
  %53 = load ptr, ptr %3, align 4
  %54 = load i32, ptr %5, align 4
  %55 = getelementptr inbounds %struct.dsa_switch, ptr %53, i32 0, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.dsa_switch_tree, ptr %56, i32 0, i32 1
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, %57
  br i1 %59, label %74, label %60

60:                                               ; preds = %69, %52
  %61 = phi ptr [ %70, %69 ], [ %58, %52 ]
  %62 = getelementptr i8, ptr %61, i32 -264
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, %53
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = getelementptr i8, ptr %61, i32 -260
  %67 = load i32, ptr %66, align 4
  %68 = icmp eq i32 %67, %54
  br i1 %68, label %72, label %69

69:                                               ; preds = %65, %60
  %70 = load ptr, ptr %61, align 4
  %71 = icmp eq ptr %70, %57
  br i1 %71, label %74, label %60

72:                                               ; preds = %65
  %73 = getelementptr i8, ptr %61, i32 -280
  br label %74

74:                                               ; preds = %72, %69, %52
  %75 = phi ptr [ %73, %72 ], [ null, %52 ], [ null, %69 ]
  %76 = getelementptr inbounds %struct.dsa_port, ptr %75, i32 0, i32 6
  %77 = load i32, ptr %76, align 4
  %78 = icmp eq i32 %77, 3
  br i1 %78, label %79, label %108

79:                                               ; preds = %74
  %80 = getelementptr i8, ptr %0, i32 20
  %81 = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %2, i32 0, i32 1
  store ptr %80, ptr %81, align 4
  %82 = getelementptr i8, ptr %0, i32 26
  %83 = load i16, ptr %82, align 2
  %84 = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %2, i32 0, i32 2
  store i16 %83, ptr %84, align 4
  %85 = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %2, i32 0, i32 3
  store i8 4, ptr %85, align 2
  %86 = load ptr, ptr %55, align 4
  %87 = getelementptr inbounds %struct.dsa_switch_tree, ptr %86, i32 0, i32 1
  %88 = load ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, %87
  br i1 %89, label %104, label %90

90:                                               ; preds = %99, %79
  %91 = phi ptr [ %100, %99 ], [ %88, %79 ]
  %92 = getelementptr i8, ptr %91, i32 -264
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, %53
  br i1 %94, label %95, label %99

95:                                               ; preds = %90
  %96 = getelementptr i8, ptr %91, i32 -260
  %97 = load i32, ptr %96, align 4
  %98 = icmp eq i32 %97, %54
  br i1 %98, label %102, label %99

99:                                               ; preds = %95, %90
  %100 = load ptr, ptr %91, align 4
  %101 = icmp eq ptr %100, %87
  br i1 %101, label %104, label %90

102:                                              ; preds = %95
  %103 = getelementptr i8, ptr %91, i32 -280
  br label %104

104:                                              ; preds = %102, %99, %79
  %105 = phi ptr [ %103, %102 ], [ null, %79 ], [ null, %99 ]
  %106 = load ptr, ptr %105, align 4
  %107 = call i32 @call_switchdev_notifiers(i32 noundef 5, ptr noundef %106, ptr noundef nonnull %2, ptr noundef null) #19
  br label %108

108:                                              ; preds = %104, %74
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #19
  br label %131

109:                                              ; preds = %26
  %110 = getelementptr i8, ptr %0, i32 28
  %111 = load i8, ptr %110, align 4, !range !20
  %112 = icmp eq i8 %111, 0
  %113 = getelementptr i8, ptr %0, i32 20
  %114 = getelementptr i8, ptr %0, i32 26
  %115 = load i16, ptr %114, align 2
  br i1 %112, label %118, label %116

116:                                              ; preds = %109
  %117 = tail call i32 @dsa_port_host_fdb_del(ptr noundef %27, ptr noundef %113, i16 noundef zeroext %115) #19
  br label %120

118:                                              ; preds = %109
  %119 = tail call i32 @dsa_port_fdb_del(ptr noundef %27, ptr noundef %113, i16 noundef zeroext %115) #19
  br label %120

120:                                              ; preds = %118, %116
  %121 = phi i32 [ %117, %116 ], [ %119, %118 ]
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %131, label %123

123:                                              ; preds = %120
  %124 = load ptr, ptr %4, align 4
  %125 = getelementptr inbounds %struct.dsa_port, ptr %27, i32 0, i32 5
  %126 = load i32, ptr %125, align 4
  %127 = getelementptr i8, ptr %0, i32 20
  %128 = getelementptr i8, ptr %0, i32 26
  %129 = load i16, ptr %128, align 2
  %130 = zext i16 %129 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %124, ptr noundef nonnull @.str.29, i32 noundef %126, ptr noundef %127, i32 noundef %130, i32 noundef %121) #23
  br label %131

131:                                              ; preds = %123, %120, %108, %44, %26
  call void @kfree(ptr noundef %3) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dsa_schedule_work(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_port_host_fdb_add(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_port_fdb_add(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_port_host_fdb_del(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_port_fdb_del(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @call_switchdev_notifiers(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @switchdev_handle_port_obj_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsa_slave_port_obj_add(ptr nocapture noundef readonly %0, ptr noundef readnone %1, ptr noundef %2, ptr noundef %3) #1 {
  %5 = alloca %struct.switchdev_obj_port_vlan, align 4
  %6 = getelementptr i8, ptr %0, i32 1416
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %1, null
  %9 = icmp eq ptr %7, %1
  %10 = select i1 %8, i1 true, i1 %9
  br i1 %10, label %11, label %110

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.switchdev_obj, ptr %2, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  switch i32 %13, label %110 [
    i32 2, label %14
    i32 3, label %35
    i32 1, label %48
    i32 4, label %84
    i32 6, label %97
  ]

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.switchdev_obj, ptr %2, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.dsa_port, ptr %7, i32 0, i32 14
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %30, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.dsa_port, ptr %7, i32 0, i32 18
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.dsa_port, ptr %7, i32 0, i32 19
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load ptr, ptr %7, align 4
  br label %30

30:                                               ; preds = %28, %24, %20, %14
  %31 = phi ptr [ %29, %28 ], [ null, %14 ], [ %22, %20 ], [ %26, %24 ]
  %32 = icmp eq ptr %31, %16
  br i1 %32, label %33, label %110

33:                                               ; preds = %30
  %34 = tail call i32 @dsa_port_mdb_add(ptr noundef %7, ptr noundef %2) #19
  br label %110

35:                                               ; preds = %11
  %36 = getelementptr inbounds %struct.switchdev_obj, ptr %2, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.dsa_port, ptr %7, i32 0, i32 14
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %35
  %42 = load ptr, ptr %39, align 4
  br label %43

43:                                               ; preds = %41, %35
  %44 = phi ptr [ %42, %41 ], [ null, %35 ]
  %45 = icmp eq ptr %44, %37
  br i1 %45, label %46, label %110

46:                                               ; preds = %43
  %47 = tail call i32 @dsa_port_host_mdb_add(ptr noundef %7, ptr noundef %2) #19
  br label %110

48:                                               ; preds = %11
  %49 = getelementptr inbounds %struct.switchdev_obj, ptr %2, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.dsa_port, ptr %7, i32 0, i32 14
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %64, label %54

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.dsa_port, ptr %7, i32 0, i32 18
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %64

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.dsa_port, ptr %7, i32 0, i32 19
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load ptr, ptr %7, align 4
  br label %64

64:                                               ; preds = %62, %58, %54, %48
  %65 = phi ptr [ %63, %62 ], [ null, %48 ], [ %56, %54 ], [ %60, %58 ]
  %66 = icmp eq ptr %65, %50
  br i1 %66, label %67, label %110

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.dsa_port, ptr %7, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #19
  %69 = tail call zeroext i1 @dsa_port_skip_vlan_configuration(ptr noundef %7) #19
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @dsa_slave_vlan_add.__msg) #19
  %71 = icmp eq ptr %3, null
  br i1 %71, label %82, label %72

72:                                               ; preds = %70
  store ptr @dsa_slave_vlan_add.__msg, ptr %3, align 4
  br label %82

73:                                               ; preds = %67
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %5, ptr noundef align 4 dereferenceable(32) %2, i32 32, i1 false) #19
  %74 = call i32 @dsa_port_vlan_add(ptr noundef %7, ptr noundef nonnull %5, ptr noundef %3) #19
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.switchdev_obj_port_vlan, ptr %5, i32 0, i32 1
  %78 = load i16, ptr %77, align 4
  %79 = and i16 %78, -3
  store i16 %79, ptr %77, align 4
  %80 = load ptr, ptr %68, align 4
  %81 = call i32 @dsa_port_vlan_add(ptr noundef %80, ptr noundef nonnull %5, ptr noundef %3) #19
  br label %82

82:                                               ; preds = %76, %73, %72, %70
  %83 = phi i32 [ 0, %72 ], [ 0, %70 ], [ %74, %73 ], [ %81, %76 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  br label %110

84:                                               ; preds = %11
  %85 = getelementptr inbounds %struct.switchdev_obj, ptr %2, i32 0, i32 1
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.dsa_port, ptr %7, i32 0, i32 14
  %88 = load ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %92, label %90

90:                                               ; preds = %84
  %91 = load ptr, ptr %88, align 4
  br label %92

92:                                               ; preds = %90, %84
  %93 = phi ptr [ %91, %90 ], [ null, %84 ]
  %94 = icmp eq ptr %93, %86
  br i1 %94, label %95, label %110

95:                                               ; preds = %92
  %96 = tail call i32 @dsa_port_mrp_add(ptr noundef %7, ptr noundef %2) #19
  br label %110

97:                                               ; preds = %11
  %98 = getelementptr inbounds %struct.switchdev_obj, ptr %2, i32 0, i32 1
  %99 = load ptr, ptr %98, align 4
  %100 = getelementptr inbounds %struct.dsa_port, ptr %7, i32 0, i32 14
  %101 = load ptr, ptr %100, align 4
  %102 = icmp eq ptr %101, null
  br i1 %102, label %105, label %103

103:                                              ; preds = %97
  %104 = load ptr, ptr %101, align 4
  br label %105

105:                                              ; preds = %103, %97
  %106 = phi ptr [ %104, %103 ], [ null, %97 ]
  %107 = icmp eq ptr %106, %99
  br i1 %107, label %108, label %110

108:                                              ; preds = %105
  %109 = tail call i32 @dsa_port_mrp_add_ring_role(ptr noundef %7, ptr noundef %2) #19
  br label %110

110:                                              ; preds = %108, %105, %95, %92, %82, %64, %46, %43, %33, %30, %11, %4
  %111 = phi i32 [ 0, %4 ], [ -95, %30 ], [ -95, %43 ], [ -95, %64 ], [ -95, %92 ], [ -95, %105 ], [ %109, %108 ], [ %96, %95 ], [ %83, %82 ], [ %47, %46 ], [ %34, %33 ], [ -95, %11 ]
  ret i32 %111
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @switchdev_handle_port_obj_del(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsa_slave_port_obj_del(ptr nocapture noundef readonly %0, ptr noundef readnone %1, ptr noundef %2) #1 {
  %4 = getelementptr i8, ptr %0, i32 1416
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %1, null
  %7 = icmp eq ptr %5, %1
  %8 = select i1 %6, i1 true, i1 %7
  br i1 %8, label %9, label %95

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.switchdev_obj, ptr %2, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  switch i32 %11, label %95 [
    i32 2, label %12
    i32 3, label %33
    i32 1, label %46
    i32 4, label %69
    i32 6, label %82
  ]

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.switchdev_obj, ptr %2, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.dsa_port, ptr %5, i32 0, i32 14
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %28, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.dsa_port, ptr %5, i32 0, i32 18
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.dsa_port, ptr %5, i32 0, i32 19
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load ptr, ptr %5, align 4
  br label %28

28:                                               ; preds = %26, %22, %18, %12
  %29 = phi ptr [ %27, %26 ], [ null, %12 ], [ %20, %18 ], [ %24, %22 ]
  %30 = icmp eq ptr %29, %14
  br i1 %30, label %31, label %95

31:                                               ; preds = %28
  %32 = tail call i32 @dsa_port_mdb_del(ptr noundef %5, ptr noundef %2) #19
  br label %95

33:                                               ; preds = %9
  %34 = getelementptr inbounds %struct.switchdev_obj, ptr %2, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.dsa_port, ptr %5, i32 0, i32 14
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %33
  %40 = load ptr, ptr %37, align 4
  br label %41

41:                                               ; preds = %39, %33
  %42 = phi ptr [ %40, %39 ], [ null, %33 ]
  %43 = icmp eq ptr %42, %35
  br i1 %43, label %44, label %95

44:                                               ; preds = %41
  %45 = tail call i32 @dsa_port_host_mdb_del(ptr noundef %5, ptr noundef %2) #19
  br label %95

46:                                               ; preds = %9
  %47 = getelementptr inbounds %struct.switchdev_obj, ptr %2, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.dsa_port, ptr %5, i32 0, i32 14
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %62, label %52

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.dsa_port, ptr %5, i32 0, i32 18
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.dsa_port, ptr %5, i32 0, i32 19
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load ptr, ptr %5, align 4
  br label %62

62:                                               ; preds = %60, %56, %52, %46
  %63 = phi ptr [ %61, %60 ], [ null, %46 ], [ %54, %52 ], [ %58, %56 ]
  %64 = icmp eq ptr %63, %48
  br i1 %64, label %65, label %95

65:                                               ; preds = %62
  %66 = tail call zeroext i1 @dsa_port_skip_vlan_configuration(ptr noundef %5) #19
  br i1 %66, label %95, label %67

67:                                               ; preds = %65
  %68 = tail call i32 @dsa_port_vlan_del(ptr noundef %5, ptr noundef %2) #19
  br label %95

69:                                               ; preds = %9
  %70 = getelementptr inbounds %struct.switchdev_obj, ptr %2, i32 0, i32 1
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.dsa_port, ptr %5, i32 0, i32 14
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %77, label %75

75:                                               ; preds = %69
  %76 = load ptr, ptr %73, align 4
  br label %77

77:                                               ; preds = %75, %69
  %78 = phi ptr [ %76, %75 ], [ null, %69 ]
  %79 = icmp eq ptr %78, %71
  br i1 %79, label %80, label %95

80:                                               ; preds = %77
  %81 = tail call i32 @dsa_port_mrp_del(ptr noundef %5, ptr noundef %2) #19
  br label %95

82:                                               ; preds = %9
  %83 = getelementptr inbounds %struct.switchdev_obj, ptr %2, i32 0, i32 1
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr inbounds %struct.dsa_port, ptr %5, i32 0, i32 14
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %90, label %88

88:                                               ; preds = %82
  %89 = load ptr, ptr %86, align 4
  br label %90

90:                                               ; preds = %88, %82
  %91 = phi ptr [ %89, %88 ], [ null, %82 ]
  %92 = icmp eq ptr %91, %84
  br i1 %92, label %93, label %95

93:                                               ; preds = %90
  %94 = tail call i32 @dsa_port_mrp_del_ring_role(ptr noundef %5, ptr noundef %2) #19
  br label %95

95:                                               ; preds = %93, %90, %80, %77, %67, %65, %62, %44, %41, %31, %28, %9, %3
  %96 = phi i32 [ 0, %3 ], [ -95, %28 ], [ -95, %41 ], [ -95, %62 ], [ -95, %77 ], [ -95, %90 ], [ %94, %93 ], [ %81, %80 ], [ %45, %44 ], [ %32, %31 ], [ -95, %9 ], [ 0, %65 ], [ %68, %67 ]
  ret i32 %96
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_port_mdb_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_port_host_mdb_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_port_mrp_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_port_mrp_add_ring_role(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dsa_port_skip_vlan_configuration(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_port_mdb_del(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_port_host_mdb_del(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_port_mrp_del(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_port_mrp_del_ring_role(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsa_slave_netdevice_event(ptr nocapture noundef readnone %0, i32 noundef %1, ptr noundef %2) #1 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca %struct.list_head, align 8
  %7 = load ptr, ptr %2, align 4
  switch i32 %1, label %226 [
    i32 26, label %8
    i32 21, label %130
    i32 27, label %176
    i32 10, label %190
  ]

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 16
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, @dsa_slave_netdev_ops
  br i1 %11, label %18, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 15
  %14 = load i64, ptr %13, align 16
  %15 = and i64 %14, 1
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %69, label %17

17:                                               ; preds = %12
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/if_vlan.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 248, 0\0A.popsection", ""() #19, !srcloc !21
  unreachable

18:                                               ; preds = %8
  %19 = getelementptr i8, ptr %7, i32 1416
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.dsa_port, ptr %20, i32 0, i32 4
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.dsa_switch, ptr %22, i32 0, i32 8
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.dsa_switch_ops, ptr %24, i32 0, i32 43
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %39, label %28

28:                                               ; preds = %18
  %29 = getelementptr inbounds %struct.dsa_port, ptr %20, i32 0, i32 5
  %30 = load i32, ptr %29, align 4
  %31 = tail call i32 %26(ptr noundef %22, i32 noundef %30, ptr noundef %2) #19
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = sub i32 1, %31
  %35 = or i32 %34, 32768
  br label %226

36:                                               ; preds = %28
  %37 = load ptr, ptr %9, align 8
  %38 = icmp eq ptr %37, @dsa_slave_netdev_ops
  br i1 %38, label %39, label %69

39:                                               ; preds = %36, %18
  %40 = getelementptr i8, ptr %7, i32 1416
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.netdev_notifier_changeupper_info, ptr %2, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.net_device, ptr %43, i32 0, i32 15
  %45 = load i64, ptr %44, align 16
  %46 = and i64 %45, 2
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %39
  %49 = getelementptr inbounds %struct.netdev_notifier_changeupper_info, ptr %2, i32 0, i32 3
  %50 = load i8, ptr %49, align 1, !range !20
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  tail call void @dsa_port_pre_bridge_leave(ptr noundef %41, ptr noundef %43) #19
  br label %226

53:                                               ; preds = %48, %39
  %54 = getelementptr inbounds %struct.net_device, ptr %43, i32 0, i32 14
  %55 = load i32, ptr %54, align 8
  %56 = and i32 %55, 1024
  %57 = icmp ne i32 %56, 0
  %58 = and i64 %45, 4
  %59 = icmp ne i64 %58, 0
  %60 = select i1 %57, i1 %59, i1 false
  %61 = and i64 %45, 4194304
  %62 = icmp ne i64 %61, 0
  %63 = select i1 %60, i1 true, i1 %62
  br i1 %63, label %64, label %226

64:                                               ; preds = %53
  %65 = getelementptr inbounds %struct.netdev_notifier_changeupper_info, ptr %2, i32 0, i32 3
  %66 = load i8, ptr %65, align 1, !range !20
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %68, label %226

68:                                               ; preds = %64
  tail call void @dsa_port_pre_lag_leave(ptr noundef %41, ptr noundef %43) #19
  br label %226

69:                                               ; preds = %36, %12
  %70 = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 14
  %71 = load i32, ptr %70, align 8
  %72 = and i32 %71, 1024
  %73 = icmp ne i32 %72, 0
  %74 = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 15
  %75 = load i64, ptr %74, align 16
  %76 = and i64 %75, 4
  %77 = icmp ne i64 %76, 0
  %78 = select i1 %73, i1 %77, i1 false
  %79 = and i64 %75, 4194304
  %80 = icmp ne i64 %79, 0
  %81 = select i1 %78, i1 true, i1 %80
  br i1 %81, label %82, label %226

82:                                               ; preds = %69
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #19
  %83 = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 13, i32 1
  %84 = load ptr, ptr %83, align 8
  store ptr %84, ptr %5, align 4
  %85 = call ptr @netdev_lower_get_next(ptr noundef %7, ptr noundef nonnull %5) #19
  %86 = icmp eq ptr %85, null
  br i1 %86, label %129, label %87

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.netdev_notifier_changeupper_info, ptr %2, i32 0, i32 1
  %89 = getelementptr inbounds %struct.netdev_notifier_changeupper_info, ptr %2, i32 0, i32 3
  br label %90

90:                                               ; preds = %126, %87
  %91 = phi ptr [ %85, %87 ], [ %127, %126 ]
  %92 = getelementptr inbounds %struct.net_device, ptr %91, i32 0, i32 16
  %93 = load ptr, ptr %92, align 8
  %94 = icmp eq ptr %93, @dsa_slave_netdev_ops
  br i1 %94, label %95, label %126

95:                                               ; preds = %90
  %96 = getelementptr i8, ptr %91, i32 1416
  %97 = load ptr, ptr %96, align 4
  %98 = getelementptr inbounds %struct.dsa_port, ptr %97, i32 0, i32 18
  %99 = load ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %126, label %101

101:                                              ; preds = %95
  %102 = load ptr, ptr %88, align 4
  %103 = getelementptr inbounds %struct.net_device, ptr %102, i32 0, i32 15
  %104 = load i64, ptr %103, align 16
  %105 = and i64 %104, 2
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %111, label %107

107:                                              ; preds = %101
  %108 = load i8, ptr %89, align 1, !range !20
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %107
  call void @dsa_port_pre_bridge_leave(ptr noundef %97, ptr noundef %102) #19
  br label %126

111:                                              ; preds = %107, %101
  %112 = getelementptr inbounds %struct.net_device, ptr %102, i32 0, i32 14
  %113 = load i32, ptr %112, align 8
  %114 = and i32 %113, 1024
  %115 = icmp ne i32 %114, 0
  %116 = and i64 %104, 4
  %117 = icmp ne i64 %116, 0
  %118 = select i1 %115, i1 %117, i1 false
  %119 = and i64 %104, 4194304
  %120 = icmp ne i64 %119, 0
  %121 = select i1 %118, i1 true, i1 %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %111
  %123 = load i8, ptr %89, align 1, !range !20
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %122
  call void @dsa_port_pre_lag_leave(ptr noundef %97, ptr noundef %102) #19
  br label %126

126:                                              ; preds = %125, %122, %111, %110, %95, %90
  %127 = call ptr @netdev_lower_get_next(ptr noundef %7, ptr noundef nonnull %5) #19
  %128 = icmp eq ptr %127, null
  br i1 %128, label %129, label %90

129:                                              ; preds = %126, %82
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #19
  br label %226

130:                                              ; preds = %3
  %131 = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 16
  %132 = load ptr, ptr %131, align 8
  %133 = icmp eq ptr %132, @dsa_slave_netdev_ops
  br i1 %133, label %134, label %136

134:                                              ; preds = %130
  %135 = tail call fastcc i32 @dsa_slave_changeupper(ptr noundef %7, ptr noundef %2)
  br label %226

136:                                              ; preds = %130
  %137 = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 14
  %138 = load i32, ptr %137, align 8
  %139 = and i32 %138, 1024
  %140 = icmp ne i32 %139, 0
  %141 = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 15
  %142 = load i64, ptr %141, align 16
  %143 = and i64 %142, 4
  %144 = icmp ne i64 %143, 0
  %145 = select i1 %140, i1 %144, i1 false
  %146 = and i64 %142, 4194304
  %147 = icmp ne i64 %146, 0
  %148 = select i1 %145, i1 true, i1 %147
  br i1 %148, label %149, label %226

149:                                              ; preds = %136
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #19
  %150 = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 13, i32 1
  %151 = load ptr, ptr %150, align 8
  store ptr %151, ptr %4, align 4
  %152 = call ptr @netdev_lower_get_next(ptr noundef %7, ptr noundef nonnull %4) #19
  %153 = icmp eq ptr %152, null
  br i1 %153, label %174, label %154

154:                                              ; preds = %170, %149
  %155 = phi i32 [ %171, %170 ], [ 0, %149 ]
  %156 = phi ptr [ %172, %170 ], [ %152, %149 ]
  %157 = getelementptr inbounds %struct.net_device, ptr %156, i32 0, i32 16
  %158 = load ptr, ptr %157, align 8
  %159 = icmp eq ptr %158, @dsa_slave_netdev_ops
  br i1 %159, label %160, label %170

160:                                              ; preds = %154
  %161 = getelementptr i8, ptr %156, i32 1416
  %162 = load ptr, ptr %161, align 4
  %163 = getelementptr inbounds %struct.dsa_port, ptr %162, i32 0, i32 18
  %164 = load ptr, ptr %163, align 4
  %165 = icmp eq ptr %164, null
  br i1 %165, label %170, label %166

166:                                              ; preds = %160
  %167 = call fastcc i32 @dsa_slave_changeupper(ptr noundef nonnull %156, ptr noundef %2) #19, !range !22
  %168 = and i32 %167, -32769
  %169 = icmp slt i32 %168, 2
  br i1 %169, label %170, label %174

170:                                              ; preds = %166, %160, %154
  %171 = phi i32 [ %167, %166 ], [ %155, %160 ], [ %155, %154 ]
  %172 = call ptr @netdev_lower_get_next(ptr noundef %7, ptr noundef nonnull %4) #19
  %173 = icmp eq ptr %172, null
  br i1 %173, label %174, label %154

174:                                              ; preds = %170, %166, %149
  %175 = phi i32 [ 0, %149 ], [ %171, %170 ], [ %167, %166 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #19
  br label %226

176:                                              ; preds = %3
  %177 = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 16
  %178 = load ptr, ptr %177, align 8
  %179 = icmp eq ptr %178, @dsa_slave_netdev_ops
  br i1 %179, label %180, label %226

180:                                              ; preds = %176
  %181 = getelementptr i8, ptr %7, i32 1416
  %182 = load ptr, ptr %181, align 4
  %183 = getelementptr inbounds %struct.netdev_notifier_changelowerstate_info, ptr %2, i32 0, i32 1
  %184 = load ptr, ptr %183, align 4
  %185 = tail call i32 @dsa_port_lag_change(ptr noundef %182, ptr noundef %184) #19
  %186 = icmp eq i32 %185, 0
  %187 = sub i32 1, %185
  %188 = or i32 %187, 32768
  %189 = select i1 %186, i32 1, i32 %188
  br label %226

190:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  store ptr %6, ptr %6, align 8
  %191 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  store ptr %6, ptr %191, align 4
  %192 = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 67
  %193 = load ptr, ptr %192, align 4
  %194 = icmp eq ptr %193, null
  br i1 %194, label %224, label %195

195:                                              ; preds = %190
  %196 = getelementptr inbounds %struct.dsa_port, ptr %193, i32 0, i32 3
  %197 = load ptr, ptr %196, align 4
  %198 = icmp eq ptr %197, null
  br i1 %198, label %224, label %199

199:                                              ; preds = %195
  %200 = getelementptr inbounds %struct.dsa_port, ptr %193, i32 0, i32 4
  %201 = load ptr, ptr %200, align 4
  %202 = getelementptr inbounds %struct.dsa_switch, ptr %201, i32 0, i32 1
  %203 = load ptr, ptr %202, align 4
  %204 = getelementptr inbounds %struct.dsa_switch_tree, ptr %203, i32 0, i32 1
  %205 = load ptr, ptr %204, align 4
  %206 = icmp eq ptr %205, %204
  br i1 %206, label %223, label %207

207:                                              ; preds = %219, %199
  %208 = phi ptr [ %220, %219 ], [ %6, %199 ]
  %209 = phi ptr [ %221, %219 ], [ %205, %199 ]
  %210 = getelementptr i8, ptr %209, i32 -256
  %211 = load i32, ptr %210, align 4
  %212 = icmp eq i32 %211, 3
  br i1 %212, label %213, label %219

213:                                              ; preds = %207
  %214 = getelementptr i8, ptr %209, i32 -280
  %215 = load ptr, ptr %214, align 4
  %216 = getelementptr inbounds %struct.net_device, ptr %215, i32 0, i32 10
  %217 = getelementptr inbounds %struct.list_head, ptr %208, i32 0, i32 1
  store ptr %216, ptr %217, align 4
  store ptr %208, ptr %216, align 4
  %218 = getelementptr inbounds %struct.net_device, ptr %215, i32 0, i32 10, i32 1
  store ptr %6, ptr %218, align 4
  store volatile ptr %216, ptr %6, align 8
  br label %219

219:                                              ; preds = %213, %207
  %220 = phi ptr [ %208, %207 ], [ %216, %213 ]
  %221 = load ptr, ptr %209, align 4
  %222 = icmp eq ptr %221, %204
  br i1 %222, label %223, label %207

223:                                              ; preds = %219, %199
  call void @dev_close_many(ptr noundef nonnull %6, i1 noundef zeroext true) #19
  br label %224

224:                                              ; preds = %223, %195, %190
  %225 = phi i32 [ 1, %223 ], [ 0, %195 ], [ 0, %190 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  br label %226

226:                                              ; preds = %224, %180, %176, %174, %136, %134, %129, %69, %68, %64, %53, %52, %33, %3
  %227 = phi i32 [ %225, %224 ], [ %135, %134 ], [ %175, %174 ], [ %189, %180 ], [ 0, %176 ], [ 0, %3 ], [ 0, %68 ], [ 0, %64 ], [ 0, %53 ], [ 0, %52 ], [ %35, %33 ], [ 0, %129 ], [ 0, %69 ], [ 0, %136 ]
  ret i32 %227
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dsa_slave_changeupper(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #1 {
  %3 = getelementptr i8, ptr %0, i32 1416
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.netdev_notifier_info, ptr %1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.netdev_notifier_changeupper_info, ptr %1, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 15
  %10 = load i64, ptr %9, align 16
  %11 = and i64 %10, 2
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %27, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.netdev_notifier_changeupper_info, ptr %1, i32 0, i32 3
  %15 = load i8, ptr %14, align 1, !range !20
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %13
  %18 = tail call i32 @dsa_port_bridge_join(ptr noundef %4, ptr noundef %8, ptr noundef %6) #19
  switch i32 %18, label %23 [
    i32 0, label %19
    i32 -95, label %20
  ]

19:                                               ; preds = %17
  tail call fastcc void @dsa_bridge_mtu_normalization(ptr noundef %4)
  br label %57

20:                                               ; preds = %17
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @dsa_slave_changeupper.__msg) #19
  %21 = icmp eq ptr %6, null
  br i1 %21, label %57, label %22

22:                                               ; preds = %20
  store ptr @dsa_slave_changeupper.__msg, ptr %6, align 4
  br label %57

23:                                               ; preds = %17
  %24 = sub i32 1, %18
  %25 = or i32 %24, 32768
  br label %57

26:                                               ; preds = %13
  tail call void @dsa_port_bridge_leave(ptr noundef %4, ptr noundef %8) #19
  br label %57

27:                                               ; preds = %2
  %28 = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 14
  %29 = load i32, ptr %28, align 8
  %30 = and i32 %29, 1024
  %31 = icmp ne i32 %30, 0
  %32 = and i64 %10, 4
  %33 = icmp ne i64 %32, 0
  %34 = select i1 %31, i1 %33, i1 false
  %35 = and i64 %10, 4194304
  %36 = icmp ne i64 %35, 0
  %37 = select i1 %34, i1 true, i1 %36
  br i1 %37, label %38, label %57

38:                                               ; preds = %27
  %39 = getelementptr inbounds %struct.netdev_notifier_changeupper_info, ptr %1, i32 0, i32 3
  %40 = load i8, ptr %39, align 1, !range !20
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %56, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.netdev_notifier_changeupper_info, ptr %1, i32 0, i32 4
  %44 = load ptr, ptr %43, align 4
  %45 = tail call i32 @dsa_port_lag_join(ptr noundef %4, ptr noundef %8, ptr noundef %44, ptr noundef %6) #19
  %46 = icmp eq i32 %45, -95
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load ptr, ptr %5, align 4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @dsa_slave_changeupper.__msg.31) #19
  %49 = icmp eq ptr %48, null
  br i1 %49, label %55, label %50

50:                                               ; preds = %47
  store ptr @dsa_slave_changeupper.__msg.31, ptr %48, align 4
  br label %55

51:                                               ; preds = %42
  %52 = icmp eq i32 %45, 0
  %53 = sub i32 1, %45
  %54 = or i32 %53, 32768
  br i1 %52, label %55, label %57

55:                                               ; preds = %51, %50, %47
  br label %57

56:                                               ; preds = %38
  tail call void @dsa_port_lag_leave(ptr noundef %4, ptr noundef %8) #19
  br label %57

57:                                               ; preds = %56, %55, %51, %27, %26, %23, %22, %20, %19
  %58 = phi i32 [ 1, %26 ], [ 1, %56 ], [ %25, %23 ], [ 1, %55 ], [ %54, %51 ], [ 1, %20 ], [ 1, %22 ], [ 1, %19 ], [ 0, %27 ]
  ret i32 %58
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_port_lag_change(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_close_many(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_port_pre_bridge_leave(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_port_pre_lag_leave(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netdev_lower_get_next(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_port_bridge_join(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_port_bridge_leave(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_port_lag_join(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_port_lag_leave(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #18

attributes #0 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly nofree nounwind willreturn writeonly }
attributes #12 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nounwind readonly }
attributes #16 = { argmemonly nofree nounwind willreturn }
attributes #17 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #18 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #19 = { nounwind }
attributes #20 = { nounwind allocsize(2) }
attributes #21 = { nounwind allocsize(0) }
attributes #22 = { nounwind readonly willreturn }
attributes #23 = { cold nounwind }

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
!9 = !{i64 2153668532}
!10 = !{i64 2153668374}
!11 = !{i64 2153668676}
!12 = !{i64 2149738927}
!13 = !{i64 651974}
!14 = !{i64 2149739226}
!15 = !{i64 2149739527}
!16 = !{!"branch_weights", i32 1, i32 2000}
!17 = !{!"branch_weights", i32 4001, i32 4000000}
!18 = !{!"branch_weights", i32 2000, i32 1}
!19 = !{i64 2153351787, i64 2153352275, i64 2153351824, i64 2153351880, i64 2153351914, i64 2153351938, i64 2153351979, i64 2153352000, i64 2153352028, i64 2153352062}
!20 = !{i8 0, i8 2}
!21 = !{i64 2155643334, i64 2155643822, i64 2155643371, i64 2155643427, i64 2155643461, i64 2155643485, i64 2155643526, i64 2155643547, i64 2155643575, i64 2155643609}
!22 = !{i32 32768, i32 2}
