; ModuleID = '/llk/IR/drivers/net/ethernet/stmicro/stmmac/stmmac_ethtool.c_pt.bc'
source_filename = "../drivers/net/ethernet/stmicro/stmmac/stmmac_ethtool.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stmmac_stats = type { [32 x i8], i32, i32 }
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
%struct.plat_stmmacenet_data = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [8 x %struct.stmmac_rxq_cfg], [8 x %struct.stmmac_txq_cfg], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i8, i8, i32, i32, i8, i32, i8, i8, i32, ptr, i8, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.stmmac_rxq_cfg = type { i8, i32, i8, i8, i32 }
%struct.stmmac_txq_cfg = type { i32, i8, i32, i32, i32, i32, i8, i32, i32 }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, [2 x i8], ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, [4 x i8], i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [11 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [11 x ptr], [11 x ptr], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, [2 x i8], i32, i32, ptr, i32, [7 x i8], [5 x i8] }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%struct.stmmac_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mac_device_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mii_regs, %struct.mac_link, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, [32 x i32], i32, i8, i8 }
%struct.mii_regs = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mac_link = type { i32, i32, i32, i32, i32, i32, %struct.anon.114, %struct.anon.115 }
%struct.anon.114 = type { i32, i32, i32 }
%struct.anon.115 = type { i32, i32, i32, i32 }
%struct.stmmac_dma_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_ringparam = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rgmii_adv = type { i32, i32, i32, i32 }
%struct.ethtool_pauseparam = type { i32, i32, i32, i32 }
%struct.stmmac_mmc_ops = type { ptr, ptr, ptr }
%struct.ethtool_rxnfc = type { i32, i32, i64, %struct.ethtool_rx_flow_spec, %union.anon.106, [0 x i32] }
%struct.ethtool_rx_flow_spec = type { i32, %union.ethtool_flow_union, %struct.ethtool_flow_ext, %union.ethtool_flow_union, %struct.ethtool_flow_ext, i64, i32 }
%union.ethtool_flow_union = type { %struct.ethtool_tcpip6_spec, [12 x i8] }
%struct.ethtool_tcpip6_spec = type { [4 x i32], [4 x i32], i16, i16, i8 }
%struct.ethtool_flow_ext = type { [2 x i8], [6 x i8], i16, i16, [2 x i32] }
%union.anon.106 = type { i32 }
%struct.stmmac_priv = type { [8 x i32], [8 x i32], [8 x i32], i32, i8, i8, i32, i32, i32, i32, i32, [8 x i32], i32, ptr, ptr, ptr, ptr, ptr, %struct.mutex, [56 x i8], [8 x %struct.stmmac_rx_queue], i32, [60 x i8], [8 x %struct.stmmac_tx_queue], i32, [60 x i8], [8 x %struct.stmmac_channel], i32, i32, i32, ptr, %struct.phylink_config, ptr, [20 x i8], %struct.stmmac_extra_stats, %struct.stmmac_safety_stats, ptr, %struct.dma_features, %struct.stmmac_counters, i32, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, %struct.hwtstamp_config, ptr, %struct.ptp_clock_info, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.mutex, ptr, ptr, [128 x i32], i32, i32, [8 x i32], [8 x i32], [25 x i8], [25 x i8], [25 x i8], [26 x i8], [26 x i8], [8 x [30 x i8]], [8 x [34 x i8]], ptr, i32, ptr, %struct.work_struct, i32, ptr, %struct.work_struct, [20 x i8], i32, i32, ptr, i32, ptr, [3 x i32], [3 x i32], i32, ptr, [4 x %struct.stmmac_pps_cfg], %struct.stmmac_rss, ptr, ptr, [12 x i8] }
%struct.stmmac_rx_queue = type { i32, i32, [56 x i8], %struct.xdp_rxq_info, ptr, ptr, ptr, ptr, ptr, [44 x i8], ptr, i32, i32, i32, i32, i32, i32, i32, %struct.anon.118, [20 x i8] }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [40 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.anon.118 = type { ptr, i32, i32 }
%struct.stmmac_tx_queue = type { i32, i32, %struct.hrtimer, i32, ptr, ptr, ptr, ptr, %union.anon.119, ptr, ptr, i32, i32, i32, i32, i32, i32, [16 x i8] }
%union.anon.119 = type { ptr }
%struct.stmmac_channel = type { %struct.napi_struct, [40 x i8], %struct.napi_struct, [40 x i8], %struct.napi_struct, ptr, %struct.spinlock, i32, [28 x i8] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }
%struct.stmmac_extra_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x %struct.stmmac_txq_stats], [8 x %struct.stmmac_rxq_stats], [40 x i8] }
%struct.stmmac_txq_stats = type { i32, i32 }
%struct.stmmac_rxq_stats = type { i32, i32 }
%struct.stmmac_safety_stats = type { [32 x i32], [32 x i32], [32 x i32] }
%struct.dma_features = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.stmmac_counters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stmmac_pps_cfg = type { i8, %struct.timespec64, %struct.timespec64 }
%struct.timespec64 = type { i64, i32 }
%struct.stmmac_rss = type { i32, [40 x i8], [256 x i32] }
%struct.ethtool_channels = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_ts_info = type { i32, i32, i32, i32, [3 x i32], i32, [3 x i32] }
%struct.ethtool_eee = type { i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%struct.ethtool_tunable = type { i32, i32, i32, i32, [0 x ptr] }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.107, i32 }
%struct.anon.107 = type { [3 x i32], [3 x i32], [3 x i32] }

@stmmac_ethtool_ops = internal constant %struct.ethtool_ops { i8 0, i32 51, i32 0, ptr @stmmac_ethtool_getdrvinfo, ptr @stmmac_ethtool_get_regs_len, ptr @stmmac_ethtool_gregs, ptr @stmmac_get_wol, ptr @stmmac_set_wol, ptr @stmmac_ethtool_getmsglevel, ptr @stmmac_ethtool_setmsglevel, ptr @stmmac_nway_reset, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr @stmmac_get_coalesce, ptr @stmmac_set_coalesce, ptr @stmmac_get_ringparam, ptr @stmmac_set_ringparam, ptr null, ptr @stmmac_get_pauseparam, ptr @stmmac_set_pauseparam, ptr @stmmac_selftest_run, ptr @stmmac_get_strings, ptr null, ptr @stmmac_get_ethtool_stats, ptr @stmmac_check_if_running, ptr null, ptr null, ptr null, ptr @stmmac_get_sset_count, ptr @stmmac_get_rxnfc, ptr null, ptr null, ptr null, ptr @stmmac_get_rxfh_key_size, ptr @stmmac_get_rxfh_indir_size, ptr @stmmac_get_rxfh, ptr @stmmac_set_rxfh, ptr null, ptr null, ptr @stmmac_get_channels, ptr @stmmac_set_channels, ptr null, ptr null, ptr null, ptr @stmmac_get_ts_info, ptr null, ptr null, ptr @stmmac_ethtool_op_get_eee, ptr @stmmac_ethtool_op_set_eee, ptr @stmmac_get_tunable, ptr @stmmac_set_tunable, ptr @stmmac_get_per_queue_coalesce, ptr @stmmac_set_per_queue_coalesce, ptr @stmmac_ethtool_get_link_ksettings, ptr @stmmac_ethtool_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [8 x i8] c"st_gmac\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"st_xgmac\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"st_mac100\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"\016stmmac: wakeup enable\0A\00", align 1
@stmmac_mmc = internal unnamed_addr constant [85 x %struct.stmmac_stats] [%struct.stmmac_stats { [32 x i8] c"mmc_tx_octetcount_gb\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 10880 }, %struct.stmmac_stats { [32 x i8] c"mmc_tx_framecount_gb\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 10884 }, %struct.stmmac_stats { [32 x i8] c"mmc_tx_broadcastframe_g\00\00\00\00\00\00\00\00\00", i32 4, i32 10888 }, %struct.stmmac_stats { [32 x i8] c"mmc_tx_multicastframe_g\00\00\00\00\00\00\00\00\00", i32 4, i32 10892 }, %struct.stmmac_stats { [32 x i8] c"mmc_tx_64_octets_gb\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 10896 }, %struct.stmmac_stats { [32 x i8] c"mmc_tx_65_to_127_octets_gb\00\00\00\00\00\00", i32 4, i32 10900 }, %struct.stmmac_stats { [32 x i8] c"mmc_tx_128_to_255_octets_gb\00\00\00\00\00", i32 4, i32 10904 }, %struct.stmmac_stats { [32 x i8] c"mmc_tx_256_to_511_octets_gb\00\00\00\00\00", i32 4, i32 10908 }, %struct.stmmac_stats { [32 x i8] c"mmc_tx_512_to_1023_octets_gb\00\00\00\00", i32 4, i32 10912 }, %struct.stmmac_stats { [32 x i8] c"mmc_tx_1024_to_max_octets_gb\00\00\00\00", i32 4, i32 10916 }, %struct.stmmac_stats { [32 x i8] c"mmc_tx_unicast_gb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 10920 }, %struct.stmmac_stats { [32 x i8] c"mmc_tx_multicast_gb\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 10924 }, %struct.stmmac_stats { [32 x i8] c"mmc_tx_broadcast_gb\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 10928 }, %struct.stmmac_stats { [32 x i8] c"mmc_tx_underflow_error\00\00\00\00\00\00\00\00\00\00", i32 4, i32 10932 }, %struct.stmmac_stats { [32 x i8] c"mmc_tx_singlecol_g\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 10936 }, %struct.stmmac_stats { [32 x i8] c"mmc_tx_multicol_g\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 10940 }, %struct.stmmac_stats { [32 x i8] c"mmc_tx_deferred\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 10944 }, %struct.stmmac_stats { [32 x i8] c"mmc_tx_latecol\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 10948 }, %struct.stmmac_stats { [32 x i8] c"mmc_tx_exesscol\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 10952 }, %struct.stmmac_stats { [32 x i8] c"mmc_tx_carrier_error\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 10956 }, %struct.stmmac_stats { [32 x i8] c"mmc_tx_octetcount_g\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 10960 }, %struct.stmmac_stats { [32 x i8] c"mmc_tx_framecount_g\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 10964 }, %struct.stmmac_stats { [32 x i8] c"mmc_tx_excessdef\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 10968 }, %struct.stmmac_stats { [32 x i8] c"mmc_tx_pause_frame\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 10972 }, %struct.stmmac_stats { [32 x i8] c"mmc_tx_vlan_frame_g\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 10976 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_framecount_gb\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 10980 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_octetcount_gb\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 10984 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_octetcount_g\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 10988 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_broadcastframe_g\00\00\00\00\00\00\00\00\00", i32 4, i32 10992 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_multicastframe_g\00\00\00\00\00\00\00\00\00", i32 4, i32 10996 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_crc_error\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 11000 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_align_error\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 11004 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_run_error\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 11008 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_jabber_error\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 11012 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_undersize_g\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 11016 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_oversize_g\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 11020 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_64_octets_gb\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 11024 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_65_to_127_octets_gb\00\00\00\00\00\00", i32 4, i32 11028 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_128_to_255_octets_gb\00\00\00\00\00", i32 4, i32 11032 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_256_to_511_octets_gb\00\00\00\00\00", i32 4, i32 11036 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_512_to_1023_octets_gb\00\00\00\00", i32 4, i32 11040 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_1024_to_max_octets_gb\00\00\00\00", i32 4, i32 11044 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_unicast_g\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 11048 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_length_error\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 11052 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_autofrangetype\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 11056 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_pause_frames\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 11060 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_fifo_overflow\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 11064 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_vlan_frames_gb\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 11068 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_watchdog_error\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 11072 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_ipc_intr_mask\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 11076 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_ipc_intr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 11080 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_ipv4_gd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 11084 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_ipv4_hderr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 11088 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_ipv4_nopay\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 11092 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_ipv4_frag\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 11096 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_ipv4_udsbl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 11100 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_ipv4_gd_octets\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 11104 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_ipv4_hderr_octets\00\00\00\00\00\00\00\00", i32 4, i32 11108 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_ipv4_nopay_octets\00\00\00\00\00\00\00\00", i32 4, i32 11112 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_ipv4_frag_octets\00\00\00\00\00\00\00\00\00", i32 4, i32 11116 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_ipv4_udsbl_octets\00\00\00\00\00\00\00\00", i32 4, i32 11120 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_ipv6_gd_octets\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 11124 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_ipv6_hderr_octets\00\00\00\00\00\00\00\00", i32 4, i32 11128 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_ipv6_nopay_octets\00\00\00\00\00\00\00\00", i32 4, i32 11132 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_ipv6_gd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 11136 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_ipv6_hderr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 11140 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_ipv6_nopay\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 11144 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_udp_gd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 11148 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_udp_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 11152 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_tcp_gd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 11156 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_tcp_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 11160 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_icmp_gd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 11164 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_icmp_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 11168 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_udp_gd_octets\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 11172 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_udp_err_octets\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 11176 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_tcp_gd_octets\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 11180 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_tcp_err_octets\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 11184 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_icmp_gd_octets\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 11188 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_icmp_err_octets\00\00\00\00\00\00\00\00\00\00", i32 4, i32 11192 }, %struct.stmmac_stats { [32 x i8] c"mmc_tx_fpe_fragment_cntr\00\00\00\00\00\00\00\00", i32 4, i32 11196 }, %struct.stmmac_stats { [32 x i8] c"mmc_tx_hold_req_cntr\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 11200 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_packet_assembly_err_cntr\00", i32 4, i32 11204 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_packet_smd_err_cntr\00\00\00\00\00\00", i32 4, i32 11208 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_packet_assembly_ok_cntr\00\00", i32 4, i32 11212 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_fpe_fragment_cntr\00\00\00\00\00\00\00\00", i32 4, i32 11216 }], align 4
@stmmac_gstrings_stats = internal unnamed_addr constant [115 x %struct.stmmac_stats] [%struct.stmmac_stats { [32 x i8] c"tx_underflow\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 9664 }, %struct.stmmac_stats { [32 x i8] c"tx_carrier\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 9668 }, %struct.stmmac_stats { [32 x i8] c"tx_losscarrier\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 9672 }, %struct.stmmac_stats { [32 x i8] c"vlan_tag\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 9676 }, %struct.stmmac_stats { [32 x i8] c"tx_deferred\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 9680 }, %struct.stmmac_stats { [32 x i8] c"tx_vlan\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 9684 }, %struct.stmmac_stats { [32 x i8] c"tx_jabber\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 9688 }, %struct.stmmac_stats { [32 x i8] c"tx_frame_flushed\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 9692 }, %struct.stmmac_stats { [32 x i8] c"tx_payload_error\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 9696 }, %struct.stmmac_stats { [32 x i8] c"tx_ip_header_error\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 9700 }, %struct.stmmac_stats { [32 x i8] c"rx_desc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 9704 }, %struct.stmmac_stats { [32 x i8] c"sa_filter_fail\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 9708 }, %struct.stmmac_stats { [32 x i8] c"overflow_error\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 9712 }, %struct.stmmac_stats { [32 x i8] c"ipc_csum_error\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 9716 }, %struct.stmmac_stats { [32 x i8] c"rx_collision\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 9720 }, %struct.stmmac_stats { [32 x i8] c"rx_crc_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 9724 }, %struct.stmmac_stats { [32 x i8] c"dribbling_bit\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 9728 }, %struct.stmmac_stats { [32 x i8] c"rx_length\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 9732 }, %struct.stmmac_stats { [32 x i8] c"rx_mii\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 9736 }, %struct.stmmac_stats { [32 x i8] c"rx_multicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 9740 }, %struct.stmmac_stats { [32 x i8] c"rx_gmac_overflow\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 9744 }, %struct.stmmac_stats { [32 x i8] c"rx_watchdog\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 9748 }, %struct.stmmac_stats { [32 x i8] c"da_rx_filter_fail\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 9752 }, %struct.stmmac_stats { [32 x i8] c"sa_rx_filter_fail\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 9756 }, %struct.stmmac_stats { [32 x i8] c"rx_missed_cntr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 9760 }, %struct.stmmac_stats { [32 x i8] c"rx_overflow_cntr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 9764 }, %struct.stmmac_stats { [32 x i8] c"rx_vlan\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 9768 }, %struct.stmmac_stats { [32 x i8] c"rx_split_hdr_pkt_n\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 9772 }, %struct.stmmac_stats { [32 x i8] c"tx_undeflow_irq\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 9776 }, %struct.stmmac_stats { [32 x i8] c"tx_process_stopped_irq\00\00\00\00\00\00\00\00\00\00", i32 4, i32 9780 }, %struct.stmmac_stats { [32 x i8] c"tx_jabber_irq\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 9784 }, %struct.stmmac_stats { [32 x i8] c"rx_overflow_irq\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 9788 }, %struct.stmmac_stats { [32 x i8] c"rx_buf_unav_irq\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 9792 }, %struct.stmmac_stats { [32 x i8] c"rx_process_stopped_irq\00\00\00\00\00\00\00\00\00\00", i32 4, i32 9796 }, %struct.stmmac_stats { [32 x i8] c"rx_watchdog_irq\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 9800 }, %struct.stmmac_stats { [32 x i8] c"tx_early_irq\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 9804 }, %struct.stmmac_stats { [32 x i8] c"fatal_bus_error_irq\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 9808 }, %struct.stmmac_stats { [32 x i8] c"rx_early_irq\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 9812 }, %struct.stmmac_stats { [32 x i8] c"threshold\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 9816 }, %struct.stmmac_stats { [32 x i8] c"tx_pkt_n\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 9820 }, %struct.stmmac_stats { [32 x i8] c"rx_pkt_n\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 9824 }, %struct.stmmac_stats { [32 x i8] c"normal_irq_n\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 9828 }, %struct.stmmac_stats { [32 x i8] c"rx_normal_irq_n\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 9832 }, %struct.stmmac_stats { [32 x i8] c"napi_poll\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 9836 }, %struct.stmmac_stats { [32 x i8] c"tx_normal_irq_n\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 9840 }, %struct.stmmac_stats { [32 x i8] c"tx_clean\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 9844 }, %struct.stmmac_stats { [32 x i8] c"tx_set_ic_bit\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 9848 }, %struct.stmmac_stats { [32 x i8] c"irq_receive_pmt_irq_n\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 9852 }, %struct.stmmac_stats { [32 x i8] c"mmc_tx_irq_n\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 9856 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_irq_n\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 9860 }, %struct.stmmac_stats { [32 x i8] c"mmc_rx_csum_offload_irq_n\00\00\00\00\00\00\00", i32 4, i32 9864 }, %struct.stmmac_stats { [32 x i8] c"irq_tx_path_in_lpi_mode_n\00\00\00\00\00\00\00", i32 4, i32 9868 }, %struct.stmmac_stats { [32 x i8] c"irq_tx_path_exit_lpi_mode_n\00\00\00\00\00", i32 4, i32 9872 }, %struct.stmmac_stats { [32 x i8] c"irq_rx_path_in_lpi_mode_n\00\00\00\00\00\00\00", i32 4, i32 9876 }, %struct.stmmac_stats { [32 x i8] c"irq_rx_path_exit_lpi_mode_n\00\00\00\00\00", i32 4, i32 9880 }, %struct.stmmac_stats { [32 x i8] c"phy_eee_wakeup_error_n\00\00\00\00\00\00\00\00\00\00", i32 4, i32 9884 }, %struct.stmmac_stats { [32 x i8] c"ip_hdr_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 9888 }, %struct.stmmac_stats { [32 x i8] c"ip_payload_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 9892 }, %struct.stmmac_stats { [32 x i8] c"ip_csum_bypassed\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 9896 }, %struct.stmmac_stats { [32 x i8] c"ipv4_pkt_rcvd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 9900 }, %struct.stmmac_stats { [32 x i8] c"ipv6_pkt_rcvd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 9904 }, %struct.stmmac_stats { [32 x i8] c"no_ptp_rx_msg_type_ext\00\00\00\00\00\00\00\00\00\00", i32 4, i32 9908 }, %struct.stmmac_stats { [32 x i8] c"ptp_rx_msg_type_sync\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 9912 }, %struct.stmmac_stats { [32 x i8] c"ptp_rx_msg_type_follow_up\00\00\00\00\00\00\00", i32 4, i32 9916 }, %struct.stmmac_stats { [32 x i8] c"ptp_rx_msg_type_delay_req\00\00\00\00\00\00\00", i32 4, i32 9920 }, %struct.stmmac_stats { [32 x i8] c"ptp_rx_msg_type_delay_resp\00\00\00\00\00\00", i32 4, i32 9924 }, %struct.stmmac_stats { [32 x i8] c"ptp_rx_msg_type_pdelay_req\00\00\00\00\00\00", i32 4, i32 9928 }, %struct.stmmac_stats { [32 x i8] c"ptp_rx_msg_type_pdelay_resp\00\00\00\00\00", i32 4, i32 9932 }, %struct.stmmac_stats { [32 x i8] c"ptp_rx_msg_type_pdelay_follow_up", i32 4, i32 9936 }, %struct.stmmac_stats { [32 x i8] c"ptp_rx_msg_type_announce\00\00\00\00\00\00\00\00", i32 4, i32 9940 }, %struct.stmmac_stats { [32 x i8] c"ptp_rx_msg_type_management\00\00\00\00\00\00", i32 4, i32 9944 }, %struct.stmmac_stats { [32 x i8] c"ptp_rx_msg_pkt_reserved_type\00\00\00\00", i32 4, i32 9948 }, %struct.stmmac_stats { [32 x i8] c"ptp_frame_type\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 9952 }, %struct.stmmac_stats { [32 x i8] c"ptp_ver\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 9956 }, %struct.stmmac_stats { [32 x i8] c"timestamp_dropped\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 9960 }, %struct.stmmac_stats { [32 x i8] c"av_pkt_rcvd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 9964 }, %struct.stmmac_stats { [32 x i8] c"av_tagged_pkt_rcvd\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 9968 }, %struct.stmmac_stats { [32 x i8] c"vlan_tag_priority_val\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 9972 }, %struct.stmmac_stats { [32 x i8] c"l3_filter_match\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 9976 }, %struct.stmmac_stats { [32 x i8] c"l4_filter_match\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 9980 }, %struct.stmmac_stats { [32 x i8] c"l3_l4_filter_no_match\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 9984 }, %struct.stmmac_stats { [32 x i8] c"irq_pcs_ane_n\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 9988 }, %struct.stmmac_stats { [32 x i8] c"irq_pcs_link_n\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 9992 }, %struct.stmmac_stats { [32 x i8] c"irq_rgmii_n\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 9996 }, %struct.stmmac_stats { [32 x i8] c"mtl_tx_status_fifo_full\00\00\00\00\00\00\00\00\00", i32 4, i32 10012 }, %struct.stmmac_stats { [32 x i8] c"mtl_tx_fifo_not_empty\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 10016 }, %struct.stmmac_stats { [32 x i8] c"mmtl_fifo_ctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 10020 }, %struct.stmmac_stats { [32 x i8] c"mtl_tx_fifo_read_ctrl_write\00\00\00\00\00", i32 4, i32 10024 }, %struct.stmmac_stats { [32 x i8] c"mtl_tx_fifo_read_ctrl_wait\00\00\00\00\00\00", i32 4, i32 10028 }, %struct.stmmac_stats { [32 x i8] c"mtl_tx_fifo_read_ctrl_read\00\00\00\00\00\00", i32 4, i32 10032 }, %struct.stmmac_stats { [32 x i8] c"mtl_tx_fifo_read_ctrl_idle\00\00\00\00\00\00", i32 4, i32 10036 }, %struct.stmmac_stats { [32 x i8] c"mac_tx_in_pause\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 10040 }, %struct.stmmac_stats { [32 x i8] c"mac_tx_frame_ctrl_xfer\00\00\00\00\00\00\00\00\00\00", i32 4, i32 10044 }, %struct.stmmac_stats { [32 x i8] c"mac_tx_frame_ctrl_idle\00\00\00\00\00\00\00\00\00\00", i32 4, i32 10048 }, %struct.stmmac_stats { [32 x i8] c"mac_tx_frame_ctrl_wait\00\00\00\00\00\00\00\00\00\00", i32 4, i32 10052 }, %struct.stmmac_stats { [32 x i8] c"mac_tx_frame_ctrl_pause\00\00\00\00\00\00\00\00\00", i32 4, i32 10056 }, %struct.stmmac_stats { [32 x i8] c"mac_gmii_tx_proto_engine\00\00\00\00\00\00\00\00", i32 4, i32 10060 }, %struct.stmmac_stats { [32 x i8] c"mtl_rx_fifo_fill_level_full\00\00\00\00\00", i32 4, i32 10064 }, %struct.stmmac_stats { [32 x i8] c"mtl_rx_fifo_fill_above_thresh\00\00\00", i32 4, i32 10068 }, %struct.stmmac_stats { [32 x i8] c"mtl_rx_fifo_fill_below_thresh\00\00\00", i32 4, i32 10072 }, %struct.stmmac_stats { [32 x i8] c"mtl_rx_fifo_fill_level_empty\00\00\00\00", i32 4, i32 10076 }, %struct.stmmac_stats { [32 x i8] c"mtl_rx_fifo_read_ctrl_flush\00\00\00\00\00", i32 4, i32 10080 }, %struct.stmmac_stats { [32 x i8] c"mtl_rx_fifo_read_ctrl_read_data\00", i32 4, i32 10084 }, %struct.stmmac_stats { [32 x i8] c"mtl_rx_fifo_read_ctrl_status\00\00\00\00", i32 4, i32 10088 }, %struct.stmmac_stats { [32 x i8] c"mtl_rx_fifo_read_ctrl_idle\00\00\00\00\00\00", i32 4, i32 10092 }, %struct.stmmac_stats { [32 x i8] c"mtl_rx_fifo_ctrl_active\00\00\00\00\00\00\00\00\00", i32 4, i32 10096 }, %struct.stmmac_stats { [32 x i8] c"mac_rx_frame_ctrl_fifo\00\00\00\00\00\00\00\00\00\00", i32 4, i32 10100 }, %struct.stmmac_stats { [32 x i8] c"mac_gmii_rx_proto_engine\00\00\00\00\00\00\00\00", i32 4, i32 10104 }, %struct.stmmac_stats { [32 x i8] c"tx_tso_frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 10108 }, %struct.stmmac_stats { [32 x i8] c"tx_tso_nfrags\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 10112 }, %struct.stmmac_stats { [32 x i8] c"mtl_est_cgce\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 10116 }, %struct.stmmac_stats { [32 x i8] c"mtl_est_hlbs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 10120 }, %struct.stmmac_stats { [32 x i8] c"mtl_est_hlbf\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 10124 }, %struct.stmmac_stats { [32 x i8] c"mtl_est_btre\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 10128 }, %struct.stmmac_stats { [32 x i8] c"mtl_est_btrlm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 10132 }], align 4
@.str.4 = private unnamed_addr constant [53 x i8] c"drivers/net/ethernet/stmicro/stmmac/stmmac_ethtool.c\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"q%d_%s\00", align 1
@stmmac_qstats_tx_string = internal constant [2 x [32 x i8]] [[32 x i8] c"tx_pkt_n\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_irq_n\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], align 1
@stmmac_qstats_rx_string = internal constant [2 x [32 x i8]] [[32 x i8] c"rx_pkt_n\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_irq_n\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"Setting EEE tx-lpi is not supported\0A\00", align 1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @stmmac_set_ethtool_ops(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 42
  store ptr @stmmac_ethtool_ops, ptr %2, align 8
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stmmac_ethtool_getdrvinfo(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = getelementptr i8, ptr %0, i32 12096
  %4 = load ptr, ptr %3, align 64
  %5 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %4, i32 0, i32 13
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %4, i32 0, i32 58
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %8, %2
  %13 = getelementptr inbounds %struct.ethtool_drvinfo, ptr %1, i32 0, i32 1
  %14 = tail call i32 @strlcpy(ptr noundef %13, ptr noundef nonnull @.str, i32 noundef 32) #19
  br label %24

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %4, i32 0, i32 64
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  %19 = getelementptr inbounds %struct.ethtool_drvinfo, ptr %1, i32 0, i32 1
  br i1 %18, label %22, label %20

20:                                               ; preds = %15
  %21 = tail call i32 @strlcpy(ptr noundef %19, ptr noundef nonnull @.str.1, i32 noundef 32) #19
  br label %24

22:                                               ; preds = %15
  %23 = tail call i32 @strlcpy(ptr noundef %19, ptr noundef nonnull @.str.2, i32 noundef 32) #19
  br label %24

24:                                               ; preds = %22, %20, %12
  %25 = load ptr, ptr %3, align 64
  %26 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %25, i32 0, i32 68
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %40, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.ethtool_drvinfo, ptr %1, i32 0, i32 4
  %31 = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  %36 = load ptr, ptr %35, align 4
  br label %37

37:                                               ; preds = %34, %29
  %38 = phi ptr [ %36, %34 ], [ %32, %29 ]
  %39 = tail call i32 @strlcpy(ptr noundef %30, ptr noundef %38, i32 noundef 32) #19
  br label %40

40:                                               ; preds = %37, %24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @stmmac_ethtool_get_regs_len(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 12096
  %3 = load ptr, ptr %2, align 64
  %4 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %3, i32 0, i32 64
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %3, i32 0, i32 58
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, i32 4192, i32 4460
  br label %12

12:                                               ; preds = %7, %1
  %13 = phi i32 [ 14588, %1 ], [ %11, %7 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stmmac_ethtool_gregs(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #3 {
  %4 = getelementptr i8, ptr %0, i32 1580
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.stmmac_ops, ptr %6, i32 0, i32 12
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  tail call void %10(ptr noundef %5, ptr noundef %2) #19
  %13 = load ptr, ptr %4, align 4
  br label %14

14:                                               ; preds = %12, %8, %3
  %15 = phi ptr [ %13, %12 ], [ %5, %8 ], [ %5, %3 ]
  %16 = getelementptr inbounds %struct.mac_device_info, ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.stmmac_dma_ops, ptr %17, i32 0, i32 6
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = getelementptr i8, ptr %0, i32 1568
  %25 = load ptr, ptr %24, align 32
  tail call void %21(ptr noundef %25, ptr noundef %2) #19
  br label %26

26:                                               ; preds = %23, %19, %14
  %27 = getelementptr i8, ptr %0, i32 12096
  %28 = load ptr, ptr %27, align 64
  %29 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %28, i32 0, i32 58
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  %33 = getelementptr i32, ptr %2, i32 55
  %34 = getelementptr i32, ptr %2, i32 1088
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(108) %33, ptr noundef align 4 dereferenceable(108) %34, i32 108, i1 false)
  br label %42

35:                                               ; preds = %26
  %36 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %28, i32 0, i32 64
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = getelementptr i32, ptr %2, i32 55
  %41 = getelementptr i32, ptr %2, i32 1024
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(92) %40, ptr noundef align 4 dereferenceable(92) %41, i32 92, i1 false)
  br label %42

42:                                               ; preds = %39, %35, %32
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stmmac_get_wol(ptr noundef %0, ptr noundef %1) #3 {
  %3 = getelementptr i8, ptr %0, i32 12096
  %4 = load ptr, ptr %3, align 64
  %5 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %4, i32 0, i32 18
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = getelementptr i8, ptr %0, i32 11048
  %10 = load ptr, ptr %9, align 8
  tail call void @phylink_ethtool_get_wol(ptr noundef %10, ptr noundef %1) #19
  br label %34

11:                                               ; preds = %2
  %12 = getelementptr i8, ptr %0, i32 1588
  tail call void @mutex_lock(ptr noundef %12) #19
  %13 = getelementptr i8, ptr %0, i32 1576
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 11, i32 1
  %16 = load i16, ptr %15, align 4
  %17 = and i16 %16, 1
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %33, label %19

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %1, i32 0, i32 1
  store i32 34, ptr %20, align 4
  %21 = getelementptr i8, ptr %0, i32 12628
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = getelementptr i8, ptr %0, i32 12132
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 2, ptr %20, align 4
  br label %29

29:                                               ; preds = %28, %24, %19
  %30 = getelementptr i8, ptr %0, i32 12640
  %31 = load i32, ptr %30, align 32
  %32 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %1, i32 0, i32 2
  store i32 %31, ptr %32, align 4
  br label %33

33:                                               ; preds = %29, %11
  tail call void @mutex_unlock(ptr noundef %12) #19
  br label %34

34:                                               ; preds = %33, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmmac_set_wol(ptr noundef %0, ptr noundef %1) #3 {
  %3 = getelementptr i8, ptr %0, i32 1576
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 11, i32 1
  %6 = load i16, ptr %5, align 4
  %7 = and i16 %6, 1
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %58, label %9

9:                                                ; preds = %2
  %10 = getelementptr i8, ptr %0, i32 12096
  %11 = load ptr, ptr %10, align 64
  %12 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 18
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %9
  %16 = getelementptr i8, ptr %0, i32 11048
  %17 = load ptr, ptr %16, align 8
  %18 = tail call i32 @phylink_ethtool_set_wol(ptr noundef %17, ptr noundef %1) #19
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %58

20:                                               ; preds = %15
  %21 = load ptr, ptr %3, align 8
  %22 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %1, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = icmp ne i32 %23, 0
  %25 = tail call i32 @device_set_wakeup_enable(ptr noundef %21, i1 noundef zeroext %24) #19
  br label %58

26:                                               ; preds = %9
  %27 = getelementptr i8, ptr %0, i32 12628
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %26
  %31 = getelementptr i8, ptr %0, i32 12132
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %1, i32 0, i32 2
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %36, -33
  store i32 %37, ptr %35, align 4
  br label %38

38:                                               ; preds = %34, %30, %26
  %39 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %1, i32 0, i32 2
  %40 = load i32, ptr %39, align 4
  %41 = and i32 %40, -35
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %58

43:                                               ; preds = %38
  %44 = icmp eq i32 %40, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %43
  %46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #20
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i32 [ 1, %45 ], [ 0, %43 ]
  %49 = xor i1 %44, true
  %50 = load ptr, ptr %3, align 8
  %51 = tail call i32 @device_set_wakeup_enable(ptr noundef %50, i1 noundef zeroext %49) #19
  %52 = getelementptr i8, ptr %0, i32 12644
  %53 = load i32, ptr %52, align 4
  %54 = tail call i32 @irq_set_irq_wake(i32 noundef %53, i32 noundef %48) #19
  %55 = getelementptr i8, ptr %0, i32 1588
  tail call void @mutex_lock(ptr noundef %55) #19
  %56 = load i32, ptr %39, align 4
  %57 = getelementptr i8, ptr %0, i32 12640
  store i32 %56, ptr %57, align 32
  tail call void @mutex_unlock(ptr noundef %55) #19
  br label %58

58:                                               ; preds = %47, %38, %20, %15, %2
  %59 = phi i32 [ 0, %47 ], [ -95, %2 ], [ 0, %20 ], [ %18, %15 ], [ -22, %38 ]
  ret i32 %59
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @stmmac_ethtool_getmsglevel(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr i8, ptr %0, i32 12636
  %3 = load i32, ptr %2, align 4
  ret i32 %3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @stmmac_ethtool_setmsglevel(ptr nocapture noundef writeonly %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 12636
  store i32 %1, ptr %3, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmmac_nway_reset(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr i8, ptr %0, i32 11048
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @phylink_ethtool_nway_reset(ptr noundef %3) #19
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmmac_get_coalesce(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) #3 {
  %5 = getelementptr i8, ptr %0, i32 12096
  %6 = load ptr, ptr %5, align 64
  %7 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %6, i32 0, i32 29
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %6, i32 0, i32 30
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %4
  %13 = getelementptr i8, ptr %0, i32 1408
  %14 = getelementptr i8, ptr %0, i32 1440
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.ethtool_coalesce, ptr %1, i32 0, i32 5
  store i32 %15, ptr %16, align 4
  %17 = load i32, ptr %13, align 4
  br label %20

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.ethtool_coalesce, ptr %1, i32 0, i32 5
  store i32 0, ptr %19, align 4
  br label %20

20:                                               ; preds = %18, %12
  %21 = phi i32 [ %17, %12 ], [ 0, %18 ]
  %22 = getelementptr inbounds %struct.ethtool_coalesce, ptr %1, i32 0, i32 6
  store i32 %21, ptr %22, align 4
  %23 = getelementptr i8, ptr %0, i32 12852
  %24 = load i32, ptr %23, align 4
  %25 = icmp ne i32 %24, 0
  %26 = icmp ne i32 %8, 0
  %27 = select i1 %25, i1 %26, i1 false
  br i1 %27, label %28, label %49

28:                                               ; preds = %20
  %29 = getelementptr i8, ptr %0, i32 1472
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.ethtool_coalesce, ptr %1, i32 0, i32 2
  store i32 %30, ptr %31, align 4
  %32 = getelementptr i8, ptr %0, i32 1532
  %33 = load i32, ptr %32, align 4
  %34 = load ptr, ptr %5, align 64
  %35 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %34, i32 0, i32 47
  %36 = load ptr, ptr %35, align 4
  %37 = tail call i32 @clk_get_rate(ptr noundef %36) #19
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %28
  %40 = load ptr, ptr %5, align 64
  %41 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %40, i32 0, i32 51
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %39, %28
  %45 = phi i32 [ %37, %28 ], [ %42, %39 ]
  %46 = shl i32 %33, 8
  %47 = udiv i32 %45, 1000000
  %48 = udiv i32 %46, %47
  br label %51

49:                                               ; preds = %20
  %50 = getelementptr inbounds %struct.ethtool_coalesce, ptr %1, i32 0, i32 2
  store i32 0, ptr %50, align 4
  br label %51

51:                                               ; preds = %49, %44, %39
  %52 = phi i32 [ 0, %49 ], [ %48, %44 ], [ 0, %39 ]
  %53 = getelementptr inbounds %struct.ethtool_coalesce, ptr %1, i32 0, i32 1
  store i32 %52, ptr %53, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmmac_set_coalesce(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) #3 {
  %5 = tail call fastcc i32 @__stmmac_set_coalesce(ptr noundef %0, ptr noundef %1, i32 noundef -1)
  ret i32 %5
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @stmmac_get_ringparam(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) #6 {
  %5 = getelementptr inbounds %struct.ethtool_ringparam, ptr %1, i32 0, i32 1
  store i32 1024, ptr %5, align 4
  %6 = getelementptr inbounds %struct.ethtool_ringparam, ptr %1, i32 0, i32 4
  store i32 1024, ptr %6, align 4
  %7 = getelementptr i8, ptr %0, i32 3712
  %8 = load i32, ptr %7, align 64
  %9 = getelementptr inbounds %struct.ethtool_ringparam, ptr %1, i32 0, i32 5
  store i32 %8, ptr %9, align 4
  %10 = getelementptr i8, ptr %0, i32 4800
  %11 = load i32, ptr %10, align 64
  %12 = getelementptr inbounds %struct.ethtool_ringparam, ptr %1, i32 0, i32 8
  store i32 %11, ptr %12, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmmac_set_ringparam(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) #3 {
  %5 = getelementptr inbounds %struct.ethtool_ringparam, ptr %1, i32 0, i32 6
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %30

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ethtool_ringparam, ptr %1, i32 0, i32 7
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %30

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ethtool_ringparam, ptr %1, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, -64
  %16 = icmp ult i32 %15, 961
  %17 = tail call i32 @llvm.ctpop.i32(i32 %14) #19, !range !8
  %18 = icmp ult i32 %17, 2
  %19 = and i1 %16, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.ethtool_ringparam, ptr %1, i32 0, i32 8
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, -64
  %24 = icmp ult i32 %23, 961
  %25 = tail call i32 @llvm.ctpop.i32(i32 %22) #19, !range !8
  %26 = icmp ult i32 %25, 2
  %27 = and i1 %24, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = tail call i32 @stmmac_reinit_ringparam(ptr noundef %0, i32 noundef %14, i32 noundef %22) #19
  br label %30

30:                                               ; preds = %28, %20, %12, %8, %4
  %31 = phi i32 [ %29, %28 ], [ -22, %20 ], [ -22, %12 ], [ -22, %8 ], [ -22, %4 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stmmac_get_pauseparam(ptr nocapture noundef readonly %0, ptr noundef %1) #3 {
  %3 = alloca %struct.rgmii_adv, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #19
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !9
  %4 = getelementptr i8, ptr %0, i32 1580
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mac_device_info, ptr %5, i32 0, i32 15
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %20, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr %5, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %20, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.stmmac_ops, ptr %10, i32 0, i32 28
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = getelementptr i8, ptr %0, i32 1568
  %18 = load ptr, ptr %17, align 32
  call void %14(ptr noundef %18, ptr noundef nonnull %3) #19
  %19 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %1, i32 0, i32 1
  store i32 1, ptr %19, align 4
  br label %23

20:                                               ; preds = %12, %9, %2
  %21 = getelementptr i8, ptr %0, i32 11048
  %22 = load ptr, ptr %21, align 8
  tail call void @phylink_ethtool_get_pauseparam(ptr noundef %22, ptr noundef %1) #19
  br label %23

23:                                               ; preds = %20, %16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmmac_set_pauseparam(ptr nocapture noundef readonly %0, ptr noundef %1) #3 {
  %3 = alloca %struct.rgmii_adv, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #19
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !9
  %4 = getelementptr i8, ptr %0, i32 1580
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mac_device_info, ptr %5, i32 0, i32 15
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %23, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr %5, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %23, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.stmmac_ops, ptr %10, i32 0, i32 28
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %12
  %17 = getelementptr i8, ptr %0, i32 1568
  %18 = load ptr, ptr %17, align 32
  call void %14(ptr noundef %18, ptr noundef nonnull %3) #19
  %19 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %1, i32 0, i32 1
  store i32 1, ptr %19, align 4
  %20 = load i32, ptr %3, align 4
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, i32 -95, i32 0
  br label %27

23:                                               ; preds = %12, %9, %2
  %24 = getelementptr i8, ptr %0, i32 11048
  %25 = load ptr, ptr %24, align 8
  %26 = tail call i32 @phylink_ethtool_set_pauseparam(ptr noundef %25, ptr noundef %1) #19
  br label %27

27:                                               ; preds = %23, %16
  %28 = phi i32 [ %26, %23 ], [ %22, %16 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #19
  ret i32 %28
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @stmmac_selftest_run(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) #7 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stmmac_get_strings(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #3 {
  %4 = alloca ptr, align 4
  switch i32 %1, label %82 [
    i32 1, label %5
    i32 0, label %83
  ]

5:                                                ; preds = %3
  %6 = getelementptr i8, ptr %0, i32 12216
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %32, label %9

9:                                                ; preds = %5
  %10 = getelementptr i8, ptr %0, i32 1580
  %11 = getelementptr i8, ptr %0, i32 11712
  br label %12

12:                                               ; preds = %28, %9
  %13 = phi i32 [ 0, %9 ], [ %30, %28 ]
  %14 = phi ptr [ %2, %9 ], [ %29, %28 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #19
  store ptr null, ptr %4, align 4, !annotation !9
  %15 = load ptr, ptr %10, align 4
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %28, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.stmmac_ops, ptr %16, i32 0, i32 31
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %18
  %23 = call i32 %20(ptr noundef %11, i32 noundef %13, ptr noundef null, ptr noundef nonnull %4) #19
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load ptr, ptr %4, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(32) %14, ptr noundef align 1 dereferenceable(32) %26, i32 32, i1 false)
  %27 = getelementptr i8, ptr %14, i32 32
  br label %28

28:                                               ; preds = %25, %22, %18, %12
  %29 = phi ptr [ %14, %22 ], [ %27, %25 ], [ %14, %18 ], [ %14, %12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #19
  %30 = add nuw nsw i32 %13, 1
  %31 = icmp eq i32 %30, 96
  br i1 %31, label %32, label %12

32:                                               ; preds = %28, %5
  %33 = phi ptr [ %2, %5 ], [ %29, %28 ]
  %34 = getelementptr i8, ptr %0, i32 12136
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %37, %32
  %38 = phi i32 [ %42, %37 ], [ 0, %32 ]
  %39 = phi ptr [ %41, %37 ], [ %33, %32 ]
  %40 = getelementptr [85 x %struct.stmmac_stats], ptr @stmmac_mmc, i32 0, i32 %38
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(32) %39, ptr noundef align 4 dereferenceable(32) %40, i32 32, i1 false)
  %41 = getelementptr i8, ptr %39, i32 32
  %42 = add nuw nsw i32 %38, 1
  %43 = icmp eq i32 %42, 85
  br i1 %43, label %44, label %37

44:                                               ; preds = %37, %32
  %45 = phi ptr [ %33, %32 ], [ %41, %37 ]
  br label %46

46:                                               ; preds = %46, %44
  %47 = phi i32 [ %51, %46 ], [ 0, %44 ]
  %48 = phi ptr [ %50, %46 ], [ %45, %44 ]
  %49 = getelementptr [115 x %struct.stmmac_stats], ptr @stmmac_gstrings_stats, i32 0, i32 %47
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(32) %48, ptr noundef align 4 dereferenceable(32) %49, i32 32, i1 false)
  %50 = getelementptr i8, ptr %48, i32 32
  %51 = add nuw nsw i32 %47, 1
  %52 = icmp eq i32 %51, 115
  br i1 %52, label %53, label %46

53:                                               ; preds = %46
  %54 = getelementptr i8, ptr %0, i32 12096
  %55 = load ptr, ptr %54, align 64
  %56 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %55, i32 0, i32 30
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %55, i32 0, i32 29
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %57, 0
  br i1 %60, label %70, label %61

61:                                               ; preds = %61, %53
  %62 = phi i32 [ %68, %61 ], [ 0, %53 ]
  %63 = phi ptr [ %67, %61 ], [ %50, %53 ]
  %64 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %63, i32 noundef 32, ptr noundef nonnull @.str.5, i32 noundef %62, ptr noundef nonnull @stmmac_qstats_tx_string) #19
  %65 = getelementptr i8, ptr %63, i32 32
  %66 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %65, i32 noundef 32, ptr noundef nonnull @.str.5, i32 noundef %62, ptr noundef getelementptr inbounds ([2 x [32 x i8]], ptr @stmmac_qstats_tx_string, i32 0, i32 1)) #19
  %67 = getelementptr i8, ptr %63, i32 64
  %68 = add nuw i32 %62, 1
  %69 = icmp eq i32 %68, %57
  br i1 %69, label %70, label %61

70:                                               ; preds = %61, %53
  %71 = phi ptr [ %50, %53 ], [ %67, %61 ]
  %72 = icmp eq i32 %59, 0
  br i1 %72, label %83, label %73

73:                                               ; preds = %73, %70
  %74 = phi i32 [ %80, %73 ], [ 0, %70 ]
  %75 = phi ptr [ %79, %73 ], [ %71, %70 ]
  %76 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %75, i32 noundef 32, ptr noundef nonnull @.str.5, i32 noundef %74, ptr noundef nonnull @stmmac_qstats_rx_string) #19
  %77 = getelementptr i8, ptr %75, i32 32
  %78 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %77, i32 noundef 32, ptr noundef nonnull @.str.5, i32 noundef %74, ptr noundef getelementptr inbounds ([2 x [32 x i8]], ptr @stmmac_qstats_rx_string, i32 0, i32 1)) #19
  %79 = getelementptr i8, ptr %75, i32 64
  %80 = add nuw i32 %74, 1
  %81 = icmp eq i32 %80, %59
  br i1 %81, label %83, label %73

82:                                               ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 713, i32 noundef 9, ptr noundef null) #19
  br label %83

83:                                               ; preds = %82, %73, %70, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stmmac_get_ethtool_stats(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #3 {
  %4 = alloca i32, align 4
  %5 = getelementptr i8, ptr %0, i32 1408
  %6 = getelementptr i8, ptr %0, i32 12096
  %7 = load ptr, ptr %6, align 64
  %8 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %7, i32 0, i32 29
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %7, i32 0, i32 30
  %11 = load i32, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #19
  store i32 0, ptr %4, align 4, !annotation !9
  %12 = getelementptr i8, ptr %0, i32 12216
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %40, label %15

15:                                               ; preds = %3
  %16 = getelementptr i8, ptr %0, i32 1580
  %17 = getelementptr i8, ptr %0, i32 11712
  br label %18

18:                                               ; preds = %36, %15
  %19 = phi i32 [ 0, %15 ], [ %38, %36 ]
  %20 = phi i32 [ 0, %15 ], [ %37, %36 ]
  %21 = load ptr, ptr %16, align 4
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %36, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.stmmac_ops, ptr %22, i32 0, i32 31
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %36, label %28

28:                                               ; preds = %24
  %29 = call i32 %26(ptr noundef %17, i32 noundef %19, ptr noundef nonnull %4, ptr noundef null) #19
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load i32, ptr %4, align 4
  %33 = zext i32 %32 to i64
  %34 = add i32 %20, 1
  %35 = getelementptr i64, ptr %2, i32 %20
  store i64 %33, ptr %35, align 8
  br label %36

36:                                               ; preds = %31, %28, %24, %18
  %37 = phi i32 [ %20, %28 ], [ %34, %31 ], [ %20, %24 ], [ %20, %18 ]
  %38 = add nuw nsw i32 %19, 1
  %39 = icmp eq i32 %38, 96
  br i1 %39, label %40, label %18

40:                                               ; preds = %36, %3
  %41 = phi i32 [ 0, %3 ], [ %37, %36 ]
  %42 = getelementptr i8, ptr %0, i32 1580
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.mac_device_info, ptr %43, i32 0, i32 2
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %56, label %47

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.stmmac_dma_ops, ptr %45, i32 0, i32 9
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %56, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 36
  %53 = getelementptr i8, ptr %0, i32 11072
  %54 = getelementptr i8, ptr %0, i32 1568
  %55 = load ptr, ptr %54, align 32
  call void %49(ptr noundef %52, ptr noundef %53, ptr noundef %55) #19
  br label %113

56:                                               ; preds = %47, %40
  %57 = getelementptr i8, ptr %0, i32 12136
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %85, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.mac_device_info, ptr %43, i32 0, i32 6
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %72, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.stmmac_mmc_ops, ptr %62, i32 0, i32 2
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = getelementptr i8, ptr %0, i32 12884
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr i8, ptr %0, i32 12288
  call void %66(ptr noundef %70, ptr noundef %71) #19
  br label %72

72:                                               ; preds = %68, %64, %60
  br label %73

73:                                               ; preds = %73, %72
  %74 = phi i32 [ %83, %73 ], [ 0, %72 ]
  %75 = phi i32 [ %81, %73 ], [ %41, %72 ]
  %76 = getelementptr [85 x %struct.stmmac_stats], ptr @stmmac_mmc, i32 0, i32 %74, i32 2
  %77 = load i32, ptr %76, align 4
  %78 = getelementptr i8, ptr %5, i32 %77
  %79 = load i32, ptr %78, align 4
  %80 = zext i32 %79 to i64
  %81 = add i32 %75, 1
  %82 = getelementptr i64, ptr %2, i32 %75
  store i64 %80, ptr %82, align 8
  %83 = add nuw nsw i32 %74, 1
  %84 = icmp eq i32 %83, 85
  br i1 %84, label %85, label %73

85:                                               ; preds = %73, %56
  %86 = phi i32 [ %41, %56 ], [ %81, %73 ]
  %87 = getelementptr i8, ptr %0, i32 12676
  %88 = load i32, ptr %87, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %97, label %90

90:                                               ; preds = %85
  %91 = getelementptr i8, ptr %0, i32 11048
  %92 = load ptr, ptr %91, align 8
  %93 = call i32 @phylink_get_eee_err(ptr noundef %92) #19
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %90
  %96 = getelementptr i8, ptr %0, i32 11292
  store i32 %93, ptr %96, align 4
  br label %97

97:                                               ; preds = %95, %90, %85
  %98 = getelementptr i8, ptr %0, i32 12632
  %99 = load i32, ptr %98, align 8
  %100 = icmp sgt i32 %99, 52
  br i1 %100, label %101, label %113

101:                                              ; preds = %97
  %102 = load ptr, ptr %42, align 4
  %103 = load ptr, ptr %102, align 4
  %104 = icmp eq ptr %103, null
  br i1 %104, label %113, label %105

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.stmmac_ops, ptr %103, i32 0, i32 25
  %107 = load ptr, ptr %106, align 4
  %108 = icmp eq ptr %107, null
  br i1 %108, label %113, label %109

109:                                              ; preds = %105
  %110 = getelementptr i8, ptr %0, i32 1568
  %111 = load ptr, ptr %110, align 32
  %112 = getelementptr i8, ptr %0, i32 11072
  call void %107(ptr noundef %111, ptr noundef %112, i32 noundef %9, i32 noundef %11) #19
  br label %113

113:                                              ; preds = %109, %105, %101, %97, %51
  %114 = phi i32 [ %86, %97 ], [ %41, %51 ], [ %86, %109 ], [ %86, %105 ], [ %86, %101 ]
  br label %115

115:                                              ; preds = %115, %113
  %116 = phi i32 [ %125, %115 ], [ 0, %113 ]
  %117 = phi i32 [ %123, %115 ], [ %114, %113 ]
  %118 = getelementptr [115 x %struct.stmmac_stats], ptr @stmmac_gstrings_stats, i32 0, i32 %116, i32 2
  %119 = load i32, ptr %118, align 4
  %120 = getelementptr i8, ptr %5, i32 %119
  %121 = load i32, ptr %120, align 4
  %122 = zext i32 %121 to i64
  %123 = add i32 %117, 1
  %124 = getelementptr i64, ptr %2, i32 %117
  store i64 %122, ptr %124, align 8
  %125 = add nuw nsw i32 %116, 1
  %126 = icmp eq i32 %125, 115
  br i1 %126, label %127, label %115

127:                                              ; preds = %115
  %128 = getelementptr i64, ptr %2, i32 %123
  %129 = load ptr, ptr %6, align 64
  %130 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %129, i32 0, i32 30
  %131 = load i32, ptr %130, align 4
  %132 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %129, i32 0, i32 29
  %133 = load i32, ptr %132, align 4
  %134 = icmp eq i32 %131, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %138, %127
  %136 = phi ptr [ %128, %127 ], [ %148, %138 ]
  %137 = icmp eq i32 %133, 0
  br i1 %137, label %164, label %151

138:                                              ; preds = %138, %127
  %139 = phi i32 [ %149, %138 ], [ 0, %127 ]
  %140 = phi ptr [ %148, %138 ], [ %128, %127 ]
  %141 = shl i32 %139, 3
  %142 = add i32 %141, 10136
  %143 = getelementptr i8, ptr %5, i32 %142
  %144 = load i64, ptr %143, align 8
  %145 = getelementptr i64, ptr %140, i32 1
  store i64 %144, ptr %140, align 8
  %146 = getelementptr i8, ptr %143, i32 4
  %147 = load i64, ptr %146, align 8
  %148 = getelementptr i64, ptr %140, i32 2
  store i64 %147, ptr %145, align 8
  %149 = add nuw i32 %139, 1
  %150 = icmp eq i32 %149, %131
  br i1 %150, label %135, label %138

151:                                              ; preds = %151, %135
  %152 = phi i32 [ %162, %151 ], [ 0, %135 ]
  %153 = phi ptr [ %161, %151 ], [ %136, %135 ]
  %154 = shl i32 %152, 3
  %155 = add i32 %154, 10200
  %156 = getelementptr i8, ptr %5, i32 %155
  %157 = load i64, ptr %156, align 8
  %158 = getelementptr i64, ptr %153, i32 1
  store i64 %157, ptr %153, align 8
  %159 = getelementptr i8, ptr %156, i32 4
  %160 = load i64, ptr %159, align 8
  %161 = getelementptr i64, ptr %153, i32 2
  store i64 %160, ptr %158, align 8
  %162 = add nuw i32 %152, 1
  %163 = icmp eq i32 %162, %133
  br i1 %163, label %164, label %151

164:                                              ; preds = %151, %135
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #19
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @stmmac_check_if_running(ptr noundef %0) #8 {
  %2 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  %6 = select i1 %5, i32 -16, i32 0
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmmac_get_sset_count(ptr noundef %0, i32 noundef %1) #3 {
  %3 = icmp eq i32 %1, 1
  br i1 %3, label %4, label %47

4:                                                ; preds = %2
  %5 = getelementptr i8, ptr %0, i32 12096
  %6 = load ptr, ptr %5, align 64
  %7 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %6, i32 0, i32 29
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %6, i32 0, i32 30
  %10 = load i32, ptr %9, align 4
  %11 = shl i32 %10, 1
  %12 = shl i32 %8, 1
  %13 = add i32 %12, 115
  %14 = add i32 %13, %11
  %15 = getelementptr i8, ptr %0, i32 12136
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  %18 = add i32 %14, 85
  %19 = select i1 %17, i32 %14, i32 %18
  %20 = getelementptr i8, ptr %0, i32 12216
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %47, label %23

23:                                               ; preds = %4
  %24 = getelementptr i8, ptr %0, i32 1580
  %25 = getelementptr i8, ptr %0, i32 11712
  br label %26

26:                                               ; preds = %41, %23
  %27 = phi i32 [ 0, %23 ], [ %42, %41 ]
  %28 = phi i32 [ 0, %23 ], [ %43, %41 ]
  %29 = load ptr, ptr %24, align 4
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %41, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.stmmac_ops, ptr %30, i32 0, i32 31
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %32
  %37 = tail call i32 %34(ptr noundef %25, i32 noundef %28, ptr noundef null, ptr noundef null) #19
  %38 = icmp eq i32 %37, 0
  %39 = zext i1 %38 to i32
  %40 = add i32 %27, %39
  br label %41

41:                                               ; preds = %36, %32, %26
  %42 = phi i32 [ %27, %32 ], [ %27, %26 ], [ %40, %36 ]
  %43 = add nuw nsw i32 %28, 1
  %44 = icmp eq i32 %43, 96
  br i1 %44, label %45, label %26

45:                                               ; preds = %41
  %46 = add i32 %42, %19
  br label %47

47:                                               ; preds = %45, %4, %2
  %48 = phi i32 [ %46, %45 ], [ %19, %4 ], [ -95, %2 ]
  ret i32 %48
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @stmmac_get_rxnfc(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readnone %2) #9 {
  %4 = load i32, ptr %1, align 8
  %5 = icmp eq i32 %4, 45
  br i1 %5, label %6, label %13

6:                                                ; preds = %3
  %7 = getelementptr i8, ptr %0, i32 12096
  %8 = load ptr, ptr %7, align 64
  %9 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %8, i32 0, i32 29
  %10 = load i32, ptr %9, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %1, i32 0, i32 2
  store i64 %11, ptr %12, align 8
  br label %13

13:                                               ; preds = %6, %3
  %14 = phi i32 [ 0, %6 ], [ -95, %3 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @stmmac_get_rxfh_key_size(ptr nocapture noundef readnone %0) #10 {
  ret i32 40
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @stmmac_get_rxfh_indir_size(ptr nocapture noundef readnone %0) #10 {
  ret i32 256
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmmac_get_rxfh(ptr nocapture noundef readonly %0, ptr noundef writeonly %1, ptr noundef writeonly %2, ptr noundef writeonly %3) #11 {
  %5 = getelementptr i8, ptr %0, i32 1408
  %6 = icmp eq ptr %1, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %7, %4
  %8 = phi i32 [ %12, %7 ], [ 0, %4 ]
  %9 = getelementptr %struct.stmmac_priv, ptr %5, i32 0, i32 99, i32 2, i32 %8
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr i32, ptr %1, i32 %8
  store i32 %10, ptr %11, align 4
  %12 = add nuw nsw i32 %8, 1
  %13 = icmp eq i32 %12, 256
  br i1 %13, label %14, label %7

14:                                               ; preds = %7, %4
  %15 = icmp eq ptr %2, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %14
  %17 = getelementptr i8, ptr %0, i32 14404
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(40) %2, ptr noundef align 4 dereferenceable(40) %17, i32 40, i1 false)
  br label %18

18:                                               ; preds = %16, %14
  %19 = icmp eq ptr %3, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %18
  store i8 1, ptr %3, align 1
  br label %21

21:                                               ; preds = %20, %18
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmmac_set_rxfh(ptr noundef %0, ptr noundef readonly %1, ptr noundef readonly %2, i8 noundef zeroext %3) #3 {
  %5 = getelementptr i8, ptr %0, i32 1408
  %6 = icmp ugt i8 %3, 1
  br i1 %6, label %36, label %7

7:                                                ; preds = %4
  %8 = icmp eq ptr %1, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %9, %7
  %10 = phi i32 [ %14, %9 ], [ 0, %7 ]
  %11 = getelementptr i32, ptr %1, i32 %10
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr %struct.stmmac_priv, ptr %5, i32 0, i32 99, i32 2, i32 %10
  store i32 %12, ptr %13, align 4
  %14 = add nuw nsw i32 %10, 1
  %15 = icmp eq i32 %14, 256
  br i1 %15, label %16, label %9

16:                                               ; preds = %9, %7
  %17 = icmp eq ptr %2, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %16
  %19 = getelementptr i8, ptr %0, i32 14404
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(40) %19, ptr noundef nonnull align 1 dereferenceable(40) %2, i32 40, i1 false)
  br label %20

20:                                               ; preds = %18, %16
  %21 = getelementptr i8, ptr %0, i32 1580
  %22 = load ptr, ptr %21, align 4
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %36, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.stmmac_ops, ptr %23, i32 0, i32 35
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %36, label %29

29:                                               ; preds = %25
  %30 = getelementptr i8, ptr %0, i32 14400
  %31 = getelementptr i8, ptr %0, i32 12096
  %32 = load ptr, ptr %31, align 64
  %33 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %32, i32 0, i32 29
  %34 = load i32, ptr %33, align 4
  %35 = tail call i32 %27(ptr noundef %22, ptr noundef %30, i32 noundef %34) #19
  br label %36

36:                                               ; preds = %29, %25, %20, %4
  %37 = phi i32 [ -95, %4 ], [ %35, %29 ], [ -22, %25 ], [ -22, %20 ]
  ret i32 %37
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @stmmac_get_channels(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #9 {
  %3 = getelementptr i8, ptr %0, i32 12096
  %4 = load ptr, ptr %3, align 64
  %5 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %4, i32 0, i32 29
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ethtool_channels, ptr %1, i32 0, i32 5
  store i32 %6, ptr %7, align 4
  %8 = load ptr, ptr %3, align 64
  %9 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %8, i32 0, i32 30
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ethtool_channels, ptr %1, i32 0, i32 6
  store i32 %10, ptr %11, align 4
  %12 = getelementptr i8, ptr %0, i32 12192
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.ethtool_channels, ptr %1, i32 0, i32 1
  store i32 %13, ptr %14, align 4
  %15 = getelementptr i8, ptr %0, i32 12196
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.ethtool_channels, ptr %1, i32 0, i32 2
  store i32 %16, ptr %17, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmmac_set_channels(ptr noundef %0, ptr nocapture noundef readonly %1) #3 {
  %3 = getelementptr inbounds %struct.ethtool_channels, ptr %1, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 12192
  %6 = load i32, ptr %5, align 4
  %7 = icmp ugt i32 %4, %6
  br i1 %7, label %20, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ethtool_channels, ptr %1, i32 0, i32 6
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr i8, ptr %0, i32 12196
  %12 = load i32, ptr %11, align 4
  %13 = icmp ugt i32 %10, %12
  %14 = icmp eq i32 %4, 0
  %15 = select i1 %13, i1 true, i1 %14
  %16 = icmp eq i32 %10, 0
  %17 = or i1 %16, %15
  br i1 %17, label %20, label %18

18:                                               ; preds = %8
  %19 = tail call i32 @stmmac_reinit_queues(ptr noundef %0, i32 noundef %4, i32 noundef %10) #19
  br label %20

20:                                               ; preds = %18, %8, %2
  %21 = phi i32 [ %19, %18 ], [ -22, %8 ], [ -22, %2 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmmac_get_ts_info(ptr noundef %0, ptr noundef %1) #3 {
  %3 = getelementptr i8, ptr %0, i32 12140
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %0, i32 12144
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %6, %2
  %11 = getelementptr inbounds %struct.ethtool_ts_info, ptr %1, i32 0, i32 1
  store i32 95, ptr %11, align 4
  %12 = getelementptr i8, ptr %0, i32 12724
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %10
  %16 = tail call i32 @ptp_clock_index(ptr noundef nonnull %13) #19
  %17 = getelementptr inbounds %struct.ethtool_ts_info, ptr %1, i32 0, i32 2
  store i32 %16, ptr %17, align 4
  br label %18

18:                                               ; preds = %15, %10
  %19 = getelementptr inbounds %struct.ethtool_ts_info, ptr %1, i32 0, i32 3
  store i32 3, ptr %19, align 4
  %20 = getelementptr inbounds %struct.ethtool_ts_info, ptr %1, i32 0, i32 5
  store i32 29179, ptr %20, align 4
  br label %23

21:                                               ; preds = %6
  %22 = tail call i32 @ethtool_op_get_ts_info(ptr noundef %0, ptr noundef %1) #19
  br label %23

23:                                               ; preds = %21, %18
  %24 = phi i32 [ 0, %18 ], [ %22, %21 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmmac_ethtool_op_get_eee(ptr nocapture noundef readonly %0, ptr noundef %1) #3 {
  %3 = getelementptr i8, ptr %0, i32 12148
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %22, label %6

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %0, i32 12676
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ethtool_eee, ptr %1, i32 0, i32 5
  store i32 %8, ptr %9, align 4
  %10 = getelementptr i8, ptr %0, i32 12680
  %11 = load i32, ptr %10, align 8
  %12 = getelementptr inbounds %struct.ethtool_eee, ptr %1, i32 0, i32 4
  store i32 %11, ptr %12, align 4
  %13 = getelementptr i8, ptr %0, i32 12684
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.ethtool_eee, ptr %1, i32 0, i32 7
  store i32 %14, ptr %15, align 4
  %16 = getelementptr i8, ptr %0, i32 12688
  %17 = load i32, ptr %16, align 16
  %18 = getelementptr inbounds %struct.ethtool_eee, ptr %1, i32 0, i32 6
  store i32 %17, ptr %18, align 4
  %19 = getelementptr i8, ptr %0, i32 11048
  %20 = load ptr, ptr %19, align 8
  %21 = tail call i32 @phylink_ethtool_get_eee(ptr noundef %20, ptr noundef %1) #19
  br label %22

22:                                               ; preds = %6, %2
  %23 = phi i32 [ %21, %6 ], [ -95, %2 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmmac_ethtool_op_set_eee(ptr noundef %0, ptr noundef %1) #3 {
  %3 = getelementptr i8, ptr %0, i32 1408
  %4 = getelementptr i8, ptr %0, i32 12148
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %52, label %7

7:                                                ; preds = %2
  %8 = getelementptr i8, ptr %0, i32 12688
  %9 = load i32, ptr %8, align 16
  %10 = getelementptr inbounds %struct.ethtool_eee, ptr %1, i32 0, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %9, %11
  br i1 %12, label %16, label %13

13:                                               ; preds = %7
  %14 = getelementptr i8, ptr %0, i32 1572
  %15 = load ptr, ptr %14, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %15, ptr noundef nonnull @.str.6) #20
  br label %16

16:                                               ; preds = %13, %7
  %17 = getelementptr i8, ptr %0, i32 1580
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.mac_device_info, ptr %18, i32 0, i32 7
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %31, label %22

22:                                               ; preds = %16
  %23 = getelementptr i8, ptr %0, i32 12096
  %24 = load ptr, ptr %23, align 64
  %25 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %24, i32 0, i32 52
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.ethtool_eee, ptr %1, i32 0, i32 5
  %28 = load i32, ptr %27, align 4
  %29 = tail call i32 @xpcs_config_eee(ptr noundef nonnull %20, i32 noundef %26, i32 noundef %28) #19
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %52

31:                                               ; preds = %22, %16
  %32 = getelementptr inbounds %struct.ethtool_eee, ptr %1, i32 0, i32 5
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  tail call void @stmmac_disable_eee_mode(ptr noundef %3) #19
  br label %36

36:                                               ; preds = %35, %31
  %37 = getelementptr i8, ptr %0, i32 11048
  %38 = load ptr, ptr %37, align 8
  %39 = tail call i32 @phylink_ethtool_set_eee(ptr noundef %38, ptr noundef %1) #19
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %36
  %42 = load i32, ptr %32, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %41
  %45 = getelementptr i8, ptr %0, i32 12684
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds %struct.ethtool_eee, ptr %1, i32 0, i32 7
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %52, label %50

50:                                               ; preds = %44
  store i32 %48, ptr %45, align 4
  %51 = tail call zeroext i1 @stmmac_eee_init(ptr noundef %3) #19
  br label %52

52:                                               ; preds = %50, %44, %41, %36, %22, %2
  %53 = phi i32 [ -95, %2 ], [ %29, %22 ], [ %39, %36 ], [ 0, %50 ], [ 0, %44 ], [ 0, %41 ]
  ret i32 %53
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @stmmac_get_tunable(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #6 {
  %4 = getelementptr inbounds %struct.ethtool_tunable, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %0, i32 1528
  %9 = load i32, ptr %8, align 8
  store i32 %9, ptr %2, align 4
  br label %10

10:                                               ; preds = %7, %3
  %11 = phi i32 [ 0, %7 ], [ -22, %3 ]
  ret i32 %11
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @stmmac_set_tunable(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #6 {
  %4 = getelementptr inbounds %struct.ethtool_tunable, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = load i32, ptr %2, align 4
  %9 = getelementptr i8, ptr %0, i32 1528
  store i32 %8, ptr %9, align 8
  br label %10

10:                                               ; preds = %7, %3
  %11 = phi i32 [ 0, %7 ], [ -22, %3 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmmac_get_per_queue_coalesce(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #3 {
  %4 = getelementptr i8, ptr %0, i32 1408
  %5 = getelementptr i8, ptr %0, i32 12096
  %6 = load ptr, ptr %5, align 64
  %7 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %6, i32 0, i32 29
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %6, i32 0, i32 30
  %10 = load i32, ptr %9, align 4
  %11 = icmp slt i32 %1, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = tail call i32 @llvm.umax.i32(i32 %8, i32 %10) #19
  %14 = icmp ugt i32 %13, %1
  br i1 %14, label %15, label %60

15:                                               ; preds = %12, %3
  %16 = phi i32 [ %1, %12 ], [ 0, %3 ]
  %17 = icmp ult i32 %16, %10
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  %19 = getelementptr %struct.stmmac_priv, ptr %4, i32 0, i32 1, i32 %16
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.ethtool_coalesce, ptr %2, i32 0, i32 5
  store i32 %20, ptr %21, align 4
  %22 = getelementptr [8 x i32], ptr %4, i32 0, i32 %16
  %23 = load i32, ptr %22, align 4
  br label %26

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.ethtool_coalesce, ptr %2, i32 0, i32 5
  store i32 0, ptr %25, align 4
  br label %26

26:                                               ; preds = %24, %18
  %27 = phi i32 [ %23, %18 ], [ 0, %24 ]
  %28 = getelementptr inbounds %struct.ethtool_coalesce, ptr %2, i32 0, i32 6
  store i32 %27, ptr %28, align 4
  %29 = getelementptr i8, ptr %0, i32 12852
  %30 = load i32, ptr %29, align 4
  %31 = icmp ne i32 %30, 0
  %32 = icmp ult i32 %16, %8
  %33 = select i1 %31, i1 %32, i1 false
  br i1 %33, label %34, label %55

34:                                               ; preds = %26
  %35 = getelementptr %struct.stmmac_priv, ptr %4, i32 0, i32 2, i32 %16
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.ethtool_coalesce, ptr %2, i32 0, i32 2
  store i32 %36, ptr %37, align 4
  %38 = getelementptr %struct.stmmac_priv, ptr %4, i32 0, i32 11, i32 %16
  %39 = load i32, ptr %38, align 4
  %40 = load ptr, ptr %5, align 64
  %41 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %40, i32 0, i32 47
  %42 = load ptr, ptr %41, align 4
  %43 = tail call i32 @clk_get_rate(ptr noundef %42) #19
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %34
  %46 = load ptr, ptr %5, align 64
  %47 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %46, i32 0, i32 51
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %45, %34
  %51 = phi i32 [ %43, %34 ], [ %48, %45 ]
  %52 = shl i32 %39, 8
  %53 = udiv i32 %51, 1000000
  %54 = udiv i32 %52, %53
  br label %57

55:                                               ; preds = %26
  %56 = getelementptr inbounds %struct.ethtool_coalesce, ptr %2, i32 0, i32 2
  store i32 0, ptr %56, align 4
  br label %57

57:                                               ; preds = %55, %50, %45
  %58 = phi i32 [ 0, %55 ], [ %54, %50 ], [ 0, %45 ]
  %59 = getelementptr inbounds %struct.ethtool_coalesce, ptr %2, i32 0, i32 1
  store i32 %58, ptr %59, align 4
  br label %60

60:                                               ; preds = %57, %12
  %61 = phi i32 [ -22, %12 ], [ 0, %57 ]
  ret i32 %61
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmmac_set_per_queue_coalesce(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) #3 {
  %4 = tail call fastcc i32 @__stmmac_set_coalesce(ptr noundef %0, ptr noundef %2, i32 noundef %1)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmmac_ethtool_get_link_ksettings(ptr nocapture noundef readonly %0, ptr noundef %1) #3 {
  %3 = alloca %struct.rgmii_adv, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr i8, ptr %0, i32 1580
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.mac_device_info, ptr %8, i32 0, i32 15
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 3
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %88, label %13

13:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #19
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #19
  store i32 0, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #19
  store i32 0, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #19
  store i32 0, ptr %6, align 4, !annotation !9
  %14 = getelementptr i8, ptr %0, i32 11408
  %15 = load i32, ptr %14, align 16
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.ethtool_link_settings, ptr %1, i32 0, i32 1
  store i32 -1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.ethtool_link_settings, ptr %1, i32 0, i32 2
  store i8 -1, ptr %19, align 4
  br label %86

20:                                               ; preds = %13
  %21 = getelementptr i8, ptr %0, i32 11412
  %22 = load i32, ptr %21, align 4
  %23 = trunc i32 %22 to i8
  %24 = getelementptr inbounds %struct.ethtool_link_settings, ptr %1, i32 0, i32 2
  store i8 %23, ptr %24, align 4
  %25 = getelementptr i8, ptr %0, i32 11416
  %26 = load i32, ptr %25, align 8
  %27 = getelementptr inbounds %struct.ethtool_link_settings, ptr %1, i32 0, i32 1
  store i32 %26, ptr %27, align 4
  %28 = load ptr, ptr %7, align 4
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %86, label %31

31:                                               ; preds = %20
  %32 = getelementptr inbounds %struct.stmmac_ops, ptr %29, i32 0, i32 28
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %86, label %35

35:                                               ; preds = %31
  %36 = getelementptr i8, ptr %0, i32 1568
  %37 = load ptr, ptr %36, align 32
  call void %33(ptr noundef %37, ptr noundef nonnull %3) #19
  %38 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %1, i32 0, i32 1
  %39 = call zeroext i1 @ethtool_convert_link_mode_to_legacy_u32(ptr noundef nonnull %4, ptr noundef %38) #19
  %40 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %1, i32 0, i32 1, i32 1
  %41 = call zeroext i1 @ethtool_convert_link_mode_to_legacy_u32(ptr noundef nonnull %5, ptr noundef %40) #19
  %42 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %1, i32 0, i32 1, i32 2
  %43 = call zeroext i1 @ethtool_convert_link_mode_to_legacy_u32(ptr noundef nonnull %6, ptr noundef %42) #19
  %44 = load i32, ptr %3, align 4
  %45 = and i32 %44, 1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %35
  %48 = load i32, ptr %5, align 4
  %49 = or i32 %48, 8192
  store i32 %49, ptr %5, align 4
  br label %50

50:                                               ; preds = %47, %35
  %51 = and i32 %44, 2
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = load i32, ptr %5, align 4
  %55 = or i32 %54, 16384
  store i32 %55, ptr %5, align 4
  br label %56

56:                                               ; preds = %53, %50
  %57 = getelementptr inbounds %struct.rgmii_adv, ptr %3, i32 0, i32 2
  %58 = load i32, ptr %57, align 4
  %59 = and i32 %58, 1
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %56
  %62 = load i32, ptr %6, align 4
  %63 = or i32 %62, 8192
  store i32 %63, ptr %6, align 4
  br label %64

64:                                               ; preds = %61, %56
  %65 = load i32, ptr %6, align 4
  %66 = shl i32 %58, 13
  %67 = and i32 %66, 16384
  %68 = or i32 %67, %65
  %69 = getelementptr inbounds %struct.ethtool_link_settings, ptr %1, i32 0, i32 5
  store i8 64, ptr %69, align 1
  %70 = load i32, ptr %4, align 4
  %71 = load i32, ptr %5, align 4
  %72 = getelementptr inbounds %struct.rgmii_adv, ptr %3, i32 0, i32 1
  %73 = load i32, ptr %72, align 4
  %74 = icmp eq i32 %73, 0
  %75 = select i1 %74, i32 85, i32 106
  %76 = or i32 %70, %75
  store i32 %76, ptr %4, align 4
  %77 = or i32 %71, %75
  store i32 %77, ptr %5, align 4
  %78 = getelementptr inbounds %struct.rgmii_adv, ptr %3, i32 0, i32 3
  %79 = load i32, ptr %78, align 4
  %80 = icmp eq i32 %79, 0
  %81 = select i1 %80, i32 85, i32 106
  %82 = or i32 %81, %68
  store i32 %82, ptr %6, align 4
  %83 = getelementptr inbounds %struct.ethtool_link_settings, ptr %1, i32 0, i32 3
  store i8 -1, ptr %83, align 1
  call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %38, i32 noundef %76) #19
  %84 = load i32, ptr %5, align 4
  call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %40, i32 noundef %84) #19
  %85 = load i32, ptr %6, align 4
  call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %42, i32 noundef %85) #19
  br label %86

86:                                               ; preds = %64, %31, %20, %17
  %87 = phi i32 [ 0, %64 ], [ 0, %17 ], [ -95, %20 ], [ -95, %31 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #19
  br label %92

88:                                               ; preds = %2
  %89 = getelementptr i8, ptr %0, i32 11048
  %90 = load ptr, ptr %89, align 8
  %91 = tail call i32 @phylink_ethtool_ksettings_get(ptr noundef %90, ptr noundef %1) #19
  br label %92

92:                                               ; preds = %88, %86
  %93 = phi i32 [ %87, %86 ], [ %91, %88 ]
  ret i32 %93
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmmac_ethtool_set_link_ksettings(ptr noundef %0, ptr noundef %1) #3 {
  %3 = getelementptr i8, ptr %0, i32 1580
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.mac_device_info, ptr %4, i32 0, i32 15
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 3
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %29, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.ethtool_link_settings, ptr %1, i32 0, i32 5
  %11 = load i8, ptr %10, align 1
  %12 = icmp eq i8 %11, 1
  br i1 %12, label %13, label %33

13:                                               ; preds = %9
  %14 = getelementptr i8, ptr %0, i32 1588
  tail call void @mutex_lock(ptr noundef %14) #19
  %15 = load ptr, ptr %3, align 4
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %28, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.stmmac_ops, ptr %16, i32 0, i32 26
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %18
  %23 = getelementptr i8, ptr %0, i32 1568
  %24 = load ptr, ptr %23, align 32
  %25 = getelementptr inbounds %struct.mac_device_info, ptr %15, i32 0, i32 17
  %26 = load i32, ptr %25, align 4
  %27 = icmp ne i32 %26, 0
  tail call void %20(ptr noundef %24, i1 noundef zeroext true, i1 noundef zeroext %27, i1 noundef zeroext false) #19
  br label %28

28:                                               ; preds = %22, %18, %13
  tail call void @mutex_unlock(ptr noundef %14) #19
  br label %33

29:                                               ; preds = %2
  %30 = getelementptr i8, ptr %0, i32 11048
  %31 = load ptr, ptr %30, align 8
  %32 = tail call i32 @phylink_ethtool_ksettings_set(ptr noundef %31, ptr noundef %1) #19
  br label %33

33:                                               ; preds = %29, %28, %9
  %34 = phi i32 [ %32, %29 ], [ 0, %28 ], [ -22, %9 ]
  ret i32 %34
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #12

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #12

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_ethtool_get_wol(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_ethtool_set_wol(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_set_wakeup_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_ethtool_nway_reset(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__stmmac_set_coalesce(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #3 {
  %4 = getelementptr i8, ptr %0, i32 1408
  %5 = getelementptr i8, ptr %0, i32 12096
  %6 = load ptr, ptr %5, align 64
  %7 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %6, i32 0, i32 29
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %6, i32 0, i32 30
  %10 = load i32, ptr %9, align 4
  %11 = icmp slt i32 %2, 0
  %12 = tail call i32 @llvm.umax.i32(i32 %8, i32 %10)
  %13 = icmp ugt i32 %12, %2
  %14 = select i1 %11, i1 true, i1 %13
  br i1 %14, label %15, label %123

15:                                               ; preds = %3
  %16 = getelementptr i8, ptr %0, i32 12852
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %85, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.ethtool_coalesce, ptr %1, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %85, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %6, i32 0, i32 47
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 @clk_get_rate(ptr noundef %25) #19
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load ptr, ptr %5, align 64
  %30 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %29, i32 0, i32 51
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %123, label %33

33:                                               ; preds = %28, %23
  %34 = phi i32 [ %26, %23 ], [ %31, %28 ]
  %35 = udiv i32 %34, 1000000
  %36 = mul i32 %35, %21
  %37 = lshr i32 %36, 8
  %38 = add nsw i32 %37, -256
  %39 = icmp ult i32 %38, -240
  br i1 %39, label %123, label %40

40:                                               ; preds = %33
  br i1 %11, label %41, label %65

41:                                               ; preds = %40
  %42 = icmp eq i32 %8, 0
  br i1 %42, label %85, label %43

43:                                               ; preds = %41
  %44 = getelementptr i8, ptr %0, i32 1580
  %45 = getelementptr i8, ptr %0, i32 1568
  %46 = getelementptr inbounds %struct.ethtool_coalesce, ptr %1, i32 0, i32 2
  br label %47

47:                                               ; preds = %60, %43
  %48 = phi i32 [ 0, %43 ], [ %63, %60 ]
  %49 = getelementptr %struct.stmmac_priv, ptr %4, i32 0, i32 11, i32 %48
  store i32 %37, ptr %49, align 4
  %50 = load ptr, ptr %44, align 4
  %51 = getelementptr inbounds %struct.mac_device_info, ptr %50, i32 0, i32 2
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %60, label %54

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.stmmac_dma_ops, ptr %52, i32 0, i32 19
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %54
  %59 = load ptr, ptr %45, align 32
  tail call void %56(ptr noundef %59, i32 noundef %37, i32 noundef %48) #19
  br label %60

60:                                               ; preds = %58, %54, %47
  %61 = load i32, ptr %46, align 4
  %62 = getelementptr %struct.stmmac_priv, ptr %4, i32 0, i32 2, i32 %48
  store i32 %61, ptr %62, align 4
  %63 = add nuw i32 %48, 1
  %64 = icmp eq i32 %63, %8
  br i1 %64, label %85, label %47

65:                                               ; preds = %40
  %66 = icmp ugt i32 %8, %2
  br i1 %66, label %67, label %85

67:                                               ; preds = %65
  %68 = getelementptr %struct.stmmac_priv, ptr %4, i32 0, i32 11, i32 %2
  store i32 %37, ptr %68, align 4
  %69 = getelementptr i8, ptr %0, i32 1580
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.mac_device_info, ptr %70, i32 0, i32 2
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %81, label %74

74:                                               ; preds = %67
  %75 = getelementptr inbounds %struct.stmmac_dma_ops, ptr %72, i32 0, i32 19
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %74
  %79 = getelementptr i8, ptr %0, i32 1568
  %80 = load ptr, ptr %79, align 32
  tail call void %76(ptr noundef %80, i32 noundef %37, i32 noundef %2) #19
  br label %81

81:                                               ; preds = %78, %74, %67
  %82 = getelementptr inbounds %struct.ethtool_coalesce, ptr %1, i32 0, i32 2
  %83 = load i32, ptr %82, align 4
  %84 = getelementptr %struct.stmmac_priv, ptr %4, i32 0, i32 2, i32 %2
  store i32 %83, ptr %84, align 4
  br label %85

85:                                               ; preds = %81, %65, %60, %41, %19, %15
  %86 = getelementptr inbounds %struct.ethtool_coalesce, ptr %1, i32 0, i32 5
  %87 = load i32, ptr %86, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.ethtool_coalesce, ptr %1, i32 0, i32 6
  %91 = load i32, ptr %90, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %123, label %98

93:                                               ; preds = %85
  %94 = icmp ugt i32 %87, 100000
  br i1 %94, label %123, label %95

95:                                               ; preds = %93
  %96 = getelementptr inbounds %struct.ethtool_coalesce, ptr %1, i32 0, i32 6
  %97 = load i32, ptr %96, align 4
  br label %98

98:                                               ; preds = %95, %89
  %99 = phi i32 [ %97, %95 ], [ %91, %89 ]
  %100 = getelementptr inbounds %struct.ethtool_coalesce, ptr %1, i32 0, i32 6
  %101 = icmp ugt i32 %99, 256
  br i1 %101, label %123, label %102

102:                                              ; preds = %98
  br i1 %11, label %103, label %117

103:                                              ; preds = %102
  %104 = icmp eq i32 %10, 0
  br i1 %104, label %123, label %105

105:                                              ; preds = %103
  store i32 %99, ptr %4, align 4
  %106 = load i32, ptr %86, align 4
  %107 = getelementptr i8, ptr %0, i32 1440
  store i32 %106, ptr %107, align 4
  %108 = icmp eq i32 %10, 1
  br i1 %108, label %123, label %109

109:                                              ; preds = %109, %105
  %110 = phi i32 [ %115, %109 ], [ 1, %105 ]
  %111 = load i32, ptr %100, align 4
  %112 = getelementptr [8 x i32], ptr %4, i32 0, i32 %110
  store i32 %111, ptr %112, align 4
  %113 = load i32, ptr %86, align 4
  %114 = getelementptr %struct.stmmac_priv, ptr %4, i32 0, i32 1, i32 %110
  store i32 %113, ptr %114, align 4
  %115 = add nuw i32 %110, 1
  %116 = icmp eq i32 %115, %10
  br i1 %116, label %123, label %109

117:                                              ; preds = %102
  %118 = icmp ugt i32 %10, %2
  br i1 %118, label %119, label %123

119:                                              ; preds = %117
  %120 = getelementptr [8 x i32], ptr %4, i32 0, i32 %2
  store i32 %99, ptr %120, align 4
  %121 = load i32, ptr %86, align 4
  %122 = getelementptr %struct.stmmac_priv, ptr %4, i32 0, i32 1, i32 %2
  store i32 %121, ptr %122, align 4
  br label %123

123:                                              ; preds = %119, %117, %109, %105, %103, %98, %93, %89, %33, %28, %3
  %124 = phi i32 [ -22, %3 ], [ -22, %33 ], [ -22, %89 ], [ -22, %98 ], [ -22, %93 ], [ 0, %117 ], [ 0, %119 ], [ -22, %28 ], [ 0, %103 ], [ 0, %105 ], [ 0, %109 ]
  ret i32 %124
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_reinit_ringparam(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #16

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_ethtool_get_pauseparam(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_ethtool_set_pauseparam(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #17

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_get_eee_err(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_reinit_queues(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_clock_index(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_ts_info(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_ethtool_get_eee(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xpcs_config_eee(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @stmmac_disable_eee_mode(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_ethtool_set_eee(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @stmmac_eee_init(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ethtool_convert_link_mode_to_legacy_u32(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_ethtool_ksettings_get(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_ethtool_ksettings_set(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #18

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #13 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { argmemonly nofree nounwind willreturn }
attributes #15 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { argmemonly nofree nounwind willreturn writeonly }
attributes #17 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #18 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #19 = { nounwind }
attributes #20 = { cold nounwind }

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
!8 = !{i32 0, i32 33}
!9 = !{!"auto-init"}
