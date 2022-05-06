; ModuleID = '/llk/IR/drivers/net/ethernet/broadcom/genet/bcmgenet.c_pt.bc'
source_filename = "../drivers/net/ethernet/broadcom/genet/bcmgenet.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.acpi_device_id = type { [9 x i8], i32, i32, i32 }
%struct.bcmgenet_plat_data = type { i32, i32, i8 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.bcmgenet_stats = type { [32 x i8], i32, i32, i32, i16 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.softnet_data = type { %struct.list_head, %struct.sk_buff_head, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.anon.140, [4 x i8], i32, [60 x i8], %struct.__call_single_data, ptr, i32, i32, i32, %struct.sk_buff_head, %struct.napi_struct, [56 x i8] }
%struct.anon.140 = type { i16, i8 }
%struct.__call_single_data = type { %struct.__call_single_node, ptr, ptr }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.19 }
%struct.llist_node = type { ptr }
%union.anon.19 = type { i32 }
%struct.sk_buff_head = type { %union.anon.76, i32, %struct.spinlock }
%union.anon.76 = type { %struct.anon.77 }
%struct.anon.77 = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.hlist_node = type { ptr, ptr }
%struct.bcmgenet_hw_params = type { i8, i8, i8, i8, i8, i32, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.120, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.137, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.120 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.ref_tracker_dir = type {}
%struct.possible_net_t = type {}
%union.anon.137 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.bcmgenet_platform_data = type { i8, i32, i32, i32, i32, [6 x i8], i32 }
%struct.bcmgenet_priv = type { ptr, i32, ptr, ptr, ptr, i32, [17 x %struct.bcmgenet_tx_ring], ptr, ptr, i32, i32, [16 x %struct.bcmgenet_rxnfc_rule], %struct.list_head, [17 x %struct.bcmgenet_rx_ring], ptr, i8, %struct.wait_queue_head, i8, ptr, ptr, ptr, i16, ptr, i8, i32, i32, i32, i8, %struct.work_struct, i32, i32, i32, i8, %struct.spinlock, i32, i8, i32, i32, ptr, ptr, ptr, ptr, i32, [6 x i8], i8, %struct.bcmgenet_mib_counters, %struct.ethtool_eee }
%struct.bcmgenet_tx_ring = type { %struct.spinlock, %struct.napi_struct, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.bcmgenet_rxnfc_rule = type { %struct.list_head, %struct.ethtool_rx_flow_spec, i32 }
%struct.ethtool_rx_flow_spec = type { i32, %union.ethtool_flow_union, %struct.ethtool_flow_ext, %union.ethtool_flow_union, %struct.ethtool_flow_ext, i64, i32 }
%union.ethtool_flow_union = type { %struct.ethtool_tcpip6_spec, [12 x i8] }
%struct.ethtool_tcpip6_spec = type { [4 x i32], [4 x i32], i16, i16, i8 }
%struct.ethtool_flow_ext = type { [2 x i8], [6 x i8], i16, i16, [2 x i32] }
%struct.bcmgenet_rx_ring = type { %struct.napi_struct, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, %struct.bcmgenet_net_dim, i32, i32, ptr, ptr, ptr }
%struct.bcmgenet_net_dim = type { i16, i16, i32, i32, %struct.dim }
%struct.dim = type { i8, %struct.dim_stats, %struct.dim_sample, %struct.dim_sample, %struct.work_struct, ptr, i8, i8, i8, i8, i8, i8 }
%struct.dim_stats = type { i32, i32, i32, i32, i32 }
%struct.dim_sample = type { i64, i32, i32, i16, i32 }
%struct.bcmgenet_mib_counters = type { %struct.bcmgenet_rx_counters, %struct.bcmgenet_tx_counters, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bcmgenet_rx_counters = type { %struct.bcmgenet_pkt_counters, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bcmgenet_pkt_counters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bcmgenet_tx_counters = type { %struct.bcmgenet_pkt_counters, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_eee = type { i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_pauseparam = type { i32, i32, i32, i32 }
%struct.ethtool_rxnfc = type { i32, i32, i64, %struct.ethtool_rx_flow_spec, %union.anon.135, [0 x i32] }
%union.anon.135 = type { i32 }
%struct.ethtool_usrip4_spec = type { i32, i32, i32, i8, i8, i8 }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.dim_cq_moder = type { i16, i16, i16, i8 }
%struct.netdev_queue = type { ptr, %struct.netdevice_tracker, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, [4 x i8], %struct.spinlock, i32, i32, i32, [48 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [52 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [24 x i8] }
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
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.69 }
%union.anon.69 = type { [4 x i32] }
%struct.anon.58 = type { i16, i16 }
%struct.status_64 = type { i32, i32, i32, [9 x i32], i32, [3 x i32] }
%struct.enet_cb = type { ptr, ptr, i32, i32 }
%struct.page = type { i32, %union.anon.1, %union.anon.114, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.114 = type { %struct.atomic_t }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@bcmgenet_match = internal constant [8 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,genet-v1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @v1_plat_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,genet-v2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @v2_plat_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,genet-v3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @v3_plat_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,genet-v4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @v4_plat_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,genet-v5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @v5_plat_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm2711-genet-v5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm2711_plat_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm7712-genet-v5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm7712_plat_data }, %struct.of_device_id zeroinitializer], align 4
@genet_acpi_match = internal constant [2 x %struct.acpi_device_id] [%struct.acpi_device_id { [9 x i8] c"BCM6E4E\00\00", i32 ptrtoint (ptr @bcm2711_plat_data to i32), i32 0, i32 0 }, %struct.acpi_device_id zeroinitializer], align 4
@__UNIQUE_ID_author446 = internal constant [28 x i8] c"author=Broadcom Corporation\00", section ".modinfo", align 1
@__UNIQUE_ID_description447 = internal constant [54 x i8] c"description=Broadcom GENET Ethernet controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_alias448 = internal constant [24 x i8] c"alias=platform:bcmgenet\00", section ".modinfo", align 1
@__UNIQUE_ID_license449 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_softdep450 = internal constant [29 x i8] c"softdep=pre: mdio-bcm-unimac\00", section ".modinfo", align 1
@v1_plat_data = internal constant %struct.bcmgenet_plat_data { i32 1, i32 16, i8 0 }, align 4
@v2_plat_data = internal constant %struct.bcmgenet_plat_data { i32 2, i32 16, i8 0 }, align 4
@v3_plat_data = internal constant %struct.bcmgenet_plat_data { i32 3, i32 16, i8 0 }, align 4
@v4_plat_data = internal constant %struct.bcmgenet_plat_data { i32 4, i32 16, i8 0 }, align 4
@v5_plat_data = internal constant %struct.bcmgenet_plat_data { i32 5, i32 16, i8 0 }, align 4
@bcm2711_plat_data = internal constant %struct.bcmgenet_plat_data { i32 5, i32 8, i8 0 }, align 4
@bcm7712_plat_data = internal constant %struct.bcmgenet_plat_data { i32 5, i32 16, i8 1 }, align 4
@bcmgenet_driver = internal global %struct.platform_driver { ptr @bcmgenet_probe, ptr @bcmgenet_remove, ptr @bcmgenet_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bcmgenet_match, ptr @genet_acpi_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcmgenet_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [9 x i8] c"bcmgenet\00", align 1
@bcmgenet_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @bcmgenet_suspend, ptr @bcmgenet_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcmgenet_suspend_noirq, ptr @bcmgenet_resume_noirq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"can't allocate net device\0A\00", align 1
@bcmgenet_ethtool_ops = internal constant %struct.ethtool_ops { i8 0, i32 547, i32 0, ptr @bcmgenet_get_drvinfo, ptr null, ptr null, ptr @bcmgenet_get_wol, ptr @bcmgenet_set_wol, ptr @bcmgenet_get_msglevel, ptr @bcmgenet_set_msglevel, ptr @phy_ethtool_nway_reset, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr @bcmgenet_get_coalesce, ptr @bcmgenet_set_coalesce, ptr null, ptr null, ptr null, ptr @bcmgenet_get_pauseparam, ptr @bcmgenet_set_pauseparam, ptr null, ptr @bcmgenet_get_strings, ptr null, ptr @bcmgenet_get_ethtool_stats, ptr @bcmgenet_begin, ptr @bcmgenet_complete, ptr null, ptr null, ptr @bcmgenet_get_sset_count, ptr @bcmgenet_get_rxnfc, ptr @bcmgenet_set_rxnfc, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ethtool_op_get_ts_info, ptr null, ptr null, ptr @bcmgenet_get_eee, ptr @bcmgenet_set_eee, ptr null, ptr null, ptr null, ptr null, ptr @bcmgenet_get_link_ksettings, ptr @bcmgenet_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@bcmgenet_netdev_ops = internal constant %struct.net_device_ops { ptr null, ptr null, ptr @bcmgenet_open, ptr @bcmgenet_close, ptr @bcmgenet_xmit, ptr null, ptr null, ptr null, ptr @bcmgenet_set_rx_mode, ptr @bcmgenet_set_mac_addr, ptr null, ptr null, ptr @phy_do_ioctl_running, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcmgenet_timeout, ptr null, ptr null, ptr null, ptr @bcmgenet_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcmgenet_set_features, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcmgenet_change_carrier, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"enet\00", align 1
@bcmgenet_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"&priv->wq\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"enet-wol\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"enet-eee\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"using random Ethernet MAC\0A\00", align 1
@genet_dma_ring_regs = internal unnamed_addr global ptr null, align 4
@bcmgenet_dma_regs = internal unnamed_addr global ptr null, align 4
@bcmgenet_gstrings_stats = internal unnamed_addr constant [109 x %struct.bcmgenet_stats] [%struct.bcmgenet_stats { [32 x i8] c"rx_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 0, i32 -1, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"tx_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 4, i32 -1, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 8, i32 -1, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"tx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 12, i32 -1, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rx_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 16, i32 -1, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"tx_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 20, i32 -1, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rx_dropped\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 24, i32 -1, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"tx_dropped\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 28, i32 -1, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"multicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 32, i32 -1, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rx_64_octets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14968, i32 0, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rx_65_127_oct\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14972, i32 0, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rx_128_255_oct\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14976, i32 0, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rx_256_511_oct\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14980, i32 0, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rx_512_1023_oct\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14984, i32 0, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rx_1024_1518_oct\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14988, i32 0, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rx_vlan_1519_1522_oct\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14992, i32 0, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rx_1522_2047_oct\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14996, i32 0, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rx_2048_4095_oct\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15000, i32 0, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rx_4096_9216_oct\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15004, i32 0, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rx_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15008, i32 0, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15012, i32 0, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rx_multicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15016, i32 0, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rx_broadcast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15020, i32 0, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rx_fcs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15024, i32 0, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rx_control\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15028, i32 0, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rx_pause\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15032, i32 0, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rx_unknown\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15036, i32 0, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rx_align\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15040, i32 0, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rx_outrange\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15044, i32 0, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rx_code\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15048, i32 0, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rx_carrier\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15052, i32 0, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rx_oversize\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15056, i32 0, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rx_jabber\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15060, i32 0, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rx_mtu_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15064, i32 0, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rx_good_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15068, i32 0, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rx_unicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15072, i32 0, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rx_ppp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15076, i32 0, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rx_crc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15080, i32 0, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"tx_64_octets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15084, i32 1, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"tx_65_127_oct\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15088, i32 1, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"tx_128_255_oct\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15092, i32 1, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"tx_256_511_oct\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15096, i32 1, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"tx_512_1023_oct\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15100, i32 1, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"tx_1024_1518_oct\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15104, i32 1, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"tx_vlan_1519_1522_oct\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15108, i32 1, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"tx_1522_2047_oct\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15112, i32 1, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"tx_2048_4095_oct\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15116, i32 1, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"tx_4096_9216_oct\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15120, i32 1, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"tx_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15124, i32 1, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"tx_multicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15128, i32 1, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"tx_broadcast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15132, i32 1, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"tx_pause\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15136, i32 1, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"tx_control\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15140, i32 1, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"tx_fcs_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15144, i32 1, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"tx_oversize\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15148, i32 1, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"tx_defer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15152, i32 1, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"tx_excess_defer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15156, i32 1, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"tx_single_col\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15160, i32 1, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"tx_multi_col\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15164, i32 1, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"tx_late_col\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15168, i32 1, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"tx_excess_col\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15172, i32 1, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"tx_frags\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15176, i32 1, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"tx_total_col\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15180, i32 1, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"tx_jabber\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15184, i32 1, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"tx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15188, i32 1, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"tx_good_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15192, i32 1, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"tx_unicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15196, i32 1, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rx_runt_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15200, i32 2, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rx_runt_valid_fcs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15204, i32 2, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rx_runt_inval_fcs_align\00\00\00\00\00\00\00\00\00", i32 4, i32 15208, i32 2, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rx_runt_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15212, i32 2, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rbuf_ovflow_cnt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15216, i32 3, i16 1564 }, %struct.bcmgenet_stats { [32 x i8] c"rbuf_err_cnt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15220, i32 3, i16 1588 }, %struct.bcmgenet_stats { [32 x i8] c"mdf_err_cnt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15224, i32 3, i16 1592 }, %struct.bcmgenet_stats { [32 x i8] c"alloc_rx_buff_failed\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15228, i32 4, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rx_dma_failed\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15232, i32 4, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"tx_dma_failed\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15236, i32 4, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"tx_realloc_tsb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15240, i32 4, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"tx_realloc_tsb_failed\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15244, i32 4, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"txq0_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 248, i32 4, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"txq0_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 252, i32 4, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rxq0_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 8104, i32 4, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rxq0_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 8108, i32 4, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rxq0_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 8112, i32 4, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rxq0_dropped\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 8116, i32 4, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"txq1_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 536, i32 4, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"txq1_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 540, i32 4, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rxq1_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 8512, i32 4, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rxq1_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 8516, i32 4, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rxq1_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 8520, i32 4, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rxq1_dropped\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 8524, i32 4, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"txq2_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 824, i32 4, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"txq2_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 828, i32 4, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rxq2_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 8920, i32 4, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rxq2_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 8924, i32 4, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rxq2_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 8928, i32 4, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rxq2_dropped\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 8932, i32 4, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"txq3_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 1112, i32 4, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"txq3_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 1116, i32 4, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rxq3_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 9328, i32 4, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rxq3_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 9332, i32 4, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rxq3_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 9336, i32 4, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rxq3_dropped\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 9340, i32 4, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"txq16_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 4856, i32 4, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"txq16_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 4860, i32 4, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rxq16_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14632, i32 4, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rxq16_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14636, i32 4, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rxq16_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14640, i32 4, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rxq16_dropped\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 14644, i32 4, i16 0 }], align 4
@.str.7 = private unnamed_addr constant [35 x i8] c"Unsupported ethtool command. (%d)\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"rxnfc: Not supported by this device\0A\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"rxnfc: Unsupported action (%llu)\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"rxnfc: Invalid location (%d)\0A\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"rxnfc: Unsupported mask\0A\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"rxnfc: Unsupported flow type (0x%x)\0A\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"rxnfc: user-def not supported\0A\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"EEE initialization failed\0A\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"failed to initialize DMA\0A\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"can't request IRQ %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"failed to connect to PHY\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.18 = private unnamed_addr constant [32 x i8] c"failed to initialize Rx queues\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.19 = private unnamed_addr constant [30 x i8] c"%s: Rx skb allocation failed\0A\00", align 1
@__func__.bcmgenet_rx_refill = private unnamed_addr constant [19 x i8] c"bcmgenet_rx_refill\00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"%s: Rx skb DMA mapping failed\0A\00", align 1
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c"include/linux/dma-mapping.h\00", align 1
@.str.22 = private unnamed_addr constant [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.23 = private unnamed_addr constant [29 x i8] c"dropping fragmented packet!\0A\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"dma_flag=0x%x\0A\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.25 = private unnamed_addr constant [34 x i8] c"Timed out while disabling TX DMA\0A\00", align 1
@.str.26 = private unnamed_addr constant [34 x i8] c"Timed out while disabling RX DMA\0A\00", align 1
@.str.27 = private unnamed_addr constant [41 x i8] c"%s: tx ring %d full when queue %d awake\0A\00", align 1
@__func__.bcmgenet_xmit = private unnamed_addr constant [14 x i8] c"bcmgenet_xmit\00", align 1
@.str.28 = private unnamed_addr constant [19 x i8] c"Tx DMA map failed\0A\00", align 1
@softnet_data = external dso_local global %struct.softnet_data, section ".data..percpu", align 64
@.str.30 = private unnamed_addr constant [226 x i8] c"Ring %d queue %d status summary\0ATX queue status: %s, interrupts: %s\0A(sw)free_bds: %d (sw)size: %d\0A(sw)p_index: %d (hw)p_index: %d\0A(sw)c_index: %d (hw)c_index: %d\0A(sw)clean_p: %d (sw)write_p: %d\0A(sw)cb_ptr: %d (sw)end_ptr: %d\0A\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"stopped\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@bcmgenet_dma_regs_v3plus = internal constant [33 x i8] c"\00\04\08\0C,048ptx|\80\84\88\8C,048<@DHLPTX\\`dhl", align 1
@genet_dma_ring_regs_v4 = internal constant [13 x i8] c"\00\04\08\0C\10\14\18\1C $(,0", align 1
@genet_dma_ring_regs_v123 = internal constant [12 x i8] c"\00\00\04\08\0C\10\00\14\00\18\1C ", align 1
@bcmgenet_dma_regs_v2 = internal constant [33 x i8] c"\00\04\08\0C048<\00\00\00\00\00\00\00\00,048<@DHLPTX\\`dhl", align 1
@bcmgenet_dma_regs_v1 = internal constant [33 x i8] c"\00\00\04\0C048<\00\00\00\00\00\00\00\00,048<@DHLPTX\\`dhl", align 1
@bcmgenet_hw_params = internal global [6 x %struct.bcmgenet_hw_params] [%struct.bcmgenet_hw_params zeroinitializer, %struct.bcmgenet_hw_params { i8 0, i8 0, i8 0, i8 0, i8 16, i32 65535, i8 16, i8 0, i8 31, i16 0, i32 4096, i32 0, i32 8192, i32 12288, i32 2, i32 0 }, %struct.bcmgenet_hw_params { i8 4, i8 32, i8 0, i8 0, i8 16, i32 65535, i8 16, i8 0, i8 31, i16 1536, i32 4096, i32 8192, i32 12288, i32 16384, i32 2, i32 2 }, %struct.bcmgenet_hw_params { i8 4, i8 32, i8 0, i8 0, i8 17, i32 131071, i8 48, i8 -128, i8 63, i16 1536, i32 32768, i32 64512, i32 65536, i32 69632, i32 2, i32 14 }, %struct.bcmgenet_hw_params { i8 4, i8 32, i8 0, i8 0, i8 17, i32 131071, i8 48, i8 -128, i8 63, i16 1536, i32 32768, i32 64512, i32 8192, i32 16384, i32 3, i32 15 }, %struct.bcmgenet_hw_params { i8 4, i8 32, i8 0, i8 0, i8 17, i32 131071, i8 48, i8 -128, i8 63, i16 1536, i32 32768, i32 64512, i32 8192, i32 16384, i32 3, i32 15 }], align 4
@.str.35 = private unnamed_addr constant [53 x i8] c"GENET version mismatch, got: %d, configured for: %d\0A\00", align 1
@.str.36 = private unnamed_addr constant [27 x i8] c"GENET %1d.%1d EPHY: 0x%04x\00", align 1
@.str.37 = private unnamed_addr constant [54 x i8] c"\014bcmgenet: GENET is reporting EPHY revision: 0x%04x\0A\00", align 1
@.str.38 = private unnamed_addr constant [52 x i8] c"\014bcmgenet: Invalid GPHY revision detected: 0x%04x\0A\00", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_alias448, ptr @__UNIQUE_ID_author446, ptr @__UNIQUE_ID_description447, ptr @__UNIQUE_ID_license449, ptr @__UNIQUE_ID_softdep450], section "llvm.metadata"
@switch.table.bcmgenet_probe = private unnamed_addr constant [5 x ptr] [ptr @bcmgenet_dma_regs_v1, ptr @bcmgenet_dma_regs_v2, ptr @bcmgenet_dma_regs_v3plus, ptr @bcmgenet_dma_regs_v3plus, ptr @bcmgenet_dma_regs_v3plus], align 4
@switch.table.bcmgenet_probe.39 = private unnamed_addr constant [5 x ptr] [ptr @genet_dma_ring_regs_v123, ptr @genet_dma_ring_regs_v123, ptr @genet_dma_ring_regs_v123, ptr @genet_dma_ring_regs_v4, ptr @genet_dma_ring_regs_v4], align 4

@__mod_of__bcmgenet_match_device_table = dso_local alias [8 x %struct.of_device_id], ptr @bcmgenet_match
@__mod_acpi__genet_acpi_match_device_table = dso_local alias [2 x %struct.acpi_device_id], ptr @genet_acpi_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @bcmgenet_driver, ptr noundef nonnull @__this_module) #20
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @bcmgenet_driver) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcmgenet_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr @alloc_etherdev_mqs(i32 noundef 15288, i32 noundef 5, i32 noundef 5) #20
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #21
  br label %250

8:                                                ; preds = %1
  %9 = getelementptr i8, ptr %5, i32 1408
  %10 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #20
  %11 = getelementptr i8, ptr %5, i32 16312
  store i32 %10, ptr %11, align 8
  %12 = icmp slt i32 %10, 0
  br i1 %12, label %248, label %13

13:                                               ; preds = %8
  %14 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 1) #20
  %15 = getelementptr i8, ptr %5, i32 16316
  store i32 %14, ptr %15, align 4
  %16 = icmp slt i32 %14, 0
  br i1 %16, label %248, label %17

17:                                               ; preds = %13
  %18 = tail call i32 @platform_get_irq_optional(ptr noundef %0, i32 noundef 2) #20
  %19 = getelementptr i8, ptr %5, i32 16320
  store i32 %18, ptr %19, align 8
  %20 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #20
  store ptr %20, ptr %9, align 8
  %21 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = ptrtoint ptr %20 to i32
  br label %248

24:                                               ; preds = %17
  %25 = getelementptr i8, ptr %5, i32 16328
  store i32 0, ptr %25, align 8
  %26 = getelementptr i8, ptr %5, i32 16236
  %27 = load i8, ptr %26, align 4
  %28 = or i8 %27, 7
  store i8 %28, ptr %26, align 4
  %29 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 111, i32 1
  store ptr %2, ptr %29, align 4
  %30 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %5, ptr %30, align 8
  %31 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 96
  store i32 200, ptr %31, align 8
  %32 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 42
  store ptr @bcmgenet_ethtool_ops, ptr %32, align 8
  %33 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 16
  store ptr @bcmgenet_netdev_ops, ptr %33, align 8
  %34 = getelementptr i8, ptr %5, i32 16344
  store i32 7, ptr %34, align 8
  %35 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 23
  %36 = load i64, ptr %35, align 16
  %37 = or i64 %36, 1099511627817
  store i64 %37, ptr %35, align 16
  %38 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 24
  %39 = load i64, ptr %38, align 8
  %40 = or i64 %39, %37
  store i64 %40, ptr %38, align 8
  %41 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 26
  %42 = load i64, ptr %41, align 8
  %43 = or i64 %42, %37
  store i64 %43, ptr %41, align 8
  %44 = getelementptr i8, ptr %5, i32 16324
  store i8 1, ptr %44, align 4
  %45 = load i32, ptr %19, align 8
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %24
  %48 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %45, ptr noundef nonnull @bcmgenet_wol_isr, ptr noundef null, i32 noundef 0, ptr noundef nonnull %5, ptr noundef %9) #20
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  tail call void @device_set_wakeup_capable(ptr noundef %2, i1 noundef zeroext true) #20
  br label %51

51:                                               ; preds = %50, %47, %24
  %52 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 21
  %53 = load i16, ptr %52, align 8
  %54 = add i16 %53, 64
  store i16 %54, ptr %52, align 8
  %55 = getelementptr i8, ptr %5, i32 1416
  store ptr %5, ptr %55, align 8
  %56 = getelementptr i8, ptr %5, i32 16352
  store ptr %0, ptr %56, align 8
  %57 = tail call ptr @device_get_match_data(ptr noundef %2) #20
  %58 = icmp eq ptr %57, null
  br i1 %58, label %68, label %59

59:                                               ; preds = %51
  %60 = load i32, ptr %57, align 4
  %61 = getelementptr i8, ptr %5, i32 1412
  store i32 %60, ptr %61, align 4
  %62 = getelementptr inbounds %struct.bcmgenet_plat_data, ptr %57, i32 0, i32 1
  %63 = load i32, ptr %62, align 4
  %64 = getelementptr i8, ptr %5, i32 16340
  store i32 %63, ptr %64, align 4
  %65 = getelementptr inbounds %struct.bcmgenet_plat_data, ptr %57, i32 0, i32 2
  %66 = load i8, ptr %65, align 4, !range !9
  %67 = getelementptr i8, ptr %5, i32 16292
  store i8 %66, ptr %67, align 4
  br label %73

68:                                               ; preds = %51
  %69 = getelementptr inbounds %struct.bcmgenet_platform_data, ptr %4, i32 0, i32 6
  %70 = load i32, ptr %69, align 4
  %71 = getelementptr i8, ptr %5, i32 1412
  store i32 %70, ptr %71, align 4
  %72 = getelementptr i8, ptr %5, i32 16340
  store i32 16, ptr %72, align 4
  br label %73

73:                                               ; preds = %68, %59
  %74 = load ptr, ptr %56, align 8
  %75 = getelementptr inbounds %struct.platform_device, ptr %74, i32 0, i32 3
  %76 = tail call ptr @devm_clk_get_optional(ptr noundef %75, ptr noundef nonnull @.str.2) #20
  %77 = getelementptr i8, ptr %5, i32 16348
  store ptr %76, ptr %77, align 4
  %78 = icmp ugt ptr %76, inttoptr (i32 -4096 to ptr)
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = ptrtoint ptr %76 to i32
  br label %248

81:                                               ; preds = %73
  %82 = tail call i32 @clk_prepare(ptr noundef %76) #20
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %248

84:                                               ; preds = %81
  %85 = tail call i32 @clk_enable(ptr noundef %76) #20
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %84
  tail call void @clk_unprepare(ptr noundef %76) #20
  br label %248

88:                                               ; preds = %84
  %89 = getelementptr i8, ptr %5, i32 1412
  %90 = load i32, ptr %89, align 4
  %91 = add i32 %90, -1
  %92 = icmp ult i32 %91, 5
  br i1 %92, label %93, label %98

93:                                               ; preds = %88
  %94 = getelementptr inbounds [5 x ptr], ptr @switch.table.bcmgenet_probe, i32 0, i32 %91
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr inbounds [5 x ptr], ptr @switch.table.bcmgenet_probe.39, i32 0, i32 %91
  %97 = load ptr, ptr %96, align 4
  store ptr %95, ptr @bcmgenet_dma_regs, align 4
  store ptr %97, ptr @genet_dma_ring_regs, align 4
  br label %98

98:                                               ; preds = %93, %88
  %99 = getelementptr [6 x %struct.bcmgenet_hw_params], ptr @bcmgenet_hw_params, i32 0, i32 %90
  %100 = getelementptr i8, ptr %5, i32 16232
  store ptr %99, ptr %100, align 8
  %101 = load ptr, ptr %9, align 8
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %101) #20, !srcloc !10
  %103 = lshr i32 %102, 24
  %104 = trunc i32 %103 to i4
  switch i4 %104, label %106 [
    i4 6, label %112
    i4 5, label %105
  ]

105:                                              ; preds = %98
  br label %112

106:                                              ; preds = %98
  %107 = trunc i32 %103 to i8
  %108 = and i8 %107, 15
  %109 = icmp eq i8 %108, 0
  %110 = select i1 %109, i8 1, i8 %108
  %111 = zext i8 %110 to i32
  br label %112

112:                                              ; preds = %106, %105, %98
  %113 = phi i32 [ 4, %105 ], [ %111, %106 ], [ 5, %98 ]
  %114 = load i32, ptr %89, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %119, label %116

116:                                              ; preds = %112
  %117 = load ptr, ptr %56, align 8
  %118 = getelementptr inbounds %struct.platform_device, ptr %117, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %118, ptr noundef nonnull @.str.35, i32 noundef %113, i32 noundef %114) #21
  br label %119

119:                                              ; preds = %116, %112
  %120 = load ptr, ptr %56, align 8
  %121 = getelementptr inbounds %struct.platform_device, ptr %120, i32 0, i32 3
  %122 = lshr i32 %102, 16
  %123 = and i32 %122, 15
  %124 = and i32 %102, 65535
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %121, ptr noundef nonnull @.str.36, i32 noundef %113, i32 noundef %123, i32 noundef %124) #21
  %125 = trunc i32 %102 to i16
  %126 = load i32, ptr %89, align 4
  %127 = icmp eq i32 %126, 5
  br i1 %127, label %128, label %132

128:                                              ; preds = %119
  %129 = icmp eq i32 %124, 0
  br i1 %129, label %146, label %130

130:                                              ; preds = %128
  %131 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %124) #21
  br label %146

132:                                              ; preds = %119
  switch i16 %125, label %135 [
    i16 511, label %133
    i16 0, label %133
  ]

133:                                              ; preds = %132, %132
  %134 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %124) #21
  br label %146

135:                                              ; preds = %132
  %136 = and i32 %102, 240
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %141, label %138

138:                                              ; preds = %135
  %139 = shl i16 %125, 8
  %140 = getelementptr i8, ptr %5, i32 16268
  store i16 %139, ptr %140, align 4
  br label %146

141:                                              ; preds = %135
  %142 = and i32 %102, 65280
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %146, label %144

144:                                              ; preds = %141
  %145 = getelementptr i8, ptr %5, i32 16268
  store i16 %125, ptr %145, align 4
  br label %146

146:                                              ; preds = %144, %141, %138, %133, %130, %128
  %147 = load ptr, ptr %100, align 8
  %148 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %147, i32 0, i32 15
  %149 = load i32, ptr %148, align 4
  %150 = and i32 %149, 1
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %155, label %152

152:                                              ; preds = %146
  %153 = tail call fastcc i32 @dma_set_mask_and_coherent(ptr noundef %2, i64 noundef 1099511627775)
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %160, label %155

155:                                              ; preds = %152, %146
  %156 = tail call i32 @dma_set_mask(ptr noundef %2, i64 noundef 4294967295) #20
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %245

158:                                              ; preds = %155
  %159 = tail call i32 @dma_set_coherent_mask(ptr noundef %2, i64 noundef 4294967295) #20
  br label %160

160:                                              ; preds = %158, %152
  %161 = getelementptr i8, ptr %5, i32 16240
  tail call void @__init_waitqueue_head(ptr noundef %161, ptr noundef nonnull @.str.3, ptr noundef nonnull @bcmgenet_probe.__key) #20
  %162 = getelementptr i8, ptr %5, i32 6340
  store i32 2048, ptr %162, align 4
  %163 = getelementptr i8, ptr %5, i32 16296
  store i32 -32, ptr %163, align 8
  %164 = getelementptr i8, ptr %5, i32 16300
  store volatile ptr %164, ptr %164, align 4
  %165 = getelementptr i8, ptr %5, i32 16304
  store ptr %164, ptr %165, align 4
  %166 = getelementptr i8, ptr %5, i32 16308
  store ptr @bcmgenet_irq_task, ptr %166, align 4
  %167 = load ptr, ptr %56, align 8
  %168 = getelementptr inbounds %struct.platform_device, ptr %167, i32 0, i32 3
  %169 = tail call ptr @devm_clk_get_optional(ptr noundef %168, ptr noundef nonnull @.str.4) #20
  %170 = getelementptr i8, ptr %5, i32 16360
  store ptr %169, ptr %170, align 8
  %171 = icmp ugt ptr %169, inttoptr (i32 -4096 to ptr)
  br i1 %171, label %172, label %174

172:                                              ; preds = %160
  %173 = ptrtoint ptr %169 to i32
  br label %245

174:                                              ; preds = %160
  %175 = load ptr, ptr %56, align 8
  %176 = getelementptr inbounds %struct.platform_device, ptr %175, i32 0, i32 3
  %177 = tail call ptr @devm_clk_get_optional(ptr noundef %176, ptr noundef nonnull @.str.5) #20
  %178 = getelementptr i8, ptr %5, i32 16272
  store ptr %177, ptr %178, align 8
  %179 = icmp ugt ptr %177, inttoptr (i32 -4096 to ptr)
  br i1 %179, label %180, label %182

180:                                              ; preds = %174
  %181 = ptrtoint ptr %177 to i32
  br label %245

182:                                              ; preds = %174
  %183 = tail call i32 @device_get_phy_mode(ptr noundef %2) #20
  %184 = icmp eq i32 %183, 1
  br i1 %184, label %185, label %186

185:                                              ; preds = %182
  tail call fastcc void @bcmgenet_power_up(ptr noundef %9, i32 noundef 1)
  br label %186

186:                                              ; preds = %185, %182
  %187 = icmp eq ptr %4, null
  br i1 %187, label %194, label %188

188:                                              ; preds = %186
  %189 = getelementptr inbounds %struct.bcmgenet_platform_data, ptr %4, i32 0, i32 5
  %190 = icmp eq ptr %189, null
  %191 = icmp ugt ptr %189, inttoptr (i32 -4096 to ptr)
  %192 = or i1 %190, %191
  br i1 %192, label %194, label %193

193:                                              ; preds = %188
  tail call void @dev_addr_mod(ptr noundef nonnull %5, i32 noundef 0, ptr noundef nonnull %189, i32 noundef 6) #20
  br label %196

194:                                              ; preds = %188, %186
  %195 = tail call i32 @device_get_ethdev_address(ptr noundef %2, ptr noundef nonnull %5) #20
  br label %196

196:                                              ; preds = %194, %193
  %197 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 72
  %198 = load ptr, ptr %197, align 32
  %199 = load i32, ptr %198, align 4
  %200 = and i32 %199, 1
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %208

202:                                              ; preds = %196
  %203 = getelementptr i8, ptr %198, i32 4
  %204 = load i16, ptr %203, align 2
  %205 = zext i16 %204 to i32
  %206 = or i32 %199, %205
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %202, %196
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %2, ptr noundef nonnull @.str.6) #21
  tail call fastcc void @eth_hw_addr_random(ptr noundef nonnull %5)
  br label %209

209:                                              ; preds = %208, %202
  tail call fastcc void @reset_umac(ptr noundef %9)
  %210 = tail call i32 @bcmgenet_mii_init(ptr noundef nonnull %5) #20
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %245

212:                                              ; preds = %209
  %213 = load ptr, ptr %55, align 8
  %214 = load ptr, ptr %100, align 8
  %215 = load i8, ptr %214, align 4
  %216 = zext i8 %215 to i32
  %217 = add nuw nsw i32 %216, 1
  %218 = tail call i32 @netif_set_real_num_tx_queues(ptr noundef %213, i32 noundef %217) #20
  %219 = load ptr, ptr %55, align 8
  %220 = load ptr, ptr %100, align 8
  %221 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %220, i32 0, i32 2
  %222 = load i8, ptr %221, align 2
  %223 = zext i8 %222 to i32
  %224 = add nuw nsw i32 %223, 1
  %225 = tail call i32 @netif_set_real_num_rx_queues(ptr noundef %219, i32 noundef %224) #20
  %226 = load ptr, ptr %100, align 8
  %227 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %226, i32 0, i32 2
  %228 = load i8, ptr %227, align 2
  %229 = icmp eq i8 %228, 0
  br i1 %229, label %239, label %230

230:                                              ; preds = %230, %212
  %231 = phi i32 [ %233, %230 ], [ 0, %212 ]
  %232 = getelementptr %struct.bcmgenet_priv, ptr %9, i32 0, i32 13, i32 %231, i32 14
  store i32 1, ptr %232, align 8
  %233 = add nuw nsw i32 %231, 1
  %234 = load ptr, ptr %100, align 8
  %235 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %234, i32 0, i32 2
  %236 = load i8, ptr %235, align 2
  %237 = zext i8 %236 to i32
  %238 = icmp ult i32 %233, %237
  br i1 %238, label %230, label %239

239:                                              ; preds = %230, %212
  %240 = getelementptr i8, ptr %5, i32 16208
  store i32 1, ptr %240, align 8
  tail call void @netif_carrier_off(ptr noundef %5) #20
  %241 = load ptr, ptr %77, align 4
  tail call void @clk_disable(ptr noundef %241) #20
  tail call void @clk_unprepare(ptr noundef %241) #20
  %242 = tail call i32 @register_netdev(ptr noundef %5) #20
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %250, label %244

244:                                              ; preds = %239
  tail call void @bcmgenet_mii_exit(ptr noundef %5) #20
  br label %248

245:                                              ; preds = %209, %180, %172, %155
  %246 = phi i32 [ %173, %172 ], [ %181, %180 ], [ %210, %209 ], [ %156, %155 ]
  %247 = load ptr, ptr %77, align 4
  tail call void @clk_disable(ptr noundef %247) #20
  tail call void @clk_unprepare(ptr noundef %247) #20
  br label %248

248:                                              ; preds = %245, %244, %87, %81, %79, %22, %13, %8
  %249 = phi i32 [ %23, %22 ], [ %80, %79 ], [ %246, %245 ], [ %242, %244 ], [ %10, %8 ], [ %14, %13 ], [ %85, %87 ], [ %82, %81 ]
  tail call void @free_netdev(ptr noundef %5) #20
  br label %250

250:                                              ; preds = %248, %239, %7
  %251 = phi i32 [ %249, %248 ], [ -12, %7 ], [ 0, %239 ]
  ret i32 %251
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcmgenet_remove(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  store ptr null, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 1416
  %5 = load ptr, ptr %4, align 8
  tail call void @unregister_netdev(ptr noundef %5) #20
  %6 = load ptr, ptr %4, align 8
  tail call void @bcmgenet_mii_exit(ptr noundef %6) #20
  %7 = load ptr, ptr %4, align 8
  tail call void @free_netdev(ptr noundef %7) #20
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcmgenet_shutdown(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  store ptr null, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 1416
  %5 = load ptr, ptr %4, align 8
  tail call void @unregister_netdev(ptr noundef %5) #20
  %6 = load ptr, ptr %4, align 8
  tail call void @bcmgenet_mii_exit(ptr noundef %6) #20
  %7 = load ptr, ptr %4, align 8
  tail call void @free_netdev(ptr noundef %7) #20
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_optional(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @bcmgenet_wol_isr(i32 noundef %0, ptr nocapture noundef readnone %1) #6 {
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_wakeup_capable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dma_set_mask_and_coherent(ptr noundef %0, i64 noundef %1) unnamed_addr #7 {
  %3 = tail call i32 @dma_set_mask(ptr noundef %0, i64 noundef %1) #20
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call i32 @dma_set_coherent_mask(ptr noundef %0, i64 noundef %1) #20
  br label %7

7:                                                ; preds = %5, %2
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcmgenet_irq_task(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 32
  tail call void @_raw_spin_lock_irq(ptr noundef %2) #20
  %3 = getelementptr i8, ptr %0, i32 36
  %4 = load i32, ptr %3, align 4
  store i32 0, ptr %3, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !11
  %5 = load i16, ptr %2, align 4
  %6 = add i16 %5, 1
  store i16 %6, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #20, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #20, !srcloc !13
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #20, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !15
  %7 = and i32 %4, 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %24, label %9

9:                                                ; preds = %1
  %10 = getelementptr i8, ptr %0, i32 -14880
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 120
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.phy_device, ptr %13, i32 0, i32 4
  %15 = load i16, ptr %14, align 8
  %16 = and i16 %15, 4096
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %9
  %19 = tail call i32 @phy_init_hw(ptr noundef %13) #20
  %20 = load ptr, ptr %10, align 8
  %21 = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 120
  %22 = load ptr, ptr %21, align 8
  %23 = tail call i32 @__genphy_config_aneg(ptr noundef %22, i1 noundef zeroext false) #20
  br label %24

24:                                               ; preds = %18, %9, %1
  %25 = and i32 %4, 48
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %24
  %28 = getelementptr i8, ptr %0, i32 -14880
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds %struct.net_device, ptr %29, i32 0, i32 120
  %31 = load ptr, ptr %30, align 8
  tail call void @phy_mac_interrupt(ptr noundef %31) #20
  br label %32

32:                                               ; preds = %27, %24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_get_phy_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @bcmgenet_power_up(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.bcmgenet_priv, ptr %0, i32 0, i32 14
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %4, i32 0, i32 15
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 2
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %37, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr %0, align 8
  %11 = getelementptr i8, ptr %10, i32 128
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #20, !srcloc !10
  switch i32 %1, label %37 [
    i32 1, label %13
    i32 2, label %36
  ]

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.bcmgenet_priv, ptr %0, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 5
  br i1 %16, label %17, label %27

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.bcmgenet_priv, ptr %0, i32 0, i32 27
  %19 = load i8, ptr %18, align 4, !range !9
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = and i32 %12, -2036100
  %23 = or i32 %22, 256
  %24 = load ptr, ptr %0, align 8
  %25 = getelementptr i8, ptr %24, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #20, !srcloc !16
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748000) #20
  br label %30

27:                                               ; preds = %17, %13
  %28 = and i32 %12, -4112
  %29 = or i32 %28, 8
  br label %30

30:                                               ; preds = %27, %21
  %31 = phi i32 [ %29, %27 ], [ %22, %21 ]
  %32 = load ptr, ptr %0, align 8
  %33 = getelementptr i8, ptr %32, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %31) #20, !srcloc !16
  %34 = getelementptr inbounds %struct.bcmgenet_priv, ptr %0, i32 0, i32 2
  %35 = load ptr, ptr %34, align 8
  tail call void @bcmgenet_phy_power_set(ptr noundef %35, i1 noundef zeroext true) #20
  br label %37

36:                                               ; preds = %9
  tail call void @bcmgenet_wol_power_up_cfg(ptr noundef %0, i32 noundef 2) #20
  br label %37

37:                                               ; preds = %36, %30, %9, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_get_ethdev_address(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @eth_hw_addr_random(ptr noundef %0) unnamed_addr #7 {
  %2 = alloca [6 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %2, i8 0, i32 6, i1 false), !annotation !17
  call void @get_random_bytes(ptr noundef nonnull %2, i32 noundef 6) #20
  %3 = load i8, ptr %2, align 1
  %4 = and i8 %3, -4
  %5 = or i8 %4, 2
  store i8 %5, ptr %2, align 1
  call void @dev_addr_mod(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2, i32 noundef 6) #20
  %6 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 50
  store i8 1, ptr %6, align 8
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @reset_umac(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.bcmgenet_priv, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 1
  %5 = load ptr, ptr %0, align 8
  br i1 %4, label %6, label %8

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %5, i32 772
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 0) #20, !srcloc !16
  br label %10

8:                                                ; preds = %1
  %9 = getelementptr i8, ptr %5, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 0) #20, !srcloc !16
  br label %10

10:                                               ; preds = %8, %6
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 2147480) #20
  %12 = load ptr, ptr %0, align 8
  %13 = getelementptr i8, ptr %12, i32 2056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 8192) #20, !srcloc !16
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 429496) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcmgenet_mii_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_set_real_num_tx_queues(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_set_real_num_rx_queues(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcmgenet_mii_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcmgenet_get_drvinfo(ptr nocapture noundef readnone %0, ptr noundef %1) #9 {
  %3 = getelementptr inbounds %struct.ethtool_drvinfo, ptr %1, i32 0, i32 1
  %4 = tail call i32 @strlcpy(ptr noundef %3, ptr noundef nonnull @.str, i32 noundef 32) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcmgenet_get_wol(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcmgenet_set_wol(ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @bcmgenet_get_msglevel(ptr nocapture noundef readonly %0) #10 {
  %2 = getelementptr i8, ptr %0, i32 16344
  %3 = load i32, ptr %2, align 8
  ret i32 %3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @bcmgenet_set_msglevel(ptr nocapture noundef writeonly %0, i32 noundef %1) #11 {
  %3 = getelementptr i8, ptr %0, i32 16344
  store i32 %1, ptr %3, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_nway_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcmgenet_get_coalesce(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) #2 {
  %5 = getelementptr i8, ptr %0, i32 1408
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr i8, ptr %0, i32 16232
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %8, i32 0, i32 13
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %8, i32 0, i32 14
  %12 = load i32, ptr %11, align 4
  %13 = shl i32 %12, 10
  %14 = add i32 %13, %10
  %15 = getelementptr i8, ptr %6, i32 %14
  %16 = getelementptr i8, ptr %15, i32 1024
  %17 = load ptr, ptr @genet_dma_ring_regs, align 4
  %18 = getelementptr i8, ptr %17, i32 9
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i32
  %21 = getelementptr i8, ptr %16, i32 %20
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #20, !srcloc !10
  %23 = getelementptr inbounds %struct.ethtool_coalesce, ptr %1, i32 0, i32 6
  store i32 %22, ptr %23, align 4
  %24 = load ptr, ptr %5, align 8
  %25 = load ptr, ptr %7, align 8
  %26 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %25, i32 0, i32 12
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %25, i32 0, i32 14
  %29 = load i32, ptr %28, align 4
  %30 = shl i32 %29, 10
  %31 = add i32 %30, %27
  %32 = getelementptr i8, ptr %24, i32 %31
  %33 = getelementptr i8, ptr %32, i32 1024
  %34 = load ptr, ptr @genet_dma_ring_regs, align 4
  %35 = getelementptr i8, ptr %34, i32 9
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  %38 = getelementptr i8, ptr %33, i32 %37
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #20, !srcloc !10
  %40 = getelementptr inbounds %struct.ethtool_coalesce, ptr %1, i32 0, i32 2
  store i32 %39, ptr %40, align 4
  %41 = load ptr, ptr %5, align 8
  %42 = load ptr, ptr %7, align 8
  %43 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %42, i32 0, i32 12
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %42, i32 0, i32 14
  %46 = load i32, ptr %45, align 4
  %47 = shl i32 %46, 10
  %48 = add i32 %47, %44
  %49 = getelementptr i8, ptr %41, i32 %48
  %50 = getelementptr i8, ptr %49, i32 1088
  %51 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %52 = getelementptr i8, ptr %51, i32 32
  %53 = load i8, ptr %52, align 1
  %54 = zext i8 %53 to i32
  %55 = getelementptr i8, ptr %50, i32 %54
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #20, !srcloc !10
  %57 = shl i32 %56, 13
  %58 = udiv i32 %57, 1000
  %59 = getelementptr inbounds %struct.ethtool_coalesce, ptr %1, i32 0, i32 1
  store i32 %58, ptr %59, align 4
  %60 = load ptr, ptr %7, align 8
  %61 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %60, i32 0, i32 2
  %62 = load i8, ptr %61, align 2
  %63 = icmp eq i8 %62, 0
  %64 = getelementptr inbounds %struct.ethtool_coalesce, ptr %1, i32 0, i32 10
  %65 = load i32, ptr %64, align 4
  br i1 %63, label %79, label %66

66:                                               ; preds = %66, %4
  %67 = phi i32 [ %72, %66 ], [ %65, %4 ]
  %68 = phi i32 [ %73, %66 ], [ 0, %4 ]
  %69 = getelementptr %struct.bcmgenet_priv, ptr %5, i32 0, i32 13, i32 %68, i32 13
  %70 = load i16, ptr %69, align 8
  %71 = zext i16 %70 to i32
  %72 = or i32 %67, %71
  store i32 %72, ptr %64, align 4
  %73 = add nuw nsw i32 %68, 1
  %74 = load ptr, ptr %7, align 8
  %75 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %74, i32 0, i32 2
  %76 = load i8, ptr %75, align 2
  %77 = zext i8 %76 to i32
  %78 = icmp ult i32 %73, %77
  br i1 %78, label %66, label %79

79:                                               ; preds = %66, %4
  %80 = phi i32 [ %65, %4 ], [ %72, %66 ]
  %81 = getelementptr i8, ptr %0, i32 16088
  %82 = load i16, ptr %81, align 8
  %83 = zext i16 %82 to i32
  %84 = getelementptr inbounds %struct.ethtool_coalesce, ptr %1, i32 0, i32 10
  %85 = or i32 %80, %83
  store i32 %85, ptr %84, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcmgenet_set_coalesce(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) #2 {
  %5 = getelementptr i8, ptr %0, i32 1408
  %6 = getelementptr inbounds %struct.ethtool_coalesce, ptr %1, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, -512
  %9 = icmp ult i32 %8, -511
  br i1 %9, label %103, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.ethtool_coalesce, ptr %1, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = icmp ugt i32 %12, 511
  br i1 %13, label %103, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.ethtool_coalesce, ptr %1, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = icmp ugt i32 %16, 524281
  br i1 %17, label %103, label %18

18:                                               ; preds = %14
  %19 = icmp eq i32 %16, 0
  %20 = icmp eq i32 %12, 0
  %21 = select i1 %19, i1 %20, i1 false
  br i1 %21, label %103, label %22

22:                                               ; preds = %18
  %23 = getelementptr i8, ptr %0, i32 16232
  %24 = load ptr, ptr %23, align 8
  %25 = load i8, ptr %24, align 4
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %71, label %27

27:                                               ; preds = %22
  %28 = load ptr, ptr %5, align 8
  %29 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %24, i32 0, i32 13
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %24, i32 0, i32 14
  %32 = load i32, ptr %31, align 4
  %33 = shl i32 %32, 10
  %34 = add i32 %33, %30
  %35 = getelementptr i8, ptr %28, i32 %34
  %36 = load ptr, ptr @genet_dma_ring_regs, align 4
  %37 = getelementptr i8, ptr %36, i32 9
  %38 = load i8, ptr %37, align 1
  %39 = zext i8 %38 to i32
  %40 = getelementptr i8, ptr %35, i32 %39
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %7) #20, !srcloc !16
  %41 = load ptr, ptr %23, align 8
  %42 = load i8, ptr %41, align 4
  %43 = icmp ugt i8 %42, 1
  br i1 %43, label %44, label %68

44:                                               ; preds = %44, %27
  %45 = phi ptr [ %64, %44 ], [ %41, %27 ]
  %46 = phi i32 [ %63, %44 ], [ 1, %27 ]
  %47 = load i32, ptr %6, align 4
  %48 = load ptr, ptr %5, align 8
  %49 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %45, i32 0, i32 13
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %45, i32 0, i32 14
  %52 = load i32, ptr %51, align 4
  %53 = shl i32 %52, 10
  %54 = add i32 %53, %50
  %55 = getelementptr i8, ptr %48, i32 %54
  %56 = shl i32 %46, 6
  %57 = getelementptr i8, ptr %55, i32 %56
  %58 = load ptr, ptr @genet_dma_ring_regs, align 4
  %59 = getelementptr i8, ptr %58, i32 9
  %60 = load i8, ptr %59, align 1
  %61 = zext i8 %60 to i32
  %62 = getelementptr i8, ptr %57, i32 %61
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 %47) #20, !srcloc !16
  %63 = add nuw nsw i32 %46, 1
  %64 = load ptr, ptr %23, align 8
  %65 = load i8, ptr %64, align 4
  %66 = zext i8 %65 to i32
  %67 = icmp ult i32 %63, %66
  br i1 %67, label %44, label %68

68:                                               ; preds = %44, %27
  %69 = phi ptr [ %41, %27 ], [ %64, %44 ]
  %70 = load i32, ptr %6, align 4
  br label %71

71:                                               ; preds = %68, %22
  %72 = phi i32 [ %7, %22 ], [ %70, %68 ]
  %73 = phi ptr [ %24, %22 ], [ %69, %68 ]
  %74 = load ptr, ptr %5, align 8
  %75 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %73, i32 0, i32 13
  %76 = load i32, ptr %75, align 4
  %77 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %73, i32 0, i32 14
  %78 = load i32, ptr %77, align 4
  %79 = shl i32 %78, 10
  %80 = add i32 %79, %76
  %81 = getelementptr i8, ptr %74, i32 %80
  %82 = getelementptr i8, ptr %81, i32 1024
  %83 = load ptr, ptr @genet_dma_ring_regs, align 4
  %84 = getelementptr i8, ptr %83, i32 9
  %85 = load i8, ptr %84, align 1
  %86 = zext i8 %85 to i32
  %87 = getelementptr i8, ptr %82, i32 %86
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 %72) #20, !srcloc !16
  %88 = load ptr, ptr %23, align 8
  %89 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %88, i32 0, i32 2
  %90 = load i8, ptr %89, align 2
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %101, label %92

92:                                               ; preds = %92, %71
  %93 = phi i32 [ %95, %92 ], [ 0, %71 ]
  %94 = getelementptr %struct.bcmgenet_priv, ptr %5, i32 0, i32 13, i32 %93
  tail call fastcc void @bcmgenet_set_ring_rx_coalesce(ptr noundef %94, ptr noundef %1)
  %95 = add nuw nsw i32 %93, 1
  %96 = load ptr, ptr %23, align 8
  %97 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %96, i32 0, i32 2
  %98 = load i8, ptr %97, align 2
  %99 = zext i8 %98 to i32
  %100 = icmp ult i32 %95, %99
  br i1 %100, label %92, label %101

101:                                              ; preds = %92, %71
  %102 = getelementptr i8, ptr %0, i32 15824
  tail call fastcc void @bcmgenet_set_ring_rx_coalesce(ptr noundef %102, ptr noundef %1)
  br label %103

103:                                              ; preds = %101, %18, %14, %10, %4
  %104 = phi i32 [ 0, %101 ], [ -22, %14 ], [ -22, %10 ], [ -22, %4 ], [ -22, %18 ]
  ret i32 %104
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcmgenet_get_pauseparam(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 16236
  %4 = load i8, ptr %3, align 4
  %5 = and i8 %4, 1
  %6 = zext i8 %5 to i32
  %7 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %1, i32 0, i32 1
  store i32 %6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %2
  %13 = getelementptr i8, ptr %0, i32 1408
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr i8, ptr %14, i32 2056
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #20, !srcloc !10
  %17 = lshr i32 %16, 28
  %18 = and i32 %17, 1
  %19 = xor i32 %18, 1
  %20 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %1, i32 0, i32 3
  store i32 %19, ptr %20, align 4
  %21 = lshr i32 %16, 8
  %22 = and i32 %21, 1
  %23 = xor i32 %22, 1
  br label %34

24:                                               ; preds = %2
  %25 = load i8, ptr %3, align 4
  %26 = lshr i8 %25, 1
  %27 = and i8 %26, 1
  %28 = zext i8 %27 to i32
  %29 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %1, i32 0, i32 3
  store i32 %28, ptr %29, align 4
  %30 = load i8, ptr %3, align 4
  %31 = lshr i8 %30, 2
  %32 = and i8 %31, 1
  %33 = zext i8 %32 to i32
  br label %34

34:                                               ; preds = %24, %12
  %35 = phi i32 [ %23, %12 ], [ %33, %24 ]
  %36 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %1, i32 0, i32 2
  store i32 %35, ptr %36, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcmgenet_set_pauseparam(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %31, label %6

6:                                                ; preds = %2
  %7 = tail call zeroext i1 @phy_validate_pause(ptr noundef nonnull %4, ptr noundef %1) #20
  br i1 %7, label %8, label %31

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %1, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp ne i32 %10, 0
  %12 = getelementptr i8, ptr %0, i32 16236
  %13 = zext i1 %11 to i8
  %14 = load i8, ptr %12, align 4
  %15 = and i8 %14, -2
  %16 = or i8 %15, %13
  store i8 %16, ptr %12, align 4
  %17 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %1, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, i8 0, i8 2
  %21 = and i8 %16, -3
  %22 = or i8 %20, %21
  store i8 %22, ptr %12, align 4
  %23 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %1, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, i8 0, i8 4
  %27 = and i8 %22, -5
  %28 = or i8 %27, %26
  store i8 %28, ptr %12, align 4
  %29 = xor i1 %25, true
  %30 = xor i1 %19, true
  tail call void @bcmgenet_phy_pause_set(ptr noundef %0, i1 noundef zeroext %29, i1 noundef zeroext %30) #20
  br label %31

31:                                               ; preds = %8, %6, %2
  %32 = phi i32 [ 0, %8 ], [ -19, %2 ], [ -22, %6 ]
  ret i32 %32
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcmgenet_get_strings(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #12 {
  %4 = icmp eq i32 %1, 1
  br i1 %4, label %5, label %12

5:                                                ; preds = %5, %3
  %6 = phi i32 [ %10, %5 ], [ 0, %3 ]
  %7 = shl nuw nsw i32 %6, 5
  %8 = getelementptr i8, ptr %2, i32 %7
  %9 = getelementptr [109 x %struct.bcmgenet_stats], ptr @bcmgenet_gstrings_stats, i32 0, i32 %6
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(32) %8, ptr noundef align 4 dereferenceable(32) %9, i32 32, i1 false)
  %10 = add nuw nsw i32 %6, 1
  %11 = icmp eq i32 %10, 109
  br i1 %11, label %12, label %5

12:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcmgenet_get_ethtool_stats(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 1408
  %5 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %90, label %9

9:                                                ; preds = %3
  %10 = getelementptr i8, ptr %0, i32 1412
  br label %11

11:                                               ; preds = %86, %9
  %12 = phi i32 [ 0, %9 ], [ %87, %86 ]
  %13 = phi i32 [ 0, %9 ], [ %88, %86 ]
  %14 = getelementptr [109 x %struct.bcmgenet_stats], ptr @bcmgenet_gstrings_stats, i32 0, i32 %13, i32 3
  %15 = load i32, ptr %14, align 4
  switch i32 %15, label %78 [
    i32 -1, label %86
    i32 4, label %86
    i32 2, label %16
    i32 1, label %17
    i32 0, label %19
    i32 3, label %27
  ]

16:                                               ; preds = %11
  br label %17

17:                                               ; preds = %16, %11
  %18 = phi i32 [ 12, %11 ], [ 24, %16 ]
  br label %19

19:                                               ; preds = %17, %11
  %20 = phi i32 [ %15, %11 ], [ %18, %17 ]
  %21 = add i32 %12, 1024
  %22 = add i32 %21, %20
  %23 = load ptr, ptr %4, align 8
  %24 = getelementptr i8, ptr %23, i32 2048
  %25 = getelementptr i8, ptr %24, i32 %22
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #20, !srcloc !10
  br label %78

27:                                               ; preds = %11
  %28 = load i32, ptr %10, align 4
  %29 = icmp eq i32 %28, 1
  %30 = getelementptr [109 x %struct.bcmgenet_stats], ptr @bcmgenet_gstrings_stats, i32 0, i32 %13, i32 4
  %31 = load i16, ptr %30, align 4
  %32 = zext i16 %31 to i32
  br i1 %29, label %33, label %43

33:                                               ; preds = %27
  %34 = load ptr, ptr %4, align 8
  %35 = getelementptr i8, ptr %34, i32 2048
  %36 = getelementptr i8, ptr %35, i32 %32
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #20, !srcloc !10
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %78

39:                                               ; preds = %33
  %40 = load ptr, ptr %4, align 8
  %41 = getelementptr i8, ptr %40, i32 2048
  %42 = getelementptr i8, ptr %41, i32 %32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 0) #20, !srcloc !16
  br label %78

43:                                               ; preds = %27
  switch i16 %31, label %68 [
    i16 1564, label %44
    i16 1588, label %56
  ]

44:                                               ; preds = %43
  %45 = icmp eq i32 %28, 2
  %46 = select i1 %45, i32 128, i32 148
  %47 = load ptr, ptr %4, align 8
  %48 = getelementptr i8, ptr %47, i32 768
  %49 = getelementptr i8, ptr %48, i32 %46
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #20, !srcloc !10
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %78

52:                                               ; preds = %44
  %53 = load ptr, ptr %4, align 8
  %54 = getelementptr i8, ptr %53, i32 768
  %55 = getelementptr i8, ptr %54, i32 %46
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 0) #20, !srcloc !16
  br label %78

56:                                               ; preds = %43
  %57 = icmp eq i32 %28, 2
  %58 = select i1 %57, i32 132, i32 152
  %59 = load ptr, ptr %4, align 8
  %60 = getelementptr i8, ptr %59, i32 768
  %61 = getelementptr i8, ptr %60, i32 %58
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #20, !srcloc !10
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %64, label %78

64:                                               ; preds = %56
  %65 = load ptr, ptr %4, align 8
  %66 = getelementptr i8, ptr %65, i32 768
  %67 = getelementptr i8, ptr %66, i32 %58
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 0) #20, !srcloc !16
  br label %78

68:                                               ; preds = %43
  %69 = load ptr, ptr %4, align 8
  %70 = getelementptr i8, ptr %69, i32 2048
  %71 = getelementptr i8, ptr %70, i32 %32
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %71) #20, !srcloc !10
  %73 = icmp eq i32 %72, -1
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load ptr, ptr %4, align 8
  %76 = getelementptr i8, ptr %75, i32 2048
  %77 = getelementptr i8, ptr %76, i32 %32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 0) #20, !srcloc !16
  br label %78

78:                                               ; preds = %74, %68, %64, %56, %52, %44, %39, %33, %19, %11
  %79 = phi i32 [ 0, %11 ], [ -1, %39 ], [ %37, %33 ], [ %26, %19 ], [ -1, %74 ], [ %72, %68 ], [ -1, %64 ], [ %62, %56 ], [ -1, %52 ], [ %50, %44 ]
  %80 = getelementptr [109 x %struct.bcmgenet_stats], ptr @bcmgenet_gstrings_stats, i32 0, i32 %13, i32 1
  %81 = load i32, ptr %80, align 4
  %82 = add i32 %81, %12
  %83 = getelementptr [109 x %struct.bcmgenet_stats], ptr @bcmgenet_gstrings_stats, i32 0, i32 %13, i32 2
  %84 = load i32, ptr %83, align 4
  %85 = getelementptr i8, ptr %4, i32 %84
  store i32 %79, ptr %85, align 4
  br label %86

86:                                               ; preds = %78, %11, %11
  %87 = phi i32 [ %82, %78 ], [ %12, %11 ], [ %12, %11 ]
  %88 = add nuw nsw i32 %13, 1
  %89 = icmp eq i32 %88, 109
  br i1 %89, label %90, label %11

90:                                               ; preds = %86, %3
  %91 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 16
  %92 = load ptr, ptr %91, align 8
  %93 = getelementptr inbounds %struct.net_device_ops, ptr %92, i32 0, i32 23
  %94 = load ptr, ptr %93, align 4
  %95 = tail call ptr %94(ptr noundef %0) #20
  %96 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 36
  br label %97

97:                                               ; preds = %97, %90
  %98 = phi i32 [ 0, %90 ], [ %107, %97 ]
  %99 = icmp ult i32 %98, 9
  %100 = select i1 %99, ptr %96, ptr %4
  %101 = getelementptr [109 x %struct.bcmgenet_stats], ptr @bcmgenet_gstrings_stats, i32 0, i32 %98, i32 2
  %102 = load i32, ptr %101, align 4
  %103 = getelementptr i8, ptr %100, i32 %102
  %104 = load i32, ptr %103, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr i64, ptr %2, i32 %98
  store i64 %105, ptr %106, align 8
  %107 = add nuw nsw i32 %98, 1
  %108 = icmp eq i32 %107, 109
  br i1 %108, label %109, label %97

109:                                              ; preds = %97
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcmgenet_begin(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 16348
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @clk_prepare(ptr noundef %3) #20
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = tail call i32 @clk_enable(ptr noundef %3) #20
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @clk_unprepare(ptr noundef %3) #20
  br label %10

10:                                               ; preds = %9, %6, %1
  %11 = phi i32 [ %4, %1 ], [ %7, %9 ], [ 0, %6 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcmgenet_complete(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 16348
  %3 = load ptr, ptr %2, align 4
  tail call void @clk_disable(ptr noundef %3) #20
  tail call void @clk_unprepare(ptr noundef %3) #20
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @bcmgenet_get_sset_count(ptr nocapture noundef readnone %0, i32 noundef %1) #6 {
  %3 = icmp eq i32 %1, 1
  %4 = select i1 %3, i32 109, i32 -95
  ret i32 %4
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcmgenet_get_rxnfc(ptr noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2) #13 {
  %4 = getelementptr i8, ptr %0, i32 1408
  %5 = load i32, ptr %1, align 8
  switch i32 %5, label %61 [
    i32 45, label %6
    i32 46, label %15
    i32 47, label %26
    i32 48, label %37
  ]

6:                                                ; preds = %3
  %7 = getelementptr i8, ptr %0, i32 16232
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %8, i32 0, i32 2
  %10 = load i8, ptr %9, align 2
  %11 = icmp eq i8 %10, 0
  %12 = select i1 %11, i8 1, i8 %10
  %13 = zext i8 %12 to i64
  %14 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %1, i32 0, i32 2
  store i64 %13, ptr %14, align 8
  br label %61

15:                                               ; preds = %3
  %16 = getelementptr i8, ptr %0, i32 9288
  br label %17

17:                                               ; preds = %17, %15
  %18 = phi ptr [ %16, %15 ], [ %20, %17 ]
  %19 = phi i32 [ 0, %15 ], [ %22, %17 ]
  %20 = load ptr, ptr %18, align 4
  %21 = icmp eq ptr %20, %16
  %22 = add i32 %19, 1
  br i1 %21, label %23, label %17

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %1, i32 0, i32 4
  store i32 %19, ptr %24, align 8
  %25 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %1, i32 0, i32 2
  store i64 16, ptr %25, align 8
  br label %61

26:                                               ; preds = %3
  %27 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %1, i32 0, i32 3, i32 6
  %28 = load i32, ptr %27, align 8
  %29 = icmp ugt i32 %28, 15
  br i1 %29, label %61, label %30

30:                                               ; preds = %26
  %31 = getelementptr %struct.bcmgenet_priv, ptr %4, i32 0, i32 11, i32 %28, i32 2
  %32 = load i32, ptr %31, align 8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %61, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %1, i32 0, i32 3
  %36 = getelementptr %struct.bcmgenet_priv, ptr %4, i32 0, i32 11, i32 %28, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(168) %35, ptr noundef align 8 dereferenceable(168) %36, i32 168, i1 false) #20
  br label %61

37:                                               ; preds = %3
  %38 = getelementptr i8, ptr %0, i32 9288
  %39 = load ptr, ptr %38, align 8
  %40 = icmp eq ptr %39, %38
  br i1 %40, label %57, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %1, i32 0, i32 4
  br label %43

43:                                               ; preds = %53, %41
  %44 = phi ptr [ %39, %41 ], [ %55, %53 ]
  %45 = phi i32 [ 0, %41 ], [ %54, %53 ]
  %46 = load i32, ptr %42, align 8
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.bcmgenet_rxnfc_rule, ptr %44, i32 0, i32 1, i32 6
  %50 = load i32, ptr %49, align 8
  %51 = add nuw i32 %45, 1
  %52 = getelementptr i32, ptr %2, i32 %45
  store i32 %50, ptr %52, align 4
  br label %53

53:                                               ; preds = %48, %43
  %54 = phi i32 [ %51, %48 ], [ %45, %43 ]
  %55 = load ptr, ptr %44, align 8
  %56 = icmp eq ptr %55, %38
  br i1 %56, label %57, label %43

57:                                               ; preds = %53, %37
  %58 = phi i32 [ 0, %37 ], [ %54, %53 ]
  %59 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %1, i32 0, i32 4
  store i32 %58, ptr %59, align 8
  %60 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %1, i32 0, i32 2
  store i64 16, ptr %60, align 8
  br label %61

61:                                               ; preds = %57, %34, %30, %26, %23, %6, %3
  %62 = phi i32 [ 0, %57 ], [ 0, %23 ], [ 0, %6 ], [ -95, %3 ], [ -22, %26 ], [ 0, %34 ], [ -2, %30 ]
  ret i32 %62
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcmgenet_set_rxnfc(ptr noundef %0, ptr noundef readonly %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 1408
  %4 = load i32, ptr %1, align 8
  switch i32 %4, label %335 [
    i32 50, label %5
    i32 49, label %250
  ]

5:                                                ; preds = %2
  %6 = getelementptr i8, ptr %0, i32 16232
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %7, i32 0, i32 7
  %9 = load i8, ptr %8, align 1
  %10 = icmp sgt i8 %9, -1
  br i1 %10, label %11, label %12

11:                                               ; preds = %5
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.8) #21
  br label %338

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %1, i32 0, i32 3
  %14 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %1, i32 0, i32 3, i32 5
  %15 = load i64, ptr %14, align 8
  %16 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %7, i32 0, i32 2
  %17 = load i8, ptr %16, align 2
  %18 = zext i8 %17 to i64
  %19 = icmp ule i64 %15, %18
  %20 = icmp eq i64 %15, -2
  %21 = or i1 %20, %19
  br i1 %21, label %23, label %22

22:                                               ; preds = %12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.9, i64 noundef %15) #21
  br label %338

23:                                               ; preds = %12
  %24 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %1, i32 0, i32 3, i32 6
  %25 = load i32, ptr %24, align 8
  %26 = icmp ugt i32 %25, 15
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef %25) #21
  br label %338

28:                                               ; preds = %23
  %29 = load i32, ptr %13, align 8
  %30 = and i32 %29, 1073741823
  switch i32 %30, label %120 [
    i32 13, label %31
    i32 18, label %77
  ]

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %1, i32 0, i32 3, i32 3
  %33 = load i8, ptr %32, align 1
  switch i8 %33, label %76 [
    i8 0, label %34
    i8 15, label %34
    i8 -16, label %34
    i8 -1, label %34
  ]

34:                                               ; preds = %31, %31, %31, %31
  %35 = getelementptr i8, ptr %32, i32 1
  %36 = load i8, ptr %35, align 1
  switch i8 %36, label %76 [
    i8 0, label %37
    i8 15, label %37
    i8 -16, label %37
    i8 -1, label %37
  ]

37:                                               ; preds = %34, %34, %34, %34
  %38 = getelementptr i8, ptr %32, i32 2
  %39 = load i8, ptr %38, align 1
  switch i8 %39, label %76 [
    i8 0, label %40
    i8 15, label %40
    i8 -16, label %40
    i8 -1, label %40
  ]

40:                                               ; preds = %37, %37, %37, %37
  %41 = getelementptr i8, ptr %32, i32 3
  %42 = load i8, ptr %41, align 1
  switch i8 %42, label %76 [
    i8 0, label %43
    i8 15, label %43
    i8 -16, label %43
    i8 -1, label %43
  ]

43:                                               ; preds = %40, %40, %40, %40
  %44 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %1, i32 0, i32 3, i32 3, i32 0, i32 0, i32 1
  %45 = load i8, ptr %44, align 1
  switch i8 %45, label %76 [
    i8 0, label %46
    i8 15, label %46
    i8 -16, label %46
    i8 -1, label %46
  ]

46:                                               ; preds = %43, %43, %43, %43
  %47 = getelementptr i8, ptr %44, i32 1
  %48 = load i8, ptr %47, align 1
  switch i8 %48, label %76 [
    i8 0, label %49
    i8 15, label %49
    i8 -16, label %49
    i8 -1, label %49
  ]

49:                                               ; preds = %46, %46, %46, %46
  %50 = getelementptr i8, ptr %44, i32 2
  %51 = load i8, ptr %50, align 1
  switch i8 %51, label %76 [
    i8 0, label %52
    i8 15, label %52
    i8 -16, label %52
    i8 -1, label %52
  ]

52:                                               ; preds = %49, %49, %49, %49
  %53 = getelementptr i8, ptr %44, i32 3
  %54 = load i8, ptr %53, align 1
  switch i8 %54, label %76 [
    i8 0, label %55
    i8 15, label %55
    i8 -16, label %55
    i8 -1, label %55
  ]

55:                                               ; preds = %52, %52, %52, %52
  %56 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %1, i32 0, i32 3, i32 3, i32 0, i32 0, i32 2
  %57 = load i8, ptr %56, align 1
  switch i8 %57, label %76 [
    i8 0, label %58
    i8 15, label %58
    i8 -16, label %58
    i8 -1, label %58
  ]

58:                                               ; preds = %55, %55, %55, %55
  %59 = getelementptr i8, ptr %56, i32 1
  %60 = load i8, ptr %59, align 1
  switch i8 %60, label %76 [
    i8 0, label %61
    i8 15, label %61
    i8 -16, label %61
    i8 -1, label %61
  ]

61:                                               ; preds = %58, %58, %58, %58
  %62 = getelementptr i8, ptr %56, i32 2
  %63 = load i8, ptr %62, align 1
  switch i8 %63, label %76 [
    i8 0, label %64
    i8 15, label %64
    i8 -16, label %64
    i8 -1, label %64
  ]

64:                                               ; preds = %61, %61, %61, %61
  %65 = getelementptr i8, ptr %56, i32 3
  %66 = load i8, ptr %65, align 1
  switch i8 %66, label %76 [
    i8 0, label %67
    i8 15, label %67
    i8 -16, label %67
    i8 -1, label %67
  ]

67:                                               ; preds = %64, %64, %64, %64
  %68 = getelementptr inbounds %struct.ethtool_usrip4_spec, ptr %32, i32 0, i32 5
  %69 = load i8, ptr %68, align 1
  switch i8 %69, label %76 [
    i8 0, label %70
    i8 15, label %70
    i8 -16, label %70
    i8 -1, label %70
  ]

70:                                               ; preds = %67, %67, %67, %67
  %71 = getelementptr inbounds %struct.ethtool_usrip4_spec, ptr %32, i32 0, i32 4
  %72 = load i8, ptr %71, align 1
  switch i8 %72, label %76 [
    i8 0, label %73
    i8 15, label %73
    i8 -16, label %73
    i8 -1, label %73
  ]

73:                                               ; preds = %70, %70, %70, %70
  %74 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %1, i32 0, i32 3, i32 3, i32 0, i32 0, i32 3
  %75 = load i8, ptr %74, align 1
  switch i8 %75, label %76 [
    i8 0, label %121
    i8 15, label %121
    i8 -16, label %121
    i8 -1, label %121
  ]

76:                                               ; preds = %73, %70, %67, %64, %61, %58, %55, %52, %49, %46, %43, %40, %37, %34, %31
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.11) #21
  br label %338

77:                                               ; preds = %28
  %78 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %1, i32 0, i32 3, i32 3
  %79 = load i8, ptr %78, align 1
  switch i8 %79, label %119 [
    i8 0, label %80
    i8 15, label %80
    i8 -16, label %80
    i8 -1, label %80
  ]

80:                                               ; preds = %77, %77, %77, %77
  %81 = getelementptr i8, ptr %78, i32 1
  %82 = load i8, ptr %81, align 1
  switch i8 %82, label %119 [
    i8 0, label %83
    i8 15, label %83
    i8 -16, label %83
    i8 -1, label %83
  ]

83:                                               ; preds = %80, %80, %80, %80
  %84 = getelementptr i8, ptr %78, i32 2
  %85 = load i8, ptr %84, align 1
  switch i8 %85, label %119 [
    i8 0, label %86
    i8 15, label %86
    i8 -16, label %86
    i8 -1, label %86
  ]

86:                                               ; preds = %83, %83, %83, %83
  %87 = getelementptr i8, ptr %78, i32 3
  %88 = load i8, ptr %87, align 1
  switch i8 %88, label %119 [
    i8 0, label %89
    i8 15, label %89
    i8 -16, label %89
    i8 -1, label %89
  ]

89:                                               ; preds = %86, %86, %86, %86
  %90 = getelementptr %struct.ethtool_rxnfc, ptr %1, i32 0, i32 3, i32 3, i32 0, i32 0, i32 1
  %91 = load i8, ptr %90, align 1
  switch i8 %91, label %119 [
    i8 0, label %92
    i8 15, label %92
    i8 -16, label %92
    i8 -1, label %92
  ]

92:                                               ; preds = %89, %89, %89, %89
  %93 = getelementptr i8, ptr %90, i32 1
  %94 = load i8, ptr %93, align 1
  switch i8 %94, label %119 [
    i8 0, label %95
    i8 15, label %95
    i8 -16, label %95
    i8 -1, label %95
  ]

95:                                               ; preds = %92, %92, %92, %92
  %96 = getelementptr inbounds %struct.ethhdr, ptr %78, i32 0, i32 1
  %97 = load i8, ptr %96, align 1
  switch i8 %97, label %119 [
    i8 0, label %98
    i8 15, label %98
    i8 -16, label %98
    i8 -1, label %98
  ]

98:                                               ; preds = %95, %95, %95, %95
  %99 = getelementptr %struct.ethhdr, ptr %78, i32 0, i32 1, i32 1
  %100 = load i8, ptr %99, align 1
  switch i8 %100, label %119 [
    i8 0, label %101
    i8 15, label %101
    i8 -16, label %101
    i8 -1, label %101
  ]

101:                                              ; preds = %98, %98, %98, %98
  %102 = getelementptr %struct.ethtool_rxnfc, ptr %1, i32 0, i32 3, i32 3, i32 0, i32 0, i32 2
  %103 = load i8, ptr %102, align 1
  switch i8 %103, label %119 [
    i8 0, label %104
    i8 15, label %104
    i8 -16, label %104
    i8 -1, label %104
  ]

104:                                              ; preds = %101, %101, %101, %101
  %105 = getelementptr i8, ptr %102, i32 1
  %106 = load i8, ptr %105, align 1
  switch i8 %106, label %119 [
    i8 0, label %107
    i8 15, label %107
    i8 -16, label %107
    i8 -1, label %107
  ]

107:                                              ; preds = %104, %104, %104, %104
  %108 = getelementptr i8, ptr %102, i32 2
  %109 = load i8, ptr %108, align 1
  switch i8 %109, label %119 [
    i8 0, label %110
    i8 15, label %110
    i8 -16, label %110
    i8 -1, label %110
  ]

110:                                              ; preds = %107, %107, %107, %107
  %111 = getelementptr i8, ptr %102, i32 3
  %112 = load i8, ptr %111, align 1
  switch i8 %112, label %119 [
    i8 0, label %113
    i8 15, label %113
    i8 -16, label %113
    i8 -1, label %113
  ]

113:                                              ; preds = %110, %110, %110, %110
  %114 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %1, i32 0, i32 3, i32 3, i32 0, i32 0, i32 3
  %115 = load i8, ptr %114, align 1
  switch i8 %115, label %119 [
    i8 0, label %116
    i8 15, label %116
    i8 -16, label %116
    i8 -1, label %116
  ]

116:                                              ; preds = %113, %113, %113, %113
  %117 = getelementptr i8, ptr %114, i32 1
  %118 = load i8, ptr %117, align 1
  switch i8 %118, label %119 [
    i8 0, label %121
    i8 15, label %121
    i8 -16, label %121
    i8 -1, label %121
  ]

119:                                              ; preds = %116, %113, %110, %107, %104, %101, %98, %95, %92, %89, %86, %83, %80, %77
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.11) #21
  br label %338

120:                                              ; preds = %28
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.12, i32 noundef %29) #21
  br label %338

121:                                              ; preds = %116, %116, %116, %116, %73, %73, %73, %73
  %122 = icmp sgt i32 %29, -1
  br i1 %122, label %145, label %123

123:                                              ; preds = %121
  %124 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %1, i32 0, i32 3, i32 4, i32 2
  %125 = load i8, ptr %124, align 1
  switch i8 %125, label %139 [
    i8 0, label %126
    i8 15, label %126
    i8 -16, label %126
    i8 -1, label %126
  ]

126:                                              ; preds = %123, %123, %123, %123
  %127 = getelementptr i8, ptr %124, i32 1
  %128 = load i8, ptr %127, align 1
  switch i8 %128, label %139 [
    i8 0, label %129
    i8 15, label %129
    i8 -16, label %129
    i8 -1, label %129
  ]

129:                                              ; preds = %126, %126, %126, %126
  %130 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %1, i32 0, i32 3, i32 4, i32 3
  %131 = load i8, ptr %130, align 1
  switch i8 %131, label %139 [
    i8 0, label %132
    i8 15, label %132
    i8 -16, label %132
    i8 -1, label %132
  ]

132:                                              ; preds = %129, %129, %129, %129
  %133 = getelementptr i8, ptr %130, i32 1
  %134 = load i8, ptr %133, align 1
  switch i8 %134, label %139 [
    i8 0, label %135
    i8 15, label %135
    i8 -16, label %135
    i8 -1, label %135
  ]

135:                                              ; preds = %132, %132, %132, %132
  %136 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %1, i32 0, i32 3, i32 4, i32 4
  %137 = load i32, ptr %136, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %140, label %144

139:                                              ; preds = %132, %129, %126, %123
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.11) #21
  br label %338

140:                                              ; preds = %135
  %141 = getelementptr %struct.ethtool_rxnfc, ptr %1, i32 0, i32 3, i32 4, i32 4, i32 1
  %142 = load i32, ptr %141, align 4
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %145, label %144

144:                                              ; preds = %140, %135
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.13) #21
  br label %338

145:                                              ; preds = %140, %121
  %146 = and i32 %29, 1073741824
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %167, label %148

148:                                              ; preds = %145
  %149 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %1, i32 0, i32 3, i32 4, i32 1
  %150 = load i8, ptr %149, align 1
  switch i8 %150, label %166 [
    i8 0, label %151
    i8 15, label %151
    i8 -16, label %151
    i8 -1, label %151
  ]

151:                                              ; preds = %148, %148, %148, %148
  %152 = getelementptr %struct.ethtool_rxnfc, ptr %1, i32 0, i32 3, i32 4, i32 1, i32 1
  %153 = load i8, ptr %152, align 1
  switch i8 %153, label %166 [
    i8 0, label %154
    i8 15, label %154
    i8 -16, label %154
    i8 -1, label %154
  ]

154:                                              ; preds = %151, %151, %151, %151
  %155 = getelementptr %struct.ethtool_rxnfc, ptr %1, i32 0, i32 3, i32 4, i32 1, i32 2
  %156 = load i8, ptr %155, align 1
  switch i8 %156, label %166 [
    i8 0, label %157
    i8 15, label %157
    i8 -16, label %157
    i8 -1, label %157
  ]

157:                                              ; preds = %154, %154, %154, %154
  %158 = getelementptr %struct.ethtool_rxnfc, ptr %1, i32 0, i32 3, i32 4, i32 1, i32 3
  %159 = load i8, ptr %158, align 1
  switch i8 %159, label %166 [
    i8 0, label %160
    i8 15, label %160
    i8 -16, label %160
    i8 -1, label %160
  ]

160:                                              ; preds = %157, %157, %157, %157
  %161 = getelementptr %struct.ethtool_rxnfc, ptr %1, i32 0, i32 3, i32 4, i32 1, i32 4
  %162 = load i8, ptr %161, align 1
  switch i8 %162, label %166 [
    i8 0, label %163
    i8 15, label %163
    i8 -16, label %163
    i8 -1, label %163
  ]

163:                                              ; preds = %160, %160, %160, %160
  %164 = getelementptr %struct.ethtool_rxnfc, ptr %1, i32 0, i32 3, i32 4, i32 1, i32 5
  %165 = load i8, ptr %164, align 1
  switch i8 %165, label %166 [
    i8 0, label %167
    i8 15, label %167
    i8 -16, label %167
    i8 -1, label %167
  ]

166:                                              ; preds = %163, %160, %157, %154, %151, %148
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.11) #21
  br label %338

167:                                              ; preds = %163, %163, %163, %163, %145
  %168 = getelementptr %struct.bcmgenet_priv, ptr %3, i32 0, i32 11, i32 %25
  %169 = getelementptr %struct.bcmgenet_priv, ptr %3, i32 0, i32 11, i32 %25, i32 2
  %170 = load i32, ptr %169, align 8
  %171 = icmp eq i32 %170, 2
  br i1 %171, label %172, label %213

172:                                              ; preds = %167
  %173 = load ptr, ptr %3, align 8
  %174 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %7, i32 0, i32 11
  %175 = load i32, ptr %174, align 4
  %176 = getelementptr i8, ptr %173, i32 %175
  %177 = getelementptr i8, ptr %176, i32 4
  %178 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %177) #20, !srcloc !10
  %179 = load ptr, ptr %3, align 8
  %180 = load ptr, ptr %6, align 8
  %181 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %180, i32 0, i32 11
  %182 = load i32, ptr %181, align 4
  %183 = getelementptr i8, ptr %179, i32 %182
  %184 = getelementptr i8, ptr %183, i32 8
  %185 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %184) #20, !srcloc !10
  %186 = shl nuw nsw i32 1, %25
  %187 = xor i32 %186, -1
  %188 = and i32 %185, %187
  %189 = load ptr, ptr %3, align 8
  %190 = load ptr, ptr %6, align 8
  %191 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %190, i32 0, i32 11
  %192 = load i32, ptr %191, align 4
  %193 = getelementptr i8, ptr %189, i32 %192
  %194 = getelementptr i8, ptr %193, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %194, i32 %188) #20, !srcloc !16
  %195 = icmp ne i32 %178, 0
  %196 = icmp ne i32 %188, 0
  %197 = select i1 %195, i1 true, i1 %196
  br i1 %197, label %211, label %198

198:                                              ; preds = %172
  %199 = load ptr, ptr %3, align 8
  %200 = load ptr, ptr %6, align 8
  %201 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %200, i32 0, i32 11
  %202 = load i32, ptr %201, align 4
  %203 = getelementptr i8, ptr %199, i32 %202
  %204 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %203) #20, !srcloc !10
  %205 = and i32 %204, -2
  %206 = load ptr, ptr %3, align 8
  %207 = load ptr, ptr %6, align 8
  %208 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %207, i32 0, i32 11
  %209 = load i32, ptr %208, align 4
  %210 = getelementptr i8, ptr %206, i32 %209
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %210, i32 %205) #20, !srcloc !16
  br label %211

211:                                              ; preds = %198, %172
  %212 = load i32, ptr %169, align 8
  br label %213

213:                                              ; preds = %211, %167
  %214 = phi i32 [ %212, %211 ], [ %170, %167 ]
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %244, label %216

216:                                              ; preds = %213
  %217 = getelementptr inbounds %struct.list_head, ptr %168, i32 0, i32 1
  %218 = load ptr, ptr %217, align 4
  %219 = load ptr, ptr %168, align 4
  %220 = getelementptr inbounds %struct.list_head, ptr %219, i32 0, i32 1
  store ptr %218, ptr %220, align 4
  store volatile ptr %219, ptr %218, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %168, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %217, align 4
  %221 = load i32, ptr %24, align 8
  %222 = load ptr, ptr %6, align 8
  %223 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %222, i32 0, i32 7
  %224 = load i8, ptr %223, align 1
  %225 = zext i8 %224 to i32
  %226 = mul i32 %221, %225
  %227 = icmp eq i8 %224, 0
  br i1 %227, label %244, label %228

228:                                              ; preds = %228, %216
  %229 = phi ptr [ %239, %228 ], [ %222, %216 ]
  %230 = phi i32 [ %238, %228 ], [ 0, %216 ]
  %231 = add i32 %230, %226
  %232 = shl i32 %231, 2
  %233 = load ptr, ptr %3, align 8
  %234 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %229, i32 0, i32 10
  %235 = load i32, ptr %234, align 4
  %236 = getelementptr i8, ptr %233, i32 %235
  %237 = getelementptr i8, ptr %236, i32 %232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %237, i32 0) #20, !srcloc !16
  %238 = add nuw nsw i32 %230, 1
  %239 = load ptr, ptr %6, align 8
  %240 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %239, i32 0, i32 7
  %241 = load i8, ptr %240, align 1
  %242 = zext i8 %241 to i32
  %243 = icmp ult i32 %238, %242
  br i1 %243, label %228, label %244

244:                                              ; preds = %228, %216, %213
  store i32 0, ptr %169, align 8
  %245 = getelementptr %struct.bcmgenet_priv, ptr %3, i32 0, i32 11, i32 %25, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(168) %245, ptr noundef align 8 dereferenceable(168) %13, i32 168, i1 false) #20
  tail call fastcc void @bcmgenet_hfb_create_rxnfc_filter(ptr noundef %3, ptr noundef %168) #20
  %246 = getelementptr i8, ptr %0, i32 9288
  %247 = getelementptr i8, ptr %0, i32 9292
  %248 = load ptr, ptr %247, align 4
  store ptr %168, ptr %247, align 4
  store ptr %246, ptr %168, align 4
  %249 = getelementptr inbounds %struct.list_head, ptr %168, i32 0, i32 1
  store ptr %248, ptr %249, align 4
  store volatile ptr %168, ptr %248, align 4
  br label %338

250:                                              ; preds = %2
  %251 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %1, i32 0, i32 3, i32 6
  %252 = load i32, ptr %251, align 8
  %253 = icmp ugt i32 %252, 15
  br i1 %253, label %338, label %254

254:                                              ; preds = %250
  %255 = getelementptr %struct.bcmgenet_priv, ptr %3, i32 0, i32 11, i32 %252
  %256 = getelementptr %struct.bcmgenet_priv, ptr %3, i32 0, i32 11, i32 %252, i32 2
  %257 = load i32, ptr %256, align 8
  switch i32 %257, label %301 [
    i32 0, label %338
    i32 2, label %258
  ]

258:                                              ; preds = %254
  %259 = load ptr, ptr %3, align 8
  %260 = getelementptr i8, ptr %0, i32 16232
  %261 = load ptr, ptr %260, align 8
  %262 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %261, i32 0, i32 11
  %263 = load i32, ptr %262, align 4
  %264 = getelementptr i8, ptr %259, i32 %263
  %265 = getelementptr i8, ptr %264, i32 4
  %266 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %265) #20, !srcloc !10
  %267 = load ptr, ptr %3, align 8
  %268 = load ptr, ptr %260, align 8
  %269 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %268, i32 0, i32 11
  %270 = load i32, ptr %269, align 4
  %271 = getelementptr i8, ptr %267, i32 %270
  %272 = getelementptr i8, ptr %271, i32 8
  %273 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %272) #20, !srcloc !10
  %274 = shl nuw nsw i32 1, %252
  %275 = xor i32 %274, -1
  %276 = and i32 %273, %275
  %277 = load ptr, ptr %3, align 8
  %278 = load ptr, ptr %260, align 8
  %279 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %278, i32 0, i32 11
  %280 = load i32, ptr %279, align 4
  %281 = getelementptr i8, ptr %277, i32 %280
  %282 = getelementptr i8, ptr %281, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %282, i32 %276) #20, !srcloc !16
  %283 = icmp ne i32 %266, 0
  %284 = icmp ne i32 %276, 0
  %285 = select i1 %283, i1 true, i1 %284
  br i1 %285, label %299, label %286

286:                                              ; preds = %258
  %287 = load ptr, ptr %3, align 8
  %288 = load ptr, ptr %260, align 8
  %289 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %288, i32 0, i32 11
  %290 = load i32, ptr %289, align 4
  %291 = getelementptr i8, ptr %287, i32 %290
  %292 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %291) #20, !srcloc !10
  %293 = and i32 %292, -2
  %294 = load ptr, ptr %3, align 8
  %295 = load ptr, ptr %260, align 8
  %296 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %295, i32 0, i32 11
  %297 = load i32, ptr %296, align 4
  %298 = getelementptr i8, ptr %294, i32 %297
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %298, i32 %293) #20, !srcloc !16
  br label %299

299:                                              ; preds = %286, %258
  %300 = load i32, ptr %256, align 8
  br label %301

301:                                              ; preds = %299, %254
  %302 = phi i32 [ %300, %299 ], [ %257, %254 ]
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %333, label %304

304:                                              ; preds = %301
  %305 = getelementptr inbounds %struct.list_head, ptr %255, i32 0, i32 1
  %306 = load ptr, ptr %305, align 4
  %307 = load ptr, ptr %255, align 4
  %308 = getelementptr inbounds %struct.list_head, ptr %307, i32 0, i32 1
  store ptr %306, ptr %308, align 4
  store volatile ptr %307, ptr %306, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %255, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %305, align 4
  %309 = load i32, ptr %251, align 8
  %310 = getelementptr i8, ptr %0, i32 16232
  %311 = load ptr, ptr %310, align 8
  %312 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %311, i32 0, i32 7
  %313 = load i8, ptr %312, align 1
  %314 = zext i8 %313 to i32
  %315 = mul i32 %309, %314
  %316 = icmp eq i8 %313, 0
  br i1 %316, label %333, label %317

317:                                              ; preds = %317, %304
  %318 = phi ptr [ %328, %317 ], [ %311, %304 ]
  %319 = phi i32 [ %327, %317 ], [ 0, %304 ]
  %320 = add i32 %319, %315
  %321 = shl i32 %320, 2
  %322 = load ptr, ptr %3, align 8
  %323 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %318, i32 0, i32 10
  %324 = load i32, ptr %323, align 4
  %325 = getelementptr i8, ptr %322, i32 %324
  %326 = getelementptr i8, ptr %325, i32 %321
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %326, i32 0) #20, !srcloc !16
  %327 = add nuw nsw i32 %319, 1
  %328 = load ptr, ptr %310, align 8
  %329 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %328, i32 0, i32 7
  %330 = load i8, ptr %329, align 1
  %331 = zext i8 %330 to i32
  %332 = icmp ult i32 %327, %331
  br i1 %332, label %317, label %333

333:                                              ; preds = %317, %304, %301
  %334 = getelementptr %struct.bcmgenet_priv, ptr %3, i32 0, i32 11, i32 %252, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(172) %334, i8 0, i64 172, i1 false) #20
  br label %338

335:                                              ; preds = %2
  %336 = getelementptr i8, ptr %0, i32 1416
  %337 = load ptr, ptr %336, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %337, ptr noundef nonnull @.str.7, i32 noundef %4) #21
  br label %338

338:                                              ; preds = %335, %333, %254, %250, %244, %166, %144, %139, %120, %119, %76, %27, %22, %11
  %339 = phi i32 [ -22, %335 ], [ -22, %11 ], [ -22, %22 ], [ 0, %244 ], [ -22, %27 ], [ -22, %120 ], [ -22, %119 ], [ -22, %139 ], [ -22, %144 ], [ -22, %166 ], [ -22, %76 ], [ -22, %250 ], [ 0, %333 ], [ -2, %254 ]
  ret i32 %339
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_ts_info(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcmgenet_get_eee(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 1408
  %4 = getelementptr i8, ptr %0, i32 1412
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %24, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %24, label %11

11:                                               ; preds = %7
  %12 = getelementptr i8, ptr %0, i32 16676
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.ethtool_eee, ptr %1, i32 0, i32 5
  store i32 %13, ptr %14, align 4
  %15 = getelementptr i8, ptr %0, i32 16672
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.ethtool_eee, ptr %1, i32 0, i32 4
  store i32 %16, ptr %17, align 4
  %18 = load ptr, ptr %3, align 8
  %19 = getelementptr i8, ptr %18, i32 2152
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #20, !srcloc !10
  %21 = getelementptr inbounds %struct.ethtool_eee, ptr %1, i32 0, i32 7
  store i32 %20, ptr %21, align 4
  %22 = load ptr, ptr %8, align 8
  %23 = tail call i32 @phy_ethtool_get_eee(ptr noundef %22, ptr noundef %1) #20
  br label %24

24:                                               ; preds = %11, %7, %2
  %25 = phi i32 [ %23, %11 ], [ -95, %2 ], [ -19, %7 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcmgenet_set_eee(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 1408
  %4 = getelementptr i8, ptr %0, i32 1412
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %66, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %66, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.ethtool_eee, ptr %1, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr i8, ptr %0, i32 16676
  store i32 %13, ptr %14, align 4
  %15 = icmp eq i32 %13, 0
  br i1 %15, label %16, label %49

16:                                               ; preds = %11
  %17 = getelementptr i8, ptr %0, i32 16232
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %18, i32 0, i32 9
  %20 = load i16, ptr %19, align 4
  %21 = zext i16 %20 to i32
  %22 = add nuw nsw i32 %21, 20
  %23 = load ptr, ptr %3, align 8
  %24 = getelementptr i8, ptr %23, i32 2148
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #20, !srcloc !10
  %26 = and i32 %25, -9
  %27 = load ptr, ptr %3, align 8
  %28 = getelementptr i8, ptr %27, i32 2148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #20, !srcloc !16
  %29 = load ptr, ptr %3, align 8
  %30 = getelementptr i8, ptr %29, i32 %22
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #20, !srcloc !10
  %32 = and i32 %31, -4
  %33 = load ptr, ptr %3, align 8
  %34 = getelementptr i8, ptr %33, i32 %22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %32) #20, !srcloc !16
  %35 = load ptr, ptr %3, align 8
  %36 = getelementptr i8, ptr %35, i32 924
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #20, !srcloc !10
  %38 = and i32 %37, -4
  %39 = load ptr, ptr %3, align 8
  %40 = getelementptr i8, ptr %39, i32 924
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %38) #20, !srcloc !16
  %41 = getelementptr i8, ptr %0, i32 16276
  %42 = load i8, ptr %41, align 4, !range !9
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %16
  %45 = getelementptr i8, ptr %0, i32 16272
  %46 = load ptr, ptr %45, align 8
  tail call void @clk_disable(ptr noundef %46) #20
  tail call void @clk_unprepare(ptr noundef %46) #20
  store i8 0, ptr %41, align 4
  br label %47

47:                                               ; preds = %44, %16
  store i32 0, ptr %14, align 4
  %48 = getelementptr i8, ptr %0, i32 16672
  store i32 0, ptr %48, align 8
  br label %63

49:                                               ; preds = %11
  %50 = tail call i32 @phy_init_eee(ptr noundef nonnull %9, i1 noundef zeroext false) #20
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %49
  %53 = getelementptr i8, ptr %0, i32 16344
  %54 = load i32, ptr %53, align 8
  %55 = and i32 %54, 8192
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %66, label %57

57:                                               ; preds = %52
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.14) #21
  br label %66

58:                                               ; preds = %49
  %59 = getelementptr inbounds %struct.ethtool_eee, ptr %1, i32 0, i32 7
  %60 = load i32, ptr %59, align 4
  %61 = load ptr, ptr %3, align 8
  %62 = getelementptr i8, ptr %61, i32 2152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 %60) #20, !srcloc !16
  tail call fastcc void @bcmgenet_eee_enable_set(ptr noundef %0, i1 noundef zeroext true)
  br label %63

63:                                               ; preds = %58, %47
  %64 = load ptr, ptr %8, align 8
  %65 = tail call i32 @phy_ethtool_set_eee(ptr noundef %64, ptr noundef %1) #20
  br label %66

66:                                               ; preds = %63, %57, %52, %7, %2
  %67 = phi i32 [ %65, %63 ], [ -95, %2 ], [ -19, %7 ], [ %50, %57 ], [ %50, %52 ]
  ret i32 %67
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcmgenet_get_link_ksettings(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @phy_ethtool_ksettings_get(ptr noundef nonnull %9, ptr noundef %1) #20
  br label %12

12:                                               ; preds = %11, %7, %2
  %13 = phi i32 [ 0, %11 ], [ -22, %2 ], [ -19, %7 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcmgenet_set_link_ksettings(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = tail call i32 @phy_ethtool_ksettings_set(ptr noundef nonnull %9, ptr noundef %1) #20
  br label %13

13:                                               ; preds = %11, %7, %2
  %14 = phi i32 [ %12, %11 ], [ -22, %2 ], [ -19, %7 ]
  ret i32 %14
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @bcmgenet_set_ring_rx_coalesce(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = alloca %struct.dim_cq_moder, align 2
  %4 = getelementptr inbounds %struct.ethtool_coalesce, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.bcmgenet_rx_ring, ptr %0, i32 0, i32 15
  store i32 %5, ptr %6, align 4
  %7 = getelementptr inbounds %struct.ethtool_coalesce, ptr %1, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.bcmgenet_rx_ring, ptr %0, i32 0, i32 14
  store i32 %8, ptr %9, align 8
  %10 = getelementptr inbounds %struct.ethtool_coalesce, ptr %1, i32 0, i32 10
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %26, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.bcmgenet_rx_ring, ptr %0, i32 0, i32 13
  %15 = load i16, ptr %14, align 8
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  %18 = getelementptr inbounds %struct.bcmgenet_rx_ring, ptr %0, i32 0, i32 13, i32 4, i32 7
  %19 = load i8, ptr %18, align 1
  call void @net_dim_get_def_rx_moderation(ptr nonnull sret(%struct.dim_cq_moder) align 2 %3, i8 noundef zeroext %19) #20
  %20 = load i16, ptr %3, align 2
  %21 = getelementptr inbounds i8, ptr %3, i32 2
  %22 = load i16, ptr %21, align 2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  %23 = zext i16 %20 to i32
  %24 = zext i16 %22 to i32
  %25 = load i32, ptr %10, align 4
  br label %26

26:                                               ; preds = %17, %13, %2
  %27 = phi i32 [ %11, %13 ], [ %25, %17 ], [ 0, %2 ]
  %28 = phi i32 [ %5, %13 ], [ %23, %17 ], [ %5, %2 ]
  %29 = phi i32 [ %8, %13 ], [ %24, %17 ], [ %8, %2 ]
  %30 = trunc i32 %27 to i16
  %31 = getelementptr inbounds %struct.bcmgenet_rx_ring, ptr %0, i32 0, i32 13
  store i16 %30, ptr %31, align 8
  %32 = getelementptr inbounds %struct.bcmgenet_rx_ring, ptr %0, i32 0, i32 18
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr inbounds %struct.bcmgenet_rx_ring, ptr %0, i32 0, i32 5
  %35 = load i32, ptr %34, align 8
  %36 = load ptr, ptr %33, align 8
  %37 = getelementptr inbounds %struct.bcmgenet_priv, ptr %33, i32 0, i32 14
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %38, i32 0, i32 12
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %38, i32 0, i32 14
  %42 = load i32, ptr %41, align 4
  %43 = shl i32 %42, 10
  %44 = add i32 %43, %40
  %45 = getelementptr i8, ptr %36, i32 %44
  %46 = shl i32 %35, 6
  %47 = getelementptr i8, ptr %45, i32 %46
  %48 = load ptr, ptr @genet_dma_ring_regs, align 4
  %49 = getelementptr i8, ptr %48, i32 9
  %50 = load i8, ptr %49, align 1
  %51 = zext i8 %50 to i32
  %52 = getelementptr i8, ptr %47, i32 %51
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %29) #20, !srcloc !16
  %53 = add i32 %35, 16
  %54 = load ptr, ptr %33, align 8
  %55 = load ptr, ptr %37, align 8
  %56 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %55, i32 0, i32 12
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %55, i32 0, i32 14
  %59 = load i32, ptr %58, align 4
  %60 = shl i32 %59, 10
  %61 = add i32 %60, %57
  %62 = getelementptr i8, ptr %54, i32 %61
  %63 = getelementptr i8, ptr %62, i32 1088
  %64 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %65 = getelementptr i8, ptr %64, i32 %53
  %66 = load i8, ptr %65, align 1
  %67 = zext i8 %66 to i32
  %68 = getelementptr i8, ptr %63, i32 %67
  %69 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %68) #20, !srcloc !10
  %70 = and i32 %69, -65536
  %71 = mul i32 %28, 1000
  %72 = add i32 %71, 8191
  %73 = lshr i32 %72, 13
  %74 = or i32 %70, %73
  %75 = load ptr, ptr %33, align 8
  %76 = load ptr, ptr %37, align 8
  %77 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %76, i32 0, i32 12
  %78 = load i32, ptr %77, align 4
  %79 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %76, i32 0, i32 14
  %80 = load i32, ptr %79, align 4
  %81 = shl i32 %80, 10
  %82 = add i32 %81, %78
  %83 = getelementptr i8, ptr %75, i32 %82
  %84 = getelementptr i8, ptr %83, i32 1088
  %85 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %86 = getelementptr i8, ptr %85, i32 %53
  %87 = load i8, ptr %86, align 1
  %88 = zext i8 %87 to i32
  %89 = getelementptr i8, ptr %84, i32 %88
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %89, i32 %74) #20, !srcloc !16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @net_dim_get_def_rx_moderation(ptr sret(%struct.dim_cq_moder) align 2, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @phy_validate_pause(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcmgenet_phy_pause_set(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @bcmgenet_hfb_create_rxnfc_filter(ptr noundef readonly %0, ptr noundef %1) unnamed_addr #2 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = getelementptr inbounds %struct.bcmgenet_rxnfc_rule, ptr %1, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #20
  store i8 0, ptr %3, align 1, !annotation !17
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #20
  %8 = getelementptr inbounds %struct.bcmgenet_rxnfc_rule, ptr %1, i32 0, i32 1, i32 6
  %9 = load i32, ptr %8, align 8
  %10 = load i32, ptr %7, align 8
  %11 = and i32 %10, 1073741824
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.bcmgenet_rxnfc_rule, ptr %1, i32 0, i32 1, i32 2, i32 1
  %15 = getelementptr inbounds %struct.bcmgenet_rxnfc_rule, ptr %1, i32 0, i32 1, i32 4, i32 1
  tail call fastcc void @bcmgenet_hfb_insert_data(ptr noundef %0, i32 noundef %9, i32 noundef 0, ptr noundef %14, ptr noundef %15, i32 noundef 6)
  %16 = load i32, ptr %7, align 8
  br label %17

17:                                               ; preds = %13, %2
  %18 = phi i32 [ %16, %13 ], [ %10, %2 ]
  %19 = icmp sgt i32 %18, -1
  br i1 %19, label %33, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.bcmgenet_rxnfc_rule, ptr %1, i32 0, i32 1, i32 4, i32 2
  %22 = load i16, ptr %21, align 8
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.bcmgenet_rxnfc_rule, ptr %1, i32 0, i32 1, i32 4, i32 3
  %26 = load i16, ptr %25, align 2
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %24, %20
  %29 = getelementptr inbounds %struct.bcmgenet_rxnfc_rule, ptr %1, i32 0, i32 1, i32 2, i32 2
  tail call fastcc void @bcmgenet_hfb_insert_data(ptr noundef %0, i32 noundef %9, i32 noundef 12, ptr noundef %29, ptr noundef %21, i32 noundef 2)
  %30 = getelementptr inbounds %struct.bcmgenet_rxnfc_rule, ptr %1, i32 0, i32 1, i32 2, i32 3
  %31 = getelementptr inbounds %struct.bcmgenet_rxnfc_rule, ptr %1, i32 0, i32 1, i32 4, i32 3
  tail call fastcc void @bcmgenet_hfb_insert_data(ptr noundef %0, i32 noundef %9, i32 noundef 14, ptr noundef %30, ptr noundef %31, i32 noundef 2)
  %32 = load i32, ptr %7, align 8
  br label %33

33:                                               ; preds = %28, %24, %17
  %34 = phi i32 [ %32, %28 ], [ %18, %24 ], [ %18, %17 ]
  %35 = phi i32 [ 4, %28 ], [ 0, %24 ], [ 0, %17 ]
  %36 = phi i32 [ 2, %28 ], [ 0, %24 ], [ 0, %17 ]
  %37 = and i32 %34, 1073741823
  switch i32 %37, label %70 [
    i32 18, label %38
    i32 13, label %47
  ]

38:                                               ; preds = %33
  %39 = add nuw nsw i32 %36, 7
  %40 = getelementptr inbounds %struct.bcmgenet_rxnfc_rule, ptr %1, i32 0, i32 1, i32 1
  %41 = getelementptr inbounds %struct.bcmgenet_rxnfc_rule, ptr %1, i32 0, i32 1, i32 3
  tail call fastcc void @bcmgenet_hfb_insert_data(ptr noundef %0, i32 noundef %9, i32 noundef 0, ptr noundef %40, ptr noundef %41, i32 noundef 6)
  %42 = getelementptr inbounds %struct.ethhdr, ptr %40, i32 0, i32 1
  %43 = getelementptr inbounds %struct.ethhdr, ptr %41, i32 0, i32 1
  tail call fastcc void @bcmgenet_hfb_insert_data(ptr noundef %0, i32 noundef %9, i32 noundef 6, ptr noundef %42, ptr noundef %43, i32 noundef 6)
  %44 = add nuw nsw i32 %35, 12
  %45 = getelementptr inbounds %struct.bcmgenet_rxnfc_rule, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 0, i32 3
  %46 = getelementptr inbounds %struct.bcmgenet_rxnfc_rule, ptr %1, i32 0, i32 1, i32 3, i32 0, i32 0, i32 3
  tail call fastcc void @bcmgenet_hfb_insert_data(ptr noundef %0, i32 noundef %9, i32 noundef %44, ptr noundef %45, ptr noundef %46, i32 noundef 2)
  br label %70

47:                                               ; preds = %33
  %48 = or i32 %36, 17
  store i16 8, ptr %5, align 2
  store i16 -1, ptr %6, align 2
  %49 = add nuw nsw i32 %35, 12
  call fastcc void @bcmgenet_hfb_insert_data(ptr noundef %0, i32 noundef %9, i32 noundef %49, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 2)
  %50 = add nuw nsw i32 %35, 15
  %51 = getelementptr inbounds %struct.bcmgenet_rxnfc_rule, ptr %1, i32 0, i32 1, i32 1
  %52 = getelementptr inbounds %struct.bcmgenet_rxnfc_rule, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 0, i32 3
  %53 = getelementptr inbounds %struct.bcmgenet_rxnfc_rule, ptr %1, i32 0, i32 1, i32 3
  %54 = getelementptr inbounds %struct.bcmgenet_rxnfc_rule, ptr %1, i32 0, i32 1, i32 3, i32 0, i32 0, i32 3
  tail call fastcc void @bcmgenet_hfb_insert_data(ptr noundef %0, i32 noundef %9, i32 noundef %50, ptr noundef %52, ptr noundef %54, i32 noundef 1)
  %55 = add nuw nsw i32 %35, 23
  %56 = getelementptr inbounds %struct.ethtool_usrip4_spec, ptr %51, i32 0, i32 5
  %57 = getelementptr inbounds %struct.ethtool_usrip4_spec, ptr %53, i32 0, i32 5
  tail call fastcc void @bcmgenet_hfb_insert_data(ptr noundef %0, i32 noundef %9, i32 noundef %55, ptr noundef %56, ptr noundef %57, i32 noundef 1)
  %58 = or i32 %35, 26
  tail call fastcc void @bcmgenet_hfb_insert_data(ptr noundef %0, i32 noundef %9, i32 noundef %58, ptr noundef %51, ptr noundef %53, i32 noundef 4)
  %59 = add nuw nsw i32 %35, 30
  %60 = getelementptr inbounds %struct.bcmgenet_rxnfc_rule, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1
  %61 = getelementptr inbounds %struct.bcmgenet_rxnfc_rule, ptr %1, i32 0, i32 1, i32 3, i32 0, i32 0, i32 1
  tail call fastcc void @bcmgenet_hfb_insert_data(ptr noundef %0, i32 noundef %9, i32 noundef %59, ptr noundef %60, ptr noundef %61, i32 noundef 4)
  %62 = getelementptr inbounds %struct.bcmgenet_rxnfc_rule, ptr %1, i32 0, i32 1, i32 3, i32 0, i32 0, i32 2
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %47
  store i8 69, ptr %3, align 1
  store i8 -1, ptr %4, align 1
  %66 = add nuw nsw i32 %35, 14
  call fastcc void @bcmgenet_hfb_insert_data(ptr noundef %0, i32 noundef %9, i32 noundef %66, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 1)
  %67 = or i32 %35, 34
  %68 = getelementptr inbounds %struct.bcmgenet_rxnfc_rule, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 0, i32 2
  tail call fastcc void @bcmgenet_hfb_insert_data(ptr noundef %0, i32 noundef %9, i32 noundef %67, ptr noundef %68, ptr noundef %62, i32 noundef 4)
  %69 = add nuw nsw i32 %36, 19
  br label %70

70:                                               ; preds = %65, %47, %38, %33
  %71 = phi i32 [ %36, %33 ], [ %69, %65 ], [ %48, %47 ], [ %39, %38 ]
  %72 = shl nsw i32 %71, 1
  %73 = getelementptr inbounds %struct.bcmgenet_priv, ptr %0, i32 0, i32 14
  %74 = load ptr, ptr %73, align 8
  %75 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %74, i32 0, i32 6
  %76 = load i8, ptr %75, align 4
  %77 = zext i8 %76 to i32
  %78 = sub i32 27, %9
  %79 = add i32 %78, %77
  %80 = and i32 %79, -4
  %81 = load ptr, ptr %0, align 8
  %82 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %74, i32 0, i32 11
  %83 = load i32, ptr %82, align 4
  %84 = getelementptr i8, ptr %81, i32 %83
  %85 = getelementptr i8, ptr %84, i32 %80
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %85) #20, !srcloc !10
  %87 = shl i32 %9, 3
  %88 = and i32 %87, 24
  %89 = shl nuw i32 255, %88
  %90 = xor i32 %89, -1
  %91 = and i32 %86, %90
  %92 = and i32 %72, 254
  %93 = shl nuw i32 %92, %88
  %94 = or i32 %91, %93
  %95 = load ptr, ptr %0, align 8
  %96 = load ptr, ptr %73, align 8
  %97 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %96, i32 0, i32 11
  %98 = load i32, ptr %97, align 4
  %99 = getelementptr i8, ptr %95, i32 %98
  %100 = getelementptr i8, ptr %99, i32 %80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %100, i32 %94) #20, !srcloc !16
  %101 = getelementptr inbounds %struct.bcmgenet_rxnfc_rule, ptr %1, i32 0, i32 1, i32 5
  %102 = load i64, ptr %101, align 8
  switch i64 %102, label %142 [
    i64 0, label %103
    i64 -2, label %103
  ]

103:                                              ; preds = %70, %70
  %104 = lshr i32 %9, 3
  %105 = add nuw nsw i32 %104, 8
  %106 = load ptr, ptr %0, align 8
  %107 = load ptr, ptr %73, align 8
  %108 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %107, i32 0, i32 12
  %109 = load i32, ptr %108, align 4
  %110 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %107, i32 0, i32 14
  %111 = load i32, ptr %110, align 4
  %112 = shl i32 %111, 10
  %113 = add i32 %112, %109
  %114 = getelementptr i8, ptr %106, i32 %113
  %115 = getelementptr i8, ptr %114, i32 1088
  %116 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %117 = getelementptr i8, ptr %116, i32 %105
  %118 = load i8, ptr %117, align 1
  %119 = zext i8 %118 to i32
  %120 = getelementptr i8, ptr %115, i32 %119
  %121 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %120) #20, !srcloc !10
  %122 = shl i32 %9, 2
  %123 = and i32 %122, 28
  %124 = shl nuw i32 15, %123
  %125 = xor i32 %124, -1
  %126 = and i32 %121, %125
  %127 = load ptr, ptr %0, align 8
  %128 = load ptr, ptr %73, align 8
  %129 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %128, i32 0, i32 12
  %130 = load i32, ptr %129, align 4
  %131 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %128, i32 0, i32 14
  %132 = load i32, ptr %131, align 4
  %133 = shl i32 %132, 10
  %134 = add i32 %133, %130
  %135 = getelementptr i8, ptr %127, i32 %134
  %136 = getelementptr i8, ptr %135, i32 1088
  %137 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %138 = getelementptr i8, ptr %137, i32 %105
  %139 = load i8, ptr %138, align 1
  %140 = zext i8 %139 to i32
  %141 = getelementptr i8, ptr %136, i32 %140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %141, i32 %126) #20, !srcloc !16
  br label %215

142:                                              ; preds = %70
  %143 = trunc i64 %102 to i32
  %144 = lshr i32 %9, 3
  %145 = add nuw nsw i32 %144, 8
  %146 = load ptr, ptr %0, align 8
  %147 = load ptr, ptr %73, align 8
  %148 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %147, i32 0, i32 12
  %149 = load i32, ptr %148, align 4
  %150 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %147, i32 0, i32 14
  %151 = load i32, ptr %150, align 4
  %152 = shl i32 %151, 10
  %153 = add i32 %152, %149
  %154 = getelementptr i8, ptr %146, i32 %153
  %155 = getelementptr i8, ptr %154, i32 1088
  %156 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %157 = getelementptr i8, ptr %156, i32 %145
  %158 = load i8, ptr %157, align 1
  %159 = zext i8 %158 to i32
  %160 = getelementptr i8, ptr %155, i32 %159
  %161 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %160) #20, !srcloc !10
  %162 = shl i32 %9, 2
  %163 = and i32 %162, 28
  %164 = shl nuw i32 15, %163
  %165 = xor i32 %164, -1
  %166 = and i32 %161, %165
  %167 = and i32 %143, 15
  %168 = shl nuw i32 %167, %163
  %169 = or i32 %166, %168
  %170 = load ptr, ptr %0, align 8
  %171 = load ptr, ptr %73, align 8
  %172 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %171, i32 0, i32 12
  %173 = load i32, ptr %172, align 4
  %174 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %171, i32 0, i32 14
  %175 = load i32, ptr %174, align 4
  %176 = shl i32 %175, 10
  %177 = add i32 %176, %173
  %178 = getelementptr i8, ptr %170, i32 %177
  %179 = getelementptr i8, ptr %178, i32 1088
  %180 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %181 = getelementptr i8, ptr %180, i32 %145
  %182 = load i8, ptr %181, align 1
  %183 = zext i8 %182 to i32
  %184 = getelementptr i8, ptr %179, i32 %183
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %184, i32 %169) #20, !srcloc !16
  %185 = icmp ult i32 %9, 32
  %186 = select i1 %185, i32 8, i32 4
  %187 = load ptr, ptr %0, align 8
  %188 = load ptr, ptr %73, align 8
  %189 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %188, i32 0, i32 11
  %190 = load i32, ptr %189, align 4
  %191 = getelementptr i8, ptr %187, i32 %190
  %192 = getelementptr i8, ptr %191, i32 %186
  %193 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %192) #20, !srcloc !10
  %194 = and i32 %9, 31
  %195 = shl nuw i32 1, %194
  %196 = or i32 %193, %195
  %197 = load ptr, ptr %0, align 8
  %198 = load ptr, ptr %73, align 8
  %199 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %198, i32 0, i32 11
  %200 = load i32, ptr %199, align 4
  %201 = getelementptr i8, ptr %197, i32 %200
  %202 = getelementptr i8, ptr %201, i32 %186
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %202, i32 %196) #20, !srcloc !16
  %203 = load ptr, ptr %0, align 8
  %204 = load ptr, ptr %73, align 8
  %205 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %204, i32 0, i32 11
  %206 = load i32, ptr %205, align 4
  %207 = getelementptr i8, ptr %203, i32 %206
  %208 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %207) #20, !srcloc !10
  %209 = or i32 %208, 1
  %210 = load ptr, ptr %0, align 8
  %211 = load ptr, ptr %73, align 8
  %212 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %211, i32 0, i32 11
  %213 = load i32, ptr %212, align 4
  %214 = getelementptr i8, ptr %210, i32 %213
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %214, i32 %209) #20, !srcloc !16
  br label %215

215:                                              ; preds = %142, %103
  %216 = phi i32 [ 2, %142 ], [ 1, %103 ]
  %217 = getelementptr inbounds %struct.bcmgenet_rxnfc_rule, ptr %1, i32 0, i32 2
  store i32 %216, ptr %217, align 8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @bcmgenet_hfb_insert_data(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, i32 noundef %5) unnamed_addr #2 {
  %7 = getelementptr inbounds %struct.bcmgenet_priv, ptr %0, i32 0, i32 14
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %8, i32 0, i32 7
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  %12 = mul i32 %11, %1
  %13 = lshr i32 %2, 1
  %14 = add i32 %12, %13
  %15 = shl i32 %14, 2
  %16 = load ptr, ptr %0, align 8
  %17 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %8, i32 0, i32 10
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr i8, ptr %16, i32 %18
  %20 = getelementptr i8, ptr %19, i32 %15
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #20, !srcloc !10
  %22 = icmp eq i32 %5, 0
  br i1 %22, label %95, label %23

23:                                               ; preds = %90, %6
  %24 = phi i32 [ %30, %90 ], [ %5, %6 ]
  %25 = phi i32 [ %92, %90 ], [ %21, %6 ]
  %26 = phi i32 [ %91, %90 ], [ %14, %6 ]
  %27 = phi ptr [ %93, %90 ], [ %4, %6 ]
  %28 = phi ptr [ %94, %90 ], [ %3, %6 ]
  %29 = phi i32 [ %31, %90 ], [ %2, %6 ]
  %30 = add i32 %24, -1
  %31 = add i32 %29, 1
  %32 = and i32 %29, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %66, label %34

34:                                               ; preds = %23
  %35 = and i32 %25, -196864
  %36 = load i8, ptr %28, align 1
  %37 = zext i8 %36 to i32
  %38 = or i32 %35, %37
  %39 = load i8, ptr %27, align 1
  switch i8 %39, label %46 [
    i8 -1, label %40
    i8 -16, label %42
    i8 15, label %44
  ]

40:                                               ; preds = %34
  %41 = or i32 %38, 196608
  br label %46

42:                                               ; preds = %34
  %43 = or i32 %38, 131072
  br label %46

44:                                               ; preds = %34
  %45 = or i32 %38, 65536
  br label %46

46:                                               ; preds = %44, %42, %40, %34
  %47 = phi i32 [ %38, %34 ], [ %45, %44 ], [ %43, %42 ], [ %41, %40 ]
  %48 = shl i32 %26, 2
  %49 = load ptr, ptr %0, align 8
  %50 = load ptr, ptr %7, align 8
  %51 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %50, i32 0, i32 10
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr i8, ptr %49, i32 %52
  %54 = getelementptr i8, ptr %53, i32 %48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %47) #20, !srcloc !16
  %55 = icmp eq i32 %30, 0
  br i1 %55, label %95, label %56

56:                                               ; preds = %46
  %57 = add i32 %26, 1
  %58 = shl i32 %57, 2
  %59 = load ptr, ptr %0, align 8
  %60 = load ptr, ptr %7, align 8
  %61 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %60, i32 0, i32 10
  %62 = load i32, ptr %61, align 4
  %63 = getelementptr i8, ptr %59, i32 %62
  %64 = getelementptr i8, ptr %63, i32 %58
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #20, !srcloc !10
  br label %90

66:                                               ; preds = %23
  %67 = and i32 %25, -851713
  %68 = load i8, ptr %28, align 1
  %69 = zext i8 %68 to i32
  %70 = shl nuw nsw i32 %69, 8
  %71 = or i32 %70, %67
  %72 = load i8, ptr %27, align 1
  switch i8 %72, label %79 [
    i8 -1, label %73
    i8 -16, label %75
    i8 15, label %77
  ]

73:                                               ; preds = %66
  %74 = or i32 %71, 786432
  br label %79

75:                                               ; preds = %66
  %76 = or i32 %71, 524288
  br label %79

77:                                               ; preds = %66
  %78 = or i32 %71, 262144
  br label %79

79:                                               ; preds = %77, %75, %73, %66
  %80 = phi i32 [ %71, %66 ], [ %78, %77 ], [ %76, %75 ], [ %74, %73 ]
  %81 = icmp eq i32 %30, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %79
  %83 = shl i32 %26, 2
  %84 = load ptr, ptr %0, align 8
  %85 = load ptr, ptr %7, align 8
  %86 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %85, i32 0, i32 10
  %87 = load i32, ptr %86, align 4
  %88 = getelementptr i8, ptr %84, i32 %87
  %89 = getelementptr i8, ptr %88, i32 %83
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %89, i32 %80) #20, !srcloc !16
  br label %95

90:                                               ; preds = %79, %56
  %91 = phi i32 [ %57, %56 ], [ %26, %79 ]
  %92 = phi i32 [ %65, %56 ], [ %80, %79 ]
  %93 = getelementptr i8, ptr %27, i32 1
  %94 = getelementptr i8, ptr %28, i32 1
  br label %23

95:                                               ; preds = %82, %46, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_get_eee(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @bcmgenet_eee_enable_set(ptr nocapture noundef %0, i1 noundef zeroext %1) unnamed_addr #2 {
  %3 = getelementptr i8, ptr %0, i32 1408
  %4 = getelementptr i8, ptr %0, i32 16232
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %5, i32 0, i32 9
  %7 = load i16, ptr %6, align 4
  %8 = zext i16 %7 to i32
  %9 = add nuw nsw i32 %8, 20
  br i1 %1, label %10, label %24

10:                                               ; preds = %2
  %11 = getelementptr i8, ptr %0, i32 16276
  %12 = load i8, ptr %11, align 4, !range !9
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %10
  %15 = getelementptr i8, ptr %0, i32 16272
  %16 = load ptr, ptr %15, align 8
  %17 = tail call i32 @clk_prepare(ptr noundef %16) #20
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = tail call i32 @clk_enable(ptr noundef %16) #20
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  tail call void @clk_unprepare(ptr noundef %16) #20
  br label %23

23:                                               ; preds = %22, %19, %14
  store i8 1, ptr %11, align 4
  br label %24

24:                                               ; preds = %23, %10, %2
  %25 = phi i32 [ 3, %23 ], [ 3, %10 ], [ 0, %2 ]
  %26 = phi i32 [ 8, %23 ], [ 8, %10 ], [ 0, %2 ]
  %27 = load ptr, ptr %3, align 8
  %28 = getelementptr i8, ptr %27, i32 2148
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #20, !srcloc !10
  %30 = and i32 %29, -9
  %31 = or i32 %30, %26
  %32 = load ptr, ptr %3, align 8
  %33 = getelementptr i8, ptr %32, i32 2148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %31) #20, !srcloc !16
  %34 = load ptr, ptr %3, align 8
  %35 = getelementptr i8, ptr %34, i32 %9
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #20, !srcloc !10
  %37 = and i32 %36, -4
  %38 = or i32 %37, %25
  %39 = load ptr, ptr %3, align 8
  %40 = getelementptr i8, ptr %39, i32 %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %38) #20, !srcloc !16
  %41 = load ptr, ptr %3, align 8
  %42 = getelementptr i8, ptr %41, i32 924
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #20, !srcloc !10
  %44 = and i32 %43, -4
  %45 = or i32 %44, %25
  %46 = load ptr, ptr %3, align 8
  %47 = getelementptr i8, ptr %46, i32 924
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %45) #20, !srcloc !16
  br i1 %1, label %55, label %48

48:                                               ; preds = %24
  %49 = getelementptr i8, ptr %0, i32 16276
  %50 = load i8, ptr %49, align 4, !range !9
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %48
  %53 = getelementptr i8, ptr %0, i32 16272
  %54 = load ptr, ptr %53, align 8
  tail call void @clk_disable(ptr noundef %54) #20
  tail call void @clk_unprepare(ptr noundef %54) #20
  store i8 0, ptr %49, align 4
  br label %55

55:                                               ; preds = %52, %48, %24
  %56 = zext i1 %1 to i32
  %57 = getelementptr i8, ptr %0, i32 16676
  store i32 %56, ptr %57, align 4
  %58 = getelementptr i8, ptr %0, i32 16672
  store i32 %56, ptr %58, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init_eee(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_set_eee(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_ethtool_ksettings_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_ksettings_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcmgenet_open(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 1408
  %3 = getelementptr i8, ptr %0, i32 16348
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @clk_prepare(ptr noundef %4) #20
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = tail call i32 @clk_enable(ptr noundef %4) #20
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  tail call void @clk_unprepare(ptr noundef %4) #20
  br label %11

11:                                               ; preds = %10, %7, %1
  %12 = getelementptr i8, ptr %0, i32 16252
  %13 = load i8, ptr %12, align 4, !range !9
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %48, label %15

15:                                               ; preds = %11
  %16 = getelementptr i8, ptr %0, i32 16232
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %17, i32 0, i32 15
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 2
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %48, label %22

22:                                               ; preds = %15
  %23 = load ptr, ptr %2, align 8
  %24 = getelementptr i8, ptr %23, i32 128
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #20, !srcloc !10
  %26 = getelementptr i8, ptr %0, i32 1412
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 5
  br i1 %28, label %29, label %39

29:                                               ; preds = %22
  %30 = getelementptr i8, ptr %0, i32 16292
  %31 = load i8, ptr %30, align 4, !range !9
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = and i32 %25, -2036100
  %35 = or i32 %34, 256
  %36 = load ptr, ptr %2, align 8
  %37 = getelementptr i8, ptr %36, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %35) #20, !srcloc !16
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 214748000) #20
  br label %42

39:                                               ; preds = %29, %22
  %40 = and i32 %25, -4112
  %41 = or i32 %40, 8
  br label %42

42:                                               ; preds = %39, %33
  %43 = phi i32 [ %41, %39 ], [ %34, %33 ]
  %44 = load ptr, ptr %2, align 8
  %45 = getelementptr i8, ptr %44, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %43) #20, !srcloc !16
  %46 = getelementptr i8, ptr %0, i32 1416
  %47 = load ptr, ptr %46, align 8
  tail call void @bcmgenet_phy_power_set(ptr noundef %47, i1 noundef zeroext true) #20
  br label %48

48:                                               ; preds = %42, %15, %11
  %49 = getelementptr i8, ptr %0, i32 1412
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, 1
  %52 = load ptr, ptr %2, align 8
  br i1 %51, label %53, label %56

53:                                               ; preds = %48
  %54 = getelementptr i8, ptr %52, i32 772
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #20, !srcloc !10
  br label %59

56:                                               ; preds = %48
  %57 = getelementptr i8, ptr %52, i32 8
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #20, !srcloc !10
  br label %59

59:                                               ; preds = %56, %53
  %60 = phi i32 [ %55, %53 ], [ %58, %56 ]
  %61 = or i32 %60, 2
  %62 = load i32, ptr %49, align 4
  %63 = icmp eq i32 %62, 1
  %64 = load ptr, ptr %2, align 8
  br i1 %63, label %65, label %67

65:                                               ; preds = %59
  %66 = getelementptr i8, ptr %64, i32 772
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %61) #20, !srcloc !16
  br label %69

67:                                               ; preds = %59
  %68 = getelementptr i8, ptr %64, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %61) #20, !srcloc !16
  br label %69

69:                                               ; preds = %67, %65
  %70 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %70(i32 noundef 2147480) #20
  %71 = and i32 %60, -3
  %72 = load i32, ptr %49, align 4
  %73 = icmp eq i32 %72, 1
  %74 = load ptr, ptr %2, align 8
  br i1 %73, label %75, label %77

75:                                               ; preds = %69
  %76 = getelementptr i8, ptr %74, i32 772
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 %71) #20, !srcloc !16
  br label %79

77:                                               ; preds = %69
  %78 = getelementptr i8, ptr %74, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 %71) #20, !srcloc !16
  br label %79

79:                                               ; preds = %77, %75
  %80 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %80(i32 noundef 2147480) #20
  tail call fastcc void @init_umac(ptr noundef %2)
  %81 = load ptr, ptr %3, align 4
  %82 = tail call i32 @clk_prepare(ptr noundef %81) #20
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %98

84:                                               ; preds = %79
  %85 = tail call i32 @clk_enable(ptr noundef %81) #20
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %84
  %88 = load ptr, ptr %2, align 8
  %89 = getelementptr i8, ptr %88, i32 2056
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %89) #20, !srcloc !10
  %91 = getelementptr i8, ptr %0, i32 16336
  %92 = trunc i32 %90 to i8
  %93 = lshr i8 %92, 6
  %94 = and i8 %93, 1
  store i8 %94, ptr %91, align 8
  %95 = load ptr, ptr %3, align 4
  tail call void @clk_disable(ptr noundef %95) #20
  br label %96

96:                                               ; preds = %87, %84
  %97 = phi ptr [ %95, %87 ], [ %81, %84 ]
  tail call void @clk_unprepare(ptr noundef %97) #20
  br label %98

98:                                               ; preds = %96, %79
  %99 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 72
  %100 = load ptr, ptr %99, align 32
  %101 = load i32, ptr %100, align 1
  %102 = tail call i32 @llvm.bswap.i32(i32 %101) #20
  %103 = load ptr, ptr %2, align 8
  %104 = getelementptr i8, ptr %103, i32 2060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %104, i32 %102) #20, !srcloc !16
  %105 = getelementptr i8, ptr %100, i32 4
  %106 = load i16, ptr %105, align 1
  %107 = tail call i16 @llvm.bswap.i16(i16 %106) #20
  %108 = zext i16 %107 to i32
  %109 = load ptr, ptr %2, align 8
  %110 = getelementptr i8, ptr %109, i32 2064
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %110, i32 %108) #20, !srcloc !16
  %111 = tail call fastcc i32 @bcmgenet_dma_disable(ptr noundef %2)
  %112 = tail call fastcc i32 @bcmgenet_init_dma(ptr noundef %2)
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %98
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.15) #21
  br label %280

115:                                              ; preds = %98
  %116 = load ptr, ptr %2, align 8
  %117 = getelementptr i8, ptr %0, i32 16232
  %118 = load ptr, ptr %117, align 8
  %119 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %118, i32 0, i32 12
  %120 = load i32, ptr %119, align 4
  %121 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %118, i32 0, i32 14
  %122 = load i32, ptr %121, align 4
  %123 = shl i32 %122, 10
  %124 = add i32 %123, %120
  %125 = getelementptr i8, ptr %116, i32 %124
  %126 = getelementptr i8, ptr %125, i32 1088
  %127 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %128 = getelementptr i8, ptr %127, i32 1
  %129 = load i8, ptr %128, align 1
  %130 = zext i8 %129 to i32
  %131 = getelementptr i8, ptr %126, i32 %130
  %132 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %131) #20, !srcloc !10
  %133 = or i32 %132, %111
  %134 = load ptr, ptr %2, align 8
  %135 = load ptr, ptr %117, align 8
  %136 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %135, i32 0, i32 12
  %137 = load i32, ptr %136, align 4
  %138 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %135, i32 0, i32 14
  %139 = load i32, ptr %138, align 4
  %140 = shl i32 %139, 10
  %141 = add i32 %140, %137
  %142 = getelementptr i8, ptr %134, i32 %141
  %143 = getelementptr i8, ptr %142, i32 1088
  %144 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %145 = getelementptr i8, ptr %144, i32 1
  %146 = load i8, ptr %145, align 1
  %147 = zext i8 %146 to i32
  %148 = getelementptr i8, ptr %143, i32 %147
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %148, i32 %133) #20, !srcloc !16
  %149 = load ptr, ptr %2, align 8
  %150 = load ptr, ptr %117, align 8
  %151 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %150, i32 0, i32 13
  %152 = load i32, ptr %151, align 4
  %153 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %150, i32 0, i32 14
  %154 = load i32, ptr %153, align 4
  %155 = shl i32 %154, 10
  %156 = add i32 %155, %152
  %157 = getelementptr i8, ptr %149, i32 %156
  %158 = getelementptr i8, ptr %157, i32 1088
  %159 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %160 = getelementptr i8, ptr %159, i32 1
  %161 = load i8, ptr %160, align 1
  %162 = zext i8 %161 to i32
  %163 = getelementptr i8, ptr %158, i32 %162
  %164 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %163) #20, !srcloc !10
  %165 = or i32 %164, %111
  %166 = load ptr, ptr %2, align 8
  %167 = load ptr, ptr %117, align 8
  %168 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %167, i32 0, i32 13
  %169 = load i32, ptr %168, align 4
  %170 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %167, i32 0, i32 14
  %171 = load i32, ptr %170, align 4
  %172 = shl i32 %171, 10
  %173 = add i32 %172, %169
  %174 = getelementptr i8, ptr %166, i32 %173
  %175 = getelementptr i8, ptr %174, i32 1088
  %176 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %177 = getelementptr i8, ptr %176, i32 1
  %178 = load i8, ptr %177, align 1
  %179 = zext i8 %178 to i32
  %180 = getelementptr i8, ptr %175, i32 %179
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %180, i32 %165) #20, !srcloc !16
  %181 = getelementptr i8, ptr %0, i32 9288
  store volatile ptr %181, ptr %181, align 4
  %182 = getelementptr i8, ptr %0, i32 9292
  store ptr %181, ptr %182, align 4
  %183 = load i32, ptr %49, align 4
  %184 = add i32 %183, -1
  %185 = icmp ult i32 %184, 2
  br i1 %185, label %235, label %186

186:                                              ; preds = %115
  %187 = getelementptr i8, ptr %0, i32 6344
  store volatile ptr %187, ptr %187, align 4
  %188 = getelementptr i8, ptr %0, i32 6348
  store ptr %187, ptr %188, align 4
  %189 = getelementptr i8, ptr %0, i32 6520
  store i32 0, ptr %189, align 8
  %190 = getelementptr i8, ptr %0, i32 6528
  store volatile ptr %190, ptr %190, align 4
  %191 = getelementptr i8, ptr %0, i32 6532
  store ptr %190, ptr %191, align 4
  %192 = getelementptr i8, ptr %0, i32 6704
  store i32 0, ptr %192, align 8
  %193 = getelementptr i8, ptr %0, i32 6712
  store volatile ptr %193, ptr %193, align 4
  %194 = getelementptr i8, ptr %0, i32 6716
  store ptr %193, ptr %194, align 4
  %195 = getelementptr i8, ptr %0, i32 6888
  store i32 0, ptr %195, align 8
  %196 = getelementptr i8, ptr %0, i32 6896
  store volatile ptr %196, ptr %196, align 4
  %197 = getelementptr i8, ptr %0, i32 6900
  store ptr %196, ptr %197, align 4
  %198 = getelementptr i8, ptr %0, i32 7072
  store i32 0, ptr %198, align 8
  %199 = getelementptr i8, ptr %0, i32 7080
  store volatile ptr %199, ptr %199, align 4
  %200 = getelementptr i8, ptr %0, i32 7084
  store ptr %199, ptr %200, align 4
  %201 = getelementptr i8, ptr %0, i32 7256
  store i32 0, ptr %201, align 8
  %202 = getelementptr i8, ptr %0, i32 7264
  store volatile ptr %202, ptr %202, align 4
  %203 = getelementptr i8, ptr %0, i32 7268
  store ptr %202, ptr %203, align 4
  %204 = getelementptr i8, ptr %0, i32 7440
  store i32 0, ptr %204, align 8
  %205 = getelementptr i8, ptr %0, i32 7448
  store volatile ptr %205, ptr %205, align 4
  %206 = getelementptr i8, ptr %0, i32 7452
  store ptr %205, ptr %206, align 4
  %207 = getelementptr i8, ptr %0, i32 7624
  store i32 0, ptr %207, align 8
  %208 = getelementptr i8, ptr %0, i32 7632
  store volatile ptr %208, ptr %208, align 4
  %209 = getelementptr i8, ptr %0, i32 7636
  store ptr %208, ptr %209, align 4
  %210 = getelementptr i8, ptr %0, i32 7808
  store i32 0, ptr %210, align 8
  %211 = getelementptr i8, ptr %0, i32 7816
  store volatile ptr %211, ptr %211, align 4
  %212 = getelementptr i8, ptr %0, i32 7820
  store ptr %211, ptr %212, align 4
  %213 = getelementptr i8, ptr %0, i32 7992
  store i32 0, ptr %213, align 8
  %214 = getelementptr i8, ptr %0, i32 8000
  store volatile ptr %214, ptr %214, align 4
  %215 = getelementptr i8, ptr %0, i32 8004
  store ptr %214, ptr %215, align 4
  %216 = getelementptr i8, ptr %0, i32 8176
  store i32 0, ptr %216, align 8
  %217 = getelementptr i8, ptr %0, i32 8184
  store volatile ptr %217, ptr %217, align 4
  %218 = getelementptr i8, ptr %0, i32 8188
  store ptr %217, ptr %218, align 4
  %219 = getelementptr i8, ptr %0, i32 8360
  store i32 0, ptr %219, align 8
  %220 = getelementptr i8, ptr %0, i32 8368
  store volatile ptr %220, ptr %220, align 4
  %221 = getelementptr i8, ptr %0, i32 8372
  store ptr %220, ptr %221, align 4
  %222 = getelementptr i8, ptr %0, i32 8544
  store i32 0, ptr %222, align 8
  %223 = getelementptr i8, ptr %0, i32 8552
  store volatile ptr %223, ptr %223, align 4
  %224 = getelementptr i8, ptr %0, i32 8556
  store ptr %223, ptr %224, align 4
  %225 = getelementptr i8, ptr %0, i32 8728
  store i32 0, ptr %225, align 8
  %226 = getelementptr i8, ptr %0, i32 8736
  store volatile ptr %226, ptr %226, align 4
  %227 = getelementptr i8, ptr %0, i32 8740
  store ptr %226, ptr %227, align 4
  %228 = getelementptr i8, ptr %0, i32 8912
  store i32 0, ptr %228, align 8
  %229 = getelementptr i8, ptr %0, i32 8920
  store volatile ptr %229, ptr %229, align 4
  %230 = getelementptr i8, ptr %0, i32 8924
  store ptr %229, ptr %230, align 4
  %231 = getelementptr i8, ptr %0, i32 9096
  store i32 0, ptr %231, align 8
  %232 = getelementptr i8, ptr %0, i32 9104
  store volatile ptr %232, ptr %232, align 4
  %233 = getelementptr i8, ptr %0, i32 9108
  store ptr %232, ptr %233, align 4
  %234 = getelementptr i8, ptr %0, i32 9280
  store i32 0, ptr %234, align 8
  tail call fastcc void @bcmgenet_hfb_clear(ptr noundef %2) #20
  br label %235

235:                                              ; preds = %186, %115
  %236 = getelementptr i8, ptr %0, i32 16312
  %237 = load i32, ptr %236, align 8
  %238 = tail call i32 @request_threaded_irq(i32 noundef %237, ptr noundef nonnull @bcmgenet_isr0, ptr noundef null, i32 noundef 128, ptr noundef %0, ptr noundef %2) #20
  %239 = icmp slt i32 %238, 0
  br i1 %239, label %240, label %242

240:                                              ; preds = %235
  %241 = load i32, ptr %236, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.16, i32 noundef %241) #21
  br label %278

242:                                              ; preds = %235
  %243 = getelementptr i8, ptr %0, i32 16316
  %244 = load i32, ptr %243, align 4
  %245 = tail call i32 @request_threaded_irq(i32 noundef %244, ptr noundef nonnull @bcmgenet_isr1, ptr noundef null, i32 noundef 128, ptr noundef %0, ptr noundef %2) #20
  %246 = icmp slt i32 %245, 0
  br i1 %246, label %247, label %249

247:                                              ; preds = %242
  %248 = load i32, ptr %243, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.16, i32 noundef %248) #21
  br label %274

249:                                              ; preds = %242
  %250 = tail call i32 @bcmgenet_mii_probe(ptr noundef %0) #20
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %255, label %252

252:                                              ; preds = %249
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.17) #21
  %253 = load i32, ptr %243, align 4
  %254 = tail call ptr @free_irq(i32 noundef %253, ptr noundef %2) #20
  br label %274

255:                                              ; preds = %249
  %256 = getelementptr i8, ptr %0, i32 16236
  %257 = load i8, ptr %256, align 4
  %258 = and i8 %257, 4
  %259 = icmp ne i8 %258, 0
  %260 = and i8 %257, 2
  %261 = icmp ne i8 %260, 0
  tail call void @bcmgenet_phy_pause_set(ptr noundef %0, i1 noundef zeroext %259, i1 noundef zeroext %261) #20
  tail call fastcc void @bcmgenet_netif_start(ptr noundef %0)
  %262 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 88
  %263 = load i32, ptr %262, align 4
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %312, label %265

265:                                              ; preds = %255
  %266 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  br label %267

267:                                              ; preds = %267, %265
  %268 = phi i32 [ 0, %265 ], [ %271, %267 ]
  %269 = load ptr, ptr %266, align 64
  %270 = getelementptr %struct.netdev_queue, ptr %269, i32 %268, i32 12
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %270) #20
  %271 = add nuw i32 %268, 1
  %272 = load i32, ptr %262, align 4
  %273 = icmp ult i32 %271, %272
  br i1 %273, label %267, label %312

274:                                              ; preds = %252, %247
  %275 = phi i32 [ %245, %247 ], [ %250, %252 ]
  %276 = load i32, ptr %236, align 8
  %277 = tail call ptr @free_irq(i32 noundef %276, ptr noundef %2) #20
  br label %278

278:                                              ; preds = %274, %240
  %279 = phi i32 [ %238, %240 ], [ %275, %274 ]
  tail call fastcc void @bcmgenet_dma_teardown(ptr noundef %2)
  tail call fastcc void @bcmgenet_fini_dma(ptr noundef %2)
  br label %280

280:                                              ; preds = %278, %114
  %281 = phi i32 [ %112, %114 ], [ %279, %278 ]
  %282 = load i8, ptr %12, align 4, !range !9
  %283 = icmp eq i8 %282, 0
  br i1 %283, label %310, label %284

284:                                              ; preds = %280
  %285 = getelementptr i8, ptr %0, i32 16232
  %286 = load ptr, ptr %285, align 8
  %287 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %286, i32 0, i32 15
  %288 = load i32, ptr %287, align 4
  %289 = and i32 %288, 2
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %310, label %291

291:                                              ; preds = %284
  %292 = load ptr, ptr %2, align 8
  %293 = getelementptr i8, ptr %292, i32 128
  %294 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %293) #20, !srcloc !10
  %295 = load i32, ptr %49, align 4
  %296 = icmp eq i32 %295, 5
  br i1 %296, label %297, label %301

297:                                              ; preds = %291
  %298 = getelementptr i8, ptr %0, i32 16292
  %299 = load i8, ptr %298, align 4, !range !9
  %300 = icmp eq i8 %299, 0
  br i1 %300, label %302, label %301

301:                                              ; preds = %297, %291
  br label %302

302:                                              ; preds = %301, %297
  %303 = phi i32 [ 4, %301 ], [ 2031744, %297 ]
  %304 = or i32 %294, %303
  %305 = or i32 %304, 3
  %306 = load ptr, ptr %2, align 8
  %307 = getelementptr i8, ptr %306, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %307, i32 %305) #20, !srcloc !16
  %308 = getelementptr i8, ptr %0, i32 1416
  %309 = load ptr, ptr %308, align 8
  tail call void @bcmgenet_phy_power_set(ptr noundef %309, i1 noundef zeroext false) #20
  br label %310

310:                                              ; preds = %302, %284, %280
  %311 = load ptr, ptr %3, align 4
  tail call void @clk_disable(ptr noundef %311) #20
  tail call void @clk_unprepare(ptr noundef %311) #20
  br label %312

312:                                              ; preds = %310, %267, %255
  %313 = phi i32 [ %281, %310 ], [ 0, %255 ], [ 0, %267 ]
  ret i32 %313
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcmgenet_close(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 1408
  tail call fastcc void @bcmgenet_netif_stop(ptr noundef %0)
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %4 = load ptr, ptr %3, align 8
  tail call void @phy_disconnect(ptr noundef %4) #20
  %5 = getelementptr i8, ptr %0, i32 16312
  %6 = load i32, ptr %5, align 8
  %7 = tail call ptr @free_irq(i32 noundef %6, ptr noundef %2) #20
  %8 = getelementptr i8, ptr %0, i32 16316
  %9 = load i32, ptr %8, align 4
  %10 = tail call ptr @free_irq(i32 noundef %9, ptr noundef %2) #20
  %11 = getelementptr i8, ptr %0, i32 16252
  %12 = load i8, ptr %11, align 4, !range !9
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %41, label %14

14:                                               ; preds = %1
  %15 = getelementptr i8, ptr %0, i32 16232
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %16, i32 0, i32 15
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 2
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %41, label %21

21:                                               ; preds = %14
  %22 = load ptr, ptr %2, align 8
  %23 = getelementptr i8, ptr %22, i32 128
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #20, !srcloc !10
  %25 = getelementptr i8, ptr %0, i32 1412
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 5
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = getelementptr i8, ptr %0, i32 16292
  %30 = load i8, ptr %29, align 4, !range !9
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28, %21
  br label %33

33:                                               ; preds = %32, %28
  %34 = phi i32 [ 4, %32 ], [ 2031744, %28 ]
  %35 = or i32 %24, %34
  %36 = or i32 %35, 3
  %37 = load ptr, ptr %2, align 8
  %38 = getelementptr i8, ptr %37, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %36) #20, !srcloc !16
  %39 = getelementptr i8, ptr %0, i32 1416
  %40 = load ptr, ptr %39, align 8
  tail call void @bcmgenet_phy_power_set(ptr noundef %40, i1 noundef zeroext false) #20
  br label %41

41:                                               ; preds = %33, %14, %1
  %42 = getelementptr i8, ptr %0, i32 16348
  %43 = load ptr, ptr %42, align 4
  tail call void @clk_disable(ptr noundef %43) #20
  tail call void @clk_unprepare(ptr noundef %43) #20
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcmgenet_xmit(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr i8, ptr %1, i32 1408
  %4 = getelementptr i8, ptr %1, i32 16352
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %7 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 9
  %8 = load i16, ptr %7, align 4
  %9 = icmp eq i16 %8, 0
  %10 = zext i16 %8 to i32
  %11 = add nsw i32 %10, -1
  %12 = select i1 %9, i32 16, i32 %11
  %13 = getelementptr %struct.bcmgenet_priv, ptr %3, i32 0, i32 6, i32 %12
  %14 = getelementptr %struct.bcmgenet_priv, ptr %3, i32 0, i32 6, i32 %12, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 87
  %17 = load ptr, ptr %16, align 64
  %18 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.skb_shared_info, ptr %19, i32 0, i32 2
  %21 = load i8, ptr %20, align 2
  %22 = zext i8 %21 to i32
  tail call void @_raw_spin_lock(ptr noundef %13) #20
  %23 = getelementptr %struct.bcmgenet_priv, ptr %3, i32 0, i32 6, i32 %12, i32 10
  %24 = load i32, ptr %23, align 8
  %25 = add nuw nsw i32 %22, 1
  %26 = icmp ugt i32 %24, %25
  br i1 %26, label %34, label %27

27:                                               ; preds = %2
  %28 = getelementptr %struct.netdev_queue, ptr %17, i32 %15, i32 12
  %29 = load volatile i32, ptr %28, align 4
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %303

32:                                               ; preds = %27
  tail call void @_set_bit(i32 noundef 0, ptr noundef %28) #20
  %33 = load i32, ptr %14, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.bcmgenet_xmit, i32 noundef %12, i32 noundef %33) #21
  br label %303

34:                                               ; preds = %2
  %35 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %36 = load i32, ptr %35, align 8
  %37 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 8
  store i32 %36, ptr %37, align 8
  %38 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %41 = load ptr, ptr %40, align 8
  %42 = ptrtoint ptr %39 to i32
  %43 = ptrtoint ptr %41 to i32
  %44 = sub i32 %42, %43
  %45 = icmp ult i32 %44, 64
  br i1 %45, label %46, label %60, !prof !18

46:                                               ; preds = %34
  %47 = tail call ptr @skb_realloc_headroom(ptr noundef %0, i32 noundef 64) #20
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %56

49:                                               ; preds = %46
  tail call void @__dev_kfree_skb_any(ptr noundef %0, i32 noundef 1) #20
  %50 = getelementptr i8, ptr %1, i32 16652
  %51 = load i32, ptr %50, align 4
  %52 = add i32 %51, 1
  store i32 %52, ptr %50, align 4
  %53 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 7
  %54 = load i32, ptr %53, align 4
  %55 = add i32 %54, 1
  store i32 %55, ptr %53, align 4
  br label %303

56:                                               ; preds = %46
  tail call void @__dev_kfree_skb_any(ptr noundef %0, i32 noundef 0) #20
  %57 = getelementptr i8, ptr %1, i32 16648
  %58 = load i32, ptr %57, align 8
  %59 = add i32 %58, 1
  store i32 %59, ptr %57, align 8
  br label %60

60:                                               ; preds = %56, %34
  %61 = phi ptr [ %47, %56 ], [ %0, %34 ]
  %62 = tail call ptr @skb_push(ptr noundef %61, i32 noundef 64) #20
  %63 = getelementptr inbounds %struct.sk_buff, ptr %61, i32 0, i32 17
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.sk_buff, ptr %61, i32 0, i32 13
  %66 = load i16, ptr %65, align 8
  %67 = and i16 %66, 96
  %68 = icmp eq i16 %67, 96
  br i1 %68, label %69, label %115

69:                                               ; preds = %60
  %70 = getelementptr inbounds %struct.sk_buff, ptr %61, i32 0, i32 13, i32 0, i32 16
  %71 = load i16, ptr %70, align 8
  switch i16 %71, label %72 [
    i16 8, label %75
    i16 -8826, label %84
  ]

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.sk_buff, ptr %61, i32 0, i32 16
  %74 = load ptr, ptr %73, align 8
  br label %93

75:                                               ; preds = %69
  %76 = getelementptr inbounds %struct.sk_buff, ptr %61, i32 0, i32 16
  %77 = load ptr, ptr %76, align 8
  %78 = getelementptr inbounds %struct.sk_buff, ptr %61, i32 0, i32 13, i32 0, i32 18
  %79 = load i16, ptr %78, align 4
  %80 = zext i16 %79 to i32
  %81 = getelementptr i8, ptr %77, i32 %80
  %82 = getelementptr inbounds %struct.iphdr, ptr %81, i32 0, i32 6
  %83 = load i8, ptr %82, align 1
  br label %93

84:                                               ; preds = %69
  %85 = getelementptr inbounds %struct.sk_buff, ptr %61, i32 0, i32 16
  %86 = load ptr, ptr %85, align 8
  %87 = getelementptr inbounds %struct.sk_buff, ptr %61, i32 0, i32 13, i32 0, i32 18
  %88 = load i16, ptr %87, align 4
  %89 = zext i16 %88 to i32
  %90 = getelementptr i8, ptr %86, i32 %89
  %91 = getelementptr inbounds %struct.ipv6hdr, ptr %90, i32 0, i32 3
  %92 = load i8, ptr %91, align 2
  br label %93

93:                                               ; preds = %84, %75, %72
  %94 = phi ptr [ %86, %84 ], [ %77, %75 ], [ %74, %72 ]
  %95 = phi i8 [ %92, %84 ], [ %83, %75 ], [ 0, %72 ]
  %96 = getelementptr inbounds %struct.sk_buff, ptr %61, i32 0, i32 13, i32 0, i32 4
  %97 = load i16, ptr %96, align 4
  %98 = zext i16 %97 to i32
  %99 = ptrtoint ptr %64 to i32
  %100 = ptrtoint ptr %94 to i32
  %101 = sub i32 65472, %99
  %102 = add i32 %101, %100
  %103 = add i32 %102, %98
  %104 = and i32 %103, 65535
  %105 = shl i32 %103, 16
  %106 = getelementptr inbounds %struct.anon.58, ptr %96, i32 0, i32 1
  %107 = load i16, ptr %106, align 2
  %108 = zext i16 %107 to i32
  %109 = add nuw nsw i32 %104, %108
  %110 = icmp eq i8 %95, 17
  %111 = select i1 %110, i32 -2147450880, i32 -2147483648
  %112 = or i32 %105, %111
  %113 = or i32 %112, %109
  %114 = getelementptr inbounds %struct.status_64, ptr %64, i32 0, i32 4
  store i32 %113, ptr %114, align 4
  br label %115

115:                                              ; preds = %93, %60
  %116 = icmp eq ptr %61, null
  br i1 %116, label %303, label %117

117:                                              ; preds = %115
  %118 = getelementptr inbounds %struct.bcmgenet_tx_ring, ptr %13, i32 0, i32 6
  %119 = getelementptr inbounds %struct.bcmgenet_tx_ring, ptr %13, i32 0, i32 11
  %120 = getelementptr inbounds %struct.bcmgenet_tx_ring, ptr %13, i32 0, i32 13
  %121 = getelementptr inbounds %struct.bcmgenet_tx_ring, ptr %13, i32 0, i32 14
  %122 = getelementptr inbounds %struct.sk_buff, ptr %61, i32 0, i32 15
  %123 = getelementptr inbounds %struct.sk_buff, ptr %61, i32 0, i32 3
  %124 = getelementptr inbounds %struct.sk_buff, ptr %61, i32 0, i32 5
  %125 = getelementptr inbounds %struct.sk_buff, ptr %61, i32 0, i32 6
  %126 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3, i32 3
  %127 = getelementptr i8, ptr %1, i32 16232
  br label %128

128:                                              ; preds = %219, %117
  %129 = phi i32 [ 0, %117 ], [ %227, %219 ]
  %130 = load ptr, ptr %118, align 8
  %131 = load i32, ptr %119, align 4
  %132 = load i32, ptr %120, align 4
  %133 = load i32, ptr %121, align 8
  %134 = icmp eq i32 %131, %133
  %135 = add i32 %131, 1
  %136 = select i1 %134, i32 %132, i32 %135
  store i32 %136, ptr %119, align 4
  %137 = sub i32 %131, %132
  %138 = getelementptr %struct.enet_cb, ptr %130, i32 %137
  %139 = icmp eq ptr %138, null
  br i1 %139, label %140, label %141, !prof !18

140:                                              ; preds = %128
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/broadcom/genet/bcmgenet.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2098, 0\0A.popsection", ""() #20, !srcloc !19
  unreachable

141:                                              ; preds = %128
  %142 = icmp eq i32 %129, 0
  br i1 %142, label %143, label %169

143:                                              ; preds = %141
  store ptr %138, ptr %123, align 8
  %144 = load i32, ptr %124, align 8
  %145 = load i32, ptr %125, align 4
  %146 = sub i32 %144, %145
  %147 = load ptr, ptr %63, align 4
  %148 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %147) #20
  %149 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %150 = xor i1 %149, true
  %151 = select i1 %148, i1 %150, i1 false
  br i1 %151, label %152, label %160, !prof !18

152:                                              ; preds = %143
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %153 = tail call ptr @dev_driver_string(ptr noundef %6) #20
  %154 = load ptr, ptr %126, align 4
  %155 = icmp eq ptr %154, null
  br i1 %155, label %156, label %158

156:                                              ; preds = %152
  %157 = load ptr, ptr %6, align 4
  br label %158

158:                                              ; preds = %156, %152
  %159 = phi ptr [ %157, %156 ], [ %154, %152 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.22, ptr noundef %153, ptr noundef %159) #20
  br label %160

160:                                              ; preds = %158, %143
  br i1 %148, label %183, label %161

161:                                              ; preds = %160
  %162 = load ptr, ptr @mem_map, align 4
  %163 = ptrtoint ptr %147 to i32
  %164 = add i32 %163, 1073741824
  %165 = lshr i32 %164, 12
  %166 = getelementptr %struct.page, ptr %162, i32 %165
  %167 = and i32 %163, 4095
  %168 = tail call i32 @dma_map_page_attrs(ptr noundef %6, ptr noundef %166, i32 noundef %167, i32 noundef %146, i32 noundef 1, i32 noundef 0) #20
  br label %179

169:                                              ; preds = %141
  %170 = load ptr, ptr %122, align 4
  %171 = add nsw i32 %129, -1
  %172 = getelementptr %struct.skb_shared_info, ptr %170, i32 0, i32 12, i32 %171
  %173 = getelementptr %struct.skb_shared_info, ptr %170, i32 0, i32 12, i32 %171, i32 1
  %174 = load i32, ptr %173, align 4
  %175 = load ptr, ptr %172, align 4
  %176 = getelementptr %struct.skb_shared_info, ptr %170, i32 0, i32 12, i32 %171, i32 2
  %177 = load i32, ptr %176, align 4
  %178 = tail call i32 @dma_map_page_attrs(ptr noundef %6, ptr noundef %175, i32 noundef %177, i32 noundef %174, i32 noundef 1, i32 noundef 0) #20
  br label %179

179:                                              ; preds = %169, %161
  %180 = phi i32 [ %178, %169 ], [ %168, %161 ]
  %181 = phi i32 [ %174, %169 ], [ %146, %161 ]
  %182 = icmp eq i32 %180, -1
  br i1 %182, label %183, label %203

183:                                              ; preds = %179, %160
  %184 = getelementptr i8, ptr %1, i32 16644
  %185 = load i32, ptr %184, align 4
  %186 = add i32 %185, 1
  store i32 %186, ptr %184, align 4
  %187 = getelementptr i8, ptr %1, i32 16344
  %188 = load i32, ptr %187, align 8
  %189 = and i32 %188, 128
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %192, label %191

191:                                              ; preds = %183
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.28) #21
  br label %192

192:                                              ; preds = %191, %183
  %193 = load i32, ptr %119, align 4
  %194 = load i32, ptr %120, align 4
  %195 = icmp eq i32 %193, %194
  br i1 %195, label %196, label %198

196:                                              ; preds = %192
  %197 = load i32, ptr %121, align 8
  br label %200

198:                                              ; preds = %192
  %199 = add i32 %193, -1
  br label %200

200:                                              ; preds = %198, %196
  %201 = phi i32 [ %199, %198 ], [ %197, %196 ]
  store i32 %201, ptr %119, align 4
  %202 = icmp eq i32 %129, 0
  br i1 %202, label %341, label %307

203:                                              ; preds = %179
  %204 = getelementptr %struct.enet_cb, ptr %130, i32 %137, i32 2
  store i32 %180, ptr %204, align 4
  %205 = getelementptr %struct.enet_cb, ptr %130, i32 %137, i32 3
  store i32 %181, ptr %205, align 4
  store ptr %61, ptr %138, align 4
  %206 = shl i32 %181, 16
  %207 = load ptr, ptr %127, align 8
  %208 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %207, i32 0, i32 8
  %209 = load i8, ptr %208, align 2
  %210 = zext i8 %209 to i32
  %211 = shl nuw nsw i32 %210, 7
  %212 = or i32 %211, %206
  br i1 %142, label %213, label %219

213:                                              ; preds = %203
  %214 = load i16, ptr %65, align 8
  %215 = and i16 %214, 96
  %216 = icmp eq i16 %215, 96
  %217 = select i1 %216, i32 8272, i32 8256
  %218 = or i32 %217, %212
  br label %219

219:                                              ; preds = %213, %203
  %220 = phi i32 [ %212, %203 ], [ %218, %213 ]
  %221 = icmp eq i32 %129, %22
  %222 = or i32 %220, 16384
  %223 = select i1 %221, i32 %222, i32 %220
  %224 = getelementptr %struct.enet_cb, ptr %130, i32 %137, i32 1
  %225 = load ptr, ptr %224, align 4
  %226 = getelementptr i8, ptr %225, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %226, i32 %180) #20, !srcloc !16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %225, i32 %223) #20, !srcloc !16
  %227 = add nuw nsw i32 %129, 1
  %228 = icmp eq i32 %129, %22
  br i1 %228, label %229, label %128

229:                                              ; preds = %219
  %230 = getelementptr inbounds %struct.sk_buff, ptr %61, i32 0, i32 3, i32 4
  store ptr %138, ptr %230, align 4
  %231 = load ptr, ptr %122, align 4
  %232 = getelementptr inbounds %struct.skb_shared_info, ptr %231, i32 0, i32 3
  %233 = load i8, ptr %232, align 1
  %234 = and i8 %233, 2
  %235 = icmp eq i8 %234, 0
  br i1 %235, label %237, label %236

236:                                              ; preds = %229
  tail call void @skb_tstamp_tx(ptr noundef nonnull %61, ptr noundef null) #20
  br label %237

237:                                              ; preds = %236, %229
  %238 = load i32, ptr %23, align 8
  %239 = sub i32 %238, %25
  store i32 %239, ptr %23, align 8
  %240 = getelementptr %struct.bcmgenet_priv, ptr %3, i32 0, i32 6, i32 %12, i32 12
  %241 = load i32, ptr %240, align 8
  %242 = add i32 %241, %25
  %243 = and i32 %242, 65535
  store i32 %243, ptr %240, align 8
  %244 = getelementptr inbounds %struct.sk_buff, ptr %61, i32 0, i32 3, i32 8
  %245 = load i32, ptr %244, align 8
  %246 = getelementptr %struct.netdev_queue, ptr %17, i32 %15, i32 14
  %247 = icmp ugt i32 %245, 268435455
  br i1 %247, label %248, label %249, !prof !18

248:                                              ; preds = %237
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/dynamic_queue_limits.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #20, !srcloc !20
  unreachable

249:                                              ; preds = %237
  %250 = getelementptr %struct.netdev_queue, ptr %17, i32 %15, i32 14, i32 2
  store i32 %245, ptr %250, align 8
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !21
  %251 = load i32, ptr %246, align 64
  %252 = add i32 %251, %245
  store i32 %252, ptr %246, align 64
  %253 = getelementptr %struct.netdev_queue, ptr %17, i32 %15, i32 14, i32 1
  %254 = load volatile i32, ptr %253, align 4
  %255 = load volatile i32, ptr %246, align 64
  %256 = sub i32 %254, %255
  %257 = icmp sgt i32 %256, -1
  br i1 %257, label %265, label %258, !prof !22

258:                                              ; preds = %249
  %259 = getelementptr %struct.netdev_queue, ptr %17, i32 %15, i32 12
  tail call void @_set_bit(i32 noundef 1, ptr noundef %259) #20
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !23
  %260 = load volatile i32, ptr %253, align 4
  %261 = load volatile i32, ptr %246, align 64
  %262 = sub i32 %260, %261
  %263 = icmp sgt i32 %262, -1
  br i1 %263, label %264, label %265, !prof !18

264:                                              ; preds = %258
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %259) #20
  br label %265

265:                                              ; preds = %264, %258, %249
  %266 = load i32, ptr %23, align 8
  %267 = icmp ult i32 %266, 19
  br i1 %267, label %268, label %270

268:                                              ; preds = %265
  %269 = getelementptr %struct.netdev_queue, ptr %17, i32 %15, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %269) #20
  br label %270

270:                                              ; preds = %268, %265
  %271 = tail call i32 @llvm.read_register.i32(metadata !0) #20
  %272 = inttoptr i32 %271 to ptr
  %273 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %272) #19, !srcloc !24
  %274 = add i32 %273, ptrtoint (ptr getelementptr inbounds (%struct.softnet_data, ptr @softnet_data, i32 0, i32 10, i32 1) to i32)
  %275 = inttoptr i32 %274 to ptr
  %276 = load i8, ptr %275, align 1
  %277 = icmp eq i8 %276, 0
  br i1 %277, label %283, label %278

278:                                              ; preds = %270
  %279 = getelementptr %struct.netdev_queue, ptr %17, i32 %15, i32 12
  %280 = load i32, ptr %279, align 4
  %281 = and i32 %280, 3
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %303, label %283

283:                                              ; preds = %278, %270
  %284 = getelementptr %struct.bcmgenet_priv, ptr %3, i32 0, i32 6, i32 %12, i32 4
  %285 = load i32, ptr %284, align 8
  %286 = load i32, ptr %240, align 8
  %287 = load ptr, ptr %3, align 8
  %288 = load ptr, ptr %127, align 8
  %289 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %288, i32 0, i32 13
  %290 = load i32, ptr %289, align 4
  %291 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %288, i32 0, i32 14
  %292 = load i32, ptr %291, align 4
  %293 = shl i32 %292, 10
  %294 = add i32 %293, %290
  %295 = getelementptr i8, ptr %287, i32 %294
  %296 = shl i32 %285, 6
  %297 = getelementptr i8, ptr %295, i32 %296
  %298 = load ptr, ptr @genet_dma_ring_regs, align 4
  %299 = getelementptr i8, ptr %298, i32 3
  %300 = load i8, ptr %299, align 1
  %301 = zext i8 %300 to i32
  %302 = getelementptr i8, ptr %297, i32 %301
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %302, i32 %286) #20, !srcloc !16
  br label %303

303:                                              ; preds = %341, %283, %278, %115, %49, %32, %27
  %304 = phi i32 [ 0, %341 ], [ 0, %283 ], [ 0, %278 ], [ 16, %32 ], [ 16, %27 ], [ 0, %115 ], [ 0, %49 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !11
  %305 = load i16, ptr %13, align 4
  %306 = add i16 %305, 1
  store i16 %306, ptr %13, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #20, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #20, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !25
  ret i32 %304

307:                                              ; preds = %338, %200
  %308 = phi i32 [ %340, %338 ], [ %194, %200 ]
  %309 = phi i32 [ %339, %338 ], [ %201, %200 ]
  %310 = phi i32 [ %311, %338 ], [ %129, %200 ]
  %311 = add nsw i32 %310, -1
  %312 = load ptr, ptr %118, align 8
  %313 = icmp eq i32 %309, %308
  br i1 %313, label %314, label %316

314:                                              ; preds = %307
  %315 = load i32, ptr %121, align 8
  br label %318

316:                                              ; preds = %307
  %317 = add i32 %309, -1
  br label %318

318:                                              ; preds = %316, %314
  %319 = phi i32 [ %317, %316 ], [ %315, %314 ]
  store i32 %319, ptr %119, align 4
  %320 = sub i32 %309, %308
  %321 = getelementptr %struct.enet_cb, ptr %312, i32 %320
  %322 = load ptr, ptr %321, align 4
  %323 = icmp eq ptr %322, null
  br i1 %323, label %327, label %324

324:                                              ; preds = %318
  store ptr null, ptr %321, align 4
  %325 = getelementptr %struct.enet_cb, ptr %312, i32 %320, i32 2
  %326 = load i32, ptr %325, align 4
  br label %331

327:                                              ; preds = %318
  %328 = getelementptr %struct.enet_cb, ptr %312, i32 %320, i32 2
  %329 = load i32, ptr %328, align 4
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %336, label %331

331:                                              ; preds = %327, %324
  %332 = phi i32 [ %326, %324 ], [ %329, %327 ]
  %333 = phi ptr [ %325, %324 ], [ %328, %327 ]
  %334 = getelementptr %struct.enet_cb, ptr %312, i32 %320, i32 3
  %335 = load i32, ptr %334, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %6, i32 noundef %332, i32 noundef %335, i32 noundef 1, i32 noundef 0) #20
  store i32 0, ptr %333, align 4
  br label %336

336:                                              ; preds = %331, %327
  %337 = icmp sgt i32 %310, 1
  br i1 %337, label %338, label %341

338:                                              ; preds = %336
  %339 = load i32, ptr %119, align 4
  %340 = load i32, ptr %120, align 4
  br label %307

341:                                              ; preds = %336, %200
  tail call void @consume_skb(ptr noundef nonnull %61) #20
  br label %303
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcmgenet_set_rx_mode(ptr noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 1408
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 60
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 60, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 61
  %7 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 61, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, %5
  %10 = add i32 %9, 2
  %11 = load ptr, ptr %2, align 8
  %12 = getelementptr i8, ptr %11, i32 2056
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #20, !srcloc !10
  %14 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 14
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 768
  %17 = icmp ne i32 %16, 0
  %18 = icmp sgt i32 %10, 17
  %19 = select i1 %17, i1 true, i1 %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  %21 = or i32 %13, 16
  %22 = load ptr, ptr %2, align 8
  %23 = getelementptr i8, ptr %22, i32 2056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #20, !srcloc !16
  %24 = load ptr, ptr %2, align 8
  %25 = getelementptr i8, ptr %24, i32 3664
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 0) #20, !srcloc !16
  br label %185

26:                                               ; preds = %1
  %27 = and i32 %13, -17
  %28 = load ptr, ptr %2, align 8
  %29 = getelementptr i8, ptr %28, i32 2056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #20, !srcloc !16
  %30 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 83
  %31 = load i8, ptr %30, align 1
  %32 = zext i8 %31 to i32
  %33 = shl nuw nsw i32 %32, 8
  %34 = getelementptr %struct.net_device, ptr %0, i32 0, i32 83, i32 1
  %35 = load i8, ptr %34, align 1
  %36 = zext i8 %35 to i32
  %37 = or i32 %33, %36
  %38 = load ptr, ptr %2, align 8
  %39 = getelementptr i8, ptr %38, i32 3668
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %37) #20, !srcloc !16
  %40 = getelementptr %struct.net_device, ptr %0, i32 0, i32 83, i32 2
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i32
  %43 = shl nuw i32 %42, 24
  %44 = getelementptr %struct.net_device, ptr %0, i32 0, i32 83, i32 3
  %45 = load i8, ptr %44, align 1
  %46 = zext i8 %45 to i32
  %47 = shl nuw nsw i32 %46, 16
  %48 = or i32 %47, %43
  %49 = getelementptr %struct.net_device, ptr %0, i32 0, i32 83, i32 4
  %50 = load i8, ptr %49, align 1
  %51 = zext i8 %50 to i32
  %52 = shl nuw nsw i32 %51, 8
  %53 = or i32 %48, %52
  %54 = getelementptr %struct.net_device, ptr %0, i32 0, i32 83, i32 5
  %55 = load i8, ptr %54, align 1
  %56 = zext i8 %55 to i32
  %57 = or i32 %53, %56
  %58 = load ptr, ptr %2, align 8
  %59 = getelementptr i8, ptr %58, i32 3672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %57) #20, !srcloc !16
  %60 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 72
  %61 = load ptr, ptr %60, align 32
  %62 = load i8, ptr %61, align 1
  %63 = zext i8 %62 to i32
  %64 = shl nuw nsw i32 %63, 8
  %65 = getelementptr i8, ptr %61, i32 1
  %66 = load i8, ptr %65, align 1
  %67 = zext i8 %66 to i32
  %68 = or i32 %64, %67
  %69 = load ptr, ptr %2, align 8
  %70 = getelementptr i8, ptr %69, i32 3676
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 %68) #20, !srcloc !16
  %71 = getelementptr i8, ptr %61, i32 2
  %72 = load i8, ptr %71, align 1
  %73 = zext i8 %72 to i32
  %74 = shl nuw i32 %73, 24
  %75 = getelementptr i8, ptr %61, i32 3
  %76 = load i8, ptr %75, align 1
  %77 = zext i8 %76 to i32
  %78 = shl nuw nsw i32 %77, 16
  %79 = or i32 %78, %74
  %80 = getelementptr i8, ptr %61, i32 4
  %81 = load i8, ptr %80, align 1
  %82 = zext i8 %81 to i32
  %83 = shl nuw nsw i32 %82, 8
  %84 = or i32 %79, %83
  %85 = getelementptr i8, ptr %61, i32 5
  %86 = load i8, ptr %85, align 1
  %87 = zext i8 %86 to i32
  %88 = or i32 %84, %87
  %89 = load ptr, ptr %2, align 8
  %90 = getelementptr i8, ptr %89, i32 3680
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %90, i32 %88) #20, !srcloc !16
  %91 = load ptr, ptr %3, align 4
  %92 = icmp eq ptr %91, %3
  br i1 %92, label %93, label %97

93:                                               ; preds = %97, %26
  %94 = phi i32 [ 4, %26 ], [ %135, %97 ]
  %95 = load ptr, ptr %6, align 4
  %96 = icmp eq ptr %95, %6
  br i1 %96, label %179, label %138

97:                                               ; preds = %97, %26
  %98 = phi ptr [ %136, %97 ], [ %91, %26 ]
  %99 = phi i32 [ %135, %97 ], [ 4, %26 ]
  %100 = getelementptr inbounds %struct.netdev_hw_addr, ptr %98, i32 0, i32 2
  %101 = load i8, ptr %100, align 1
  %102 = zext i8 %101 to i32
  %103 = shl nuw nsw i32 %102, 8
  %104 = getelementptr %struct.netdev_hw_addr, ptr %98, i32 0, i32 2, i32 1
  %105 = load i8, ptr %104, align 1
  %106 = zext i8 %105 to i32
  %107 = or i32 %103, %106
  %108 = shl i32 %99, 2
  %109 = add i32 %108, 1620
  %110 = load ptr, ptr %2, align 8
  %111 = getelementptr i8, ptr %110, i32 2048
  %112 = getelementptr i8, ptr %111, i32 %109
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %112, i32 %107) #20, !srcloc !16
  %113 = getelementptr %struct.netdev_hw_addr, ptr %98, i32 0, i32 2, i32 2
  %114 = load i8, ptr %113, align 1
  %115 = zext i8 %114 to i32
  %116 = shl nuw i32 %115, 24
  %117 = getelementptr %struct.netdev_hw_addr, ptr %98, i32 0, i32 2, i32 3
  %118 = load i8, ptr %117, align 1
  %119 = zext i8 %118 to i32
  %120 = shl nuw nsw i32 %119, 16
  %121 = or i32 %120, %116
  %122 = getelementptr %struct.netdev_hw_addr, ptr %98, i32 0, i32 2, i32 4
  %123 = load i8, ptr %122, align 1
  %124 = zext i8 %123 to i32
  %125 = shl nuw nsw i32 %124, 8
  %126 = or i32 %121, %125
  %127 = getelementptr %struct.netdev_hw_addr, ptr %98, i32 0, i32 2, i32 5
  %128 = load i8, ptr %127, align 1
  %129 = zext i8 %128 to i32
  %130 = or i32 %126, %129
  %131 = add i32 %108, 1624
  %132 = load ptr, ptr %2, align 8
  %133 = getelementptr i8, ptr %132, i32 2048
  %134 = getelementptr i8, ptr %133, i32 %131
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %134, i32 %130) #20, !srcloc !16
  %135 = add i32 %99, 2
  %136 = load ptr, ptr %98, align 4
  %137 = icmp eq ptr %136, %3
  br i1 %137, label %93, label %97

138:                                              ; preds = %138, %93
  %139 = phi ptr [ %177, %138 ], [ %95, %93 ]
  %140 = phi i32 [ %176, %138 ], [ %94, %93 ]
  %141 = getelementptr inbounds %struct.netdev_hw_addr, ptr %139, i32 0, i32 2
  %142 = load i8, ptr %141, align 1
  %143 = zext i8 %142 to i32
  %144 = shl nuw nsw i32 %143, 8
  %145 = getelementptr %struct.netdev_hw_addr, ptr %139, i32 0, i32 2, i32 1
  %146 = load i8, ptr %145, align 1
  %147 = zext i8 %146 to i32
  %148 = or i32 %144, %147
  %149 = shl i32 %140, 2
  %150 = add i32 %149, 1620
  %151 = load ptr, ptr %2, align 8
  %152 = getelementptr i8, ptr %151, i32 2048
  %153 = getelementptr i8, ptr %152, i32 %150
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %153, i32 %148) #20, !srcloc !16
  %154 = getelementptr %struct.netdev_hw_addr, ptr %139, i32 0, i32 2, i32 2
  %155 = load i8, ptr %154, align 1
  %156 = zext i8 %155 to i32
  %157 = shl nuw i32 %156, 24
  %158 = getelementptr %struct.netdev_hw_addr, ptr %139, i32 0, i32 2, i32 3
  %159 = load i8, ptr %158, align 1
  %160 = zext i8 %159 to i32
  %161 = shl nuw nsw i32 %160, 16
  %162 = or i32 %161, %157
  %163 = getelementptr %struct.netdev_hw_addr, ptr %139, i32 0, i32 2, i32 4
  %164 = load i8, ptr %163, align 1
  %165 = zext i8 %164 to i32
  %166 = shl nuw nsw i32 %165, 8
  %167 = or i32 %162, %166
  %168 = getelementptr %struct.netdev_hw_addr, ptr %139, i32 0, i32 2, i32 5
  %169 = load i8, ptr %168, align 1
  %170 = zext i8 %169 to i32
  %171 = or i32 %167, %170
  %172 = add i32 %149, 1624
  %173 = load ptr, ptr %2, align 8
  %174 = getelementptr i8, ptr %173, i32 2048
  %175 = getelementptr i8, ptr %174, i32 %172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %175, i32 %171) #20, !srcloc !16
  %176 = add i32 %140, 2
  %177 = load ptr, ptr %139, align 4
  %178 = icmp eq ptr %177, %6
  br i1 %178, label %179, label %138

179:                                              ; preds = %138, %93
  %180 = sub i32 15, %9
  %181 = shl nsw i32 -1, %180
  %182 = and i32 %181, 131071
  %183 = load ptr, ptr %2, align 8
  %184 = getelementptr i8, ptr %183, i32 3664
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %184, i32 %182) #20, !srcloc !16
  br label %185

185:                                              ; preds = %179, %20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcmgenet_set_mac_addr(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.sockaddr, ptr %1, i32 0, i32 1
  tail call void @dev_addr_mod(ptr noundef %0, i32 noundef 0, ptr noundef %8, i32 noundef 6) #20
  br label %9

9:                                                ; preds = %7, %2
  %10 = phi i32 [ 0, %7 ], [ -16, %2 ]
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_do_ioctl_running(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcmgenet_timeout(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 1408
  %4 = getelementptr i8, ptr %0, i32 16232
  %5 = load ptr, ptr %4, align 8
  %6 = load i8, ptr %5, align 4
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %8, %2
  %9 = phi i32 [ %11, %8 ], [ 0, %2 ]
  %10 = getelementptr %struct.bcmgenet_priv, ptr %3, i32 0, i32 6, i32 %9
  tail call fastcc void @bcmgenet_dump_tx_queue(ptr noundef %10)
  %11 = add nuw nsw i32 %9, 1
  %12 = load ptr, ptr %4, align 8
  %13 = load i8, ptr %12, align 4
  %14 = zext i8 %13 to i32
  %15 = icmp ult i32 %11, %14
  br i1 %15, label %8, label %16

16:                                               ; preds = %8, %2
  %17 = getelementptr i8, ptr %0, i32 6040
  tail call fastcc void @bcmgenet_dump_tx_queue(ptr noundef %17)
  tail call fastcc void @bcmgenet_tx_reclaim_all(ptr noundef %0)
  %18 = load ptr, ptr %4, align 8
  %19 = load i8, ptr %18, align 4
  %20 = zext i8 %19 to i32
  %21 = icmp eq i8 %19, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %22, %16
  %23 = phi i32 [ %27, %22 ], [ 0, %16 ]
  %24 = phi i32 [ %26, %22 ], [ 0, %16 ]
  %25 = shl nuw i32 1, %23
  %26 = or i32 %25, %24
  %27 = add nuw nsw i32 %23, 1
  %28 = icmp eq i32 %27, %20
  br i1 %28, label %29, label %22

29:                                               ; preds = %22, %16
  %30 = phi i32 [ 0, %16 ], [ %26, %22 ]
  %31 = load ptr, ptr %3, align 8
  %32 = getelementptr i8, ptr %31, i32 532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 65536) #20, !srcloc !16
  %33 = load ptr, ptr %3, align 8
  %34 = getelementptr i8, ptr %33, i32 596
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %30) #20, !srcloc !16
  %35 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  %36 = load ptr, ptr %35, align 64
  %37 = load volatile i32, ptr @jiffies, align 64
  %38 = getelementptr inbounds %struct.netdev_queue, ptr %36, i32 0, i32 11
  %39 = load volatile i32, ptr %38, align 8
  %40 = icmp eq i32 %39, %37
  br i1 %40, label %42, label %41

41:                                               ; preds = %29
  store volatile i32 %37, ptr %38, align 8
  br label %42

42:                                               ; preds = %41, %29
  %43 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 36, i32 5
  %44 = load i32, ptr %43, align 4
  %45 = add i32 %44, 1
  store i32 %45, ptr %43, align 4
  %46 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 88
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %49, %42
  %50 = phi i32 [ %53, %49 ], [ 0, %42 ]
  %51 = load ptr, ptr %35, align 64
  %52 = getelementptr %struct.netdev_queue, ptr %51, i32 %50
  tail call void @netif_tx_wake_queue(ptr noundef %52) #20
  %53 = add nuw i32 %50, 1
  %54 = load i32, ptr %46, align 4
  %55 = icmp ult i32 %53, %54
  br i1 %55, label %49, label %56

56:                                               ; preds = %49, %42
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @bcmgenet_get_stats(ptr noundef %0) #15 {
  %2 = getelementptr i8, ptr %0, i32 1408
  %3 = getelementptr i8, ptr %0, i32 16232
  %4 = load ptr, ptr %3, align 8
  %5 = load i8, ptr %4, align 4
  %6 = zext i8 %5 to i32
  %7 = icmp eq i8 %5, 0
  br i1 %7, label %20, label %8

8:                                                ; preds = %8, %1
  %9 = phi i32 [ %18, %8 ], [ 0, %1 ]
  %10 = phi i32 [ %17, %8 ], [ 0, %1 ]
  %11 = phi i32 [ %14, %8 ], [ 0, %1 ]
  %12 = getelementptr %struct.bcmgenet_priv, ptr %2, i32 0, i32 6, i32 %9, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, %11
  %15 = getelementptr %struct.bcmgenet_priv, ptr %2, i32 0, i32 6, i32 %9, i32 2
  %16 = load i32, ptr %15, align 8
  %17 = add i32 %16, %10
  %18 = add nuw nsw i32 %9, 1
  %19 = icmp eq i32 %18, %6
  br i1 %19, label %20, label %8

20:                                               ; preds = %8, %1
  %21 = phi i32 [ 0, %1 ], [ %14, %8 ]
  %22 = phi i32 [ 0, %1 ], [ %17, %8 ]
  %23 = getelementptr i8, ptr %0, i32 6268
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr i8, ptr %0, i32 6264
  %26 = load i32, ptr %25, align 8
  %27 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %4, i32 0, i32 2
  %28 = load i8, ptr %27, align 2
  %29 = zext i8 %28 to i32
  %30 = icmp eq i8 %28, 0
  br i1 %30, label %51, label %31

31:                                               ; preds = %31, %20
  %32 = phi i32 [ %49, %31 ], [ 0, %20 ]
  %33 = phi i32 [ %48, %31 ], [ 0, %20 ]
  %34 = phi i32 [ %45, %31 ], [ 0, %20 ]
  %35 = phi i32 [ %42, %31 ], [ 0, %20 ]
  %36 = phi i32 [ %39, %31 ], [ 0, %20 ]
  %37 = getelementptr %struct.bcmgenet_priv, ptr %2, i32 0, i32 13, i32 %32, i32 1
  %38 = load i32, ptr %37, align 8
  %39 = add i32 %38, %36
  %40 = getelementptr %struct.bcmgenet_priv, ptr %2, i32 0, i32 13, i32 %32, i32 2
  %41 = load i32, ptr %40, align 4
  %42 = add i32 %41, %35
  %43 = getelementptr %struct.bcmgenet_priv, ptr %2, i32 0, i32 13, i32 %32, i32 3
  %44 = load i32, ptr %43, align 8
  %45 = add i32 %44, %34
  %46 = getelementptr %struct.bcmgenet_priv, ptr %2, i32 0, i32 13, i32 %32, i32 4
  %47 = load i32, ptr %46, align 4
  %48 = add i32 %47, %33
  %49 = add nuw nsw i32 %32, 1
  %50 = icmp eq i32 %49, %29
  br i1 %50, label %51, label %31

51:                                               ; preds = %31, %20
  %52 = phi i32 [ 0, %20 ], [ %39, %31 ]
  %53 = phi i32 [ 0, %20 ], [ %42, %31 ]
  %54 = phi i32 [ 0, %20 ], [ %45, %31 ]
  %55 = phi i32 [ 0, %20 ], [ %48, %31 ]
  %56 = add i32 %26, %22
  %57 = add i32 %24, %21
  %58 = getelementptr i8, ptr %0, i32 16040
  %59 = load i32, ptr %58, align 8
  %60 = add i32 %59, %52
  %61 = getelementptr i8, ptr %0, i32 16044
  %62 = load i32, ptr %61, align 4
  %63 = add i32 %62, %53
  %64 = getelementptr i8, ptr %0, i32 16048
  %65 = load i32, ptr %64, align 8
  %66 = add i32 %65, %54
  %67 = getelementptr i8, ptr %0, i32 16052
  %68 = load i32, ptr %67, align 4
  %69 = add i32 %68, %55
  %70 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 36
  %71 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 36, i32 3
  store i32 %57, ptr %71, align 4
  %72 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 36, i32 1
  store i32 %56, ptr %72, align 4
  %73 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 36, i32 2
  store i32 %60, ptr %73, align 8
  store i32 %63, ptr %70, align 8
  %74 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 36, i32 4
  store i32 %66, ptr %74, align 8
  %75 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 36, i32 15
  store i32 %66, ptr %75, align 4
  %76 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 36, i32 6
  store i32 %69, ptr %76, align 8
  ret ptr %70
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcmgenet_set_features(ptr nocapture noundef %0, i64 noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 1408
  %4 = getelementptr i8, ptr %0, i32 16348
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_prepare(ptr noundef %5) #20
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %23

8:                                                ; preds = %2
  %9 = tail call i32 @clk_enable(ptr noundef %5) #20
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %8
  %12 = load ptr, ptr %3, align 8
  %13 = getelementptr i8, ptr %12, i32 2056
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #20, !srcloc !10
  %15 = getelementptr i8, ptr %0, i32 16336
  %16 = trunc i32 %14 to i8
  %17 = lshr i8 %16, 6
  %18 = and i8 %17, 1
  store i8 %18, ptr %15, align 8
  %19 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %19) #20
  br label %20

20:                                               ; preds = %11, %8
  %21 = phi ptr [ %19, %11 ], [ %5, %8 ]
  %22 = phi i32 [ 0, %11 ], [ %9, %8 ]
  tail call void @clk_unprepare(ptr noundef %21) #20
  br label %23

23:                                               ; preds = %20, %2
  %24 = phi i32 [ %6, %2 ], [ %22, %20 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcmgenet_change_carrier(ptr noundef %0, i1 noundef zeroext %1) #2 {
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.phy_device, ptr %4, i32 0, i32 4
  %8 = load i16, ptr %7, align 8
  %9 = and i16 %8, 4
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %6
  %12 = getelementptr i8, ptr %0, i32 16280
  %13 = load i32, ptr %12, align 8
  %14 = icmp eq i32 %13, 17
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  br i1 %1, label %16, label %17

16:                                               ; preds = %15
  tail call void @netif_carrier_on(ptr noundef %0) #20
  br label %18

17:                                               ; preds = %15
  tail call void @netif_carrier_off(ptr noundef %0) #20
  br label %18

18:                                               ; preds = %17, %16, %11, %6, %2
  %19 = phi i32 [ -95, %11 ], [ -95, %6 ], [ -95, %2 ], [ 0, %17 ], [ 0, %16 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @init_umac(ptr noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.bcmgenet_priv, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 1
  %5 = load ptr, ptr %0, align 8
  br i1 %4, label %6, label %8

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %5, i32 772
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 0) #20, !srcloc !16
  br label %10

8:                                                ; preds = %1
  %9 = getelementptr i8, ptr %5, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 0) #20, !srcloc !16
  br label %10

10:                                               ; preds = %8, %6
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 2147480) #20
  %12 = load ptr, ptr %0, align 8
  %13 = getelementptr i8, ptr %12, i32 2056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 8192) #20, !srcloc !16
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 429496) #20
  %15 = load ptr, ptr %0, align 8
  %16 = getelementptr i8, ptr %15, i32 3456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 7) #20, !srcloc !16
  %17 = load ptr, ptr %0, align 8
  %18 = getelementptr i8, ptr %17, i32 3456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 0) #20, !srcloc !16
  %19 = load ptr, ptr %0, align 8
  %20 = getelementptr i8, ptr %19, i32 2068
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 1536) #20, !srcloc !16
  %21 = load i32, ptr %2, align 4
  %22 = icmp eq i32 %21, 1
  %23 = load ptr, ptr %0, align 8
  br i1 %22, label %24, label %27

24:                                               ; preds = %10
  %25 = getelementptr i8, ptr %23, i32 896
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #20, !srcloc !10
  br label %35

27:                                               ; preds = %10
  %28 = getelementptr inbounds %struct.bcmgenet_priv, ptr %0, i32 0, i32 14
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %29, i32 0, i32 9
  %31 = load i16, ptr %30, align 4
  %32 = zext i16 %31 to i32
  %33 = getelementptr i8, ptr %23, i32 %32
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #20, !srcloc !10
  br label %35

35:                                               ; preds = %27, %24
  %36 = phi i32 [ %26, %24 ], [ %34, %27 ]
  %37 = or i32 %36, 1
  %38 = load i32, ptr %2, align 4
  %39 = icmp eq i32 %38, 1
  %40 = load ptr, ptr %0, align 8
  br i1 %39, label %41, label %43

41:                                               ; preds = %35
  %42 = getelementptr i8, ptr %40, i32 896
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %37) #20, !srcloc !16
  br label %50

43:                                               ; preds = %35
  %44 = getelementptr inbounds %struct.bcmgenet_priv, ptr %0, i32 0, i32 14
  %45 = load ptr, ptr %44, align 8
  %46 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %45, i32 0, i32 9
  %47 = load i16, ptr %46, align 4
  %48 = zext i16 %47 to i32
  %49 = getelementptr i8, ptr %40, i32 %48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %37) #20, !srcloc !16
  br label %50

50:                                               ; preds = %43, %41
  %51 = load ptr, ptr %0, align 8
  %52 = getelementptr i8, ptr %51, i32 768
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #20, !srcloc !10
  %54 = or i32 %53, 3
  %55 = load ptr, ptr %0, align 8
  %56 = getelementptr i8, ptr %55, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %54) #20, !srcloc !16
  %57 = load ptr, ptr %0, align 8
  %58 = getelementptr i8, ptr %57, i32 788
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #20, !srcloc !10
  %60 = getelementptr inbounds %struct.bcmgenet_priv, ptr %0, i32 0, i32 35
  %61 = load i8, ptr %60, align 8, !range !9
  %62 = icmp eq i8 %61, 0
  %63 = or i32 %59, 49
  %64 = and i32 %59, -50
  %65 = or i32 %64, 33
  %66 = select i1 %62, i32 %65, i32 %63
  %67 = load ptr, ptr %0, align 8
  %68 = getelementptr i8, ptr %67, i32 788
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %66) #20, !srcloc !16
  %69 = load i32, ptr %2, align 4
  %70 = add i32 %69, -1
  %71 = icmp ult i32 %70, 2
  br i1 %71, label %75, label %72

72:                                               ; preds = %50
  %73 = load ptr, ptr %0, align 8
  %74 = getelementptr i8, ptr %73, i32 948
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 1) #20, !srcloc !16
  br label %75

75:                                               ; preds = %72, %50
  %76 = load ptr, ptr %0, align 8
  %77 = getelementptr i8, ptr %76, i32 528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 -1) #20, !srcloc !16
  %78 = load ptr, ptr %0, align 8
  %79 = getelementptr i8, ptr %78, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %79, i32 -1) #20, !srcloc !16
  %80 = load ptr, ptr %0, align 8
  %81 = getelementptr i8, ptr %80, i32 592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 -1) #20, !srcloc !16
  %82 = load ptr, ptr %0, align 8
  %83 = getelementptr i8, ptr %82, i32 584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %83, i32 -1) #20, !srcloc !16
  %84 = getelementptr inbounds %struct.bcmgenet_priv, ptr %0, i32 0, i32 24
  %85 = load i32, ptr %84, align 8
  %86 = icmp eq i32 %85, 17
  br i1 %86, label %87, label %134

87:                                               ; preds = %75
  %88 = load i32, ptr %2, align 4
  %89 = icmp eq i32 %88, 1
  %90 = load ptr, ptr %0, align 8
  br i1 %89, label %91, label %94

91:                                               ; preds = %87
  %92 = getelementptr i8, ptr %90, i32 928
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %92) #20, !srcloc !10
  br label %103

94:                                               ; preds = %87
  %95 = getelementptr inbounds %struct.bcmgenet_priv, ptr %0, i32 0, i32 14
  %96 = load ptr, ptr %95, align 8
  %97 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %96, i32 0, i32 9
  %98 = load i16, ptr %97, align 4
  %99 = zext i16 %98 to i32
  %100 = getelementptr i8, ptr %90, i32 %99
  %101 = getelementptr i8, ptr %100, i32 12
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %101) #20, !srcloc !10
  br label %103

103:                                              ; preds = %94, %91
  %104 = phi i32 [ %93, %91 ], [ %102, %94 ]
  %105 = getelementptr inbounds %struct.bcmgenet_priv, ptr %0, i32 0, i32 14
  %106 = load ptr, ptr %105, align 8
  %107 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %106, i32 0, i32 4
  %108 = load i8, ptr %107, align 4
  %109 = zext i8 %108 to i32
  %110 = shl nuw i32 1, %109
  %111 = or i32 %110, %104
  %112 = getelementptr inbounds %struct.bcmgenet_priv, ptr %0, i32 0, i32 2
  %113 = load ptr, ptr %112, align 8
  %114 = getelementptr inbounds %struct.net_device, ptr %113, i32 0, i32 88
  %115 = load i32, ptr %114, align 4
  %116 = icmp ugt i32 %115, 1
  %117 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %106, i32 0, i32 5
  %118 = load i32, ptr %117, align 4
  %119 = or i32 %118, %111
  %120 = xor i32 %118, -1
  %121 = and i32 %111, %120
  %122 = select i1 %116, i32 %119, i32 %121
  %123 = load i32, ptr %2, align 4
  %124 = icmp eq i32 %123, 1
  %125 = load ptr, ptr %0, align 8
  br i1 %124, label %126, label %128

126:                                              ; preds = %103
  %127 = getelementptr i8, ptr %125, i32 928
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %127, i32 %122) #20, !srcloc !16
  br label %134

128:                                              ; preds = %103
  %129 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %106, i32 0, i32 9
  %130 = load i16, ptr %129, align 4
  %131 = zext i16 %130 to i32
  %132 = getelementptr i8, ptr %125, i32 %131
  %133 = getelementptr i8, ptr %132, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %133, i32 %122) #20, !srcloc !16
  br label %134

134:                                              ; preds = %128, %126, %75
  %135 = getelementptr inbounds %struct.bcmgenet_priv, ptr %0, i32 0, i32 14
  %136 = load ptr, ptr %135, align 8
  %137 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %136, i32 0, i32 15
  %138 = load i32, ptr %137, align 4
  %139 = and i32 %138, 4
  %140 = icmp eq i32 %139, 0
  %141 = select i1 %140, i32 0, i32 25165824
  %142 = load ptr, ptr %0, align 8
  %143 = getelementptr i8, ptr %142, i32 532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %143, i32 %141) #20, !srcloc !16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @bcmgenet_dma_disable(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.bcmgenet_priv, ptr %0, i32 0, i32 14
  %3 = load ptr, ptr %2, align 8
  %4 = load i8, ptr %3, align 4
  %5 = zext i8 %4 to i32
  %6 = icmp eq i8 %4, 0
  br i1 %6, label %16, label %7

7:                                                ; preds = %7, %1
  %8 = phi i32 [ %12, %7 ], [ 131073, %1 ]
  %9 = phi i32 [ %10, %7 ], [ 0, %1 ]
  %10 = add nuw nsw i32 %9, 1
  %11 = shl i32 2, %9
  %12 = or i32 %8, %11
  %13 = icmp eq i32 %10, %5
  br i1 %13, label %14, label %7

14:                                               ; preds = %7
  %15 = xor i32 %12, -1
  br label %16

16:                                               ; preds = %14, %1
  %17 = phi i32 [ -131074, %1 ], [ %15, %14 ]
  %18 = load ptr, ptr %0, align 8
  %19 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %3, i32 0, i32 13
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %3, i32 0, i32 14
  %22 = load i32, ptr %21, align 4
  %23 = shl i32 %22, 10
  %24 = add i32 %23, %20
  %25 = getelementptr i8, ptr %18, i32 %24
  %26 = getelementptr i8, ptr %25, i32 1088
  %27 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %28 = getelementptr i8, ptr %27, i32 1
  %29 = load i8, ptr %28, align 1
  %30 = zext i8 %29 to i32
  %31 = getelementptr i8, ptr %26, i32 %30
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #20, !srcloc !10
  %33 = and i32 %32, %17
  %34 = load ptr, ptr %0, align 8
  %35 = load ptr, ptr %2, align 8
  %36 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %35, i32 0, i32 13
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %35, i32 0, i32 14
  %39 = load i32, ptr %38, align 4
  %40 = shl i32 %39, 10
  %41 = add i32 %40, %37
  %42 = getelementptr i8, ptr %34, i32 %41
  %43 = getelementptr i8, ptr %42, i32 1088
  %44 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %45 = getelementptr i8, ptr %44, i32 1
  %46 = load i8, ptr %45, align 1
  %47 = zext i8 %46 to i32
  %48 = getelementptr i8, ptr %43, i32 %47
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %33) #20, !srcloc !16
  %49 = load ptr, ptr %2, align 8
  %50 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %49, i32 0, i32 2
  %51 = load i8, ptr %50, align 2
  %52 = zext i8 %51 to i32
  %53 = icmp eq i8 %51, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %54, %16
  %55 = phi i32 [ %59, %54 ], [ 131073, %16 ]
  %56 = phi i32 [ %57, %54 ], [ 0, %16 ]
  %57 = add nuw nsw i32 %56, 1
  %58 = shl i32 2, %56
  %59 = or i32 %55, %58
  %60 = icmp eq i32 %57, %52
  br i1 %60, label %61, label %54

61:                                               ; preds = %54, %16
  %62 = phi i32 [ 131073, %16 ], [ %59, %54 ]
  %63 = load ptr, ptr %0, align 8
  %64 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %49, i32 0, i32 12
  %65 = load i32, ptr %64, align 4
  %66 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %49, i32 0, i32 14
  %67 = load i32, ptr %66, align 4
  %68 = shl i32 %67, 10
  %69 = add i32 %68, %65
  %70 = getelementptr i8, ptr %63, i32 %69
  %71 = getelementptr i8, ptr %70, i32 1088
  %72 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %73 = getelementptr i8, ptr %72, i32 1
  %74 = load i8, ptr %73, align 1
  %75 = zext i8 %74 to i32
  %76 = getelementptr i8, ptr %71, i32 %75
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %76) #20, !srcloc !10
  %78 = xor i32 %62, -1
  %79 = and i32 %77, %78
  %80 = load ptr, ptr %0, align 8
  %81 = load ptr, ptr %2, align 8
  %82 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %81, i32 0, i32 12
  %83 = load i32, ptr %82, align 4
  %84 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %81, i32 0, i32 14
  %85 = load i32, ptr %84, align 4
  %86 = shl i32 %85, 10
  %87 = add i32 %86, %83
  %88 = getelementptr i8, ptr %80, i32 %87
  %89 = getelementptr i8, ptr %88, i32 1088
  %90 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %91 = getelementptr i8, ptr %90, i32 1
  %92 = load i8, ptr %91, align 1
  %93 = zext i8 %92 to i32
  %94 = getelementptr i8, ptr %89, i32 %93
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %94, i32 %79) #20, !srcloc !16
  %95 = load ptr, ptr %0, align 8
  %96 = getelementptr i8, ptr %95, i32 2868
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %96, i32 1) #20, !srcloc !16
  %97 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %97(i32 noundef 2147480) #20
  %98 = load ptr, ptr %0, align 8
  %99 = getelementptr i8, ptr %98, i32 2868
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %99, i32 0) #20, !srcloc !16
  ret i32 %62
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @bcmgenet_init_dma(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = alloca [3 x i32], align 4
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.bcmgenet_priv, ptr %0, i32 0, i32 14
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %5, i32 0, i32 12
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr i8, ptr %3, i32 %7
  %9 = getelementptr inbounds %struct.bcmgenet_priv, ptr %0, i32 0, i32 7
  store ptr %8, ptr %9, align 8
  %10 = getelementptr inbounds %struct.bcmgenet_priv, ptr %0, i32 0, i32 9
  store i32 256, ptr %10, align 8
  %11 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %12 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 4096) #22
  %13 = getelementptr inbounds %struct.bcmgenet_priv, ptr %0, i32 0, i32 8
  store ptr %12, ptr %13, align 4
  %14 = icmp eq ptr %12, null
  br i1 %14, label %430, label %15

15:                                               ; preds = %1
  %16 = load i32, ptr %10, align 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %37, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %9, align 8
  %20 = getelementptr %struct.enet_cb, ptr %12, i32 0, i32 1
  store ptr %19, ptr %20, align 4
  %21 = load i32, ptr %10, align 8
  %22 = icmp ugt i32 %21, 1
  br i1 %22, label %23, label %37

23:                                               ; preds = %23, %18
  %24 = phi i32 [ %34, %23 ], [ 1, %18 ]
  %25 = load ptr, ptr %13, align 4
  %26 = load ptr, ptr %9, align 8
  %27 = load ptr, ptr %4, align 8
  %28 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %27, i32 0, i32 14
  %29 = load i32, ptr %28, align 4
  %30 = shl i32 %24, 2
  %31 = mul i32 %30, %29
  %32 = getelementptr i8, ptr %26, i32 %31
  %33 = getelementptr %struct.enet_cb, ptr %25, i32 %24, i32 1
  store ptr %32, ptr %33, align 4
  %34 = add nuw i32 %24, 1
  %35 = load i32, ptr %10, align 8
  %36 = icmp ult i32 %34, %35
  br i1 %36, label %23, label %37

37:                                               ; preds = %23, %18, %15
  %38 = load ptr, ptr %0, align 8
  %39 = load ptr, ptr %4, align 8
  %40 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %39, i32 0, i32 13
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr i8, ptr %38, i32 %41
  %43 = getelementptr inbounds %struct.bcmgenet_priv, ptr %0, i32 0, i32 3
  store ptr %42, ptr %43, align 4
  %44 = getelementptr inbounds %struct.bcmgenet_priv, ptr %0, i32 0, i32 5
  store i32 256, ptr %44, align 4
  %45 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %46 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %45, i32 noundef 3520, i32 noundef 4096) #22
  %47 = getelementptr inbounds %struct.bcmgenet_priv, ptr %0, i32 0, i32 4
  store ptr %46, ptr %47, align 8
  %48 = icmp eq ptr %46, null
  br i1 %48, label %57, label %49

49:                                               ; preds = %37
  %50 = load i32, ptr %44, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %73, label %52

52:                                               ; preds = %49
  %53 = load ptr, ptr %43, align 4
  %54 = getelementptr %struct.enet_cb, ptr %46, i32 0, i32 1
  store ptr %53, ptr %54, align 4
  %55 = load i32, ptr %44, align 4
  %56 = icmp ugt i32 %55, 1
  br i1 %56, label %59, label %73

57:                                               ; preds = %37
  %58 = load ptr, ptr %13, align 4
  tail call void @kfree(ptr noundef %58) #20
  br label %430

59:                                               ; preds = %59, %52
  %60 = phi i32 [ %70, %59 ], [ 1, %52 ]
  %61 = load ptr, ptr %47, align 8
  %62 = load ptr, ptr %43, align 4
  %63 = load ptr, ptr %4, align 8
  %64 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %63, i32 0, i32 14
  %65 = load i32, ptr %64, align 4
  %66 = shl i32 %60, 2
  %67 = mul i32 %66, %65
  %68 = getelementptr i8, ptr %62, i32 %67
  %69 = getelementptr %struct.enet_cb, ptr %61, i32 %60, i32 1
  store ptr %68, ptr %69, align 4
  %70 = add nuw i32 %60, 1
  %71 = load i32, ptr %44, align 4
  %72 = icmp ult i32 %70, %71
  br i1 %72, label %59, label %73

73:                                               ; preds = %59, %52, %49
  %74 = getelementptr inbounds %struct.bcmgenet_priv, ptr %0, i32 0, i32 36
  %75 = load i32, ptr %74, align 4
  %76 = load ptr, ptr %0, align 8
  %77 = load ptr, ptr %4, align 8
  %78 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %77, i32 0, i32 12
  %79 = load i32, ptr %78, align 4
  %80 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %77, i32 0, i32 14
  %81 = load i32, ptr %80, align 4
  %82 = shl i32 %81, 10
  %83 = add i32 %82, %79
  %84 = getelementptr i8, ptr %76, i32 %83
  %85 = getelementptr i8, ptr %84, i32 1088
  %86 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %87 = getelementptr i8, ptr %86, i32 3
  %88 = load i8, ptr %87, align 1
  %89 = zext i8 %88 to i32
  %90 = getelementptr i8, ptr %85, i32 %89
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %90, i32 %75) #20, !srcloc !16
  %91 = getelementptr inbounds %struct.bcmgenet_priv, ptr %0, i32 0, i32 2
  %92 = load ptr, ptr %91, align 8
  %93 = getelementptr i8, ptr %92, i32 1408
  %94 = load ptr, ptr %93, align 8
  %95 = getelementptr i8, ptr %92, i32 16232
  %96 = load ptr, ptr %95, align 8
  %97 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %96, i32 0, i32 12
  %98 = load i32, ptr %97, align 4
  %99 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %96, i32 0, i32 14
  %100 = load i32, ptr %99, align 4
  %101 = shl i32 %100, 10
  %102 = add i32 %101, %98
  %103 = getelementptr i8, ptr %94, i32 %102
  %104 = getelementptr i8, ptr %103, i32 1088
  %105 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %106 = getelementptr i8, ptr %105, i32 1
  %107 = load i8, ptr %106, align 1
  %108 = zext i8 %107 to i32
  %109 = getelementptr i8, ptr %104, i32 %108
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %109) #20, !srcloc !10
  %111 = and i32 %110, 1
  %112 = and i32 %110, -2
  %113 = load ptr, ptr %93, align 8
  %114 = load ptr, ptr %95, align 8
  %115 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %114, i32 0, i32 12
  %116 = load i32, ptr %115, align 4
  %117 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %114, i32 0, i32 14
  %118 = load i32, ptr %117, align 4
  %119 = shl i32 %118, 10
  %120 = add i32 %119, %116
  %121 = getelementptr i8, ptr %113, i32 %120
  %122 = getelementptr i8, ptr %121, i32 1088
  %123 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %124 = getelementptr i8, ptr %123, i32 1
  %125 = load i8, ptr %124, align 1
  %126 = zext i8 %125 to i32
  %127 = getelementptr i8, ptr %122, i32 %126
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %127, i32 %112) #20, !srcloc !16
  %128 = load ptr, ptr %95, align 8
  %129 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %128, i32 0, i32 2
  %130 = load i8, ptr %129, align 2
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %158, label %132

132:                                              ; preds = %145, %73
  %133 = phi ptr [ %150, %145 ], [ %128, %73 ]
  %134 = phi i32 [ %147, %145 ], [ 0, %73 ]
  %135 = phi i32 [ %149, %145 ], [ 0, %73 ]
  %136 = phi i32 [ %141, %145 ], [ 0, %73 ]
  %137 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %133, i32 0, i32 3
  %138 = load i8, ptr %137, align 1
  %139 = zext i8 %138 to i32
  %140 = mul i32 %136, %139
  %141 = add nuw nsw i32 %136, 1
  %142 = mul i32 %141, %139
  %143 = tail call fastcc i32 @bcmgenet_init_rx_ring(ptr noundef %93, i32 noundef %136, i32 noundef %139, i32 noundef %140, i32 noundef %142) #20
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %170

145:                                              ; preds = %132
  %146 = shl nuw i32 1, %136
  %147 = or i32 %146, %134
  %148 = shl i32 2, %136
  %149 = or i32 %148, %135
  %150 = load ptr, ptr %95, align 8
  %151 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %150, i32 0, i32 2
  %152 = load i8, ptr %151, align 2
  %153 = zext i8 %152 to i32
  %154 = icmp ult i32 %141, %153
  br i1 %154, label %132, label %155

155:                                              ; preds = %145
  %156 = zext i8 %152 to i32
  %157 = or i32 %147, 65536
  br label %158

158:                                              ; preds = %155, %73
  %159 = phi i32 [ %156, %155 ], [ 0, %73 ]
  %160 = phi i32 [ %149, %155 ], [ 0, %73 ]
  %161 = phi i32 [ %157, %155 ], [ 65536, %73 ]
  %162 = phi ptr [ %150, %155 ], [ %128, %73 ]
  %163 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %162, i32 0, i32 3
  %164 = load i8, ptr %163, align 1
  %165 = zext i8 %164 to i32
  %166 = mul nuw nsw i32 %159, %165
  %167 = sub nsw i32 256, %166
  %168 = tail call fastcc i32 @bcmgenet_init_rx_ring(ptr noundef %93, i32 noundef 16, i32 noundef %167, i32 noundef %166, i32 noundef 256) #20
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %200, label %170

170:                                              ; preds = %158, %132
  %171 = phi i32 [ %168, %158 ], [ %143, %132 ]
  %172 = load ptr, ptr %91, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %172, ptr noundef nonnull @.str.18) #21
  %173 = load i32, ptr %10, align 8
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %197, label %175

175:                                              ; preds = %170
  %176 = getelementptr inbounds %struct.bcmgenet_priv, ptr %0, i32 0, i32 39
  br label %177

177:                                              ; preds = %193, %175
  %178 = phi i32 [ 0, %175 ], [ %194, %193 ]
  %179 = load ptr, ptr %13, align 4
  %180 = getelementptr %struct.enet_cb, ptr %179, i32 %178
  %181 = load ptr, ptr %176, align 8
  %182 = load ptr, ptr %180, align 4
  store ptr null, ptr %180, align 4
  %183 = getelementptr %struct.enet_cb, ptr %179, i32 %178, i32 2
  %184 = load i32, ptr %183, align 4
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %190, label %186

186:                                              ; preds = %177
  %187 = getelementptr inbounds %struct.platform_device, ptr %181, i32 0, i32 3
  %188 = getelementptr %struct.enet_cb, ptr %179, i32 %178, i32 3
  %189 = load i32, ptr %188, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %187, i32 noundef %184, i32 noundef %189, i32 noundef 2, i32 noundef 0) #20
  store i32 0, ptr %183, align 4
  br label %190

190:                                              ; preds = %186, %177
  %191 = icmp eq ptr %182, null
  br i1 %191, label %193, label %192

192:                                              ; preds = %190
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %182, i32 noundef 0) #20
  br label %193

193:                                              ; preds = %192, %190
  %194 = add nuw i32 %178, 1
  %195 = load i32, ptr %10, align 8
  %196 = icmp ult i32 %194, %195
  br i1 %196, label %177, label %197

197:                                              ; preds = %193, %170
  %198 = load ptr, ptr %13, align 4
  tail call void @kfree(ptr noundef %198) #20
  %199 = load ptr, ptr %47, align 8
  tail call void @kfree(ptr noundef %199) #20
  br label %430

200:                                              ; preds = %158
  %201 = load ptr, ptr %93, align 8
  %202 = load ptr, ptr %95, align 8
  %203 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %202, i32 0, i32 12
  %204 = load i32, ptr %203, align 4
  %205 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %202, i32 0, i32 14
  %206 = load i32, ptr %205, align 4
  %207 = shl i32 %206, 10
  %208 = add i32 %207, %204
  %209 = getelementptr i8, ptr %201, i32 %208
  %210 = getelementptr i8, ptr %209, i32 1088
  %211 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %212 = load i8, ptr %211, align 1
  %213 = zext i8 %212 to i32
  %214 = getelementptr i8, ptr %210, i32 %213
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %214, i32 %161) #20, !srcloc !16
  %215 = or i32 %111, %160
  %216 = or i32 %215, 131072
  %217 = load ptr, ptr %93, align 8
  %218 = load ptr, ptr %95, align 8
  %219 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %218, i32 0, i32 12
  %220 = load i32, ptr %219, align 4
  %221 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %218, i32 0, i32 14
  %222 = load i32, ptr %221, align 4
  %223 = shl i32 %222, 10
  %224 = add i32 %223, %220
  %225 = getelementptr i8, ptr %217, i32 %224
  %226 = getelementptr i8, ptr %225, i32 1088
  %227 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %228 = getelementptr i8, ptr %227, i32 1
  %229 = load i8, ptr %228, align 1
  %230 = zext i8 %229 to i32
  %231 = getelementptr i8, ptr %226, i32 %230
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %231, i32 %216) #20, !srcloc !16
  %232 = load i32, ptr %74, align 4
  %233 = load ptr, ptr %0, align 8
  %234 = load ptr, ptr %4, align 8
  %235 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %234, i32 0, i32 13
  %236 = load i32, ptr %235, align 4
  %237 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %234, i32 0, i32 14
  %238 = load i32, ptr %237, align 4
  %239 = shl i32 %238, 10
  %240 = add i32 %239, %236
  %241 = getelementptr i8, ptr %233, i32 %240
  %242 = getelementptr i8, ptr %241, i32 1088
  %243 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %244 = getelementptr i8, ptr %243, i32 3
  %245 = load i8, ptr %244, align 1
  %246 = zext i8 %245 to i32
  %247 = getelementptr i8, ptr %242, i32 %246
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %247, i32 %232) #20, !srcloc !16
  %248 = load ptr, ptr %91, align 8
  %249 = getelementptr i8, ptr %248, i32 1408
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %2, i8 0, i32 12, i1 false) #20
  %250 = load ptr, ptr %249, align 8
  %251 = getelementptr i8, ptr %248, i32 16232
  %252 = load ptr, ptr %251, align 8
  %253 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %252, i32 0, i32 13
  %254 = load i32, ptr %253, align 4
  %255 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %252, i32 0, i32 14
  %256 = load i32, ptr %255, align 4
  %257 = shl i32 %256, 10
  %258 = add i32 %257, %254
  %259 = getelementptr i8, ptr %250, i32 %258
  %260 = getelementptr i8, ptr %259, i32 1088
  %261 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %262 = getelementptr i8, ptr %261, i32 1
  %263 = load i8, ptr %262, align 1
  %264 = zext i8 %263 to i32
  %265 = getelementptr i8, ptr %260, i32 %264
  %266 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %265) #20, !srcloc !10
  %267 = and i32 %266, -2
  %268 = load ptr, ptr %249, align 8
  %269 = load ptr, ptr %251, align 8
  %270 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %269, i32 0, i32 13
  %271 = load i32, ptr %270, align 4
  %272 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %269, i32 0, i32 14
  %273 = load i32, ptr %272, align 4
  %274 = shl i32 %273, 10
  %275 = add i32 %274, %271
  %276 = getelementptr i8, ptr %268, i32 %275
  %277 = getelementptr i8, ptr %276, i32 1088
  %278 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %279 = getelementptr i8, ptr %278, i32 1
  %280 = load i8, ptr %279, align 1
  %281 = zext i8 %280 to i32
  %282 = getelementptr i8, ptr %277, i32 %281
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %282, i32 %267) #20, !srcloc !16
  %283 = load ptr, ptr %249, align 8
  %284 = load ptr, ptr %251, align 8
  %285 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %284, i32 0, i32 13
  %286 = load i32, ptr %285, align 4
  %287 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %284, i32 0, i32 14
  %288 = load i32, ptr %287, align 4
  %289 = shl i32 %288, 10
  %290 = add i32 %289, %286
  %291 = getelementptr i8, ptr %283, i32 %290
  %292 = getelementptr i8, ptr %291, i32 1088
  %293 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %294 = getelementptr i8, ptr %293, i32 4
  %295 = load i8, ptr %294, align 1
  %296 = zext i8 %295 to i32
  %297 = getelementptr i8, ptr %292, i32 %296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %297, i32 2) #20, !srcloc !16
  %298 = load ptr, ptr %251, align 8
  %299 = load i8, ptr %298, align 4
  %300 = icmp eq i8 %299, 0
  br i1 %300, label %336, label %301

301:                                              ; preds = %301, %200
  %302 = phi ptr [ %324, %301 ], [ %298, %200 ]
  %303 = phi i32 [ %313, %301 ], [ 0, %200 ]
  %304 = phi i32 [ %315, %301 ], [ 0, %200 ]
  %305 = phi i32 [ %310, %301 ], [ 0, %200 ]
  %306 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %302, i32 0, i32 1
  %307 = load i8, ptr %306, align 1
  %308 = zext i8 %307 to i32
  %309 = mul i32 %305, %308
  %310 = add nuw nsw i32 %305, 1
  %311 = mul i32 %310, %308
  tail call fastcc void @bcmgenet_init_tx_ring(ptr noundef %249, i32 noundef %305, i32 noundef %308, i32 noundef %309, i32 noundef %311) #20
  %312 = shl nuw i32 1, %305
  %313 = or i32 %312, %303
  %314 = shl i32 2, %305
  %315 = or i32 %314, %304
  %316 = udiv i32 %305, 6
  %317 = mul i32 %316, 6
  %318 = sub i32 %305, %317
  %319 = mul nuw nsw i32 %318, 5
  %320 = shl i32 %305, %319
  %321 = getelementptr [3 x i32], ptr %2, i32 0, i32 %316
  %322 = load i32, ptr %321, align 4
  %323 = or i32 %322, %320
  store i32 %323, ptr %321, align 4
  %324 = load ptr, ptr %251, align 8
  %325 = load i8, ptr %324, align 4
  %326 = zext i8 %325 to i32
  %327 = icmp ult i32 %310, %326
  br i1 %327, label %301, label %328

328:                                              ; preds = %301
  %329 = zext i8 %325 to i32
  %330 = getelementptr inbounds [3 x i32], ptr %2, i32 0, i32 2
  %331 = load i32, ptr %330, align 4
  %332 = load i32, ptr %2, align 4
  %333 = getelementptr inbounds [3 x i32], ptr %2, i32 0, i32 1
  %334 = load i32, ptr %333, align 4
  %335 = or i32 %313, 65536
  br label %336

336:                                              ; preds = %328, %200
  %337 = phi i32 [ %334, %328 ], [ 0, %200 ]
  %338 = phi i32 [ %332, %328 ], [ 0, %200 ]
  %339 = phi i32 [ %331, %328 ], [ 0, %200 ]
  %340 = phi i32 [ %329, %328 ], [ 0, %200 ]
  %341 = phi i32 [ %315, %328 ], [ 0, %200 ]
  %342 = phi i32 [ %335, %328 ], [ 65536, %200 ]
  %343 = phi ptr [ %324, %328 ], [ %298, %200 ]
  %344 = and i32 %266, 1
  %345 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %343, i32 0, i32 1
  %346 = load i8, ptr %345, align 1
  %347 = zext i8 %346 to i32
  %348 = mul nuw nsw i32 %340, %347
  %349 = sub nsw i32 256, %348
  tail call fastcc void @bcmgenet_init_tx_ring(ptr noundef %249, i32 noundef 16, i32 noundef %349, i32 noundef %348, i32 noundef 256) #20
  %350 = load ptr, ptr %251, align 8
  %351 = load i8, ptr %350, align 4
  %352 = zext i8 %351 to i32
  %353 = shl nuw nsw i32 %352, 20
  %354 = or i32 %353, %339
  %355 = load ptr, ptr %249, align 8
  %356 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %350, i32 0, i32 13
  %357 = load i32, ptr %356, align 4
  %358 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %350, i32 0, i32 14
  %359 = load i32, ptr %358, align 4
  %360 = shl i32 %359, 10
  %361 = add i32 %360, %357
  %362 = getelementptr i8, ptr %355, i32 %361
  %363 = getelementptr i8, ptr %362, i32 1088
  %364 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %365 = getelementptr i8, ptr %364, i32 5
  %366 = load i8, ptr %365, align 1
  %367 = zext i8 %366 to i32
  %368 = getelementptr i8, ptr %363, i32 %367
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %368, i32 %338) #20, !srcloc !16
  %369 = load ptr, ptr %249, align 8
  %370 = load ptr, ptr %251, align 8
  %371 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %370, i32 0, i32 13
  %372 = load i32, ptr %371, align 4
  %373 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %370, i32 0, i32 14
  %374 = load i32, ptr %373, align 4
  %375 = shl i32 %374, 10
  %376 = add i32 %375, %372
  %377 = getelementptr i8, ptr %369, i32 %376
  %378 = getelementptr i8, ptr %377, i32 1088
  %379 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %380 = getelementptr i8, ptr %379, i32 6
  %381 = load i8, ptr %380, align 1
  %382 = zext i8 %381 to i32
  %383 = getelementptr i8, ptr %378, i32 %382
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %383, i32 %337) #20, !srcloc !16
  %384 = load ptr, ptr %249, align 8
  %385 = load ptr, ptr %251, align 8
  %386 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %385, i32 0, i32 13
  %387 = load i32, ptr %386, align 4
  %388 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %385, i32 0, i32 14
  %389 = load i32, ptr %388, align 4
  %390 = shl i32 %389, 10
  %391 = add i32 %390, %387
  %392 = getelementptr i8, ptr %384, i32 %391
  %393 = getelementptr i8, ptr %392, i32 1088
  %394 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %395 = getelementptr i8, ptr %394, i32 7
  %396 = load i8, ptr %395, align 1
  %397 = zext i8 %396 to i32
  %398 = getelementptr i8, ptr %393, i32 %397
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %398, i32 %354) #20, !srcloc !16
  %399 = load ptr, ptr %249, align 8
  %400 = load ptr, ptr %251, align 8
  %401 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %400, i32 0, i32 13
  %402 = load i32, ptr %401, align 4
  %403 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %400, i32 0, i32 14
  %404 = load i32, ptr %403, align 4
  %405 = shl i32 %404, 10
  %406 = add i32 %405, %402
  %407 = getelementptr i8, ptr %399, i32 %406
  %408 = getelementptr i8, ptr %407, i32 1088
  %409 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %410 = load i8, ptr %409, align 1
  %411 = zext i8 %410 to i32
  %412 = getelementptr i8, ptr %408, i32 %411
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %412, i32 %342) #20, !srcloc !16
  %413 = or i32 %344, %341
  %414 = or i32 %413, 131072
  %415 = load ptr, ptr %249, align 8
  %416 = load ptr, ptr %251, align 8
  %417 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %416, i32 0, i32 13
  %418 = load i32, ptr %417, align 4
  %419 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %416, i32 0, i32 14
  %420 = load i32, ptr %419, align 4
  %421 = shl i32 %420, 10
  %422 = add i32 %421, %418
  %423 = getelementptr i8, ptr %415, i32 %422
  %424 = getelementptr i8, ptr %423, i32 1088
  %425 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %426 = getelementptr i8, ptr %425, i32 1
  %427 = load i8, ptr %426, align 1
  %428 = zext i8 %427 to i32
  %429 = getelementptr i8, ptr %424, i32 %428
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %429, i32 %414) #20, !srcloc !16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #20
  br label %430

430:                                              ; preds = %336, %197, %57, %1
  %431 = phi i32 [ %171, %197 ], [ 0, %336 ], [ -12, %57 ], [ -12, %1 ]
  ret i32 %431
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcmgenet_isr0(i32 noundef %0, ptr noundef %1) #2 {
  %3 = load ptr, ptr %1, align 8
  %4 = getelementptr i8, ptr %3, i32 512
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #20, !srcloc !10
  %6 = load ptr, ptr %1, align 8
  %7 = getelementptr i8, ptr %6, i32 524
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #20, !srcloc !10
  %9 = xor i32 %8, -1
  %10 = and i32 %5, %9
  %11 = load ptr, ptr %1, align 8
  %12 = getelementptr i8, ptr %11, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #20, !srcloc !16
  %13 = and i32 %10, 8192
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %2
  %16 = getelementptr %struct.bcmgenet_priv, ptr %1, i32 0, i32 13, i32 16
  %17 = getelementptr %struct.bcmgenet_priv, ptr %1, i32 0, i32 13, i32 16, i32 13, i32 1
  %18 = load i16, ptr %17, align 2
  %19 = add i16 %18, 1
  store i16 %19, ptr %17, align 2
  %20 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %16) #20
  br i1 %20, label %21, label %24, !prof !22

21:                                               ; preds = %15
  %22 = getelementptr %struct.bcmgenet_priv, ptr %1, i32 0, i32 13, i32 16, i32 17
  %23 = load ptr, ptr %22, align 4
  tail call void %23(ptr noundef %16) #20
  tail call void @__napi_schedule_irqoff(ptr noundef %16) #20
  br label %24

24:                                               ; preds = %21, %15, %2
  %25 = and i32 %10, 65536
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %24
  %28 = getelementptr %struct.bcmgenet_priv, ptr %1, i32 0, i32 6, i32 16, i32 1
  %29 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %28) #20
  br i1 %29, label %30, label %34, !prof !22

30:                                               ; preds = %27
  %31 = getelementptr %struct.bcmgenet_priv, ptr %1, i32 0, i32 6, i32 16
  %32 = getelementptr %struct.bcmgenet_priv, ptr %1, i32 0, i32 6, i32 16, i32 16
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef %31) #20
  tail call void @__napi_schedule_irqoff(ptr noundef %28) #20
  br label %34

34:                                               ; preds = %30, %27, %24
  %35 = getelementptr inbounds %struct.bcmgenet_priv, ptr %1, i32 0, i32 14
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %36, i32 0, i32 15
  %38 = load i32, ptr %37, align 4
  %39 = and i32 %38, 4
  %40 = icmp eq i32 %39, 0
  %41 = and i32 %10, 25165824
  %42 = icmp eq i32 %41, 0
  %43 = or i1 %42, %40
  br i1 %43, label %46, label %44

44:                                               ; preds = %34
  %45 = getelementptr inbounds %struct.bcmgenet_priv, ptr %1, i32 0, i32 16
  tail call void @__wake_up(ptr noundef %45, i32 noundef 3, i32 noundef 1, ptr noundef null) #20
  br label %46

46:                                               ; preds = %44, %34
  %47 = and i32 %10, 52
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %58, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.bcmgenet_priv, ptr %1, i32 0, i32 33
  %51 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %50) #20
  %52 = getelementptr inbounds %struct.bcmgenet_priv, ptr %1, i32 0, i32 34
  %53 = load i32, ptr %52, align 4
  %54 = or i32 %53, %47
  store i32 %54, ptr %52, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %50, i32 noundef %51) #20
  %55 = getelementptr inbounds %struct.bcmgenet_priv, ptr %1, i32 0, i32 28
  %56 = load ptr, ptr @system_wq, align 4
  %57 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %56, ptr noundef %55) #20
  br label %58

58:                                               ; preds = %49, %46
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcmgenet_isr1(i32 noundef %0, ptr noundef %1) #2 {
  %3 = load ptr, ptr %1, align 8
  %4 = getelementptr i8, ptr %3, i32 576
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #20, !srcloc !10
  %6 = load ptr, ptr %1, align 8
  %7 = getelementptr i8, ptr %6, i32 588
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #20, !srcloc !10
  %9 = xor i32 %8, -1
  %10 = and i32 %5, %9
  %11 = load ptr, ptr %1, align 8
  %12 = getelementptr i8, ptr %11, i32 584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #20, !srcloc !16
  %13 = getelementptr inbounds %struct.bcmgenet_priv, ptr %1, i32 0, i32 14
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %14, i32 0, i32 2
  %16 = load i8, ptr %15, align 2
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %36, %2
  %19 = phi ptr [ %14, %2 ], [ %38, %36 ]
  %20 = load i8, ptr %19, align 4
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %61, label %43

22:                                               ; preds = %36, %2
  %23 = phi i32 [ %37, %36 ], [ 0, %2 ]
  %24 = shl i32 65536, %23
  %25 = and i32 %24, %10
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %22
  %28 = getelementptr %struct.bcmgenet_priv, ptr %1, i32 0, i32 13, i32 %23
  %29 = getelementptr %struct.bcmgenet_priv, ptr %1, i32 0, i32 13, i32 %23, i32 13, i32 1
  %30 = load i16, ptr %29, align 2
  %31 = add i16 %30, 1
  store i16 %31, ptr %29, align 2
  %32 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %28) #20
  br i1 %32, label %33, label %36, !prof !22

33:                                               ; preds = %27
  %34 = getelementptr %struct.bcmgenet_priv, ptr %1, i32 0, i32 13, i32 %23, i32 17
  %35 = load ptr, ptr %34, align 4
  tail call void %35(ptr noundef %28) #20
  tail call void @__napi_schedule_irqoff(ptr noundef %28) #20
  br label %36

36:                                               ; preds = %33, %27, %22
  %37 = add nuw nsw i32 %23, 1
  %38 = load ptr, ptr %13, align 8
  %39 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %38, i32 0, i32 2
  %40 = load i8, ptr %39, align 2
  %41 = zext i8 %40 to i32
  %42 = icmp ult i32 %37, %41
  br i1 %42, label %22, label %18

43:                                               ; preds = %55, %18
  %44 = phi i32 [ %56, %55 ], [ 0, %18 ]
  %45 = shl nuw i32 1, %44
  %46 = and i32 %45, %10
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %43
  %49 = getelementptr %struct.bcmgenet_priv, ptr %1, i32 0, i32 6, i32 %44, i32 1
  %50 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %49) #20
  br i1 %50, label %51, label %55, !prof !22

51:                                               ; preds = %48
  %52 = getelementptr %struct.bcmgenet_priv, ptr %1, i32 0, i32 6, i32 %44
  %53 = getelementptr %struct.bcmgenet_priv, ptr %1, i32 0, i32 6, i32 %44, i32 16
  %54 = load ptr, ptr %53, align 8
  tail call void %54(ptr noundef %52) #20
  tail call void @__napi_schedule_irqoff(ptr noundef %49) #20
  br label %55

55:                                               ; preds = %51, %48, %43
  %56 = add nuw nsw i32 %44, 1
  %57 = load ptr, ptr %13, align 8
  %58 = load i8, ptr %57, align 4
  %59 = zext i8 %58 to i32
  %60 = icmp ult i32 %56, %59
  br i1 %60, label %43, label %61

61:                                               ; preds = %55, %18
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcmgenet_mii_probe(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @bcmgenet_netif_start(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr i8, ptr %0, i32 1408
  tail call void @bcmgenet_set_rx_mode(ptr noundef %0)
  %3 = getelementptr i8, ptr %0, i32 16232
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %4, i32 0, i32 2
  %6 = load i8, ptr %5, align 2
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %8, %1
  %9 = phi i32 [ %13, %8 ], [ 0, %1 ]
  %10 = getelementptr %struct.bcmgenet_priv, ptr %2, i32 0, i32 13, i32 %9
  tail call void @napi_enable(ptr noundef %10) #20
  %11 = getelementptr %struct.bcmgenet_priv, ptr %2, i32 0, i32 13, i32 %9, i32 16
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef %10) #20
  %13 = add nuw nsw i32 %9, 1
  %14 = load ptr, ptr %3, align 8
  %15 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %14, i32 0, i32 2
  %16 = load i8, ptr %15, align 2
  %17 = zext i8 %16 to i32
  %18 = icmp ult i32 %13, %17
  br i1 %18, label %8, label %19

19:                                               ; preds = %8, %1
  %20 = getelementptr i8, ptr %0, i32 15824
  tail call void @napi_enable(ptr noundef %20) #20
  %21 = getelementptr i8, ptr %0, i32 16216
  %22 = load ptr, ptr %21, align 8
  tail call void %22(ptr noundef %20) #20
  %23 = load ptr, ptr %2, align 8
  %24 = getelementptr i8, ptr %23, i32 2056
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #20, !srcloc !10
  %26 = and i32 %25, 8192
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %19
  %29 = or i32 %25, 3
  %30 = load ptr, ptr %2, align 8
  %31 = getelementptr i8, ptr %30, i32 2056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %29) #20, !srcloc !16
  br label %32

32:                                               ; preds = %28, %19
  %33 = load ptr, ptr %3, align 8
  %34 = load i8, ptr %33, align 4
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %47, label %36

36:                                               ; preds = %36, %32
  %37 = phi i32 [ %42, %36 ], [ 0, %32 ]
  %38 = getelementptr %struct.bcmgenet_priv, ptr %2, i32 0, i32 6, i32 %37
  %39 = getelementptr %struct.bcmgenet_priv, ptr %2, i32 0, i32 6, i32 %37, i32 1
  tail call void @napi_enable(ptr noundef %39) #20
  %40 = getelementptr %struct.bcmgenet_priv, ptr %2, i32 0, i32 6, i32 %37, i32 15
  %41 = load ptr, ptr %40, align 4
  tail call void %41(ptr noundef %38) #20
  %42 = add nuw nsw i32 %37, 1
  %43 = load ptr, ptr %3, align 8
  %44 = load i8, ptr %43, align 4
  %45 = zext i8 %44 to i32
  %46 = icmp ult i32 %42, %45
  br i1 %46, label %36, label %47

47:                                               ; preds = %36, %32
  %48 = getelementptr i8, ptr %0, i32 6040
  %49 = getelementptr i8, ptr %0, i32 6048
  tail call void @napi_enable(ptr noundef %49) #20
  %50 = getelementptr i8, ptr %0, i32 6316
  %51 = load ptr, ptr %50, align 4
  tail call void %51(ptr noundef %48) #20
  %52 = getelementptr i8, ptr %0, i32 16252
  %53 = load i8, ptr %52, align 4, !range !9
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %47
  %56 = getelementptr i8, ptr %0, i32 1412
  %57 = load i32, ptr %56, align 4
  %58 = add i32 %57, -1
  %59 = icmp ult i32 %58, 3
  %60 = select i1 %59, i32 52, i32 48
  br label %76

61:                                               ; preds = %47
  %62 = getelementptr i8, ptr %0, i32 16288
  %63 = load i32, ptr %62, align 8
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %61
  %66 = getelementptr i8, ptr %0, i32 16280
  %67 = load i32, ptr %66, align 8
  %68 = icmp eq i32 %67, 17
  br i1 %68, label %69, label %76

69:                                               ; preds = %65
  %70 = load ptr, ptr %3, align 8
  %71 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %70, i32 0, i32 15
  %72 = load i32, ptr %71, align 4
  %73 = and i32 %72, 8
  %74 = icmp eq i32 %73, 0
  %75 = select i1 %74, i32 0, i32 48
  br label %76

76:                                               ; preds = %69, %65, %61, %55
  %77 = phi i32 [ 0, %65 ], [ 48, %61 ], [ %75, %69 ], [ %60, %55 ]
  %78 = load ptr, ptr %2, align 8
  %79 = getelementptr i8, ptr %78, i32 532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %79, i32 %77) #20, !srcloc !16
  %80 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %81 = load ptr, ptr %80, align 8
  tail call void @phy_start(ptr noundef %81) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @bcmgenet_dma_teardown(ptr noundef readonly %0) unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.bcmgenet_priv, ptr %0, i32 0, i32 14
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %4, i32 0, i32 13
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %4, i32 0, i32 14
  %8 = load i32, ptr %7, align 4
  %9 = shl i32 %8, 10
  %10 = add i32 %9, %6
  %11 = getelementptr i8, ptr %2, i32 %10
  %12 = getelementptr i8, ptr %11, i32 1088
  %13 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %14 = getelementptr i8, ptr %13, i32 1
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  %17 = getelementptr i8, ptr %12, i32 %16
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #20, !srcloc !10
  %19 = and i32 %18, -2
  %20 = load ptr, ptr %0, align 8
  %21 = load ptr, ptr %3, align 8
  %22 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %21, i32 0, i32 13
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %21, i32 0, i32 14
  %25 = load i32, ptr %24, align 4
  %26 = shl i32 %25, 10
  %27 = add i32 %26, %23
  %28 = getelementptr i8, ptr %20, i32 %27
  %29 = getelementptr i8, ptr %28, i32 1088
  %30 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %31 = getelementptr i8, ptr %30, i32 1
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  %34 = getelementptr i8, ptr %29, i32 %33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %19) #20, !srcloc !16
  br label %35

35:                                               ; preds = %55, %1
  %36 = phi i32 [ 1, %1 ], [ %57, %55 ]
  %37 = load ptr, ptr %0, align 8
  %38 = load ptr, ptr %3, align 8
  %39 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %38, i32 0, i32 13
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %38, i32 0, i32 14
  %42 = load i32, ptr %41, align 4
  %43 = shl i32 %42, 10
  %44 = add i32 %43, %40
  %45 = getelementptr i8, ptr %37, i32 1088
  %46 = getelementptr i8, ptr %45, i32 %44
  %47 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %48 = getelementptr i8, ptr %47, i32 2
  %49 = load i8, ptr %48, align 1
  %50 = zext i8 %49 to i32
  %51 = getelementptr i8, ptr %46, i32 %50
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #20, !srcloc !10
  %53 = and i32 %52, 1
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %35
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %56(i32 noundef 214748) #20
  %57 = add nuw nsw i32 %36, 1
  %58 = icmp eq i32 %57, 5001
  br i1 %58, label %64, label %35

59:                                               ; preds = %35
  %60 = icmp eq i32 %36, 5000
  br i1 %60, label %61, label %64

61:                                               ; preds = %59
  %62 = getelementptr inbounds %struct.bcmgenet_priv, ptr %0, i32 0, i32 2
  %63 = load ptr, ptr %62, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %63, ptr noundef nonnull @.str.25) #21
  br label %64

64:                                               ; preds = %61, %59, %55
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #20
  %65 = load ptr, ptr %0, align 8
  %66 = load ptr, ptr %3, align 8
  %67 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %66, i32 0, i32 12
  %68 = load i32, ptr %67, align 4
  %69 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %66, i32 0, i32 14
  %70 = load i32, ptr %69, align 4
  %71 = shl i32 %70, 10
  %72 = add i32 %71, %68
  %73 = getelementptr i8, ptr %65, i32 %72
  %74 = getelementptr i8, ptr %73, i32 1088
  %75 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %76 = getelementptr i8, ptr %75, i32 1
  %77 = load i8, ptr %76, align 1
  %78 = zext i8 %77 to i32
  %79 = getelementptr i8, ptr %74, i32 %78
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %79) #20, !srcloc !10
  %81 = and i32 %80, -2
  %82 = load ptr, ptr %0, align 8
  %83 = load ptr, ptr %3, align 8
  %84 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %83, i32 0, i32 12
  %85 = load i32, ptr %84, align 4
  %86 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %83, i32 0, i32 14
  %87 = load i32, ptr %86, align 4
  %88 = shl i32 %87, 10
  %89 = add i32 %88, %85
  %90 = getelementptr i8, ptr %82, i32 %89
  %91 = getelementptr i8, ptr %90, i32 1088
  %92 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %93 = getelementptr i8, ptr %92, i32 1
  %94 = load i8, ptr %93, align 1
  %95 = zext i8 %94 to i32
  %96 = getelementptr i8, ptr %91, i32 %95
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %96, i32 %81) #20, !srcloc !16
  br label %97

97:                                               ; preds = %117, %64
  %98 = phi i32 [ 1, %64 ], [ %119, %117 ]
  %99 = load ptr, ptr %0, align 8
  %100 = load ptr, ptr %3, align 8
  %101 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %100, i32 0, i32 12
  %102 = load i32, ptr %101, align 4
  %103 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %100, i32 0, i32 14
  %104 = load i32, ptr %103, align 4
  %105 = shl i32 %104, 10
  %106 = add i32 %105, %102
  %107 = getelementptr i8, ptr %99, i32 1088
  %108 = getelementptr i8, ptr %107, i32 %106
  %109 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %110 = getelementptr i8, ptr %109, i32 2
  %111 = load i8, ptr %110, align 1
  %112 = zext i8 %111 to i32
  %113 = getelementptr i8, ptr %108, i32 %112
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %113) #20, !srcloc !10
  %115 = and i32 %114, 1
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %97
  %118 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %118(i32 noundef 214748) #20
  %119 = add nuw nsw i32 %98, 1
  %120 = icmp eq i32 %119, 5001
  br i1 %120, label %126, label %97

121:                                              ; preds = %97
  %122 = icmp eq i32 %98, 5000
  br i1 %122, label %123, label %126

123:                                              ; preds = %121
  %124 = getelementptr inbounds %struct.bcmgenet_priv, ptr %0, i32 0, i32 2
  %125 = load ptr, ptr %124, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %125, ptr noundef nonnull @.str.26) #21
  br label %126

126:                                              ; preds = %123, %121, %117
  %127 = load ptr, ptr %3, align 8
  %128 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %127, i32 0, i32 2
  %129 = load i8, ptr %128, align 2
  %130 = zext i8 %129 to i32
  %131 = icmp eq i8 %129, 0
  br i1 %131, label %141, label %132

132:                                              ; preds = %132, %126
  %133 = phi i32 [ %135, %132 ], [ 0, %126 ]
  %134 = phi i32 [ %137, %132 ], [ 0, %126 ]
  %135 = add nuw nsw i32 %133, 1
  %136 = shl i32 2, %133
  %137 = or i32 %136, %134
  %138 = icmp eq i32 %135, %130
  br i1 %138, label %139, label %132

139:                                              ; preds = %132
  %140 = xor i32 %137, -1
  br label %141

141:                                              ; preds = %139, %126
  %142 = phi i32 [ -1, %126 ], [ %140, %139 ]
  %143 = load ptr, ptr %0, align 8
  %144 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %127, i32 0, i32 12
  %145 = load i32, ptr %144, align 4
  %146 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %127, i32 0, i32 14
  %147 = load i32, ptr %146, align 4
  %148 = shl i32 %147, 10
  %149 = add i32 %148, %145
  %150 = getelementptr i8, ptr %143, i32 %149
  %151 = getelementptr i8, ptr %150, i32 1088
  %152 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %153 = getelementptr i8, ptr %152, i32 1
  %154 = load i8, ptr %153, align 1
  %155 = zext i8 %154 to i32
  %156 = getelementptr i8, ptr %151, i32 %155
  %157 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %156) #20, !srcloc !10
  %158 = and i32 %157, %142
  %159 = load ptr, ptr %0, align 8
  %160 = load ptr, ptr %3, align 8
  %161 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %160, i32 0, i32 12
  %162 = load i32, ptr %161, align 4
  %163 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %160, i32 0, i32 14
  %164 = load i32, ptr %163, align 4
  %165 = shl i32 %164, 10
  %166 = add i32 %165, %162
  %167 = getelementptr i8, ptr %159, i32 %166
  %168 = getelementptr i8, ptr %167, i32 1088
  %169 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %170 = getelementptr i8, ptr %169, i32 1
  %171 = load i8, ptr %170, align 1
  %172 = zext i8 %171 to i32
  %173 = getelementptr i8, ptr %168, i32 %172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %173, i32 %158) #20, !srcloc !16
  %174 = load ptr, ptr %3, align 8
  %175 = load i8, ptr %174, align 4
  %176 = zext i8 %175 to i32
  %177 = icmp eq i8 %175, 0
  br i1 %177, label %187, label %178

178:                                              ; preds = %178, %141
  %179 = phi i32 [ %181, %178 ], [ 0, %141 ]
  %180 = phi i32 [ %183, %178 ], [ 0, %141 ]
  %181 = add nuw nsw i32 %179, 1
  %182 = shl i32 2, %179
  %183 = or i32 %182, %180
  %184 = icmp eq i32 %181, %176
  br i1 %184, label %185, label %178

185:                                              ; preds = %178
  %186 = xor i32 %183, -1
  br label %187

187:                                              ; preds = %185, %141
  %188 = phi i32 [ -1, %141 ], [ %186, %185 ]
  %189 = load ptr, ptr %0, align 8
  %190 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %174, i32 0, i32 13
  %191 = load i32, ptr %190, align 4
  %192 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %174, i32 0, i32 14
  %193 = load i32, ptr %192, align 4
  %194 = shl i32 %193, 10
  %195 = add i32 %194, %191
  %196 = getelementptr i8, ptr %189, i32 %195
  %197 = getelementptr i8, ptr %196, i32 1088
  %198 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %199 = getelementptr i8, ptr %198, i32 1
  %200 = load i8, ptr %199, align 1
  %201 = zext i8 %200 to i32
  %202 = getelementptr i8, ptr %197, i32 %201
  %203 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %202) #20, !srcloc !10
  %204 = and i32 %203, %188
  %205 = load ptr, ptr %0, align 8
  %206 = load ptr, ptr %3, align 8
  %207 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %206, i32 0, i32 13
  %208 = load i32, ptr %207, align 4
  %209 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %206, i32 0, i32 14
  %210 = load i32, ptr %209, align 4
  %211 = shl i32 %210, 10
  %212 = add i32 %211, %208
  %213 = getelementptr i8, ptr %205, i32 %212
  %214 = getelementptr i8, ptr %213, i32 1088
  %215 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %216 = getelementptr i8, ptr %215, i32 1
  %217 = load i8, ptr %216, align 1
  %218 = zext i8 %217 to i32
  %219 = getelementptr i8, ptr %214, i32 %218
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %219, i32 %204) #20, !srcloc !16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @bcmgenet_fini_dma(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.bcmgenet_priv, ptr %0, i32 0, i32 14
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %3, i32 0, i32 2
  %5 = load i8, ptr %4, align 2
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %16, label %7

7:                                                ; preds = %7, %1
  %8 = phi i32 [ %10, %7 ], [ 0, %1 ]
  %9 = getelementptr %struct.bcmgenet_priv, ptr %0, i32 0, i32 13, i32 %8
  tail call void @__netif_napi_del(ptr noundef %9) #20
  tail call void @synchronize_net() #20
  %10 = add nuw nsw i32 %8, 1
  %11 = load ptr, ptr %2, align 8
  %12 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %11, i32 0, i32 2
  %13 = load i8, ptr %12, align 2
  %14 = zext i8 %13 to i32
  %15 = icmp ult i32 %10, %14
  br i1 %15, label %7, label %16

16:                                               ; preds = %7, %1
  %17 = getelementptr %struct.bcmgenet_priv, ptr %0, i32 0, i32 13, i32 16
  tail call void @__netif_napi_del(ptr noundef %17) #20
  tail call void @synchronize_net() #20
  %18 = load ptr, ptr %2, align 8
  %19 = load i8, ptr %18, align 4
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %21, %16
  %22 = phi i32 [ %24, %21 ], [ 0, %16 ]
  %23 = getelementptr %struct.bcmgenet_priv, ptr %0, i32 0, i32 6, i32 %22, i32 1
  tail call void @__netif_napi_del(ptr noundef %23) #20
  tail call void @synchronize_net() #20
  %24 = add nuw nsw i32 %22, 1
  %25 = load ptr, ptr %2, align 8
  %26 = load i8, ptr %25, align 4
  %27 = zext i8 %26 to i32
  %28 = icmp ult i32 %24, %27
  br i1 %28, label %21, label %29

29:                                               ; preds = %21, %16
  %30 = getelementptr %struct.bcmgenet_priv, ptr %0, i32 0, i32 6, i32 16, i32 1
  tail call void @__netif_napi_del(ptr noundef %30) #20
  tail call void @synchronize_net() #20
  %31 = getelementptr inbounds %struct.bcmgenet_priv, ptr %0, i32 0, i32 5
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.bcmgenet_priv, ptr %0, i32 0, i32 39
  %36 = getelementptr inbounds %struct.bcmgenet_priv, ptr %0, i32 0, i32 4
  br label %43

37:                                               ; preds = %67, %29
  %38 = load ptr, ptr %2, align 8
  %39 = load i8, ptr %38, align 4
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %86, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.bcmgenet_priv, ptr %0, i32 0, i32 2
  br label %72

43:                                               ; preds = %67, %34
  %44 = phi i32 [ 0, %34 ], [ %69, %67 ]
  %45 = load ptr, ptr %35, align 8
  %46 = getelementptr inbounds %struct.platform_device, ptr %45, i32 0, i32 3
  %47 = load ptr, ptr %36, align 8
  %48 = getelementptr %struct.enet_cb, ptr %47, i32 %44
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %59, label %51

51:                                               ; preds = %43
  store ptr null, ptr %48, align 4
  %52 = getelementptr %struct.enet_cb, ptr %47, i32 %44, i32 2
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr %struct.enet_cb, ptr %47, i32 %44, i32 3
  %55 = load i32, ptr %54, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %46, i32 noundef %53, i32 noundef %55, i32 noundef 1, i32 noundef 0) #20
  store i32 0, ptr %52, align 4
  %56 = getelementptr inbounds %struct.sk_buff, ptr %49, i32 0, i32 3, i32 4
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, %48
  br i1 %58, label %67, label %66

59:                                               ; preds = %43
  %60 = getelementptr %struct.enet_cb, ptr %47, i32 %44, i32 2
  %61 = load i32, ptr %60, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %59
  %64 = getelementptr %struct.enet_cb, ptr %47, i32 %44, i32 3
  %65 = load i32, ptr %64, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %46, i32 noundef %61, i32 noundef %65, i32 noundef 1, i32 noundef 0) #20
  store i32 0, ptr %60, align 4
  br label %66

66:                                               ; preds = %63, %59, %51
  br label %67

67:                                               ; preds = %66, %51
  %68 = phi ptr [ null, %66 ], [ %49, %51 ]
  tail call void @consume_skb(ptr noundef %68) #20
  %69 = add nuw i32 %44, 1
  %70 = load i32, ptr %31, align 4
  %71 = icmp ult i32 %69, %70
  br i1 %71, label %43, label %37

72:                                               ; preds = %72, %41
  %73 = phi i32 [ 0, %41 ], [ %81, %72 ]
  %74 = load ptr, ptr %42, align 8
  %75 = getelementptr %struct.bcmgenet_priv, ptr %0, i32 0, i32 6, i32 %73, i32 5
  %76 = load i32, ptr %75, align 4
  %77 = getelementptr inbounds %struct.net_device, ptr %74, i32 0, i32 87
  %78 = load ptr, ptr %77, align 64
  %79 = getelementptr %struct.netdev_queue, ptr %78, i32 %76, i32 12
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %79) #20
  %80 = getelementptr %struct.netdev_queue, ptr %78, i32 %76, i32 14
  tail call void @dql_reset(ptr noundef %80) #20
  %81 = add nuw nsw i32 %73, 1
  %82 = load ptr, ptr %2, align 8
  %83 = load i8, ptr %82, align 4
  %84 = zext i8 %83 to i32
  %85 = icmp ult i32 %81, %84
  br i1 %85, label %72, label %86

86:                                               ; preds = %72, %37
  %87 = getelementptr inbounds %struct.bcmgenet_priv, ptr %0, i32 0, i32 2
  %88 = load ptr, ptr %87, align 8
  %89 = getelementptr %struct.bcmgenet_priv, ptr %0, i32 0, i32 6, i32 16, i32 5
  %90 = load i32, ptr %89, align 4
  %91 = getelementptr inbounds %struct.net_device, ptr %88, i32 0, i32 87
  %92 = load ptr, ptr %91, align 64
  %93 = getelementptr %struct.netdev_queue, ptr %92, i32 %90, i32 12
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %93) #20
  %94 = getelementptr %struct.netdev_queue, ptr %92, i32 %90, i32 14
  tail call void @dql_reset(ptr noundef %94) #20
  %95 = getelementptr inbounds %struct.bcmgenet_priv, ptr %0, i32 0, i32 9
  %96 = load i32, ptr %95, align 8
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %121, label %98

98:                                               ; preds = %86
  %99 = getelementptr inbounds %struct.bcmgenet_priv, ptr %0, i32 0, i32 8
  %100 = getelementptr inbounds %struct.bcmgenet_priv, ptr %0, i32 0, i32 39
  br label %101

101:                                              ; preds = %117, %98
  %102 = phi i32 [ 0, %98 ], [ %118, %117 ]
  %103 = load ptr, ptr %99, align 4
  %104 = getelementptr %struct.enet_cb, ptr %103, i32 %102
  %105 = load ptr, ptr %100, align 8
  %106 = load ptr, ptr %104, align 4
  store ptr null, ptr %104, align 4
  %107 = getelementptr %struct.enet_cb, ptr %103, i32 %102, i32 2
  %108 = load i32, ptr %107, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %101
  %111 = getelementptr inbounds %struct.platform_device, ptr %105, i32 0, i32 3
  %112 = getelementptr %struct.enet_cb, ptr %103, i32 %102, i32 3
  %113 = load i32, ptr %112, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %111, i32 noundef %108, i32 noundef %113, i32 noundef 2, i32 noundef 0) #20
  store i32 0, ptr %107, align 4
  br label %114

114:                                              ; preds = %110, %101
  %115 = icmp eq ptr %106, null
  br i1 %115, label %117, label %116

116:                                              ; preds = %114
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %106, i32 noundef 0) #20
  br label %117

117:                                              ; preds = %116, %114
  %118 = add nuw i32 %102, 1
  %119 = load i32, ptr %95, align 8
  %120 = icmp ult i32 %118, %119
  br i1 %120, label %101, label %121

121:                                              ; preds = %117, %86
  %122 = getelementptr inbounds %struct.bcmgenet_priv, ptr %0, i32 0, i32 8
  %123 = load ptr, ptr %122, align 4
  tail call void @kfree(ptr noundef %123) #20
  %124 = getelementptr inbounds %struct.bcmgenet_priv, ptr %0, i32 0, i32 4
  %125 = load ptr, ptr %124, align 8
  tail call void @kfree(ptr noundef %125) #20
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #16

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #16

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #17

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @bcmgenet_init_rx_ring(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #2 {
  %6 = alloca %struct.dim_cq_moder, align 2
  %7 = getelementptr %struct.bcmgenet_priv, ptr %0, i32 0, i32 13, i32 %1
  %8 = getelementptr inbounds %struct.bcmgenet_priv, ptr %0, i32 0, i32 14
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %9, i32 0, i32 14
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr %struct.bcmgenet_priv, ptr %0, i32 0, i32 13, i32 %1, i32 18
  store ptr %0, ptr %12, align 8
  %13 = getelementptr %struct.bcmgenet_priv, ptr %0, i32 0, i32 13, i32 %1, i32 5
  store i32 %1, ptr %13, align 8
  %14 = icmp eq i32 %1, 16
  %15 = select i1 %14, ptr @bcmgenet_rx_ring16_int_enable, ptr @bcmgenet_rx_ring_int_enable
  %16 = select i1 %14, ptr @bcmgenet_rx_ring16_int_disable, ptr @bcmgenet_rx_ring_int_disable
  %17 = getelementptr %struct.bcmgenet_priv, ptr %0, i32 0, i32 13, i32 %1, i32 16
  store ptr %15, ptr %17, align 8
  %18 = getelementptr %struct.bcmgenet_priv, ptr %0, i32 0, i32 13, i32 %1, i32 17
  store ptr %16, ptr %18, align 4
  %19 = getelementptr inbounds %struct.bcmgenet_priv, ptr %0, i32 0, i32 8
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr %struct.enet_cb, ptr %20, i32 %3
  %22 = getelementptr %struct.bcmgenet_priv, ptr %0, i32 0, i32 13, i32 %1, i32 6
  store ptr %21, ptr %22, align 4
  %23 = getelementptr %struct.bcmgenet_priv, ptr %0, i32 0, i32 13, i32 %1, i32 7
  store i32 %2, ptr %23, align 8
  %24 = getelementptr %struct.bcmgenet_priv, ptr %0, i32 0, i32 13, i32 %1, i32 8
  store i32 0, ptr %24, align 4
  %25 = getelementptr %struct.bcmgenet_priv, ptr %0, i32 0, i32 13, i32 %1, i32 9
  store i32 %3, ptr %25, align 8
  %26 = getelementptr %struct.bcmgenet_priv, ptr %0, i32 0, i32 13, i32 %1, i32 10
  store i32 %3, ptr %26, align 4
  %27 = add i32 %4, -1
  %28 = getelementptr %struct.bcmgenet_priv, ptr %0, i32 0, i32 13, i32 %1, i32 11
  store i32 %27, ptr %28, align 8
  %29 = icmp eq i32 %2, 0
  br i1 %29, label %46, label %36

30:                                               ; preds = %43
  %31 = add nuw i32 %38, 1
  %32 = load i32, ptr %23, align 8
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %30
  %35 = load ptr, ptr %22, align 4
  br label %36

36:                                               ; preds = %34, %5
  %37 = phi ptr [ %35, %34 ], [ %21, %5 ]
  %38 = phi i32 [ %31, %34 ], [ 0, %5 ]
  %39 = getelementptr %struct.enet_cb, ptr %37, i32 %38
  %40 = tail call fastcc ptr @bcmgenet_rx_refill(ptr noundef %0, ptr noundef %39) #20
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %36
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %40, i32 noundef 0) #20
  br label %43

43:                                               ; preds = %42, %36
  %44 = load ptr, ptr %39, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %254, label %30

46:                                               ; preds = %30, %5
  %47 = getelementptr %struct.bcmgenet_priv, ptr %0, i32 0, i32 13, i32 %1, i32 13, i32 4, i32 4
  store i32 -32, ptr %47, align 8
  %48 = getelementptr %struct.bcmgenet_priv, ptr %0, i32 0, i32 13, i32 %1, i32 13, i32 4, i32 4, i32 1
  store volatile ptr %48, ptr %48, align 4
  %49 = getelementptr %struct.bcmgenet_priv, ptr %0, i32 0, i32 13, i32 %1, i32 13, i32 4, i32 4, i32 1, i32 1
  store ptr %48, ptr %49, align 4
  %50 = getelementptr %struct.bcmgenet_priv, ptr %0, i32 0, i32 13, i32 %1, i32 13, i32 4, i32 4, i32 2
  store ptr @bcmgenet_dim_work, ptr %50, align 4
  %51 = getelementptr %struct.bcmgenet_priv, ptr %0, i32 0, i32 13, i32 %1, i32 13, i32 4, i32 7
  store i8 0, ptr %51, align 1
  %52 = getelementptr %struct.bcmgenet_priv, ptr %0, i32 0, i32 13, i32 %1, i32 13, i32 1
  store i16 0, ptr %52, align 2
  %53 = getelementptr %struct.bcmgenet_priv, ptr %0, i32 0, i32 13, i32 %1, i32 13, i32 2
  store i32 0, ptr %53, align 4
  %54 = getelementptr %struct.bcmgenet_priv, ptr %0, i32 0, i32 13, i32 %1, i32 13, i32 3
  store i32 0, ptr %54, align 8
  %55 = getelementptr %struct.bcmgenet_priv, ptr %0, i32 0, i32 13, i32 %1, i32 13
  %56 = getelementptr %struct.bcmgenet_priv, ptr %0, i32 0, i32 13, i32 %1, i32 15
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr %struct.bcmgenet_priv, ptr %0, i32 0, i32 13, i32 %1, i32 14
  %59 = load i32, ptr %58, align 8
  %60 = load i16, ptr %55, align 8
  %61 = icmp eq i16 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %46
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #20
  call void @net_dim_get_def_rx_moderation(ptr nonnull sret(%struct.dim_cq_moder) align 2 %6, i8 noundef zeroext 0) #20
  %63 = load i16, ptr %6, align 2
  %64 = getelementptr inbounds i8, ptr %6, i32 2
  %65 = load i16, ptr %64, align 2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #20
  %66 = zext i16 %63 to i32
  %67 = zext i16 %65 to i32
  br label %68

68:                                               ; preds = %62, %46
  %69 = phi i32 [ %66, %62 ], [ %57, %46 ]
  %70 = phi i32 [ %67, %62 ], [ %59, %46 ]
  %71 = load ptr, ptr %12, align 8
  %72 = load i32, ptr %13, align 8
  %73 = load ptr, ptr %71, align 8
  %74 = getelementptr inbounds %struct.bcmgenet_priv, ptr %71, i32 0, i32 14
  %75 = load ptr, ptr %74, align 8
  %76 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %75, i32 0, i32 12
  %77 = load i32, ptr %76, align 4
  %78 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %75, i32 0, i32 14
  %79 = load i32, ptr %78, align 4
  %80 = shl i32 %79, 10
  %81 = add i32 %80, %77
  %82 = getelementptr i8, ptr %73, i32 %81
  %83 = shl i32 %72, 6
  %84 = getelementptr i8, ptr %82, i32 %83
  %85 = load ptr, ptr @genet_dma_ring_regs, align 4
  %86 = getelementptr i8, ptr %85, i32 9
  %87 = load i8, ptr %86, align 1
  %88 = zext i8 %87 to i32
  %89 = getelementptr i8, ptr %84, i32 %88
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %89, i32 %70) #20, !srcloc !16
  %90 = add i32 %72, 16
  %91 = load ptr, ptr %71, align 8
  %92 = load ptr, ptr %74, align 8
  %93 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %92, i32 0, i32 12
  %94 = load i32, ptr %93, align 4
  %95 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %92, i32 0, i32 14
  %96 = load i32, ptr %95, align 4
  %97 = shl i32 %96, 10
  %98 = add i32 %97, %94
  %99 = getelementptr i8, ptr %91, i32 %98
  %100 = getelementptr i8, ptr %99, i32 1088
  %101 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %102 = getelementptr i8, ptr %101, i32 %90
  %103 = load i8, ptr %102, align 1
  %104 = zext i8 %103 to i32
  %105 = getelementptr i8, ptr %100, i32 %104
  %106 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %105) #20, !srcloc !10
  %107 = and i32 %106, -65536
  %108 = mul i32 %69, 1000
  %109 = add i32 %108, 8191
  %110 = lshr i32 %109, 13
  %111 = or i32 %107, %110
  %112 = load ptr, ptr %71, align 8
  %113 = load ptr, ptr %74, align 8
  %114 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %113, i32 0, i32 12
  %115 = load i32, ptr %114, align 4
  %116 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %113, i32 0, i32 14
  %117 = load i32, ptr %116, align 4
  %118 = shl i32 %117, 10
  %119 = add i32 %118, %115
  %120 = getelementptr i8, ptr %112, i32 %119
  %121 = getelementptr i8, ptr %120, i32 1088
  %122 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %123 = getelementptr i8, ptr %122, i32 %90
  %124 = load i8, ptr %123, align 1
  %125 = zext i8 %124 to i32
  %126 = getelementptr i8, ptr %121, i32 %125
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %126, i32 %111) #20, !srcloc !16
  %127 = getelementptr inbounds %struct.bcmgenet_priv, ptr %0, i32 0, i32 2
  %128 = load ptr, ptr %127, align 8
  call void @netif_napi_add(ptr noundef %128, ptr noundef %7, ptr noundef nonnull @bcmgenet_rx_poll, i32 noundef 64) #20
  %129 = load ptr, ptr %0, align 8
  %130 = load ptr, ptr %8, align 8
  %131 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %130, i32 0, i32 12
  %132 = load i32, ptr %131, align 4
  %133 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %130, i32 0, i32 14
  %134 = load i32, ptr %133, align 4
  %135 = shl i32 %134, 10
  %136 = add i32 %135, %132
  %137 = getelementptr i8, ptr %129, i32 %136
  %138 = shl i32 %1, 6
  %139 = getelementptr i8, ptr %137, i32 %138
  %140 = load ptr, ptr @genet_dma_ring_regs, align 4
  %141 = getelementptr i8, ptr %140, i32 2
  %142 = load i8, ptr %141, align 1
  %143 = zext i8 %142 to i32
  %144 = getelementptr i8, ptr %139, i32 %143
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %144, i32 0) #20, !srcloc !16
  %145 = load ptr, ptr %0, align 8
  %146 = load ptr, ptr %8, align 8
  %147 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %146, i32 0, i32 12
  %148 = load i32, ptr %147, align 4
  %149 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %146, i32 0, i32 14
  %150 = load i32, ptr %149, align 4
  %151 = shl i32 %150, 10
  %152 = add i32 %151, %148
  %153 = getelementptr i8, ptr %145, i32 %152
  %154 = getelementptr i8, ptr %153, i32 %138
  %155 = load ptr, ptr @genet_dma_ring_regs, align 4
  %156 = getelementptr i8, ptr %155, i32 3
  %157 = load i8, ptr %156, align 1
  %158 = zext i8 %157 to i32
  %159 = getelementptr i8, ptr %154, i32 %158
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %159, i32 0) #20, !srcloc !16
  %160 = shl i32 %2, 16
  %161 = or i32 %160, 2048
  %162 = load ptr, ptr %0, align 8
  %163 = load ptr, ptr %8, align 8
  %164 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %163, i32 0, i32 12
  %165 = load i32, ptr %164, align 4
  %166 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %163, i32 0, i32 14
  %167 = load i32, ptr %166, align 4
  %168 = shl i32 %167, 10
  %169 = add i32 %168, %165
  %170 = getelementptr i8, ptr %162, i32 %169
  %171 = getelementptr i8, ptr %170, i32 %138
  %172 = load ptr, ptr @genet_dma_ring_regs, align 4
  %173 = getelementptr i8, ptr %172, i32 4
  %174 = load i8, ptr %173, align 1
  %175 = zext i8 %174 to i32
  %176 = getelementptr i8, ptr %171, i32 %175
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %176, i32 %161) #20, !srcloc !16
  %177 = load ptr, ptr %0, align 8
  %178 = load ptr, ptr %8, align 8
  %179 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %178, i32 0, i32 12
  %180 = load i32, ptr %179, align 4
  %181 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %178, i32 0, i32 14
  %182 = load i32, ptr %181, align 4
  %183 = shl i32 %182, 10
  %184 = add i32 %183, %180
  %185 = getelementptr i8, ptr %177, i32 %184
  %186 = getelementptr i8, ptr %185, i32 %138
  %187 = load ptr, ptr @genet_dma_ring_regs, align 4
  %188 = getelementptr i8, ptr %187, i32 10
  %189 = load i8, ptr %188, align 1
  %190 = zext i8 %189 to i32
  %191 = getelementptr i8, ptr %186, i32 %190
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %191, i32 327696) #20, !srcloc !16
  %192 = mul i32 %11, %3
  %193 = load ptr, ptr %0, align 8
  %194 = load ptr, ptr %8, align 8
  %195 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %194, i32 0, i32 12
  %196 = load i32, ptr %195, align 4
  %197 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %194, i32 0, i32 14
  %198 = load i32, ptr %197, align 4
  %199 = shl i32 %198, 10
  %200 = add i32 %199, %196
  %201 = getelementptr i8, ptr %193, i32 %200
  %202 = getelementptr i8, ptr %201, i32 %138
  %203 = load ptr, ptr @genet_dma_ring_regs, align 4
  %204 = getelementptr i8, ptr %203, i32 5
  %205 = load i8, ptr %204, align 1
  %206 = zext i8 %205 to i32
  %207 = getelementptr i8, ptr %202, i32 %206
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %207, i32 %192) #20, !srcloc !16
  %208 = load ptr, ptr %0, align 8
  %209 = load ptr, ptr %8, align 8
  %210 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %209, i32 0, i32 12
  %211 = load i32, ptr %210, align 4
  %212 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %209, i32 0, i32 14
  %213 = load i32, ptr %212, align 4
  %214 = shl i32 %213, 10
  %215 = add i32 %214, %211
  %216 = getelementptr i8, ptr %208, i32 %215
  %217 = getelementptr i8, ptr %216, i32 %138
  %218 = load ptr, ptr @genet_dma_ring_regs, align 4
  %219 = getelementptr i8, ptr %218, i32 11
  %220 = load i8, ptr %219, align 1
  %221 = zext i8 %220 to i32
  %222 = getelementptr i8, ptr %217, i32 %221
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %222, i32 %192) #20, !srcloc !16
  %223 = load ptr, ptr %0, align 8
  %224 = load ptr, ptr %8, align 8
  %225 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %224, i32 0, i32 12
  %226 = load i32, ptr %225, align 4
  %227 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %224, i32 0, i32 14
  %228 = load i32, ptr %227, align 4
  %229 = shl i32 %228, 10
  %230 = add i32 %229, %226
  %231 = getelementptr i8, ptr %223, i32 %230
  %232 = getelementptr i8, ptr %231, i32 %138
  %233 = load ptr, ptr @genet_dma_ring_regs, align 4
  %234 = load i8, ptr %233, align 1
  %235 = zext i8 %234 to i32
  %236 = getelementptr i8, ptr %232, i32 %235
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %236, i32 %192) #20, !srcloc !16
  %237 = mul i32 %11, %4
  %238 = add i32 %237, -1
  %239 = load ptr, ptr %0, align 8
  %240 = load ptr, ptr %8, align 8
  %241 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %240, i32 0, i32 12
  %242 = load i32, ptr %241, align 4
  %243 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %240, i32 0, i32 14
  %244 = load i32, ptr %243, align 4
  %245 = shl i32 %244, 10
  %246 = add i32 %245, %242
  %247 = getelementptr i8, ptr %239, i32 %246
  %248 = getelementptr i8, ptr %247, i32 %138
  %249 = load ptr, ptr @genet_dma_ring_regs, align 4
  %250 = getelementptr i8, ptr %249, i32 7
  %251 = load i8, ptr %250, align 1
  %252 = zext i8 %251 to i32
  %253 = getelementptr i8, ptr %248, i32 %252
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %253, i32 %238) #20, !srcloc !16
  br label %254

254:                                              ; preds = %68, %43
  %255 = phi i32 [ 0, %68 ], [ -12, %43 ]
  ret i32 %255
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcmgenet_rx_ring16_int_enable(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.bcmgenet_rx_ring, ptr %0, i32 0, i32 18
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 8192) #20, !srcloc !16
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcmgenet_rx_ring16_int_disable(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.bcmgenet_rx_ring, ptr %0, i32 0, i32 18
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 8192) #20, !srcloc !16
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcmgenet_rx_ring_int_enable(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.bcmgenet_rx_ring, ptr %0, i32 0, i32 18
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.bcmgenet_rx_ring, ptr %0, i32 0, i32 5
  %5 = load i32, ptr %4, align 8
  %6 = add i32 %5, 16
  %7 = shl nuw i32 1, %6
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr i8, ptr %8, i32 596
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #20, !srcloc !16
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcmgenet_rx_ring_int_disable(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.bcmgenet_rx_ring, ptr %0, i32 0, i32 18
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.bcmgenet_rx_ring, ptr %0, i32 0, i32 5
  %5 = load i32, ptr %4, align 8
  %6 = add i32 %5, 16
  %7 = shl nuw i32 1, %6
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr i8, ptr %8, i32 592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #20, !srcloc !16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcmgenet_dim_work(ptr nocapture noundef %0) #2 {
  %2 = alloca %struct.dim_cq_moder, align 8
  %3 = getelementptr i8, ptr %0, i32 -72
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #20
  store i64 0, ptr %2, align 8, !annotation !17
  %4 = getelementptr i8, ptr %0, i32 21
  %5 = load i8, ptr %4, align 1
  %6 = getelementptr i8, ptr %0, i32 20
  %7 = load i8, ptr %6, align 4
  %8 = zext i8 %7 to i32
  call void @net_dim_get_rx_moderation(ptr nonnull sret(%struct.dim_cq_moder) align 2 %2, i8 noundef zeroext %5, i32 noundef %8) #20
  %9 = load i16, ptr %2, align 8
  %10 = zext i16 %9 to i32
  %11 = getelementptr inbounds %struct.dim_cq_moder, ptr %2, i32 0, i32 1
  %12 = load i16, ptr %11, align 2
  %13 = zext i16 %12 to i32
  %14 = getelementptr i8, ptr %0, i32 48
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr i8, ptr %0, i32 -120
  %17 = load i32, ptr %16, align 8
  %18 = load ptr, ptr %15, align 8
  %19 = getelementptr inbounds %struct.bcmgenet_priv, ptr %15, i32 0, i32 14
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %20, i32 0, i32 12
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %20, i32 0, i32 14
  %24 = load i32, ptr %23, align 4
  %25 = shl i32 %24, 10
  %26 = add i32 %25, %22
  %27 = getelementptr i8, ptr %18, i32 %26
  %28 = shl i32 %17, 6
  %29 = getelementptr i8, ptr %27, i32 %28
  %30 = load ptr, ptr @genet_dma_ring_regs, align 4
  %31 = getelementptr i8, ptr %30, i32 9
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  %34 = getelementptr i8, ptr %29, i32 %33
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %13) #20, !srcloc !16
  %35 = add i32 %17, 16
  %36 = load ptr, ptr %15, align 8
  %37 = load ptr, ptr %19, align 8
  %38 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %37, i32 0, i32 12
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %37, i32 0, i32 14
  %41 = load i32, ptr %40, align 4
  %42 = shl i32 %41, 10
  %43 = add i32 %42, %39
  %44 = getelementptr i8, ptr %36, i32 %43
  %45 = getelementptr i8, ptr %44, i32 1088
  %46 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %47 = getelementptr i8, ptr %46, i32 %35
  %48 = load i8, ptr %47, align 1
  %49 = zext i8 %48 to i32
  %50 = getelementptr i8, ptr %45, i32 %49
  %51 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #20, !srcloc !10
  %52 = and i32 %51, -65536
  %53 = mul nuw nsw i32 %10, 1000
  %54 = add nuw nsw i32 %53, 8191
  %55 = lshr i32 %54, 13
  %56 = or i32 %52, %55
  %57 = load ptr, ptr %15, align 8
  %58 = load ptr, ptr %19, align 8
  %59 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %58, i32 0, i32 12
  %60 = load i32, ptr %59, align 4
  %61 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %58, i32 0, i32 14
  %62 = load i32, ptr %61, align 4
  %63 = shl i32 %62, 10
  %64 = add i32 %63, %60
  %65 = getelementptr i8, ptr %57, i32 %64
  %66 = getelementptr i8, ptr %65, i32 1088
  %67 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %68 = getelementptr i8, ptr %67, i32 %35
  %69 = load i8, ptr %68, align 1
  %70 = zext i8 %69 to i32
  %71 = getelementptr i8, ptr %66, i32 %70
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 %56) #20, !srcloc !16
  store i8 0, ptr %3, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcmgenet_rx_poll(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.bcmgenet_rx_ring, ptr %0, i32 0, i32 18
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.bcmgenet_priv, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.bcmgenet_rx_ring, ptr %0, i32 0, i32 5
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %8, 16
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load ptr, ptr %4, align 8
  %12 = getelementptr i8, ptr %11, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 8192) #20, !srcloc !16
  br label %18

13:                                               ; preds = %2
  %14 = add i32 %8, 16
  %15 = shl nuw i32 1, %14
  %16 = load ptr, ptr %4, align 8
  %17 = getelementptr i8, ptr %16, i32 584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #20, !srcloc !16
  br label %18

18:                                               ; preds = %13, %10
  %19 = load i32, ptr %7, align 8
  %20 = load ptr, ptr %4, align 8
  %21 = getelementptr inbounds %struct.bcmgenet_priv, ptr %4, i32 0, i32 14
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %22, i32 0, i32 12
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %22, i32 0, i32 14
  %26 = load i32, ptr %25, align 4
  %27 = shl i32 %26, 10
  %28 = add i32 %27, %24
  %29 = getelementptr i8, ptr %20, i32 %28
  %30 = shl i32 %19, 6
  %31 = getelementptr i8, ptr %29, i32 %30
  %32 = load ptr, ptr @genet_dma_ring_regs, align 4
  %33 = getelementptr i8, ptr %32, i32 2
  %34 = load i8, ptr %33, align 1
  %35 = zext i8 %34 to i32
  %36 = getelementptr i8, ptr %31, i32 %35
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #20, !srcloc !10
  %38 = lshr i32 %37, 16
  %39 = getelementptr inbounds %struct.bcmgenet_rx_ring, ptr %0, i32 0, i32 12
  %40 = load i32, ptr %39, align 4
  %41 = icmp ugt i32 %38, %40
  br i1 %41, label %42, label %66

42:                                               ; preds = %18
  %43 = sub i32 %38, %40
  %44 = getelementptr inbounds %struct.bcmgenet_rx_ring, ptr %0, i32 0, i32 3
  %45 = load i32, ptr %44, align 8
  %46 = add i32 %43, %45
  store i32 %46, ptr %44, align 8
  store i32 %38, ptr %39, align 4
  %47 = icmp ugt i32 %37, -1073741825
  br i1 %47, label %48, label %66

48:                                               ; preds = %42
  store i32 0, ptr %39, align 4
  %49 = load i32, ptr %7, align 8
  %50 = load ptr, ptr %4, align 8
  %51 = load ptr, ptr %21, align 8
  %52 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %51, i32 0, i32 12
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %51, i32 0, i32 14
  %55 = load i32, ptr %54, align 4
  %56 = shl i32 %55, 10
  %57 = add i32 %56, %53
  %58 = getelementptr i8, ptr %50, i32 %57
  %59 = shl i32 %49, 6
  %60 = getelementptr i8, ptr %58, i32 %59
  %61 = load ptr, ptr @genet_dma_ring_regs, align 4
  %62 = getelementptr i8, ptr %61, i32 2
  %63 = load i8, ptr %62, align 1
  %64 = zext i8 %63 to i32
  %65 = getelementptr i8, ptr %60, i32 %64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 0) #20, !srcloc !16
  br label %66

66:                                               ; preds = %48, %42, %18
  %67 = getelementptr inbounds %struct.bcmgenet_rx_ring, ptr %0, i32 0, i32 8
  %68 = load i32, ptr %67, align 4
  %69 = sub i32 %37, %68
  %70 = and i32 %69, 65535
  %71 = icmp ne i32 %70, 0
  %72 = icmp ne i32 %1, 0
  %73 = and i1 %72, %71
  br i1 %73, label %74, label %234

74:                                               ; preds = %66
  %75 = getelementptr inbounds %struct.bcmgenet_priv, ptr %4, i32 0, i32 8
  %76 = getelementptr inbounds %struct.bcmgenet_rx_ring, ptr %0, i32 0, i32 9
  %77 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 23
  %78 = getelementptr inbounds %struct.bcmgenet_priv, ptr %4, i32 0, i32 37
  %79 = getelementptr inbounds %struct.bcmgenet_rx_ring, ptr %0, i32 0, i32 3
  %80 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 36, i32 12
  %81 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 36, i32 11
  %82 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 36, i32 13
  %83 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 36, i32 10
  %84 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 36, i32 4
  %85 = getelementptr inbounds %struct.bcmgenet_priv, ptr %4, i32 0, i32 35
  %86 = getelementptr inbounds %struct.bcmgenet_rx_ring, ptr %0, i32 0, i32 2
  %87 = getelementptr inbounds %struct.bcmgenet_rx_ring, ptr %0, i32 0, i32 1
  %88 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 36, i32 8
  %89 = getelementptr inbounds %struct.bcmgenet_rx_ring, ptr %0, i32 0, i32 4
  %90 = getelementptr inbounds %struct.bcmgenet_rx_ring, ptr %0, i32 0, i32 11
  %91 = getelementptr inbounds %struct.bcmgenet_rx_ring, ptr %0, i32 0, i32 10
  %92 = add i32 %1, -1
  %93 = add nsw i32 %70, -1
  %94 = tail call i32 @llvm.umin.i32(i32 %92, i32 %93) #20
  br label %95

95:                                               ; preds = %209, %74
  %96 = phi i32 [ 0, %74 ], [ %200, %209 ]
  %97 = phi i32 [ 0, %74 ], [ %201, %209 ]
  %98 = load ptr, ptr %75, align 4
  %99 = load i32, ptr %76, align 8
  %100 = getelementptr %struct.enet_cb, ptr %98, i32 %99
  %101 = tail call fastcc ptr @bcmgenet_rx_refill(ptr noundef %4, ptr noundef %100) #20
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %106, !prof !18

103:                                              ; preds = %95
  %104 = load i32, ptr %89, align 4
  %105 = add i32 %104, 1
  store i32 %105, ptr %89, align 4
  br label %199

106:                                              ; preds = %95
  %107 = getelementptr inbounds %struct.sk_buff, ptr %101, i32 0, i32 17
  %108 = load ptr, ptr %107, align 4
  %109 = load i32, ptr %108, align 4
  %110 = load i64, ptr %77, align 16
  %111 = and i64 %110, 1099511627776
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %126, label %113

113:                                              ; preds = %106
  %114 = getelementptr inbounds %struct.status_64, ptr %108, i32 0, i32 2
  %115 = load i32, ptr %114, align 4
  %116 = trunc i32 %115 to i16
  %117 = icmp eq i16 %116, 0
  br i1 %117, label %126, label %118

118:                                              ; preds = %113
  %119 = tail call i16 @llvm.bswap.i16(i16 %116) #20
  %120 = zext i16 %119 to i32
  %121 = getelementptr inbounds %struct.sk_buff, ptr %101, i32 0, i32 13, i32 0, i32 4
  store i32 %120, ptr %121, align 4
  %122 = getelementptr inbounds %struct.sk_buff, ptr %101, i32 0, i32 13
  %123 = load i16, ptr %122, align 8
  %124 = and i16 %123, -97
  %125 = or i16 %124, 64
  store i16 %125, ptr %122, align 8
  br label %126

126:                                              ; preds = %118, %113, %106
  %127 = and i32 %109, 65535
  %128 = lshr i32 %109, 16
  %129 = and i32 %109, 24576
  %130 = icmp eq i32 %129, 24576
  br i1 %130, label %139, label %131, !prof !22

131:                                              ; preds = %126
  %132 = load i32, ptr %78, align 8
  %133 = and i32 %132, 2048
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %131
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %6, ptr noundef nonnull @.str.23) #21
  br label %136

136:                                              ; preds = %135, %131
  %137 = load i32, ptr %79, align 8
  %138 = add i32 %137, 1
  store i32 %138, ptr %79, align 8
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %101, i32 noundef 1) #20
  br label %199

139:                                              ; preds = %126
  %140 = and i32 %109, 31
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %174, label %142, !prof !22

142:                                              ; preds = %139
  %143 = load i32, ptr %78, align 8
  %144 = and i32 %143, 2048
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %142
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %6, ptr noundef nonnull @.str.24, i32 noundef %127) #21
  br label %147

147:                                              ; preds = %146, %142
  %148 = and i32 %109, 2
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %153, label %150

150:                                              ; preds = %147
  %151 = load i32, ptr %80, align 8
  %152 = add i32 %151, 1
  store i32 %152, ptr %80, align 8
  br label %153

153:                                              ; preds = %150, %147
  %154 = and i32 %109, 1
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %159, label %156

156:                                              ; preds = %153
  %157 = load i32, ptr %81, align 4
  %158 = add i32 %157, 1
  store i32 %158, ptr %81, align 4
  br label %159

159:                                              ; preds = %156, %153
  %160 = and i32 %109, 8
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %165, label %162

162:                                              ; preds = %159
  %163 = load i32, ptr %82, align 4
  %164 = add i32 %163, 1
  store i32 %164, ptr %82, align 4
  br label %165

165:                                              ; preds = %162, %159
  %166 = and i32 %109, 16
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %171, label %168

168:                                              ; preds = %165
  %169 = load i32, ptr %83, align 8
  %170 = add i32 %169, 1
  store i32 %170, ptr %83, align 8
  br label %171

171:                                              ; preds = %168, %165
  %172 = load i32, ptr %84, align 8
  %173 = add i32 %172, 1
  store i32 %173, ptr %84, align 8
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %101, i32 noundef 1) #20
  br label %199

174:                                              ; preds = %139
  %175 = tail call ptr @skb_put(ptr noundef nonnull %101, i32 noundef %128) #20
  %176 = tail call ptr @skb_pull(ptr noundef nonnull %101, i32 noundef 66) #20
  %177 = add nsw i32 %128, -66
  %178 = load i8, ptr %85, align 8, !range !9
  %179 = icmp eq i8 %178, 0
  br i1 %179, label %182, label %180

180:                                              ; preds = %174
  %181 = add nsw i32 %128, -70
  tail call void @skb_trim(ptr noundef nonnull %101, i32 noundef %181) #20
  br label %182

182:                                              ; preds = %180, %174
  %183 = phi i32 [ %181, %180 ], [ %177, %174 ]
  %184 = add i32 %183, %96
  %185 = load ptr, ptr %5, align 8
  %186 = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %101, ptr noundef %185) #20
  %187 = getelementptr inbounds %struct.sk_buff, ptr %101, i32 0, i32 13, i32 0, i32 16
  store i16 %186, ptr %187, align 8
  %188 = load i32, ptr %86, align 4
  %189 = add i32 %188, 1
  store i32 %189, ptr %86, align 4
  %190 = load i32, ptr %87, align 8
  %191 = add i32 %190, %183
  store i32 %191, ptr %87, align 8
  %192 = and i32 %109, 32
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %197, label %194

194:                                              ; preds = %182
  %195 = load i32, ptr %88, align 8
  %196 = add i32 %195, 1
  store i32 %196, ptr %88, align 8
  br label %197

197:                                              ; preds = %194, %182
  %198 = tail call i32 @napi_gro_receive(ptr noundef %0, ptr noundef nonnull %101) #20
  br label %199

199:                                              ; preds = %197, %171, %136, %103
  %200 = phi i32 [ %96, %103 ], [ %96, %136 ], [ %96, %171 ], [ %184, %197 ]
  %201 = add nuw nsw i32 %97, 1
  %202 = load i32, ptr %76, align 8
  %203 = load i32, ptr %90, align 8
  %204 = icmp ult i32 %202, %203
  br i1 %204, label %205, label %207, !prof !22

205:                                              ; preds = %199
  %206 = add nuw i32 %202, 1
  br label %209

207:                                              ; preds = %199
  %208 = load i32, ptr %91, align 4
  br label %209

209:                                              ; preds = %207, %205
  %210 = phi i32 [ %208, %207 ], [ %206, %205 ]
  store i32 %210, ptr %76, align 8
  %211 = load i32, ptr %67, align 4
  %212 = add i32 %211, 1
  %213 = and i32 %212, 65535
  store i32 %213, ptr %67, align 4
  %214 = load i32, ptr %7, align 8
  %215 = load ptr, ptr %4, align 8
  %216 = load ptr, ptr %21, align 8
  %217 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %216, i32 0, i32 12
  %218 = load i32, ptr %217, align 4
  %219 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %216, i32 0, i32 14
  %220 = load i32, ptr %219, align 4
  %221 = shl i32 %220, 10
  %222 = add i32 %221, %218
  %223 = getelementptr i8, ptr %215, i32 %222
  %224 = shl i32 %214, 6
  %225 = getelementptr i8, ptr %223, i32 %224
  %226 = load ptr, ptr @genet_dma_ring_regs, align 4
  %227 = getelementptr i8, ptr %226, i32 3
  %228 = load i8, ptr %227, align 1
  %229 = zext i8 %228 to i32
  %230 = getelementptr i8, ptr %225, i32 %229
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %230, i32 %213) #20, !srcloc !16
  %231 = icmp eq i32 %97, %94
  br i1 %231, label %232, label %95

232:                                              ; preds = %209
  %233 = add nuw nsw i32 %94, 1
  br label %234

234:                                              ; preds = %232, %66
  %235 = phi i32 [ 0, %66 ], [ %233, %232 ]
  %236 = phi i32 [ 0, %66 ], [ %200, %232 ]
  %237 = getelementptr inbounds %struct.bcmgenet_rx_ring, ptr %0, i32 0, i32 13, i32 3
  store i32 %236, ptr %237, align 8
  %238 = getelementptr inbounds %struct.bcmgenet_rx_ring, ptr %0, i32 0, i32 13, i32 2
  store i32 %235, ptr %238, align 4
  %239 = icmp ult i32 %235, %1
  br i1 %239, label %240, label %244

240:                                              ; preds = %234
  %241 = tail call zeroext i1 @napi_complete_done(ptr noundef %0, i32 noundef %235) #20
  %242 = getelementptr inbounds %struct.bcmgenet_rx_ring, ptr %0, i32 0, i32 16
  %243 = load ptr, ptr %242, align 8
  tail call void %243(ptr noundef %0) #20
  br label %244

244:                                              ; preds = %240, %234
  %245 = getelementptr inbounds %struct.bcmgenet_rx_ring, ptr %0, i32 0, i32 13
  %246 = load i16, ptr %245, align 8
  %247 = icmp eq i16 %246, 0
  br i1 %247, label %263, label %248

248:                                              ; preds = %244
  %249 = getelementptr inbounds %struct.bcmgenet_rx_ring, ptr %0, i32 0, i32 13, i32 1
  %250 = load i16, ptr %249, align 2
  %251 = load i32, ptr %238, align 4
  %252 = load i32, ptr %237, align 8
  %253 = tail call i64 @ktime_get() #20
  %254 = zext i16 %250 to i64
  %255 = getelementptr inbounds %struct.bcmgenet_rx_ring, ptr %0, i32 0, i32 13, i32 4
  %256 = insertvalue [3 x i64] poison, i64 %253, 0
  %257 = zext i32 %252 to i64
  %258 = shl nuw i64 %257, 32
  %259 = zext i32 %251 to i64
  %260 = or i64 %258, %259
  %261 = insertvalue [3 x i64] %256, i64 %260, 1
  %262 = insertvalue [3 x i64] %261, i64 %254, 2
  tail call void @net_dim(ptr noundef %255, [3 x i64] %262) #20
  br label %263

263:                                              ; preds = %248, %244
  ret i32 %235
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @bcmgenet_rx_refill(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.bcmgenet_priv, ptr %0, i32 0, i32 39
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  %6 = getelementptr inbounds %struct.bcmgenet_priv, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.bcmgenet_priv, ptr %0, i32 0, i32 10
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, 32
  %11 = tail call ptr @__netdev_alloc_skb(ptr noundef %7, i32 noundef %10, i32 noundef 10784) #20
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.bcmgenet_priv, ptr %0, i32 0, i32 45, i32 9
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, 1
  store i32 %16, ptr %14, align 4
  %17 = getelementptr inbounds %struct.bcmgenet_priv, ptr %0, i32 0, i32 37
  %18 = load i32, ptr %17, align 8
  %19 = and i32 %18, 64
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %74, label %21

21:                                               ; preds = %13
  %22 = load ptr, ptr %6, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %22, ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.bcmgenet_rx_refill) #21
  br label %74

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 17
  %25 = load ptr, ptr %24, align 4
  %26 = load i32, ptr %8, align 4
  %27 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %25) #20
  %28 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %29 = xor i1 %28, true
  %30 = select i1 %27, i1 %29, i1 false
  br i1 %30, label %31, label %40, !prof !18

31:                                               ; preds = %23
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %32 = tail call ptr @dev_driver_string(ptr noundef %5) #20
  %33 = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3, i32 3
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load ptr, ptr %5, align 4
  br label %38

38:                                               ; preds = %36, %31
  %39 = phi ptr [ %37, %36 ], [ %34, %31 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.22, ptr noundef %32, ptr noundef %39) #20
  br label %40

40:                                               ; preds = %38, %23
  br i1 %27, label %50, label %41

41:                                               ; preds = %40
  %42 = load ptr, ptr @mem_map, align 4
  %43 = ptrtoint ptr %25 to i32
  %44 = add i32 %43, 1073741824
  %45 = lshr i32 %44, 12
  %46 = getelementptr %struct.page, ptr %42, i32 %45
  %47 = and i32 %43, 4095
  %48 = tail call i32 @dma_map_page_attrs(ptr noundef %5, ptr noundef %46, i32 noundef %47, i32 noundef %26, i32 noundef 2, i32 noundef 0) #20
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %60

50:                                               ; preds = %41, %40
  %51 = getelementptr inbounds %struct.bcmgenet_priv, ptr %0, i32 0, i32 45, i32 10
  %52 = load i32, ptr %51, align 8
  %53 = add i32 %52, 1
  store i32 %53, ptr %51, align 8
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %11, i32 noundef 1) #20
  %54 = getelementptr inbounds %struct.bcmgenet_priv, ptr %0, i32 0, i32 37
  %55 = load i32, ptr %54, align 8
  %56 = and i32 %55, 64
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %74, label %58

58:                                               ; preds = %50
  %59 = load ptr, ptr %6, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %59, ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.bcmgenet_rx_refill) #21
  br label %74

60:                                               ; preds = %41
  %61 = load ptr, ptr %1, align 4
  store ptr null, ptr %1, align 4
  %62 = getelementptr inbounds %struct.enet_cb, ptr %1, i32 0, i32 2
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.enet_cb, ptr %1, i32 0, i32 3
  %67 = load i32, ptr %66, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %5, i32 noundef %63, i32 noundef %67, i32 noundef 2, i32 noundef 0) #20
  br label %68

68:                                               ; preds = %65, %60
  store ptr %11, ptr %1, align 4
  store i32 %48, ptr %62, align 4
  %69 = load i32, ptr %8, align 4
  %70 = getelementptr inbounds %struct.enet_cb, ptr %1, i32 0, i32 3
  store i32 %69, ptr %70, align 4
  %71 = getelementptr inbounds %struct.enet_cb, ptr %1, i32 0, i32 1
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr i8, ptr %72, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 %48) #20, !srcloc !16
  br label %74

74:                                               ; preds = %68, %58, %50, %21, %13
  %75 = phi ptr [ %61, %68 ], [ null, %21 ], [ null, %13 ], [ null, %58 ], [ null, %50 ]
  ret ptr %75
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @net_dim_get_rx_moderation(ptr sret(%struct.dim_cq_moder) align 2, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @net_dim(ptr noundef, [3 x i64]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @napi_gro_receive(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @bcmgenet_init_tx_ring(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #2 {
  %6 = getelementptr %struct.bcmgenet_priv, ptr %0, i32 0, i32 6, i32 %1
  %7 = getelementptr inbounds %struct.bcmgenet_priv, ptr %0, i32 0, i32 14
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %8, i32 0, i32 14
  %10 = load i32, ptr %9, align 4
  store i32 0, ptr %6, align 8
  %11 = getelementptr %struct.bcmgenet_priv, ptr %0, i32 0, i32 6, i32 %1, i32 17
  store ptr %0, ptr %11, align 4
  %12 = getelementptr %struct.bcmgenet_priv, ptr %0, i32 0, i32 6, i32 %1, i32 4
  store i32 %1, ptr %12, align 8
  %13 = icmp eq i32 %1, 16
  br i1 %13, label %16, label %14

14:                                               ; preds = %5
  %15 = add i32 %1, 1
  br label %16

16:                                               ; preds = %14, %5
  %17 = phi i32 [ %15, %14 ], [ 0, %5 ]
  %18 = phi ptr [ @bcmgenet_tx_ring_int_enable, %14 ], [ @bcmgenet_tx_ring16_int_enable, %5 ]
  %19 = phi ptr [ @bcmgenet_tx_ring_int_disable, %14 ], [ @bcmgenet_tx_ring16_int_disable, %5 ]
  %20 = phi i32 [ 100663296, %14 ], [ 0, %5 ]
  %21 = getelementptr %struct.bcmgenet_priv, ptr %0, i32 0, i32 6, i32 %1, i32 5
  store i32 %17, ptr %21, align 4
  %22 = getelementptr %struct.bcmgenet_priv, ptr %0, i32 0, i32 6, i32 %1, i32 15
  store ptr %18, ptr %22, align 4
  %23 = getelementptr %struct.bcmgenet_priv, ptr %0, i32 0, i32 6, i32 %1, i32 16
  store ptr %19, ptr %23, align 8
  %24 = getelementptr inbounds %struct.bcmgenet_priv, ptr %0, i32 0, i32 4
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr %struct.enet_cb, ptr %25, i32 %3
  %27 = getelementptr %struct.bcmgenet_priv, ptr %0, i32 0, i32 6, i32 %1, i32 6
  store ptr %26, ptr %27, align 8
  %28 = getelementptr %struct.bcmgenet_priv, ptr %0, i32 0, i32 6, i32 %1, i32 7
  store i32 %2, ptr %28, align 4
  %29 = getelementptr %struct.bcmgenet_priv, ptr %0, i32 0, i32 6, i32 %1, i32 8
  store i32 %3, ptr %29, align 8
  %30 = getelementptr %struct.bcmgenet_priv, ptr %0, i32 0, i32 6, i32 %1, i32 9
  store i32 0, ptr %30, align 4
  %31 = getelementptr %struct.bcmgenet_priv, ptr %0, i32 0, i32 6, i32 %1, i32 10
  store i32 %2, ptr %31, align 8
  %32 = getelementptr %struct.bcmgenet_priv, ptr %0, i32 0, i32 6, i32 %1, i32 11
  store i32 %3, ptr %32, align 4
  %33 = getelementptr %struct.bcmgenet_priv, ptr %0, i32 0, i32 6, i32 %1, i32 13
  store i32 %3, ptr %33, align 4
  %34 = add i32 %4, -1
  %35 = getelementptr %struct.bcmgenet_priv, ptr %0, i32 0, i32 6, i32 %1, i32 14
  store i32 %34, ptr %35, align 8
  %36 = getelementptr %struct.bcmgenet_priv, ptr %0, i32 0, i32 6, i32 %1, i32 12
  store i32 0, ptr %36, align 8
  %37 = load ptr, ptr %0, align 8
  %38 = load ptr, ptr %7, align 8
  %39 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %38, i32 0, i32 13
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %38, i32 0, i32 14
  %42 = load i32, ptr %41, align 4
  %43 = shl i32 %42, 10
  %44 = add i32 %43, %40
  %45 = getelementptr i8, ptr %37, i32 %44
  %46 = shl i32 %1, 6
  %47 = getelementptr i8, ptr %45, i32 %46
  %48 = load ptr, ptr @genet_dma_ring_regs, align 4
  %49 = getelementptr i8, ptr %48, i32 3
  %50 = load i8, ptr %49, align 1
  %51 = zext i8 %50 to i32
  %52 = getelementptr i8, ptr %47, i32 %51
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 0) #20, !srcloc !16
  %53 = load ptr, ptr %0, align 8
  %54 = load ptr, ptr %7, align 8
  %55 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %54, i32 0, i32 13
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %54, i32 0, i32 14
  %58 = load i32, ptr %57, align 4
  %59 = shl i32 %58, 10
  %60 = add i32 %59, %56
  %61 = getelementptr i8, ptr %53, i32 %60
  %62 = getelementptr i8, ptr %61, i32 %46
  %63 = load ptr, ptr @genet_dma_ring_regs, align 4
  %64 = getelementptr i8, ptr %63, i32 2
  %65 = load i8, ptr %64, align 1
  %66 = zext i8 %65 to i32
  %67 = getelementptr i8, ptr %62, i32 %66
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 0) #20, !srcloc !16
  %68 = load ptr, ptr %0, align 8
  %69 = load ptr, ptr %7, align 8
  %70 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %69, i32 0, i32 13
  %71 = load i32, ptr %70, align 4
  %72 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %69, i32 0, i32 14
  %73 = load i32, ptr %72, align 4
  %74 = shl i32 %73, 10
  %75 = add i32 %74, %71
  %76 = getelementptr i8, ptr %68, i32 %75
  %77 = getelementptr i8, ptr %76, i32 %46
  %78 = load ptr, ptr @genet_dma_ring_regs, align 4
  %79 = getelementptr i8, ptr %78, i32 9
  %80 = load i8, ptr %79, align 1
  %81 = zext i8 %80 to i32
  %82 = getelementptr i8, ptr %77, i32 %81
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %82, i32 1) #20, !srcloc !16
  %83 = load ptr, ptr %0, align 8
  %84 = load ptr, ptr %7, align 8
  %85 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %84, i32 0, i32 13
  %86 = load i32, ptr %85, align 4
  %87 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %84, i32 0, i32 14
  %88 = load i32, ptr %87, align 4
  %89 = shl i32 %88, 10
  %90 = add i32 %89, %86
  %91 = getelementptr i8, ptr %83, i32 %90
  %92 = getelementptr i8, ptr %91, i32 %46
  %93 = load ptr, ptr @genet_dma_ring_regs, align 4
  %94 = getelementptr i8, ptr %93, i32 10
  %95 = load i8, ptr %94, align 1
  %96 = zext i8 %95 to i32
  %97 = getelementptr i8, ptr %92, i32 %96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %97, i32 %20) #20, !srcloc !16
  %98 = shl i32 %2, 16
  %99 = or i32 %98, 2048
  %100 = load ptr, ptr %0, align 8
  %101 = load ptr, ptr %7, align 8
  %102 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %101, i32 0, i32 13
  %103 = load i32, ptr %102, align 4
  %104 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %101, i32 0, i32 14
  %105 = load i32, ptr %104, align 4
  %106 = shl i32 %105, 10
  %107 = add i32 %106, %103
  %108 = getelementptr i8, ptr %100, i32 %107
  %109 = getelementptr i8, ptr %108, i32 %46
  %110 = load ptr, ptr @genet_dma_ring_regs, align 4
  %111 = getelementptr i8, ptr %110, i32 4
  %112 = load i8, ptr %111, align 1
  %113 = zext i8 %112 to i32
  %114 = getelementptr i8, ptr %109, i32 %113
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %114, i32 %99) #20, !srcloc !16
  %115 = mul i32 %10, %3
  %116 = load ptr, ptr %0, align 8
  %117 = load ptr, ptr %7, align 8
  %118 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %117, i32 0, i32 13
  %119 = load i32, ptr %118, align 4
  %120 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %117, i32 0, i32 14
  %121 = load i32, ptr %120, align 4
  %122 = shl i32 %121, 10
  %123 = add i32 %122, %119
  %124 = getelementptr i8, ptr %116, i32 %123
  %125 = getelementptr i8, ptr %124, i32 %46
  %126 = load ptr, ptr @genet_dma_ring_regs, align 4
  %127 = getelementptr i8, ptr %126, i32 5
  %128 = load i8, ptr %127, align 1
  %129 = zext i8 %128 to i32
  %130 = getelementptr i8, ptr %125, i32 %129
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %130, i32 %115) #20, !srcloc !16
  %131 = load ptr, ptr %0, align 8
  %132 = load ptr, ptr %7, align 8
  %133 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %132, i32 0, i32 13
  %134 = load i32, ptr %133, align 4
  %135 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %132, i32 0, i32 14
  %136 = load i32, ptr %135, align 4
  %137 = shl i32 %136, 10
  %138 = add i32 %137, %134
  %139 = getelementptr i8, ptr %131, i32 %138
  %140 = getelementptr i8, ptr %139, i32 %46
  %141 = load ptr, ptr @genet_dma_ring_regs, align 4
  %142 = load i8, ptr %141, align 1
  %143 = zext i8 %142 to i32
  %144 = getelementptr i8, ptr %140, i32 %143
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %144, i32 %115) #20, !srcloc !16
  %145 = load ptr, ptr %0, align 8
  %146 = load ptr, ptr %7, align 8
  %147 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %146, i32 0, i32 13
  %148 = load i32, ptr %147, align 4
  %149 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %146, i32 0, i32 14
  %150 = load i32, ptr %149, align 4
  %151 = shl i32 %150, 10
  %152 = add i32 %151, %148
  %153 = getelementptr i8, ptr %145, i32 %152
  %154 = getelementptr i8, ptr %153, i32 %46
  %155 = load ptr, ptr @genet_dma_ring_regs, align 4
  %156 = getelementptr i8, ptr %155, i32 11
  %157 = load i8, ptr %156, align 1
  %158 = zext i8 %157 to i32
  %159 = getelementptr i8, ptr %154, i32 %158
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %159, i32 %115) #20, !srcloc !16
  %160 = mul i32 %10, %4
  %161 = add i32 %160, -1
  %162 = load ptr, ptr %0, align 8
  %163 = load ptr, ptr %7, align 8
  %164 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %163, i32 0, i32 13
  %165 = load i32, ptr %164, align 4
  %166 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %163, i32 0, i32 14
  %167 = load i32, ptr %166, align 4
  %168 = shl i32 %167, 10
  %169 = add i32 %168, %165
  %170 = getelementptr i8, ptr %162, i32 %169
  %171 = getelementptr i8, ptr %170, i32 %46
  %172 = load ptr, ptr @genet_dma_ring_regs, align 4
  %173 = getelementptr i8, ptr %172, i32 7
  %174 = load i8, ptr %173, align 1
  %175 = zext i8 %174 to i32
  %176 = getelementptr i8, ptr %171, i32 %175
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %176, i32 %161) #20, !srcloc !16
  %177 = getelementptr inbounds %struct.bcmgenet_priv, ptr %0, i32 0, i32 2
  %178 = load ptr, ptr %177, align 8
  %179 = getelementptr %struct.bcmgenet_priv, ptr %0, i32 0, i32 6, i32 %1, i32 1
  %180 = getelementptr %struct.bcmgenet_priv, ptr %0, i32 0, i32 6, i32 %1, i32 1, i32 1
  tail call void @_set_bit(i32 noundef 5, ptr noundef %180) #20
  tail call void @netif_napi_add(ptr noundef %178, ptr noundef %179, ptr noundef nonnull @bcmgenet_tx_poll, i32 noundef 64) #20
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcmgenet_tx_ring16_int_enable(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.bcmgenet_tx_ring, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 65536) #20, !srcloc !16
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcmgenet_tx_ring16_int_disable(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.bcmgenet_tx_ring, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 65536) #20, !srcloc !16
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcmgenet_tx_ring_int_enable(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.bcmgenet_tx_ring, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.bcmgenet_tx_ring, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %4, align 8
  %6 = shl nuw i32 1, %5
  %7 = load ptr, ptr %3, align 8
  %8 = getelementptr i8, ptr %7, i32 596
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #20, !srcloc !16
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcmgenet_tx_ring_int_disable(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.bcmgenet_tx_ring, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.bcmgenet_tx_ring, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %4, align 8
  %6 = shl nuw i32 1, %5
  %7 = load ptr, ptr %3, align 8
  %8 = getelementptr i8, ptr %7, i32 592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #20, !srcloc !16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcmgenet_tx_poll(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 -8
  tail call void @_raw_spin_lock(ptr noundef %3) #20
  %4 = getelementptr i8, ptr %0, i32 276
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.bcmgenet_priv, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call fastcc i32 @__bcmgenet_tx_reclaim(ptr noundef %7, ptr noundef %3)
  %9 = getelementptr i8, ptr %0, i32 248
  %10 = load i32, ptr %9, align 8
  %11 = icmp ugt i32 %10, 18
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load ptr, ptr %4, align 4
  %14 = getelementptr inbounds %struct.bcmgenet_priv, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr i8, ptr %0, i32 228
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 87
  %19 = load ptr, ptr %18, align 64
  %20 = getelementptr %struct.netdev_queue, ptr %19, i32 %17
  tail call void @netif_tx_wake_queue(ptr noundef %20) #20
  br label %21

21:                                               ; preds = %12, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !11
  %22 = load i16, ptr %3, align 4
  %23 = add i16 %22, 1
  store i16 %23, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #20, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #20, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !25
  %24 = icmp eq i32 %8, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = tail call zeroext i1 @napi_complete_done(ptr noundef %0, i32 noundef 0) #20
  %27 = getelementptr i8, ptr %0, i32 268
  %28 = load ptr, ptr %27, align 4
  tail call void %28(ptr noundef %3) #20
  br label %29

29:                                               ; preds = %25, %21
  %30 = phi i32 [ 0, %25 ], [ %1, %21 ]
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__bcmgenet_tx_reclaim(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #2 {
  %3 = getelementptr i8, ptr %0, i32 1408
  %4 = getelementptr inbounds %struct.bcmgenet_tx_ring, ptr %1, i32 0, i32 4
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 16
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr i8, ptr %8, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 65536) #20, !srcloc !16
  br label %14

10:                                               ; preds = %2
  %11 = shl nuw i32 1, %5
  %12 = load ptr, ptr %3, align 8
  %13 = getelementptr i8, ptr %12, i32 584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #20, !srcloc !16
  br label %14

14:                                               ; preds = %10, %7
  %15 = load i32, ptr %4, align 8
  %16 = load ptr, ptr %3, align 8
  %17 = getelementptr i8, ptr %0, i32 16232
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %18, i32 0, i32 13
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %18, i32 0, i32 14
  %22 = load i32, ptr %21, align 4
  %23 = shl i32 %22, 10
  %24 = add i32 %23, %20
  %25 = getelementptr i8, ptr %16, i32 %24
  %26 = shl i32 %15, 6
  %27 = getelementptr i8, ptr %25, i32 %26
  %28 = load ptr, ptr @genet_dma_ring_regs, align 4
  %29 = getelementptr i8, ptr %28, i32 2
  %30 = load i8, ptr %29, align 1
  %31 = zext i8 %30 to i32
  %32 = getelementptr i8, ptr %27, i32 %31
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #20, !srcloc !10
  %34 = getelementptr inbounds %struct.bcmgenet_tx_ring, ptr %1, i32 0, i32 9
  %35 = load i32, ptr %34, align 4
  %36 = sub i32 %33, %35
  %37 = and i32 %36, 65535
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %91, label %39

39:                                               ; preds = %14
  %40 = getelementptr i8, ptr %0, i32 16352
  %41 = getelementptr i8, ptr %0, i32 1424
  %42 = getelementptr inbounds %struct.bcmgenet_tx_ring, ptr %1, i32 0, i32 8
  %43 = getelementptr inbounds %struct.bcmgenet_tx_ring, ptr %1, i32 0, i32 14
  %44 = getelementptr inbounds %struct.bcmgenet_tx_ring, ptr %1, i32 0, i32 13
  %45 = load i32, ptr %42, align 8
  br label %46

46:                                               ; preds = %88, %39
  %47 = phi i32 [ %45, %39 ], [ %89, %88 ]
  %48 = phi i32 [ 0, %39 ], [ %79, %88 ]
  %49 = phi i32 [ 0, %39 ], [ %78, %88 ]
  %50 = phi i32 [ 0, %39 ], [ %80, %88 ]
  %51 = load ptr, ptr %40, align 8
  %52 = getelementptr inbounds %struct.platform_device, ptr %51, i32 0, i32 3
  %53 = load ptr, ptr %41, align 8
  %54 = getelementptr %struct.enet_cb, ptr %53, i32 %47
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %65, label %57

57:                                               ; preds = %46
  store ptr null, ptr %54, align 4
  %58 = getelementptr %struct.enet_cb, ptr %53, i32 %47, i32 2
  %59 = load i32, ptr %58, align 4
  %60 = getelementptr %struct.enet_cb, ptr %53, i32 %47, i32 3
  %61 = load i32, ptr %60, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %52, i32 noundef %59, i32 noundef %61, i32 noundef 1, i32 noundef 0) #20
  store i32 0, ptr %58, align 4
  %62 = getelementptr inbounds %struct.sk_buff, ptr %55, i32 0, i32 3, i32 4
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, %54
  br i1 %64, label %72, label %77

65:                                               ; preds = %46
  %66 = getelementptr %struct.enet_cb, ptr %53, i32 %47, i32 2
  %67 = load i32, ptr %66, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %77, label %69

69:                                               ; preds = %65
  %70 = getelementptr %struct.enet_cb, ptr %53, i32 %47, i32 3
  %71 = load i32, ptr %70, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %52, i32 noundef %67, i32 noundef %71, i32 noundef 1, i32 noundef 0) #20
  store i32 0, ptr %66, align 4
  br label %77

72:                                               ; preds = %57
  %73 = add i32 %48, 1
  %74 = getelementptr inbounds %struct.sk_buff, ptr %55, i32 0, i32 3, i32 8
  %75 = load i32, ptr %74, align 8
  %76 = add i32 %75, %49
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %55, i32 noundef 0) #20
  br label %77

77:                                               ; preds = %72, %69, %65, %57
  %78 = phi i32 [ %76, %72 ], [ %49, %57 ], [ %49, %65 ], [ %49, %69 ]
  %79 = phi i32 [ %73, %72 ], [ %48, %57 ], [ %48, %65 ], [ %48, %69 ]
  %80 = add nuw nsw i32 %50, 1
  %81 = load i32, ptr %42, align 8
  %82 = load i32, ptr %43, align 8
  %83 = icmp ult i32 %81, %82
  br i1 %83, label %84, label %86, !prof !22

84:                                               ; preds = %77
  %85 = add nuw i32 %81, 1
  br label %88

86:                                               ; preds = %77
  %87 = load i32, ptr %44, align 4
  br label %88

88:                                               ; preds = %86, %84
  %89 = phi i32 [ %87, %86 ], [ %85, %84 ]
  store i32 %89, ptr %42, align 8
  %90 = icmp eq i32 %80, %37
  br i1 %90, label %91, label %46

91:                                               ; preds = %88, %14
  %92 = phi i32 [ 0, %14 ], [ %78, %88 ]
  %93 = phi i32 [ 0, %14 ], [ %79, %88 ]
  %94 = and i32 %33, 65535
  %95 = getelementptr inbounds %struct.bcmgenet_tx_ring, ptr %1, i32 0, i32 10
  %96 = load i32, ptr %95, align 8
  %97 = add i32 %96, %37
  store i32 %97, ptr %95, align 8
  store i32 %94, ptr %34, align 4
  %98 = getelementptr inbounds %struct.bcmgenet_tx_ring, ptr %1, i32 0, i32 2
  %99 = load i32, ptr %98, align 8
  %100 = add i32 %99, %93
  store i32 %100, ptr %98, align 8
  %101 = getelementptr inbounds %struct.bcmgenet_tx_ring, ptr %1, i32 0, i32 3
  %102 = load i32, ptr %101, align 4
  %103 = add i32 %102, %92
  store i32 %103, ptr %101, align 4
  %104 = getelementptr inbounds %struct.bcmgenet_tx_ring, ptr %1, i32 0, i32 5
  %105 = load i32, ptr %104, align 4
  %106 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  %107 = load ptr, ptr %106, align 64
  %108 = getelementptr %struct.netdev_queue, ptr %107, i32 %105
  %109 = icmp eq i32 %92, 0
  br i1 %109, label %122, label %110, !prof !18

110:                                              ; preds = %91
  %111 = getelementptr %struct.netdev_queue, ptr %107, i32 %105, i32 14
  tail call void @dql_completed(ptr noundef %111, i32 noundef %92) #20
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !26
  %112 = getelementptr %struct.netdev_queue, ptr %107, i32 %105, i32 14, i32 1
  %113 = load volatile i32, ptr %112, align 4
  %114 = load volatile i32, ptr %111, align 64
  %115 = sub i32 %113, %114
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %122, label %117, !prof !18

117:                                              ; preds = %110
  %118 = getelementptr %struct.netdev_queue, ptr %107, i32 %105, i32 12
  %119 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %118) #20
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %122, label %121

121:                                              ; preds = %117
  tail call void @netif_schedule_queue(ptr noundef %108) #20
  br label %122

122:                                              ; preds = %121, %117, %110, %91
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dql_completed(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_schedule_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @bcmgenet_hfb_clear(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.bcmgenet_priv, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, -1
  %5 = icmp ult i32 %4, 2
  br i1 %5, label %201, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 8
  %8 = getelementptr inbounds %struct.bcmgenet_priv, ptr %0, i32 0, i32 14
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %9, i32 0, i32 11
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr i8, ptr %7, i32 %11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 0) #20, !srcloc !16
  %13 = load ptr, ptr %0, align 8
  %14 = load ptr, ptr %8, align 8
  %15 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %14, i32 0, i32 11
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr i8, ptr %13, i32 %16
  %18 = getelementptr i8, ptr %17, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 0) #20, !srcloc !16
  %19 = load ptr, ptr %0, align 8
  %20 = load ptr, ptr %8, align 8
  %21 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %20, i32 0, i32 11
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr i8, ptr %19, i32 %22
  %24 = getelementptr i8, ptr %23, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 0) #20, !srcloc !16
  %25 = load ptr, ptr %0, align 8
  %26 = load ptr, ptr %8, align 8
  %27 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %26, i32 0, i32 12
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %26, i32 0, i32 14
  %30 = load i32, ptr %29, align 4
  %31 = shl i32 %30, 10
  %32 = add i32 %31, %28
  %33 = getelementptr i8, ptr %25, i32 %32
  %34 = getelementptr i8, ptr %33, i32 1088
  %35 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %36 = getelementptr i8, ptr %35, i32 8
  %37 = load i8, ptr %36, align 1
  %38 = zext i8 %37 to i32
  %39 = getelementptr i8, ptr %34, i32 %38
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 0) #20, !srcloc !16
  %40 = load ptr, ptr %0, align 8
  %41 = load ptr, ptr %8, align 8
  %42 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %41, i32 0, i32 12
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %41, i32 0, i32 14
  %45 = load i32, ptr %44, align 4
  %46 = shl i32 %45, 10
  %47 = add i32 %46, %43
  %48 = getelementptr i8, ptr %40, i32 %47
  %49 = getelementptr i8, ptr %48, i32 1088
  %50 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %51 = getelementptr i8, ptr %50, i32 9
  %52 = load i8, ptr %51, align 1
  %53 = zext i8 %52 to i32
  %54 = getelementptr i8, ptr %49, i32 %53
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 0) #20, !srcloc !16
  %55 = load ptr, ptr %0, align 8
  %56 = load ptr, ptr %8, align 8
  %57 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %56, i32 0, i32 12
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %56, i32 0, i32 14
  %60 = load i32, ptr %59, align 4
  %61 = shl i32 %60, 10
  %62 = add i32 %61, %58
  %63 = getelementptr i8, ptr %55, i32 %62
  %64 = getelementptr i8, ptr %63, i32 1088
  %65 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %66 = getelementptr i8, ptr %65, i32 10
  %67 = load i8, ptr %66, align 1
  %68 = zext i8 %67 to i32
  %69 = getelementptr i8, ptr %64, i32 %68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 0) #20, !srcloc !16
  %70 = load ptr, ptr %0, align 8
  %71 = load ptr, ptr %8, align 8
  %72 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %71, i32 0, i32 12
  %73 = load i32, ptr %72, align 4
  %74 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %71, i32 0, i32 14
  %75 = load i32, ptr %74, align 4
  %76 = shl i32 %75, 10
  %77 = add i32 %76, %73
  %78 = getelementptr i8, ptr %70, i32 %77
  %79 = getelementptr i8, ptr %78, i32 1088
  %80 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %81 = getelementptr i8, ptr %80, i32 11
  %82 = load i8, ptr %81, align 1
  %83 = zext i8 %82 to i32
  %84 = getelementptr i8, ptr %79, i32 %83
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 0) #20, !srcloc !16
  %85 = load ptr, ptr %0, align 8
  %86 = load ptr, ptr %8, align 8
  %87 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %86, i32 0, i32 12
  %88 = load i32, ptr %87, align 4
  %89 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %86, i32 0, i32 14
  %90 = load i32, ptr %89, align 4
  %91 = shl i32 %90, 10
  %92 = add i32 %91, %88
  %93 = getelementptr i8, ptr %85, i32 %92
  %94 = getelementptr i8, ptr %93, i32 1088
  %95 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %96 = getelementptr i8, ptr %95, i32 12
  %97 = load i8, ptr %96, align 1
  %98 = zext i8 %97 to i32
  %99 = getelementptr i8, ptr %94, i32 %98
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %99, i32 0) #20, !srcloc !16
  %100 = load ptr, ptr %0, align 8
  %101 = load ptr, ptr %8, align 8
  %102 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %101, i32 0, i32 12
  %103 = load i32, ptr %102, align 4
  %104 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %101, i32 0, i32 14
  %105 = load i32, ptr %104, align 4
  %106 = shl i32 %105, 10
  %107 = add i32 %106, %103
  %108 = getelementptr i8, ptr %100, i32 %107
  %109 = getelementptr i8, ptr %108, i32 1088
  %110 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %111 = getelementptr i8, ptr %110, i32 13
  %112 = load i8, ptr %111, align 1
  %113 = zext i8 %112 to i32
  %114 = getelementptr i8, ptr %109, i32 %113
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %114, i32 0) #20, !srcloc !16
  %115 = load ptr, ptr %0, align 8
  %116 = load ptr, ptr %8, align 8
  %117 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %116, i32 0, i32 12
  %118 = load i32, ptr %117, align 4
  %119 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %116, i32 0, i32 14
  %120 = load i32, ptr %119, align 4
  %121 = shl i32 %120, 10
  %122 = add i32 %121, %118
  %123 = getelementptr i8, ptr %115, i32 %122
  %124 = getelementptr i8, ptr %123, i32 1088
  %125 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %126 = getelementptr i8, ptr %125, i32 14
  %127 = load i8, ptr %126, align 1
  %128 = zext i8 %127 to i32
  %129 = getelementptr i8, ptr %124, i32 %128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %129, i32 0) #20, !srcloc !16
  %130 = load ptr, ptr %0, align 8
  %131 = load ptr, ptr %8, align 8
  %132 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %131, i32 0, i32 12
  %133 = load i32, ptr %132, align 4
  %134 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %131, i32 0, i32 14
  %135 = load i32, ptr %134, align 4
  %136 = shl i32 %135, 10
  %137 = add i32 %136, %133
  %138 = getelementptr i8, ptr %130, i32 %137
  %139 = getelementptr i8, ptr %138, i32 1088
  %140 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %141 = getelementptr i8, ptr %140, i32 15
  %142 = load i8, ptr %141, align 1
  %143 = zext i8 %142 to i32
  %144 = getelementptr i8, ptr %139, i32 %143
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %144, i32 0) #20, !srcloc !16
  %145 = load ptr, ptr %8, align 8
  %146 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %145, i32 0, i32 6
  %147 = load i8, ptr %146, align 4
  %148 = icmp ult i8 %147, 4
  br i1 %148, label %149, label %153

149:                                              ; preds = %153, %6
  %150 = phi i8 [ %147, %6 ], [ %166, %153 ]
  %151 = phi ptr [ %145, %6 ], [ %164, %153 ]
  %152 = icmp eq i8 %150, 0
  br i1 %152, label %201, label %170

153:                                              ; preds = %153, %6
  %154 = phi ptr [ %164, %153 ], [ %145, %6 ]
  %155 = phi i32 [ %163, %153 ], [ 0, %6 ]
  %156 = shl i32 %155, 2
  %157 = add nuw nsw i32 %156, 28
  %158 = load ptr, ptr %0, align 8
  %159 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %154, i32 0, i32 11
  %160 = load i32, ptr %159, align 4
  %161 = getelementptr i8, ptr %158, i32 %160
  %162 = getelementptr i8, ptr %161, i32 %157
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %162, i32 0) #20, !srcloc !16
  %163 = add nuw nsw i32 %155, 1
  %164 = load ptr, ptr %8, align 8
  %165 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %164, i32 0, i32 6
  %166 = load i8, ptr %165, align 4
  %167 = lshr i8 %166, 2
  %168 = zext i8 %167 to i32
  %169 = icmp ult i32 %163, %168
  br i1 %169, label %153, label %149

170:                                              ; preds = %194, %149
  %171 = phi ptr [ %195, %194 ], [ %151, %149 ]
  %172 = phi i32 [ %196, %194 ], [ 0, %149 ]
  %173 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %171, i32 0, i32 7
  %174 = load i8, ptr %173, align 1
  %175 = zext i8 %174 to i32
  %176 = mul i32 %172, %175
  %177 = icmp eq i8 %174, 0
  br i1 %177, label %194, label %178

178:                                              ; preds = %178, %170
  %179 = phi ptr [ %189, %178 ], [ %171, %170 ]
  %180 = phi i32 [ %188, %178 ], [ 0, %170 ]
  %181 = add nuw nsw i32 %180, %176
  %182 = shl i32 %181, 2
  %183 = load ptr, ptr %0, align 8
  %184 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %179, i32 0, i32 10
  %185 = load i32, ptr %184, align 4
  %186 = getelementptr i8, ptr %183, i32 %185
  %187 = getelementptr i8, ptr %186, i32 %182
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %187, i32 0) #20, !srcloc !16
  %188 = add nuw nsw i32 %180, 1
  %189 = load ptr, ptr %8, align 8
  %190 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %189, i32 0, i32 7
  %191 = load i8, ptr %190, align 1
  %192 = zext i8 %191 to i32
  %193 = icmp ult i32 %188, %192
  br i1 %193, label %178, label %194

194:                                              ; preds = %178, %170
  %195 = phi ptr [ %171, %170 ], [ %189, %178 ]
  %196 = add nuw nsw i32 %172, 1
  %197 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %195, i32 0, i32 6
  %198 = load i8, ptr %197, align 4
  %199 = zext i8 %198 to i32
  %200 = icmp ult i32 %196, %199
  br i1 %200, label %170, label %201

201:                                              ; preds = %194, %149, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule_irqoff(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netif_napi_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dql_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcmgenet_wol_power_down_cfg(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcmgenet_phy_power_set(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @bcmgenet_netif_stop(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr i8, ptr %0, i32 1408
  %3 = getelementptr i8, ptr %0, i32 16232
  %4 = load ptr, ptr %3, align 8
  %5 = load i8, ptr %4, align 4
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %1
  %8 = phi i32 [ %10, %7 ], [ 0, %1 ]
  %9 = getelementptr %struct.bcmgenet_priv, ptr %2, i32 0, i32 6, i32 %8, i32 1
  tail call void @napi_disable(ptr noundef %9) #20
  %10 = add nuw nsw i32 %8, 1
  %11 = load ptr, ptr %3, align 8
  %12 = load i8, ptr %11, align 4
  %13 = zext i8 %12 to i32
  %14 = icmp ult i32 %10, %13
  br i1 %14, label %7, label %15

15:                                               ; preds = %7, %1
  %16 = getelementptr i8, ptr %0, i32 6048
  tail call void @napi_disable(ptr noundef %16) #20
  %17 = tail call ptr @llvm.thread.pointer() #20
  %18 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %19 = load volatile i32, ptr %18, align 4
  %20 = add i32 %19, 512
  store volatile i32 %20, ptr %18, align 4
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !27
  %21 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %22 = load i32, ptr %21, align 8
  %23 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 92
  tail call void @_raw_spin_lock(ptr noundef %23) #20
  %24 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 88
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %40, label %27

27:                                               ; preds = %15
  %28 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  br label %29

29:                                               ; preds = %29, %27
  %30 = phi i32 [ 0, %27 ], [ %37, %29 ]
  %31 = load ptr, ptr %28, align 64
  %32 = getelementptr %struct.netdev_queue, ptr %31, i32 %30, i32 9
  tail call void @_raw_spin_lock(ptr noundef %32) #20
  %33 = getelementptr %struct.netdev_queue, ptr %31, i32 %30, i32 10
  store volatile i32 %22, ptr %33, align 4
  %34 = getelementptr %struct.netdev_queue, ptr %31, i32 %30, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %34) #20
  store volatile i32 -1, ptr %33, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !11
  %35 = load i16, ptr %32, align 4
  %36 = add i16 %35, 1
  store i16 %36, ptr %32, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #20, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #20, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !25
  %37 = add nuw i32 %30, 1
  %38 = load i32, ptr %24, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %29, label %40

40:                                               ; preds = %29, %15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !11
  %41 = load i16, ptr %23, align 4
  %42 = add i16 %41, 1
  store i16 %42, ptr %23, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #20, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #20, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !25
  tail call fastcc void @local_bh_enable() #20
  %43 = load ptr, ptr %2, align 8
  %44 = getelementptr i8, ptr %43, i32 2056
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #20, !srcloc !10
  %46 = and i32 %45, 8192
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %40
  %49 = and i32 %45, -3
  %50 = load ptr, ptr %2, align 8
  %51 = getelementptr i8, ptr %50, i32 2056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %49) #20, !srcloc !16
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #20
  br label %52

52:                                               ; preds = %48, %40
  tail call fastcc void @bcmgenet_dma_teardown(ptr noundef %2)
  %53 = load ptr, ptr %2, align 8
  %54 = getelementptr i8, ptr %53, i32 2056
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #20, !srcloc !10
  %56 = and i32 %55, 8192
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = and i32 %55, -2
  %60 = load ptr, ptr %2, align 8
  %61 = getelementptr i8, ptr %60, i32 2056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 %59) #20, !srcloc !16
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #20
  br label %62

62:                                               ; preds = %58, %52
  %63 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %64 = load ptr, ptr %63, align 8
  tail call void @phy_stop(ptr noundef %64) #20
  %65 = load ptr, ptr %3, align 8
  %66 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %65, i32 0, i32 2
  %67 = load i8, ptr %66, align 2
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %80, label %69

69:                                               ; preds = %69, %62
  %70 = phi i32 [ %74, %69 ], [ 0, %62 ]
  %71 = getelementptr %struct.bcmgenet_priv, ptr %2, i32 0, i32 13, i32 %70
  tail call void @napi_disable(ptr noundef %71) #20
  %72 = getelementptr %struct.bcmgenet_priv, ptr %2, i32 0, i32 13, i32 %70, i32 13, i32 4, i32 4
  %73 = tail call zeroext i1 @cancel_work_sync(ptr noundef %72) #20
  %74 = add nuw nsw i32 %70, 1
  %75 = load ptr, ptr %3, align 8
  %76 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %75, i32 0, i32 2
  %77 = load i8, ptr %76, align 2
  %78 = zext i8 %77 to i32
  %79 = icmp ult i32 %74, %78
  br i1 %79, label %69, label %80

80:                                               ; preds = %69, %62
  %81 = getelementptr i8, ptr %0, i32 15824
  tail call void @napi_disable(ptr noundef %81) #20
  %82 = getelementptr i8, ptr %0, i32 16176
  %83 = tail call zeroext i1 @cancel_work_sync(ptr noundef %82) #20
  %84 = load ptr, ptr %2, align 8
  %85 = getelementptr i8, ptr %84, i32 528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %85, i32 -1) #20, !srcloc !16
  %86 = load ptr, ptr %2, align 8
  %87 = getelementptr i8, ptr %86, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 -1) #20, !srcloc !16
  %88 = load ptr, ptr %2, align 8
  %89 = getelementptr i8, ptr %88, i32 592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %89, i32 -1) #20, !srcloc !16
  %90 = load ptr, ptr %2, align 8
  %91 = getelementptr i8, ptr %90, i32 584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %91, i32 -1) #20, !srcloc !16
  %92 = getelementptr i8, ptr %0, i32 16296
  %93 = tail call zeroext i1 @cancel_work_sync(ptr noundef %92) #20
  tail call fastcc void @bcmgenet_tx_reclaim_all(ptr noundef %0)
  tail call fastcc void @bcmgenet_fini_dma(ptr noundef %2)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @bcmgenet_tx_reclaim_all(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr i8, ptr %0, i32 1408
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 88
  %4 = load i32, ptr %3, align 4
  %5 = icmp ugt i32 %4, 1
  br i1 %5, label %6, label %20

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 16232
  %8 = load ptr, ptr %7, align 8
  %9 = load i8, ptr %8, align 4
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %11, %6
  %12 = phi i32 [ %15, %11 ], [ 0, %6 ]
  %13 = getelementptr %struct.bcmgenet_priv, ptr %2, i32 0, i32 6, i32 %12
  tail call void @_raw_spin_lock_bh(ptr noundef %13) #20
  %14 = tail call fastcc i32 @__bcmgenet_tx_reclaim(ptr noundef %0, ptr noundef %13) #20
  tail call void @_raw_spin_unlock_bh(ptr noundef %13) #20
  %15 = add nuw nsw i32 %12, 1
  %16 = load ptr, ptr %7, align 8
  %17 = load i8, ptr %16, align 4
  %18 = zext i8 %17 to i32
  %19 = icmp ult i32 %15, %18
  br i1 %19, label %11, label %20

20:                                               ; preds = %11, %6, %1
  %21 = getelementptr i8, ptr %0, i32 6040
  tail call void @_raw_spin_lock_bh(ptr noundef %21) #20
  %22 = tail call fastcc i32 @__bcmgenet_tx_reclaim(ptr noundef %0, ptr noundef %21) #20
  tail call void @_raw_spin_unlock_bh(ptr noundef %21) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #7 {
  br label %1

1:                                                ; preds = %0
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %1) to i32), i32 noundef 512) #20
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #18

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_realloc_headroom(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_tstamp_tx(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #19

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @bcmgenet_dump_tx_queue(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.bcmgenet_tx_ring, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.bcmgenet_priv, ptr %3, i32 0, i32 37
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 128
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %104, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.bcmgenet_priv, ptr %3, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.bcmgenet_tx_ring, ptr %0, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 87
  %14 = load ptr, ptr %13, align 64
  tail call void @_raw_spin_lock(ptr noundef %0) #20
  %15 = getelementptr inbounds %struct.bcmgenet_tx_ring, ptr %0, i32 0, i32 4
  %16 = load i32, ptr %15, align 8
  %17 = icmp eq i32 %16, 16
  %18 = load ptr, ptr %3, align 8
  br i1 %17, label %19, label %23

19:                                               ; preds = %8
  %20 = getelementptr i8, ptr %18, i32 524
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #20, !srcloc !10
  %22 = load i32, ptr %15, align 8
  br label %28

23:                                               ; preds = %8
  %24 = getelementptr i8, ptr %18, i32 588
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #20, !srcloc !10
  %26 = load i32, ptr %15, align 8
  %27 = shl nuw i32 1, %26
  br label %28

28:                                               ; preds = %23, %19
  %29 = phi i32 [ %22, %19 ], [ %26, %23 ]
  %30 = phi i32 [ %21, %19 ], [ %25, %23 ]
  %31 = phi i32 [ 65536, %19 ], [ %27, %23 ]
  %32 = load ptr, ptr %3, align 8
  %33 = getelementptr inbounds %struct.bcmgenet_priv, ptr %3, i32 0, i32 14
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %34, i32 0, i32 13
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %34, i32 0, i32 14
  %38 = load i32, ptr %37, align 4
  %39 = shl i32 %38, 10
  %40 = add i32 %39, %36
  %41 = getelementptr i8, ptr %32, i32 %40
  %42 = shl i32 %29, 6
  %43 = getelementptr i8, ptr %41, i32 %42
  %44 = load ptr, ptr @genet_dma_ring_regs, align 4
  %45 = getelementptr i8, ptr %44, i32 2
  %46 = load i8, ptr %45, align 1
  %47 = zext i8 %46 to i32
  %48 = getelementptr i8, ptr %43, i32 %47
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #20, !srcloc !10
  %50 = load i32, ptr %15, align 8
  %51 = load ptr, ptr %3, align 8
  %52 = load ptr, ptr %33, align 8
  %53 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %52, i32 0, i32 13
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %52, i32 0, i32 14
  %56 = load i32, ptr %55, align 4
  %57 = shl i32 %56, 10
  %58 = add i32 %57, %54
  %59 = getelementptr i8, ptr %51, i32 %58
  %60 = shl i32 %50, 6
  %61 = getelementptr i8, ptr %59, i32 %60
  %62 = load ptr, ptr @genet_dma_ring_regs, align 4
  %63 = getelementptr i8, ptr %62, i32 3
  %64 = load i8, ptr %63, align 1
  %65 = zext i8 %64 to i32
  %66 = getelementptr i8, ptr %61, i32 %65
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %66) #20, !srcloc !10
  %68 = getelementptr %struct.netdev_queue, ptr %14, i32 %12, i32 12
  %69 = load volatile i32, ptr %68, align 4
  %70 = getelementptr inbounds %struct.bcmgenet_tx_ring, ptr %0, i32 0, i32 10
  %71 = load i32, ptr %70, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !11
  %72 = load i16, ptr %0, align 4
  %73 = add i16 %72, 1
  store i16 %73, ptr %0, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #20, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #20, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !25
  %74 = load i32, ptr %4, align 8
  %75 = and i32 %74, 128
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %104, label %77

77:                                               ; preds = %28
  %78 = and i32 %69, 1
  %79 = icmp eq i32 %78, 0
  %80 = xor i32 %30, -1
  %81 = load ptr, ptr %9, align 8
  %82 = load i32, ptr %15, align 8
  %83 = load i32, ptr %11, align 4
  %84 = select i1 %79, ptr @.str.32, ptr @.str.31
  %85 = and i32 %31, %80
  %86 = icmp eq i32 %85, 0
  %87 = select i1 %86, ptr @.str.34, ptr @.str.33
  %88 = getelementptr inbounds %struct.bcmgenet_tx_ring, ptr %0, i32 0, i32 7
  %89 = load i32, ptr %88, align 4
  %90 = getelementptr inbounds %struct.bcmgenet_tx_ring, ptr %0, i32 0, i32 12
  %91 = load i32, ptr %90, align 8
  %92 = and i32 %67, 65535
  %93 = getelementptr inbounds %struct.bcmgenet_tx_ring, ptr %0, i32 0, i32 9
  %94 = load i32, ptr %93, align 4
  %95 = and i32 %49, 65535
  %96 = getelementptr inbounds %struct.bcmgenet_tx_ring, ptr %0, i32 0, i32 8
  %97 = load i32, ptr %96, align 8
  %98 = getelementptr inbounds %struct.bcmgenet_tx_ring, ptr %0, i32 0, i32 11
  %99 = load i32, ptr %98, align 4
  %100 = getelementptr inbounds %struct.bcmgenet_tx_ring, ptr %0, i32 0, i32 13
  %101 = load i32, ptr %100, align 4
  %102 = getelementptr inbounds %struct.bcmgenet_tx_ring, ptr %0, i32 0, i32 14
  %103 = load i32, ptr %102, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %81, ptr noundef nonnull @.str.30, i32 noundef %82, i32 noundef %83, ptr noundef nonnull %84, ptr noundef nonnull %87, i32 noundef %71, i32 noundef %89, i32 noundef %91, i32 noundef %92, i32 noundef %94, i32 noundef %95, i32 noundef %97, i32 noundef %99, i32 noundef %101, i32 noundef %103) #21
  br label %104

104:                                              ; preds = %77, %28, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_mac_interrupt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__genphy_config_aneg(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcmgenet_wol_power_up_cfg(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcmgenet_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 1408
  %5 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %29, label %9

9:                                                ; preds = %1
  tail call void @netif_device_detach(ptr noundef %3) #20
  tail call fastcc void @bcmgenet_netif_stop(ptr noundef %3)
  %10 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %11 = load i16, ptr %10, align 4
  %12 = and i16 %11, 1
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %14, %9
  %19 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 120
  %20 = load ptr, ptr %19, align 8
  %21 = tail call i32 @phy_suspend(ptr noundef %20) #20
  br label %22

22:                                               ; preds = %18, %14
  %23 = load ptr, ptr %4, align 8
  %24 = getelementptr i8, ptr %3, i32 16232
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %25, i32 0, i32 11
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr i8, ptr %23, i32 %27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 0) #20, !srcloc !16
  br label %29

29:                                               ; preds = %22, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcmgenet_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 1408
  %5 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %270, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %11 = load i16, ptr %10, align 4
  %12 = and i16 %11, 1
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %33, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %33, label %18

18:                                               ; preds = %14
  %19 = getelementptr i8, ptr %3, i32 16364
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %33, label %22

22:                                               ; preds = %18
  %23 = getelementptr i8, ptr %3, i32 16232
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %24, i32 0, i32 15
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 2
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %22
  %30 = load ptr, ptr %4, align 8
  %31 = getelementptr i8, ptr %30, i32 128
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #20, !srcloc !10
  tail call void @bcmgenet_wol_power_up_cfg(ptr noundef %4, i32 noundef 2) #20
  br label %33

33:                                               ; preds = %29, %22, %18, %14, %9
  %34 = getelementptr i8, ptr %3, i32 16252
  %35 = load i8, ptr %34, align 4, !range !9
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %70, label %37

37:                                               ; preds = %33
  %38 = getelementptr i8, ptr %3, i32 16232
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %39, i32 0, i32 15
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %41, 2
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %70, label %44

44:                                               ; preds = %37
  %45 = load ptr, ptr %4, align 8
  %46 = getelementptr i8, ptr %45, i32 128
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #20, !srcloc !10
  %48 = getelementptr i8, ptr %3, i32 1412
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, 5
  br i1 %50, label %51, label %61

51:                                               ; preds = %44
  %52 = getelementptr i8, ptr %3, i32 16292
  %53 = load i8, ptr %52, align 4, !range !9
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %51
  %56 = and i32 %47, -2036100
  %57 = or i32 %56, 256
  %58 = load ptr, ptr %4, align 8
  %59 = getelementptr i8, ptr %58, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %57) #20, !srcloc !16
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %60(i32 noundef 214748000) #20
  br label %64

61:                                               ; preds = %51, %44
  %62 = and i32 %47, -4112
  %63 = or i32 %62, 8
  br label %64

64:                                               ; preds = %61, %55
  %65 = phi i32 [ %63, %61 ], [ %56, %55 ]
  %66 = load ptr, ptr %4, align 8
  %67 = getelementptr i8, ptr %66, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 %65) #20, !srcloc !16
  %68 = getelementptr i8, ptr %3, i32 1416
  %69 = load ptr, ptr %68, align 8
  tail call void @bcmgenet_phy_power_set(ptr noundef %69, i1 noundef zeroext true) #20
  br label %70

70:                                               ; preds = %64, %37, %33
  %71 = getelementptr i8, ptr %3, i32 1412
  %72 = load i32, ptr %71, align 4
  %73 = icmp eq i32 %72, 1
  %74 = load ptr, ptr %4, align 8
  br i1 %73, label %75, label %78

75:                                               ; preds = %70
  %76 = getelementptr i8, ptr %74, i32 772
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %76) #20, !srcloc !10
  br label %81

78:                                               ; preds = %70
  %79 = getelementptr i8, ptr %74, i32 8
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %79) #20, !srcloc !10
  br label %81

81:                                               ; preds = %78, %75
  %82 = phi i32 [ %77, %75 ], [ %80, %78 ]
  %83 = or i32 %82, 2
  %84 = load i32, ptr %71, align 4
  %85 = icmp eq i32 %84, 1
  %86 = load ptr, ptr %4, align 8
  br i1 %85, label %87, label %89

87:                                               ; preds = %81
  %88 = getelementptr i8, ptr %86, i32 772
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %88, i32 %83) #20, !srcloc !16
  br label %91

89:                                               ; preds = %81
  %90 = getelementptr i8, ptr %86, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %90, i32 %83) #20, !srcloc !16
  br label %91

91:                                               ; preds = %89, %87
  %92 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %92(i32 noundef 2147480) #20
  %93 = and i32 %82, -3
  %94 = load i32, ptr %71, align 4
  %95 = icmp eq i32 %94, 1
  %96 = load ptr, ptr %4, align 8
  br i1 %95, label %97, label %99

97:                                               ; preds = %91
  %98 = getelementptr i8, ptr %96, i32 772
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %98, i32 %93) #20, !srcloc !16
  br label %101

99:                                               ; preds = %91
  %100 = getelementptr i8, ptr %96, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %100, i32 %93) #20, !srcloc !16
  br label %101

101:                                              ; preds = %99, %97
  %102 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %102(i32 noundef 2147480) #20
  tail call fastcc void @init_umac(ptr noundef %4)
  %103 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 120
  %104 = load ptr, ptr %103, align 8
  %105 = tail call i32 @phy_init_hw(ptr noundef %104) #20
  %106 = load ptr, ptr %103, align 8
  %107 = tail call i32 @__genphy_config_aneg(ptr noundef %106, i1 noundef zeroext false) #20
  %108 = getelementptr i8, ptr %3, i32 1416
  %109 = load ptr, ptr %108, align 8
  %110 = tail call i32 @bcmgenet_mii_config(ptr noundef %109, i1 noundef zeroext false) #20
  %111 = getelementptr i8, ptr %3, i32 16348
  %112 = load ptr, ptr %111, align 4
  %113 = tail call i32 @clk_prepare(ptr noundef %112) #20
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %129

115:                                              ; preds = %101
  %116 = tail call i32 @clk_enable(ptr noundef %112) #20
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %127

118:                                              ; preds = %115
  %119 = load ptr, ptr %4, align 8
  %120 = getelementptr i8, ptr %119, i32 2056
  %121 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %120) #20, !srcloc !10
  %122 = getelementptr i8, ptr %3, i32 16336
  %123 = trunc i32 %121 to i8
  %124 = lshr i8 %123, 6
  %125 = and i8 %124, 1
  store i8 %125, ptr %122, align 8
  %126 = load ptr, ptr %111, align 4
  tail call void @clk_disable(ptr noundef %126) #20
  br label %127

127:                                              ; preds = %118, %115
  %128 = phi ptr [ %126, %118 ], [ %112, %115 ]
  tail call void @clk_unprepare(ptr noundef %128) #20
  br label %129

129:                                              ; preds = %127, %101
  %130 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 72
  %131 = load ptr, ptr %130, align 32
  %132 = load i32, ptr %131, align 1
  %133 = tail call i32 @llvm.bswap.i32(i32 %132) #20
  %134 = load ptr, ptr %4, align 8
  %135 = getelementptr i8, ptr %134, i32 2060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %135, i32 %133) #20, !srcloc !16
  %136 = getelementptr i8, ptr %131, i32 4
  %137 = load i16, ptr %136, align 1
  %138 = tail call i16 @llvm.bswap.i16(i16 %137) #20
  %139 = zext i16 %138 to i32
  %140 = load ptr, ptr %4, align 8
  %141 = getelementptr i8, ptr %140, i32 2064
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %141, i32 %139) #20, !srcloc !16
  tail call fastcc void @bcmgenet_hfb_clear(ptr noundef %4)
  %142 = getelementptr i8, ptr %3, i32 9288
  %143 = load ptr, ptr %142, align 8
  %144 = icmp eq ptr %143, %142
  br i1 %144, label %154, label %145

145:                                              ; preds = %151, %129
  %146 = phi ptr [ %152, %151 ], [ %143, %129 ]
  %147 = getelementptr inbounds %struct.bcmgenet_rxnfc_rule, ptr %146, i32 0, i32 2
  %148 = load i32, ptr %147, align 8
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %151, label %150

150:                                              ; preds = %145
  tail call fastcc void @bcmgenet_hfb_create_rxnfc_filter(ptr noundef %4, ptr noundef %146)
  br label %151

151:                                              ; preds = %150, %145
  %152 = load ptr, ptr %146, align 8
  %153 = icmp eq ptr %152, %142
  br i1 %153, label %154, label %145

154:                                              ; preds = %151, %129
  %155 = tail call fastcc i32 @bcmgenet_dma_disable(ptr noundef %4)
  %156 = tail call fastcc i32 @bcmgenet_init_dma(ptr noundef %4)
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %161, label %158

158:                                              ; preds = %154
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str.15) #21
  %159 = load i8, ptr %34, align 4, !range !9
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %268, label %243

161:                                              ; preds = %154
  %162 = load ptr, ptr %4, align 8
  %163 = getelementptr i8, ptr %3, i32 16232
  %164 = load ptr, ptr %163, align 8
  %165 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %164, i32 0, i32 12
  %166 = load i32, ptr %165, align 4
  %167 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %164, i32 0, i32 14
  %168 = load i32, ptr %167, align 4
  %169 = shl i32 %168, 10
  %170 = add i32 %169, %166
  %171 = getelementptr i8, ptr %162, i32 %170
  %172 = getelementptr i8, ptr %171, i32 1088
  %173 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %174 = getelementptr i8, ptr %173, i32 1
  %175 = load i8, ptr %174, align 1
  %176 = zext i8 %175 to i32
  %177 = getelementptr i8, ptr %172, i32 %176
  %178 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %177) #20, !srcloc !10
  %179 = or i32 %178, %155
  %180 = load ptr, ptr %4, align 8
  %181 = load ptr, ptr %163, align 8
  %182 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %181, i32 0, i32 12
  %183 = load i32, ptr %182, align 4
  %184 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %181, i32 0, i32 14
  %185 = load i32, ptr %184, align 4
  %186 = shl i32 %185, 10
  %187 = add i32 %186, %183
  %188 = getelementptr i8, ptr %180, i32 %187
  %189 = getelementptr i8, ptr %188, i32 1088
  %190 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %191 = getelementptr i8, ptr %190, i32 1
  %192 = load i8, ptr %191, align 1
  %193 = zext i8 %192 to i32
  %194 = getelementptr i8, ptr %189, i32 %193
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %194, i32 %179) #20, !srcloc !16
  %195 = load ptr, ptr %4, align 8
  %196 = load ptr, ptr %163, align 8
  %197 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %196, i32 0, i32 13
  %198 = load i32, ptr %197, align 4
  %199 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %196, i32 0, i32 14
  %200 = load i32, ptr %199, align 4
  %201 = shl i32 %200, 10
  %202 = add i32 %201, %198
  %203 = getelementptr i8, ptr %195, i32 %202
  %204 = getelementptr i8, ptr %203, i32 1088
  %205 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %206 = getelementptr i8, ptr %205, i32 1
  %207 = load i8, ptr %206, align 1
  %208 = zext i8 %207 to i32
  %209 = getelementptr i8, ptr %204, i32 %208
  %210 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %209) #20, !srcloc !10
  %211 = or i32 %210, %155
  %212 = load ptr, ptr %4, align 8
  %213 = load ptr, ptr %163, align 8
  %214 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %213, i32 0, i32 13
  %215 = load i32, ptr %214, align 4
  %216 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %213, i32 0, i32 14
  %217 = load i32, ptr %216, align 4
  %218 = shl i32 %217, 10
  %219 = add i32 %218, %215
  %220 = getelementptr i8, ptr %212, i32 %219
  %221 = getelementptr i8, ptr %220, i32 1088
  %222 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %223 = getelementptr i8, ptr %222, i32 1
  %224 = load i8, ptr %223, align 1
  %225 = zext i8 %224 to i32
  %226 = getelementptr i8, ptr %221, i32 %225
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %226, i32 %211) #20, !srcloc !16
  %227 = load i16, ptr %10, align 4
  %228 = and i16 %227, 1
  %229 = icmp eq i16 %228, 0
  br i1 %229, label %234, label %230

230:                                              ; preds = %161
  %231 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %232 = load ptr, ptr %231, align 8
  %233 = icmp eq ptr %232, null
  br i1 %233, label %234, label %237

234:                                              ; preds = %230, %161
  %235 = load ptr, ptr %103, align 8
  %236 = tail call i32 @phy_resume(ptr noundef %235) #20
  br label %237

237:                                              ; preds = %234, %230
  %238 = getelementptr i8, ptr %3, i32 16676
  %239 = load i32, ptr %238, align 4
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %242, label %241

241:                                              ; preds = %237
  tail call fastcc void @bcmgenet_eee_enable_set(ptr noundef %3, i1 noundef zeroext true)
  br label %242

242:                                              ; preds = %241, %237
  tail call fastcc void @bcmgenet_netif_start(ptr noundef %3)
  tail call void @netif_device_attach(ptr noundef %3) #20
  br label %270

243:                                              ; preds = %158
  %244 = getelementptr i8, ptr %3, i32 16232
  %245 = load ptr, ptr %244, align 8
  %246 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %245, i32 0, i32 15
  %247 = load i32, ptr %246, align 4
  %248 = and i32 %247, 2
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %268, label %250

250:                                              ; preds = %243
  %251 = load ptr, ptr %4, align 8
  %252 = getelementptr i8, ptr %251, i32 128
  %253 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %252) #20, !srcloc !10
  %254 = load i32, ptr %71, align 4
  %255 = icmp eq i32 %254, 5
  br i1 %255, label %256, label %260

256:                                              ; preds = %250
  %257 = getelementptr i8, ptr %3, i32 16292
  %258 = load i8, ptr %257, align 4, !range !9
  %259 = icmp eq i8 %258, 0
  br i1 %259, label %261, label %260

260:                                              ; preds = %256, %250
  br label %261

261:                                              ; preds = %260, %256
  %262 = phi i32 [ 4, %260 ], [ 2031744, %256 ]
  %263 = or i32 %253, %262
  %264 = or i32 %263, 3
  %265 = load ptr, ptr %4, align 8
  %266 = getelementptr i8, ptr %265, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %266, i32 %264) #20, !srcloc !16
  %267 = load ptr, ptr %108, align 8
  tail call void @bcmgenet_phy_power_set(ptr noundef %267, i1 noundef zeroext false) #20
  br label %268

268:                                              ; preds = %261, %243, %158
  %269 = load ptr, ptr %111, align 4
  tail call void @clk_disable(ptr noundef %269) #20
  tail call void @clk_unprepare(ptr noundef %269) #20
  br label %270

270:                                              ; preds = %268, %242, %1
  %271 = phi i32 [ %156, %268 ], [ 0, %242 ], [ 0, %1 ]
  ret i32 %271
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcmgenet_suspend_noirq(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 1408
  %5 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %59, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %11 = load i16, ptr %10, align 4
  %12 = and i16 %11, 1
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = getelementptr i8, ptr %3, i32 16364
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %53

22:                                               ; preds = %18, %14, %9
  %23 = getelementptr i8, ptr %3, i32 16252
  %24 = load i8, ptr %23, align 4, !range !9
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %56, label %26

26:                                               ; preds = %22
  %27 = getelementptr i8, ptr %3, i32 16232
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %28, i32 0, i32 15
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, 2
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %56, label %33

33:                                               ; preds = %26
  %34 = load ptr, ptr %4, align 8
  %35 = getelementptr i8, ptr %34, i32 128
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #20, !srcloc !10
  %37 = getelementptr i8, ptr %3, i32 1412
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 5
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = getelementptr i8, ptr %3, i32 16292
  %42 = load i8, ptr %41, align 4, !range !9
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %40, %33
  br label %45

45:                                               ; preds = %44, %40
  %46 = phi i32 [ 4, %44 ], [ 2031744, %40 ]
  %47 = or i32 %36, %46
  %48 = or i32 %47, 3
  %49 = load ptr, ptr %4, align 8
  %50 = getelementptr i8, ptr %49, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %48) #20, !srcloc !16
  %51 = getelementptr i8, ptr %3, i32 1416
  %52 = load ptr, ptr %51, align 8
  tail call void @bcmgenet_phy_power_set(ptr noundef %52, i1 noundef zeroext false) #20
  br label %56

53:                                               ; preds = %18
  %54 = tail call i32 @bcmgenet_wol_power_down_cfg(ptr noundef %4, i32 noundef 2) #20
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53, %45, %26, %22
  %57 = getelementptr i8, ptr %3, i32 16348
  %58 = load ptr, ptr %57, align 4
  tail call void @clk_disable(ptr noundef %58) #20
  tail call void @clk_unprepare(ptr noundef %58) #20
  br label %59

59:                                               ; preds = %56, %53, %1
  %60 = phi i32 [ 0, %56 ], [ 0, %1 ], [ %54, %53 ]
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcmgenet_resume_noirq(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 1408
  %5 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %47, label %9

9:                                                ; preds = %1
  %10 = getelementptr i8, ptr %3, i32 16348
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @clk_prepare(ptr noundef %11) #20
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %47

14:                                               ; preds = %9
  %15 = tail call i32 @clk_enable(ptr noundef %11) #20
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  tail call void @clk_unprepare(ptr noundef %11) #20
  br label %47

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %20 = load i16, ptr %19, align 4
  %21 = and i16 %20, 1
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %44, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %25 = load ptr, ptr %24, align 8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %44, label %27

27:                                               ; preds = %23
  %28 = getelementptr i8, ptr %3, i32 16364
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %44, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %4, align 8
  %33 = getelementptr i8, ptr %32, i32 512
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #20, !srcloc !10
  %35 = load ptr, ptr %4, align 8
  %36 = getelementptr i8, ptr %35, i32 512
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #20, !srcloc !10
  %38 = and i32 %37, 7168
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %31
  %41 = getelementptr i8, ptr %3, i32 16352
  %42 = load ptr, ptr %41, align 8
  %43 = getelementptr inbounds %struct.platform_device, ptr %42, i32 0, i32 3
  tail call void @pm_wakeup_dev_event(ptr noundef %43, i32 noundef 0, i1 noundef zeroext false) #20
  br label %44

44:                                               ; preds = %40, %31, %27, %23, %18
  %45 = load ptr, ptr %4, align 8
  %46 = getelementptr i8, ptr %45, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 7168) #20, !srcloc !16
  br label %47

47:                                               ; preds = %44, %17, %9, %1
  %48 = phi i32 [ 0, %44 ], [ 0, %1 ], [ %15, %17 ], [ %12, %9 ]
  ret i32 %48
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcmgenet_mii_config(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_wakeup_dev_event(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #16

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #17 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #18 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #19 = { nounwind readonly }
attributes #20 = { nounwind }
attributes #21 = { cold nounwind }
attributes #22 = { nounwind allocsize(2) }

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
!9 = !{i8 0, i8 2}
!10 = !{i64 4553812}
!11 = !{i64 2149224682}
!12 = !{i64 2149220506}
!13 = !{i64 2149220581, i64 2149220608, i64 2149220655, i64 2149220677, i64 2149220705, i64 2149220725}
!14 = !{i64 514768}
!15 = !{i64 2149248826}
!16 = !{i64 4553394}
!17 = !{!"auto-init"}
!18 = !{!"branch_weights", i32 1, i32 2000}
!19 = !{i64 2156994253, i64 2156994765, i64 2156994290, i64 2156994346, i64 2156994380, i64 2156994404, i64 2156994445, i64 2156994466, i64 2156994494, i64 2156994528}
!20 = !{i64 2154398624, i64 2154399124, i64 2154398661, i64 2154398717, i64 2154398751, i64 2154398775, i64 2154398816, i64 2154398837, i64 2154398865, i64 2154398899}
!21 = !{i64 2154399404}
!22 = !{!"branch_weights", i32 2000, i32 1}
!23 = !{i64 2155192935}
!24 = !{i64 533223}
!25 = !{i64 2149247685}
!26 = !{i64 2155193980}
!27 = !{i64 2149211825}
