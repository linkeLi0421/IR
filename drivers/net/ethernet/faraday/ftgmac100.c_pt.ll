; ModuleID = '/llk/IR/drivers/net/ethernet/faraday/ftgmac100.c_pt.bc'
source_filename = "../drivers/net/ethernet/faraday/ftgmac100.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
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
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.121, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.138, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.121 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.ref_tracker_dir = type {}
%struct.possible_net_t = type {}
%union.anon.138 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_ringparam = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_pauseparam = type { i32, i32, i32, i32 }
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
%struct.page = type { i32, %union.anon.1, %union.anon.115, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.115 = type { %struct.atomic_t }
%struct.ftgmac100_txdes = type { i32, i32, i32, i32 }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.ftgmac100 = type { ptr, ptr, i32, ptr, i32, ptr, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, %struct.napi_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i8, i8, i8 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ftgmac100_rxdes = type { i32, i32, i32, i32 }

@ftgmac100_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"faraday,ftgmac100\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author460 = internal constant [47 x i8] c"author=Po-Yu Chuang <ratbert@faraday-tech.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description461 = internal constant [29 x i8] c"description=FTGMAC100 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license462 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@ftgmac100_driver = internal global %struct.platform_driver { ptr @ftgmac100_probe, ptr @ftgmac100_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ftgmac100_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [10 x i8] c"ftgmac100\00", align 1
@ftgmac100_ethtool_ops = internal constant %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @ftgmac100_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @phy_ethtool_nway_reset, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ftgmac100_get_ringparam, ptr @ftgmac100_set_ringparam, ptr null, ptr @ftgmac100_get_pauseparam, ptr @ftgmac100_set_pauseparam, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @phy_ethtool_get_link_ksettings, ptr @phy_ethtool_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@ftgmac100_netdev_ops = internal constant %struct.net_device_ops { ptr null, ptr null, ptr @ftgmac100_open, ptr @ftgmac100_stop, ptr @ftgmac100_hard_start_xmit, ptr null, ptr null, ptr null, ptr @ftgmac100_set_rx_mode, ptr @ftgmac100_set_mac_addr, ptr @eth_validate_addr, ptr null, ptr @phy_do_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ftgmac100_tx_timeout, ptr null, ptr null, ptr null, ptr null, ptr @ncsi_vlan_rx_add_vid, ptr @ncsi_vlan_rx_kill_vid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ftgmac100_set_features, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Could not reserve memory region\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Failed to ioremap ethernet registers\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"aspeed,ast2400-mac\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"aspeed,ast2500-mac\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"aspeed,ast2600-mac\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"use-ncsi\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"NCSI stack not enabled\0A\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"phy-handle\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"Failed to connect to phy\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"mdio\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"MII probe failed!\0A\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"no-hw-checksum\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"Failed to register netdev\0A\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"irq %d, mapped at %p\0A\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.15 = private unnamed_addr constant [32 x i8] c"Failed to allocate descriptors\0A\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"failed to request irq %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [35 x i8] c"Failed to allocate packet buffers\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.18 = private unnamed_addr constant [20 x i8] c"Unknown speed %d !\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.19 = private unnamed_addr constant [23 x i8] c"Hardware reset failed\0A\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"failed to allocate rx skb\0A\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"failed to map rx page\0A\00", align 1
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.22 = private unnamed_addr constant [28 x i8] c"include/linux/dma-mapping.h\00", align 1
@.str.23 = private unnamed_addr constant [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.24 = private unnamed_addr constant [33 x i8] c"AHB bus error ! Resetting chip.\0A\00", align 1
@.str.25 = private unnamed_addr constant [41 x i8] c"drivers/net/ethernet/faraday/ftgmac100.c\00", align 1
@.str.26 = private unnamed_addr constant [27 x i8] c"map tx packet head failed\0A\00", align 1
@.str.27 = private unnamed_addr constant [24 x i8] c"map tx fragment failed\0A\00", align 1
@.str.28 = private unnamed_addr constant [27 x i8] c"attempting to continue...\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.29 = private unnamed_addr constant [39 x i8] c"Read MAC address %pM from device tree\0A\00", align 1
@.str.30 = private unnamed_addr constant [32 x i8] c"Read MAC address %pM from chip\0A\00", align 1
@.str.31 = private unnamed_addr constant [34 x i8] c"Generated random MAC address %pM\0A\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c"ftgmac100_mdio\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"%s-%d\00", align 1
@.str.34 = private unnamed_addr constant [27 x i8] c"Cannot register MDIO bus!\0A\00", align 1
@.str.35 = private unnamed_addr constant [21 x i8] c"mdio read timed out\0A\00", align 1
@.str.36 = private unnamed_addr constant [22 x i8] c"mdio write timed out\0A\00", align 1
@.str.37 = private unnamed_addr constant [27 x i8] c"Unsupported PHY mode %s !\0A\00", align 1
@.str.38 = private unnamed_addr constant [18 x i8] c"%s: no PHY found\0A\00", align 1
@.str.39 = private unnamed_addr constant [29 x i8] c"%s: Could not attach to PHY\0A\00", align 1
@.str.40 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"internal\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"mii\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"gmii\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"sgmii\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"tbi\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"rev-mii\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"rmii\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"rev-rmii\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"rtbi\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"smii\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"xgmii\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"xlgmii\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"moca\00", align 1
@.str.58 = private unnamed_addr constant [7 x i8] c"qsgmii\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"trgmii\00", align 1
@.str.60 = private unnamed_addr constant [11 x i8] c"1000base-x\00", align 1
@.str.61 = private unnamed_addr constant [11 x i8] c"2500base-x\00", align 1
@.str.62 = private unnamed_addr constant [9 x i8] c"5gbase-r\00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c"rxaui\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"xaui\00", align 1
@.str.65 = private unnamed_addr constant [10 x i8] c"10gbase-r\00", align 1
@.str.66 = private unnamed_addr constant [10 x i8] c"25gbase-r\00", align 1
@.str.67 = private unnamed_addr constant [8 x i8] c"usxgmii\00", align 1
@.str.68 = private unnamed_addr constant [11 x i8] c"10gbase-kr\00", align 1
@.str.69 = private unnamed_addr constant [10 x i8] c"100base-x\00", align 1
@.str.70 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.71 = private unnamed_addr constant [5 x i8] c"RCLK\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author460, ptr @__UNIQUE_ID_description461, ptr @__UNIQUE_ID_license462], section "llvm.metadata"
@switch.table.ftgmac100_mii_probe = private unnamed_addr constant [30 x ptr] [ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.70, ptr @.str.70, ptr @.str.70, ptr @.str.70, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.69, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68], align 4

@__mod_of__ftgmac100_of_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @ftgmac100_of_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @ftgmac100_driver, ptr noundef nonnull @__this_module) #18
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @ftgmac100_driver) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ftgmac100_probe(ptr noundef %0) #2 {
  %2 = alloca [6 x i8], align 1
  %3 = alloca [6 x i8], align 4
  %4 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #18
  %5 = icmp eq ptr %4, null
  br i1 %5, label %267, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #18
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %267, label %9

9:                                                ; preds = %6
  %10 = tail call ptr @alloc_etherdev_mqs(i32 noundef 360, i32 noundef 1, i32 noundef 1) #18
  %11 = icmp eq ptr %10, null
  br i1 %11, label %267, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %14 = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 111, i32 1
  store ptr %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 42
  store ptr @ftgmac100_ethtool_ops, ptr %15, align 8
  %16 = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 16
  store ptr @ftgmac100_netdev_ops, ptr %16, align 8
  %17 = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 96
  store i32 500, ptr %17, align 8
  %18 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %10, ptr %18, align 8
  %19 = getelementptr i8, ptr %10, i32 1408
  %20 = getelementptr i8, ptr %10, i32 1484
  store ptr %10, ptr %20, align 4
  %21 = getelementptr i8, ptr %10, i32 1488
  store ptr %13, ptr %21, align 8
  %22 = getelementptr i8, ptr %10, i32 1712
  store i32 -32, ptr %22, align 8
  %23 = getelementptr i8, ptr %10, i32 1716
  store volatile ptr %23, ptr %23, align 4
  %24 = getelementptr i8, ptr %10, i32 1720
  store ptr %23, ptr %24, align 4
  %25 = getelementptr i8, ptr %10, i32 1724
  store ptr @ftgmac100_reset_task, ptr %25, align 4
  %26 = load i32, ptr %4, align 4
  %27 = getelementptr inbounds %struct.resource, ptr %4, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = sub i32 1, %26
  %30 = add i32 %29, %28
  %31 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %12
  %35 = load ptr, ptr %13, align 4
  br label %36

36:                                               ; preds = %34, %12
  %37 = phi ptr [ %35, %34 ], [ %32, %12 ]
  %38 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %26, i32 noundef %30, ptr noundef %37, i32 noundef 0) #18
  store ptr %38, ptr %19, align 8
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.1) #19
  br label %265

41:                                               ; preds = %36
  %42 = load i32, ptr %4, align 4
  %43 = load i32, ptr %27, align 4
  %44 = sub i32 1, %42
  %45 = add i32 %44, %43
  %46 = tail call ptr @ioremap(i32 noundef %42, i32 noundef %45) #18
  %47 = getelementptr i8, ptr %10, i32 1412
  store ptr %46, ptr %47, align 4
  %48 = icmp eq ptr %46, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.2) #19
  br label %261

50:                                               ; preds = %41
  %51 = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 59
  store i32 %7, ptr %51, align 8
  %52 = getelementptr i8, ptr %10, i32 1760
  store i8 1, ptr %52, align 8
  %53 = getelementptr i8, ptr %10, i32 1761
  store i8 1, ptr %53, align 1
  %54 = getelementptr i8, ptr %10, i32 1762
  store i8 1, ptr %54, align 2
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #18
  %55 = load ptr, ptr %21, align 8
  %56 = load ptr, ptr %20, align 4
  %57 = tail call i32 @device_get_ethdev_address(ptr noundef %55, ptr noundef %56) #18
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %50
  %60 = load ptr, ptr %21, align 8
  %61 = load ptr, ptr %20, align 4
  %62 = getelementptr inbounds %struct.net_device, ptr %61, i32 0, i32 72
  %63 = load ptr, ptr %62, align 32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %60, ptr noundef nonnull @.str.29, ptr noundef %63) #19
  br label %107

64:                                               ; preds = %50
  %65 = load ptr, ptr %47, align 4
  %66 = getelementptr i8, ptr %65, i32 8
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %66) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %68 = load ptr, ptr %47, align 4
  %69 = getelementptr i8, ptr %68, i32 12
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %71 = lshr i32 %67, 8
  %72 = trunc i32 %71 to i8
  store i8 %72, ptr %3, align 4
  %73 = trunc i32 %67 to i8
  %74 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 1
  store i8 %73, ptr %74, align 1
  %75 = lshr i32 %70, 24
  %76 = trunc i32 %75 to i8
  %77 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 2
  store i8 %76, ptr %77, align 2
  %78 = lshr i32 %70, 16
  %79 = trunc i32 %78 to i8
  %80 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 3
  store i8 %79, ptr %80, align 1
  %81 = lshr i32 %70, 8
  %82 = trunc i32 %81 to i8
  %83 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 4
  store i8 %82, ptr %83, align 4
  %84 = trunc i32 %70 to i8
  %85 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 5
  store i8 %84, ptr %85, align 1
  %86 = load i32, ptr %3, align 4
  %87 = and i32 %86, 1
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %64
  %90 = load i16, ptr %83, align 4
  %91 = zext i16 %90 to i32
  %92 = or i32 %86, %91
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %89
  %95 = load ptr, ptr %20, align 4
  call void @dev_addr_mod(ptr noundef %95, i32 noundef 0, ptr noundef nonnull %3, i32 noundef 6) #18
  %96 = load ptr, ptr %21, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %96, ptr noundef nonnull @.str.30, ptr noundef nonnull %3) #19
  br label %107

97:                                               ; preds = %89, %64
  %98 = load ptr, ptr %20, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %2, i8 0, i32 6, i1 false) #18, !annotation !10
  call void @get_random_bytes(ptr noundef nonnull %2, i32 noundef 6) #18
  %99 = load i8, ptr %2, align 1
  %100 = and i8 %99, -4
  %101 = or i8 %100, 2
  store i8 %101, ptr %2, align 1
  call void @dev_addr_mod(ptr noundef %98, i32 noundef 0, ptr noundef nonnull %2, i32 noundef 6) #18
  %102 = getelementptr inbounds %struct.net_device, ptr %98, i32 0, i32 50
  store i8 1, ptr %102, align 8
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #18
  %103 = load ptr, ptr %21, align 8
  %104 = load ptr, ptr %20, align 4
  %105 = getelementptr inbounds %struct.net_device, ptr %104, i32 0, i32 72
  %106 = load ptr, ptr %105, align 32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %103, ptr noundef nonnull @.str.31, ptr noundef %106) #19
  br label %107

107:                                              ; preds = %97, %94, %59
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #18
  %108 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %109 = load ptr, ptr %108, align 8
  %110 = icmp eq ptr %109, null
  br i1 %110, label %166, label %111

111:                                              ; preds = %107
  %112 = call i32 @of_device_is_compatible(ptr noundef nonnull %109, ptr noundef nonnull @.str.3) #18
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %111
  %115 = call i32 @of_device_is_compatible(ptr noundef nonnull %109, ptr noundef nonnull @.str.4) #18
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = call i32 @of_device_is_compatible(ptr noundef nonnull %109, ptr noundef nonnull @.str.5) #18
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %129, label %120

120:                                              ; preds = %117, %114, %111
  %121 = getelementptr i8, ptr %10, i32 1436
  store i32 1073741824, ptr %121, align 4
  %122 = getelementptr i8, ptr %10, i32 1464
  store i32 1073741824, ptr %122, align 8
  %123 = getelementptr i8, ptr %10, i32 1764
  store i8 1, ptr %123, align 4
  %124 = call i32 @of_device_is_compatible(ptr noundef nonnull %109, ptr noundef nonnull @.str.5) #18
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %132, label %126

126:                                              ; preds = %120
  %127 = load ptr, ptr %47, align 4
  %128 = getelementptr i8, ptr %127, i32 88
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  call void @arm_heavy_mb() #18
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %128, i32 402653184) #18, !srcloc !12
  br label %132

129:                                              ; preds = %117
  %130 = getelementptr i8, ptr %10, i32 1436
  store i32 32768, ptr %130, align 4
  %131 = getelementptr i8, ptr %10, i32 1464
  store i32 32768, ptr %131, align 8
  br label %132

132:                                              ; preds = %129, %126, %120
  %133 = call ptr @of_get_property(ptr noundef nonnull %109, ptr noundef nonnull @.str.6, ptr noundef null) #18
  %134 = icmp eq ptr %133, null
  br i1 %134, label %136, label %135

135:                                              ; preds = %132
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.7) #19
  br label %245

136:                                              ; preds = %132
  %137 = call ptr @of_get_property(ptr noundef nonnull %109, ptr noundef nonnull @.str.8, ptr noundef null) #18
  %138 = icmp eq ptr %137, null
  br i1 %138, label %154, label %139

139:                                              ; preds = %136
  %140 = call i32 @of_device_is_compatible(ptr noundef nonnull %109, ptr noundef nonnull @.str.3) #18
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %139
  %143 = call i32 @of_device_is_compatible(ptr noundef nonnull %109, ptr noundef nonnull @.str.4) #18
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %148, label %145

145:                                              ; preds = %142, %139
  %146 = call fastcc i32 @ftgmac100_setup_mdio(ptr noundef nonnull %10)
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %258

148:                                              ; preds = %145, %142
  %149 = load ptr, ptr %20, align 4
  %150 = call ptr @of_phy_get_and_connect(ptr noundef %149, ptr noundef nonnull %109, ptr noundef nonnull @ftgmac100_adjust_link) #18
  %151 = icmp eq ptr %150, null
  br i1 %151, label %152, label %153

152:                                              ; preds = %148
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.9) #19
  br label %245

153:                                              ; preds = %148
  call void @phy_support_asym_pause(ptr noundef nonnull %150) #18
  call void @phy_attached_info(ptr noundef nonnull %150) #18
  br label %169

154:                                              ; preds = %136
  %155 = call ptr @of_get_child_by_name(ptr noundef nonnull %109, ptr noundef nonnull @.str.10) #18
  %156 = icmp eq ptr %155, null
  br i1 %156, label %157, label %169

157:                                              ; preds = %154
  %158 = getelementptr i8, ptr %10, i32 1748
  store i8 0, ptr %158, align 4
  %159 = call fastcc i32 @ftgmac100_setup_mdio(ptr noundef nonnull %10)
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %258

161:                                              ; preds = %157
  %162 = call fastcc i32 @ftgmac100_mii_probe(ptr noundef nonnull %10)
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %169, label %164

164:                                              ; preds = %161
  %165 = load ptr, ptr %21, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %165, ptr noundef nonnull @.str.11) #19
  br label %251

166:                                              ; preds = %107
  %167 = getelementptr i8, ptr %10, i32 1436
  store i32 32768, ptr %167, align 4
  %168 = getelementptr i8, ptr %10, i32 1464
  store i32 32768, ptr %168, align 8
  br label %169

169:                                              ; preds = %166, %161, %154, %153
  %170 = getelementptr i8, ptr %10, i32 1764
  %171 = load i8, ptr %170, align 4, !range !13
  %172 = icmp eq i8 %171, 0
  br i1 %172, label %208, label %173

173:                                              ; preds = %169
  %174 = load ptr, ptr %21, align 8
  %175 = call ptr @devm_clk_get(ptr noundef %174, ptr noundef null) #18
  %176 = icmp ugt ptr %175, inttoptr (i32 -4096 to ptr)
  br i1 %176, label %206, label %177

177:                                              ; preds = %173
  %178 = getelementptr i8, ptr %10, i32 1732
  store ptr %175, ptr %178, align 4
  %179 = call i32 @clk_prepare(ptr noundef %175) #18
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %245

181:                                              ; preds = %177
  %182 = call i32 @clk_enable(ptr noundef %175) #18
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %185, label %184

184:                                              ; preds = %181
  call void @clk_unprepare(ptr noundef %175) #18
  br label %245

185:                                              ; preds = %181
  %186 = load ptr, ptr %178, align 4
  %187 = getelementptr i8, ptr %10, i32 1748
  %188 = load i8, ptr %187, align 4, !range !13
  %189 = icmp eq i8 %188, 0
  %190 = select i1 %189, i32 100000000, i32 25000000
  %191 = call i32 @clk_set_rate(ptr noundef %186, i32 noundef %190) #18
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %203

193:                                              ; preds = %185
  %194 = load ptr, ptr %21, align 8
  %195 = call ptr @devm_clk_get_optional(ptr noundef %194, ptr noundef nonnull @.str.71) #18
  %196 = getelementptr i8, ptr %10, i32 1736
  store ptr %195, ptr %196, align 8
  %197 = call i32 @clk_prepare(ptr noundef %195) #18
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %203

199:                                              ; preds = %193
  %200 = call i32 @clk_enable(ptr noundef %195) #18
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %208, label %202

202:                                              ; preds = %199
  call void @clk_unprepare(ptr noundef %195) #18
  br label %203

203:                                              ; preds = %202, %193, %185
  %204 = phi i32 [ %191, %185 ], [ %200, %202 ], [ %197, %193 ]
  %205 = load ptr, ptr %178, align 4
  call void @clk_disable(ptr noundef %205) #18
  call void @clk_unprepare(ptr noundef %205) #18
  br label %245

206:                                              ; preds = %173
  %207 = ptrtoint ptr %175 to i32
  br label %245

208:                                              ; preds = %199, %169
  %209 = getelementptr i8, ptr %10, i32 1468
  store i32 128, ptr %209, align 4
  %210 = getelementptr i8, ptr %10, i32 1416
  store i32 128, ptr %210, align 8
  %211 = getelementptr i8, ptr %10, i32 1472
  store i32 128, ptr %211, align 8
  %212 = getelementptr i8, ptr %10, i32 1440
  store i32 128, ptr %212, align 8
  %213 = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 24
  %214 = getelementptr i8, ptr %10, i32 1748
  %215 = load i8, ptr %214, align 4, !range !13
  %216 = icmp eq i8 %215, 0
  %217 = select i1 %216, i64 1099511644553, i64 1099511645065
  store i64 %217, ptr %213, align 8
  br i1 %110, label %230, label %218

218:                                              ; preds = %208
  %219 = call i32 @of_device_is_compatible(ptr noundef nonnull %109, ptr noundef nonnull @.str.3) #18
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %224, label %221

221:                                              ; preds = %218
  %222 = load i64, ptr %213, align 8
  %223 = and i64 %222, -9
  store i64 %223, ptr %213, align 8
  br label %224

224:                                              ; preds = %221, %218
  %225 = call ptr @of_get_property(ptr noundef nonnull %109, ptr noundef nonnull @.str.12, ptr noundef null) #18
  %226 = icmp eq ptr %225, null
  %227 = load i64, ptr %213, align 8
  br i1 %226, label %230, label %228

228:                                              ; preds = %224
  %229 = and i64 %227, -1099511627785
  store i64 %229, ptr %213, align 8
  br label %230

230:                                              ; preds = %228, %224, %208
  %231 = phi i64 [ %217, %208 ], [ %229, %228 ], [ %227, %224 ]
  %232 = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 23
  %233 = load i64, ptr %232, align 16
  %234 = or i64 %233, %231
  store i64 %234, ptr %232, align 16
  %235 = call i32 @register_netdev(ptr noundef nonnull %10) #18
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %242, label %237

237:                                              ; preds = %230
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.13) #19
  %238 = getelementptr i8, ptr %10, i32 1736
  %239 = load ptr, ptr %238, align 8
  call void @clk_disable(ptr noundef %239) #18
  call void @clk_unprepare(ptr noundef %239) #18
  %240 = getelementptr i8, ptr %10, i32 1732
  %241 = load ptr, ptr %240, align 4
  call void @clk_disable(ptr noundef %241) #18
  call void @clk_unprepare(ptr noundef %241) #18
  br label %245

242:                                              ; preds = %230
  %243 = load i32, ptr %51, align 8
  %244 = load ptr, ptr %47, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef nonnull %10, ptr noundef nonnull @.str.14, i32 noundef %243, ptr noundef %244) #19
  br label %267

245:                                              ; preds = %237, %206, %203, %184, %177, %152, %135
  %246 = phi i32 [ -22, %135 ], [ %207, %206 ], [ %235, %237 ], [ -22, %152 ], [ %179, %177 ], [ %182, %184 ], [ %204, %203 ]
  %247 = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 120
  %248 = load ptr, ptr %247, align 8
  %249 = icmp eq ptr %248, null
  br i1 %249, label %251, label %250

250:                                              ; preds = %245
  call void @phy_disconnect(ptr noundef nonnull %248) #18
  br label %251

251:                                              ; preds = %250, %245, %164
  %252 = phi i32 [ %162, %164 ], [ %246, %245 ], [ %246, %250 ]
  %253 = getelementptr i8, ptr %10, i32 1728
  %254 = load ptr, ptr %253, align 8
  %255 = icmp eq ptr %254, null
  br i1 %255, label %258, label %256

256:                                              ; preds = %251
  call void @mdiobus_unregister(ptr noundef nonnull %254) #18
  %257 = load ptr, ptr %253, align 8
  call void @mdiobus_free(ptr noundef %257) #18
  br label %258

258:                                              ; preds = %256, %251, %157, %145
  %259 = phi i32 [ %159, %157 ], [ %146, %145 ], [ %252, %251 ], [ %252, %256 ]
  %260 = load ptr, ptr %47, align 4
  call void @iounmap(ptr noundef %260) #18
  br label %261

261:                                              ; preds = %258, %49
  %262 = phi i32 [ %259, %258 ], [ -5, %49 ]
  %263 = load ptr, ptr %19, align 8
  %264 = call i32 @release_resource(ptr noundef %263) #18
  br label %265

265:                                              ; preds = %261, %40
  %266 = phi i32 [ %262, %261 ], [ -12, %40 ]
  call void @free_netdev(ptr noundef nonnull %10) #18
  br label %267

267:                                              ; preds = %265, %242, %9, %6, %1
  %268 = phi i32 [ 0, %242 ], [ -6, %1 ], [ %7, %6 ], [ %266, %265 ], [ -12, %9 ]
  ret i32 %268
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ftgmac100_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @unregister_netdev(ptr noundef %3) #18
  %4 = getelementptr i8, ptr %3, i32 1736
  %5 = load ptr, ptr %4, align 8
  tail call void @clk_disable(ptr noundef %5) #18
  tail call void @clk_unprepare(ptr noundef %5) #18
  %6 = getelementptr i8, ptr %3, i32 1732
  %7 = load ptr, ptr %6, align 4
  tail call void @clk_disable(ptr noundef %7) #18
  tail call void @clk_unprepare(ptr noundef %7) #18
  %8 = getelementptr i8, ptr %3, i32 1712
  %9 = tail call zeroext i1 @cancel_work_sync(ptr noundef %8) #18
  %10 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 120
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  tail call void @phy_disconnect(ptr noundef nonnull %11) #18
  br label %14

14:                                               ; preds = %13, %1
  %15 = getelementptr i8, ptr %3, i32 1728
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  tail call void @mdiobus_unregister(ptr noundef nonnull %16) #18
  %19 = load ptr, ptr %15, align 8
  tail call void @mdiobus_free(ptr noundef %19) #18
  br label %20

20:                                               ; preds = %18, %14
  %21 = getelementptr i8, ptr %3, i32 1408
  %22 = getelementptr i8, ptr %3, i32 1412
  %23 = load ptr, ptr %22, align 4
  tail call void @iounmap(ptr noundef %23) #18
  %24 = load ptr, ptr %21, align 8
  %25 = tail call i32 @release_resource(ptr noundef %24) #18
  %26 = getelementptr i8, ptr %3, i32 1496
  tail call void @__netif_napi_del(ptr noundef %26) #18
  tail call void @synchronize_net() #18
  tail call void @free_netdev(ptr noundef %3) #18
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ftgmac100_reset_task(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -304
  tail call fastcc void @ftgmac100_reset(ptr noundef %2)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ftgmac100_setup_mdio(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr i8, ptr %0, i32 1488
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 -16
  %5 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = tail call ptr @mdiobus_alloc_size(i32 noundef 0) #18
  %8 = getelementptr i8, ptr %0, i32 1728
  store ptr %7, ptr %8, align 8
  %9 = icmp eq ptr %7, null
  br i1 %9, label %116, label %10

10:                                               ; preds = %1
  %11 = tail call i32 @of_device_is_compatible(ptr noundef %6, ptr noundef nonnull @.str.3) #18
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = tail call i32 @of_device_is_compatible(ptr noundef %6, ptr noundef nonnull @.str.4) #18
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %13, %10
  %17 = getelementptr i8, ptr %0, i32 1412
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 64
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %21 = and i32 %20, 2147483647
  %22 = load ptr, ptr %17, align 4
  %23 = getelementptr i8, ptr %22, i32 64
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #18, !srcloc !12
  br label %24

24:                                               ; preds = %16, %13
  %25 = load ptr, ptr %8, align 8
  %26 = getelementptr inbounds %struct.mii_bus, ptr %25, i32 0, i32 1
  store ptr @.str.32, ptr %26, align 4
  %27 = load ptr, ptr %8, align 8
  %28 = getelementptr inbounds %struct.mii_bus, ptr %27, i32 0, i32 2
  %29 = load ptr, ptr %4, align 8
  %30 = getelementptr i8, ptr %3, i32 -12
  %31 = load i32, ptr %30, align 4
  %32 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %28, i32 noundef 61, ptr noundef nonnull @.str.33, ptr noundef %29, i32 noundef %31)
  %33 = load ptr, ptr %2, align 8
  %34 = load ptr, ptr %8, align 8
  %35 = getelementptr inbounds %struct.mii_bus, ptr %34, i32 0, i32 9
  store ptr %33, ptr %35, align 4
  %36 = getelementptr i8, ptr %0, i32 1484
  %37 = load ptr, ptr %36, align 4
  %38 = load ptr, ptr %8, align 8
  %39 = getelementptr inbounds %struct.mii_bus, ptr %38, i32 0, i32 3
  store ptr %37, ptr %39, align 8
  %40 = load ptr, ptr %8, align 8
  %41 = getelementptr inbounds %struct.mii_bus, ptr %40, i32 0, i32 4
  store ptr @ftgmac100_mdiobus_read, ptr %41, align 4
  %42 = load ptr, ptr %8, align 8
  %43 = getelementptr inbounds %struct.mii_bus, ptr %42, i32 0, i32 5
  store ptr @ftgmac100_mdiobus_write, ptr %43, align 8
  %44 = load ptr, ptr %8, align 8
  %45 = getelementptr %struct.mii_bus, ptr %44, i32 0, i32 15, i32 0
  store i32 -1, ptr %45, align 4
  %46 = load ptr, ptr %8, align 8
  %47 = getelementptr %struct.mii_bus, ptr %46, i32 0, i32 15, i32 1
  store i32 -1, ptr %47, align 4
  %48 = load ptr, ptr %8, align 8
  %49 = getelementptr %struct.mii_bus, ptr %48, i32 0, i32 15, i32 2
  store i32 -1, ptr %49, align 4
  %50 = load ptr, ptr %8, align 8
  %51 = getelementptr %struct.mii_bus, ptr %50, i32 0, i32 15, i32 3
  store i32 -1, ptr %51, align 4
  %52 = load ptr, ptr %8, align 8
  %53 = getelementptr %struct.mii_bus, ptr %52, i32 0, i32 15, i32 4
  store i32 -1, ptr %53, align 4
  %54 = load ptr, ptr %8, align 8
  %55 = getelementptr %struct.mii_bus, ptr %54, i32 0, i32 15, i32 5
  store i32 -1, ptr %55, align 4
  %56 = load ptr, ptr %8, align 8
  %57 = getelementptr %struct.mii_bus, ptr %56, i32 0, i32 15, i32 6
  store i32 -1, ptr %57, align 4
  %58 = load ptr, ptr %8, align 8
  %59 = getelementptr %struct.mii_bus, ptr %58, i32 0, i32 15, i32 7
  store i32 -1, ptr %59, align 4
  %60 = load ptr, ptr %8, align 8
  %61 = getelementptr %struct.mii_bus, ptr %60, i32 0, i32 15, i32 8
  store i32 -1, ptr %61, align 4
  %62 = load ptr, ptr %8, align 8
  %63 = getelementptr %struct.mii_bus, ptr %62, i32 0, i32 15, i32 9
  store i32 -1, ptr %63, align 4
  %64 = load ptr, ptr %8, align 8
  %65 = getelementptr %struct.mii_bus, ptr %64, i32 0, i32 15, i32 10
  store i32 -1, ptr %65, align 4
  %66 = load ptr, ptr %8, align 8
  %67 = getelementptr %struct.mii_bus, ptr %66, i32 0, i32 15, i32 11
  store i32 -1, ptr %67, align 4
  %68 = load ptr, ptr %8, align 8
  %69 = getelementptr %struct.mii_bus, ptr %68, i32 0, i32 15, i32 12
  store i32 -1, ptr %69, align 4
  %70 = load ptr, ptr %8, align 8
  %71 = getelementptr %struct.mii_bus, ptr %70, i32 0, i32 15, i32 13
  store i32 -1, ptr %71, align 4
  %72 = load ptr, ptr %8, align 8
  %73 = getelementptr %struct.mii_bus, ptr %72, i32 0, i32 15, i32 14
  store i32 -1, ptr %73, align 4
  %74 = load ptr, ptr %8, align 8
  %75 = getelementptr %struct.mii_bus, ptr %74, i32 0, i32 15, i32 15
  store i32 -1, ptr %75, align 4
  %76 = load ptr, ptr %8, align 8
  %77 = getelementptr %struct.mii_bus, ptr %76, i32 0, i32 15, i32 16
  store i32 -1, ptr %77, align 4
  %78 = load ptr, ptr %8, align 8
  %79 = getelementptr %struct.mii_bus, ptr %78, i32 0, i32 15, i32 17
  store i32 -1, ptr %79, align 4
  %80 = load ptr, ptr %8, align 8
  %81 = getelementptr %struct.mii_bus, ptr %80, i32 0, i32 15, i32 18
  store i32 -1, ptr %81, align 4
  %82 = load ptr, ptr %8, align 8
  %83 = getelementptr %struct.mii_bus, ptr %82, i32 0, i32 15, i32 19
  store i32 -1, ptr %83, align 4
  %84 = load ptr, ptr %8, align 8
  %85 = getelementptr %struct.mii_bus, ptr %84, i32 0, i32 15, i32 20
  store i32 -1, ptr %85, align 4
  %86 = load ptr, ptr %8, align 8
  %87 = getelementptr %struct.mii_bus, ptr %86, i32 0, i32 15, i32 21
  store i32 -1, ptr %87, align 4
  %88 = load ptr, ptr %8, align 8
  %89 = getelementptr %struct.mii_bus, ptr %88, i32 0, i32 15, i32 22
  store i32 -1, ptr %89, align 4
  %90 = load ptr, ptr %8, align 8
  %91 = getelementptr %struct.mii_bus, ptr %90, i32 0, i32 15, i32 23
  store i32 -1, ptr %91, align 4
  %92 = load ptr, ptr %8, align 8
  %93 = getelementptr %struct.mii_bus, ptr %92, i32 0, i32 15, i32 24
  store i32 -1, ptr %93, align 4
  %94 = load ptr, ptr %8, align 8
  %95 = getelementptr %struct.mii_bus, ptr %94, i32 0, i32 15, i32 25
  store i32 -1, ptr %95, align 4
  %96 = load ptr, ptr %8, align 8
  %97 = getelementptr %struct.mii_bus, ptr %96, i32 0, i32 15, i32 26
  store i32 -1, ptr %97, align 4
  %98 = load ptr, ptr %8, align 8
  %99 = getelementptr %struct.mii_bus, ptr %98, i32 0, i32 15, i32 27
  store i32 -1, ptr %99, align 4
  %100 = load ptr, ptr %8, align 8
  %101 = getelementptr %struct.mii_bus, ptr %100, i32 0, i32 15, i32 28
  store i32 -1, ptr %101, align 4
  %102 = load ptr, ptr %8, align 8
  %103 = getelementptr %struct.mii_bus, ptr %102, i32 0, i32 15, i32 29
  store i32 -1, ptr %103, align 4
  %104 = load ptr, ptr %8, align 8
  %105 = getelementptr %struct.mii_bus, ptr %104, i32 0, i32 15, i32 30
  store i32 -1, ptr %105, align 4
  %106 = load ptr, ptr %8, align 8
  %107 = getelementptr %struct.mii_bus, ptr %106, i32 0, i32 15, i32 31
  store i32 -1, ptr %107, align 4
  %108 = tail call ptr @of_get_child_by_name(ptr noundef %6, ptr noundef nonnull @.str.10) #18
  %109 = load ptr, ptr %8, align 8
  %110 = tail call i32 @of_mdiobus_register(ptr noundef %109, ptr noundef %108) #18
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %24
  %113 = load ptr, ptr %2, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %113, ptr noundef nonnull @.str.34) #19
  %114 = load ptr, ptr %8, align 8
  tail call void @mdiobus_free(ptr noundef %114) #18
  br label %116

115:                                              ; preds = %24
  tail call void @of_node_put(ptr noundef %108) #18
  br label %116

116:                                              ; preds = %115, %112, %1
  %117 = phi i32 [ %110, %112 ], [ 0, %115 ], [ -5, %1 ]
  ret i32 %117
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_get_and_connect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ftgmac100_adjust_link(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 1408
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.phy_device, ptr %4, i32 0, i32 4
  %6 = load i16, ptr %5, align 8
  %7 = and i16 %6, 8192
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.phy_device, ptr %4, i32 0, i32 8
  %11 = load i32, ptr %10, align 8
  br label %12

12:                                               ; preds = %9, %1
  %13 = phi i32 [ %11, %9 ], [ 0, %1 ]
  %14 = getelementptr i8, ptr %0, i32 1762
  %15 = load i8, ptr %14, align 2, !range !13
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.phy_device, ptr %4, i32 0, i32 11
  %19 = load i32, ptr %18, align 4
  %20 = icmp ne i32 %19, 0
  %21 = getelementptr inbounds %struct.phy_device, ptr %4, i32 0, i32 12
  %22 = load i32, ptr %21, align 8
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %20, %23
  br label %32

25:                                               ; preds = %12
  %26 = getelementptr i8, ptr %0, i32 1761
  %27 = load i8, ptr %26, align 1, !range !13
  %28 = getelementptr i8, ptr %0, i32 1760
  %29 = load i8, ptr %28, align 8, !range !13
  %30 = icmp ne i8 %29, 0
  %31 = icmp ne i8 %27, 0
  br label %32

32:                                               ; preds = %25, %17
  %33 = phi i1 [ %30, %25 ], [ %24, %17 ]
  %34 = phi i1 [ %31, %25 ], [ %20, %17 ]
  %35 = getelementptr inbounds %struct.phy_device, ptr %4, i32 0, i32 8
  %36 = load i32, ptr %35, align 8
  %37 = getelementptr i8, ptr %0, i32 1740
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %40, label %56

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.phy_device, ptr %4, i32 0, i32 9
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr i8, ptr %0, i32 1744
  %44 = load i32, ptr %43, align 8
  %45 = icmp eq i32 %42, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %40
  %47 = getelementptr i8, ptr %0, i32 1761
  %48 = load i8, ptr %47, align 1, !range !13
  %49 = zext i1 %34 to i8
  %50 = icmp eq i8 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = getelementptr i8, ptr %0, i32 1760
  %53 = load i8, ptr %52, align 8, !range !13
  %54 = zext i1 %33 to i8
  %55 = icmp eq i8 %53, %54
  br i1 %55, label %82, label %56

56:                                               ; preds = %51, %46, %40, %32
  %57 = icmp eq i32 %13, 0
  %58 = icmp eq i32 %38, 0
  %59 = select i1 %57, i1 %58, i1 false
  br i1 %59, label %61, label %60

60:                                               ; preds = %56
  tail call void @phy_print_status(ptr noundef %4) #18
  br label %61

61:                                               ; preds = %60, %56
  store i32 %13, ptr %37, align 4
  %62 = getelementptr inbounds %struct.phy_device, ptr %4, i32 0, i32 9
  %63 = load i32, ptr %62, align 4
  %64 = getelementptr i8, ptr %0, i32 1744
  store i32 %63, ptr %64, align 8
  %65 = getelementptr i8, ptr %0, i32 1761
  %66 = zext i1 %34 to i8
  store i8 %66, ptr %65, align 1
  %67 = getelementptr i8, ptr %0, i32 1760
  %68 = zext i1 %33 to i8
  store i8 %68, ptr %67, align 8
  br i1 %57, label %82, label %69

69:                                               ; preds = %61
  %70 = getelementptr i8, ptr %0, i32 1412
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr i8, ptr %71, i32 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 0) #18, !srcloc !12
  %73 = load ptr, ptr %3, align 8
  %74 = icmp eq ptr %73, null
  br i1 %74, label %77, label %75

75:                                               ; preds = %69
  %76 = getelementptr inbounds %struct.phy_device, ptr %73, i32 0, i32 28
  tail call void @mutex_unlock(ptr noundef %76) #18
  br label %77

77:                                               ; preds = %75, %69
  tail call fastcc void @ftgmac100_reset(ptr noundef %2)
  %78 = load ptr, ptr %3, align 8
  %79 = icmp eq ptr %78, null
  br i1 %79, label %82, label %80

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.phy_device, ptr %78, i32 0, i32 28
  tail call void @mutex_lock(ptr noundef %81) #18
  br label %82

82:                                               ; preds = %80, %77, %61, %51
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_support_asym_pause(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_attached_info(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ftgmac100_mii_probe(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr i8, ptr %0, i32 1488
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 25
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #18
  store i32 0, ptr %2, align 4, !annotation !10
  %7 = call i32 @of_get_phy_mode(ptr noundef %6, ptr noundef nonnull %2) #18
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 9, ptr %2, align 4
  br label %10

10:                                               ; preds = %9, %1
  %11 = getelementptr i8, ptr %0, i32 1764
  %12 = load i8, ptr %11, align 4, !range !13
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %10
  %15 = load i32, ptr %2, align 4
  %16 = add i32 %15, -9
  %17 = icmp ult i32 %16, 4
  br i1 %17, label %25, label %18

18:                                               ; preds = %14
  %19 = icmp ult i32 %15, 30
  br i1 %19, label %20, label %23

20:                                               ; preds = %18
  %21 = getelementptr inbounds [30 x ptr], ptr @switch.table.ftgmac100_mii_probe, i32 0, i32 %15
  %22 = load ptr, ptr %21, align 4
  br label %23

23:                                               ; preds = %20, %18
  %24 = phi ptr [ %22, %20 ], [ @.str.70, %18 ]
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %0, ptr noundef nonnull @.str.37, ptr noundef nonnull %24) #19
  br label %25

25:                                               ; preds = %23, %14, %10
  %26 = getelementptr i8, ptr %0, i32 1728
  %27 = load ptr, ptr %26, align 8
  %28 = call ptr @phy_find_first(ptr noundef %27) #18
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %0, ptr noundef nonnull @.str.38, ptr noundef %0) #19
  br label %45

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.device, ptr %28, i32 0, i32 3
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load ptr, ptr %28, align 4
  br label %37

37:                                               ; preds = %35, %31
  %38 = phi ptr [ %36, %35 ], [ %33, %31 ]
  %39 = load i32, ptr %2, align 4
  %40 = call ptr @phy_connect(ptr noundef %0, ptr noundef %38, ptr noundef nonnull @ftgmac100_adjust_link, i32 noundef %39) #18
  %41 = icmp ugt ptr %40, inttoptr (i32 -4096 to ptr)
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.39, ptr noundef %0) #19
  %43 = ptrtoint ptr %40 to i32
  br label %45

44:                                               ; preds = %37
  call void @phy_support_asym_pause(ptr noundef %40) #18
  call void @phy_attached_info(ptr noundef %40) #18
  br label %45

45:                                               ; preds = %44, %42, %30
  %46 = phi i32 [ %43, %42 ], [ 0, %44 ], [ -19, %30 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #18
  ret i32 %46
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @release_resource(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ftgmac100_get_drvinfo(ptr nocapture noundef readonly %0, ptr noundef %1) #5 {
  %3 = getelementptr inbounds %struct.ethtool_drvinfo, ptr %1, i32 0, i32 1
  %4 = tail call i32 @strlcpy(ptr noundef %3, ptr noundef nonnull @.str, i32 noundef 32) #18
  %5 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 111, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 111
  %10 = load ptr, ptr %9, align 4
  br label %11

11:                                               ; preds = %8, %2
  %12 = phi ptr [ %10, %8 ], [ %6, %2 ]
  %13 = getelementptr inbounds %struct.ethtool_drvinfo, ptr %1, i32 0, i32 4
  %14 = tail call i32 @strlcpy(ptr noundef %13, ptr noundef %12, i32 noundef 32) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_nway_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @ftgmac100_get_ringparam(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) #6 {
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(36) %1, i8 0, i32 36, i1 false)
  %5 = getelementptr inbounds %struct.ethtool_ringparam, ptr %1, i32 0, i32 1
  store i32 1024, ptr %5, align 4
  %6 = getelementptr inbounds %struct.ethtool_ringparam, ptr %1, i32 0, i32 4
  store i32 1024, ptr %6, align 4
  %7 = getelementptr i8, ptr %0, i32 1416
  %8 = load i32, ptr %7, align 8
  %9 = getelementptr inbounds %struct.ethtool_ringparam, ptr %1, i32 0, i32 5
  store i32 %8, ptr %9, align 4
  %10 = getelementptr i8, ptr %0, i32 1440
  %11 = load i32, ptr %10, align 8
  %12 = getelementptr inbounds %struct.ethtool_ringparam, ptr %1, i32 0, i32 8
  store i32 %11, ptr %12, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ftgmac100_set_ringparam(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) #2 {
  %5 = getelementptr inbounds %struct.ethtool_ringparam, ptr %1, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = icmp ugt i32 %6, 1024
  br i1 %7, label %35, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ethtool_ringparam, ptr %1, i32 0, i32 8
  %10 = load i32, ptr %9, align 4
  %11 = icmp ugt i32 %10, 1024
  %12 = icmp ult i32 %6, 32
  %13 = select i1 %11, i1 true, i1 %12
  %14 = icmp ult i32 %10, 32
  %15 = or i1 %14, %13
  %16 = xor i1 %15, true
  %17 = tail call i32 @llvm.ctpop.i32(i32 %6) #18, !range !14
  %18 = icmp ult i32 %17, 2
  %19 = select i1 %16, i1 %18, i1 false
  %20 = tail call i32 @llvm.ctpop.i32(i32 %10) #18, !range !14
  %21 = icmp ult i32 %20, 2
  %22 = select i1 %19, i1 %21, i1 false
  br i1 %22, label %23, label %35

23:                                               ; preds = %8
  %24 = getelementptr i8, ptr %0, i32 1468
  store i32 %6, ptr %24, align 4
  %25 = load i32, ptr %9, align 4
  %26 = getelementptr i8, ptr %0, i32 1472
  store i32 %25, ptr %26, align 8
  %27 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %28 = load volatile i32, ptr %27, align 4
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %23
  %32 = getelementptr i8, ptr %0, i32 1712
  %33 = load ptr, ptr @system_wq, align 4
  %34 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %33, ptr noundef %32) #18
  br label %35

35:                                               ; preds = %31, %23, %8, %4
  %36 = phi i32 [ -22, %8 ], [ -22, %4 ], [ 0, %31 ], [ 0, %23 ]
  ret i32 %36
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @ftgmac100_get_pauseparam(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = getelementptr i8, ptr %0, i32 1762
  %4 = load i8, ptr %3, align 2, !range !13
  %5 = zext i8 %4 to i32
  %6 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %1, i32 0, i32 1
  store i32 %5, ptr %6, align 4
  %7 = getelementptr i8, ptr %0, i32 1760
  %8 = load i8, ptr %7, align 8, !range !13
  %9 = zext i8 %8 to i32
  %10 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %1, i32 0, i32 3
  store i32 %9, ptr %10, align 4
  %11 = getelementptr i8, ptr %0, i32 1761
  %12 = load i8, ptr %11, align 1, !range !13
  %13 = zext i8 %12 to i32
  %14 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %1, i32 0, i32 2
  store i32 %13, ptr %14, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ftgmac100_set_pauseparam(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp ne i32 %6, 0
  %8 = getelementptr i8, ptr %0, i32 1762
  %9 = zext i1 %7 to i8
  store i8 %9, ptr %8, align 2
  %10 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %1, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = icmp ne i32 %11, 0
  %13 = getelementptr i8, ptr %0, i32 1760
  %14 = zext i1 %12 to i8
  store i8 %14, ptr %13, align 8
  %15 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %1, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = icmp ne i32 %16, 0
  %18 = getelementptr i8, ptr %0, i32 1761
  %19 = zext i1 %17 to i8
  store i8 %19, ptr %18, align 1
  %20 = icmp eq ptr %4, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %23 = load volatile i32, ptr %22, align 4
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %52, label %41

26:                                               ; preds = %2
  %27 = load i32, ptr %15, align 4
  %28 = icmp ne i32 %27, 0
  %29 = load i32, ptr %10, align 4
  %30 = icmp ne i32 %29, 0
  tail call void @phy_set_asym_pause(ptr noundef nonnull %4, i1 noundef zeroext %28, i1 noundef zeroext %30) #18
  %31 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %32 = load volatile i32, ptr %31, align 4
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %52, label %35

35:                                               ; preds = %26
  %36 = load i8, ptr %8, align 2, !range !13
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %35
  %39 = load i8, ptr %18, align 1, !range !13
  %40 = load i8, ptr %13, align 8, !range !13
  br label %41

41:                                               ; preds = %38, %21
  %42 = phi i8 [ %40, %38 ], [ %14, %21 ]
  %43 = phi i8 [ %39, %38 ], [ %19, %21 ]
  %44 = icmp eq i8 %43, 0
  %45 = select i1 %44, i32 1048576, i32 1048577
  %46 = icmp eq i8 %42, 0
  %47 = or i32 %45, 4
  %48 = select i1 %46, i32 %45, i32 %47
  %49 = getelementptr i8, ptr %0, i32 1412
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr i8, ptr %50, i32 104
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %48) #18, !srcloc !12
  br label %52

52:                                               ; preds = %41, %35, %26, %21
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_get_link_ksettings(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_set_link_ksettings(ptr noundef, ptr noundef) #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_set_asym_pause(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ftgmac100_open(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 1408
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 4096) #20
  %5 = getelementptr i8, ptr %0, i32 1428
  store ptr %4, ptr %5, align 4
  %6 = icmp eq ptr %4, null
  br i1 %6, label %31, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 4096) #20
  %10 = getelementptr i8, ptr %0, i32 1452
  store ptr %9, ptr %10, align 4
  %11 = icmp eq ptr %9, null
  br i1 %11, label %31, label %12

12:                                               ; preds = %7
  %13 = getelementptr i8, ptr %0, i32 1488
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr i8, ptr %0, i32 1424
  %16 = tail call ptr @dma_alloc_attrs(ptr noundef %14, i32 noundef 16384, ptr noundef %15, i32 noundef 3264, i32 noundef 0) #18
  %17 = getelementptr i8, ptr %0, i32 1420
  store ptr %16, ptr %17, align 4
  %18 = icmp eq ptr %16, null
  br i1 %18, label %31, label %19

19:                                               ; preds = %12
  %20 = load ptr, ptr %13, align 8
  %21 = getelementptr i8, ptr %0, i32 1448
  %22 = tail call ptr @dma_alloc_attrs(ptr noundef %20, i32 noundef 16384, ptr noundef %21, i32 noundef 3264, i32 noundef 0) #18
  %23 = getelementptr i8, ptr %0, i32 1444
  store ptr %22, ptr %23, align 4
  %24 = icmp eq ptr %22, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr %13, align 8
  %27 = getelementptr i8, ptr %0, i32 1480
  %28 = tail call ptr @dma_alloc_attrs(ptr noundef %26, i32 noundef 1536, ptr noundef %27, i32 noundef 3264, i32 noundef 0) #18
  %29 = getelementptr i8, ptr %0, i32 1476
  store ptr %28, ptr %29, align 4
  %30 = icmp eq ptr %28, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %25, %19, %12, %7, %1
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.15) #19
  br label %78

32:                                               ; preds = %25
  %33 = getelementptr i8, ptr %0, i32 1748
  %34 = load i8, ptr %33, align 4, !range !13
  %35 = icmp eq i8 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = select i1 %35, i32 0, i32 100
  %39 = getelementptr i8, ptr %0, i32 1744
  store i32 %37, ptr %39, align 8
  %40 = getelementptr i8, ptr %0, i32 1740
  store i32 %38, ptr %40, align 4
  %41 = tail call fastcc i32 @ftgmac100_reset_and_config_mac(ptr noundef %2)
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %73

43:                                               ; preds = %32
  %44 = getelementptr i8, ptr %0, i32 1496
  tail call void @netif_napi_add(ptr noundef %0, ptr noundef %44, ptr noundef nonnull @ftgmac100_poll, i32 noundef 64) #18
  %45 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 59
  %46 = load i32, ptr %45, align 8
  %47 = tail call i32 @request_threaded_irq(i32 noundef %46, ptr noundef nonnull @ftgmac100_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %0, ptr noundef %0) #18
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %43
  %50 = load i32, ptr %45, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.16, i32 noundef %50) #19
  br label %71

51:                                               ; preds = %43
  %52 = tail call fastcc i32 @ftgmac100_init_all(ptr noundef %2, i1 noundef zeroext false)
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %51
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.17) #19
  br label %67

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %57 = load ptr, ptr %56, align 8
  %58 = icmp eq ptr %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %55
  tail call void @phy_start(ptr noundef nonnull %57) #18
  br label %78

60:                                               ; preds = %55
  %61 = load i8, ptr %33, align 4, !range !13
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %78, label %63

63:                                               ; preds = %60
  tail call void @netif_carrier_on(ptr noundef %0) #18
  tail call void @napi_disable(ptr noundef %44) #18
  %64 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  %65 = load ptr, ptr %64, align 64
  %66 = getelementptr inbounds %struct.netdev_queue, ptr %65, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %66) #18
  br label %67

67:                                               ; preds = %63, %54
  %68 = phi i32 [ %52, %54 ], [ -25, %63 ]
  tail call fastcc void @ftgmac100_free_buffers(ptr noundef %2)
  %69 = load i32, ptr %45, align 8
  %70 = tail call ptr @free_irq(i32 noundef %69, ptr noundef %0) #18
  br label %71

71:                                               ; preds = %67, %49
  %72 = phi i32 [ %47, %49 ], [ %68, %67 ]
  tail call void @__netif_napi_del(ptr noundef %44) #18
  tail call void @synchronize_net() #18
  br label %73

73:                                               ; preds = %71, %32
  %74 = phi i32 [ %41, %32 ], [ %72, %71 ]
  %75 = getelementptr i8, ptr %0, i32 1412
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr i8, ptr %76, i32 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 0) #18, !srcloc !12
  tail call fastcc void @ftgmac100_free_rings(ptr noundef %2)
  br label %78

78:                                               ; preds = %73, %60, %59, %31
  %79 = phi i32 [ -12, %31 ], [ %74, %73 ], [ 0, %60 ], [ 0, %59 ]
  ret i32 %79
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ftgmac100_stop(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 1412
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 0) #18, !srcloc !12
  %5 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  %6 = load ptr, ptr %5, align 64
  %7 = getelementptr inbounds %struct.netdev_queue, ptr %6, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %7) #18
  %8 = getelementptr i8, ptr %0, i32 1496
  tail call void @napi_disable(ptr noundef %8) #18
  tail call void @__netif_napi_del(ptr noundef %8) #18
  tail call void @synchronize_net() #18
  %9 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  tail call void @phy_stop(ptr noundef nonnull %10) #18
  br label %13

13:                                               ; preds = %12, %1
  %14 = getelementptr i8, ptr %0, i32 1408
  %15 = load ptr, ptr %2, align 4
  %16 = getelementptr i8, ptr %15, i32 80
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 0) #18, !srcloc !12
  %17 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 59
  %18 = load i32, ptr %17, align 8
  %19 = tail call ptr @free_irq(i32 noundef %18, ptr noundef %0) #18
  tail call fastcc void @ftgmac100_free_buffers(ptr noundef %14)
  tail call fastcc void @ftgmac100_free_rings(ptr noundef %14)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ftgmac100_hard_start_xmit(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 8
  %5 = icmp ult i32 %4, 60
  br i1 %5, label %6, label %25, !prof !15

6:                                                ; preds = %2
  %7 = sub nuw nsw i32 60, %4
  %8 = tail call i32 @__skb_pad(ptr noundef %0, i32 noundef %7, i1 noundef zeroext true) #18
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14, !prof !16

14:                                               ; preds = %10
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #18, !srcloc !17
  unreachable

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr i8, ptr %17, i32 %7
  store ptr %18, ptr %16, align 8
  %19 = load i32, ptr %3, align 8
  %20 = add i32 %19, %7
  store i32 %20, ptr %3, align 8
  br label %25

21:                                               ; preds = %6
  %22 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 7
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, 1
  store i32 %24, ptr %22, align 4
  br label %263

25:                                               ; preds = %15, %2
  %26 = phi i32 [ %20, %15 ], [ %4, %2 ]
  %27 = icmp ugt i32 %26, 1536
  br i1 %27, label %28, label %30, !prof !15

28:                                               ; preds = %25
  %29 = tail call i32 @net_ratelimit() #18
  br label %259

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.skb_shared_info, ptr %32, i32 0, i32 2
  %34 = load i8, ptr %33, align 2
  %35 = zext i8 %34 to i32
  %36 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %37 = load i16, ptr %36, align 8
  %38 = and i16 %37, 96
  %39 = icmp eq i16 %38, 96
  br i1 %39, label %40, label %59

40:                                               ; preds = %30
  %41 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 16
  %42 = load i16, ptr %41, align 8
  %43 = icmp eq i16 %42, 8
  br i1 %43, label %44, label %55

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %46 = load ptr, ptr %45, align 8
  %47 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %48 = load i16, ptr %47, align 4
  %49 = zext i16 %48 to i32
  %50 = getelementptr i8, ptr %46, i32 %49
  %51 = getelementptr inbounds %struct.iphdr, ptr %50, i32 0, i32 6
  %52 = load i8, ptr %51, align 1
  switch i8 %52, label %55 [
    i8 6, label %53
    i8 17, label %54
    i8 0, label %59
  ]

53:                                               ; preds = %44
  br label %59

54:                                               ; preds = %44
  br label %59

55:                                               ; preds = %44, %40
  %56 = phi i32 [ 524288, %44 ], [ 0, %40 ]
  %57 = tail call i32 @skb_checksum_help(ptr noundef %0) #18
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %259

59:                                               ; preds = %55, %54, %53, %44, %30
  %60 = phi i32 [ %56, %55 ], [ 0, %30 ], [ 655360, %53 ], [ 786432, %54 ], [ 524288, %44 ]
  %61 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 3
  %62 = load i16, ptr %61, align 2
  %63 = and i16 %62, 1
  %64 = icmp eq i16 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 9
  %67 = load i16, ptr %66, align 2
  %68 = zext i16 %67 to i32
  %69 = or i32 %60, %68
  %70 = or i32 %69, 65536
  br label %71

71:                                               ; preds = %65, %59
  %72 = phi i32 [ %60, %59 ], [ %70, %65 ]
  %73 = load i32, ptr %3, align 8
  %74 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %75 = load i32, ptr %74, align 4
  %76 = sub i32 %73, %75
  %77 = getelementptr i8, ptr %1, i32 1488
  %78 = load ptr, ptr %77, align 8
  %79 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %80 = load ptr, ptr %79, align 4
  %81 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %80) #18
  %82 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %83 = xor i1 %82, true
  %84 = select i1 %81, i1 %83, i1 false
  br i1 %84, label %85, label %94, !prof !15

85:                                               ; preds = %71
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %86 = tail call ptr @dev_driver_string(ptr noundef %78) #18
  %87 = getelementptr inbounds %struct.device, ptr %78, i32 0, i32 3
  %88 = load ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = load ptr, ptr %78, align 4
  br label %92

92:                                               ; preds = %90, %85
  %93 = phi ptr [ %91, %90 ], [ %88, %85 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.23, ptr noundef %86, ptr noundef %93) #18
  br label %94

94:                                               ; preds = %92, %71
  br i1 %81, label %104, label %95

95:                                               ; preds = %94
  %96 = load ptr, ptr @mem_map, align 4
  %97 = ptrtoint ptr %80 to i32
  %98 = add i32 %97, 1073741824
  %99 = lshr i32 %98, 12
  %100 = getelementptr %struct.page, ptr %96, i32 %99
  %101 = and i32 %97, 4095
  %102 = tail call i32 @dma_map_page_attrs(ptr noundef %78, ptr noundef %100, i32 noundef %101, i32 noundef %76, i32 noundef 1, i32 noundef 0) #18
  %103 = icmp eq i32 %102, -1
  br i1 %103, label %104, label %108

104:                                              ; preds = %95, %94
  %105 = tail call i32 @net_ratelimit() #18
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %259, label %107

107:                                              ; preds = %104
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.26) #19
  br label %259

108:                                              ; preds = %95
  %109 = getelementptr i8, ptr %1, i32 1460
  %110 = load i32, ptr %109, align 4
  %111 = getelementptr i8, ptr %1, i32 1444
  %112 = load ptr, ptr %111, align 4
  %113 = getelementptr %struct.ftgmac100_txdes, ptr %112, i32 %110
  %114 = getelementptr i8, ptr %1, i32 1452
  %115 = load ptr, ptr %114, align 4
  %116 = getelementptr ptr, ptr %115, i32 %110
  store ptr %0, ptr %116, align 4
  %117 = getelementptr i8, ptr %1, i32 1440
  %118 = load i32, ptr %117, align 8
  %119 = add i32 %118, -1
  %120 = icmp eq i32 %119, %110
  br i1 %120, label %121, label %124

121:                                              ; preds = %108
  %122 = getelementptr i8, ptr %1, i32 1464
  %123 = load i32, ptr %122, align 8
  br label %124

124:                                              ; preds = %121, %108
  %125 = phi i32 [ %123, %121 ], [ 0, %108 ]
  %126 = and i32 %76, 16383
  %127 = icmp eq i8 %34, 0
  %128 = select i1 %127, i32 -1342177280, i32 -1610612736
  %129 = or i32 %126, %128
  %130 = or i32 %129, %125
  %131 = getelementptr %struct.ftgmac100_txdes, ptr %112, i32 %110, i32 3
  store i32 %102, ptr %131, align 4
  %132 = getelementptr %struct.ftgmac100_txdes, ptr %112, i32 %110, i32 1
  store i32 %72, ptr %132, align 4
  %133 = add i32 %110, 1
  %134 = load i32, ptr %117, align 8
  %135 = add i32 %134, -1
  %136 = and i32 %135, %133
  br i1 %127, label %178, label %137

137:                                              ; preds = %124
  %138 = getelementptr i8, ptr %1, i32 1464
  %139 = add nsw i32 %35, -1
  br label %140

140:                                              ; preds = %163, %137
  %141 = phi i32 [ 0, %137 ], [ %176, %163 ]
  %142 = phi i32 [ %136, %137 ], [ %175, %163 ]
  %143 = load ptr, ptr %31, align 4
  %144 = getelementptr %struct.skb_shared_info, ptr %143, i32 0, i32 12, i32 %141
  %145 = getelementptr %struct.skb_shared_info, ptr %143, i32 0, i32 12, i32 %141, i32 1
  %146 = load i32, ptr %145, align 4
  %147 = load ptr, ptr %77, align 8
  %148 = load ptr, ptr %144, align 4
  %149 = getelementptr %struct.skb_shared_info, ptr %143, i32 0, i32 12, i32 %141, i32 2
  %150 = load i32, ptr %149, align 4
  %151 = tail call i32 @dma_map_page_attrs(ptr noundef %147, ptr noundef %148, i32 noundef %150, i32 noundef %146, i32 noundef 1, i32 noundef 0) #18
  %152 = icmp eq i32 %151, -1
  br i1 %152, label %206, label %153

153:                                              ; preds = %140
  %154 = load ptr, ptr %114, align 4
  %155 = getelementptr ptr, ptr %154, i32 %142
  store ptr %0, ptr %155, align 4
  %156 = load ptr, ptr %111, align 4
  %157 = getelementptr %struct.ftgmac100_txdes, ptr %156, i32 %142
  %158 = load i32, ptr %117, align 8
  %159 = add i32 %158, -1
  %160 = icmp eq i32 %159, %142
  br i1 %160, label %161, label %163

161:                                              ; preds = %153
  %162 = load i32, ptr %138, align 8
  br label %163

163:                                              ; preds = %161, %153
  %164 = phi i32 [ %162, %161 ], [ 0, %153 ]
  %165 = and i32 %146, 16383
  %166 = icmp eq i32 %141, %139
  %167 = select i1 %166, i32 -1879048192, i32 -2147483648
  %168 = or i32 %165, %167
  %169 = or i32 %168, %164
  store i32 %169, ptr %157, align 16
  %170 = getelementptr %struct.ftgmac100_txdes, ptr %156, i32 %142, i32 1
  store i32 0, ptr %170, align 4
  %171 = getelementptr %struct.ftgmac100_txdes, ptr %156, i32 %142, i32 3
  store i32 %151, ptr %171, align 4
  %172 = add i32 %142, 1
  %173 = load i32, ptr %117, align 8
  %174 = add i32 %173, -1
  %175 = and i32 %174, %172
  %176 = add nuw nsw i32 %141, 1
  %177 = icmp eq i32 %176, %35
  br i1 %177, label %178, label %140

178:                                              ; preds = %163, %124
  %179 = phi i32 [ %136, %124 ], [ %175, %163 ]
  tail call void asm sideeffect "dmb oshst", "~{memory}"() #18, !srcloc !18
  store i32 %130, ptr %113, align 16
  store i32 %179, ptr %109, align 4
  %180 = getelementptr i8, ptr %1, i32 1456
  %181 = load i32, ptr %180, align 8
  %182 = xor i32 %179, -1
  %183 = add i32 %181, %182
  %184 = load i32, ptr %117, align 8
  %185 = add i32 %184, -1
  %186 = and i32 %185, %183
  %187 = icmp ult i32 %186, 18
  br i1 %187, label %188, label %202, !prof !15

188:                                              ; preds = %178
  %189 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 87
  %190 = load ptr, ptr %189, align 64
  %191 = getelementptr inbounds %struct.netdev_queue, ptr %190, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %191) #18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !19
  %192 = load i32, ptr %180, align 8
  %193 = load i32, ptr %109, align 4
  %194 = xor i32 %193, -1
  %195 = add i32 %192, %194
  %196 = load i32, ptr %117, align 8
  %197 = add i32 %196, -1
  %198 = and i32 %197, %195
  %199 = icmp ugt i32 %198, 17
  br i1 %199, label %200, label %202

200:                                              ; preds = %188
  %201 = load ptr, ptr %189, align 64
  tail call void @netif_tx_wake_queue(ptr noundef %201) #18
  br label %202

202:                                              ; preds = %200, %188, %178
  %203 = getelementptr i8, ptr %1, i32 1412
  %204 = load ptr, ptr %203, align 4
  %205 = getelementptr i8, ptr %204, i32 24
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %205, i32 1) #18, !srcloc !12
  br label %263

206:                                              ; preds = %140
  %207 = tail call i32 @net_ratelimit() #18
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %210, label %209

209:                                              ; preds = %206
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.27) #19
  br label %210

210:                                              ; preds = %209, %206
  %211 = load i32, ptr %109, align 4
  %212 = load i32, ptr %131, align 4
  %213 = load i32, ptr %3, align 8
  %214 = load i32, ptr %74, align 4
  %215 = sub i32 %213, %214
  %216 = load ptr, ptr %77, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %216, i32 noundef %212, i32 noundef %215, i32 noundef 1, i32 noundef 0) #18
  %217 = and i32 %130, 268435456
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %220, label %219

219:                                              ; preds = %210
  tail call void @consume_skb(ptr noundef %0) #18
  br label %220

220:                                              ; preds = %219, %210
  %221 = load ptr, ptr %114, align 4
  %222 = getelementptr ptr, ptr %221, i32 %211
  store ptr null, ptr %222, align 4
  %223 = load i32, ptr %138, align 8
  %224 = and i32 %223, %130
  store i32 %224, ptr %113, align 16
  %225 = icmp eq i32 %141, 0
  br i1 %225, label %259, label %226

226:                                              ; preds = %252, %220
  %227 = phi i32 [ %257, %252 ], [ 0, %220 ]
  %228 = phi i32 [ %232, %252 ], [ %211, %220 ]
  %229 = add i32 %228, 1
  %230 = load i32, ptr %117, align 8
  %231 = add i32 %230, -1
  %232 = and i32 %231, %229
  %233 = load ptr, ptr %111, align 4
  %234 = getelementptr %struct.ftgmac100_txdes, ptr %233, i32 %232
  %235 = load i32, ptr %234, align 16
  %236 = getelementptr %struct.ftgmac100_txdes, ptr %233, i32 %232, i32 3
  %237 = load i32, ptr %236, align 4
  %238 = and i32 %235, 536870912
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %244, label %240

240:                                              ; preds = %226
  %241 = load i32, ptr %3, align 8
  %242 = load i32, ptr %74, align 4
  %243 = sub i32 %241, %242
  br label %246

244:                                              ; preds = %226
  %245 = and i32 %235, 16383
  br label %246

246:                                              ; preds = %244, %240
  %247 = phi i32 [ %245, %244 ], [ %243, %240 ]
  %248 = load ptr, ptr %77, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %248, i32 noundef %237, i32 noundef %247, i32 noundef 1, i32 noundef 0) #18
  %249 = and i32 %235, 268435456
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %252, label %251

251:                                              ; preds = %246
  tail call void @consume_skb(ptr noundef %0) #18
  br label %252

252:                                              ; preds = %251, %246
  %253 = load ptr, ptr %114, align 4
  %254 = getelementptr ptr, ptr %253, i32 %232
  store ptr null, ptr %254, align 4
  %255 = load i32, ptr %138, align 8
  %256 = and i32 %255, %235
  store i32 %256, ptr %234, align 16
  %257 = add nuw nsw i32 %227, 1
  %258 = icmp eq i32 %257, %141
  br i1 %258, label %259, label %226

259:                                              ; preds = %252, %220, %107, %104, %55, %28
  tail call void @__dev_kfree_skb_any(ptr noundef %0, i32 noundef 1) #18
  %260 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 7
  %261 = load i32, ptr %260, align 4
  %262 = add i32 %261, 1
  store i32 %262, ptr %260, align 4
  br label %263

263:                                              ; preds = %259, %202, %21
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ftgmac100_set_rx_mode(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 1756
  store i32 0, ptr %2, align 4
  %3 = getelementptr i8, ptr %0, i32 1752
  store i32 0, ptr %3, align 8
  %4 = getelementptr i8, ptr %0, i32 1484
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 61
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %30, label %9

9:                                                ; preds = %25, %1
  %10 = phi i32 [ %26, %25 ], [ 0, %1 ]
  %11 = phi i32 [ %27, %25 ], [ 0, %1 ]
  %12 = phi ptr [ %28, %25 ], [ %7, %1 ]
  %13 = getelementptr inbounds %struct.netdev_hw_addr, ptr %12, i32 0, i32 2
  %14 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %13, i32 noundef 6) #21
  %15 = lshr i32 %14, 2
  %16 = and i32 %15, 63
  %17 = xor i32 %16, 63
  %18 = icmp ugt i32 %17, 31
  br i1 %18, label %19, label %22

19:                                               ; preds = %9
  %20 = lshr i32 -2147483648, %16
  %21 = or i32 %20, %10
  store i32 %21, ptr %2, align 4
  br label %25

22:                                               ; preds = %9
  %23 = shl nuw i32 1, %17
  %24 = or i32 %23, %11
  store i32 %24, ptr %3, align 8
  br label %25

25:                                               ; preds = %22, %19
  %26 = phi i32 [ %10, %22 ], [ %21, %19 ]
  %27 = phi i32 [ %24, %22 ], [ %11, %19 ]
  %28 = load ptr, ptr %12, align 4
  %29 = icmp eq ptr %28, %6
  br i1 %29, label %30, label %9

30:                                               ; preds = %25, %1
  %31 = phi i32 [ 0, %1 ], [ %27, %25 ]
  %32 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %33 = load volatile i32, ptr %32, align 4
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %78, label %36

36:                                               ; preds = %30
  %37 = getelementptr i8, ptr %0, i32 1412
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr i8, ptr %38, i32 16
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %31) #18, !srcloc !12
  %40 = load i32, ptr %2, align 4
  %41 = load ptr, ptr %37, align 4
  %42 = getelementptr i8, ptr %41, i32 20
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %40) #18, !srcloc !12
  %43 = load ptr, ptr %37, align 4
  %44 = getelementptr i8, ptr %43, i32 80
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %46 = and i32 %45, 524800
  %47 = getelementptr i8, ptr %0, i32 1744
  %48 = load i32, ptr %47, align 8
  %49 = icmp eq i32 %48, 1
  %50 = select i1 %49, i32 138511, i32 138255
  %51 = or i32 %50, %46
  %52 = load ptr, ptr %4, align 4
  %53 = getelementptr inbounds %struct.net_device, ptr %52, i32 0, i32 14
  %54 = load i32, ptr %53, align 8
  %55 = shl i32 %54, 6
  %56 = and i32 %55, 16384
  %57 = or i32 %51, %56
  %58 = and i32 %54, 512
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %36
  %61 = or i32 %57, 65536
  br label %68

62:                                               ; preds = %36
  %63 = getelementptr inbounds %struct.net_device, ptr %52, i32 0, i32 61, i32 1
  %64 = load i32, ptr %63, align 4
  %65 = icmp eq i32 %64, 0
  %66 = or i32 %57, 32768
  %67 = select i1 %65, i32 %57, i32 %66
  br label %68

68:                                               ; preds = %62, %60
  %69 = phi i32 [ %61, %60 ], [ %67, %62 ]
  %70 = getelementptr inbounds %struct.net_device, ptr %52, i32 0, i32 23
  %71 = load i64, ptr %70, align 16
  %72 = trunc i64 %71 to i32
  %73 = lshr i32 %72, 4
  %74 = and i32 %73, 16
  %75 = or i32 %74, %69
  %76 = load ptr, ptr %37, align 4
  %77 = getelementptr i8, ptr %76, i32 80
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 %75) #18, !srcloc !12
  br label %78

78:                                               ; preds = %68, %30
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ftgmac100_set_mac_addr(ptr noundef %0, ptr noundef %1) #2 {
  %3 = tail call i32 @eth_prepare_mac_addr_change(ptr noundef %0, ptr noundef %1) #18
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %38, label %5

5:                                                ; preds = %2
  tail call void @eth_commit_mac_addr_change(ptr noundef %0, ptr noundef %1) #18
  %6 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 72
  %7 = load ptr, ptr %6, align 32
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = shl nuw nsw i32 %9, 8
  %11 = getelementptr i8, ptr %7, i32 1
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = or i32 %10, %13
  %15 = getelementptr i8, ptr %7, i32 2
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = shl nuw i32 %17, 24
  %19 = getelementptr i8, ptr %7, i32 3
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i32
  %22 = shl nuw nsw i32 %21, 16
  %23 = or i32 %22, %18
  %24 = getelementptr i8, ptr %7, i32 4
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i32
  %27 = shl nuw nsw i32 %26, 8
  %28 = or i32 %23, %27
  %29 = getelementptr i8, ptr %7, i32 5
  %30 = load i8, ptr %29, align 1
  %31 = zext i8 %30 to i32
  %32 = or i32 %28, %31
  %33 = getelementptr i8, ptr %0, i32 1412
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr i8, ptr %34, i32 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %14) #18, !srcloc !12
  %36 = load ptr, ptr %33, align 4
  %37 = getelementptr i8, ptr %36, i32 12
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %32) #18, !srcloc !12
  br label %38

38:                                               ; preds = %5, %2
  %39 = phi i32 [ 0, %5 ], [ %3, %2 ]
  ret i32 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_do_ioctl(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ftgmac100_tx_timeout(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 1412
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 0) #18, !srcloc !12
  %6 = getelementptr i8, ptr %0, i32 1712
  %7 = load ptr, ptr @system_wq, align 4
  %8 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %7, ptr noundef %6) #18
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @ncsi_vlan_rx_add_vid(ptr nocapture noundef readnone %0, i16 noundef zeroext %1, i16 noundef zeroext %2) #10 {
  ret i32 -22
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @ncsi_vlan_rx_kill_vid(ptr nocapture noundef readnone %0, i16 noundef zeroext %1, i16 noundef zeroext %2) #10 {
  ret i32 -22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ftgmac100_set_features(ptr noundef %0, i64 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 23
  %4 = load i64, ptr %3, align 16
  %5 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %29, label %9

9:                                                ; preds = %2
  %10 = xor i64 %4, %1
  %11 = and i64 %10, 256
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %29, label %13

13:                                               ; preds = %9
  %14 = getelementptr i8, ptr %0, i32 1412
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 80
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %18 = getelementptr i8, ptr %0, i32 1484
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 23
  %21 = load i64, ptr %20, align 16
  %22 = and i32 %17, -17
  %23 = trunc i64 %21 to i32
  %24 = lshr i32 %23, 4
  %25 = and i32 %24, 16
  %26 = or i32 %25, %22
  %27 = load ptr, ptr %14, align 4
  %28 = getelementptr i8, ptr %27, i32 80
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #18, !srcloc !12
  br label %29

29:                                               ; preds = %13, %9, %2
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ftgmac100_reset_and_config_mac(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.ftgmac100, ptr %0, i32 0, i32 27
  %3 = load i32, ptr %2, align 4
  switch i32 %3, label %6 [
    i32 10, label %9
    i32 0, label %9
    i32 100, label %4
    i32 1000, label %5
  ]

4:                                                ; preds = %1
  br label %9

5:                                                ; preds = %1
  br label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ftgmac100, ptr %0, i32 0, i32 19
  %8 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %8, ptr noundef nonnull @.str.18, i32 noundef %3) #19
  br label %9

9:                                                ; preds = %6, %5, %4, %1, %1
  %10 = phi i32 [ 0, %6 ], [ 512, %5 ], [ 524288, %4 ], [ 0, %1 ], [ 0, %1 ]
  %11 = getelementptr inbounds %struct.ftgmac100, ptr %0, i32 0, i32 6
  store i32 0, ptr %11, align 8
  %12 = getelementptr inbounds %struct.ftgmac100, ptr %0, i32 0, i32 12
  store i32 0, ptr %12, align 8
  %13 = getelementptr inbounds %struct.ftgmac100, ptr %0, i32 0, i32 13
  store i32 0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.ftgmac100, ptr %0, i32 0, i32 19
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.ftgmac100, ptr %0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %17, i32 80
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %10) #18, !srcloc !12
  %19 = or i32 %10, -2147483648
  %20 = load ptr, ptr %16, align 4
  %21 = getelementptr i8, ptr %20, i32 80
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #18, !srcloc !12
  br label %22

22:                                               ; preds = %28, %9
  %23 = phi i32 [ 0, %9 ], [ %30, %28 ]
  %24 = load ptr, ptr %16, align 4
  %25 = getelementptr i8, ptr %24, i32 80
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %27 = icmp sgt i32 %26, -1
  br i1 %27, label %32, label %28

28:                                               ; preds = %22
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748) #18
  %30 = add nuw nsw i32 %23, 1
  %31 = icmp eq i32 %30, 200
  br i1 %31, label %48, label %22

32:                                               ; preds = %22
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 1000, i32 noundef 2) #18
  %33 = load ptr, ptr %14, align 4
  %34 = load ptr, ptr %16, align 4
  %35 = getelementptr i8, ptr %34, i32 80
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %10) #18, !srcloc !12
  %36 = load ptr, ptr %16, align 4
  %37 = getelementptr i8, ptr %36, i32 80
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %19) #18, !srcloc !12
  br label %38

38:                                               ; preds = %44, %32
  %39 = phi i32 [ 0, %32 ], [ %46, %44 ]
  %40 = load ptr, ptr %16, align 4
  %41 = getelementptr i8, ptr %40, i32 80
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %43 = icmp sgt i32 %42, -1
  br i1 %43, label %50, label %44

44:                                               ; preds = %38
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 214748) #18
  %46 = add nuw nsw i32 %39, 1
  %47 = icmp eq i32 %46, 200
  br i1 %47, label %48, label %38

48:                                               ; preds = %44, %28
  %49 = phi ptr [ %33, %44 ], [ %15, %28 ]
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %49, ptr noundef nonnull @.str.19) #19
  br label %50

50:                                               ; preds = %48, %38
  %51 = phi i32 [ -5, %48 ], [ 0, %38 ]
  ret i32 %51
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ftgmac100_poll(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 -88
  %4 = getelementptr i8, ptr %0, i32 -36
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr i8, ptr %0, i32 -40
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %5, %7
  br i1 %8, label %104, label %9

9:                                                ; preds = %2
  %10 = getelementptr i8, ptr %0, i32 -12
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %0, i32 -52
  %13 = getelementptr i8, ptr %0, i32 -44
  %14 = getelementptr i8, ptr %0, i32 -8
  %15 = getelementptr i8, ptr %0, i32 -32
  %16 = getelementptr i8, ptr %0, i32 -56
  br label %17

17:                                               ; preds = %53, %9
  %18 = phi i32 [ %7, %9 ], [ %61, %53 ]
  %19 = load ptr, ptr %12, align 4
  %20 = getelementptr %struct.ftgmac100_txdes, ptr %19, i32 %18
  %21 = load i32, ptr %20, align 16
  %22 = icmp sgt i32 %21, -1
  br i1 %22, label %23, label %64

23:                                               ; preds = %17
  %24 = load ptr, ptr %10, align 4
  %25 = load ptr, ptr %13, align 4
  %26 = getelementptr ptr, ptr %25, i32 %18
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 36, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %29, 1
  store i32 %30, ptr %28, align 4
  %31 = getelementptr inbounds %struct.sk_buff, ptr %27, i32 0, i32 5
  %32 = load i32, ptr %31, align 8
  %33 = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 36, i32 3
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %34, %32
  store i32 %35, ptr %33, align 4
  %36 = getelementptr %struct.ftgmac100_txdes, ptr %19, i32 %18, i32 3
  %37 = load i32, ptr %36, align 4
  %38 = and i32 %21, 536870912
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %23
  %41 = load i32, ptr %31, align 8
  %42 = getelementptr inbounds %struct.sk_buff, ptr %27, i32 0, i32 6
  %43 = load i32, ptr %42, align 4
  %44 = sub i32 %41, %43
  br label %47

45:                                               ; preds = %23
  %46 = and i32 %21, 16383
  br label %47

47:                                               ; preds = %45, %40
  %48 = phi i32 [ %46, %45 ], [ %44, %40 ]
  %49 = load ptr, ptr %14, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %49, i32 noundef %37, i32 noundef %48, i32 noundef 1, i32 noundef 0) #18
  %50 = and i32 %21, 268435456
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  tail call void @consume_skb(ptr noundef %27) #18
  br label %53

53:                                               ; preds = %52, %47
  %54 = load ptr, ptr %13, align 4
  %55 = getelementptr ptr, ptr %54, i32 %18
  store ptr null, ptr %55, align 4
  %56 = load i32, ptr %15, align 8
  %57 = and i32 %56, %21
  store i32 %57, ptr %20, align 16
  %58 = add i32 %18, 1
  %59 = load i32, ptr %16, align 8
  %60 = add i32 %59, -1
  %61 = and i32 %60, %58
  store i32 %61, ptr %6, align 8
  %62 = load i32, ptr %4, align 4
  %63 = icmp eq i32 %62, %61
  br i1 %63, label %64, label %17

64:                                               ; preds = %53, %17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !20
  %65 = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 87
  %66 = load ptr, ptr %65, align 64
  %67 = getelementptr inbounds %struct.netdev_queue, ptr %66, i32 0, i32 12
  %68 = load volatile i32, ptr %67, align 4
  %69 = and i32 %68, 1
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %104, label %71

71:                                               ; preds = %64
  %72 = load i32, ptr %6, align 8
  %73 = load i32, ptr %4, align 4
  %74 = xor i32 %73, -1
  %75 = add i32 %72, %74
  %76 = load i32, ptr %16, align 8
  %77 = add i32 %76, -1
  %78 = and i32 %77, %75
  %79 = icmp ugt i32 %78, 17
  br i1 %79, label %80, label %104, !prof !15

80:                                               ; preds = %71
  %81 = tail call ptr @llvm.thread.pointer() #18
  %82 = getelementptr inbounds %struct.thread_info, ptr %81, i32 0, i32 2
  %83 = load i32, ptr %82, align 8
  %84 = getelementptr inbounds %struct.netdev_queue, ptr %66, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %84) #18
  %85 = getelementptr inbounds %struct.netdev_queue, ptr %66, i32 0, i32 10
  store volatile i32 %83, ptr %85, align 4
  %86 = load ptr, ptr %65, align 64
  %87 = getelementptr inbounds %struct.netdev_queue, ptr %86, i32 0, i32 12
  %88 = load volatile i32, ptr %87, align 4
  %89 = and i32 %88, 1
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %101, label %91

91:                                               ; preds = %80
  %92 = load i32, ptr %6, align 8
  %93 = load i32, ptr %4, align 4
  %94 = xor i32 %93, -1
  %95 = add i32 %92, %94
  %96 = load i32, ptr %16, align 8
  %97 = add i32 %96, -1
  %98 = and i32 %97, %95
  %99 = icmp ugt i32 %98, 17
  br i1 %99, label %100, label %101

100:                                              ; preds = %91
  tail call void @netif_tx_wake_queue(ptr noundef %86) #18
  br label %101

101:                                              ; preds = %100, %91, %80
  store volatile i32 -1, ptr %85, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !21
  %102 = load i16, ptr %84, align 4
  %103 = add i16 %102, 1
  store i16 %103, ptr %84, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !22
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !23
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !24
  br label %104

104:                                              ; preds = %101, %71, %64, %2
  %105 = getelementptr i8, ptr %0, i32 -12
  %106 = getelementptr i8, ptr %0, i32 -64
  %107 = getelementptr i8, ptr %0, i32 -76
  %108 = getelementptr i8, ptr %0, i32 -68
  %109 = getelementptr i8, ptr %0, i32 -8
  %110 = getelementptr i8, ptr %0, i32 -80
  %111 = getelementptr i8, ptr %0, i32 -60
  br label %112

112:                                              ; preds = %227, %104
  %113 = phi i32 [ 0, %104 ], [ %228, %227 ]
  %114 = load ptr, ptr %105, align 4
  %115 = load i32, ptr %106, align 8
  %116 = load ptr, ptr %107, align 4
  %117 = getelementptr %struct.ftgmac100_rxdes, ptr %116, i32 %115
  %118 = load i32, ptr %117, align 16
  %119 = icmp sgt i32 %118, -1
  br i1 %119, label %230, label %120

120:                                              ; preds = %112
  tail call void asm sideeffect "dmb osh", "~{memory}"() #18, !srcloc !25
  %121 = and i32 %118, 805306368
  %122 = icmp eq i32 %121, 805306368
  br i1 %122, label %123, label %216, !prof !16

123:                                              ; preds = %120
  %124 = and i32 %118, 16383
  %125 = getelementptr %struct.ftgmac100_rxdes, ptr %116, i32 %115, i32 1
  %126 = load i32, ptr %125, align 4
  %127 = and i32 %118, 8126464
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %143, label %129, !prof !16

129:                                              ; preds = %123
  %130 = and i32 %118, 2097152
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %141, label %132

132:                                              ; preds = %129
  %133 = and i32 %126, 16777216
  %134 = icmp ne i32 %133, 0
  %135 = icmp ugt i32 %124, 59
  %136 = select i1 %134, i1 %135, i1 false
  %137 = and i32 %118, -2097153
  %138 = select i1 %136, i32 %137, i32 %118
  %139 = and i32 %138, 8126464
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %143, label %141

141:                                              ; preds = %132, %129
  %142 = phi i32 [ %138, %132 ], [ %118, %129 ]
  tail call fastcc void @ftgmac100_rx_packet_error(ptr noundef %3, i32 noundef %142) #18
  br label %216

143:                                              ; preds = %132, %123
  %144 = phi i32 [ %138, %132 ], [ %118, %123 ]
  %145 = load ptr, ptr %108, align 4
  %146 = getelementptr ptr, ptr %145, i32 %115
  %147 = load ptr, ptr %146, align 4
  %148 = icmp eq ptr %147, null
  br i1 %148, label %149, label %151, !prof !16

149:                                              ; preds = %143
  %150 = tail call fastcc i32 @ftgmac100_alloc_rx_buf(ptr noundef %3, i32 noundef %115, ptr noundef %117) #18
  br label %216

151:                                              ; preds = %143
  %152 = and i32 %144, 65536
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %158, label %154, !prof !16

154:                                              ; preds = %151
  %155 = getelementptr inbounds %struct.net_device, ptr %114, i32 0, i32 36, i32 8
  %156 = load i32, ptr %155, align 8
  %157 = add i32 %156, 1
  store i32 %157, ptr %155, align 8
  br label %158

158:                                              ; preds = %154, %151
  %159 = getelementptr inbounds %struct.net_device, ptr %114, i32 0, i32 23
  %160 = load i64, ptr %159, align 16
  %161 = and i64 %160, 1099511627776
  %162 = icmp eq i64 %161, 0
  br i1 %162, label %174, label %163

163:                                              ; preds = %158
  %164 = and i32 %126, 234881024
  %165 = icmp ne i32 %164, 0
  %166 = and i32 %126, 3145728
  %167 = icmp eq i32 %166, 0
  %168 = or i1 %165, %167
  %169 = getelementptr inbounds %struct.sk_buff, ptr %147, i32 0, i32 13
  %170 = load i16, ptr %169, align 8
  %171 = and i16 %170, -97
  %172 = or i16 %171, 32
  %173 = select i1 %168, i16 %171, i16 %172
  store i16 %173, ptr %169, align 8
  br label %174

174:                                              ; preds = %163, %158
  %175 = tail call ptr @skb_put(ptr noundef nonnull %147, i32 noundef %124) #18
  %176 = load i64, ptr %159, align 16
  %177 = and i64 %176, 256
  %178 = icmp eq i64 %177, 0
  %179 = and i32 %126, 16777216
  %180 = icmp eq i32 %179, 0
  %181 = select i1 %178, i1 true, i1 %180
  br i1 %181, label %189, label %182

182:                                              ; preds = %174
  %183 = trunc i32 %126 to i16
  %184 = getelementptr inbounds %struct.sk_buff, ptr %147, i32 0, i32 13, i32 0, i32 8
  store i16 129, ptr %184, align 4
  %185 = getelementptr inbounds %struct.sk_buff, ptr %147, i32 0, i32 13, i32 0, i32 9
  store i16 %183, ptr %185, align 2
  %186 = getelementptr inbounds %struct.sk_buff, ptr %147, i32 0, i32 13, i32 0, i32 3
  %187 = load i16, ptr %186, align 2
  %188 = or i16 %187, 1
  store i16 %188, ptr %186, align 2
  br label %189

189:                                              ; preds = %182, %174
  %190 = getelementptr %struct.ftgmac100_rxdes, ptr %116, i32 %115, i32 3
  %191 = load i32, ptr %190, align 4
  %192 = load ptr, ptr %109, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %192, i32 noundef %191, i32 noundef 1536, i32 noundef 2, i32 noundef 0) #18
  %193 = tail call fastcc i32 @ftgmac100_alloc_rx_buf(ptr noundef %3, i32 noundef %115, ptr noundef %117) #18
  %194 = add i32 %115, 1
  %195 = load i32, ptr %110, align 8
  %196 = add i32 %195, -1
  %197 = and i32 %196, %194
  store i32 %197, ptr %106, align 8
  %198 = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %147, ptr noundef %114) #18
  %199 = getelementptr inbounds %struct.sk_buff, ptr %147, i32 0, i32 13, i32 0, i32 16
  store i16 %198, ptr %199, align 8
  %200 = getelementptr inbounds %struct.net_device, ptr %114, i32 0, i32 36
  %201 = load i32, ptr %200, align 8
  %202 = add i32 %201, 1
  store i32 %202, ptr %200, align 8
  %203 = getelementptr inbounds %struct.net_device, ptr %114, i32 0, i32 36, i32 2
  %204 = load i32, ptr %203, align 8
  %205 = add i32 %204, %124
  store i32 %205, ptr %203, align 8
  %206 = getelementptr inbounds %struct.sk_buff, ptr %147, i32 0, i32 13
  %207 = load i16, ptr %206, align 8
  %208 = and i16 %207, 96
  %209 = icmp eq i16 %208, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %189
  %211 = tail call i32 @netif_receive_skb(ptr noundef nonnull %147) #18
  br label %214

212:                                              ; preds = %189
  %213 = tail call i32 @napi_gro_receive(ptr noundef %0, ptr noundef nonnull %147) #18
  br label %214

214:                                              ; preds = %212, %210
  %215 = add nsw i32 %113, 1
  br label %227

216:                                              ; preds = %149, %141, %120
  %217 = phi i32 [ %118, %120 ], [ %142, %141 ], [ %144, %149 ]
  %218 = load i32, ptr %111, align 4
  %219 = and i32 %218, %217
  store i32 %219, ptr %117, align 16
  %220 = add i32 %115, 1
  %221 = load i32, ptr %110, align 8
  %222 = add i32 %221, -1
  %223 = and i32 %222, %220
  store i32 %223, ptr %106, align 8
  %224 = getelementptr inbounds %struct.net_device, ptr %114, i32 0, i32 36, i32 6
  %225 = load i32, ptr %224, align 8
  %226 = add i32 %225, 1
  store i32 %226, ptr %224, align 8
  br label %227

227:                                              ; preds = %216, %214
  %228 = phi i32 [ %113, %216 ], [ %215, %214 ]
  %229 = icmp slt i32 %228, %1
  br i1 %229, label %112, label %230

230:                                              ; preds = %227, %112
  %231 = phi i32 [ %228, %227 ], [ %113, %112 ]
  %232 = getelementptr i8, ptr %0, i32 267
  %233 = load i8, ptr %232, align 1, !range !13
  %234 = icmp eq i8 %233, 0
  br i1 %234, label %239, label %235, !prof !16

235:                                              ; preds = %230
  tail call fastcc void @ftgmac100_start_hw(ptr noundef %3)
  store i8 0, ptr %232, align 1
  %236 = getelementptr i8, ptr %0, i32 -84
  %237 = load ptr, ptr %236, align 4
  %238 = getelementptr i8, ptr %237, i32 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %238, i32 396) #18, !srcloc !12
  br label %239

239:                                              ; preds = %235, %230
  %240 = load i32, ptr %4, align 4
  %241 = load i32, ptr %6, align 8
  %242 = icmp eq i32 %240, %241
  br i1 %242, label %243, label %263

243:                                              ; preds = %239
  %244 = icmp slt i32 %231, %1
  br i1 %244, label %245, label %263

245:                                              ; preds = %243
  %246 = getelementptr i8, ptr %0, i32 -84
  %247 = load ptr, ptr %246, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %247, i32 17) #18, !srcloc !12
  %248 = load ptr, ptr %246, align 4
  %249 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %248) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %250 = load ptr, ptr %107, align 4
  %251 = load i32, ptr %106, align 8
  %252 = getelementptr %struct.ftgmac100_rxdes, ptr %250, i32 %251
  %253 = load i32, ptr %252, align 16
  %254 = icmp slt i32 %253, 0
  br i1 %254, label %263, label %255

255:                                              ; preds = %245
  %256 = load i32, ptr %4, align 4
  %257 = load i32, ptr %6, align 8
  %258 = icmp eq i32 %256, %257
  br i1 %258, label %259, label %263

259:                                              ; preds = %255
  %260 = tail call zeroext i1 @napi_complete_done(ptr noundef %0, i32 noundef 0) #18
  %261 = load ptr, ptr %246, align 4
  %262 = getelementptr i8, ptr %261, i32 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %262, i32 397) #18, !srcloc !12
  br label %263

263:                                              ; preds = %259, %255, %245, %243, %239
  %264 = phi i32 [ %1, %255 ], [ %1, %245 ], [ %231, %259 ], [ %231, %243 ], [ %1, %239 ]
  ret i32 %264
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ftgmac100_interrupt(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr i8, ptr %1, i32 1412
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %6 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %5) #18, !srcloc !12
  %7 = and i32 %5, 396
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %46, label %9, !prof !16

9:                                                ; preds = %2
  %10 = and i32 %5, 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 11
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, 1
  store i32 %15, ptr %13, align 4
  br label %16

16:                                               ; preds = %12, %9
  %17 = and i32 %5, 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 14
  %21 = load i32, ptr %20, align 8
  %22 = add i32 %21, 1
  store i32 %22, ptr %20, align 8
  br label %23

23:                                               ; preds = %19, %16
  %24 = and i32 %5, 128
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 18
  %28 = load i32, ptr %27, align 8
  %29 = add i32 %28, 1
  store i32 %29, ptr %27, align 8
  br label %30

30:                                               ; preds = %26, %23
  %31 = and i32 %5, 256
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %30
  %34 = tail call i32 @net_ratelimit() #18
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %1, ptr noundef nonnull @.str.24) #19
  br label %37

37:                                               ; preds = %36, %33
  %38 = load ptr, ptr %3, align 4
  %39 = getelementptr i8, ptr %38, i32 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 0) #18, !srcloc !12
  %40 = getelementptr i8, ptr %1, i32 1712
  %41 = load ptr, ptr @system_wq, align 4
  %42 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %41, ptr noundef %40) #18
  br label %53

43:                                               ; preds = %30
  %44 = getelementptr i8, ptr %1, i32 1763
  store i8 1, ptr %44, align 1
  %45 = xor i32 %7, 396
  br label %46

46:                                               ; preds = %43, %2
  %47 = phi i32 [ %45, %43 ], [ 396, %2 ]
  %48 = load ptr, ptr %3, align 4
  %49 = getelementptr i8, ptr %48, i32 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %47) #18, !srcloc !12
  %50 = getelementptr i8, ptr %1, i32 1496
  %51 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %50) #18
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  tail call void @__napi_schedule_irqoff(ptr noundef %50) #18
  br label %53

53:                                               ; preds = %52, %46, %37
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ftgmac100_init_all(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.ftgmac100, ptr %0, i32 0, i32 15
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ftgmac100, ptr %0, i32 0, i32 2
  store i32 %4, ptr %5, align 8
  %6 = getelementptr inbounds %struct.ftgmac100, ptr %0, i32 0, i32 16
  %7 = load i32, ptr %6, align 8
  %8 = getelementptr inbounds %struct.ftgmac100, ptr %0, i32 0, i32 8
  store i32 %7, ptr %8, align 8
  %9 = icmp ult i32 %4, 32
  br i1 %9, label %13, label %10, !prof !15

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.ftgmac100, ptr %0, i32 0, i32 3
  %12 = getelementptr inbounds %struct.ftgmac100, ptr %0, i32 0, i32 18
  br label %14

13:                                               ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 956, i32 noundef 9, ptr noundef null) #18
  br label %41

14:                                               ; preds = %14, %10
  %15 = phi i32 [ 0, %10 ], [ %20, %14 ]
  %16 = load ptr, ptr %11, align 4
  %17 = getelementptr %struct.ftgmac100_rxdes, ptr %16, i32 %15
  store i32 0, ptr %17, align 16
  %18 = load i32, ptr %12, align 8
  %19 = getelementptr %struct.ftgmac100_rxdes, ptr %16, i32 %15, i32 3
  store i32 %18, ptr %19, align 4
  %20 = add nuw i32 %15, 1
  %21 = load i32, ptr %5, align 8
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %14, label %23

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.ftgmac100, ptr %0, i32 0, i32 7
  %25 = load i32, ptr %24, align 4
  store i32 %25, ptr %17, align 16
  %26 = load i32, ptr %8, align 8
  %27 = icmp ult i32 %26, 32
  br i1 %27, label %30, label %28, !prof !15

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.ftgmac100, ptr %0, i32 0, i32 9
  br label %31

30:                                               ; preds = %23
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 968, i32 noundef 9, ptr noundef null) #18
  br label %41

31:                                               ; preds = %31, %28
  %32 = phi i32 [ 0, %28 ], [ %35, %31 ]
  %33 = load ptr, ptr %29, align 4
  %34 = getelementptr %struct.ftgmac100_txdes, ptr %33, i32 %32
  store i32 0, ptr %34, align 16
  %35 = add nuw i32 %32, 1
  %36 = load i32, ptr %8, align 8
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %31, label %38

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.ftgmac100, ptr %0, i32 0, i32 14
  %40 = load i32, ptr %39, align 8
  store i32 %40, ptr %34, align 16
  br label %41

41:                                               ; preds = %38, %30, %13
  %42 = getelementptr inbounds %struct.ftgmac100, ptr %0, i32 0, i32 3
  %43 = load i32, ptr %5, align 8
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %56, label %49

45:                                               ; preds = %49
  %46 = add nuw i32 %50, 1
  %47 = load i32, ptr %5, align 8
  %48 = icmp ult i32 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %45, %41
  %50 = phi i32 [ %46, %45 ], [ 0, %41 ]
  %51 = load ptr, ptr %42, align 4
  %52 = getelementptr %struct.ftgmac100_rxdes, ptr %51, i32 %50
  %53 = tail call fastcc i32 @ftgmac100_alloc_rx_buf(ptr noundef %0, i32 noundef %50, ptr noundef %52) #18
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %45, label %55

55:                                               ; preds = %49
  br i1 %1, label %56, label %184

56:                                               ; preds = %55, %45, %41
  %57 = phi i32 [ -12, %55 ], [ 0, %41 ], [ 0, %45 ]
  %58 = getelementptr inbounds %struct.ftgmac100, ptr %0, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %61 = load ptr, ptr %58, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 %60) #18, !srcloc !12
  %62 = getelementptr inbounds %struct.ftgmac100, ptr %0, i32 0, i32 4
  %63 = load i32, ptr %62, align 8
  %64 = load ptr, ptr %58, align 4
  %65 = getelementptr i8, ptr %64, i32 36
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %63) #18, !srcloc !12
  %66 = getelementptr inbounds %struct.ftgmac100, ptr %0, i32 0, i32 10
  %67 = load i32, ptr %66, align 8
  %68 = load ptr, ptr %58, align 4
  %69 = getelementptr i8, ptr %68, i32 32
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %67) #18, !srcloc !12
  %70 = load ptr, ptr %58, align 4
  %71 = getelementptr i8, ptr %70, i32 76
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 1536) #18, !srcloc !12
  %72 = load ptr, ptr %58, align 4
  %73 = getelementptr i8, ptr %72, i32 52
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 1) #18, !srcloc !12
  %74 = getelementptr inbounds %struct.ftgmac100, ptr %0, i32 0, i32 19
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.net_device, ptr %75, i32 0, i32 72
  %77 = load ptr, ptr %76, align 32
  %78 = load i8, ptr %77, align 1
  %79 = zext i8 %78 to i32
  %80 = shl nuw nsw i32 %79, 8
  %81 = getelementptr i8, ptr %77, i32 1
  %82 = load i8, ptr %81, align 1
  %83 = zext i8 %82 to i32
  %84 = or i32 %80, %83
  %85 = getelementptr i8, ptr %77, i32 2
  %86 = load i8, ptr %85, align 1
  %87 = zext i8 %86 to i32
  %88 = shl nuw i32 %87, 24
  %89 = getelementptr i8, ptr %77, i32 3
  %90 = load i8, ptr %89, align 1
  %91 = zext i8 %90 to i32
  %92 = shl nuw nsw i32 %91, 16
  %93 = or i32 %92, %88
  %94 = getelementptr i8, ptr %77, i32 4
  %95 = load i8, ptr %94, align 1
  %96 = zext i8 %95 to i32
  %97 = shl nuw nsw i32 %96, 8
  %98 = or i32 %93, %97
  %99 = getelementptr i8, ptr %77, i32 5
  %100 = load i8, ptr %99, align 1
  %101 = zext i8 %100 to i32
  %102 = or i32 %98, %101
  %103 = load ptr, ptr %58, align 4
  %104 = getelementptr i8, ptr %103, i32 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %104, i32 %84) #18, !srcloc !12
  %105 = load ptr, ptr %58, align 4
  %106 = getelementptr i8, ptr %105, i32 12
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %106, i32 %102) #18, !srcloc !12
  %107 = getelementptr inbounds %struct.ftgmac100, ptr %0, i32 0, i32 30
  %108 = load i32, ptr %107, align 8
  %109 = load ptr, ptr %58, align 4
  %110 = getelementptr i8, ptr %109, i32 16
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %110, i32 %108) #18, !srcloc !12
  %111 = getelementptr inbounds %struct.ftgmac100, ptr %0, i32 0, i32 31
  %112 = load i32, ptr %111, align 4
  %113 = load ptr, ptr %58, align 4
  %114 = getelementptr i8, ptr %113, i32 20
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %114, i32 %112) #18, !srcloc !12
  %115 = load ptr, ptr %58, align 4
  %116 = getelementptr i8, ptr %115, i32 56
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %116, i32 143218) #18, !srcloc !12
  %117 = load ptr, ptr %58, align 4
  %118 = getelementptr i8, ptr %117, i32 48
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %118, i32 4112) #18, !srcloc !12
  %119 = load ptr, ptr %58, align 4
  %120 = getelementptr i8, ptr %119, i32 68
  %121 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %120) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %122 = load ptr, ptr %58, align 4
  %123 = getelementptr i8, ptr %122, i32 72
  %124 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %123) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %125 = and i32 %124, -1056964609
  %126 = shl i32 %121, 24
  %127 = and i32 %126, 1056964608
  %128 = or i32 %125, %127
  %129 = load ptr, ptr %58, align 4
  %130 = getelementptr i8, ptr %129, i32 72
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %130, i32 %128) #18, !srcloc !12
  %131 = getelementptr inbounds %struct.ftgmac100, ptr %0, i32 0, i32 33
  %132 = load i8, ptr %131, align 1, !range !13
  %133 = icmp eq i8 %132, 0
  %134 = select i1 %133, i32 1048576, i32 1048577
  %135 = getelementptr inbounds %struct.ftgmac100, ptr %0, i32 0, i32 32
  %136 = load i8, ptr %135, align 8, !range !13
  %137 = icmp eq i8 %136, 0
  %138 = or i32 %134, 4
  %139 = select i1 %137, i32 %134, i32 %138
  %140 = load ptr, ptr %58, align 4
  %141 = getelementptr i8, ptr %140, i32 104
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %141, i32 %139) #18, !srcloc !12
  %142 = load ptr, ptr %58, align 4
  %143 = getelementptr i8, ptr %142, i32 80
  %144 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %143) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %145 = and i32 %144, 524800
  %146 = getelementptr inbounds %struct.ftgmac100, ptr %0, i32 0, i32 28
  %147 = load i32, ptr %146, align 8
  %148 = icmp eq i32 %147, 1
  %149 = select i1 %148, i32 138511, i32 138255
  %150 = or i32 %149, %145
  %151 = load ptr, ptr %74, align 4
  %152 = getelementptr inbounds %struct.net_device, ptr %151, i32 0, i32 14
  %153 = load i32, ptr %152, align 8
  %154 = shl i32 %153, 6
  %155 = and i32 %154, 16384
  %156 = or i32 %150, %155
  %157 = and i32 %153, 512
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %161, label %159

159:                                              ; preds = %56
  %160 = or i32 %156, 65536
  br label %167

161:                                              ; preds = %56
  %162 = getelementptr inbounds %struct.net_device, ptr %151, i32 0, i32 61, i32 1
  %163 = load i32, ptr %162, align 4
  %164 = icmp eq i32 %163, 0
  %165 = or i32 %156, 32768
  %166 = select i1 %164, i32 %156, i32 %165
  br label %167

167:                                              ; preds = %161, %159
  %168 = phi i32 [ %160, %159 ], [ %166, %161 ]
  %169 = getelementptr inbounds %struct.net_device, ptr %151, i32 0, i32 23
  %170 = load i64, ptr %169, align 16
  %171 = trunc i64 %170 to i32
  %172 = lshr i32 %171, 4
  %173 = and i32 %172, 16
  %174 = or i32 %173, %168
  %175 = load ptr, ptr %58, align 4
  %176 = getelementptr i8, ptr %175, i32 80
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %176, i32 %174) #18, !srcloc !12
  %177 = getelementptr inbounds %struct.ftgmac100, ptr %0, i32 0, i32 22
  tail call void @napi_enable(ptr noundef %177) #18
  %178 = load ptr, ptr %74, align 4
  %179 = getelementptr inbounds %struct.net_device, ptr %178, i32 0, i32 87
  %180 = load ptr, ptr %179, align 64
  %181 = getelementptr inbounds %struct.netdev_queue, ptr %180, i32 0, i32 12
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %181) #18
  %182 = load ptr, ptr %58, align 4
  %183 = getelementptr i8, ptr %182, i32 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %183, i32 397) #18, !srcloc !12
  br label %184

184:                                              ; preds = %167, %55
  %185 = phi i32 [ -12, %55 ], [ %57, %167 ]
  ret i32 %185
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ftgmac100_free_buffers(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.ftgmac100, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ftgmac100, ptr %0, i32 0, i32 5
  %7 = getelementptr inbounds %struct.ftgmac100, ptr %0, i32 0, i32 3
  %8 = getelementptr inbounds %struct.ftgmac100, ptr %0, i32 0, i32 20
  br label %17

9:                                                ; preds = %30, %1
  %10 = getelementptr inbounds %struct.ftgmac100, ptr %0, i32 0, i32 8
  %11 = load i32, ptr %10, align 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %71, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.ftgmac100, ptr %0, i32 0, i32 11
  %15 = getelementptr inbounds %struct.ftgmac100, ptr %0, i32 0, i32 9
  %16 = getelementptr inbounds %struct.ftgmac100, ptr %0, i32 0, i32 20
  br label %34

17:                                               ; preds = %30, %5
  %18 = phi i32 [ %3, %5 ], [ %31, %30 ]
  %19 = phi i32 [ 0, %5 ], [ %32, %30 ]
  %20 = load ptr, ptr %6, align 4
  %21 = getelementptr ptr, ptr %20, i32 %19
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %17
  %25 = load ptr, ptr %7, align 4
  %26 = getelementptr %struct.ftgmac100_rxdes, ptr %25, i32 %19, i32 3
  %27 = load i32, ptr %26, align 4
  store ptr null, ptr %21, align 4
  %28 = load ptr, ptr %8, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %28, i32 noundef %27, i32 noundef 1536, i32 noundef 2, i32 noundef 0) #18
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %22, i32 noundef 1) #18
  %29 = load i32, ptr %2, align 8
  br label %30

30:                                               ; preds = %24, %17
  %31 = phi i32 [ %18, %17 ], [ %29, %24 ]
  %32 = add nuw i32 %19, 1
  %33 = icmp ult i32 %32, %31
  br i1 %33, label %17, label %9

34:                                               ; preds = %67, %13
  %35 = phi i32 [ %11, %13 ], [ %68, %67 ]
  %36 = phi i32 [ 0, %13 ], [ %69, %67 ]
  %37 = load ptr, ptr %14, align 4
  %38 = getelementptr ptr, ptr %37, i32 %36
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %67, label %41

41:                                               ; preds = %34
  %42 = load ptr, ptr %15, align 4
  %43 = getelementptr %struct.ftgmac100_txdes, ptr %42, i32 %36
  %44 = load i32, ptr %43, align 16
  %45 = getelementptr %struct.ftgmac100_txdes, ptr %42, i32 %36, i32 3
  %46 = load i32, ptr %45, align 4
  %47 = and i32 %44, 536870912
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %41
  %50 = getelementptr inbounds %struct.sk_buff, ptr %39, i32 0, i32 5
  %51 = load i32, ptr %50, align 8
  %52 = getelementptr inbounds %struct.sk_buff, ptr %39, i32 0, i32 6
  %53 = load i32, ptr %52, align 4
  %54 = sub i32 %51, %53
  br label %57

55:                                               ; preds = %41
  %56 = and i32 %44, 16383
  br label %57

57:                                               ; preds = %55, %49
  %58 = phi i32 [ %56, %55 ], [ %54, %49 ]
  %59 = load ptr, ptr %16, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %59, i32 noundef %46, i32 noundef %58, i32 noundef 1, i32 noundef 0) #18
  %60 = and i32 %44, 268435456
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %57
  tail call void @consume_skb(ptr noundef nonnull %39) #18
  br label %63

63:                                               ; preds = %62, %57
  %64 = load ptr, ptr %14, align 4
  %65 = getelementptr ptr, ptr %64, i32 %36
  store ptr null, ptr %65, align 4
  %66 = load i32, ptr %10, align 8
  br label %67

67:                                               ; preds = %63, %34
  %68 = phi i32 [ %35, %34 ], [ %66, %63 ]
  %69 = add nuw i32 %36, 1
  %70 = icmp ult i32 %69, %68
  br i1 %70, label %34, label %71

71:                                               ; preds = %67, %9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ftgmac100_free_rings(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.ftgmac100, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #18
  %4 = getelementptr inbounds %struct.ftgmac100, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  tail call void @kfree(ptr noundef %5) #18
  %6 = getelementptr inbounds %struct.ftgmac100, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ftgmac100, ptr %0, i32 0, i32 20
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.ftgmac100, ptr %0, i32 0, i32 4
  %13 = load i32, ptr %12, align 8
  tail call void @dma_free_attrs(ptr noundef %11, i32 noundef 16384, ptr noundef nonnull %7, i32 noundef %13, i32 noundef 0) #18
  br label %14

14:                                               ; preds = %9, %1
  store ptr null, ptr %6, align 4
  %15 = getelementptr inbounds %struct.ftgmac100, ptr %0, i32 0, i32 9
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.ftgmac100, ptr %0, i32 0, i32 20
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.ftgmac100, ptr %0, i32 0, i32 10
  %22 = load i32, ptr %21, align 8
  tail call void @dma_free_attrs(ptr noundef %20, i32 noundef 16384, ptr noundef nonnull %16, i32 noundef %22, i32 noundef 0) #18
  br label %23

23:                                               ; preds = %18, %14
  store ptr null, ptr %15, align 4
  %24 = getelementptr inbounds %struct.ftgmac100, ptr %0, i32 0, i32 17
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.ftgmac100, ptr %0, i32 0, i32 20
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds %struct.ftgmac100, ptr %0, i32 0, i32 18
  %31 = load i32, ptr %30, align 8
  tail call void @dma_free_attrs(ptr noundef %29, i32 noundef 1536, ptr noundef nonnull %25, i32 noundef %31, i32 noundef 0) #18
  br label %32

32:                                               ; preds = %27, %23
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ftgmac100_start_hw(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.ftgmac100, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 80
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %6 = and i32 %5, 524800
  %7 = getelementptr inbounds %struct.ftgmac100, ptr %0, i32 0, i32 28
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %8, 1
  %10 = select i1 %9, i32 138511, i32 138255
  %11 = or i32 %10, %6
  %12 = getelementptr inbounds %struct.ftgmac100, ptr %0, i32 0, i32 19
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 14
  %15 = load i32, ptr %14, align 8
  %16 = shl i32 %15, 6
  %17 = and i32 %16, 16384
  %18 = or i32 %11, %17
  %19 = and i32 %15, 512
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %1
  %22 = or i32 %18, 65536
  br label %29

23:                                               ; preds = %1
  %24 = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 61, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  %27 = or i32 %18, 32768
  %28 = select i1 %26, i32 %18, i32 %27
  br label %29

29:                                               ; preds = %23, %21
  %30 = phi i32 [ %22, %21 ], [ %28, %23 ]
  %31 = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 23
  %32 = load i64, ptr %31, align 16
  %33 = trunc i64 %32 to i32
  %34 = lshr i32 %33, 4
  %35 = and i32 %34, 16
  %36 = or i32 %35, %30
  %37 = load ptr, ptr %2, align 4
  %38 = getelementptr i8, ptr %37, i32 80
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %36) #18, !srcloc !12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal fastcc void @ftgmac100_rx_packet_error(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #13 {
  %3 = getelementptr inbounds %struct.ftgmac100, ptr %0, i32 0, i32 19
  %4 = load ptr, ptr %3, align 4
  %5 = and i32 %1, 262144
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 36, i32 4
  %9 = load i32, ptr %8, align 8
  %10 = add i32 %9, 1
  store i32 %10, ptr %8, align 8
  br label %11

11:                                               ; preds = %7, %2
  %12 = and i32 %1, 524288
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 36, i32 12
  %16 = load i32, ptr %15, align 8
  %17 = add i32 %16, 1
  store i32 %17, ptr %15, align 8
  br label %18

18:                                               ; preds = %14, %11
  %19 = and i32 %1, 7340032
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 36, i32 10
  %23 = load i32, ptr %22, align 8
  %24 = add i32 %23, 1
  store i32 %24, ptr %22, align 8
  br label %25

25:                                               ; preds = %21, %18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ftgmac100_alloc_rx_buf(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.ftgmac100, ptr %0, i32 0, i32 19
  %5 = load ptr, ptr %4, align 4
  %6 = tail call ptr @__netdev_alloc_skb(ptr noundef %5, i32 noundef 1538, i32 noundef 2592) #18
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  %9 = tail call i32 @net_ratelimit() #18
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %49, label %11

11:                                               ; preds = %8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %5, ptr noundef nonnull @.str.20) #19
  br label %49

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 17
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 2
  store ptr %15, ptr %13, align 4
  %16 = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 14
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr i8, ptr %17, i32 2
  store ptr %18, ptr %16, align 8
  %19 = getelementptr inbounds %struct.ftgmac100, ptr %0, i32 0, i32 20
  %20 = load ptr, ptr %19, align 8
  %21 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %15) #18
  %22 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %23 = xor i1 %22, true
  %24 = select i1 %21, i1 %23, i1 false
  br i1 %24, label %25, label %34, !prof !15

25:                                               ; preds = %12
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %26 = tail call ptr @dev_driver_string(ptr noundef %20) #18
  %27 = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 3
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load ptr, ptr %20, align 4
  br label %32

32:                                               ; preds = %30, %25
  %33 = phi ptr [ %31, %30 ], [ %28, %25 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.23, ptr noundef %26, ptr noundef %33) #18
  br label %34

34:                                               ; preds = %32, %12
  br i1 %21, label %44, label %35

35:                                               ; preds = %34
  %36 = load ptr, ptr @mem_map, align 4
  %37 = ptrtoint ptr %15 to i32
  %38 = add i32 %37, 1073741824
  %39 = lshr i32 %38, 12
  %40 = getelementptr %struct.page, ptr %36, i32 %39
  %41 = and i32 %37, 4095
  %42 = tail call i32 @dma_map_page_attrs(ptr noundef %20, ptr noundef %40, i32 noundef %41, i32 noundef 1536, i32 noundef 2, i32 noundef 0) #18
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %52

44:                                               ; preds = %35, %34
  %45 = tail call i32 @net_ratelimit() #18
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %44
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %5, ptr noundef nonnull @.str.21) #19
  br label %48

48:                                               ; preds = %47, %44
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %6, i32 noundef 1) #18
  br label %49

49:                                               ; preds = %48, %11, %8
  %50 = getelementptr inbounds %struct.ftgmac100, ptr %0, i32 0, i32 18
  %51 = load i32, ptr %50, align 8
  br label %52

52:                                               ; preds = %49, %35
  %53 = phi ptr [ %6, %35 ], [ null, %49 ]
  %54 = phi i32 [ %42, %35 ], [ %51, %49 ]
  %55 = phi i32 [ 0, %35 ], [ -12, %49 ]
  %56 = getelementptr inbounds %struct.ftgmac100, ptr %0, i32 0, i32 5
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr ptr, ptr %57, i32 %1
  store ptr %53, ptr %58, align 4
  %59 = getelementptr inbounds %struct.ftgmac100_rxdes, ptr %2, i32 0, i32 3
  store i32 %54, ptr %59, align 4
  tail call void asm sideeffect "dmb oshst", "~{memory}"() #18, !srcloc !26
  %60 = getelementptr inbounds %struct.ftgmac100, ptr %0, i32 0, i32 2
  %61 = load i32, ptr %60, align 8
  %62 = add i32 %61, -1
  %63 = icmp eq i32 %62, %1
  br i1 %63, label %64, label %67

64:                                               ; preds = %52
  %65 = getelementptr inbounds %struct.ftgmac100, ptr %0, i32 0, i32 7
  %66 = load i32, ptr %65, align 4
  br label %67

67:                                               ; preds = %64, %52
  %68 = phi i32 [ %66, %64 ], [ 0, %52 ]
  store i32 %68, ptr %2, align 16
  ret i32 %55
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_receive_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @napi_gro_receive(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

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
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule_irqoff(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netif_napi_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__skb_pad(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_checksum_help(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_prepare_mac_addr_change(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @eth_commit_mac_addr_change(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ftgmac100_reset(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.ftgmac100, ptr %0, i32 0, i32 19
  %3 = load ptr, ptr %2, align 4
  tail call void @rtnl_lock() #18
  %4 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 120
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.phy_device, ptr %5, i32 0, i32 28
  tail call void @mutex_lock(ptr noundef %8) #18
  br label %9

9:                                                ; preds = %7, %1
  %10 = getelementptr inbounds %struct.ftgmac100, ptr %0, i32 0, i32 24
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.mii_bus, ptr %11, i32 0, i32 8
  tail call void @mutex_lock(ptr noundef %14) #18
  br label %15

15:                                               ; preds = %13, %9
  %16 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %17 = load volatile i32, ptr %16, align 4
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %62, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 87
  %22 = load ptr, ptr %21, align 64
  %23 = load volatile i32, ptr @jiffies, align 64
  %24 = getelementptr inbounds %struct.netdev_queue, ptr %22, i32 0, i32 11
  %25 = load volatile i32, ptr %24, align 8
  %26 = icmp eq i32 %25, %23
  br i1 %26, label %28, label %27

27:                                               ; preds = %20
  store volatile i32 %23, ptr %24, align 8
  br label %28

28:                                               ; preds = %27, %20
  %29 = getelementptr inbounds %struct.ftgmac100, ptr %0, i32 0, i32 22
  tail call void @napi_disable(ptr noundef %29) #18
  %30 = tail call ptr @llvm.thread.pointer() #18
  %31 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %32 = load volatile i32, ptr %31, align 4
  %33 = add i32 %32, 512
  store volatile i32 %33, ptr %31, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !27
  %34 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 2
  %35 = load i32, ptr %34, align 8
  %36 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 92
  tail call void @_raw_spin_lock(ptr noundef %36) #18
  %37 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 88
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %51, label %40

40:                                               ; preds = %40, %28
  %41 = phi i32 [ %48, %40 ], [ 0, %28 ]
  %42 = load ptr, ptr %21, align 64
  %43 = getelementptr %struct.netdev_queue, ptr %42, i32 %41, i32 9
  tail call void @_raw_spin_lock(ptr noundef %43) #18
  %44 = getelementptr %struct.netdev_queue, ptr %42, i32 %41, i32 10
  store volatile i32 %35, ptr %44, align 4
  %45 = getelementptr %struct.netdev_queue, ptr %42, i32 %41, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %45) #18
  store volatile i32 -1, ptr %44, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !21
  %46 = load i16, ptr %43, align 4
  %47 = add i16 %46, 1
  store i16 %47, ptr %43, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !22
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !23
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !24
  %48 = add nuw i32 %41, 1
  %49 = load i32, ptr %37, align 4
  %50 = icmp ult i32 %48, %49
  br i1 %50, label %40, label %51

51:                                               ; preds = %40, %28
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !21
  %52 = load i16, ptr %36, align 4
  %53 = add i16 %52, 1
  store i16 %53, ptr %36, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !22
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !23
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !24
  tail call fastcc void @local_bh_enable() #18
  %54 = getelementptr inbounds %struct.ftgmac100, ptr %0, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr i8, ptr %55, i32 80
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 0) #18, !srcloc !12
  %57 = tail call fastcc i32 @ftgmac100_reset_and_config_mac(ptr noundef %0)
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %51
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str.28) #19
  br label %60

60:                                               ; preds = %59, %51
  tail call fastcc void @ftgmac100_free_buffers(ptr noundef %0)
  %61 = tail call fastcc i32 @ftgmac100_init_all(ptr noundef %0, i1 noundef zeroext true)
  br label %62

62:                                               ; preds = %60, %15
  %63 = load ptr, ptr %10, align 8
  %64 = icmp eq ptr %63, null
  br i1 %64, label %67, label %65

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.mii_bus, ptr %63, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %66) #18
  br label %67

67:                                               ; preds = %65, %62
  %68 = load ptr, ptr %4, align 8
  %69 = icmp eq ptr %68, null
  br i1 %69, label %72, label %70

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.phy_device, ptr %68, i32 0, i32 28
  tail call void @mutex_unlock(ptr noundef %71) #18
  br label %72

72:                                               ; preds = %70, %67
  tail call void @rtnl_unlock() #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #15 {
  br label %1

1:                                                ; preds = %0
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %1) to i32), i32 noundef 512) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_get_ethdev_address(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #16

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ftgmac100_mdiobus_read(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.mii_bus, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %5, i32 1412
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 96
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %10 = and i32 %9, 63
  %11 = shl i32 %1, 16
  %12 = and i32 %11, 2031616
  %13 = shl i32 %2, 21
  %14 = and i32 %13, 65011712
  %15 = or i32 %12, %14
  %16 = or i32 %15, %10
  %17 = or i32 %16, 67108864
  %18 = load ptr, ptr %6, align 4
  %19 = getelementptr i8, ptr %18, i32 96
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #18, !srcloc !12
  %20 = load ptr, ptr %6, align 4
  %21 = getelementptr i8, ptr %20, i32 96
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %23 = and i32 %22, 67108864
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %86, %79, %72, %65, %58, %51, %44, %37, %30, %3
  %26 = load ptr, ptr %6, align 4
  %27 = getelementptr i8, ptr %26, i32 100
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %29 = lshr i32 %28, 16
  br label %95

30:                                               ; preds = %3
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 21474800) #18
  %32 = load ptr, ptr %6, align 4
  %33 = getelementptr i8, ptr %32, i32 96
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %35 = and i32 %34, 67108864
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %25, label %37

37:                                               ; preds = %30
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 21474800) #18
  %39 = load ptr, ptr %6, align 4
  %40 = getelementptr i8, ptr %39, i32 96
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %42 = and i32 %41, 67108864
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %25, label %44

44:                                               ; preds = %37
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 21474800) #18
  %46 = load ptr, ptr %6, align 4
  %47 = getelementptr i8, ptr %46, i32 96
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %49 = and i32 %48, 67108864
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %25, label %51

51:                                               ; preds = %44
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %52(i32 noundef 21474800) #18
  %53 = load ptr, ptr %6, align 4
  %54 = getelementptr i8, ptr %53, i32 96
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %56 = and i32 %55, 67108864
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %25, label %58

58:                                               ; preds = %51
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %59(i32 noundef 21474800) #18
  %60 = load ptr, ptr %6, align 4
  %61 = getelementptr i8, ptr %60, i32 96
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %63 = and i32 %62, 67108864
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %25, label %65

65:                                               ; preds = %58
  %66 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %66(i32 noundef 21474800) #18
  %67 = load ptr, ptr %6, align 4
  %68 = getelementptr i8, ptr %67, i32 96
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %68) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %70 = and i32 %69, 67108864
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %25, label %72

72:                                               ; preds = %65
  %73 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %73(i32 noundef 21474800) #18
  %74 = load ptr, ptr %6, align 4
  %75 = getelementptr i8, ptr %74, i32 96
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %75) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %77 = and i32 %76, 67108864
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %25, label %79

79:                                               ; preds = %72
  %80 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %80(i32 noundef 21474800) #18
  %81 = load ptr, ptr %6, align 4
  %82 = getelementptr i8, ptr %81, i32 96
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %82) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %84 = and i32 %83, 67108864
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %25, label %86

86:                                               ; preds = %79
  %87 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %87(i32 noundef 21474800) #18
  %88 = load ptr, ptr %6, align 4
  %89 = getelementptr i8, ptr %88, i32 96
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %89) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %91 = and i32 %90, 67108864
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %25, label %93

93:                                               ; preds = %86
  %94 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %94(i32 noundef 21474800) #18
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %5, ptr noundef nonnull @.str.35) #19
  br label %95

95:                                               ; preds = %93, %25
  %96 = phi i32 [ %29, %25 ], [ -5, %93 ]
  ret i32 %96
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ftgmac100_mdiobus_write(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i16 noundef zeroext %3) #2 {
  %5 = getelementptr inbounds %struct.mii_bus, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr i8, ptr %6, i32 1412
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 96
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %11 = and i32 %10, 63
  %12 = shl i32 %1, 16
  %13 = and i32 %12, 2031616
  %14 = shl i32 %2, 21
  %15 = and i32 %14, 65011712
  %16 = or i32 %13, %15
  %17 = or i32 %16, %11
  %18 = or i32 %17, 134217728
  %19 = zext i16 %3 to i32
  %20 = load ptr, ptr %7, align 4
  %21 = getelementptr i8, ptr %20, i32 100
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #18, !srcloc !12
  %22 = load ptr, ptr %7, align 4
  %23 = getelementptr i8, ptr %22, i32 96
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %18) #18, !srcloc !12
  %24 = load ptr, ptr %7, align 4
  %25 = getelementptr i8, ptr %24, i32 96
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %27 = and i32 %26, 134217728
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %94, label %29

29:                                               ; preds = %4
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 21474800) #18
  %31 = load ptr, ptr %7, align 4
  %32 = getelementptr i8, ptr %31, i32 96
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %34 = and i32 %33, 134217728
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %94, label %36

36:                                               ; preds = %29
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 21474800) #18
  %38 = load ptr, ptr %7, align 4
  %39 = getelementptr i8, ptr %38, i32 96
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %41 = and i32 %40, 134217728
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %94, label %43

43:                                               ; preds = %36
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 21474800) #18
  %45 = load ptr, ptr %7, align 4
  %46 = getelementptr i8, ptr %45, i32 96
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %48 = and i32 %47, 134217728
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %94, label %50

50:                                               ; preds = %43
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %51(i32 noundef 21474800) #18
  %52 = load ptr, ptr %7, align 4
  %53 = getelementptr i8, ptr %52, i32 96
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %55 = and i32 %54, 134217728
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %94, label %57

57:                                               ; preds = %50
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %58(i32 noundef 21474800) #18
  %59 = load ptr, ptr %7, align 4
  %60 = getelementptr i8, ptr %59, i32 96
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %60) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %62 = and i32 %61, 134217728
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %94, label %64

64:                                               ; preds = %57
  %65 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %65(i32 noundef 21474800) #18
  %66 = load ptr, ptr %7, align 4
  %67 = getelementptr i8, ptr %66, i32 96
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %67) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %69 = and i32 %68, 134217728
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %94, label %71

71:                                               ; preds = %64
  %72 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %72(i32 noundef 21474800) #18
  %73 = load ptr, ptr %7, align 4
  %74 = getelementptr i8, ptr %73, i32 96
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %74) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %76 = and i32 %75, 134217728
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %94, label %78

78:                                               ; preds = %71
  %79 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %79(i32 noundef 21474800) #18
  %80 = load ptr, ptr %7, align 4
  %81 = getelementptr i8, ptr %80, i32 96
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %81) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %83 = and i32 %82, 134217728
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %94, label %85

85:                                               ; preds = %78
  %86 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %86(i32 noundef 21474800) #18
  %87 = load ptr, ptr %7, align 4
  %88 = getelementptr i8, ptr %87, i32 96
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %88) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %90 = and i32 %89, 134217728
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %85
  %93 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %93(i32 noundef 21474800) #18
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %6, ptr noundef nonnull @.str.36) #19
  br label %94

94:                                               ; preds = %92, %85, %78, %71, %64, %57, %50, %43, %36, %29, %4
  %95 = phi i32 [ -5, %92 ], [ 0, %85 ], [ 0, %78 ], [ 0, %71 ], [ 0, %64 ], [ 0, %57 ], [ 0, %50 ], [ 0, %43 ], [ 0, %36 ], [ 0, %29 ], [ 0, %4 ]
  ret i32 %95
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_mdiobus_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdiobus_alloc_size(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_print_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_phy_mode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @phy_find_first(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @phy_connect(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #17

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }
attributes #10 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #13 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #18 = { nounwind }
attributes #19 = { cold nounwind }
attributes #20 = { nounwind allocsize(2) }
attributes #21 = { nounwind readonly willreturn }

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
!8 = !{i64 5035155}
!9 = !{i64 2152574608}
!10 = !{!"auto-init"}
!11 = !{i64 2152575830}
!12 = !{i64 5034737}
!13 = !{i8 0, i8 2}
!14 = !{i32 0, i32 33}
!15 = !{!"branch_weights", i32 1, i32 2000}
!16 = !{!"branch_weights", i32 2000, i32 1}
!17 = !{i64 2153369042, i64 2153369530, i64 2153369079, i64 2153369135, i64 2153369169, i64 2153369193, i64 2153369234, i64 2153369255, i64 2153369283, i64 2153369317}
!18 = !{i64 2156526988}
!19 = !{i64 2156527368}
!20 = !{i64 2156525567}
!21 = !{i64 2148929549}
!22 = !{i64 2148925373}
!23 = !{i64 2148925448, i64 2148925475, i64 2148925522, i64 2148925544, i64 2148925572, i64 2148925592}
!24 = !{i64 2148952552}
!25 = !{i64 2156523199}
!26 = !{i64 2156522945}
!27 = !{i64 2148916692}
