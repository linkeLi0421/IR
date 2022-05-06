; ModuleID = '/llk/IR/drivers/net/ethernet/intel/igb/igb_ethtool.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/igb/igb_ethtool.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.igb_reg_test = type { i16, i16, i16, i16, i32, i32 }
%struct.igb_stats = type { [32 x i8], i32, i32 }
%struct.igb_adapter = type { [128 x i32], ptr, ptr, i32, i32, i32, [10 x %struct.msix_entry], i32, i32, i16, i16, i16, i32, i32, [16 x ptr], i32, [16 x ptr], i32, i32, %struct.timer_list, %struct.timer_list, i16, i32, i32, i32, i16, i16, ptr, %struct.work_struct, %struct.work_struct, i8, i8, %struct.timer_list, i32, ptr, %struct.spinlock, %struct.rtnl_link_stats64, %struct.e1000_hw, %struct.e1000_hw_stats, %struct.e1000_phy_info, i32, [12 x i8], %struct.igb_ring, %struct.igb_ring, i32, [8 x ptr], i32, i32, i16, i16, i32, ptr, i32, i32, i32, ptr, ptr, %struct.ptp_clock_info, %struct.delayed_work, %struct.work_struct, ptr, %struct.hwtstamp_config, i32, i32, i32, i32, %struct.spinlock, %struct.cyclecounter, %struct.timecounter, i32, i32, i32, i8, [4 x %struct.ptp_pin_desc], [2 x %struct.anon.120], [32 x i8], ptr, i8, %struct.i2c_algo_bit_data, %struct.i2c_adapter, ptr, i32, [128 x i8], i32, i32, %struct.e1000_info, i16, %struct.hlist_head, %struct.hlist_head, i32, %struct.spinlock, [3 x i8], ptr, %struct.vf_mac_filter, ptr, [36 x i8] }
%struct.msix_entry = type { i32, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.e1000_hw = type { ptr, ptr, ptr, i32, %struct.e1000_mac_info, %struct.e1000_fc_info, %struct.e1000_phy_info, %struct.e1000_nvm_info, %struct.e1000_bus_info, %struct.e1000_mbx_info, %struct.e1000_host_mng_dhcp_cookie, %union.anon.116, i16, i16, i16, i16, i8 }
%struct.e1000_mac_info = type { %struct.e1000_mac_operations, [6 x i8], [6 x i8], i32, i32, i32, i32, i32, i32, i16, i16, [128 x i32], i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.e1000_thermal_sensor_data }
%struct.e1000_mac_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_thermal_sensor_data = type { [3 x %struct.e1000_thermal_diode_data] }
%struct.e1000_thermal_diode_data = type { i8, i8, i8, i8 }
%struct.e1000_fc_info = type { i32, i32, i16, i8, i8, i32, i32 }
%struct.e1000_nvm_info = type { %struct.e1000_nvm_operations, i32, i32, i32, i32, i16, i16, i16, i16, i16 }
%struct.e1000_nvm_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_bus_info = type { i32, i32, i32, i32, i16, i16 }
%struct.e1000_mbx_info = type { %struct.e1000_mbx_operations, %struct.e1000_mbx_stats, i32, i32, i16 }
%struct.e1000_mbx_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_mbx_stats = type { i32, i32, i32, i32, i32 }
%struct.e1000_host_mng_dhcp_cookie = type { i32, i8, i8, i16, i32, i16, i8, i8 }
%union.anon.116 = type { %struct.e1000_dev_spec_82575 }
%struct.e1000_dev_spec_82575 = type { i8, i8, i8, i8, %struct.e1000_sfp_flags, i8, i8, i8, i8 }
%struct.e1000_sfp_flags = type { i8 }
%struct.e1000_hw_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.e1000_phy_info = type { %struct.e1000_phy_operations, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, [4 x i16], i8, i8, i8, i8, i8, i8, i8 }
%struct.e1000_phy_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.igb_ring = type { ptr, ptr, ptr, ptr, %union.anon.109, ptr, i32, ptr, i32, i32, i16, i8, i8, i8, i8, i32, i32, i32, i32, i16, i16, i16, %union.anon.113, %struct.xdp_rxq_info }
%union.anon.109 = type { ptr }
%union.anon.113 = type { %struct.anon.115 }
%struct.anon.115 = type { ptr, %struct.igb_rx_queue_stats, %struct.u64_stats_sync }
%struct.igb_rx_queue_stats = type { i64, i64, i64, i64, i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [40 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.ptp_pin_desc = type { [64 x i8], i32, i32, i32, [5 x i32] }
%struct.anon.120 = type { %struct.timespec64, %struct.timespec64 }
%struct.timespec64 = type { i64, i32 }
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.23 }
%union.anon.23 = type { i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.e1000_info = type { ptr, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.spinlock = type { %union.anon.22 }
%union.anon.22 = type { %struct.raw_spinlock }
%struct.vf_mac_filter = type { %struct.list_head, i32, i8, [6 x i8] }
%struct.igb_nfc_filter = type { %struct.hlist_node, %struct.igb_nfc_input, i32, i16, i16, i16 }
%struct.igb_nfc_input = type { i8, i16, i16, [6 x i8], [6 x i8] }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, [2 x i8], ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, [4 x i8], i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [11 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [11 x ptr], [11 x ptr], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, [2 x i8], i32, i32, ptr, i32, [7 x i8], [5 x i8] }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.108, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.ref_tracker_dir = type {}
%struct.possible_net_t = type {}
%union.anon.108 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_regs = type { i32, i32, i32, [0 x i8] }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.ethtool_eeprom = type { i32, i32, i32, i32, [0 x i8] }
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.igb_q_vector = type { ptr, i32, i32, i16, i8, ptr, %struct.igb_ring_container, %struct.igb_ring_container, %struct.napi_struct, %struct.callback_head, [25 x i8], [15 x i8], [0 x %struct.igb_ring] }
%struct.igb_ring_container = type { ptr, i32, i32, i16, i8, i8 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.ethtool_ringparam = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_pauseparam = type { i32, i32, i32, i32 }
%struct.ethtool_test = type { i32, i32, i32, i32, [0 x i64] }
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
%union.e1000_adv_rx_desc = type { %struct.anon.127 }
%struct.anon.127 = type { i64, i64 }
%struct.anon.128 = type { %struct.anon.129, %struct.anon.133 }
%struct.anon.129 = type { %struct.anon.130, %union.anon.131 }
%struct.anon.130 = type { i16, i16 }
%union.anon.131 = type { i32 }
%struct.anon.133 = type { i32, i16, i16 }
%struct.igb_rx_buffer = type { i32, ptr, i16, i16 }
%struct.igb_tx_buffer = type { ptr, i32, i32, %union.anon.112, i32, i16, i16, i32, i32, i32 }
%union.anon.112 = type { ptr }
%struct.netdev_queue = type { ptr, %struct.netdevice_tracker, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, [4 x i8], %struct.spinlock, i32, i32, i32, [48 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [52 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [24 x i8] }
%struct.anon.114 = type { %struct.igb_tx_queue_stats, %struct.u64_stats_sync, %struct.u64_stats_sync }
%struct.igb_tx_queue_stats = type { i64, i64, i64, i64 }
%struct.ethtool_rxnfc = type { i32, i32, i64, %struct.ethtool_rx_flow_spec, %union.anon.106, [0 x i32] }
%struct.ethtool_rx_flow_spec = type { i32, %union.ethtool_flow_union, %struct.ethtool_flow_ext, %union.ethtool_flow_union, %struct.ethtool_flow_ext, i64, i32 }
%union.ethtool_flow_union = type { %struct.ethtool_tcpip6_spec, [12 x i8] }
%struct.ethtool_tcpip6_spec = type { [4 x i32], [4 x i32], i16, i16, i8 }
%struct.ethtool_flow_ext = type { [2 x i8], [6 x i8], i16, i16, [2 x i32] }
%union.anon.106 = type { i32 }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.ethtool_channels = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_ts_info = type { i32, i32, i32, i32, [3 x i32], i32, [3 x i32] }
%struct.ethtool_modinfo = type { i32, i32, i32, [8 x i32] }
%struct.ethtool_eee = type { i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.107, i32 }
%struct.anon.107 = type { [3 x i32], [3 x i32], [3 x i32] }

@.str = private unnamed_addr constant [82 x i8] c"i210 doesn't support flow classification rules specifying only source addresses.\0A\00", align 1
@igb_ethtool_ops = internal constant %struct.ethtool_ops { i8 0, i32 17, i32 0, ptr @igb_get_drvinfo, ptr @igb_get_regs_len, ptr @igb_get_regs, ptr @igb_get_wol, ptr @igb_set_wol, ptr @igb_get_msglevel, ptr @igb_set_msglevel, ptr @igb_nway_reset, ptr @igb_get_link, ptr null, ptr @igb_get_eeprom_len, ptr @igb_get_eeprom, ptr @igb_set_eeprom, ptr @igb_get_coalesce, ptr @igb_set_coalesce, ptr @igb_get_ringparam, ptr @igb_set_ringparam, ptr null, ptr @igb_get_pauseparam, ptr @igb_set_pauseparam, ptr @igb_diag_test, ptr @igb_get_strings, ptr @igb_set_phys_id, ptr @igb_get_ethtool_stats, ptr @igb_ethtool_begin, ptr @igb_ethtool_complete, ptr @igb_get_priv_flags, ptr @igb_set_priv_flags, ptr @igb_get_sset_count, ptr @igb_get_rxnfc, ptr @igb_set_rxnfc, ptr null, ptr null, ptr null, ptr @igb_get_rxfh_indir_size, ptr @igb_get_rxfh, ptr @igb_set_rxfh, ptr null, ptr null, ptr @igb_get_channels, ptr @igb_set_channels, ptr null, ptr null, ptr null, ptr @igb_get_ts_info, ptr @igb_get_module_info, ptr @igb_get_module_eeprom, ptr @igb_get_eee, ptr @igb_set_eee, ptr null, ptr null, ptr null, ptr null, ptr @igb_get_link_ksettings, ptr @igb_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"ethtool -N: etype filters are all used.\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"ethtool rxnfc set vlan prio filter failed.\0A\00", align 1
@igb_driver_name = external dso_local global [0 x i8], align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"offline testing starting\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"online testing starting\0A\00", align 1
@reg_test_i350 = internal unnamed_addr constant [33 x %struct.igb_reg_test] [%struct.igb_reg_test { i16 40, i16 256, i16 1, i16 1, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 44, i16 256, i16 1, i16 1, i32 65535, i32 -1 }, %struct.igb_reg_test { i16 48, i16 256, i16 1, i16 1, i32 65535, i32 -1 }, %struct.igb_reg_test { i16 56, i16 256, i16 1, i16 1, i32 -65536, i32 -65536 }, %struct.igb_reg_test { i16 10240, i16 256, i16 4, i16 1, i32 -128, i32 -1 }, %struct.igb_reg_test { i16 10244, i16 256, i16 4, i16 1, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 10248, i16 256, i16 4, i16 1, i32 1048448, i32 1048575 }, %struct.igb_reg_test { i16 -16128, i16 64, i16 4, i16 1, i32 -128, i32 -1 }, %struct.igb_reg_test { i16 -16124, i16 64, i16 4, i16 1, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 -16120, i16 64, i16 4, i16 1, i32 1048448, i32 1048575 }, %struct.igb_reg_test { i16 10264, i16 256, i16 4, i16 1, i32 65535, i32 65535 }, %struct.igb_reg_test { i16 -16104, i16 64, i16 4, i16 1, i32 65535, i32 65535 }, %struct.igb_reg_test { i16 8552, i16 256, i16 1, i16 1, i32 65520, i32 65520 }, %struct.igb_reg_test { i16 368, i16 256, i16 1, i16 1, i32 65535, i32 65535 }, %struct.igb_reg_test { i16 1040, i16 256, i16 1, i16 1, i32 1073741823, i32 1073741823 }, %struct.igb_reg_test { i16 14336, i16 256, i16 4, i16 1, i32 -128, i32 -1 }, %struct.igb_reg_test { i16 14340, i16 256, i16 4, i16 1, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 14344, i16 256, i16 4, i16 1, i32 1048448, i32 1048575 }, %struct.igb_reg_test { i16 -7936, i16 64, i16 4, i16 1, i32 -128, i32 -1 }, %struct.igb_reg_test { i16 -7932, i16 64, i16 4, i16 1, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 -7928, i16 64, i16 4, i16 1, i32 1048448, i32 1048575 }, %struct.igb_reg_test { i16 14360, i16 256, i16 4, i16 1, i32 65535, i32 65535 }, %struct.igb_reg_test { i16 -7912, i16 64, i16 4, i16 1, i32 65535, i32 65535 }, %struct.igb_reg_test { i16 256, i16 256, i16 1, i16 2, i32 -1, i32 0 }, %struct.igb_reg_test { i16 256, i16 256, i16 1, i16 2, i32 80720126, i32 4194299 }, %struct.igb_reg_test { i16 256, i16 256, i16 1, i16 2, i32 80720126, i32 -1 }, %struct.igb_reg_test { i16 1024, i16 256, i16 1, i16 2, i32 -1, i32 0 }, %struct.igb_reg_test { i16 21504, i16 0, i16 16, i16 5, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 21504, i16 0, i16 16, i16 6, i32 -1006632961, i32 -1 }, %struct.igb_reg_test { i16 21728, i16 0, i16 16, i16 5, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 21728, i16 0, i16 16, i16 6, i32 -1006632961, i32 -1 }, %struct.igb_reg_test { i16 20992, i16 0, i16 128, i16 4, i32 -1, i32 -1 }, %struct.igb_reg_test zeroinitializer], align 4
@reg_test_i210 = internal unnamed_addr constant [22 x %struct.igb_reg_test] [%struct.igb_reg_test { i16 40, i16 256, i16 1, i16 1, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 44, i16 256, i16 1, i16 1, i32 65535, i32 -1 }, %struct.igb_reg_test { i16 48, i16 256, i16 1, i16 1, i32 65535, i32 -1 }, %struct.igb_reg_test { i16 10240, i16 256, i16 4, i16 1, i32 -128, i32 -1 }, %struct.igb_reg_test { i16 10244, i16 256, i16 4, i16 1, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 10248, i16 256, i16 4, i16 1, i32 1048448, i32 1048575 }, %struct.igb_reg_test { i16 10264, i16 256, i16 4, i16 1, i32 65535, i32 65535 }, %struct.igb_reg_test { i16 8552, i16 256, i16 1, i16 1, i32 65520, i32 65520 }, %struct.igb_reg_test { i16 368, i16 256, i16 1, i16 1, i32 65535, i32 65535 }, %struct.igb_reg_test { i16 1040, i16 256, i16 1, i16 1, i32 1073741823, i32 1073741823 }, %struct.igb_reg_test { i16 14336, i16 256, i16 4, i16 1, i32 -128, i32 -1 }, %struct.igb_reg_test { i16 14340, i16 256, i16 4, i16 1, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 14344, i16 256, i16 4, i16 1, i32 1048448, i32 1048575 }, %struct.igb_reg_test { i16 14360, i16 256, i16 4, i16 1, i32 65535, i32 65535 }, %struct.igb_reg_test { i16 256, i16 256, i16 1, i16 2, i32 -1, i32 0 }, %struct.igb_reg_test { i16 256, i16 256, i16 1, i16 2, i32 80720126, i32 4194299 }, %struct.igb_reg_test { i16 256, i16 256, i16 1, i16 2, i32 80720126, i32 -1 }, %struct.igb_reg_test { i16 1024, i16 256, i16 1, i16 2, i32 -1, i32 0 }, %struct.igb_reg_test { i16 21504, i16 0, i16 16, i16 5, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 21504, i16 0, i16 16, i16 6, i32 -1877999617, i32 -1 }, %struct.igb_reg_test { i16 20992, i16 0, i16 128, i16 4, i32 -1, i32 -1 }, %struct.igb_reg_test zeroinitializer], align 4
@reg_test_82580 = internal unnamed_addr constant [33 x %struct.igb_reg_test] [%struct.igb_reg_test { i16 40, i16 256, i16 1, i16 1, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 44, i16 256, i16 1, i16 1, i32 65535, i32 -1 }, %struct.igb_reg_test { i16 48, i16 256, i16 1, i16 1, i32 65535, i32 -1 }, %struct.igb_reg_test { i16 56, i16 256, i16 1, i16 1, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 10240, i16 256, i16 4, i16 1, i32 -128, i32 -1 }, %struct.igb_reg_test { i16 10244, i16 256, i16 4, i16 1, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 10248, i16 256, i16 4, i16 1, i32 1048560, i32 1048575 }, %struct.igb_reg_test { i16 -16128, i16 64, i16 4, i16 1, i32 -128, i32 -1 }, %struct.igb_reg_test { i16 -16124, i16 64, i16 4, i16 1, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 -16120, i16 64, i16 4, i16 1, i32 1048560, i32 1048575 }, %struct.igb_reg_test { i16 10264, i16 256, i16 4, i16 1, i32 65535, i32 65535 }, %struct.igb_reg_test { i16 -16104, i16 64, i16 4, i16 1, i32 65535, i32 65535 }, %struct.igb_reg_test { i16 8552, i16 256, i16 1, i16 1, i32 65520, i32 65520 }, %struct.igb_reg_test { i16 368, i16 256, i16 1, i16 1, i32 65535, i32 65535 }, %struct.igb_reg_test { i16 1040, i16 256, i16 1, i16 1, i32 1073741823, i32 1073741823 }, %struct.igb_reg_test { i16 14336, i16 256, i16 4, i16 1, i32 -128, i32 -1 }, %struct.igb_reg_test { i16 14340, i16 256, i16 4, i16 1, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 14344, i16 256, i16 4, i16 1, i32 1048560, i32 1048575 }, %struct.igb_reg_test { i16 -7936, i16 64, i16 4, i16 1, i32 -128, i32 -1 }, %struct.igb_reg_test { i16 -7932, i16 64, i16 4, i16 1, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 -7928, i16 64, i16 4, i16 1, i32 1048560, i32 1048575 }, %struct.igb_reg_test { i16 14360, i16 256, i16 4, i16 1, i32 65535, i32 65535 }, %struct.igb_reg_test { i16 -7912, i16 64, i16 4, i16 1, i32 65535, i32 65535 }, %struct.igb_reg_test { i16 256, i16 256, i16 1, i16 2, i32 -1, i32 0 }, %struct.igb_reg_test { i16 256, i16 256, i16 1, i16 2, i32 80720126, i32 4194299 }, %struct.igb_reg_test { i16 256, i16 256, i16 1, i16 2, i32 80720126, i32 -1 }, %struct.igb_reg_test { i16 1024, i16 256, i16 1, i16 2, i32 -1, i32 0 }, %struct.igb_reg_test { i16 21504, i16 0, i16 16, i16 5, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 21504, i16 0, i16 16, i16 6, i32 -2080374785, i32 -1 }, %struct.igb_reg_test { i16 21728, i16 0, i16 8, i16 5, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 21728, i16 0, i16 8, i16 6, i32 -2080374785, i32 -1 }, %struct.igb_reg_test { i16 20992, i16 0, i16 128, i16 4, i32 -1, i32 -1 }, %struct.igb_reg_test zeroinitializer], align 4
@reg_test_82576 = internal unnamed_addr constant [35 x %struct.igb_reg_test] [%struct.igb_reg_test { i16 40, i16 256, i16 1, i16 1, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 44, i16 256, i16 1, i16 1, i32 65535, i32 -1 }, %struct.igb_reg_test { i16 48, i16 256, i16 1, i16 1, i32 65535, i32 -1 }, %struct.igb_reg_test { i16 56, i16 256, i16 1, i16 1, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 10240, i16 256, i16 4, i16 1, i32 -128, i32 -1 }, %struct.igb_reg_test { i16 10244, i16 256, i16 4, i16 1, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 10248, i16 256, i16 4, i16 1, i32 1048560, i32 1048575 }, %struct.igb_reg_test { i16 -16128, i16 64, i16 12, i16 1, i32 -128, i32 -1 }, %struct.igb_reg_test { i16 -16124, i16 64, i16 12, i16 1, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 -16120, i16 64, i16 12, i16 1, i32 1048560, i32 1048575 }, %struct.igb_reg_test { i16 10280, i16 256, i16 4, i16 3, i32 0, i32 33554432 }, %struct.igb_reg_test { i16 -16088, i16 64, i16 12, i16 3, i32 0, i32 33554432 }, %struct.igb_reg_test { i16 10264, i16 256, i16 4, i16 1, i32 65535, i32 65535 }, %struct.igb_reg_test { i16 -16104, i16 64, i16 12, i16 1, i32 65535, i32 65535 }, %struct.igb_reg_test { i16 10280, i16 256, i16 4, i16 3, i32 0, i32 0 }, %struct.igb_reg_test { i16 -16088, i16 64, i16 12, i16 3, i32 0, i32 0 }, %struct.igb_reg_test { i16 8552, i16 256, i16 1, i16 1, i32 65520, i32 65520 }, %struct.igb_reg_test { i16 368, i16 256, i16 1, i16 1, i32 65535, i32 65535 }, %struct.igb_reg_test { i16 1040, i16 256, i16 1, i16 1, i32 1073741823, i32 1073741823 }, %struct.igb_reg_test { i16 14336, i16 256, i16 4, i16 1, i32 -128, i32 -1 }, %struct.igb_reg_test { i16 14340, i16 256, i16 4, i16 1, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 14344, i16 256, i16 4, i16 1, i32 1048560, i32 1048575 }, %struct.igb_reg_test { i16 -7936, i16 64, i16 12, i16 1, i32 -128, i32 -1 }, %struct.igb_reg_test { i16 -7932, i16 64, i16 12, i16 1, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 -7928, i16 64, i16 12, i16 1, i32 1048560, i32 1048575 }, %struct.igb_reg_test { i16 256, i16 256, i16 1, i16 2, i32 -1, i32 0 }, %struct.igb_reg_test { i16 256, i16 256, i16 1, i16 2, i32 80720126, i32 4194299 }, %struct.igb_reg_test { i16 256, i16 256, i16 1, i16 2, i32 80720126, i32 -1 }, %struct.igb_reg_test { i16 1024, i16 256, i16 1, i16 2, i32 -1, i32 0 }, %struct.igb_reg_test { i16 21504, i16 0, i16 16, i16 5, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 21504, i16 0, i16 16, i16 6, i32 -2080374785, i32 -1 }, %struct.igb_reg_test { i16 21728, i16 0, i16 8, i16 5, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 21728, i16 0, i16 8, i16 6, i32 -2080374785, i32 -1 }, %struct.igb_reg_test { i16 20992, i16 0, i16 128, i16 4, i32 -1, i32 -1 }, %struct.igb_reg_test zeroinitializer], align 4
@reg_test_82575 = internal unnamed_addr constant [25 x %struct.igb_reg_test] [%struct.igb_reg_test { i16 40, i16 256, i16 1, i16 1, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 44, i16 256, i16 1, i16 1, i32 65535, i32 -1 }, %struct.igb_reg_test { i16 48, i16 256, i16 1, i16 1, i32 65535, i32 -1 }, %struct.igb_reg_test { i16 56, i16 256, i16 1, i16 1, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 10240, i16 256, i16 4, i16 1, i32 -128, i32 -1 }, %struct.igb_reg_test { i16 10244, i16 256, i16 4, i16 1, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 10248, i16 256, i16 4, i16 1, i32 1048448, i32 1048575 }, %struct.igb_reg_test { i16 10280, i16 256, i16 4, i16 3, i32 0, i32 33554432 }, %struct.igb_reg_test { i16 10264, i16 256, i16 4, i16 1, i32 65535, i32 65535 }, %struct.igb_reg_test { i16 10280, i16 256, i16 4, i16 3, i32 0, i32 0 }, %struct.igb_reg_test { i16 8552, i16 256, i16 1, i16 1, i32 65520, i32 65520 }, %struct.igb_reg_test { i16 368, i16 256, i16 1, i16 1, i32 65535, i32 65535 }, %struct.igb_reg_test { i16 1040, i16 256, i16 1, i16 1, i32 1073741823, i32 1073741823 }, %struct.igb_reg_test { i16 14336, i16 256, i16 4, i16 1, i32 -128, i32 -1 }, %struct.igb_reg_test { i16 14340, i16 256, i16 4, i16 1, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 14344, i16 256, i16 4, i16 1, i32 1048448, i32 1048575 }, %struct.igb_reg_test { i16 256, i16 256, i16 1, i16 2, i32 -1, i32 0 }, %struct.igb_reg_test { i16 256, i16 256, i16 1, i16 2, i32 80720894, i32 4194299 }, %struct.igb_reg_test { i16 256, i16 256, i16 1, i16 2, i32 80720894, i32 -1 }, %struct.igb_reg_test { i16 1024, i16 256, i16 1, i16 2, i32 -1, i32 0 }, %struct.igb_reg_test { i16 376, i16 256, i16 1, i16 1, i32 -1073676289, i32 65535 }, %struct.igb_reg_test { i16 21504, i16 0, i16 16, i16 5, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 21504, i16 0, i16 16, i16 6, i32 -2146435073, i32 -1 }, %struct.igb_reg_test { i16 20992, i16 0, i16 128, i16 4, i32 -1, i32 -1 }, %struct.igb_reg_test zeroinitializer], align 4
@.str.5 = private unnamed_addr constant [58 x i8] c"failed STATUS register test got: 0x%08X expected: 0x%08X\0A\00", align 1
@.str.6 = private unnamed_addr constant [58 x i8] c"pattern test reg %04X failed: got 0x%08X expected 0x%08X\0A\00", align 1
@.str.7 = private unnamed_addr constant [60 x i8] c"set/check reg %04X test failed: got 0x%08X expected 0x%08X\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"testing %s interrupt\0A\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"shared\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"unshared\00", align 1
@.str.11 = private unnamed_addr constant [54 x i8] c"Cannot do PHY loopback test when SoL/IDER is active.\0A\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"Loopback test not supported on i354.\0A\00", align 1
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@igb_gstrings_test = internal unnamed_addr constant [5 x [32 x i8]] [[32 x i8] c"Register test  (offline)\00\00\00\00\00\00\00\00", [32 x i8] c"Eeprom test    (offline)\00\00\00\00\00\00\00\00", [32 x i8] c"Interrupt test (offline)\00\00\00\00\00\00\00\00", [32 x i8] c"Loopback test  (offline)\00\00\00\00\00\00\00\00", [32 x i8] c"Link test   (on/offline)\00\00\00\00\00\00\00\00"], align 1
@igb_gstrings_stats = internal constant [42 x %struct.igb_stats] [%struct.igb_stats { [32 x i8] c"rx_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2296 }, %struct.igb_stats { [32 x i8] c"tx_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2320 }, %struct.igb_stats { [32 x i8] c"rx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2328 }, %struct.igb_stats { [32 x i8] c"tx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2336 }, %struct.igb_stats { [32 x i8] c"rx_broadcast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2304 }, %struct.igb_stats { [32 x i8] c"tx_broadcast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2496 }, %struct.igb_stats { [32 x i8] c"rx_multicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2312 }, %struct.igb_stats { [32 x i8] c"tx_multicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2488 }, %struct.igb_stats { [32 x i8] c"multicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2312 }, %struct.igb_stats { [32 x i8] c"collisions\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2160 }, %struct.igb_stats { [32 x i8] c"rx_crc_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2088 }, %struct.igb_stats { [32 x i8] c"rx_no_buffer_count\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2344 }, %struct.igb_stats { [32 x i8] c"rx_missed_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2120 }, %struct.igb_stats { [32 x i8] c"tx_aborted_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2136 }, %struct.igb_stats { [32 x i8] c"tx_carrier_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2176 }, %struct.igb_stats { [32 x i8] c"tx_window_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2152 }, %struct.igb_stats { [32 x i8] c"tx_abort_late_coll\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2152 }, %struct.igb_stats { [32 x i8] c"tx_deferred_ok\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2168 }, %struct.igb_stats { [32 x i8] c"tx_single_coll_ok\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2128 }, %struct.igb_stats { [32 x i8] c"tx_multi_coll_ok\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2144 }, %struct.igb_stats { [32 x i8] c"tx_timeout_count\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 628 }, %struct.igb_stats { [32 x i8] c"rx_long_length_errors\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2368 }, %struct.igb_stats { [32 x i8] c"rx_short_length_errors\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2352 }, %struct.igb_stats { [32 x i8] c"rx_align_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2096 }, %struct.igb_stats { [32 x i8] c"tx_tcp_seg_good\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2504 }, %struct.igb_stats { [32 x i8] c"tx_tcp_seg_failed\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2512 }, %struct.igb_stats { [32 x i8] c"rx_flow_control_xon\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2208 }, %struct.igb_stats { [32 x i8] c"rx_flow_control_xoff\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2224 }, %struct.igb_stats { [32 x i8] c"tx_flow_control_xon\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2216 }, %struct.igb_stats { [32 x i8] c"tx_flow_control_xoff\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2232 }, %struct.igb_stats { [32 x i8] c"rx_long_byte_count\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2328 }, %struct.igb_stats { [32 x i8] c"tx_dma_out_of_sync\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2688 }, %struct.igb_stats { [32 x i8] c"tx_smbus\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2400 }, %struct.igb_stats { [32 x i8] c"rx_smbus\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2384 }, %struct.igb_stats { [32 x i8] c"dropped_smbus\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2392 }, %struct.igb_stats { [32 x i8] c"os2bmc_rx_by_bmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2696 }, %struct.igb_stats { [32 x i8] c"os2bmc_tx_by_bmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2712 }, %struct.igb_stats { [32 x i8] c"os2bmc_tx_by_host\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2704 }, %struct.igb_stats { [32 x i8] c"os2bmc_rx_by_host\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2720 }, %struct.igb_stats { [32 x i8] c"tx_hwtstamp_timeouts\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 3608 }, %struct.igb_stats { [32 x i8] c"tx_hwtstamp_skipped\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 3612 }, %struct.igb_stats { [32 x i8] c"rx_hwtstamp_cleared\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 3616 }], align 4
@igb_gstrings_net_stats = internal constant [9 x %struct.igb_stats] [%struct.igb_stats { [32 x i8] c"rx_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 32 }, %struct.igb_stats { [32 x i8] c"tx_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 40 }, %struct.igb_stats { [32 x i8] c"tx_dropped\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 56 }, %struct.igb_stats { [32 x i8] c"rx_length_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 80 }, %struct.igb_stats { [32 x i8] c"rx_over_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 88 }, %struct.igb_stats { [32 x i8] c"rx_frame_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 104 }, %struct.igb_stats { [32 x i8] c"rx_fifo_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 112 }, %struct.igb_stats { [32 x i8] c"tx_fifo_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 144 }, %struct.igb_stats { [32 x i8] c"tx_heartbeat_errors\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 152 }], align 4
@.str.13 = private unnamed_addr constant [20 x i8] c"tx_queue_%u_packets\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"tx_queue_%u_bytes\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"tx_queue_%u_restart\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"rx_queue_%u_packets\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"rx_queue_%u_bytes\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"rx_queue_%u_drops\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"rx_queue_%u_csum_err\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"rx_queue_%u_alloc_failed\00", align 1
@igb_priv_flags_strings = internal unnamed_addr constant [1 x [32 x i8]] [[32 x i8] c"legacy-rx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], align 1
@.str.21 = private unnamed_addr constant [81 x i8] c"enabling UDP RSS: fragmented packets may arrive out of order to the stack above\0A\00", align 1
@.str.22 = private unnamed_addr constant [45 x i8] c"ethtool -N: The specified action is invalid\0A\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"Location out of range\0A\00", align 1
@.str.24 = private unnamed_addr constant [37 x i8] c"ethtool: this filter is already set\0A\00", align 1
@.str.25 = private unnamed_addr constant [37 x i8] c"Setting EEE tx-lpi is not supported\0A\00", align 1
@.str.26 = private unnamed_addr constant [43 x i8] c"Setting EEE Tx LPI timer is not supported\0A\00", align 1
@.str.27 = private unnamed_addr constant [63 x i8] c"EEE Advertisement supports only 100Tx and/or 100T full duplex\0A\00", align 1
@.str.28 = private unnamed_addr constant [57 x i8] c"Setting EEE options are not supported with EEE disabled\0A\00", align 1
@.str.29 = private unnamed_addr constant [43 x i8] c"Problem setting EEE advertisement options\0A\00", align 1
@.str.30 = private unnamed_addr constant [61 x i8] c"Cannot change link characteristics when SoL/IDER is active.\0A\00", align 1
@.str.31 = private unnamed_addr constant [83 x i8] c"forcing MDI/MDI-X state is not supported when link speed and/or duplex are forced\0A\00", align 1
@switch.table.igb_diag_test = private unnamed_addr constant [6 x ptr] [ptr @reg_test_82576, ptr @reg_test_82580, ptr @reg_test_i350, ptr @reg_test_i350, ptr @reg_test_i210, ptr @reg_test_i210], align 4
@switch.table.igb_diag_test.32 = private unnamed_addr constant [6 x i32] [i32 2147480575, i32 2146431999, i32 2146431999, i32 2146431999, i32 2146431999, i32 2146431999], align 4
@switch.table.igb_diag_test.33 = private unnamed_addr constant [7 x i32] [i32 938770141, i32 2010446845, i32 2010971861, i32 2010971861, i32 2010971861, i32 2010971861, i32 2010971861], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @igb_add_filter(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 37, i32 4, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 6
  %6 = getelementptr inbounds %struct.igb_nfc_filter, ptr %1, i32 0, i32 1
  %7 = load i8, ptr %6, align 4
  %8 = and i8 %7, -5
  %9 = icmp eq i8 %8, 0
  %10 = select i1 %5, i1 %9, i1 false
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 34
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str) #19
  br label %136

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.igb_nfc_filter, ptr %1, i32 0, i32 1
  %17 = and i8 %7, 1
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %64, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 37
  %21 = getelementptr %struct.igb_adapter, ptr %0, i32 0, i32 91, i32 0
  %22 = load i8, ptr %21, align 1, !range !8
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %19
  %25 = getelementptr %struct.igb_adapter, ptr %0, i32 0, i32 91, i32 1
  %26 = load i8, ptr %25, align 1, !range !8
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = getelementptr %struct.igb_adapter, ptr %0, i32 0, i32 91, i32 2
  %30 = load i8, ptr %29, align 1, !range !8
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %60

32:                                               ; preds = %28, %24, %19
  %33 = phi i32 [ 0, %19 ], [ 1, %24 ], [ 2, %28 ]
  %34 = getelementptr %struct.igb_adapter, ptr %0, i32 0, i32 91, i32 %33
  store i8 1, ptr %34, align 1
  %35 = shl nuw nsw i32 %33, 2
  %36 = or i32 %35, 23728
  %37 = tail call i32 @igb_rd32(ptr noundef %20, i32 noundef %36) #20
  %38 = getelementptr inbounds %struct.igb_nfc_filter, ptr %1, i32 0, i32 1, i32 1
  %39 = load i16, ptr %38, align 2
  %40 = getelementptr inbounds %struct.igb_nfc_filter, ptr %1, i32 0, i32 5
  %41 = load i16, ptr %40, align 4
  %42 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 37, i32 1
  %43 = load volatile ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %56, label %45, !prof !9

45:                                               ; preds = %32
  %46 = and i32 %37, 2079850496
  %47 = tail call i16 @llvm.bswap.i16(i16 %39) #20
  %48 = zext i16 %47 to i32
  %49 = zext i16 %41 to i32
  %50 = shl nuw i32 %49, 16
  %51 = and i32 %50, 458752
  %52 = or i32 %46, %48
  %53 = or i32 %52, %51
  %54 = or i32 %53, -2080374784
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !10
  tail call void @arm_heavy_mb() #20
  %55 = getelementptr i8, ptr %43, i32 %36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %54) #20, !srcloc !11
  br label %56

56:                                               ; preds = %45, %32
  %57 = trunc i32 %33 to i16
  %58 = getelementptr inbounds %struct.igb_nfc_filter, ptr %1, i32 0, i32 3
  store i16 %57, ptr %58, align 4
  %59 = load i8, ptr %16, align 4
  br label %64

60:                                               ; preds = %28
  %61 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 34
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.pci_dev, ptr %62, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.1) #19
  br label %136

64:                                               ; preds = %56, %15
  %65 = phi i8 [ %7, %15 ], [ %59, %56 ]
  %66 = phi i32 [ -22, %15 ], [ 0, %56 ]
  %67 = and i8 %65, 8
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %79, label %69

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.igb_nfc_filter, ptr %1, i32 0, i32 1, i32 4
  %71 = getelementptr inbounds %struct.igb_nfc_filter, ptr %1, i32 0, i32 5
  %72 = load i16, ptr %71, align 4
  %73 = trunc i16 %72 to i8
  %74 = tail call i32 @igb_add_mac_steering_filter(ptr noundef %0, ptr noundef %70, i8 noundef zeroext %73, i8 noundef zeroext 0) #20
  %75 = icmp slt i32 %74, 0
  %76 = tail call i32 @llvm.smin.i32(i32 %74, i32 0)
  br i1 %75, label %136, label %77

77:                                               ; preds = %69
  %78 = load i8, ptr %16, align 4
  br label %79

79:                                               ; preds = %77, %64
  %80 = phi i8 [ %78, %77 ], [ %65, %64 ]
  %81 = phi i32 [ %76, %77 ], [ %66, %64 ]
  %82 = and i8 %80, 4
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %94, label %84

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.igb_nfc_filter, ptr %1, i32 0, i32 1, i32 3
  %86 = getelementptr inbounds %struct.igb_nfc_filter, ptr %1, i32 0, i32 5
  %87 = load i16, ptr %86, align 4
  %88 = trunc i16 %87 to i8
  %89 = tail call i32 @igb_add_mac_steering_filter(ptr noundef %0, ptr noundef %85, i8 noundef zeroext %88, i8 noundef zeroext 4) #20
  %90 = icmp slt i32 %89, 0
  %91 = tail call i32 @llvm.smin.i32(i32 %89, i32 0)
  br i1 %90, label %136, label %92

92:                                               ; preds = %84
  %93 = load i8, ptr %16, align 4
  br label %94

94:                                               ; preds = %92, %79
  %95 = phi i8 [ %93, %92 ], [ %80, %79 ]
  %96 = phi i32 [ %91, %92 ], [ %81, %79 ]
  %97 = and i8 %95, 2
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %136, label %99

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 37
  %101 = tail call i32 @igb_rd32(ptr noundef %100, i32 noundef 21936) #20
  %102 = getelementptr inbounds %struct.igb_nfc_filter, ptr %1, i32 0, i32 1, i32 2
  %103 = load i16, ptr %102, align 4
  %104 = lshr i16 %103, 3
  %105 = and i16 %104, 28
  %106 = zext i16 %105 to i32
  %107 = or i32 %106, 3
  %108 = shl nuw i32 1, %107
  %109 = and i32 %108, %101
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %99
  %112 = getelementptr inbounds %struct.igb_nfc_filter, ptr %1, i32 0, i32 5
  %113 = load i16, ptr %112, align 4
  br label %125

114:                                              ; preds = %99
  %115 = lshr i32 %101, %106
  %116 = and i32 %115, 3
  %117 = getelementptr inbounds %struct.igb_nfc_filter, ptr %1, i32 0, i32 5
  %118 = load i16, ptr %117, align 4
  %119 = zext i16 %118 to i32
  %120 = icmp eq i32 %116, %119
  br i1 %120, label %125, label %121

121:                                              ; preds = %114
  %122 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 34
  %123 = load ptr, ptr %122, align 4
  %124 = getelementptr inbounds %struct.pci_dev, ptr %123, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %124, ptr noundef nonnull @.str.2) #19
  br label %136

125:                                              ; preds = %114, %111
  %126 = phi i16 [ %113, %111 ], [ %118, %114 ]
  %127 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 37, i32 1
  %128 = load volatile ptr, ptr %127, align 4
  %129 = icmp eq ptr %128, null
  br i1 %129, label %136, label %130, !prof !9

130:                                              ; preds = %125
  %131 = or i32 %108, %101
  %132 = zext i16 %126 to i32
  %133 = shl i32 %132, %106
  %134 = or i32 %131, %133
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !12
  tail call void @arm_heavy_mb() #20
  %135 = getelementptr i8, ptr %128, i32 21936
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %135, i32 %134) #20, !srcloc !11
  br label %136

136:                                              ; preds = %130, %125, %121, %94, %84, %69, %60, %11
  %137 = phi i32 [ -95, %11 ], [ -22, %60 ], [ %76, %69 ], [ %91, %84 ], [ %96, %94 ], [ -17, %121 ], [ 0, %130 ], [ 0, %125 ]
  ret i32 %137
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_add_mac_steering_filter(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @igb_erase_filter(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.igb_nfc_filter, ptr %1, i32 0, i32 1
  %4 = load i8, ptr %3, align 4
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.igb_nfc_filter, ptr %1, i32 0, i32 3
  %9 = load i16, ptr %8, align 4
  %10 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 37
  %11 = zext i16 %9 to i32
  %12 = shl nuw nsw i32 %11, 2
  %13 = add nuw nsw i32 %12, 23728
  %14 = tail call i32 @igb_rd32(ptr noundef %10, i32 noundef %13) #20
  %15 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 37, i32 1
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18, !prof !9

18:                                               ; preds = %7
  %19 = and i32 %14, 2079916031
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !13
  tail call void @arm_heavy_mb() #20
  %20 = getelementptr i8, ptr %16, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %19) #20, !srcloc !11
  br label %21

21:                                               ; preds = %18, %7
  %22 = getelementptr %struct.igb_adapter, ptr %0, i32 0, i32 91, i32 %11
  store i8 0, ptr %22, align 1
  %23 = load i8, ptr %3, align 4
  br label %24

24:                                               ; preds = %21, %2
  %25 = phi i8 [ %23, %21 ], [ %4, %2 ]
  %26 = and i8 %25, 2
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %47, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.igb_nfc_filter, ptr %1, i32 0, i32 1, i32 2
  %30 = load i16, ptr %29, align 4
  %31 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 37
  %32 = tail call i32 @igb_rd32(ptr noundef %31, i32 noundef 21936) #20
  %33 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 37, i32 1
  %34 = load volatile ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %47, label %36, !prof !9

36:                                               ; preds = %28
  %37 = lshr i16 %30, 3
  %38 = and i16 %37, 28
  %39 = zext i16 %38 to i32
  %40 = shl nuw nsw i32 3, %39
  %41 = or i32 %39, 3
  %42 = shl nuw i32 1, %41
  %43 = or i32 %42, %40
  %44 = xor i32 %43, -1
  %45 = and i32 %32, %44
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !14
  tail call void @arm_heavy_mb() #20
  %46 = getelementptr i8, ptr %34, i32 21936
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %45) #20, !srcloc !11
  br label %47

47:                                               ; preds = %36, %28, %24
  %48 = load i8, ptr %3, align 4
  %49 = and i8 %48, 4
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.igb_nfc_filter, ptr %1, i32 0, i32 1, i32 3
  %53 = getelementptr inbounds %struct.igb_nfc_filter, ptr %1, i32 0, i32 5
  %54 = load i16, ptr %53, align 4
  %55 = trunc i16 %54 to i8
  %56 = tail call i32 @igb_del_mac_steering_filter(ptr noundef %0, ptr noundef %52, i8 noundef zeroext %55, i8 noundef zeroext 4) #20
  %57 = load i8, ptr %3, align 4
  br label %58

58:                                               ; preds = %51, %47
  %59 = phi i8 [ %57, %51 ], [ %48, %47 ]
  %60 = and i8 %59, 8
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.igb_nfc_filter, ptr %1, i32 0, i32 1, i32 4
  %64 = getelementptr inbounds %struct.igb_nfc_filter, ptr %1, i32 0, i32 5
  %65 = load i16, ptr %64, align 4
  %66 = trunc i16 %65 to i8
  %67 = tail call i32 @igb_del_mac_steering_filter(ptr noundef %0, ptr noundef %63, i8 noundef zeroext %66, i8 noundef zeroext 0) #20
  br label %68

68:                                               ; preds = %62, %58
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_del_mac_steering_filter(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @igb_write_rss_indir_tbl(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 37, i32 4, i32 3
  %3 = load i32, ptr %2, align 4
  switch i32 %3, label %10 [
    i32 1, label %4
    i32 2, label %5
  ]

4:                                                ; preds = %1
  br label %10

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 50
  %7 = load i32, ptr %6, align 16
  %8 = icmp eq i32 %7, 0
  %9 = select i1 %8, i32 0, i32 3
  br label %10

10:                                               ; preds = %5, %4, %1
  %11 = phi i32 [ 0, %1 ], [ 6, %4 ], [ %9, %5 ]
  %12 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 37, i32 1
  br label %13

13:                                               ; preds = %42, %10
  %14 = phi i32 [ 0, %10 ], [ %44, %42 ]
  %15 = phi i32 [ 23552, %10 ], [ %43, %42 ]
  %16 = or i32 %14, 3
  %17 = getelementptr %struct.igb_adapter, ptr %0, i32 0, i32 82, i32 %16
  %18 = load i8, ptr %17, align 1
  %19 = or i32 %14, 2
  %20 = getelementptr %struct.igb_adapter, ptr %0, i32 0, i32 82, i32 %19
  %21 = load i8, ptr %20, align 1
  %22 = or i32 %14, 1
  %23 = getelementptr %struct.igb_adapter, ptr %0, i32 0, i32 82, i32 %22
  %24 = load i8, ptr %23, align 1
  %25 = getelementptr %struct.igb_adapter, ptr %0, i32 0, i32 82, i32 %14
  %26 = load i8, ptr %25, align 1
  %27 = load volatile ptr, ptr %12, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %42, label %29, !prof !9

29:                                               ; preds = %13
  %30 = zext i8 %18 to i32
  %31 = shl nuw nsw i32 %30, 16
  %32 = zext i8 %21 to i32
  %33 = shl nuw nsw i32 %32, 8
  %34 = or i32 %31, %33
  %35 = zext i8 %24 to i32
  %36 = or i32 %34, %35
  %37 = shl nuw i32 %36, 8
  %38 = zext i8 %26 to i32
  %39 = or i32 %37, %38
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !15
  tail call void @arm_heavy_mb() #20
  %40 = shl i32 %39, %11
  %41 = getelementptr i8, ptr %27, i32 %15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %40) #20, !srcloc !11
  br label %42

42:                                               ; preds = %29, %13
  %43 = add nuw nsw i32 %15, 4
  %44 = add nuw nsw i32 %14, 4
  %45 = icmp ult i32 %14, 124
  br i1 %45, label %13, label %46

46:                                               ; preds = %42
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @igb_set_ethtool_ops(ptr nocapture noundef writeonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 42
  store ptr @igb_ethtool_ops, ptr %2, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_rd32(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @igb_get_drvinfo(ptr noundef %0, ptr noundef %1) #6 {
  %3 = getelementptr inbounds %struct.ethtool_drvinfo, ptr %1, i32 0, i32 1
  %4 = tail call i32 @strlcpy(ptr noundef %3, ptr noundef nonnull @igb_driver_name, i32 noundef 32) #20
  %5 = getelementptr inbounds %struct.ethtool_drvinfo, ptr %1, i32 0, i32 3
  %6 = getelementptr i8, ptr %0, i32 5480
  %7 = tail call i32 @strlcpy(ptr noundef %5, ptr noundef %6, i32 noundef 32) #20
  %8 = getelementptr i8, ptr %0, i32 2308
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %15 = load ptr, ptr %14, align 4
  br label %16

16:                                               ; preds = %13, %2
  %17 = phi ptr [ %15, %13 ], [ %11, %2 ]
  %18 = getelementptr inbounds %struct.ethtool_drvinfo, ptr %1, i32 0, i32 4
  %19 = tail call i32 @strlcpy(ptr noundef %18, ptr noundef %17, i32 noundef 32) #20
  %20 = getelementptr inbounds %struct.ethtool_drvinfo, ptr %1, i32 0, i32 7
  store i32 1, ptr %20, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @igb_get_regs_len(ptr nocapture noundef readnone %0) #7 {
  ret i32 2960
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @igb_get_regs(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef writeonly %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 2512
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(2960) %2, i8 0, i32 2960, i1 false)
  %5 = getelementptr i8, ptr %0, i32 3494
  %6 = load i8, ptr %5, align 2
  %7 = zext i8 %6 to i32
  %8 = shl nuw nsw i32 %7, 16
  %9 = getelementptr i8, ptr %0, i32 3486
  %10 = load i16, ptr %9, align 2
  %11 = zext i16 %10 to i32
  %12 = or i32 %8, %11
  %13 = or i32 %12, 16777216
  %14 = getelementptr inbounds %struct.ethtool_regs, ptr %1, i32 0, i32 1
  store i32 %13, ptr %14, align 4
  %15 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 0) #20
  store i32 %15, ptr %2, align 4
  %16 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 8) #20
  %17 = getelementptr i32, ptr %2, i32 1
  store i32 %16, ptr %17, align 4
  %18 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 24) #20
  %19 = getelementptr i32, ptr %2, i32 2
  store i32 %18, ptr %19, align 4
  %20 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 32) #20
  %21 = getelementptr i32, ptr %2, i32 3
  store i32 %20, ptr %21, align 4
  %22 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 36) #20
  %23 = getelementptr i32, ptr %2, i32 4
  store i32 %22, ptr %23, align 4
  %24 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 52) #20
  %25 = getelementptr i32, ptr %2, i32 5
  store i32 %24, ptr %25, align 4
  %26 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 56) #20
  %27 = getelementptr i32, ptr %2, i32 6
  store i32 %26, ptr %27, align 4
  %28 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 3584) #20
  %29 = getelementptr i32, ptr %2, i32 7
  store i32 %28, ptr %29, align 4
  %30 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 4096) #20
  %31 = getelementptr i32, ptr %2, i32 8
  store i32 %30, ptr %31, align 4
  %32 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 4104) #20
  %33 = getelementptr i32, ptr %2, i32 9
  store i32 %32, ptr %33, align 4
  %34 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 4168) #20
  %35 = getelementptr i32, ptr %2, i32 10
  store i32 %34, ptr %35, align 4
  %36 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 4172) #20
  %37 = getelementptr i32, ptr %2, i32 11
  store i32 %36, ptr %37, align 4
  %38 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 16) #20
  %39 = getelementptr i32, ptr %2, i32 12
  store i32 %38, ptr %39, align 4
  %40 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 5408) #20
  %41 = getelementptr i32, ptr %2, i32 13
  store i32 %40, ptr %41, align 4
  %42 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 5408) #20
  %43 = getelementptr i32, ptr %2, i32 14
  store i32 %42, ptr %43, align 4
  %44 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 5412) #20
  %45 = getelementptr i32, ptr %2, i32 15
  store i32 %44, ptr %45, align 4
  %46 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 5416) #20
  %47 = getelementptr i32, ptr %2, i32 16
  store i32 %46, ptr %47, align 4
  %48 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 5420) #20
  %49 = getelementptr i32, ptr %2, i32 17
  store i32 %48, ptr %49, align 4
  %50 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 5424) #20
  %51 = getelementptr i32, ptr %2, i32 18
  store i32 %50, ptr %51, align 4
  %52 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 200) #20
  %53 = getelementptr i32, ptr %2, i32 19
  store i32 %52, ptr %53, align 4
  %54 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 200) #20
  %55 = getelementptr i32, ptr %2, i32 20
  store i32 %54, ptr %55, align 4
  %56 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 208) #20
  %57 = getelementptr i32, ptr %2, i32 21
  store i32 %56, ptr %57, align 4
  %58 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 216) #20
  %59 = getelementptr i32, ptr %2, i32 22
  store i32 %58, ptr %59, align 4
  %60 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 16640) #20
  %61 = getelementptr i32, ptr %2, i32 23
  store i32 %60, ptr %61, align 4
  %62 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 224) #20
  %63 = getelementptr i32, ptr %2, i32 24
  store i32 %62, ptr %63, align 4
  %64 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 23232) #20
  %65 = getelementptr i32, ptr %2, i32 25
  store i32 %64, ptr %65, align 4
  %66 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 40) #20
  %67 = getelementptr i32, ptr %2, i32 26
  store i32 %66, ptr %67, align 4
  %68 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 44) #20
  %69 = getelementptr i32, ptr %2, i32 27
  store i32 %68, ptr %69, align 4
  %70 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 368) #20
  %71 = getelementptr i32, ptr %2, i32 28
  store i32 %70, ptr %71, align 4
  %72 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 8544) #20
  %73 = getelementptr i32, ptr %2, i32 29
  store i32 %72, ptr %73, align 4
  %74 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 8552) #20
  %75 = getelementptr i32, ptr %2, i32 30
  store i32 %74, ptr %75, align 4
  %76 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 9312) #20
  %77 = getelementptr i32, ptr %2, i32 31
  store i32 %76, ptr %77, align 4
  %78 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 256) #20
  %79 = getelementptr i32, ptr %2, i32 32
  store i32 %78, ptr %79, align 4
  %80 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 20480) #20
  %81 = getelementptr i32, ptr %2, i32 33
  store i32 %80, ptr %81, align 4
  %82 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 20484) #20
  %83 = getelementptr i32, ptr %2, i32 34
  store i32 %82, ptr %83, align 4
  %84 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 20488) #20
  %85 = getelementptr i32, ptr %2, i32 35
  store i32 %84, ptr %85, align 4
  %86 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 22552) #20
  %87 = getelementptr i32, ptr %2, i32 36
  store i32 %86, ptr %87, align 4
  %88 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 22556) #20
  %89 = getelementptr i32, ptr %2, i32 37
  store i32 %88, ptr %89, align 4
  %90 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 1024) #20
  %91 = getelementptr i32, ptr %2, i32 38
  store i32 %90, ptr %91, align 4
  %92 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 1028) #20
  %93 = getelementptr i32, ptr %2, i32 39
  store i32 %92, ptr %93, align 4
  %94 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 1040) #20
  %95 = getelementptr i32, ptr %2, i32 40
  store i32 %94, ptr %95, align 4
  %96 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 13712) #20
  %97 = getelementptr i32, ptr %2, i32 41
  store i32 %96, ptr %97, align 4
  %98 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 22528) #20
  %99 = getelementptr i32, ptr %2, i32 42
  store i32 %98, ptr %99, align 4
  %100 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 22536) #20
  %101 = getelementptr i32, ptr %2, i32 43
  store i32 %100, ptr %101, align 4
  %102 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 22544) #20
  %103 = getelementptr i32, ptr %2, i32 44
  store i32 %102, ptr %103, align 4
  %104 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 22584) #20
  %105 = getelementptr i32, ptr %2, i32 45
  store i32 %104, ptr %105, align 4
  %106 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 22784) #20
  %107 = getelementptr i32, ptr %2, i32 46
  store i32 %106, ptr %107, align 4
  %108 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 16896) #20
  %109 = getelementptr i32, ptr %2, i32 47
  store i32 %108, ptr %109, align 4
  %110 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 16904) #20
  %111 = getelementptr i32, ptr %2, i32 48
  store i32 %110, ptr %111, align 4
  %112 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 16908) #20
  %113 = getelementptr i32, ptr %2, i32 49
  store i32 %112, ptr %113, align 4
  %114 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 16920) #20
  %115 = getelementptr i32, ptr %2, i32 50
  store i32 %114, ptr %115, align 4
  %116 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 16924) #20
  %117 = getelementptr i32, ptr %2, i32 51
  store i32 %116, ptr %117, align 4
  %118 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 16928) #20
  %119 = getelementptr i32, ptr %2, i32 52
  store i32 %118, ptr %119, align 4
  %120 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 16932) #20
  %121 = getelementptr i32, ptr %2, i32 53
  store i32 %120, ptr %121, align 4
  %122 = getelementptr i8, ptr %0, i32 3496
  %123 = load i64, ptr %122, align 8
  %124 = trunc i64 %123 to i32
  %125 = getelementptr i32, ptr %2, i32 54
  store i32 %124, ptr %125, align 4
  %126 = getelementptr i8, ptr %0, i32 3504
  %127 = load i64, ptr %126, align 8
  %128 = trunc i64 %127 to i32
  %129 = getelementptr i32, ptr %2, i32 55
  store i32 %128, ptr %129, align 4
  %130 = getelementptr i8, ptr %0, i32 3512
  %131 = load i64, ptr %130, align 8
  %132 = trunc i64 %131 to i32
  %133 = getelementptr i32, ptr %2, i32 56
  store i32 %132, ptr %133, align 4
  %134 = getelementptr i8, ptr %0, i32 3520
  %135 = load i64, ptr %134, align 8
  %136 = trunc i64 %135 to i32
  %137 = getelementptr i32, ptr %2, i32 57
  store i32 %136, ptr %137, align 4
  %138 = getelementptr i8, ptr %0, i32 3528
  %139 = load i64, ptr %138, align 8
  %140 = trunc i64 %139 to i32
  %141 = getelementptr i32, ptr %2, i32 58
  store i32 %140, ptr %141, align 4
  %142 = getelementptr i8, ptr %0, i32 3536
  %143 = load i64, ptr %142, align 8
  %144 = trunc i64 %143 to i32
  %145 = getelementptr i32, ptr %2, i32 59
  store i32 %144, ptr %145, align 4
  %146 = getelementptr i8, ptr %0, i32 3544
  %147 = load i64, ptr %146, align 8
  %148 = trunc i64 %147 to i32
  %149 = getelementptr i32, ptr %2, i32 60
  store i32 %148, ptr %149, align 4
  %150 = getelementptr i8, ptr %0, i32 3552
  %151 = load i64, ptr %150, align 8
  %152 = trunc i64 %151 to i32
  %153 = getelementptr i32, ptr %2, i32 61
  store i32 %152, ptr %153, align 4
  %154 = getelementptr i8, ptr %0, i32 3560
  %155 = load i64, ptr %154, align 8
  %156 = trunc i64 %155 to i32
  %157 = getelementptr i32, ptr %2, i32 62
  store i32 %156, ptr %157, align 4
  %158 = getelementptr i8, ptr %0, i32 3568
  %159 = load i64, ptr %158, align 8
  %160 = trunc i64 %159 to i32
  %161 = getelementptr i32, ptr %2, i32 63
  store i32 %160, ptr %161, align 4
  %162 = getelementptr i8, ptr %0, i32 3576
  %163 = load i64, ptr %162, align 8
  %164 = trunc i64 %163 to i32
  %165 = getelementptr i32, ptr %2, i32 64
  store i32 %164, ptr %165, align 4
  %166 = getelementptr i8, ptr %0, i32 3584
  %167 = load i64, ptr %166, align 8
  %168 = trunc i64 %167 to i32
  %169 = getelementptr i32, ptr %2, i32 65
  store i32 %168, ptr %169, align 4
  %170 = getelementptr i8, ptr %0, i32 3592
  %171 = load i64, ptr %170, align 8
  %172 = trunc i64 %171 to i32
  %173 = getelementptr i32, ptr %2, i32 66
  store i32 %172, ptr %173, align 4
  %174 = getelementptr i8, ptr %0, i32 4008
  %175 = load i64, ptr %174, align 8
  %176 = trunc i64 %175 to i32
  %177 = getelementptr i32, ptr %2, i32 67
  store i32 %176, ptr %177, align 4
  %178 = getelementptr i8, ptr %0, i32 3608
  %179 = load i64, ptr %178, align 8
  %180 = trunc i64 %179 to i32
  %181 = getelementptr i32, ptr %2, i32 68
  store i32 %180, ptr %181, align 4
  %182 = getelementptr i8, ptr %0, i32 3616
  %183 = load i64, ptr %182, align 8
  %184 = trunc i64 %183 to i32
  %185 = getelementptr i32, ptr %2, i32 69
  store i32 %184, ptr %185, align 4
  %186 = getelementptr i8, ptr %0, i32 3624
  %187 = load i64, ptr %186, align 8
  %188 = trunc i64 %187 to i32
  %189 = getelementptr i32, ptr %2, i32 70
  store i32 %188, ptr %189, align 4
  %190 = getelementptr i8, ptr %0, i32 3632
  %191 = load i64, ptr %190, align 8
  %192 = trunc i64 %191 to i32
  %193 = getelementptr i32, ptr %2, i32 71
  store i32 %192, ptr %193, align 4
  %194 = getelementptr i8, ptr %0, i32 3640
  %195 = load i64, ptr %194, align 8
  %196 = trunc i64 %195 to i32
  %197 = getelementptr i32, ptr %2, i32 72
  store i32 %196, ptr %197, align 4
  %198 = getelementptr i8, ptr %0, i32 3648
  %199 = load i64, ptr %198, align 8
  %200 = trunc i64 %199 to i32
  %201 = getelementptr i32, ptr %2, i32 73
  store i32 %200, ptr %201, align 4
  %202 = getelementptr i8, ptr %0, i32 3656
  %203 = load i64, ptr %202, align 8
  %204 = trunc i64 %203 to i32
  %205 = getelementptr i32, ptr %2, i32 74
  store i32 %204, ptr %205, align 4
  %206 = getelementptr i8, ptr %0, i32 3664
  %207 = load i64, ptr %206, align 8
  %208 = trunc i64 %207 to i32
  %209 = getelementptr i32, ptr %2, i32 75
  store i32 %208, ptr %209, align 4
  %210 = getelementptr i8, ptr %0, i32 3672
  %211 = load i64, ptr %210, align 8
  %212 = trunc i64 %211 to i32
  %213 = getelementptr i32, ptr %2, i32 76
  store i32 %212, ptr %213, align 4
  %214 = getelementptr i8, ptr %0, i32 3680
  %215 = load i64, ptr %214, align 8
  %216 = trunc i64 %215 to i32
  %217 = getelementptr i32, ptr %2, i32 77
  store i32 %216, ptr %217, align 4
  %218 = getelementptr i8, ptr %0, i32 3688
  %219 = load i64, ptr %218, align 8
  %220 = trunc i64 %219 to i32
  %221 = getelementptr i32, ptr %2, i32 78
  store i32 %220, ptr %221, align 4
  %222 = getelementptr i8, ptr %0, i32 3696
  %223 = load i64, ptr %222, align 8
  %224 = trunc i64 %223 to i32
  %225 = getelementptr i32, ptr %2, i32 79
  store i32 %224, ptr %225, align 4
  %226 = getelementptr i8, ptr %0, i32 3704
  %227 = load i64, ptr %226, align 8
  %228 = trunc i64 %227 to i32
  %229 = getelementptr i32, ptr %2, i32 80
  store i32 %228, ptr %229, align 4
  %230 = getelementptr i8, ptr %0, i32 3712
  %231 = load i64, ptr %230, align 8
  %232 = trunc i64 %231 to i32
  %233 = getelementptr i32, ptr %2, i32 81
  store i32 %232, ptr %233, align 4
  %234 = getelementptr i8, ptr %0, i32 3720
  %235 = load i64, ptr %234, align 8
  %236 = trunc i64 %235 to i32
  %237 = getelementptr i32, ptr %2, i32 82
  store i32 %236, ptr %237, align 4
  %238 = getelementptr i8, ptr %0, i32 3728
  %239 = load i64, ptr %238, align 8
  %240 = trunc i64 %239 to i32
  %241 = getelementptr i32, ptr %2, i32 83
  store i32 %240, ptr %241, align 4
  %242 = getelementptr i8, ptr %0, i32 3736
  %243 = load i64, ptr %242, align 8
  %244 = trunc i64 %243 to i32
  %245 = getelementptr i32, ptr %2, i32 84
  store i32 %244, ptr %245, align 4
  %246 = getelementptr i8, ptr %0, i32 3744
  %247 = load i64, ptr %246, align 8
  %248 = trunc i64 %247 to i32
  %249 = getelementptr i32, ptr %2, i32 86
  store i32 %248, ptr %249, align 4
  %250 = getelementptr i8, ptr %0, i32 3752
  %251 = load i64, ptr %250, align 8
  %252 = trunc i64 %251 to i32
  %253 = getelementptr i32, ptr %2, i32 88
  store i32 %252, ptr %253, align 4
  %254 = getelementptr i8, ptr %0, i32 3760
  %255 = load i64, ptr %254, align 8
  %256 = trunc i64 %255 to i32
  %257 = getelementptr i32, ptr %2, i32 89
  store i32 %256, ptr %257, align 4
  %258 = getelementptr i8, ptr %0, i32 3768
  %259 = load i64, ptr %258, align 8
  %260 = trunc i64 %259 to i32
  %261 = getelementptr i32, ptr %2, i32 90
  store i32 %260, ptr %261, align 4
  %262 = getelementptr i8, ptr %0, i32 3776
  %263 = load i64, ptr %262, align 8
  %264 = trunc i64 %263 to i32
  %265 = getelementptr i32, ptr %2, i32 91
  store i32 %264, ptr %265, align 4
  %266 = getelementptr i8, ptr %0, i32 3784
  %267 = load i64, ptr %266, align 8
  %268 = trunc i64 %267 to i32
  %269 = getelementptr i32, ptr %2, i32 92
  store i32 %268, ptr %269, align 4
  %270 = getelementptr i8, ptr %0, i32 3792
  %271 = load i64, ptr %270, align 8
  %272 = trunc i64 %271 to i32
  %273 = getelementptr i32, ptr %2, i32 93
  store i32 %272, ptr %273, align 4
  %274 = getelementptr i8, ptr %0, i32 3800
  %275 = load i64, ptr %274, align 8
  %276 = trunc i64 %275 to i32
  %277 = getelementptr i32, ptr %2, i32 94
  store i32 %276, ptr %277, align 4
  %278 = getelementptr i8, ptr %0, i32 3808
  %279 = load i64, ptr %278, align 8
  %280 = trunc i64 %279 to i32
  %281 = getelementptr i32, ptr %2, i32 95
  store i32 %280, ptr %281, align 4
  %282 = getelementptr i8, ptr %0, i32 3816
  %283 = load i64, ptr %282, align 8
  %284 = trunc i64 %283 to i32
  %285 = getelementptr i32, ptr %2, i32 96
  store i32 %284, ptr %285, align 4
  %286 = getelementptr i8, ptr %0, i32 3824
  %287 = load i64, ptr %286, align 8
  %288 = trunc i64 %287 to i32
  %289 = getelementptr i32, ptr %2, i32 98
  store i32 %288, ptr %289, align 4
  %290 = getelementptr i8, ptr %0, i32 3832
  %291 = load i64, ptr %290, align 8
  %292 = trunc i64 %291 to i32
  %293 = getelementptr i32, ptr %2, i32 100
  store i32 %292, ptr %293, align 4
  %294 = getelementptr i8, ptr %0, i32 3840
  %295 = load i64, ptr %294, align 8
  %296 = trunc i64 %295 to i32
  %297 = getelementptr i32, ptr %2, i32 101
  store i32 %296, ptr %297, align 4
  %298 = getelementptr i8, ptr %0, i32 3848
  %299 = load i64, ptr %298, align 8
  %300 = trunc i64 %299 to i32
  %301 = getelementptr i32, ptr %2, i32 102
  store i32 %300, ptr %301, align 4
  %302 = getelementptr i8, ptr %0, i32 3856
  %303 = load i64, ptr %302, align 8
  %304 = trunc i64 %303 to i32
  %305 = getelementptr i32, ptr %2, i32 103
  store i32 %304, ptr %305, align 4
  %306 = getelementptr i8, ptr %0, i32 3864
  %307 = load i64, ptr %306, align 8
  %308 = trunc i64 %307 to i32
  %309 = getelementptr i32, ptr %2, i32 104
  store i32 %308, ptr %309, align 4
  %310 = getelementptr i8, ptr %0, i32 3872
  %311 = load i64, ptr %310, align 8
  %312 = trunc i64 %311 to i32
  %313 = getelementptr i32, ptr %2, i32 105
  store i32 %312, ptr %313, align 4
  %314 = getelementptr i8, ptr %0, i32 3880
  %315 = load i64, ptr %314, align 8
  %316 = trunc i64 %315 to i32
  %317 = getelementptr i32, ptr %2, i32 106
  store i32 %316, ptr %317, align 4
  %318 = getelementptr i8, ptr %0, i32 3888
  %319 = load i64, ptr %318, align 8
  %320 = trunc i64 %319 to i32
  %321 = getelementptr i32, ptr %2, i32 107
  store i32 %320, ptr %321, align 4
  %322 = getelementptr i8, ptr %0, i32 3896
  %323 = load i64, ptr %322, align 8
  %324 = trunc i64 %323 to i32
  %325 = getelementptr i32, ptr %2, i32 108
  store i32 %324, ptr %325, align 4
  %326 = getelementptr i8, ptr %0, i32 3904
  %327 = load i64, ptr %326, align 8
  %328 = trunc i64 %327 to i32
  %329 = getelementptr i32, ptr %2, i32 109
  store i32 %328, ptr %329, align 4
  %330 = getelementptr i8, ptr %0, i32 3912
  %331 = load i64, ptr %330, align 8
  %332 = trunc i64 %331 to i32
  %333 = getelementptr i32, ptr %2, i32 110
  store i32 %332, ptr %333, align 4
  %334 = getelementptr i8, ptr %0, i32 3928
  %335 = load i64, ptr %334, align 8
  %336 = trunc i64 %335 to i32
  %337 = getelementptr i32, ptr %2, i32 111
  store i32 %336, ptr %337, align 4
  %338 = getelementptr i8, ptr %0, i32 4032
  %339 = load i64, ptr %338, align 8
  %340 = trunc i64 %339 to i32
  %341 = getelementptr i32, ptr %2, i32 112
  store i32 %340, ptr %341, align 4
  %342 = getelementptr i8, ptr %0, i32 4040
  %343 = load i64, ptr %342, align 8
  %344 = trunc i64 %343 to i32
  %345 = getelementptr i32, ptr %2, i32 113
  store i32 %344, ptr %345, align 4
  %346 = getelementptr i8, ptr %0, i32 4056
  %347 = load i64, ptr %346, align 8
  %348 = trunc i64 %347 to i32
  %349 = getelementptr i32, ptr %2, i32 114
  store i32 %348, ptr %349, align 4
  %350 = getelementptr i8, ptr %0, i32 4064
  %351 = load i64, ptr %350, align 8
  %352 = trunc i64 %351 to i32
  %353 = getelementptr i32, ptr %2, i32 116
  store i32 %352, ptr %353, align 4
  %354 = getelementptr i8, ptr %0, i32 4072
  %355 = load i64, ptr %354, align 8
  %356 = trunc i64 %355 to i32
  %357 = getelementptr i32, ptr %2, i32 118
  store i32 %356, ptr %357, align 4
  %358 = getelementptr i8, ptr %0, i32 4080
  %359 = load i64, ptr %358, align 8
  %360 = trunc i64 %359 to i32
  %361 = getelementptr i32, ptr %2, i32 119
  store i32 %360, ptr %361, align 4
  %362 = getelementptr i8, ptr %0, i32 4088
  %363 = load i64, ptr %362, align 8
  %364 = trunc i64 %363 to i32
  %365 = getelementptr i32, ptr %2, i32 120
  store i32 %364, ptr %365, align 4
  %366 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 10252) #20
  %367 = getelementptr i32, ptr %2, i32 121
  store i32 %366, ptr %367, align 4
  %368 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 10508) #20
  %369 = getelementptr i32, ptr %2, i32 122
  store i32 %368, ptr %369, align 4
  %370 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 10764) #20
  %371 = getelementptr i32, ptr %2, i32 123
  store i32 %370, ptr %371, align 4
  %372 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 11020) #20
  %373 = getelementptr i32, ptr %2, i32 124
  store i32 %372, ptr %373, align 4
  %374 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 21632) #20
  %375 = getelementptr i32, ptr %2, i32 125
  store i32 %374, ptr %375, align 4
  %376 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 21636) #20
  %377 = getelementptr i32, ptr %2, i32 126
  store i32 %376, ptr %377, align 4
  %378 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 21640) #20
  %379 = getelementptr i32, ptr %2, i32 127
  store i32 %378, ptr %379, align 4
  %380 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 21644) #20
  %381 = getelementptr i32, ptr %2, i32 128
  store i32 %380, ptr %381, align 4
  %382 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 10240) #20
  %383 = getelementptr i32, ptr %2, i32 129
  store i32 %382, ptr %383, align 4
  %384 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 10496) #20
  %385 = getelementptr i32, ptr %2, i32 130
  store i32 %384, ptr %385, align 4
  %386 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 10752) #20
  %387 = getelementptr i32, ptr %2, i32 131
  store i32 %386, ptr %387, align 4
  %388 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 11008) #20
  %389 = getelementptr i32, ptr %2, i32 132
  store i32 %388, ptr %389, align 4
  %390 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 10244) #20
  %391 = getelementptr i32, ptr %2, i32 133
  store i32 %390, ptr %391, align 4
  %392 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 10500) #20
  %393 = getelementptr i32, ptr %2, i32 134
  store i32 %392, ptr %393, align 4
  %394 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 10756) #20
  %395 = getelementptr i32, ptr %2, i32 135
  store i32 %394, ptr %395, align 4
  %396 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 11012) #20
  %397 = getelementptr i32, ptr %2, i32 136
  store i32 %396, ptr %397, align 4
  %398 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 10248) #20
  %399 = getelementptr i32, ptr %2, i32 137
  store i32 %398, ptr %399, align 4
  %400 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 10504) #20
  %401 = getelementptr i32, ptr %2, i32 138
  store i32 %400, ptr %401, align 4
  %402 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 10760) #20
  %403 = getelementptr i32, ptr %2, i32 139
  store i32 %402, ptr %403, align 4
  %404 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 11016) #20
  %405 = getelementptr i32, ptr %2, i32 140
  store i32 %404, ptr %405, align 4
  %406 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 10256) #20
  %407 = getelementptr i32, ptr %2, i32 141
  store i32 %406, ptr %407, align 4
  %408 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 10512) #20
  %409 = getelementptr i32, ptr %2, i32 142
  store i32 %408, ptr %409, align 4
  %410 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 10768) #20
  %411 = getelementptr i32, ptr %2, i32 143
  store i32 %410, ptr %411, align 4
  %412 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 11024) #20
  %413 = getelementptr i32, ptr %2, i32 144
  store i32 %412, ptr %413, align 4
  %414 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 10264) #20
  %415 = getelementptr i32, ptr %2, i32 145
  store i32 %414, ptr %415, align 4
  %416 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 10520) #20
  %417 = getelementptr i32, ptr %2, i32 146
  store i32 %416, ptr %417, align 4
  %418 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 10776) #20
  %419 = getelementptr i32, ptr %2, i32 147
  store i32 %418, ptr %419, align 4
  %420 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 11032) #20
  %421 = getelementptr i32, ptr %2, i32 148
  store i32 %420, ptr %421, align 4
  %422 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 10280) #20
  %423 = getelementptr i32, ptr %2, i32 149
  store i32 %422, ptr %423, align 4
  %424 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 10536) #20
  %425 = getelementptr i32, ptr %2, i32 150
  store i32 %424, ptr %425, align 4
  %426 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 10792) #20
  %427 = getelementptr i32, ptr %2, i32 151
  store i32 %426, ptr %427, align 4
  %428 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 11048) #20
  %429 = getelementptr i32, ptr %2, i32 152
  store i32 %428, ptr %429, align 4
  %430 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 5760) #20
  %431 = getelementptr i32, ptr %2, i32 153
  store i32 %430, ptr %431, align 4
  %432 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 5764) #20
  %433 = getelementptr i32, ptr %2, i32 154
  store i32 %432, ptr %433, align 4
  %434 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 5768) #20
  %435 = getelementptr i32, ptr %2, i32 155
  store i32 %434, ptr %435, align 4
  %436 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 5772) #20
  %437 = getelementptr i32, ptr %2, i32 156
  store i32 %436, ptr %437, align 4
  %438 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 5776) #20
  %439 = getelementptr i32, ptr %2, i32 157
  store i32 %438, ptr %439, align 4
  %440 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 5780) #20
  %441 = getelementptr i32, ptr %2, i32 158
  store i32 %440, ptr %441, align 4
  %442 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 5784) #20
  %443 = getelementptr i32, ptr %2, i32 159
  store i32 %442, ptr %443, align 4
  %444 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 5788) #20
  %445 = getelementptr i32, ptr %2, i32 160
  store i32 %444, ptr %445, align 4
  %446 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 5792) #20
  %447 = getelementptr i32, ptr %2, i32 161
  store i32 %446, ptr %447, align 4
  %448 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 5796) #20
  %449 = getelementptr i32, ptr %2, i32 162
  store i32 %448, ptr %449, align 4
  %450 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 23168) #20
  %451 = getelementptr i32, ptr %2, i32 163
  store i32 %450, ptr %451, align 4
  %452 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 23172) #20
  %453 = getelementptr i32, ptr %2, i32 164
  store i32 %452, ptr %453, align 4
  %454 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 23176) #20
  %455 = getelementptr i32, ptr %2, i32 165
  store i32 %454, ptr %455, align 4
  %456 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 23180) #20
  %457 = getelementptr i32, ptr %2, i32 166
  store i32 %456, ptr %457, align 4
  %458 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 23184) #20
  %459 = getelementptr i32, ptr %2, i32 167
  store i32 %458, ptr %459, align 4
  %460 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 23188) #20
  %461 = getelementptr i32, ptr %2, i32 168
  store i32 %460, ptr %461, align 4
  %462 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 23192) #20
  %463 = getelementptr i32, ptr %2, i32 169
  store i32 %462, ptr %463, align 4
  %464 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 23196) #20
  %465 = getelementptr i32, ptr %2, i32 170
  store i32 %464, ptr %465, align 4
  %466 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 23200) #20
  %467 = getelementptr i32, ptr %2, i32 171
  store i32 %466, ptr %467, align 4
  %468 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 23204) #20
  %469 = getelementptr i32, ptr %2, i32 172
  store i32 %468, ptr %469, align 4
  %470 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 23208) #20
  %471 = getelementptr i32, ptr %2, i32 173
  store i32 %470, ptr %471, align 4
  %472 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 23212) #20
  %473 = getelementptr i32, ptr %2, i32 174
  store i32 %472, ptr %473, align 4
  %474 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 23216) #20
  %475 = getelementptr i32, ptr %2, i32 175
  store i32 %474, ptr %475, align 4
  %476 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 23220) #20
  %477 = getelementptr i32, ptr %2, i32 176
  store i32 %476, ptr %477, align 4
  %478 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 23224) #20
  %479 = getelementptr i32, ptr %2, i32 177
  store i32 %478, ptr %479, align 4
  %480 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 23228) #20
  %481 = getelementptr i32, ptr %2, i32 178
  store i32 %480, ptr %481, align 4
  %482 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 21504) #20
  %483 = getelementptr i32, ptr %2, i32 179
  store i32 %482, ptr %483, align 4
  %484 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 21512) #20
  %485 = getelementptr i32, ptr %2, i32 180
  store i32 %484, ptr %485, align 4
  %486 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 21520) #20
  %487 = getelementptr i32, ptr %2, i32 181
  store i32 %486, ptr %487, align 4
  %488 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 21528) #20
  %489 = getelementptr i32, ptr %2, i32 182
  store i32 %488, ptr %489, align 4
  %490 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 21536) #20
  %491 = getelementptr i32, ptr %2, i32 183
  store i32 %490, ptr %491, align 4
  %492 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 21544) #20
  %493 = getelementptr i32, ptr %2, i32 184
  store i32 %492, ptr %493, align 4
  %494 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 21552) #20
  %495 = getelementptr i32, ptr %2, i32 185
  store i32 %494, ptr %495, align 4
  %496 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 21560) #20
  %497 = getelementptr i32, ptr %2, i32 186
  store i32 %496, ptr %497, align 4
  %498 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 21568) #20
  %499 = getelementptr i32, ptr %2, i32 187
  store i32 %498, ptr %499, align 4
  %500 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 21576) #20
  %501 = getelementptr i32, ptr %2, i32 188
  store i32 %500, ptr %501, align 4
  %502 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 21584) #20
  %503 = getelementptr i32, ptr %2, i32 189
  store i32 %502, ptr %503, align 4
  %504 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 21592) #20
  %505 = getelementptr i32, ptr %2, i32 190
  store i32 %504, ptr %505, align 4
  %506 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 21600) #20
  %507 = getelementptr i32, ptr %2, i32 191
  store i32 %506, ptr %507, align 4
  %508 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 21608) #20
  %509 = getelementptr i32, ptr %2, i32 192
  store i32 %508, ptr %509, align 4
  %510 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 21616) #20
  %511 = getelementptr i32, ptr %2, i32 193
  store i32 %510, ptr %511, align 4
  %512 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 21624) #20
  %513 = getelementptr i32, ptr %2, i32 194
  store i32 %512, ptr %513, align 4
  %514 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 21508) #20
  %515 = getelementptr i32, ptr %2, i32 195
  store i32 %514, ptr %515, align 4
  %516 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 21516) #20
  %517 = getelementptr i32, ptr %2, i32 196
  store i32 %516, ptr %517, align 4
  %518 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 21524) #20
  %519 = getelementptr i32, ptr %2, i32 197
  store i32 %518, ptr %519, align 4
  %520 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 21532) #20
  %521 = getelementptr i32, ptr %2, i32 198
  store i32 %520, ptr %521, align 4
  %522 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 21540) #20
  %523 = getelementptr i32, ptr %2, i32 199
  store i32 %522, ptr %523, align 4
  %524 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 21548) #20
  %525 = getelementptr i32, ptr %2, i32 200
  store i32 %524, ptr %525, align 4
  %526 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 21556) #20
  %527 = getelementptr i32, ptr %2, i32 201
  store i32 %526, ptr %527, align 4
  %528 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 21564) #20
  %529 = getelementptr i32, ptr %2, i32 202
  store i32 %528, ptr %529, align 4
  %530 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 21572) #20
  %531 = getelementptr i32, ptr %2, i32 203
  store i32 %530, ptr %531, align 4
  %532 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 21580) #20
  %533 = getelementptr i32, ptr %2, i32 204
  store i32 %532, ptr %533, align 4
  %534 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 21588) #20
  %535 = getelementptr i32, ptr %2, i32 205
  store i32 %534, ptr %535, align 4
  %536 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 21596) #20
  %537 = getelementptr i32, ptr %2, i32 206
  store i32 %536, ptr %537, align 4
  %538 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 21604) #20
  %539 = getelementptr i32, ptr %2, i32 207
  store i32 %538, ptr %539, align 4
  %540 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 21612) #20
  %541 = getelementptr i32, ptr %2, i32 208
  store i32 %540, ptr %541, align 4
  %542 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 21620) #20
  %543 = getelementptr i32, ptr %2, i32 209
  store i32 %542, ptr %543, align 4
  %544 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 21628) #20
  %545 = getelementptr i32, ptr %2, i32 210
  store i32 %544, ptr %545, align 4
  %546 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 14336) #20
  %547 = getelementptr i32, ptr %2, i32 211
  store i32 %546, ptr %547, align 4
  %548 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 14592) #20
  %549 = getelementptr i32, ptr %2, i32 212
  store i32 %548, ptr %549, align 4
  %550 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 14848) #20
  %551 = getelementptr i32, ptr %2, i32 213
  store i32 %550, ptr %551, align 4
  %552 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 15104) #20
  %553 = getelementptr i32, ptr %2, i32 214
  store i32 %552, ptr %553, align 4
  %554 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 14340) #20
  %555 = getelementptr i32, ptr %2, i32 215
  store i32 %554, ptr %555, align 4
  %556 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 14596) #20
  %557 = getelementptr i32, ptr %2, i32 216
  store i32 %556, ptr %557, align 4
  %558 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 14852) #20
  %559 = getelementptr i32, ptr %2, i32 217
  store i32 %558, ptr %559, align 4
  %560 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 15108) #20
  %561 = getelementptr i32, ptr %2, i32 218
  store i32 %560, ptr %561, align 4
  %562 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 14344) #20
  %563 = getelementptr i32, ptr %2, i32 219
  store i32 %562, ptr %563, align 4
  %564 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 14600) #20
  %565 = getelementptr i32, ptr %2, i32 220
  store i32 %564, ptr %565, align 4
  %566 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 14856) #20
  %567 = getelementptr i32, ptr %2, i32 221
  store i32 %566, ptr %567, align 4
  %568 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 15112) #20
  %569 = getelementptr i32, ptr %2, i32 222
  store i32 %568, ptr %569, align 4
  %570 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 14352) #20
  %571 = getelementptr i32, ptr %2, i32 223
  store i32 %570, ptr %571, align 4
  %572 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 14608) #20
  %573 = getelementptr i32, ptr %2, i32 224
  store i32 %572, ptr %573, align 4
  %574 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 14864) #20
  %575 = getelementptr i32, ptr %2, i32 225
  store i32 %574, ptr %575, align 4
  %576 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 15120) #20
  %577 = getelementptr i32, ptr %2, i32 226
  store i32 %576, ptr %577, align 4
  %578 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 14360) #20
  %579 = getelementptr i32, ptr %2, i32 227
  store i32 %578, ptr %579, align 4
  %580 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 14616) #20
  %581 = getelementptr i32, ptr %2, i32 228
  store i32 %580, ptr %581, align 4
  %582 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 14872) #20
  %583 = getelementptr i32, ptr %2, i32 229
  store i32 %582, ptr %583, align 4
  %584 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 15128) #20
  %585 = getelementptr i32, ptr %2, i32 230
  store i32 %584, ptr %585, align 4
  %586 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 14376) #20
  %587 = getelementptr i32, ptr %2, i32 231
  store i32 %586, ptr %587, align 4
  %588 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 14632) #20
  %589 = getelementptr i32, ptr %2, i32 232
  store i32 %588, ptr %589, align 4
  %590 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 14888) #20
  %591 = getelementptr i32, ptr %2, i32 233
  store i32 %590, ptr %591, align 4
  %592 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 15144) #20
  %593 = getelementptr i32, ptr %2, i32 234
  store i32 %592, ptr %593, align 4
  %594 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 14392) #20
  %595 = getelementptr i32, ptr %2, i32 235
  store i32 %594, ptr %595, align 4
  %596 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 14648) #20
  %597 = getelementptr i32, ptr %2, i32 236
  store i32 %596, ptr %597, align 4
  %598 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 14904) #20
  %599 = getelementptr i32, ptr %2, i32 237
  store i32 %598, ptr %599, align 4
  %600 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 15160) #20
  %601 = getelementptr i32, ptr %2, i32 238
  store i32 %600, ptr %601, align 4
  %602 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 14396) #20
  %603 = getelementptr i32, ptr %2, i32 239
  store i32 %602, ptr %603, align 4
  %604 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 14652) #20
  %605 = getelementptr i32, ptr %2, i32 240
  store i32 %604, ptr %605, align 4
  %606 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 14908) #20
  %607 = getelementptr i32, ptr %2, i32 241
  store i32 %606, ptr %607, align 4
  %608 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 15164) #20
  %609 = getelementptr i32, ptr %2, i32 242
  store i32 %608, ptr %609, align 4
  %610 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 14356) #20
  %611 = getelementptr i32, ptr %2, i32 243
  store i32 %610, ptr %611, align 4
  %612 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 14612) #20
  %613 = getelementptr i32, ptr %2, i32 244
  store i32 %612, ptr %613, align 4
  %614 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 14868) #20
  %615 = getelementptr i32, ptr %2, i32 245
  store i32 %614, ptr %615, align 4
  %616 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 15124) #20
  %617 = getelementptr i32, ptr %2, i32 246
  store i32 %616, ptr %617, align 4
  %618 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 22592) #20
  %619 = getelementptr i32, ptr %2, i32 247
  store i32 %618, ptr %619, align 4
  %620 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 22600) #20
  %621 = getelementptr i32, ptr %2, i32 248
  store i32 %620, ptr %621, align 4
  %622 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 22608) #20
  %623 = getelementptr i32, ptr %2, i32 249
  store i32 %622, ptr %623, align 4
  %624 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 22616) #20
  %625 = getelementptr i32, ptr %2, i32 250
  store i32 %624, ptr %625, align 4
  %626 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 22656) #20
  %627 = getelementptr i32, ptr %2, i32 251
  store i32 %626, ptr %627, align 4
  %628 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 22660) #20
  %629 = getelementptr i32, ptr %2, i32 252
  store i32 %628, ptr %629, align 4
  %630 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 22664) #20
  %631 = getelementptr i32, ptr %2, i32 253
  store i32 %630, ptr %631, align 4
  %632 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 22668) #20
  %633 = getelementptr i32, ptr %2, i32 254
  store i32 %632, ptr %633, align 4
  br label %634

634:                                              ; preds = %634, %3
  %635 = phi i32 [ 0, %3 ], [ %641, %634 ]
  %636 = shl nuw nsw i32 %635, 2
  %637 = or i32 %636, 23040
  %638 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef %637) #20
  %639 = add nuw nsw i32 %635, 255
  %640 = getelementptr i32, ptr %2, i32 %639
  store i32 %638, ptr %640, align 4
  %641 = add nuw nsw i32 %635, 1
  %642 = icmp eq i32 %641, 32
  br i1 %642, label %643, label %634

643:                                              ; preds = %643, %634
  %644 = phi i32 [ %650, %643 ], [ 0, %634 ]
  %645 = shl nuw nsw i32 %644, 3
  %646 = or i32 %645, 36864
  %647 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef %646) #20
  %648 = add nuw nsw i32 %644, 287
  %649 = getelementptr i32, ptr %2, i32 %648
  store i32 %647, ptr %649, align 4
  %650 = add nuw nsw i32 %644, 1
  %651 = icmp eq i32 %650, 128
  br i1 %651, label %652, label %643

652:                                              ; preds = %652, %643
  %653 = phi i32 [ %659, %652 ], [ 0, %643 ]
  %654 = shl nuw nsw i32 %653, 3
  %655 = or i32 %654, 38912
  %656 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef %655) #20
  %657 = add nuw nsw i32 %653, 415
  %658 = getelementptr i32, ptr %2, i32 %657
  store i32 %656, ptr %658, align 4
  %659 = add nuw nsw i32 %653, 1
  %660 = icmp eq i32 %659, 128
  br i1 %660, label %661, label %652

661:                                              ; preds = %652
  %662 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 24320) #20
  %663 = getelementptr i32, ptr %2, i32 543
  store i32 %662, ptr %663, align 4
  %664 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 24328) #20
  %665 = getelementptr i32, ptr %2, i32 544
  store i32 %664, ptr %665, align 4
  %666 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 24336) #20
  %667 = getelementptr i32, ptr %2, i32 545
  store i32 %666, ptr %667, align 4
  %668 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 24344) #20
  %669 = getelementptr i32, ptr %2, i32 546
  store i32 %668, ptr %669, align 4
  %670 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 13328) #20
  %671 = getelementptr i32, ptr %2, i32 547
  store i32 %670, ptr %671, align 4
  %672 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 13336) #20
  %673 = getelementptr i32, ptr %2, i32 548
  store i32 %672, ptr %673, align 4
  %674 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 13344) #20
  %675 = getelementptr i32, ptr %2, i32 549
  store i32 %674, ptr %675, align 4
  %676 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 13360) #20
  %677 = getelementptr i32, ptr %2, i32 550
  store i32 %676, ptr %677, align 4
  %678 = getelementptr i8, ptr %0, i32 2592
  %679 = load i32, ptr %678, align 4
  %680 = icmp ugt i32 %679, 3
  br i1 %680, label %681, label %699

681:                                              ; preds = %661
  %682 = getelementptr i8, ptr %0, i32 4104
  %683 = load i64, ptr %682, align 8
  %684 = trunc i64 %683 to i32
  %685 = getelementptr i32, ptr %2, i32 551
  store i32 %684, ptr %685, align 4
  %686 = getelementptr i8, ptr %0, i32 4120
  %687 = load i64, ptr %686, align 8
  %688 = trunc i64 %687 to i32
  %689 = getelementptr i32, ptr %2, i32 552
  store i32 %688, ptr %689, align 4
  %690 = getelementptr i8, ptr %0, i32 4112
  %691 = load i64, ptr %690, align 8
  %692 = trunc i64 %691 to i32
  %693 = getelementptr i32, ptr %2, i32 553
  store i32 %692, ptr %693, align 4
  %694 = getelementptr i8, ptr %0, i32 4128
  %695 = load i64, ptr %694, align 8
  %696 = trunc i64 %695 to i32
  %697 = getelementptr i32, ptr %2, i32 554
  store i32 %696, ptr %697, align 4
  %698 = load i32, ptr %678, align 4
  br label %699

699:                                              ; preds = %681, %661
  %700 = phi i32 [ %698, %681 ], [ %679, %661 ]
  %701 = icmp eq i32 %700, 2
  br i1 %701, label %702, label %1072

702:                                              ; preds = %699
  %703 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 49420) #20
  %704 = getelementptr i32, ptr %2, i32 555
  store i32 %703, ptr %704, align 4
  %705 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 49484) #20
  %706 = getelementptr i32, ptr %2, i32 556
  store i32 %705, ptr %706, align 4
  %707 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 49548) #20
  %708 = getelementptr i32, ptr %2, i32 557
  store i32 %707, ptr %708, align 4
  %709 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 49612) #20
  %710 = getelementptr i32, ptr %2, i32 558
  store i32 %709, ptr %710, align 4
  %711 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 49676) #20
  %712 = getelementptr i32, ptr %2, i32 559
  store i32 %711, ptr %712, align 4
  %713 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 49740) #20
  %714 = getelementptr i32, ptr %2, i32 560
  store i32 %713, ptr %714, align 4
  %715 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 49804) #20
  %716 = getelementptr i32, ptr %2, i32 561
  store i32 %715, ptr %716, align 4
  %717 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 49868) #20
  %718 = getelementptr i32, ptr %2, i32 562
  store i32 %717, ptr %718, align 4
  %719 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 49932) #20
  %720 = getelementptr i32, ptr %2, i32 563
  store i32 %719, ptr %720, align 4
  %721 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 49996) #20
  %722 = getelementptr i32, ptr %2, i32 564
  store i32 %721, ptr %722, align 4
  %723 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 50060) #20
  %724 = getelementptr i32, ptr %2, i32 565
  store i32 %723, ptr %724, align 4
  %725 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 50124) #20
  %726 = getelementptr i32, ptr %2, i32 566
  store i32 %725, ptr %726, align 4
  %727 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 21648) #20
  %728 = getelementptr i32, ptr %2, i32 567
  store i32 %727, ptr %728, align 4
  %729 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 21652) #20
  %730 = getelementptr i32, ptr %2, i32 568
  store i32 %729, ptr %730, align 4
  %731 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 21656) #20
  %732 = getelementptr i32, ptr %2, i32 569
  store i32 %731, ptr %732, align 4
  %733 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 21660) #20
  %734 = getelementptr i32, ptr %2, i32 570
  store i32 %733, ptr %734, align 4
  %735 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 49408) #20
  %736 = getelementptr i32, ptr %2, i32 571
  store i32 %735, ptr %736, align 4
  %737 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 49472) #20
  %738 = getelementptr i32, ptr %2, i32 572
  store i32 %737, ptr %738, align 4
  %739 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 49536) #20
  %740 = getelementptr i32, ptr %2, i32 573
  store i32 %739, ptr %740, align 4
  %741 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 49600) #20
  %742 = getelementptr i32, ptr %2, i32 574
  store i32 %741, ptr %742, align 4
  %743 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 49664) #20
  %744 = getelementptr i32, ptr %2, i32 575
  store i32 %743, ptr %744, align 4
  %745 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 49728) #20
  %746 = getelementptr i32, ptr %2, i32 576
  store i32 %745, ptr %746, align 4
  %747 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 49792) #20
  %748 = getelementptr i32, ptr %2, i32 577
  store i32 %747, ptr %748, align 4
  %749 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 49856) #20
  %750 = getelementptr i32, ptr %2, i32 578
  store i32 %749, ptr %750, align 4
  %751 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 49920) #20
  %752 = getelementptr i32, ptr %2, i32 579
  store i32 %751, ptr %752, align 4
  %753 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 49984) #20
  %754 = getelementptr i32, ptr %2, i32 580
  store i32 %753, ptr %754, align 4
  %755 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 50048) #20
  %756 = getelementptr i32, ptr %2, i32 581
  store i32 %755, ptr %756, align 4
  %757 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 50112) #20
  %758 = getelementptr i32, ptr %2, i32 582
  store i32 %757, ptr %758, align 4
  %759 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 49412) #20
  %760 = getelementptr i32, ptr %2, i32 583
  store i32 %759, ptr %760, align 4
  %761 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 49476) #20
  %762 = getelementptr i32, ptr %2, i32 584
  store i32 %761, ptr %762, align 4
  %763 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 49540) #20
  %764 = getelementptr i32, ptr %2, i32 585
  store i32 %763, ptr %764, align 4
  %765 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 49604) #20
  %766 = getelementptr i32, ptr %2, i32 586
  store i32 %765, ptr %766, align 4
  %767 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 49668) #20
  %768 = getelementptr i32, ptr %2, i32 587
  store i32 %767, ptr %768, align 4
  %769 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 49732) #20
  %770 = getelementptr i32, ptr %2, i32 588
  store i32 %769, ptr %770, align 4
  %771 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 49796) #20
  %772 = getelementptr i32, ptr %2, i32 589
  store i32 %771, ptr %772, align 4
  %773 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 49860) #20
  %774 = getelementptr i32, ptr %2, i32 590
  store i32 %773, ptr %774, align 4
  %775 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 49924) #20
  %776 = getelementptr i32, ptr %2, i32 591
  store i32 %775, ptr %776, align 4
  %777 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 49988) #20
  %778 = getelementptr i32, ptr %2, i32 592
  store i32 %777, ptr %778, align 4
  %779 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 50052) #20
  %780 = getelementptr i32, ptr %2, i32 593
  store i32 %779, ptr %780, align 4
  %781 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 50116) #20
  %782 = getelementptr i32, ptr %2, i32 594
  store i32 %781, ptr %782, align 4
  %783 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 49416) #20
  %784 = getelementptr i32, ptr %2, i32 595
  store i32 %783, ptr %784, align 4
  %785 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 49480) #20
  %786 = getelementptr i32, ptr %2, i32 596
  store i32 %785, ptr %786, align 4
  %787 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 49544) #20
  %788 = getelementptr i32, ptr %2, i32 597
  store i32 %787, ptr %788, align 4
  %789 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 49608) #20
  %790 = getelementptr i32, ptr %2, i32 598
  store i32 %789, ptr %790, align 4
  %791 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 49672) #20
  %792 = getelementptr i32, ptr %2, i32 599
  store i32 %791, ptr %792, align 4
  %793 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 49736) #20
  %794 = getelementptr i32, ptr %2, i32 600
  store i32 %793, ptr %794, align 4
  %795 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 49800) #20
  %796 = getelementptr i32, ptr %2, i32 601
  store i32 %795, ptr %796, align 4
  %797 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 49864) #20
  %798 = getelementptr i32, ptr %2, i32 602
  store i32 %797, ptr %798, align 4
  %799 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 49928) #20
  %800 = getelementptr i32, ptr %2, i32 603
  store i32 %799, ptr %800, align 4
  %801 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 49992) #20
  %802 = getelementptr i32, ptr %2, i32 604
  store i32 %801, ptr %802, align 4
  %803 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 50056) #20
  %804 = getelementptr i32, ptr %2, i32 605
  store i32 %803, ptr %804, align 4
  %805 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 50120) #20
  %806 = getelementptr i32, ptr %2, i32 606
  store i32 %805, ptr %806, align 4
  %807 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 49424) #20
  %808 = getelementptr i32, ptr %2, i32 607
  store i32 %807, ptr %808, align 4
  %809 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 49488) #20
  %810 = getelementptr i32, ptr %2, i32 608
  store i32 %809, ptr %810, align 4
  %811 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 49552) #20
  %812 = getelementptr i32, ptr %2, i32 609
  store i32 %811, ptr %812, align 4
  %813 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 49616) #20
  %814 = getelementptr i32, ptr %2, i32 610
  store i32 %813, ptr %814, align 4
  %815 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 49680) #20
  %816 = getelementptr i32, ptr %2, i32 611
  store i32 %815, ptr %816, align 4
  %817 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 49744) #20
  %818 = getelementptr i32, ptr %2, i32 612
  store i32 %817, ptr %818, align 4
  %819 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 49808) #20
  %820 = getelementptr i32, ptr %2, i32 613
  store i32 %819, ptr %820, align 4
  %821 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 49872) #20
  %822 = getelementptr i32, ptr %2, i32 614
  store i32 %821, ptr %822, align 4
  %823 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 49936) #20
  %824 = getelementptr i32, ptr %2, i32 615
  store i32 %823, ptr %824, align 4
  %825 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 50000) #20
  %826 = getelementptr i32, ptr %2, i32 616
  store i32 %825, ptr %826, align 4
  %827 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 50064) #20
  %828 = getelementptr i32, ptr %2, i32 617
  store i32 %827, ptr %828, align 4
  %829 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 50128) #20
  %830 = getelementptr i32, ptr %2, i32 618
  store i32 %829, ptr %830, align 4
  %831 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 49432) #20
  %832 = getelementptr i32, ptr %2, i32 619
  store i32 %831, ptr %832, align 4
  %833 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 49496) #20
  %834 = getelementptr i32, ptr %2, i32 620
  store i32 %833, ptr %834, align 4
  %835 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 49560) #20
  %836 = getelementptr i32, ptr %2, i32 621
  store i32 %835, ptr %836, align 4
  %837 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 49624) #20
  %838 = getelementptr i32, ptr %2, i32 622
  store i32 %837, ptr %838, align 4
  %839 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 49688) #20
  %840 = getelementptr i32, ptr %2, i32 623
  store i32 %839, ptr %840, align 4
  %841 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 49752) #20
  %842 = getelementptr i32, ptr %2, i32 624
  store i32 %841, ptr %842, align 4
  %843 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 49816) #20
  %844 = getelementptr i32, ptr %2, i32 625
  store i32 %843, ptr %844, align 4
  %845 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 49880) #20
  %846 = getelementptr i32, ptr %2, i32 626
  store i32 %845, ptr %846, align 4
  %847 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 49944) #20
  %848 = getelementptr i32, ptr %2, i32 627
  store i32 %847, ptr %848, align 4
  %849 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 50008) #20
  %850 = getelementptr i32, ptr %2, i32 628
  store i32 %849, ptr %850, align 4
  %851 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 50072) #20
  %852 = getelementptr i32, ptr %2, i32 629
  store i32 %851, ptr %852, align 4
  %853 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 50136) #20
  %854 = getelementptr i32, ptr %2, i32 630
  store i32 %853, ptr %854, align 4
  %855 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 49448) #20
  %856 = getelementptr i32, ptr %2, i32 631
  store i32 %855, ptr %856, align 4
  %857 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 49512) #20
  %858 = getelementptr i32, ptr %2, i32 632
  store i32 %857, ptr %858, align 4
  %859 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 49576) #20
  %860 = getelementptr i32, ptr %2, i32 633
  store i32 %859, ptr %860, align 4
  %861 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 49640) #20
  %862 = getelementptr i32, ptr %2, i32 634
  store i32 %861, ptr %862, align 4
  %863 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 49704) #20
  %864 = getelementptr i32, ptr %2, i32 635
  store i32 %863, ptr %864, align 4
  %865 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 49768) #20
  %866 = getelementptr i32, ptr %2, i32 636
  store i32 %865, ptr %866, align 4
  %867 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 49832) #20
  %868 = getelementptr i32, ptr %2, i32 637
  store i32 %867, ptr %868, align 4
  %869 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 49896) #20
  %870 = getelementptr i32, ptr %2, i32 638
  store i32 %869, ptr %870, align 4
  %871 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 49960) #20
  %872 = getelementptr i32, ptr %2, i32 639
  store i32 %871, ptr %872, align 4
  %873 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 50024) #20
  %874 = getelementptr i32, ptr %2, i32 640
  store i32 %873, ptr %874, align 4
  %875 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 50088) #20
  %876 = getelementptr i32, ptr %2, i32 641
  store i32 %875, ptr %876, align 4
  %877 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 50152) #20
  %878 = getelementptr i32, ptr %2, i32 642
  store i32 %877, ptr %878, align 4
  %879 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 57600) #20
  %880 = getelementptr i32, ptr %2, i32 643
  store i32 %879, ptr %880, align 4
  %881 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 57664) #20
  %882 = getelementptr i32, ptr %2, i32 644
  store i32 %881, ptr %882, align 4
  %883 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 57728) #20
  %884 = getelementptr i32, ptr %2, i32 645
  store i32 %883, ptr %884, align 4
  %885 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 57792) #20
  %886 = getelementptr i32, ptr %2, i32 646
  store i32 %885, ptr %886, align 4
  %887 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 57856) #20
  %888 = getelementptr i32, ptr %2, i32 647
  store i32 %887, ptr %888, align 4
  %889 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 57920) #20
  %890 = getelementptr i32, ptr %2, i32 648
  store i32 %889, ptr %890, align 4
  %891 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 57984) #20
  %892 = getelementptr i32, ptr %2, i32 649
  store i32 %891, ptr %892, align 4
  %893 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 58048) #20
  %894 = getelementptr i32, ptr %2, i32 650
  store i32 %893, ptr %894, align 4
  %895 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 58112) #20
  %896 = getelementptr i32, ptr %2, i32 651
  store i32 %895, ptr %896, align 4
  %897 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 58176) #20
  %898 = getelementptr i32, ptr %2, i32 652
  store i32 %897, ptr %898, align 4
  %899 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 58240) #20
  %900 = getelementptr i32, ptr %2, i32 653
  store i32 %899, ptr %900, align 4
  %901 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 58304) #20
  %902 = getelementptr i32, ptr %2, i32 654
  store i32 %901, ptr %902, align 4
  %903 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 57604) #20
  %904 = getelementptr i32, ptr %2, i32 655
  store i32 %903, ptr %904, align 4
  %905 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 57668) #20
  %906 = getelementptr i32, ptr %2, i32 656
  store i32 %905, ptr %906, align 4
  %907 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 57732) #20
  %908 = getelementptr i32, ptr %2, i32 657
  store i32 %907, ptr %908, align 4
  %909 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 57796) #20
  %910 = getelementptr i32, ptr %2, i32 658
  store i32 %909, ptr %910, align 4
  %911 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 57860) #20
  %912 = getelementptr i32, ptr %2, i32 659
  store i32 %911, ptr %912, align 4
  %913 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 57924) #20
  %914 = getelementptr i32, ptr %2, i32 660
  store i32 %913, ptr %914, align 4
  %915 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 57988) #20
  %916 = getelementptr i32, ptr %2, i32 661
  store i32 %915, ptr %916, align 4
  %917 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 58052) #20
  %918 = getelementptr i32, ptr %2, i32 662
  store i32 %917, ptr %918, align 4
  %919 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 58116) #20
  %920 = getelementptr i32, ptr %2, i32 663
  store i32 %919, ptr %920, align 4
  %921 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 58180) #20
  %922 = getelementptr i32, ptr %2, i32 664
  store i32 %921, ptr %922, align 4
  %923 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 58244) #20
  %924 = getelementptr i32, ptr %2, i32 665
  store i32 %923, ptr %924, align 4
  %925 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 58308) #20
  %926 = getelementptr i32, ptr %2, i32 666
  store i32 %925, ptr %926, align 4
  %927 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 57608) #20
  %928 = getelementptr i32, ptr %2, i32 667
  store i32 %927, ptr %928, align 4
  %929 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 57672) #20
  %930 = getelementptr i32, ptr %2, i32 668
  store i32 %929, ptr %930, align 4
  %931 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 57736) #20
  %932 = getelementptr i32, ptr %2, i32 669
  store i32 %931, ptr %932, align 4
  %933 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 57800) #20
  %934 = getelementptr i32, ptr %2, i32 670
  store i32 %933, ptr %934, align 4
  %935 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 57864) #20
  %936 = getelementptr i32, ptr %2, i32 671
  store i32 %935, ptr %936, align 4
  %937 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 57928) #20
  %938 = getelementptr i32, ptr %2, i32 672
  store i32 %937, ptr %938, align 4
  %939 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 57992) #20
  %940 = getelementptr i32, ptr %2, i32 673
  store i32 %939, ptr %940, align 4
  %941 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 58056) #20
  %942 = getelementptr i32, ptr %2, i32 674
  store i32 %941, ptr %942, align 4
  %943 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 58120) #20
  %944 = getelementptr i32, ptr %2, i32 675
  store i32 %943, ptr %944, align 4
  %945 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 58184) #20
  %946 = getelementptr i32, ptr %2, i32 676
  store i32 %945, ptr %946, align 4
  %947 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 58248) #20
  %948 = getelementptr i32, ptr %2, i32 677
  store i32 %947, ptr %948, align 4
  %949 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 58312) #20
  %950 = getelementptr i32, ptr %2, i32 678
  store i32 %949, ptr %950, align 4
  %951 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 57616) #20
  %952 = getelementptr i32, ptr %2, i32 679
  store i32 %951, ptr %952, align 4
  %953 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 57680) #20
  %954 = getelementptr i32, ptr %2, i32 680
  store i32 %953, ptr %954, align 4
  %955 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 57744) #20
  %956 = getelementptr i32, ptr %2, i32 681
  store i32 %955, ptr %956, align 4
  %957 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 57808) #20
  %958 = getelementptr i32, ptr %2, i32 682
  store i32 %957, ptr %958, align 4
  %959 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 57872) #20
  %960 = getelementptr i32, ptr %2, i32 683
  store i32 %959, ptr %960, align 4
  %961 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 57936) #20
  %962 = getelementptr i32, ptr %2, i32 684
  store i32 %961, ptr %962, align 4
  %963 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 58000) #20
  %964 = getelementptr i32, ptr %2, i32 685
  store i32 %963, ptr %964, align 4
  %965 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 58064) #20
  %966 = getelementptr i32, ptr %2, i32 686
  store i32 %965, ptr %966, align 4
  %967 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 58128) #20
  %968 = getelementptr i32, ptr %2, i32 687
  store i32 %967, ptr %968, align 4
  %969 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 58192) #20
  %970 = getelementptr i32, ptr %2, i32 688
  store i32 %969, ptr %970, align 4
  %971 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 58256) #20
  %972 = getelementptr i32, ptr %2, i32 689
  store i32 %971, ptr %972, align 4
  %973 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 58320) #20
  %974 = getelementptr i32, ptr %2, i32 690
  store i32 %973, ptr %974, align 4
  %975 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 57624) #20
  %976 = getelementptr i32, ptr %2, i32 691
  store i32 %975, ptr %976, align 4
  %977 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 57688) #20
  %978 = getelementptr i32, ptr %2, i32 692
  store i32 %977, ptr %978, align 4
  %979 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 57752) #20
  %980 = getelementptr i32, ptr %2, i32 693
  store i32 %979, ptr %980, align 4
  %981 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 57816) #20
  %982 = getelementptr i32, ptr %2, i32 694
  store i32 %981, ptr %982, align 4
  %983 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 57880) #20
  %984 = getelementptr i32, ptr %2, i32 695
  store i32 %983, ptr %984, align 4
  %985 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 57944) #20
  %986 = getelementptr i32, ptr %2, i32 696
  store i32 %985, ptr %986, align 4
  %987 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 58008) #20
  %988 = getelementptr i32, ptr %2, i32 697
  store i32 %987, ptr %988, align 4
  %989 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 58072) #20
  %990 = getelementptr i32, ptr %2, i32 698
  store i32 %989, ptr %990, align 4
  %991 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 58136) #20
  %992 = getelementptr i32, ptr %2, i32 699
  store i32 %991, ptr %992, align 4
  %993 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 58200) #20
  %994 = getelementptr i32, ptr %2, i32 700
  store i32 %993, ptr %994, align 4
  %995 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 58264) #20
  %996 = getelementptr i32, ptr %2, i32 701
  store i32 %995, ptr %996, align 4
  %997 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 58328) #20
  %998 = getelementptr i32, ptr %2, i32 702
  store i32 %997, ptr %998, align 4
  %999 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 57640) #20
  %1000 = getelementptr i32, ptr %2, i32 703
  store i32 %999, ptr %1000, align 4
  %1001 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 57704) #20
  %1002 = getelementptr i32, ptr %2, i32 704
  store i32 %1001, ptr %1002, align 4
  %1003 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 57768) #20
  %1004 = getelementptr i32, ptr %2, i32 705
  store i32 %1003, ptr %1004, align 4
  %1005 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 57832) #20
  %1006 = getelementptr i32, ptr %2, i32 706
  store i32 %1005, ptr %1006, align 4
  %1007 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 57896) #20
  %1008 = getelementptr i32, ptr %2, i32 707
  store i32 %1007, ptr %1008, align 4
  %1009 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 57960) #20
  %1010 = getelementptr i32, ptr %2, i32 708
  store i32 %1009, ptr %1010, align 4
  %1011 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 58024) #20
  %1012 = getelementptr i32, ptr %2, i32 709
  store i32 %1011, ptr %1012, align 4
  %1013 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 58088) #20
  %1014 = getelementptr i32, ptr %2, i32 710
  store i32 %1013, ptr %1014, align 4
  %1015 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 58152) #20
  %1016 = getelementptr i32, ptr %2, i32 711
  store i32 %1015, ptr %1016, align 4
  %1017 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 58216) #20
  %1018 = getelementptr i32, ptr %2, i32 712
  store i32 %1017, ptr %1018, align 4
  %1019 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 58280) #20
  %1020 = getelementptr i32, ptr %2, i32 713
  store i32 %1019, ptr %1020, align 4
  %1021 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 58344) #20
  %1022 = getelementptr i32, ptr %2, i32 714
  store i32 %1021, ptr %1022, align 4
  %1023 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 57656) #20
  %1024 = getelementptr i32, ptr %2, i32 715
  store i32 %1023, ptr %1024, align 4
  %1025 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 57720) #20
  %1026 = getelementptr i32, ptr %2, i32 716
  store i32 %1025, ptr %1026, align 4
  %1027 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 57784) #20
  %1028 = getelementptr i32, ptr %2, i32 717
  store i32 %1027, ptr %1028, align 4
  %1029 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 57848) #20
  %1030 = getelementptr i32, ptr %2, i32 718
  store i32 %1029, ptr %1030, align 4
  %1031 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 57912) #20
  %1032 = getelementptr i32, ptr %2, i32 719
  store i32 %1031, ptr %1032, align 4
  %1033 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 57976) #20
  %1034 = getelementptr i32, ptr %2, i32 720
  store i32 %1033, ptr %1034, align 4
  %1035 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 58040) #20
  %1036 = getelementptr i32, ptr %2, i32 721
  store i32 %1035, ptr %1036, align 4
  %1037 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 58104) #20
  %1038 = getelementptr i32, ptr %2, i32 722
  store i32 %1037, ptr %1038, align 4
  %1039 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 58168) #20
  %1040 = getelementptr i32, ptr %2, i32 723
  store i32 %1039, ptr %1040, align 4
  %1041 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 58232) #20
  %1042 = getelementptr i32, ptr %2, i32 724
  store i32 %1041, ptr %1042, align 4
  %1043 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 58296) #20
  %1044 = getelementptr i32, ptr %2, i32 725
  store i32 %1043, ptr %1044, align 4
  %1045 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 58360) #20
  %1046 = getelementptr i32, ptr %2, i32 726
  store i32 %1045, ptr %1046, align 4
  %1047 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 57660) #20
  %1048 = getelementptr i32, ptr %2, i32 727
  store i32 %1047, ptr %1048, align 4
  %1049 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 57724) #20
  %1050 = getelementptr i32, ptr %2, i32 728
  store i32 %1049, ptr %1050, align 4
  %1051 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 57788) #20
  %1052 = getelementptr i32, ptr %2, i32 729
  store i32 %1051, ptr %1052, align 4
  %1053 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 57852) #20
  %1054 = getelementptr i32, ptr %2, i32 730
  store i32 %1053, ptr %1054, align 4
  %1055 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 57916) #20
  %1056 = getelementptr i32, ptr %2, i32 731
  store i32 %1055, ptr %1056, align 4
  %1057 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 57980) #20
  %1058 = getelementptr i32, ptr %2, i32 732
  store i32 %1057, ptr %1058, align 4
  %1059 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 58044) #20
  %1060 = getelementptr i32, ptr %2, i32 733
  store i32 %1059, ptr %1060, align 4
  %1061 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 58108) #20
  %1062 = getelementptr i32, ptr %2, i32 734
  store i32 %1061, ptr %1062, align 4
  %1063 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 58172) #20
  %1064 = getelementptr i32, ptr %2, i32 735
  store i32 %1063, ptr %1064, align 4
  %1065 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 58236) #20
  %1066 = getelementptr i32, ptr %2, i32 736
  store i32 %1065, ptr %1066, align 4
  %1067 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 58300) #20
  %1068 = getelementptr i32, ptr %2, i32 737
  store i32 %1067, ptr %1068, align 4
  %1069 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 58364) #20
  %1070 = getelementptr i32, ptr %2, i32 738
  store i32 %1069, ptr %1070, align 4
  %1071 = load i32, ptr %678, align 4
  br label %1072

1072:                                             ; preds = %702, %699
  %1073 = phi i32 [ %1071, %702 ], [ %700, %699 ]
  %1074 = and i32 %1073, -2
  %1075 = icmp eq i32 %1074, 6
  br i1 %1075, label %1076, label %1079

1076:                                             ; preds = %1072
  %1077 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 23540) #20
  %1078 = getelementptr i32, ptr %2, i32 739
  store i32 %1077, ptr %1078, align 4
  br label %1079

1079:                                             ; preds = %1076, %1072
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @igb_get_wol(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #8 {
  %3 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %1, i32 0, i32 2
  store i32 0, ptr %3, align 4
  %4 = getelementptr i8, ptr %0, i32 1932
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 256
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %47, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %1, i32 0, i32 1
  store i32 47, ptr %9, align 4
  %10 = getelementptr i8, ptr %0, i32 2232
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %8
  store i32 2, ptr %3, align 4
  %15 = load i32, ptr %10, align 8
  br label %16

16:                                               ; preds = %14, %8
  %17 = phi i32 [ 2, %14 ], [ 0, %8 ]
  %18 = phi i32 [ %15, %14 ], [ %11, %8 ]
  %19 = and i32 %18, 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = or i32 %17, 4
  store i32 %22, ptr %3, align 4
  %23 = load i32, ptr %10, align 8
  br label %24

24:                                               ; preds = %21, %16
  %25 = phi i32 [ %22, %21 ], [ %17, %16 ]
  %26 = phi i32 [ %23, %21 ], [ %18, %16 ]
  %27 = and i32 %26, 16
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = or i32 %25, 8
  store i32 %30, ptr %3, align 4
  %31 = load i32, ptr %10, align 8
  br label %32

32:                                               ; preds = %29, %24
  %33 = phi i32 [ %30, %29 ], [ %25, %24 ]
  %34 = phi i32 [ %31, %29 ], [ %26, %24 ]
  %35 = and i32 %34, 2
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = or i32 %33, 32
  store i32 %38, ptr %3, align 4
  %39 = load i32, ptr %10, align 8
  br label %40

40:                                               ; preds = %37, %32
  %41 = phi i32 [ %38, %37 ], [ %33, %32 ]
  %42 = phi i32 [ %39, %37 ], [ %34, %32 ]
  %43 = and i32 %42, 1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %40
  %46 = or i32 %41, 1
  store i32 %46, ptr %3, align 4
  br label %47

47:                                               ; preds = %45, %40, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @igb_set_wol(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %1, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 208
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %56

7:                                                ; preds = %2
  %8 = getelementptr i8, ptr %0, i32 1932
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 256
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %7
  %13 = icmp eq i32 %4, 0
  %14 = select i1 %13, i32 0, i32 -95
  br label %56

15:                                               ; preds = %7
  %16 = getelementptr i8, ptr %0, i32 2232
  store i32 0, ptr %16, align 8
  %17 = load i32, ptr %3, align 4
  %18 = shl i32 %17, 1
  %19 = and i32 %18, 4
  store i32 %19, ptr %16, align 8
  %20 = load i32, ptr %3, align 4
  %21 = and i32 %20, 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %15
  %24 = or i32 %19, 8
  store i32 %24, ptr %16, align 8
  %25 = load i32, ptr %3, align 4
  br label %26

26:                                               ; preds = %23, %15
  %27 = phi i32 [ %24, %23 ], [ %19, %15 ]
  %28 = phi i32 [ %25, %23 ], [ %20, %15 ]
  %29 = and i32 %28, 8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = or i32 %27, 16
  store i32 %32, ptr %16, align 8
  %33 = load i32, ptr %3, align 4
  br label %34

34:                                               ; preds = %31, %26
  %35 = phi i32 [ %32, %31 ], [ %27, %26 ]
  %36 = phi i32 [ %33, %31 ], [ %28, %26 ]
  %37 = and i32 %36, 32
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  %40 = or i32 %35, 2
  store i32 %40, ptr %16, align 8
  %41 = load i32, ptr %3, align 4
  br label %42

42:                                               ; preds = %39, %34
  %43 = phi i32 [ %40, %39 ], [ %35, %34 ]
  %44 = phi i32 [ %41, %39 ], [ %36, %34 ]
  %45 = and i32 %44, 1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %42
  %48 = or i32 %43, 1
  store i32 %48, ptr %16, align 8
  br label %49

49:                                               ; preds = %47, %42
  %50 = phi i32 [ 1, %47 ], [ %43, %42 ]
  %51 = getelementptr i8, ptr %0, i32 2308
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.pci_dev, ptr %52, i32 0, i32 44
  %54 = icmp ne i32 %50, 0
  %55 = tail call i32 @device_set_wakeup_enable(ptr noundef %53, i1 noundef zeroext %54) #20
  br label %56

56:                                               ; preds = %49, %12, %2
  %57 = phi i32 [ 0, %49 ], [ %14, %12 ], [ -95, %2 ]
  ret i32 %57
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @igb_get_msglevel(ptr nocapture noundef readonly %0) #9 {
  %2 = getelementptr i8, ptr %0, i32 4672
  %3 = load i32, ptr %2, align 64
  ret i32 %3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @igb_set_msglevel(ptr nocapture noundef writeonly %0, i32 noundef %1) #5 {
  %3 = getelementptr i8, ptr %0, i32 4672
  store i32 %1, ptr %3, align 64
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @igb_nway_reset(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 1408
  tail call void @igb_reinit_locked(ptr noundef %7) #20
  br label %8

8:                                                ; preds = %6, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @igb_get_link(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 3141
  store i8 1, ptr %7, align 1
  br label %8

8:                                                ; preds = %6, %1
  %9 = getelementptr i8, ptr %0, i32 1408
  %10 = tail call zeroext i1 @igb_has_link(ptr noundef %9) #20
  %11 = zext i1 %10 to i32
  ret i32 %11
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @igb_get_eeprom_len(ptr nocapture noundef readonly %0) #9 {
  %2 = getelementptr i8, ptr %0, i32 3360
  %3 = load i16, ptr %2, align 4
  %4 = zext i16 %3 to i32
  %5 = shl nuw nsw i32 %4, 1
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @igb_get_eeprom(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 2512
  %5 = getelementptr inbounds %struct.ethtool_eeprom, ptr %1, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %70, label %8

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %0, i32 3492
  %10 = load i16, ptr %9, align 4
  %11 = zext i16 %10 to i32
  %12 = getelementptr i8, ptr %0, i32 3486
  %13 = load i16, ptr %12, align 2
  %14 = zext i16 %13 to i32
  %15 = shl nuw i32 %14, 16
  %16 = or i32 %15, %11
  %17 = getelementptr inbounds %struct.ethtool_eeprom, ptr %1, i32 0, i32 1
  store i32 %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.ethtool_eeprom, ptr %1, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = lshr i32 %19, 1
  %21 = add i32 %6, -1
  %22 = add i32 %21, %19
  %23 = lshr i32 %22, 1
  %24 = sub nsw i32 %23, %20
  %25 = add i32 %24, 1
  %26 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %25, i32 2) #20
  %27 = extractvalue { i32, i1 } %26, 1
  br i1 %27, label %70, label %28, !prof !9

28:                                               ; preds = %8
  %29 = extractvalue { i32, i1 } %26, 0
  %30 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %29, i32 noundef 3264) #21
  %31 = icmp eq ptr %30, null
  br i1 %31, label %70, label %32

32:                                               ; preds = %28
  %33 = getelementptr i8, ptr %0, i32 3344
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 2
  %36 = getelementptr i8, ptr %0, i32 3320
  br i1 %35, label %41, label %37

37:                                               ; preds = %32
  %38 = icmp ult i32 %24, 2147483647
  br i1 %38, label %39, label %58

39:                                               ; preds = %37
  %40 = trunc i32 %20 to i16
  br label %50

41:                                               ; preds = %32
  %42 = load ptr, ptr %36, align 4
  %43 = trunc i32 %20 to i16
  %44 = trunc i32 %25 to i16
  %45 = tail call i32 %42(ptr noundef %4, i16 noundef zeroext %43, i16 noundef zeroext %44, ptr noundef nonnull %30) #20
  br label %58

46:                                               ; preds = %50
  %47 = add i16 %52, 1
  %48 = zext i16 %47 to i32
  %49 = icmp sgt i32 %25, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %46, %39
  %51 = phi i32 [ 0, %39 ], [ %48, %46 ]
  %52 = phi i16 [ 0, %39 ], [ %47, %46 ]
  %53 = load ptr, ptr %36, align 4
  %54 = add i16 %52, %40
  %55 = getelementptr i16, ptr %30, i32 %51
  %56 = tail call i32 %53(ptr noundef %4, i16 noundef zeroext %54, i16 noundef zeroext 1, ptr noundef %55) #20
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %46, label %58

58:                                               ; preds = %50, %46, %41, %37
  %59 = phi i32 [ %45, %41 ], [ 0, %37 ], [ %56, %50 ], [ 0, %46 ]
  br label %60

60:                                               ; preds = %60, %58
  %61 = phi i16 [ 0, %58 ], [ %64, %60 ]
  %62 = zext i16 %61 to i32
  %63 = icmp sgt i32 %25, %62
  %64 = add i16 %61, 1
  br i1 %63, label %60, label %65

65:                                               ; preds = %60
  %66 = load i32, ptr %18, align 4
  %67 = and i32 %66, 1
  %68 = getelementptr i8, ptr %30, i32 %67
  %69 = load i32, ptr %5, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %2, ptr align 1 %68, i32 %69, i1 false)
  tail call void @kfree(ptr noundef nonnull %30) #20
  br label %70

70:                                               ; preds = %65, %28, %8, %3
  %71 = phi i32 [ %59, %65 ], [ -22, %3 ], [ -12, %28 ], [ -12, %8 ]
  ret i32 %71
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @igb_set_eeprom(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 1408
  %5 = getelementptr i8, ptr %0, i32 2512
  %6 = getelementptr inbounds %struct.ethtool_eeprom, ptr %1, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %98, label %9

9:                                                ; preds = %3
  %10 = getelementptr i8, ptr %0, i32 2592
  %11 = load i32, ptr %10, align 4
  %12 = icmp ugt i32 %11, 5
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = tail call zeroext i1 @igb_get_flash_presence_i210(ptr noundef %5) #20
  br i1 %14, label %15, label %98

15:                                               ; preds = %13, %9
  %16 = getelementptr inbounds %struct.ethtool_eeprom, ptr %1, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr i8, ptr %0, i32 3492
  %19 = load i16, ptr %18, align 4
  %20 = zext i16 %19 to i32
  %21 = getelementptr i8, ptr %0, i32 3486
  %22 = load i16, ptr %21, align 2
  %23 = zext i16 %22 to i32
  %24 = shl nuw i32 %23, 16
  %25 = or i32 %24, %20
  %26 = icmp eq i32 %17, %25
  br i1 %26, label %27, label %98

27:                                               ; preds = %15
  %28 = getelementptr inbounds %struct.ethtool_eeprom, ptr %1, i32 0, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = lshr i32 %29, 1
  %31 = load i32, ptr %6, align 4
  %32 = add i32 %29, -1
  %33 = add i32 %32, %31
  %34 = lshr i32 %33, 1
  %35 = getelementptr i8, ptr %0, i32 3360
  %36 = load i16, ptr %35, align 4
  %37 = zext i16 %36 to i32
  %38 = shl nuw nsw i32 %37, 1
  %39 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %38, i32 noundef 3264) #21
  %40 = icmp eq ptr %39, null
  br i1 %40, label %98, label %41

41:                                               ; preds = %27
  %42 = load i32, ptr %28, align 4
  %43 = and i32 %42, 1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %41
  %46 = getelementptr i8, ptr %0, i32 3320
  %47 = load ptr, ptr %46, align 4
  %48 = trunc i32 %30 to i16
  %49 = tail call i32 %47(ptr noundef %5, i16 noundef zeroext %48, i16 noundef zeroext 1, ptr noundef nonnull %39) #20
  %50 = getelementptr i8, ptr %39, i32 1
  %51 = icmp eq i32 %49, 0
  %52 = load i32, ptr %28, align 4
  br label %53

53:                                               ; preds = %45, %41
  %54 = phi i32 [ %52, %45 ], [ %42, %41 ]
  %55 = phi ptr [ %50, %45 ], [ %39, %41 ]
  %56 = phi i1 [ %51, %45 ], [ true, %41 ]
  %57 = load i32, ptr %6, align 4
  %58 = add i32 %57, %54
  %59 = and i32 %58, 1
  %60 = icmp ne i32 %59, 0
  %61 = select i1 %60, i1 %56, i1 false
  br i1 %61, label %64, label %62

62:                                               ; preds = %53
  %63 = sub nsw i32 %34, %30
  br label %71

64:                                               ; preds = %53
  %65 = getelementptr i8, ptr %0, i32 3320
  %66 = load ptr, ptr %65, align 4
  %67 = trunc i32 %34 to i16
  %68 = sub nsw i32 %34, %30
  %69 = getelementptr i16, ptr %39, i32 %68
  %70 = tail call i32 %66(ptr noundef %5, i16 noundef zeroext %67, i16 noundef zeroext 1, ptr noundef %69) #20
  br label %71

71:                                               ; preds = %64, %62
  %72 = phi i32 [ %63, %62 ], [ %68, %64 ]
  %73 = add i32 %72, 1
  br label %74

74:                                               ; preds = %74, %71
  %75 = phi i16 [ 0, %71 ], [ %78, %74 ]
  %76 = zext i16 %75 to i32
  %77 = icmp sgt i32 %73, %76
  %78 = add i16 %75, 1
  br i1 %77, label %74, label %79

79:                                               ; preds = %74
  %80 = load i32, ptr %6, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %55, ptr align 1 %2, i32 %80, i1 false)
  br label %81

81:                                               ; preds = %81, %79
  %82 = phi i16 [ 0, %79 ], [ %85, %81 ]
  %83 = zext i16 %82 to i32
  %84 = icmp sgt i32 %73, %83
  %85 = add i16 %82, 1
  br i1 %84, label %81, label %86

86:                                               ; preds = %81
  %87 = getelementptr i8, ptr %0, i32 3328
  %88 = load ptr, ptr %87, align 4
  %89 = trunc i32 %30 to i16
  %90 = trunc i32 %73 to i16
  %91 = tail call i32 %88(ptr noundef %5, i16 noundef zeroext %89, i16 noundef zeroext %90, ptr noundef nonnull %39) #20
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %86
  %94 = getelementptr i8, ptr %0, i32 3332
  %95 = load ptr, ptr %94, align 4
  %96 = tail call i32 %95(ptr noundef %5) #20
  br label %97

97:                                               ; preds = %93, %86
  tail call void @igb_set_fw_version(ptr noundef %4) #20
  tail call void @kfree(ptr noundef nonnull %39) #20
  br label %98

98:                                               ; preds = %97, %27, %15, %13, %3
  %99 = phi i32 [ %91, %97 ], [ -95, %3 ], [ -95, %13 ], [ -14, %15 ], [ -12, %27 ]
  ret i32 %99
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @igb_get_coalesce(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) #8 {
  %5 = getelementptr i8, ptr %0, i32 2020
  %6 = load i32, ptr %5, align 4
  %7 = icmp ult i32 %6, 4
  %8 = lshr i32 %6, 2
  %9 = select i1 %7, i32 %6, i32 %8
  %10 = getelementptr inbounds %struct.ethtool_coalesce, ptr %1, i32 0, i32 1
  store i32 %9, ptr %10, align 4
  %11 = getelementptr i8, ptr %0, i32 1932
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %4
  %16 = getelementptr i8, ptr %0, i32 2024
  %17 = load i32, ptr %16, align 8
  %18 = icmp ult i32 %17, 4
  %19 = lshr i32 %17, 2
  %20 = select i1 %18, i32 %17, i32 %19
  %21 = getelementptr inbounds %struct.ethtool_coalesce, ptr %1, i32 0, i32 5
  store i32 %20, ptr %21, align 4
  br label %22

22:                                               ; preds = %15, %4
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @igb_set_coalesce(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) #10 {
  %5 = getelementptr i8, ptr %0, i32 1408
  %6 = getelementptr inbounds %struct.ethtool_coalesce, ptr %1, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp ugt i32 %7, 10000
  br i1 %8, label %89, label %9

9:                                                ; preds = %4
  %10 = add i32 %7, -2
  %11 = icmp ult i32 %10, 8
  br i1 %11, label %79, label %12

12:                                               ; preds = %79, %9
  %13 = getelementptr inbounds %struct.ethtool_coalesce, ptr %1, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = icmp ugt i32 %14, 10000
  br i1 %15, label %89, label %16

16:                                               ; preds = %12
  %17 = add i32 %14, -2
  %18 = icmp ult i32 %17, 8
  br i1 %18, label %84, label %19

19:                                               ; preds = %84, %16
  %20 = getelementptr i8, ptr %0, i32 1932
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 8
  %23 = icmp eq i32 %22, 0
  %24 = icmp eq i32 %14, 0
  %25 = select i1 %23, i1 true, i1 %24
  br i1 %25, label %26, label %89

26:                                               ; preds = %19
  %27 = icmp ne i32 %7, 0
  %28 = and i32 %21, 16
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %27, i1 true, i1 %29
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = and i32 %21, -17
  store i32 %32, ptr %20, align 4
  %33 = load i32, ptr %6, align 4
  br label %34

34:                                               ; preds = %31, %26
  %35 = phi i32 [ %32, %31 ], [ %21, %26 ]
  %36 = phi i32 [ %33, %31 ], [ %7, %26 ]
  %37 = add i32 %36, -1
  %38 = icmp ult i32 %37, 3
  %39 = shl i32 %36, 2
  %40 = select i1 %38, i32 %36, i32 %39
  %41 = getelementptr i8, ptr %0, i32 2020
  store i32 %40, ptr %41, align 4
  %42 = and i32 %35, 8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %34
  %45 = load i32, ptr %13, align 4
  %46 = add i32 %45, -1
  %47 = icmp ult i32 %46, 3
  %48 = shl i32 %45, 2
  %49 = select i1 %47, i32 %45, i32 %48
  br label %50

50:                                               ; preds = %44, %34
  %51 = phi i32 [ %40, %34 ], [ %49, %44 ]
  %52 = getelementptr i8, ptr %0, i32 2024
  store i32 %51, ptr %52, align 8
  %53 = getelementptr i8, ptr %0, i32 1936
  %54 = load i32, ptr %53, align 16
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %89, label %56

56:                                               ; preds = %50
  %57 = getelementptr i8, ptr %0, i32 2032
  %58 = getelementptr i8, ptr %0, i32 2024
  br label %59

59:                                               ; preds = %59, %56
  %60 = phi i32 [ 0, %56 ], [ %76, %59 ]
  %61 = getelementptr %struct.igb_adapter, ptr %5, i32 0, i32 45, i32 %60
  %62 = load ptr, ptr %61, align 4
  %63 = load i16, ptr %57, align 16
  %64 = getelementptr inbounds %struct.igb_q_vector, ptr %62, i32 0, i32 7, i32 3
  store i16 %63, ptr %64, align 4
  %65 = getelementptr inbounds %struct.igb_q_vector, ptr %62, i32 0, i32 6
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  %68 = select i1 %67, ptr %58, ptr %41
  %69 = load i32, ptr %68, align 4
  %70 = trunc i32 %69 to i16
  %71 = getelementptr inbounds %struct.igb_q_vector, ptr %62, i32 0, i32 3
  %72 = add i16 %70, -1
  %73 = icmp ult i16 %72, 3
  %74 = select i1 %73, i16 648, i16 %70
  store i16 %74, ptr %71, align 4
  %75 = getelementptr inbounds %struct.igb_q_vector, ptr %62, i32 0, i32 4
  store i8 1, ptr %75, align 2
  %76 = add nuw i32 %60, 1
  %77 = load i32, ptr %53, align 16
  %78 = icmp ult i32 %76, %77
  br i1 %78, label %59, label %89

79:                                               ; preds = %9
  %80 = trunc i32 %10 to i8
  %81 = lshr i8 -3, %80
  %82 = and i8 %81, 1
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %12, label %89

84:                                               ; preds = %16
  %85 = trunc i32 %17 to i8
  %86 = lshr i8 -3, %85
  %87 = and i8 %86, 1
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %19, label %89

89:                                               ; preds = %84, %79, %59, %50, %19, %12, %4
  %90 = phi i32 [ -22, %4 ], [ -22, %12 ], [ -22, %19 ], [ 0, %50 ], [ -22, %79 ], [ -22, %84 ], [ 0, %59 ]
  ret i32 %90
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @igb_get_ringparam(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) #8 {
  %5 = getelementptr inbounds %struct.ethtool_ringparam, ptr %1, i32 0, i32 1
  store i32 4096, ptr %5, align 4
  %6 = getelementptr inbounds %struct.ethtool_ringparam, ptr %1, i32 0, i32 4
  store i32 4096, ptr %6, align 4
  %7 = getelementptr i8, ptr %0, i32 4718
  %8 = load i16, ptr %7, align 2
  %9 = zext i16 %8 to i32
  %10 = getelementptr inbounds %struct.ethtool_ringparam, ptr %1, i32 0, i32 5
  store i32 %9, ptr %10, align 4
  %11 = getelementptr i8, ptr %0, i32 4716
  %12 = load i16, ptr %11, align 4
  %13 = zext i16 %12 to i32
  %14 = getelementptr inbounds %struct.ethtool_ringparam, ptr %1, i32 0, i32 8
  store i32 %13, ptr %14, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @igb_set_ringparam(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) #0 {
  %5 = getelementptr i8, ptr %0, i32 1408
  %6 = getelementptr inbounds %struct.ethtool_ringparam, ptr %1, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %166

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.ethtool_ringparam, ptr %1, i32 0, i32 7
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %166

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.ethtool_ringparam, ptr %1, i32 0, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = tail call i32 @llvm.umin.i32(i32 %15, i32 4096)
  %17 = tail call i32 @llvm.umax.i32(i32 %16, i32 80)
  %18 = trunc i32 %17 to i16
  %19 = add nuw nsw i16 %18, 7
  %20 = and i16 %19, 16376
  %21 = getelementptr inbounds %struct.ethtool_ringparam, ptr %1, i32 0, i32 8
  %22 = load i32, ptr %21, align 4
  %23 = tail call i32 @llvm.umin.i32(i32 %22, i32 4096)
  %24 = tail call i32 @llvm.umax.i32(i32 %23, i32 80)
  %25 = trunc i32 %24 to i16
  %26 = add nuw nsw i16 %25, 7
  %27 = and i16 %26, 16376
  %28 = getelementptr i8, ptr %0, i32 4716
  %29 = load i16, ptr %28, align 4
  %30 = icmp eq i16 %27, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %13
  %32 = getelementptr i8, ptr %0, i32 4718
  %33 = load i16, ptr %32, align 2
  %34 = icmp eq i16 %20, %33
  br i1 %34, label %166, label %35

35:                                               ; preds = %31, %13
  %36 = getelementptr i8, ptr %0, i32 1928
  %37 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %36) #20
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %39, %35
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #20
  %40 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %36) #20
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %39

42:                                               ; preds = %39, %35
  %43 = getelementptr i8, ptr %0, i32 1920
  %44 = load ptr, ptr %43, align 64
  %45 = getelementptr inbounds %struct.net_device, ptr %44, i32 0, i32 6
  %46 = load volatile i32, ptr %45, align 4
  %47 = and i32 %46, 1
  %48 = icmp eq i32 %47, 0
  %49 = getelementptr i8, ptr %0, i32 2040
  %50 = load i32, ptr %49, align 8
  br i1 %48, label %51, label %75

51:                                               ; preds = %42
  %52 = icmp sgt i32 %50, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %57, %51
  %54 = getelementptr i8, ptr %0, i32 2108
  %55 = load i32, ptr %54, align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %65, label %73

57:                                               ; preds = %57, %51
  %58 = phi i32 [ %62, %57 ], [ 0, %51 ]
  %59 = getelementptr %struct.igb_adapter, ptr %5, i32 0, i32 14, i32 %58
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.igb_ring, ptr %60, i32 0, i32 10
  store i16 %27, ptr %61, align 8
  %62 = add nuw nsw i32 %58, 1
  %63 = load i32, ptr %49, align 8
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %57, label %53

65:                                               ; preds = %65, %53
  %66 = phi i32 [ %70, %65 ], [ 0, %53 ]
  %67 = getelementptr %struct.igb_adapter, ptr %5, i32 0, i32 16, i32 %66
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.igb_ring, ptr %68, i32 0, i32 10
  store i16 %20, ptr %69, align 8
  %70 = add nuw nsw i32 %66, 1
  %71 = load i32, ptr %54, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %65, label %73

73:                                               ; preds = %65, %53
  store i16 %27, ptr %28, align 4
  %74 = getelementptr i8, ptr %0, i32 4718
  store i16 %20, ptr %74, align 2
  br label %164

75:                                               ; preds = %42
  %76 = getelementptr i8, ptr %0, i32 2108
  %77 = load i32, ptr %76, align 4
  %78 = call i32 @llvm.smax.i32(i32 %50, i32 %77)
  %79 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %78, i32 192) #20
  %80 = extractvalue { i32, i1 } %79, 1
  %81 = extractvalue { i32, i1 } %79, 0
  %82 = select i1 %80, i32 -1, i32 %81
  %83 = tail call noalias ptr @vmalloc(i32 noundef %82) #21
  %84 = icmp eq ptr %83, null
  br i1 %84, label %164, label %85

85:                                               ; preds = %75
  tail call void @igb_down(ptr noundef %5) #20
  %86 = load i16, ptr %28, align 4
  %87 = icmp eq i16 %27, %86
  br i1 %87, label %122, label %88

88:                                               ; preds = %85
  %89 = load i32, ptr %49, align 8
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %93, label %121

91:                                               ; preds = %108
  %92 = icmp sgt i32 %110, 0
  br i1 %92, label %112, label %121

93:                                               ; preds = %108, %88
  %94 = phi i32 [ %109, %108 ], [ 0, %88 ]
  %95 = getelementptr %struct.igb_ring, ptr %83, i32 %94
  %96 = getelementptr %struct.igb_adapter, ptr %5, i32 0, i32 14, i32 %94
  %97 = load ptr, ptr %96, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 64 dereferenceable(192) %95, ptr noundef align 64 dereferenceable(192) %97, i32 192, i1 false)
  %98 = getelementptr %struct.igb_ring, ptr %83, i32 %94, i32 10
  store i16 %27, ptr %98, align 8
  %99 = tail call i32 @igb_setup_tx_resources(ptr noundef %95) #20
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %108, label %101

101:                                              ; preds = %93
  %102 = icmp eq i32 %94, 0
  br i1 %102, label %161, label %103

103:                                              ; preds = %103, %101
  %104 = phi i32 [ %105, %103 ], [ %94, %101 ]
  %105 = add nsw i32 %104, -1
  %106 = getelementptr %struct.igb_ring, ptr %83, i32 %105
  tail call void @igb_free_tx_resources(ptr noundef %106) #20
  %107 = icmp eq i32 %105, 0
  br i1 %107, label %161, label %103

108:                                              ; preds = %93
  %109 = add nuw nsw i32 %94, 1
  %110 = load i32, ptr %49, align 8
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %93, label %91

112:                                              ; preds = %112, %91
  %113 = phi i32 [ %118, %112 ], [ 0, %91 ]
  %114 = getelementptr %struct.igb_adapter, ptr %5, i32 0, i32 14, i32 %113
  %115 = load ptr, ptr %114, align 4
  tail call void @igb_free_tx_resources(ptr noundef %115) #20
  %116 = load ptr, ptr %114, align 4
  %117 = getelementptr %struct.igb_ring, ptr %83, i32 %113
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 64 dereferenceable(192) %116, ptr noundef align 64 dereferenceable(192) %117, i32 192, i1 false)
  %118 = add nuw nsw i32 %113, 1
  %119 = load i32, ptr %49, align 8
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %112, label %121

121:                                              ; preds = %112, %91, %88
  store i16 %27, ptr %28, align 4
  br label %122

122:                                              ; preds = %121, %85
  %123 = getelementptr i8, ptr %0, i32 4718
  %124 = load i16, ptr %123, align 2
  %125 = icmp eq i16 %20, %124
  br i1 %125, label %161, label %126

126:                                              ; preds = %122
  %127 = load i32, ptr %76, align 4
  %128 = icmp sgt i32 %127, 0
  br i1 %128, label %131, label %160

129:                                              ; preds = %147
  %130 = icmp sgt i32 %149, 0
  br i1 %130, label %151, label %160

131:                                              ; preds = %147, %126
  %132 = phi i32 [ %148, %147 ], [ 0, %126 ]
  %133 = getelementptr %struct.igb_ring, ptr %83, i32 %132
  %134 = getelementptr %struct.igb_adapter, ptr %5, i32 0, i32 16, i32 %132
  %135 = load ptr, ptr %134, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 64 dereferenceable(192) %133, ptr noundef align 64 dereferenceable(192) %135, i32 192, i1 false)
  %136 = getelementptr %struct.igb_ring, ptr %83, i32 %132, i32 23
  tail call void @llvm.memset.p0.i32(ptr noundef align 64 dereferenceable(64) %136, i8 0, i32 64, i1 false)
  %137 = getelementptr %struct.igb_ring, ptr %83, i32 %132, i32 10
  store i16 %20, ptr %137, align 8
  %138 = tail call i32 @igb_setup_rx_resources(ptr noundef %133) #20
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %147, label %140

140:                                              ; preds = %131
  %141 = icmp eq i32 %132, 0
  br i1 %141, label %161, label %142

142:                                              ; preds = %142, %140
  %143 = phi i32 [ %144, %142 ], [ %132, %140 ]
  %144 = add nsw i32 %143, -1
  %145 = getelementptr %struct.igb_ring, ptr %83, i32 %144
  tail call void @igb_free_rx_resources(ptr noundef %145) #20
  %146 = icmp eq i32 %144, 0
  br i1 %146, label %161, label %142

147:                                              ; preds = %131
  %148 = add nuw nsw i32 %132, 1
  %149 = load i32, ptr %76, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %131, label %129

151:                                              ; preds = %151, %129
  %152 = phi i32 [ %157, %151 ], [ 0, %129 ]
  %153 = getelementptr %struct.igb_adapter, ptr %5, i32 0, i32 16, i32 %152
  %154 = load ptr, ptr %153, align 4
  tail call void @igb_free_rx_resources(ptr noundef %154) #20
  %155 = load ptr, ptr %153, align 4
  %156 = getelementptr %struct.igb_ring, ptr %83, i32 %152
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 64 dereferenceable(192) %155, ptr noundef align 64 dereferenceable(192) %156, i32 192, i1 false)
  %157 = add nuw nsw i32 %152, 1
  %158 = load i32, ptr %76, align 4
  %159 = icmp slt i32 %157, %158
  br i1 %159, label %151, label %160

160:                                              ; preds = %151, %129, %126
  store i16 %20, ptr %123, align 2
  br label %161

161:                                              ; preds = %160, %142, %140, %122, %103, %101
  %162 = phi i32 [ 0, %160 ], [ 0, %122 ], [ %138, %140 ], [ %99, %101 ], [ %138, %142 ], [ %99, %103 ]
  %163 = tail call i32 @igb_up(ptr noundef %5) #20
  tail call void @vfree(ptr noundef nonnull %83) #20
  br label %164

164:                                              ; preds = %161, %75, %73
  %165 = phi i32 [ %162, %161 ], [ 0, %73 ], [ -12, %75 ]
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %36) #20
  br label %166

166:                                              ; preds = %164, %31, %9, %4
  %167 = phi i32 [ %165, %164 ], [ -22, %9 ], [ -22, %4 ], [ 0, %31 ]
  ret i32 %167
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @igb_get_pauseparam(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #8 {
  %3 = getelementptr i8, ptr %0, i32 2280
  %4 = load i8, ptr %3, align 8, !range !8
  %5 = zext i8 %4 to i32
  %6 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %1, i32 0, i32 1
  store i32 %5, ptr %6, align 4
  %7 = getelementptr i8, ptr %0, i32 3172
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
define internal i32 @igb_set_pauseparam(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 1408
  %4 = getelementptr i8, ptr %0, i32 2512
  %5 = getelementptr i8, ptr %0, i32 3480
  %6 = load i8, ptr %5, align 4
  %7 = and i8 %6, 32
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %68

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %1, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp ne i32 %11, 0
  %13 = getelementptr i8, ptr %0, i32 2280
  %14 = zext i1 %12 to i8
  store i8 %14, ptr %13, align 8
  %15 = getelementptr i8, ptr %0, i32 1928
  %16 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %15) #20
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %18, %9
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #20
  %19 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %15) #20
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %18

21:                                               ; preds = %18, %9
  %22 = load i8, ptr %13, align 8, !range !8
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %35, label %24

24:                                               ; preds = %21
  %25 = getelementptr i8, ptr %0, i32 3176
  store i32 255, ptr %25, align 4
  %26 = getelementptr i8, ptr %0, i32 1920
  %27 = load ptr, ptr %26, align 64
  %28 = getelementptr inbounds %struct.net_device, ptr %27, i32 0, i32 6
  %29 = load volatile i32, ptr %28, align 4
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %24
  tail call void @igb_down(ptr noundef %3) #20
  %33 = tail call i32 @igb_up(ptr noundef %3) #20
  br label %66

34:                                               ; preds = %24
  tail call void @igb_reset(ptr noundef %3) #20
  br label %66

35:                                               ; preds = %21
  %36 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %1, i32 0, i32 2
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  %39 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %1, i32 0, i32 3
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 0
  %42 = getelementptr i8, ptr %0, i32 3176
  %43 = select i1 %41, i32 1, i32 3
  %44 = select i1 %41, i32 0, i32 2
  %45 = select i1 %38, i32 %44, i32 %43
  store i32 %45, ptr %42, align 4
  %46 = getelementptr i8, ptr %0, i32 3172
  store i32 %45, ptr %46, align 4
  %47 = getelementptr i8, ptr %0, i32 3284
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %52

50:                                               ; preds = %35
  %51 = tail call i32 @igb_force_mac_fc(ptr noundef %4) #20
  br label %54

52:                                               ; preds = %35
  %53 = tail call i32 @igb_setup_link(ptr noundef %4) #20
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i32 [ %51, %50 ], [ %53, %52 ]
  %56 = getelementptr i8, ptr %0, i32 2108
  %57 = load i32, ptr %56, align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %59, %54
  %60 = phi i32 [ %63, %59 ], [ 0, %54 ]
  %61 = getelementptr %struct.igb_adapter, ptr %3, i32 0, i32 16, i32 %60
  %62 = load ptr, ptr %61, align 4
  tail call void @igb_setup_srrctl(ptr noundef %3, ptr noundef %62) #20
  %63 = add nuw nsw i32 %60, 1
  %64 = load i32, ptr %56, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %59, label %66

66:                                               ; preds = %59, %54, %34, %32
  %67 = phi i32 [ 0, %32 ], [ 0, %34 ], [ %55, %54 ], [ %55, %59 ]
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %15) #20
  br label %68

68:                                               ; preds = %66, %2
  %69 = phi i32 [ %67, %66 ], [ -22, %2 ]
  ret i32 %69
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @igb_diag_test(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca i16, align 2
  %5 = getelementptr i8, ptr %0, i32 1408
  %6 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  %10 = getelementptr i8, ptr %0, i32 1928
  tail call void @_set_bit(i32 noundef 0, ptr noundef %10) #20
  %11 = getelementptr i8, ptr %0, i32 3484
  %12 = load i8, ptr %11, align 4, !range !8
  %13 = icmp eq i8 %12, 0
  %14 = getelementptr inbounds %struct.ethtool_test, ptr %1, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  br i1 %13, label %19, label %16

16:                                               ; preds = %3
  %17 = and i32 %15, -2
  store i32 %17, ptr %14, align 4
  %18 = getelementptr inbounds %struct.ethtool_test, ptr %1, i32 0, i32 1
  br label %784

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.ethtool_test, ptr %1, i32 0, i32 1
  %21 = icmp eq i32 %15, 1
  br i1 %21, label %22, label %784

22:                                               ; preds = %19
  %23 = getelementptr i8, ptr %0, i32 3288
  %24 = load i16, ptr %23, align 4
  %25 = getelementptr i8, ptr %0, i32 3134
  %26 = load i8, ptr %25, align 2
  %27 = getelementptr i8, ptr %0, i32 3138
  %28 = load i8, ptr %27, align 2, !range !8
  %29 = getelementptr i8, ptr %0, i32 2308
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %31, ptr noundef nonnull @.str.3) #19
  tail call void @igb_power_up_link(ptr noundef %5) #20
  %32 = getelementptr i64, ptr %2, i32 4
  %33 = getelementptr i8, ptr %0, i32 2512
  store i64 0, ptr %32, align 8
  %34 = getelementptr i8, ptr %0, i32 3284
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 3
  %37 = getelementptr i8, ptr %0, i32 2528
  br i1 %36, label %38, label %49

38:                                               ; preds = %22
  %39 = getelementptr i8, ptr %0, i32 3145
  store i8 0, ptr %39, align 1
  br label %40

40:                                               ; preds = %46, %38
  %41 = phi i32 [ 0, %38 ], [ %47, %46 ]
  %42 = load ptr, ptr %37, align 4
  %43 = tail call i32 %42(ptr noundef %33) #20
  %44 = load i8, ptr %39, align 1, !range !8
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %40
  tail call void @msleep(i32 noundef 20) #20
  %47 = add nuw nsw i32 %41, 1
  %48 = icmp eq i32 %47, 3751
  br i1 %48, label %63, label %40

49:                                               ; preds = %22
  %50 = load ptr, ptr %37, align 4
  %51 = tail call i32 %50(ptr noundef %33) #20
  %52 = load i8, ptr %27, align 2, !range !8
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %49
  tail call void @msleep(i32 noundef 5000) #20
  br label %55

55:                                               ; preds = %54, %49
  %56 = tail call i32 @igb_rd32(ptr noundef %33, i32 noundef 8) #20
  %57 = and i32 %56, 2
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %55, %40
  %60 = load i64, ptr %32, align 8
  %61 = trunc i64 %60 to i32
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %67, label %64

63:                                               ; preds = %55, %46
  store i64 1, ptr %32, align 8
  br label %64

64:                                               ; preds = %63, %59
  %65 = load i32, ptr %20, align 4
  %66 = or i32 %65, 2
  store i32 %66, ptr %20, align 4
  br label %67

67:                                               ; preds = %64, %59
  br i1 %9, label %70, label %68

68:                                               ; preds = %67
  %69 = tail call i32 @igb_close(ptr noundef %0) #20
  br label %71

70:                                               ; preds = %67
  tail call void @igb_reset(ptr noundef %5) #20
  br label %71

71:                                               ; preds = %70, %68
  %72 = getelementptr i8, ptr %0, i32 2592
  %73 = load i32, ptr %72, align 16
  %74 = add i32 %73, -2
  %75 = icmp ult i32 %74, 6
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = getelementptr inbounds [6 x ptr], ptr @switch.table.igb_diag_test, i32 0, i32 %74
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds [6 x i32], ptr @switch.table.igb_diag_test.32, i32 0, i32 %74
  %80 = load i32, ptr %79, align 4
  br label %81

81:                                               ; preds = %76, %71
  %82 = phi ptr [ %78, %76 ], [ @reg_test_82575, %71 ]
  %83 = phi i32 [ %80, %76 ], [ 2147480575, %71 ]
  %84 = tail call i32 @igb_rd32(ptr noundef %33, i32 noundef 8) #20
  %85 = tail call i32 @igb_rd32(ptr noundef %33, i32 noundef 8) #20
  %86 = and i32 %85, %83
  %87 = getelementptr i8, ptr %0, i32 2516
  %88 = load volatile ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %92, label %90, !prof !9

90:                                               ; preds = %81
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !16
  tail call void @arm_heavy_mb() #20
  %91 = getelementptr i8, ptr %88, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %91, i32 %83) #20, !srcloc !11
  br label %92

92:                                               ; preds = %90, %81
  %93 = tail call i32 @igb_rd32(ptr noundef %33, i32 noundef 8) #20
  %94 = and i32 %93, %83
  %95 = icmp eq i32 %86, %94
  br i1 %95, label %99, label %96

96:                                               ; preds = %92
  %97 = load ptr, ptr %29, align 4
  %98 = getelementptr inbounds %struct.pci_dev, ptr %97, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %98, ptr noundef nonnull @.str.5, i32 noundef %94, i32 noundef %86) #19
  br label %200

99:                                               ; preds = %92
  %100 = load volatile ptr, ptr %87, align 4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %104, label %102, !prof !9

102:                                              ; preds = %99
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !17
  tail call void @arm_heavy_mb() #20
  %103 = getelementptr i8, ptr %100, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %103, i32 %84) #20, !srcloc !11
  br label %104

104:                                              ; preds = %102, %99
  %105 = load i16, ptr %82, align 4
  %106 = icmp eq i16 %105, 0
  br i1 %106, label %199, label %107

107:                                              ; preds = %195, %104
  %108 = phi ptr [ %196, %195 ], [ %82, %104 ]
  %109 = getelementptr inbounds %struct.igb_reg_test, ptr %108, i32 0, i32 2
  %110 = load i16, ptr %109, align 4
  %111 = icmp eq i16 %110, 0
  br i1 %111, label %195, label %112

112:                                              ; preds = %107
  %113 = getelementptr inbounds %struct.igb_reg_test, ptr %108, i32 0, i32 3
  %114 = getelementptr inbounds %struct.igb_reg_test, ptr %108, i32 0, i32 4
  %115 = getelementptr inbounds %struct.igb_reg_test, ptr %108, i32 0, i32 5
  %116 = getelementptr inbounds %struct.igb_reg_test, ptr %108, i32 0, i32 1
  br label %117

117:                                              ; preds = %190, %112
  %118 = phi i32 [ 0, %112 ], [ %191, %190 ]
  %119 = load i16, ptr %113, align 2
  switch i16 %119, label %190 [
    i16 1, label %120
    i16 2, label %130
    i16 3, label %155
    i16 4, label %165
    i16 5, label %173
    i16 6, label %181
  ]

120:                                              ; preds = %117
  %121 = load i16, ptr %108, align 4
  %122 = zext i16 %121 to i32
  %123 = load i16, ptr %116, align 2
  %124 = zext i16 %123 to i32
  %125 = mul i32 %118, %124
  %126 = add i32 %125, %122
  %127 = load i32, ptr %114, align 4
  %128 = load i32, ptr %115, align 4
  %129 = tail call fastcc zeroext i1 @reg_pattern_test(ptr noundef %5, ptr noundef %2, i32 noundef %126, i32 noundef %127, i32 noundef %128) #20
  br i1 %129, label %202, label %190

130:                                              ; preds = %117
  %131 = load i16, ptr %108, align 4
  %132 = zext i16 %131 to i32
  %133 = load i16, ptr %116, align 2
  %134 = zext i16 %133 to i32
  %135 = mul i32 %118, %134
  %136 = add i32 %135, %132
  %137 = load i32, ptr %114, align 4
  %138 = load i32, ptr %115, align 4
  %139 = load volatile ptr, ptr %87, align 4
  %140 = icmp eq ptr %139, null
  br i1 %140, label %141, label %143, !prof !9

141:                                              ; preds = %130
  %142 = and i32 %138, %137
  br label %146

143:                                              ; preds = %130
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !18
  tail call void @arm_heavy_mb() #20
  %144 = and i32 %138, %137
  %145 = getelementptr i8, ptr %139, i32 %136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %145, i32 %144) #20, !srcloc !11
  br label %146

146:                                              ; preds = %143, %141
  %147 = phi i32 [ %142, %141 ], [ %144, %143 ]
  %148 = tail call i32 @igb_rd32(ptr noundef %33, i32 noundef %136) #20
  %149 = and i32 %148, %137
  %150 = icmp eq i32 %147, %149
  br i1 %150, label %190, label %151

151:                                              ; preds = %146
  %152 = load ptr, ptr %29, align 4
  %153 = getelementptr inbounds %struct.pci_dev, ptr %152, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %153, ptr noundef nonnull @.str.7, i32 noundef %136, i32 noundef %149, i32 noundef %147) #19
  %154 = sext i32 %136 to i64
  br label %200

155:                                              ; preds = %117
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !19
  tail call void @arm_heavy_mb() #20
  %156 = load i32, ptr %115, align 4
  %157 = load ptr, ptr %87, align 4
  %158 = load i16, ptr %108, align 4
  %159 = zext i16 %158 to i32
  %160 = getelementptr i8, ptr %157, i32 %159
  %161 = load i16, ptr %116, align 2
  %162 = zext i16 %161 to i32
  %163 = mul i32 %118, %162
  %164 = getelementptr i8, ptr %160, i32 %163
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %164, i32 %156) #20, !srcloc !11
  br label %190

165:                                              ; preds = %117
  %166 = load i16, ptr %108, align 4
  %167 = zext i16 %166 to i32
  %168 = shl i32 %118, 2
  %169 = add i32 %168, %167
  %170 = load i32, ptr %114, align 4
  %171 = load i32, ptr %115, align 4
  %172 = tail call fastcc zeroext i1 @reg_pattern_test(ptr noundef %5, ptr noundef %2, i32 noundef %169, i32 noundef %170, i32 noundef %171) #20
  br i1 %172, label %202, label %190

173:                                              ; preds = %117
  %174 = load i16, ptr %108, align 4
  %175 = zext i16 %174 to i32
  %176 = shl i32 %118, 3
  %177 = add i32 %176, %175
  %178 = load i32, ptr %114, align 4
  %179 = load i32, ptr %115, align 4
  %180 = tail call fastcc zeroext i1 @reg_pattern_test(ptr noundef %5, ptr noundef %2, i32 noundef %177, i32 noundef %178, i32 noundef %179) #20
  br i1 %180, label %202, label %190

181:                                              ; preds = %117
  %182 = load i16, ptr %108, align 4
  %183 = zext i16 %182 to i32
  %184 = shl i32 %118, 3
  %185 = or i32 %184, 4
  %186 = add i32 %185, %183
  %187 = load i32, ptr %114, align 4
  %188 = load i32, ptr %115, align 4
  %189 = tail call fastcc zeroext i1 @reg_pattern_test(ptr noundef %5, ptr noundef %2, i32 noundef %186, i32 noundef %187, i32 noundef %188) #20
  br i1 %189, label %202, label %190

190:                                              ; preds = %181, %173, %165, %155, %146, %120, %117
  %191 = add nuw nsw i32 %118, 1
  %192 = load i16, ptr %109, align 4
  %193 = zext i16 %192 to i32
  %194 = icmp ult i32 %191, %193
  br i1 %194, label %117, label %195

195:                                              ; preds = %190, %107
  %196 = getelementptr %struct.igb_reg_test, ptr %108, i32 1
  %197 = load i16, ptr %196, align 4
  %198 = icmp eq i16 %197, 0
  br i1 %198, label %199, label %107

199:                                              ; preds = %195, %104
  store i64 0, ptr %2, align 8
  br label %205

200:                                              ; preds = %151, %96
  %201 = phi i64 [ %154, %151 ], [ 1, %96 ]
  store i64 %201, ptr %2, align 8
  br label %202

202:                                              ; preds = %200, %181, %173, %165, %120
  %203 = load i32, ptr %20, align 4
  %204 = or i32 %203, 2
  store i32 %204, ptr %20, align 4
  br label %205

205:                                              ; preds = %202, %199
  tail call void @igb_reset(ptr noundef %5) #20
  %206 = getelementptr i64, ptr %2, i32 1
  store i64 0, ptr %206, align 8
  %207 = load i32, ptr %72, align 4
  %208 = and i32 %207, -2
  %209 = icmp eq i32 %208, 6
  br i1 %209, label %210, label %217

210:                                              ; preds = %205
  %211 = tail call zeroext i1 @igb_get_flash_presence_i210(ptr noundef %33) #20
  br i1 %211, label %212, label %223

212:                                              ; preds = %210
  %213 = getelementptr i8, ptr %0, i32 3336
  %214 = load ptr, ptr %213, align 4
  %215 = tail call i32 %214(ptr noundef %33) #20
  %216 = icmp slt i32 %215, 0
  br i1 %216, label %222, label %223

217:                                              ; preds = %205
  %218 = getelementptr i8, ptr %0, i32 3336
  %219 = load ptr, ptr %218, align 4
  %220 = tail call i32 %219(ptr noundef %33) #20
  %221 = icmp slt i32 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %217, %212
  store i64 2, ptr %206, align 8
  br label %223

223:                                              ; preds = %222, %217, %212, %210
  %224 = load i64, ptr %206, align 8
  %225 = trunc i64 %224 to i32
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %230, label %227

227:                                              ; preds = %223
  %228 = load i32, ptr %20, align 4
  %229 = or i32 %228, 2
  store i32 %229, ptr %20, align 4
  br label %230

230:                                              ; preds = %227, %223
  tail call void @igb_reset(ptr noundef %5) #20
  %231 = getelementptr i64, ptr %2, i32 2
  %232 = getelementptr i8, ptr %0, i32 1920
  %233 = load ptr, ptr %232, align 64
  %234 = load ptr, ptr %29, align 4
  %235 = getelementptr inbounds %struct.pci_dev, ptr %234, i32 0, i32 46
  %236 = load i32, ptr %235, align 4
  store i64 0, ptr %231, align 8
  %237 = getelementptr i8, ptr %0, i32 1932
  %238 = load i32, ptr %237, align 4
  %239 = and i32 %238, 8192
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %246, label %241

241:                                              ; preds = %230
  %242 = getelementptr i8, ptr %0, i32 1940
  %243 = load i32, ptr %242, align 4
  %244 = tail call i32 @request_threaded_irq(i32 noundef %243, ptr noundef nonnull @igb_test_intr, ptr noundef null, i32 noundef 0, ptr noundef %233, ptr noundef %5) #20
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %258, label %371

246:                                              ; preds = %230
  %247 = and i32 %238, 1
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %252, label %249

249:                                              ; preds = %246
  %250 = tail call i32 @request_threaded_irq(i32 noundef %236, ptr noundef nonnull @igb_test_intr, ptr noundef null, i32 noundef 0, ptr noundef %233, ptr noundef %5) #20
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %258, label %371

252:                                              ; preds = %246
  %253 = tail call i32 @request_threaded_irq(i32 noundef %236, ptr noundef nonnull @igb_test_intr, ptr noundef null, i32 noundef 256, ptr noundef %233, ptr noundef %5) #20
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %258, label %255

255:                                              ; preds = %252
  %256 = tail call i32 @request_threaded_irq(i32 noundef %236, ptr noundef nonnull @igb_test_intr, ptr noundef null, i32 noundef 128, ptr noundef %233, ptr noundef %5) #20
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %258, label %371

258:                                              ; preds = %255, %252, %249, %241
  %259 = phi i1 [ false, %241 ], [ false, %255 ], [ true, %249 ], [ true, %252 ]
  %260 = phi ptr [ @.str.9, %241 ], [ @.str.9, %255 ], [ @.str.10, %249 ], [ @.str.10, %252 ]
  %261 = load ptr, ptr %29, align 4
  %262 = getelementptr inbounds %struct.pci_dev, ptr %261, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %262, ptr noundef nonnull @.str.8, ptr noundef nonnull %260) #19
  %263 = load volatile ptr, ptr %87, align 4
  %264 = icmp eq ptr %263, null
  br i1 %264, label %267, label %265, !prof !9

265:                                              ; preds = %258
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !20
  tail call void @arm_heavy_mb() #20
  %266 = getelementptr i8, ptr %263, i32 216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %266, i32 -1) #20, !srcloc !11
  br label %267

267:                                              ; preds = %265, %258
  %268 = tail call i32 @igb_rd32(ptr noundef %33, i32 noundef 8) #20
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #20
  %269 = load i32, ptr %72, align 4
  %270 = add i32 %269, -1
  %271 = icmp ult i32 %270, 7
  br i1 %271, label %272, label %275

272:                                              ; preds = %267
  %273 = getelementptr inbounds [7 x i32], ptr @switch.table.igb_diag_test.33, i32 0, i32 %270
  %274 = load i32, ptr %273, align 4
  br label %275

275:                                              ; preds = %272, %267
  %276 = phi i32 [ %274, %272 ], [ 2147483647, %267 ]
  %277 = getelementptr i8, ptr %0, i32 4272
  br label %278

278:                                              ; preds = %347, %275
  %279 = phi i32 [ 0, %275 ], [ %348, %347 ]
  %280 = shl nuw nsw i32 1, %279
  %281 = and i32 %280, %276
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %347, label %283

283:                                              ; preds = %278
  br i1 %259, label %284, label %304

284:                                              ; preds = %283
  store i32 0, ptr %277, align 16
  %285 = load volatile ptr, ptr %87, align 4
  %286 = icmp eq ptr %285, null
  br i1 %286, label %289, label %287, !prof !9

287:                                              ; preds = %284
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !21
  tail call void @arm_heavy_mb() #20
  %288 = getelementptr i8, ptr %285, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %288, i32 -1) #20, !srcloc !11
  br label %289

289:                                              ; preds = %287, %284
  %290 = load volatile ptr, ptr %87, align 4
  %291 = icmp eq ptr %290, null
  br i1 %291, label %294, label %292, !prof !9

292:                                              ; preds = %289
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !22
  tail call void @arm_heavy_mb() #20
  %293 = getelementptr i8, ptr %290, i32 216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %293, i32 %280) #20, !srcloc !11
  br label %294

294:                                              ; preds = %292, %289
  %295 = load volatile ptr, ptr %87, align 4
  %296 = icmp eq ptr %295, null
  br i1 %296, label %299, label %297, !prof !9

297:                                              ; preds = %294
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !23
  tail call void @arm_heavy_mb() #20
  %298 = getelementptr i8, ptr %295, i32 200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %298, i32 %280) #20, !srcloc !11
  br label %299

299:                                              ; preds = %297, %294
  %300 = tail call i32 @igb_rd32(ptr noundef %33, i32 noundef 8) #20
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #20
  %301 = load i32, ptr %277, align 16
  %302 = and i32 %301, %280
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %304, label %350

304:                                              ; preds = %299, %283
  store i32 0, ptr %277, align 16
  %305 = load volatile ptr, ptr %87, align 4
  %306 = icmp eq ptr %305, null
  br i1 %306, label %309, label %307, !prof !9

307:                                              ; preds = %304
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !24
  tail call void @arm_heavy_mb() #20
  %308 = getelementptr i8, ptr %305, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %308, i32 -1) #20, !srcloc !11
  br label %309

309:                                              ; preds = %307, %304
  %310 = load volatile ptr, ptr %87, align 4
  %311 = icmp eq ptr %310, null
  br i1 %311, label %314, label %312, !prof !9

312:                                              ; preds = %309
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !25
  tail call void @arm_heavy_mb() #20
  %313 = getelementptr i8, ptr %310, i32 208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %313, i32 %280) #20, !srcloc !11
  br label %314

314:                                              ; preds = %312, %309
  %315 = load volatile ptr, ptr %87, align 4
  %316 = icmp eq ptr %315, null
  br i1 %316, label %319, label %317, !prof !9

317:                                              ; preds = %314
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !26
  tail call void @arm_heavy_mb() #20
  %318 = getelementptr i8, ptr %315, i32 200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %318, i32 %280) #20, !srcloc !11
  br label %319

319:                                              ; preds = %317, %314
  %320 = tail call i32 @igb_rd32(ptr noundef %33, i32 noundef 8) #20
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #20
  %321 = load i32, ptr %277, align 16
  %322 = and i32 %321, %280
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %350, label %324

324:                                              ; preds = %319
  br i1 %259, label %325, label %347

325:                                              ; preds = %324
  store i32 0, ptr %277, align 16
  %326 = load volatile ptr, ptr %87, align 4
  %327 = icmp eq ptr %326, null
  br i1 %327, label %330, label %328, !prof !9

328:                                              ; preds = %325
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !27
  tail call void @arm_heavy_mb() #20
  %329 = getelementptr i8, ptr %326, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %329, i32 -1) #20, !srcloc !11
  br label %330

330:                                              ; preds = %328, %325
  %331 = load volatile ptr, ptr %87, align 4
  %332 = icmp eq ptr %331, null
  br i1 %332, label %336, label %333, !prof !9

333:                                              ; preds = %330
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !28
  tail call void @arm_heavy_mb() #20
  %334 = xor i32 %280, -1
  %335 = getelementptr i8, ptr %331, i32 216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %335, i32 %334) #20, !srcloc !11
  br label %336

336:                                              ; preds = %333, %330
  %337 = load volatile ptr, ptr %87, align 4
  %338 = icmp eq ptr %337, null
  br i1 %338, label %342, label %339, !prof !9

339:                                              ; preds = %336
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !29
  tail call void @arm_heavy_mb() #20
  %340 = xor i32 %280, -1
  %341 = getelementptr i8, ptr %337, i32 200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %341, i32 %340) #20, !srcloc !11
  br label %342

342:                                              ; preds = %339, %336
  %343 = tail call i32 @igb_rd32(ptr noundef %33, i32 noundef 8) #20
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #20
  %344 = load i32, ptr %277, align 16
  %345 = and i32 %344, %280
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %347, label %350

347:                                              ; preds = %342, %324, %278
  %348 = add nuw nsw i32 %279, 1
  %349 = icmp eq i32 %348, 31
  br i1 %349, label %352, label %278

350:                                              ; preds = %342, %319, %299
  %351 = phi i64 [ 3, %299 ], [ 4, %319 ], [ 5, %342 ]
  store i64 %351, ptr %231, align 8
  br label %352

352:                                              ; preds = %350, %347
  %353 = load volatile ptr, ptr %87, align 4
  %354 = icmp eq ptr %353, null
  br i1 %354, label %357, label %355, !prof !9

355:                                              ; preds = %352
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !30
  tail call void @arm_heavy_mb() #20
  %356 = getelementptr i8, ptr %353, i32 216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %356, i32 -1) #20, !srcloc !11
  br label %357

357:                                              ; preds = %355, %352
  %358 = tail call i32 @igb_rd32(ptr noundef %33, i32 noundef 8) #20
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #20
  %359 = load i32, ptr %237, align 4
  %360 = and i32 %359, 8192
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %365, label %362

362:                                              ; preds = %357
  %363 = getelementptr i8, ptr %0, i32 1940
  %364 = load i32, ptr %363, align 4
  br label %365

365:                                              ; preds = %362, %357
  %366 = phi i32 [ %364, %362 ], [ %236, %357 ]
  %367 = tail call ptr @free_irq(i32 noundef %366, ptr noundef %5) #20
  %368 = load i64, ptr %231, align 8
  %369 = trunc i64 %368 to i32
  %370 = icmp eq i32 %369, 0
  br i1 %370, label %375, label %372

371:                                              ; preds = %255, %249, %241
  store i64 1, ptr %231, align 8
  br label %372

372:                                              ; preds = %371, %365
  %373 = load i32, ptr %20, align 4
  %374 = or i32 %373, 2
  store i32 %374, ptr %20, align 4
  br label %375

375:                                              ; preds = %372, %365
  tail call void @igb_reset(ptr noundef %5) #20
  tail call void @igb_power_up_link(ptr noundef %5) #20
  %376 = getelementptr i64, ptr %2, i32 3
  %377 = tail call i32 @igb_check_reset_block(ptr noundef %33) #20
  %378 = icmp eq i32 %377, 0
  br i1 %378, label %382, label %379

379:                                              ; preds = %375
  %380 = load ptr, ptr %29, align 4
  %381 = getelementptr inbounds %struct.pci_dev, ptr %380, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %381, ptr noundef nonnull @.str.11) #19
  store i64 0, ptr %376, align 8
  br label %780

382:                                              ; preds = %375
  %383 = load i32, ptr %72, align 16
  %384 = icmp eq i32 %383, 5
  br i1 %384, label %385, label %388

385:                                              ; preds = %382
  %386 = load ptr, ptr %29, align 4
  %387 = getelementptr inbounds %struct.pci_dev, ptr %386, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %387, ptr noundef nonnull @.str.12) #19
  store i64 0, ptr %376, align 8
  br label %780

388:                                              ; preds = %382
  %389 = getelementptr i8, ptr %0, i32 4288
  %390 = getelementptr i8, ptr %0, i32 4480
  %391 = getelementptr i8, ptr %0, i32 4328
  store i16 256, ptr %391, align 8
  %392 = load ptr, ptr %29, align 4
  %393 = getelementptr inbounds %struct.pci_dev, ptr %392, i32 0, i32 44
  %394 = getelementptr i8, ptr %0, i32 4300
  store ptr %393, ptr %394, align 4
  %395 = load ptr, ptr %232, align 64
  %396 = getelementptr i8, ptr %0, i32 4292
  store ptr %395, ptr %396, align 4
  %397 = getelementptr i8, ptr %0, i32 4720
  %398 = load i32, ptr %397, align 16
  %399 = trunc i32 %398 to i8
  %400 = getelementptr i8, ptr %0, i32 4331
  store i8 %399, ptr %400, align 1
  %401 = tail call i32 @igb_setup_tx_resources(ptr noundef %389) #20
  %402 = icmp eq i32 %401, 0
  br i1 %402, label %403, label %436

403:                                              ; preds = %388
  tail call void @igb_setup_tctl(ptr noundef %5) #20
  tail call void @igb_configure_tx_ring(ptr noundef %5, ptr noundef %389) #20
  %404 = getelementptr i8, ptr %0, i32 4520
  store i16 256, ptr %404, align 8
  %405 = load ptr, ptr %29, align 4
  %406 = getelementptr inbounds %struct.pci_dev, ptr %405, i32 0, i32 44
  %407 = getelementptr i8, ptr %0, i32 4492
  store ptr %406, ptr %407, align 4
  %408 = load ptr, ptr %232, align 64
  %409 = getelementptr i8, ptr %0, i32 4484
  store ptr %408, ptr %409, align 4
  %410 = load i32, ptr %397, align 16
  %411 = trunc i32 %410 to i8
  %412 = getelementptr i8, ptr %0, i32 4523
  store i8 %411, ptr %412, align 1
  %413 = tail call i32 @igb_setup_rx_resources(ptr noundef %390) #20
  %414 = icmp eq i32 %413, 0
  br i1 %414, label %415, label %436

415:                                              ; preds = %403
  %416 = load volatile ptr, ptr %87, align 4
  %417 = icmp eq ptr %416, null
  br i1 %417, label %422, label %418, !prof !9

418:                                              ; preds = %415
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !31
  tail call void @arm_heavy_mb() #20
  %419 = load i32, ptr %397, align 16
  %420 = shl i32 %419, 3
  %421 = getelementptr i8, ptr %416, i32 22552
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %421, i32 %420) #20, !srcloc !11
  br label %422

422:                                              ; preds = %418, %415
  tail call void @igb_setup_rctl(ptr noundef %5) #20
  tail call void @igb_configure_rx_ring(ptr noundef %5, ptr noundef %390) #20
  %423 = getelementptr i8, ptr %0, i32 4544
  %424 = load i16, ptr %423, align 64
  %425 = getelementptr i8, ptr %0, i32 4546
  %426 = load i16, ptr %425, align 2
  %427 = icmp ugt i16 %424, %426
  br i1 %427, label %428, label %431

428:                                              ; preds = %422
  %429 = xor i16 %426, -1
  %430 = add i16 %424, %429
  br label %439

431:                                              ; preds = %422
  %432 = load i16, ptr %404, align 8
  %433 = xor i16 %426, -1
  %434 = add i16 %424, %433
  %435 = add i16 %434, %432
  br label %439

436:                                              ; preds = %403, %388
  %437 = phi i32 [ 1, %388 ], [ 3, %403 ]
  tail call void @igb_free_tx_resources(ptr noundef %389) #20
  tail call void @igb_free_rx_resources(ptr noundef %390) #20
  %438 = zext i32 %437 to i64
  store i64 %438, ptr %376, align 8
  br label %777

439:                                              ; preds = %431, %428
  %440 = phi i16 [ %430, %428 ], [ %435, %431 ]
  tail call void @igb_alloc_rx_buffers(ptr noundef %390, i16 noundef zeroext %440) #20
  store i64 0, ptr %376, align 8
  %441 = tail call i32 @igb_rd32(ptr noundef %33, i32 noundef 24) #20
  %442 = and i32 %441, 12582912
  %443 = icmp eq i32 %442, 0
  br i1 %443, label %506, label %444

444:                                              ; preds = %439
  %445 = getelementptr i8, ptr %0, i32 3486
  %446 = load i16, ptr %445, align 2
  switch i16 %446, label %462 [
    i16 1080, label %447
    i16 1082, label %447
    i16 1084, label %447
    i16 1088, label %447
    i16 8001, label %447
    i16 8005, label %447
  ]

447:                                              ; preds = %444, %444, %444, %444, %444, %444
  %448 = tail call i32 @igb_rd32(ptr noundef %33, i32 noundef 36) #20
  %449 = load volatile ptr, ptr %87, align 4
  %450 = icmp eq ptr %449, null
  br i1 %450, label %455, label %451, !prof !9

451:                                              ; preds = %447
  %452 = and i32 %448, -65536
  %453 = or i32 %452, 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !32
  tail call void @arm_heavy_mb() #20
  %454 = getelementptr i8, ptr %449, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %454, i32 %453) #20, !srcloc !11
  br label %455

455:                                              ; preds = %451, %447
  %456 = tail call i32 @igb_rd32(ptr noundef %33, i32 noundef 3600) #20
  %457 = load volatile ptr, ptr %87, align 4
  %458 = icmp eq ptr %457, null
  br i1 %458, label %462, label %459, !prof !9

459:                                              ; preds = %455
  %460 = or i32 %456, 16
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !33
  tail call void @arm_heavy_mb() #20
  %461 = getelementptr i8, ptr %457, i32 3600
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %461, i32 %460) #20, !srcloc !11
  br label %462

462:                                              ; preds = %459, %455, %444
  %463 = tail call i32 @igb_rd32(ptr noundef %33, i32 noundef 256) #20
  %464 = load volatile ptr, ptr %87, align 4
  %465 = icmp eq ptr %464, null
  br i1 %465, label %469, label %466, !prof !9

466:                                              ; preds = %462
  %467 = or i32 %463, 192
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !34
  tail call void @arm_heavy_mb() #20
  %468 = getelementptr i8, ptr %464, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %468, i32 %467) #20, !srcloc !11
  br label %469

469:                                              ; preds = %466, %462
  %470 = load volatile ptr, ptr %87, align 4
  %471 = icmp eq ptr %470, null
  br i1 %471, label %474, label %472, !prof !9

472:                                              ; preds = %469
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !35
  tail call void @arm_heavy_mb() #20
  %473 = getelementptr i8, ptr %470, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %473, i32 1040) #20, !srcloc !11
  br label %474

474:                                              ; preds = %472, %469
  %475 = tail call i32 @igb_rd32(ptr noundef %33, i32 noundef 0) #20
  %476 = load volatile ptr, ptr %87, align 4
  %477 = icmp eq ptr %476, null
  br i1 %477, label %481, label %478, !prof !9

478:                                              ; preds = %474
  %479 = and i32 %475, -402653258
  %480 = or i32 %479, 65
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !36
  tail call void @arm_heavy_mb() #20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %476, i32 %480) #20, !srcloc !11
  br label %481

481:                                              ; preds = %478, %474
  %482 = tail call i32 @igb_rd32(ptr noundef %33, i32 noundef 52) #20
  %483 = load volatile ptr, ptr %87, align 4
  %484 = icmp eq ptr %483, null
  br i1 %484, label %488, label %485, !prof !9

485:                                              ; preds = %481
  %486 = and i32 %482, -5
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !37
  tail call void @arm_heavy_mb() #20
  %487 = getelementptr i8, ptr %483, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %487, i32 %486) #20, !srcloc !11
  br label %488

488:                                              ; preds = %485, %481
  %489 = load i32, ptr %72, align 4
  %490 = icmp ugt i32 %489, 2
  br i1 %490, label %491, label %498

491:                                              ; preds = %488
  %492 = tail call i32 @igb_rd32(ptr noundef %33, i32 noundef 16896) #20
  %493 = load volatile ptr, ptr %87, align 4
  %494 = icmp eq ptr %493, null
  br i1 %494, label %498, label %495, !prof !9

495:                                              ; preds = %491
  %496 = or i32 %492, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !38
  tail call void @arm_heavy_mb() #20
  %497 = getelementptr i8, ptr %493, i32 16896
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %497, i32 %496) #20, !srcloc !11
  br label %498

498:                                              ; preds = %495, %491, %488
  %499 = tail call i32 @igb_rd32(ptr noundef %33, i32 noundef 16904) #20
  %500 = load volatile ptr, ptr %87, align 4
  %501 = icmp eq ptr %500, null
  br i1 %501, label %578, label %502, !prof !9

502:                                              ; preds = %498
  %503 = and i32 %499, -65598
  %504 = or i32 %503, 61
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !39
  tail call void @arm_heavy_mb() #20
  %505 = getelementptr i8, ptr %500, i32 16904
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %505, i32 %504) #20, !srcloc !11
  br label %578

506:                                              ; preds = %439
  store i8 0, ptr %27, align 2
  %507 = getelementptr i8, ptr %0, i32 3240
  %508 = load i32, ptr %507, align 4
  switch i32 %508, label %540 [
    i32 2, label %509
    i32 8, label %534
  ]

509:                                              ; preds = %506
  %510 = getelementptr i8, ptr %0, i32 3272
  %511 = load i32, ptr %510, align 4
  %512 = icmp eq i32 %511, 21040128
  %513 = getelementptr i8, ptr %0, i32 3228
  %514 = load ptr, ptr %513, align 4
  %515 = icmp eq ptr %514, null
  br i1 %512, label %527, label %516

516:                                              ; preds = %509
  br i1 %515, label %540, label %517

517:                                              ; preds = %516
  %518 = tail call i32 %514(ptr noundef %33, i32 noundef 16, i16 noundef zeroext 2056) #20
  %519 = load ptr, ptr %513, align 4
  %520 = icmp eq ptr %519, null
  br i1 %520, label %540, label %521

521:                                              ; preds = %517
  %522 = tail call i32 %519(ptr noundef %33, i32 noundef 0, i16 noundef zeroext -28352) #20
  %523 = load ptr, ptr %513, align 4
  %524 = icmp eq ptr %523, null
  br i1 %524, label %540, label %525

525:                                              ; preds = %521
  %526 = tail call i32 %523(ptr noundef %33, i32 noundef 0, i16 noundef zeroext -32448) #20
  br label %540

527:                                              ; preds = %509
  br i1 %515, label %540, label %528

528:                                              ; preds = %527
  %529 = tail call i32 %514(ptr noundef %33, i32 noundef 22, i16 noundef zeroext 0) #20
  %530 = load ptr, ptr %513, align 4
  %531 = icmp eq ptr %530, null
  br i1 %531, label %540, label %532

532:                                              ; preds = %528
  %533 = tail call i32 %530(ptr noundef %33, i32 noundef 0, i16 noundef zeroext 16704) #20
  br label %540

534:                                              ; preds = %506
  %535 = getelementptr i8, ptr %0, i32 3228
  %536 = load ptr, ptr %535, align 4
  %537 = icmp eq ptr %536, null
  br i1 %537, label %540, label %538

538:                                              ; preds = %534
  %539 = tail call i32 %536(ptr noundef %33, i32 noundef 19, i16 noundef zeroext -32703) #20
  br label %540

540:                                              ; preds = %538, %534, %532, %528, %527, %525, %521, %517, %516, %506
  tail call void @msleep(i32 noundef 50) #20
  %541 = getelementptr i8, ptr %0, i32 3228
  %542 = load ptr, ptr %541, align 4
  %543 = icmp eq ptr %542, null
  br i1 %543, label %546, label %544

544:                                              ; preds = %540
  %545 = tail call i32 %542(ptr noundef %33, i32 noundef 0, i16 noundef zeroext 16704) #20
  br label %546

546:                                              ; preds = %544, %540
  %547 = tail call i32 @igb_rd32(ptr noundef %33, i32 noundef 0) #20
  %548 = load i32, ptr %507, align 4
  %549 = load volatile ptr, ptr %87, align 4
  %550 = icmp eq ptr %549, null
  br i1 %550, label %557, label %551, !prof !9

551:                                              ; preds = %546
  %552 = icmp eq i32 %548, 2
  %553 = and i32 %547, -6978
  %554 = select i1 %552, i32 6849, i32 6721
  %555 = or i32 %554, %553
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !40
  tail call void @arm_heavy_mb() #20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %549, i32 %555) #20, !srcloc !11
  %556 = load i32, ptr %507, align 4
  br label %557

557:                                              ; preds = %551, %546
  %558 = phi i32 [ %556, %551 ], [ %548, %546 ]
  %559 = icmp eq i32 %558, 2
  br i1 %559, label %560, label %577

560:                                              ; preds = %557
  %561 = load ptr, ptr %541, align 4
  %562 = icmp eq ptr %561, null
  br i1 %562, label %577, label %563

563:                                              ; preds = %560
  %564 = tail call i32 %561(ptr noundef %33, i32 noundef 29, i16 noundef zeroext 31) #20
  %565 = load ptr, ptr %541, align 4
  %566 = icmp eq ptr %565, null
  br i1 %566, label %577, label %567

567:                                              ; preds = %563
  %568 = tail call i32 %565(ptr noundef %33, i32 noundef 30, i16 noundef zeroext -28676) #20
  %569 = load ptr, ptr %541, align 4
  %570 = icmp eq ptr %569, null
  br i1 %570, label %577, label %571

571:                                              ; preds = %567
  %572 = tail call i32 %569(ptr noundef %33, i32 noundef 29, i16 noundef zeroext 26) #20
  %573 = load ptr, ptr %541, align 4
  %574 = icmp eq ptr %573, null
  br i1 %574, label %577, label %575

575:                                              ; preds = %571
  %576 = tail call i32 %573(ptr noundef %33, i32 noundef 30, i16 noundef zeroext -28688) #20
  br label %577

577:                                              ; preds = %575, %571, %567, %563, %560, %557
  tail call void @msleep(i32 noundef 500) #20
  br label %578

578:                                              ; preds = %577, %502, %498
  store i64 0, ptr %376, align 8
  %579 = tail call ptr @__alloc_skb(i32 noundef 256, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #20
  %580 = icmp eq ptr %579, null
  br i1 %580, label %728, label %581

581:                                              ; preds = %578
  %582 = getelementptr inbounds %struct.sk_buff, ptr %579, i32 0, i32 17
  %583 = load ptr, ptr %582, align 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(256) %583, i8 -1, i32 256, i1 false) #20
  %584 = load ptr, ptr %582, align 4
  %585 = getelementptr i8, ptr %584, i32 128
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(127) %585, i8 -86, i32 127, i1 false) #20
  %586 = load ptr, ptr %582, align 4
  %587 = getelementptr i8, ptr %586, i32 138
  store i8 -66, ptr %587, align 1
  %588 = load ptr, ptr %582, align 4
  %589 = getelementptr i8, ptr %588, i32 140
  store i8 -81, ptr %589, align 1
  %590 = tail call ptr @skb_put(ptr noundef nonnull %579, i32 noundef 256) #20
  %591 = load i16, ptr %404, align 8
  %592 = load i16, ptr %391, align 8
  %593 = tail call i16 @llvm.umax.i16(i16 %591, i16 %592) #20
  %594 = lshr i16 %593, 5
  %595 = or i16 %594, 1
  %596 = getelementptr inbounds %struct.sk_buff, ptr %579, i32 0, i32 19
  %597 = getelementptr i8, ptr %0, i32 4352
  %598 = getelementptr i8, ptr %0, i32 4500
  %599 = getelementptr i8, ptr %0, i32 4496
  %600 = getelementptr i8, ptr %0, i32 4304
  %601 = getelementptr i8, ptr %0, i32 4330
  br label %605

602:                                              ; preds = %714
  %603 = add nuw nsw i16 %606, 1
  %604 = icmp ult i16 %606, %595
  br i1 %604, label %605, label %726

605:                                              ; preds = %602, %581
  %606 = phi i16 [ 0, %581 ], [ %603, %602 ]
  br label %607

607:                                              ; preds = %619, %605
  %608 = phi i16 [ 0, %605 ], [ %623, %619 ]
  %609 = phi i16 [ 0, %605 ], [ %624, %619 ]
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %596) #20, !srcloc !41
  %610 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %596, ptr %596, i32 1, ptr elementtype(i32) %596) #20, !srcloc !42
  %611 = extractvalue { i32, i32, i32 } %610, 0
  %612 = icmp eq i32 %611, 0
  br i1 %612, label %617, label %613, !prof !9

613:                                              ; preds = %607
  %614 = add i32 %611, 1
  %615 = or i32 %614, %611
  %616 = icmp sgt i32 %615, -1
  br i1 %616, label %619, label %617, !prof !43

617:                                              ; preds = %613, %607
  %618 = phi i32 [ 2, %607 ], [ 1, %613 ]
  tail call void @refcount_warn_saturate(ptr noundef %596, i32 noundef %618) #20
  br label %619

619:                                              ; preds = %617, %613
  %620 = tail call i32 @igb_xmit_frame_ring(ptr noundef nonnull %579, ptr noundef %389) #20
  %621 = icmp eq i32 %620, 0
  %622 = zext i1 %621 to i16
  %623 = add i16 %608, %622
  %624 = add nuw nsw i16 %609, 1
  %625 = icmp ult i16 %609, 63
  br i1 %625, label %607, label %626

626:                                              ; preds = %619
  %627 = icmp eq i16 %623, 64
  br i1 %627, label %628, label %726

628:                                              ; preds = %626
  tail call void @msleep(i32 noundef 200) #20
  %629 = load i16, ptr %423, align 64
  %630 = load i16, ptr %597, align 64
  %631 = load ptr, ptr %598, align 4
  %632 = zext i16 %629 to i32
  %633 = getelementptr %union.e1000_adv_rx_desc, ptr %631, i32 %632
  %634 = getelementptr inbounds %struct.anon.128, ptr %633, i32 0, i32 1, i32 1
  %635 = load i16, ptr %634, align 4
  %636 = icmp eq i16 %635, 0
  br i1 %636, label %714, label %637

637:                                              ; preds = %686, %628
  %638 = phi i16 [ %688, %686 ], [ 0, %628 ]
  %639 = phi i16 [ %707, %686 ], [ %630, %628 ]
  %640 = phi i16 [ %703, %686 ], [ %629, %628 ]
  %641 = load ptr, ptr %599, align 16
  %642 = zext i16 %640 to i32
  %643 = getelementptr %struct.igb_rx_buffer, ptr %641, i32 %642
  %644 = load ptr, ptr %407, align 4
  %645 = load i32, ptr %643, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %644, i32 noundef %645, i32 noundef 256, i32 noundef 2) #20
  %646 = getelementptr %struct.igb_rx_buffer, ptr %641, i32 %642, i32 1
  %647 = load ptr, ptr %646, align 4
  %648 = load i32, ptr %647, align 4
  %649 = lshr i32 %648, 30
  %650 = icmp eq i32 %649, 2
  br i1 %650, label %658, label %651

651:                                              ; preds = %637
  %652 = icmp ne i32 %649, 3
  %653 = load i32, ptr @movable_zone, align 4
  %654 = icmp ne i32 %653, 2
  %655 = select i1 %652, i1 true, i1 %654
  br i1 %655, label %656, label %658

656:                                              ; preds = %651
  %657 = tail call ptr @page_address(ptr noundef %647) #20
  br label %660

658:                                              ; preds = %651, %637
  %659 = tail call ptr @kmap_high(ptr noundef %647) #20
  br label %660

660:                                              ; preds = %658, %656
  %661 = phi ptr [ %659, %658 ], [ %657, %656 ]
  %662 = getelementptr i8, ptr %661, i32 3
  %663 = load i8, ptr %662, align 1
  %664 = icmp eq i8 %663, -1
  br i1 %664, label %665, label %673

665:                                              ; preds = %660
  %666 = getelementptr i8, ptr %661, i32 138
  %667 = load i8, ptr %666, align 1
  %668 = icmp eq i8 %667, -66
  br i1 %668, label %669, label %673

669:                                              ; preds = %665
  %670 = getelementptr i8, ptr %661, i32 140
  %671 = load i8, ptr %670, align 1
  %672 = icmp eq i8 %671, -81
  br i1 %672, label %674, label %673

673:                                              ; preds = %669, %665, %660
  br label %674

674:                                              ; preds = %673, %669
  %675 = phi i1 [ false, %673 ], [ true, %669 ]
  %676 = load ptr, ptr %646, align 4
  %677 = load i32, ptr %676, align 4
  %678 = lshr i32 %677, 30
  %679 = icmp eq i32 %678, 2
  br i1 %679, label %685, label %680

680:                                              ; preds = %674
  %681 = icmp ne i32 %678, 3
  %682 = load i32, ptr @movable_zone, align 4
  %683 = icmp ne i32 %682, 2
  %684 = select i1 %681, i1 true, i1 %683
  br i1 %684, label %686, label %685

685:                                              ; preds = %680, %674
  tail call void @kunmap_high(ptr noundef %676) #20
  br label %686

686:                                              ; preds = %685, %680
  %687 = zext i1 %675 to i16
  %688 = add i16 %638, %687
  %689 = load ptr, ptr %407, align 4
  %690 = load i32, ptr %643, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %689, i32 noundef %690, i32 noundef 256, i32 noundef 2) #20
  %691 = load ptr, ptr %600, align 16
  %692 = zext i16 %639 to i32
  %693 = getelementptr %struct.igb_tx_buffer, ptr %691, i32 %692, i32 3
  %694 = load ptr, ptr %693, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %694, i32 noundef 1) #20
  %695 = load ptr, ptr %394, align 4
  %696 = getelementptr %struct.igb_tx_buffer, ptr %691, i32 %692, i32 7
  %697 = load i32, ptr %696, align 4
  %698 = getelementptr %struct.igb_tx_buffer, ptr %691, i32 %692, i32 8
  %699 = load i32, ptr %698, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %695, i32 noundef %697, i32 noundef %699, i32 noundef 1, i32 noundef 0) #20
  store i32 0, ptr %698, align 4
  %700 = add i16 %640, 1
  %701 = load i16, ptr %404, align 8
  %702 = icmp eq i16 %700, %701
  %703 = select i1 %702, i16 0, i16 %700
  %704 = add i16 %639, 1
  %705 = load i16, ptr %391, align 8
  %706 = icmp eq i16 %704, %705
  %707 = select i1 %706, i16 0, i16 %704
  %708 = load ptr, ptr %598, align 4
  %709 = zext i16 %703 to i32
  %710 = getelementptr %union.e1000_adv_rx_desc, ptr %708, i32 %709
  %711 = getelementptr inbounds %struct.anon.128, ptr %710, i32 0, i32 1, i32 1
  %712 = load i16, ptr %711, align 4
  %713 = icmp eq i16 %712, 0
  br i1 %713, label %714, label %637

714:                                              ; preds = %686, %628
  %715 = phi i16 [ %629, %628 ], [ %703, %686 ]
  %716 = phi i16 [ %630, %628 ], [ %707, %686 ]
  %717 = phi i16 [ 0, %628 ], [ %688, %686 ]
  %718 = load ptr, ptr %396, align 4
  %719 = load i8, ptr %601, align 2
  %720 = zext i8 %719 to i32
  %721 = getelementptr inbounds %struct.net_device, ptr %718, i32 0, i32 87
  %722 = load ptr, ptr %721, align 64
  %723 = getelementptr %struct.netdev_queue, ptr %722, i32 %720, i32 12
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %723) #20
  %724 = getelementptr %struct.netdev_queue, ptr %722, i32 %720, i32 14
  tail call void @dql_reset(ptr noundef %724) #20
  tail call void @igb_alloc_rx_buffers(ptr noundef %390, i16 noundef zeroext %717) #20
  store i16 %715, ptr %423, align 64
  store i16 %716, ptr %597, align 64
  %725 = icmp eq i16 %717, 64
  br i1 %725, label %602, label %726

726:                                              ; preds = %714, %626, %602
  %727 = phi i32 [ 0, %602 ], [ 12, %626 ], [ 13, %714 ]
  tail call void @kfree_skb_reason(ptr noundef nonnull %579, i32 noundef 0) #20
  br label %728

728:                                              ; preds = %726, %578
  %729 = phi i32 [ %727, %726 ], [ 11, %578 ]
  %730 = zext i32 %729 to i64
  store i64 %730, ptr %376, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #20
  store i16 0, ptr %4, align 2, !annotation !44
  %731 = getelementptr i8, ptr %0, i32 3486
  %732 = load i16, ptr %731, align 2
  switch i16 %732, label %748 [
    i16 1080, label %733
    i16 1082, label %733
    i16 1084, label %733
    i16 1088, label %733
    i16 8001, label %733
  ]

733:                                              ; preds = %728, %728, %728, %728, %728
  %734 = tail call i32 @igb_rd32(ptr noundef %33, i32 noundef 36) #20
  %735 = load volatile ptr, ptr %87, align 4
  %736 = icmp eq ptr %735, null
  br i1 %736, label %741, label %737, !prof !9

737:                                              ; preds = %733
  %738 = and i32 %734, -65536
  %739 = or i32 %738, 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !45
  tail call void @arm_heavy_mb() #20
  %740 = getelementptr i8, ptr %735, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %740, i32 %739) #20, !srcloc !11
  br label %741

741:                                              ; preds = %737, %733
  %742 = tail call i32 @igb_rd32(ptr noundef %33, i32 noundef 3600) #20
  %743 = load volatile ptr, ptr %87, align 4
  %744 = icmp eq ptr %743, null
  br i1 %744, label %748, label %745, !prof !9

745:                                              ; preds = %741
  %746 = and i32 %742, -17
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !46
  tail call void @arm_heavy_mb() #20
  %747 = getelementptr i8, ptr %743, i32 3600
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %747, i32 %746) #20, !srcloc !11
  br label %748

748:                                              ; preds = %745, %741, %728
  %749 = tail call i32 @igb_rd32(ptr noundef %33, i32 noundef 256) #20
  %750 = load volatile ptr, ptr %87, align 4
  %751 = icmp eq ptr %750, null
  br i1 %751, label %755, label %752, !prof !9

752:                                              ; preds = %748
  %753 = and i32 %749, -193
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !47
  tail call void @arm_heavy_mb() #20
  %754 = getelementptr i8, ptr %750, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %754, i32 %753) #20, !srcloc !11
  br label %755

755:                                              ; preds = %752, %748
  store i8 1, ptr %27, align 2
  %756 = getelementptr i8, ptr %0, i32 3208
  %757 = load ptr, ptr %756, align 4
  %758 = icmp eq ptr %757, null
  br i1 %758, label %773, label %759

759:                                              ; preds = %755
  %760 = call i32 %757(ptr noundef %33, i32 noundef 0, ptr noundef nonnull %4) #20
  %761 = load i16, ptr %4, align 2
  %762 = and i16 %761, 16384
  %763 = icmp eq i16 %762, 0
  br i1 %763, label %773, label %764

764:                                              ; preds = %759
  %765 = and i16 %761, -16385
  store i16 %765, ptr %4, align 2
  %766 = getelementptr i8, ptr %0, i32 3228
  %767 = load ptr, ptr %766, align 4
  %768 = icmp eq ptr %767, null
  br i1 %768, label %771, label %769

769:                                              ; preds = %764
  %770 = call i32 %767(ptr noundef %33, i32 noundef 0, i16 noundef zeroext %765) #20
  br label %771

771:                                              ; preds = %769, %764
  %772 = call i32 @igb_phy_sw_reset(ptr noundef %33) #20
  br label %773

773:                                              ; preds = %771, %759, %755
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #20
  call void @igb_free_tx_resources(ptr noundef %389) #20
  call void @igb_free_rx_resources(ptr noundef %390) #20
  %774 = load i64, ptr %376, align 8
  %775 = trunc i64 %774 to i32
  %776 = icmp eq i32 %775, 0
  br i1 %776, label %780, label %777

777:                                              ; preds = %773, %436
  %778 = load i32, ptr %20, align 4
  %779 = or i32 %778, 2
  store i32 %779, ptr %20, align 4
  br label %780

780:                                              ; preds = %777, %773, %385, %379
  store i16 %24, ptr %23, align 4
  store i8 %26, ptr %25, align 2
  store i8 %28, ptr %27, align 2
  %781 = getelementptr i8, ptr %0, i32 3312
  store i8 1, ptr %781, align 4
  call void @igb_reset(ptr noundef %5) #20
  store i8 0, ptr %781, align 4
  call void @_clear_bit(i32 noundef 0, ptr noundef %10) #20
  br i1 %9, label %829, label %782

782:                                              ; preds = %780
  %783 = call i32 @igb_open(ptr noundef %0) #20
  br label %829

784:                                              ; preds = %19, %16
  %785 = phi ptr [ %18, %16 ], [ %20, %19 ]
  %786 = getelementptr i8, ptr %0, i32 2308
  %787 = load ptr, ptr %786, align 4
  %788 = getelementptr inbounds %struct.pci_dev, ptr %787, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %788, ptr noundef nonnull @.str.4) #19
  br i1 %9, label %826, label %789

789:                                              ; preds = %784
  %790 = getelementptr i64, ptr %2, i32 4
  %791 = getelementptr i8, ptr %0, i32 2512
  store i64 0, ptr %790, align 8
  %792 = getelementptr i8, ptr %0, i32 3284
  %793 = load i32, ptr %792, align 4
  %794 = icmp eq i32 %793, 3
  %795 = getelementptr i8, ptr %0, i32 2528
  br i1 %794, label %796, label %807

796:                                              ; preds = %789
  %797 = getelementptr i8, ptr %0, i32 3145
  store i8 0, ptr %797, align 1
  br label %798

798:                                              ; preds = %804, %796
  %799 = phi i32 [ 0, %796 ], [ %805, %804 ]
  %800 = load ptr, ptr %795, align 4
  %801 = tail call i32 %800(ptr noundef %791) #20
  %802 = load i8, ptr %797, align 1, !range !8
  %803 = icmp eq i8 %802, 0
  br i1 %803, label %804, label %818

804:                                              ; preds = %798
  tail call void @msleep(i32 noundef 20) #20
  %805 = add nuw nsw i32 %799, 1
  %806 = icmp eq i32 %805, 3751
  br i1 %806, label %822, label %798

807:                                              ; preds = %789
  %808 = load ptr, ptr %795, align 4
  %809 = tail call i32 %808(ptr noundef %791) #20
  %810 = getelementptr i8, ptr %0, i32 3138
  %811 = load i8, ptr %810, align 2, !range !8
  %812 = icmp eq i8 %811, 0
  br i1 %812, label %814, label %813

813:                                              ; preds = %807
  tail call void @msleep(i32 noundef 5000) #20
  br label %814

814:                                              ; preds = %813, %807
  %815 = tail call i32 @igb_rd32(ptr noundef %791, i32 noundef 8) #20
  %816 = and i32 %815, 2
  %817 = icmp eq i32 %816, 0
  br i1 %817, label %822, label %818

818:                                              ; preds = %814, %798
  %819 = load i64, ptr %790, align 8
  %820 = trunc i64 %819 to i32
  %821 = icmp eq i32 %820, 0
  br i1 %821, label %826, label %823

822:                                              ; preds = %814, %804
  store i64 1, ptr %790, align 8
  br label %823

823:                                              ; preds = %822, %818
  %824 = load i32, ptr %785, align 4
  %825 = or i32 %824, 2
  store i32 %825, ptr %785, align 4
  br label %828

826:                                              ; preds = %818, %784
  %827 = getelementptr i64, ptr %2, i32 4
  store i64 0, ptr %827, align 8
  br label %828

828:                                              ; preds = %826, %823
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %10) #20
  br label %829

829:                                              ; preds = %828, %782, %780
  %830 = call i32 @msleep_interruptible(i32 noundef 4000) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @igb_get_strings(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #20
  store ptr %2, ptr %4, align 4
  switch i32 %1, label %30 [
    i32 0, label %5
    i32 1, label %6
    i32 2, label %29
  ]

5:                                                ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(160) %2, ptr noundef nonnull align 1 dereferenceable(160) @igb_gstrings_test, i32 160, i1 false)
  br label %30

6:                                                ; preds = %6, %3
  %7 = phi i32 [ %9, %6 ], [ 0, %3 ]
  %8 = getelementptr [42 x %struct.igb_stats], ptr @igb_gstrings_stats, i32 0, i32 %7
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %4, ptr noundef %8) #20
  %9 = add nuw nsw i32 %7, 1
  %10 = icmp eq i32 %9, 42
  br i1 %10, label %11, label %6

11:                                               ; preds = %6
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %4, ptr noundef nonnull @igb_gstrings_net_stats) #20
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %4, ptr noundef getelementptr inbounds ([9 x %struct.igb_stats], ptr @igb_gstrings_net_stats, i32 0, i32 1)) #20
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %4, ptr noundef getelementptr inbounds ([9 x %struct.igb_stats], ptr @igb_gstrings_net_stats, i32 0, i32 2)) #20
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %4, ptr noundef getelementptr inbounds ([9 x %struct.igb_stats], ptr @igb_gstrings_net_stats, i32 0, i32 3)) #20
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %4, ptr noundef getelementptr inbounds ([9 x %struct.igb_stats], ptr @igb_gstrings_net_stats, i32 0, i32 4)) #20
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %4, ptr noundef getelementptr inbounds ([9 x %struct.igb_stats], ptr @igb_gstrings_net_stats, i32 0, i32 5)) #20
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %4, ptr noundef getelementptr inbounds ([9 x %struct.igb_stats], ptr @igb_gstrings_net_stats, i32 0, i32 6)) #20
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %4, ptr noundef getelementptr inbounds ([9 x %struct.igb_stats], ptr @igb_gstrings_net_stats, i32 0, i32 7)) #20
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %4, ptr noundef getelementptr inbounds ([9 x %struct.igb_stats], ptr @igb_gstrings_net_stats, i32 0, i32 8)) #20
  %12 = getelementptr i8, ptr %0, i32 2040
  %13 = load i32, ptr %12, align 8
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %19, %11
  %16 = getelementptr i8, ptr %0, i32 2108
  %17 = load i32, ptr %16, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %24, label %30

19:                                               ; preds = %19, %11
  %20 = phi i32 [ %21, %19 ], [ 0, %11 ]
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %4, ptr noundef nonnull @.str.13, i32 noundef %20) #20
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %4, ptr noundef nonnull @.str.14, i32 noundef %20) #20
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %4, ptr noundef nonnull @.str.15, i32 noundef %20) #20
  %21 = add nuw nsw i32 %20, 1
  %22 = load i32, ptr %12, align 8
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %19, label %15

24:                                               ; preds = %24, %15
  %25 = phi i32 [ %26, %24 ], [ 0, %15 ]
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %4, ptr noundef nonnull @.str.16, i32 noundef %25) #20
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %4, ptr noundef nonnull @.str.17, i32 noundef %25) #20
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %4, ptr noundef nonnull @.str.18, i32 noundef %25) #20
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %4, ptr noundef nonnull @.str.19, i32 noundef %25) #20
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %4, ptr noundef nonnull @.str.20, i32 noundef %25) #20
  %26 = add nuw nsw i32 %25, 1
  %27 = load i32, ptr %16, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %24, label %30

29:                                               ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(32) @igb_priv_flags_strings, i32 32, i1 false)
  br label %30

30:                                               ; preds = %29, %24, %15, %5, %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @igb_set_phys_id(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 2512
  switch i32 %1, label %14 [
    i32 1, label %4
    i32 2, label %6
    i32 3, label %8
    i32 0, label %10
  ]

4:                                                ; preds = %2
  %5 = tail call i32 @igb_blink_led(ptr noundef %3) #20
  br label %14

6:                                                ; preds = %2
  %7 = tail call i32 @igb_blink_led(ptr noundef %3) #20
  br label %14

8:                                                ; preds = %2
  %9 = tail call i32 @igb_led_off(ptr noundef %3) #20
  br label %14

10:                                               ; preds = %2
  %11 = tail call i32 @igb_led_off(ptr noundef %3) #20
  %12 = getelementptr i8, ptr %0, i32 2304
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %12) #20
  %13 = tail call i32 @igb_cleanup_led(ptr noundef %3) #20
  br label %14

14:                                               ; preds = %10, %8, %6, %4, %2
  %15 = phi i32 [ 2, %4 ], [ 0, %2 ], [ 0, %10 ], [ 0, %8 ], [ 0, %6 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @igb_get_ethtool_stats(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 1408
  %5 = getelementptr i8, ptr %0, i32 2312
  tail call void @_raw_spin_lock(ptr noundef %5) #20
  tail call void @igb_update_stats(ptr noundef %4) #20
  br label %6

6:                                                ; preds = %19, %3
  %7 = phi i32 [ 0, %3 ], [ %22, %19 ]
  %8 = getelementptr [42 x %struct.igb_stats], ptr @igb_gstrings_stats, i32 0, i32 %7, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr i8, ptr %4, i32 %9
  %11 = getelementptr [42 x %struct.igb_stats], ptr @igb_gstrings_stats, i32 0, i32 %7, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 8
  br i1 %13, label %14, label %16

14:                                               ; preds = %6
  %15 = load i64, ptr %10, align 8
  br label %19

16:                                               ; preds = %6
  %17 = load i32, ptr %10, align 4
  %18 = zext i32 %17 to i64
  br label %19

19:                                               ; preds = %16, %14
  %20 = phi i64 [ %15, %14 ], [ %18, %16 ]
  %21 = getelementptr i64, ptr %2, i32 %7
  store i64 %20, ptr %21, align 8
  %22 = add nuw nsw i32 %7, 1
  %23 = icmp eq i32 %22, 42
  br i1 %23, label %24, label %6

24:                                               ; preds = %19
  %25 = getelementptr i8, ptr %0, i32 2352
  %26 = load i64, ptr %25, align 8
  %27 = getelementptr i64, ptr %2, i32 42
  store i64 %26, ptr %27, align 8
  %28 = getelementptr i8, ptr %0, i32 2360
  %29 = load i64, ptr %28, align 8
  %30 = getelementptr i64, ptr %2, i32 43
  store i64 %29, ptr %30, align 8
  %31 = getelementptr i8, ptr %0, i32 2376
  %32 = load i64, ptr %31, align 8
  %33 = getelementptr i64, ptr %2, i32 44
  store i64 %32, ptr %33, align 8
  %34 = getelementptr i8, ptr %0, i32 2400
  %35 = load i64, ptr %34, align 8
  %36 = getelementptr i64, ptr %2, i32 45
  store i64 %35, ptr %36, align 8
  %37 = getelementptr i8, ptr %0, i32 2408
  %38 = load i64, ptr %37, align 8
  %39 = getelementptr i64, ptr %2, i32 46
  store i64 %38, ptr %39, align 8
  %40 = getelementptr i8, ptr %0, i32 2424
  %41 = load i64, ptr %40, align 8
  %42 = getelementptr i64, ptr %2, i32 47
  store i64 %41, ptr %42, align 8
  %43 = getelementptr i8, ptr %0, i32 2432
  %44 = load i64, ptr %43, align 8
  %45 = getelementptr i64, ptr %2, i32 48
  store i64 %44, ptr %45, align 8
  %46 = getelementptr i8, ptr %0, i32 2464
  %47 = load i64, ptr %46, align 8
  %48 = getelementptr i64, ptr %2, i32 49
  store i64 %47, ptr %48, align 8
  %49 = getelementptr i8, ptr %0, i32 2472
  %50 = load i64, ptr %49, align 8
  %51 = getelementptr i64, ptr %2, i32 50
  store i64 %50, ptr %51, align 8
  %52 = getelementptr i8, ptr %0, i32 2040
  %53 = load i32, ptr %52, align 8
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %105, %24
  %56 = phi i32 [ 51, %24 ], [ %108, %105 ]
  %57 = getelementptr i8, ptr %0, i32 2108
  %58 = load i32, ptr %57, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %112, label %154

60:                                               ; preds = %105, %24
  %61 = phi i32 [ %109, %105 ], [ 0, %24 ]
  %62 = phi i32 [ %108, %105 ], [ 51, %24 ]
  %63 = getelementptr %struct.igb_adapter, ptr %4, i32 0, i32 14, i32 %61
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.igb_ring, ptr %64, i32 0, i32 22
  %66 = getelementptr inbounds %struct.igb_ring, ptr %64, i32 0, i32 22, i32 0, i32 1, i32 3
  %67 = getelementptr i64, ptr %2, i32 %62
  %68 = getelementptr inbounds %struct.igb_ring, ptr %64, i32 0, i32 22, i32 0, i32 1
  %69 = add i32 %62, 1
  %70 = getelementptr i64, ptr %2, i32 %69
  %71 = getelementptr inbounds %struct.igb_ring, ptr %64, i32 0, i32 22, i32 0, i32 1, i32 1
  %72 = add i32 %62, 2
  %73 = getelementptr i64, ptr %2, i32 %72
  br label %74

74:                                               ; preds = %82, %60
  %75 = load volatile i32, ptr %66, align 4
  %76 = and i32 %75, 1
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %78, %74
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !48
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #20, !srcloc !49
  %79 = load volatile i32, ptr %66, align 4
  %80 = and i32 %79, 1
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %78

82:                                               ; preds = %78, %74
  %83 = phi i32 [ %75, %74 ], [ %79, %78 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !50
  %84 = load i64, ptr %65, align 8
  store i64 %84, ptr %67, align 8
  %85 = load i64, ptr %68, align 8
  store i64 %85, ptr %70, align 8
  %86 = load i64, ptr %71, align 8
  store i64 %86, ptr %73, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !51
  %87 = load volatile i32, ptr %66, align 4
  %88 = icmp eq i32 %87, %83
  br i1 %88, label %89, label %74

89:                                               ; preds = %82
  %90 = getelementptr inbounds %struct.anon.114, ptr %65, i32 0, i32 2
  %91 = getelementptr inbounds %struct.igb_ring, ptr %64, i32 0, i32 22, i32 0, i32 1, i32 2
  br label %92

92:                                               ; preds = %100, %89
  %93 = load volatile i32, ptr %90, align 4
  %94 = and i32 %93, 1
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %96, %92
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !48
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #20, !srcloc !49
  %97 = load volatile i32, ptr %90, align 4
  %98 = and i32 %97, 1
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %96

100:                                              ; preds = %96, %92
  %101 = phi i32 [ %93, %92 ], [ %97, %96 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !50
  %102 = load i64, ptr %91, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !51
  %103 = load volatile i32, ptr %90, align 4
  %104 = icmp eq i32 %103, %101
  br i1 %104, label %105, label %92

105:                                              ; preds = %100
  %106 = load i64, ptr %73, align 8
  %107 = add i64 %106, %102
  store i64 %107, ptr %73, align 8
  %108 = add i32 %62, 3
  %109 = add nuw nsw i32 %61, 1
  %110 = load i32, ptr %52, align 8
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %60, label %55

112:                                              ; preds = %149, %55
  %113 = phi i32 [ %151, %149 ], [ 0, %55 ]
  %114 = phi i32 [ %150, %149 ], [ %56, %55 ]
  %115 = getelementptr %struct.igb_adapter, ptr %4, i32 0, i32 16, i32 %113
  %116 = load ptr, ptr %115, align 4
  %117 = getelementptr inbounds %struct.igb_ring, ptr %116, i32 0, i32 22, i32 0, i32 2
  %118 = getelementptr inbounds %struct.igb_ring, ptr %116, i32 0, i32 22, i32 0, i32 1
  %119 = getelementptr i64, ptr %2, i32 %114
  %120 = getelementptr inbounds %struct.igb_ring, ptr %116, i32 0, i32 22, i32 0, i32 1, i32 1
  %121 = add i32 %114, 1
  %122 = getelementptr i64, ptr %2, i32 %121
  %123 = getelementptr inbounds %struct.igb_ring, ptr %116, i32 0, i32 22, i32 0, i32 1, i32 2
  %124 = add i32 %114, 2
  %125 = getelementptr i64, ptr %2, i32 %124
  %126 = getelementptr inbounds %struct.igb_ring, ptr %116, i32 0, i32 22, i32 0, i32 1, i32 3
  %127 = add i32 %114, 3
  %128 = getelementptr i64, ptr %2, i32 %127
  %129 = getelementptr inbounds %struct.igb_ring, ptr %116, i32 0, i32 22, i32 0, i32 1, i32 4
  %130 = add i32 %114, 4
  %131 = getelementptr i64, ptr %2, i32 %130
  br label %132

132:                                              ; preds = %140, %112
  %133 = load volatile i32, ptr %117, align 4
  %134 = and i32 %133, 1
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %140, label %136

136:                                              ; preds = %136, %132
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !48
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #20, !srcloc !49
  %137 = load volatile i32, ptr %117, align 4
  %138 = and i32 %137, 1
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %136

140:                                              ; preds = %136, %132
  %141 = phi i32 [ %133, %132 ], [ %137, %136 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !50
  %142 = load i64, ptr %118, align 8
  store i64 %142, ptr %119, align 8
  %143 = load i64, ptr %120, align 8
  store i64 %143, ptr %122, align 8
  %144 = load i64, ptr %123, align 8
  store i64 %144, ptr %125, align 8
  %145 = load i64, ptr %126, align 8
  store i64 %145, ptr %128, align 8
  %146 = load i64, ptr %129, align 8
  store i64 %146, ptr %131, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !51
  %147 = load volatile i32, ptr %117, align 4
  %148 = icmp eq i32 %147, %141
  br i1 %148, label %149, label %132

149:                                              ; preds = %140
  %150 = add i32 %114, 5
  %151 = add nuw nsw i32 %113, 1
  %152 = load i32, ptr %57, align 4
  %153 = icmp slt i32 %151, %152
  br i1 %153, label %112, label %154

154:                                              ; preds = %149, %55
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !52
  %155 = load i16, ptr %5, align 4
  %156 = add i16 %155, 1
  store i16 %156, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #20, !srcloc !53
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #20, !srcloc !54
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !55
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @igb_ethtool_begin(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 2308
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %5 = tail call i32 @__pm_runtime_resume(ptr noundef %4, i32 noundef 4) #20
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @igb_ethtool_complete(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 2308
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %5 = tail call i32 @__pm_runtime_idle(ptr noundef %4, i32 noundef 5) #20
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @igb_get_priv_flags(ptr nocapture noundef readonly %0) #9 {
  %2 = getelementptr i8, ptr %0, i32 1932
  %3 = load i32, ptr %2, align 4
  %4 = lshr i32 %3, 16
  %5 = and i32 %4, 1
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @igb_set_priv_flags(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 1408
  %4 = getelementptr i8, ptr %0, i32 1932
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, -65537
  %7 = shl i32 %1, 16
  %8 = and i32 %7, 65536
  %9 = or i32 %6, %8
  %10 = icmp eq i32 %9, %5
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  store i32 %9, ptr %4, align 4
  %12 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  tail call void @igb_reinit_locked(ptr noundef %3) #20
  br label %17

17:                                               ; preds = %16, %11, %2
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @igb_get_sset_count(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  switch i32 %1, label %13 [
    i32 1, label %3
    i32 0, label %14
    i32 2, label %12
  ]

3:                                                ; preds = %2
  %4 = getelementptr i8, ptr %0, i32 2108
  %5 = load i32, ptr %4, align 4
  %6 = mul i32 %5, 5
  %7 = getelementptr i8, ptr %0, i32 2040
  %8 = load i32, ptr %7, align 8
  %9 = mul i32 %8, 3
  %10 = add i32 %6, 51
  %11 = add i32 %10, %9
  br label %14

12:                                               ; preds = %2
  br label %14

13:                                               ; preds = %2
  br label %14

14:                                               ; preds = %13, %12, %3, %2
  %15 = phi i32 [ -524, %13 ], [ 1, %12 ], [ %11, %3 ], [ 5, %2 ]
  ret i32 %15
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @igb_get_rxnfc(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2) #11 {
  %4 = load i32, ptr %1, align 8
  switch i32 %4, label %129 [
    i32 45, label %5
    i32 46, label %10
    i32 47, label %14
    i32 48, label %87
    i32 41, label %110
  ]

5:                                                ; preds = %3
  %6 = getelementptr i8, ptr %0, i32 2108
  %7 = load i32, ptr %6, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %1, i32 0, i32 2
  store i64 %8, ptr %9, align 8
  br label %129

10:                                               ; preds = %3
  %11 = getelementptr i8, ptr %0, i32 6388
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %1, i32 0, i32 4
  store i32 %12, ptr %13, align 8
  br label %129

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %1, i32 0, i32 3
  %16 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %1, i32 0, i32 2
  store i64 16, ptr %16, align 8
  %17 = getelementptr i8, ptr %0, i32 6380
  %18 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %1, i32 0, i32 3, i32 6
  br label %19

19:                                               ; preds = %23, %14
  %20 = phi ptr [ %17, %14 ], [ %21, %23 ]
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %129, label %23

23:                                               ; preds = %19
  %24 = load i32, ptr %18, align 8
  %25 = getelementptr inbounds %struct.igb_nfc_filter, ptr %21, i32 0, i32 4
  %26 = load i16, ptr %25, align 2
  %27 = zext i16 %26 to i32
  %28 = icmp ugt i32 %24, %27
  br i1 %28, label %19, label %29

29:                                               ; preds = %23
  %30 = zext i16 %26 to i32
  %31 = icmp eq i32 %24, %30
  br i1 %31, label %32, label %129

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.igb_nfc_filter, ptr %21, i32 0, i32 1
  %34 = load i8, ptr %33, align 4
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %129, label %36

36:                                               ; preds = %32
  store i32 18, ptr %15, align 8
  %37 = getelementptr inbounds %struct.igb_nfc_filter, ptr %21, i32 0, i32 5
  %38 = load i16, ptr %37, align 4
  %39 = zext i16 %38 to i64
  %40 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %1, i32 0, i32 3, i32 5
  store i64 %39, ptr %40, align 8
  %41 = load i8, ptr %33, align 4
  %42 = and i8 %41, 1
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %36
  %45 = getelementptr inbounds %struct.igb_nfc_filter, ptr %21, i32 0, i32 1, i32 1
  %46 = load i16, ptr %45, align 2
  %47 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %1, i32 0, i32 3, i32 1, i32 0, i32 0, i32 3
  store i16 %46, ptr %47, align 4
  %48 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %1, i32 0, i32 3, i32 3, i32 0, i32 0, i32 3
  store i16 -1, ptr %48, align 4
  %49 = load i8, ptr %33, align 4
  br label %50

50:                                               ; preds = %44, %36
  %51 = phi i8 [ %49, %44 ], [ %41, %36 ]
  %52 = and i8 %51, 2
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %50
  store i32 -2147483630, ptr %15, align 8
  %55 = getelementptr inbounds %struct.igb_nfc_filter, ptr %21, i32 0, i32 1, i32 2
  %56 = load i16, ptr %55, align 4
  %57 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %1, i32 0, i32 3, i32 2, i32 3
  store i16 %56, ptr %57, align 2
  %58 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %1, i32 0, i32 3, i32 4, i32 3
  store i16 224, ptr %58, align 2
  %59 = load i8, ptr %33, align 4
  br label %60

60:                                               ; preds = %54, %50
  %61 = phi i8 [ %59, %54 ], [ %51, %50 ]
  %62 = and i8 %61, 8
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %73, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %1, i32 0, i32 3, i32 1
  %66 = getelementptr inbounds %struct.igb_nfc_filter, ptr %21, i32 0, i32 1, i32 4
  %67 = load i32, ptr %66, align 4
  store i32 %67, ptr %65, align 4
  %68 = getelementptr %struct.igb_nfc_filter, ptr %21, i32 0, i32 1, i32 4, i32 4
  %69 = load i16, ptr %68, align 2
  %70 = getelementptr %struct.ethtool_rxnfc, ptr %1, i32 0, i32 3, i32 1, i32 0, i32 0, i32 1
  store i16 %69, ptr %70, align 2
  %71 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %1, i32 0, i32 3, i32 3
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(6) %71, i8 -1, i32 6, i1 false) #20
  %72 = load i8, ptr %33, align 4
  br label %73

73:                                               ; preds = %64, %60
  %74 = phi i8 [ %72, %64 ], [ %61, %60 ]
  %75 = and i8 %74, 4
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %129, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %1, i32 0, i32 3, i32 1
  %79 = getelementptr inbounds %struct.ethhdr, ptr %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.igb_nfc_filter, ptr %21, i32 0, i32 1, i32 3
  %81 = load i32, ptr %80, align 4
  store i32 %81, ptr %79, align 4
  %82 = getelementptr %struct.igb_nfc_filter, ptr %21, i32 0, i32 1, i32 3, i32 4
  %83 = load i16, ptr %82, align 2
  %84 = getelementptr %struct.ethhdr, ptr %78, i32 0, i32 1, i32 4
  store i16 %83, ptr %84, align 2
  %85 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %1, i32 0, i32 3, i32 3
  %86 = getelementptr inbounds %struct.ethhdr, ptr %85, i32 0, i32 1
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(6) %86, i8 -1, i32 6, i1 false) #20
  br label %129

87:                                               ; preds = %3
  %88 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %1, i32 0, i32 2
  store i64 16, ptr %88, align 8
  %89 = getelementptr i8, ptr %0, i32 6380
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %107, label %92

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %1, i32 0, i32 4
  br label %94

94:                                               ; preds = %99, %92
  %95 = phi ptr [ %90, %92 ], [ %105, %99 ]
  %96 = phi i32 [ 0, %92 ], [ %104, %99 ]
  %97 = load i32, ptr %93, align 8
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %129, label %99

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.igb_nfc_filter, ptr %95, i32 0, i32 4
  %101 = load i16, ptr %100, align 2
  %102 = zext i16 %101 to i32
  %103 = getelementptr i32, ptr %2, i32 %96
  store i32 %102, ptr %103, align 4
  %104 = add i32 %96, 1
  %105 = load ptr, ptr %95, align 4
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %94

107:                                              ; preds = %99, %87
  %108 = phi i32 [ 0, %87 ], [ %104, %99 ]
  %109 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %1, i32 0, i32 4
  store i32 %108, ptr %109, align 8
  br label %129

110:                                              ; preds = %3
  %111 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %1, i32 0, i32 2
  store i64 0, ptr %111, align 8
  %112 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %1, i32 0, i32 1
  %113 = load i32, ptr %112, align 4
  switch i32 %113, label %129 [
    i32 1, label %114
    i32 2, label %118
    i32 3, label %127
    i32 4, label %127
    i32 9, label %127
    i32 10, label %127
    i32 16, label %127
    i32 5, label %115
    i32 6, label %116
    i32 7, label %127
    i32 8, label %127
    i32 11, label %127
    i32 12, label %127
    i32 17, label %127
  ]

114:                                              ; preds = %110
  store i64 192, ptr %111, align 8
  br label %118

115:                                              ; preds = %110
  store i64 192, ptr %111, align 8
  br label %116

116:                                              ; preds = %115, %110
  %117 = phi i64 [ 0, %110 ], [ 192, %115 ]
  br label %118

118:                                              ; preds = %116, %114, %110
  %119 = phi i32 [ 128, %116 ], [ 64, %110 ], [ 64, %114 ]
  %120 = phi i64 [ %117, %116 ], [ 0, %110 ], [ 192, %114 ]
  %121 = getelementptr i8, ptr %0, i32 1932
  %122 = load i32, ptr %121, align 4
  %123 = and i32 %122, %119
  %124 = icmp eq i32 %123, 0
  %125 = or i64 %120, 48
  %126 = select i1 %124, i64 %125, i64 240
  br label %127

127:                                              ; preds = %118, %110, %110, %110, %110, %110, %110, %110, %110, %110, %110
  %128 = phi i64 [ 48, %110 ], [ 48, %110 ], [ 48, %110 ], [ 48, %110 ], [ 48, %110 ], [ 48, %110 ], [ 48, %110 ], [ 48, %110 ], [ 48, %110 ], [ 48, %110 ], [ %126, %118 ]
  store i64 %128, ptr %111, align 8
  br label %129

129:                                              ; preds = %127, %110, %107, %94, %77, %73, %32, %29, %19, %10, %5, %3
  %130 = phi i32 [ -95, %3 ], [ 0, %10 ], [ 0, %5 ], [ -22, %29 ], [ 0, %77 ], [ 0, %73 ], [ -22, %32 ], [ 0, %107 ], [ 0, %127 ], [ -22, %110 ], [ -22, %19 ], [ -90, %94 ]
  ret i32 %130
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @igb_set_rxnfc(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 1408
  %4 = load i32, ptr %1, align 8
  switch i32 %4, label %280 [
    i32 42, label %5
    i32 50, label %72
    i32 49, label %248
  ]

5:                                                ; preds = %2
  %6 = getelementptr i8, ptr %0, i32 1932
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %1, i32 0, i32 2
  %9 = load i64, ptr %8, align 8
  %10 = and i64 %9, -241
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %280

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %1, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  switch i32 %14, label %280 [
    i32 1, label %15
    i32 5, label %15
    i32 2, label %18
    i32 6, label %28
    i32 4, label %38
    i32 9, label %38
    i32 10, label %38
    i32 3, label %38
    i32 8, label %38
    i32 11, label %38
    i32 12, label %38
    i32 7, label %38
  ]

15:                                               ; preds = %12, %12
  %16 = and i64 %9, 240
  %17 = icmp eq i64 %16, 240
  br i1 %17, label %41, label %280

18:                                               ; preds = %12
  %19 = and i64 %9, 48
  %20 = icmp eq i64 %19, 48
  br i1 %20, label %21, label %280

21:                                               ; preds = %18
  %22 = trunc i64 %9 to i8
  %23 = and i8 %22, -64
  switch i8 %23, label %280 [
    i8 0, label %24
    i8 -64, label %26
  ]

24:                                               ; preds = %21
  %25 = and i32 %7, -65
  br label %42

26:                                               ; preds = %21
  %27 = or i32 %7, 64
  br label %42

28:                                               ; preds = %12
  %29 = and i64 %9, 48
  %30 = icmp eq i64 %29, 48
  br i1 %30, label %31, label %280

31:                                               ; preds = %28
  %32 = trunc i64 %9 to i8
  %33 = and i8 %32, -64
  switch i8 %33, label %280 [
    i8 0, label %34
    i8 -64, label %36
  ]

34:                                               ; preds = %31
  %35 = and i32 %7, -129
  br label %42

36:                                               ; preds = %31
  %37 = or i32 %7, 128
  br label %42

38:                                               ; preds = %12, %12, %12, %12, %12, %12, %12, %12
  %39 = and i64 %9, 240
  %40 = icmp eq i64 %39, 48
  br i1 %40, label %41, label %280

41:                                               ; preds = %38, %15
  br label %280

42:                                               ; preds = %36, %34, %26, %24
  %43 = phi i32 [ %37, %36 ], [ %35, %34 ], [ %27, %26 ], [ %25, %24 ]
  %44 = icmp eq i32 %43, %7
  br i1 %44, label %280, label %45

45:                                               ; preds = %42
  %46 = getelementptr i8, ptr %0, i32 2512
  %47 = tail call i32 @igb_rd32(ptr noundef %46, i32 noundef 22552) #20
  %48 = and i32 %43, 192
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %45
  %51 = load i32, ptr %6, align 4
  %52 = and i32 %51, 192
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = getelementptr i8, ptr %0, i32 2308
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.pci_dev, ptr %56, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.21) #19
  br label %58

58:                                               ; preds = %54, %50, %45
  store i32 %43, ptr %6, align 4
  %59 = getelementptr i8, ptr %0, i32 2516
  %60 = load volatile ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %280, label %62, !prof !9

62:                                               ; preds = %58
  %63 = and i32 %47, -15925249
  %64 = and i32 %43, 64
  %65 = icmp eq i32 %64, 0
  %66 = select i1 %65, i32 3342336, i32 7536640
  %67 = shl i32 %43, 16
  %68 = and i32 %67, 8388608
  %69 = or i32 %66, %68
  %70 = or i32 %69, %63
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !56
  tail call void @arm_heavy_mb() #20
  %71 = getelementptr i8, ptr %60, i32 22552
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 %70) #20, !srcloc !11
  br label %280

72:                                               ; preds = %2
  %73 = getelementptr i8, ptr %0, i32 1920
  %74 = load ptr, ptr %73, align 64
  %75 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %1, i32 0, i32 3
  %76 = getelementptr inbounds %struct.net_device, ptr %74, i32 0, i32 24
  %77 = load i64, ptr %76, align 8
  %78 = and i64 %77, 274877906944
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %280, label %80

80:                                               ; preds = %72
  %81 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %1, i32 0, i32 3, i32 5
  %82 = load i64, ptr %81, align 8
  %83 = icmp eq i64 %82, -1
  br i1 %83, label %89, label %84

84:                                               ; preds = %80
  %85 = getelementptr i8, ptr %0, i32 2108
  %86 = load i32, ptr %85, align 4
  %87 = sext i32 %86 to i64
  %88 = icmp ult i64 %82, %87
  br i1 %88, label %93, label %89

89:                                               ; preds = %84, %80
  %90 = getelementptr i8, ptr %0, i32 2308
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr inbounds %struct.pci_dev, ptr %91, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %92, ptr noundef nonnull @.str.22) #19
  br label %280

93:                                               ; preds = %84
  %94 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %1, i32 0, i32 3, i32 6
  %95 = load i32, ptr %94, align 8
  %96 = icmp ugt i32 %95, 15
  br i1 %96, label %97, label %101

97:                                               ; preds = %93
  %98 = getelementptr i8, ptr %0, i32 2308
  %99 = load ptr, ptr %98, align 4
  %100 = getelementptr inbounds %struct.pci_dev, ptr %99, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %100, ptr noundef nonnull @.str.23) #19
  br label %280

101:                                              ; preds = %93
  %102 = load i32, ptr %75, align 8
  %103 = and i32 %102, 2147483647
  %104 = icmp eq i32 %103, 18
  br i1 %104, label %105, label %280

105:                                              ; preds = %101
  %106 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %107 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %106, i32 noundef 3520, i32 noundef 40) #22
  %108 = icmp eq ptr %107, null
  br i1 %108, label %280, label %109

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %1, i32 0, i32 3, i32 3
  %111 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %1, i32 0, i32 3, i32 3, i32 0, i32 0, i32 3
  %112 = load i16, ptr %111, align 4
  %113 = icmp eq i16 %112, -1
  br i1 %113, label %114, label %119

114:                                              ; preds = %109
  %115 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %1, i32 0, i32 3, i32 1, i32 0, i32 0, i32 3
  %116 = load i16, ptr %115, align 4
  %117 = getelementptr inbounds %struct.igb_nfc_filter, ptr %107, i32 0, i32 1
  %118 = getelementptr inbounds %struct.igb_nfc_filter, ptr %107, i32 0, i32 1, i32 1
  store i16 %116, ptr %118, align 2
  store i8 1, ptr %117, align 8
  br label %119

119:                                              ; preds = %114, %109
  %120 = getelementptr inbounds %struct.ethhdr, ptr %110, i32 0, i32 1
  %121 = load i16, ptr %120, align 2
  %122 = getelementptr %struct.ethtool_rxnfc, ptr %1, i32 0, i32 3, i32 3, i32 0, i32 0, i32 2
  %123 = load i16, ptr %122, align 2
  %124 = and i16 %123, %121
  %125 = getelementptr %struct.ethhdr, ptr %110, i32 0, i32 1, i32 4
  %126 = load i16, ptr %125, align 2
  %127 = and i16 %124, %126
  %128 = icmp eq i16 %127, -1
  br i1 %128, label %129, label %140

129:                                              ; preds = %119
  %130 = getelementptr inbounds %struct.igb_nfc_filter, ptr %107, i32 0, i32 1
  %131 = load i8, ptr %130, align 8
  %132 = or i8 %131, 4
  store i8 %132, ptr %130, align 8
  %133 = getelementptr inbounds %struct.igb_nfc_filter, ptr %107, i32 0, i32 1, i32 3
  %134 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %1, i32 0, i32 3, i32 1
  %135 = getelementptr inbounds %struct.ethhdr, ptr %134, i32 0, i32 1
  %136 = load i32, ptr %135, align 4
  store i32 %136, ptr %133, align 4
  %137 = getelementptr %struct.ethhdr, ptr %134, i32 0, i32 1, i32 4
  %138 = load i16, ptr %137, align 2
  %139 = getelementptr %struct.igb_nfc_filter, ptr %107, i32 0, i32 1, i32 3, i32 4
  store i16 %138, ptr %139, align 2
  br label %140

140:                                              ; preds = %129, %119
  %141 = load i16, ptr %110, align 2
  %142 = getelementptr i8, ptr %110, i32 2
  %143 = load i16, ptr %142, align 2
  %144 = and i16 %143, %141
  %145 = getelementptr %struct.ethtool_rxnfc, ptr %1, i32 0, i32 3, i32 3, i32 0, i32 0, i32 1
  %146 = load i16, ptr %145, align 2
  %147 = and i16 %144, %146
  %148 = icmp eq i16 %147, -1
  br i1 %148, label %149, label %159

149:                                              ; preds = %140
  %150 = getelementptr inbounds %struct.igb_nfc_filter, ptr %107, i32 0, i32 1
  %151 = load i8, ptr %150, align 8
  %152 = or i8 %151, 8
  store i8 %152, ptr %150, align 8
  %153 = getelementptr inbounds %struct.igb_nfc_filter, ptr %107, i32 0, i32 1, i32 4
  %154 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %1, i32 0, i32 3, i32 1
  %155 = load i32, ptr %154, align 4
  store i32 %155, ptr %153, align 4
  %156 = getelementptr %struct.ethtool_rxnfc, ptr %1, i32 0, i32 3, i32 1, i32 0, i32 0, i32 1
  %157 = load i16, ptr %156, align 2
  %158 = getelementptr %struct.igb_nfc_filter, ptr %107, i32 0, i32 1, i32 4, i32 4
  store i16 %157, ptr %158, align 8
  br label %159

159:                                              ; preds = %149, %140
  %160 = load i32, ptr %75, align 8
  %161 = icmp sgt i32 %160, -1
  br i1 %161, label %172, label %162

162:                                              ; preds = %159
  %163 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %1, i32 0, i32 3, i32 4, i32 3
  %164 = load i16, ptr %163, align 2
  switch i16 %164, label %246 [
    i16 0, label %172
    i16 224, label %165
  ]

165:                                              ; preds = %162
  %166 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %1, i32 0, i32 3, i32 2, i32 3
  %167 = load i16, ptr %166, align 2
  %168 = getelementptr inbounds %struct.igb_nfc_filter, ptr %107, i32 0, i32 1
  %169 = getelementptr inbounds %struct.igb_nfc_filter, ptr %107, i32 0, i32 1, i32 2
  store i16 %167, ptr %169, align 4
  %170 = load i8, ptr %168, align 8
  %171 = or i8 %170, 2
  store i8 %171, ptr %168, align 8
  br label %172

172:                                              ; preds = %165, %162, %159
  %173 = load i64, ptr %81, align 8
  %174 = trunc i64 %173 to i16
  %175 = getelementptr inbounds %struct.igb_nfc_filter, ptr %107, i32 0, i32 5
  store i16 %174, ptr %175, align 4
  %176 = load i32, ptr %94, align 8
  %177 = trunc i32 %176 to i16
  %178 = getelementptr inbounds %struct.igb_nfc_filter, ptr %107, i32 0, i32 4
  store i16 %177, ptr %178, align 2
  %179 = getelementptr i8, ptr %0, i32 6392
  tail call void @_raw_spin_lock(ptr noundef %179) #20
  %180 = getelementptr i8, ptr %0, i32 6380
  %181 = getelementptr inbounds %struct.igb_nfc_filter, ptr %107, i32 0, i32 1
  br label %182

182:                                              ; preds = %186, %172
  %183 = phi ptr [ %180, %172 ], [ %184, %186 ]
  %184 = load ptr, ptr %183, align 4
  %185 = icmp eq ptr %184, null
  br i1 %185, label %194, label %186

186:                                              ; preds = %182
  %187 = getelementptr inbounds %struct.igb_nfc_filter, ptr %184, i32 0, i32 1
  %188 = tail call i32 @bcmp(ptr noundef dereferenceable(18) %181, ptr noundef dereferenceable(18) %187, i32 18) #20
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %182

190:                                              ; preds = %186
  %191 = getelementptr i8, ptr %0, i32 2308
  %192 = load ptr, ptr %191, align 4
  %193 = getelementptr inbounds %struct.pci_dev, ptr %192, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %193, ptr noundef nonnull @.str.24) #19
  br label %242

194:                                              ; preds = %182
  %195 = tail call i32 @igb_add_filter(ptr noundef %3, ptr noundef nonnull %107) #20
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %242

197:                                              ; preds = %194
  %198 = load i16, ptr %178, align 2
  br label %199

199:                                              ; preds = %204, %197
  %200 = phi ptr [ null, %197 ], [ %202, %204 ]
  %201 = phi ptr [ %180, %197 ], [ %202, %204 ]
  %202 = load ptr, ptr %201, align 4
  %203 = icmp eq ptr %202, null
  br i1 %203, label %221, label %204

204:                                              ; preds = %199
  %205 = getelementptr inbounds %struct.igb_nfc_filter, ptr %202, i32 0, i32 4
  %206 = load i16, ptr %205, align 2
  %207 = icmp ult i16 %206, %198
  br i1 %207, label %199, label %208

208:                                              ; preds = %204
  %209 = icmp eq i16 %206, %198
  br i1 %209, label %210, label %221

210:                                              ; preds = %208
  %211 = load ptr, ptr %202, align 4
  %212 = getelementptr inbounds %struct.hlist_node, ptr %202, i32 0, i32 1
  %213 = load ptr, ptr %212, align 4
  store volatile ptr %211, ptr %213, align 4
  %214 = icmp eq ptr %211, null
  br i1 %214, label %217, label %215

215:                                              ; preds = %210
  %216 = getelementptr inbounds %struct.hlist_node, ptr %211, i32 0, i32 1
  store volatile ptr %213, ptr %216, align 4
  br label %217

217:                                              ; preds = %215, %210
  store ptr inttoptr (i32 256 to ptr), ptr %202, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %212, align 4
  tail call void @kfree(ptr noundef nonnull %202) #20
  %218 = getelementptr i8, ptr %0, i32 6388
  %219 = load i32, ptr %218, align 4
  %220 = add i32 %219, -1
  store i32 %220, ptr %218, align 4
  br label %221

221:                                              ; preds = %217, %208, %199
  store ptr null, ptr %107, align 8
  %222 = getelementptr inbounds %struct.hlist_node, ptr %107, i32 0, i32 1
  store ptr null, ptr %222, align 4
  %223 = icmp eq ptr %200, null
  br i1 %223, label %230, label %224

224:                                              ; preds = %221
  %225 = load ptr, ptr %200, align 4
  store volatile ptr %225, ptr %107, align 8
  store volatile ptr %107, ptr %200, align 4
  store volatile ptr %200, ptr %222, align 4
  %226 = load ptr, ptr %107, align 8
  %227 = icmp eq ptr %226, null
  br i1 %227, label %236, label %228

228:                                              ; preds = %224
  %229 = getelementptr inbounds %struct.hlist_node, ptr %226, i32 0, i32 1
  store volatile ptr %107, ptr %229, align 4
  br label %236

230:                                              ; preds = %221
  %231 = load ptr, ptr %180, align 4
  store volatile ptr %231, ptr %107, align 8
  %232 = icmp eq ptr %231, null
  br i1 %232, label %235, label %233

233:                                              ; preds = %230
  %234 = getelementptr inbounds %struct.hlist_node, ptr %231, i32 0, i32 1
  store volatile ptr %107, ptr %234, align 4
  br label %235

235:                                              ; preds = %233, %230
  store volatile ptr %107, ptr %180, align 4
  store volatile ptr %180, ptr %222, align 4
  br label %236

236:                                              ; preds = %235, %228, %224
  %237 = getelementptr i8, ptr %0, i32 6388
  %238 = load i32, ptr %237, align 4
  %239 = add i32 %238, 1
  store i32 %239, ptr %237, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !52
  %240 = load i16, ptr %179, align 4
  %241 = add i16 %240, 1
  store i16 %241, ptr %179, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #20, !srcloc !53
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #20, !srcloc !54
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !55
  br label %280

242:                                              ; preds = %194, %190
  %243 = phi i32 [ -17, %190 ], [ %195, %194 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !52
  %244 = load i16, ptr %179, align 4
  %245 = add i16 %244, 1
  store i16 %245, ptr %179, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #20, !srcloc !53
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #20, !srcloc !54
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !55
  br label %246

246:                                              ; preds = %242, %162
  %247 = phi i32 [ %243, %242 ], [ -22, %162 ]
  tail call void @kfree(ptr noundef nonnull %107) #20
  br label %280

248:                                              ; preds = %2
  %249 = getelementptr i8, ptr %0, i32 6392
  tail call void @_raw_spin_lock(ptr noundef %249) #20
  %250 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %1, i32 0, i32 3, i32 6
  %251 = load i32, ptr %250, align 8
  %252 = trunc i32 %251 to i16
  %253 = getelementptr i8, ptr %0, i32 6380
  br label %254

254:                                              ; preds = %258, %248
  %255 = phi ptr [ %253, %248 ], [ %256, %258 ]
  %256 = load ptr, ptr %255, align 4
  %257 = icmp eq ptr %256, null
  br i1 %257, label %276, label %258

258:                                              ; preds = %254
  %259 = getelementptr inbounds %struct.igb_nfc_filter, ptr %256, i32 0, i32 4
  %260 = load i16, ptr %259, align 2
  %261 = icmp ult i16 %260, %252
  br i1 %261, label %254, label %262

262:                                              ; preds = %258
  %263 = icmp eq i16 %260, %252
  br i1 %263, label %264, label %276

264:                                              ; preds = %262
  %265 = tail call i32 @igb_erase_filter(ptr noundef %3, ptr noundef nonnull %256) #20
  %266 = load ptr, ptr %256, align 4
  %267 = getelementptr inbounds %struct.hlist_node, ptr %256, i32 0, i32 1
  %268 = load ptr, ptr %267, align 4
  store volatile ptr %266, ptr %268, align 4
  %269 = icmp eq ptr %266, null
  br i1 %269, label %272, label %270

270:                                              ; preds = %264
  %271 = getelementptr inbounds %struct.hlist_node, ptr %266, i32 0, i32 1
  store volatile ptr %268, ptr %271, align 4
  br label %272

272:                                              ; preds = %270, %264
  store ptr inttoptr (i32 256 to ptr), ptr %256, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %267, align 4
  tail call void @kfree(ptr noundef nonnull %256) #20
  %273 = getelementptr i8, ptr %0, i32 6388
  %274 = load i32, ptr %273, align 4
  %275 = add i32 %274, -1
  store i32 %275, ptr %273, align 4
  br label %276

276:                                              ; preds = %272, %262, %254
  %277 = phi i32 [ 0, %272 ], [ -22, %262 ], [ -22, %254 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !52
  %278 = load i16, ptr %249, align 4
  %279 = add i16 %278, 1
  store i16 %279, ptr %249, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #20, !srcloc !53
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #20, !srcloc !54
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !55
  br label %280

280:                                              ; preds = %276, %246, %236, %105, %101, %97, %89, %72, %62, %58, %42, %41, %38, %31, %28, %21, %18, %15, %12, %5, %2
  %281 = phi i32 [ -95, %2 ], [ %277, %276 ], [ -22, %5 ], [ -22, %15 ], [ -22, %18 ], [ -22, %21 ], [ -22, %28 ], [ -22, %31 ], [ -22, %38 ], [ -22, %12 ], [ 0, %58 ], [ 0, %62 ], [ 0, %42 ], [ 0, %41 ], [ -22, %89 ], [ -22, %97 ], [ %247, %246 ], [ 0, %236 ], [ -95, %72 ], [ -22, %101 ], [ -12, %105 ]
  ret i32 %281
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @igb_get_rxfh_indir_size(ptr nocapture noundef readnone %0) #7 {
  ret i32 128
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @igb_get_rxfh(ptr nocapture noundef readonly %0, ptr noundef writeonly %1, ptr nocapture noundef readnone %2, ptr noundef writeonly %3) #12 {
  %5 = getelementptr i8, ptr %0, i32 1408
  %6 = icmp eq ptr %3, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  store i8 1, ptr %3, align 1
  br label %8

8:                                                ; preds = %7, %4
  %9 = icmp eq ptr %1, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %10, %8
  %11 = phi i32 [ %16, %10 ], [ 0, %8 ]
  %12 = getelementptr %struct.igb_adapter, ptr %5, i32 0, i32 82, i32 %11
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = getelementptr i32, ptr %1, i32 %11
  store i32 %14, ptr %15, align 4
  %16 = add nuw nsw i32 %11, 1
  %17 = icmp eq i32 %16, 128
  br i1 %17, label %18, label %10

18:                                               ; preds = %10, %8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @igb_set_rxfh(ptr noundef %0, ptr noundef readonly %1, ptr noundef readnone %2, i8 noundef zeroext %3) #0 {
  %5 = getelementptr i8, ptr %0, i32 1408
  %6 = icmp ne ptr %2, null
  %7 = icmp ugt i8 %3, 1
  %8 = or i1 %6, %7
  br i1 %8, label %83, label %9

9:                                                ; preds = %4
  %10 = icmp eq ptr %1, null
  br i1 %10, label %83, label %11

11:                                               ; preds = %9
  %12 = getelementptr i8, ptr %0, i32 4732
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr i8, ptr %0, i32 2592
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %17, label %22

17:                                               ; preds = %11
  %18 = getelementptr i8, ptr %0, i32 4720
  %19 = load i32, ptr %18, align 16
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, i32 %13, i32 2
  br label %22

22:                                               ; preds = %17, %11
  %23 = phi i32 [ %13, %11 ], [ %21, %17 ]
  br label %27

24:                                               ; preds = %27
  %25 = add nuw nsw i32 %28, 1
  %26 = icmp eq i32 %25, 128
  br i1 %26, label %32, label %27

27:                                               ; preds = %24, %22
  %28 = phi i32 [ 0, %22 ], [ %25, %24 ]
  %29 = getelementptr i32, ptr %1, i32 %28
  %30 = load i32, ptr %29, align 4
  %31 = icmp ult i32 %30, %23
  br i1 %31, label %24, label %83

32:                                               ; preds = %32, %24
  %33 = phi i32 [ %38, %32 ], [ 0, %24 ]
  %34 = getelementptr i32, ptr %1, i32 %33
  %35 = load i32, ptr %34, align 4
  %36 = trunc i32 %35 to i8
  %37 = getelementptr %struct.igb_adapter, ptr %5, i32 0, i32 82, i32 %33
  store i8 %36, ptr %37, align 1
  %38 = add nuw nsw i32 %33, 1
  %39 = icmp eq i32 %38, 128
  br i1 %39, label %40, label %32

40:                                               ; preds = %32
  switch i32 %15, label %47 [
    i32 1, label %41
    i32 2, label %42
  ]

41:                                               ; preds = %40
  br label %47

42:                                               ; preds = %40
  %43 = getelementptr i8, ptr %0, i32 4720
  %44 = load i32, ptr %43, align 16
  %45 = icmp eq i32 %44, 0
  %46 = select i1 %45, i32 0, i32 3
  br label %47

47:                                               ; preds = %42, %41, %40
  %48 = phi i32 [ 0, %40 ], [ 6, %41 ], [ %46, %42 ]
  %49 = getelementptr i8, ptr %0, i32 2516
  br label %50

50:                                               ; preds = %79, %47
  %51 = phi i32 [ 0, %47 ], [ %81, %79 ]
  %52 = phi i32 [ 23552, %47 ], [ %80, %79 ]
  %53 = or i32 %51, 3
  %54 = getelementptr %struct.igb_adapter, ptr %5, i32 0, i32 82, i32 %53
  %55 = load i8, ptr %54, align 1
  %56 = or i32 %51, 2
  %57 = getelementptr %struct.igb_adapter, ptr %5, i32 0, i32 82, i32 %56
  %58 = load i8, ptr %57, align 1
  %59 = or i32 %51, 1
  %60 = getelementptr %struct.igb_adapter, ptr %5, i32 0, i32 82, i32 %59
  %61 = load i8, ptr %60, align 1
  %62 = getelementptr %struct.igb_adapter, ptr %5, i32 0, i32 82, i32 %51
  %63 = load i8, ptr %62, align 1
  %64 = load volatile ptr, ptr %49, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %79, label %66, !prof !9

66:                                               ; preds = %50
  %67 = zext i8 %55 to i32
  %68 = shl nuw nsw i32 %67, 16
  %69 = zext i8 %58 to i32
  %70 = shl nuw nsw i32 %69, 8
  %71 = or i32 %70, %68
  %72 = zext i8 %61 to i32
  %73 = or i32 %71, %72
  %74 = shl nuw i32 %73, 8
  %75 = zext i8 %63 to i32
  %76 = or i32 %74, %75
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !15
  tail call void @arm_heavy_mb() #20
  %77 = shl i32 %76, %48
  %78 = getelementptr i8, ptr %64, i32 %52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 %77) #20, !srcloc !11
  br label %79

79:                                               ; preds = %66, %50
  %80 = add nuw nsw i32 %52, 4
  %81 = add nuw nsw i32 %51, 4
  %82 = icmp ult i32 %51, 124
  br i1 %82, label %50, label %83

83:                                               ; preds = %79, %27, %9, %4
  %84 = phi i32 [ -95, %4 ], [ 0, %9 ], [ 0, %79 ], [ -22, %27 ]
  ret i32 %84
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @igb_get_channels(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 1408
  %4 = tail call i32 @igb_get_max_rss_queues(ptr noundef %3) #20
  %5 = getelementptr inbounds %struct.ethtool_channels, ptr %1, i32 0, i32 4
  store i32 %4, ptr %5, align 4
  %6 = getelementptr i8, ptr %0, i32 1932
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 8192
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.ethtool_channels, ptr %1, i32 0, i32 3
  store i32 1, ptr %11, align 4
  %12 = getelementptr inbounds %struct.ethtool_channels, ptr %1, i32 0, i32 7
  store i32 1, ptr %12, align 4
  br label %13

13:                                               ; preds = %10, %2
  %14 = getelementptr i8, ptr %0, i32 4732
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.ethtool_channels, ptr %1, i32 0, i32 8
  store i32 %15, ptr %16, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @igb_set_channels(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 1408
  %4 = getelementptr inbounds %struct.ethtool_channels, ptr %1, i32 0, i32 8
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %28, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ethtool_channels, ptr %1, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %28

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.ethtool_channels, ptr %1, i32 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.ethtool_channels, ptr %1, i32 0, i32 7
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %28

19:                                               ; preds = %15
  %20 = tail call i32 @igb_get_max_rss_queues(ptr noundef %3) #20
  %21 = icmp ugt i32 %5, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %19
  %23 = getelementptr i8, ptr %0, i32 4732
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %5, %24
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  store i32 %5, ptr %23, align 4
  tail call void @igb_set_flag_queue_pairs(ptr noundef %3, i32 noundef %20) #20
  %27 = tail call i32 @igb_reinit_queues(ptr noundef %3) #20
  br label %28

28:                                               ; preds = %26, %22, %19, %15, %11, %7, %2
  %29 = phi i32 [ %27, %26 ], [ -22, %11 ], [ -22, %7 ], [ -22, %2 ], [ -22, %15 ], [ -22, %19 ], [ 0, %22 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @igb_get_ts_info(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 4744
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @ptp_clock_index(ptr noundef nonnull %4) #20
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi i32 [ %7, %6 ], [ -1, %2 ]
  %10 = getelementptr inbounds %struct.ethtool_ts_info, ptr %1, i32 0, i32 2
  store i32 %9, ptr %10, align 4
  %11 = getelementptr i8, ptr %0, i32 2592
  %12 = load i32, ptr %11, align 16
  switch i32 %12, label %22 [
    i32 1, label %13
    i32 2, label %15
    i32 3, label %15
    i32 4, label %15
    i32 5, label %15
    i32 6, label %15
    i32 7, label %15
  ]

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.ethtool_ts_info, ptr %1, i32 0, i32 1
  store i32 26, ptr %14, align 4
  br label %22

15:                                               ; preds = %8, %8, %8, %8, %8, %8
  %16 = getelementptr inbounds %struct.ethtool_ts_info, ptr %1, i32 0, i32 1
  store i32 95, ptr %16, align 4
  %17 = getelementptr inbounds %struct.ethtool_ts_info, ptr %1, i32 0, i32 3
  store i32 3, ptr %17, align 4
  %18 = getelementptr inbounds %struct.ethtool_ts_info, ptr %1, i32 0, i32 5
  store i32 1, ptr %18, align 4
  %19 = load i32, ptr %11, align 16
  %20 = icmp ult i32 %19, 3
  %21 = select i1 %20, i32 4145, i32 3
  store i32 %21, ptr %18, align 4
  br label %22

22:                                               ; preds = %15, %13, %8
  %23 = phi i32 [ 0, %15 ], [ 0, %13 ], [ -95, %8 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @igb_get_module_info(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = getelementptr i8, ptr %0, i32 2512
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #20
  store i16 0, ptr %3, align 2, !annotation !44
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #20
  store i16 0, ptr %4, align 2, !annotation !44
  %6 = getelementptr i8, ptr %0, i32 3284
  %7 = load i32, ptr %6, align 4
  %8 = icmp ult i32 %7, 2
  br i1 %8, label %27, label %9

9:                                                ; preds = %2
  %10 = call i32 @igb_read_phy_reg_i2c(ptr noundef %5, i32 noundef 94, ptr noundef nonnull %3) #20
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %27

12:                                               ; preds = %9
  %13 = call i32 @igb_read_phy_reg_i2c(ptr noundef %5, i32 noundef 92, ptr noundef nonnull %4) #20
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %12
  %16 = load i16, ptr %4, align 2
  %17 = and i16 %16, 4
  %18 = icmp ne i16 %17, 0
  %19 = load i16, ptr %3, align 2
  %20 = and i16 %19, 255
  %21 = icmp eq i16 %20, 0
  %22 = select i1 %21, i1 true, i1 %18
  %23 = getelementptr inbounds %struct.ethtool_modinfo, ptr %1, i32 0, i32 1
  %24 = select i1 %22, i32 1, i32 2
  %25 = select i1 %22, i32 256, i32 512
  store i32 %24, ptr %23, align 4
  %26 = getelementptr inbounds %struct.ethtool_modinfo, ptr %1, i32 0, i32 2
  store i32 %25, ptr %26, align 4
  br label %27

27:                                               ; preds = %15, %12, %9, %2
  %28 = phi i32 [ -95, %2 ], [ -5, %9 ], [ -5, %12 ], [ 0, %15 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #20
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @igb_get_module_eeprom(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 2512
  %5 = getelementptr inbounds %struct.ethtool_eeprom, ptr %1, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %46, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.ethtool_eeprom, ptr %1, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = lshr i32 %10, 1
  %12 = add i32 %6, 131071
  %13 = add i32 %12, %10
  %14 = lshr i32 %13, 1
  %15 = and i32 %14, 65535
  %16 = and i32 %11, 65535
  %17 = sub nsw i32 %15, %16
  %18 = add nsw i32 %17, 1
  %19 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %18, i32 2) #20
  %20 = extractvalue { i32, i1 } %19, 1
  br i1 %20, label %46, label %21, !prof !9

21:                                               ; preds = %8
  %22 = extractvalue { i32, i1 } %19, 0
  %23 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %22, i32 noundef 3264) #21
  %24 = icmp eq ptr %23, null
  br i1 %24, label %46, label %25

25:                                               ; preds = %21
  %26 = icmp slt i32 %17, 0
  br i1 %26, label %39, label %27

27:                                               ; preds = %34, %25
  %28 = phi i32 [ %37, %34 ], [ 0, %25 ]
  %29 = add nuw nsw i32 %28, %16
  %30 = shl nuw i32 %29, 1
  %31 = getelementptr i16, ptr %23, i32 %28
  %32 = tail call i32 @igb_read_phy_reg_i2c(ptr noundef %4, i32 noundef %30, ptr noundef %31) #20
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %27
  %35 = load i16, ptr %31, align 2
  %36 = tail call i16 @llvm.bswap.i16(i16 %35) #20
  store i16 %36, ptr %31, align 2
  %37 = add nuw nsw i32 %28, 1
  %38 = icmp slt i32 %28, %17
  br i1 %38, label %27, label %39

39:                                               ; preds = %34, %25
  %40 = load i32, ptr %9, align 4
  %41 = and i32 %40, 1
  %42 = getelementptr i8, ptr %23, i32 %41
  %43 = load i32, ptr %5, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %2, ptr align 1 %42, i32 %43, i1 false)
  br label %44

44:                                               ; preds = %39, %27
  %45 = phi i32 [ 0, %39 ], [ -5, %27 ]
  tail call void @kfree(ptr noundef nonnull %23) #20
  br label %46

46:                                               ; preds = %44, %21, %8, %3
  %47 = phi i32 [ -22, %3 ], [ -12, %21 ], [ -12, %8 ], [ %45, %44 ]
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @igb_get_eee(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i16, align 2
  %4 = getelementptr i8, ptr %0, i32 2512
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #20
  store i16 0, ptr %3, align 2, !annotation !44
  %5 = getelementptr i8, ptr %0, i32 2592
  %6 = load i32, ptr %5, align 4
  %7 = icmp ult i32 %6, 4
  br i1 %7, label %100, label %8

8:                                                ; preds = %2
  %9 = getelementptr i8, ptr %0, i32 3284
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %100

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ethtool_eee, ptr %1, i32 0, i32 1
  store i32 40, ptr %13, align 4
  %14 = getelementptr i8, ptr %0, i32 3478
  %15 = load i8, ptr %14, align 2, !range !8
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %37

17:                                               ; preds = %12
  %18 = getelementptr i8, ptr %0, i32 6376
  %19 = load i16, ptr %18, align 8
  %20 = zext i16 %19 to i32
  %21 = shl nuw nsw i32 %20, 2
  %22 = and i32 %21, 8
  %23 = shl nuw nsw i32 %20, 3
  %24 = and i32 %23, 32
  %25 = or i32 %24, %22
  %26 = shl nuw nsw i32 %20, 9
  %27 = and i32 %26, 4096
  %28 = or i32 %25, %27
  %29 = shl nuw nsw i32 %20, 13
  %30 = and i32 %29, 131072
  %31 = or i32 %28, %30
  %32 = and i32 %29, 262144
  %33 = or i32 %31, %32
  %34 = and i32 %29, 524288
  %35 = or i32 %33, %34
  %36 = getelementptr inbounds %struct.ethtool_eee, ptr %1, i32 0, i32 2
  store i32 %35, ptr %36, align 4
  br label %37

37:                                               ; preds = %17, %12
  %38 = load i32, ptr %5, align 4
  %39 = icmp eq i32 %38, 5
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.ethtool_eee, ptr %1, i32 0, i32 4
  %42 = tail call i32 @igb_get_eee_status_i354(ptr noundef %4, ptr noundef %41) #20
  br label %54

43:                                               ; preds = %37
  %44 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 3632) #20
  %45 = and i32 %44, 536870912
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.ethtool_eee, ptr %1, i32 0, i32 4
  store i32 1, ptr %48, align 4
  br label %49

49:                                               ; preds = %47, %43
  %50 = and i32 %44, 65536
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.ethtool_eee, ptr %1, i32 0, i32 6
  store i32 1, ptr %53, align 4
  br label %54

54:                                               ; preds = %52, %49, %40
  %55 = load i32, ptr %5, align 4
  switch i32 %55, label %81 [
    i32 4, label %56
    i32 5, label %59
    i32 6, label %59
    i32 7, label %59
  ]

56:                                               ; preds = %54
  %57 = call i32 @igb_read_emi_reg(ptr noundef %4, i16 noundef zeroext 1039, ptr noundef nonnull %3) #20
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %62, label %100

59:                                               ; preds = %54, %54, %54
  %60 = call i32 @igb_read_xmdio_reg(ptr noundef %4, i16 noundef zeroext 61, i8 noundef zeroext 7, ptr noundef nonnull %3) #20
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %100

62:                                               ; preds = %59, %56
  %63 = load i16, ptr %3, align 2
  %64 = zext i16 %63 to i32
  %65 = shl nuw nsw i32 %64, 2
  %66 = and i32 %65, 8
  %67 = shl nuw nsw i32 %64, 3
  %68 = and i32 %67, 32
  %69 = or i32 %68, %66
  %70 = shl nuw nsw i32 %64, 9
  %71 = and i32 %70, 4096
  %72 = or i32 %69, %71
  %73 = shl nuw nsw i32 %64, 13
  %74 = and i32 %73, 131072
  %75 = or i32 %72, %74
  %76 = and i32 %73, 262144
  %77 = or i32 %75, %76
  %78 = and i32 %73, 524288
  %79 = or i32 %77, %78
  %80 = getelementptr inbounds %struct.ethtool_eee, ptr %1, i32 0, i32 3
  store i32 %79, ptr %80, align 4
  br label %81

81:                                               ; preds = %62, %54
  %82 = load i8, ptr %14, align 2, !range !8
  %83 = xor i8 %82, 1
  %84 = zext i8 %83 to i32
  %85 = getelementptr inbounds %struct.ethtool_eee, ptr %1, i32 0, i32 5
  store i32 %84, ptr %85, align 4
  %86 = load i32, ptr %5, align 4
  %87 = icmp eq i32 %86, 5
  %88 = icmp eq i8 %82, 0
  %89 = select i1 %87, i1 %88, i1 false
  br i1 %89, label %90, label %92

90:                                               ; preds = %81
  %91 = getelementptr inbounds %struct.ethtool_eee, ptr %1, i32 0, i32 6
  store i32 1, ptr %91, align 4
  br label %92

92:                                               ; preds = %90, %81
  %93 = getelementptr i8, ptr %0, i32 2242
  %94 = load i16, ptr %93, align 2
  %95 = icmp eq i16 %94, 1
  br i1 %95, label %96, label %100

96:                                               ; preds = %92
  store i32 0, ptr %85, align 4
  %97 = getelementptr inbounds %struct.ethtool_eee, ptr %1, i32 0, i32 4
  store i32 0, ptr %97, align 4
  %98 = getelementptr inbounds %struct.ethtool_eee, ptr %1, i32 0, i32 6
  store i32 0, ptr %98, align 4
  %99 = getelementptr inbounds %struct.ethtool_eee, ptr %1, i32 0, i32 2
  store i32 0, ptr %99, align 4
  br label %100

100:                                              ; preds = %96, %92, %59, %56, %8, %2
  %101 = phi i32 [ -95, %8 ], [ -95, %2 ], [ -61, %56 ], [ -61, %59 ], [ 0, %96 ], [ 0, %92 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #20
  ret i32 %101
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @igb_set_eee(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.ethtool_eee, align 4
  %4 = getelementptr i8, ptr %0, i32 1408
  %5 = getelementptr i8, ptr %0, i32 2512
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #20
  %6 = getelementptr i8, ptr %0, i32 2592
  %7 = load i32, ptr %6, align 4
  %8 = icmp ult i32 %7, 4
  br i1 %8, label %103, label %9

9:                                                ; preds = %2
  %10 = getelementptr i8, ptr %0, i32 3284
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %103

13:                                               ; preds = %9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %3, i8 0, i32 40, i1 false)
  %14 = call i32 @igb_get_eee(ptr noundef %0, ptr noundef nonnull %3)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %103

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.ethtool_eee, ptr %3, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %42, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.ethtool_eee, ptr %3, i32 0, i32 6
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.ethtool_eee, ptr %1, i32 0, i32 6
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %26, label %98

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.ethtool_eee, ptr %1, i32 0, i32 7
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %98

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.ethtool_eee, ptr %1, i32 0, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = icmp ne i32 %32, 0
  %34 = and i32 %32, -41
  %35 = icmp eq i32 %34, 0
  %36 = and i1 %33, %35
  br i1 %36, label %37, label %98

37:                                               ; preds = %30
  %38 = and i32 %32, 8
  %39 = icmp ne i32 %38, 0
  %40 = and i32 %32, 32
  %41 = icmp ne i32 %40, 0
  br label %49

42:                                               ; preds = %16
  %43 = getelementptr inbounds %struct.ethtool_eee, ptr %1, i32 0, i32 5
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %98, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.ethtool_eee, ptr %1, i32 0, i32 2
  %48 = load i32, ptr %47, align 4
  br label %49

49:                                               ; preds = %46, %37
  %50 = phi i32 [ %32, %37 ], [ %48, %46 ]
  %51 = phi i1 [ %41, %37 ], [ true, %46 ]
  %52 = phi i1 [ %39, %37 ], [ true, %46 ]
  %53 = trunc i32 %50 to i16
  %54 = lshr i16 %53, 2
  %55 = and i16 %54, 2
  %56 = lshr i16 %53, 3
  %57 = and i16 %56, 4
  %58 = or i16 %57, %55
  %59 = lshr i16 %53, 9
  %60 = and i16 %59, 8
  %61 = or i16 %58, %60
  %62 = lshr i32 %50, 13
  %63 = trunc i32 %62 to i16
  %64 = and i16 %63, 16
  %65 = or i16 %61, %64
  %66 = and i16 %63, 32
  %67 = or i16 %65, %66
  %68 = and i16 %63, 64
  %69 = or i16 %67, %68
  %70 = getelementptr i8, ptr %0, i32 6376
  store i16 %69, ptr %70, align 8
  %71 = getelementptr i8, ptr %0, i32 3478
  %72 = load i8, ptr %71, align 2, !range !8
  %73 = getelementptr inbounds %struct.ethtool_eee, ptr %1, i32 0, i32 5
  %74 = load i32, ptr %73, align 4
  %75 = icmp eq i32 %74, 0
  %76 = zext i1 %75 to i8
  %77 = icmp eq i8 %72, %76
  br i1 %77, label %88, label %78

78:                                               ; preds = %49
  store i8 %76, ptr %71, align 2
  %79 = getelementptr i8, ptr %0, i32 1932
  %80 = load i32, ptr %79, align 4
  %81 = or i32 %80, 16384
  store i32 %81, ptr %79, align 4
  %82 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %83 = load volatile i32, ptr %82, align 4
  %84 = and i32 %83, 1
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %78
  call void @igb_reinit_locked(ptr noundef %4) #20
  br label %88

87:                                               ; preds = %78
  call void @igb_reset(ptr noundef %4) #20
  br label %88

88:                                               ; preds = %87, %86, %49
  %89 = load i32, ptr %6, align 4
  %90 = icmp eq i32 %89, 5
  br i1 %90, label %91, label %93

91:                                               ; preds = %88
  %92 = call i32 @igb_set_eee_i354(ptr noundef %5, i1 noundef zeroext %51, i1 noundef zeroext %52) #20
  br label %95

93:                                               ; preds = %88
  %94 = call i32 @igb_set_eee_i350(ptr noundef %5, i1 noundef zeroext %51, i1 noundef zeroext %52) #20
  br label %95

95:                                               ; preds = %93, %91
  %96 = phi i32 [ %92, %91 ], [ %94, %93 ]
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %103, label %98

98:                                               ; preds = %95, %42, %30, %26, %20
  %99 = phi ptr [ @.str.25, %20 ], [ @.str.26, %26 ], [ @.str.27, %30 ], [ @.str.28, %42 ], [ @.str.29, %95 ]
  %100 = getelementptr i8, ptr %0, i32 2308
  %101 = load ptr, ptr %100, align 4
  %102 = getelementptr inbounds %struct.pci_dev, ptr %101, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %102, ptr noundef nonnull %99) #19
  br label %103

103:                                              ; preds = %98, %95, %13, %9, %2
  %104 = phi i32 [ -95, %9 ], [ -95, %2 ], [ %14, %13 ], [ 0, %95 ], [ -22, %98 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #20
  ret i32 %104
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @igb_get_link_ksettings(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 3480
  %4 = getelementptr i8, ptr %0, i32 2308
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44, i32 11, i32 18
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 2
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44, i32 11, i32 15
  %11 = load i16, ptr %10, align 8
  %12 = and i16 %11, 7
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %9, %2
  %15 = getelementptr i8, ptr %0, i32 2512
  %16 = tail call i32 @igb_rd32(ptr noundef %15, i32 noundef 8) #20
  br label %17

17:                                               ; preds = %14, %9
  %18 = phi i32 [ %16, %14 ], [ 0, %9 ]
  %19 = getelementptr i8, ptr %0, i32 3284
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %38

22:                                               ; preds = %17
  %23 = getelementptr i8, ptr %0, i32 3138
  %24 = load i8, ptr %23, align 2, !range !8
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %22
  %27 = getelementptr i8, ptr %0, i32 3288
  %28 = load i16, ptr %27, align 4
  %29 = or i16 %28, 192
  %30 = zext i16 %29 to i32
  br label %31

31:                                               ; preds = %26, %22
  %32 = phi i32 [ %30, %26 ], [ 128, %22 ]
  %33 = getelementptr inbounds %struct.ethtool_link_settings, ptr %1, i32 0, i32 3
  store i8 0, ptr %33, align 1
  %34 = getelementptr i8, ptr %0, i32 3268
  %35 = load i32, ptr %34, align 4
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds %struct.ethtool_link_settings, ptr %1, i32 0, i32 4
  store i8 %36, ptr %37, align 2
  br label %67

38:                                               ; preds = %17
  %39 = getelementptr i8, ptr %0, i32 2592
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 5
  br i1 %41, label %42, label %51

42:                                               ; preds = %38
  %43 = getelementptr i8, ptr %0, i32 3486
  %44 = load i16, ptr %43, align 2
  %45 = icmp eq i16 %44, 8005
  %46 = and i32 %18, 8192
  %47 = icmp eq i32 %46, 0
  %48 = select i1 %45, i1 %47, i1 false
  %49 = select i1 %48, i32 42048, i32 140352
  %50 = select i1 %48, i32 33792, i32 132096
  br label %51

51:                                               ; preds = %42, %38
  %52 = phi i32 [ 140352, %38 ], [ %49, %42 ]
  %53 = phi i32 [ 132096, %38 ], [ %50, %42 ]
  %54 = load i8, ptr %3, align 1
  %55 = and i8 %54, 48
  %56 = icmp eq i8 %55, 0
  %57 = or i32 %52, 8
  %58 = or i32 %53, 8
  %59 = select i1 %56, i32 %52, i32 %57
  %60 = select i1 %56, i32 %53, i32 %58
  %61 = getelementptr i8, ptr %0, i32 3138
  %62 = load i8, ptr %61, align 2, !range !8
  %63 = icmp eq i8 %62, 0
  %64 = or i32 %60, 64
  %65 = select i1 %63, i32 %60, i32 %64
  %66 = getelementptr inbounds %struct.ethtool_link_settings, ptr %1, i32 0, i32 3
  store i8 3, ptr %66, align 1
  br label %67

67:                                               ; preds = %51, %31
  %68 = phi i32 [ 8431, %31 ], [ %59, %51 ]
  %69 = phi i32 [ %32, %31 ], [ %65, %51 ]
  %70 = getelementptr i8, ptr %0, i32 3138
  %71 = load i8, ptr %70, align 2, !range !8
  %72 = icmp eq i8 %71, 1
  %73 = and i32 %69, -24577
  %74 = select i1 %72, i32 %69, i32 %73
  %75 = getelementptr i8, ptr %0, i32 3176
  %76 = load i32, ptr %75, align 4
  switch i32 %76, label %83 [
    i32 3, label %77
    i32 1, label %79
    i32 2, label %81
  ]

77:                                               ; preds = %67
  %78 = or i32 %74, 8192
  br label %83

79:                                               ; preds = %67
  %80 = or i32 %74, 24576
  br label %83

81:                                               ; preds = %67
  %82 = or i32 %74, 16384
  br label %83

83:                                               ; preds = %81, %79, %77, %67
  %84 = phi i32 [ %82, %81 ], [ %80, %79 ], [ %78, %77 ], [ %73, %67 ]
  %85 = and i32 %18, 2
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %105, label %87

87:                                               ; preds = %83
  %88 = and i32 %18, 12288
  %89 = icmp eq i32 %88, 4096
  br i1 %89, label %97, label %90

90:                                               ; preds = %87
  %91 = and i32 %18, 128
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %90
  %94 = and i32 %18, 64
  %95 = icmp eq i32 %94, 0
  %96 = select i1 %95, i32 10, i32 100
  br label %97

97:                                               ; preds = %93, %90, %87
  %98 = phi i32 [ 2500, %87 ], [ 1000, %90 ], [ %96, %93 ]
  %99 = and i32 %18, 1
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %97
  %102 = load i32, ptr %19, align 4
  %103 = icmp ne i32 %102, 1
  %104 = zext i1 %103 to i8
  br label %105

105:                                              ; preds = %101, %97, %83
  %106 = phi i8 [ 1, %97 ], [ -1, %83 ], [ %104, %101 ]
  %107 = phi i32 [ %98, %97 ], [ -1, %83 ], [ %98, %101 ]
  %108 = getelementptr inbounds %struct.ethtool_link_settings, ptr %1, i32 0, i32 2
  store i8 %106, ptr %108, align 4
  %109 = getelementptr inbounds %struct.ethtool_link_settings, ptr %1, i32 0, i32 1
  store i32 %107, ptr %109, align 4
  %110 = load i32, ptr %19, align 4
  %111 = icmp eq i32 %110, 2
  br i1 %111, label %114, label %112

112:                                              ; preds = %105
  %113 = load i8, ptr %70, align 2, !range !8
  br label %114

114:                                              ; preds = %112, %105
  %115 = phi i8 [ 1, %105 ], [ %113, %112 ]
  %116 = getelementptr inbounds %struct.ethtool_link_settings, ptr %1, i32 0, i32 5
  store i8 %115, ptr %116, align 1
  %117 = load i32, ptr %19, align 4
  %118 = icmp eq i32 %117, 1
  br i1 %118, label %119, label %124

119:                                              ; preds = %114
  %120 = getelementptr i8, ptr %0, i32 3308
  %121 = load i8, ptr %120, align 4, !range !8
  %122 = icmp eq i8 %121, 0
  %123 = select i1 %122, i8 1, i8 2
  br label %124

124:                                              ; preds = %119, %114
  %125 = phi i8 [ %123, %119 ], [ 0, %114 ]
  %126 = getelementptr inbounds %struct.ethtool_link_settings, ptr %1, i32 0, i32 7
  store i8 %125, ptr %126, align 1
  %127 = getelementptr i8, ptr %0, i32 3306
  %128 = load i8, ptr %127, align 2
  %129 = icmp eq i8 %128, 0
  %130 = select i1 %129, i8 3, i8 %128
  %131 = getelementptr inbounds %struct.ethtool_link_settings, ptr %1, i32 0, i32 8
  store i8 %130, ptr %131, align 2
  %132 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %1, i32 0, i32 1
  tail call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %132, i32 noundef %68) #20
  %133 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %1, i32 0, i32 1, i32 1
  tail call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %133, i32 noundef %84) #20
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @igb_set_link_ksettings(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr i8, ptr %0, i32 1408
  %5 = getelementptr i8, ptr %0, i32 2512
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #20
  store i32 0, ptr %3, align 4, !annotation !44
  %6 = tail call i32 @igb_check_reset_block(ptr noundef %5) #20
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = getelementptr i8, ptr %0, i32 2308
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.30) #19
  br label %94

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.ethtool_link_settings, ptr %1, i32 0, i32 8
  %14 = load i8, ptr %13, align 2
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %30, label %16

16:                                               ; preds = %12
  %17 = getelementptr i8, ptr %0, i32 3284
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %94

20:                                               ; preds = %16
  %21 = icmp eq i8 %14, 3
  br i1 %21, label %30, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.ethtool_link_settings, ptr %1, i32 0, i32 5
  %24 = load i8, ptr %23, align 1
  %25 = icmp eq i8 %24, 1
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = getelementptr i8, ptr %0, i32 2308
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.31) #19
  br label %94

30:                                               ; preds = %22, %20, %12
  %31 = getelementptr i8, ptr %0, i32 1928
  %32 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %31) #20
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %34, %30
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #20
  %35 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %31) #20
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %34

37:                                               ; preds = %34, %30
  %38 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %1, i32 0, i32 1, i32 1
  %39 = call zeroext i1 @ethtool_convert_link_mode_to_legacy_u32(ptr noundef nonnull %3, ptr noundef %38) #20
  %40 = getelementptr inbounds %struct.ethtool_link_settings, ptr %1, i32 0, i32 5
  %41 = load i8, ptr %40, align 1
  %42 = icmp eq i8 %41, 1
  br i1 %42, label %43, label %69

43:                                               ; preds = %37
  %44 = getelementptr i8, ptr %0, i32 3138
  store i8 1, ptr %44, align 2
  %45 = getelementptr i8, ptr %0, i32 3284
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, 2
  %48 = load i32, ptr %3, align 4
  %49 = trunc i32 %48 to i16
  br i1 %47, label %50, label %58

50:                                               ; preds = %43
  %51 = or i16 %49, 1088
  %52 = getelementptr i8, ptr %0, i32 3288
  store i16 %51, ptr %52, align 4
  %53 = getelementptr i8, ptr %0, i32 2240
  %54 = load i16, ptr %53, align 64
  switch i16 %54, label %61 [
    i16 2500, label %55
    i16 1000, label %56
    i16 100, label %57
  ]

55:                                               ; preds = %50
  store i16 -32768, ptr %52, align 4
  br label %61

56:                                               ; preds = %50
  store i16 32, ptr %52, align 4
  br label %61

57:                                               ; preds = %50
  store i16 8, ptr %52, align 4
  br label %61

58:                                               ; preds = %43
  %59 = or i16 %49, 192
  %60 = getelementptr i8, ptr %0, i32 3288
  store i16 %59, ptr %60, align 4
  br label %61

61:                                               ; preds = %58, %57, %56, %55, %50
  %62 = phi i16 [ -32768, %55 ], [ 32, %56 ], [ 8, %57 ], [ %51, %50 ], [ %59, %58 ]
  %63 = zext i16 %62 to i32
  store i32 %63, ptr %3, align 4
  %64 = getelementptr i8, ptr %0, i32 2280
  %65 = load i8, ptr %64, align 8, !range !8
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %77, label %67

67:                                               ; preds = %61
  %68 = getelementptr i8, ptr %0, i32 3176
  store i32 255, ptr %68, align 4
  br label %77

69:                                               ; preds = %37
  %70 = getelementptr inbounds %struct.ethtool_link_settings, ptr %1, i32 0, i32 1
  %71 = load i32, ptr %70, align 4
  %72 = getelementptr inbounds %struct.ethtool_link_settings, ptr %1, i32 0, i32 2
  %73 = load i8, ptr %72, align 4
  %74 = call i32 @igb_set_spd_dplx(ptr noundef %4, i32 noundef %71, i8 noundef zeroext %73) #20
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %69
  call void @_clear_bit(i32 noundef 1, ptr noundef %31) #20
  br label %94

77:                                               ; preds = %69, %67, %61
  %78 = load i8, ptr %13, align 2
  switch i8 %78, label %79 [
    i8 0, label %83
    i8 3, label %80
  ]

79:                                               ; preds = %77
  br label %80

80:                                               ; preds = %79, %77
  %81 = phi i8 [ %78, %79 ], [ 0, %77 ]
  %82 = getelementptr i8, ptr %0, i32 3306
  store i8 %81, ptr %82, align 2
  br label %83

83:                                               ; preds = %80, %77
  %84 = getelementptr i8, ptr %0, i32 1920
  %85 = load ptr, ptr %84, align 64
  %86 = getelementptr inbounds %struct.net_device, ptr %85, i32 0, i32 6
  %87 = load volatile i32, ptr %86, align 4
  %88 = and i32 %87, 1
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %83
  call void @igb_down(ptr noundef %4) #20
  %91 = call i32 @igb_up(ptr noundef %4) #20
  br label %93

92:                                               ; preds = %83
  call void @igb_reset(ptr noundef %4) #20
  br label %93

93:                                               ; preds = %92, %90
  call void @_clear_bit(i32 noundef 1, ptr noundef %31) #20
  br label %94

94:                                               ; preds = %93, %76, %26, %16, %8
  %95 = phi i32 [ -22, %8 ], [ -22, %26 ], [ 0, %93 ], [ -95, %16 ], [ -22, %76 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #20
  ret i32 %95
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #14

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_set_wakeup_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @igb_reinit_locked(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @igb_has_link(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #15

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #17

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @igb_get_flash_presence_i210(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @igb_set_fw_version(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #16

; Function Attrs: null_pointer_is_valid
declare dso_local void @igb_down(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_setup_tx_resources(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @igb_free_tx_resources(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_setup_rx_resources(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @igb_free_rx_resources(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_up(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @igb_reset(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_force_mac_fc(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_setup_link(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @igb_setup_srrctl(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @igb_power_up_link(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_close(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_open(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @reg_pattern_test(ptr noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 37
  %7 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 37, i32 1
  %8 = and i32 %4, %3
  %9 = load volatile ptr, ptr %7, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %43, label %40, !prof !9

11:                                               ; preds = %43
  %12 = load volatile ptr, ptr %7, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14, !prof !9

14:                                               ; preds = %11
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !57
  tail call void @arm_heavy_mb() #20
  %15 = and i32 %4, -1515870811
  %16 = getelementptr i8, ptr %12, i32 %2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %15) #20, !srcloc !11
  br label %17

17:                                               ; preds = %14, %11
  %18 = tail call i32 @igb_rd32(ptr noundef %6, i32 noundef %2) #20
  %19 = and i32 %18, %3
  %20 = and i32 %8, -1515870811
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %48

22:                                               ; preds = %17
  %23 = load volatile ptr, ptr %7, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25, !prof !9

25:                                               ; preds = %22
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !57
  tail call void @arm_heavy_mb() #20
  %26 = getelementptr i8, ptr %23, i32 %2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 0) #20, !srcloc !11
  br label %27

27:                                               ; preds = %25, %22
  %28 = tail call i32 @igb_rd32(ptr noundef %6, i32 noundef %2) #20
  %29 = and i32 %28, %3
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %48

31:                                               ; preds = %27
  %32 = load volatile ptr, ptr %7, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34, !prof !9

34:                                               ; preds = %31
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !57
  tail call void @arm_heavy_mb() #20
  %35 = getelementptr i8, ptr %32, i32 %2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %4) #20, !srcloc !11
  br label %36

36:                                               ; preds = %34, %31
  %37 = tail call i32 @igb_rd32(ptr noundef %6, i32 noundef %2) #20
  %38 = and i32 %37, %3
  %39 = icmp eq i32 %38, %8
  br i1 %39, label %55, label %48

40:                                               ; preds = %5
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !57
  tail call void @arm_heavy_mb() #20
  %41 = and i32 %4, 1515870810
  %42 = getelementptr i8, ptr %9, i32 %2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %41) #20, !srcloc !11
  br label %43

43:                                               ; preds = %40, %5
  %44 = tail call i32 @igb_rd32(ptr noundef %6, i32 noundef %2) #20
  %45 = and i32 %44, %3
  %46 = and i32 %8, 1515870810
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %11, label %48

48:                                               ; preds = %43, %36, %27, %17
  %49 = phi i32 [ %45, %43 ], [ %19, %17 ], [ %29, %27 ], [ %38, %36 ]
  %50 = phi i32 [ %46, %43 ], [ %20, %17 ], [ 0, %27 ], [ %8, %36 ]
  %51 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 34
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.pci_dev, ptr %52, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.6, i32 noundef %2, i32 noundef %49, i32 noundef %50) #19
  %54 = sext i32 %2 to i64
  store i64 %54, ptr %1, align 8
  br label %55

55:                                               ; preds = %48, %36
  %56 = phi i1 [ true, %48 ], [ false, %36 ]
  ret i1 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @igb_test_intr(i32 noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.igb_adapter, ptr %1, i32 0, i32 37
  %4 = tail call i32 @igb_rd32(ptr noundef %3, i32 noundef 192) #20
  %5 = getelementptr inbounds %struct.igb_adapter, ptr %1, i32 0, i32 40
  %6 = load i32, ptr %5, align 16
  %7 = or i32 %6, %4
  store i32 %7, ptr %5, align 16
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_check_reset_block(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @igb_setup_tctl(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @igb_configure_tx_ring(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @igb_setup_rctl(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @igb_configure_rx_ring(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @igb_alloc_rx_buffers(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_xmit_frame_ring(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dql_reset(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_phy_sw_reset(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethtool_sprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_blink_led(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_led_off(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_cleanup_led(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @igb_update_stats(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_get_max_rss_queues(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @igb_set_flag_queue_pairs(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_reinit_queues(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_clock_index(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_read_phy_reg_i2c(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_get_eee_status_i354(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_read_emi_reg(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_read_xmdio_reg(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_set_eee_i354(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_set_eee_i350(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ethtool_convert_link_mode_to_legacy_u32(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_set_spd_dplx(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { argmemonly nofree nounwind willreturn writeonly }
attributes #15 = { argmemonly nofree nounwind willreturn }
attributes #16 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #18 = { argmemonly nofree nounwind readonly willreturn }
attributes #19 = { cold nounwind }
attributes #20 = { nounwind }
attributes #21 = { nounwind allocsize(0) }
attributes #22 = { nounwind allocsize(2) }

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
!8 = !{i8 0, i8 2}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2156810442}
!11 = !{i64 5337536}
!12 = !{i64 2156814960}
!13 = !{i64 2156822667}
!14 = !{i64 2156826235}
!15 = !{i64 2156843754}
!16 = !{i64 2156692263}
!17 = !{i64 2156696513}
!18 = !{i64 2156687891}
!19 = !{i64 2156697222}
!20 = !{i64 2156701954}
!21 = !{i64 2156705494}
!22 = !{i64 2156708900}
!23 = !{i64 2156712310}
!24 = !{i64 2156715779}
!25 = !{i64 2156719185}
!26 = !{i64 2156722595}
!27 = !{i64 2156726064}
!28 = !{i64 2156729472}
!29 = !{i64 2156732886}
!30 = !{i64 2156736357}
!31 = !{i64 2156739976}
!32 = !{i64 2156747163}
!33 = !{i64 2156750604}
!34 = !{i64 2156754056}
!35 = !{i64 2156757475}
!36 = !{i64 2156760978}
!37 = !{i64 2156764424}
!38 = !{i64 2156767868}
!39 = !{i64 2156771334}
!40 = !{i64 2156743609}
!41 = !{i64 759305, i64 2148249276, i64 2148249302, i64 2148249349, i64 2148249371, i64 2148249399, i64 2148249419}
!42 = !{i64 2148262149, i64 2148262181, i64 2148262210, i64 2148262244, i64 2148262275, i64 2148262298}
!43 = !{!"branch_weights", i32 2000, i32 1}
!44 = !{!"auto-init"}
!45 = !{i64 2156774824}
!46 = !{i64 2156778265}
!47 = !{i64 2156781730}
!48 = !{i64 2150436424}
!49 = !{i64 2150436266}
!50 = !{i64 2150436568}
!51 = !{i64 2149868860}
!52 = !{i64 2148927909}
!53 = !{i64 2148923733}
!54 = !{i64 2148923808, i64 2148923835, i64 2148923882, i64 2148923904, i64 2148923932, i64 2148923952}
!55 = !{i64 2148950912}
!56 = !{i64 2156805689}
!57 = !{i64 2156683583}
