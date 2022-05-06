; ModuleID = '/llk/IR/drivers/net/ethernet/broadcom/bcmsysport.c_pt.bc'
source_filename = "../drivers/net/ethernet/broadcom/bcmsysport.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.bcm_sysport_hw_params = type { i8, i32 }
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
%struct.bcm_sysport_stats = type { [32 x i8], i32, i32, i32, i16 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.121, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.155, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.121 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.ref_tracker_dir = type {}
%struct.possible_net_t = type {}
%union.anon.155 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.bcm_sysport_cb = type { ptr, ptr, i32, i32 }
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
%struct.bcm_sysport_priv = type { ptr, i32, i32, i32, i32, i8, i32, [36 x i8], %struct.napi_struct, ptr, ptr, i32, i32, i32, %struct.spinlock, ptr, ptr, ptr, i32, i32, i32, %struct.bcm_sysport_net_dim, i32, i32, ptr, i32, i32, i32, i32, i8, i16, i32, [6 x i8], i8, ptr, ptr, %struct.bcm_sysport_mib, i32, [1 x i32], [8 x i32], %struct.bcm_sysport_stats64, %struct.u64_stats_sync, %struct.notifier_block, i32, [96 x ptr], [20 x i8] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.bcm_sysport_net_dim = type { i16, i16, i32, i32, %struct.dim }
%struct.dim = type { i8, %struct.dim_stats, %struct.dim_sample, %struct.dim_sample, %struct.work_struct, ptr, i8, i8, i8, i8, i8, i8 }
%struct.dim_stats = type { i32, i32, i32, i32, i32 }
%struct.dim_sample = type { i64, i32, i32, i16, i32 }
%struct.bcm_sysport_mib = type { %struct.bcm_sysport_rx_counters, %struct.bcm_sysport_tx_counters, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bcm_sysport_rx_counters = type { %struct.bcm_sysport_pkt_counters, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bcm_sysport_pkt_counters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bcm_sysport_tx_counters = type { %struct.bcm_sysport_pkt_counters, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bcm_sysport_stats64 = type { i64, i64, i64, i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.netdev_notifier_changeupper_info = type { %struct.netdev_notifier_info, ptr, i8, i8, ptr }
%struct.netdev_notifier_info = type { ptr, ptr }
%struct.dsa_port = type { %union.anon.141, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, [6 x i8], i8, i8, ptr, i32, ptr, %struct.devlink_port, ptr, %struct.phylink_config, ptr, ptr, %struct.list_head, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.141 = type { ptr }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.130 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.130 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }
%struct.dsa_switch = type { ptr, ptr, i32, i16, %struct.notifier_block, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32 }
%struct.bcm_sysport_tx_ring = type { %struct.spinlock, %struct.napi_struct, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i8 }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dim_cq_moder = type { i16, i16, i16, i8 }
%struct.ethtool_rxnfc = type { i32, i32, i64, %struct.ethtool_rx_flow_spec, %union.anon.139, [0 x i32] }
%struct.ethtool_rx_flow_spec = type { i32, %union.ethtool_flow_union, %struct.ethtool_flow_ext, %union.ethtool_flow_union, %struct.ethtool_flow_ext, i64, i32 }
%union.ethtool_flow_union = type { %struct.ethtool_tcpip6_spec, [12 x i8] }
%struct.ethtool_tcpip6_spec = type { [4 x i32], [4 x i32], i16, i16, i8 }
%struct.ethtool_flow_ext = type { [2 x i8], [6 x i8], i16, i16, [2 x i32] }
%union.anon.139 = type { i32 }
%struct.netdev_queue = type { ptr, %struct.netdevice_tracker, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, [4 x i8], %struct.spinlock, i32, i32, i32, [48 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [52 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [24 x i8] }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.69 }
%union.anon.69 = type { [4 x i32] }
%struct.anon.58 = type { i16, i16 }
%struct.bcm_tsb = type { i32, i32 }
%struct.page = type { i32, %union.anon.1, %union.anon.115, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.115 = type { %struct.atomic_t }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@bcm_sysport_of_match = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,systemportlite-v1.00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @bcm_sysport_params, i64 8) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,systemport-v1.00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm_sysport_params }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,systemport\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm_sysport_params }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author463 = internal constant [28 x i8] c"author=Broadcom Corporation\00", section ".modinfo", align 1
@__UNIQUE_ID_description464 = internal constant [53 x i8] c"description=Broadcom System Port Ethernet MAC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_alias465 = internal constant [31 x i8] c"alias=platform:brcm-systemport\00", section ".modinfo", align 1
@__UNIQUE_ID_license466 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@bcm_sysport_params = internal constant [2 x %struct.bcm_sysport_hw_params] [%struct.bcm_sysport_hw_params { i8 0, i32 1024 }, %struct.bcm_sysport_hw_params { i8 1, i32 256 }], align 4
@bcm_sysport_driver = internal global %struct.platform_driver { ptr @bcm_sysport_probe, ptr @bcm_sysport_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bcm_sysport_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_sysport_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [16 x i8] c"brcm-systemport\00", align 1
@bcm_sysport_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @bcm_sysport_suspend, ptr @bcm_sysport_resume, ptr @bcm_sysport_suspend, ptr @bcm_sysport_resume, ptr @bcm_sysport_suspend, ptr @bcm_sysport_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"unable to set DMA mask: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"systemport,num-txq\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"systemport,num-rxq\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"sw_sysport\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"failed to register fixed PHY\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"using random Ethernet MAC\0A\00", align 1
@bcm_sysport_ethtool_ops = internal constant %struct.ethtool_ops { i8 0, i32 563, i32 0, ptr @bcm_sysport_get_drvinfo, ptr null, ptr null, ptr @bcm_sysport_get_wol, ptr @bcm_sysport_set_wol, ptr @bcm_sysport_get_msglvl, ptr @bcm_sysport_set_msglvl, ptr null, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr @bcm_sysport_get_coalesce, ptr @bcm_sysport_set_coalesce, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_sysport_get_strings, ptr null, ptr @bcm_sysport_get_stats, ptr null, ptr null, ptr null, ptr null, ptr @bcm_sysport_get_sset_count, ptr @bcm_sysport_get_rxnfc, ptr @bcm_sysport_set_rxnfc, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @phy_ethtool_get_link_ksettings, ptr @phy_ethtool_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@bcm_sysport_netdev_ops = internal constant %struct.net_device_ops { ptr null, ptr null, ptr @bcm_sysport_open, ptr @bcm_sysport_stop, ptr @bcm_sysport_xmit, ptr null, ptr @bcm_sysport_select_queue, ptr null, ptr @bcm_sysport_set_rx_mode, ptr @bcm_sysport_change_mac, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_sysport_tx_timeout, ptr @bcm_sysport_get_stats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_sysport_set_features, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.7 = private unnamed_addr constant [14 x i8] c"sw_sysportwol\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"failed to register DSA notifier\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"failed to register net_device\0A\00", align 1
@.str.10 = private unnamed_addr constant [68 x i8] c"Broadcom SYSTEMPORT%s v%2x.%02x (irqs: %d, %d, TXQs: %d, RXQs: %d)\0A\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c" Lite\00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"bcmsysport\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"platform\00", align 1
@bcm_sysport_gstrings_stats = internal unnamed_addr constant [80 x %struct.bcm_sysport_stats] [%struct.bcm_sysport_stats { [32 x i8] c"rx_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 0, i32 0, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"tx_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 16, i32 0, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"rx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 8, i32 0, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"tx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 24, i32 0, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"rx_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 16, i32 -1, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"tx_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 20, i32 -1, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"rx_dropped\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 24, i32 -1, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"tx_dropped\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 28, i32 -1, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"multicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 32, i32 -1, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"rx_64_octets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 500, i32 1, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"rx_65_127_oct\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 504, i32 1, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"rx_128_255_oct\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 508, i32 1, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"rx_256_511_oct\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 512, i32 1, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"rx_512_1023_oct\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 516, i32 1, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"rx_1024_1518_oct\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 520, i32 1, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"rx_vlan_1519_1522_oct\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 524, i32 1, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"rx_1522_2047_oct\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 528, i32 1, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"rx_2048_4095_oct\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 532, i32 1, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"rx_4096_9216_oct\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 536, i32 1, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"rx_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 540, i32 1, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"rx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 544, i32 1, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"rx_multicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 548, i32 1, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"rx_broadcast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 552, i32 1, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"rx_fcs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 556, i32 1, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"rx_control\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 560, i32 1, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"rx_pause\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 564, i32 1, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"rx_unknown\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 568, i32 1, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"rx_align\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 572, i32 1, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"rx_outrange\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 576, i32 1, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"rx_code\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 580, i32 1, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"rx_carrier\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 584, i32 1, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"rx_oversize\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 588, i32 1, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"rx_jabber\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 592, i32 1, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"rx_mtu_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 596, i32 1, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"rx_good_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 600, i32 1, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"rx_unicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 604, i32 1, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"rx_ppp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 608, i32 1, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"rx_crc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 612, i32 1, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"tx_64_octets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 616, i32 2, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"tx_65_127_oct\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 620, i32 2, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"tx_128_255_oct\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 624, i32 2, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"tx_256_511_oct\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 628, i32 2, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"tx_512_1023_oct\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 632, i32 2, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"tx_1024_1518_oct\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 636, i32 2, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"tx_vlan_1519_1522_oct\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 640, i32 2, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"tx_1522_2047_oct\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 644, i32 2, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"tx_2048_4095_oct\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 648, i32 2, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"tx_4096_9216_oct\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 652, i32 2, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"tx_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 656, i32 2, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"tx_multicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 660, i32 2, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"tx_broadcast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 664, i32 2, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"tx_pause\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 668, i32 2, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"tx_control\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 672, i32 2, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"tx_fcs_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 676, i32 2, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"tx_oversize\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 680, i32 2, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"tx_defer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 684, i32 2, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"tx_excess_defer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 688, i32 2, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"tx_single_col\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 692, i32 2, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"tx_multi_col\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 696, i32 2, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"tx_late_col\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 700, i32 2, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"tx_excess_col\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 704, i32 2, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"tx_frags\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 708, i32 2, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"tx_total_col\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 712, i32 2, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"tx_jabber\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 716, i32 2, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"tx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 720, i32 2, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"tx_good_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 724, i32 2, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"tx_unicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 728, i32 2, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"rx_runt_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 732, i32 3, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"rx_runt_valid_fcs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 736, i32 3, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"rx_runt_inval_fcs_align\00\00\00\00\00\00\00\00\00", i32 4, i32 740, i32 3, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"rx_runt_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 744, i32 3, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"rxchk_bad_csum\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 748, i32 4, i16 76 }, %struct.bcm_sysport_stats { [32 x i8] c"rxchk_other_pkt_disc\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 752, i32 4, i16 80 }, %struct.bcm_sysport_stats { [32 x i8] c"rbuf_ovflow_cnt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 756, i32 5, i16 12 }, %struct.bcm_sysport_stats { [32 x i8] c"rbuf_err_cnt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 760, i32 5, i16 16 }, %struct.bcm_sysport_stats { [32 x i8] c"alloc_rx_buff_failed\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 764, i32 6, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"rx_dma_failed\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 768, i32 6, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"tx_dma_failed\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 772, i32 6, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"tx_realloc_tsb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 776, i32 6, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"tx_realloc_tsb_failed\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 780, i32 6, i16 0 }], align 4
@.str.15 = private unnamed_addr constant [14 x i8] c"txq%d_packets\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"txq%d_bytes\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"could not attach to PHY\0A\00", align 1
@.str.18 = private unnamed_addr constant [32 x i8] c"failed to request RX interrupt\0A\00", align 1
@.str.19 = private unnamed_addr constant [32 x i8] c"failed to request TX interrupt\0A\00", align 1
@.str.20 = private unnamed_addr constant [33 x i8] c"failed to initialize TX ring %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [30 x i8] c"failed to initialize RX ring\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.22 = private unnamed_addr constant [23 x i8] c"spurious RX interrupt\0A\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"spurious TX interrupt\0A\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"CB allocation failed\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.25 = private unnamed_addr constant [23 x i8] c"SKB allocation failed\0A\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"SKB alloc failed\0A\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"DMA mapping failure\0A\00", align 1
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.28 = private unnamed_addr constant [28 x i8] c"include/linux/dma-mapping.h\00", align 1
@.str.29 = private unnamed_addr constant [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.30 = private unnamed_addr constant [36 x i8] c"timeout waiting for RDMA to finish\0A\00", align 1
@.str.31 = private unnamed_addr constant [36 x i8] c"timeout waiting for TDMA to finish\0A\00", align 1
@.str.32 = private unnamed_addr constant [19 x i8] c"RDMA not stopped!\0A\00", align 1
@.str.33 = private unnamed_addr constant [19 x i8] c"TDMA not stopped!\0A\00", align 1
@.str.34 = private unnamed_addr constant [24 x i8] c"timeout disabling RDMA\0A\00", align 1
@.str.35 = private unnamed_addr constant [24 x i8] c"timeout disabling TDMA\0A\00", align 1
@.str.36 = private unnamed_addr constant [31 x i8] c"queue %d awake and ring full!\0A\00", align 1
@.str.37 = private unnamed_addr constant [31 x i8] c"DMA map failed at %p (len=%d)\0A\00", align 1
@.str.38 = private unnamed_addr constant [19 x i8] c"transmit timeout!\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.39 = private unnamed_addr constant [16 x i8] c"out of memory!\0A\00", align 1
@.str.40 = private unnamed_addr constant [18 x i8] c"oversized packet\0A\00", align 1
@.str.41 = private unnamed_addr constant [20 x i8] c"fragmented packet!\0A\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"error packet\0A\00", align 1
@.str.43 = private unnamed_addr constant [38 x i8] c"asymmetric number of per-port queues\0A\00", align 1
@.str.44 = private unnamed_addr constant [15 x i8] c"RDMA timeout!\0A\00", align 1
@.str.45 = private unnamed_addr constant [15 x i8] c"TDMA timeout!\0A\00", align 1
@.str.46 = private unnamed_addr constant [26 x i8] c"failed to enter WOL mode\0A\00", align 1
@.str.47 = private unnamed_addr constant [23 x i8] c"failed to enable RDMA\0A\00", align 1
@.str.48 = private unnamed_addr constant [30 x i8] c"Wake-on-LAN (MPD) interrupt!\0A\00", align 1
@.str.49 = private unnamed_addr constant [41 x i8] c"Wake-on-LAN (filters 0x%02x) interrupt!\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias465, ptr @__UNIQUE_ID_author463, ptr @__UNIQUE_ID_description464, ptr @__UNIQUE_ID_license466], section "llvm.metadata"

@__mod_of__bcm_sysport_of_match_device_table = dso_local alias [4 x %struct.of_device_id], ptr @bcm_sysport_of_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @bcm_sysport_driver, ptr noundef nonnull @__this_module) #19
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @bcm_sysport_driver) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_sysport_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #19
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = tail call ptr @of_match_node(ptr noundef nonnull @bcm_sysport_of_match, ptr noundef %6) #19
  %8 = icmp eq ptr %7, null
  br i1 %8, label %175, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.of_device_id, ptr %7, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %175, label %13

13:                                               ; preds = %9
  %14 = tail call i32 @dma_set_mask(ptr noundef %4, i64 noundef 1099511627775) #19
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = tail call i32 @dma_set_mask(ptr noundef %4, i64 noundef 4294967295) #19
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.1, i32 noundef %17) #20
  br label %175

20:                                               ; preds = %16, %13
  %21 = phi i64 [ 1099511627775, %13 ], [ 4294967295, %16 ]
  %22 = tail call i32 @dma_set_coherent_mask(ptr noundef %4, i64 noundef %21) #19
  %23 = load ptr, ptr %10, align 4
  %24 = call i32 @of_property_read_variable_u32_array(ptr noundef %6, ptr noundef nonnull @.str.2, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #19
  %25 = icmp sgt i32 %24, -1
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  store i32 32, ptr %2, align 4
  br label %27

27:                                               ; preds = %26, %20
  %28 = call i32 @of_property_read_variable_u32_array(ptr noundef %6, ptr noundef nonnull @.str.3, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #19
  %29 = icmp sgt i32 %28, -1
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  store i32 1, ptr %3, align 4
  br label %31

31:                                               ; preds = %30, %27
  %32 = load i32, ptr %2, align 4
  %33 = add i32 %32, -33
  %34 = icmp ult i32 %33, -32
  br i1 %34, label %175, label %35

35:                                               ; preds = %31
  %36 = load i32, ptr %3, align 4
  %37 = call ptr @alloc_etherdev_mqs(i32 noundef 1280, i32 noundef %32, i32 noundef %36) #19
  %38 = icmp eq ptr %37, null
  br i1 %38, label %175, label %39

39:                                               ; preds = %35
  %40 = getelementptr i8, ptr %37, i32 1408
  %41 = call ptr @devm_clk_get_optional(ptr noundef %4, ptr noundef nonnull @.str.4) #19
  %42 = getelementptr i8, ptr %37, i32 1900
  store ptr %41, ptr %42, align 4
  %43 = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = ptrtoint ptr %41 to i32
  br label %173

46:                                               ; preds = %39
  %47 = load i32, ptr %2, align 4
  %48 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %47, i32 280) #19
  %49 = extractvalue { i32, i1 } %48, 1
  br i1 %49, label %50, label %52, !prof !9

50:                                               ; preds = %46
  %51 = getelementptr i8, ptr %37, i32 1712
  store ptr null, ptr %51, align 16
  br label %173

52:                                               ; preds = %46
  %53 = extractvalue { i32, i1 } %48, 0
  %54 = call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef %53, i32 noundef 3520) #19
  %55 = getelementptr i8, ptr %37, i32 1712
  store ptr %54, ptr %55, align 16
  %56 = icmp eq ptr %54, null
  br i1 %56, label %173, label %57

57:                                               ; preds = %52
  %58 = load i8, ptr %23, align 4, !range !10
  %59 = getelementptr i8, ptr %37, i32 1428
  store i8 %58, ptr %59, align 4
  %60 = getelementptr inbounds %struct.bcm_sysport_hw_params, ptr %23, i32 0, i32 1
  %61 = load i32, ptr %60, align 4
  %62 = getelementptr i8, ptr %37, i32 1432
  store i32 %61, ptr %62, align 8
  %63 = call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #19
  %64 = getelementptr i8, ptr %37, i32 1696
  store i32 %63, ptr %64, align 32
  %65 = load i8, ptr %59, align 4, !range !10
  %66 = icmp eq i8 %65, 0
  %67 = call i32 @platform_get_irq(ptr noundef %0, i32 noundef 1) #19
  br i1 %66, label %68, label %71

68:                                               ; preds = %57
  %69 = getelementptr i8, ptr %37, i32 1700
  store i32 %67, ptr %69, align 4
  %70 = call i32 @platform_get_irq(ptr noundef %0, i32 noundef 2) #19
  br label %71

71:                                               ; preds = %68, %57
  %72 = phi i32 [ %70, %68 ], [ %67, %57 ]
  %73 = getelementptr i8, ptr %37, i32 1704
  store i32 %72, ptr %73, align 8
  %74 = load i32, ptr %64, align 32
  %75 = icmp slt i32 %74, 1
  br i1 %75, label %173, label %76

76:                                               ; preds = %71
  %77 = getelementptr i8, ptr %37, i32 1700
  %78 = load i32, ptr %77, align 4
  %79 = icmp slt i32 %78, 1
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load i8, ptr %59, align 4, !range !10
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %173, label %83

83:                                               ; preds = %80, %76
  %84 = call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #19
  store ptr %84, ptr %40, align 64
  %85 = icmp ugt ptr %84, inttoptr (i32 -4096 to ptr)
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = ptrtoint ptr %84 to i32
  br label %173

88:                                               ; preds = %83
  %89 = getelementptr i8, ptr %37, i32 1688
  store ptr %37, ptr %89, align 8
  %90 = getelementptr i8, ptr %37, i32 1692
  store ptr %0, ptr %90, align 4
  %91 = getelementptr i8, ptr %37, i32 1868
  %92 = call i32 @of_get_phy_mode(ptr noundef %6, ptr noundef %91) #19
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %88
  store i32 3, ptr %91, align 4
  br label %95

95:                                               ; preds = %94, %88
  %96 = call zeroext i1 @of_phy_is_fixed_link(ptr noundef %6) #19
  br i1 %96, label %97, label %103

97:                                               ; preds = %95
  %98 = call i32 @of_phy_register_fixed_link(ptr noundef %6) #19
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %97
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.5) #20
  br label %173

101:                                              ; preds = %97
  %102 = getelementptr i8, ptr %37, i32 1864
  store ptr %6, ptr %102, align 8
  br label %103

103:                                              ; preds = %101, %95
  %104 = call i32 @of_get_ethdev_address(ptr noundef %6, ptr noundef nonnull %37) #19
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %103
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.6) #20
  call fastcc void @eth_hw_addr_random(ptr noundef nonnull %37)
  br label %107

107:                                              ; preds = %106, %103
  %108 = getelementptr inbounds %struct.net_device, ptr %37, i32 0, i32 111, i32 1
  store ptr %4, ptr %108, align 4
  %109 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %37, ptr %109, align 8
  %110 = getelementptr inbounds %struct.net_device, ptr %37, i32 0, i32 42
  store ptr @bcm_sysport_ethtool_ops, ptr %110, align 8
  %111 = getelementptr inbounds %struct.net_device, ptr %37, i32 0, i32 16
  store ptr @bcm_sysport_netdev_ops, ptr %111, align 8
  %112 = getelementptr i8, ptr %37, i32 1472
  call void @netif_napi_add(ptr noundef nonnull %37, ptr noundef %112, ptr noundef nonnull @bcm_sysport_poll, i32 noundef 64) #19
  %113 = getelementptr inbounds %struct.net_device, ptr %37, i32 0, i32 23
  %114 = load i64, ptr %113, align 16
  %115 = or i64 %114, 1099511627954
  store i64 %115, ptr %113, align 16
  %116 = getelementptr inbounds %struct.net_device, ptr %37, i32 0, i32 24
  %117 = load i64, ptr %116, align 8
  %118 = or i64 %117, %115
  store i64 %118, ptr %116, align 8
  %119 = getelementptr inbounds %struct.net_device, ptr %37, i32 0, i32 26
  %120 = load i64, ptr %119, align 8
  %121 = or i64 %120, %115
  store i64 %121, ptr %119, align 8
  %122 = getelementptr inbounds %struct.net_device, ptr %37, i32 0, i32 31
  store i32 1536, ptr %122, align 4
  %123 = getelementptr i8, ptr %37, i32 1898
  %124 = load i8, ptr %123, align 2
  %125 = or i8 %124, 1
  store i8 %125, ptr %123, align 2
  %126 = load i32, ptr %73, align 8
  %127 = call i32 @devm_request_threaded_irq(ptr noundef %4, i32 noundef %126, ptr noundef nonnull @bcm_sysport_wol_isr, ptr noundef null, i32 noundef 0, ptr noundef nonnull %37, ptr noundef %40) #19
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %107
  call void @device_set_wakeup_capable(ptr noundef %4, i1 noundef zeroext true) #19
  br label %130

130:                                              ; preds = %129, %107
  %131 = call ptr @devm_clk_get_optional(ptr noundef %4, ptr noundef nonnull @.str.7) #19
  %132 = getelementptr i8, ptr %37, i32 1904
  store ptr %131, ptr %132, align 16
  %133 = icmp ugt ptr %131, inttoptr (i32 -4096 to ptr)
  br i1 %133, label %134, label %136

134:                                              ; preds = %130
  %135 = ptrtoint ptr %131 to i32
  br label %175

136:                                              ; preds = %130
  %137 = getelementptr inbounds %struct.net_device, ptr %37, i32 0, i32 21
  %138 = load i16, ptr %137, align 8
  %139 = add i16 %138, 8
  store i16 %139, ptr %137, align 8
  call void @netif_carrier_off(ptr noundef nonnull %37) #19
  %140 = getelementptr i8, ptr %37, i32 1856
  store i32 1, ptr %140, align 64
  %141 = getelementptr i8, ptr %37, i32 2264
  store i32 0, ptr %141, align 4
  %142 = getelementptr i8, ptr %37, i32 2268
  store ptr @bcm_sysport_netdevice_event, ptr %142, align 4
  %143 = call i32 @register_netdevice_notifier(ptr noundef %142) #19
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %146, label %145

145:                                              ; preds = %136
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.8) #20
  br label %169

146:                                              ; preds = %136
  %147 = call i32 @register_netdev(ptr noundef nonnull %37) #19
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %151, label %149

149:                                              ; preds = %146
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.9) #20
  %150 = call i32 @unregister_netdevice_notifier(ptr noundef %142) #19
  br label %169

151:                                              ; preds = %146
  %152 = load ptr, ptr %42, align 4
  %153 = call fastcc i32 @clk_prepare_enable(ptr noundef %152)
  %154 = load ptr, ptr %40, align 64
  %155 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %154) #19, !srcloc !11
  %156 = trunc i32 %155 to i16
  %157 = getelementptr i8, ptr %37, i32 1886
  store i16 %156, ptr %157, align 2
  %158 = load i8, ptr %59, align 4, !range !10
  %159 = icmp eq i8 %158, 0
  %160 = select i1 %159, ptr @.str.12, ptr @.str.11
  %161 = lshr i32 %155, 8
  %162 = and i32 %161, 255
  %163 = and i32 %155, 255
  %164 = load i32, ptr %64, align 32
  %165 = load i32, ptr %77, align 4
  %166 = load i32, ptr %2, align 4
  %167 = load i32, ptr %3, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.10, ptr noundef nonnull %160, i32 noundef %162, i32 noundef %163, i32 noundef %164, i32 noundef %165, i32 noundef %166, i32 noundef %167) #20
  %168 = load ptr, ptr %42, align 4
  call void @clk_disable(ptr noundef %168) #19
  call void @clk_unprepare(ptr noundef %168) #19
  br label %175

169:                                              ; preds = %149, %145
  %170 = phi i32 [ %143, %145 ], [ %147, %149 ]
  %171 = call zeroext i1 @of_phy_is_fixed_link(ptr noundef %6) #19
  br i1 %171, label %172, label %173

172:                                              ; preds = %169
  call void @of_phy_deregister_fixed_link(ptr noundef %6) #19
  br label %173

173:                                              ; preds = %172, %169, %100, %86, %80, %71, %52, %50, %44
  %174 = phi i32 [ %45, %44 ], [ %87, %86 ], [ %98, %100 ], [ %170, %172 ], [ %170, %169 ], [ -12, %52 ], [ -22, %80 ], [ -22, %71 ], [ -12, %50 ]
  call void @free_netdev(ptr noundef nonnull %37) #19
  br label %175

175:                                              ; preds = %173, %151, %134, %35, %31, %19, %9, %1
  %176 = phi i32 [ %17, %19 ], [ %174, %173 ], [ %135, %134 ], [ 0, %151 ], [ -22, %9 ], [ -22, %1 ], [ -22, %31 ], [ -12, %35 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  ret i32 %176
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_sysport_remove(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %3, i32 2268
  %7 = tail call i32 @unregister_netdevice_notifier(ptr noundef %6) #19
  tail call void @unregister_netdev(ptr noundef %3) #19
  %8 = tail call zeroext i1 @of_phy_is_fixed_link(ptr noundef %5) #19
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  tail call void @of_phy_deregister_fixed_link(ptr noundef %5) #19
  br label %10

10:                                               ; preds = %9, %1
  tail call void @free_netdev(ptr noundef %3) #19
  store ptr null, ptr %2, align 8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_phy_mode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_phy_is_fixed_link(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_phy_register_fixed_link(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_ethdev_address(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @eth_hw_addr_random(ptr noundef %0) unnamed_addr #5 {
  %2 = alloca [6 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #19
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %2, i8 0, i32 6, i1 false), !annotation !8
  call void @get_random_bytes(ptr noundef nonnull %2, i32 noundef 6) #19
  %3 = load i8, ptr %2, align 1
  %4 = and i8 %3, -4
  %5 = or i8 %4, 2
  store i8 %5, ptr %2, align 1
  call void @dev_addr_mod(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2, i32 noundef 6) #19
  %6 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 50
  store i8 1, ptr %6, align 8
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_sysport_poll(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 -64
  %4 = getelementptr i8, ptr %0, i32 760
  %5 = getelementptr i8, ptr %0, i32 216
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %3, align 64
  %8 = getelementptr i8, ptr %7, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 32) #19, !srcloc !12
  %9 = getelementptr i8, ptr %0, i32 -44
  %10 = load i8, ptr %9, align 4, !range !10
  %11 = icmp eq i8 %10, 0
  %12 = load ptr, ptr %3, align 64
  br i1 %11, label %13, label %16

13:                                               ; preds = %2
  %14 = getelementptr i8, ptr %12, i32 12312
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #19, !srcloc !11
  br label %19

16:                                               ; preds = %2
  %17 = getelementptr i8, ptr %12, i32 12320
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #19, !srcloc !11
  br label %19

19:                                               ; preds = %16, %13
  %20 = phi i32 [ %18, %16 ], [ %15, %13 ]
  %21 = getelementptr i8, ptr %0, i32 260
  %22 = load i32, ptr %21, align 4
  %23 = sub i32 %20, %22
  %24 = and i32 %23, 65535
  %25 = icmp ne i32 %24, 0
  %26 = icmp ne i32 %1, 0
  %27 = and i1 %26, %25
  br i1 %27, label %28, label %165

28:                                               ; preds = %19
  %29 = getelementptr i8, ptr %0, i32 248
  %30 = getelementptr i8, ptr %0, i32 256
  %31 = getelementptr i8, ptr %0, i32 720
  %32 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 36, i32 6
  %33 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 36, i32 4
  %34 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 36, i32 11
  %35 = getelementptr i8, ptr %0, i32 412
  %36 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 36
  %37 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 36, i32 2
  %38 = getelementptr i8, ptr %0, i32 792
  %39 = getelementptr i8, ptr %0, i32 768
  %40 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 36, i32 10
  %41 = getelementptr i8, ptr %0, i32 252
  %42 = add i32 %1, -1
  %43 = add nsw i32 %24, -1
  %44 = tail call i32 @llvm.umin.i32(i32 %42, i32 %43) #19
  %45 = load i32, ptr %30, align 64
  br label %46

46:                                               ; preds = %153, %28
  %47 = phi i32 [ %45, %28 ], [ %160, %153 ]
  %48 = phi i32 [ 0, %28 ], [ %154, %153 ]
  %49 = phi i32 [ 0, %28 ], [ %155, %153 ]
  %50 = load ptr, ptr %29, align 8
  %51 = getelementptr %struct.bcm_sysport_cb, ptr %50, i32 %47
  %52 = tail call fastcc ptr @bcm_sysport_rx_refill(ptr noundef %3, ptr noundef %51) #19
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %64, !prof !9

54:                                               ; preds = %46
  %55 = load i32, ptr %31, align 16
  %56 = and i32 %55, 64
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %54
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %6, ptr noundef nonnull @.str.39) #20
  br label %59

59:                                               ; preds = %58, %54
  %60 = load i32, ptr %32, align 8
  %61 = add i32 %60, 1
  store i32 %61, ptr %32, align 8
  %62 = load i32, ptr %33, align 8
  %63 = add i32 %62, 1
  store i32 %63, ptr %33, align 8
  br label %153

64:                                               ; preds = %46
  %65 = getelementptr inbounds %struct.sk_buff, ptr %52, i32 0, i32 17
  %66 = load ptr, ptr %65, align 4
  %67 = load i32, ptr %66, align 4
  %68 = lshr i32 %67, 18
  %69 = icmp ugt i32 %67, 537133055
  br i1 %69, label %70, label %80, !prof !9

70:                                               ; preds = %64
  %71 = load i32, ptr %31, align 16
  %72 = and i32 %71, 2048
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %70
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %6, ptr noundef nonnull @.str.40) #20
  br label %75

75:                                               ; preds = %74, %70
  %76 = load i32, ptr %40, align 8
  %77 = add i32 %76, 1
  store i32 %77, ptr %40, align 8
  %78 = load i32, ptr %33, align 8
  %79 = add i32 %78, 1
  store i32 %79, ptr %33, align 8
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %52, i32 noundef 1) #19
  br label %153

80:                                               ; preds = %64
  %81 = and i32 %67, 196608
  %82 = icmp eq i32 %81, 196608
  br i1 %82, label %93, label %83, !prof !13

83:                                               ; preds = %80
  %84 = load i32, ptr %31, align 16
  %85 = and i32 %84, 2048
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %83
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %6, ptr noundef nonnull @.str.41) #20
  br label %88

88:                                               ; preds = %87, %83
  %89 = load i32, ptr %32, align 8
  %90 = add i32 %89, 1
  store i32 %90, ptr %32, align 8
  %91 = load i32, ptr %33, align 8
  %92 = add i32 %91, 1
  store i32 %92, ptr %33, align 8
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %52, i32 noundef 1) #19
  br label %153

93:                                               ; preds = %80
  %94 = and i32 %67, 12288
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %112, label %96, !prof !13

96:                                               ; preds = %93
  %97 = load i32, ptr %31, align 16
  %98 = and i32 %97, 64
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %96
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %6, ptr noundef nonnull @.str.42) #20
  br label %101

101:                                              ; preds = %100, %96
  %102 = and i32 %67, 8192
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %101
  %105 = load i32, ptr %34, align 4
  %106 = add i32 %105, 1
  store i32 %106, ptr %34, align 4
  br label %107

107:                                              ; preds = %104, %101
  %108 = load i32, ptr %32, align 8
  %109 = add i32 %108, 1
  store i32 %109, ptr %32, align 8
  %110 = load i32, ptr %33, align 8
  %111 = add i32 %110, 1
  store i32 %111, ptr %33, align 8
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %52, i32 noundef 1) #19
  br label %153

112:                                              ; preds = %93
  %113 = tail call ptr @skb_put(ptr noundef nonnull %52, i32 noundef %68) #19
  %114 = and i32 %67, 32768
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %121, label %116, !prof !9

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.sk_buff, ptr %52, i32 0, i32 13
  %118 = load i16, ptr %117, align 8
  %119 = and i16 %118, -97
  %120 = or i16 %119, 32
  store i16 %120, ptr %117, align 8
  br label %121

121:                                              ; preds = %116, %112
  %122 = tail call ptr @skb_pull(ptr noundef nonnull %52, i32 noundef 10) #19
  %123 = trunc i32 %68 to i16
  %124 = add nsw i16 %123, -10
  %125 = zext i16 %124 to i32
  %126 = add i32 %48, %125
  %127 = load i8, ptr %35, align 4
  %128 = and i8 %127, 4
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %134, label %130

130:                                              ; preds = %121
  %131 = add nsw i32 %125, -4
  tail call void @skb_trim(ptr noundef nonnull %52, i32 noundef %131) #19
  %132 = trunc i32 %131 to i16
  %133 = and i32 %131, 65535
  br label %134

134:                                              ; preds = %130, %121
  %135 = phi i32 [ %133, %130 ], [ %125, %121 ]
  %136 = phi i16 [ %132, %130 ], [ %124, %121 ]
  %137 = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %52, ptr noundef %6) #19
  %138 = getelementptr inbounds %struct.sk_buff, ptr %52, i32 0, i32 13, i32 0, i32 16
  store i16 %137, ptr %138, align 8
  %139 = load i32, ptr %36, align 8
  %140 = add i32 %139, 1
  store i32 %140, ptr %36, align 8
  %141 = load i32, ptr %37, align 8
  %142 = add i32 %141, %135
  store i32 %142, ptr %37, align 8
  %143 = load i32, ptr %38, align 4
  %144 = add i32 %143, 1
  store i32 %144, ptr %38, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #19, !srcloc !14
  %145 = load i64, ptr %4, align 8
  %146 = add i64 %145, 1
  store i64 %146, ptr %4, align 8
  %147 = zext i16 %136 to i64
  %148 = load i64, ptr %39, align 8
  %149 = add i64 %148, %147
  store i64 %149, ptr %39, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #19, !srcloc !15
  %150 = load i32, ptr %38, align 4
  %151 = add i32 %150, 1
  store i32 %151, ptr %38, align 4
  %152 = tail call i32 @napi_gro_receive(ptr noundef %0, ptr noundef nonnull %52) #19
  br label %153

153:                                              ; preds = %134, %107, %88, %75, %59
  %154 = phi i32 [ %48, %59 ], [ %48, %75 ], [ %48, %88 ], [ %48, %107 ], [ %126, %134 ]
  %155 = add nuw nsw i32 %49, 1
  %156 = load i32, ptr %30, align 64
  %157 = add i32 %156, 1
  %158 = load i32, ptr %41, align 4
  %159 = icmp eq i32 %157, %158
  %160 = select i1 %159, i32 0, i32 %157
  store i32 %160, ptr %30, align 64
  %161 = icmp eq i32 %49, %44
  br i1 %161, label %162, label %46

162:                                              ; preds = %153
  %163 = add nuw nsw i32 %44, 1
  %164 = load i32, ptr %21, align 4
  br label %165

165:                                              ; preds = %162, %19
  %166 = phi i32 [ %22, %19 ], [ %164, %162 ]
  %167 = phi i32 [ 0, %19 ], [ %163, %162 ]
  %168 = phi i32 [ 0, %19 ], [ %154, %162 ]
  %169 = getelementptr i8, ptr %0, i32 268
  store i32 %167, ptr %169, align 4
  %170 = getelementptr i8, ptr %0, i32 272
  store i32 %168, ptr %170, align 8
  %171 = add i32 %166, %167
  %172 = and i32 %171, 65535
  store i32 %172, ptr %21, align 4
  %173 = load i8, ptr %9, align 4, !range !10
  %174 = icmp eq i8 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %165
  %176 = load ptr, ptr %3, align 64
  %177 = getelementptr i8, ptr %176, i32 12316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %177, i32 %172) #19, !srcloc !12
  br label %182

178:                                              ; preds = %165
  %179 = shl i32 %171, 16
  %180 = load ptr, ptr %3, align 64
  %181 = getelementptr i8, ptr %180, i32 12320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %181, i32 %179) #19, !srcloc !12
  br label %182

182:                                              ; preds = %178, %175
  %183 = icmp ult i32 %167, %1
  br i1 %183, label %184, label %191

184:                                              ; preds = %182
  %185 = tail call zeroext i1 @napi_complete_done(ptr noundef %0, i32 noundef %167) #19
  %186 = getelementptr i8, ptr %0, i32 -56
  %187 = load i32, ptr %186, align 8
  %188 = and i32 %187, -33
  store i32 %188, ptr %186, align 8
  %189 = load ptr, ptr %3, align 64
  %190 = getelementptr i8, ptr %189, i32 532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %190, i32 32) #19, !srcloc !12
  br label %191

191:                                              ; preds = %184, %182
  %192 = getelementptr i8, ptr %0, i32 264
  %193 = load i16, ptr %192, align 8
  %194 = icmp eq i16 %193, 0
  br i1 %194, label %210, label %195

195:                                              ; preds = %191
  %196 = getelementptr i8, ptr %0, i32 266
  %197 = load i16, ptr %196, align 2
  %198 = load i32, ptr %169, align 4
  %199 = load i32, ptr %170, align 8
  %200 = tail call i64 @ktime_get() #19
  %201 = zext i16 %197 to i64
  %202 = getelementptr i8, ptr %0, i32 280
  %203 = insertvalue [3 x i64] poison, i64 %200, 0
  %204 = zext i32 %199 to i64
  %205 = shl nuw i64 %204, 32
  %206 = zext i32 %198 to i64
  %207 = or i64 %205, %206
  %208 = insertvalue [3 x i64] %203, i64 %207, 1
  %209 = insertvalue [3 x i64] %208, i64 %201, 2
  tail call void @net_dim(ptr noundef %202, [3 x i64] %209) #19
  br label %210

210:                                              ; preds = %195, %191
  ret i32 %167
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_sysport_wol_isr(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.bcm_sysport_priv, ptr %1, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  tail call void @pm_wakeup_dev_event(ptr noundef %5, i32 noundef 0, i1 noundef zeroext false) #19
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_wakeup_capable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_sysport_netdevice_event(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) #2 {
  %4 = load ptr, ptr %2, align 4
  %5 = getelementptr i8, ptr %0, i32 -580
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, %4
  br i1 %7, label %8, label %84

8:                                                ; preds = %3
  %9 = icmp eq i32 %1, 21
  br i1 %9, label %10, label %84

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 16
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, @bcm_sysport_netdev_ops
  br i1 %13, label %14, label %84

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.netdev_notifier_changeupper_info, ptr %2, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = tail call zeroext i1 @dsa_slave_dev_check(ptr noundef %16) #19
  br i1 %17, label %18, label %84

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.netdev_notifier_changeupper_info, ptr %2, i32 0, i32 3
  %20 = load i8, ptr %19, align 1, !range !10
  %21 = icmp eq i8 %20, 0
  %22 = load ptr, ptr %15, align 4
  br i1 %21, label %83, label %23

23:                                               ; preds = %18
  %24 = tail call ptr @dsa_port_from_netdev(ptr noundef %22) #19
  %25 = getelementptr i8, ptr %4, i32 1408
  %26 = getelementptr inbounds %struct.dsa_port, ptr %24, i32 0, i32 4
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.dsa_switch, ptr %27, i32 0, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %84

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.dsa_port, ptr %24, i32 0, i32 5
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr i8, ptr %4, i32 1428
  %35 = load i8, ptr %34, align 4, !range !10
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 88
  %39 = load i32, ptr %38, align 4
  %40 = lshr i32 %39, 1
  %41 = tail call i32 @netif_set_real_num_tx_queues(ptr noundef %22, i32 noundef %40) #19
  br label %42

42:                                               ; preds = %37, %31
  %43 = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 89
  %44 = load i32, ptr %43, align 8
  %45 = getelementptr i8, ptr %4, i32 2280
  %46 = load i32, ptr %45, align 8
  %47 = icmp eq i32 %46, 0
  %48 = icmp eq i32 %46, %44
  %49 = select i1 %47, i1 true, i1 %48
  br i1 %49, label %51, label %50

50:                                               ; preds = %42
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %22, ptr noundef nonnull @.str.43) #20
  br label %51

51:                                               ; preds = %50, %42
  store i32 %44, ptr %45, align 8
  %52 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 88
  %53 = load i32, ptr %52, align 4
  %54 = icmp ne i32 %53, 0
  %55 = icmp ne i32 %44, 0
  %56 = select i1 %54, i1 %55, i1 false
  br i1 %56, label %57, label %84

57:                                               ; preds = %51
  %58 = getelementptr i8, ptr %4, i32 1712
  %59 = mul i32 %44, %33
  br label %60

60:                                               ; preds = %76, %57
  %61 = phi i32 [ %53, %57 ], [ %77, %76 ]
  %62 = phi i32 [ 0, %57 ], [ %78, %76 ]
  %63 = phi i32 [ 0, %57 ], [ %79, %76 ]
  %64 = load ptr, ptr %58, align 16
  %65 = getelementptr %struct.bcm_sysport_tx_ring, ptr %64, i32 %63, i32 15
  %66 = load i8, ptr %65, align 4, !range !10
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %60
  %69 = getelementptr %struct.bcm_sysport_tx_ring, ptr %64, i32 %63
  %70 = getelementptr %struct.bcm_sysport_tx_ring, ptr %64, i32 %63, i32 13
  store i32 %62, ptr %70, align 4
  %71 = getelementptr %struct.bcm_sysport_tx_ring, ptr %64, i32 %63, i32 14
  store i32 %33, ptr %71, align 8
  store i8 1, ptr %65, align 4
  %72 = add i32 %62, %59
  %73 = getelementptr %struct.bcm_sysport_priv, ptr %25, i32 0, i32 44, i32 %72
  store ptr %69, ptr %73, align 4
  %74 = add nuw i32 %62, 1
  %75 = load i32, ptr %52, align 4
  br label %76

76:                                               ; preds = %68, %60
  %77 = phi i32 [ %61, %60 ], [ %75, %68 ]
  %78 = phi i32 [ %62, %60 ], [ %74, %68 ]
  %79 = add nuw i32 %63, 1
  %80 = icmp ult i32 %79, %77
  %81 = icmp ult i32 %78, %44
  %82 = select i1 %80, i1 %81, i1 false
  br i1 %82, label %60, label %84

83:                                               ; preds = %18
  tail call fastcc void @bcm_sysport_unmap_queues(ptr noundef %4, ptr noundef %22)
  br label %84

84:                                               ; preds = %83, %76, %51, %23, %14, %10, %8, %3
  %85 = phi i32 [ 0, %3 ], [ 0, %10 ], [ 0, %14 ], [ 1, %51 ], [ 1, %23 ], [ 1, %83 ], [ 1, %8 ], [ 1, %76 ]
  ret i32 %85
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %0) unnamed_addr #5 {
  %2 = tail call i32 @clk_prepare(ptr noundef %0) #19
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = tail call i32 @clk_enable(ptr noundef %0) #19
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @clk_unprepare(ptr noundef %0) #19
  br label %8

8:                                                ; preds = %7, %4, %1
  %9 = phi i32 [ %2, %1 ], [ %5, %7 ], [ 0, %4 ]
  ret i32 %9
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_phy_deregister_fixed_link(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm_sysport_get_drvinfo(ptr nocapture noundef readnone %0, ptr noundef %1) #8 {
  %3 = getelementptr inbounds %struct.ethtool_drvinfo, ptr %1, i32 0, i32 1
  %4 = tail call i32 @strlcpy(ptr noundef %3, ptr noundef nonnull @.str.13, i32 noundef 32) #19
  %5 = getelementptr inbounds %struct.ethtool_drvinfo, ptr %1, i32 0, i32 4
  %6 = tail call i32 @strlcpy(ptr noundef %5, ptr noundef nonnull @.str.14, i32 noundef 32) #19
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @bcm_sysport_get_wol(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #9 {
  %3 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %1, i32 0, i32 1
  store i32 224, ptr %3, align 4
  %4 = getelementptr i8, ptr %0, i32 1888
  %5 = load i32, ptr %4, align 32
  %6 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %1, i32 0, i32 2
  store i32 %5, ptr %6, align 4
  %7 = load i32, ptr %4, align 32
  %8 = and i32 %7, 64
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %1, i32 0, i32 3
  %12 = getelementptr i8, ptr %0, i32 1892
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(6) %11, ptr noundef align 4 dereferenceable(6) %12, i32 6, i1 false)
  br label %13

13:                                               ; preds = %10, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_sysport_set_wol(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 1692
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  %6 = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3, i32 11, i32 1
  %7 = load i16, ptr %6, align 4
  %8 = and i16 %7, 1
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %56, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %1, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, -225
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %56

15:                                               ; preds = %10
  %16 = and i32 %12, 64
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = getelementptr i8, ptr %0, i32 1892
  %20 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %1, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(6) %19, ptr noundef align 4 dereferenceable(6) %20, i32 6, i1 false)
  %21 = load i32, ptr %11, align 4
  br label %22

22:                                               ; preds = %18, %15
  %23 = phi i32 [ %21, %18 ], [ %12, %15 ]
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %39, label %25

25:                                               ; preds = %22
  %26 = tail call i32 @device_set_wakeup_enable(ptr noundef %5, i1 noundef zeroext true) #19
  %27 = getelementptr i8, ptr %0, i32 1898
  %28 = load i8, ptr %27, align 2
  %29 = and i8 %28, 1
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %25
  %32 = getelementptr i8, ptr %0, i32 1704
  %33 = load i32, ptr %32, align 8
  %34 = tail call i32 @irq_set_irq_wake(i32 noundef %33, i32 noundef 1) #19
  %35 = load i8, ptr %27, align 2
  br label %36

36:                                               ; preds = %31, %25
  %37 = phi i8 [ %35, %31 ], [ %28, %25 ]
  %38 = and i8 %37, -2
  store i8 %38, ptr %27, align 2
  br label %53

39:                                               ; preds = %22
  %40 = tail call i32 @device_set_wakeup_enable(ptr noundef %5, i1 noundef zeroext false) #19
  %41 = getelementptr i8, ptr %0, i32 1898
  %42 = load i8, ptr %41, align 2
  %43 = and i8 %42, 1
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  %46 = getelementptr i8, ptr %0, i32 1704
  %47 = load i32, ptr %46, align 8
  %48 = tail call i32 @irq_set_irq_wake(i32 noundef %47, i32 noundef 0) #19
  %49 = load i8, ptr %41, align 2
  br label %50

50:                                               ; preds = %45, %39
  %51 = phi i8 [ %49, %45 ], [ %42, %39 ]
  %52 = or i8 %51, 1
  store i8 %52, ptr %41, align 2
  br label %53

53:                                               ; preds = %50, %36
  %54 = load i32, ptr %11, align 4
  %55 = getelementptr i8, ptr %0, i32 1888
  store i32 %54, ptr %55, align 32
  br label %56

56:                                               ; preds = %53, %10, %2
  %57 = phi i32 [ 0, %53 ], [ -524, %2 ], [ -22, %10 ]
  ret i32 %57
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @bcm_sysport_get_msglvl(ptr nocapture noundef readonly %0) #10 {
  %2 = getelementptr i8, ptr %0, i32 2192
  %3 = load i32, ptr %2, align 16
  ret i32 %3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @bcm_sysport_set_msglvl(ptr nocapture noundef writeonly %0, i32 noundef %1) #11 {
  %3 = getelementptr i8, ptr %0, i32 2192
  store i32 %1, ptr %3, align 16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_sysport_get_coalesce(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) #2 {
  %5 = getelementptr i8, ptr %0, i32 1408
  %6 = load ptr, ptr %5, align 64
  %7 = getelementptr i8, ptr %6, i32 17036
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #19, !srcloc !11
  %9 = lshr i32 %8, 3
  %10 = and i32 %9, 536862720
  %11 = udiv i32 %10, 1000
  %12 = getelementptr inbounds %struct.ethtool_coalesce, ptr %1, i32 0, i32 5
  store i32 %11, ptr %12, align 4
  %13 = and i32 %8, 2047
  %14 = getelementptr inbounds %struct.ethtool_coalesce, ptr %1, i32 0, i32 6
  store i32 %13, ptr %14, align 4
  %15 = getelementptr i8, ptr %0, i32 1428
  %16 = load i8, ptr %15, align 4, !range !10
  %17 = icmp eq i8 %16, 0
  %18 = select i1 %17, i32 4144, i32 4148
  %19 = load ptr, ptr %5, align 64
  %20 = getelementptr i8, ptr %19, i32 8192
  %21 = getelementptr i8, ptr %20, i32 %18
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #19, !srcloc !11
  %23 = lshr i32 %22, 3
  %24 = and i32 %23, 536862720
  %25 = udiv i32 %24, 1000
  %26 = getelementptr inbounds %struct.ethtool_coalesce, ptr %1, i32 0, i32 1
  store i32 %25, ptr %26, align 4
  %27 = and i32 %22, 511
  %28 = getelementptr inbounds %struct.ethtool_coalesce, ptr %1, i32 0, i32 2
  store i32 %27, ptr %28, align 4
  %29 = getelementptr i8, ptr %0, i32 1736
  %30 = load i16, ptr %29, align 8
  %31 = zext i16 %30 to i32
  %32 = getelementptr inbounds %struct.ethtool_coalesce, ptr %1, i32 0, i32 10
  store i32 %31, ptr %32, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_sysport_set_coalesce(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) #2 {
  %5 = alloca %struct.dim_cq_moder, align 2
  %6 = getelementptr i8, ptr %0, i32 1408
  %7 = getelementptr inbounds %struct.ethtool_coalesce, ptr %1, i32 0, i32 6
  %8 = load i32, ptr %7, align 4
  %9 = icmp ugt i32 %8, 2047
  br i1 %9, label %115, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.ethtool_coalesce, ptr %1, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = icmp ugt i32 %12, 524281
  br i1 %13, label %115, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.ethtool_coalesce, ptr %1, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = icmp ugt i32 %16, 511
  br i1 %17, label %115, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.ethtool_coalesce, ptr %1, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = icmp ugt i32 %20, 524281
  br i1 %21, label %115, label %22

22:                                               ; preds = %18
  %23 = icmp eq i32 %12, 0
  %24 = icmp eq i32 %8, 0
  %25 = select i1 %23, i1 %24, i1 false
  br i1 %25, label %115, label %26

26:                                               ; preds = %22
  %27 = icmp eq i32 %20, 0
  %28 = icmp eq i32 %16, 0
  %29 = select i1 %27, i1 %28, i1 false
  br i1 %29, label %115, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 88
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %68, label %34

34:                                               ; preds = %30
  %35 = getelementptr i8, ptr %0, i32 1712
  br label %36

36:                                               ; preds = %36, %34
  %37 = phi i32 [ 0, %34 ], [ %63, %36 ]
  %38 = load ptr, ptr %35, align 16
  %39 = getelementptr %struct.bcm_sysport_tx_ring, ptr %38, i32 %37, i32 10
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr %struct.bcm_sysport_tx_ring, ptr %38, i32 %37, i32 2
  %42 = load i32, ptr %41, align 8
  %43 = mul i32 %42, 28
  %44 = add i32 %43, 652
  %45 = load ptr, ptr %40, align 64
  %46 = getelementptr i8, ptr %45, i32 16384
  %47 = getelementptr i8, ptr %46, i32 %44
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #19, !srcloc !11
  %49 = and i32 %48, 63488
  %50 = load i32, ptr %7, align 4
  %51 = or i32 %49, %50
  %52 = load i32, ptr %11, align 4
  %53 = mul i32 %52, 8000
  %54 = add i32 %53, 65528
  %55 = and i32 %54, -65536
  %56 = or i32 %51, %55
  %57 = load i32, ptr %41, align 8
  %58 = mul i32 %57, 28
  %59 = add i32 %58, 652
  %60 = load ptr, ptr %40, align 64
  %61 = getelementptr i8, ptr %60, i32 16384
  %62 = getelementptr i8, ptr %61, i32 %59
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 %56) #19, !srcloc !12
  %63 = add nuw i32 %37, 1
  %64 = load i32, ptr %31, align 4
  %65 = icmp ult i32 %63, %64
  br i1 %65, label %36, label %66

66:                                               ; preds = %36
  %67 = load i32, ptr %19, align 4
  br label %68

68:                                               ; preds = %66, %30
  %69 = phi i32 [ %67, %66 ], [ %20, %30 ]
  %70 = getelementptr i8, ptr %0, i32 1860
  store i32 %69, ptr %70, align 4
  %71 = load i32, ptr %15, align 4
  %72 = getelementptr i8, ptr %0, i32 1856
  store i32 %71, ptr %72, align 64
  %73 = getelementptr inbounds %struct.ethtool_coalesce, ptr %1, i32 0, i32 10
  %74 = load i32, ptr %73, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %89, label %76

76:                                               ; preds = %68
  %77 = getelementptr i8, ptr %0, i32 1736
  %78 = load i16, ptr %77, align 8
  %79 = icmp eq i16 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %76
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  %81 = getelementptr i8, ptr %0, i32 1845
  %82 = load i8, ptr %81, align 1
  call void @net_dim_get_def_rx_moderation(ptr nonnull sret(%struct.dim_cq_moder) align 2 %5, i8 noundef zeroext %82) #19
  %83 = load i16, ptr %5, align 2
  %84 = getelementptr inbounds i8, ptr %5, i32 2
  %85 = load i16, ptr %84, align 2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  %86 = zext i16 %83 to i32
  %87 = zext i16 %85 to i32
  %88 = load i32, ptr %73, align 4
  br label %89

89:                                               ; preds = %80, %76, %68
  %90 = phi i32 [ %74, %76 ], [ %88, %80 ], [ 0, %68 ]
  %91 = phi i32 [ %69, %76 ], [ %86, %80 ], [ %69, %68 ]
  %92 = phi i32 [ %71, %76 ], [ %87, %80 ], [ %71, %68 ]
  %93 = trunc i32 %90 to i16
  %94 = getelementptr i8, ptr %0, i32 1736
  store i16 %93, ptr %94, align 8
  %95 = getelementptr i8, ptr %0, i32 1428
  %96 = load i8, ptr %95, align 4, !range !10
  %97 = icmp eq i8 %96, 0
  %98 = select i1 %97, i32 4144, i32 4148
  %99 = load ptr, ptr %6, align 64
  %100 = getelementptr i8, ptr %99, i32 8192
  %101 = getelementptr i8, ptr %100, i32 %98
  %102 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %101) #19, !srcloc !11
  %103 = and i32 %102, 65024
  %104 = mul i32 %91, 8000
  %105 = add i32 %104, 65528
  %106 = and i32 %105, -65536
  %107 = or i32 %106, %92
  %108 = or i32 %107, %103
  %109 = load i8, ptr %95, align 4, !range !10
  %110 = icmp eq i8 %109, 0
  %111 = select i1 %110, i32 4144, i32 4148
  %112 = load ptr, ptr %6, align 64
  %113 = getelementptr i8, ptr %112, i32 8192
  %114 = getelementptr i8, ptr %113, i32 %111
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %114, i32 %108) #19, !srcloc !12
  br label %115

115:                                              ; preds = %89, %26, %22, %18, %14, %10, %4
  %116 = phi i32 [ 0, %89 ], [ -22, %18 ], [ -22, %14 ], [ -22, %10 ], [ -22, %4 ], [ -22, %22 ], [ -22, %26 ]
  ret i32 %116
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm_sysport_get_strings(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #8 {
  %4 = alloca [128 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #19
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %4, i8 0, i32 128, i1 false), !annotation !8
  %5 = icmp eq i32 %1, 1
  br i1 %5, label %6, label %42

6:                                                ; preds = %3
  %7 = getelementptr i8, ptr %0, i32 1428
  br label %12

8:                                                ; preds = %25
  %9 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 88
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %42, label %29

12:                                               ; preds = %25, %6
  %13 = phi i32 [ 0, %6 ], [ %26, %25 ]
  %14 = phi i32 [ 0, %6 ], [ %27, %25 ]
  %15 = getelementptr [80 x %struct.bcm_sysport_stats], ptr @bcm_sysport_gstrings_stats, i32 0, i32 %14
  %16 = load i8, ptr %7, align 4, !range !10
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %12
  %19 = getelementptr [80 x %struct.bcm_sysport_stats], ptr @bcm_sysport_gstrings_stats, i32 0, i32 %14, i32 3
  %20 = load i32, ptr %19, align 4
  switch i32 %20, label %25 [
    i32 -1, label %21
    i32 0, label %21
    i32 4, label %21
    i32 5, label %21
    i32 6, label %21
  ]

21:                                               ; preds = %18, %18, %18, %18, %18, %12
  %22 = shl i32 %13, 5
  %23 = getelementptr i8, ptr %2, i32 %22
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(32) %23, ptr noundef align 4 dereferenceable(32) %15, i32 32, i1 false)
  %24 = add i32 %13, 1
  br label %25

25:                                               ; preds = %21, %18
  %26 = phi i32 [ %24, %21 ], [ %13, %18 ]
  %27 = add nuw nsw i32 %14, 1
  %28 = icmp eq i32 %27, 80
  br i1 %28, label %8, label %12

29:                                               ; preds = %29, %8
  %30 = phi i32 [ %38, %29 ], [ %26, %8 ]
  %31 = phi i32 [ %39, %29 ], [ 0, %8 ]
  %32 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 128, ptr noundef nonnull @.str.15, i32 noundef %31)
  %33 = shl i32 %30, 5
  %34 = getelementptr i8, ptr %2, i32 %33
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(32) %34, ptr noundef nonnull align 1 dereferenceable(32) %4, i32 32, i1 false)
  %35 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 128, ptr noundef nonnull @.str.16, i32 noundef %31)
  %36 = add i32 %33, 32
  %37 = getelementptr i8, ptr %2, i32 %36
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(32) %37, ptr noundef nonnull align 1 dereferenceable(32) %4, i32 32, i1 false)
  %38 = add i32 %30, 2
  %39 = add nuw i32 %31, 1
  %40 = load i32, ptr %9, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %29, label %42

42:                                               ; preds = %29, %8, %3
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm_sysport_get_stats(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 1408
  %5 = getelementptr i8, ptr %0, i32 2232
  %6 = getelementptr i8, ptr %0, i32 2264
  %7 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %113, label %11

11:                                               ; preds = %3
  %12 = getelementptr i8, ptr %0, i32 1428
  br label %13

13:                                               ; preds = %65, %11
  %14 = phi i32 [ 0, %11 ], [ %67, %65 ]
  %15 = phi i32 [ 0, %11 ], [ %66, %65 ]
  %16 = getelementptr [80 x %struct.bcm_sysport_stats], ptr @bcm_sysport_gstrings_stats, i32 0, i32 %14, i32 3
  %17 = load i32, ptr %16, align 4
  switch i32 %17, label %57 [
    i32 -1, label %65
    i32 0, label %65
    i32 6, label %65
    i32 1, label %18
    i32 2, label %18
    i32 3, label %18
    i32 4, label %31
    i32 5, label %44
  ]

18:                                               ; preds = %13, %13, %13
  %19 = load i8, ptr %12, align 4, !range !10
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %65

21:                                               ; preds = %18
  %22 = add nsw i32 %14, -9
  %23 = icmp ult i32 %22, 29
  %24 = select i1 %23, i32 0, i32 12
  %25 = add i32 %15, 1024
  %26 = add i32 %25, %24
  %27 = load ptr, ptr %4, align 64
  %28 = getelementptr i8, ptr %27, i32 2048
  %29 = getelementptr i8, ptr %28, i32 %26
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #19, !srcloc !11
  br label %57

31:                                               ; preds = %13
  %32 = getelementptr [80 x %struct.bcm_sysport_stats], ptr @bcm_sysport_gstrings_stats, i32 0, i32 %14, i32 4
  %33 = load i16, ptr %32, align 4
  %34 = zext i16 %33 to i32
  %35 = load ptr, ptr %4, align 64
  %36 = getelementptr i8, ptr %35, i32 768
  %37 = getelementptr i8, ptr %36, i32 %34
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #19, !srcloc !11
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %57

40:                                               ; preds = %31
  %41 = load ptr, ptr %4, align 64
  %42 = getelementptr i8, ptr %41, i32 768
  %43 = getelementptr i8, ptr %42, i32 %34
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 0) #19, !srcloc !12
  br label %57

44:                                               ; preds = %13
  %45 = getelementptr [80 x %struct.bcm_sysport_stats], ptr @bcm_sysport_gstrings_stats, i32 0, i32 %14, i32 4
  %46 = load i16, ptr %45, align 4
  %47 = zext i16 %46 to i32
  %48 = load ptr, ptr %4, align 64
  %49 = getelementptr i8, ptr %48, i32 1024
  %50 = getelementptr i8, ptr %49, i32 %47
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #19, !srcloc !11
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %57

53:                                               ; preds = %44
  %54 = load ptr, ptr %4, align 64
  %55 = getelementptr i8, ptr %54, i32 1024
  %56 = getelementptr i8, ptr %55, i32 %47
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 0) #19, !srcloc !12
  br label %57

57:                                               ; preds = %53, %44, %40, %31, %21, %13
  %58 = phi i32 [ 0, %13 ], [ -1, %53 ], [ %51, %44 ], [ -1, %40 ], [ %38, %31 ], [ %30, %21 ]
  %59 = getelementptr [80 x %struct.bcm_sysport_stats], ptr @bcm_sysport_gstrings_stats, i32 0, i32 %14, i32 1
  %60 = load i32, ptr %59, align 4
  %61 = add i32 %60, %15
  %62 = getelementptr [80 x %struct.bcm_sysport_stats], ptr @bcm_sysport_gstrings_stats, i32 0, i32 %14, i32 2
  %63 = load i32, ptr %62, align 4
  %64 = getelementptr i8, ptr %4, i32 %63
  store i32 %58, ptr %64, align 4
  br label %65

65:                                               ; preds = %57, %18, %13, %13, %13
  %66 = phi i32 [ %61, %57 ], [ %15, %13 ], [ %15, %13 ], [ %15, %13 ], [ %15, %18 ]
  %67 = add nuw nsw i32 %14, 1
  %68 = icmp eq i32 %67, 80
  br i1 %68, label %69, label %13

69:                                               ; preds = %65
  %70 = getelementptr i8, ptr %0, i32 1688
  %71 = load ptr, ptr %70, align 8
  %72 = getelementptr inbounds %struct.net_device, ptr %71, i32 0, i32 88
  %73 = load i32, ptr %72, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %108, label %75

75:                                               ; preds = %69
  %76 = getelementptr i8, ptr %0, i32 1712
  br label %77

77:                                               ; preds = %98, %75
  %78 = phi i64 [ 0, %75 ], [ %101, %98 ]
  %79 = phi i64 [ 0, %75 ], [ %102, %98 ]
  %80 = phi i32 [ 0, %75 ], [ %103, %98 ]
  %81 = load ptr, ptr %76, align 16
  %82 = getelementptr %struct.bcm_sysport_tx_ring, ptr %81, i32 %80, i32 12
  %83 = getelementptr %struct.bcm_sysport_tx_ring, ptr %81, i32 %80, i32 11
  br label %84

84:                                               ; preds = %92, %77
  %85 = load volatile i32, ptr %6, align 4
  %86 = and i32 %85, 1
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %88, %84
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !16
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #19, !srcloc !17
  %89 = load volatile i32, ptr %6, align 4
  %90 = and i32 %89, 1
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %88

92:                                               ; preds = %88, %84
  %93 = phi i32 [ %85, %84 ], [ %89, %88 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !18
  %94 = load i32, ptr %82, align 8
  %95 = load i32, ptr %83, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !19
  %96 = load volatile i32, ptr %6, align 4
  %97 = icmp eq i32 %96, %93
  br i1 %97, label %98, label %84

98:                                               ; preds = %92
  %99 = zext i32 %95 to i64
  %100 = zext i32 %94 to i64
  %101 = add i64 %78, %100
  %102 = add i64 %79, %99
  %103 = add nuw i32 %80, 1
  %104 = load ptr, ptr %70, align 8
  %105 = getelementptr inbounds %struct.net_device, ptr %104, i32 0, i32 88
  %106 = load i32, ptr %105, align 4
  %107 = icmp ult i32 %103, %106
  br i1 %107, label %77, label %108

108:                                              ; preds = %98, %69
  %109 = phi i64 [ 0, %69 ], [ %101, %98 ]
  %110 = phi i64 [ 0, %69 ], [ %102, %98 ]
  %111 = getelementptr i8, ptr %0, i32 2256
  store i64 %109, ptr %111, align 8
  %112 = getelementptr i8, ptr %0, i32 2248
  store i64 %110, ptr %112, align 8
  br label %113

113:                                              ; preds = %108, %3
  %114 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 36
  %115 = getelementptr i8, ptr %0, i32 1428
  br label %116

116:                                              ; preds = %152, %113
  %117 = phi i32 [ 0, %113 ], [ %153, %152 ]
  %118 = add nsw i32 %117, -4
  %119 = icmp ult i32 %118, 5
  %120 = and i32 %117, 268435452
  %121 = icmp eq i32 %120, 0
  %122 = select i1 %121, ptr %5, ptr %4
  %123 = select i1 %119, ptr %114, ptr %122
  %124 = load i8, ptr %115, align 4, !range !10
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %129, label %126

126:                                              ; preds = %116
  %127 = getelementptr [80 x %struct.bcm_sysport_stats], ptr @bcm_sysport_gstrings_stats, i32 0, i32 %117, i32 3
  %128 = load i32, ptr %127, align 4
  switch i32 %128, label %152 [
    i32 -1, label %129
    i32 0, label %129
    i32 4, label %129
    i32 5, label %129
    i32 6, label %129
  ]

129:                                              ; preds = %126, %126, %126, %126, %126, %116
  %130 = getelementptr [80 x %struct.bcm_sysport_stats], ptr @bcm_sysport_gstrings_stats, i32 0, i32 %117, i32 2
  %131 = load i32, ptr %130, align 4
  %132 = getelementptr i8, ptr %123, i32 %131
  br i1 %121, label %133, label %148

133:                                              ; preds = %129
  %134 = getelementptr i64, ptr %2, i32 %117
  br label %135

135:                                              ; preds = %143, %133
  %136 = load volatile i32, ptr %6, align 4
  %137 = and i32 %136, 1
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %143, label %139

139:                                              ; preds = %139, %135
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !16
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #19, !srcloc !17
  %140 = load volatile i32, ptr %6, align 4
  %141 = and i32 %140, 1
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %139

143:                                              ; preds = %139, %135
  %144 = phi i32 [ %136, %135 ], [ %140, %139 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !18
  %145 = load i64, ptr %132, align 8
  store i64 %145, ptr %134, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !19
  %146 = load volatile i32, ptr %6, align 4
  %147 = icmp eq i32 %146, %144
  br i1 %147, label %152, label %135

148:                                              ; preds = %129
  %149 = load i32, ptr %132, align 4
  %150 = zext i32 %149 to i64
  %151 = getelementptr i64, ptr %2, i32 %117
  store i64 %150, ptr %151, align 8
  br label %152

152:                                              ; preds = %148, %143, %126
  %153 = add nuw nsw i32 %117, 1
  %154 = icmp eq i32 %153, 80
  br i1 %154, label %155, label %116

155:                                              ; preds = %152
  %156 = load i8, ptr %115, align 4, !range !10
  %157 = icmp eq i8 %156, 0
  br label %158

158:                                              ; preds = %166, %155
  %159 = phi i32 [ 0, %155 ], [ %167, %166 ]
  %160 = phi i32 [ 0, %155 ], [ %168, %166 ]
  br i1 %157, label %164, label %161

161:                                              ; preds = %158
  %162 = getelementptr [80 x %struct.bcm_sysport_stats], ptr @bcm_sysport_gstrings_stats, i32 0, i32 %160, i32 3
  %163 = load i32, ptr %162, align 4
  switch i32 %163, label %166 [
    i32 -1, label %164
    i32 0, label %164
    i32 4, label %164
    i32 5, label %164
    i32 6, label %164
  ]

164:                                              ; preds = %161, %161, %161, %161, %161, %158
  %165 = add i32 %159, 1
  br label %166

166:                                              ; preds = %164, %161
  %167 = phi i32 [ %165, %164 ], [ %159, %161 ]
  %168 = add nuw nsw i32 %160, 1
  %169 = icmp eq i32 %168, 80
  br i1 %169, label %170, label %158

170:                                              ; preds = %166
  %171 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 88
  %172 = load i32, ptr %171, align 4
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %193, label %174

174:                                              ; preds = %170
  %175 = getelementptr i8, ptr %0, i32 1712
  br label %176

176:                                              ; preds = %176, %174
  %177 = phi i32 [ %167, %174 ], [ %189, %176 ]
  %178 = phi i32 [ 0, %174 ], [ %190, %176 ]
  %179 = load ptr, ptr %175, align 16
  %180 = getelementptr %struct.bcm_sysport_tx_ring, ptr %179, i32 %178, i32 11
  %181 = load i32, ptr %180, align 4
  %182 = zext i32 %181 to i64
  %183 = getelementptr i64, ptr %2, i32 %177
  store i64 %182, ptr %183, align 8
  %184 = add i32 %177, 1
  %185 = getelementptr %struct.bcm_sysport_tx_ring, ptr %179, i32 %178, i32 12
  %186 = load i32, ptr %185, align 8
  %187 = zext i32 %186 to i64
  %188 = getelementptr i64, ptr %2, i32 %184
  store i64 %187, ptr %188, align 8
  %189 = add i32 %177, 2
  %190 = add nuw i32 %178, 1
  %191 = load i32, ptr %171, align 4
  %192 = icmp ult i32 %190, %191
  br i1 %192, label %176, label %193

193:                                              ; preds = %176, %170
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal i32 @bcm_sysport_get_sset_count(ptr nocapture noundef readonly %0, i32 noundef %1) #12 {
  %3 = icmp eq i32 %1, 1
  br i1 %3, label %4, label %25

4:                                                ; preds = %2
  %5 = getelementptr i8, ptr %0, i32 1428
  %6 = load i8, ptr %5, align 4, !range !10
  %7 = icmp eq i8 %6, 0
  br label %8

8:                                                ; preds = %16, %4
  %9 = phi i32 [ 0, %4 ], [ %17, %16 ]
  %10 = phi i32 [ 0, %4 ], [ %18, %16 ]
  br i1 %7, label %14, label %11

11:                                               ; preds = %8
  %12 = getelementptr [80 x %struct.bcm_sysport_stats], ptr @bcm_sysport_gstrings_stats, i32 0, i32 %10, i32 3
  %13 = load i32, ptr %12, align 4
  switch i32 %13, label %16 [
    i32 -1, label %14
    i32 0, label %14
    i32 4, label %14
    i32 5, label %14
    i32 6, label %14
  ]

14:                                               ; preds = %11, %11, %11, %11, %11, %8
  %15 = add i32 %9, 1
  br label %16

16:                                               ; preds = %14, %11
  %17 = phi i32 [ %15, %14 ], [ %9, %11 ]
  %18 = add nuw nsw i32 %10, 1
  %19 = icmp eq i32 %18, 80
  br i1 %19, label %20, label %8

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 88
  %22 = load i32, ptr %21, align 4
  %23 = shl i32 %22, 1
  %24 = add i32 %23, %17
  br label %25

25:                                               ; preds = %20, %2
  %26 = phi i32 [ %24, %20 ], [ -95, %2 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_sysport_get_rxnfc(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readnone %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 1408
  %5 = load i32, ptr %1, align 8
  %6 = icmp eq i32 %5, 47
  br i1 %6, label %7, label %30

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %1, i32 0, i32 3, i32 6
  %9 = load i32, ptr %8, align 8
  %10 = getelementptr i8, ptr %0, i32 2196
  %11 = tail call i32 @_find_next_bit_le(ptr noundef %10, i32 noundef 8, i32 noundef 0) #19
  %12 = icmp ult i32 %11, 8
  br i1 %12, label %13, label %30

13:                                               ; preds = %24, %7
  %14 = phi i32 [ %26, %24 ], [ %11, %7 ]
  %15 = shl nuw nsw i32 %14, 2
  %16 = add nuw nsw i32 %15, 4
  %17 = load ptr, ptr %4, align 64
  %18 = getelementptr i8, ptr %17, i32 768
  %19 = getelementptr i8, ptr %18, i32 %16
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #19, !srcloc !11
  %21 = lshr i32 %20, 16
  %22 = and i32 %21, 255
  %23 = icmp eq i32 %22, %9
  br i1 %23, label %28, label %24

24:                                               ; preds = %13
  %25 = add nuw nsw i32 %14, 1
  %26 = tail call i32 @_find_next_bit_le(ptr noundef %10, i32 noundef 8, i32 noundef %25) #19
  %27 = icmp ult i32 %26, 8
  br i1 %27, label %13, label %30

28:                                               ; preds = %13
  %29 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %1, i32 0, i32 3, i32 5
  store i64 -2, ptr %29, align 8
  br label %30

30:                                               ; preds = %28, %24, %7, %3
  %31 = phi i32 [ -95, %3 ], [ 0, %28 ], [ -95, %7 ], [ -95, %24 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_sysport_set_rxnfc(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 1408
  %4 = load i32, ptr %1, align 8
  switch i32 %4, label %65 [
    i32 50, label %5
    i32 49, label %42
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %1, i32 0, i32 3, i32 6
  %7 = load i32, ptr %6, align 8
  %8 = icmp ugt i32 %7, 255
  br i1 %8, label %65, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %1, i32 0, i32 3, i32 5
  %11 = load i64, ptr %10, align 8
  %12 = icmp eq i64 %11, -2
  br i1 %12, label %13, label %65

13:                                               ; preds = %9
  %14 = getelementptr i8, ptr %0, i32 2196
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 255
  %17 = tail call i32 @__sw_hweight32(i32 noundef %16) #19
  %18 = icmp eq i32 %17, 8
  br i1 %18, label %65, label %19

19:                                               ; preds = %13
  %20 = tail call i32 @_find_first_zero_bit_le(ptr noundef %14, i32 noundef 8) #19
  %21 = icmp ugt i32 %20, 7
  br i1 %21, label %65, label %22

22:                                               ; preds = %19
  %23 = shl nuw nsw i32 %20, 2
  %24 = add nuw nsw i32 %23, 4
  %25 = load ptr, ptr %3, align 64
  %26 = getelementptr i8, ptr %25, i32 768
  %27 = getelementptr i8, ptr %26, i32 %24
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #19, !srcloc !11
  %29 = and i32 %28, -16711681
  %30 = load i32, ptr %6, align 8
  %31 = shl i32 %30, 16
  %32 = or i32 %31, %29
  %33 = load ptr, ptr %3, align 64
  %34 = getelementptr i8, ptr %33, i32 768
  %35 = getelementptr i8, ptr %34, i32 %24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %32) #19, !srcloc !12
  %36 = add nuw nsw i32 %23, 36
  %37 = load ptr, ptr %3, align 64
  %38 = getelementptr i8, ptr %37, i32 768
  %39 = getelementptr i8, ptr %38, i32 %36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 -16711681) #19, !srcloc !12
  %40 = load i32, ptr %6, align 8
  %41 = getelementptr %struct.bcm_sysport_priv, ptr %3, i32 0, i32 39, i32 %20
  store i32 %40, ptr %41, align 4
  tail call void @_set_bit(i32 noundef %20, ptr noundef %14) #19
  br label %65

42:                                               ; preds = %2
  %43 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %1, i32 0, i32 3, i32 6
  %44 = load i32, ptr %43, align 8
  %45 = getelementptr i8, ptr %0, i32 2196
  %46 = tail call i32 @_find_next_bit_le(ptr noundef %45, i32 noundef 8, i32 noundef 0) #19
  %47 = icmp ult i32 %46, 8
  br i1 %47, label %48, label %65

48:                                               ; preds = %59, %42
  %49 = phi i32 [ %61, %59 ], [ %46, %42 ]
  %50 = shl nuw nsw i32 %49, 2
  %51 = add nuw nsw i32 %50, 4
  %52 = load ptr, ptr %3, align 64
  %53 = getelementptr i8, ptr %52, i32 768
  %54 = getelementptr i8, ptr %53, i32 %51
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #19, !srcloc !11
  %56 = lshr i32 %55, 16
  %57 = and i32 %56, 255
  %58 = icmp eq i32 %57, %44
  br i1 %58, label %63, label %59

59:                                               ; preds = %48
  %60 = add nuw nsw i32 %49, 1
  %61 = tail call i32 @_find_next_bit_le(ptr noundef %45, i32 noundef 8, i32 noundef %60) #19
  %62 = icmp ult i32 %61, 8
  br i1 %62, label %48, label %65

63:                                               ; preds = %48
  tail call void @_clear_bit(i32 noundef %49, ptr noundef %45) #19
  %64 = getelementptr %struct.bcm_sysport_priv, ptr %3, i32 0, i32 39, i32 %49
  store i32 0, ptr %64, align 4
  br label %65

65:                                               ; preds = %63, %59, %42, %22, %19, %13, %9, %5, %2
  %66 = phi i32 [ -95, %2 ], [ 0, %22 ], [ -7, %5 ], [ -95, %9 ], [ -28, %13 ], [ -28, %19 ], [ 0, %63 ], [ -95, %42 ], [ -95, %59 ]
  ret i32 %66
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_get_link_ksettings(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_set_link_ksettings(ptr noundef, ptr noundef) #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #14

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_set_wakeup_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @net_dim_get_def_rx_moderation(ptr sret(%struct.dim_cq_moder) align 2, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_le(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_sysport_open(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 1408
  %3 = getelementptr i8, ptr %0, i32 1900
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @clk_prepare(ptr noundef %4) #19
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = tail call i32 @clk_enable(ptr noundef %4) #19
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  tail call void @clk_unprepare(ptr noundef %4) #19
  br label %11

11:                                               ; preds = %10, %7, %1
  %12 = getelementptr i8, ptr %0, i32 1428
  %13 = load i8, ptr %12, align 4, !range !10
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %11
  %16 = load ptr, ptr %2, align 64
  %17 = getelementptr i8, ptr %16, i32 2056
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #19, !srcloc !11
  %19 = or i32 %18, 8192
  %20 = load ptr, ptr %2, align 64
  %21 = getelementptr i8, ptr %20, i32 2056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #19, !srcloc !12
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 2147480) #19
  %23 = load ptr, ptr %2, align 64
  %24 = getelementptr i8, ptr %23, i32 2056
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #19, !srcloc !11
  %26 = and i32 %25, -8193
  %27 = load ptr, ptr %2, align 64
  %28 = getelementptr i8, ptr %27, i32 2056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #19, !srcloc !12
  br label %29

29:                                               ; preds = %15, %11
  %30 = load ptr, ptr %2, align 64
  %31 = getelementptr i8, ptr %30, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 1) #19, !srcloc !12
  %32 = load ptr, ptr %2, align 64
  %33 = getelementptr i8, ptr %32, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 1) #19, !srcloc !12
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748000) #19
  %35 = load ptr, ptr %2, align 64
  %36 = getelementptr i8, ptr %35, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 0) #19, !srcloc !12
  %37 = load ptr, ptr %2, align 64
  %38 = getelementptr i8, ptr %37, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 0) #19, !srcloc !12
  %39 = load i8, ptr %12, align 4, !range !10
  %40 = icmp eq i8 %39, 0
  %41 = load ptr, ptr %2, align 64
  br i1 %40, label %42, label %48

42:                                               ; preds = %29
  %43 = getelementptr i8, ptr %41, i32 2056
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #19, !srcloc !11
  %45 = and i32 %44, -4
  %46 = load ptr, ptr %2, align 64
  %47 = getelementptr i8, ptr %46, i32 2056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %45) #19, !srcloc !12
  br label %54

48:                                               ; preds = %29
  %49 = getelementptr i8, ptr %41, i32 4096
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #19, !srcloc !11
  %51 = and i32 %50, -4
  %52 = load ptr, ptr %2, align 64
  %53 = getelementptr i8, ptr %52, i32 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %51) #19, !srcloc !12
  br label %54

54:                                               ; preds = %48, %42
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #19
  %55 = load ptr, ptr %2, align 64
  %56 = getelementptr i8, ptr %55, i32 1024
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #19, !srcloc !11
  %58 = or i32 %57, 3
  %59 = load i8, ptr %12, align 4, !range !10
  %60 = icmp eq i8 %59, 0
  %61 = and i32 %58, -12582913
  %62 = select i1 %60, i32 %58, i32 %61
  %63 = or i32 %62, 4194304
  %64 = load ptr, ptr %2, align 64
  %65 = getelementptr i8, ptr %64, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %63) #19, !srcloc !12
  %66 = load i8, ptr %12, align 4, !range !10
  %67 = icmp eq i8 %66, 0
  %68 = load ptr, ptr %2, align 64
  br i1 %67, label %69, label %71

69:                                               ; preds = %54
  %70 = getelementptr i8, ptr %68, i32 2068
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 1536) #19, !srcloc !12
  br label %92

71:                                               ; preds = %54
  %72 = getelementptr i8, ptr %68, i32 4096
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %72) #19, !srcloc !11
  %74 = getelementptr i8, ptr %0, i32 1688
  %75 = load ptr, ptr %74, align 8
  %76 = getelementptr inbounds %struct.net_device, ptr %75, i32 0, i32 67
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %86, label %79

79:                                               ; preds = %71
  %80 = getelementptr inbounds %struct.dsa_port, ptr %77, i32 0, i32 3
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, null
  %83 = and i32 %73, -264241153
  %84 = or i32 %83, 16777216
  %85 = select i1 %82, i32 %73, i32 %84
  br label %86

86:                                               ; preds = %79, %71
  %87 = phi i32 [ %73, %71 ], [ %85, %79 ]
  %88 = and i32 %87, -4128769
  %89 = or i32 %88, 786432
  %90 = load ptr, ptr %2, align 64
  %91 = getelementptr i8, ptr %90, i32 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %91, i32 %89) #19, !srcloc !12
  br label %92

92:                                               ; preds = %86, %69
  %93 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 23
  %94 = load i64, ptr %93, align 16
  %95 = tail call i32 @bcm_sysport_set_features(ptr noundef %0, i64 noundef %94)
  %96 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 72
  %97 = load ptr, ptr %96, align 32
  %98 = load i8, ptr %97, align 1
  %99 = zext i8 %98 to i32
  %100 = shl nuw i32 %99, 24
  %101 = getelementptr i8, ptr %97, i32 1
  %102 = load i8, ptr %101, align 1
  %103 = zext i8 %102 to i32
  %104 = shl nuw nsw i32 %103, 16
  %105 = or i32 %104, %100
  %106 = getelementptr i8, ptr %97, i32 2
  %107 = load i8, ptr %106, align 1
  %108 = zext i8 %107 to i32
  %109 = shl nuw nsw i32 %108, 8
  %110 = or i32 %105, %109
  %111 = getelementptr i8, ptr %97, i32 3
  %112 = load i8, ptr %111, align 1
  %113 = zext i8 %112 to i32
  %114 = or i32 %110, %113
  %115 = getelementptr i8, ptr %97, i32 4
  %116 = load i8, ptr %115, align 1
  %117 = zext i8 %116 to i32
  %118 = shl nuw nsw i32 %117, 8
  %119 = getelementptr i8, ptr %97, i32 5
  %120 = load i8, ptr %119, align 1
  %121 = zext i8 %120 to i32
  %122 = or i32 %118, %121
  %123 = load i8, ptr %12, align 4, !range !10
  %124 = icmp eq i8 %123, 0
  %125 = load ptr, ptr %2, align 64
  br i1 %124, label %126, label %130

126:                                              ; preds = %92
  %127 = getelementptr i8, ptr %125, i32 2060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %127, i32 %114) #19, !srcloc !12
  %128 = load ptr, ptr %2, align 64
  %129 = getelementptr i8, ptr %128, i32 2064
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %129, i32 %122) #19, !srcloc !12
  br label %134

130:                                              ; preds = %92
  %131 = getelementptr i8, ptr %125, i32 4108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %131, i32 %114) #19, !srcloc !12
  %132 = load ptr, ptr %2, align 64
  %133 = getelementptr i8, ptr %132, i32 4104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %133, i32 %122) #19, !srcloc !12
  br label %134

134:                                              ; preds = %130, %126
  %135 = getelementptr i8, ptr %0, i32 1864
  %136 = load ptr, ptr %135, align 8
  %137 = getelementptr i8, ptr %0, i32 1868
  %138 = load i32, ptr %137, align 4
  %139 = tail call ptr @of_phy_connect(ptr noundef %0, ptr noundef %136, ptr noundef nonnull @bcm_sysport_adj_link, i32 noundef 0, i32 noundef %138) #19
  %140 = icmp eq ptr %139, null
  br i1 %140, label %141, label %142

141:                                              ; preds = %134
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.17) #20
  br label %294

142:                                              ; preds = %134
  %143 = getelementptr i8, ptr %0, i32 1880
  store i32 -1, ptr %143, align 8
  %144 = getelementptr i8, ptr %0, i32 1876
  store i32 -1, ptr %144, align 4
  %145 = getelementptr i8, ptr %0, i32 1872
  store i32 -1, ptr %145, align 16
  %146 = load ptr, ptr %2, align 64
  %147 = getelementptr i8, ptr %146, i32 528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %147, i32 -1) #19, !srcloc !12
  %148 = getelementptr i8, ptr %0, i32 1416
  store i32 -1, ptr %148, align 8
  %149 = load ptr, ptr %2, align 64
  %150 = getelementptr i8, ptr %149, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %150, i32 -1) #19, !srcloc !12
  %151 = load i8, ptr %12, align 4, !range !10
  %152 = icmp eq i8 %151, 0
  br i1 %152, label %153, label %159

153:                                              ; preds = %142
  %154 = load ptr, ptr %2, align 64
  %155 = getelementptr i8, ptr %154, i32 592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %155, i32 -1) #19, !srcloc !12
  %156 = getelementptr i8, ptr %0, i32 1424
  store i32 -1, ptr %156, align 16
  %157 = load ptr, ptr %2, align 64
  %158 = getelementptr i8, ptr %157, i32 584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %158, i32 -1) #19, !srcloc !12
  br label %159

159:                                              ; preds = %153, %142
  %160 = getelementptr i8, ptr %0, i32 1696
  %161 = load i32, ptr %160, align 32
  %162 = tail call i32 @request_threaded_irq(i32 noundef %161, ptr noundef nonnull @bcm_sysport_rx_isr, ptr noundef null, i32 noundef 0, ptr noundef %0, ptr noundef %0) #19
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %165, label %164

164:                                              ; preds = %159
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.18) #20
  br label %292

165:                                              ; preds = %159
  %166 = load i8, ptr %12, align 4, !range !10
  %167 = icmp eq i8 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %165
  %169 = getelementptr i8, ptr %0, i32 1700
  %170 = load i32, ptr %169, align 4
  %171 = tail call i32 @request_threaded_irq(i32 noundef %170, ptr noundef nonnull @bcm_sysport_tx_isr, ptr noundef null, i32 noundef 0, ptr noundef %0, ptr noundef %0) #19
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %174, label %173

173:                                              ; preds = %168
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.19) #20
  br label %288

174:                                              ; preds = %168, %165
  %175 = getelementptr i8, ptr %0, i32 1708
  store i32 0, ptr %175, align 4
  %176 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 88
  %177 = load i32, ptr %176, align 4
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %188, label %179

179:                                              ; preds = %184, %174
  %180 = phi i32 [ %185, %184 ], [ 0, %174 ]
  %181 = tail call fastcc i32 @bcm_sysport_init_tx_ring(ptr noundef %2, i32 noundef %180)
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %184, label %183

183:                                              ; preds = %179
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.20, i32 noundef %180) #20
  br label %272

184:                                              ; preds = %179
  %185 = add nuw i32 %180, 1
  %186 = load i32, ptr %176, align 4
  %187 = icmp ult i32 %185, %186
  br i1 %187, label %179, label %188

188:                                              ; preds = %184, %174
  %189 = load ptr, ptr %2, align 64
  %190 = getelementptr i8, ptr %189, i32 17924
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %190, i32 2) #19, !srcloc !12
  %191 = tail call fastcc i32 @bcm_sysport_init_rx_ring(ptr noundef %2)
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %194, label %193

193:                                              ; preds = %188
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.21) #20
  br label %270

194:                                              ; preds = %188
  %195 = load ptr, ptr %2, align 64
  %196 = getelementptr i8, ptr %195, i32 12288
  %197 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %196) #19, !srcloc !11
  %198 = or i32 %197, 1
  %199 = load ptr, ptr %2, align 64
  %200 = getelementptr i8, ptr %199, i32 12288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %200, i32 %198) #19, !srcloc !12
  br label %201

201:                                              ; preds = %212, %194
  %202 = phi i32 [ 1000, %194 ], [ %213, %212 ]
  %203 = load i8, ptr %12, align 4, !range !10
  %204 = icmp eq i8 %203, 0
  %205 = select i1 %204, i32 4100, i32 4104
  %206 = load ptr, ptr %2, align 64
  %207 = getelementptr i8, ptr %206, i32 8192
  %208 = getelementptr i8, ptr %207, i32 %205
  %209 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %208) #19, !srcloc !11
  %210 = and i32 %209, 1
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %218, label %212

212:                                              ; preds = %201
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #19
  %213 = add nsw i32 %202, -1
  %214 = icmp eq i32 %202, 0
  br i1 %214, label %215, label %201

215:                                              ; preds = %212
  %216 = getelementptr i8, ptr %0, i32 1688
  %217 = load ptr, ptr %216, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %217, ptr noundef nonnull @.str.30) #20
  br label %270

218:                                              ; preds = %201
  %219 = load ptr, ptr %2, align 64
  %220 = getelementptr i8, ptr %219, i32 17920
  %221 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %220) #19, !srcloc !11
  %222 = or i32 %221, 1
  %223 = load ptr, ptr %2, align 64
  %224 = getelementptr i8, ptr %223, i32 17920
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %224, i32 %222) #19, !srcloc !12
  br label %225

225:                                              ; preds = %232, %218
  %226 = phi i32 [ 1000, %218 ], [ %233, %232 ]
  %227 = load ptr, ptr %2, align 64
  %228 = getelementptr i8, ptr %227, i32 17924
  %229 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %228) #19, !srcloc !11
  %230 = and i32 %229, 1
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %235, label %232

232:                                              ; preds = %225
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #19
  %233 = add nsw i32 %226, -1
  %234 = icmp eq i32 %226, 0
  br i1 %234, label %263, label %225

235:                                              ; preds = %225
  %236 = load i8, ptr %12, align 4, !range !10
  %237 = icmp eq i8 %236, 0
  %238 = load ptr, ptr %2, align 64
  br i1 %237, label %239, label %245

239:                                              ; preds = %235
  %240 = getelementptr i8, ptr %238, i32 2056
  %241 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %240) #19, !srcloc !11
  %242 = or i32 %241, 3
  %243 = load ptr, ptr %2, align 64
  %244 = getelementptr i8, ptr %243, i32 2056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %244, i32 %242) #19, !srcloc !12
  br label %251

245:                                              ; preds = %235
  %246 = getelementptr i8, ptr %238, i32 4096
  %247 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %246) #19, !srcloc !11
  %248 = or i32 %247, 3
  %249 = load ptr, ptr %2, align 64
  %250 = getelementptr i8, ptr %249, i32 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %250, i32 %248) #19, !srcloc !12
  br label %251

251:                                              ; preds = %245, %239
  tail call fastcc void @bcm_sysport_netif_start(ptr noundef %0)
  %252 = load i32, ptr %176, align 4
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %297, label %254

254:                                              ; preds = %251
  %255 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  br label %256

256:                                              ; preds = %256, %254
  %257 = phi i32 [ 0, %254 ], [ %260, %256 ]
  %258 = load ptr, ptr %255, align 64
  %259 = getelementptr %struct.netdev_queue, ptr %258, i32 %257, i32 12
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %259) #19
  %260 = add nuw i32 %257, 1
  %261 = load i32, ptr %176, align 4
  %262 = icmp ult i32 %260, %261
  br i1 %262, label %256, label %297

263:                                              ; preds = %232
  %264 = getelementptr i8, ptr %0, i32 1688
  %265 = load ptr, ptr %264, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %265, ptr noundef nonnull @.str.31) #20
  %266 = load ptr, ptr %2, align 64
  %267 = getelementptr i8, ptr %266, i32 528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %267, i32 544) #19, !srcloc !12
  %268 = load i32, ptr %148, align 8
  %269 = or i32 %268, 544
  store i32 %269, ptr %148, align 8
  br label %270

270:                                              ; preds = %263, %215, %193
  %271 = phi i32 [ %191, %193 ], [ -110, %215 ], [ -110, %263 ]
  tail call fastcc void @bcm_sysport_fini_rx_ring(ptr noundef %2)
  br label %272

272:                                              ; preds = %270, %183
  %273 = phi i32 [ %181, %183 ], [ %271, %270 ]
  %274 = load i32, ptr %176, align 4
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %281, label %276

276:                                              ; preds = %276, %272
  %277 = phi i32 [ %278, %276 ], [ 0, %272 ]
  tail call fastcc void @bcm_sysport_fini_tx_ring(ptr noundef %2, i32 noundef %277)
  %278 = add nuw i32 %277, 1
  %279 = load i32, ptr %176, align 4
  %280 = icmp ult i32 %278, %279
  br i1 %280, label %276, label %281

281:                                              ; preds = %276, %272
  %282 = load i8, ptr %12, align 4, !range !10
  %283 = icmp eq i8 %282, 0
  br i1 %283, label %284, label %288

284:                                              ; preds = %281
  %285 = getelementptr i8, ptr %0, i32 1700
  %286 = load i32, ptr %285, align 4
  %287 = tail call ptr @free_irq(i32 noundef %286, ptr noundef %0) #19
  br label %288

288:                                              ; preds = %284, %281, %173
  %289 = phi i32 [ %273, %281 ], [ %273, %284 ], [ %171, %173 ]
  %290 = load i32, ptr %160, align 32
  %291 = tail call ptr @free_irq(i32 noundef %290, ptr noundef %0) #19
  br label %292

292:                                              ; preds = %288, %164
  %293 = phi i32 [ %162, %164 ], [ %289, %288 ]
  tail call void @phy_disconnect(ptr noundef nonnull %139) #19
  br label %294

294:                                              ; preds = %292, %141
  %295 = phi i32 [ %293, %292 ], [ -19, %141 ]
  %296 = load ptr, ptr %3, align 4
  tail call void @clk_disable(ptr noundef %296) #19
  tail call void @clk_unprepare(ptr noundef %296) #19
  br label %297

297:                                              ; preds = %294, %256, %251
  %298 = phi i32 [ %295, %294 ], [ 0, %251 ], [ 0, %256 ]
  ret i32 %298
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_sysport_stop(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 1408
  tail call fastcc void @bcm_sysport_netif_stop(ptr noundef %0)
  %3 = getelementptr i8, ptr %0, i32 1428
  %4 = load i8, ptr %3, align 4, !range !10
  %5 = icmp eq i8 %4, 0
  %6 = load ptr, ptr %2, align 64
  br i1 %5, label %7, label %13

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %6, i32 2056
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #19, !srcloc !11
  %10 = and i32 %9, -3
  %11 = load ptr, ptr %2, align 64
  %12 = getelementptr i8, ptr %11, i32 2056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #19, !srcloc !12
  br label %19

13:                                               ; preds = %1
  %14 = getelementptr i8, ptr %6, i32 4096
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #19, !srcloc !11
  %16 = and i32 %15, -3
  %17 = load ptr, ptr %2, align 64
  %18 = getelementptr i8, ptr %17, i32 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #19, !srcloc !12
  br label %19

19:                                               ; preds = %13, %7
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #19
  %20 = load ptr, ptr %2, align 64
  %21 = getelementptr i8, ptr %20, i32 17920
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #19, !srcloc !11
  %23 = and i32 %22, -2
  %24 = load ptr, ptr %2, align 64
  %25 = getelementptr i8, ptr %24, i32 17920
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #19, !srcloc !12
  br label %26

26:                                               ; preds = %33, %19
  %27 = phi i32 [ 1000, %19 ], [ %34, %33 ]
  %28 = load ptr, ptr %2, align 64
  %29 = getelementptr i8, ptr %28, i32 17924
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #19, !srcloc !11
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %26
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #19
  %34 = add nsw i32 %27, -1
  %35 = icmp eq i32 %27, 0
  br i1 %35, label %36, label %26

36:                                               ; preds = %33
  %37 = getelementptr i8, ptr %0, i32 1688
  %38 = load ptr, ptr %37, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %38, ptr noundef nonnull @.str.31) #20
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.34) #20
  br label %103

39:                                               ; preds = %26
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 3000, i32 noundef 2) #19
  %40 = load ptr, ptr %2, align 64
  %41 = getelementptr i8, ptr %40, i32 12288
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #19, !srcloc !11
  %43 = and i32 %42, -2
  %44 = load ptr, ptr %2, align 64
  %45 = getelementptr i8, ptr %44, i32 12288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %43) #19, !srcloc !12
  br label %46

46:                                               ; preds = %57, %39
  %47 = phi i32 [ 1000, %39 ], [ %58, %57 ]
  %48 = load i8, ptr %3, align 4, !range !10
  %49 = icmp eq i8 %48, 0
  %50 = select i1 %49, i32 4100, i32 4104
  %51 = load ptr, ptr %2, align 64
  %52 = getelementptr i8, ptr %51, i32 8192
  %53 = getelementptr i8, ptr %52, i32 %50
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #19, !srcloc !11
  %55 = and i32 %54, 1
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %46
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #19
  %58 = add nsw i32 %47, -1
  %59 = icmp eq i32 %47, 0
  br i1 %59, label %60, label %46

60:                                               ; preds = %57
  %61 = getelementptr i8, ptr %0, i32 1688
  %62 = load ptr, ptr %61, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %62, ptr noundef nonnull @.str.30) #20
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.35) #20
  br label %103

63:                                               ; preds = %46
  %64 = load i8, ptr %3, align 4, !range !10
  %65 = icmp eq i8 %64, 0
  %66 = load ptr, ptr %2, align 64
  br i1 %65, label %67, label %73

67:                                               ; preds = %63
  %68 = getelementptr i8, ptr %66, i32 2056
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %68) #19, !srcloc !11
  %70 = and i32 %69, -2
  %71 = load ptr, ptr %2, align 64
  %72 = getelementptr i8, ptr %71, i32 2056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 %70) #19, !srcloc !12
  br label %79

73:                                               ; preds = %63
  %74 = getelementptr i8, ptr %66, i32 4096
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %74) #19, !srcloc !11
  %76 = and i32 %75, -2
  %77 = load ptr, ptr %2, align 64
  %78 = getelementptr i8, ptr %77, i32 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 %76) #19, !srcloc !12
  br label %79

79:                                               ; preds = %73, %67
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #19
  %80 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 88
  %81 = load i32, ptr %80, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %83, %79
  %84 = phi i32 [ %85, %83 ], [ 0, %79 ]
  tail call fastcc void @bcm_sysport_fini_tx_ring(ptr noundef %2, i32 noundef %84)
  %85 = add nuw i32 %84, 1
  %86 = load i32, ptr %80, align 4
  %87 = icmp ult i32 %85, %86
  br i1 %87, label %83, label %88

88:                                               ; preds = %83, %79
  tail call fastcc void @bcm_sysport_fini_rx_ring(ptr noundef %2)
  %89 = getelementptr i8, ptr %0, i32 1696
  %90 = load i32, ptr %89, align 32
  %91 = tail call ptr @free_irq(i32 noundef %90, ptr noundef %0) #19
  %92 = load i8, ptr %3, align 4, !range !10
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %88
  %95 = getelementptr i8, ptr %0, i32 1700
  %96 = load i32, ptr %95, align 4
  %97 = tail call ptr @free_irq(i32 noundef %96, ptr noundef %0) #19
  br label %98

98:                                               ; preds = %94, %88
  %99 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %100 = load ptr, ptr %99, align 8
  tail call void @phy_disconnect(ptr noundef %100) #19
  %101 = getelementptr i8, ptr %0, i32 1900
  %102 = load ptr, ptr %101, align 4
  tail call void @clk_disable(ptr noundef %102) #19
  tail call void @clk_unprepare(ptr noundef %102) #19
  br label %103

103:                                              ; preds = %98, %60, %36
  %104 = phi i32 [ -110, %36 ], [ -110, %60 ], [ 0, %98 ]
  ret i32 %104
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_sysport_xmit(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr i8, ptr %1, i32 1408
  %4 = getelementptr i8, ptr %1, i32 1692
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %7 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 9
  %8 = load i16, ptr %7, align 4
  %9 = zext i16 %8 to i32
  %10 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 87
  %11 = load ptr, ptr %10, align 64
  %12 = getelementptr i8, ptr %1, i32 1712
  %13 = load ptr, ptr %12, align 16
  %14 = getelementptr %struct.bcm_sysport_tx_ring, ptr %13, i32 %9
  %15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %14) #19
  %16 = getelementptr %struct.bcm_sysport_tx_ring, ptr %13, i32 %9, i32 5
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21, !prof !9

19:                                               ; preds = %2
  %20 = getelementptr %struct.netdev_queue, ptr %11, i32 %9, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %20) #19
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.36, i32 noundef %9) #20
  br label %215

21:                                               ; preds = %2
  %22 = getelementptr i8, ptr %1, i32 1884
  %23 = load i8, ptr %22, align 4
  %24 = and i8 %23, 2
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %129, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %30 = load ptr, ptr %29, align 8
  %31 = ptrtoint ptr %28 to i32
  %32 = ptrtoint ptr %30 to i32
  %33 = sub i32 %31, %32
  %34 = icmp ult i32 %33, 8
  br i1 %34, label %35, label %52, !prof !9

35:                                               ; preds = %26
  %36 = tail call ptr @skb_realloc_headroom(ptr noundef %0, i32 noundef 8) #19
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %48

38:                                               ; preds = %35
  tail call void @__dev_kfree_skb_any(ptr noundef %0, i32 noundef 1) #19
  %39 = getelementptr i8, ptr %1, i32 2188
  %40 = load i32, ptr %39, align 4
  %41 = add i32 %40, 1
  store i32 %41, ptr %39, align 4
  %42 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 5
  %43 = load i32, ptr %42, align 4
  %44 = add i32 %43, 1
  store i32 %44, ptr %42, align 4
  %45 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 7
  %46 = load i32, ptr %45, align 4
  %47 = add i32 %46, 1
  store i32 %47, ptr %45, align 4
  br label %215

48:                                               ; preds = %35
  tail call void @__dev_kfree_skb_any(ptr noundef %0, i32 noundef 0) #19
  %49 = getelementptr i8, ptr %1, i32 2184
  %50 = load i32, ptr %49, align 4
  %51 = add i32 %50, 1
  store i32 %51, ptr %49, align 4
  br label %52

52:                                               ; preds = %48, %26
  %53 = phi ptr [ %36, %48 ], [ %0, %26 ]
  %54 = tail call ptr @skb_push(ptr noundef %53, i32 noundef 8) #19
  store i64 0, ptr %54, align 4
  %55 = getelementptr inbounds %struct.sk_buff, ptr %53, i32 0, i32 13, i32 0, i32 3
  %56 = load i16, ptr %55, align 2
  %57 = and i16 %56, 1
  %58 = icmp eq i16 %57, 0
  br i1 %58, label %68, label %59

59:                                               ; preds = %52
  %60 = getelementptr inbounds %struct.sk_buff, ptr %53, i32 0, i32 13, i32 0, i32 9
  %61 = load i16, ptr %60, align 2
  %62 = lshr i16 %61, 13
  %63 = zext i16 %62 to i32
  store i32 %63, ptr %54, align 4
  %64 = load i16, ptr %60, align 2
  %65 = shl i16 %64, 4
  %66 = or i16 %65, %62
  %67 = zext i16 %66 to i32
  store i32 %67, ptr %54, align 4
  br label %68

68:                                               ; preds = %59, %52
  %69 = getelementptr inbounds %struct.sk_buff, ptr %53, i32 0, i32 13
  %70 = load i16, ptr %69, align 8
  %71 = and i16 %70, 96
  %72 = icmp eq i16 %71, 96
  br i1 %72, label %73, label %127

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.sk_buff, ptr %53, i32 0, i32 13, i32 0, i32 16
  %75 = load i16, ptr %74, align 8
  switch i16 %75, label %127 [
    i16 8, label %76
    i16 -8826, label %84
  ]

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.sk_buff, ptr %53, i32 0, i32 16
  %78 = load ptr, ptr %77, align 8
  %79 = getelementptr inbounds %struct.sk_buff, ptr %53, i32 0, i32 13, i32 0, i32 18
  %80 = load i16, ptr %79, align 4
  %81 = zext i16 %80 to i32
  %82 = getelementptr i8, ptr %78, i32 %81
  %83 = getelementptr inbounds %struct.iphdr, ptr %82, i32 0, i32 6
  br label %92

84:                                               ; preds = %73
  %85 = getelementptr inbounds %struct.sk_buff, ptr %53, i32 0, i32 16
  %86 = load ptr, ptr %85, align 8
  %87 = getelementptr inbounds %struct.sk_buff, ptr %53, i32 0, i32 13, i32 0, i32 18
  %88 = load i16, ptr %87, align 4
  %89 = zext i16 %88 to i32
  %90 = getelementptr i8, ptr %86, i32 %89
  %91 = getelementptr inbounds %struct.ipv6hdr, ptr %90, i32 0, i32 3
  br label %92

92:                                               ; preds = %84, %76
  %93 = phi ptr [ %86, %84 ], [ %78, %76 ]
  %94 = phi ptr [ %91, %84 ], [ %83, %76 ]
  %95 = load i8, ptr %94, align 1
  switch i8 %95, label %124 [
    i8 17, label %96
    i8 6, label %96
  ]

96:                                               ; preds = %92, %92
  %97 = icmp eq i8 %95, 17
  %98 = load i16, ptr %55, align 2
  %99 = and i16 %98, 1
  %100 = icmp eq i16 %99, 0
  %101 = getelementptr inbounds %struct.sk_buff, ptr %53, i32 0, i32 13, i32 0, i32 4
  %102 = load i16, ptr %101, align 4
  %103 = zext i16 %102 to i32
  %104 = getelementptr inbounds %struct.sk_buff, ptr %53, i32 0, i32 17
  %105 = load ptr, ptr %104, align 4
  %106 = ptrtoint ptr %105 to i32
  %107 = ptrtoint ptr %93 to i32
  %108 = select i1 %100, i32 65528, i32 65532
  %109 = add i32 %103, %107
  %110 = sub i32 %109, %106
  %111 = add i32 %110, %108
  %112 = getelementptr inbounds %struct.anon.58, ptr %101, i32 0, i32 1
  %113 = load i16, ptr %112, align 2
  %114 = zext i16 %113 to i32
  %115 = add i32 %111, %114
  %116 = and i32 %115, 511
  %117 = shl i32 %111, 9
  %118 = and i32 %117, 33029632
  %119 = icmp eq i16 %75, 8
  %120 = select i1 %97, i1 %119, i1 false
  %121 = select i1 %120, i32 786432, i32 524288
  %122 = or i32 %118, %121
  %123 = or i32 %122, %116
  br label %124

124:                                              ; preds = %96, %92
  %125 = phi i32 [ %123, %96 ], [ 0, %92 ]
  %126 = getelementptr inbounds %struct.bcm_tsb, ptr %54, i32 0, i32 1
  store i32 %125, ptr %126, align 4
  br label %127

127:                                              ; preds = %124, %73, %68
  %128 = icmp eq ptr %53, null
  br i1 %128, label %215, label %129

129:                                              ; preds = %127, %21
  %130 = phi ptr [ %53, %127 ], [ %0, %21 ]
  %131 = getelementptr inbounds %struct.sk_buff, ptr %130, i32 0, i32 5
  %132 = load i32, ptr %131, align 8
  %133 = getelementptr inbounds %struct.sk_buff, ptr %130, i32 0, i32 17
  %134 = load ptr, ptr %133, align 4
  %135 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %134) #19
  %136 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %137 = xor i1 %136, true
  %138 = select i1 %135, i1 %137, i1 false
  br i1 %138, label %139, label %148, !prof !9

139:                                              ; preds = %129
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %140 = tail call ptr @dev_driver_string(ptr noundef %6) #19
  %141 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3, i32 3
  %142 = load ptr, ptr %141, align 4
  %143 = icmp eq ptr %142, null
  br i1 %143, label %144, label %146

144:                                              ; preds = %139
  %145 = load ptr, ptr %6, align 4
  br label %146

146:                                              ; preds = %144, %139
  %147 = phi ptr [ %145, %144 ], [ %142, %139 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.29, ptr noundef %140, ptr noundef %147) #19
  br label %148

148:                                              ; preds = %146, %129
  br i1 %135, label %158, label %149

149:                                              ; preds = %148
  %150 = load ptr, ptr @mem_map, align 4
  %151 = ptrtoint ptr %134 to i32
  %152 = add i32 %151, 1073741824
  %153 = lshr i32 %152, 12
  %154 = getelementptr %struct.page, ptr %150, i32 %153
  %155 = and i32 %151, 4095
  %156 = tail call i32 @dma_map_page_attrs(ptr noundef %6, ptr noundef %154, i32 noundef %155, i32 noundef %132, i32 noundef 1, i32 noundef 0) #19
  %157 = icmp eq i32 %156, -1
  br i1 %157, label %158, label %168

158:                                              ; preds = %149, %148
  %159 = getelementptr i8, ptr %1, i32 2180
  %160 = load i32, ptr %159, align 4
  %161 = add i32 %160, 1
  store i32 %161, ptr %159, align 4
  %162 = getelementptr i8, ptr %1, i32 2192
  %163 = load i32, ptr %162, align 16
  %164 = and i32 %163, 128
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %215, label %166

166:                                              ; preds = %158
  %167 = load ptr, ptr %133, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.37, ptr noundef %167, i32 noundef %132) #20
  br label %215

168:                                              ; preds = %149
  %169 = getelementptr %struct.bcm_sysport_tx_ring, ptr %13, i32 %9, i32 9
  %170 = load ptr, ptr %169, align 4
  %171 = getelementptr %struct.bcm_sysport_tx_ring, ptr %13, i32 %9, i32 6
  %172 = load i32, ptr %171, align 8
  %173 = getelementptr %struct.bcm_sysport_cb, ptr %170, i32 %172
  store ptr %130, ptr %173, align 4
  %174 = getelementptr %struct.bcm_sysport_cb, ptr %170, i32 %172, i32 2
  store i32 %156, ptr %174, align 4
  %175 = getelementptr %struct.bcm_sysport_cb, ptr %170, i32 %172, i32 3
  store i32 %132, ptr %175, align 4
  %176 = shl i32 %132, 18
  %177 = getelementptr inbounds %struct.sk_buff, ptr %130, i32 0, i32 13
  %178 = load i16, ptr %177, align 8
  %179 = and i16 %178, 96
  %180 = icmp eq i16 %179, 96
  %181 = select i1 %180, i32 231424, i32 198656
  %182 = or i32 %181, %176
  %183 = getelementptr inbounds %struct.sk_buff, ptr %130, i32 0, i32 13, i32 0, i32 3
  %184 = load i16, ptr %183, align 2
  %185 = and i16 %184, 1
  %186 = icmp eq i16 %185, 0
  %187 = or i32 %182, 768
  %188 = select i1 %186, i32 %182, i32 %187
  %189 = load i32, ptr %171, align 8
  %190 = add i32 %189, 1
  %191 = getelementptr %struct.bcm_sysport_tx_ring, ptr %13, i32 %9, i32 3
  %192 = load i32, ptr %191, align 4
  %193 = icmp eq i32 %190, %192
  %194 = select i1 %193, i32 0, i32 %190
  store i32 %194, ptr %171, align 8
  %195 = load i32, ptr %16, align 4
  %196 = add i32 %195, -1
  store i32 %196, ptr %16, align 4
  %197 = getelementptr i8, ptr %1, i32 1708
  %198 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %197) #19
  %199 = getelementptr %struct.bcm_sysport_tx_ring, ptr %13, i32 %9, i32 2
  %200 = load i32, ptr %199, align 8
  %201 = shl i32 %200, 3
  %202 = load ptr, ptr %3, align 64
  %203 = getelementptr i8, ptr %202, i32 16384
  %204 = getelementptr i8, ptr %203, i32 %201
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %204, i32 %188) #19, !srcloc !12
  %205 = load i32, ptr %199, align 8
  %206 = shl i32 %205, 3
  %207 = or i32 %206, 4
  %208 = load ptr, ptr %3, align 64
  %209 = getelementptr i8, ptr %208, i32 16384
  %210 = getelementptr i8, ptr %209, i32 %207
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %210, i32 %156) #19, !srcloc !12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %197, i32 noundef %198) #19
  %211 = load i32, ptr %16, align 4
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %215

213:                                              ; preds = %168
  %214 = getelementptr %struct.netdev_queue, ptr %11, i32 %9, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %214) #19
  br label %215

215:                                              ; preds = %213, %168, %166, %158, %127, %38, %19
  %216 = phi i32 [ 16, %19 ], [ 0, %127 ], [ 0, %166 ], [ 0, %158 ], [ 0, %213 ], [ 0, %168 ], [ 0, %38 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %14, i32 noundef %15) #19
  ret i32 %216
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i16 @bcm_sysport_select_queue(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 1408
  %5 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 9
  %6 = load i16, ptr %5, align 4
  %7 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 67
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.dsa_port, ptr %8, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %10, %3
  %15 = tail call zeroext i16 @netdev_pick_tx(ptr noundef %0, ptr noundef %1, ptr noundef null) #19
  br label %33

16:                                               ; preds = %10
  %17 = zext i16 %6 to i32
  %18 = and i32 %17, 255
  %19 = lshr i32 %17, 8
  %20 = getelementptr i8, ptr %0, i32 2280
  %21 = load i32, ptr %20, align 8
  %22 = mul i32 %21, %19
  %23 = add i32 %22, %18
  %24 = getelementptr %struct.bcm_sysport_priv, ptr %4, i32 0, i32 44, i32 %23
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %29, !prof !9

27:                                               ; preds = %16
  %28 = tail call zeroext i16 @netdev_pick_tx(ptr noundef %0, ptr noundef %1, ptr noundef null) #19
  br label %33

29:                                               ; preds = %16
  %30 = getelementptr inbounds %struct.bcm_sysport_tx_ring, ptr %25, i32 0, i32 2
  %31 = load i32, ptr %30, align 8
  %32 = trunc i32 %31 to i16
  br label %33

33:                                               ; preds = %29, %27, %14
  %34 = phi i16 [ %28, %27 ], [ %32, %29 ], [ %15, %14 ]
  ret i16 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm_sysport_set_rx_mode(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 1428
  %3 = load i8, ptr %2, align 4, !range !10
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %18

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %0, i32 1408
  %7 = load ptr, ptr %6, align 64
  %8 = getelementptr i8, ptr %7, i32 2056
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #19, !srcloc !11
  %10 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 14
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %9, -17
  %13 = lshr i32 %11, 4
  %14 = and i32 %13, 16
  %15 = or i32 %14, %12
  %16 = load ptr, ptr %6, align 64
  %17 = getelementptr i8, ptr %16, i32 2056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #19, !srcloc !12
  br label %18

18:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_sysport_change_mac(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 1408
  %4 = getelementptr inbounds %struct.sockaddr, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %59

8:                                                ; preds = %2
  %9 = getelementptr %struct.sockaddr, ptr %1, i32 0, i32 1, i32 4
  %10 = load i16, ptr %9, align 2
  %11 = zext i16 %10 to i32
  %12 = or i32 %5, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %59, label %14

14:                                               ; preds = %8
  tail call void @dev_addr_mod(ptr noundef %0, i32 noundef 0, ptr noundef %4, i32 noundef 6) #19
  %15 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %59, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 72
  %21 = load ptr, ptr %20, align 32
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i32
  %24 = shl nuw i32 %23, 24
  %25 = getelementptr i8, ptr %21, i32 1
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i32
  %28 = shl nuw nsw i32 %27, 16
  %29 = or i32 %28, %24
  %30 = getelementptr i8, ptr %21, i32 2
  %31 = load i8, ptr %30, align 1
  %32 = zext i8 %31 to i32
  %33 = shl nuw nsw i32 %32, 8
  %34 = or i32 %29, %33
  %35 = getelementptr i8, ptr %21, i32 3
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  %38 = or i32 %34, %37
  %39 = getelementptr i8, ptr %21, i32 4
  %40 = load i8, ptr %39, align 1
  %41 = zext i8 %40 to i32
  %42 = shl nuw nsw i32 %41, 8
  %43 = getelementptr i8, ptr %21, i32 5
  %44 = load i8, ptr %43, align 1
  %45 = zext i8 %44 to i32
  %46 = or i32 %42, %45
  %47 = getelementptr i8, ptr %0, i32 1428
  %48 = load i8, ptr %47, align 4, !range !10
  %49 = icmp eq i8 %48, 0
  %50 = load ptr, ptr %3, align 64
  br i1 %49, label %51, label %55

51:                                               ; preds = %19
  %52 = getelementptr i8, ptr %50, i32 2060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %38) #19, !srcloc !12
  %53 = load ptr, ptr %3, align 64
  %54 = getelementptr i8, ptr %53, i32 2064
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %46) #19, !srcloc !12
  br label %59

55:                                               ; preds = %19
  %56 = getelementptr i8, ptr %50, i32 4108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %38) #19, !srcloc !12
  %57 = load ptr, ptr %3, align 64
  %58 = getelementptr i8, ptr %57, i32 4104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 %46) #19, !srcloc !12
  br label %59

59:                                               ; preds = %55, %51, %14, %8, %2
  %60 = phi i32 [ -22, %8 ], [ 0, %14 ], [ 0, %51 ], [ 0, %55 ], [ -22, %2 ]
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm_sysport_tx_timeout(ptr noundef %0, i32 noundef %1) #2 {
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %0, ptr noundef nonnull @.str.38) #20
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  %4 = load ptr, ptr %3, align 64
  %5 = load volatile i32, ptr @jiffies, align 64
  %6 = getelementptr inbounds %struct.netdev_queue, ptr %4, i32 0, i32 11
  %7 = load volatile i32, ptr %6, align 8
  %8 = icmp eq i32 %7, %5
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store volatile i32 %5, ptr %6, align 8
  br label %10

10:                                               ; preds = %9, %2
  %11 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 36, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, 1
  store i32 %13, ptr %11, align 4
  %14 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 88
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %17, %10
  %18 = phi i32 [ %21, %17 ], [ 0, %10 ]
  %19 = load ptr, ptr %3, align 64
  %20 = getelementptr %struct.netdev_queue, ptr %19, i32 %18
  tail call void @netif_tx_wake_queue(ptr noundef %20) #19
  %21 = add nuw i32 %18, 1
  %22 = load i32, ptr %14, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %17, label %24

24:                                               ; preds = %17, %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm_sysport_get_stats64(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 2232
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 36
  tail call void @netdev_stats_to_stats64(ptr noundef %1, ptr noundef %4) #19
  %5 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %1, i32 0, i32 3
  %6 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %1, i32 0, i32 1
  %7 = getelementptr i8, ptr %0, i32 1688
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 88
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %46, label %12

12:                                               ; preds = %2
  %13 = getelementptr i8, ptr %0, i32 1712
  %14 = getelementptr i8, ptr %0, i32 2264
  br label %15

15:                                               ; preds = %34, %12
  %16 = phi i32 [ 0, %12 ], [ %41, %34 ]
  %17 = load ptr, ptr %13, align 16
  %18 = getelementptr %struct.bcm_sysport_tx_ring, ptr %17, i32 %16, i32 12
  %19 = getelementptr %struct.bcm_sysport_tx_ring, ptr %17, i32 %16, i32 11
  br label %20

20:                                               ; preds = %28, %15
  %21 = load volatile i32, ptr %14, align 4
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %24, %20
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !16
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #19, !srcloc !17
  %25 = load volatile i32, ptr %14, align 4
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %24

28:                                               ; preds = %24, %20
  %29 = phi i32 [ %21, %20 ], [ %25, %24 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !18
  %30 = load i32, ptr %18, align 8
  %31 = load i32, ptr %19, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !19
  %32 = load volatile i32, ptr %14, align 4
  %33 = icmp eq i32 %32, %29
  br i1 %33, label %34, label %20

34:                                               ; preds = %28
  %35 = zext i32 %31 to i64
  %36 = zext i32 %30 to i64
  %37 = load i64, ptr %5, align 8
  %38 = add i64 %37, %36
  store i64 %38, ptr %5, align 8
  %39 = load i64, ptr %6, align 8
  %40 = add i64 %39, %35
  store i64 %40, ptr %6, align 8
  %41 = add nuw i32 %16, 1
  %42 = load ptr, ptr %7, align 8
  %43 = getelementptr inbounds %struct.net_device, ptr %42, i32 0, i32 88
  %44 = load i32, ptr %43, align 4
  %45 = icmp ult i32 %41, %44
  br i1 %45, label %15, label %46

46:                                               ; preds = %34, %2
  %47 = getelementptr i8, ptr %0, i32 2264
  %48 = getelementptr i8, ptr %0, i32 2240
  %49 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %1, i32 0, i32 2
  br label %50

50:                                               ; preds = %58, %46
  %51 = load volatile i32, ptr %47, align 4
  %52 = and i32 %51, 1
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %54, %50
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !16
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #19, !srcloc !17
  %55 = load volatile i32, ptr %47, align 4
  %56 = and i32 %55, 1
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %54

58:                                               ; preds = %54, %50
  %59 = phi i32 [ %51, %50 ], [ %55, %54 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !18
  %60 = load i64, ptr %3, align 8
  store i64 %60, ptr %1, align 8
  %61 = load i64, ptr %48, align 8
  store i64 %61, ptr %49, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !19
  %62 = load volatile i32, ptr %47, align 4
  %63 = icmp eq i32 %62, %59
  br i1 %63, label %64, label %50

64:                                               ; preds = %58
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_sysport_set_features(ptr nocapture noundef %0, i64 noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 1408
  %4 = getelementptr i8, ptr %0, i32 1900
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_prepare(ptr noundef %5) #19
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %121

8:                                                ; preds = %2
  %9 = tail call i32 @clk_enable(ptr noundef %5) #19
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %118

11:                                               ; preds = %8
  %12 = getelementptr i8, ptr %0, i32 1428
  %13 = load i8, ptr %12, align 4, !range !10
  %14 = icmp eq i8 %13, 0
  %15 = load ptr, ptr %3, align 64
  br i1 %14, label %16, label %26

16:                                               ; preds = %11
  %17 = getelementptr i8, ptr %15, i32 2056
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #19, !srcloc !11
  %19 = getelementptr i8, ptr %0, i32 1884
  %20 = trunc i32 %18 to i8
  %21 = load i8, ptr %19, align 4
  %22 = lshr i8 %20, 4
  %23 = and i8 %22, 4
  %24 = and i8 %21, -5
  %25 = or i8 %23, %24
  br label %37

26:                                               ; preds = %11
  %27 = getelementptr i8, ptr %15, i32 4096
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #19, !srcloc !11
  %29 = getelementptr i8, ptr %0, i32 1884
  %30 = trunc i32 %28 to i8
  %31 = load i8, ptr %29, align 4
  %32 = lshr i8 %30, 4
  %33 = and i8 %32, 4
  %34 = and i8 %31, -5
  %35 = or i8 %33, %34
  %36 = xor i8 %35, 4
  br label %37

37:                                               ; preds = %26, %16
  %38 = phi i8 [ %36, %26 ], [ %25, %16 ]
  %39 = getelementptr i8, ptr %0, i32 1884
  %40 = lshr i64 %1, 40
  %41 = trunc i64 %40 to i8
  %42 = and i8 %41, 1
  %43 = and i8 %38, -2
  %44 = or i8 %43, %42
  store i8 %44, ptr %39, align 4
  %45 = load ptr, ptr %3, align 64
  %46 = getelementptr i8, ptr %45, i32 768
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #19, !srcloc !11
  %48 = load i8, ptr %39, align 4
  %49 = and i8 %48, 1
  %50 = and i32 %47, -524290
  %51 = zext i8 %49 to i32
  %52 = or i32 %50, %51
  %53 = and i8 %48, 5
  %54 = icmp eq i8 %53, 5
  %55 = or i32 %52, 2
  %56 = and i32 %52, -524291
  %57 = select i1 %54, i32 %55, i32 %56
  %58 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 67
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %37
  %62 = and i32 %57, -524297
  br label %70

63:                                               ; preds = %37
  %64 = getelementptr inbounds %struct.dsa_port, ptr %59, i32 0, i32 3
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  %67 = or i32 %57, 8
  %68 = and i32 %57, -524297
  %69 = select i1 %66, i32 %68, i32 %67
  br label %70

70:                                               ; preds = %63, %61
  %71 = phi i32 [ %62, %61 ], [ %69, %63 ]
  %72 = load ptr, ptr %3, align 64
  %73 = getelementptr i8, ptr %72, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 %71) #19, !srcloc !12
  %74 = and i64 %1, 146
  %75 = icmp eq i64 %74, 0
  %76 = load i8, ptr %39, align 4
  %77 = select i1 %75, i8 0, i8 2
  %78 = and i8 %76, -3
  %79 = or i8 %78, %77
  store i8 %79, ptr %39, align 4
  %80 = load ptr, ptr %3, align 64
  %81 = getelementptr i8, ptr %80, i32 17920
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %81) #19, !srcloc !11
  %83 = load i8, ptr %39, align 4
  %84 = and i8 %83, 2
  %85 = and i32 %82, -3
  %86 = zext i8 %84 to i32
  %87 = or i32 %85, %86
  %88 = load ptr, ptr %58, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %100, label %90

90:                                               ; preds = %70
  %91 = getelementptr inbounds %struct.dsa_port, ptr %88, i32 0, i32 3
  %92 = load ptr, ptr %91, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %100, label %94

94:                                               ; preds = %90
  %95 = load i8, ptr %12, align 4, !range !10
  %96 = add nuw nsw i8 %95, 15
  %97 = zext i8 %96 to i32
  %98 = shl nuw nsw i32 1, %97
  %99 = or i32 %98, %87
  br label %107

100:                                              ; preds = %90, %70
  %101 = load i8, ptr %12, align 4, !range !10
  %102 = add nuw nsw i8 %101, 15
  %103 = zext i8 %102 to i32
  %104 = shl nuw nsw i32 1, %103
  %105 = xor i32 %104, -1
  %106 = and i32 %87, %105
  br label %107

107:                                              ; preds = %100, %94
  %108 = phi i32 [ %99, %94 ], [ %106, %100 ]
  %109 = load ptr, ptr %3, align 64
  %110 = getelementptr i8, ptr %109, i32 17920
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %110, i32 %108) #19, !srcloc !12
  %111 = and i64 %1, 128
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %107
  %114 = load ptr, ptr %3, align 64
  %115 = getelementptr i8, ptr %114, i32 17940
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %115, i32 33024) #19, !srcloc !12
  br label %116

116:                                              ; preds = %113, %107
  %117 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %117) #19
  br label %118

118:                                              ; preds = %116, %8
  %119 = phi ptr [ %117, %116 ], [ %5, %8 ]
  %120 = phi i32 [ 0, %116 ], [ %9, %8 ]
  tail call void @clk_unprepare(ptr noundef %119) #19
  br label %121

121:                                              ; preds = %118, %2
  %122 = phi i32 [ %6, %2 ], [ %120, %118 ]
  ret i32 %122
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_connect(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm_sysport_adj_link(ptr nocapture noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 1408
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %0, i32 1876
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.phy_device, ptr %4, i32 0, i32 4
  %8 = load i16, ptr %7, align 8
  %9 = lshr i16 %8, 13
  %10 = and i16 %9, 1
  %11 = zext i16 %10 to i32
  %12 = icmp eq i32 %6, %11
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 %11, ptr %5, align 4
  br label %14

14:                                               ; preds = %13, %1
  %15 = phi i32 [ 1, %13 ], [ 0, %1 ]
  %16 = getelementptr i8, ptr %0, i32 1880
  %17 = load i32, ptr %16, align 8
  %18 = getelementptr inbounds %struct.phy_device, ptr %4, i32 0, i32 9
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %14
  %22 = getelementptr i8, ptr %0, i32 1428
  %23 = load i8, ptr %22, align 4, !range !10
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %29, label %70

25:                                               ; preds = %14
  store i32 %19, ptr %16, align 8
  %26 = getelementptr i8, ptr %0, i32 1428
  %27 = load i8, ptr %26, align 4, !range !10
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %71

29:                                               ; preds = %25, %21
  %30 = phi i32 [ 1, %25 ], [ %15, %21 ]
  %31 = getelementptr inbounds %struct.phy_device, ptr %4, i32 0, i32 8
  %32 = load i32, ptr %31, align 8
  switch i32 %32, label %36 [
    i32 2500, label %33
    i32 1000, label %34
    i32 100, label %35
  ]

33:                                               ; preds = %29
  br label %36

34:                                               ; preds = %29
  br label %36

35:                                               ; preds = %29
  br label %36

36:                                               ; preds = %35, %34, %33, %29
  %37 = phi i32 [ 4, %35 ], [ 8, %34 ], [ 12, %33 ], [ 0, %29 ]
  %38 = load i32, ptr %18, align 4
  %39 = icmp eq i32 %38, 0
  %40 = or i32 %37, 1024
  %41 = select i1 %39, i32 %40, i32 %37
  %42 = getelementptr i8, ptr %0, i32 1872
  %43 = load i32, ptr %42, align 16
  %44 = getelementptr inbounds %struct.phy_device, ptr %4, i32 0, i32 11
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %52, label %47

47:                                               ; preds = %36
  store i32 %45, ptr %42, align 16
  %48 = load i32, ptr %44, align 4
  %49 = icmp eq i32 %48, 0
  %50 = or i32 %41, 268435712
  %51 = select i1 %49, i32 %50, i32 %41
  br label %57

52:                                               ; preds = %36
  %53 = icmp eq i32 %43, 0
  %54 = or i32 %41, 268435712
  %55 = select i1 %53, i32 %54, i32 %41
  %56 = icmp eq i32 %30, 0
  br i1 %56, label %72, label %57

57:                                               ; preds = %52, %47
  %58 = phi i32 [ %51, %47 ], [ %55, %52 ]
  %59 = load i16, ptr %7, align 8
  %60 = and i16 %59, 8192
  %61 = icmp eq i16 %60, 0
  br i1 %61, label %71, label %62

62:                                               ; preds = %57
  %63 = load ptr, ptr %2, align 64
  %64 = getelementptr i8, ptr %63, i32 2056
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #19, !srcloc !11
  %66 = and i32 %65, -268436749
  %67 = or i32 %66, %58
  %68 = load ptr, ptr %2, align 64
  %69 = getelementptr i8, ptr %68, i32 2056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %67) #19, !srcloc !12
  br label %71

70:                                               ; preds = %21
  br i1 %12, label %72, label %71

71:                                               ; preds = %70, %62, %57, %25
  tail call void @phy_print_status(ptr noundef %4) #19
  br label %72

72:                                               ; preds = %71, %70, %52
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_sysport_rx_isr(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr i8, ptr %1, i32 1408
  %4 = load ptr, ptr %3, align 64
  %5 = getelementptr i8, ptr %4, i32 512
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #19, !srcloc !11
  %7 = load ptr, ptr %3, align 64
  %8 = getelementptr i8, ptr %7, i32 524
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #19, !srcloc !11
  %10 = xor i32 %9, -1
  %11 = and i32 %6, %10
  %12 = getelementptr i8, ptr %1, i32 1412
  store i32 %11, ptr %12, align 4
  %13 = load ptr, ptr %3, align 64
  %14 = getelementptr i8, ptr %13, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %11) #19, !srcloc !12
  %15 = load i32, ptr %12, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20, !prof !9

17:                                               ; preds = %2
  %18 = getelementptr i8, ptr %1, i32 1688
  %19 = load ptr, ptr %18, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %19, ptr noundef nonnull @.str.22) #20
  br label %98

20:                                               ; preds = %2
  %21 = and i32 %15, 32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %35, label %23

23:                                               ; preds = %20
  %24 = getelementptr i8, ptr %1, i32 1738
  %25 = load i16, ptr %24, align 2
  %26 = add i16 %25, 1
  store i16 %26, ptr %24, align 2
  %27 = getelementptr i8, ptr %1, i32 1472
  %28 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %27) #19
  br i1 %28, label %29, label %35, !prof !13

29:                                               ; preds = %23
  %30 = load ptr, ptr %3, align 64
  %31 = getelementptr i8, ptr %30, i32 528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 32) #19, !srcloc !12
  %32 = getelementptr i8, ptr %1, i32 1416
  %33 = load i32, ptr %32, align 8
  %34 = or i32 %33, 32
  store i32 %34, ptr %32, align 8
  tail call void @__napi_schedule_irqoff(ptr noundef %27) #19
  br label %35

35:                                               ; preds = %29, %23, %20
  %36 = load i32, ptr %12, align 4
  %37 = and i32 %36, 512
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %67, label %39

39:                                               ; preds = %35
  %40 = getelementptr i8, ptr %1, i32 1688
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr inbounds %struct.net_device, ptr %41, i32 0, i32 88
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %67, label %45

45:                                               ; preds = %39
  %46 = getelementptr i8, ptr %1, i32 1712
  br label %47

47:                                               ; preds = %61, %45
  %48 = phi ptr [ %41, %45 ], [ %63, %61 ]
  %49 = phi i32 [ 0, %45 ], [ %62, %61 ]
  %50 = load ptr, ptr %46, align 16
  %51 = getelementptr %struct.bcm_sysport_tx_ring, ptr %50, i32 %49
  %52 = getelementptr %struct.bcm_sysport_tx_ring, ptr %50, i32 %49, i32 2
  %53 = load i32, ptr %52, align 8
  %54 = getelementptr inbounds %struct.net_device, ptr %48, i32 0, i32 87
  %55 = load ptr, ptr %54, align 64
  %56 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %51) #19
  %57 = tail call fastcc i32 @__bcm_sysport_tx_reclaim(ptr noundef %3, ptr noundef %51) #19
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %47
  %60 = getelementptr %struct.netdev_queue, ptr %55, i32 %53
  tail call void @netif_tx_wake_queue(ptr noundef %60) #19
  br label %61

61:                                               ; preds = %59, %47
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %51, i32 noundef %56) #19
  %62 = add nuw i32 %49, 1
  %63 = load ptr, ptr %40, align 8
  %64 = getelementptr inbounds %struct.net_device, ptr %63, i32 0, i32 88
  %65 = load i32, ptr %64, align 4
  %66 = icmp ult i32 %62, %65
  br i1 %66, label %47, label %67

67:                                               ; preds = %61, %39, %35
  %68 = getelementptr i8, ptr %1, i32 1428
  %69 = load i8, ptr %68, align 4, !range !10
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %98, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 88
  %73 = load i32, ptr %72, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %98, label %75

75:                                               ; preds = %71
  %76 = getelementptr i8, ptr %1, i32 1712
  %77 = getelementptr i8, ptr %1, i32 1416
  br label %78

78:                                               ; preds = %94, %75
  %79 = phi i32 [ 0, %75 ], [ %95, %94 ]
  %80 = add i32 %79, 12
  %81 = shl nuw i32 1, %80
  %82 = load i32, ptr %12, align 4
  %83 = and i32 %82, %81
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %94, label %85

85:                                               ; preds = %78
  %86 = load ptr, ptr %76, align 16
  %87 = getelementptr %struct.bcm_sysport_tx_ring, ptr %86, i32 %79, i32 1
  %88 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %87) #19
  br i1 %88, label %89, label %94, !prof !13

89:                                               ; preds = %85
  %90 = load ptr, ptr %3, align 64
  %91 = getelementptr i8, ptr %90, i32 528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %91, i32 %81) #19, !srcloc !12
  %92 = load i32, ptr %77, align 8
  %93 = or i32 %92, %81
  store i32 %93, ptr %77, align 8
  tail call void @__napi_schedule(ptr noundef %87) #19
  br label %94

94:                                               ; preds = %89, %85, %78
  %95 = add nuw i32 %79, 1
  %96 = load i32, ptr %72, align 4
  %97 = icmp ult i32 %95, %96
  br i1 %97, label %78, label %98

98:                                               ; preds = %94, %71, %67, %17
  %99 = phi i32 [ 0, %17 ], [ 1, %67 ], [ 1, %71 ], [ 1, %94 ]
  ret i32 %99
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_sysport_tx_isr(i32 noundef %0, ptr nocapture noundef %1) #2 {
  %3 = getelementptr i8, ptr %1, i32 1408
  %4 = load ptr, ptr %3, align 64
  %5 = getelementptr i8, ptr %4, i32 576
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #19, !srcloc !11
  %7 = load ptr, ptr %3, align 64
  %8 = getelementptr i8, ptr %7, i32 588
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #19, !srcloc !11
  %10 = xor i32 %9, -1
  %11 = and i32 %6, %10
  %12 = getelementptr i8, ptr %1, i32 1420
  store i32 %11, ptr %12, align 4
  %13 = load ptr, ptr %3, align 64
  %14 = getelementptr i8, ptr %13, i32 584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 -1) #19, !srcloc !12
  %15 = load i32, ptr %12, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %24, label %17, !prof !9

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 88
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %48, label %21

21:                                               ; preds = %17
  %22 = getelementptr i8, ptr %1, i32 1712
  %23 = getelementptr i8, ptr %1, i32 1424
  br label %27

24:                                               ; preds = %2
  %25 = getelementptr i8, ptr %1, i32 1688
  %26 = load ptr, ptr %25, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %26, ptr noundef nonnull @.str.23) #20
  br label %48

27:                                               ; preds = %46, %21
  %28 = phi i32 [ %15, %21 ], [ %47, %46 ]
  %29 = phi i32 [ 0, %21 ], [ %43, %46 ]
  %30 = shl nuw i32 1, %29
  %31 = and i32 %28, %30
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %27
  %34 = load ptr, ptr %22, align 16
  %35 = getelementptr %struct.bcm_sysport_tx_ring, ptr %34, i32 %29, i32 1
  %36 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %35) #19
  br i1 %36, label %37, label %42, !prof !13

37:                                               ; preds = %33
  %38 = load ptr, ptr %3, align 64
  %39 = getelementptr i8, ptr %38, i32 592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %30) #19, !srcloc !12
  %40 = load i32, ptr %23, align 16
  %41 = or i32 %40, %30
  store i32 %41, ptr %23, align 16
  tail call void @__napi_schedule_irqoff(ptr noundef %35) #19
  br label %42

42:                                               ; preds = %37, %33, %27
  %43 = add nuw i32 %29, 1
  %44 = load i32, ptr %18, align 4
  %45 = icmp ult i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32, ptr %12, align 4
  br label %27

48:                                               ; preds = %42, %24, %17
  %49 = phi i32 [ 0, %24 ], [ 1, %17 ], [ 1, %42 ]
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @bcm_sysport_init_tx_ring(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.bcm_sysport_priv, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 16
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 4096) #21
  %7 = getelementptr %struct.bcm_sysport_tx_ring, ptr %4, i32 %1, i32 9
  store ptr %6, ptr %7, align 4
  %8 = icmp eq ptr %6, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.bcm_sysport_priv, ptr %0, i32 0, i32 37
  %11 = load i32, ptr %10, align 16
  %12 = and i32 %11, 8192
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %116, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.bcm_sysport_priv, ptr %0, i32 0, i32 9
  %16 = load ptr, ptr %15, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %16, ptr noundef nonnull @.str.24) #20
  br label %116

17:                                               ; preds = %2
  %18 = getelementptr %struct.bcm_sysport_tx_ring, ptr %4, i32 %1
  store i32 0, ptr %18, align 8
  %19 = getelementptr %struct.bcm_sysport_tx_ring, ptr %4, i32 %1, i32 10
  store ptr %0, ptr %19, align 8
  %20 = getelementptr inbounds %struct.bcm_sysport_priv, ptr %0, i32 0, i32 9
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr %struct.bcm_sysport_tx_ring, ptr %4, i32 %1, i32 1
  %23 = getelementptr %struct.bcm_sysport_tx_ring, ptr %4, i32 %1, i32 1, i32 1
  tail call void @_set_bit(i32 noundef 5, ptr noundef %23) #19
  tail call void @netif_napi_add(ptr noundef %21, ptr noundef %22, ptr noundef nonnull @bcm_sysport_tx_poll, i32 noundef 64) #19
  %24 = getelementptr %struct.bcm_sysport_tx_ring, ptr %4, i32 %1, i32 2
  store i32 %1, ptr %24, align 8
  %25 = getelementptr %struct.bcm_sysport_tx_ring, ptr %4, i32 %1, i32 3
  store i32 256, ptr %25, align 4
  %26 = getelementptr %struct.bcm_sysport_tx_ring, ptr %4, i32 %1, i32 8
  store i32 0, ptr %26, align 8
  %27 = getelementptr %struct.bcm_sysport_tx_ring, ptr %4, i32 %1, i32 4
  store i32 256, ptr %27, align 8
  %28 = getelementptr %struct.bcm_sysport_tx_ring, ptr %4, i32 %1, i32 5
  store i32 256, ptr %28, align 4
  %29 = getelementptr %struct.bcm_sysport_tx_ring, ptr %4, i32 %1, i32 6
  store i32 0, ptr %29, align 8
  %30 = mul i32 %1, 28
  %31 = add i32 %30, 640
  %32 = load ptr, ptr %0, align 64
  %33 = getelementptr i8, ptr %32, i32 16384
  %34 = getelementptr i8, ptr %33, i32 %31
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 33554432) #19, !srcloc !12
  %35 = add i32 %30, 644
  %36 = load ptr, ptr %0, align 64
  %37 = getelementptr i8, ptr %36, i32 16384
  %38 = getelementptr i8, ptr %37, i32 %35
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 0) #19, !srcloc !12
  %39 = add i32 %30, 652
  %40 = load ptr, ptr %0, align 64
  %41 = getelementptr i8, ptr %40, i32 16384
  %42 = getelementptr i8, ptr %41, i32 %39
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 1) #19, !srcloc !12
  %43 = add i32 %30, 656
  %44 = load ptr, ptr %0, align 64
  %45 = getelementptr i8, ptr %44, i32 16384
  %46 = getelementptr i8, ptr %45, i32 %43
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 0) #19, !srcloc !12
  %47 = add i32 %30, 660
  %48 = load ptr, ptr %0, align 64
  %49 = getelementptr i8, ptr %48, i32 16384
  %50 = getelementptr i8, ptr %49, i32 %47
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #19, !srcloc !11
  %52 = and i32 %51, -64
  %53 = getelementptr %struct.bcm_sysport_tx_ring, ptr %4, i32 %1, i32 15
  %54 = load i8, ptr %53, align 4, !range !10
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %65, label %56

56:                                               ; preds = %17
  %57 = getelementptr %struct.bcm_sysport_tx_ring, ptr %4, i32 %1, i32 13
  %58 = load i32, ptr %57, align 4
  %59 = and i32 %58, 7
  %60 = or i32 %59, %52
  %61 = getelementptr %struct.bcm_sysport_tx_ring, ptr %4, i32 %1, i32 14
  %62 = load i32, ptr %61, align 8
  %63 = shl i32 %62, 3
  %64 = or i32 %60, %63
  br label %67

65:                                               ; preds = %17
  %66 = or i32 %52, 64
  br label %67

67:                                               ; preds = %65, %56
  %68 = phi i32 [ %64, %56 ], [ %66, %65 ]
  %69 = load ptr, ptr %0, align 64
  %70 = getelementptr i8, ptr %69, i32 16384
  %71 = getelementptr i8, ptr %70, i32 %47
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 %68) #19, !srcloc !12
  %72 = load ptr, ptr %20, align 8
  %73 = getelementptr inbounds %struct.net_device, ptr %72, i32 0, i32 23
  %74 = load i64, ptr %73, align 16
  %75 = trunc i64 %74 to i32
  %76 = shl i32 %75, 11
  %77 = and i32 %76, 262144
  %78 = add i32 %30, 664
  %79 = load ptr, ptr %0, align 64
  %80 = getelementptr i8, ptr %79, i32 16384
  %81 = getelementptr i8, ptr %80, i32 %78
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 %77) #19, !srcloc !12
  %82 = load ptr, ptr %0, align 64
  %83 = getelementptr i8, ptr %82, i32 17920
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %83) #19, !srcloc !11
  %85 = getelementptr inbounds %struct.bcm_sysport_priv, ptr %0, i32 0, i32 5
  %86 = load i8, ptr %85, align 4, !range !10
  %87 = add nuw nsw i8 %86, 3
  %88 = zext i8 %87 to i32
  %89 = shl nuw nsw i32 1, %88
  %90 = or i32 %89, %84
  %91 = load ptr, ptr %0, align 64
  %92 = getelementptr i8, ptr %91, i32 17920
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 %90) #19, !srcloc !12
  %93 = load ptr, ptr %0, align 64
  %94 = getelementptr i8, ptr %93, i32 17920
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %94) #19, !srcloc !11
  %96 = load i8, ptr %85, align 4, !range !10
  %97 = icmp eq i8 %96, 0
  %98 = and i32 %95, -13
  %99 = select i1 %97, i32 %95, i32 %98
  %100 = or i32 %99, 4
  %101 = load ptr, ptr %0, align 64
  %102 = getelementptr i8, ptr %101, i32 17920
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %102, i32 %100) #19, !srcloc !12
  %103 = load i32, ptr %25, align 4
  %104 = or i32 %103, 2048
  %105 = add i32 %30, 648
  %106 = load ptr, ptr %0, align 64
  %107 = getelementptr i8, ptr %106, i32 16384
  %108 = getelementptr i8, ptr %107, i32 %105
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %108, i32 %104) #19, !srcloc !12
  %109 = load ptr, ptr %0, align 64
  %110 = getelementptr i8, ptr %109, i32 17960
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %110) #19, !srcloc !11
  %112 = shl nuw i32 1, %1
  %113 = or i32 %111, %112
  %114 = load ptr, ptr %0, align 64
  %115 = getelementptr i8, ptr %114, i32 17960
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %115, i32 %113) #19, !srcloc !12
  tail call void @napi_enable(ptr noundef %22) #19
  br label %116

116:                                              ; preds = %67, %14, %9
  %117 = phi i32 [ 0, %67 ], [ -12, %14 ], [ -12, %9 ]
  ret i32 %117
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @bcm_sysport_init_rx_ring(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.bcm_sysport_priv, ptr %0, i32 0, i32 6
  %3 = load i32, ptr %2, align 8
  %4 = lshr i32 %3, 1
  %5 = getelementptr inbounds %struct.bcm_sysport_priv, ptr %0, i32 0, i32 18
  store i32 %4, ptr %5, align 4
  %6 = load ptr, ptr %0, align 64
  %7 = getelementptr i8, ptr %6, i32 8192
  %8 = getelementptr inbounds %struct.bcm_sysport_priv, ptr %0, i32 0, i32 16
  store ptr %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.bcm_sysport_priv, ptr %0, i32 0, i32 20
  store i32 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.bcm_sysport_priv, ptr %0, i32 0, i32 19
  store i32 0, ptr %10, align 64
  %11 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %4, i32 16) #19
  %12 = extractvalue { i32, i1 } %11, 1
  br i1 %12, label %13, label %15, !prof !9

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.bcm_sysport_priv, ptr %0, i32 0, i32 17
  store ptr null, ptr %14, align 8
  br label %28

15:                                               ; preds = %1
  %16 = extractvalue { i32, i1 } %11, 0
  %17 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %16, i32 noundef 3520) #22
  %18 = getelementptr inbounds %struct.bcm_sysport_priv, ptr %0, i32 0, i32 17
  store ptr %17, ptr %18, align 8
  %19 = icmp eq ptr %17, null
  br i1 %19, label %28, label %20

20:                                               ; preds = %15
  %21 = load i32, ptr %5, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %68, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %8, align 4
  %25 = getelementptr %struct.bcm_sysport_cb, ptr %17, i32 0, i32 1
  store ptr %24, ptr %25, align 4
  %26 = load i32, ptr %5, align 4
  %27 = icmp ugt i32 %26, 1
  br i1 %27, label %36, label %46

28:                                               ; preds = %15, %13
  %29 = getelementptr inbounds %struct.bcm_sysport_priv, ptr %0, i32 0, i32 37
  %30 = load i32, ptr %29, align 16
  %31 = and i32 %30, 8192
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %163, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.bcm_sysport_priv, ptr %0, i32 0, i32 9
  %35 = load ptr, ptr %34, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %35, ptr noundef nonnull @.str.24) #20
  br label %163

36:                                               ; preds = %36, %23
  %37 = phi i32 [ %43, %36 ], [ 1, %23 ]
  %38 = load ptr, ptr %18, align 8
  %39 = load ptr, ptr %8, align 4
  %40 = shl i32 %37, 3
  %41 = getelementptr i8, ptr %39, i32 %40
  %42 = getelementptr %struct.bcm_sysport_cb, ptr %38, i32 %37, i32 1
  store ptr %41, ptr %42, align 4
  %43 = add nuw i32 %37, 1
  %44 = load i32, ptr %5, align 4
  %45 = icmp ult i32 %43, %44
  br i1 %45, label %36, label %46

46:                                               ; preds = %36, %23
  %47 = phi i32 [ %26, %23 ], [ %44, %36 ]
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %68, label %53

49:                                               ; preds = %53
  %50 = add nuw i32 %54, 1
  %51 = load i32, ptr %5, align 4
  %52 = icmp ult i32 %50, %51
  br i1 %52, label %53, label %68

53:                                               ; preds = %49, %46
  %54 = phi i32 [ %50, %49 ], [ 0, %46 ]
  %55 = load ptr, ptr %18, align 8
  %56 = getelementptr %struct.bcm_sysport_cb, ptr %55, i32 %54
  %57 = tail call fastcc ptr @bcm_sysport_rx_refill(ptr noundef %0, ptr noundef %56) #19
  tail call void @consume_skb(ptr noundef %57) #19
  %58 = load ptr, ptr %56, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %49

60:                                               ; preds = %53
  %61 = getelementptr inbounds %struct.bcm_sysport_priv, ptr %0, i32 0, i32 37
  %62 = load i32, ptr %61, align 16
  %63 = and i32 %62, 8192
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %163, label %65

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.bcm_sysport_priv, ptr %0, i32 0, i32 9
  %67 = load ptr, ptr %66, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %67, ptr noundef nonnull @.str.25) #20
  br label %163

68:                                               ; preds = %49, %46, %20
  %69 = getelementptr inbounds %struct.bcm_sysport_priv, ptr %0, i32 0, i32 5
  %70 = load i8, ptr %69, align 4, !range !10
  %71 = icmp eq i8 %70, 0
  %72 = select i1 %71, i32 4100, i32 4104
  %73 = load ptr, ptr %0, align 64
  %74 = getelementptr i8, ptr %73, i32 8192
  %75 = getelementptr i8, ptr %74, i32 %72
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %75) #19, !srcloc !11
  %77 = and i32 %76, 1
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %103

79:                                               ; preds = %68
  %80 = load ptr, ptr %0, align 64
  %81 = getelementptr i8, ptr %80, i32 12288
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %81) #19, !srcloc !11
  %83 = and i32 %82, -2
  %84 = load ptr, ptr %0, align 64
  %85 = getelementptr i8, ptr %84, i32 12288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %85, i32 %83) #19, !srcloc !12
  br label %86

86:                                               ; preds = %97, %79
  %87 = phi i32 [ 1000, %79 ], [ %98, %97 ]
  %88 = load i8, ptr %69, align 4, !range !10
  %89 = icmp eq i8 %88, 0
  %90 = select i1 %89, i32 4100, i32 4104
  %91 = load ptr, ptr %0, align 64
  %92 = getelementptr i8, ptr %91, i32 8192
  %93 = getelementptr i8, ptr %92, i32 %90
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %93) #19, !srcloc !11
  %95 = and i32 %94, 1
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %86
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #19
  %98 = add nsw i32 %87, -1
  %99 = icmp eq i32 %87, 0
  br i1 %99, label %100, label %86

100:                                              ; preds = %97
  %101 = getelementptr inbounds %struct.bcm_sysport_priv, ptr %0, i32 0, i32 9
  %102 = load ptr, ptr %101, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %102, ptr noundef nonnull @.str.30) #20
  br label %103

103:                                              ; preds = %100, %86, %68
  %104 = load i8, ptr %69, align 4, !range !10
  %105 = icmp eq i8 %104, 0
  %106 = select i1 %105, i32 4116, i32 4120
  %107 = load ptr, ptr %0, align 64
  %108 = getelementptr i8, ptr %107, i32 8192
  %109 = getelementptr i8, ptr %108, i32 %106
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %109, i32 0) #19, !srcloc !12
  %110 = load i8, ptr %69, align 4, !range !10
  %111 = icmp eq i8 %110, 0
  %112 = select i1 %111, i32 4112, i32 4116
  %113 = load ptr, ptr %0, align 64
  %114 = getelementptr i8, ptr %113, i32 8192
  %115 = getelementptr i8, ptr %114, i32 %112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %115, i32 0) #19, !srcloc !12
  %116 = load i8, ptr %69, align 4, !range !10
  %117 = icmp eq i8 %116, 0
  %118 = select i1 %117, i32 4120, i32 4124
  %119 = load ptr, ptr %0, align 64
  %120 = getelementptr i8, ptr %119, i32 8192
  %121 = getelementptr i8, ptr %120, i32 %118
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %121, i32 0) #19, !srcloc !12
  %122 = load i8, ptr %69, align 4, !range !10
  %123 = icmp eq i8 %122, 0
  %124 = select i1 %123, i32 4124, i32 4128
  %125 = load ptr, ptr %0, align 64
  %126 = getelementptr i8, ptr %125, i32 8192
  %127 = getelementptr i8, ptr %126, i32 %124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %127, i32 0) #19, !srcloc !12
  %128 = load i32, ptr %5, align 4
  %129 = shl i32 %128, 16
  %130 = or i32 %129, 2048
  %131 = load i8, ptr %69, align 4, !range !10
  %132 = icmp eq i8 %131, 0
  %133 = select i1 %132, i32 4108, i32 4112
  %134 = load ptr, ptr %0, align 64
  %135 = getelementptr i8, ptr %134, i32 8192
  %136 = getelementptr i8, ptr %135, i32 %133
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %136, i32 %130) #19, !srcloc !12
  %137 = load i8, ptr %69, align 4, !range !10
  %138 = icmp eq i8 %137, 0
  %139 = select i1 %138, i32 4128, i32 4132
  %140 = load ptr, ptr %0, align 64
  %141 = getelementptr i8, ptr %140, i32 8192
  %142 = getelementptr i8, ptr %141, i32 %139
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %142, i32 0) #19, !srcloc !12
  %143 = load i8, ptr %69, align 4, !range !10
  %144 = icmp eq i8 %143, 0
  %145 = select i1 %144, i32 4132, i32 4136
  %146 = load ptr, ptr %0, align 64
  %147 = getelementptr i8, ptr %146, i32 8192
  %148 = getelementptr i8, ptr %147, i32 %145
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %148, i32 0) #19, !srcloc !12
  %149 = load i8, ptr %69, align 4, !range !10
  %150 = icmp eq i8 %149, 0
  %151 = select i1 %150, i32 4136, i32 4140
  %152 = load ptr, ptr %0, align 64
  %153 = getelementptr i8, ptr %152, i32 8192
  %154 = getelementptr i8, ptr %153, i32 %151
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %154, i32 0) #19, !srcloc !12
  %155 = load i32, ptr %2, align 8
  %156 = add i32 %155, -1
  %157 = load i8, ptr %69, align 4, !range !10
  %158 = icmp eq i8 %157, 0
  %159 = select i1 %158, i32 4140, i32 4144
  %160 = load ptr, ptr %0, align 64
  %161 = getelementptr i8, ptr %160, i32 8192
  %162 = getelementptr i8, ptr %161, i32 %159
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %162, i32 %156) #19, !srcloc !12
  br label %163

163:                                              ; preds = %103, %65, %60, %33, %28
  %164 = phi i32 [ 0, %103 ], [ -12, %33 ], [ -12, %28 ], [ -12, %65 ], [ -12, %60 ]
  ret i32 %164
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @bcm_sysport_netif_start(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca %struct.dim_cq_moder, align 2
  %3 = getelementptr i8, ptr %0, i32 1408
  %4 = getelementptr i8, ptr %0, i32 1824
  store i32 -32, ptr %4, align 8
  %5 = getelementptr i8, ptr %0, i32 1828
  store volatile ptr %5, ptr %5, align 4
  %6 = getelementptr i8, ptr %0, i32 1832
  store ptr %5, ptr %6, align 4
  %7 = getelementptr i8, ptr %0, i32 1836
  store ptr @bcm_sysport_dim_work, ptr %7, align 4
  %8 = getelementptr i8, ptr %0, i32 1845
  store i8 0, ptr %8, align 1
  %9 = getelementptr i8, ptr %0, i32 1738
  store i16 0, ptr %9, align 2
  %10 = getelementptr i8, ptr %0, i32 1740
  store i32 0, ptr %10, align 4
  %11 = getelementptr i8, ptr %0, i32 1744
  store i32 0, ptr %11, align 8
  %12 = getelementptr i8, ptr %0, i32 1736
  %13 = getelementptr i8, ptr %0, i32 1860
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr i8, ptr %0, i32 1856
  %16 = load i32, ptr %15, align 64
  %17 = load i16, ptr %12, align 8
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #19
  call void @net_dim_get_def_rx_moderation(ptr nonnull sret(%struct.dim_cq_moder) align 2 %2, i8 noundef zeroext 0) #19
  %20 = load i16, ptr %2, align 2
  %21 = getelementptr inbounds i8, ptr %2, i32 2
  %22 = load i16, ptr %21, align 2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #19
  %23 = zext i16 %20 to i32
  %24 = zext i16 %22 to i32
  br label %25

25:                                               ; preds = %19, %1
  %26 = phi i32 [ %23, %19 ], [ %14, %1 ]
  %27 = phi i32 [ %24, %19 ], [ %16, %1 ]
  %28 = getelementptr i8, ptr %0, i32 1428
  %29 = load i8, ptr %28, align 4, !range !10
  %30 = icmp eq i8 %29, 0
  %31 = select i1 %30, i32 4144, i32 4148
  %32 = load ptr, ptr %3, align 64
  %33 = getelementptr i8, ptr %32, i32 8192
  %34 = getelementptr i8, ptr %33, i32 %31
  %35 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #19, !srcloc !11
  %36 = and i32 %35, 65024
  %37 = mul i32 %26, 8000
  %38 = add i32 %37, 65528
  %39 = and i32 %38, -65536
  %40 = or i32 %39, %27
  %41 = or i32 %40, %36
  %42 = load i8, ptr %28, align 4, !range !10
  %43 = icmp eq i8 %42, 0
  %44 = select i1 %43, i32 4144, i32 4148
  %45 = load ptr, ptr %3, align 64
  %46 = getelementptr i8, ptr %45, i32 8192
  %47 = getelementptr i8, ptr %46, i32 %44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %41) #19, !srcloc !12
  %48 = getelementptr i8, ptr %0, i32 1472
  call void @napi_enable(ptr noundef %48) #19
  %49 = getelementptr i8, ptr %0, i32 1416
  %50 = load i32, ptr %49, align 8
  %51 = and i32 %50, -545
  store i32 %51, ptr %49, align 8
  %52 = load ptr, ptr %3, align 64
  %53 = getelementptr i8, ptr %52, i32 532
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 544) #19, !srcloc !12
  %54 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %55 = load ptr, ptr %54, align 8
  call void @phy_start(ptr noundef %55) #19
  %56 = load i8, ptr %28, align 4, !range !10
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %25
  %59 = getelementptr i8, ptr %0, i32 1424
  store i32 0, ptr %59, align 16
  %60 = load ptr, ptr %3, align 64
  %61 = getelementptr i8, ptr %60, i32 596
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 -1) #19, !srcloc !12
  br label %67

62:                                               ; preds = %25
  %63 = load i32, ptr %49, align 8
  %64 = and i32 %63, -268431361
  store i32 %64, ptr %49, align 8
  %65 = load ptr, ptr %3, align 64
  %66 = getelementptr i8, ptr %65, i32 532
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 268431360) #19, !srcloc !12
  br label %67

67:                                               ; preds = %62, %58
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @bcm_sysport_fini_rx_ring(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.bcm_sysport_priv, ptr %0, i32 0, i32 5
  %3 = load i8, ptr %2, align 4, !range !10
  %4 = icmp eq i8 %3, 0
  %5 = select i1 %4, i32 4100, i32 4104
  %6 = load ptr, ptr %0, align 64
  %7 = getelementptr i8, ptr %6, i32 8192
  %8 = getelementptr i8, ptr %7, i32 %5
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #19, !srcloc !11
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.bcm_sysport_priv, ptr %0, i32 0, i32 9
  %14 = load ptr, ptr %13, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %14, ptr noundef nonnull @.str.32) #20
  br label %15

15:                                               ; preds = %12, %1
  %16 = getelementptr inbounds %struct.bcm_sysport_priv, ptr %0, i32 0, i32 18
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %37, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.bcm_sysport_priv, ptr %0, i32 0, i32 17
  %21 = getelementptr inbounds %struct.bcm_sysport_priv, ptr %0, i32 0, i32 10
  br label %22

22:                                               ; preds = %32, %19
  %23 = phi i32 [ 0, %19 ], [ %34, %32 ]
  %24 = load ptr, ptr %20, align 8
  %25 = getelementptr %struct.bcm_sysport_cb, ptr %24, i32 %23
  %26 = getelementptr %struct.bcm_sysport_cb, ptr %24, i32 %23, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %22
  %30 = load ptr, ptr %21, align 4
  %31 = getelementptr inbounds %struct.platform_device, ptr %30, i32 0, i32 3
  tail call void @dma_unmap_page_attrs(ptr noundef %31, i32 noundef %27, i32 noundef 2048, i32 noundef 2, i32 noundef 0) #19
  br label %32

32:                                               ; preds = %29, %22
  %33 = load ptr, ptr %25, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %33, i32 noundef 0) #19
  store ptr null, ptr %25, align 4
  store i32 0, ptr %26, align 4
  %34 = add nuw i32 %23, 1
  %35 = load i32, ptr %16, align 4
  %36 = icmp ult i32 %34, %35
  br i1 %36, label %22, label %37

37:                                               ; preds = %32, %15
  %38 = getelementptr inbounds %struct.bcm_sysport_priv, ptr %0, i32 0, i32 17
  %39 = load ptr, ptr %38, align 8
  tail call void @kfree(ptr noundef %39) #19
  store ptr null, ptr %38, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @bcm_sysport_fini_tx_ring(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.bcm_sysport_priv, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 16
  %5 = getelementptr %struct.bcm_sysport_tx_ring, ptr %4, i32 %1
  %6 = load ptr, ptr %0, align 64
  %7 = getelementptr i8, ptr %6, i32 17924
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #19, !srcloc !11
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.bcm_sysport_priv, ptr %0, i32 0, i32 9
  %13 = load ptr, ptr %12, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %13, ptr noundef nonnull @.str.33) #20
  br label %14

14:                                               ; preds = %11, %2
  %15 = getelementptr %struct.bcm_sysport_tx_ring, ptr %4, i32 %1, i32 9
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %14
  %19 = getelementptr %struct.bcm_sysport_tx_ring, ptr %4, i32 %1, i32 1
  tail call void @napi_disable(ptr noundef %19) #19
  tail call void @__netif_napi_del(ptr noundef %19) #19
  tail call void @synchronize_net() #19
  %20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #19
  %21 = tail call fastcc i32 @__bcm_sysport_tx_reclaim(ptr noundef %0, ptr noundef %5) #19
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %20) #19
  %22 = load ptr, ptr %15, align 4
  tail call void @kfree(ptr noundef %22) #19
  store ptr null, ptr %15, align 4
  %23 = getelementptr %struct.bcm_sysport_tx_ring, ptr %4, i32 %1, i32 3
  store i32 0, ptr %23, align 4
  %24 = getelementptr %struct.bcm_sysport_tx_ring, ptr %4, i32 %1, i32 4
  store i32 0, ptr %24, align 8
  br label %25

25:                                               ; preds = %18, %14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_print_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule_irqoff(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__bcm_sysport_tx_reclaim(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.bcm_sysport_tx_ring, ptr %1, i32 0, i32 10
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.bcm_sysport_priv, ptr %4, i32 0, i32 5
  %6 = load i8, ptr %5, align 4, !range !10
  %7 = icmp eq i8 %6, 0
  %8 = getelementptr inbounds %struct.bcm_sysport_tx_ring, ptr %1, i32 0, i32 2
  %9 = load i32, ptr %8, align 8
  br i1 %7, label %10, label %14

10:                                               ; preds = %2
  %11 = shl nuw i32 1, %9
  %12 = load ptr, ptr %4, align 64
  %13 = getelementptr i8, ptr %12, i32 584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #19, !srcloc !12
  br label %19

14:                                               ; preds = %2
  %15 = add i32 %9, 12
  %16 = shl nuw i32 1, %15
  %17 = load ptr, ptr %4, align 64
  %18 = getelementptr i8, ptr %17, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #19, !srcloc !12
  br label %19

19:                                               ; preds = %14, %10
  %20 = getelementptr inbounds %struct.bcm_sysport_tx_ring, ptr %1, i32 0, i32 2
  %21 = load i32, ptr %20, align 8
  %22 = mul i32 %21, 28
  %23 = add i32 %22, 656
  %24 = load ptr, ptr %0, align 64
  %25 = getelementptr i8, ptr %24, i32 16384
  %26 = getelementptr i8, ptr %25, i32 %23
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #19, !srcloc !11
  %28 = lshr i32 %27, 16
  %29 = getelementptr inbounds %struct.bcm_sysport_tx_ring, ptr %1, i32 0, i32 7
  %30 = load i32, ptr %29, align 4
  %31 = sub i32 %28, %30
  %32 = and i32 %31, 65535
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %88, label %34

34:                                               ; preds = %19
  %35 = getelementptr inbounds %struct.bcm_sysport_tx_ring, ptr %1, i32 0, i32 9
  %36 = getelementptr inbounds %struct.bcm_sysport_tx_ring, ptr %1, i32 0, i32 8
  %37 = getelementptr inbounds %struct.bcm_sysport_tx_ring, ptr %1, i32 0, i32 5
  %38 = getelementptr inbounds %struct.bcm_sysport_tx_ring, ptr %1, i32 0, i32 3
  %39 = load i32, ptr %36, align 8
  br label %40

40:                                               ; preds = %75, %34
  %41 = phi i32 [ %39, %34 ], [ %86, %75 ]
  %42 = phi i32 [ 0, %34 ], [ %81, %75 ]
  %43 = phi i32 [ 0, %34 ], [ %78, %75 ]
  %44 = phi i32 [ 0, %34 ], [ %77, %75 ]
  %45 = load ptr, ptr %35, align 4
  %46 = getelementptr %struct.bcm_sysport_cb, ptr %45, i32 %41
  %47 = load ptr, ptr %3, align 8
  %48 = getelementptr inbounds %struct.bcm_sysport_priv, ptr %47, i32 0, i32 10
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.platform_device, ptr %49, i32 0, i32 3
  %51 = load ptr, ptr %46, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %62, label %53

53:                                               ; preds = %40
  %54 = getelementptr inbounds %struct.sk_buff, ptr %51, i32 0, i32 5
  %55 = load i32, ptr %54, align 8
  %56 = getelementptr %struct.bcm_sysport_cb, ptr %45, i32 %41, i32 2
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr %struct.bcm_sysport_cb, ptr %45, i32 %41, i32 3
  %59 = load i32, ptr %58, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %50, i32 noundef %57, i32 noundef %59, i32 noundef 1, i32 noundef 0) #19
  %60 = add i32 %44, 1
  %61 = load ptr, ptr %46, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %61, i32 noundef 0) #19
  store ptr null, ptr %46, align 4
  br label %69

62:                                               ; preds = %40
  %63 = getelementptr %struct.bcm_sysport_cb, ptr %45, i32 %41, i32 2
  %64 = load i32, ptr %63, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %75, label %66

66:                                               ; preds = %62
  %67 = getelementptr %struct.bcm_sysport_cb, ptr %45, i32 %41, i32 3
  %68 = load i32, ptr %67, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %50, i32 noundef %64, i32 noundef %68, i32 noundef 1, i32 noundef 0) #19
  br label %69

69:                                               ; preds = %66, %53
  %70 = phi i32 [ %44, %66 ], [ %60, %53 ]
  %71 = phi i32 [ %68, %66 ], [ %55, %53 ]
  %72 = phi ptr [ %63, %66 ], [ %56, %53 ]
  %73 = add i32 %71, %43
  store i32 0, ptr %72, align 4
  %74 = load i32, ptr %36, align 8
  br label %75

75:                                               ; preds = %69, %62
  %76 = phi i32 [ %41, %62 ], [ %74, %69 ]
  %77 = phi i32 [ %44, %62 ], [ %70, %69 ]
  %78 = phi i32 [ %43, %62 ], [ %73, %69 ]
  %79 = load i32, ptr %37, align 4
  %80 = add i32 %79, 1
  store i32 %80, ptr %37, align 4
  %81 = add nuw nsw i32 %42, 1
  %82 = load i32, ptr %38, align 4
  %83 = add i32 %82, -1
  %84 = icmp ult i32 %76, %83
  %85 = add i32 %76, 1
  %86 = select i1 %84, i32 %85, i32 0, !prof !13
  store i32 %86, ptr %36, align 8
  %87 = icmp eq i32 %81, %32
  br i1 %87, label %88, label %40

88:                                               ; preds = %75, %19
  %89 = phi i32 [ 0, %19 ], [ %77, %75 ]
  %90 = phi i32 [ 0, %19 ], [ %78, %75 ]
  %91 = getelementptr inbounds %struct.bcm_sysport_priv, ptr %0, i32 0, i32 41
  %92 = load i32, ptr %91, align 4
  %93 = add i32 %92, 1
  store i32 %93, ptr %91, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #19, !srcloc !14
  %94 = getelementptr inbounds %struct.bcm_sysport_tx_ring, ptr %1, i32 0, i32 11
  %95 = load i32, ptr %94, align 4
  %96 = add i32 %95, %89
  store i32 %96, ptr %94, align 4
  %97 = getelementptr inbounds %struct.bcm_sysport_tx_ring, ptr %1, i32 0, i32 12
  %98 = load i32, ptr %97, align 8
  %99 = add i32 %98, %90
  store i32 %99, ptr %97, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #19, !srcloc !15
  %100 = load i32, ptr %91, align 4
  %101 = add i32 %100, 1
  store i32 %101, ptr %91, align 4
  store i32 %28, ptr %29, align 4
  ret i32 %89
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_sysport_tx_poll(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 -8
  %4 = getelementptr i8, ptr %0, i32 248
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.bcm_sysport_priv, ptr %5, i32 0, i32 9
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr i8, ptr %0, i32 216
  %9 = load i32, ptr %8, align 8
  %10 = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 87
  %11 = load ptr, ptr %10, align 64
  %12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #19
  %13 = tail call fastcc i32 @__bcm_sysport_tx_reclaim(ptr noundef %5, ptr noundef %3) #19
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = getelementptr %struct.netdev_queue, ptr %11, i32 %9
  tail call void @netif_tx_wake_queue(ptr noundef %16) #19
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %12) #19
  br label %41

17:                                               ; preds = %2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %12) #19
  %18 = tail call zeroext i1 @napi_complete_done(ptr noundef %0, i32 noundef 0) #19
  %19 = load ptr, ptr %4, align 8
  %20 = getelementptr inbounds %struct.bcm_sysport_priv, ptr %19, i32 0, i32 5
  %21 = load i8, ptr %20, align 4, !range !10
  %22 = icmp eq i8 %21, 0
  %23 = load i32, ptr %8, align 8
  br i1 %22, label %24, label %32

24:                                               ; preds = %17
  %25 = shl nuw i32 1, %23
  %26 = xor i32 %25, -1
  %27 = getelementptr inbounds %struct.bcm_sysport_priv, ptr %19, i32 0, i32 4
  %28 = load i32, ptr %27, align 16
  %29 = and i32 %28, %26
  store i32 %29, ptr %27, align 16
  %30 = load ptr, ptr %19, align 64
  %31 = getelementptr i8, ptr %30, i32 596
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %25) #19, !srcloc !12
  br label %41

32:                                               ; preds = %17
  %33 = add i32 %23, 12
  %34 = shl nuw i32 1, %33
  %35 = xor i32 %34, -1
  %36 = getelementptr inbounds %struct.bcm_sysport_priv, ptr %19, i32 0, i32 2
  %37 = load i32, ptr %36, align 8
  %38 = and i32 %37, %35
  store i32 %38, ptr %36, align 8
  %39 = load ptr, ptr %19, align 64
  %40 = getelementptr i8, ptr %39, i32 532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %34) #19, !srcloc !12
  br label %41

41:                                               ; preds = %32, %24, %15
  %42 = phi i32 [ 0, %32 ], [ 0, %24 ], [ %1, %15 ]
  ret i32 %42
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #17

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @bcm_sysport_rx_refill(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.bcm_sysport_priv, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  %6 = getelementptr inbounds %struct.bcm_sysport_priv, ptr %0, i32 0, i32 9
  %7 = load ptr, ptr %6, align 8
  %8 = tail call ptr @__netdev_alloc_skb(ptr noundef %7, i32 noundef 2048, i32 noundef 10784) #19
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.bcm_sysport_priv, ptr %0, i32 0, i32 36, i32 10
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, 1
  store i32 %13, ptr %11, align 4
  %14 = getelementptr inbounds %struct.bcm_sysport_priv, ptr %0, i32 0, i32 37
  %15 = load i32, ptr %14, align 16
  %16 = and i32 %15, 64
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %65, label %18

18:                                               ; preds = %10
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %7, ptr noundef nonnull @.str.26) #20
  br label %65

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 17
  %21 = load ptr, ptr %20, align 4
  %22 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %21) #19
  %23 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %24 = xor i1 %23, true
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %26, label %35, !prof !9

26:                                               ; preds = %19
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %27 = tail call ptr @dev_driver_string(ptr noundef %5) #19
  %28 = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load ptr, ptr %5, align 4
  br label %33

33:                                               ; preds = %31, %26
  %34 = phi ptr [ %32, %31 ], [ %29, %26 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.29, ptr noundef %27, ptr noundef %34) #19
  br label %35

35:                                               ; preds = %33, %19
  br i1 %22, label %45, label %36

36:                                               ; preds = %35
  %37 = load ptr, ptr @mem_map, align 4
  %38 = ptrtoint ptr %21 to i32
  %39 = add i32 %38, 1073741824
  %40 = lshr i32 %39, 12
  %41 = getelementptr %struct.page, ptr %37, i32 %40
  %42 = and i32 %38, 4095
  %43 = tail call i32 @dma_map_page_attrs(ptr noundef %5, ptr noundef %41, i32 noundef %42, i32 noundef 2048, i32 noundef 2, i32 noundef 0) #19
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %54

45:                                               ; preds = %36, %35
  %46 = getelementptr inbounds %struct.bcm_sysport_priv, ptr %0, i32 0, i32 36, i32 11
  %47 = load i32, ptr %46, align 4
  %48 = add i32 %47, 1
  store i32 %48, ptr %46, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %8, i32 noundef 1) #19
  %49 = getelementptr inbounds %struct.bcm_sysport_priv, ptr %0, i32 0, i32 37
  %50 = load i32, ptr %49, align 16
  %51 = and i32 %50, 64
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %65, label %53

53:                                               ; preds = %45
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %7, ptr noundef nonnull @.str.27) #20
  br label %65

54:                                               ; preds = %36
  %55 = load ptr, ptr %1, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %60, label %57, !prof !9

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.bcm_sysport_cb, ptr %1, i32 0, i32 2
  %59 = load i32, ptr %58, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %5, i32 noundef %59, i32 noundef 2048, i32 noundef 2, i32 noundef 0) #19
  br label %60

60:                                               ; preds = %57, %54
  store ptr %8, ptr %1, align 4
  %61 = getelementptr inbounds %struct.bcm_sysport_cb, ptr %1, i32 0, i32 2
  store i32 %43, ptr %61, align 4
  %62 = getelementptr inbounds %struct.bcm_sysport_cb, ptr %1, i32 0, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr i8, ptr %63, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 %43) #19, !srcloc !12
  br label %65

65:                                               ; preds = %60, %53, %45, %18, %10
  %66 = phi ptr [ %55, %60 ], [ null, %18 ], [ null, %10 ], [ null, %53 ], [ null, %45 ]
  ret ptr %66
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

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

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm_sysport_dim_work(ptr nocapture noundef %0) #2 {
  %2 = alloca %struct.dim_cq_moder, align 8
  %3 = getelementptr i8, ptr %0, i32 -72
  %4 = getelementptr i8, ptr %0, i32 -416
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #19
  store i64 0, ptr %2, align 8, !annotation !8
  %5 = getelementptr i8, ptr %0, i32 21
  %6 = load i8, ptr %5, align 1
  %7 = getelementptr i8, ptr %0, i32 20
  %8 = load i8, ptr %7, align 4
  %9 = zext i8 %8 to i32
  call void @net_dim_get_rx_moderation(ptr nonnull sret(%struct.dim_cq_moder) align 2 %2, i8 noundef zeroext %6, i32 noundef %9) #19
  %10 = load i16, ptr %2, align 8
  %11 = zext i16 %10 to i32
  %12 = getelementptr inbounds %struct.dim_cq_moder, ptr %2, i32 0, i32 1
  %13 = load i16, ptr %12, align 2
  %14 = zext i16 %13 to i32
  %15 = getelementptr i8, ptr %0, i32 -396
  %16 = load i8, ptr %15, align 4, !range !10
  %17 = icmp eq i8 %16, 0
  %18 = select i1 %17, i32 4144, i32 4148
  %19 = load ptr, ptr %4, align 64
  %20 = getelementptr i8, ptr %19, i32 8192
  %21 = getelementptr i8, ptr %20, i32 %18
  %22 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #19, !srcloc !11
  %23 = and i32 %22, 65024
  %24 = mul nuw nsw i32 %11, 8000
  %25 = add nuw nsw i32 %24, 65528
  %26 = and i32 %25, 1073676288
  %27 = or i32 %26, %14
  %28 = or i32 %27, %23
  %29 = load i8, ptr %15, align 4, !range !10
  %30 = icmp eq i8 %29, 0
  %31 = select i1 %30, i32 4144, i32 4148
  %32 = load ptr, ptr %4, align 64
  %33 = getelementptr i8, ptr %32, i32 8192
  %34 = getelementptr i8, ptr %33, i32 %31
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %28) #19, !srcloc !12
  store i8 0, ptr %3, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @net_dim_get_rx_moderation(ptr sret(%struct.dim_cq_moder) align 2, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netif_napi_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @bcm_sysport_netif_stop(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr i8, ptr %0, i32 1408
  %3 = tail call ptr @llvm.thread.pointer() #19
  %4 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %5 = load volatile i32, ptr %4, align 4
  %6 = add i32 %5, 512
  store volatile i32 %6, ptr %4, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !20
  %7 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %8 = load i32, ptr %7, align 8
  %9 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 92
  tail call void @_raw_spin_lock(ptr noundef %9) #19
  %10 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 88
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %26, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  br label %15

15:                                               ; preds = %15, %13
  %16 = phi i32 [ 0, %13 ], [ %23, %15 ]
  %17 = load ptr, ptr %14, align 64
  %18 = getelementptr %struct.netdev_queue, ptr %17, i32 %16, i32 9
  tail call void @_raw_spin_lock(ptr noundef %18) #19
  %19 = getelementptr %struct.netdev_queue, ptr %17, i32 %16, i32 10
  store volatile i32 %8, ptr %19, align 4
  %20 = getelementptr %struct.netdev_queue, ptr %17, i32 %16, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %20) #19
  store volatile i32 -1, ptr %19, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !21
  %21 = load i16, ptr %18, align 4
  %22 = add i16 %21, 1
  store i16 %22, ptr %18, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !22
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !23
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !24
  %23 = add nuw i32 %16, 1
  %24 = load i32, ptr %10, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %15, label %26

26:                                               ; preds = %15, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !21
  %27 = load i16, ptr %9, align 4
  %28 = add i16 %27, 1
  store i16 %28, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !22
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !23
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !24
  tail call fastcc void @local_bh_enable() #19
  %29 = getelementptr i8, ptr %0, i32 1472
  tail call void @napi_disable(ptr noundef %29) #19
  %30 = getelementptr i8, ptr %0, i32 1824
  %31 = tail call zeroext i1 @cancel_work_sync(ptr noundef %30) #19
  %32 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %33 = load ptr, ptr %32, align 8
  tail call void @phy_stop(ptr noundef %33) #19
  %34 = load ptr, ptr %2, align 64
  %35 = getelementptr i8, ptr %34, i32 528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 -1) #19, !srcloc !12
  %36 = getelementptr i8, ptr %0, i32 1416
  store i32 -1, ptr %36, align 8
  %37 = load ptr, ptr %2, align 64
  %38 = getelementptr i8, ptr %37, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 -1) #19, !srcloc !12
  %39 = getelementptr i8, ptr %0, i32 1428
  %40 = load i8, ptr %39, align 4, !range !10
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %26
  %43 = load ptr, ptr %2, align 64
  %44 = getelementptr i8, ptr %43, i32 592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 -1) #19, !srcloc !12
  %45 = getelementptr i8, ptr %0, i32 1424
  store i32 -1, ptr %45, align 16
  %46 = load ptr, ptr %2, align 64
  %47 = getelementptr i8, ptr %46, i32 584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 -1) #19, !srcloc !12
  br label %48

48:                                               ; preds = %42, %26
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #5 {
  br label %1

1:                                                ; preds = %0
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %1) to i32), i32 noundef 512) #19
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #18

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_realloc_headroom(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @netdev_pick_tx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_stats_to_stats64(ptr noundef, ptr noundef) local_unnamed_addr #1

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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_wakeup_dev_event(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dsa_slave_dev_check(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @bcm_sysport_unmap_queues(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = tail call ptr @dsa_port_from_netdev(ptr noundef %1) #19
  %4 = getelementptr i8, ptr %0, i32 1408
  %5 = getelementptr inbounds %struct.dsa_port, ptr %3, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 88
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %36, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 89
  %12 = load i32, ptr %11, align 8
  %13 = getelementptr i8, ptr %0, i32 1712
  %14 = mul i32 %12, %6
  br label %15

15:                                               ; preds = %32, %10
  %16 = phi i32 [ %8, %10 ], [ %33, %32 ]
  %17 = phi i32 [ 0, %10 ], [ %34, %32 ]
  %18 = load ptr, ptr %13, align 16
  %19 = getelementptr %struct.bcm_sysport_tx_ring, ptr %18, i32 %17, i32 14
  %20 = load i32, ptr %19, align 8
  %21 = icmp eq i32 %20, %6
  br i1 %21, label %22, label %32

22:                                               ; preds = %15
  %23 = getelementptr %struct.bcm_sysport_tx_ring, ptr %18, i32 %17, i32 15
  %24 = load i8, ptr %23, align 4, !range !10
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %22
  store i8 0, ptr %23, align 4
  %27 = getelementptr %struct.bcm_sysport_tx_ring, ptr %18, i32 %17, i32 13
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, %14
  %30 = getelementptr %struct.bcm_sysport_priv, ptr %4, i32 0, i32 44, i32 %29
  store ptr null, ptr %30, align 4
  %31 = load i32, ptr %7, align 4
  br label %32

32:                                               ; preds = %26, %22, %15
  %33 = phi i32 [ %16, %22 ], [ %16, %15 ], [ %31, %26 ]
  %34 = add nuw i32 %17, 1
  %35 = icmp ult i32 %34, %33
  br i1 %35, label %15, label %36

36:                                               ; preds = %32, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dsa_port_from_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_set_real_num_tx_queues(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_sysport_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 1408
  %5 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %262, label %9

9:                                                ; preds = %1
  tail call void @netif_device_detach(ptr noundef %3) #19
  tail call fastcc void @bcm_sysport_netif_stop(ptr noundef %3)
  %10 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 120
  %11 = load ptr, ptr %10, align 8
  %12 = tail call i32 @phy_suspend(ptr noundef %11) #19
  %13 = getelementptr i8, ptr %3, i32 1428
  %14 = load i8, ptr %13, align 4, !range !10
  %15 = icmp eq i8 %14, 0
  %16 = load ptr, ptr %4, align 64
  br i1 %15, label %17, label %23

17:                                               ; preds = %9
  %18 = getelementptr i8, ptr %16, i32 2056
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #19, !srcloc !11
  %20 = and i32 %19, -3
  %21 = load ptr, ptr %4, align 64
  %22 = getelementptr i8, ptr %21, i32 2056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #19, !srcloc !12
  br label %29

23:                                               ; preds = %9
  %24 = getelementptr i8, ptr %16, i32 4096
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #19, !srcloc !11
  %26 = and i32 %25, -3
  %27 = load ptr, ptr %4, align 64
  %28 = getelementptr i8, ptr %27, i32 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #19, !srcloc !12
  br label %29

29:                                               ; preds = %23, %17
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #19
  %30 = load ptr, ptr %4, align 64
  %31 = getelementptr i8, ptr %30, i32 12288
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #19, !srcloc !11
  %33 = and i32 %32, -2
  %34 = load ptr, ptr %4, align 64
  %35 = getelementptr i8, ptr %34, i32 12288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %33) #19, !srcloc !12
  br label %36

36:                                               ; preds = %47, %29
  %37 = phi i32 [ 1000, %29 ], [ %48, %47 ]
  %38 = load i8, ptr %13, align 4, !range !10
  %39 = icmp eq i8 %38, 0
  %40 = select i1 %39, i32 4100, i32 4104
  %41 = load ptr, ptr %4, align 64
  %42 = getelementptr i8, ptr %41, i32 8192
  %43 = getelementptr i8, ptr %42, i32 %40
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #19, !srcloc !11
  %45 = and i32 %44, 1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %36
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #19
  %48 = add nsw i32 %37, -1
  %49 = icmp eq i32 %37, 0
  br i1 %49, label %50, label %36

50:                                               ; preds = %47
  %51 = getelementptr i8, ptr %3, i32 1688
  %52 = load ptr, ptr %51, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %52, ptr noundef nonnull @.str.30) #20
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str.44) #20
  br label %262

53:                                               ; preds = %36
  %54 = getelementptr i8, ptr %3, i32 1884
  %55 = load i8, ptr %54, align 4
  %56 = and i8 %55, 1
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %53
  %59 = load ptr, ptr %4, align 64
  %60 = getelementptr i8, ptr %59, i32 768
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %60) #19, !srcloc !11
  %62 = and i32 %61, -2
  %63 = load ptr, ptr %4, align 64
  %64 = getelementptr i8, ptr %63, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 %62) #19, !srcloc !12
  br label %65

65:                                               ; preds = %58, %53
  %66 = getelementptr i8, ptr %3, i32 1888
  %67 = load i32, ptr %66, align 32
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = load ptr, ptr %4, align 64
  %71 = getelementptr i8, ptr %70, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 1) #19, !srcloc !12
  br label %72

72:                                               ; preds = %69, %65
  %73 = load ptr, ptr %4, align 64
  %74 = getelementptr i8, ptr %73, i32 17920
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %74) #19, !srcloc !11
  %76 = and i32 %75, -2
  %77 = load ptr, ptr %4, align 64
  %78 = getelementptr i8, ptr %77, i32 17920
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 %76) #19, !srcloc !12
  br label %79

79:                                               ; preds = %86, %72
  %80 = phi i32 [ 1000, %72 ], [ %87, %86 ]
  %81 = load ptr, ptr %4, align 64
  %82 = getelementptr i8, ptr %81, i32 17924
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %82) #19, !srcloc !11
  %84 = and i32 %83, 1
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %79
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #19
  %87 = add nsw i32 %80, -1
  %88 = icmp eq i32 %80, 0
  br i1 %88, label %89, label %79

89:                                               ; preds = %86
  %90 = getelementptr i8, ptr %3, i32 1688
  %91 = load ptr, ptr %90, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %91, ptr noundef nonnull @.str.31) #20
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str.45) #20
  br label %262

92:                                               ; preds = %79
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 3000, i32 noundef 2) #19
  %93 = load i8, ptr %13, align 4, !range !10
  %94 = icmp eq i8 %93, 0
  %95 = load ptr, ptr %4, align 64
  br i1 %94, label %96, label %102

96:                                               ; preds = %92
  %97 = getelementptr i8, ptr %95, i32 2056
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %97) #19, !srcloc !11
  %99 = and i32 %98, -2
  %100 = load ptr, ptr %4, align 64
  %101 = getelementptr i8, ptr %100, i32 2056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %101, i32 %99) #19, !srcloc !12
  br label %108

102:                                              ; preds = %92
  %103 = getelementptr i8, ptr %95, i32 4096
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %103) #19, !srcloc !11
  %105 = and i32 %104, -2
  %106 = load ptr, ptr %4, align 64
  %107 = getelementptr i8, ptr %106, i32 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %107, i32 %105) #19, !srcloc !12
  br label %108

108:                                              ; preds = %102, %96
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #19
  %109 = load ptr, ptr %4, align 64
  %110 = getelementptr i8, ptr %109, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %110, i32 1) #19, !srcloc !12
  %111 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 88
  %112 = load i32, ptr %111, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %119, label %114

114:                                              ; preds = %114, %108
  %115 = phi i32 [ %116, %114 ], [ 0, %108 ]
  tail call fastcc void @bcm_sysport_fini_tx_ring(ptr noundef %4, i32 noundef %115)
  %116 = add nuw i32 %115, 1
  %117 = load i32, ptr %111, align 4
  %118 = icmp ult i32 %116, %117
  br i1 %118, label %114, label %119

119:                                              ; preds = %114, %108
  tail call fastcc void @bcm_sysport_fini_rx_ring(ptr noundef %4)
  %120 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %121 = load i16, ptr %120, align 4
  %122 = and i16 %121, 1
  %123 = icmp eq i16 %122, 0
  br i1 %123, label %258, label %124

124:                                              ; preds = %119
  %125 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %126 = load ptr, ptr %125, align 8
  %127 = icmp eq ptr %126, null
  br i1 %127, label %258, label %128

128:                                              ; preds = %124
  %129 = load i32, ptr %66, align 32
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %258, label %131

131:                                              ; preds = %128
  %132 = getelementptr i8, ptr %3, i32 1904
  %133 = load ptr, ptr %132, align 16
  %134 = tail call i32 @clk_prepare(ptr noundef %133) #19
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %131
  %137 = tail call i32 @clk_enable(ptr noundef %133) #19
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %136
  tail call void @clk_unprepare(ptr noundef %133) #19
  br label %140

140:                                              ; preds = %139, %136, %131
  %141 = getelementptr i8, ptr %3, i32 1688
  %142 = load ptr, ptr %141, align 8
  %143 = load ptr, ptr %4, align 64
  %144 = getelementptr i8, ptr %143, i32 3616
  %145 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %144) #19, !srcloc !11
  %146 = load i32, ptr %66, align 32
  %147 = and i32 %146, 96
  %148 = icmp ne i32 %147, 0
  %149 = zext i1 %148 to i32
  %150 = or i32 %145, %149
  %151 = and i32 %150, -134217729
  %152 = and i32 %146, 64
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %167, label %154

154:                                              ; preds = %140
  %155 = getelementptr i8, ptr %3, i32 1892
  %156 = load i16, ptr %155, align 1
  %157 = tail call i16 @llvm.bswap.i16(i16 %156) #19
  %158 = zext i16 %157 to i32
  %159 = load ptr, ptr %4, align 64
  %160 = getelementptr i8, ptr %159, i32 3620
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %160, i32 %158) #19, !srcloc !12
  %161 = getelementptr i8, ptr %3, i32 1894
  %162 = load i32, ptr %161, align 1
  %163 = tail call i32 @llvm.bswap.i32(i32 %162) #19
  %164 = load ptr, ptr %4, align 64
  %165 = getelementptr i8, ptr %164, i32 3624
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %165, i32 %163) #19, !srcloc !12
  %166 = or i32 %150, 134217728
  br label %167

167:                                              ; preds = %154, %140
  %168 = phi i32 [ %166, %154 ], [ %151, %140 ]
  %169 = load ptr, ptr %4, align 64
  %170 = getelementptr i8, ptr %169, i32 3616
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %170, i32 %168) #19, !srcloc !12
  %171 = load i32, ptr %66, align 32
  %172 = and i32 %171, 128
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %207, label %174

174:                                              ; preds = %167
  %175 = load ptr, ptr %4, align 64
  %176 = getelementptr i8, ptr %175, i32 1024
  %177 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %176) #19, !srcloc !11
  %178 = load i8, ptr %13, align 4, !range !10
  %179 = icmp eq i8 %178, 0
  %180 = select i1 %179, i32 8388608, i32 16777216
  %181 = or i32 %180, %177
  %182 = load ptr, ptr %4, align 64
  %183 = getelementptr i8, ptr %182, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %183, i32 %181) #19, !srcloc !12
  %184 = load ptr, ptr %4, align 64
  %185 = getelementptr i8, ptr %184, i32 768
  %186 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %185) #19, !srcloc !11
  %187 = and i32 %186, -4081
  %188 = getelementptr i8, ptr %3, i32 2196
  %189 = tail call i32 @_find_next_bit_le(ptr noundef %188, i32 noundef 8, i32 noundef 0) #19
  %190 = icmp ult i32 %189, 8
  br i1 %190, label %191, label %202

191:                                              ; preds = %191, %174
  %192 = phi i32 [ %197, %191 ], [ %187, %174 ]
  %193 = phi i32 [ %198, %191 ], [ 0, %174 ]
  %194 = phi i32 [ %200, %191 ], [ %189, %174 ]
  %195 = add i32 %193, 4
  %196 = shl nuw i32 1, %195
  %197 = or i32 %196, %192
  %198 = add i32 %193, 1
  %199 = add nuw nsw i32 %194, 1
  %200 = tail call i32 @_find_next_bit_le(ptr noundef %188, i32 noundef 8, i32 noundef %199) #19
  %201 = icmp ult i32 %200, 8
  br i1 %201, label %191, label %202

202:                                              ; preds = %191, %174
  %203 = phi i32 [ %187, %174 ], [ %197, %191 ]
  %204 = or i32 %203, 9
  %205 = load ptr, ptr %4, align 64
  %206 = getelementptr i8, ptr %205, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %206, i32 %204) #19, !srcloc !12
  br label %207

207:                                              ; preds = %202, %167
  br label %208

208:                                              ; preds = %215, %207
  %209 = phi i32 [ %217, %215 ], [ 1000, %207 ]
  %210 = load ptr, ptr %4, align 64
  %211 = getelementptr i8, ptr %210, i32 1032
  %212 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %211) #19, !srcloc !11
  %213 = and i32 %212, 1
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %219

215:                                              ; preds = %208
  %216 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %216(i32 noundef 2147480) #19
  %217 = add nsw i32 %209, -1
  %218 = icmp eq i32 %209, 0
  br i1 %218, label %242, label %208

219:                                              ; preds = %208
  %220 = icmp eq i32 %209, 0
  br i1 %220, label %221, label %242

221:                                              ; preds = %219
  %222 = load ptr, ptr %4, align 64
  %223 = getelementptr i8, ptr %222, i32 3616
  %224 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %223) #19, !srcloc !11
  %225 = and i32 %224, -2
  %226 = load ptr, ptr %4, align 64
  %227 = getelementptr i8, ptr %226, i32 3616
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %227, i32 %225) #19, !srcloc !12
  %228 = load i8, ptr %13, align 4, !range !10
  %229 = icmp eq i8 %228, 0
  %230 = select i1 %229, i32 -8388609, i32 -16777217
  %231 = load ptr, ptr %4, align 64
  %232 = getelementptr i8, ptr %231, i32 1024
  %233 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %232) #19, !srcloc !11
  %234 = and i32 %233, %230
  %235 = load ptr, ptr %4, align 64
  %236 = getelementptr i8, ptr %235, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %236, i32 %234) #19, !srcloc !12
  %237 = getelementptr i8, ptr %3, i32 2192
  %238 = load i32, ptr %237, align 16
  %239 = and i32 %238, 16384
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %258, label %241

241:                                              ; preds = %221
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %142, ptr noundef nonnull @.str.46) #20
  br label %258

242:                                              ; preds = %219, %215
  %243 = load i8, ptr %13, align 4, !range !10
  %244 = icmp eq i8 %243, 0
  %245 = load ptr, ptr %4, align 64
  br i1 %244, label %246, label %252

246:                                              ; preds = %242
  %247 = getelementptr i8, ptr %245, i32 2056
  %248 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %247) #19, !srcloc !11
  %249 = or i32 %248, 2
  %250 = load ptr, ptr %4, align 64
  %251 = getelementptr i8, ptr %250, i32 2056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %251, i32 %249) #19, !srcloc !12
  br label %258

252:                                              ; preds = %242
  %253 = getelementptr i8, ptr %245, i32 4096
  %254 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %253) #19, !srcloc !11
  %255 = or i32 %254, 2
  %256 = load ptr, ptr %4, align 64
  %257 = getelementptr i8, ptr %256, i32 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %257, i32 %255) #19, !srcloc !12
  br label %258

258:                                              ; preds = %252, %246, %241, %221, %128, %124, %119
  %259 = phi i32 [ 0, %128 ], [ 0, %124 ], [ -110, %241 ], [ -110, %221 ], [ 0, %246 ], [ 0, %252 ], [ 0, %119 ]
  %260 = getelementptr i8, ptr %3, i32 1900
  %261 = load ptr, ptr %260, align 4
  tail call void @clk_disable(ptr noundef %261) #19
  tail call void @clk_unprepare(ptr noundef %261) #19
  br label %262

262:                                              ; preds = %258, %89, %50, %1
  %263 = phi i32 [ -110, %50 ], [ -110, %89 ], [ %259, %258 ], [ 0, %1 ]
  ret i32 %263
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_sysport_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 1408
  %5 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %315, label %9

9:                                                ; preds = %1
  %10 = getelementptr i8, ptr %3, i32 1900
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @clk_prepare(ptr noundef %11) #19
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = tail call i32 @clk_enable(ptr noundef %11) #19
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  tail call void @clk_unprepare(ptr noundef %11) #19
  br label %18

18:                                               ; preds = %17, %14, %9
  %19 = getelementptr i8, ptr %3, i32 1888
  %20 = load i32, ptr %19, align 32
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = getelementptr i8, ptr %3, i32 1904
  %24 = load ptr, ptr %23, align 16
  tail call void @clk_disable(ptr noundef %24) #19
  tail call void @clk_unprepare(ptr noundef %24) #19
  br label %25

25:                                               ; preds = %22, %18
  %26 = getelementptr i8, ptr %3, i32 1428
  %27 = load i8, ptr %26, align 4, !range !10
  %28 = icmp eq i8 %27, 0
  %29 = load ptr, ptr %4, align 64
  br i1 %28, label %30, label %52

30:                                               ; preds = %25
  %31 = getelementptr i8, ptr %29, i32 2056
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #19, !srcloc !11
  %33 = or i32 %32, 8192
  %34 = load ptr, ptr %4, align 64
  %35 = getelementptr i8, ptr %34, i32 2056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %33) #19, !srcloc !12
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 2147480) #19
  %37 = load ptr, ptr %4, align 64
  %38 = getelementptr i8, ptr %37, i32 2056
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #19, !srcloc !11
  %40 = and i32 %39, -8193
  %41 = load ptr, ptr %4, align 64
  %42 = getelementptr i8, ptr %41, i32 2056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %40) #19, !srcloc !12
  %43 = load i8, ptr %26, align 4
  %44 = icmp eq i8 %43, 0
  %45 = load ptr, ptr %4, align 64
  br i1 %44, label %46, label %52

46:                                               ; preds = %30
  %47 = getelementptr i8, ptr %45, i32 2056
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #19, !srcloc !11
  %49 = and i32 %48, -4
  %50 = load ptr, ptr %4, align 64
  %51 = getelementptr i8, ptr %50, i32 2056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %49) #19, !srcloc !12
  br label %59

52:                                               ; preds = %30, %25
  %53 = phi ptr [ %45, %30 ], [ %29, %25 ]
  %54 = getelementptr i8, ptr %53, i32 4096
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #19, !srcloc !11
  %56 = and i32 %55, -4
  %57 = load ptr, ptr %4, align 64
  %58 = getelementptr i8, ptr %57, i32 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 %56) #19, !srcloc !12
  br label %59

59:                                               ; preds = %52, %46
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #19
  %60 = load ptr, ptr %4, align 64
  %61 = getelementptr i8, ptr %60, i32 768
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #19, !srcloc !11
  %63 = and i32 %62, -4090
  %64 = load ptr, ptr %4, align 64
  %65 = getelementptr i8, ptr %64, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %63) #19, !srcloc !12
  %66 = getelementptr i8, ptr %3, i32 2196
  %67 = tail call i32 @_find_next_bit_le(ptr noundef %66, i32 noundef 8, i32 noundef 0) #19
  %68 = icmp ult i32 %67, 8
  br i1 %68, label %69, label %86

69:                                               ; preds = %69, %59
  %70 = phi i32 [ %84, %69 ], [ %67, %59 ]
  %71 = getelementptr %struct.bcm_sysport_priv, ptr %4, i32 0, i32 39, i32 %70
  %72 = load i32, ptr %71, align 4
  %73 = shl i32 %72, 16
  %74 = shl nuw nsw i32 %70, 2
  %75 = add nuw nsw i32 %74, 4
  %76 = load ptr, ptr %4, align 64
  %77 = getelementptr i8, ptr %76, i32 768
  %78 = getelementptr i8, ptr %77, i32 %75
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 %73) #19, !srcloc !12
  %79 = add nuw nsw i32 %74, 36
  %80 = load ptr, ptr %4, align 64
  %81 = getelementptr i8, ptr %80, i32 768
  %82 = getelementptr i8, ptr %81, i32 %79
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %82, i32 -16711681) #19, !srcloc !12
  %83 = add nuw nsw i32 %70, 1
  %84 = tail call i32 @_find_next_bit_le(ptr noundef %66, i32 noundef 8, i32 noundef %83) #19
  %85 = icmp ult i32 %84, 8
  br i1 %85, label %69, label %86

86:                                               ; preds = %69, %59
  %87 = load ptr, ptr %4, align 64
  %88 = getelementptr i8, ptr %87, i32 3616
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %88) #19, !srcloc !11
  %90 = and i32 %89, -2
  %91 = load ptr, ptr %4, align 64
  %92 = getelementptr i8, ptr %91, i32 3616
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 %90) #19, !srcloc !12
  %93 = load i8, ptr %26, align 4, !range !10
  %94 = icmp eq i8 %93, 0
  %95 = select i1 %94, i32 -8388609, i32 -16777217
  %96 = load ptr, ptr %4, align 64
  %97 = getelementptr i8, ptr %96, i32 1024
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %97) #19, !srcloc !11
  %99 = and i32 %98, %95
  %100 = load ptr, ptr %4, align 64
  %101 = getelementptr i8, ptr %100, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %101, i32 %99) #19, !srcloc !12
  %102 = load ptr, ptr %4, align 64
  %103 = getelementptr i8, ptr %102, i32 512
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %103) #19, !srcloc !11
  %105 = and i32 %104, 8
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %86
  %108 = getelementptr i8, ptr %3, i32 1688
  %109 = load ptr, ptr %108, align 8
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %109, ptr noundef nonnull @.str.48) #20
  br label %110

110:                                              ; preds = %107, %86
  %111 = and i32 %104, 16
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %120, label %113

113:                                              ; preds = %110
  %114 = load ptr, ptr %4, align 64
  %115 = getelementptr i8, ptr %114, i32 836
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %115) #19, !srcloc !11
  %117 = and i32 %116, 255
  %118 = getelementptr i8, ptr %3, i32 1688
  %119 = load ptr, ptr %118, align 8
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %119, ptr noundef nonnull @.str.49, i32 noundef %117) #20
  br label %120

120:                                              ; preds = %113, %110
  %121 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 88
  %122 = load i32, ptr %121, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %133, label %124

124:                                              ; preds = %129, %120
  %125 = phi i32 [ %130, %129 ], [ 0, %120 ]
  %126 = tail call fastcc i32 @bcm_sysport_init_tx_ring(ptr noundef %4, i32 noundef %125)
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %124
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str.20, i32 noundef %125) #20
  br label %304

129:                                              ; preds = %124
  %130 = add nuw i32 %125, 1
  %131 = load i32, ptr %121, align 4
  %132 = icmp ult i32 %130, %131
  br i1 %132, label %124, label %133

133:                                              ; preds = %129, %120
  %134 = load ptr, ptr %4, align 64
  %135 = getelementptr i8, ptr %134, i32 17924
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %135, i32 2) #19, !srcloc !12
  %136 = tail call fastcc i32 @bcm_sysport_init_rx_ring(ptr noundef %4)
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %301

138:                                              ; preds = %133
  %139 = load ptr, ptr %4, align 64
  %140 = getelementptr i8, ptr %139, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %140, i32 0) #19, !srcloc !12
  %141 = load ptr, ptr %4, align 64
  %142 = getelementptr i8, ptr %141, i32 12288
  %143 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %142) #19, !srcloc !11
  %144 = or i32 %143, 1
  %145 = load ptr, ptr %4, align 64
  %146 = getelementptr i8, ptr %145, i32 12288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %146, i32 %144) #19, !srcloc !12
  br label %147

147:                                              ; preds = %158, %138
  %148 = phi i32 [ 1000, %138 ], [ %159, %158 ]
  %149 = load i8, ptr %26, align 4, !range !10
  %150 = icmp eq i8 %149, 0
  %151 = select i1 %150, i32 4100, i32 4104
  %152 = load ptr, ptr %4, align 64
  %153 = getelementptr i8, ptr %152, i32 8192
  %154 = getelementptr i8, ptr %153, i32 %151
  %155 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %154) #19, !srcloc !11
  %156 = and i32 %155, 1
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %161, label %158

158:                                              ; preds = %147
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #19
  %159 = add nsw i32 %148, -1
  %160 = icmp eq i32 %148, 0
  br i1 %160, label %296, label %147

161:                                              ; preds = %147
  %162 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 23
  %163 = load i64, ptr %162, align 16
  %164 = tail call i32 @bcm_sysport_set_features(ptr noundef %3, i64 noundef %163)
  %165 = load ptr, ptr %4, align 64
  %166 = getelementptr i8, ptr %165, i32 1024
  %167 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %166) #19, !srcloc !11
  %168 = or i32 %167, 3
  %169 = load i8, ptr %26, align 4, !range !10
  %170 = icmp eq i8 %169, 0
  %171 = and i32 %168, -12582913
  %172 = select i1 %170, i32 %168, i32 %171
  %173 = or i32 %172, 4194304
  %174 = load ptr, ptr %4, align 64
  %175 = getelementptr i8, ptr %174, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %175, i32 %173) #19, !srcloc !12
  %176 = load i8, ptr %26, align 4, !range !10
  %177 = icmp eq i8 %176, 0
  %178 = load ptr, ptr %4, align 64
  br i1 %177, label %179, label %181

179:                                              ; preds = %161
  %180 = getelementptr i8, ptr %178, i32 2068
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %180, i32 1536) #19, !srcloc !12
  br label %202

181:                                              ; preds = %161
  %182 = getelementptr i8, ptr %178, i32 4096
  %183 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %182) #19, !srcloc !11
  %184 = getelementptr i8, ptr %3, i32 1688
  %185 = load ptr, ptr %184, align 8
  %186 = getelementptr inbounds %struct.net_device, ptr %185, i32 0, i32 67
  %187 = load ptr, ptr %186, align 4
  %188 = icmp eq ptr %187, null
  br i1 %188, label %196, label %189

189:                                              ; preds = %181
  %190 = getelementptr inbounds %struct.dsa_port, ptr %187, i32 0, i32 3
  %191 = load ptr, ptr %190, align 4
  %192 = icmp eq ptr %191, null
  %193 = and i32 %183, -264241153
  %194 = or i32 %193, 16777216
  %195 = select i1 %192, i32 %183, i32 %194
  br label %196

196:                                              ; preds = %189, %181
  %197 = phi i32 [ %183, %181 ], [ %195, %189 ]
  %198 = and i32 %197, -4128769
  %199 = or i32 %198, 786432
  %200 = load ptr, ptr %4, align 64
  %201 = getelementptr i8, ptr %200, i32 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %201, i32 %199) #19, !srcloc !12
  br label %202

202:                                              ; preds = %196, %179
  %203 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 72
  %204 = load ptr, ptr %203, align 32
  %205 = load i8, ptr %204, align 1
  %206 = zext i8 %205 to i32
  %207 = shl nuw i32 %206, 24
  %208 = getelementptr i8, ptr %204, i32 1
  %209 = load i8, ptr %208, align 1
  %210 = zext i8 %209 to i32
  %211 = shl nuw nsw i32 %210, 16
  %212 = or i32 %211, %207
  %213 = getelementptr i8, ptr %204, i32 2
  %214 = load i8, ptr %213, align 1
  %215 = zext i8 %214 to i32
  %216 = shl nuw nsw i32 %215, 8
  %217 = or i32 %212, %216
  %218 = getelementptr i8, ptr %204, i32 3
  %219 = load i8, ptr %218, align 1
  %220 = zext i8 %219 to i32
  %221 = or i32 %217, %220
  %222 = getelementptr i8, ptr %204, i32 4
  %223 = load i8, ptr %222, align 1
  %224 = zext i8 %223 to i32
  %225 = shl nuw nsw i32 %224, 8
  %226 = getelementptr i8, ptr %204, i32 5
  %227 = load i8, ptr %226, align 1
  %228 = zext i8 %227 to i32
  %229 = or i32 %225, %228
  %230 = load i8, ptr %26, align 4, !range !10
  %231 = icmp eq i8 %230, 0
  %232 = load ptr, ptr %4, align 64
  br i1 %231, label %233, label %237

233:                                              ; preds = %202
  %234 = getelementptr i8, ptr %232, i32 2060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %234, i32 %221) #19, !srcloc !12
  %235 = load ptr, ptr %4, align 64
  %236 = getelementptr i8, ptr %235, i32 2064
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %236, i32 %229) #19, !srcloc !12
  br label %241

237:                                              ; preds = %202
  %238 = getelementptr i8, ptr %232, i32 4108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %238, i32 %221) #19, !srcloc !12
  %239 = load ptr, ptr %4, align 64
  %240 = getelementptr i8, ptr %239, i32 4104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %240, i32 %229) #19, !srcloc !12
  br label %241

241:                                              ; preds = %237, %233
  %242 = load i8, ptr %26, align 4, !range !10
  %243 = icmp eq i8 %242, 0
  %244 = load ptr, ptr %4, align 64
  br i1 %243, label %245, label %251

245:                                              ; preds = %241
  %246 = getelementptr i8, ptr %244, i32 2056
  %247 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %246) #19, !srcloc !11
  %248 = or i32 %247, 2
  %249 = load ptr, ptr %4, align 64
  %250 = getelementptr i8, ptr %249, i32 2056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %250, i32 %248) #19, !srcloc !12
  br label %257

251:                                              ; preds = %241
  %252 = getelementptr i8, ptr %244, i32 4096
  %253 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %252) #19, !srcloc !11
  %254 = or i32 %253, 2
  %255 = load ptr, ptr %4, align 64
  %256 = getelementptr i8, ptr %255, i32 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %256, i32 %254) #19, !srcloc !12
  br label %257

257:                                              ; preds = %251, %245
  %258 = load ptr, ptr %4, align 64
  %259 = getelementptr i8, ptr %258, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %259, i32 0) #19, !srcloc !12
  %260 = load i8, ptr %26, align 4, !range !10
  %261 = icmp eq i8 %260, 0
  %262 = load ptr, ptr %4, align 64
  br i1 %261, label %263, label %269

263:                                              ; preds = %257
  %264 = getelementptr i8, ptr %262, i32 2056
  %265 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %264) #19, !srcloc !11
  %266 = or i32 %265, 1
  %267 = load ptr, ptr %4, align 64
  %268 = getelementptr i8, ptr %267, i32 2056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %268, i32 %266) #19, !srcloc !12
  br label %275

269:                                              ; preds = %257
  %270 = getelementptr i8, ptr %262, i32 4096
  %271 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %270) #19, !srcloc !11
  %272 = or i32 %271, 1
  %273 = load ptr, ptr %4, align 64
  %274 = getelementptr i8, ptr %273, i32 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %274, i32 %272) #19, !srcloc !12
  br label %275

275:                                              ; preds = %269, %263
  %276 = load ptr, ptr %4, align 64
  %277 = getelementptr i8, ptr %276, i32 17920
  %278 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %277) #19, !srcloc !11
  %279 = or i32 %278, 1
  %280 = load ptr, ptr %4, align 64
  %281 = getelementptr i8, ptr %280, i32 17920
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %281, i32 %279) #19, !srcloc !12
  br label %282

282:                                              ; preds = %289, %275
  %283 = phi i32 [ 1000, %275 ], [ %290, %289 ]
  %284 = load ptr, ptr %4, align 64
  %285 = getelementptr i8, ptr %284, i32 17924
  %286 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %285) #19, !srcloc !11
  %287 = and i32 %286, 1
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %292, label %289

289:                                              ; preds = %282
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #19
  %290 = add nsw i32 %283, -1
  %291 = icmp eq i32 %283, 0
  br i1 %291, label %296, label %282

292:                                              ; preds = %282
  %293 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 120
  %294 = load ptr, ptr %293, align 8
  %295 = tail call i32 @phy_resume(ptr noundef %294) #19
  tail call fastcc void @bcm_sysport_netif_start(ptr noundef %3)
  tail call void @netif_device_attach(ptr noundef %3) #19
  br label %315

296:                                              ; preds = %289, %158
  %297 = phi ptr [ @.str.31, %289 ], [ @.str.30, %158 ]
  %298 = phi ptr [ @.str.45, %289 ], [ @.str.47, %158 ]
  %299 = getelementptr i8, ptr %3, i32 1688
  %300 = load ptr, ptr %299, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %300, ptr noundef nonnull %297) #20
  br label %301

301:                                              ; preds = %296, %133
  %302 = phi ptr [ @.str.21, %133 ], [ %298, %296 ]
  %303 = phi i32 [ %136, %133 ], [ -110, %296 ]
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull %302) #20
  tail call fastcc void @bcm_sysport_fini_rx_ring(ptr noundef %4)
  br label %304

304:                                              ; preds = %301, %128
  %305 = phi i32 [ %126, %128 ], [ %303, %301 ]
  %306 = load i32, ptr %121, align 4
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %313, label %308

308:                                              ; preds = %308, %304
  %309 = phi i32 [ %310, %308 ], [ 0, %304 ]
  tail call fastcc void @bcm_sysport_fini_tx_ring(ptr noundef %4, i32 noundef %309)
  %310 = add nuw i32 %309, 1
  %311 = load i32, ptr %121, align 4
  %312 = icmp ult i32 %310, %311
  br i1 %312, label %308, label %313

313:                                              ; preds = %308, %304
  %314 = load ptr, ptr %10, align 4
  tail call void @clk_disable(ptr noundef %314) #19
  tail call void @clk_unprepare(ptr noundef %314) #19
  br label %315

315:                                              ; preds = %313, %292, %1
  %316 = phi i32 [ %305, %313 ], [ 0, %292 ], [ 0, %1 ]
  ret i32 %316
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { argmemonly nofree nounwind willreturn }
attributes #15 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #18 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #19 = { nounwind }
attributes #20 = { cold nounwind }
attributes #21 = { nounwind allocsize(2) }
attributes #22 = { nounwind allocsize(0) }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i8 0, i8 2}
!11 = !{i64 3126070}
!12 = !{i64 3125652}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 2149718031}
!15 = !{i64 2149718332}
!16 = !{i64 2151696260}
!17 = !{i64 2151696102}
!18 = !{i64 2151696404}
!19 = !{i64 2149717732}
!20 = !{i64 2149079948}
!21 = !{i64 2149307405}
!22 = !{i64 2149303229}
!23 = !{i64 2149303304, i64 2149303331, i64 2149303378, i64 2149303400, i64 2149303428, i64 2149303448}
!24 = !{i64 2149330408}
