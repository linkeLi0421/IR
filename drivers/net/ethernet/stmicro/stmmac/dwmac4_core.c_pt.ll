; ModuleID = '/llk/IR/drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c_pt.bc'
source_filename = "../drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.stmmac_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stmmac_rx_routing = type { i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.mac_device_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mii_regs, %struct.mac_link, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, [32 x i32], i32, i8, i8 }
%struct.mii_regs = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mac_link = type { i32, i32, i32, i32, i32, i32, %struct.anon.159, %struct.anon.160 }
%struct.anon.159 = type { i32, i32, i32 }
%struct.anon.160 = type { i32, i32, i32, i32 }
%struct.stmmac_extra_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x %struct.stmmac_txq_stats], [8 x %struct.stmmac_rxq_stats], [40 x i8] }
%struct.stmmac_txq_stats = type { i32, i32 }
%struct.stmmac_rxq_stats = type { i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.150, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
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
%union.anon.150 = type { ptr }
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
%struct.rgmii_adv = type { i32, i32, i32, i32 }
%struct.stmmac_priv = type { [8 x i32], [8 x i32], [8 x i32], i32, i8, i8, i32, i32, i32, i32, i32, [8 x i32], i32, ptr, ptr, ptr, ptr, ptr, %struct.mutex, [56 x i8], [8 x %struct.stmmac_rx_queue], i32, [60 x i8], [8 x %struct.stmmac_tx_queue], i32, [60 x i8], [8 x %struct.stmmac_channel], i32, i32, i32, ptr, %struct.phylink_config, ptr, [20 x i8], %struct.stmmac_extra_stats, %struct.stmmac_safety_stats, ptr, %struct.dma_features, %struct.stmmac_counters, i32, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, %struct.hwtstamp_config, ptr, %struct.ptp_clock_info, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.mutex, ptr, ptr, [128 x i32], i32, i32, [8 x i32], [8 x i32], [25 x i8], [25 x i8], [25 x i8], [26 x i8], [26 x i8], [8 x [30 x i8]], [8 x [34 x i8]], ptr, i32, ptr, %struct.work_struct, i32, ptr, %struct.work_struct, [20 x i8], i32, i32, ptr, i32, ptr, [3 x i32], [3 x i32], i32, ptr, [4 x %struct.stmmac_pps_cfg], %struct.stmmac_rss, ptr, ptr, [12 x i8] }
%struct.stmmac_rx_queue = type { i32, i32, [56 x i8], %struct.xdp_rxq_info, ptr, ptr, ptr, ptr, ptr, [44 x i8], ptr, i32, i32, i32, i32, i32, i32, i32, %struct.anon.154, [20 x i8] }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [40 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.anon.154 = type { ptr, i32, i32 }
%struct.stmmac_tx_queue = type { i32, i32, %struct.hrtimer, i32, ptr, ptr, ptr, ptr, %union.anon.155, ptr, ptr, i32, i32, i32, i32, i32, i32, [16 x i8] }
%union.anon.155 = type { ptr }
%struct.stmmac_channel = type { %struct.napi_struct, [40 x i8], %struct.napi_struct, [40 x i8], %struct.napi_struct, ptr, %struct.spinlock, i32, [28 x i8] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }
%struct.stmmac_safety_stats = type { [32 x i32], [32 x i32], [32 x i32] }
%struct.dma_features = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.stmmac_counters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stmmac_pps_cfg = type { i8, %struct.timespec64, %struct.timespec64 }
%struct.timespec64 = type { i64, i32 }
%struct.stmmac_rss = type { i32, [40 x i8], [256 x i32] }
%struct.plat_stmmacenet_data = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [8 x %struct.stmmac_rxq_cfg], [8 x %struct.stmmac_txq_cfg], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i8, i8, i32, i32, i8, i32, i8, i8, i32, ptr, i8, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.stmmac_rxq_cfg = type { i8, i32, i8, i8, i32 }
%struct.stmmac_txq_cfg = type { i32, i8, i32, i32, i32, i32, i8, i32, i32 }

@dwmac4_ops = dso_local local_unnamed_addr constant %struct.stmmac_ops { ptr @dwmac4_core_init, ptr @stmmac_set_mac, ptr @dwmac4_rx_ipc_enable, ptr @dwmac4_rx_queue_enable, ptr @dwmac4_rx_queue_priority, ptr @dwmac4_tx_queue_priority, ptr @dwmac4_rx_queue_routing, ptr @dwmac4_prog_mtl_rx_algorithms, ptr @dwmac4_prog_mtl_tx_algorithms, ptr @dwmac4_set_mtl_tx_queue_weight, ptr @dwmac4_map_mtl_dma, ptr @dwmac4_config_cbs, ptr @dwmac4_dump_regs, ptr @dwmac4_irq_status, ptr @dwmac4_irq_mtl_status, ptr @dwmac4_set_filter, ptr @dwmac4_flow_ctrl, ptr @dwmac4_pmt, ptr @dwmac4_set_umac_addr, ptr @dwmac4_get_umac_addr, ptr @dwmac4_set_eee_mode, ptr @dwmac4_reset_eee_mode, ptr @dwmac4_set_eee_lpi_entry_timer, ptr @dwmac4_set_eee_timer, ptr @dwmac4_set_eee_pls, ptr @dwmac4_debug, ptr @dwmac4_ctrl_ane, ptr @dwmac4_rane, ptr @dwmac4_get_adv_lp, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dwmac4_set_mac_loopback, ptr null, ptr @dwmac4_update_vlan_hash, ptr @dwmac4_enable_vlan, ptr @dwmac4_add_hw_vlan_rx_fltr, ptr @dwmac4_del_hw_vlan_rx_fltr, ptr @dwmac4_restore_hw_vlan_rx_fltr, ptr null, ptr @dwmac4_sarc_configure, ptr @dwmac4_config_l3_filter, ptr @dwmac4_config_l4_filter, ptr @dwmac4_set_arp_offload, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@dwmac410_ops = dso_local local_unnamed_addr constant %struct.stmmac_ops { ptr @dwmac4_core_init, ptr @stmmac_dwmac4_set_mac, ptr @dwmac4_rx_ipc_enable, ptr @dwmac4_rx_queue_enable, ptr @dwmac4_rx_queue_priority, ptr @dwmac4_tx_queue_priority, ptr @dwmac4_rx_queue_routing, ptr @dwmac4_prog_mtl_rx_algorithms, ptr @dwmac4_prog_mtl_tx_algorithms, ptr @dwmac4_set_mtl_tx_queue_weight, ptr @dwmac4_map_mtl_dma, ptr @dwmac4_config_cbs, ptr @dwmac4_dump_regs, ptr @dwmac4_irq_status, ptr @dwmac4_irq_mtl_status, ptr @dwmac4_set_filter, ptr @dwmac4_flow_ctrl, ptr @dwmac4_pmt, ptr @dwmac4_set_umac_addr, ptr @dwmac4_get_umac_addr, ptr @dwmac4_set_eee_mode, ptr @dwmac4_reset_eee_mode, ptr @dwmac4_set_eee_lpi_entry_timer, ptr @dwmac4_set_eee_timer, ptr @dwmac4_set_eee_pls, ptr @dwmac4_debug, ptr @dwmac4_ctrl_ane, ptr @dwmac4_rane, ptr @dwmac4_get_adv_lp, ptr null, ptr null, ptr null, ptr null, ptr @dwmac5_flex_pps_config, ptr @dwmac4_set_mac_loopback, ptr null, ptr @dwmac4_update_vlan_hash, ptr @dwmac4_enable_vlan, ptr @dwmac4_add_hw_vlan_rx_fltr, ptr @dwmac4_del_hw_vlan_rx_fltr, ptr @dwmac4_restore_hw_vlan_rx_fltr, ptr null, ptr @dwmac4_sarc_configure, ptr @dwmac4_config_l3_filter, ptr @dwmac4_config_l4_filter, ptr @dwmac4_set_arp_offload, ptr @dwmac5_est_configure, ptr @dwmac5_est_irq_status, ptr @dwmac5_fpe_configure, ptr @dwmac5_fpe_send_mpacket, ptr @dwmac5_fpe_irq_status }, align 4
@dwmac510_ops = dso_local local_unnamed_addr constant %struct.stmmac_ops { ptr @dwmac4_core_init, ptr @stmmac_dwmac4_set_mac, ptr @dwmac4_rx_ipc_enable, ptr @dwmac4_rx_queue_enable, ptr @dwmac4_rx_queue_priority, ptr @dwmac4_tx_queue_priority, ptr @dwmac4_rx_queue_routing, ptr @dwmac4_prog_mtl_rx_algorithms, ptr @dwmac4_prog_mtl_tx_algorithms, ptr @dwmac4_set_mtl_tx_queue_weight, ptr @dwmac4_map_mtl_dma, ptr @dwmac4_config_cbs, ptr @dwmac4_dump_regs, ptr @dwmac4_irq_status, ptr @dwmac4_irq_mtl_status, ptr @dwmac4_set_filter, ptr @dwmac4_flow_ctrl, ptr @dwmac4_pmt, ptr @dwmac4_set_umac_addr, ptr @dwmac4_get_umac_addr, ptr @dwmac4_set_eee_mode, ptr @dwmac4_reset_eee_mode, ptr @dwmac4_set_eee_lpi_entry_timer, ptr @dwmac4_set_eee_timer, ptr @dwmac4_set_eee_pls, ptr @dwmac4_debug, ptr @dwmac4_ctrl_ane, ptr @dwmac4_rane, ptr @dwmac4_get_adv_lp, ptr @dwmac5_safety_feat_config, ptr @dwmac5_safety_feat_irq_status, ptr @dwmac5_safety_feat_dump, ptr @dwmac5_rxp_config, ptr @dwmac5_flex_pps_config, ptr @dwmac4_set_mac_loopback, ptr null, ptr @dwmac4_update_vlan_hash, ptr @dwmac4_enable_vlan, ptr @dwmac4_add_hw_vlan_rx_fltr, ptr @dwmac4_del_hw_vlan_rx_fltr, ptr @dwmac4_restore_hw_vlan_rx_fltr, ptr null, ptr @dwmac4_sarc_configure, ptr @dwmac4_config_l3_filter, ptr @dwmac4_config_l4_filter, ptr @dwmac4_set_arp_offload, ptr @dwmac5_est_configure, ptr @dwmac5_est_irq_status, ptr @dwmac5_fpe_configure, ptr @dwmac5_fpe_send_mpacket, ptr @dwmac5_fpe_irq_status }, align 4
@.str = private unnamed_addr constant [11 x i8] c"\09DWMAC4/5\0A\00", align 1
@dwmac4_rx_queue_routing.route_possibilities = internal unnamed_addr constant [5 x %struct.stmmac_rx_routing] [%struct.stmmac_rx_routing { i32 7, i32 0 }, %struct.stmmac_rx_routing { i32 112, i32 4 }, %struct.stmmac_rx_routing { i32 1792, i32 8 }, %struct.stmmac_rx_routing { i32 28672, i32 12 }, %struct.stmmac_rx_routing { i32 458752, i32 16 }], align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"\016stmmac_pcs: ANE process completed\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"\016stmmac_pcs: Link Up\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"\016stmmac_pcs: Link Down\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"\016Link is Up - %d/%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"Full\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"Half\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"\016Link is Down\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.8 = private unnamed_addr constant [39 x i8] c"Timeout accessing MAC_VLAN_Tag_Filter\0A\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"Adding VLAN in promisc mode not supported\0A\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"Adding VLAN ID 0 is not supported\0A\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"Only single VLAN ID supported\0A\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"MAC_VLAN_Tag_Filter full (size: %0u)\0A\00", align 1
@.str.13 = private unnamed_addr constant [45 x i8] c"Deleting VLAN in promisc mode not supported\0A\00", align 1
@switch.table.dwmac4_setup = private unnamed_addr constant [5 x i32] [i32 4, i32 8, i32 16, i32 24, i32 32], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwmac4_core_init(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %6 = or i32 %5, 492032
  %7 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 17
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %25, label %10

10:                                               ; preds = %2
  %11 = or i32 %5, 492034
  %12 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 9
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, %11
  switch i32 %8, label %25 [
    i32 1000, label %15
    i32 100, label %17
    i32 10, label %19
  ]

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 9, i32 3
  br label %21

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 9, i32 2
  br label %21

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 9, i32 1
  br label %21

21:                                               ; preds = %19, %17, %15
  %22 = phi ptr [ %20, %19 ], [ %18, %17 ], [ %16, %15 ]
  %23 = load i32, ptr %22, align 4
  %24 = or i32 %23, %14
  br label %25

25:                                               ; preds = %21, %10, %2
  %26 = phi i32 [ %14, %10 ], [ %6, %2 ], [ %24, %21 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %26) #7, !srcloc !11
  %27 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 15
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, i32 48, i32 55
  %31 = getelementptr i8, ptr %4, i32 296
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %33 = lshr i32 %32, 9
  %34 = and i32 %33, 131072
  %35 = or i32 %34, %30
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %36 = getelementptr i8, ptr %4, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %35) #7, !srcloc !11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @stmmac_set_mac(ptr noundef, i1 noundef zeroext) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwmac4_rx_ipc_enable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !14
  %5 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 14
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  %8 = and i32 %4, -134217729
  %9 = select i1 %7, i32 0, i32 134217728
  %10 = or i32 %9, %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !15
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %10) #7, !srcloc !11
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !16
  %12 = lshr i32 %11, 27
  %13 = and i32 %12, 1
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwmac4_rx_queue_enable(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 160
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !17
  %8 = shl i32 %2, 1
  %9 = shl i32 3, %8
  %10 = xor i32 %9, -1
  %11 = and i32 %7, %10
  switch i8 %1, label %19 [
    i8 0, label %12
    i8 1, label %15
  ]

12:                                               ; preds = %3
  %13 = shl nuw i32 1, %8
  %14 = or i32 %11, %13
  br label %19

15:                                               ; preds = %3
  %16 = or i32 %8, 1
  %17 = shl nuw i32 1, %16
  %18 = or i32 %11, %17
  br label %19

19:                                               ; preds = %15, %12, %3
  %20 = phi i32 [ %14, %12 ], [ %18, %15 ], [ %11, %3 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !18
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %20) #7, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwmac4_rx_queue_priority(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = icmp ugt i32 %2, 3
  %7 = icmp ult i32 %2, 4
  %8 = select i1 %7, i32 168, i32 172
  %9 = getelementptr i8, ptr %5, i32 %8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !19
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
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !20
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %22) #7, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwmac4_tx_queue_priority(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = icmp ugt i32 %2, 3
  %7 = icmp ult i32 %2, 4
  %8 = select i1 %7, i32 152, i32 156
  %9 = getelementptr i8, ptr %5, i32 %8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !21
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
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !22
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %22) #7, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwmac4_rx_queue_routing(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 164
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !23
  %8 = zext i8 %1 to i32
  %9 = add nsw i32 %8, -1
  %10 = getelementptr [5 x %struct.stmmac_rx_routing], ptr @dwmac4_rx_queue_routing.route_possibilities, i32 0, i32 %9
  %11 = load i32, ptr %10, align 4
  %12 = xor i32 %11, -1
  %13 = and i32 %7, %12
  %14 = getelementptr [5 x %struct.stmmac_rx_routing], ptr @dwmac4_rx_queue_routing.route_possibilities, i32 0, i32 %9, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = shl i32 %2, %15
  %17 = and i32 %16, %11
  %18 = or i32 %17, %13
  switch i8 %1, label %23 [
    i8 1, label %19
    i8 5, label %21
  ]

19:                                               ; preds = %3
  %20 = or i32 %18, 2097152
  br label %23

21:                                               ; preds = %3
  %22 = or i32 %18, 1048576
  br label %23

23:                                               ; preds = %21, %19, %3
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ], [ %18, %3 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !24
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %24) #7, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwmac4_prog_mtl_rx_algorithms(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 3072
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !25
  %7 = and i32 %6, -5
  %8 = icmp eq i32 %1, 5
  %9 = select i1 %8, i32 4, i32 0
  %10 = or i32 %7, %9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !26
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %10) #7, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwmac4_prog_mtl_tx_algorithms(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 3072
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !27
  %7 = and i32 %6, -97
  switch i32 %1, label %14 [
    i32 3, label %12
    i32 1, label %8
    i32 2, label %10
  ]

8:                                                ; preds = %2
  %9 = or i32 %7, 32
  br label %14

10:                                               ; preds = %2
  %11 = or i32 %7, 64
  br label %14

12:                                               ; preds = %2
  %13 = or i32 %6, 96
  br label %14

14:                                               ; preds = %12, %10, %8, %2
  %15 = phi i32 [ %13, %12 ], [ %11, %10 ], [ %9, %8 ], [ %7, %2 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !28
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %15) #7, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwmac4_set_mtl_tx_queue_weight(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = shl i32 %2, 6
  %7 = add i32 %6, 3352
  %8 = getelementptr i8, ptr %5, i32 %7
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !29
  %10 = and i32 %9, -2097152
  %11 = and i32 %1, 2097151
  %12 = or i32 %10, %11
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %12) #7, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwmac4_map_mtl_dma(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = icmp ult i32 %1, 4
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %5, i32 3120
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !31
  br label %13

10:                                               ; preds = %3
  %11 = getelementptr i8, ptr %5, i32 3124
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !32
  br label %13

13:                                               ; preds = %10, %7
  %14 = phi i32 [ %9, %7 ], [ %12, %10 ]
  %15 = and i32 %1, -5
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = and i32 %14, -16
  %19 = or i32 %18, %2
  br label %31

20:                                               ; preds = %13
  %21 = shl i32 %1, 3
  %22 = shl nsw i32 -1, %21
  %23 = mul i32 %1, -8
  %24 = add i32 %23, 28
  %25 = lshr i32 -1, %24
  %26 = and i32 %25, %22
  %27 = xor i32 %26, -1
  %28 = and i32 %14, %27
  %29 = shl i32 %2, %21
  %30 = or i32 %28, %29
  br label %31

31:                                               ; preds = %20, %17
  %32 = phi i32 [ %19, %17 ], [ %30, %20 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #7
  tail call void @arm_heavy_mb() #7
  br i1 %6, label %33, label %35

33:                                               ; preds = %31
  %34 = getelementptr i8, ptr %5, i32 3120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %32) #7, !srcloc !11
  br label %37

35:                                               ; preds = %31
  %36 = getelementptr i8, ptr %5, i32 3124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %32) #7, !srcloc !11
  br label %37

37:                                               ; preds = %35, %33
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwmac4_config_cbs(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = shl i32 %5, 6
  %10 = add i32 %9, 3344
  %11 = getelementptr i8, ptr %8, i32 %10
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !33
  %13 = or i32 %12, 12
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !34
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %13) #7, !srcloc !11
  %14 = add i32 %9, 3356
  %15 = getelementptr i8, ptr %8, i32 %14
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !35
  %17 = and i32 %16, -16384
  %18 = and i32 %1, 16383
  %19 = or i32 %17, %18
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !36
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %19) #7, !srcloc !11
  %20 = load ptr, ptr %7, align 4
  %21 = add i32 %9, 3352
  %22 = getelementptr i8, ptr %20, i32 %21
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !29
  %24 = and i32 %23, -2097152
  %25 = and i32 %2, 2097151
  %26 = or i32 %24, %25
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %26) #7, !srcloc !11
  %27 = add i32 %9, 3360
  %28 = getelementptr i8, ptr %8, i32 %27
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !37
  %30 = and i32 %29, -536870912
  %31 = and i32 %3, 536870911
  %32 = or i32 %30, %31
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !38
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %32) #7, !srcloc !11
  %33 = add i32 %9, 3364
  %34 = getelementptr i8, ptr %8, i32 %33
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !39
  %36 = and i32 %35, -536870912
  %37 = and i32 %4, 536870911
  %38 = or i32 %36, %37
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !40
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %38) #7, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwmac4_dump_regs(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  br label %5

5:                                                ; preds = %5, %2
  %6 = phi i32 [ 0, %2 ], [ %11, %5 ]
  %7 = shl i32 %6, 2
  %8 = getelementptr i8, ptr %4, i32 %7
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !41
  %10 = getelementptr i32, ptr %1, i32 %6
  store i32 %9, ptr %10, align 4
  %11 = add nuw nsw i32 %6, 1
  %12 = icmp eq i32 %11, 132
  br i1 %12, label %13, label %5

13:                                               ; preds = %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwmac4_irq_status(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 176
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !42
  %7 = getelementptr i8, ptr %4, i32 180
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !43
  %9 = and i32 %8, %6
  %10 = and i32 %9, 1024
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 48
  %14 = load i32, ptr %13, align 64
  %15 = add i32 %14, 1
  store i32 %15, ptr %13, align 64
  br label %16

16:                                               ; preds = %12, %2
  %17 = and i32 %9, 512
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19, !prof !44

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 49
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, 1
  store i32 %22, ptr %20, align 4
  br label %23

23:                                               ; preds = %19, %16
  %24 = and i32 %9, 2048
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26, !prof !44

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 50
  %28 = load i32, ptr %27, align 8
  %29 = add i32 %28, 1
  store i32 %29, ptr %27, align 8
  br label %30

30:                                               ; preds = %26, %23
  %31 = and i32 %9, 16
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %39, label %33, !prof !44

33:                                               ; preds = %30
  %34 = getelementptr i8, ptr %4, i32 192
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !45
  %36 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 47
  %37 = load i32, ptr %36, align 4
  %38 = add i32 %37, 1
  store i32 %38, ptr %36, align 4
  br label %39

39:                                               ; preds = %33, %30
  %40 = and i32 %9, 32
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %75, label %42

42:                                               ; preds = %39
  %43 = getelementptr i8, ptr %4, i32 208
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !46
  %45 = and i32 %44, 1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 51
  %49 = load i32, ptr %48, align 4
  %50 = add i32 %49, 1
  store i32 %50, ptr %48, align 4
  br label %51

51:                                               ; preds = %47, %42
  %52 = phi i32 [ 1, %47 ], [ 0, %42 ]
  %53 = and i32 %44, 2
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %51
  %56 = or i32 %52, 2
  %57 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 52
  %58 = load i32, ptr %57, align 16
  %59 = add i32 %58, 1
  store i32 %59, ptr %57, align 16
  br label %60

60:                                               ; preds = %55, %51
  %61 = phi i32 [ %56, %55 ], [ %52, %51 ]
  %62 = and i32 %44, 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 53
  %66 = load i32, ptr %65, align 4
  %67 = add i32 %66, 1
  store i32 %67, ptr %65, align 4
  br label %68

68:                                               ; preds = %64, %60
  %69 = and i32 %44, 8
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 54
  %73 = load i32, ptr %72, align 8
  %74 = add i32 %73, 1
  store i32 %74, ptr %72, align 8
  br label %75

75:                                               ; preds = %71, %68, %39
  %76 = phi i32 [ 0, %39 ], [ %61, %71 ], [ %61, %68 ]
  %77 = getelementptr i8, ptr %4, i32 228
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %77) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !47
  %79 = and i32 %9, 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %89, label %81

81:                                               ; preds = %75
  %82 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 81
  %83 = load i32, ptr %82, align 4
  %84 = add i32 %83, 1
  store i32 %84, ptr %82, align 4
  %85 = and i32 %78, 32
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %81
  %88 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #8
  br label %89

89:                                               ; preds = %87, %81, %75
  %90 = and i32 %9, 2
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %100, label %92

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 82
  %94 = load i32, ptr %93, align 8
  %95 = add i32 %94, 1
  store i32 %95, ptr %93, align 8
  %96 = and i32 %78, 4
  %97 = icmp eq i32 %96, 0
  %98 = select i1 %97, ptr @.str.3, ptr @.str.2
  %99 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %98) #8
  br label %100

100:                                              ; preds = %92, %89
  %101 = and i32 %9, 1
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %127, label %103

103:                                              ; preds = %100
  %104 = getelementptr i8, ptr %4, i32 248
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %104) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !48
  %106 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 83
  %107 = load i32, ptr %106, align 4
  %108 = add i32 %107, 1
  store i32 %108, ptr %106, align 4
  %109 = and i32 %105, 524288
  %110 = icmp eq i32 %109, 0
  %111 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 84
  br i1 %110, label %125, label %112

112:                                              ; preds = %103
  store i32 1, ptr %111, align 16
  %113 = lshr i32 %105, 17
  %114 = and i32 %113, 3
  %115 = icmp eq i32 %114, 1
  %116 = select i1 %115, i32 100, i32 10
  %117 = icmp eq i32 %114, 2
  %118 = select i1 %117, i32 1000, i32 %116
  %119 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 86
  store i32 %118, ptr %119, align 8
  %120 = and i32 %105, 1
  %121 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 85
  store i32 %120, ptr %121, align 4
  %122 = icmp eq i32 %120, 0
  %123 = select i1 %122, ptr @.str.6, ptr @.str.5
  %124 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %118, ptr noundef nonnull %123) #8
  br label %127

125:                                              ; preds = %103
  store i32 0, ptr %111, align 16
  %126 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #8
  br label %127

127:                                              ; preds = %125, %112, %100
  ret i32 %76
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwmac4_irq_mtl_status(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 3104
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !49
  %7 = shl nuw i32 1, %1
  %8 = and i32 %6, %7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %2
  %11 = shl i32 %1, 6
  %12 = add i32 %11, 3372
  %13 = getelementptr i8, ptr %4, i32 %12
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !50
  %15 = and i32 %14, 65536
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %10
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !51
  tail call void @arm_heavy_mb() #7
  %18 = or i32 %14, 65536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %18) #7, !srcloc !11
  br label %19

19:                                               ; preds = %17, %10, %2
  %20 = phi i32 [ 0, %2 ], [ 256, %17 ], [ 0, %10 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwmac4_set_filter(ptr nocapture noundef %0, ptr noundef %1) #0 {
  %3 = alloca [8 x i32], align 4
  %4 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 5
  %5 = load i32, ptr %4, align 32
  %6 = inttoptr i32 %5 to ptr
  %7 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 11
  %8 = load i32, ptr %7, align 4
  %9 = lshr i32 %8, 5
  %10 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 13
  %11 = load i32, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #7
  %12 = getelementptr i8, ptr %6, i32 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !52
  %14 = and i32 %13, 2147482474
  %15 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 14
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 256
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %33, label %19

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 22
  %21 = load i8, ptr %20, align 4, !range !53
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %70, label %23

23:                                               ; preds = %19
  %24 = getelementptr i8, ptr %6, i32 148
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !54
  %26 = and i32 %25, -983041
  %27 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 23
  %28 = load i8, ptr %27, align 1
  %29 = zext i8 %28 to i32
  %30 = shl nuw nsw i32 %29, 17
  %31 = or i32 %30, %26
  %32 = or i32 %31, 65536
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !55
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %32) #7, !srcloc !11
  br label %70

33:                                               ; preds = %2
  %34 = and i32 %16, 512
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 61
  %38 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 61, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = load i32, ptr %7, align 4
  %41 = icmp ugt i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %36, %33
  %43 = or i32 %14, 16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %3, i8 -1, i32 32, i1 false)
  br label %70

44:                                               ; preds = %36
  %45 = icmp eq i32 %39, 0
  %46 = and i32 %16, 4096
  %47 = icmp eq i32 %46, 0
  %48 = select i1 %45, i1 true, i1 %47
  br i1 %48, label %70, label %49

49:                                               ; preds = %44
  %50 = or i32 %14, 4
  %51 = load ptr, ptr %37, align 4
  %52 = icmp eq ptr %51, %37
  br i1 %52, label %70, label %53

53:                                               ; preds = %49
  %54 = sub i32 32, %11
  br label %55

55:                                               ; preds = %55, %53
  %56 = phi ptr [ %51, %53 ], [ %68, %55 ]
  %57 = getelementptr inbounds %struct.netdev_hw_addr, ptr %56, i32 0, i32 2
  %58 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %57, i32 noundef 6) #9
  %59 = xor i32 %58, -1
  %60 = tail call i32 asm "rbit $0, $1", "=r,r"(i32 %59) #10, !srcloc !56
  %61 = lshr i32 %60, %54
  %62 = and i32 %61, 31
  %63 = shl nuw i32 1, %62
  %64 = lshr i32 %61, 5
  %65 = getelementptr [8 x i32], ptr %3, i32 0, i32 %64
  %66 = load i32, ptr %65, align 4
  %67 = or i32 %63, %66
  store i32 %67, ptr %65, align 4
  %68 = load ptr, ptr %56, align 4
  %69 = icmp eq ptr %68, %37
  br i1 %69, label %70, label %55

70:                                               ; preds = %55, %49, %44, %42, %23, %19
  %71 = phi i32 [ -2147483647, %23 ], [ %43, %42 ], [ %14, %44 ], [ 129, %19 ], [ %50, %49 ], [ %50, %55 ]
  %72 = icmp ult i32 %8, 32
  br i1 %72, label %84, label %73

73:                                               ; preds = %70
  %74 = call i32 @llvm.umax.i32(i32 %9, i32 1)
  br label %75

75:                                               ; preds = %75, %73
  %76 = phi i32 [ %82, %75 ], [ 0, %73 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !57
  tail call void @arm_heavy_mb() #7
  %77 = getelementptr [8 x i32], ptr %3, i32 0, i32 %76
  %78 = load i32, ptr %77, align 4
  %79 = shl i32 %76, 2
  %80 = add nuw nsw i32 %79, 16
  %81 = getelementptr i8, ptr %6, i32 %80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 %78) #7, !srcloc !11
  %82 = add nuw nsw i32 %76, 1
  %83 = icmp eq i32 %82, %74
  br i1 %83, label %84, label %75

84:                                               ; preds = %75, %70
  %85 = or i32 %71, 1024
  %86 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 60
  %87 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 60, i32 1
  %88 = load i32, ptr %87, align 4
  %89 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 12
  %90 = load i32, ptr %89, align 4
  %91 = icmp ugt i32 %88, %90
  br i1 %91, label %97, label %92

92:                                               ; preds = %84
  %93 = load ptr, ptr %86, align 4
  %94 = icmp eq ptr %93, %86
  br i1 %94, label %101, label %95

95:                                               ; preds = %92
  %96 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 10
  br label %103

97:                                               ; preds = %84
  %98 = or i32 %71, 1025
  br label %123

99:                                               ; preds = %103
  %100 = icmp slt i32 %111, 128
  br i1 %100, label %101, label %123

101:                                              ; preds = %99, %92
  %102 = phi i32 [ 1, %92 ], [ %111, %99 ]
  br label %114

103:                                              ; preds = %103, %95
  %104 = phi ptr [ %93, %95 ], [ %112, %103 ]
  %105 = phi i32 [ 1, %95 ], [ %111, %103 ]
  %106 = getelementptr inbounds %struct.netdev_hw_addr, ptr %104, i32 0, i32 2
  %107 = load ptr, ptr %96, align 4
  %108 = shl i32 %105, 3
  %109 = add i32 %108, 768
  %110 = add i32 %108, 772
  tail call void @stmmac_dwmac4_set_mac_addr(ptr noundef %107, ptr noundef %106, i32 noundef %109, i32 noundef %110) #7
  %111 = add i32 %105, 1
  %112 = load ptr, ptr %104, align 4
  %113 = icmp eq ptr %112, %86
  br i1 %113, label %99, label %103

114:                                              ; preds = %114, %101
  %115 = phi i32 [ %121, %114 ], [ %102, %101 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !58
  tail call void @arm_heavy_mb() #7
  %116 = shl i32 %115, 3
  %117 = add i32 %116, 768
  %118 = getelementptr i8, ptr %6, i32 %117
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %118, i32 0) #7, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !59
  tail call void @arm_heavy_mb() #7
  %119 = add i32 %116, 772
  %120 = getelementptr i8, ptr %6, i32 %119
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %120, i32 0) #7, !srcloc !11
  %121 = add i32 %115, 1
  %122 = icmp eq i32 %121, 128
  br i1 %122, label %123, label %114

123:                                              ; preds = %114, %99, %97
  %124 = phi i32 [ %98, %97 ], [ %85, %99 ], [ %85, %114 ]
  %125 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 23
  %126 = load i64, ptr %125, align 16
  %127 = trunc i64 %126 to i32
  %128 = shl i32 %127, 7
  %129 = and i32 %128, 65536
  %130 = or i32 %129, %124
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !60
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %130) #7, !srcloc !11
  %131 = load i32, ptr %15, align 8
  %132 = and i32 %131, 256
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %182, label %134

134:                                              ; preds = %123
  %135 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 22
  %136 = load i8, ptr %135, align 4, !range !53
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %138, label %182

138:                                              ; preds = %134
  %139 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 21
  %140 = load i32, ptr %139, align 4
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %187

142:                                              ; preds = %138
  store i32 1, ptr %139, align 4
  %143 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 10
  %144 = load ptr, ptr %143, align 4
  %145 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 19
  %146 = load i32, ptr %145, align 4
  switch i32 %146, label %154 [
    i32 1, label %147
    i32 0, label %170
  ]

147:                                              ; preds = %142
  %148 = load i32, ptr %4, align 32
  %149 = inttoptr i32 %148 to ptr
  %150 = getelementptr i8, ptr %149, i32 80
  %151 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %150) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !61
  %152 = and i32 %151, -131072
  %153 = or i32 %152, 65536
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !62
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %150, i32 %153) #7, !srcloc !11
  br label %187

154:                                              ; preds = %166, %142
  %155 = phi i32 [ %167, %166 ], [ %146, %142 ]
  %156 = phi i32 [ %168, %166 ], [ 0, %142 ]
  %157 = getelementptr %struct.mac_device_info, ptr %0, i32 0, i32 20, i32 %156
  %158 = load i32, ptr %157, align 4
  %159 = and i32 %158, 65536
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %166, label %161

161:                                              ; preds = %154
  %162 = and i32 %158, -65537
  %163 = trunc i32 %156 to i8
  %164 = tail call fastcc i32 @dwmac4_write_vlan_filter(ptr noundef %1, ptr noundef %0, i8 noundef zeroext %163, i32 noundef %162) #7
  %165 = load i32, ptr %145, align 4
  br label %166

166:                                              ; preds = %161, %154
  %167 = phi i32 [ %155, %154 ], [ %165, %161 ]
  %168 = add nuw i32 %156, 1
  %169 = icmp ult i32 %168, %167
  br i1 %169, label %154, label %170

170:                                              ; preds = %166, %142
  %171 = getelementptr i8, ptr %144, i32 88
  %172 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %171) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !63
  %173 = and i32 %172, 65535
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %187, label %175

175:                                              ; preds = %170
  %176 = getelementptr i8, ptr %144, i32 80
  %177 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %176) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !64
  %178 = and i32 %177, 33554432
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %187, label %180

180:                                              ; preds = %175
  %181 = and i32 %177, -33554433
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !65
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %176, i32 %181) #7, !srcloc !11
  br label %187

182:                                              ; preds = %134, %123
  %183 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 21
  %184 = load i32, ptr %183, align 4
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %187, label %186

186:                                              ; preds = %182
  store i32 0, ptr %183, align 4
  tail call void @dwmac4_restore_hw_vlan_rx_fltr(ptr noundef %1, ptr noundef %0)
  br label %187

187:                                              ; preds = %186, %182, %180, %175, %170, %147, %138
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwmac4_flow_ctrl(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = and i32 %2, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !66
  tail call void @arm_heavy_mb() #7
  %9 = getelementptr i8, ptr %7, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %8) #7, !srcloc !11
  %10 = and i32 %2, 2
  %11 = icmp eq i32 %10, 0
  %12 = icmp eq i32 %4, 0
  br i1 %11, label %13, label %14

13:                                               ; preds = %5
  br i1 %12, label %34, label %27

14:                                               ; preds = %5
  br i1 %12, label %34, label %15

15:                                               ; preds = %14
  %16 = icmp eq i32 %1, 0
  %17 = shl i32 %3, 16
  %18 = or i32 %17, 2
  %19 = select i1 %16, i32 2, i32 %18
  br label %20

20:                                               ; preds = %20, %15
  %21 = phi i32 [ 0, %15 ], [ %25, %20 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !67
  tail call void @arm_heavy_mb() #7
  %22 = shl i32 %21, 2
  %23 = add i32 %22, 112
  %24 = getelementptr i8, ptr %7, i32 %23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %19) #7, !srcloc !11
  %25 = add nuw i32 %21, 1
  %26 = icmp eq i32 %25, %4
  br i1 %26, label %34, label %20

27:                                               ; preds = %27, %13
  %28 = phi i32 [ %32, %27 ], [ 0, %13 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !68
  tail call void @arm_heavy_mb() #7
  %29 = shl i32 %28, 2
  %30 = add i32 %29, 112
  %31 = getelementptr i8, ptr %7, i32 %30
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 0) #7, !srcloc !11
  %32 = add nuw i32 %28, 1
  %33 = icmp eq i32 %32, %4
  br i1 %33, label %34, label %27

34:                                               ; preds = %27, %20, %14, %13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwmac4_pmt(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = and i32 %1, 34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !69
  %9 = or i32 %8, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !70
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %9) #7, !srcloc !11
  br label %10

10:                                               ; preds = %7, %2
  %11 = and i32 %1, 32
  %12 = icmp eq i32 %11, 0
  %13 = and i32 %1, 2
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %12, i32 0, i32 3
  %16 = or i32 %15, 517
  %17 = select i1 %14, i32 %15, i32 %16
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !71
  tail call void @arm_heavy_mb() #7
  %18 = getelementptr i8, ptr %4, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %17) #7, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwmac4_set_umac_addr(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = shl i32 %2, 3
  %7 = add i32 %6, 768
  %8 = add i32 %6, 772
  tail call void @stmmac_dwmac4_set_mac_addr(ptr noundef %5, ptr noundef %1, i32 noundef %7, i32 noundef %8) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwmac4_get_umac_addr(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = shl i32 %2, 3
  %7 = add i32 %6, 768
  %8 = add i32 %6, 772
  tail call void @stmmac_dwmac4_get_mac_addr(ptr noundef %5, ptr noundef %1, i32 noundef %7, i32 noundef %8) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwmac4_set_eee_mode(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 208
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !72
  %7 = select i1 %1, i32 2686976, i32 589824
  %8 = or i32 %6, %7
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !73
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %8) #7, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwmac4_reset_eee_mode(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 208
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !74
  %6 = and i32 %5, -589825
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !75
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %6) #7, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwmac4_set_eee_lpi_entry_timer(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = and i32 %1, 1048575
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !76
  tail call void @arm_heavy_mb() #7
  %6 = getelementptr i8, ptr %4, i32 216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %5) #7, !srcloc !11
  %7 = getelementptr i8, ptr %4, i32 208
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !77
  %9 = icmp eq i32 %1, 0
  %10 = or i32 %8, 1638400
  %11 = and i32 %8, -1638401
  %12 = or i32 %11, 589824
  %13 = select i1 %9, i32 %12, i32 %10
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !78
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %13) #7, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwmac4_set_eee_timer(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = and i32 %2, 65535
  %7 = shl i32 %1, 16
  %8 = and i32 %7, 67043328
  %9 = or i32 %6, %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !79
  tail call void @arm_heavy_mb() #7
  %10 = getelementptr i8, ptr %5, i32 212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %9) #7, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwmac4_set_eee_pls(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 208
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !80
  %7 = icmp eq i32 %1, 0
  %8 = and i32 %6, -131073
  %9 = select i1 %7, i32 0, i32 131072
  %10 = or i32 %8, %9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !81
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %10) #7, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwmac4_debug(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 87
  %8 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 88
  %9 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 89
  %10 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 92
  %11 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 91
  %12 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 90
  %13 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 94
  br label %22

14:                                               ; preds = %63, %4
  %15 = icmp eq i32 %2, 0
  br i1 %15, label %98, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 103
  %18 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 106
  %19 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 105
  %20 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 104
  %21 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 108
  br label %66

22:                                               ; preds = %63, %6
  %23 = phi i32 [ 0, %6 ], [ %64, %63 ]
  %24 = shl i32 %23, 6
  %25 = add i32 %24, 3336
  %26 = getelementptr i8, ptr %0, i32 %25
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !82
  %28 = and i32 %27, 32
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %22
  %31 = load i32, ptr %7, align 4
  %32 = add i32 %31, 1
  store i32 %32, ptr %7, align 4
  br label %33

33:                                               ; preds = %30, %22
  %34 = and i32 %27, 16
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load i32, ptr %8, align 32
  %38 = add i32 %37, 1
  store i32 %38, ptr %8, align 32
  br label %39

39:                                               ; preds = %36, %33
  %40 = and i32 %27, 8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = load i32, ptr %9, align 4
  %44 = add i32 %43, 1
  store i32 %44, ptr %9, align 4
  br label %45

45:                                               ; preds = %42, %39
  %46 = and i32 %27, 6
  switch i32 %46, label %56 [
    i32 0, label %57
    i32 6, label %47
    i32 4, label %50
    i32 2, label %53
  ]

47:                                               ; preds = %45
  %48 = load i32, ptr %12, align 8
  %49 = add i32 %48, 1
  store i32 %49, ptr %12, align 8
  br label %57

50:                                               ; preds = %45
  %51 = load i32, ptr %11, align 4
  %52 = add i32 %51, 1
  store i32 %52, ptr %11, align 4
  br label %57

53:                                               ; preds = %45
  %54 = load i32, ptr %10, align 16
  %55 = add i32 %54, 1
  store i32 %55, ptr %10, align 16
  br label %57

56:                                               ; preds = %45
  unreachable

57:                                               ; preds = %53, %50, %47, %45
  %58 = and i32 %27, 1
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %57
  %61 = load i32, ptr %13, align 8
  %62 = add i32 %61, 1
  store i32 %62, ptr %13, align 8
  br label %63

63:                                               ; preds = %60, %57
  %64 = add nuw i32 %23, 1
  %65 = icmp eq i32 %64, %3
  br i1 %65, label %14, label %22

66:                                               ; preds = %95, %16
  %67 = phi i32 [ 0, %16 ], [ %96, %95 ]
  %68 = shl i32 %67, 6
  %69 = add i32 %68, 3384
  %70 = getelementptr i8, ptr %0, i32 %69
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %70) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !83
  %72 = and i32 %71, 48
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %66
  %75 = load i32, ptr %17, align 4
  %76 = add i32 %75, 1
  store i32 %76, ptr %17, align 4
  br label %77

77:                                               ; preds = %74, %66
  %78 = and i32 %71, 6
  switch i32 %78, label %88 [
    i32 0, label %89
    i32 6, label %79
    i32 4, label %82
    i32 2, label %85
  ]

79:                                               ; preds = %77
  %80 = load i32, ptr %20, align 32
  %81 = add i32 %80, 1
  store i32 %81, ptr %20, align 32
  br label %89

82:                                               ; preds = %77
  %83 = load i32, ptr %19, align 4
  %84 = add i32 %83, 1
  store i32 %84, ptr %19, align 4
  br label %89

85:                                               ; preds = %77
  %86 = load i32, ptr %18, align 8
  %87 = add i32 %86, 1
  store i32 %87, ptr %18, align 8
  br label %89

88:                                               ; preds = %77
  unreachable

89:                                               ; preds = %85, %82, %79, %77
  %90 = and i32 %71, 1
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %89
  %93 = load i32, ptr %21, align 16
  %94 = add i32 %93, 1
  store i32 %94, ptr %21, align 16
  br label %95

95:                                               ; preds = %92, %89
  %96 = add nuw i32 %67, 1
  %97 = icmp eq i32 %96, %2
  br i1 %97, label %98, label %66

98:                                               ; preds = %95, %14
  %99 = getelementptr i8, ptr %0, i32 276
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %99) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !84
  %101 = lshr i32 %100, 17
  %102 = and i32 %101, 3
  switch i32 %102, label %115 [
    i32 0, label %116
    i32 3, label %103
    i32 2, label %107
    i32 1, label %111
  ]

103:                                              ; preds = %98
  %104 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 95
  %105 = load i32, ptr %104, align 4
  %106 = add i32 %105, 1
  store i32 %106, ptr %104, align 4
  br label %116

107:                                              ; preds = %98
  %108 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 98
  %109 = load i32, ptr %108, align 8
  %110 = add i32 %109, 1
  store i32 %110, ptr %108, align 8
  br label %116

111:                                              ; preds = %98
  %112 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 97
  %113 = load i32, ptr %112, align 4
  %114 = add i32 %113, 1
  store i32 %114, ptr %112, align 4
  br label %116

115:                                              ; preds = %98
  unreachable

116:                                              ; preds = %111, %107, %103, %98
  %117 = and i32 %100, 65536
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %123, label %119

119:                                              ; preds = %116
  %120 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 99
  %121 = load i32, ptr %120, align 4
  %122 = add i32 %121, 1
  store i32 %122, ptr %120, align 4
  br label %123

123:                                              ; preds = %119, %116
  %124 = and i32 %100, 6
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %129, label %126

126:                                              ; preds = %123
  %127 = lshr exact i32 %124, 1
  %128 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 109
  store i32 %127, ptr %128, align 4
  br label %129

129:                                              ; preds = %126, %123
  %130 = and i32 %100, 1
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %136, label %132

132:                                              ; preds = %129
  %133 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 110
  %134 = load i32, ptr %133, align 8
  %135 = add i32 %134, 1
  store i32 %135, ptr %133, align 8
  br label %136

136:                                              ; preds = %132, %129
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwmac4_ctrl_ane(ptr noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2, i1 noundef zeroext %3) #0 {
  %5 = getelementptr i8, ptr %0, i32 224
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !85
  %7 = or i32 %6, 4608
  %8 = select i1 %1, i32 %7, i32 %6
  %9 = or i32 %8, 262144
  %10 = select i1 %2, i32 %9, i32 %8
  %11 = or i32 %10, 16384
  %12 = select i1 %3, i32 %11, i32 %10
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !86
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %12) #7, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwmac4_rane(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 224
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !87
  %5 = or i32 %4, 512
  %6 = select i1 %1, i32 %5, i32 %4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !88
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %6) #7, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwmac4_get_adv_lp(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 232
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !89
  %5 = and i32 %4, 32
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.rgmii_adv, ptr %1, i32 0, i32 1
  store i32 1, ptr %8, align 4
  br label %9

9:                                                ; preds = %7, %2
  %10 = lshr i32 %4, 7
  %11 = and i32 %10, 3
  store i32 %11, ptr %1, align 4
  %12 = getelementptr i8, ptr %0, i32 236
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !90
  %14 = and i32 %13, 32
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.rgmii_adv, ptr %1, i32 0, i32 3
  store i32 1, ptr %17, align 4
  br label %18

18:                                               ; preds = %16, %9
  %19 = and i32 %13, 64
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.rgmii_adv, ptr %1, i32 0, i32 3
  store i32 0, ptr %22, align 4
  br label %23

23:                                               ; preds = %21, %18
  %24 = lshr i32 %13, 7
  %25 = and i32 %24, 3
  %26 = getelementptr inbounds %struct.rgmii_adv, ptr %1, i32 0, i32 2
  store i32 %25, ptr %26, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwmac4_set_mac_loopback(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !91
  %4 = and i32 %3, -4097
  %5 = select i1 %1, i32 4096, i32 0
  %6 = or i32 %4, %5
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !92
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %0, i32 %6) #7, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwmac4_update_vlan_hash(ptr nocapture noundef readonly %0, i32 noundef %1, i16 noundef zeroext %2, i1 noundef zeroext %3) #0 {
  %5 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !93
  tail call void @arm_heavy_mb() #7
  %7 = getelementptr i8, ptr %6, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %1) #7, !srcloc !11
  %8 = getelementptr i8, ptr %6, i32 80
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !94
  %10 = icmp eq i32 %1, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %4
  %12 = select i1 %3, i32 102039552, i32 33619968
  %13 = or i32 %9, %12
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !95
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %13) #7, !srcloc !11
  br label %22

14:                                               ; preds = %4
  %15 = icmp eq i16 %2, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %14
  %17 = select i1 %3, i32 68485120, i32 65536
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !96
  tail call void @arm_heavy_mb() #7
  %18 = zext i16 %2 to i32
  %19 = or i32 %17, %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %19) #7, !srcloc !11
  br label %22

20:                                               ; preds = %14
  %21 = and i32 %9, -102105088
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !97
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %21) #7, !srcloc !11
  br label %22

22:                                               ; preds = %20, %16, %11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwmac4_enable_vlan(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 96
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !98
  %7 = and i32 %6, -1769473
  %8 = shl i32 %1, 16
  %9 = and i32 %8, 196608
  %10 = or i32 %9, %7
  %11 = or i32 %10, 1572864
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !99
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %11) #7, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwmac4_add_hw_vlan_rx_fltr(ptr noundef %0, ptr nocapture noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %3) #0 {
  %5 = zext i16 %3 to i32
  %6 = icmp ugt i16 %3, 4095
  br i1 %6, label %58, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 21
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.9) #8
  br label %58

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 19
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %34

16:                                               ; preds = %12
  %17 = icmp eq i16 %3, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %16
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %0, ptr noundef nonnull @.str.10) #8
  br label %58

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 20
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 65535
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.11) #8
  br label %58

25:                                               ; preds = %19
  store i32 %5, ptr %20, align 4
  %26 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 5
  %27 = load i32, ptr %26, align 32
  %28 = inttoptr i32 %27 to ptr
  %29 = getelementptr i8, ptr %28, i32 80
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !61
  %31 = and i32 %30, -131072
  %32 = or i32 %31, %5
  %33 = or i32 %32, 65536
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !62
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %33) #7, !srcloc !11
  br label %58

34:                                               ; preds = %12
  %35 = or i32 %5, 196608
  %36 = icmp eq i32 %14, 0
  br i1 %36, label %51, label %37

37:                                               ; preds = %43, %34
  %38 = phi i32 [ %47, %43 ], [ 0, %34 ]
  %39 = phi i32 [ %46, %43 ], [ -1, %34 ]
  %40 = getelementptr %struct.mac_device_info, ptr %1, i32 0, i32 20, i32 %38
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, %35
  br i1 %42, label %58, label %43

43:                                               ; preds = %37
  %44 = and i32 %41, 65536
  %45 = icmp eq i32 %44, 0
  %46 = select i1 %45, i32 %38, i32 %39
  %47 = add nuw i32 %38, 1
  %48 = icmp eq i32 %47, %14
  br i1 %48, label %49, label %37

49:                                               ; preds = %43
  %50 = icmp eq i32 %46, -1
  br i1 %50, label %51, label %52

51:                                               ; preds = %49, %34
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.12, i32 noundef %14) #8
  br label %58

52:                                               ; preds = %49
  %53 = trunc i32 %46 to i8
  %54 = tail call fastcc i32 @dwmac4_write_vlan_filter(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %53, i32 noundef %35)
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = getelementptr %struct.mac_device_info, ptr %1, i32 0, i32 20, i32 %46
  store i32 %35, ptr %57, align 4
  br label %58

58:                                               ; preds = %56, %52, %51, %37, %25, %24, %18, %11, %4
  %59 = phi i32 [ -1, %11 ], [ -1, %18 ], [ -1, %24 ], [ 0, %25 ], [ -1, %51 ], [ -22, %4 ], [ 0, %56 ], [ %54, %52 ], [ 0, %37 ]
  ret i32 %59
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwmac4_del_hw_vlan_rx_fltr(ptr noundef %0, ptr nocapture noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %3) #0 {
  %5 = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 21
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.13) #8
  br label %42

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 19
  %11 = load i32, ptr %10, align 4
  switch i32 %11, label %25 [
    i32 1, label %12
    i32 0, label %42
  ]

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 20
  %14 = load i32, ptr %13, align 4
  %15 = trunc i32 %14 to i16
  %16 = icmp eq i16 %15, %3
  br i1 %16, label %17, label %42

17:                                               ; preds = %12
  store i32 0, ptr %13, align 4
  %18 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 5
  %19 = load i32, ptr %18, align 32
  %20 = inttoptr i32 %19 to ptr
  %21 = getelementptr i8, ptr %20, i32 80
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !61
  %23 = and i32 %22, -131072
  %24 = or i32 %23, 65536
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !62
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %24) #7, !srcloc !11
  br label %42

25:                                               ; preds = %38, %9
  %26 = phi i32 [ %39, %38 ], [ %11, %9 ]
  %27 = phi i32 [ %40, %38 ], [ 0, %9 ]
  %28 = getelementptr %struct.mac_device_info, ptr %1, i32 0, i32 20, i32 %27
  %29 = load i32, ptr %28, align 4
  %30 = trunc i32 %29 to i16
  %31 = icmp eq i16 %30, %3
  br i1 %31, label %32, label %38

32:                                               ; preds = %25
  %33 = trunc i32 %27 to i8
  %34 = tail call fastcc i32 @dwmac4_write_vlan_filter(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %33, i32 noundef 0)
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  store i32 0, ptr %28, align 4
  %37 = load i32, ptr %10, align 4
  br label %38

38:                                               ; preds = %36, %25
  %39 = phi i32 [ %26, %25 ], [ %37, %36 ]
  %40 = add nuw i32 %27, 1
  %41 = icmp ult i32 %40, %39
  br i1 %41, label %25, label %42

42:                                               ; preds = %38, %32, %17, %12, %9, %8
  %43 = phi i32 [ -1, %8 ], [ 0, %17 ], [ 0, %12 ], [ %11, %9 ], [ %34, %32 ], [ 0, %38 ]
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwmac4_restore_hw_vlan_rx_fltr(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 19
  %6 = load i32, ptr %5, align 4
  switch i32 %6, label %19 [
    i32 1, label %7
    i32 0, label %34
  ]

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 20
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 5
  %11 = load i32, ptr %10, align 32
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr i8, ptr %12, i32 80
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !61
  %15 = and i32 %14, -131072
  %16 = and i32 %9, 65535
  %17 = or i32 %16, %15
  %18 = or i32 %17, 65536
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !62
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %18) #7, !srcloc !11
  br label %43

19:                                               ; preds = %30, %2
  %20 = phi i32 [ %31, %30 ], [ %6, %2 ]
  %21 = phi i32 [ %32, %30 ], [ 0, %2 ]
  %22 = getelementptr %struct.mac_device_info, ptr %1, i32 0, i32 20, i32 %21
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 65536
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %19
  %27 = trunc i32 %21 to i8
  %28 = tail call fastcc i32 @dwmac4_write_vlan_filter(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %27, i32 noundef %23)
  %29 = load i32, ptr %5, align 4
  br label %30

30:                                               ; preds = %26, %19
  %31 = phi i32 [ %20, %19 ], [ %29, %26 ]
  %32 = add nuw i32 %21, 1
  %33 = icmp ult i32 %32, %31
  br i1 %33, label %19, label %34

34:                                               ; preds = %30, %2
  %35 = getelementptr i8, ptr %4, i32 88
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !100
  %37 = and i32 %36, 65535
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %34
  %40 = getelementptr i8, ptr %4, i32 80
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !101
  %42 = or i32 %41, 33554432
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !102
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %42) #7, !srcloc !11
  br label %43

43:                                               ; preds = %39, %34, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwmac4_sarc_configure(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !103
  %4 = and i32 %3, -1879048193
  %5 = shl i32 %1, 28
  %6 = or i32 %4, %5
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !104
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %0, i32 %6) #7, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwmac4_config_l3_filter(ptr nocapture noundef readonly %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i32 noundef %6) #0 {
  %8 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 10
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 8
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !105
  %12 = or i32 %11, 1048576
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !106
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %12) #7, !srcloc !11
  %13 = mul i32 %1, 48
  %14 = add i32 %13, 2304
  %15 = getelementptr i8, ptr %9, i32 %14
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !107
  br i1 %3, label %17, label %25

17:                                               ; preds = %7
  %18 = and i32 %16, -62
  br i1 %4, label %19, label %22

19:                                               ; preds = %17
  %20 = select i1 %5, i32 13, i32 5
  %21 = or i32 %18, %20
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !108
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %21) #7, !srcloc !11
  br label %33

22:                                               ; preds = %17
  %23 = select i1 %5, i32 49, i32 17
  %24 = or i32 %18, %23
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !108
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %24) #7, !srcloc !11
  br label %36

25:                                               ; preds = %7
  %26 = and i32 %16, -2
  br i1 %4, label %27, label %30

27:                                               ; preds = %25
  %28 = select i1 %5, i32 12, i32 4
  %29 = or i32 %26, %28
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !108
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %29) #7, !srcloc !11
  br label %33

30:                                               ; preds = %25
  %31 = select i1 %5, i32 48, i32 16
  %32 = or i32 %26, %31
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !108
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %32) #7, !srcloc !11
  br label %36

33:                                               ; preds = %27, %19
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !109
  tail call void @arm_heavy_mb() #7
  %34 = add i32 %13, 2320
  %35 = getelementptr i8, ptr %9, i32 %34
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %6) #7, !srcloc !11
  br label %39

36:                                               ; preds = %30, %22
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !110
  tail call void @arm_heavy_mb() #7
  %37 = add i32 %13, 2324
  %38 = getelementptr i8, ptr %9, i32 %37
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %6) #7, !srcloc !11
  br label %39

39:                                               ; preds = %36, %33
  br i1 %2, label %41, label %40

40:                                               ; preds = %39
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !111
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 0) #7, !srcloc !11
  br label %41

41:                                               ; preds = %40, %39
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwmac4_config_l4_filter(ptr nocapture noundef readonly %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i32 noundef %6) #0 {
  %8 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 10
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 8
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !112
  %12 = or i32 %11, 1048576
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !113
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %12) #7, !srcloc !11
  %13 = mul i32 %1, 48
  %14 = add i32 %13, 2304
  %15 = getelementptr i8, ptr %9, i32 %14
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !114
  %17 = and i32 %16, -3997697
  %18 = select i1 %3, i32 65536, i32 0
  %19 = or i32 %17, %18
  br i1 %4, label %20, label %24

20:                                               ; preds = %7
  %21 = select i1 %5, i32 786432, i32 262144
  %22 = or i32 %19, %21
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !115
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %22) #7, !srcloc !11
  %23 = and i32 %6, 65535
  br label %28

24:                                               ; preds = %7
  %25 = select i1 %5, i32 3145728, i32 1048576
  %26 = or i32 %19, %25
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !115
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %26) #7, !srcloc !11
  %27 = shl i32 %6, 16
  br label %28

28:                                               ; preds = %24, %20
  %29 = phi i32 [ %23, %20 ], [ %27, %24 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !116
  tail call void @arm_heavy_mb() #7
  %30 = add i32 %13, 2308
  %31 = getelementptr i8, ptr %9, i32 %30
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %29) #7, !srcloc !11
  br i1 %2, label %33, label %32

32:                                               ; preds = %28
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !117
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 0) #7, !srcloc !11
  br label %33

33:                                               ; preds = %32, %28
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwmac4_set_arp_offload(ptr nocapture noundef readonly %0, i1 noundef zeroext %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !118
  tail call void @arm_heavy_mb() #7
  %6 = getelementptr i8, ptr %5, i32 528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %2) #7, !srcloc !11
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !119
  %8 = and i32 %7, 2147483647
  %9 = select i1 %1, i32 -2147483648, i32 0
  %10 = or i32 %8, %9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !120
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %10) #7, !srcloc !11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @stmmac_dwmac4_set_mac(ptr noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwmac5_flex_pps_config(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwmac5_est_configure(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwmac5_est_irq_status(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwmac5_fpe_configure(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwmac5_fpe_send_mpacket(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwmac5_fpe_irq_status(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwmac5_safety_feat_config(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwmac5_safety_feat_irq_status(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwmac5_safety_feat_dump(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwmac5_rxp_config(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dwmac4_setup(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str) #8
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
  %23 = getelementptr inbounds %struct.mac_device_info, ptr %3, i32 0, i32 13
  %24 = icmp eq i32 %17, 0
  %25 = tail call i32 @llvm.ctlz.i32(i32 %17, i1 true) #7
  %26 = xor i32 %25, 31
  %27 = select i1 %24, i32 0, i32 %26
  store i32 %27, ptr %23, align 4
  %28 = getelementptr inbounds %struct.mac_device_info, ptr %3, i32 0, i32 9
  %29 = getelementptr inbounds %struct.mac_device_info, ptr %3, i32 0, i32 9, i32 5
  store i32 8192, ptr %29, align 4
  %30 = getelementptr inbounds %struct.mac_device_info, ptr %3, i32 0, i32 9, i32 1
  store i32 32768, ptr %30, align 4
  %31 = getelementptr inbounds %struct.mac_device_info, ptr %3, i32 0, i32 9, i32 2
  store i32 49152, ptr %31, align 4
  %32 = getelementptr inbounds %struct.mac_device_info, ptr %3, i32 0, i32 9, i32 3
  store i32 0, ptr %32, align 4
  %33 = getelementptr inbounds %struct.mac_device_info, ptr %3, i32 0, i32 9, i32 4
  store i32 16384, ptr %33, align 4
  store i32 49152, ptr %28, align 4
  %34 = getelementptr inbounds %struct.mac_device_info, ptr %3, i32 0, i32 8
  store i32 512, ptr %34, align 4
  %35 = getelementptr inbounds %struct.mac_device_info, ptr %3, i32 0, i32 8, i32 1
  store i32 516, ptr %35, align 4
  %36 = getelementptr inbounds %struct.mac_device_info, ptr %3, i32 0, i32 8, i32 2
  store i32 21, ptr %36, align 4
  %37 = getelementptr inbounds %struct.mac_device_info, ptr %3, i32 0, i32 8, i32 4
  store i32 65011712, ptr %37, align 4
  %38 = getelementptr inbounds %struct.mac_device_info, ptr %3, i32 0, i32 8, i32 3
  store i32 16, ptr %38, align 4
  %39 = getelementptr inbounds %struct.mac_device_info, ptr %3, i32 0, i32 8, i32 5
  store i32 2031616, ptr %39, align 4
  %40 = getelementptr inbounds %struct.mac_device_info, ptr %3, i32 0, i32 8, i32 6
  store i32 8, ptr %40, align 4
  %41 = getelementptr inbounds %struct.mac_device_info, ptr %3, i32 0, i32 8, i32 7
  store i32 3840, ptr %41, align 4
  %42 = load ptr, ptr %11, align 32
  %43 = getelementptr i8, ptr %42, i32 296
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !121
  %45 = and i32 %44, 7
  %46 = add nsw i32 %45, -1
  %47 = icmp ult i32 %46, 5
  br i1 %47, label %48, label %51

48:                                               ; preds = %1
  %49 = getelementptr inbounds [5 x i32], ptr @switch.table.dwmac4_setup, i32 0, i32 %46
  %50 = load i32, ptr %49, align 4
  br label %51

51:                                               ; preds = %48, %1
  %52 = phi i32 [ 1, %1 ], [ %50, %48 ]
  %53 = getelementptr inbounds %struct.mac_device_info, ptr %3, i32 0, i32 19
  store i32 %52, ptr %53, align 4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dwmac4_write_vlan_filter(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, i32 noundef %3) unnamed_addr #0 {
  %5 = zext i8 %2 to i32
  %6 = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 19
  %7 = load i32, ptr %6, align 4
  %8 = icmp ugt i32 %7, %5
  br i1 %8, label %9, label %70

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 5
  %11 = load i32, ptr %10, align 32
  %12 = inttoptr i32 %11 to ptr
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !122
  tail call void @arm_heavy_mb() #7
  %13 = getelementptr i8, ptr %12, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %3) #7, !srcloc !11
  %14 = getelementptr i8, ptr %12, i32 80
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !123
  %16 = and i32 %15, -128
  %17 = shl nuw nsw i32 %5, 2
  %18 = or i32 %17, 1
  %19 = or i32 %16, %18
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !124
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %19) #7, !srcloc !11
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !125
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %70, label %23

23:                                               ; preds = %9
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748) #7
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !125
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %70, label %28

28:                                               ; preds = %23
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748) #7
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !125
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %70, label %33

33:                                               ; preds = %28
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748) #7
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !125
  %36 = and i32 %35, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %70, label %38

38:                                               ; preds = %33
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 214748) #7
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !125
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %70, label %43

43:                                               ; preds = %38
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 214748) #7
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !125
  %46 = and i32 %45, 1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %70, label %48

48:                                               ; preds = %43
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 214748) #7
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !125
  %51 = and i32 %50, 1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %70, label %53

53:                                               ; preds = %48
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %54(i32 noundef 214748) #7
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !125
  %56 = and i32 %55, 1
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %70, label %58

58:                                               ; preds = %53
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %59(i32 noundef 214748) #7
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !125
  %61 = and i32 %60, 1
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %70, label %63

63:                                               ; preds = %58
  %64 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %64(i32 noundef 214748) #7
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !125
  %66 = and i32 %65, 1
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %63
  %69 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %69(i32 noundef 214748) #7
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.8) #8
  br label %70

70:                                               ; preds = %68, %63, %58, %53, %48, %43, %38, %33, %28, %23, %9, %4
  %71 = phi i32 [ -16, %68 ], [ -22, %4 ], [ 0, %63 ], [ 0, %58 ], [ 0, %53 ], [ 0, %48 ], [ 0, %43 ], [ 0, %38 ], [ 0, %33 ], [ 0, %28 ], [ 0, %23 ], [ 0, %9 ]
  ret i32 %71
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @stmmac_dwmac4_set_mac_addr(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @stmmac_dwmac4_get_mac_addr(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind readonly willreturn }
attributes #10 = { nounwind readnone }

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
!8 = !{i64 4997663}
!9 = !{i64 2157363974}
!10 = !{i64 2157364783}
!11 = !{i64 4997245}
!12 = !{i64 2157365864}
!13 = !{i64 2157366148}
!14 = !{i64 2157397129}
!15 = !{i64 2157397497}
!16 = !{i64 2157397983}
!17 = !{i64 2157366634}
!18 = !{i64 2157367774}
!19 = !{i64 2157368280}
!20 = !{i64 2157370484}
!21 = !{i64 2157370981}
!22 = !{i64 2157373185}
!23 = !{i64 2157377101}
!24 = !{i64 2157377475}
!25 = !{i64 2157377961}
!26 = !{i64 2157378273}
!27 = !{i64 2157378759}
!28 = !{i64 2157379693}
!29 = !{i64 2157380357}
!30 = !{i64 2157382037}
!31 = !{i64 2157382555}
!32 = !{i64 2157382906}
!33 = !{i64 2157388710}
!34 = !{i64 2157389184}
!35 = !{i64 2157389881}
!36 = !{i64 2157391562}
!37 = !{i64 2157392251}
!38 = !{i64 2157393924}
!39 = !{i64 2157394611}
!40 = !{i64 2157396282}
!41 = !{i64 2157396778}
!42 = !{i64 2157435179}
!43 = !{i64 2157435530}
!44 = !{!"branch_weights", i32 2000, i32 1}
!45 = !{i64 2157436047}
!46 = !{i64 2157436374}
!47 = !{i64 2157334816}
!48 = !{i64 2157431250}
!49 = !{i64 2157433308}
!50 = !{i64 2157433967}
!51 = !{i64 2157434509}
!52 = !{i64 2157415461}
!53 = !{i8 0, i8 2}
!54 = !{i64 2157416320}
!55 = !{i64 2157417299}
!56 = !{i64 230262}
!57 = !{i64 2157422365}
!58 = !{i64 2157426400}
!59 = !{i64 2157426748}
!60 = !{i64 2157427349}
!61 = !{i64 2157404847}
!62 = !{i64 2157405812}
!63 = !{i64 2157411685}
!64 = !{i64 2157412719}
!65 = !{i64 2157413087}
!66 = !{i64 2157428819}
!67 = !{i64 2157430376}
!68 = !{i64 2157430731}
!69 = !{i64 2157399506}
!70 = !{i64 2157399789}
!71 = !{i64 2157400124}
!72 = !{i64 2157400678}
!73 = !{i64 2157401118}
!74 = !{i64 2157401574}
!75 = !{i64 2157401930}
!76 = !{i64 2157403067}
!77 = !{i64 2157403523}
!78 = !{i64 2157404048}
!79 = !{i64 2157404367}
!80 = !{i64 2157402386}
!81 = !{i64 2157402742}
!82 = !{i64 2157437383}
!83 = !{i64 2157439641}
!84 = !{i64 2157442786}
!85 = !{i64 2157337821}
!86 = !{i64 2157338349}
!87 = !{i64 2157336905}
!88 = !{i64 2157337181}
!89 = !{i64 2157339010}
!90 = !{i64 2157340220}
!91 = !{i64 2157446046}
!92 = !{i64 2157446414}
!93 = !{i64 2157446748}
!94 = !{i64 2157447232}
!95 = !{i64 2157447852}
!96 = !{i64 2157448539}
!97 = !{i64 2157450009}
!98 = !{i64 2157451876}
!99 = !{i64 2157453631}
!100 = !{i64 2157413657}
!101 = !{i64 2157414691}
!102 = !{i64 2157414975}
!103 = !{i64 2157450495}
!104 = !{i64 2157451390}
!105 = !{i64 2157455303}
!106 = !{i64 2157455587}
!107 = !{i64 2157456155}
!108 = !{i64 2157457545}
!109 = !{i64 2157457942}
!110 = !{i64 2157458339}
!111 = !{i64 2157458732}
!112 = !{i64 2157459230}
!113 = !{i64 2157459514}
!114 = !{i64 2157460082}
!115 = !{i64 2157461164}
!116 = !{i64 2157462939}
!117 = !{i64 2157463332}
!118 = !{i64 2157453965}
!119 = !{i64 2157454449}
!120 = !{i64 2157454817}
!121 = !{i64 2157463830}
!122 = !{i64 2157406145}
!123 = !{i64 2157406629}
!124 = !{i64 2157407749}
!125 = !{i64 2157408231}
