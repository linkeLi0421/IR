; ModuleID = '/llk/IR/drivers/net/ethernet/intel/e1000e/ethtool.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/e1000e/ethtool.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_stats = type { [32 x i8], i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.108, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.22 }
%union.anon.22 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.23 }
%union.anon.23 = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.ref_tracker_dir = type {}
%struct.possible_net_t = type {}
%union.anon.108 = type { ptr }
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
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, [2 x i8], ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, [4 x i8], i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [11 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [11 x ptr], [11 x ptr], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, [2 x i8], i32, i32, ptr, i32, [7 x i8], [5 x i8] }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%struct.ethtool_regs = type { i32, i32, i32, [0 x i8] }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.ethtool_eeprom = type { i32, i32, i32, i32, [0 x i8] }
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_ringparam = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.e1000_ring = type { ptr, ptr, i32, i32, i32, i16, i16, ptr, ptr, ptr, [21 x i8], i32, i32, ptr, i32, ptr }
%struct.ethtool_pauseparam = type { i32, i32, i32, i32 }
%struct.ethtool_test = type { i32, i32, i32, i32, [0 x i64] }
%struct.e1000_tx_desc = type { i64, %union.anon.121, %union.anon.123 }
%union.anon.121 = type { i32 }
%union.anon.123 = type { i32 }
%struct.e1000_buffer = type { i32, ptr, %union.anon.114 }
%union.anon.114 = type { %struct.anon.115 }
%struct.anon.115 = type { i32, i16, i16, i32, i32, i16 }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.3, [48 x i8], %union.anon.4, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.6, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.3 = type { i64 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { i32, ptr }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.8, i32, i32, i32, i16, i16, %union.anon.10, %union.anon.11, %union.anon.12, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.8 = type { i32 }
%union.anon.10 = type { i32 }
%union.anon.11 = type { i32 }
%union.anon.12 = type { i16 }
%struct.page = type { i32, %union.anon.24, %union.anon.93, %struct.atomic_t }
%union.anon.24 = type { %struct.anon.25 }
%struct.anon.25 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.93 = type { %struct.atomic_t }
%union.e1000_rx_desc_extended = type { %struct.anon.125 }
%struct.anon.125 = type { i64, i64 }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ethtool_rxnfc = type { i32, i32, i64, %struct.ethtool_rx_flow_spec, %union.anon.106, [0 x i32] }
%struct.ethtool_rx_flow_spec = type { i32, %union.ethtool_flow_union, %struct.ethtool_flow_ext, %union.ethtool_flow_union, %struct.ethtool_flow_ext, i64, i32 }
%union.ethtool_flow_union = type { %struct.ethtool_tcpip6_spec, [12 x i8] }
%struct.ethtool_tcpip6_spec = type { [4 x i32], [4 x i32], i16, i16, i8 }
%struct.ethtool_flow_ext = type { [2 x i8], [6 x i8], i16, i16, [2 x i32] }
%union.anon.106 = type { i32 }
%struct.ethtool_ts_info = type { i32, i32, i32, i32, [3 x i32], i32, [3 x i32] }
%struct.ethtool_eee = type { i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.107, i32 }
%struct.anon.107 = type { [3 x i32], [3 x i32], [3 x i32] }
%struct.e1000_adapter = type { %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.work_struct, %struct.work_struct, ptr, [128 x i32], i32, i32, i16, i16, i16, i16, i32, i32, i32, i16, i16, ptr, i32, %struct.napi_struct, i32, i32, i32, i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, i64, i64, i32, i64, i32, i32, i32, i32, i32, i32, i32, [52 x i8], ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i64, i32, i32, i32, i32, i16, i32, i32, ptr, ptr, %struct.e1000_hw, %struct.spinlock, %struct.e1000_hw_stats, %struct.e1000_phy_info, %struct.e1000_phy_stats, %struct.e1000_phy_regs, %struct.e1000_ring, %struct.e1000_ring, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i8, i32, i32, %struct.work_struct, %struct.work_struct, %struct.work_struct, i32, i16, i16, %struct.hwtstamp_config, %struct.delayed_work, ptr, i32, %struct.work_struct, %struct.spinlock, %struct.cyclecounter, %struct.timecounter, ptr, %struct.ptp_clock_info, %struct.pm_qos_request, i32, i16, [50 x i8] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.e1000_hw = type { ptr, ptr, ptr, %struct.e1000_mac_info, %struct.e1000_fc_info, %struct.e1000_phy_info, %struct.e1000_nvm_info, %struct.e1000_bus_info, %struct.e1000_host_mng_dhcp_cookie, %union.anon.117 }
%struct.e1000_mac_info = type { %struct.e1000_mac_operations, [6 x i8], [6 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, [128 x i32], i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.e1000_mac_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_fc_info = type { i32, i32, i16, i16, i8, i8, i32, i32 }
%struct.e1000_nvm_info = type { %struct.e1000_nvm_operations, i32, i32, i32, i32, i16, i16, i16, i16, i16 }
%struct.e1000_nvm_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_bus_info = type { i32, i16 }
%struct.e1000_host_mng_dhcp_cookie = type { i32, i8, i8, i16, i32, i16, i8, i8 }
%union.anon.117 = type { %struct.e1000_dev_spec_ich8lan }
%struct.e1000_dev_spec_ich8lan = type { i8, [2048 x %struct.e1000_shadow_ram], i8, i8, i16, i32 }
%struct.e1000_shadow_ram = type { i16, i8 }
%struct.e1000_hw_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.e1000_phy_info = type { %struct.e1000_phy_operations, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8 }
%struct.e1000_phy_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_phy_stats = type { i32, i32 }
%struct.e1000_phy_regs = type { i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }

@e1000_ethtool_ops = internal constant %struct.ethtool_ops { i8 0, i32 1, i32 0, ptr @e1000_get_drvinfo, ptr @e1000_get_regs_len, ptr @e1000_get_regs, ptr @e1000_get_wol, ptr @e1000_set_wol, ptr @e1000_get_msglevel, ptr @e1000_set_msglevel, ptr @e1000_nway_reset, ptr @ethtool_op_get_link, ptr null, ptr @e1000_get_eeprom_len, ptr @e1000_get_eeprom, ptr @e1000_set_eeprom, ptr @e1000_get_coalesce, ptr @e1000_set_coalesce, ptr @e1000_get_ringparam, ptr @e1000_set_ringparam, ptr null, ptr @e1000_get_pauseparam, ptr @e1000_set_pauseparam, ptr @e1000_diag_test, ptr @e1000_get_strings, ptr @e1000_set_phys_id, ptr @e1000_get_ethtool_stats, ptr null, ptr null, ptr @e1000e_get_priv_flags, ptr @e1000e_set_priv_flags, ptr @e1000e_get_sset_count, ptr @e1000_get_rxnfc, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @e1000e_get_ts_info, ptr null, ptr null, ptr @e1000e_get_eee, ptr @e1000e_set_eee, ptr null, ptr null, ptr null, ptr null, ptr @e1000_get_link_ksettings, ptr @e1000_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@e1000e_driver_name = external dso_local global [0 x i8], align 1
@.str = private unnamed_addr constant [9 x i8] c"%d.%d-%d\00", align 1
@.str.1 = private unnamed_addr constant [69 x i8] c"Interface does not support directed (unicast) frame wake-up packets\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"offline testing starting\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"online testing starting\0A\00", align 1
@.str.4 = private unnamed_addr constant [58 x i8] c"failed STATUS register test got: 0x%08X expected: 0x%08X\0A\00", align 1
@.str.5 = private unnamed_addr constant [62 x i8] c"pattern test failed (reg 0x%05X): got 0x%08X expected 0x%08X\0A\00", align 1
@.str.6 = private unnamed_addr constant [64 x i8] c"set/check test failed (reg 0x%05X): got 0x%08X expected 0x%08X\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"testing %s interrupt\0A\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"shared\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"unshared\00", align 1
@.str.10 = private unnamed_addr constant [54 x i8] c"Cannot do PHY loopback test when SoL/IDER is active.\0A\00", align 1
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"include/linux/dma-mapping.h\00", align 1
@.str.12 = private unnamed_addr constant [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.13 = private unnamed_addr constant [30 x i8] c"Cannot setup 1Gbps loopback.\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@e1000_gstrings_test = internal unnamed_addr constant [5 x [32 x i8]] [[32 x i8] c"Register test  (offline)\00\00\00\00\00\00\00\00", [32 x i8] c"Eeprom test    (offline)\00\00\00\00\00\00\00\00", [32 x i8] c"Interrupt test (offline)\00\00\00\00\00\00\00\00", [32 x i8] c"Loopback test  (offline)\00\00\00\00\00\00\00\00", [32 x i8] c"Link test   (on/offline)\00\00\00\00\00\00\00\00"], align 1
@e1000_gstrings_stats = internal unnamed_addr constant [53 x %struct.e1000_stats] [%struct.e1000_stats { [32 x i8] c"rx_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 10496 }, %struct.e1000_stats { [32 x i8] c"tx_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 10520 }, %struct.e1000_stats { [32 x i8] c"rx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 10528 }, %struct.e1000_stats { [32 x i8] c"tx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 10536 }, %struct.e1000_stats { [32 x i8] c"rx_broadcast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 10504 }, %struct.e1000_stats { [32 x i8] c"tx_broadcast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 10696 }, %struct.e1000_stats { [32 x i8] c"rx_multicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 10512 }, %struct.e1000_stats { [32 x i8] c"tx_multicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 10688 }, %struct.e1000_stats { [32 x i8] c"rx_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 8, i32 32 }, %struct.e1000_stats { [32 x i8] c"tx_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 8, i32 40 }, %struct.e1000_stats { [32 x i8] c"tx_dropped\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 8, i32 56 }, %struct.e1000_stats { [32 x i8] c"multicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 10512 }, %struct.e1000_stats { [32 x i8] c"collisions\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 10360 }, %struct.e1000_stats { [32 x i8] c"rx_length_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 8, i32 80 }, %struct.e1000_stats { [32 x i8] c"rx_over_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 8, i32 88 }, %struct.e1000_stats { [32 x i8] c"rx_crc_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 10288 }, %struct.e1000_stats { [32 x i8] c"rx_frame_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 8, i32 104 }, %struct.e1000_stats { [32 x i8] c"rx_no_buffer_count\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 10544 }, %struct.e1000_stats { [32 x i8] c"rx_missed_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 10320 }, %struct.e1000_stats { [32 x i8] c"tx_aborted_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 10336 }, %struct.e1000_stats { [32 x i8] c"tx_carrier_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 10376 }, %struct.e1000_stats { [32 x i8] c"tx_fifo_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 8, i32 144 }, %struct.e1000_stats { [32 x i8] c"tx_heartbeat_errors\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 8, i32 152 }, %struct.e1000_stats { [32 x i8] c"tx_window_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 10352 }, %struct.e1000_stats { [32 x i8] c"tx_abort_late_coll\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 10352 }, %struct.e1000_stats { [32 x i8] c"tx_deferred_ok\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 10368 }, %struct.e1000_stats { [32 x i8] c"tx_single_coll_ok\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 10328 }, %struct.e1000_stats { [32 x i8] c"tx_multi_coll_ok\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 10344 }, %struct.e1000_stats { [32 x i8] c"tx_timeout_count\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 944 }, %struct.e1000_stats { [32 x i8] c"tx_restart_queue\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 872 }, %struct.e1000_stats { [32 x i8] c"rx_long_length_errors\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 10568 }, %struct.e1000_stats { [32 x i8] c"rx_short_length_errors\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 10552 }, %struct.e1000_stats { [32 x i8] c"rx_align_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 10296 }, %struct.e1000_stats { [32 x i8] c"tx_tcp_seg_good\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 10704 }, %struct.e1000_stats { [32 x i8] c"tx_tcp_seg_failed\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 10712 }, %struct.e1000_stats { [32 x i8] c"rx_flow_control_xon\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 10408 }, %struct.e1000_stats { [32 x i8] c"rx_flow_control_xoff\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 10424 }, %struct.e1000_stats { [32 x i8] c"tx_flow_control_xon\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 10416 }, %struct.e1000_stats { [32 x i8] c"tx_flow_control_xoff\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 10432 }, %struct.e1000_stats { [32 x i8] c"rx_csum_offload_good\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 1056 }, %struct.e1000_stats { [32 x i8] c"rx_csum_offload_errors\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 1048 }, %struct.e1000_stats { [32 x i8] c"rx_header_split\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 1064 }, %struct.e1000_stats { [32 x i8] c"alloc_rx_buff_failed\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 1088 }, %struct.e1000_stats { [32 x i8] c"tx_smbus\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 10600 }, %struct.e1000_stats { [32 x i8] c"rx_smbus\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 10584 }, %struct.e1000_stats { [32 x i8] c"dropped_smbus\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 10592 }, %struct.e1000_stats { [32 x i8] c"rx_dma_failed\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 1092 }, %struct.e1000_stats { [32 x i8] c"tx_dma_failed\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 960 }, %struct.e1000_stats { [32 x i8] c"rx_hwtstamp_cleared\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 1096 }, %struct.e1000_stats { [32 x i8] c"uncorr_ecc_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 864 }, %struct.e1000_stats { [32 x i8] c"corr_ecc_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 868 }, %struct.e1000_stats { [32 x i8] c"tx_hwtstamp_timeouts\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 964 }, %struct.e1000_stats { [32 x i8] c"tx_hwtstamp_skipped\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 968 }], align 4
@e1000e_priv_flags_strings = internal unnamed_addr constant [1 x [32 x i8]] [[32 x i8] c"s0ix-enabled\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"Setting EEE tx-lpi is not supported\0A\00", align 1
@.str.15 = private unnamed_addr constant [43 x i8] c"Setting EEE Tx LPI timer is not supported\0A\00", align 1
@.str.16 = private unnamed_addr constant [64 x i8] c"EEE advertisement supports only 100TX and/or 1000T full-duplex\0A\00", align 1
@.str.17 = private unnamed_addr constant [61 x i8] c"Cannot change link characteristics when SoL/IDER is active.\0A\00", align 1
@.str.18 = private unnamed_addr constant [83 x i8] c"forcing MDI/MDI-X state is not supported when link speed and/or duplex are forced\0A\00", align 1
@.str.19 = private unnamed_addr constant [40 x i8] c"Unsupported Speed/Duplex configuration\0A\00", align 1
@switch.table.e1000_diag_test = private unnamed_addr constant [6 x i32] [i32 2147480575, i32 2147480575, i32 2147479603, i32 2147479603, i32 2147479603, i32 2147480575], align 4
@switch.table.e1000e_get_sset_count = private unnamed_addr constant [3 x i32] [i32 5, i32 53, i32 1], align 4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @e1000e_set_ethtool_ops(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 42
  store ptr @e1000_ethtool_ops, ptr %2, align 8
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @e1000_get_drvinfo(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.ethtool_drvinfo, ptr %1, i32 0, i32 1
  %4 = tail call i32 @strlcpy(ptr noundef %3, ptr noundef nonnull @e1000e_driver_name, i32 noundef 32) #17
  %5 = getelementptr inbounds %struct.ethtool_drvinfo, ptr %1, i32 0, i32 3
  %6 = getelementptr i8, ptr %0, i32 2030
  %7 = load i16, ptr %6, align 2
  %8 = zext i16 %7 to i32
  %9 = lshr i32 %8, 12
  %10 = lshr i32 %8, 4
  %11 = and i32 %10, 255
  %12 = and i32 %8, 15
  %13 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %5, i32 noundef 32, ptr noundef nonnull @.str, i32 noundef %9, i32 noundef %11, i32 noundef %12)
  %14 = getelementptr i8, ptr %0, i32 2528
  %15 = load ptr, ptr %14, align 32
  %16 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  %21 = load ptr, ptr %20, align 4
  br label %22

22:                                               ; preds = %19, %2
  %23 = phi ptr [ %21, %19 ], [ %17, %2 ]
  %24 = getelementptr inbounds %struct.ethtool_drvinfo, ptr %1, i32 0, i32 4
  %25 = tail call i32 @strlcpy(ptr noundef %24, ptr noundef %23, i32 noundef 32) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @e1000_get_regs_len(ptr nocapture noundef readnone %0) #2 {
  ret i32 128
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @e1000_get_regs(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) #3 {
  %4 = alloca i16, align 2
  %5 = getelementptr i8, ptr %0, i32 2532
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #17
  store i16 0, ptr %4, align 2, !annotation !8
  %6 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 111, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #17
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(128) %2, i8 0, i32 128, i1 false)
  %9 = getelementptr i8, ptr %0, i32 2528
  %10 = load ptr, ptr %9, align 32
  %11 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 12
  %12 = load i8, ptr %11, align 4
  %13 = zext i8 %12 to i32
  %14 = shl nuw nsw i32 %13, 16
  %15 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 8
  %16 = load i16, ptr %15, align 2
  %17 = zext i16 %16 to i32
  %18 = or i32 %14, %17
  %19 = or i32 %18, 16777216
  %20 = getelementptr inbounds %struct.ethtool_regs, ptr %1, i32 0, i32 1
  store i32 %19, ptr %20, align 4
  %21 = getelementptr i8, ptr %0, i32 2536
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #17, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !10
  store i32 %23, ptr %2, align 4
  %24 = load ptr, ptr %21, align 4
  %25 = getelementptr i8, ptr %24, i32 8
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #17, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !10
  %27 = getelementptr i32, ptr %2, i32 1
  store i32 %26, ptr %27, align 4
  %28 = load ptr, ptr %21, align 4
  %29 = getelementptr i8, ptr %28, i32 256
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #17, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !10
  %31 = getelementptr i32, ptr %2, i32 2
  store i32 %30, ptr %31, align 4
  %32 = load ptr, ptr %21, align 4
  %33 = getelementptr i8, ptr %32, i32 10248
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #17, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !10
  %35 = getelementptr i32, ptr %2, i32 3
  store i32 %34, ptr %35, align 4
  %36 = load ptr, ptr %21, align 4
  %37 = getelementptr i8, ptr %36, i32 10256
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #17, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !10
  %39 = getelementptr i32, ptr %2, i32 4
  store i32 %38, ptr %39, align 4
  %40 = load ptr, ptr %21, align 4
  %41 = getelementptr i8, ptr %40, i32 10264
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #17, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !10
  %43 = getelementptr i32, ptr %2, i32 5
  store i32 %42, ptr %43, align 4
  %44 = load ptr, ptr %21, align 4
  %45 = getelementptr i8, ptr %44, i32 10272
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #17, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !10
  %47 = getelementptr i32, ptr %2, i32 6
  store i32 %46, ptr %47, align 4
  %48 = load ptr, ptr %21, align 4
  %49 = getelementptr i8, ptr %48, i32 1024
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #17, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !10
  %51 = getelementptr i32, ptr %2, i32 7
  store i32 %50, ptr %51, align 4
  %52 = load ptr, ptr %21, align 4
  %53 = getelementptr i8, ptr %52, i32 14344
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #17, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !10
  %55 = getelementptr i32, ptr %2, i32 8
  store i32 %54, ptr %55, align 4
  %56 = load ptr, ptr %21, align 4
  %57 = getelementptr i8, ptr %56, i32 14352
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #17, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !10
  %59 = getelementptr i32, ptr %2, i32 9
  store i32 %58, ptr %59, align 4
  %60 = load ptr, ptr %21, align 4
  %61 = getelementptr i8, ptr %60, i32 14360
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #17, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !10
  %63 = getelementptr i32, ptr %2, i32 10
  store i32 %62, ptr %63, align 4
  %64 = load ptr, ptr %21, align 4
  %65 = getelementptr i8, ptr %64, i32 14368
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #17, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !10
  %67 = getelementptr i32, ptr %2, i32 11
  store i32 %66, ptr %67, align 4
  %68 = getelementptr i8, ptr %0, i32 3332
  %69 = load i32, ptr %68, align 4
  %70 = getelementptr i32, ptr %2, i32 12
  store i32 %69, ptr %70, align 4
  %71 = load i32, ptr %68, align 4
  %72 = icmp eq i32 %71, 2
  br i1 %72, label %73, label %96

73:                                               ; preds = %3
  %74 = getelementptr i8, ptr %0, i32 3284
  %75 = load ptr, ptr %74, align 4
  %76 = call i32 %75(ptr noundef %5, i32 noundef 17, ptr noundef nonnull %4) #17
  %77 = load i16, ptr %4, align 2
  %78 = zext i16 %77 to i32
  %79 = getelementptr i32, ptr %2, i32 13
  store i32 %78, ptr %79, align 4
  %80 = getelementptr i32, ptr %2, i32 14
  store i32 0, ptr %80, align 4
  %81 = getelementptr i32, ptr %2, i32 15
  store i32 0, ptr %81, align 4
  %82 = getelementptr i32, ptr %2, i32 16
  store i32 0, ptr %82, align 4
  %83 = load ptr, ptr %74, align 4
  %84 = call i32 %83(ptr noundef %5, i32 noundef 16, ptr noundef nonnull %4) #17
  %85 = load i16, ptr %4, align 2
  %86 = zext i16 %85 to i32
  %87 = getelementptr i32, ptr %2, i32 17
  store i32 %86, ptr %87, align 4
  %88 = load i32, ptr %79, align 4
  %89 = getelementptr i32, ptr %2, i32 18
  store i32 %88, ptr %89, align 4
  %90 = getelementptr i32, ptr %2, i32 19
  store i32 0, ptr %90, align 4
  %91 = getelementptr i32, ptr %2, i32 20
  store i32 %86, ptr %91, align 4
  %92 = getelementptr i8, ptr %0, i32 12360
  %93 = load i32, ptr %92, align 4
  %94 = getelementptr i32, ptr %2, i32 22
  store i32 %93, ptr %94, align 4
  %95 = getelementptr i32, ptr %2, i32 23
  store i32 %88, ptr %95, align 4
  br label %96

96:                                               ; preds = %73, %3
  %97 = getelementptr i32, ptr %2, i32 21
  store i32 0, ptr %97, align 4
  %98 = getelementptr i8, ptr %0, i32 3284
  %99 = load ptr, ptr %98, align 4
  %100 = call i32 %99(ptr noundef %5, i32 noundef 10, ptr noundef nonnull %4) #17
  %101 = load i16, ptr %4, align 2
  %102 = zext i16 %101 to i32
  %103 = getelementptr i32, ptr %2, i32 24
  store i32 %102, ptr %103, align 4
  %104 = getelementptr i32, ptr %2, i32 25
  store i32 %102, ptr %104, align 4
  %105 = load ptr, ptr %6, align 4
  %106 = call i32 @__pm_runtime_idle(ptr noundef %105, i32 noundef 4) #17
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @e1000_get_wol(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #3 {
  %3 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %1, i32 0, i32 1
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %1, i32 0, i32 2
  store i32 0, ptr %4, align 4
  %5 = getelementptr i8, ptr %0, i32 12584
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %68, label %9

9:                                                ; preds = %2
  %10 = getelementptr i8, ptr %0, i32 2528
  %11 = load ptr, ptr %10, align 32
  %12 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44, i32 11, i32 1
  %13 = load i16, ptr %12, align 4
  %14 = and i16 %13, 1
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %68, label %16

16:                                               ; preds = %9
  store i32 47, ptr %3, align 4
  %17 = load i32, ptr %5, align 8
  %18 = and i32 %17, 524288
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %16
  store i32 45, ptr %3, align 4
  %21 = getelementptr i8, ptr %0, i32 12568
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = getelementptr i8, ptr %0, i32 2524
  %27 = load ptr, ptr %26, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %27, ptr noundef nonnull @.str.1) #18
  br label %28

28:                                               ; preds = %25, %20, %16
  %29 = getelementptr i8, ptr %0, i32 12568
  %30 = load i32, ptr %29, align 8
  %31 = and i32 %30, 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %28
  %34 = load i32, ptr %4, align 4
  %35 = or i32 %34, 2
  store i32 %35, ptr %4, align 4
  %36 = load i32, ptr %29, align 8
  br label %37

37:                                               ; preds = %33, %28
  %38 = phi i32 [ %36, %33 ], [ %30, %28 ]
  %39 = and i32 %38, 8
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load i32, ptr %4, align 4
  %43 = or i32 %42, 4
  store i32 %43, ptr %4, align 4
  %44 = load i32, ptr %29, align 8
  br label %45

45:                                               ; preds = %41, %37
  %46 = phi i32 [ %44, %41 ], [ %38, %37 ]
  %47 = and i32 %46, 16
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = load i32, ptr %4, align 4
  %51 = or i32 %50, 8
  store i32 %51, ptr %4, align 4
  %52 = load i32, ptr %29, align 8
  br label %53

53:                                               ; preds = %49, %45
  %54 = phi i32 [ %52, %49 ], [ %46, %45 ]
  %55 = and i32 %54, 2
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = load i32, ptr %4, align 4
  %59 = or i32 %58, 32
  store i32 %59, ptr %4, align 4
  %60 = load i32, ptr %29, align 8
  br label %61

61:                                               ; preds = %57, %53
  %62 = phi i32 [ %60, %57 ], [ %54, %53 ]
  %63 = and i32 %62, 1
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %61
  %66 = load i32, ptr %4, align 4
  %67 = or i32 %66, 1
  store i32 %67, ptr %4, align 4
  br label %68

68:                                               ; preds = %65, %61, %9, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_set_wol(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #3 {
  %3 = getelementptr i8, ptr %0, i32 12584
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %58, label %7

7:                                                ; preds = %2
  %8 = getelementptr i8, ptr %0, i32 2528
  %9 = load ptr, ptr %8, align 32
  %10 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44, i32 11, i32 1
  %11 = load i16, ptr %10, align 4
  %12 = and i16 %11, 1
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %58, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %1, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, -48
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %58

19:                                               ; preds = %14
  %20 = getelementptr i8, ptr %0, i32 12568
  store i32 0, ptr %20, align 8
  %21 = load i32, ptr %15, align 4
  %22 = shl i32 %21, 1
  %23 = and i32 %22, 4
  store i32 %23, ptr %20, align 8
  %24 = load i32, ptr %15, align 4
  %25 = and i32 %24, 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %19
  %28 = or i32 %23, 8
  store i32 %28, ptr %20, align 8
  %29 = load i32, ptr %15, align 4
  br label %30

30:                                               ; preds = %27, %19
  %31 = phi i32 [ %28, %27 ], [ %23, %19 ]
  %32 = phi i32 [ %29, %27 ], [ %24, %19 ]
  %33 = and i32 %32, 8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = or i32 %31, 16
  store i32 %36, ptr %20, align 8
  %37 = load i32, ptr %15, align 4
  br label %38

38:                                               ; preds = %35, %30
  %39 = phi i32 [ %36, %35 ], [ %31, %30 ]
  %40 = phi i32 [ %37, %35 ], [ %32, %30 ]
  %41 = and i32 %40, 32
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  %44 = or i32 %39, 2
  store i32 %44, ptr %20, align 8
  %45 = load i32, ptr %15, align 4
  br label %46

46:                                               ; preds = %43, %38
  %47 = phi i32 [ %44, %43 ], [ %39, %38 ]
  %48 = phi i32 [ %45, %43 ], [ %40, %38 ]
  %49 = and i32 %48, 1
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %46
  %52 = or i32 %47, 1
  store i32 %52, ptr %20, align 8
  br label %53

53:                                               ; preds = %51, %46
  %54 = phi i32 [ 1, %51 ], [ %47, %46 ]
  %55 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %56 = icmp ne i32 %54, 0
  %57 = tail call i32 @device_set_wakeup_enable(ptr noundef %55, i1 noundef zeroext %56) #17
  br label %58

58:                                               ; preds = %53, %14, %7, %2
  %59 = phi i32 [ 0, %53 ], [ -95, %14 ], [ -95, %7 ], [ -95, %2 ]
  ret i32 %59
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @e1000_get_msglevel(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr i8, ptr %0, i32 12544
  %3 = load i32, ptr %2, align 64
  ret i32 %3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @e1000_set_msglevel(ptr nocapture noundef writeonly %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 12544
  store i32 %1, ptr %3, align 64
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_nway_reset(ptr noundef %0) #3 {
  %2 = getelementptr i8, ptr %0, i32 1408
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %17, label %7

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %0, i32 3210
  %9 = load i8, ptr %8, align 2, !range !11
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 111, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 @__pm_runtime_resume(ptr noundef %13, i32 noundef 4) #17
  tail call void @e1000e_reinit_locked(ptr noundef %2) #17
  %15 = load ptr, ptr %12, align 4
  %16 = tail call i32 @__pm_runtime_idle(ptr noundef %15, i32 noundef 4) #17
  br label %17

17:                                               ; preds = %11, %7, %1
  %18 = phi i32 [ 0, %11 ], [ -11, %1 ], [ -22, %7 ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #5

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @e1000_get_eeprom_len(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr i8, ptr %0, i32 3448
  %3 = load i16, ptr %2, align 4
  %4 = zext i16 %3 to i32
  %5 = shl nuw nsw i32 %4, 1
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_get_eeprom(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2) #3 {
  %4 = getelementptr i8, ptr %0, i32 2532
  %5 = getelementptr inbounds %struct.ethtool_eeprom, ptr %1, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %88, label %8

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %0, i32 2528
  %10 = load ptr, ptr %9, align 32
  %11 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 7
  %12 = load i16, ptr %11, align 8
  %13 = zext i16 %12 to i32
  %14 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 8
  %15 = load i16, ptr %14, align 2
  %16 = zext i16 %15 to i32
  %17 = shl nuw i32 %16, 16
  %18 = or i32 %17, %13
  %19 = getelementptr inbounds %struct.ethtool_eeprom, ptr %1, i32 0, i32 1
  store i32 %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.ethtool_eeprom, ptr %1, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = lshr i32 %21, 1
  %23 = add i32 %6, -1
  %24 = add i32 %23, %21
  %25 = lshr i32 %24, 1
  %26 = sub nsw i32 %25, %22
  %27 = add i32 %26, 1
  %28 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %27, i32 2) #17
  %29 = extractvalue { i32, i1 } %28, 1
  br i1 %29, label %88, label %30, !prof !12

30:                                               ; preds = %8
  %31 = extractvalue { i32, i1 } %28, 0
  %32 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %31, i32 noundef 3264) #19
  %33 = icmp eq ptr %32, null
  br i1 %33, label %88, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 111, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = tail call i32 @__pm_runtime_resume(ptr noundef %36, i32 noundef 4) #17
  %38 = getelementptr i8, ptr %0, i32 3432
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 2
  br i1 %40, label %64, label %41

41:                                               ; preds = %34
  %42 = icmp ult i32 %26, 2147483647
  br i1 %42, label %43, label %61

43:                                               ; preds = %41
  %44 = trunc i32 %22 to i16
  %45 = getelementptr i8, ptr %0, i32 3404
  br label %50

46:                                               ; preds = %50
  %47 = add i16 %52, 1
  %48 = zext i16 %47 to i32
  %49 = icmp sgt i32 %27, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %46, %43
  %51 = phi i32 [ 0, %43 ], [ %48, %46 ]
  %52 = phi i16 [ 0, %43 ], [ %47, %46 ]
  %53 = add i16 %52, %44
  %54 = getelementptr i16, ptr %32, i32 %51
  %55 = load ptr, ptr %45, align 4
  %56 = tail call i32 %55(ptr noundef %4, i16 noundef zeroext %53, i16 noundef zeroext 1, ptr noundef %54) #17
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %46, label %58

58:                                               ; preds = %50
  %59 = load ptr, ptr %35, align 4
  %60 = tail call i32 @__pm_runtime_idle(ptr noundef %59, i32 noundef 4) #17
  br label %74

61:                                               ; preds = %46, %41
  %62 = load ptr, ptr %35, align 4
  %63 = tail call i32 @__pm_runtime_idle(ptr noundef %62, i32 noundef 4) #17
  br label %73

64:                                               ; preds = %34
  %65 = trunc i32 %22 to i16
  %66 = trunc i32 %27 to i16
  %67 = getelementptr i8, ptr %0, i32 3404
  %68 = load ptr, ptr %67, align 4
  %69 = tail call i32 %68(ptr noundef %4, i16 noundef zeroext %65, i16 noundef zeroext %66, ptr noundef nonnull %32) #17
  %70 = load ptr, ptr %35, align 4
  %71 = tail call i32 @__pm_runtime_idle(ptr noundef %70, i32 noundef 4) #17
  %72 = icmp eq i32 %69, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %64, %61
  br label %77

74:                                               ; preds = %64, %58
  %75 = phi i32 [ %56, %58 ], [ %69, %64 ]
  %76 = shl i32 %27, 1
  tail call void @llvm.memset.p0.i32(ptr nonnull align 64 %32, i8 -1, i32 %76, i1 false)
  br label %82

77:                                               ; preds = %77, %73
  %78 = phi i16 [ %81, %77 ], [ 0, %73 ]
  %79 = zext i16 %78 to i32
  %80 = icmp sgt i32 %27, %79
  %81 = add i16 %78, 1
  br i1 %80, label %77, label %82

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %75, %74 ], [ 0, %77 ]
  %84 = load i32, ptr %20, align 4
  %85 = and i32 %84, 1
  %86 = getelementptr i8, ptr %32, i32 %85
  %87 = load i32, ptr %5, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %2, ptr align 1 %86, i32 %87, i1 false)
  tail call void @kfree(ptr noundef nonnull %32) #17
  br label %88

88:                                               ; preds = %82, %30, %8, %3
  %89 = phi i32 [ %83, %82 ], [ -22, %3 ], [ -12, %30 ], [ -12, %8 ]
  ret i32 %89
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_set_eeprom(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #3 {
  %4 = getelementptr i8, ptr %0, i32 2532
  %5 = getelementptr inbounds %struct.ethtool_eeprom, ptr %1, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %111, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.ethtool_eeprom, ptr %1, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr i8, ptr %0, i32 2528
  %12 = load ptr, ptr %11, align 32
  %13 = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 7
  %14 = load i16, ptr %13, align 8
  %15 = zext i16 %14 to i32
  %16 = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 8
  %17 = load i16, ptr %16, align 2
  %18 = zext i16 %17 to i32
  %19 = shl nuw i32 %18, 16
  %20 = or i32 %19, %15
  %21 = icmp eq i32 %10, %20
  br i1 %21, label %22, label %111

22:                                               ; preds = %8
  %23 = getelementptr i8, ptr %0, i32 12584
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, 256
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %111

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.ethtool_eeprom, ptr %1, i32 0, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = lshr i32 %29, 1
  %31 = add i32 %6, -1
  %32 = add i32 %31, %29
  %33 = lshr i32 %32, 1
  %34 = getelementptr i8, ptr %0, i32 3448
  %35 = load i16, ptr %34, align 4
  %36 = zext i16 %35 to i32
  %37 = shl nuw nsw i32 %36, 1
  %38 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %37, i32 noundef 3264) #19
  %39 = icmp eq ptr %38, null
  br i1 %39, label %111, label %40

40:                                               ; preds = %27
  %41 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 111, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = tail call i32 @__pm_runtime_resume(ptr noundef %42, i32 noundef 4) #17
  %44 = load i32, ptr %28, align 4
  %45 = and i32 %44, 1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %40
  %48 = trunc i32 %30 to i16
  %49 = getelementptr i8, ptr %0, i32 3404
  %50 = load ptr, ptr %49, align 4
  %51 = tail call i32 %50(ptr noundef %4, i16 noundef zeroext %48, i16 noundef zeroext 1, ptr noundef nonnull %38) #17
  %52 = getelementptr i8, ptr %38, i32 1
  %53 = load i32, ptr %28, align 4
  br label %54

54:                                               ; preds = %47, %40
  %55 = phi i32 [ %53, %47 ], [ %44, %40 ]
  %56 = phi ptr [ %52, %47 ], [ %38, %40 ]
  %57 = phi i32 [ %51, %47 ], [ 0, %40 ]
  %58 = load i32, ptr %5, align 4
  %59 = add i32 %58, %55
  %60 = and i32 %59, 1
  %61 = icmp eq i32 %60, 0
  %62 = icmp ne i32 %57, 0
  %63 = select i1 %61, i1 true, i1 %62
  br i1 %63, label %71, label %64

64:                                               ; preds = %54
  %65 = trunc i32 %33 to i16
  %66 = sub nsw i32 %33, %30
  %67 = getelementptr i16, ptr %38, i32 %66
  %68 = getelementptr i8, ptr %0, i32 3404
  %69 = load ptr, ptr %68, align 4
  %70 = tail call i32 %69(ptr noundef %4, i16 noundef zeroext %65, i16 noundef zeroext 1, ptr noundef %67) #17
  br label %71

71:                                               ; preds = %64, %54
  %72 = phi i32 [ %57, %54 ], [ %70, %64 ]
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %107

74:                                               ; preds = %71
  %75 = sub nsw i32 %33, %30
  %76 = add i32 %75, 1
  br label %77

77:                                               ; preds = %77, %74
  %78 = phi i16 [ %81, %77 ], [ 0, %74 ]
  %79 = zext i16 %78 to i32
  %80 = icmp sgt i32 %76, %79
  %81 = add i16 %78, 1
  br i1 %80, label %77, label %82

82:                                               ; preds = %77
  %83 = load i32, ptr %5, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %56, ptr align 1 %2, i32 %83, i1 false)
  br label %84

84:                                               ; preds = %84, %82
  %85 = phi i16 [ 0, %82 ], [ %88, %84 ]
  %86 = zext i16 %85 to i32
  %87 = icmp sgt i32 %76, %86
  %88 = add i16 %85, 1
  br i1 %87, label %84, label %89

89:                                               ; preds = %84
  %90 = trunc i32 %30 to i16
  %91 = trunc i32 %76 to i16
  %92 = getelementptr i8, ptr %0, i32 3428
  %93 = load ptr, ptr %92, align 4
  %94 = tail call i32 %93(ptr noundef %4, i16 noundef zeroext %90, i16 noundef zeroext %91, ptr noundef nonnull %38) #17
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %107

96:                                               ; preds = %89
  %97 = icmp ult i32 %29, 128
  br i1 %97, label %103, label %98

98:                                               ; preds = %96
  %99 = getelementptr i8, ptr %0, i32 2648
  %100 = load i32, ptr %99, align 4
  %101 = add i32 %100, -2
  %102 = icmp ult i32 %101, 3
  br i1 %102, label %103, label %107

103:                                              ; preds = %98, %96
  %104 = getelementptr i8, ptr %0, i32 3416
  %105 = load ptr, ptr %104, align 4
  %106 = tail call i32 %105(ptr noundef %4) #17
  br label %107

107:                                              ; preds = %103, %98, %89, %71
  %108 = phi i32 [ %72, %71 ], [ %94, %89 ], [ %106, %103 ], [ 0, %98 ]
  %109 = load ptr, ptr %41, align 4
  %110 = tail call i32 @__pm_runtime_idle(ptr noundef %109, i32 noundef 4) #17
  tail call void @kfree(ptr noundef nonnull %38) #17
  br label %111

111:                                              ; preds = %107, %27, %22, %8, %3
  %112 = phi i32 [ %108, %107 ], [ -95, %3 ], [ -14, %8 ], [ -22, %22 ], [ -12, %27 ]
  ret i32 %112
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @e1000_get_coalesce(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) #6 {
  %5 = getelementptr i8, ptr %0, i32 2040
  %6 = load i32, ptr %5, align 8
  %7 = icmp ult i32 %6, 5
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = udiv i32 1000000, %6
  br label %10

10:                                               ; preds = %8, %4
  %11 = phi i32 [ %9, %8 ], [ %6, %4 ]
  %12 = getelementptr inbounds %struct.ethtool_coalesce, ptr %1, i32 0, i32 1
  store i32 %11, ptr %12, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_set_coalesce(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) #3 {
  %5 = getelementptr i8, ptr %0, i32 1408
  %6 = getelementptr inbounds %struct.ethtool_coalesce, ptr %1, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp ugt i32 %7, 10000
  %9 = add i32 %7, -5
  %10 = icmp ult i32 %9, 5
  %11 = or i1 %8, %10
  br i1 %11, label %41, label %12

12:                                               ; preds = %4
  switch i32 %7, label %16 [
    i32 2, label %41
    i32 4, label %13
  ]

13:                                               ; preds = %12
  %14 = getelementptr i8, ptr %0, i32 2040
  store i32 4, ptr %14, align 8
  %15 = getelementptr i8, ptr %0, i32 2036
  store i32 4, ptr %15, align 4
  br label %27

16:                                               ; preds = %12
  %17 = icmp ult i32 %7, 4
  br i1 %17, label %18, label %22

18:                                               ; preds = %16
  %19 = getelementptr i8, ptr %0, i32 2036
  store i32 20000, ptr %19, align 4
  %20 = load i32, ptr %6, align 4
  %21 = getelementptr i8, ptr %0, i32 2040
  store i32 %20, ptr %21, align 8
  br label %27

22:                                               ; preds = %16
  %23 = udiv i32 1000000, %7
  %24 = getelementptr i8, ptr %0, i32 2036
  store i32 %23, ptr %24, align 4
  %25 = and i32 %23, 1048572
  %26 = getelementptr i8, ptr %0, i32 2040
  store i32 %25, ptr %26, align 8
  br label %27

27:                                               ; preds = %22, %18, %13
  %28 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 111, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 @__pm_runtime_resume(ptr noundef %29, i32 noundef 4) #17
  %31 = getelementptr i8, ptr %0, i32 2040
  %32 = load i32, ptr %31, align 8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %27
  %35 = getelementptr i8, ptr %0, i32 2036
  %36 = load i32, ptr %35, align 4
  br label %37

37:                                               ; preds = %34, %27
  %38 = phi i32 [ %36, %34 ], [ 0, %27 ]
  tail call void @e1000e_write_itr(ptr noundef %5, i32 noundef %38) #17
  %39 = load ptr, ptr %28, align 4
  %40 = tail call i32 @__pm_runtime_idle(ptr noundef %39, i32 noundef 4) #17
  br label %41

41:                                               ; preds = %37, %12, %4
  %42 = phi i32 [ 0, %37 ], [ -22, %12 ], [ -22, %4 ]
  ret i32 %42
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @e1000_get_ringparam(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) #6 {
  %5 = getelementptr inbounds %struct.ethtool_ringparam, ptr %1, i32 0, i32 1
  store i32 4096, ptr %5, align 4
  %6 = getelementptr inbounds %struct.ethtool_ringparam, ptr %1, i32 0, i32 4
  store i32 4096, ptr %6, align 4
  %7 = getelementptr i8, ptr %0, i32 12646
  %8 = load i16, ptr %7, align 2
  %9 = zext i16 %8 to i32
  %10 = getelementptr inbounds %struct.ethtool_ringparam, ptr %1, i32 0, i32 5
  store i32 %9, ptr %10, align 4
  %11 = getelementptr i8, ptr %0, i32 12644
  %12 = load i16, ptr %11, align 4
  %13 = zext i16 %12 to i32
  %14 = getelementptr inbounds %struct.ethtool_ringparam, ptr %1, i32 0, i32 8
  store i32 %13, ptr %14, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_set_ringparam(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) #3 {
  %5 = getelementptr i8, ptr %0, i32 1408
  %6 = getelementptr inbounds %struct.ethtool_ringparam, ptr %1, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %114

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.ethtool_ringparam, ptr %1, i32 0, i32 7
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %114

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.ethtool_ringparam, ptr %1, i32 0, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = tail call i32 @llvm.umax.i32(i32 %15, i32 64)
  %17 = tail call i32 @llvm.umin.i32(i32 %16, i32 4096)
  %18 = trunc i32 %17 to i16
  %19 = add nuw nsw i16 %18, 7
  %20 = and i16 %19, 16376
  %21 = getelementptr inbounds %struct.ethtool_ringparam, ptr %1, i32 0, i32 8
  %22 = load i32, ptr %21, align 4
  %23 = tail call i32 @llvm.umax.i32(i32 %22, i32 64)
  %24 = tail call i32 @llvm.umin.i32(i32 %23, i32 4096)
  %25 = trunc i32 %24 to i16
  %26 = add nuw nsw i16 %25, 7
  %27 = and i16 %26, 16376
  %28 = zext i16 %27 to i32
  %29 = getelementptr i8, ptr %0, i32 12644
  %30 = load i16, ptr %29, align 4
  %31 = icmp eq i16 %27, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %13
  %33 = getelementptr i8, ptr %0, i32 12646
  %34 = load i16, ptr %33, align 2
  %35 = icmp eq i16 %20, %34
  br i1 %35, label %114, label %36

36:                                               ; preds = %32, %13
  %37 = getelementptr i8, ptr %0, i32 2032
  %38 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %37) #17
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %40, %36
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #17
  %41 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %37) #17
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %40

43:                                               ; preds = %40, %36
  %44 = getelementptr i8, ptr %0, i32 2524
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.net_device, ptr %45, i32 0, i32 6
  %47 = load volatile i32, ptr %46, align 4
  %48 = and i32 %47, 1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %43
  %51 = getelementptr i8, ptr %0, i32 2048
  %52 = load ptr, ptr %51, align 64
  %53 = getelementptr inbounds %struct.e1000_ring, ptr %52, i32 0, i32 4
  store i32 %28, ptr %53, align 4
  %54 = zext i16 %20 to i32
  %55 = getelementptr i8, ptr %0, i32 2440
  %56 = load ptr, ptr %55, align 8
  %57 = getelementptr inbounds %struct.e1000_ring, ptr %56, i32 0, i32 4
  store i32 %54, ptr %57, align 4
  store i16 %27, ptr %29, align 4
  %58 = getelementptr i8, ptr %0, i32 12646
  store i16 %20, ptr %58, align 2
  br label %112

59:                                               ; preds = %43
  %60 = load i16, ptr %29, align 4
  %61 = icmp eq i16 %27, %60
  %62 = zext i16 %20 to i32
  %63 = getelementptr i8, ptr %0, i32 12646
  %64 = load i16, ptr %63, align 2
  %65 = icmp eq i16 %20, %64
  br i1 %61, label %69, label %66

66:                                               ; preds = %59
  %67 = tail call noalias ptr @vmalloc(i32 noundef 80) #19
  %68 = icmp eq ptr %67, null
  br i1 %68, label %108, label %69

69:                                               ; preds = %66, %59
  %70 = phi ptr [ %67, %66 ], [ null, %59 ]
  br i1 %65, label %74, label %71

71:                                               ; preds = %69
  %72 = tail call noalias ptr @vmalloc(i32 noundef 80) #19
  %73 = icmp eq ptr %72, null
  br i1 %73, label %108, label %74

74:                                               ; preds = %71, %69
  %75 = phi ptr [ %72, %71 ], [ null, %69 ]
  %76 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 111, i32 1
  %77 = load ptr, ptr %76, align 4
  %78 = tail call i32 @__pm_runtime_resume(ptr noundef %77, i32 noundef 4) #17
  tail call void @e1000e_down(ptr noundef %5, i1 noundef zeroext true) #17
  br i1 %61, label %85, label %79

79:                                               ; preds = %74
  %80 = getelementptr i8, ptr %0, i32 2048
  %81 = load ptr, ptr %80, align 64
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(80) %70, ptr noundef align 4 dereferenceable(80) %81, i32 80, i1 false)
  %82 = getelementptr inbounds %struct.e1000_ring, ptr %70, i32 0, i32 4
  store i32 %28, ptr %82, align 4
  %83 = tail call i32 @e1000e_setup_tx_resources(ptr noundef %70) #17
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %104

85:                                               ; preds = %79, %74
  br i1 %65, label %92, label %86

86:                                               ; preds = %85
  %87 = getelementptr i8, ptr %0, i32 2440
  %88 = load ptr, ptr %87, align 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(80) %75, ptr noundef align 4 dereferenceable(80) %88, i32 80, i1 false)
  %89 = getelementptr inbounds %struct.e1000_ring, ptr %75, i32 0, i32 4
  store i32 %62, ptr %89, align 4
  %90 = tail call i32 @e1000e_setup_rx_resources(ptr noundef %75) #17
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %102

92:                                               ; preds = %86, %85
  br i1 %61, label %97, label %93

93:                                               ; preds = %92
  %94 = getelementptr i8, ptr %0, i32 2048
  %95 = load ptr, ptr %94, align 64
  tail call void @e1000e_free_tx_resources(ptr noundef %95) #17
  %96 = load ptr, ptr %94, align 64
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(80) %96, ptr noundef align 4 dereferenceable(80) %70, i32 80, i1 false)
  store i16 %27, ptr %29, align 4
  br label %97

97:                                               ; preds = %93, %92
  br i1 %65, label %104, label %98

98:                                               ; preds = %97
  %99 = getelementptr i8, ptr %0, i32 2440
  %100 = load ptr, ptr %99, align 8
  tail call void @e1000e_free_rx_resources(ptr noundef %100) #17
  %101 = load ptr, ptr %99, align 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(80) %101, ptr noundef align 4 dereferenceable(80) %75, i32 80, i1 false)
  store i16 %20, ptr %63, align 2
  br label %104

102:                                              ; preds = %86
  br i1 %61, label %104, label %103

103:                                              ; preds = %102
  tail call void @e1000e_free_tx_resources(ptr noundef %70) #17
  br label %104

104:                                              ; preds = %103, %102, %98, %97, %79
  %105 = phi i32 [ %83, %79 ], [ %90, %103 ], [ %90, %102 ], [ 0, %98 ], [ 0, %97 ]
  tail call void @e1000e_up(ptr noundef %5) #17
  %106 = load ptr, ptr %76, align 4
  %107 = tail call i32 @__pm_runtime_idle(ptr noundef %106, i32 noundef 4) #17
  br label %108

108:                                              ; preds = %104, %71, %66
  %109 = phi i32 [ %105, %104 ], [ -12, %66 ], [ -12, %71 ]
  %110 = phi ptr [ %75, %104 ], [ null, %66 ], [ null, %71 ]
  %111 = phi ptr [ %70, %104 ], [ null, %66 ], [ %70, %71 ]
  tail call void @vfree(ptr noundef %111) #17
  tail call void @vfree(ptr noundef %110) #17
  br label %112

112:                                              ; preds = %108, %50
  %113 = phi i32 [ %109, %108 ], [ 0, %50 ]
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %37) #17
  br label %114

114:                                              ; preds = %112, %32, %9, %4
  %115 = phi i32 [ %113, %112 ], [ -22, %9 ], [ -22, %4 ], [ 0, %32 ]
  ret i32 %115
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @e1000_get_pauseparam(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #6 {
  %3 = getelementptr i8, ptr %0, i32 12580
  %4 = load i8, ptr %3, align 4, !range !11
  %5 = zext i8 %4 to i32
  %6 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %1, i32 0, i32 1
  store i32 %5, ptr %6, align 4
  %7 = getelementptr i8, ptr %0, i32 3236
  %8 = load i32, ptr %7, align 4
  switch i32 %8, label %18 [
    i32 1, label %9
    i32 2, label %11
    i32 3, label %13
  ]

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %1, i32 0, i32 2
  br label %16

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %1, i32 0, i32 3
  br label %16

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %1, i32 0, i32 2
  store i32 1, ptr %14, align 4
  %15 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %1, i32 0, i32 3
  br label %16

16:                                               ; preds = %13, %11, %9
  %17 = phi ptr [ %12, %11 ], [ %15, %13 ], [ %10, %9 ]
  store i32 1, ptr %17, align 4
  br label %18

18:                                               ; preds = %16, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_set_pauseparam(ptr noundef %0, ptr nocapture noundef readonly %1) #3 {
  %3 = getelementptr i8, ptr %0, i32 1408
  %4 = getelementptr i8, ptr %0, i32 2532
  %5 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp ne i32 %6, 0
  %8 = getelementptr i8, ptr %0, i32 12580
  %9 = zext i1 %7 to i8
  store i8 %9, ptr %8, align 4
  %10 = getelementptr i8, ptr %0, i32 2032
  %11 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %10) #17
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %13, %2
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #17
  %14 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %10) #17
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %13

16:                                               ; preds = %13, %2
  %17 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 111, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 @__pm_runtime_resume(ptr noundef %18, i32 noundef 4) #17
  %20 = load i8, ptr %8, align 4, !range !11
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %16
  %23 = getelementptr i8, ptr %0, i32 3240
  store i32 255, ptr %23, align 4
  %24 = getelementptr i8, ptr %0, i32 2524
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 6
  %27 = load volatile i32, ptr %26, align 4
  %28 = and i32 %27, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %22
  tail call void @e1000e_down(ptr noundef %3, i1 noundef zeroext true) #17
  tail call void @e1000e_up(ptr noundef %3) #17
  br label %56

31:                                               ; preds = %22
  tail call void @e1000e_reset(ptr noundef %3) #17
  br label %56

32:                                               ; preds = %16
  %33 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %1, i32 0, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 0
  %36 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %1, i32 0, i32 3
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  %39 = getelementptr i8, ptr %0, i32 3240
  %40 = select i1 %38, i32 1, i32 3
  %41 = select i1 %38, i32 0, i32 2
  %42 = select i1 %35, i32 %41, i32 %40
  store i32 %42, ptr %39, align 4
  %43 = getelementptr i8, ptr %0, i32 3236
  store i32 %42, ptr %43, align 4
  %44 = getelementptr i8, ptr %0, i32 3376
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 2
  br i1 %46, label %47, label %51

47:                                               ; preds = %32
  %48 = getelementptr i8, ptr %0, i32 2604
  %49 = load ptr, ptr %48, align 4
  %50 = tail call i32 %49(ptr noundef %4) #17
  br label %56

51:                                               ; preds = %32
  %52 = tail call i32 @e1000e_force_mac_fc(ptr noundef %4) #17
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = tail call i32 @e1000e_set_fc_watermarks(ptr noundef %4) #17
  br label %56

56:                                               ; preds = %54, %51, %47, %31, %30
  %57 = phi i32 [ 0, %30 ], [ 0, %31 ], [ %50, %47 ], [ %52, %51 ], [ 0, %54 ]
  %58 = load ptr, ptr %17, align 4
  %59 = tail call i32 @__pm_runtime_idle(ptr noundef %58, i32 noundef 4) #17
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %10) #17
  ret i32 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @e1000_diag_test(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) #3 {
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = getelementptr i8, ptr %0, i32 1408
  %8 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  %12 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 111, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 @__pm_runtime_resume(ptr noundef %13, i32 noundef 4) #17
  %15 = getelementptr i8, ptr %0, i32 2032
  tail call void @_set_bit(i32 noundef 0, ptr noundef %15) #17
  br i1 %11, label %16, label %24

16:                                               ; preds = %3
  %17 = getelementptr i8, ptr %0, i32 12584
  %18 = load i32, ptr %17, align 8
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  tail call void @e1000e_get_hw_control(ptr noundef %7) #17
  br label %22

22:                                               ; preds = %21, %16
  tail call void @e1000e_power_up_phy(ptr noundef %7) #17
  %23 = getelementptr i8, ptr %0, i32 3396
  store i8 1, ptr %23, align 4
  tail call void @e1000e_reset(ptr noundef %7) #17
  store i8 0, ptr %23, align 4
  br label %24

24:                                               ; preds = %22, %3
  %25 = getelementptr inbounds %struct.ethtool_test, ptr %1, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %941

28:                                               ; preds = %24
  %29 = getelementptr i8, ptr %0, i32 3380
  %30 = load i16, ptr %29, align 4
  %31 = getelementptr i8, ptr %0, i32 3206
  %32 = load i8, ptr %31, align 2
  %33 = getelementptr i8, ptr %0, i32 3210
  %34 = load i8, ptr %33, align 2, !range !11
  %35 = getelementptr i8, ptr %0, i32 2524
  %36 = load ptr, ptr %35, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %36, ptr noundef nonnull @.str.2) #18
  br i1 %11, label %39, label %37

37:                                               ; preds = %28
  %38 = tail call i32 @e1000e_close(ptr noundef %0) #17
  br label %39

39:                                               ; preds = %37, %28
  %40 = getelementptr i8, ptr %0, i32 2532
  %41 = getelementptr i8, ptr %0, i32 2648
  %42 = load i32, ptr %41, align 4
  %43 = icmp ult i32 %42, 6
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = getelementptr inbounds [6 x i32], ptr @switch.table.e1000_diag_test, i32 0, i32 %42
  %46 = load i32, ptr %45, align 4
  br label %47

47:                                               ; preds = %44, %39
  %48 = phi i32 [ %46, %44 ], [ 2147479603, %39 ]
  %49 = getelementptr i8, ptr %0, i32 2536
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr i8, ptr %50, i32 8
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #17, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !10
  %53 = load ptr, ptr %49, align 4
  %54 = getelementptr i8, ptr %53, i32 8
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #17, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !10
  %56 = and i32 %55, %48
  tail call void @__ew32(ptr noundef %40, i32 noundef 8, i32 noundef %48) #17
  %57 = load ptr, ptr %49, align 4
  %58 = getelementptr i8, ptr %57, i32 8
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #17, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !10
  %60 = and i32 %59, %48
  %61 = icmp eq i32 %56, %60
  br i1 %61, label %62, label %223

62:                                               ; preds = %47
  tail call void @__ew32(ptr noundef %40, i32 noundef 8, i32 noundef %52) #17
  %63 = getelementptr i8, ptr %0, i32 12584
  %64 = load i32, ptr %63, align 8
  %65 = and i32 %64, 512
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %62
  %68 = tail call fastcc zeroext i1 @reg_pattern_test(ptr noundef %7, ptr noundef %2, i32 noundef 40, i32 noundef 0, i32 noundef -1, i32 noundef -1) #17
  br i1 %68, label %227, label %69

69:                                               ; preds = %67
  %70 = tail call fastcc zeroext i1 @reg_pattern_test(ptr noundef %7, ptr noundef %2, i32 noundef 44, i32 noundef 0, i32 noundef 65535, i32 noundef -1) #17
  br i1 %70, label %227, label %71

71:                                               ; preds = %69
  %72 = tail call fastcc zeroext i1 @reg_pattern_test(ptr noundef %7, ptr noundef %2, i32 noundef 48, i32 noundef 0, i32 noundef 65535, i32 noundef -1) #17
  br i1 %72, label %227, label %73

73:                                               ; preds = %71
  %74 = tail call fastcc zeroext i1 @reg_pattern_test(ptr noundef %7, ptr noundef %2, i32 noundef 56, i32 noundef 0, i32 noundef 65535, i32 noundef -1) #17
  br i1 %74, label %227, label %75

75:                                               ; preds = %73, %62
  %76 = tail call fastcc zeroext i1 @reg_pattern_test(ptr noundef %7, ptr noundef %2, i32 noundef 10272, i32 noundef 0, i32 noundef 65535, i32 noundef -1) #17
  br i1 %76, label %227, label %77

77:                                               ; preds = %75
  %78 = tail call fastcc zeroext i1 @reg_pattern_test(ptr noundef %7, ptr noundef %2, i32 noundef 10244, i32 noundef 0, i32 noundef -1, i32 noundef -1) #17
  br i1 %78, label %227, label %79

79:                                               ; preds = %77
  %80 = tail call fastcc zeroext i1 @reg_pattern_test(ptr noundef %7, ptr noundef %2, i32 noundef 10248, i32 noundef 0, i32 noundef 1048448, i32 noundef 1048575) #17
  br i1 %80, label %227, label %81

81:                                               ; preds = %79
  %82 = tail call fastcc zeroext i1 @reg_pattern_test(ptr noundef %7, ptr noundef %2, i32 noundef 10256, i32 noundef 0, i32 noundef 65535, i32 noundef 65535) #17
  br i1 %82, label %227, label %83

83:                                               ; preds = %81
  %84 = tail call fastcc zeroext i1 @reg_pattern_test(ptr noundef %7, ptr noundef %2, i32 noundef 10264, i32 noundef 0, i32 noundef 65535, i32 noundef 65535) #17
  br i1 %84, label %227, label %85

85:                                               ; preds = %83
  %86 = tail call fastcc zeroext i1 @reg_pattern_test(ptr noundef %7, ptr noundef %2, i32 noundef 8552, i32 noundef 0, i32 noundef 65528, i32 noundef 65528) #17
  br i1 %86, label %227, label %87

87:                                               ; preds = %85
  %88 = tail call fastcc zeroext i1 @reg_pattern_test(ptr noundef %7, ptr noundef %2, i32 noundef 368, i32 noundef 0, i32 noundef 65535, i32 noundef 65535) #17
  br i1 %88, label %227, label %89

89:                                               ; preds = %87
  %90 = tail call fastcc zeroext i1 @reg_pattern_test(ptr noundef %7, ptr noundef %2, i32 noundef 1040, i32 noundef 0, i32 noundef 1073741823, i32 noundef 1073741823) #17
  br i1 %90, label %227, label %91

91:                                               ; preds = %89
  %92 = tail call fastcc zeroext i1 @reg_pattern_test(ptr noundef %7, ptr noundef %2, i32 noundef 14340, i32 noundef 0, i32 noundef -1, i32 noundef -1) #17
  br i1 %92, label %227, label %93

93:                                               ; preds = %91
  %94 = tail call fastcc zeroext i1 @reg_pattern_test(ptr noundef %7, ptr noundef %2, i32 noundef 14344, i32 noundef 0, i32 noundef 1048448, i32 noundef 1048575) #17
  br i1 %94, label %227, label %95

95:                                               ; preds = %93
  tail call void @__ew32(ptr noundef %40, i32 noundef 256, i32 noundef 0) #17
  %96 = load ptr, ptr %49, align 4
  %97 = getelementptr i8, ptr %96, i32 256
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %97) #17, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !10
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %95
  %101 = load ptr, ptr %35, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %101, ptr noundef nonnull @.str.6, i32 noundef 256, i32 noundef %98, i32 noundef 0) #18
  br label %225

102:                                              ; preds = %95
  %103 = load i32, ptr %63, align 8
  %104 = and i32 %103, 512
  %105 = icmp eq i32 %104, 0
  %106 = select i1 %105, i32 115323902, i32 113488702
  %107 = and i32 %106, 2077690
  tail call void @__ew32(ptr noundef %40, i32 noundef 256, i32 noundef %107) #17
  %108 = load ptr, ptr %49, align 4
  %109 = getelementptr i8, ptr %108, i32 256
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %109) #17, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !10
  %111 = and i32 %110, %106
  %112 = icmp eq i32 %107, %111
  br i1 %112, label %115, label %113

113:                                              ; preds = %102
  %114 = load ptr, ptr %35, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %114, ptr noundef nonnull @.str.6, i32 noundef 256, i32 noundef %111, i32 noundef %107) #18
  br label %225

115:                                              ; preds = %102
  tail call void @__ew32(ptr noundef %40, i32 noundef 1024, i32 noundef 0) #17
  %116 = load ptr, ptr %49, align 4
  %117 = getelementptr i8, ptr %116, i32 1024
  %118 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %117) #17, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !10
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %122, label %120

120:                                              ; preds = %115
  %121 = load ptr, ptr %35, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %121, ptr noundef nonnull @.str.6, i32 noundef 1024, i32 noundef %118, i32 noundef 0) #18
  br label %225

122:                                              ; preds = %115
  tail call void @__ew32(ptr noundef %40, i32 noundef 256, i32 noundef %106) #17
  %123 = load ptr, ptr %49, align 4
  %124 = getelementptr i8, ptr %123, i32 256
  %125 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %124) #17, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !10
  %126 = and i32 %125, %106
  %127 = icmp eq i32 %106, %126
  br i1 %127, label %130, label %128

128:                                              ; preds = %122
  %129 = load ptr, ptr %35, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %129, ptr noundef nonnull @.str.6, i32 noundef 256, i32 noundef %126, i32 noundef %106) #18
  br label %225

130:                                              ; preds = %122
  %131 = tail call fastcc zeroext i1 @reg_pattern_test(ptr noundef %7, ptr noundef %2, i32 noundef 10240, i32 noundef 0, i32 noundef -16, i32 noundef -1) #17
  br i1 %131, label %227, label %132

132:                                              ; preds = %130
  %133 = load i32, ptr %63, align 8
  %134 = and i32 %133, 512
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %132
  %137 = tail call fastcc zeroext i1 @reg_pattern_test(ptr noundef %7, ptr noundef %2, i32 noundef 376, i32 noundef 0, i32 noundef -1073676289, i32 noundef 65535) #17
  br i1 %137, label %227, label %138

138:                                              ; preds = %136, %132
  %139 = tail call fastcc zeroext i1 @reg_pattern_test(ptr noundef %7, ptr noundef %2, i32 noundef 14336, i32 noundef 0, i32 noundef -16, i32 noundef -1) #17
  br i1 %139, label %227, label %140

140:                                              ; preds = %138
  %141 = tail call fastcc zeroext i1 @reg_pattern_test(ptr noundef %7, ptr noundef %2, i32 noundef 14368, i32 noundef 0, i32 noundef 65535, i32 noundef 65535) #17
  br i1 %141, label %227, label %142

142:                                              ; preds = %140
  %143 = load i32, ptr %41, align 4
  %144 = add i32 %143, -8
  %145 = icmp ult i32 %144, 10
  %146 = select i1 %145, i32 -2146959361, i32 -2147221505
  %147 = icmp ugt i32 %143, 10
  br i1 %147, label %148, label %154

148:                                              ; preds = %142
  %149 = load ptr, ptr %49, align 4
  %150 = getelementptr i8, ptr %149, i32 23380
  %151 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %150) #17, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !10
  %152 = lshr i32 %151, 7
  %153 = and i32 %152, 7
  br label %154

154:                                              ; preds = %148, %142
  %155 = phi i32 [ %153, %148 ], [ 0, %142 ]
  %156 = getelementptr i8, ptr %0, i32 3204
  %157 = load i16, ptr %156, align 4
  %158 = icmp eq i16 %157, 0
  br i1 %158, label %161, label %159

159:                                              ; preds = %154
  %160 = load i32, ptr %41, align 4
  br label %165

161:                                              ; preds = %206, %154
  %162 = getelementptr i8, ptr %0, i32 2690
  %163 = load i16, ptr %162, align 2
  %164 = icmp eq i16 %163, 0
  br i1 %164, label %222, label %219

165:                                              ; preds = %206, %159
  %166 = phi i16 [ %207, %206 ], [ %157, %159 ]
  %167 = phi i32 [ %208, %206 ], [ %160, %159 ]
  %168 = phi i32 [ %210, %206 ], [ %146, %159 ]
  %169 = phi i32 [ %211, %206 ], [ 0, %159 ]
  %170 = icmp ugt i32 %167, 10
  br i1 %170, label %171, label %180

171:                                              ; preds = %165
  switch i32 %155, label %172 [
    i32 1, label %206
    i32 0, label %174
  ]

172:                                              ; preds = %171
  %173 = icmp ugt i32 %169, %155
  br i1 %173, label %206, label %174

174:                                              ; preds = %172, %171
  %175 = icmp eq i32 %169, 10
  br i1 %175, label %176, label %178

176:                                              ; preds = %174
  %177 = or i32 %168, 1073741824
  br label %192

178:                                              ; preds = %174
  %179 = and i32 %168, -1073741825
  br label %192

180:                                              ; preds = %165
  %181 = icmp eq i32 %167, 10
  br i1 %181, label %182, label %192

182:                                              ; preds = %180
  %183 = icmp eq i32 %169, 1
  %184 = and i32 %168, -720897
  %185 = select i1 %183, i32 %184, i32 %168
  %186 = icmp eq i32 %169, 4
  %187 = or i32 %185, 1073741824
  %188 = select i1 %186, i32 %187, i32 %185
  %189 = icmp eq i32 %169, 0
  %190 = add i32 %169, 6
  %191 = select i1 %189, i32 0, i32 %190
  br label %192

192:                                              ; preds = %182, %180, %178, %176
  %193 = phi i32 [ %169, %180 ], [ %191, %182 ], [ 10, %176 ], [ %169, %178 ]
  %194 = phi i32 [ %168, %180 ], [ %188, %182 ], [ %177, %176 ], [ %179, %178 ]
  %195 = shl i32 %193, 1
  %196 = or i32 %195, 1
  %197 = tail call fastcc zeroext i1 @reg_pattern_test(ptr noundef %7, ptr noundef %2, i32 noundef 21504, i32 noundef %196, i32 noundef %194, i32 noundef -1) #17
  br i1 %197, label %227, label %198

198:                                              ; preds = %192
  %199 = load i32, ptr %41, align 4
  %200 = icmp eq i32 %199, 10
  %201 = icmp ugt i32 %193, 6
  %202 = select i1 %200, i1 %201, i1 false
  %203 = add i32 %193, -6
  %204 = select i1 %202, i32 %203, i32 %193
  %205 = load i16, ptr %156, align 4
  br label %206

206:                                              ; preds = %198, %172, %171
  %207 = phi i16 [ %166, %171 ], [ %166, %172 ], [ %205, %198 ]
  %208 = phi i32 [ %167, %171 ], [ %167, %172 ], [ %199, %198 ]
  %209 = phi i32 [ %169, %171 ], [ %169, %172 ], [ %204, %198 ]
  %210 = phi i32 [ %168, %171 ], [ %168, %172 ], [ %194, %198 ]
  %211 = add i32 %209, 1
  %212 = zext i16 %207 to i32
  %213 = icmp ult i32 %211, %212
  br i1 %213, label %165, label %161

214:                                              ; preds = %219
  %215 = add nuw nsw i32 %220, 1
  %216 = load i16, ptr %162, align 2
  %217 = zext i16 %216 to i32
  %218 = icmp ult i32 %215, %217
  br i1 %218, label %219, label %222

219:                                              ; preds = %214, %161
  %220 = phi i32 [ %215, %214 ], [ 0, %161 ]
  %221 = tail call fastcc zeroext i1 @reg_pattern_test(ptr noundef %7, ptr noundef %2, i32 noundef 20992, i32 noundef %220, i32 noundef -1, i32 noundef -1) #17
  br i1 %221, label %227, label %214

222:                                              ; preds = %214, %161
  store i64 0, ptr %2, align 8
  br label %230

223:                                              ; preds = %47
  %224 = load ptr, ptr %35, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %224, ptr noundef nonnull @.str.4, i32 noundef %60, i32 noundef %56) #18
  br label %225

225:                                              ; preds = %223, %128, %120, %113, %100
  %226 = phi i64 [ 256, %128 ], [ 1024, %120 ], [ 256, %113 ], [ 256, %100 ], [ 1, %223 ]
  store i64 %226, ptr %2, align 8
  br label %227

227:                                              ; preds = %225, %219, %192, %140, %138, %136, %130, %93, %91, %89, %87, %85, %83, %81, %79, %77, %75, %73, %71, %69, %67
  %228 = load i32, ptr %25, align 4
  %229 = or i32 %228, 2
  store i32 %229, ptr %25, align 4
  br label %230

230:                                              ; preds = %227, %222
  tail call void @e1000e_reset(ptr noundef %7) #17
  %231 = getelementptr i64, ptr %2, i32 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #17
  store i16 0, ptr %6, align 2, !annotation !8
  store i64 0, ptr %231, align 8
  %232 = getelementptr i8, ptr %0, i32 3404
  br label %233

233:                                              ; preds = %239, %230
  %234 = phi i16 [ 0, %230 ], [ %243, %239 ]
  %235 = phi i32 [ 0, %230 ], [ %244, %239 ]
  %236 = load ptr, ptr %232, align 4
  %237 = call i32 %236(ptr noundef %40, i16 noundef zeroext %234, i16 noundef zeroext 1, ptr noundef nonnull %6) #17
  %238 = icmp slt i32 %237, 0
  br i1 %238, label %254, label %239

239:                                              ; preds = %233
  %240 = load i16, ptr %6, align 2
  %241 = zext i16 %240 to i32
  %242 = add nuw nsw i32 %235, %241
  %243 = add nuw nsw i16 %234, 1
  %244 = and i32 %242, 65535
  %245 = icmp ult i16 %234, 63
  br i1 %245, label %233, label %246

246:                                              ; preds = %239
  %247 = icmp eq i32 %244, 47802
  %248 = load i64, ptr %231, align 8
  br i1 %247, label %249, label %251

249:                                              ; preds = %246
  %250 = trunc i64 %248 to i32
  br label %256

251:                                              ; preds = %246
  %252 = icmp eq i64 %248, 0
  %253 = trunc i64 %248 to i32
  br i1 %252, label %254, label %256

254:                                              ; preds = %251, %233
  %255 = phi i64 [ 2, %251 ], [ 1, %233 ]
  store i64 %255, ptr %231, align 8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #17
  br label %259

256:                                              ; preds = %251, %249
  %257 = phi i32 [ %250, %249 ], [ %253, %251 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #17
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %262, label %259

259:                                              ; preds = %256, %254
  %260 = load i32, ptr %25, align 4
  %261 = or i32 %260, 2
  store i32 %261, ptr %25, align 4
  br label %262

262:                                              ; preds = %259, %256
  call void @e1000e_reset(ptr noundef %7) #17
  %263 = getelementptr i64, ptr %2, i32 2
  %264 = load ptr, ptr %35, align 4
  %265 = getelementptr i8, ptr %0, i32 2528
  %266 = load ptr, ptr %265, align 32
  %267 = getelementptr inbounds %struct.pci_dev, ptr %266, i32 0, i32 46
  %268 = load i32, ptr %267, align 4
  store i64 0, ptr %263, align 8
  %269 = getelementptr i8, ptr %0, i32 12556
  %270 = load i32, ptr %269, align 4
  %271 = icmp eq i32 %270, 2
  br i1 %271, label %272, label %273

272:                                              ; preds = %262
  call void @e1000e_reset_interrupt_capability(ptr noundef %7) #17
  store i32 0, ptr %269, align 4
  call void @e1000e_set_interrupt_capability(ptr noundef %7) #17
  br label %273

273:                                              ; preds = %272, %262
  %274 = call i32 @request_threaded_irq(i32 noundef %268, ptr noundef nonnull @e1000_test_intr, ptr noundef null, i32 noundef 256, ptr noundef %264, ptr noundef %264) #17
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %280, label %276

276:                                              ; preds = %273
  %277 = call i32 @request_threaded_irq(i32 noundef %268, ptr noundef nonnull @e1000_test_intr, ptr noundef null, i32 noundef 128, ptr noundef %264, ptr noundef %264) #17
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %280, label %279

279:                                              ; preds = %276
  store i64 1, ptr %263, align 8
  br label %333

280:                                              ; preds = %276, %273
  %281 = phi ptr [ @.str.8, %276 ], [ @.str.9, %273 ]
  %282 = load ptr, ptr %35, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %282, ptr noundef nonnull @.str.7, ptr noundef nonnull %281) #18
  call void @__ew32(ptr noundef %40, i32 noundef 216, i32 noundef -1) #17
  %283 = load ptr, ptr %49, align 4
  %284 = getelementptr i8, ptr %283, i32 8
  %285 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %284) #17, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !10
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #17
  %286 = getelementptr i8, ptr %0, i32 12584
  %287 = getelementptr i8, ptr %0, i32 12540
  br label %288

288:                                              ; preds = %323, %280
  %289 = phi i32 [ 0, %280 ], [ %324, %323 ]
  %290 = shl nuw nsw i32 1, %289
  %291 = load i32, ptr %286, align 8
  %292 = and i32 %291, 512
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %299, label %294

294:                                              ; preds = %288
  switch i32 %290, label %299 [
    i32 8, label %323
    i32 256, label %295
  ]

295:                                              ; preds = %294
  %296 = load i32, ptr %41, align 4
  %297 = and i32 %296, -2
  %298 = icmp eq i32 %297, 6
  br i1 %298, label %323, label %299

299:                                              ; preds = %295, %294, %288
  br i1 %275, label %300, label %307

300:                                              ; preds = %299
  store i32 0, ptr %287, align 4
  call void @__ew32(ptr noundef %40, i32 noundef 216, i32 noundef %290) #17
  call void @__ew32(ptr noundef %40, i32 noundef 200, i32 noundef %290) #17
  %301 = load ptr, ptr %49, align 4
  %302 = getelementptr i8, ptr %301, i32 8
  %303 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %302) #17, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !10
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #17
  %304 = load i32, ptr %287, align 4
  %305 = and i32 %304, %290
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %307, label %326

307:                                              ; preds = %300, %299
  store i32 0, ptr %287, align 4
  call void @__ew32(ptr noundef %40, i32 noundef 208, i32 noundef %290) #17
  call void @__ew32(ptr noundef %40, i32 noundef 200, i32 noundef %290) #17
  %308 = load ptr, ptr %49, align 4
  %309 = getelementptr i8, ptr %308, i32 8
  %310 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %309) #17, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !10
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #17
  %311 = load i32, ptr %287, align 4
  %312 = and i32 %311, %290
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %326, label %314

314:                                              ; preds = %307
  br i1 %275, label %315, label %323

315:                                              ; preds = %314
  store i32 0, ptr %287, align 4
  %316 = and i32 %290, 32767
  %317 = xor i32 %316, 32767
  call void @__ew32(ptr noundef %40, i32 noundef 216, i32 noundef %317) #17
  call void @__ew32(ptr noundef %40, i32 noundef 200, i32 noundef %317) #17
  %318 = load ptr, ptr %49, align 4
  %319 = getelementptr i8, ptr %318, i32 8
  %320 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %319) #17, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !10
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #17
  %321 = load i32, ptr %287, align 4
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %323, label %326

323:                                              ; preds = %315, %314, %295, %294
  %324 = add nuw nsw i32 %289, 1
  %325 = icmp eq i32 %324, 10
  br i1 %325, label %328, label %288

326:                                              ; preds = %315, %307, %300
  %327 = phi i64 [ 3, %300 ], [ 4, %307 ], [ 5, %315 ]
  store i64 %327, ptr %263, align 8
  br label %328

328:                                              ; preds = %326, %323
  call void @__ew32(ptr noundef %40, i32 noundef 216, i32 noundef -1) #17
  %329 = load ptr, ptr %49, align 4
  %330 = getelementptr i8, ptr %329, i32 8
  %331 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %330) #17, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !10
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #17
  %332 = call ptr @free_irq(i32 noundef %268, ptr noundef %264) #17
  br label %333

333:                                              ; preds = %328, %279
  %334 = phi i1 [ true, %328 ], [ false, %279 ]
  br i1 %271, label %335, label %336

335:                                              ; preds = %333
  call void @e1000e_reset_interrupt_capability(ptr noundef %7) #17
  store i32 2, ptr %269, align 4
  call void @e1000e_set_interrupt_capability(ptr noundef %7) #17
  br label %336

336:                                              ; preds = %335, %333
  br i1 %334, label %340, label %337

337:                                              ; preds = %336
  %338 = load i32, ptr %25, align 4
  %339 = or i32 %338, 2
  store i32 %339, ptr %25, align 4
  br label %340

340:                                              ; preds = %337, %336
  call void @e1000e_reset(ptr noundef %7) #17
  %341 = getelementptr i64, ptr %2, i32 3
  %342 = getelementptr i8, ptr %0, i32 3256
  %343 = load ptr, ptr %342, align 4
  %344 = icmp eq ptr %343, null
  br i1 %344, label %350, label %345

345:                                              ; preds = %340
  %346 = call i32 %343(ptr noundef %40) #17
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %350, label %348

348:                                              ; preds = %345
  %349 = load ptr, ptr %35, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %349, ptr noundef nonnull @.str.10) #18
  store i64 0, ptr %341, align 8
  br label %898

350:                                              ; preds = %345, %340
  %351 = load ptr, ptr %265, align 32
  %352 = getelementptr i8, ptr %0, i32 12396
  %353 = load i32, ptr %352, align 4
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %355, label %356

355:                                              ; preds = %350
  store i32 256, ptr %352, align 4
  br label %356

356:                                              ; preds = %355, %350
  %357 = phi i32 [ 256, %355 ], [ %353, %350 ]
  %358 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %357, i32 28) #17
  %359 = extractvalue { i32, i1 } %358, 1
  br i1 %359, label %540, label %360, !prof !12

360:                                              ; preds = %356
  %361 = extractvalue { i32, i1 } %358, 0
  %362 = call noalias align 64 ptr @__kmalloc(i32 noundef %361, i32 noundef 3520) #19
  %363 = getelementptr i8, ptr %0, i32 12412
  store ptr %362, ptr %363, align 4
  %364 = icmp eq ptr %362, null
  br i1 %364, label %544, label %365

365:                                              ; preds = %360
  %366 = load i32, ptr %352, align 4
  %367 = shl i32 %366, 4
  %368 = getelementptr i8, ptr %0, i32 12392
  %369 = add i32 %367, 4095
  %370 = and i32 %369, -4096
  store i32 %370, ptr %368, align 4
  %371 = getelementptr inbounds %struct.pci_dev, ptr %351, i32 0, i32 44
  %372 = getelementptr i8, ptr %0, i32 12388
  %373 = call ptr @dma_alloc_attrs(ptr noundef %371, i32 noundef %370, ptr noundef %372, i32 noundef 3264, i32 noundef 0) #17
  %374 = getelementptr i8, ptr %0, i32 12384
  store ptr %373, ptr %374, align 4
  %375 = icmp eq ptr %373, null
  br i1 %375, label %544, label %376

376:                                              ; preds = %365
  %377 = getelementptr i8, ptr %0, i32 12400
  store i16 0, ptr %377, align 4
  %378 = getelementptr i8, ptr %0, i32 12402
  store i16 0, ptr %378, align 2
  %379 = load i32, ptr %372, align 4
  call void @__ew32(ptr noundef %40, i32 noundef 14336, i32 noundef %379) #17
  call void @__ew32(ptr noundef %40, i32 noundef 14340, i32 noundef 0) #17
  %380 = load i32, ptr %352, align 4
  %381 = shl i32 %380, 4
  call void @__ew32(ptr noundef %40, i32 noundef 14344, i32 noundef %381) #17
  call void @__ew32(ptr noundef %40, i32 noundef 14352, i32 noundef 0) #17
  call void @__ew32(ptr noundef %40, i32 noundef 14360, i32 noundef 0) #17
  call void @__ew32(ptr noundef %40, i32 noundef 1024, i32 noundef 268693754) #17
  %382 = load i32, ptr %352, align 4
  %383 = icmp eq i32 %382, 0
  br i1 %383, label %442, label %384

384:                                              ; preds = %376
  %385 = getelementptr inbounds %struct.pci_dev, ptr %351, i32 0, i32 44, i32 3
  br label %386

386:                                              ; preds = %433, %384
  %387 = phi i32 [ 0, %384 ], [ %439, %433 ]
  %388 = load ptr, ptr %374, align 4
  %389 = getelementptr %struct.e1000_tx_desc, ptr %388, i32 %387
  %390 = call ptr @__alloc_skb(i32 noundef 1024, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #17
  %391 = icmp eq ptr %390, null
  br i1 %391, label %544, label %392

392:                                              ; preds = %386
  %393 = call ptr @skb_put(ptr noundef nonnull %390, i32 noundef 1024) #17
  %394 = load ptr, ptr %363, align 4
  %395 = getelementptr %struct.e1000_buffer, ptr %394, i32 %387, i32 1
  store ptr %390, ptr %395, align 4
  %396 = getelementptr inbounds %struct.sk_buff, ptr %390, i32 0, i32 5
  %397 = load i32, ptr %396, align 8
  %398 = trunc i32 %397 to i16
  %399 = load ptr, ptr %363, align 4
  %400 = getelementptr %struct.e1000_buffer, ptr %399, i32 %387, i32 2, i32 0, i32 1
  store i16 %398, ptr %400, align 4
  %401 = getelementptr inbounds %struct.sk_buff, ptr %390, i32 0, i32 17
  %402 = load ptr, ptr %401, align 4
  %403 = load i32, ptr %396, align 8
  %404 = call zeroext i1 @is_vmalloc_addr(ptr noundef %402) #17
  %405 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %406 = xor i1 %405, true
  %407 = select i1 %404, i1 %406, i1 false
  br i1 %407, label %408, label %416, !prof !12

408:                                              ; preds = %392
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %409 = call ptr @dev_driver_string(ptr noundef %371) #17
  %410 = load ptr, ptr %385, align 4
  %411 = icmp eq ptr %410, null
  br i1 %411, label %412, label %414

412:                                              ; preds = %408
  %413 = load ptr, ptr %371, align 4
  br label %414

414:                                              ; preds = %412, %408
  %415 = phi ptr [ %413, %412 ], [ %410, %408 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.12, ptr noundef %409, ptr noundef %415) #17
  br label %416

416:                                              ; preds = %414, %392
  br i1 %404, label %425, label %417

417:                                              ; preds = %416
  %418 = load ptr, ptr @mem_map, align 4
  %419 = ptrtoint ptr %402 to i32
  %420 = add i32 %419, 1073741824
  %421 = lshr i32 %420, 12
  %422 = getelementptr %struct.page, ptr %418, i32 %421
  %423 = and i32 %419, 4095
  %424 = call i32 @dma_map_page_attrs(ptr noundef %371, ptr noundef %422, i32 noundef %423, i32 noundef %403, i32 noundef 1, i32 noundef 0) #17
  br label %425

425:                                              ; preds = %417, %416
  %426 = phi i32 [ %424, %417 ], [ -1, %416 ]
  %427 = load ptr, ptr %363, align 4
  %428 = getelementptr %struct.e1000_buffer, ptr %427, i32 %387
  store i32 %426, ptr %428, align 4
  %429 = load ptr, ptr %363, align 4
  %430 = getelementptr %struct.e1000_buffer, ptr %429, i32 %387
  %431 = load i32, ptr %430, align 4
  %432 = icmp eq i32 %431, -1
  br i1 %432, label %544, label %433

433:                                              ; preds = %425
  %434 = zext i32 %431 to i64
  store i64 %434, ptr %389, align 8
  %435 = load i32, ptr %396, align 8
  %436 = getelementptr %struct.e1000_tx_desc, ptr %388, i32 %387, i32 1
  %437 = or i32 %435, 184549376
  store i32 %437, ptr %436, align 8
  %438 = getelementptr %struct.e1000_tx_desc, ptr %388, i32 %387, i32 2
  store i32 0, ptr %438, align 4
  %439 = add nuw i32 %387, 1
  %440 = load i32, ptr %352, align 4
  %441 = icmp ult i32 %439, %440
  br i1 %441, label %386, label %442

442:                                              ; preds = %433, %376
  %443 = getelementptr i8, ptr %0, i32 12476
  %444 = load i32, ptr %443, align 4
  %445 = icmp eq i32 %444, 0
  br i1 %445, label %446, label %447

446:                                              ; preds = %442
  store i32 256, ptr %443, align 4
  br label %447

447:                                              ; preds = %446, %442
  %448 = phi i32 [ 256, %446 ], [ %444, %442 ]
  %449 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %448, i32 28) #17
  %450 = extractvalue { i32, i1 } %449, 1
  br i1 %450, label %540, label %451, !prof !12

451:                                              ; preds = %447
  %452 = extractvalue { i32, i1 } %449, 0
  %453 = call noalias align 64 ptr @__kmalloc(i32 noundef %452, i32 noundef 3520) #19
  %454 = getelementptr i8, ptr %0, i32 12492
  store ptr %453, ptr %454, align 4
  %455 = icmp eq ptr %453, null
  br i1 %455, label %544, label %456

456:                                              ; preds = %451
  %457 = load i32, ptr %443, align 4
  %458 = shl i32 %457, 4
  %459 = getelementptr i8, ptr %0, i32 12472
  store i32 %458, ptr %459, align 4
  %460 = getelementptr i8, ptr %0, i32 12468
  %461 = call ptr @dma_alloc_attrs(ptr noundef %371, i32 noundef %458, ptr noundef %460, i32 noundef 3264, i32 noundef 0) #17
  %462 = getelementptr i8, ptr %0, i32 12464
  store ptr %461, ptr %462, align 4
  %463 = icmp eq ptr %461, null
  br i1 %463, label %544, label %464

464:                                              ; preds = %456
  %465 = getelementptr i8, ptr %0, i32 12480
  store i16 0, ptr %465, align 4
  %466 = getelementptr i8, ptr %0, i32 12482
  store i16 0, ptr %466, align 2
  %467 = load ptr, ptr %49, align 4
  %468 = getelementptr i8, ptr %467, i32 256
  %469 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %468) #17, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !10
  %470 = getelementptr i8, ptr %0, i32 12588
  %471 = load i32, ptr %470, align 4
  %472 = and i32 %471, 1024
  %473 = icmp eq i32 %472, 0
  br i1 %473, label %474, label %476

474:                                              ; preds = %464
  %475 = and i32 %469, -3
  call void @__ew32(ptr noundef %40, i32 noundef 256, i32 noundef %475) #17
  br label %476

476:                                              ; preds = %474, %464
  %477 = load i32, ptr %460, align 4
  call void @__ew32(ptr noundef %40, i32 noundef 10240, i32 noundef %477) #17
  call void @__ew32(ptr noundef %40, i32 noundef 10244, i32 noundef 0) #17
  %478 = load i32, ptr %459, align 4
  call void @__ew32(ptr noundef %40, i32 noundef 10248, i32 noundef %478) #17
  call void @__ew32(ptr noundef %40, i32 noundef 10256, i32 noundef 0) #17
  call void @__ew32(ptr noundef %40, i32 noundef 10264, i32 noundef 0) #17
  %479 = getelementptr i8, ptr %0, i32 2668
  %480 = load i32, ptr %479, align 4
  %481 = shl i32 %480, 12
  %482 = or i32 %481, 67141694
  call void @__ew32(ptr noundef %40, i32 noundef 256, i32 noundef %482) #17
  %483 = load i32, ptr %443, align 4
  %484 = icmp eq i32 %483, 0
  br i1 %484, label %547, label %485

485:                                              ; preds = %476
  %486 = getelementptr inbounds %struct.pci_dev, ptr %351, i32 0, i32 44, i32 3
  br label %487

487:                                              ; preds = %530, %485
  %488 = phi i32 [ 0, %485 ], [ %537, %530 ]
  %489 = call ptr @__alloc_skb(i32 noundef 2050, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #17
  %490 = icmp eq ptr %489, null
  br i1 %490, label %544, label %491

491:                                              ; preds = %487
  %492 = getelementptr inbounds %struct.sk_buff, ptr %489, i32 0, i32 17
  %493 = load ptr, ptr %492, align 4
  %494 = getelementptr i8, ptr %493, i32 2
  store ptr %494, ptr %492, align 4
  %495 = getelementptr inbounds %struct.sk_buff, ptr %489, i32 0, i32 14
  %496 = load ptr, ptr %495, align 8
  %497 = getelementptr i8, ptr %496, i32 2
  store ptr %497, ptr %495, align 8
  %498 = load ptr, ptr %454, align 4
  %499 = getelementptr %struct.e1000_buffer, ptr %498, i32 %488, i32 1
  store ptr %489, ptr %499, align 4
  %500 = load ptr, ptr %492, align 4
  %501 = call zeroext i1 @is_vmalloc_addr(ptr noundef %500) #17
  %502 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %503 = xor i1 %502, true
  %504 = select i1 %501, i1 %503, i1 false
  br i1 %504, label %505, label %513, !prof !12

505:                                              ; preds = %491
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %506 = call ptr @dev_driver_string(ptr noundef %371) #17
  %507 = load ptr, ptr %486, align 4
  %508 = icmp eq ptr %507, null
  br i1 %508, label %509, label %511

509:                                              ; preds = %505
  %510 = load ptr, ptr %371, align 4
  br label %511

511:                                              ; preds = %509, %505
  %512 = phi ptr [ %510, %509 ], [ %507, %505 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.12, ptr noundef %506, ptr noundef %512) #17
  br label %513

513:                                              ; preds = %511, %491
  br i1 %501, label %522, label %514

514:                                              ; preds = %513
  %515 = load ptr, ptr @mem_map, align 4
  %516 = ptrtoint ptr %500 to i32
  %517 = add i32 %516, 1073741824
  %518 = lshr i32 %517, 12
  %519 = getelementptr %struct.page, ptr %515, i32 %518
  %520 = and i32 %516, 4095
  %521 = call i32 @dma_map_page_attrs(ptr noundef %371, ptr noundef %519, i32 noundef %520, i32 noundef 2048, i32 noundef 2, i32 noundef 0) #17
  br label %522

522:                                              ; preds = %514, %513
  %523 = phi i32 [ %521, %514 ], [ -1, %513 ]
  %524 = load ptr, ptr %454, align 4
  %525 = getelementptr %struct.e1000_buffer, ptr %524, i32 %488
  store i32 %523, ptr %525, align 4
  %526 = load ptr, ptr %454, align 4
  %527 = getelementptr %struct.e1000_buffer, ptr %526, i32 %488
  %528 = load i32, ptr %527, align 4
  %529 = icmp eq i32 %528, -1
  br i1 %529, label %544, label %530

530:                                              ; preds = %522
  %531 = load ptr, ptr %462, align 4
  %532 = getelementptr %union.e1000_rx_desc_extended, ptr %531, i32 %488
  %533 = zext i32 %528 to i64
  store i64 %533, ptr %532, align 8
  %534 = load ptr, ptr %492, align 4
  %535 = getelementptr inbounds %struct.sk_buff, ptr %489, i32 0, i32 5
  %536 = load i32, ptr %535, align 8
  call void @llvm.memset.p0.i32(ptr align 1 %534, i8 0, i32 %536, i1 false) #17
  %537 = add nuw i32 %488, 1
  %538 = load i32, ptr %443, align 4
  %539 = icmp ult i32 %537, %538
  br i1 %539, label %487, label %547

540:                                              ; preds = %447, %356
  %541 = phi i32 [ 12412, %356 ], [ 12492, %447 ]
  %542 = phi i32 [ 1, %356 ], [ 5, %447 ]
  %543 = getelementptr i8, ptr %0, i32 %541
  store ptr null, ptr %543, align 4
  br label %544

544:                                              ; preds = %540, %522, %487, %456, %451, %425, %386, %365, %360
  %545 = phi i32 [ 1, %360 ], [ 2, %365 ], [ 5, %451 ], [ 6, %456 ], [ %542, %540 ], [ 7, %487 ], [ 8, %522 ], [ 3, %386 ], [ 4, %425 ]
  call fastcc void @e1000_free_desc_rings(ptr noundef %7) #17
  %546 = zext i32 %545 to i64
  store i64 %546, ptr %341, align 8
  br label %895

547:                                              ; preds = %530, %476
  store i64 0, ptr %341, align 8
  %548 = load i32, ptr %41, align 4
  %549 = icmp ugt i32 %548, 11
  br i1 %549, label %550, label %560

550:                                              ; preds = %547
  %551 = load ptr, ptr %49, align 4
  %552 = getelementptr i8, ptr %551, i32 23484
  %553 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %552) #17, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !10
  %554 = or i32 %553, 8192
  call void @__ew32(ptr noundef %40, i32 noundef 23484, i32 noundef %554) #17
  %555 = load ptr, ptr %49, align 4
  %556 = getelementptr i8, ptr %555, i32 14400
  %557 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %556) #17, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !10
  %558 = and i32 %557, -805306369
  %559 = or i32 %558, 536870912
  call void @__ew32(ptr noundef %40, i32 noundef 14400, i32 noundef %559) #17
  br label %560

560:                                              ; preds = %550, %547
  %561 = getelementptr i8, ptr %0, i32 3376
  %562 = load i32, ptr %561, align 4
  switch i32 %562, label %563 [
    i32 2, label %564
    i32 3, label %564
    i32 1, label %606
  ]

563:                                              ; preds = %560
  store i64 7, ptr %341, align 8
  br label %891

564:                                              ; preds = %560, %560
  %565 = load i32, ptr %41, align 4
  switch i32 %565, label %601 [
    i32 5, label %566
    i32 0, label %580
    i32 1, label %580
  ]

566:                                              ; preds = %564
  %567 = load ptr, ptr %49, align 4
  %568 = getelementptr i8, ptr %567, i32 24
  %569 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %568) #17, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !10
  %570 = load ptr, ptr %49, align 4
  %571 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %570) #17, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !10
  %572 = getelementptr i8, ptr %0, i32 2356
  store i32 %569, ptr %572, align 4
  %573 = and i32 %569, -12582913
  call void @__ew32(ptr noundef %40, i32 noundef 24, i32 noundef %573) #17
  %574 = and i32 %571, -6978
  %575 = or i32 %574, 6721
  call void @__ew32(ptr noundef %40, i32 noundef 0, i32 noundef %575) #17
  %576 = load ptr, ptr %49, align 4
  %577 = getelementptr i8, ptr %576, i32 256
  %578 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %577) #17, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !10
  %579 = or i32 %578, 64
  call void @__ew32(ptr noundef %40, i32 noundef 256, i32 noundef %579) #17
  call void @__ew32(ptr noundef %40, i32 noundef 52, i32 noundef 2033026) #17
  br label %740

580:                                              ; preds = %564, %564
  %581 = load ptr, ptr %49, align 4
  %582 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %581) #17, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !10
  %583 = or i32 %582, 64
  call void @__ew32(ptr noundef %40, i32 noundef 0, i32 noundef %583) #17
  %584 = load ptr, ptr %49, align 4
  %585 = getelementptr i8, ptr %584, i32 376
  %586 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %585) #17, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !10
  %587 = and i32 %586, 2147483647
  call void @__ew32(ptr noundef %40, i32 noundef 376, i32 noundef %587) #17
  %588 = load ptr, ptr %49, align 4
  %589 = getelementptr i8, ptr %588, i32 8
  %590 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %589) #17, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !10
  %591 = and i32 %590, 2
  %592 = icmp eq i32 %591, 0
  br i1 %592, label %593, label %597

593:                                              ; preds = %580
  %594 = load ptr, ptr %49, align 4
  %595 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %594) #17, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !10
  %596 = or i32 %595, 128
  call void @__ew32(ptr noundef %40, i32 noundef 0, i32 noundef %596) #17
  br label %597

597:                                              ; preds = %593, %580
  call void @__ew32(ptr noundef %40, i32 noundef 36, i32 noundef 1040) #17
  %598 = load ptr, ptr %49, align 4
  %599 = getelementptr i8, ptr %598, i32 8
  %600 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %599) #17, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !10
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #17
  br label %740

601:                                              ; preds = %564
  %602 = load ptr, ptr %49, align 4
  %603 = getelementptr i8, ptr %602, i32 256
  %604 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %603) #17, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !10
  %605 = or i32 %604, 192
  call void @__ew32(ptr noundef %40, i32 noundef 256, i32 noundef %605) #17
  br label %740

606:                                              ; preds = %560
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #17
  store i16 0, ptr %5, align 2
  store i8 0, ptr %33, align 2
  %607 = getelementptr i8, ptr %0, i32 3332
  %608 = load i32, ptr %607, align 4
  switch i32 %608, label %695 [
    i32 7, label %609
    i32 2, label %620
    i32 5, label %628
    i32 8, label %632
    i32 10, label %669
    i32 9, label %669
    i32 11, label %678
  ]

609:                                              ; preds = %606
  %610 = getelementptr i8, ptr %0, i32 3312
  %611 = load ptr, ptr %610, align 4
  %612 = call i32 %611(ptr noundef %40, i32 noundef 0, i16 noundef zeroext 24832) #17
  %613 = load ptr, ptr %49, align 4
  %614 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %613) #17, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !10
  %615 = and i32 %614, -6914
  %616 = or i32 %615, 6401
  call void @__ew32(ptr noundef %40, i32 noundef 0, i32 noundef %616) #17
  %617 = load ptr, ptr %49, align 4
  %618 = getelementptr i8, ptr %617, i32 8
  %619 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %618) #17, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !10
  br label %736

620:                                              ; preds = %606
  %621 = getelementptr i8, ptr %0, i32 3312
  %622 = load ptr, ptr %621, align 4
  %623 = call i32 %622(ptr noundef %40, i32 noundef 16, i16 noundef zeroext 2056) #17
  %624 = load ptr, ptr %621, align 4
  %625 = call i32 %624(ptr noundef %40, i32 noundef 0, i16 noundef zeroext -28352) #17
  %626 = load ptr, ptr %621, align 4
  %627 = call i32 %626(ptr noundef %40, i32 noundef 0, i16 noundef zeroext -32448) #17
  br label %695

628:                                              ; preds = %606
  %629 = getelementptr i8, ptr %0, i32 3312
  %630 = load ptr, ptr %629, align 4
  %631 = call i32 %630(ptr noundef %40, i32 noundef 6192, i16 noundef zeroext 460) #17
  br label %695

632:                                              ; preds = %606
  %633 = getelementptr i8, ptr %0, i32 3284
  %634 = load ptr, ptr %633, align 4
  %635 = call i32 %634(ptr noundef %40, i32 noundef 85, ptr noundef nonnull %5) #17
  %636 = load i16, ptr %5, align 2
  %637 = and i16 %636, -8
  %638 = or i16 %637, 6
  store i16 %638, ptr %5, align 2
  %639 = getelementptr i8, ptr %0, i32 3312
  %640 = load ptr, ptr %639, align 4
  %641 = call i32 %640(ptr noundef %40, i32 noundef 85, i16 noundef zeroext %638) #17
  %642 = getelementptr i8, ptr %0, i32 3260
  %643 = load ptr, ptr %642, align 4
  %644 = call i32 %643(ptr noundef %40) #17
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #17
  %645 = load ptr, ptr %633, align 4
  %646 = call i32 %645(ptr noundef %40, i32 noundef 24624, ptr noundef nonnull %5) #17
  %647 = load i16, ptr %5, align 2
  %648 = or i16 %647, 12
  %649 = load ptr, ptr %639, align 4
  %650 = call i32 %649(ptr noundef %40, i32 noundef 24624, i16 noundef zeroext %648) #17
  %651 = load ptr, ptr %633, align 4
  %652 = call i32 %651(ptr noundef %40, i32 noundef 24848, ptr noundef nonnull %5) #17
  %653 = load i16, ptr %5, align 2
  %654 = or i16 %653, 64
  %655 = load ptr, ptr %639, align 4
  %656 = call i32 %655(ptr noundef %40, i32 noundef 24848, i16 noundef zeroext %654) #17
  %657 = load ptr, ptr %633, align 4
  %658 = call i32 %657(ptr noundef %40, i32 noundef 24624, ptr noundef nonnull %5) #17
  %659 = load i16, ptr %5, align 2
  %660 = or i16 %659, 64
  %661 = load ptr, ptr %639, align 4
  %662 = call i32 %661(ptr noundef %40, i32 noundef 24624, i16 noundef zeroext %660) #17
  %663 = load ptr, ptr %633, align 4
  %664 = call i32 %663(ptr noundef %40, i32 noundef 24628, ptr noundef nonnull %5) #17
  %665 = load i16, ptr %5, align 2
  %666 = or i16 %665, 1024
  %667 = load ptr, ptr %639, align 4
  %668 = call i32 %667(ptr noundef %40, i32 noundef 24628, i16 noundef zeroext %666) #17
  br label %695

669:                                              ; preds = %606, %606
  %670 = getelementptr i8, ptr %0, i32 3244
  %671 = load ptr, ptr %670, align 4
  %672 = call i32 %671(ptr noundef %40) #17
  %673 = icmp eq i32 %672, 0
  br i1 %673, label %674, label %737

674:                                              ; preds = %669
  %675 = call i32 @e1000_configure_k1_ich8lan(ptr noundef %40, i1 noundef zeroext false) #17
  %676 = getelementptr i8, ptr %0, i32 3296
  %677 = load ptr, ptr %676, align 4
  call void %677(ptr noundef %40) #17
  br label %695

678:                                              ; preds = %606
  %679 = getelementptr i8, ptr %0, i32 3284
  %680 = load ptr, ptr %679, align 4
  %681 = call i32 %680(ptr noundef %40, i32 noundef 21, ptr noundef nonnull %5) #17
  %682 = load i16, ptr %5, align 2
  %683 = and i16 %682, -9
  %684 = getelementptr i8, ptr %0, i32 3312
  %685 = load ptr, ptr %684, align 4
  %686 = call i32 %685(ptr noundef %40, i32 noundef 21, i16 noundef zeroext %683) #17
  %687 = load ptr, ptr %679, align 4
  %688 = call i32 %687(ptr noundef %40, i32 noundef 24850, ptr noundef nonnull %5) #17
  %689 = load i16, ptr %5, align 2
  %690 = or i16 %689, 1
  %691 = load ptr, ptr %684, align 4
  %692 = call i32 %691(ptr noundef %40, i32 noundef 24850, i16 noundef zeroext %690) #17
  %693 = load ptr, ptr %684, align 4
  %694 = call i32 %693(ptr noundef %40, i32 noundef 19, i16 noundef zeroext -32767) #17
  br label %695

695:                                              ; preds = %678, %674, %632, %628, %620, %606
  %696 = getelementptr i8, ptr %0, i32 3312
  %697 = load ptr, ptr %696, align 4
  %698 = call i32 %697(ptr noundef %40, i32 noundef 0, i16 noundef zeroext 16704) #17
  call void @msleep(i32 noundef 250) #17
  %699 = load ptr, ptr %49, align 4
  %700 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %699) #17, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !10
  %701 = and i32 %700, -6914
  %702 = getelementptr i8, ptr %0, i32 12584
  %703 = load i32, ptr %702, align 8
  %704 = and i32 %703, 512
  %705 = icmp eq i32 %704, 0
  %706 = select i1 %705, i32 6657, i32 6721
  %707 = or i32 %706, %701
  %708 = load i32, ptr %561, align 4
  %709 = icmp eq i32 %708, 1
  br i1 %709, label %710, label %715

710:                                              ; preds = %695
  %711 = load i32, ptr %607, align 4
  %712 = icmp eq i32 %711, 2
  br i1 %712, label %713, label %715

713:                                              ; preds = %710
  %714 = or i32 %707, 128
  br label %723

715:                                              ; preds = %710, %695
  %716 = load ptr, ptr %49, align 4
  %717 = getelementptr i8, ptr %716, i32 8
  %718 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %717) #17, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !10
  %719 = and i32 %718, 1
  %720 = icmp eq i32 %719, 0
  %721 = or i32 %701, 6849
  %722 = select i1 %720, i32 %721, i32 %707
  br label %723

723:                                              ; preds = %715, %713
  %724 = phi i32 [ %714, %713 ], [ %722, %715 ]
  call void @__ew32(ptr noundef %40, i32 noundef 0, i32 noundef %724) #17
  %725 = load i32, ptr %607, align 4
  %726 = icmp eq i32 %725, 2
  br i1 %726, label %727, label %736

727:                                              ; preds = %723
  %728 = load ptr, ptr %696, align 4
  %729 = call i32 %728(ptr noundef %40, i32 noundef 29, i16 noundef zeroext 31) #17
  %730 = load ptr, ptr %696, align 4
  %731 = call i32 %730(ptr noundef %40, i32 noundef 30, i16 noundef zeroext -28676) #17
  %732 = load ptr, ptr %696, align 4
  %733 = call i32 %732(ptr noundef %40, i32 noundef 29, i16 noundef zeroext 26) #17
  %734 = load ptr, ptr %696, align 4
  %735 = call i32 %734(ptr noundef %40, i32 noundef 30, i16 noundef zeroext -28688) #17
  br label %736

736:                                              ; preds = %727, %723, %609
  call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #17
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #17
  br label %740

737:                                              ; preds = %669
  %738 = load ptr, ptr %35, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %738, ptr noundef nonnull @.str.13) #18
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #17
  %739 = sext i32 %672 to i64
  store i64 %739, ptr %341, align 8
  br label %891

740:                                              ; preds = %736, %601, %597, %566
  store i64 0, ptr %341, align 8
  %741 = load ptr, ptr %265, align 32
  %742 = load i32, ptr %443, align 4
  %743 = add i32 %742, -1
  call void @__ew32(ptr noundef %40, i32 noundef 10264, i32 noundef %743) #17
  %744 = load i32, ptr %443, align 4
  %745 = load i32, ptr %352, align 4
  %746 = call i32 @llvm.umax.i32(i32 %744, i32 %745) #17
  %747 = lshr i32 %746, 5
  %748 = or i32 %747, 1
  %749 = getelementptr i8, ptr %0, i32 12412
  %750 = getelementptr inbounds %struct.pci_dev, ptr %741, i32 0, i32 44
  %751 = getelementptr i8, ptr %0, i32 12492
  br label %755

752:                                              ; preds = %829
  %753 = add nuw nsw i32 %758, 1
  %754 = icmp eq i32 %758, %748
  br i1 %754, label %833, label %755

755:                                              ; preds = %752, %740
  %756 = phi i32 [ 0, %740 ], [ %821, %752 ]
  %757 = phi i32 [ 0, %740 ], [ %781, %752 ]
  %758 = phi i32 [ 0, %740 ], [ %753, %752 ]
  br label %759

759:                                              ; preds = %759, %755
  %760 = phi i32 [ %757, %755 ], [ %781, %759 ]
  %761 = phi i32 [ 0, %755 ], [ %782, %759 ]
  %762 = load ptr, ptr %749, align 4
  %763 = getelementptr %struct.e1000_buffer, ptr %762, i32 %760
  %764 = getelementptr %struct.e1000_buffer, ptr %762, i32 %760, i32 1
  %765 = load ptr, ptr %764, align 4
  %766 = getelementptr inbounds %struct.sk_buff, ptr %765, i32 0, i32 17
  %767 = load ptr, ptr %766, align 4
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(1024) %767, i8 -1, i32 1024, i1 false) #17
  %768 = load ptr, ptr %766, align 4
  %769 = getelementptr i8, ptr %768, i32 512
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(511) %769, i8 -86, i32 511, i1 false) #17
  %770 = load ptr, ptr %766, align 4
  %771 = getelementptr i8, ptr %770, i32 522
  store i8 -66, ptr %771, align 1
  %772 = load ptr, ptr %766, align 4
  %773 = getelementptr i8, ptr %772, i32 524
  store i8 -81, ptr %773, align 1
  %774 = load i32, ptr %763, align 4
  %775 = getelementptr %struct.e1000_buffer, ptr %762, i32 %760, i32 2, i32 0, i32 1
  %776 = load i16, ptr %775, align 4
  %777 = zext i16 %776 to i32
  call void @dma_sync_single_for_device(ptr noundef %750, i32 noundef %774, i32 noundef %777, i32 noundef 1) #17
  %778 = add i32 %760, 1
  %779 = load i32, ptr %352, align 4
  %780 = icmp eq i32 %778, %779
  %781 = select i1 %780, i32 0, i32 %778
  %782 = add nuw nsw i32 %761, 1
  %783 = icmp eq i32 %782, 64
  br i1 %783, label %784, label %759

784:                                              ; preds = %759
  call void @__ew32(ptr noundef %40, i32 noundef 14360, i32 noundef %781) #17
  %785 = load ptr, ptr %49, align 4
  %786 = getelementptr i8, ptr %785, i32 8
  %787 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %786) #17, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !10
  call void @msleep(i32 noundef 200) #17
  %788 = load volatile i32, ptr @jiffies, align 64
  %789 = add i32 %788, 20
  br label %790

790:                                              ; preds = %823, %784
  %791 = phi i32 [ %756, %784 ], [ %824, %823 ]
  %792 = phi i32 [ 0, %784 ], [ %825, %823 ]
  %793 = load ptr, ptr %751, align 4
  %794 = getelementptr %struct.e1000_buffer, ptr %793, i32 %791
  %795 = load i32, ptr %794, align 4
  call void @dma_sync_single_for_cpu(ptr noundef %750, i32 noundef %795, i32 noundef 2048, i32 noundef 2) #17
  %796 = getelementptr %struct.e1000_buffer, ptr %793, i32 %791, i32 1
  %797 = load ptr, ptr %796, align 4
  %798 = getelementptr inbounds %struct.sk_buff, ptr %797, i32 0, i32 17
  %799 = load ptr, ptr %798, align 4
  %800 = getelementptr i8, ptr %799, i32 3
  %801 = load i8, ptr %800, align 1
  %802 = icmp eq i8 %801, -1
  br i1 %802, label %803, label %811

803:                                              ; preds = %790
  %804 = getelementptr i8, ptr %799, i32 522
  %805 = load i8, ptr %804, align 1
  %806 = icmp eq i8 %805, -66
  br i1 %806, label %807, label %811

807:                                              ; preds = %803
  %808 = getelementptr i8, ptr %799, i32 524
  %809 = load i8, ptr %808, align 1
  %810 = icmp eq i8 %809, -81
  br i1 %810, label %816, label %811

811:                                              ; preds = %807, %803, %790
  %812 = add i32 %791, 1
  %813 = load i32, ptr %443, align 4
  %814 = icmp eq i32 %812, %813
  %815 = select i1 %814, i32 0, i32 %812
  br label %823

816:                                              ; preds = %807
  %817 = add nsw i32 %792, 1
  %818 = add i32 %791, 1
  %819 = load i32, ptr %443, align 4
  %820 = icmp eq i32 %818, %819
  %821 = select i1 %820, i32 0, i32 %818
  %822 = icmp slt i32 %792, 63
  br i1 %822, label %823, label %829

823:                                              ; preds = %816, %811
  %824 = phi i32 [ %815, %811 ], [ %821, %816 ]
  %825 = phi i32 [ %792, %811 ], [ %817, %816 ]
  %826 = load volatile i32, ptr @jiffies, align 64
  %827 = sub i32 %789, %826
  %828 = icmp sgt i32 %827, -1
  br i1 %828, label %790, label %833

829:                                              ; preds = %816
  %830 = load volatile i32, ptr @jiffies, align 64
  %831 = sub i32 %789, %830
  %832 = icmp slt i32 %831, 0
  br i1 %832, label %833, label %752

833:                                              ; preds = %829, %823, %752
  %834 = phi i32 [ 13, %823 ], [ 14, %829 ], [ 0, %752 ]
  %835 = zext i32 %834 to i64
  store i64 %835, ptr %341, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #17
  store i16 0, ptr %4, align 2, !annotation !8
  %836 = load ptr, ptr %49, align 4
  %837 = getelementptr i8, ptr %836, i32 256
  %838 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %837) #17, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !10
  %839 = and i32 %838, -193
  call void @__ew32(ptr noundef %40, i32 noundef 256, i32 noundef %839) #17
  %840 = load i32, ptr %41, align 4
  switch i32 %840, label %865 [
    i32 12, label %841
    i32 13, label %841
    i32 14, label %841
    i32 15, label %841
    i32 16, label %841
    i32 17, label %841
    i32 5, label %850
    i32 0, label %857
    i32 1, label %857
  ]

841:                                              ; preds = %833, %833, %833, %833, %833, %833
  %842 = load ptr, ptr %49, align 4
  %843 = getelementptr i8, ptr %842, i32 23484
  %844 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %843) #17, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !10
  %845 = and i32 %844, -8193
  call void @__ew32(ptr noundef %40, i32 noundef 23484, i32 noundef %845) #17
  %846 = load ptr, ptr %49, align 4
  %847 = getelementptr i8, ptr %846, i32 14400
  %848 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %847) #17, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !10
  %849 = and i32 %848, -805306369
  call void @__ew32(ptr noundef %40, i32 noundef 14400, i32 noundef %849) #17
  br label %850

850:                                              ; preds = %841, %833
  %851 = load i32, ptr %561, align 4
  %852 = and i32 %851, -2
  %853 = icmp eq i32 %852, 2
  br i1 %853, label %854, label %857

854:                                              ; preds = %850
  %855 = getelementptr i8, ptr %0, i32 2356
  %856 = load i32, ptr %855, align 4
  call void @__ew32(ptr noundef %40, i32 noundef 24, i32 noundef %856) #17
  store i32 0, ptr %855, align 4
  br label %857

857:                                              ; preds = %854, %850, %833, %833
  %858 = load i32, ptr %561, align 4
  %859 = and i32 %858, -2
  %860 = icmp eq i32 %859, 2
  br i1 %860, label %861, label %865

861:                                              ; preds = %857
  call void @__ew32(ptr noundef %40, i32 noundef 36, i32 noundef 1024) #17
  %862 = load ptr, ptr %49, align 4
  %863 = getelementptr i8, ptr %862, i32 8
  %864 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %863) #17, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !10
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #17
  br label %890

865:                                              ; preds = %857, %833
  store i8 1, ptr %33, align 2
  %866 = getelementptr i8, ptr %0, i32 3332
  %867 = load i32, ptr %866, align 4
  %868 = icmp eq i32 %867, 5
  br i1 %868, label %869, label %873

869:                                              ; preds = %865
  %870 = getelementptr i8, ptr %0, i32 3312
  %871 = load ptr, ptr %870, align 4
  %872 = call i32 %871(ptr noundef %40, i32 noundef 6192, i16 noundef zeroext 384) #17
  br label %873

873:                                              ; preds = %869, %865
  %874 = getelementptr i8, ptr %0, i32 3284
  %875 = load ptr, ptr %874, align 4
  %876 = call i32 %875(ptr noundef %40, i32 noundef 0, ptr noundef nonnull %4) #17
  %877 = load i16, ptr %4, align 2
  %878 = and i16 %877, 16384
  %879 = icmp eq i16 %878, 0
  br i1 %879, label %890, label %880

880:                                              ; preds = %873
  %881 = and i16 %877, -16385
  store i16 %881, ptr %4, align 2
  %882 = getelementptr i8, ptr %0, i32 3312
  %883 = load ptr, ptr %882, align 4
  %884 = call i32 %883(ptr noundef %40, i32 noundef 0, i16 noundef zeroext %881) #17
  %885 = getelementptr i8, ptr %0, i32 3260
  %886 = load ptr, ptr %885, align 4
  %887 = icmp eq ptr %886, null
  br i1 %887, label %890, label %888

888:                                              ; preds = %880
  %889 = call i32 %886(ptr noundef %40) #17
  br label %890

890:                                              ; preds = %888, %880, %873, %861
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #17
  br label %891

891:                                              ; preds = %890, %737, %563
  call fastcc void @e1000_free_desc_rings(ptr noundef %7) #17
  %892 = load i64, ptr %341, align 8
  %893 = trunc i64 %892 to i32
  %894 = icmp eq i32 %893, 0
  br i1 %894, label %898, label %895

895:                                              ; preds = %891, %544
  %896 = load i32, ptr %25, align 4
  %897 = or i32 %896, 2
  store i32 %897, ptr %25, align 4
  br label %898

898:                                              ; preds = %895, %891, %348
  %899 = getelementptr i8, ptr %0, i32 3396
  store i8 1, ptr %899, align 4
  call void @e1000e_reset(ptr noundef %7) #17
  store i8 0, ptr %899, align 4
  %900 = getelementptr i64, ptr %2, i32 4
  store i64 0, ptr %900, align 8
  %901 = getelementptr i8, ptr %0, i32 3376
  %902 = load i32, ptr %901, align 4
  %903 = icmp eq i32 %902, 3
  br i1 %903, label %904, label %916

904:                                              ; preds = %898
  %905 = getelementptr i8, ptr %0, i32 3214
  store i8 0, ptr %905, align 2
  %906 = getelementptr i8, ptr %0, i32 2556
  br label %907

907:                                              ; preds = %913, %904
  %908 = phi i32 [ 0, %904 ], [ %914, %913 ]
  %909 = load ptr, ptr %906, align 4
  %910 = call i32 %909(ptr noundef %40) #17
  %911 = load i8, ptr %905, align 2, !range !11
  %912 = icmp eq i8 %911, 0
  br i1 %912, label %913, label %930

913:                                              ; preds = %907
  call void @msleep(i32 noundef 20) #17
  %914 = add nuw nsw i32 %908, 1
  %915 = icmp eq i32 %914, 3751
  br i1 %915, label %934, label %907

916:                                              ; preds = %898
  %917 = getelementptr i8, ptr %0, i32 2556
  %918 = load ptr, ptr %917, align 4
  %919 = call i32 %918(ptr noundef %40) #17
  %920 = load i8, ptr %33, align 2, !range !11
  %921 = icmp eq i8 %920, 0
  br i1 %921, label %924, label %922

922:                                              ; preds = %916
  %923 = call i32 @msleep_interruptible(i32 noundef 5000) #17
  br label %924

924:                                              ; preds = %922, %916
  %925 = load ptr, ptr %49, align 4
  %926 = getelementptr i8, ptr %925, i32 8
  %927 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %926) #17, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !10
  %928 = and i32 %927, 2
  %929 = icmp eq i32 %928, 0
  br i1 %929, label %934, label %930

930:                                              ; preds = %924, %907
  %931 = load i64, ptr %900, align 8
  %932 = trunc i64 %931 to i32
  %933 = icmp eq i32 %932, 0
  br i1 %933, label %938, label %935

934:                                              ; preds = %924, %913
  store i64 1, ptr %900, align 8
  br label %935

935:                                              ; preds = %934, %930
  %936 = load i32, ptr %25, align 4
  %937 = or i32 %936, 2
  store i32 %937, ptr %25, align 4
  br label %938

938:                                              ; preds = %935, %930
  store i16 %30, ptr %29, align 4
  store i8 %32, ptr %31, align 2
  store i8 %34, ptr %33, align 2
  call void @e1000e_reset(ptr noundef %7) #17
  call void @_clear_bit(i32 noundef 0, ptr noundef %15) #17
  br i1 %11, label %986, label %939

939:                                              ; preds = %938
  %940 = call i32 @e1000e_open(ptr noundef %0) #17
  br label %992

941:                                              ; preds = %24
  %942 = getelementptr i8, ptr %0, i32 2524
  %943 = load ptr, ptr %942, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %943, ptr noundef nonnull @.str.3) #18
  %944 = getelementptr i64, ptr %2, i32 4
  %945 = getelementptr i8, ptr %0, i32 2532
  %946 = getelementptr i8, ptr %0, i32 3376
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(40) %2, i8 0, i64 40, i1 false)
  %947 = load i32, ptr %946, align 4
  %948 = icmp eq i32 %947, 3
  br i1 %948, label %949, label %961

949:                                              ; preds = %941
  %950 = getelementptr i8, ptr %0, i32 3214
  store i8 0, ptr %950, align 2
  %951 = getelementptr i8, ptr %0, i32 2556
  br label %952

952:                                              ; preds = %958, %949
  %953 = phi i32 [ 0, %949 ], [ %959, %958 ]
  %954 = load ptr, ptr %951, align 4
  %955 = tail call i32 %954(ptr noundef %945) #17
  %956 = load i8, ptr %950, align 2, !range !11
  %957 = icmp eq i8 %956, 0
  br i1 %957, label %958, label %977

958:                                              ; preds = %952
  tail call void @msleep(i32 noundef 20) #17
  %959 = add nuw nsw i32 %953, 1
  %960 = icmp eq i32 %959, 3751
  br i1 %960, label %981, label %952

961:                                              ; preds = %941
  %962 = getelementptr i8, ptr %0, i32 2556
  %963 = load ptr, ptr %962, align 4
  %964 = tail call i32 %963(ptr noundef %945) #17
  %965 = getelementptr i8, ptr %0, i32 3210
  %966 = load i8, ptr %965, align 2, !range !11
  %967 = icmp eq i8 %966, 0
  br i1 %967, label %970, label %968

968:                                              ; preds = %961
  %969 = tail call i32 @msleep_interruptible(i32 noundef 5000) #17
  br label %970

970:                                              ; preds = %968, %961
  %971 = getelementptr i8, ptr %0, i32 2536
  %972 = load ptr, ptr %971, align 4
  %973 = getelementptr i8, ptr %972, i32 8
  %974 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %973) #17, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !10
  %975 = and i32 %974, 2
  %976 = icmp eq i32 %975, 0
  br i1 %976, label %981, label %977

977:                                              ; preds = %970, %952
  %978 = load i64, ptr %944, align 8
  %979 = trunc i64 %978 to i32
  %980 = icmp eq i32 %979, 0
  br i1 %980, label %985, label %982

981:                                              ; preds = %970, %958
  store i64 1, ptr %944, align 8
  br label %982

982:                                              ; preds = %981, %977
  %983 = load i32, ptr %25, align 4
  %984 = or i32 %983, 2
  store i32 %984, ptr %25, align 4
  br label %985

985:                                              ; preds = %982, %977
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %15) #17
  br i1 %11, label %986, label %992

986:                                              ; preds = %985, %938
  call void @e1000e_reset(ptr noundef %7) #17
  %987 = getelementptr i8, ptr %0, i32 12584
  %988 = load i32, ptr %987, align 8
  %989 = and i32 %988, 1
  %990 = icmp eq i32 %989, 0
  br i1 %990, label %992, label %991

991:                                              ; preds = %986
  call void @e1000e_release_hw_control(ptr noundef %7) #17
  br label %992

992:                                              ; preds = %991, %986, %985, %939
  %993 = call i32 @msleep_interruptible(i32 noundef 4000) #17
  %994 = load ptr, ptr %12, align 4
  %995 = call i32 @__pm_runtime_idle(ptr noundef %994, i32 noundef 4) #17
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @e1000_get_strings(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #7 {
  switch i32 %1, label %13 [
    i32 0, label %4
    i32 1, label %5
    i32 2, label %12
  ]

4:                                                ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(160) %2, ptr noundef nonnull align 1 dereferenceable(160) @e1000_gstrings_test, i32 160, i1 false)
  br label %13

5:                                                ; preds = %5, %3
  %6 = phi i32 [ %10, %5 ], [ 0, %3 ]
  %7 = phi ptr [ %9, %5 ], [ %2, %3 ]
  %8 = getelementptr [53 x %struct.e1000_stats], ptr @e1000_gstrings_stats, i32 0, i32 %6
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(32) %7, ptr noundef align 4 dereferenceable(32) %8, i32 32, i1 false)
  %9 = getelementptr i8, ptr %7, i32 32
  %10 = add nuw nsw i32 %6, 1
  %11 = icmp eq i32 %10, 53
  br i1 %11, label %13, label %5

12:                                               ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(32) @e1000e_priv_flags_strings, i32 32, i1 false)
  br label %13

13:                                               ; preds = %12, %5, %4, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_set_phys_id(ptr noundef %0, i32 noundef %1) #3 {
  %3 = getelementptr i8, ptr %0, i32 2532
  switch i32 %1, label %39 [
    i32 1, label %4
    i32 0, label %13
    i32 2, label %31
    i32 3, label %35
  ]

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 111, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @__pm_runtime_resume(ptr noundef %6, i32 noundef 4) #17
  %8 = getelementptr i8, ptr %0, i32 2548
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %39, label %11

11:                                               ; preds = %4
  %12 = tail call i32 %9(ptr noundef %3) #17
  br label %39

13:                                               ; preds = %2
  %14 = getelementptr i8, ptr %0, i32 3332
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 7
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = getelementptr i8, ptr %0, i32 3312
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 %19(ptr noundef %3, i32 noundef 27, i16 noundef zeroext 0) #17
  br label %21

21:                                               ; preds = %17, %13
  %22 = getelementptr i8, ptr %0, i32 2588
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 %23(ptr noundef %3) #17
  %25 = getelementptr i8, ptr %0, i32 2560
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 %26(ptr noundef %3) #17
  %28 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 111, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 @__pm_runtime_idle(ptr noundef %29, i32 noundef 4) #17
  br label %39

31:                                               ; preds = %2
  %32 = getelementptr i8, ptr %0, i32 2584
  %33 = load ptr, ptr %32, align 4
  %34 = tail call i32 %33(ptr noundef %3) #17
  br label %39

35:                                               ; preds = %2
  %36 = getelementptr i8, ptr %0, i32 2588
  %37 = load ptr, ptr %36, align 4
  %38 = tail call i32 %37(ptr noundef %3) #17
  br label %39

39:                                               ; preds = %35, %31, %21, %11, %4, %2
  %40 = phi i32 [ 2, %4 ], [ 0, %2 ], [ 0, %35 ], [ 0, %31 ], [ 0, %21 ], [ 0, %11 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @e1000_get_ethtool_stats(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #3 {
  %4 = alloca %struct.rtnl_link_stats64, align 8
  %5 = getelementptr i8, ptr %0, i32 1408
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %4) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(192) %4, i8 0, i32 192, i1 false), !annotation !8
  %6 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 111, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #17
  %9 = call ptr @dev_get_stats(ptr noundef %0, ptr noundef nonnull %4) #17
  %10 = load ptr, ptr %6, align 4
  %11 = call i32 @__pm_runtime_idle(ptr noundef %10, i32 noundef 4) #17
  br label %12

12:                                               ; preds = %30, %3
  %13 = phi i32 [ 0, %3 ], [ %33, %30 ]
  %14 = getelementptr [53 x %struct.e1000_stats], ptr @e1000_gstrings_stats, i32 0, i32 %13, i32 1
  %15 = load i32, ptr %14, align 4
  switch i32 %15, label %30 [
    i32 0, label %17
    i32 1, label %16
  ]

16:                                               ; preds = %12
  br label %17

17:                                               ; preds = %16, %12
  %18 = phi ptr [ %5, %16 ], [ %4, %12 ]
  %19 = getelementptr [53 x %struct.e1000_stats], ptr @e1000_gstrings_stats, i32 0, i32 %13, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr i8, ptr %18, i32 %20
  %22 = getelementptr [53 x %struct.e1000_stats], ptr @e1000_gstrings_stats, i32 0, i32 %13, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 8
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i64, ptr %21, align 8
  br label %30

27:                                               ; preds = %17
  %28 = load i32, ptr %21, align 4
  %29 = zext i32 %28 to i64
  br label %30

30:                                               ; preds = %27, %25, %12
  %31 = phi i64 [ 0, %12 ], [ %26, %25 ], [ %29, %27 ]
  %32 = getelementptr i64, ptr %2, i32 %13
  store i64 %31, ptr %32, align 8
  %33 = add nuw nsw i32 %13, 1
  %34 = icmp eq i32 %33, 53
  br i1 %34, label %35, label %12

35:                                               ; preds = %30
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %4) #17
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @e1000e_get_priv_flags(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr i8, ptr %0, i32 12588
  %3 = load i32, ptr %2, align 4
  %4 = lshr i32 %3, 15
  %5 = and i32 %4, 1
  ret i32 %5
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @e1000e_set_priv_flags(ptr nocapture noundef %0, i32 noundef %1) #6 {
  %3 = getelementptr i8, ptr %0, i32 12588
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, -32769
  %6 = and i32 %1, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = getelementptr i8, ptr %0, i32 2648
  %10 = load i32, ptr %9, align 4
  %11 = icmp ult i32 %10, 13
  %12 = or i32 %4, 32768
  br i1 %11, label %17, label %13

13:                                               ; preds = %8, %2
  %14 = phi i32 [ %12, %8 ], [ %5, %2 ]
  %15 = icmp eq i32 %14, %4
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  store i32 %14, ptr %3, align 4
  br label %17

17:                                               ; preds = %16, %13, %8
  %18 = phi i32 [ -22, %8 ], [ 0, %16 ], [ 0, %13 ]
  ret i32 %18
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @e1000e_get_sset_count(ptr nocapture noundef readnone %0, i32 noundef %1) #2 {
  %3 = icmp ult i32 %1, 3
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = getelementptr inbounds [3 x i32], ptr @switch.table.e1000e_get_sset_count, i32 0, i32 %1
  %6 = load i32, ptr %5, align 4
  br label %7

7:                                                ; preds = %4, %2
  %8 = phi i32 [ %6, %4 ], [ -95, %2 ]
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_get_rxnfc(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readnone %2) #3 {
  %4 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %1, i32 0, i32 2
  store i64 0, ptr %4, align 8
  %5 = load i32, ptr %1, align 8
  %6 = icmp eq i32 %5, 41
  br i1 %6, label %7, label %42

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 111, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @__pm_runtime_resume(ptr noundef %9, i32 noundef 4) #17
  %11 = getelementptr i8, ptr %0, i32 2536
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 22552
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #17, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !10
  %15 = load ptr, ptr %8, align 4
  %16 = tail call i32 @__pm_runtime_idle(ptr noundef %15, i32 noundef 4) #17
  %17 = icmp ult i32 %14, 65536
  br i1 %17, label %42, label %18

18:                                               ; preds = %7
  %19 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %1, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  switch i32 %20, label %42 [
    i32 1, label %21
    i32 2, label %27
    i32 3, label %27
    i32 4, label %27
    i32 16, label %27
    i32 5, label %30
    i32 6, label %36
    i32 7, label %36
    i32 8, label %36
    i32 17, label %36
  ]

21:                                               ; preds = %18
  %22 = and i32 %14, 65536
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i64, ptr %4, align 8
  %26 = or i64 %25, 192
  store i64 %26, ptr %4, align 8
  br label %27

27:                                               ; preds = %24, %21, %18, %18, %18, %18
  %28 = and i32 %14, 131072
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %42, label %39

30:                                               ; preds = %18
  %31 = and i32 %14, 2097152
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load i64, ptr %4, align 8
  %35 = or i64 %34, 192
  store i64 %35, ptr %4, align 8
  br label %36

36:                                               ; preds = %33, %30, %18, %18, %18, %18
  %37 = and i32 %14, 1048576
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %36, %27
  %40 = load i64, ptr %4, align 8
  %41 = or i64 %40, 48
  store i64 %41, ptr %4, align 8
  br label %42

42:                                               ; preds = %39, %36, %27, %18, %7, %3
  %43 = phi i32 [ 0, %27 ], [ 0, %36 ], [ 0, %18 ], [ 0, %7 ], [ -95, %3 ], [ 0, %39 ]
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000e_get_ts_info(ptr noundef %0, ptr noundef %1) #3 {
  %3 = tail call i32 @ethtool_op_get_ts_info(ptr noundef %0, ptr noundef %1) #17
  %4 = getelementptr i8, ptr %0, i32 12584
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 16384
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %20, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ethtool_ts_info, ptr %1, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = or i32 %10, 69
  store i32 %11, ptr %9, align 4
  %12 = getelementptr inbounds %struct.ethtool_ts_info, ptr %1, i32 0, i32 3
  store i32 3, ptr %12, align 4
  %13 = getelementptr inbounds %struct.ethtool_ts_info, ptr %1, i32 0, i32 5
  store i32 32179, ptr %13, align 4
  %14 = getelementptr i8, ptr %0, i32 12800
  %15 = load ptr, ptr %14, align 64
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %8
  %18 = tail call i32 @ptp_clock_index(ptr noundef nonnull %15) #17
  %19 = getelementptr inbounds %struct.ethtool_ts_info, ptr %1, i32 0, i32 2
  store i32 %18, ptr %19, align 4
  br label %20

20:                                               ; preds = %17, %8, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000e_get_eee(ptr noundef %0, ptr nocapture noundef writeonly %1) #3 {
  %3 = alloca i16, align 2
  %4 = getelementptr i8, ptr %0, i32 2532
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #17
  store i16 0, ptr %3, align 2, !annotation !8
  %5 = getelementptr i8, ptr %0, i32 12588
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 32
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %107, label %9

9:                                                ; preds = %2
  %10 = getelementptr i8, ptr %0, i32 3244
  %11 = getelementptr i8, ptr %0, i32 3332
  %12 = load i32, ptr %11, align 4
  switch i32 %12, label %107 [
    i32 11, label %14
    i32 12, label %13
  ]

13:                                               ; preds = %9
  br label %14

14:                                               ; preds = %13, %9
  %15 = phi i16 [ -32768, %13 ], [ 1040, %9 ]
  %16 = phi i16 [ -32766, %13 ], [ 1039, %9 ]
  %17 = phi i16 [ -27647, %13 ], [ 6190, %9 ]
  %18 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 111, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 @__pm_runtime_resume(ptr noundef %19, i32 noundef 4) #17
  %21 = load ptr, ptr %10, align 4
  %22 = tail call i32 %21(ptr noundef %4) #17
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %14
  %25 = load ptr, ptr %18, align 4
  %26 = tail call i32 @__pm_runtime_idle(ptr noundef %25, i32 noundef 4) #17
  br label %107

27:                                               ; preds = %14
  %28 = call i32 @e1000_read_emi_reg_locked(ptr noundef %4, i16 noundef zeroext %15, ptr noundef nonnull %3) #17
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %101

30:                                               ; preds = %27
  %31 = load i16, ptr %3, align 2
  %32 = zext i16 %31 to i32
  %33 = shl nuw nsw i32 %32, 2
  %34 = and i32 %33, 8
  %35 = shl nuw nsw i32 %32, 3
  %36 = and i32 %35, 32
  %37 = or i32 %36, %34
  %38 = shl nuw nsw i32 %32, 9
  %39 = and i32 %38, 4096
  %40 = or i32 %37, %39
  %41 = shl nuw nsw i32 %32, 13
  %42 = and i32 %41, 131072
  %43 = or i32 %40, %42
  %44 = and i32 %41, 262144
  %45 = or i32 %43, %44
  %46 = and i32 %41, 524288
  %47 = or i32 %45, %46
  %48 = getelementptr inbounds %struct.ethtool_eee, ptr %1, i32 0, i32 1
  store i32 %47, ptr %48, align 4
  %49 = getelementptr i8, ptr %0, i32 12940
  %50 = load i16, ptr %49, align 4
  %51 = zext i16 %50 to i32
  %52 = shl nuw nsw i32 %51, 2
  %53 = and i32 %52, 8
  %54 = shl nuw nsw i32 %51, 3
  %55 = and i32 %54, 32
  %56 = or i32 %55, %53
  %57 = shl nuw nsw i32 %51, 9
  %58 = and i32 %57, 4096
  %59 = or i32 %56, %58
  %60 = shl nuw nsw i32 %51, 13
  %61 = and i32 %60, 131072
  %62 = or i32 %59, %61
  %63 = and i32 %60, 262144
  %64 = or i32 %62, %63
  %65 = and i32 %60, 524288
  %66 = or i32 %64, %65
  %67 = getelementptr inbounds %struct.ethtool_eee, ptr %1, i32 0, i32 2
  store i32 %66, ptr %67, align 4
  %68 = call i32 @e1000_read_emi_reg_locked(ptr noundef %4, i16 noundef zeroext %16, ptr noundef nonnull %3) #17
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %101

70:                                               ; preds = %30
  %71 = load i16, ptr %3, align 2
  %72 = call fastcc i32 @mmd_eee_adv_to_ethtool_adv_t(i16 noundef zeroext %71)
  %73 = getelementptr inbounds %struct.ethtool_eee, ptr %1, i32 0, i32 3
  store i32 %72, ptr %73, align 4
  %74 = call i32 @e1000_read_emi_reg_locked(ptr noundef %4, i16 noundef zeroext %17, ptr noundef nonnull %3) #17
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %101

76:                                               ; preds = %70
  %77 = load i32, ptr %11, align 4
  %78 = icmp eq i32 %77, 11
  %79 = load i16, ptr %3, align 2
  br i1 %78, label %80, label %82

80:                                               ; preds = %76
  %81 = shl i16 %79, 8
  store i16 %81, ptr %3, align 2
  br label %82

82:                                               ; preds = %80, %76
  %83 = phi i16 [ %81, %80 ], [ %79, %76 ]
  %84 = and i16 %83, 3072
  %85 = icmp eq i16 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.ethtool_eee, ptr %1, i32 0, i32 4
  store i32 1, ptr %87, align 4
  br label %88

88:                                               ; preds = %86, %82
  %89 = getelementptr i8, ptr %0, i32 11679
  %90 = load i8, ptr %89, align 1, !range !11
  %91 = xor i8 %90, 1
  %92 = zext i8 %91 to i32
  %93 = getelementptr inbounds %struct.ethtool_eee, ptr %1, i32 0, i32 5
  store i32 %92, ptr %93, align 4
  %94 = getelementptr inbounds %struct.ethtool_eee, ptr %1, i32 0, i32 6
  store i32 1, ptr %94, align 4
  %95 = getelementptr i8, ptr %0, i32 2536
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr i8, ptr %96, i32 252
  %98 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %97) #17, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !10
  %99 = lshr i32 %98, 24
  %100 = getelementptr inbounds %struct.ethtool_eee, ptr %1, i32 0, i32 7
  store i32 %99, ptr %100, align 4
  br label %101

101:                                              ; preds = %88, %70, %30, %27
  %102 = phi i32 [ 0, %88 ], [ -61, %27 ], [ -61, %30 ], [ -61, %70 ]
  %103 = getelementptr i8, ptr %0, i32 3296
  %104 = load ptr, ptr %103, align 4
  call void %104(ptr noundef %4) #17
  %105 = load ptr, ptr %18, align 4
  %106 = call i32 @__pm_runtime_idle(ptr noundef %105, i32 noundef 4) #17
  br label %107

107:                                              ; preds = %101, %24, %9, %2
  %108 = phi i32 [ -16, %24 ], [ %102, %101 ], [ -95, %2 ], [ -95, %9 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #17
  ret i32 %108
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000e_set_eee(ptr noundef %0, ptr nocapture noundef readonly %1) #3 {
  %3 = alloca %struct.ethtool_eee, align 4
  %4 = getelementptr i8, ptr %0, i32 1408
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %3, i8 0, i32 40, i1 false), !annotation !8
  %5 = call i32 @e1000e_get_eee(ptr noundef %0, ptr noundef nonnull %3)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %69

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ethtool_eee, ptr %3, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ethtool_eee, ptr %1, i32 0, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %9, %11
  br i1 %12, label %16, label %13

13:                                               ; preds = %7
  %14 = getelementptr i8, ptr %0, i32 2524
  %15 = load ptr, ptr %14, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %15, ptr noundef nonnull @.str.14) #18
  br label %69

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.ethtool_eee, ptr %3, i32 0, i32 7
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.ethtool_eee, ptr %1, i32 0, i32 7
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = getelementptr i8, ptr %0, i32 2524
  %24 = load ptr, ptr %23, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %24, ptr noundef nonnull @.str.15) #18
  br label %69

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.ethtool_eee, ptr %1, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, -41
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = getelementptr i8, ptr %0, i32 2524
  %32 = load ptr, ptr %31, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %32, ptr noundef nonnull @.str.16) #18
  br label %69

33:                                               ; preds = %25
  %34 = trunc i32 %27 to i16
  %35 = lshr i16 %34, 2
  %36 = and i16 %35, 2
  %37 = lshr i16 %34, 3
  %38 = and i16 %37, 4
  %39 = or i16 %38, %36
  %40 = lshr i16 %34, 9
  %41 = and i16 %40, 8
  %42 = or i16 %39, %41
  %43 = lshr i32 %27, 13
  %44 = trunc i32 %43 to i16
  %45 = and i16 %44, 16
  %46 = or i16 %42, %45
  %47 = and i16 %44, 32
  %48 = or i16 %46, %47
  %49 = and i16 %44, 64
  %50 = or i16 %48, %49
  %51 = getelementptr i8, ptr %0, i32 12940
  store i16 %50, ptr %51, align 4
  %52 = getelementptr inbounds %struct.ethtool_eee, ptr %1, i32 0, i32 5
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, 0
  %55 = getelementptr i8, ptr %0, i32 11679
  %56 = zext i1 %54 to i8
  store i8 %56, ptr %55, align 1
  %57 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 111, i32 1
  %58 = load ptr, ptr %57, align 4
  %59 = tail call i32 @__pm_runtime_resume(ptr noundef %58, i32 noundef 4) #17
  %60 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %61 = load volatile i32, ptr %60, align 4
  %62 = and i32 %61, 1
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %33
  tail call void @e1000e_reinit_locked(ptr noundef %4) #17
  br label %66

65:                                               ; preds = %33
  tail call void @e1000e_reset(ptr noundef %4) #17
  br label %66

66:                                               ; preds = %65, %64
  %67 = load ptr, ptr %57, align 4
  %68 = tail call i32 @__pm_runtime_idle(ptr noundef %67, i32 noundef 4) #17
  br label %69

69:                                               ; preds = %66, %30, %22, %13, %2
  %70 = phi i32 [ -22, %13 ], [ -22, %22 ], [ -22, %30 ], [ 0, %66 ], [ %5, %2 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #17
  ret i32 %70
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_get_link_ksettings(ptr noundef %0, ptr noundef %1) #3 {
  %3 = getelementptr i8, ptr %0, i32 3376
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %26

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %0, i32 3332
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 7
  %10 = select i1 %9, i32 207, i32 239
  %11 = getelementptr i8, ptr %0, i32 3210
  %12 = load i8, ptr %11, align 2, !range !11
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %6
  %15 = getelementptr i8, ptr %0, i32 3380
  %16 = load i16, ptr %15, align 4
  %17 = or i16 %16, 192
  %18 = zext i16 %17 to i32
  br label %19

19:                                               ; preds = %14, %6
  %20 = phi i32 [ %18, %14 ], [ 128, %6 ]
  %21 = getelementptr inbounds %struct.ethtool_link_settings, ptr %1, i32 0, i32 3
  store i8 0, ptr %21, align 1
  %22 = getelementptr i8, ptr %0, i32 3360
  %23 = load i32, ptr %22, align 4
  %24 = trunc i32 %23 to i8
  %25 = getelementptr inbounds %struct.ethtool_link_settings, ptr %1, i32 0, i32 4
  store i8 %24, ptr %25, align 2
  br label %28

26:                                               ; preds = %2
  %27 = getelementptr inbounds %struct.ethtool_link_settings, ptr %1, i32 0, i32 3
  store i8 3, ptr %27, align 1
  br label %28

28:                                               ; preds = %26, %19
  %29 = phi i32 [ %10, %19 ], [ 1120, %26 ]
  %30 = phi i32 [ %20, %19 ], [ 1120, %26 ]
  %31 = getelementptr inbounds %struct.ethtool_link_settings, ptr %1, i32 0, i32 2
  store i8 -1, ptr %31, align 4
  %32 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %33 = load volatile i32, ptr %32, align 4
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %48, label %36

36:                                               ; preds = %28
  %37 = load volatile i32, ptr %32, align 4
  %38 = and i32 %37, 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %78

40:                                               ; preds = %36
  %41 = getelementptr i8, ptr %0, i32 2026
  %42 = load i16, ptr %41, align 2
  %43 = zext i16 %42 to i32
  %44 = getelementptr i8, ptr %0, i32 2028
  %45 = load i16, ptr %44, align 4
  %46 = trunc i16 %45 to i8
  %47 = add i8 %46, -1
  br label %75

48:                                               ; preds = %28
  %49 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 111, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.device, ptr %50, i32 0, i32 11, i32 18
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, 2
  br i1 %53, label %54, label %59

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.device, ptr %50, i32 0, i32 11, i32 15
  %56 = load i16, ptr %55, align 8
  %57 = and i16 %56, 7
  %58 = icmp eq i16 %57, 0
  br i1 %58, label %78, label %59

59:                                               ; preds = %54, %48
  %60 = getelementptr i8, ptr %0, i32 2536
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr i8, ptr %61, i32 8
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #17, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !10
  %64 = and i32 %63, 2
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %78, label %66

66:                                               ; preds = %59
  %67 = and i32 %63, 128
  %68 = icmp eq i32 %67, 0
  %69 = and i32 %63, 64
  %70 = icmp eq i32 %69, 0
  %71 = select i1 %70, i32 10, i32 100
  %72 = select i1 %68, i32 %71, i32 1000
  %73 = trunc i32 %63 to i8
  %74 = and i8 %73, 1
  br label %75

75:                                               ; preds = %66, %40
  %76 = phi i8 [ %47, %40 ], [ %74, %66 ]
  %77 = phi i32 [ %43, %40 ], [ %72, %66 ]
  store i8 %76, ptr %31, align 4
  br label %78

78:                                               ; preds = %75, %59, %54, %36
  %79 = phi i32 [ -1, %36 ], [ -1, %54 ], [ -1, %59 ], [ %77, %75 ]
  %80 = getelementptr inbounds %struct.ethtool_link_settings, ptr %1, i32 0, i32 1
  store i32 %79, ptr %80, align 4
  %81 = load i32, ptr %3, align 4
  %82 = icmp eq i32 %81, 2
  br i1 %82, label %87, label %83

83:                                               ; preds = %78
  %84 = getelementptr i8, ptr %0, i32 3210
  %85 = load i8, ptr %84, align 2, !range !11
  %86 = icmp ne i8 %85, 0
  br label %87

87:                                               ; preds = %83, %78
  %88 = phi i1 [ true, %78 ], [ %86, %83 ]
  %89 = zext i1 %88 to i8
  %90 = getelementptr inbounds %struct.ethtool_link_settings, ptr %1, i32 0, i32 5
  store i8 %89, ptr %90, align 1
  %91 = load i32, ptr %3, align 4
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %93, label %102

93:                                               ; preds = %87
  %94 = load volatile i32, ptr %32, align 4
  %95 = and i32 %94, 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %93
  %98 = getelementptr i8, ptr %0, i32 3392
  %99 = load i8, ptr %98, align 4, !range !11
  %100 = icmp eq i8 %99, 0
  %101 = select i1 %100, i8 1, i8 2
  br label %102

102:                                              ; preds = %97, %93, %87
  %103 = phi i8 [ %101, %97 ], [ 0, %93 ], [ 0, %87 ]
  %104 = getelementptr inbounds %struct.ethtool_link_settings, ptr %1, i32 0, i32 7
  store i8 %103, ptr %104, align 1
  %105 = getelementptr i8, ptr %0, i32 3390
  %106 = load i8, ptr %105, align 2
  %107 = icmp eq i8 %106, 0
  %108 = select i1 %107, i8 3, i8 %106
  %109 = getelementptr inbounds %struct.ethtool_link_settings, ptr %1, i32 0, i32 8
  store i8 %108, ptr %109, align 2
  %110 = load i32, ptr %3, align 4
  %111 = icmp eq i32 %110, 1
  %112 = select i1 %111, i8 %108, i8 0
  store i8 %112, ptr %109, align 2
  %113 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %1, i32 0, i32 1
  tail call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %113, i32 noundef %29) #17
  %114 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %1, i32 0, i32 1, i32 1
  tail call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %114, i32 noundef %30) #17
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_set_link_ksettings(ptr noundef %0, ptr noundef %1) #3 {
  %3 = alloca i32, align 4
  %4 = getelementptr i8, ptr %0, i32 1408
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #17
  store i32 0, ptr %3, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %1, i32 0, i32 1, i32 1
  %6 = call zeroext i1 @ethtool_convert_link_mode_to_legacy_u32(ptr noundef nonnull %3, ptr noundef %5) #17
  %7 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 111, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = call i32 @__pm_runtime_resume(ptr noundef %8, i32 noundef 4) #17
  %10 = getelementptr i8, ptr %0, i32 3256
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %2
  %14 = getelementptr i8, ptr %0, i32 2532
  %15 = call i32 %11(ptr noundef %14) #17
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = getelementptr i8, ptr %0, i32 2524
  %19 = load ptr, ptr %18, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %19, ptr noundef nonnull @.str.17) #18
  br label %120

20:                                               ; preds = %13, %2
  %21 = getelementptr inbounds %struct.ethtool_link_settings, ptr %1, i32 0, i32 8
  %22 = load i8, ptr %21, align 2
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %37, label %24

24:                                               ; preds = %20
  %25 = getelementptr i8, ptr %0, i32 3376
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %120

28:                                               ; preds = %24
  %29 = icmp eq i8 %22, 3
  br i1 %29, label %37, label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.ethtool_link_settings, ptr %1, i32 0, i32 5
  %32 = load i8, ptr %31, align 1
  %33 = icmp eq i8 %32, 1
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = getelementptr i8, ptr %0, i32 2524
  %36 = load ptr, ptr %35, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %36, ptr noundef nonnull @.str.18) #18
  br label %120

37:                                               ; preds = %30, %28, %20
  %38 = getelementptr i8, ptr %0, i32 2032
  %39 = call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %38) #17
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %41, %37
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #17
  %42 = call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %38) #17
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %41

44:                                               ; preds = %41, %37
  %45 = getelementptr inbounds %struct.ethtool_link_settings, ptr %1, i32 0, i32 5
  %46 = load i8, ptr %45, align 1
  %47 = icmp eq i8 %46, 1
  br i1 %47, label %48, label %64

48:                                               ; preds = %44
  %49 = getelementptr i8, ptr %0, i32 3210
  store i8 1, ptr %49, align 2
  %50 = getelementptr i8, ptr %0, i32 3376
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 2
  %53 = load i32, ptr %3, align 4
  %54 = trunc i32 %53 to i16
  %55 = or i16 %54, 192
  %56 = select i1 %52, i16 1120, i16 %55
  %57 = getelementptr i8, ptr %0, i32 3380
  store i16 %56, ptr %57, align 4
  %58 = zext i16 %56 to i32
  store i32 %58, ptr %3, align 4
  %59 = getelementptr i8, ptr %0, i32 12580
  %60 = load i8, ptr %59, align 4, !range !11
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %105, label %62

62:                                               ; preds = %48
  %63 = getelementptr i8, ptr %0, i32 3240
  store i32 255, ptr %63, align 4
  br label %105

64:                                               ; preds = %44
  %65 = getelementptr inbounds %struct.ethtool_link_settings, ptr %1, i32 0, i32 1
  %66 = load i32, ptr %65, align 4
  %67 = getelementptr inbounds %struct.ethtool_link_settings, ptr %1, i32 0, i32 2
  %68 = load i8, ptr %67, align 4
  %69 = getelementptr i8, ptr %0, i32 3210
  store i8 0, ptr %69, align 2
  %70 = and i32 %66, 1
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %102

72:                                               ; preds = %64
  %73 = zext i8 %68 to i32
  %74 = and i32 %73, 254
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %102

76:                                               ; preds = %72
  %77 = getelementptr i8, ptr %0, i32 3376
  %78 = load i32, ptr %77, align 4
  %79 = icmp eq i32 %78, 2
  %80 = icmp ne i32 %66, 1000
  %81 = and i1 %80, %79
  %82 = icmp ne i8 %68, 1
  %83 = and i1 %82, %81
  br i1 %83, label %102, label %84

84:                                               ; preds = %76
  %85 = add i32 %66, %73
  switch i32 %85, label %102 [
    i32 10, label %86
    i32 11, label %88
    i32 100, label %90
    i32 101, label %92
    i32 1001, label %94
  ]

86:                                               ; preds = %84
  %87 = getelementptr i8, ptr %0, i32 3206
  store i8 1, ptr %87, align 2
  br label %100

88:                                               ; preds = %84
  %89 = getelementptr i8, ptr %0, i32 3206
  store i8 2, ptr %89, align 2
  br label %100

90:                                               ; preds = %84
  %91 = getelementptr i8, ptr %0, i32 3206
  store i8 4, ptr %91, align 2
  br label %100

92:                                               ; preds = %84
  %93 = getelementptr i8, ptr %0, i32 3206
  store i8 8, ptr %93, align 2
  br label %100

94:                                               ; preds = %84
  %95 = icmp eq i32 %78, 1
  br i1 %95, label %96, label %98

96:                                               ; preds = %94
  store i8 1, ptr %69, align 2
  %97 = getelementptr i8, ptr %0, i32 3380
  store i16 32, ptr %97, align 4
  br label %100

98:                                               ; preds = %94
  %99 = getelementptr i8, ptr %0, i32 3206
  store i8 32, ptr %99, align 2
  br label %100

100:                                              ; preds = %98, %96, %92, %90, %88, %86
  %101 = getelementptr i8, ptr %0, i32 3390
  store i8 0, ptr %101, align 2
  br label %105

102:                                              ; preds = %84, %76, %72, %64
  %103 = getelementptr i8, ptr %0, i32 2524
  %104 = load ptr, ptr %103, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %104, ptr noundef nonnull @.str.19) #18
  br label %120

105:                                              ; preds = %100, %62, %48
  %106 = load i8, ptr %21, align 2
  switch i8 %106, label %107 [
    i8 0, label %111
    i8 3, label %108
  ]

107:                                              ; preds = %105
  br label %108

108:                                              ; preds = %107, %105
  %109 = phi i8 [ %106, %107 ], [ 0, %105 ]
  %110 = getelementptr i8, ptr %0, i32 3390
  store i8 %109, ptr %110, align 2
  br label %111

111:                                              ; preds = %108, %105
  %112 = getelementptr i8, ptr %0, i32 2524
  %113 = load ptr, ptr %112, align 4
  %114 = getelementptr inbounds %struct.net_device, ptr %113, i32 0, i32 6
  %115 = load volatile i32, ptr %114, align 4
  %116 = and i32 %115, 1
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %111
  call void @e1000e_down(ptr noundef %4, i1 noundef zeroext true) #17
  call void @e1000e_up(ptr noundef %4) #17
  br label %120

119:                                              ; preds = %111
  call void @e1000e_reset(ptr noundef %4) #17
  br label %120

120:                                              ; preds = %119, %118, %102, %34, %24, %17
  %121 = phi i32 [ -22, %17 ], [ -22, %34 ], [ 0, %118 ], [ 0, %119 ], [ -22, %102 ], [ -95, %24 ]
  %122 = load ptr, ptr %7, align 4
  %123 = call i32 @__pm_runtime_idle(ptr noundef %122, i32 noundef 4) #17
  %124 = getelementptr i8, ptr %0, i32 2032
  call void @_clear_bit(i32 noundef 1, ptr noundef %124) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  ret i32 %121
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_set_wakeup_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000e_reinit_locked(ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #14

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000e_write_itr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000e_down(ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_setup_tx_resources(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_setup_rx_resources(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000e_free_tx_resources(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000e_free_rx_resources(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000e_up(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000e_reset(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_force_mac_fc(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_set_fc_watermarks(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000e_get_hw_control(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000e_power_up_phy(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_close(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_open(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000e_release_hw_control(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ew32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @reg_pattern_test(ptr noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #3 {
  %7 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65
  %8 = shl i32 %3, 2
  %9 = add i32 %8, %2
  %10 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 1
  %11 = and i32 %5, 1515870810
  tail call void @__ew32(ptr noundef %7, i32 noundef %9, i32 noundef %11) #17
  %12 = load ptr, ptr %10, align 4
  %13 = getelementptr i8, ptr %12, i32 %2
  %14 = getelementptr i8, ptr %13, i32 %8
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #17, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !13
  %16 = and i32 %11, %4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %39

18:                                               ; preds = %6
  %19 = and i32 %5, -1515870811
  tail call void @__ew32(ptr noundef %7, i32 noundef %9, i32 noundef %19) #17
  %20 = load ptr, ptr %10, align 4
  %21 = getelementptr i8, ptr %20, i32 %2
  %22 = getelementptr i8, ptr %21, i32 %8
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #17, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !13
  %24 = and i32 %19, %4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %18
  tail call void @__ew32(ptr noundef %7, i32 noundef %9, i32 noundef 0) #17
  %27 = load ptr, ptr %10, align 4
  %28 = getelementptr i8, ptr %27, i32 %2
  %29 = getelementptr i8, ptr %28, i32 %8
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #17, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !13
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %26
  tail call void @__ew32(ptr noundef %7, i32 noundef %9, i32 noundef %5) #17
  %33 = load ptr, ptr %10, align 4
  %34 = getelementptr i8, ptr %33, i32 %2
  %35 = getelementptr i8, ptr %34, i32 %8
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #17, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !13
  %37 = and i32 %5, %4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %45, label %39

39:                                               ; preds = %32, %26, %18, %6
  %40 = phi i32 [ %15, %6 ], [ %23, %18 ], [ %30, %26 ], [ %36, %32 ]
  %41 = phi i32 [ %16, %6 ], [ %24, %18 ], [ 0, %26 ], [ %37, %32 ]
  %42 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 63
  %43 = load ptr, ptr %42, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %43, ptr noundef nonnull @.str.5, i32 noundef %9, i32 noundef %40, i32 noundef %41) #18
  %44 = zext i32 %2 to i64
  store i64 %44, ptr %1, align 8
  br label %45

45:                                               ; preds = %39, %32
  %46 = phi i1 [ true, %39 ], [ false, %32 ]
  ret i1 %46
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000e_reset_interrupt_capability(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000e_set_interrupt_capability(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_test_intr(i32 noundef %0, ptr nocapture noundef %1) #3 {
  %3 = getelementptr i8, ptr %1, i32 2536
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 192
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #17, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !10
  %7 = getelementptr i8, ptr %1, i32 12540
  %8 = load i32, ptr %7, align 4
  %9 = or i32 %8, %6
  store i32 %9, ptr %7, align 4
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @e1000_free_desc_rings(ptr nocapture noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 64
  %3 = load ptr, ptr %2, align 32
  %4 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 71, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %35, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 71, i32 9
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %35, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 71, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %35, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  br label %17

17:                                               ; preds = %33, %15
  %18 = phi ptr [ %9, %15 ], [ %34, %33 ]
  %19 = phi i32 [ 0, %15 ], [ %30, %33 ]
  %20 = getelementptr %struct.e1000_buffer, ptr %18, i32 %19
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %17
  %24 = getelementptr %struct.e1000_buffer, ptr %18, i32 %19, i32 2, i32 0, i32 1
  %25 = load i16, ptr %24, align 4
  %26 = zext i16 %25 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %16, i32 noundef %21, i32 noundef %26, i32 noundef 1, i32 noundef 0) #17
  br label %27

27:                                               ; preds = %23, %17
  %28 = getelementptr %struct.e1000_buffer, ptr %18, i32 %19, i32 1
  %29 = load ptr, ptr %28, align 4
  tail call void @consume_skb(ptr noundef %29) #17
  %30 = add nuw i32 %19, 1
  %31 = load i32, ptr %12, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load ptr, ptr %8, align 4
  br label %17

35:                                               ; preds = %27, %11, %7, %1
  %36 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 72, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %64, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 72, i32 9
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %64, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 72, i32 4
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %64, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  br label %49

49:                                               ; preds = %62, %47
  %50 = phi ptr [ %41, %47 ], [ %63, %62 ]
  %51 = phi i32 [ 0, %47 ], [ %59, %62 ]
  %52 = getelementptr %struct.e1000_buffer, ptr %50, i32 %51
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %49
  tail call void @dma_unmap_page_attrs(ptr noundef %48, i32 noundef %53, i32 noundef 2048, i32 noundef 2, i32 noundef 0) #17
  br label %56

56:                                               ; preds = %55, %49
  %57 = getelementptr %struct.e1000_buffer, ptr %50, i32 %51, i32 1
  %58 = load ptr, ptr %57, align 4
  tail call void @consume_skb(ptr noundef %58) #17
  %59 = add nuw i32 %51, 1
  %60 = load i32, ptr %44, align 4
  %61 = icmp ult i32 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = load ptr, ptr %40, align 4
  br label %49

64:                                               ; preds = %56, %43, %39, %35
  %65 = load ptr, ptr %4, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %73, label %67

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %69 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 71, i32 3
  %70 = load i32, ptr %69, align 4
  %71 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 71, i32 2
  %72 = load i32, ptr %71, align 4
  tail call void @dma_free_attrs(ptr noundef %68, i32 noundef %70, ptr noundef nonnull %65, i32 noundef %72, i32 noundef 0) #17
  store ptr null, ptr %4, align 4
  br label %73

73:                                               ; preds = %67, %64
  %74 = load ptr, ptr %36, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %82, label %76

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %78 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 72, i32 3
  %79 = load i32, ptr %78, align 4
  %80 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 72, i32 2
  %81 = load i32, ptr %80, align 4
  tail call void @dma_free_attrs(ptr noundef %77, i32 noundef %79, ptr noundef nonnull %74, i32 noundef %81, i32 noundef 0) #17
  store ptr null, ptr %36, align 4
  br label %82

82:                                               ; preds = %76, %73
  %83 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 71, i32 9
  %84 = load ptr, ptr %83, align 4
  tail call void @kfree(ptr noundef %84) #17
  store ptr null, ptr %83, align 4
  %85 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 72, i32 9
  %86 = load ptr, ptr %85, align 4
  tail call void @kfree(ptr noundef %86) #17
  store ptr null, ptr %85, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000_configure_k1_ich8lan(ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_stats(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_ts_info(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_clock_index(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000_read_emi_reg_locked(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal fastcc i32 @mmd_eee_adv_to_ethtool_adv_t(i16 noundef zeroext %0) unnamed_addr #16 {
  %2 = zext i16 %0 to i32
  %3 = shl nuw nsw i32 %2, 2
  %4 = and i32 %3, 8
  %5 = shl nuw nsw i32 %2, 3
  %6 = and i32 %5, 32
  %7 = or i32 %6, %4
  %8 = shl nuw nsw i32 %2, 9
  %9 = and i32 %8, 4096
  %10 = or i32 %7, %9
  %11 = shl nuw nsw i32 %2, 13
  %12 = and i32 %11, 131072
  %13 = or i32 %10, %12
  %14 = and i32 %11, 262144
  %15 = or i32 %13, %14
  %16 = and i32 %11, 524288
  %17 = or i32 %15, %16
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ethtool_convert_link_mode_to_legacy_u32(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly nofree nounwind willreturn writeonly }
attributes #12 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { argmemonly nofree nounwind willreturn }
attributes #14 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { nounwind }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind allocsize(0) }

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
!9 = !{i64 5291309}
!10 = !{i64 2155660135}
!11 = !{i8 0, i8 2}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{i64 2155710269}
