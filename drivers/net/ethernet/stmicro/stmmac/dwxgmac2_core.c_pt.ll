; ModuleID = '/llk/IR/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c_pt.bc'
source_filename = "../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.stmmac_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dwxgmac3_error_desc = type { i8, ptr, ptr }
%struct.dwxgmac3_error = type { ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.mac_device_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mii_regs, %struct.mac_link, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, [32 x i32], i32, i8, i8 }
%struct.mii_regs = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mac_link = type { i32, i32, i32, i32, i32, i32, %struct.anon.117, %struct.anon.118 }
%struct.anon.117 = type { i32, i32, i32 }
%struct.anon.118 = type { i32, i32, i32, i32 }
%struct.stmmac_extra_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x %struct.stmmac_txq_stats], [8 x %struct.stmmac_rxq_stats], [40 x i8] }
%struct.stmmac_txq_stats = type { i32, i32 }
%struct.stmmac_rxq_stats = type { i32, i32 }
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
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.stmmac_tc_entry = type { i8, i8, i8, i8, ptr, i32, i32, i32, %struct.anon.109 }
%struct.anon.109 = type { i32, i32, i8, i8, i8, i8, i32 }
%struct.stmmac_pps_cfg = type { i8, %struct.timespec64, %struct.timespec64 }
%struct.timespec64 = type { i64, i32 }
%struct.stmmac_rss = type { i32, [40 x i8], [256 x i32] }
%struct.stmmac_est = type { %struct.mutex, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], i32, [1024 x i32], [1024 x i32], i32 }
%struct.stmmac_priv = type { [8 x i32], [8 x i32], [8 x i32], i32, i8, i8, i32, i32, i32, i32, i32, [8 x i32], i32, ptr, ptr, ptr, ptr, ptr, %struct.mutex, [56 x i8], [8 x %struct.stmmac_rx_queue], i32, [60 x i8], [8 x %struct.stmmac_tx_queue], i32, [60 x i8], [8 x %struct.stmmac_channel], i32, i32, i32, ptr, %struct.phylink_config, ptr, [20 x i8], %struct.stmmac_extra_stats, %struct.stmmac_safety_stats, ptr, %struct.dma_features, %struct.stmmac_counters, i32, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, %struct.hwtstamp_config, ptr, %struct.ptp_clock_info, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.mutex, ptr, ptr, [128 x i32], i32, i32, [8 x i32], [8 x i32], [25 x i8], [25 x i8], [25 x i8], [26 x i8], [26 x i8], [8 x [30 x i8]], [8 x [34 x i8]], ptr, i32, ptr, %struct.work_struct, i32, ptr, %struct.work_struct, [20 x i8], i32, i32, ptr, i32, ptr, [3 x i32], [3 x i32], i32, ptr, [4 x %struct.stmmac_pps_cfg], %struct.stmmac_rss, ptr, ptr, [12 x i8] }
%struct.stmmac_rx_queue = type { i32, i32, [56 x i8], %struct.xdp_rxq_info, ptr, ptr, ptr, ptr, ptr, [44 x i8], ptr, i32, i32, i32, i32, i32, i32, i32, %struct.anon.112, [20 x i8] }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [40 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.anon.112 = type { ptr, i32, i32 }
%struct.stmmac_tx_queue = type { i32, i32, %struct.hrtimer, i32, ptr, ptr, ptr, ptr, %union.anon.113, ptr, ptr, i32, i32, i32, i32, i32, i32, [16 x i8] }
%union.anon.113 = type { ptr }
%struct.stmmac_channel = type { %struct.napi_struct, [40 x i8], %struct.napi_struct, [40 x i8], %struct.napi_struct, ptr, %struct.spinlock, i32, [28 x i8] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }
%struct.stmmac_safety_stats = type { [32 x i32], [32 x i32], [32 x i32] }
%struct.dma_features = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.stmmac_counters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.plat_stmmacenet_data = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [8 x %struct.stmmac_rxq_cfg], [8 x %struct.stmmac_txq_cfg], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i8, i8, i32, i32, i8, i32, i8, i8, i32, ptr, i8, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.stmmac_rxq_cfg = type { i8, i32, i8, i8, i32 }
%struct.stmmac_txq_cfg = type { i32, i8, i32, i32, i32, i32, i8, i32, i32 }

@dwxgmac210_ops = dso_local local_unnamed_addr constant %struct.stmmac_ops { ptr @dwxgmac2_core_init, ptr @dwxgmac2_set_mac, ptr @dwxgmac2_rx_ipc, ptr @dwxgmac2_rx_queue_enable, ptr @dwxgmac2_rx_queue_prio, ptr @dwxgmac2_tx_queue_prio, ptr null, ptr @dwxgmac2_prog_mtl_rx_algorithms, ptr @dwxgmac2_prog_mtl_tx_algorithms, ptr @dwxgmac2_set_mtl_tx_queue_weight, ptr @dwxgmac2_map_mtl_to_dma, ptr @dwxgmac2_config_cbs, ptr @dwxgmac2_dump_regs, ptr @dwxgmac2_host_irq_status, ptr @dwxgmac2_host_mtl_irq_status, ptr @dwxgmac2_set_filter, ptr @dwxgmac2_flow_ctrl, ptr @dwxgmac2_pmt, ptr @dwxgmac2_set_umac_addr, ptr @dwxgmac2_get_umac_addr, ptr @dwxgmac2_set_eee_mode, ptr @dwxgmac2_reset_eee_mode, ptr null, ptr @dwxgmac2_set_eee_timer, ptr @dwxgmac2_set_eee_pls, ptr null, ptr null, ptr null, ptr null, ptr @dwxgmac3_safety_feat_config, ptr @dwxgmac3_safety_feat_irq_status, ptr @dwxgmac3_safety_feat_dump, ptr @dwxgmac3_rxp_config, ptr @dwxgmac2_flex_pps_config, ptr @dwxgmac2_set_mac_loopback, ptr @dwxgmac2_rss_configure, ptr @dwxgmac2_update_vlan_hash, ptr @dwxgmac2_enable_vlan, ptr null, ptr null, ptr null, ptr @dwxgmac2_get_mac_tx_timestamp, ptr @dwxgmac2_sarc_configure, ptr @dwxgmac2_config_l3_filter, ptr @dwxgmac2_config_l4_filter, ptr @dwxgmac2_set_arp_offload, ptr @dwxgmac3_est_configure, ptr null, ptr @dwxgmac3_fpe_configure, ptr null, ptr null }, align 4
@dwxlgmac2_ops = dso_local local_unnamed_addr constant %struct.stmmac_ops { ptr @dwxgmac2_core_init, ptr @dwxgmac2_set_mac, ptr @dwxgmac2_rx_ipc, ptr @dwxlgmac2_rx_queue_enable, ptr @dwxgmac2_rx_queue_prio, ptr @dwxgmac2_tx_queue_prio, ptr null, ptr @dwxgmac2_prog_mtl_rx_algorithms, ptr @dwxgmac2_prog_mtl_tx_algorithms, ptr @dwxgmac2_set_mtl_tx_queue_weight, ptr @dwxgmac2_map_mtl_to_dma, ptr @dwxgmac2_config_cbs, ptr @dwxgmac2_dump_regs, ptr @dwxgmac2_host_irq_status, ptr @dwxgmac2_host_mtl_irq_status, ptr @dwxgmac2_set_filter, ptr @dwxgmac2_flow_ctrl, ptr @dwxgmac2_pmt, ptr @dwxgmac2_set_umac_addr, ptr @dwxgmac2_get_umac_addr, ptr @dwxgmac2_set_eee_mode, ptr @dwxgmac2_reset_eee_mode, ptr null, ptr @dwxgmac2_set_eee_timer, ptr @dwxgmac2_set_eee_pls, ptr null, ptr null, ptr null, ptr null, ptr @dwxgmac3_safety_feat_config, ptr @dwxgmac3_safety_feat_irq_status, ptr @dwxgmac3_safety_feat_dump, ptr @dwxgmac3_rxp_config, ptr @dwxgmac2_flex_pps_config, ptr @dwxgmac2_set_mac_loopback, ptr @dwxgmac2_rss_configure, ptr @dwxgmac2_update_vlan_hash, ptr @dwxgmac2_enable_vlan, ptr null, ptr null, ptr null, ptr @dwxgmac2_get_mac_tx_timestamp, ptr @dwxgmac2_sarc_configure, ptr @dwxgmac2_config_l3_filter, ptr @dwxgmac2_config_l4_filter, ptr @dwxgmac2_set_arp_offload, ptr @dwxgmac3_est_configure, ptr null, ptr @dwxgmac3_fpe_configure, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [9 x i8] c"\09XGMAC2\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"\09XLGMAC\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"MAC\00", align 1
@dwxgmac3_mac_errors = internal constant [32 x %struct.dwxgmac3_error_desc] [%struct.dwxgmac3_error_desc { i8 1, ptr @.str.6, ptr @.str.7 }, %struct.dwxgmac3_error_desc { i8 1, ptr @.str.8, ptr @.str.9 }, %struct.dwxgmac3_error_desc { i8 1, ptr @.str.10, ptr @.str.11 }, %struct.dwxgmac3_error_desc { i8 1, ptr @.str.12, ptr @.str.13 }, %struct.dwxgmac3_error_desc { i8 1, ptr @.str.14, ptr @.str.15 }, %struct.dwxgmac3_error_desc { i8 1, ptr @.str.16, ptr @.str.17 }, %struct.dwxgmac3_error_desc { i8 1, ptr @.str.18, ptr @.str.19 }, %struct.dwxgmac3_error_desc { i8 1, ptr @.str.20, ptr @.str.21 }, %struct.dwxgmac3_error_desc { i8 1, ptr @.str.22, ptr @.str.23 }, %struct.dwxgmac3_error_desc { i8 1, ptr @.str.24, ptr @.str.25 }, %struct.dwxgmac3_error_desc { i8 1, ptr @.str.26, ptr @.str.27 }, %struct.dwxgmac3_error_desc { i8 1, ptr @.str.28, ptr @.str.29 }, %struct.dwxgmac3_error_desc { i8 1, ptr @.str.30, ptr @.str.31 }, %struct.dwxgmac3_error_desc { i8 1, ptr @.str.32, ptr @.str.33 }, %struct.dwxgmac3_error_desc { i8 1, ptr @.str.34, ptr @.str.35 }, %struct.dwxgmac3_error_desc { i8 1, ptr @.str.36, ptr @.str.37 }, %struct.dwxgmac3_error_desc { i8 1, ptr @.str.38, ptr @.str.39 }, %struct.dwxgmac3_error_desc { i8 1, ptr @.str.40, ptr @.str.41 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.42, ptr @.str.43 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.42, ptr @.str.43 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.42, ptr @.str.43 }, %struct.dwxgmac3_error_desc { i8 1, ptr @.str.44, ptr @.str.45 }, %struct.dwxgmac3_error_desc { i8 1, ptr @.str.46, ptr @.str.47 }, %struct.dwxgmac3_error_desc { i8 1, ptr @.str.48, ptr @.str.49 }, %struct.dwxgmac3_error_desc { i8 1, ptr @.str.50, ptr @.str.51 }, %struct.dwxgmac3_error_desc { i8 1, ptr @.str.52, ptr @.str.53 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.42, ptr @.str.43 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.42, ptr @.str.43 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.42, ptr @.str.43 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.42, ptr @.str.43 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.42, ptr @.str.43 }, %struct.dwxgmac3_error_desc { i8 1, ptr @.str.54, ptr @.str.55 }], align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Found %s error in %s: '%s: %s'\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"correctable\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"uncorrectable\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"ATPES\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"Application Transmit Interface Parity Check Error\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"DPES\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"Descriptor Cache Data Path Parity Check Error\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"TPES\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"TSO Data Path Parity Check Error\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"TSOPES\00", align 1
@.str.13 = private unnamed_addr constant [40 x i8] c"TSO Header Data Path Parity Check Error\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"MTPES\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"MTL Data Path Parity Check Error\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"MTSPES\00", align 1
@.str.17 = private unnamed_addr constant [43 x i8] c"MTL TX Status Data Path Parity Check Error\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"MTBUPES\00", align 1
@.str.19 = private unnamed_addr constant [37 x i8] c"MAC TBU Data Path Parity Check Error\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"MTFCPES\00", align 1
@.str.21 = private unnamed_addr constant [37 x i8] c"MAC TFC Data Path Parity Check Error\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"ARPES\00", align 1
@.str.23 = private unnamed_addr constant [59 x i8] c"Application Receive Interface Data Path Parity Check Error\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"MRWCPES\00", align 1
@.str.25 = private unnamed_addr constant [37 x i8] c"MTL RWC Data Path Parity Check Error\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"MRRCPES\00", align 1
@.str.27 = private unnamed_addr constant [37 x i8] c"MTL RCC Data Path Parity Check Error\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"CWPES\00", align 1
@.str.29 = private unnamed_addr constant [39 x i8] c"CSR Write Data Path Parity Check Error\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"ASRPES\00", align 1
@.str.31 = private unnamed_addr constant [44 x i8] c"AXI Slave Read Data Path Parity Check Error\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"TTES\00", align 1
@.str.33 = private unnamed_addr constant [21 x i8] c"TX FSM Timeout Error\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"RTES\00", align 1
@.str.35 = private unnamed_addr constant [21 x i8] c"RX FSM Timeout Error\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"CTES\00", align 1
@.str.37 = private unnamed_addr constant [22 x i8] c"CSR FSM Timeout Error\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"ATES\00", align 1
@.str.39 = private unnamed_addr constant [22 x i8] c"APP FSM Timeout Error\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"PTES\00", align 1
@.str.41 = private unnamed_addr constant [22 x i8] c"PTP FSM Timeout Error\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c"Unknown Error\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"MSTTES\00", align 1
@.str.45 = private unnamed_addr constant [32 x i8] c"Master Read/Write Timeout Error\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"SLVTES\00", align 1
@.str.47 = private unnamed_addr constant [31 x i8] c"Slave Read/Write Timeout Error\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"ATITES\00", align 1
@.str.49 = private unnamed_addr constant [43 x i8] c"Application Timeout on ATI Interface Error\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"ARITES\00", align 1
@.str.51 = private unnamed_addr constant [43 x i8] c"Application Timeout on ARI Interface Error\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"FSMPES\00", align 1
@.str.53 = private unnamed_addr constant [23 x i8] c"FSM State Parity Error\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"CPI\00", align 1
@.str.55 = private unnamed_addr constant [36 x i8] c"Control Register Parity Check Error\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"MTL\00", align 1
@dwxgmac3_mtl_errors = internal constant [32 x %struct.dwxgmac3_error_desc] [%struct.dwxgmac3_error_desc { i8 1, ptr @.str.57, ptr @.str.58 }, %struct.dwxgmac3_error_desc { i8 1, ptr @.str.59, ptr @.str.60 }, %struct.dwxgmac3_error_desc { i8 1, ptr @.str.61, ptr @.str.58 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.42, ptr @.str.43 }, %struct.dwxgmac3_error_desc { i8 1, ptr @.str.62, ptr @.str.63 }, %struct.dwxgmac3_error_desc { i8 1, ptr @.str.64, ptr @.str.65 }, %struct.dwxgmac3_error_desc { i8 1, ptr @.str.66, ptr @.str.63 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.42, ptr @.str.43 }, %struct.dwxgmac3_error_desc { i8 1, ptr @.str.67, ptr @.str.68 }, %struct.dwxgmac3_error_desc { i8 1, ptr @.str.69, ptr @.str.70 }, %struct.dwxgmac3_error_desc { i8 1, ptr @.str.71, ptr @.str.68 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.42, ptr @.str.43 }, %struct.dwxgmac3_error_desc { i8 1, ptr @.str.72, ptr @.str.73 }, %struct.dwxgmac3_error_desc { i8 1, ptr @.str.74, ptr @.str.75 }, %struct.dwxgmac3_error_desc { i8 1, ptr @.str.76, ptr @.str.73 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.42, ptr @.str.43 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.42, ptr @.str.43 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.42, ptr @.str.43 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.42, ptr @.str.43 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.42, ptr @.str.43 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.42, ptr @.str.43 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.42, ptr @.str.43 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.42, ptr @.str.43 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.42, ptr @.str.43 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.42, ptr @.str.43 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.42, ptr @.str.43 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.42, ptr @.str.43 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.42, ptr @.str.43 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.42, ptr @.str.43 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.42, ptr @.str.43 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.42, ptr @.str.43 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.42, ptr @.str.43 }], align 4
@.str.57 = private unnamed_addr constant [6 x i8] c"TXCES\00", align 1
@.str.58 = private unnamed_addr constant [20 x i8] c"MTL TX Memory Error\00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"TXAMS\00", align 1
@.str.60 = private unnamed_addr constant [37 x i8] c"MTL TX Memory Address Mismatch Error\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"TXUES\00", align 1
@.str.62 = private unnamed_addr constant [6 x i8] c"RXCES\00", align 1
@.str.63 = private unnamed_addr constant [20 x i8] c"MTL RX Memory Error\00", align 1
@.str.64 = private unnamed_addr constant [6 x i8] c"RXAMS\00", align 1
@.str.65 = private unnamed_addr constant [37 x i8] c"MTL RX Memory Address Mismatch Error\00", align 1
@.str.66 = private unnamed_addr constant [6 x i8] c"RXUES\00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c"ECES\00", align 1
@.str.68 = private unnamed_addr constant [21 x i8] c"MTL EST Memory Error\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"EAMS\00", align 1
@.str.70 = private unnamed_addr constant [38 x i8] c"MTL EST Memory Address Mismatch Error\00", align 1
@.str.71 = private unnamed_addr constant [5 x i8] c"EUES\00", align 1
@.str.72 = private unnamed_addr constant [6 x i8] c"RPCES\00", align 1
@.str.73 = private unnamed_addr constant [27 x i8] c"MTL RX Parser Memory Error\00", align 1
@.str.74 = private unnamed_addr constant [6 x i8] c"RPAMS\00", align 1
@.str.75 = private unnamed_addr constant [44 x i8] c"MTL RX Parser Memory Address Mismatch Error\00", align 1
@.str.76 = private unnamed_addr constant [6 x i8] c"RPUES\00", align 1
@.str.77 = private unnamed_addr constant [4 x i8] c"DMA\00", align 1
@dwxgmac3_dma_errors = internal constant [32 x %struct.dwxgmac3_error_desc] [%struct.dwxgmac3_error_desc { i8 1, ptr @.str.78, ptr @.str.79 }, %struct.dwxgmac3_error_desc { i8 1, ptr @.str.80, ptr @.str.81 }, %struct.dwxgmac3_error_desc { i8 1, ptr @.str.82, ptr @.str.79 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.42, ptr @.str.43 }, %struct.dwxgmac3_error_desc { i8 1, ptr @.str.83, ptr @.str.84 }, %struct.dwxgmac3_error_desc { i8 1, ptr @.str.85, ptr @.str.86 }, %struct.dwxgmac3_error_desc { i8 1, ptr @.str.87, ptr @.str.84 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.42, ptr @.str.43 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.42, ptr @.str.43 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.42, ptr @.str.43 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.42, ptr @.str.43 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.42, ptr @.str.43 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.42, ptr @.str.43 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.42, ptr @.str.43 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.42, ptr @.str.43 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.42, ptr @.str.43 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.42, ptr @.str.43 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.42, ptr @.str.43 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.42, ptr @.str.43 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.42, ptr @.str.43 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.42, ptr @.str.43 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.42, ptr @.str.43 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.42, ptr @.str.43 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.42, ptr @.str.43 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.42, ptr @.str.43 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.42, ptr @.str.43 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.42, ptr @.str.43 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.42, ptr @.str.43 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.42, ptr @.str.43 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.42, ptr @.str.43 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.42, ptr @.str.43 }, %struct.dwxgmac3_error_desc { i8 0, ptr @.str.42, ptr @.str.43 }], align 4
@.str.78 = private unnamed_addr constant [5 x i8] c"TCES\00", align 1
@.str.79 = private unnamed_addr constant [21 x i8] c"DMA TSO Memory Error\00", align 1
@.str.80 = private unnamed_addr constant [5 x i8] c"TAMS\00", align 1
@.str.81 = private unnamed_addr constant [38 x i8] c"DMA TSO Memory Address Mismatch Error\00", align 1
@.str.82 = private unnamed_addr constant [5 x i8] c"TUES\00", align 1
@.str.83 = private unnamed_addr constant [5 x i8] c"DCES\00", align 1
@.str.84 = private unnamed_addr constant [24 x i8] c"DMA DCACHE Memory Error\00", align 1
@.str.85 = private unnamed_addr constant [5 x i8] c"DAMS\00", align 1
@.str.86 = private unnamed_addr constant [34 x i8] c"DMA DCACHE Address Mismatch Error\00", align 1
@.str.87 = private unnamed_addr constant [5 x i8] c"DUES\00", align 1
@dwxgmac3_all_errors = internal unnamed_addr constant [3 x %struct.dwxgmac3_error] [%struct.dwxgmac3_error { ptr @dwxgmac3_mac_errors }, %struct.dwxgmac3_error { ptr @dwxgmac3_mtl_errors }, %struct.dwxgmac3_error { ptr @dwxgmac3_dma_errors }], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@switch.table.dwxgmac2_set_filter = private unnamed_addr constant [3 x i32] [i32 2, i32 4, i32 8], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwxgmac2_core_init(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %6 = getelementptr i8, ptr %4, i32 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %8 = or i32 %5, 65536
  %9 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 17
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %28, label %12

12:                                               ; preds = %2
  %13 = or i32 %5, 65537
  %14 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 9
  %15 = load i32, ptr %14, align 4
  %16 = xor i32 %15, -1
  %17 = and i32 %13, %16
  switch i32 %10, label %22 [
    i32 10000, label %18
    i32 2500, label %20
  ]

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 9, i32 6, i32 2
  br label %24

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 9, i32 4
  br label %24

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 9, i32 3
  br label %24

24:                                               ; preds = %22, %20, %18
  %25 = phi ptr [ %23, %22 ], [ %21, %20 ], [ %19, %18 ]
  %26 = load i32, ptr %25, align 4
  %27 = or i32 %26, %17
  br label %28

28:                                               ; preds = %24, %2
  %29 = phi i32 [ %8, %2 ], [ %27, %24 ]
  %30 = or i32 %7, 1072693440
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %29) #8, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !13
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %30) #8, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !14
  tail call void @arm_heavy_mb() #8
  %31 = getelementptr i8, ptr %4, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 48) #8, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwxgmac2_set_mac(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !15
  %4 = getelementptr i8, ptr %0, i32 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !16
  %6 = and i32 %3, -2
  %7 = and i32 %5, -2
  %8 = zext i1 %1 to i32
  %9 = or i32 %7, %8
  %10 = or i32 %6, %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !17
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %0, i32 %10) #8, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !18
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %9) #8, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwxgmac2_rx_ipc(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !19
  %6 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 14
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  %9 = and i32 %5, -513
  %10 = select i1 %8, i32 0, i32 512
  %11 = or i32 %10, %9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !20
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %11) #8, !srcloc !12
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !21
  %13 = lshr i32 %12, 9
  %14 = and i32 %13, 1
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwxgmac2_rx_queue_enable(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 160
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !22
  %8 = shl i32 %2, 1
  %9 = shl nuw i32 1, %8
  %10 = sub i32 0, %9
  %11 = sub i32 30, %8
  %12 = lshr i32 -1, %11
  %13 = and i32 %12, %10
  %14 = xor i32 %13, -1
  %15 = and i32 %7, %14
  switch i8 %1, label %21 [
    i8 0, label %16
    i8 1, label %18
  ]

16:                                               ; preds = %3
  %17 = or i32 %15, %9
  br label %21

18:                                               ; preds = %3
  %19 = shl i32 2, %8
  %20 = or i32 %15, %19
  br label %21

21:                                               ; preds = %18, %16, %3
  %22 = phi i32 [ %17, %16 ], [ %20, %18 ], [ %15, %3 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %22) #8, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwxgmac2_rx_queue_prio(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = icmp ugt i32 %2, 3
  %7 = icmp ult i32 %2, 4
  %8 = select i1 %7, i32 168, i32 172
  %9 = getelementptr i8, ptr %5, i32 %8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !24
  %11 = shl i32 %2, 3
  %12 = add i32 %11, -32
  %13 = select i1 %6, i32 %12, i32 %11
  %14 = shl nsw i32 -1, %13
  %15 = sub i32 24, %13
  %16 = lshr i32 -1, %15
  %17 = and i32 %16, %14
  %18 = xor i32 %17, -1
  %19 = and i32 %10, %18
  %20 = shl i32 %1, %13
  %21 = and i32 %17, %20
  %22 = or i32 %19, %21
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !25
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %22) #8, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwxgmac2_tx_queue_prio(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = icmp ugt i32 %2, 3
  %7 = icmp ult i32 %2, 4
  %8 = select i1 %7, i32 4160, i32 4164
  %9 = getelementptr i8, ptr %5, i32 %8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !26
  %11 = shl i32 %2, 3
  %12 = add i32 %11, -32
  %13 = select i1 %6, i32 %12, i32 %11
  %14 = shl nsw i32 -1, %13
  %15 = sub i32 24, %13
  %16 = lshr i32 -1, %15
  %17 = and i32 %16, %14
  %18 = xor i32 %17, -1
  %19 = and i32 %10, %18
  %20 = shl i32 %1, %13
  %21 = and i32 %17, %20
  %22 = or i32 %19, %21
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %22) #8, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwxgmac2_prog_mtl_rx_algorithms(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 4096
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !28
  %7 = and i32 %6, -5
  %8 = icmp eq i32 %1, 5
  %9 = select i1 %8, i32 4, i32 0
  %10 = or i32 %7, %9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !29
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %10) #8, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwxgmac2_prog_mtl_tx_algorithms(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 4096
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !30
  %7 = and i32 %6, -97
  switch i32 %1, label %12 [
    i32 0, label %13
    i32 1, label %8
    i32 2, label %10
  ]

8:                                                ; preds = %2
  %9 = or i32 %7, 32
  br label %13

10:                                               ; preds = %2
  %11 = or i32 %7, 64
  br label %13

12:                                               ; preds = %2
  br label %13

13:                                               ; preds = %12, %10, %8, %2
  %14 = phi i32 [ %7, %12 ], [ %11, %10 ], [ %9, %8 ], [ %7, %2 ]
  %15 = phi i1 [ false, %12 ], [ true, %10 ], [ true, %8 ], [ true, %2 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !31
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %14) #8, !srcloc !12
  %16 = getelementptr i8, ptr %4, i32 4368
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !32
  %18 = and i32 %17, -4
  %19 = or i32 %18, 2
  %20 = select i1 %15, i32 %19, i32 %18
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !33
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %20) #8, !srcloc !12
  %21 = getelementptr i8, ptr %4, i32 4496
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !32
  %23 = and i32 %22, -4
  %24 = or i32 %23, 2
  %25 = select i1 %15, i32 %24, i32 %23
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !33
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %25) #8, !srcloc !12
  %26 = getelementptr i8, ptr %4, i32 4624
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !32
  %28 = and i32 %27, -4
  %29 = or i32 %28, 2
  %30 = select i1 %15, i32 %29, i32 %28
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !33
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %30) #8, !srcloc !12
  %31 = getelementptr i8, ptr %4, i32 4752
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !32
  %33 = and i32 %32, -4
  %34 = or i32 %33, 2
  %35 = select i1 %15, i32 %34, i32 %33
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !33
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %35) #8, !srcloc !12
  %36 = getelementptr i8, ptr %4, i32 4880
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !32
  %38 = and i32 %37, -4
  %39 = or i32 %38, 2
  %40 = select i1 %15, i32 %39, i32 %38
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !33
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %40) #8, !srcloc !12
  %41 = getelementptr i8, ptr %4, i32 5008
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !32
  %43 = and i32 %42, -4
  %44 = or i32 %43, 2
  %45 = select i1 %15, i32 %44, i32 %43
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !33
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %45) #8, !srcloc !12
  %46 = getelementptr i8, ptr %4, i32 5136
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !32
  %48 = and i32 %47, -4
  %49 = or i32 %48, 2
  %50 = select i1 %15, i32 %49, i32 %48
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !33
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %50) #8, !srcloc !12
  %51 = getelementptr i8, ptr %4, i32 5264
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !32
  %53 = and i32 %52, -4
  %54 = or i32 %53, 2
  %55 = select i1 %15, i32 %54, i32 %53
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !33
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %55) #8, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwxgmac2_set_mtl_tx_queue_weight(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !34
  tail call void @arm_heavy_mb() #8
  %6 = shl i32 %2, 7
  %7 = add i32 %6, 4376
  %8 = getelementptr i8, ptr %5, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %1) #8, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwxgmac2_map_mtl_to_dma(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = icmp ugt i32 %1, 3
  %7 = icmp ult i32 %1, 4
  %8 = select i1 %7, i32 4144, i32 4148
  %9 = getelementptr i8, ptr %5, i32 %8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !35
  %11 = shl i32 %1, 3
  %12 = add i32 %11, -32
  %13 = select i1 %6, i32 %12, i32 %11
  %14 = shl nsw i32 -1, %13
  %15 = sub i32 24, %13
  %16 = lshr i32 -1, %15
  %17 = and i32 %16, %14
  %18 = xor i32 %17, -1
  %19 = and i32 %10, %18
  %20 = shl i32 %2, %13
  %21 = and i32 %17, %20
  %22 = or i32 %19, %21
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !36
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %22) #8, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwxgmac2_config_cbs(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !37
  tail call void @arm_heavy_mb() #8
  %9 = shl i32 %5, 7
  %10 = add i32 %9, 4380
  %11 = getelementptr i8, ptr %8, i32 %10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %1) #8, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !38
  tail call void @arm_heavy_mb() #8
  %12 = add i32 %9, 4376
  %13 = getelementptr i8, ptr %8, i32 %12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %2) #8, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !39
  tail call void @arm_heavy_mb() #8
  %14 = add i32 %9, 4384
  %15 = getelementptr i8, ptr %8, i32 %14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %3) #8, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !40
  tail call void @arm_heavy_mb() #8
  %16 = add i32 %9, 4388
  %17 = getelementptr i8, ptr %8, i32 %16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %4) #8, !srcloc !12
  %18 = add i32 %9, 4368
  %19 = getelementptr i8, ptr %8, i32 %18
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !41
  %21 = and i32 %20, -12
  %22 = or i32 %21, 9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !42
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %22) #8, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwxgmac2_dump_regs(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  br label %5

5:                                                ; preds = %5, %2
  %6 = phi i32 [ 0, %2 ], [ %11, %5 ]
  %7 = shl i32 %6, 2
  %8 = getelementptr i8, ptr %4, i32 %7
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !43
  %10 = getelementptr i32, ptr %1, i32 %6
  store i32 %9, ptr %10, align 4
  %11 = add nuw nsw i32 %6, 1
  %12 = icmp eq i32 %11, 1597
  br i1 %12, label %13, label %5

13:                                               ; preds = %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwxgmac2_host_irq_status(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 180
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !44
  %7 = getelementptr i8, ptr %4, i32 176
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !45
  %9 = and i32 %8, %6
  %10 = and i32 %9, 16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 47
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, 1
  store i32 %15, ptr %13, align 4
  %16 = getelementptr i8, ptr %4, i32 192
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !46
  br label %18

18:                                               ; preds = %12, %2
  %19 = and i32 %9, 32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %54, label %21

21:                                               ; preds = %18
  %22 = getelementptr i8, ptr %4, i32 208
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !47
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 51
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, 1
  store i32 %29, ptr %27, align 4
  br label %30

30:                                               ; preds = %26, %21
  %31 = phi i32 [ 1, %26 ], [ 0, %21 ]
  %32 = and i32 %23, 2
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %30
  %35 = or i32 %31, 2
  %36 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 52
  %37 = load i32, ptr %36, align 16
  %38 = add i32 %37, 1
  store i32 %38, ptr %36, align 16
  br label %39

39:                                               ; preds = %34, %30
  %40 = phi i32 [ %35, %34 ], [ %31, %30 ]
  %41 = and i32 %23, 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 53
  %45 = load i32, ptr %44, align 4
  %46 = add i32 %45, 1
  store i32 %46, ptr %44, align 4
  br label %47

47:                                               ; preds = %43, %39
  %48 = and i32 %23, 8
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 54
  %52 = load i32, ptr %51, align 8
  %53 = add i32 %52, 1
  store i32 %53, ptr %51, align 8
  br label %54

54:                                               ; preds = %50, %47, %18
  %55 = phi i32 [ 0, %18 ], [ %40, %50 ], [ %40, %47 ]
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwxgmac2_host_mtl_irq_status(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 4128
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !48
  %7 = shl nuw i32 1, %1
  %8 = and i32 %6, %7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %2
  %11 = shl i32 %1, 7
  %12 = add i32 %11, 4468
  %13 = getelementptr i8, ptr %4, i32 %12
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !49
  %15 = lshr i32 %14, 8
  %16 = and i32 %15, 256
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !50
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 -1) #8, !srcloc !12
  br label %17

17:                                               ; preds = %10, %2
  %18 = phi i32 [ %16, %10 ], [ 0, %2 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwxgmac2_set_filter(ptr nocapture noundef readonly %0, ptr noundef readonly %1) #0 {
  %3 = alloca [8 x i32], align 4
  %4 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 5
  %5 = load i32, ptr %4, align 32
  %6 = inttoptr i32 %5 to ptr
  %7 = getelementptr i8, ptr %6, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !51
  %9 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 13
  %10 = load i32, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #8
  %11 = and i32 %8, -1046
  %12 = or i32 %11, 1024
  %13 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 256
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = or i32 %11, 1153
  br label %65

19:                                               ; preds = %2
  %20 = and i32 %14, 512
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 61
  %24 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 61, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 11
  %27 = load i32, ptr %26, align 4
  %28 = icmp ugt i32 %25, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %22, %19
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !52
  tail call void @arm_heavy_mb() #8
  %30 = getelementptr i8, ptr %6, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 -1) #8, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !52
  tail call void @arm_heavy_mb() #8
  %31 = getelementptr i8, ptr %6, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 -1) #8, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !52
  tail call void @arm_heavy_mb() #8
  %32 = getelementptr i8, ptr %6, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 -1) #8, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !52
  tail call void @arm_heavy_mb() #8
  %33 = getelementptr i8, ptr %6, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 -1) #8, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !52
  tail call void @arm_heavy_mb() #8
  %34 = getelementptr i8, ptr %6, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 -1) #8, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !52
  tail call void @arm_heavy_mb() #8
  %35 = getelementptr i8, ptr %6, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 -1) #8, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !52
  tail call void @arm_heavy_mb() #8
  %36 = getelementptr i8, ptr %6, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 -1) #8, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !52
  tail call void @arm_heavy_mb() #8
  %37 = getelementptr i8, ptr %6, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 -1) #8, !srcloc !12
  %38 = or i32 %11, 1040
  br label %65

39:                                               ; preds = %22
  %40 = icmp eq i32 %25, 0
  %41 = and i32 %14, 4096
  %42 = icmp eq i32 %41, 0
  %43 = select i1 %40, i1 true, i1 %42
  br i1 %43, label %65, label %44

44:                                               ; preds = %39
  %45 = or i32 %11, 1028
  %46 = load ptr, ptr %23, align 4
  %47 = icmp eq ptr %46, %23
  br i1 %47, label %65, label %48

48:                                               ; preds = %44
  %49 = sub i32 32, %10
  br label %50

50:                                               ; preds = %50, %48
  %51 = phi ptr [ %46, %48 ], [ %63, %50 ]
  %52 = getelementptr inbounds %struct.netdev_hw_addr, ptr %51, i32 0, i32 2
  %53 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %52, i32 noundef 6) #9
  %54 = xor i32 %53, -1
  %55 = tail call i32 asm "rbit $0, $1", "=r,r"(i32 %54) #10, !srcloc !53
  %56 = lshr i32 %55, %49
  %57 = and i32 %56, 31
  %58 = shl nuw i32 1, %57
  %59 = lshr i32 %56, 5
  %60 = getelementptr [8 x i32], ptr %3, i32 0, i32 %59
  %61 = load i32, ptr %60, align 4
  %62 = or i32 %58, %61
  store i32 %62, ptr %60, align 4
  %63 = load ptr, ptr %51, align 4
  %64 = icmp eq ptr %63, %23
  br i1 %64, label %65, label %50

65:                                               ; preds = %50, %44, %39, %29, %17
  %66 = phi i32 [ %18, %17 ], [ %12, %39 ], [ %45, %44 ], [ %38, %29 ], [ %45, %50 ]
  %67 = add i32 %10, -6
  %68 = icmp ult i32 %67, 3
  br i1 %68, label %69, label %81

69:                                               ; preds = %65
  %70 = getelementptr inbounds [3 x i32], ptr @switch.table.dwxgmac2_set_filter, i32 0, i32 %67
  %71 = load i32, ptr %70, align 4
  br label %72

72:                                               ; preds = %72, %69
  %73 = phi i32 [ 0, %69 ], [ %79, %72 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !54
  tail call void @arm_heavy_mb() #8
  %74 = getelementptr i32, ptr %3, i32 %73
  %75 = load i32, ptr %74, align 4
  %76 = shl i32 %73, 2
  %77 = add nuw nsw i32 %76, 16
  %78 = getelementptr i8, ptr %6, i32 %77
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 %75) #8, !srcloc !12
  %79 = add nuw nsw i32 %73, 1
  %80 = icmp eq i32 %79, %71
  br i1 %80, label %81, label %72

81:                                               ; preds = %72, %65
  %82 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 60
  %83 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 60, i32 1
  %84 = load i32, ptr %83, align 4
  %85 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 12
  %86 = load i32, ptr %85, align 4
  %87 = icmp ugt i32 %84, %86
  br i1 %87, label %93, label %88

88:                                               ; preds = %81
  %89 = load ptr, ptr %82, align 4
  %90 = icmp eq ptr %89, %82
  br i1 %90, label %97, label %91

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 10
  br label %99

93:                                               ; preds = %81
  %94 = or i32 %66, 1
  br label %147

95:                                               ; preds = %99
  %96 = icmp slt i32 %135, 32
  br i1 %96, label %97, label %147

97:                                               ; preds = %95, %88
  %98 = phi i32 [ 1, %88 ], [ %135, %95 ]
  br label %138

99:                                               ; preds = %99, %91
  %100 = phi ptr [ %89, %91 ], [ %136, %99 ]
  %101 = phi i32 [ 1, %91 ], [ %135, %99 ]
  %102 = getelementptr inbounds %struct.netdev_hw_addr, ptr %100, i32 0, i32 2
  %103 = load ptr, ptr %92, align 4
  %104 = getelementptr %struct.netdev_hw_addr, ptr %100, i32 0, i32 2, i32 5
  %105 = load i8, ptr %104, align 1
  %106 = zext i8 %105 to i32
  %107 = shl nuw nsw i32 %106, 8
  %108 = getelementptr %struct.netdev_hw_addr, ptr %100, i32 0, i32 2, i32 4
  %109 = load i8, ptr %108, align 1
  %110 = zext i8 %109 to i32
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !55
  tail call void @arm_heavy_mb() #8
  %111 = or i32 %107, %110
  %112 = or i32 %111, -2147483648
  %113 = shl i32 %101, 3
  %114 = add i32 %113, 768
  %115 = getelementptr i8, ptr %103, i32 %114
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %115, i32 %112) #8, !srcloc !12
  %116 = getelementptr %struct.netdev_hw_addr, ptr %100, i32 0, i32 2, i32 3
  %117 = load i8, ptr %116, align 1
  %118 = zext i8 %117 to i32
  %119 = shl nuw i32 %118, 24
  %120 = getelementptr %struct.netdev_hw_addr, ptr %100, i32 0, i32 2, i32 2
  %121 = load i8, ptr %120, align 1
  %122 = zext i8 %121 to i32
  %123 = shl nuw nsw i32 %122, 16
  %124 = or i32 %123, %119
  %125 = getelementptr %struct.netdev_hw_addr, ptr %100, i32 0, i32 2, i32 1
  %126 = load i8, ptr %125, align 1
  %127 = zext i8 %126 to i32
  %128 = shl nuw nsw i32 %127, 8
  %129 = or i32 %124, %128
  %130 = load i8, ptr %102, align 1
  %131 = zext i8 %130 to i32
  %132 = or i32 %129, %131
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !56
  tail call void @arm_heavy_mb() #8
  %133 = add i32 %113, 772
  %134 = getelementptr i8, ptr %103, i32 %133
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %134, i32 %132) #8, !srcloc !12
  %135 = add i32 %101, 1
  %136 = load ptr, ptr %100, align 4
  %137 = icmp eq ptr %136, %82
  br i1 %137, label %95, label %99

138:                                              ; preds = %138, %97
  %139 = phi i32 [ %145, %138 ], [ %98, %97 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !57
  tail call void @arm_heavy_mb() #8
  %140 = shl i32 %139, 3
  %141 = add i32 %140, 768
  %142 = getelementptr i8, ptr %6, i32 %141
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %142, i32 0) #8, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !58
  tail call void @arm_heavy_mb() #8
  %143 = add i32 %140, 772
  %144 = getelementptr i8, ptr %6, i32 %143
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %144, i32 0) #8, !srcloc !12
  %145 = add i32 %139, 1
  %146 = icmp eq i32 %145, 32
  br i1 %146, label %147, label %138

147:                                              ; preds = %138, %95, %93
  %148 = phi i32 [ %94, %93 ], [ %66, %95 ], [ %66, %138 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !59
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %148) #8, !srcloc !12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwxgmac2_flow_ctrl(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = and i32 %2, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !60
  tail call void @arm_heavy_mb() #8
  %11 = getelementptr i8, ptr %7, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 1) #8, !srcloc !12
  br label %12

12:                                               ; preds = %10, %5
  %13 = and i32 %2, 2
  %14 = icmp ne i32 %13, 0
  %15 = icmp ne i32 %4, 0
  %16 = and i1 %14, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %12
  %18 = icmp eq i32 %1, 0
  %19 = shl i32 %3, 16
  %20 = or i32 %19, 2
  %21 = select i1 %18, i32 2, i32 %20
  br label %22

22:                                               ; preds = %22, %17
  %23 = phi i32 [ 0, %17 ], [ %27, %22 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !61
  tail call void @arm_heavy_mb() #8
  %24 = shl i32 %23, 2
  %25 = add i32 %24, 112
  %26 = getelementptr i8, ptr %7, i32 %25
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %21) #8, !srcloc !12
  %27 = add nuw i32 %23, 1
  %28 = icmp eq i32 %27, %4
  br i1 %28, label %29, label %22

29:                                               ; preds = %22, %12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwxgmac2_pmt(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = and i32 %1, 34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = getelementptr i8, ptr %4, i32 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !62
  %10 = or i32 %9, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !63
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %10) #8, !srcloc !12
  br label %11

11:                                               ; preds = %7, %2
  %12 = and i32 %1, 32
  %13 = icmp eq i32 %12, 0
  %14 = and i32 %1, 2
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %13, i32 0, i32 3
  %17 = or i32 %16, 517
  %18 = select i1 %15, i32 %16, i32 %17
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !64
  tail call void @arm_heavy_mb() #8
  %19 = getelementptr i8, ptr %4, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %18) #8, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwxgmac2_set_umac_addr(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %1, i32 5
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  %9 = shl nuw nsw i32 %8, 8
  %10 = getelementptr i8, ptr %1, i32 4
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i32
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !55
  tail call void @arm_heavy_mb() #8
  %13 = or i32 %9, %12
  %14 = or i32 %13, -2147483648
  %15 = shl i32 %2, 3
  %16 = add i32 %15, 768
  %17 = getelementptr i8, ptr %5, i32 %16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %14) #8, !srcloc !12
  %18 = getelementptr i8, ptr %1, i32 3
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i32
  %21 = shl nuw i32 %20, 24
  %22 = getelementptr i8, ptr %1, i32 2
  %23 = load i8, ptr %22, align 1
  %24 = zext i8 %23 to i32
  %25 = shl nuw nsw i32 %24, 16
  %26 = or i32 %25, %21
  %27 = getelementptr i8, ptr %1, i32 1
  %28 = load i8, ptr %27, align 1
  %29 = zext i8 %28 to i32
  %30 = shl nuw nsw i32 %29, 8
  %31 = or i32 %26, %30
  %32 = load i8, ptr %1, align 1
  %33 = zext i8 %32 to i32
  %34 = or i32 %31, %33
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !56
  tail call void @arm_heavy_mb() #8
  %35 = add i32 %15, 772
  %36 = getelementptr i8, ptr %5, i32 %35
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %34) #8, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwxgmac2_get_umac_addr(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = shl i32 %2, 3
  %7 = add i32 %6, 768
  %8 = getelementptr i8, ptr %5, i32 %7
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !65
  %10 = add i32 %6, 772
  %11 = getelementptr i8, ptr %5, i32 %10
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !66
  %13 = trunc i32 %12 to i8
  store i8 %13, ptr %1, align 1
  %14 = lshr i32 %12, 8
  %15 = trunc i32 %14 to i8
  %16 = getelementptr i8, ptr %1, i32 1
  store i8 %15, ptr %16, align 1
  %17 = lshr i32 %12, 16
  %18 = trunc i32 %17 to i8
  %19 = getelementptr i8, ptr %1, i32 2
  store i8 %18, ptr %19, align 1
  %20 = lshr i32 %12, 24
  %21 = trunc i32 %20 to i8
  %22 = getelementptr i8, ptr %1, i32 3
  store i8 %21, ptr %22, align 1
  %23 = trunc i32 %9 to i8
  %24 = getelementptr i8, ptr %1, i32 4
  store i8 %23, ptr %24, align 1
  %25 = lshr i32 %9, 8
  %26 = trunc i32 %25 to i8
  %27 = getelementptr i8, ptr %1, i32 5
  store i8 %26, ptr %27, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwxgmac2_set_eee_mode(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 208
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !67
  %7 = select i1 %1, i32 2686976, i32 589824
  %8 = or i32 %6, %7
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !68
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %8) #8, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwxgmac2_reset_eee_mode(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 208
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !69
  %6 = and i32 %5, -2686977
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !70
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %6) #8, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwxgmac2_set_eee_timer(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = and i32 %2, 65535
  %7 = shl i32 %1, 16
  %8 = and i32 %7, 67043328
  %9 = or i32 %6, %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !71
  tail call void @arm_heavy_mb() #8
  %10 = getelementptr i8, ptr %5, i32 212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %9) #8, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwxgmac2_set_eee_pls(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 208
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !72
  %7 = icmp eq i32 %1, 0
  %8 = and i32 %6, -131073
  %9 = select i1 %7, i32 0, i32 131072
  %10 = or i32 %8, %9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !73
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %10) #8, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwxgmac3_safety_feat_config(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %18, label %5

5:                                                ; preds = %3
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !74
  tail call void @arm_heavy_mb() #8
  %6 = getelementptr i8, ptr %0, i32 4288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 0) #8, !srcloc !12
  %7 = getelementptr i8, ptr %0, i32 4296
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !75
  %9 = or i32 %8, 4369
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !76
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %9) #8, !srcloc !12
  %10 = getelementptr i8, ptr %0, i32 12392
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !77
  %12 = or i32 %11, 3
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !78
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %12) #8, !srcloc !12
  %13 = icmp eq i32 %1, 1
  br i1 %13, label %18, label %14

14:                                               ; preds = %5
  %15 = getelementptr i8, ptr %0, i32 344
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !79
  %17 = or i32 %16, 3
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !80
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %17) #8, !srcloc !12
  br label %18

18:                                               ; preds = %14, %5, %3
  %19 = phi i32 [ 0, %14 ], [ -22, %3 ], [ 0, %5 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwxgmac3_safety_feat_irq_status(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = icmp eq i32 %2, 0
  br i1 %8, label %100, label %9

9:                                                ; preds = %4
  %10 = getelementptr i8, ptr %1, i32 4292
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !81
  %12 = getelementptr i8, ptr %1, i32 12388
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !82
  %14 = icmp slt i32 %11, 0
  %15 = icmp slt i32 %13, 0
  %16 = select i1 %14, i1 true, i1 %15
  br i1 %16, label %17, label %35

17:                                               ; preds = %9
  %18 = getelementptr i8, ptr %1, i32 336
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !83
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !84
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %19) #8, !srcloc !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  store i32 %19, ptr %7, align 4
  %20 = call i32 @_find_next_bit_le(ptr noundef nonnull %7, i32 noundef 32, i32 noundef 0) #8
  %21 = icmp ult i32 %20, 32
  br i1 %21, label %22, label %34

22:                                               ; preds = %22, %17
  %23 = phi i32 [ %32, %22 ], [ %20, %17 ]
  %24 = getelementptr %struct.dwxgmac3_error_desc, ptr @dwxgmac3_mac_errors, i32 %23, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr %struct.dwxgmac3_error_desc, ptr @dwxgmac3_mac_errors, i32 %23, i32 2
  %27 = load ptr, ptr %26, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2, ptr noundef %25, ptr noundef %27) #11
  %28 = getelementptr i32, ptr %3, i32 %23
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %29, 1
  store i32 %30, ptr %28, align 4
  %31 = add nuw nsw i32 %23, 1
  %32 = call i32 @_find_next_bit_le(ptr noundef nonnull %7, i32 noundef 32, i32 noundef %31) #8
  %33 = icmp ult i32 %32, 32
  br i1 %33, label %22, label %34

34:                                               ; preds = %22, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  br label %35

35:                                               ; preds = %34, %9
  %36 = phi i32 [ 1, %34 ], [ 0, %9 ]
  %37 = and i32 %11, 3
  %38 = icmp ne i32 %37, 0
  %39 = and i32 %13, 805306368
  %40 = icmp ne i32 %39, 0
  %41 = select i1 %38, i1 true, i1 %40
  br i1 %41, label %42, label %71

42:                                               ; preds = %35
  %43 = and i32 %11, 1
  %44 = icmp ne i32 %43, 0
  %45 = and i32 %13, 268435456
  %46 = icmp ne i32 %45, 0
  %47 = select i1 %44, i1 true, i1 %46
  %48 = getelementptr i8, ptr %1, i32 4300
  %49 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #8, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !85
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !86
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %49) #8, !srcloc !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  %50 = getelementptr i8, ptr %3, i32 128
  store i32 %49, ptr %6, align 4
  %51 = call i32 @_find_next_bit_le(ptr noundef nonnull %6, i32 noundef 32, i32 noundef 0) #8
  %52 = icmp ult i32 %51, 32
  br i1 %52, label %53, label %67

53:                                               ; preds = %42
  %54 = select i1 %47, ptr @.str.4, ptr @.str.5
  br label %55

55:                                               ; preds = %55, %53
  %56 = phi i32 [ %51, %53 ], [ %65, %55 ]
  %57 = getelementptr %struct.dwxgmac3_error_desc, ptr @dwxgmac3_mtl_errors, i32 %56, i32 1
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr %struct.dwxgmac3_error_desc, ptr @dwxgmac3_mtl_errors, i32 %56, i32 2
  %60 = load ptr, ptr %59, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull %54, ptr noundef nonnull @.str.56, ptr noundef %58, ptr noundef %60) #11
  %61 = getelementptr i32, ptr %50, i32 %56
  %62 = load i32, ptr %61, align 4
  %63 = add i32 %62, 1
  store i32 %63, ptr %61, align 4
  %64 = add nuw nsw i32 %56, 1
  %65 = call i32 @_find_next_bit_le(ptr noundef nonnull %6, i32 noundef 32, i32 noundef %64) #8
  %66 = icmp ult i32 %65, 32
  br i1 %66, label %55, label %67

67:                                               ; preds = %55, %42
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  %68 = xor i1 %47, true
  %69 = zext i1 %68 to i32
  %70 = or i32 %36, %69
  br label %71

71:                                               ; preds = %67, %35
  %72 = phi i32 [ %70, %67 ], [ %36, %35 ]
  %73 = and i32 %13, 3
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %100, label %75

75:                                               ; preds = %71
  %76 = and i32 %13, 1
  %77 = getelementptr i8, ptr %1, i32 12396
  %78 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %77) #8, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !87
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !88
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 %78) #8, !srcloc !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  %79 = getelementptr i8, ptr %3, i32 256
  store i32 %78, ptr %5, align 4
  %80 = call i32 @_find_next_bit_le(ptr noundef nonnull %5, i32 noundef 32, i32 noundef 0) #8
  %81 = icmp ult i32 %80, 32
  br i1 %81, label %82, label %97

82:                                               ; preds = %75
  %83 = icmp eq i32 %76, 0
  %84 = select i1 %83, ptr @.str.5, ptr @.str.4
  br label %85

85:                                               ; preds = %85, %82
  %86 = phi i32 [ %80, %82 ], [ %95, %85 ]
  %87 = getelementptr %struct.dwxgmac3_error_desc, ptr @dwxgmac3_dma_errors, i32 %86, i32 1
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr %struct.dwxgmac3_error_desc, ptr @dwxgmac3_dma_errors, i32 %86, i32 2
  %90 = load ptr, ptr %89, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull %84, ptr noundef nonnull @.str.77, ptr noundef %88, ptr noundef %90) #11
  %91 = getelementptr i32, ptr %79, i32 %86
  %92 = load i32, ptr %91, align 4
  %93 = add i32 %92, 1
  store i32 %93, ptr %91, align 4
  %94 = add nuw nsw i32 %86, 1
  %95 = call i32 @_find_next_bit_le(ptr noundef nonnull %5, i32 noundef 32, i32 noundef %94) #8
  %96 = icmp ult i32 %95, 32
  br i1 %96, label %85, label %97

97:                                               ; preds = %85, %75
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  %98 = xor i32 %76, 1
  %99 = or i32 %72, %98
  br label %100

100:                                              ; preds = %97, %71, %4
  %101 = phi i32 [ -22, %4 ], [ %99, %97 ], [ %72, %71 ]
  ret i32 %101
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @dwxgmac3_safety_feat_dump(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef writeonly %2, ptr noundef writeonly %3) #1 {
  %5 = sdiv i32 %1, 32
  %6 = mul i32 %5, 32
  %7 = sub i32 %1, %6
  %8 = icmp ugt i32 %5, 2
  br i1 %8, label %25, label %9

9:                                                ; preds = %4
  %10 = getelementptr [3 x %struct.dwxgmac3_error], ptr @dwxgmac3_all_errors, i32 0, i32 %5
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr %struct.dwxgmac3_error_desc, ptr %11, i32 %7
  %13 = load i8, ptr %12, align 4, !range !89
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %9
  %16 = icmp eq ptr %2, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %15
  %18 = getelementptr i32, ptr %0, i32 %1
  %19 = load i32, ptr %18, align 4
  store i32 %19, ptr %2, align 4
  br label %20

20:                                               ; preds = %17, %15
  %21 = icmp eq ptr %3, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %20
  %23 = getelementptr %struct.dwxgmac3_error_desc, ptr %11, i32 %7, i32 1
  %24 = load ptr, ptr %23, align 4
  store ptr %24, ptr %3, align 4
  br label %25

25:                                               ; preds = %22, %20, %9, %4
  %26 = phi i32 [ -22, %4 ], [ -22, %9 ], [ 0, %22 ], [ 0, %20 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwxgmac3_rxp_config(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !90
  %6 = and i32 %5, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !91
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %6) #8, !srcloc !12
  %7 = getelementptr i8, ptr %0, i32 4096
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !92
  %9 = and i32 %8, -32769
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !93
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %9) #8, !srcloc !12
  %10 = icmp eq i32 %2, 0
  br i1 %10, label %123, label %14

11:                                               ; preds = %14
  %12 = add i32 %2, -1
  %13 = icmp sgt i32 %12, -1
  br i1 %13, label %19, label %123

14:                                               ; preds = %14, %3
  %15 = phi i32 [ %17, %14 ], [ 0, %3 ]
  %16 = getelementptr %struct.stmmac_tc_entry, ptr %1, i32 %15, i32 1
  store i8 0, ptr %16, align 1
  %17 = add nuw i32 %15, 1
  %18 = icmp eq i32 %17, %2
  br i1 %18, label %11, label %14

19:                                               ; preds = %92, %11
  %20 = phi i32 [ %63, %92 ], [ 0, %11 ]
  %21 = phi i32 [ %93, %92 ], [ 0, %11 ]
  br label %22

22:                                               ; preds = %53, %19
  %23 = phi i32 [ %12, %19 ], [ %54, %53 ]
  %24 = phi i1 [ false, %19 ], [ true, %53 ]
  %25 = phi i32 [ 0, %19 ], [ %28, %53 ]
  %26 = phi i32 [ -1, %19 ], [ %46, %53 ]
  br label %27

27:                                               ; preds = %50, %22
  %28 = phi i32 [ %51, %50 ], [ %23, %22 ]
  %29 = getelementptr %struct.stmmac_tc_entry, ptr %1, i32 %28
  %30 = load i8, ptr %29, align 4, !range !89
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %50, label %32

32:                                               ; preds = %27
  %33 = getelementptr %struct.stmmac_tc_entry, ptr %1, i32 %28, i32 1
  %34 = load i8, ptr %33, align 1, !range !89
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %32
  %37 = getelementptr %struct.stmmac_tc_entry, ptr %1, i32 %28, i32 2
  %38 = load i8, ptr %37, align 2, !range !89
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %36
  %41 = getelementptr %struct.stmmac_tc_entry, ptr %1, i32 %28, i32 3
  %42 = load i8, ptr %41, align 1, !range !89
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = getelementptr %struct.stmmac_tc_entry, ptr %1, i32 %28, i32 7
  %46 = load i32, ptr %45, align 4
  %47 = icmp uge i32 %46, %20
  %48 = icmp ult i32 %46, %26
  %49 = and i1 %47, %48
  br i1 %49, label %53, label %50

50:                                               ; preds = %44, %40, %36, %32, %27
  %51 = add i32 %28, -1
  %52 = icmp sgt i32 %51, -1
  br i1 %52, label %27, label %56

53:                                               ; preds = %44
  %54 = add nsw i32 %28, -1
  %55 = icmp sgt i32 %28, 0
  br i1 %55, label %22, label %57

56:                                               ; preds = %50
  br i1 %24, label %57, label %94

57:                                               ; preds = %56, %53
  %58 = phi i32 [ %25, %56 ], [ %28, %53 ]
  %59 = getelementptr %struct.stmmac_tc_entry, ptr %1, i32 %58
  %60 = icmp eq ptr %59, null
  br i1 %60, label %94, label %61

61:                                               ; preds = %57
  %62 = getelementptr %struct.stmmac_tc_entry, ptr %1, i32 %58, i32 7
  %63 = load i32, ptr %62, align 4
  %64 = getelementptr %struct.stmmac_tc_entry, ptr %1, i32 %58, i32 4
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %75, label %67

67:                                               ; preds = %61
  %68 = getelementptr %struct.stmmac_tc_entry, ptr %1, i32 %58, i32 8, i32 2
  %69 = load i8, ptr %68, align 4
  %70 = and i8 %69, -12
  %71 = or i8 %70, 8
  store i8 %71, ptr %68, align 4
  %72 = trunc i32 %21 to i8
  %73 = add i8 %72, 2
  %74 = getelementptr %struct.stmmac_tc_entry, ptr %1, i32 %58, i32 8, i32 4
  store i8 %73, ptr %74, align 2
  br label %75

75:                                               ; preds = %67, %61
  %76 = tail call fastcc i32 @dwxgmac3_rxp_update_single_entry(ptr noundef %0, ptr noundef nonnull %59, i32 noundef %21)
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %123

78:                                               ; preds = %75
  %79 = add i32 %21, 1
  %80 = getelementptr %struct.stmmac_tc_entry, ptr %1, i32 %58, i32 5
  store i32 %21, ptr %80, align 4
  %81 = getelementptr %struct.stmmac_tc_entry, ptr %1, i32 %58, i32 1
  store i8 1, ptr %81, align 1
  br i1 %66, label %92, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.stmmac_tc_entry, ptr %65, i32 0, i32 1
  %84 = load i8, ptr %83, align 1, !range !89
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %82
  %87 = tail call fastcc i32 @dwxgmac3_rxp_update_single_entry(ptr noundef %0, ptr noundef nonnull %65, i32 noundef %79)
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %123

89:                                               ; preds = %86
  %90 = add i32 %21, 2
  %91 = getelementptr inbounds %struct.stmmac_tc_entry, ptr %65, i32 0, i32 5
  store i32 %79, ptr %91, align 4
  store i8 1, ptr %83, align 1
  br label %92

92:                                               ; preds = %89, %82, %78
  %93 = phi i32 [ %90, %89 ], [ %79, %82 ], [ %79, %78 ]
  br label %19

94:                                               ; preds = %57, %56
  %95 = icmp eq i32 %21, 0
  br i1 %95, label %123, label %96

96:                                               ; preds = %94
  br i1 %10, label %114, label %97

97:                                               ; preds = %110, %96
  %98 = phi i32 [ %112, %110 ], [ 0, %96 ]
  %99 = phi i32 [ %111, %110 ], [ %21, %96 ]
  %100 = getelementptr %struct.stmmac_tc_entry, ptr %1, i32 %98, i32 2
  %101 = load i8, ptr %100, align 2, !range !89
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %110, label %103

103:                                              ; preds = %97
  %104 = getelementptr %struct.stmmac_tc_entry, ptr %1, i32 %98
  %105 = tail call fastcc i32 @dwxgmac3_rxp_update_single_entry(ptr noundef %0, ptr noundef %104, i32 noundef %99)
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %123

107:                                              ; preds = %103
  %108 = add i32 %99, 1
  %109 = getelementptr %struct.stmmac_tc_entry, ptr %1, i32 %98, i32 5
  store i32 %99, ptr %109, align 4
  br label %110

110:                                              ; preds = %107, %97
  %111 = phi i32 [ %108, %107 ], [ %99, %97 ]
  %112 = add nuw i32 %98, 1
  %113 = icmp eq i32 %112, %2
  br i1 %113, label %114, label %97

114:                                              ; preds = %110, %96
  %115 = phi i32 [ %21, %96 ], [ %111, %110 ]
  %116 = shl i32 %115, 16
  %117 = and i32 %116, 16711680
  %118 = and i32 %115, 255
  %119 = or i32 %117, %118
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !94
  tail call void @arm_heavy_mb() #8
  %120 = getelementptr i8, ptr %0, i32 4256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %120, i32 %119) #8, !srcloc !12
  %121 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !95
  %122 = or i32 %121, 32768
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !96
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %122) #8, !srcloc !12
  br label %123

123:                                              ; preds = %114, %103, %94, %86, %75, %11, %3
  %124 = phi i32 [ 0, %114 ], [ 0, %94 ], [ 0, %11 ], [ 0, %3 ], [ %105, %103 ], [ %87, %86 ], [ %76, %75 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !97
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %5) #8, !srcloc !12
  ret i32 %124
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwxgmac2_flex_pps_config(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2, i1 noundef zeroext %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = shl i32 %1, 4
  %8 = add i32 %7, 3460
  %9 = getelementptr i8, ptr %0, i32 %8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !98
  %11 = getelementptr i8, ptr %0, i32 3440
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !99
  %13 = load i8, ptr %2, align 8, !range !89
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %93, label %15

15:                                               ; preds = %6
  %16 = icmp sgt i32 %10, -1
  br i1 %16, label %17, label %93

17:                                               ; preds = %15
  %18 = icmp ne i32 %4, 0
  %19 = icmp ne i32 %5, 0
  %20 = and i1 %18, %19
  br i1 %20, label %21, label %93

21:                                               ; preds = %17
  %22 = shl i32 %1, 3
  %23 = shl nsw i32 -1, %22
  %24 = sub i32 24, %22
  %25 = lshr i32 -1, %24
  %26 = and i32 %25, %23
  %27 = xor i32 %26, -1
  %28 = and i32 %12, %27
  %29 = sub i32 28, %22
  %30 = lshr i32 -1, %29
  br i1 %3, label %35, label %31

31:                                               ; preds = %21
  %32 = shl i32 5, %22
  %33 = and i32 %32, %30
  %34 = or i32 %28, %33
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !100
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %34) #8, !srcloc !12
  br label %93

35:                                               ; preds = %21
  %36 = shl i32 2, %22
  %37 = and i32 %36, %30
  %38 = or i32 %22, 5
  %39 = shl nsw i32 -1, %38
  %40 = sub i32 25, %22
  %41 = lshr i32 -1, %40
  %42 = and i32 %39, %41
  %43 = shl i32 2, %38
  %44 = and i32 %42, %43
  %45 = or i32 %37, %44
  %46 = or i32 %45, %28
  %47 = or i32 %46, 16
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !101
  tail call void @arm_heavy_mb() #8
  %48 = getelementptr inbounds %struct.stmmac_pps_cfg, ptr %2, i32 0, i32 1
  %49 = load i64, ptr %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = add i32 %7, 3456
  %52 = getelementptr i8, ptr %0, i32 %51
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %50) #8, !srcloc !12
  %53 = and i32 %5, 512
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %35
  %56 = getelementptr inbounds %struct.stmmac_pps_cfg, ptr %2, i32 0, i32 1, i32 1
  %57 = load i32, ptr %56, align 8
  %58 = mul i32 %57, 1000
  %59 = sdiv i32 %58, 465
  store i32 %59, ptr %56, align 8
  br label %60

60:                                               ; preds = %55, %35
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !102
  tail call void @arm_heavy_mb() #8
  %61 = getelementptr inbounds %struct.stmmac_pps_cfg, ptr %2, i32 0, i32 1, i32 1
  %62 = load i32, ptr %61, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %62) #8, !srcloc !12
  %63 = getelementptr inbounds %struct.stmmac_pps_cfg, ptr %2, i32 0, i32 2
  %64 = load i64, ptr %63, align 8
  %65 = mul i64 %64, 1000000000
  %66 = getelementptr inbounds %struct.stmmac_pps_cfg, ptr %2, i32 0, i32 2, i32 1
  %67 = load i32, ptr %66, align 8
  %68 = sext i32 %67 to i64
  %69 = add i64 %65, %68
  %70 = icmp ult i64 %69, 4294967296
  br i1 %70, label %71, label %75, !prof !103

71:                                               ; preds = %60
  %72 = trunc i64 %69 to i32
  %73 = udiv i32 %72, %4
  %74 = zext i32 %73 to i64
  br label %78

75:                                               ; preds = %60
  %76 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %4, i64 %69) #10, !srcloc !104
  %77 = extractvalue { i64, i64 } %76, 1
  br label %78

78:                                               ; preds = %75, %71
  %79 = phi i64 [ %74, %71 ], [ %77, %75 ]
  %80 = icmp ult i64 %79, 2
  br i1 %80, label %93, label %81

81:                                               ; preds = %78
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !105
  tail call void @arm_heavy_mb() #8
  %82 = trunc i64 %79 to i32
  %83 = add i32 %82, -1
  %84 = add i32 %7, 3464
  %85 = getelementptr i8, ptr %0, i32 %84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %85, i32 %83) #8, !srcloc !12
  %86 = icmp ult i64 %79, 4
  br i1 %86, label %93, label %87

87:                                               ; preds = %81
  %88 = lshr i64 %79, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !106
  tail call void @arm_heavy_mb() #8
  %89 = trunc i64 %88 to i32
  %90 = add i32 %89, -1
  %91 = add i32 %7, 3468
  %92 = getelementptr i8, ptr %0, i32 %91
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 %90) #8, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !107
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %47) #8, !srcloc !12
  br label %93

93:                                               ; preds = %87, %81, %78, %31, %17, %15, %6
  %94 = phi i32 [ 0, %87 ], [ 0, %31 ], [ -22, %6 ], [ -16, %15 ], [ -22, %17 ], [ -22, %78 ], [ -22, %81 ]
  ret i32 %94
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwxgmac2_set_mac_loopback(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !108
  %5 = and i32 %4, -1025
  %6 = select i1 %1, i32 1024, i32 0
  %7 = or i32 %5, %6
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !109
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %7) #8, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwxgmac2_rss_configure(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 3200
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !110
  %8 = icmp eq ptr %1, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = load i32, ptr %1, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9, %3
  %13 = and i32 %7, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !111
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %13) #8, !srcloc !12
  br label %99

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.stmmac_rss, ptr %1, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = tail call fastcc i32 @dwxgmac2_rss_write_reg(ptr noundef %5, i1 noundef zeroext true, i32 noundef 0, i32 noundef %16)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %99

19:                                               ; preds = %14
  %20 = getelementptr %struct.stmmac_rss, ptr %1, i32 0, i32 1, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = tail call fastcc i32 @dwxgmac2_rss_write_reg(ptr noundef %5, i1 noundef zeroext true, i32 noundef 1, i32 noundef %21)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %99

24:                                               ; preds = %19
  %25 = getelementptr %struct.stmmac_rss, ptr %1, i32 0, i32 1, i32 8
  %26 = load i32, ptr %25, align 4
  %27 = tail call fastcc i32 @dwxgmac2_rss_write_reg(ptr noundef %5, i1 noundef zeroext true, i32 noundef 2, i32 noundef %26)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %99

29:                                               ; preds = %24
  %30 = getelementptr %struct.stmmac_rss, ptr %1, i32 0, i32 1, i32 12
  %31 = load i32, ptr %30, align 4
  %32 = tail call fastcc i32 @dwxgmac2_rss_write_reg(ptr noundef %5, i1 noundef zeroext true, i32 noundef 3, i32 noundef %31)
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %99

34:                                               ; preds = %29
  %35 = getelementptr %struct.stmmac_rss, ptr %1, i32 0, i32 1, i32 16
  %36 = load i32, ptr %35, align 4
  %37 = tail call fastcc i32 @dwxgmac2_rss_write_reg(ptr noundef %5, i1 noundef zeroext true, i32 noundef 4, i32 noundef %36)
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %99

39:                                               ; preds = %34
  %40 = getelementptr %struct.stmmac_rss, ptr %1, i32 0, i32 1, i32 20
  %41 = load i32, ptr %40, align 4
  %42 = tail call fastcc i32 @dwxgmac2_rss_write_reg(ptr noundef %5, i1 noundef zeroext true, i32 noundef 5, i32 noundef %41)
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %99

44:                                               ; preds = %39
  %45 = getelementptr %struct.stmmac_rss, ptr %1, i32 0, i32 1, i32 24
  %46 = load i32, ptr %45, align 4
  %47 = tail call fastcc i32 @dwxgmac2_rss_write_reg(ptr noundef %5, i1 noundef zeroext true, i32 noundef 6, i32 noundef %46)
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %99

49:                                               ; preds = %44
  %50 = getelementptr %struct.stmmac_rss, ptr %1, i32 0, i32 1, i32 28
  %51 = load i32, ptr %50, align 4
  %52 = tail call fastcc i32 @dwxgmac2_rss_write_reg(ptr noundef %5, i1 noundef zeroext true, i32 noundef 7, i32 noundef %51)
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %99

54:                                               ; preds = %49
  %55 = getelementptr %struct.stmmac_rss, ptr %1, i32 0, i32 1, i32 32
  %56 = load i32, ptr %55, align 4
  %57 = tail call fastcc i32 @dwxgmac2_rss_write_reg(ptr noundef %5, i1 noundef zeroext true, i32 noundef 8, i32 noundef %56)
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %99

59:                                               ; preds = %54
  %60 = getelementptr %struct.stmmac_rss, ptr %1, i32 0, i32 1, i32 36
  %61 = load i32, ptr %60, align 4
  %62 = tail call fastcc i32 @dwxgmac2_rss_write_reg(ptr noundef %5, i1 noundef zeroext true, i32 noundef 9, i32 noundef %61)
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %69, label %99

64:                                               ; preds = %69
  %65 = add nuw nsw i32 %70, 1
  %66 = icmp eq i32 %65, 256
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = icmp eq i32 %2, 0
  br i1 %68, label %97, label %75

69:                                               ; preds = %64, %59
  %70 = phi i32 [ %65, %64 ], [ 0, %59 ]
  %71 = getelementptr %struct.stmmac_rss, ptr %1, i32 0, i32 2, i32 %70
  %72 = load i32, ptr %71, align 4
  %73 = tail call fastcc i32 @dwxgmac2_rss_write_reg(ptr noundef %5, i1 noundef zeroext false, i32 noundef %70, i32 noundef %72)
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %64, label %99

75:                                               ; preds = %75, %67
  %76 = phi i32 [ %95, %75 ], [ 0, %67 ]
  %77 = load ptr, ptr %4, align 4
  %78 = icmp ugt i32 %76, 3
  %79 = icmp ult i32 %76, 4
  %80 = select i1 %79, i32 4144, i32 4148
  %81 = getelementptr i8, ptr %77, i32 %80
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %81) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !35
  %83 = shl i32 %76, 3
  %84 = add i32 %83, -32
  %85 = select i1 %78, i32 %84, i32 %83
  %86 = shl nsw i32 -1, %85
  %87 = sub i32 24, %85
  %88 = lshr i32 -1, %87
  %89 = and i32 %88, %86
  %90 = xor i32 %89, -1
  %91 = and i32 %82, %90
  %92 = shl i32 128, %85
  %93 = and i32 %89, %92
  %94 = or i32 %91, %93
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !36
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 %94) #8, !srcloc !12
  %95 = add nuw i32 %76, 1
  %96 = icmp eq i32 %95, %2
  br i1 %96, label %97, label %75

97:                                               ; preds = %75, %67
  %98 = or i32 %7, 15
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !112
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %98) #8, !srcloc !12
  br label %99

99:                                               ; preds = %97, %69, %59, %54, %49, %44, %39, %34, %29, %24, %19, %14, %12
  %100 = phi i32 [ 0, %97 ], [ 0, %12 ], [ %17, %14 ], [ %22, %19 ], [ %27, %24 ], [ %32, %29 ], [ %37, %34 ], [ %42, %39 ], [ %47, %44 ], [ %52, %49 ], [ %57, %54 ], [ %62, %59 ], [ %73, %69 ]
  ret i32 %100
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwxgmac2_update_vlan_hash(ptr nocapture noundef readonly %0, i32 noundef %1, i16 noundef zeroext %2, i1 noundef zeroext %3) #0 {
  %5 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !113
  tail call void @arm_heavy_mb() #8
  %7 = getelementptr i8, ptr %6, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %1) #8, !srcloc !12
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %20, label %9

9:                                                ; preds = %4
  %10 = getelementptr i8, ptr %6, i32 8
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !114
  %12 = or i32 %11, 65536
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !115
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %12) #8, !srcloc !12
  %13 = getelementptr i8, ptr %6, i32 80
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !116
  %15 = or i32 %14, 102039552
  %16 = and i32 %14, -102105088
  %17 = or i32 %16, 33619968
  %18 = select i1 %3, i32 %15, i32 %17
  %19 = and i32 %18, -65536
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !117
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %19) #8, !srcloc !12
  br label %38

20:                                               ; preds = %4
  %21 = icmp eq i16 %2, 0
  %22 = getelementptr i8, ptr %6, i32 8
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8
  br i1 %21, label %33, label %24

24:                                               ; preds = %20
  %25 = or i32 %23, 65536
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !118
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %25) #8, !srcloc !12
  %26 = getelementptr i8, ptr %6, i32 80
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !119
  %28 = and i32 %27, -102105088
  %29 = select i1 %3, i32 68485120, i32 65536
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  %30 = zext i16 %2 to i32
  %31 = or i32 %29, %30
  %32 = or i32 %31, %28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %32) #8, !srcloc !12
  br label %38

33:                                               ; preds = %20
  %34 = and i32 %23, -65537
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !121
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %34) #8, !srcloc !12
  %35 = getelementptr i8, ptr %6, i32 80
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !122
  %37 = and i32 %36, -102105088
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !123
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %37) #8, !srcloc !12
  br label %38

38:                                               ; preds = %33, %24, %9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwxgmac2_enable_vlan(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 96
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !124
  %7 = and i32 %6, -1769473
  %8 = shl i32 %1, 16
  %9 = and i32 %8, 196608
  %10 = or i32 %9, %7
  %11 = or i32 %10, 1572864
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !125
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %11) #8, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwxgmac2_get_mac_tx_timestamp(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i64 @ktime_get() #8
  %6 = add i64 %5, 10000000
  %7 = getelementptr i8, ptr %4, i32 3360
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !126
  %9 = and i32 %8, 32768
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %14, %2
  %12 = tail call i64 @ktime_get() #8
  %13 = icmp sgt i64 %12, %6
  br i1 %13, label %19, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 21474800) #8
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !126
  %17 = and i32 %16, 32768
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %11, label %23

19:                                               ; preds = %11
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !127
  %21 = and i32 %20, 32768
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %34, label %23

23:                                               ; preds = %19, %14, %2
  %24 = getelementptr i8, ptr %4, i32 3376
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !128
  %26 = and i32 %25, 2147483647
  %27 = zext i32 %26 to i64
  store i64 %27, ptr %1, align 8
  %28 = getelementptr i8, ptr %4, i32 3380
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !129
  %30 = zext i32 %29 to i64
  %31 = mul nuw nsw i64 %30, 1000000000
  %32 = load i64, ptr %1, align 8
  %33 = add i64 %32, %31
  store i64 %33, ptr %1, align 8
  br label %34

34:                                               ; preds = %23, %19
  %35 = phi i32 [ 0, %23 ], [ -16, %19 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwxgmac2_sarc_configure(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !130
  %4 = and i32 %3, -7340033
  %5 = shl i32 %1, 20
  %6 = or i32 %4, %5
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !131
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %0, i32 %6) #8, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwxgmac2_config_l3_filter(ptr nocapture noundef readonly %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i32 noundef %6) #0 {
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 10
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #8
  %11 = getelementptr i8, ptr %10, i32 8
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !132
  %13 = or i32 %12, 1048576
  store i32 %13, ptr %8, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !133
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %13) #8, !srcloc !12
  %14 = call fastcc i32 @dwxgmac2_filter_read(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %8)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %52

16:                                               ; preds = %7
  %17 = load i32, ptr %8, align 4
  br i1 %3, label %18, label %27

18:                                               ; preds = %16
  %19 = and i32 %17, -62
  br i1 %4, label %20, label %23

20:                                               ; preds = %18
  %21 = select i1 %5, i32 13, i32 5
  %22 = or i32 %19, %21
  br label %37

23:                                               ; preds = %18
  %24 = or i32 %19, 17
  br i1 %5, label %25, label %37

25:                                               ; preds = %23
  %26 = or i32 %19, 49
  store i32 %26, ptr %8, align 4
  br label %37

27:                                               ; preds = %16
  %28 = and i32 %17, -2
  br i1 %4, label %29, label %33

29:                                               ; preds = %27
  %30 = or i32 %28, 4
  br i1 %5, label %31, label %37

31:                                               ; preds = %29
  %32 = or i32 %28, 12
  store i32 %32, ptr %8, align 4
  br label %37

33:                                               ; preds = %27
  %34 = or i32 %28, 16
  br i1 %5, label %35, label %37

35:                                               ; preds = %33
  %36 = or i32 %28, 48
  store i32 %36, ptr %8, align 4
  br label %37

37:                                               ; preds = %35, %33, %31, %29, %25, %23, %20
  %38 = phi i32 [ %32, %31 ], [ %30, %29 ], [ %36, %35 ], [ %34, %33 ], [ %26, %25 ], [ %24, %23 ], [ %22, %20 ]
  %39 = tail call fastcc i32 @dwxgmac2_filter_write(ptr noundef %0, i32 noundef %1, i8 noundef zeroext 0, i32 noundef %38)
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %37
  br i1 %4, label %42, label %46

42:                                               ; preds = %41
  %43 = tail call fastcc i32 @dwxgmac2_filter_write(ptr noundef %0, i32 noundef %1, i8 noundef zeroext 4, i32 noundef %6)
  %44 = icmp ne i32 %43, 0
  %45 = or i1 %44, %2
  br i1 %45, label %52, label %50

46:                                               ; preds = %41
  %47 = tail call fastcc i32 @dwxgmac2_filter_write(ptr noundef %0, i32 noundef %1, i8 noundef zeroext 5, i32 noundef %6)
  %48 = icmp ne i32 %47, 0
  %49 = or i1 %48, %2
  br i1 %49, label %52, label %50

50:                                               ; preds = %46, %42
  %51 = tail call fastcc i32 @dwxgmac2_filter_write(ptr noundef %0, i32 noundef %1, i8 noundef zeroext 0, i32 noundef 0)
  br label %52

52:                                               ; preds = %50, %46, %42, %37, %7
  %53 = phi i32 [ %51, %50 ], [ %14, %7 ], [ %39, %37 ], [ %43, %42 ], [ %47, %46 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #8
  ret i32 %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwxgmac2_config_l4_filter(ptr nocapture noundef readonly %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i32 noundef %6) #0 {
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 10
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #8
  %11 = getelementptr i8, ptr %10, i32 8
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !134
  %13 = or i32 %12, 1048576
  store i32 %13, ptr %8, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %13) #8, !srcloc !12
  %14 = call fastcc i32 @dwxgmac2_filter_read(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %8)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %40

16:                                               ; preds = %7
  %17 = load i32, ptr %8, align 4
  %18 = and i32 %17, -3997697
  %19 = select i1 %3, i32 65536, i32 0
  %20 = or i32 %18, %19
  store i32 %20, ptr %8, align 4
  %21 = select i1 %4, i32 262144, i32 1048576
  %22 = select i1 %4, i32 786432, i32 3145728
  %23 = select i1 %5, i32 %22, i32 %21
  %24 = or i32 %20, %23
  %25 = tail call fastcc i32 @dwxgmac2_filter_write(ptr noundef %0, i32 noundef %1, i8 noundef zeroext 0, i32 noundef %24)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %16
  br i1 %4, label %28, label %33

28:                                               ; preds = %27
  %29 = and i32 %6, 65535
  %30 = tail call fastcc i32 @dwxgmac2_filter_write(ptr noundef %0, i32 noundef %1, i8 noundef zeroext 1, i32 noundef %29)
  %31 = icmp ne i32 %30, 0
  %32 = or i1 %31, %2
  br i1 %32, label %40, label %38

33:                                               ; preds = %27
  %34 = shl i32 %6, 16
  %35 = tail call fastcc i32 @dwxgmac2_filter_write(ptr noundef %0, i32 noundef %1, i8 noundef zeroext 1, i32 noundef %34)
  %36 = icmp ne i32 %35, 0
  %37 = or i1 %36, %2
  br i1 %37, label %40, label %38

38:                                               ; preds = %33, %28
  %39 = tail call fastcc i32 @dwxgmac2_filter_write(ptr noundef %0, i32 noundef %1, i8 noundef zeroext 0, i32 noundef 0)
  br label %40

40:                                               ; preds = %38, %33, %28, %16, %7
  %41 = phi i32 [ %39, %38 ], [ %14, %7 ], [ %25, %16 ], [ %30, %28 ], [ %35, %33 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #8
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwxgmac2_set_arp_offload(ptr nocapture noundef readonly %0, i1 noundef zeroext %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !136
  tail call void @arm_heavy_mb() #8
  %6 = getelementptr i8, ptr %5, i32 3088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %2) #8, !srcloc !12
  %7 = getelementptr i8, ptr %5, i32 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !137
  %9 = and i32 %8, 2147483647
  %10 = select i1 %1, i32 -2147483648, i32 0
  %11 = or i32 %9, %10
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !138
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %11) #8, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwxgmac3_est_configure(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.stmmac_est, ptr %1, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = tail call fastcc i32 @dwxgmac3_est_write(ptr noundef %0, i32 noundef 0, i32 noundef %5, i1 noundef zeroext false)
  %7 = getelementptr %struct.stmmac_est, ptr %1, i32 0, i32 4, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = tail call fastcc i32 @dwxgmac3_est_write(ptr noundef %0, i32 noundef 1, i32 noundef %8, i1 noundef zeroext false)
  %10 = or i32 %9, %6
  %11 = getelementptr inbounds %struct.stmmac_est, ptr %1, i32 0, i32 6
  %12 = load i32, ptr %11, align 4
  %13 = tail call fastcc i32 @dwxgmac3_est_write(ptr noundef %0, i32 noundef 4, i32 noundef %12, i1 noundef zeroext false)
  %14 = or i32 %10, %13
  %15 = getelementptr inbounds %struct.stmmac_est, ptr %1, i32 0, i32 9
  %16 = load i32, ptr %15, align 4
  %17 = tail call fastcc i32 @dwxgmac3_est_write(ptr noundef %0, i32 noundef 5, i32 noundef %16, i1 noundef zeroext false)
  %18 = or i32 %14, %17
  %19 = getelementptr inbounds %struct.stmmac_est, ptr %1, i32 0, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = tail call fastcc i32 @dwxgmac3_est_write(ptr noundef %0, i32 noundef 2, i32 noundef %20, i1 noundef zeroext false)
  %22 = or i32 %18, %21
  %23 = getelementptr %struct.stmmac_est, ptr %1, i32 0, i32 5, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = tail call fastcc i32 @dwxgmac3_est_write(ptr noundef %0, i32 noundef 3, i32 noundef %24, i1 noundef zeroext false)
  %26 = or i32 %22, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %54

28:                                               ; preds = %3
  %29 = load i32, ptr %15, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %41, label %35

31:                                               ; preds = %35
  %32 = add nuw i32 %36, 1
  %33 = load i32, ptr %15, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %31, %28
  %36 = phi i32 [ %32, %31 ], [ 0, %28 ]
  %37 = getelementptr %struct.stmmac_est, ptr %1, i32 0, i32 8, i32 %36
  %38 = load i32, ptr %37, align 4
  %39 = tail call fastcc i32 @dwxgmac3_est_write(ptr noundef %0, i32 noundef %36, i32 noundef %38, i1 noundef zeroext true)
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %31, label %54

41:                                               ; preds = %31, %28
  %42 = getelementptr i8, ptr %0, i32 4176
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !139
  %44 = and i32 %43, 8388607
  %45 = udiv i32 1000000000, %2
  %46 = mul i32 %45, 75497472
  %47 = or i32 %46, %44
  %48 = getelementptr inbounds %struct.stmmac_est, ptr %1, i32 0, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, 0
  %51 = or i32 %47, 3
  %52 = and i32 %47, -2
  %53 = select i1 %50, i32 %52, i32 %51
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !140
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %53) #8, !srcloc !12
  br label %54

54:                                               ; preds = %41, %35, %3
  %55 = phi i32 [ 0, %41 ], [ %26, %3 ], [ %39, %35 ]
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwxgmac3_fpe_configure(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) #0 {
  br i1 %3, label %9, label %5

5:                                                ; preds = %4
  %6 = getelementptr i8, ptr %0, i32 640
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !141
  %8 = and i32 %7, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !142
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %8) #8, !srcloc !12
  br label %19

9:                                                ; preds = %4
  %10 = getelementptr i8, ptr %0, i32 164
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !143
  %12 = and i32 %11, -241
  %13 = shl i32 %2, 4
  %14 = add i32 %13, -16
  %15 = or i32 %12, %14
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !144
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %15) #8, !srcloc !12
  %16 = getelementptr i8, ptr %0, i32 640
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !145
  %18 = or i32 %17, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !146
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %18) #8, !srcloc !12
  br label %19

19:                                               ; preds = %9, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwxlgmac2_rx_queue_enable(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 320
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !147
  %8 = shl i32 %2, 1
  %9 = shl nuw i32 1, %8
  %10 = sub i32 0, %9
  %11 = sub i32 30, %8
  %12 = lshr i32 -1, %11
  %13 = and i32 %12, %10
  %14 = xor i32 %13, -1
  %15 = and i32 %7, %14
  switch i8 %1, label %21 [
    i8 0, label %16
    i8 1, label %18
  ]

16:                                               ; preds = %3
  %17 = or i32 %15, %9
  br label %21

18:                                               ; preds = %3
  %19 = shl i32 2, %8
  %20 = or i32 %15, %19
  br label %21

21:                                               ; preds = %18, %16, %3
  %22 = phi i32 [ %17, %16 ], [ %20, %18 ], [ %15, %3 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !148
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %22) #8, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dwxgmac2_setup(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str) #11
  %6 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 14
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 15
  %9 = load i64, ptr %8, align 16
  %10 = or i64 %9, 4096
  store i64 %10, ptr %8, align 16
  %11 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 13
  %12 = load ptr, ptr %11, align 32
  %13 = getelementptr inbounds %struct.mac_device_info, ptr %3, i32 0, i32 10
  store ptr %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 36
  %15 = load ptr, ptr %14, align 64
  %16 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %15, i32 0, i32 24
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.mac_device_info, ptr %3, i32 0, i32 11
  store i32 %17, ptr %18, align 4
  %19 = load ptr, ptr %14, align 64
  %20 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %19, i32 0, i32 25
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.mac_device_info, ptr %3, i32 0, i32 12
  store i32 %21, ptr %22, align 4
  %23 = icmp eq i32 %17, 0
  %24 = tail call i32 @llvm.ctlz.i32(i32 %17, i1 true) #8
  %25 = xor i32 %24, 31
  %26 = select i1 %23, i32 0, i32 %25
  %27 = getelementptr inbounds %struct.mac_device_info, ptr %3, i32 0, i32 13
  store i32 %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.mac_device_info, ptr %3, i32 0, i32 9
  %29 = getelementptr inbounds %struct.mac_device_info, ptr %3, i32 0, i32 9, i32 5
  store i32 0, ptr %29, align 4
  %30 = getelementptr inbounds %struct.mac_device_info, ptr %3, i32 0, i32 9, i32 1
  store i32 -536870912, ptr %30, align 4
  %31 = getelementptr inbounds %struct.mac_device_info, ptr %3, i32 0, i32 9, i32 2
  store i32 -2147483648, ptr %31, align 4
  %32 = getelementptr inbounds %struct.mac_device_info, ptr %3, i32 0, i32 9, i32 3
  store i32 1610612736, ptr %32, align 4
  %33 = getelementptr inbounds %struct.mac_device_info, ptr %3, i32 0, i32 9, i32 4
  store i32 1073741824, ptr %33, align 4
  %34 = getelementptr inbounds %struct.mac_device_info, ptr %3, i32 0, i32 9, i32 6
  store i32 -1073741824, ptr %34, align 4
  %35 = getelementptr inbounds %struct.mac_device_info, ptr %3, i32 0, i32 9, i32 6, i32 1
  store i32 -1610612736, ptr %35, align 4
  %36 = getelementptr inbounds %struct.mac_device_info, ptr %3, i32 0, i32 9, i32 6, i32 2
  store i32 0, ptr %36, align 4
  store i32 -536870912, ptr %28, align 4
  %37 = getelementptr inbounds %struct.mac_device_info, ptr %3, i32 0, i32 8
  store i32 512, ptr %37, align 4
  %38 = getelementptr inbounds %struct.mac_device_info, ptr %3, i32 0, i32 8, i32 1
  store i32 516, ptr %38, align 4
  %39 = getelementptr inbounds %struct.mac_device_info, ptr %3, i32 0, i32 8, i32 2
  store i32 16, ptr %39, align 4
  %40 = getelementptr inbounds %struct.mac_device_info, ptr %3, i32 0, i32 8, i32 4
  store i32 2031616, ptr %40, align 4
  %41 = getelementptr inbounds %struct.mac_device_info, ptr %3, i32 0, i32 8, i32 3
  store i32 0, ptr %41, align 4
  %42 = getelementptr inbounds %struct.mac_device_info, ptr %3, i32 0, i32 8, i32 5
  store i32 65535, ptr %42, align 4
  %43 = getelementptr inbounds %struct.mac_device_info, ptr %3, i32 0, i32 8, i32 6
  store i32 19, ptr %43, align 4
  %44 = getelementptr inbounds %struct.mac_device_info, ptr %3, i32 0, i32 8, i32 7
  store i32 3670016, ptr %44, align 4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dwxlgmac2_setup(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.1) #11
  %6 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 14
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 15
  %9 = load i64, ptr %8, align 16
  %10 = or i64 %9, 4096
  store i64 %10, ptr %8, align 16
  %11 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 13
  %12 = load ptr, ptr %11, align 32
  %13 = getelementptr inbounds %struct.mac_device_info, ptr %3, i32 0, i32 10
  store ptr %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 36
  %15 = load ptr, ptr %14, align 64
  %16 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %15, i32 0, i32 24
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.mac_device_info, ptr %3, i32 0, i32 11
  store i32 %17, ptr %18, align 4
  %19 = load ptr, ptr %14, align 64
  %20 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %19, i32 0, i32 25
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.mac_device_info, ptr %3, i32 0, i32 12
  store i32 %21, ptr %22, align 4
  %23 = icmp eq i32 %17, 0
  %24 = tail call i32 @llvm.ctlz.i32(i32 %17, i1 true) #8
  %25 = xor i32 %24, 31
  %26 = select i1 %23, i32 0, i32 %25
  %27 = getelementptr inbounds %struct.mac_device_info, ptr %3, i32 0, i32 13
  store i32 %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.mac_device_info, ptr %3, i32 0, i32 9
  %29 = getelementptr inbounds %struct.mac_device_info, ptr %3, i32 0, i32 9, i32 5
  store i32 0, ptr %29, align 4
  %30 = getelementptr inbounds %struct.mac_device_info, ptr %3, i32 0, i32 9, i32 3
  store i32 1879048192, ptr %30, align 4
  %31 = getelementptr inbounds %struct.mac_device_info, ptr %3, i32 0, i32 9, i32 4
  store i32 1610612736, ptr %31, align 4
  %32 = getelementptr inbounds %struct.mac_device_info, ptr %3, i32 0, i32 9, i32 6, i32 2
  store i32 1073741824, ptr %32, align 4
  %33 = getelementptr inbounds %struct.mac_device_info, ptr %3, i32 0, i32 9, i32 7
  store i32 268435456, ptr %33, align 4
  %34 = getelementptr inbounds %struct.mac_device_info, ptr %3, i32 0, i32 9, i32 7, i32 1
  store i32 0, ptr %34, align 4
  %35 = getelementptr inbounds %struct.mac_device_info, ptr %3, i32 0, i32 9, i32 7, i32 2
  store i32 536870912, ptr %35, align 4
  %36 = getelementptr inbounds %struct.mac_device_info, ptr %3, i32 0, i32 9, i32 7, i32 3
  store i32 805306368, ptr %36, align 4
  store i32 1879048192, ptr %28, align 4
  %37 = getelementptr inbounds %struct.mac_device_info, ptr %3, i32 0, i32 8
  store i32 512, ptr %37, align 4
  %38 = getelementptr inbounds %struct.mac_device_info, ptr %3, i32 0, i32 8, i32 1
  store i32 516, ptr %38, align 4
  %39 = getelementptr inbounds %struct.mac_device_info, ptr %3, i32 0, i32 8, i32 2
  store i32 16, ptr %39, align 4
  %40 = getelementptr inbounds %struct.mac_device_info, ptr %3, i32 0, i32 8, i32 4
  store i32 2031616, ptr %40, align 4
  %41 = getelementptr inbounds %struct.mac_device_info, ptr %3, i32 0, i32 8, i32 3
  store i32 0, ptr %41, align 4
  %42 = getelementptr inbounds %struct.mac_device_info, ptr %3, i32 0, i32 8, i32 5
  store i32 65535, ptr %42, align 4
  %43 = getelementptr inbounds %struct.mac_device_info, ptr %3, i32 0, i32 8, i32 6
  store i32 19, ptr %43, align 4
  %44 = getelementptr inbounds %struct.mac_device_info, ptr %3, i32 0, i32 8, i32 7
  store i32 3670016, ptr %44, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dwxgmac3_rxp_update_single_entry(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = shl i32 %2, 2
  %5 = getelementptr i8, ptr %0, i32 4272
  %6 = getelementptr inbounds %struct.stmmac_tc_entry, ptr %1, i32 0, i32 8
  %7 = getelementptr i8, ptr %0, i32 4276
  br label %8

8:                                                ; preds = %43, %3
  %9 = phi i32 [ 0, %3 ], [ %44, %43 ]
  %10 = add nuw nsw i32 %9, %4
  %11 = tail call i64 @ktime_get() #8
  %12 = add i64 %11, 10000000
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !149
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %24, label %15

15:                                               ; preds = %18, %8
  %16 = tail call i64 @ktime_get() #8
  %17 = icmp sgt i64 %16, %12
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #8
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !149
  %20 = icmp sgt i32 %19, -1
  br i1 %20, label %24, label %15

21:                                               ; preds = %15
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !150
  %23 = icmp sgt i32 %22, -1
  br i1 %23, label %24, label %46

24:                                               ; preds = %21, %18, %8
  %25 = getelementptr i32, ptr %6, i32 %9
  %26 = load i32, ptr %25, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !151
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %26) #8, !srcloc !12
  %27 = and i32 %10, 1023
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !152
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %27) #8, !srcloc !12
  %28 = or i32 %27, 65536
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !153
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %28) #8, !srcloc !12
  %29 = or i32 %27, -2147418112
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %29) #8, !srcloc !12
  %30 = tail call i64 @ktime_get() #8
  %31 = add i64 %30, 10000000
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !155
  %33 = icmp sgt i32 %32, -1
  br i1 %33, label %43, label %34

34:                                               ; preds = %37, %24
  %35 = tail call i64 @ktime_get() #8
  %36 = icmp sgt i64 %35, %31
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #8
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !155
  %39 = icmp sgt i32 %38, -1
  br i1 %39, label %43, label %34

40:                                               ; preds = %34
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !156
  %42 = icmp sgt i32 %41, -1
  br i1 %42, label %43, label %46

43:                                               ; preds = %40, %37, %24
  %44 = add nuw nsw i32 %9, 1
  %45 = icmp eq i32 %44, 4
  br i1 %45, label %46, label %8

46:                                               ; preds = %43, %40, %21
  %47 = phi i32 [ -110, %40 ], [ 0, %43 ], [ -110, %21 ]
  ret i32 %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dwxgmac2_rss_write_reg(ptr noundef %0, i1 noundef zeroext %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %5 = getelementptr i8, ptr %0, i32 3212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %3) #8, !srcloc !12
  %6 = shl i32 %2, 8
  %7 = select i1 %1, i32 4, i32 0
  %8 = or i32 %6, %7
  %9 = or i32 %8, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !158
  tail call void @arm_heavy_mb() #8
  %10 = getelementptr i8, ptr %0, i32 3208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %9) #8, !srcloc !12
  %11 = tail call i64 @ktime_get() #8
  %12 = add i64 %11, 10000000
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !159
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %27, label %16

16:                                               ; preds = %19, %4
  %17 = tail call i64 @ktime_get() #8
  %18 = icmp sgt i64 %17, %12
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #8
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !159
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %16

23:                                               ; preds = %16
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !160
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %19, %4
  br label %28

28:                                               ; preds = %27, %23
  %29 = phi i32 [ 0, %27 ], [ -110, %23 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dwxgmac2_filter_read(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i64 @ktime_get() #8
  %7 = add i64 %6, 10000000
  %8 = getelementptr i8, ptr %5, i32 3072
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !161
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %15, %3
  %13 = tail call i64 @ktime_get() #8
  %14 = icmp sgt i64 %13, %7
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #8
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !161
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %12

19:                                               ; preds = %12
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !162
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %47

23:                                               ; preds = %19, %15, %3
  %24 = shl i32 %1, 12
  %25 = or i32 %24, 3
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !163
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %25) #8, !srcloc !12
  %26 = load ptr, ptr %4, align 4
  %27 = tail call i64 @ktime_get() #8
  %28 = add i64 %27, 10000000
  %29 = getelementptr i8, ptr %26, i32 3072
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !161
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %44, label %33

33:                                               ; preds = %36, %23
  %34 = tail call i64 @ktime_get() #8
  %35 = icmp sgt i64 %34, %28
  br i1 %35, label %40, label %36

36:                                               ; preds = %33
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #8
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !161
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %44, label %33

40:                                               ; preds = %33
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !162
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %40, %36, %23
  %45 = getelementptr i8, ptr %5, i32 3076
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !164
  store i32 %46, ptr %2, align 4
  br label %47

47:                                               ; preds = %44, %40, %19
  %48 = phi i32 [ 0, %44 ], [ -16, %19 ], [ -16, %40 ]
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dwxgmac2_filter_write(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i64 @ktime_get() #8
  %8 = add i64 %7, 10000000
  %9 = getelementptr i8, ptr %6, i32 3072
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !161
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %16, %4
  %14 = tail call i64 @ktime_get() #8
  %15 = icmp sgt i64 %14, %8
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #8
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !161
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %13

20:                                               ; preds = %13
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !162
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %50

24:                                               ; preds = %20, %16, %4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !165
  tail call void @arm_heavy_mb() #8
  %25 = getelementptr i8, ptr %6, i32 3076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %3) #8, !srcloc !12
  %26 = zext i8 %2 to i32
  %27 = shl i32 %1, 12
  %28 = shl nuw nsw i32 %26, 8
  %29 = or i32 %27, %28
  %30 = or i32 %29, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !166
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %30) #8, !srcloc !12
  %31 = load ptr, ptr %5, align 4
  %32 = tail call i64 @ktime_get() #8
  %33 = add i64 %32, 10000000
  %34 = getelementptr i8, ptr %31, i32 3072
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !161
  %36 = and i32 %35, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %49, label %38

38:                                               ; preds = %41, %24
  %39 = tail call i64 @ktime_get() #8
  %40 = icmp sgt i64 %39, %33
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #8
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !161
  %43 = and i32 %42, 1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %49, label %38

45:                                               ; preds = %38
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !162
  %47 = and i32 %46, 1
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45, %41, %24
  br label %50

50:                                               ; preds = %49, %45, %20
  %51 = phi i32 [ -16, %20 ], [ 0, %49 ], [ -16, %45 ]
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dwxgmac3_est_write(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !167
  tail call void @arm_heavy_mb() #8
  %5 = getelementptr i8, ptr %0, i32 4228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %2) #8, !srcloc !12
  %6 = shl i32 %1, 8
  %7 = select i1 %3, i32 0, i32 4
  %8 = or i32 %7, %6
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !168
  tail call void @arm_heavy_mb() #8
  %9 = getelementptr i8, ptr %0, i32 4224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %8) #8, !srcloc !12
  %10 = or i32 %8, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %10) #8, !srcloc !12
  %11 = tail call i64 @ktime_get() #8
  %12 = add i64 %11, 5000000
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !170
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %28, label %16

16:                                               ; preds = %19, %4
  %17 = tail call i64 @ktime_get() #8
  %18 = icmp sgt i64 %17, %12
  br i1 %18, label %24, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 21474800) #8
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !170
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %16

24:                                               ; preds = %16
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !171
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24, %19, %4
  br label %29

29:                                               ; preds = %28, %24
  %30 = phi i32 [ 0, %28 ], [ -110, %24 ]
  ret i32 %30
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly willreturn }
attributes #10 = { nounwind readnone }
attributes #11 = { cold nounwind }

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
!8 = !{i64 2440470}
!9 = !{i64 2156039864}
!10 = !{i64 2156040215}
!11 = !{i64 2156040880}
!12 = !{i64 2440052}
!13 = !{i64 2156041206}
!14 = !{i64 2156041783}
!15 = !{i64 2156042381}
!16 = !{i64 2156042732}
!17 = !{i64 2156043257}
!18 = !{i64 2156043583}
!19 = !{i64 2156044063}
!20 = !{i64 2156044427}
!21 = !{i64 2156044913}
!22 = !{i64 2156045346}
!23 = !{i64 2156046512}
!24 = !{i64 2156046988}
!25 = !{i64 2156049038}
!26 = !{i64 2156049507}
!27 = !{i64 2156051557}
!28 = !{i64 2156052036}
!29 = !{i64 2156052408}
!30 = !{i64 2156052894}
!31 = !{i64 2156053813}
!32 = !{i64 2156054377}
!33 = !{i64 2156055300}
!34 = !{i64 2156055701}
!35 = !{i64 2156056202}
!36 = !{i64 2156058252}
!37 = !{i64 2156058631}
!38 = !{i64 2156059050}
!39 = !{i64 2156059470}
!40 = !{i64 2156059891}
!41 = !{i64 2156060502}
!42 = !{i64 2156061515}
!43 = !{i64 2156062061}
!44 = !{i64 2156062412}
!45 = !{i64 2156062763}
!46 = !{i64 2156063196}
!47 = !{i64 2156063629}
!48 = !{i64 2156064326}
!49 = !{i64 2156064843}
!50 = !{i64 2156065252}
!51 = !{i64 2156073545}
!52 = !{i64 2156078504}
!53 = !{i64 234393}
!54 = !{i64 2156073016}
!55 = !{i64 2156068230}
!56 = !{i64 2156068687}
!57 = !{i64 2156086674}
!58 = !{i64 2156087051}
!59 = !{i64 2156087396}
!60 = !{i64 2156065713}
!61 = !{i64 2156066207}
!62 = !{i64 2156067135}
!63 = !{i64 2156067415}
!64 = !{i64 2156067744}
!65 = !{i64 2156069273}
!66 = !{i64 2156069704}
!67 = !{i64 2156070055}
!68 = !{i64 2156070507}
!69 = !{i64 2156070993}
!70 = !{i64 2156071445}
!71 = !{i64 2156072634}
!72 = !{i64 2156071931}
!73 = !{i64 2156072299}
!74 = !{i64 2156105009}
!75 = !{i64 2156105491}
!76 = !{i64 2156106021}
!77 = !{i64 2156106507}
!78 = !{i64 2156106871}
!79 = !{i64 2156107357}
!80 = !{i64 2156107721}
!81 = !{i64 2156108210}
!82 = !{i64 2156108561}
!83 = !{i64 2156102531}
!84 = !{i64 2156102731}
!85 = !{i64 2156103407}
!86 = !{i64 2156103607}
!87 = !{i64 2156104283}
!88 = !{i64 2156104483}
!89 = !{i8 0, i8 2}
!90 = !{i64 2156117763}
!91 = !{i64 2156118043}
!92 = !{i64 2156110279}
!93 = !{i64 2156110561}
!94 = !{i64 2156119738}
!95 = !{i64 2156111043}
!96 = !{i64 2156111325}
!97 = !{i64 2156120071}
!98 = !{i64 2156124919}
!99 = !{i64 2156125270}
!100 = !{i64 2156127727}
!101 = !{i64 2156130624}
!102 = !{i64 2156131141}
!103 = !{!"branch_weights", i32 2000, i32 1}
!104 = !{i64 2148382364, i64 2148382644, i64 2148382978, i64 2148383312}
!105 = !{i64 2156136683}
!106 = !{i64 2156137099}
!107 = !{i64 2156137463}
!108 = !{i64 2156087882}
!109 = !{i64 2156088250}
!110 = !{i64 2156091464}
!111 = !{i64 2156091746}
!112 = !{i64 2156093209}
!113 = !{i64 2156093543}
!114 = !{i64 2156094027}
!115 = !{i64 2156094311}
!116 = !{i64 2156094797}
!117 = !{i64 2156096352}
!118 = !{i64 2156097122}
!119 = !{i64 2156097608}
!120 = !{i64 2156099179}
!121 = !{i64 2156099981}
!122 = !{i64 2156100467}
!123 = !{i64 2156101770}
!124 = !{i64 2156139326}
!125 = !{i64 2156141081}
!126 = !{i64 2156122162}
!127 = !{i64 2156122502}
!128 = !{i64 2156123450}
!129 = !{i64 2156124484}
!130 = !{i64 2156137945}
!131 = !{i64 2156138840}
!132 = !{i64 2156145086}
!133 = !{i64 2156145370}
!134 = !{i64 2156147024}
!135 = !{i64 2156147308}
!136 = !{i64 2156149880}
!137 = !{i64 2156150364}
!138 = !{i64 2156150732}
!139 = !{i64 2156155286}
!140 = !{i64 2156156426}
!141 = !{i64 2156156910}
!142 = !{i64 2156157192}
!143 = !{i64 2156157678}
!144 = !{i64 2156158554}
!145 = !{i64 2156159040}
!146 = !{i64 2156159322}
!147 = !{i64 2156159868}
!148 = !{i64 2156161034}
!149 = !{i64 2156113005}
!150 = !{i64 2156113345}
!151 = !{i64 2156113547}
!152 = !{i64 2156114550}
!153 = !{i64 2156114963}
!154 = !{i64 2156115376}
!155 = !{i64 2156117056}
!156 = !{i64 2156117396}
!157 = !{i64 2156088583}
!158 = !{i64 2156089079}
!159 = !{i64 2156090769}
!160 = !{i64 2156091109}
!161 = !{i64 2156142781}
!162 = !{i64 2156143121}
!163 = !{i64 2156143496}
!164 = !{i64 2156143982}
!165 = !{i64 2156144181}
!166 = !{i64 2156144600}
!167 = !{i64 2156151065}
!168 = !{i64 2156151479}
!169 = !{i64 2156151893}
!170 = !{i64 2156153977}
!171 = !{i64 2156154317}
