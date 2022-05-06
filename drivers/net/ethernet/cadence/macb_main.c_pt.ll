; ModuleID = '/llk/IR/drivers/net/ethernet/cadence/macb_main.c_pt.bc'
source_filename = "../drivers/net/ethernet/cadence/macb_main.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.macb_config = type { i32, i32, ptr, ptr, i32, ptr }
%struct.macb_usrio_config = type { i32, i32, i32, i32, i32 }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.gem_statistic = type { [32 x i8], i32, i32 }
%struct.macb_ptp_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.phylink_pcs_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.phylink_mac_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_bulk_data = type { ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.120, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.137, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.120 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.ref_tracker_dir = type {}
%struct.possible_net_t = type {}
%union.anon.137 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.macb = type { ptr, i8, ptr, ptr, i32, i32, i32, i32, i32, [8 x %struct.macb_queue], %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.139, %struct.macb_or_gem_ops, ptr, ptr, %struct.phylink_config, %struct.phylink_pcs, %struct.phylink_pcs, i32, i32, i32, [2 x %struct.macb_tx_skb], i32, [91 x i64], i32, i32, i32, ptr, i8, %struct.spinlock, i32, ptr, %struct.ptp_clock_info, %struct.tsu_incr, %struct.hwtstamp_config, %struct.ethtool_rx_fs_list, %struct.spinlock, i32, %struct.tasklet_struct, i32, i32, i32, %struct.macb_pm_data, ptr }
%struct.macb_queue = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, %struct.work_struct, i32, i32, i32, i32, ptr, ptr, ptr, %struct.napi_struct, %struct.queue_stats, %struct.work_struct, i32, i32, [128 x %struct.gem_tx_ts] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.queue_stats = type { %union.anon.138, i32, i32, i32, i32, i32 }
%union.anon.138 = type { i32 }
%struct.gem_tx_ts = type { ptr, %struct.macb_dma_desc_ptp }
%struct.macb_dma_desc_ptp = type { i32, i32 }
%union.anon.139 = type { %struct.gem_stats }
%struct.gem_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.macb_or_gem_ops = type { ptr, ptr, ptr, ptr }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }
%struct.phylink_pcs = type { ptr, i8 }
%struct.macb_tx_skb = type { ptr, i32, i32, i8 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tsu_incr = type { i32, i32 }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.ethtool_rx_fs_list = type { %struct.list_head, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.143, i32 }
%union.anon.143 = type { ptr }
%struct.macb_pm_data = type { i32, i32 }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.netdev_queue = type { ptr, %struct.netdevice_tracker, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, [4 x i8], %struct.spinlock, i32, i32, i32, [48 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [52 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [24 x i8] }
%struct.macb_platform_data = type { ptr, ptr }
%struct.macb_dma_desc = type { i32, i32 }
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
%struct.anon.58 = type { i16, i16 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.page = type { i32, %union.anon.1, %union.anon.114, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.114 = type { %struct.atomic_t }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.ethtool_regs = type { i32, i32, i32, [0 x i8] }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.ethtool_ringparam = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_rxnfc = type { i32, i32, i64, %struct.ethtool_rx_flow_spec, %union.anon.135, [0 x i32] }
%struct.ethtool_rx_flow_spec = type { i32, %union.ethtool_flow_union, %struct.ethtool_flow_ext, %union.ethtool_flow_union, %struct.ethtool_flow_ext, i64, i32 }
%union.ethtool_flow_union = type { %struct.ethtool_tcpip6_spec, [12 x i8] }
%struct.ethtool_tcpip6_spec = type { [4 x i32], [4 x i32], i16, i16, i8 }
%struct.ethtool_flow_ext = type { [2 x i8], [6 x i8], i16, i16, [2 x i32] }
%union.anon.135 = type { i32 }
%struct.ethtool_rx_fs_item = type { %struct.ethtool_rx_flow_spec, %struct.list_head }
%struct.ethtool_tcpip4_spec = type { i32, i32, i16, i16, i8 }
%struct.ethtool_ts_info = type { i32, i32, i32, i32, [3 x i32], i32, [3 x i32] }
%struct.phylink_link_state = type { [3 x i32], [3 x i32], i32, i32, i32, i32, i8 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.sifive_fu540_macb_mgmt = type { ptr, i32, %struct.clk_hw }
%struct.clk_hw = type { ptr, ptr, ptr }

@__initcall__kmod_macb__459_5066_macb_driver_init6 = internal global ptr @macb_driver_init, section ".initcall6.init", align 4
@macb_driver = internal global %struct.platform_driver { ptr @macb_probe, ptr @macb_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @macb_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @macb_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_macb_driver_exit = internal global ptr @macb_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file460 = internal constant [44 x i8] c"macb.file=drivers/net/ethernet/cadence/macb\00", section ".modinfo", align 1
@__UNIQUE_ID_license461 = internal constant [17 x i8] c"macb.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description462 = internal constant [50 x i8] c"macb.description=Cadence MACB/GEM Ethernet driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author463 = internal constant [39 x i8] c"macb.author=Haavard Skinnemoen (Atmel)\00", section ".modinfo", align 1
@__UNIQUE_ID_alias464 = internal constant [25 x i8] c"macb.alias=platform:macb\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [5 x i8] c"macb\00", align 1
@macb_dt_ids = internal constant [20 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cdns,at32ap7000-macb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cdns,at91sam9260-macb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at91sam9260_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cdns,macb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cdns,np4-macb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @np4_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cdns,pc302-gem\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pc302gem_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cdns,gem\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pc302gem_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cdns,sam9x60-macb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at91sam9260_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d2-gem\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sama5d2_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d29-gem\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sama5d29_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d3-gem\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sama5d3_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d3-macb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sama5d3macb_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d4-gem\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sama5d4_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cdns,at91rm9200-emac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @emac_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cdns,emac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @emac_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cdns,zynqmp-gem\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @zynqmp_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cdns,zynq-gem\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @zynq_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sifive,fu540-c000-gem\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fu540_c000_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,sama7g5-gem\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sama7g5_gem_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,sama7g5-emac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sama7g5_emac_config }, %struct.of_device_id zeroinitializer], align 4
@macb_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @macb_suspend, ptr @macb_resume, ptr @macb_suspend, ptr @macb_resume, ptr @macb_suspend, ptr @macb_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @macb_runtime_suspend, ptr @macb_runtime_resume, ptr null }, align 4
@default_gem_config = internal unnamed_addr constant %struct.macb_config { i32 536871008, i32 16, ptr @macb_clk_init, ptr @macb_init, i32 10240, ptr @macb_default_usrio }, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"magic-packet\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Cannot register net device, aborting.\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"Cadence %s rev 0x%08x at 0x%08lx irq %d (%pM)\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"GEM\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"MACB\00", align 1
@macb_default_usrio = internal constant %struct.macb_usrio_config { i32 1, i32 1, i32 1, i32 2, i32 0 }, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"pclk\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"hclk\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"failed to get pclk\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"failed to get hclk\0A\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"tx_clk\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"rx_clk\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"tsu_clk\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"failed to enable pclk (%d)\0A\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"failed to enable hclk (%d)\0A\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"failed to enable tx_clk (%d)\0A\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"failed to enable rx_clk (%d)\0A\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"failed to enable tsu_clk (%d)\0A\00", align 1
@.str.18 = private unnamed_addr constant [37 x i8] c"Unable to request IRQ %d (error %d)\0A\00", align 1
@macb_netdev_ops = internal constant %struct.net_device_ops { ptr null, ptr null, ptr @macb_open, ptr @macb_close, ptr @macb_start_xmit, ptr @macb_features_check, ptr null, ptr null, ptr @macb_set_rx_mode, ptr @eth_mac_addr, ptr @eth_validate_addr, ptr null, ptr @macb_ioctl, ptr null, ptr null, ptr null, ptr null, ptr @macb_change_mtu, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @macb_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @macb_set_features, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@gem_ethtool_ops = internal constant %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr null, ptr @macb_get_regs_len, ptr @macb_get_regs, ptr @macb_get_wol, ptr @macb_set_wol, ptr null, ptr null, ptr null, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @macb_get_ringparam, ptr @macb_set_ringparam, ptr null, ptr null, ptr null, ptr null, ptr @gem_get_ethtool_strings, ptr null, ptr @gem_get_ethtool_stats, ptr null, ptr null, ptr null, ptr null, ptr @gem_get_sset_count, ptr @gem_get_rxnfc, ptr @gem_set_rxnfc, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @macb_get_ts_info, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @macb_get_link_ksettings, ptr @macb_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@macb_ethtool_ops = internal constant %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr null, ptr @macb_get_regs_len, ptr @macb_get_regs, ptr @macb_get_wol, ptr @macb_set_wol, ptr null, ptr null, ptr null, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @macb_get_ringparam, ptr @macb_set_ringparam, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ethtool_op_get_ts_info, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @macb_get_link_ksettings, ptr @macb_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.19 = private unnamed_addr constant [29 x i8] c"DMA bus error: HRESP not OK\0A\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.20 = private unnamed_addr constant [24 x i8] c"BUG: halt tx timed out\0A\00", align 1
@.str.21 = private unnamed_addr constant [37 x i8] c"BUG: TX buffers exhausted mid-frame\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.22 = private unnamed_addr constant [42 x i8] c"Unable to allocate DMA memory (error %d)\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.23 = private unnamed_addr constant [14 x i8] c"no PHY found\0A\00", align 1
@.str.24 = private unnamed_addr constant [27 x i8] c"Could not attach PHY (%d)\0A\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"phy-handle\00", align 1
@.str.26 = private unnamed_addr constant [35 x i8] c"Error - LSO headers fragmented!!!\0A\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"BUG! empty skb!\0A\00", align 1
@.str.28 = private unnamed_addr constant [19 x i8] c"TX DMA map failed\0A\00", align 1
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.29 = private unnamed_addr constant [28 x i8] c"include/linux/dma-mapping.h\00", align 1
@.str.30 = private unnamed_addr constant [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@gem_statistics = internal unnamed_addr constant [43 x %struct.gem_statistic] [%struct.gem_statistic { [32 x i8] c"tx_octets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 256, i32 0 }, %struct.gem_statistic { [32 x i8] c"tx_frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 264, i32 0 }, %struct.gem_statistic { [32 x i8] c"tx_broadcast_frames\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 268, i32 0 }, %struct.gem_statistic { [32 x i8] c"tx_multicast_frames\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 272, i32 0 }, %struct.gem_statistic { [32 x i8] c"tx_pause_frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 276, i32 0 }, %struct.gem_statistic { [32 x i8] c"tx_64_byte_frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 280, i32 0 }, %struct.gem_statistic { [32 x i8] c"tx_65_127_byte_frames\00\00\00\00\00\00\00\00\00\00\00", i32 284, i32 0 }, %struct.gem_statistic { [32 x i8] c"tx_128_255_byte_frames\00\00\00\00\00\00\00\00\00\00", i32 288, i32 0 }, %struct.gem_statistic { [32 x i8] c"tx_256_511_byte_frames\00\00\00\00\00\00\00\00\00\00", i32 292, i32 0 }, %struct.gem_statistic { [32 x i8] c"tx_512_1023_byte_frames\00\00\00\00\00\00\00\00\00", i32 296, i32 0 }, %struct.gem_statistic { [32 x i8] c"tx_1024_1518_byte_frames\00\00\00\00\00\00\00\00", i32 300, i32 0 }, %struct.gem_statistic { [32 x i8] c"tx_greater_than_1518_byte_frames", i32 304, i32 0 }, %struct.gem_statistic { [32 x i8] c"tx_underrun\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 308, i32 576 }, %struct.gem_statistic { [32 x i8] c"tx_single_collision_frames\00\00\00\00\00\00", i32 312, i32 1088 }, %struct.gem_statistic { [32 x i8] c"tx_multiple_collision_frames\00\00\00\00", i32 316, i32 1088 }, %struct.gem_statistic { [32 x i8] c"tx_excessive_collisions\00\00\00\00\00\00\00\00\00", i32 320, i32 1216 }, %struct.gem_statistic { [32 x i8] c"tx_late_collisions\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 324, i32 1088 }, %struct.gem_statistic { [32 x i8] c"tx_deferred_frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 328, i32 0 }, %struct.gem_statistic { [32 x i8] c"tx_carrier_sense_errors\00\00\00\00\00\00\00\00\00", i32 332, i32 1088 }, %struct.gem_statistic { [32 x i8] c"rx_octets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 336, i32 0 }, %struct.gem_statistic { [32 x i8] c"rx_frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 344, i32 0 }, %struct.gem_statistic { [32 x i8] c"rx_broadcast_frames\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 348, i32 0 }, %struct.gem_statistic { [32 x i8] c"rx_multicast_frames\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 352, i32 0 }, %struct.gem_statistic { [32 x i8] c"rx_pause_frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 356, i32 0 }, %struct.gem_statistic { [32 x i8] c"rx_64_byte_frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 360, i32 0 }, %struct.gem_statistic { [32 x i8] c"rx_65_127_byte_frames\00\00\00\00\00\00\00\00\00\00\00", i32 364, i32 0 }, %struct.gem_statistic { [32 x i8] c"rx_128_255_byte_frames\00\00\00\00\00\00\00\00\00\00", i32 368, i32 0 }, %struct.gem_statistic { [32 x i8] c"rx_256_511_byte_frames\00\00\00\00\00\00\00\00\00\00", i32 372, i32 0 }, %struct.gem_statistic { [32 x i8] c"rx_512_1023_byte_frames\00\00\00\00\00\00\00\00\00", i32 376, i32 0 }, %struct.gem_statistic { [32 x i8] c"rx_1024_1518_byte_frames\00\00\00\00\00\00\00\00", i32 380, i32 0 }, %struct.gem_statistic { [32 x i8] c"rx_greater_than_1518_byte_frames", i32 384, i32 0 }, %struct.gem_statistic { [32 x i8] c"rx_undersized_frames\00\00\00\00\00\00\00\00\00\00\00\00", i32 388, i32 3 }, %struct.gem_statistic { [32 x i8] c"rx_oversize_frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 392, i32 3 }, %struct.gem_statistic { [32 x i8] c"rx_jabbers\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 396, i32 3 }, %struct.gem_statistic { [32 x i8] c"rx_frame_check_sequence_errors\00\00", i32 400, i32 9 }, %struct.gem_statistic { [32 x i8] c"rx_length_field_frame_errors\00\00\00\00", i32 404, i32 1 }, %struct.gem_statistic { [32 x i8] c"rx_symbol_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 408, i32 17 }, %struct.gem_statistic { [32 x i8] c"rx_alignment_errors\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 412, i32 5 }, %struct.gem_statistic { [32 x i8] c"rx_resource_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 416, i32 5 }, %struct.gem_statistic { [32 x i8] c"rx_overruns\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 420, i32 33 }, %struct.gem_statistic { [32 x i8] c"rx_ip_header_checksum_errors\00\00\00\00", i32 424, i32 1 }, %struct.gem_statistic { [32 x i8] c"rx_tcp_checksum_errors\00\00\00\00\00\00\00\00\00\00", i32 428, i32 1 }, %struct.gem_statistic { [32 x i8] c"rx_udp_checksum_errors\00\00\00\00\00\00\00\00\00\00", i32 432, i32 1 }], align 4
@.str.31 = private unnamed_addr constant [41 x i8] c"drivers/net/ethernet/cadence/macb_main.c\00", align 1
@.str.32 = private unnamed_addr constant [28 x i8] c"Unable to allocate sk_buff\0A\00", align 1
@.str.33 = private unnamed_addr constant [39 x i8] c"not whole frame pointed by descriptor\0A\00", align 1
@.str.34 = private unnamed_addr constant [34 x i8] c"inconsistent Rx descriptor chain\0A\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"q%d_%s\00", align 1
@queue_statistics = internal constant [6 x %struct.gem_statistic] [%struct.gem_statistic { [32 x i8] c"rx_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.gem_statistic { [32 x i8] c"rx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.gem_statistic { [32 x i8] c"rx_dropped\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.gem_statistic { [32 x i8] c"tx_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.gem_statistic { [32 x i8] c"tx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.gem_statistic { [32 x i8] c"tx_dropped\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }], align 4
@.str.36 = private unnamed_addr constant [39 x i8] c"Command parameter %d is not supported\0A\00", align 1
@.str.37 = private unnamed_addr constant [39 x i8] c"Rule not added: location %d not free!\0A\00", align 1
@.str.38 = private unnamed_addr constant [31 x i8] c"RX queue corruption: reset it\0A\00", align 1
@.str.39 = private unnamed_addr constant [35 x i8] c"GEM doesn't support hardware ptp.\0A\00", align 1
@gem_ptp_info = internal global %struct.macb_ptp_info { ptr @gem_ptp_init, ptr @gem_ptp_remove, ptr @gem_get_ptp_max_adj, ptr @gem_get_tsu_rate, ptr @gem_get_ts_info, ptr @gem_get_hwtst, ptr @gem_set_hwtst }, align 4
@.str.40 = private unnamed_addr constant [34 x i8] c"invalid hw address, using random\0A\00", align 1
@.str.41 = private unnamed_addr constant [13 x i8] c"MACB_mii_bus\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"%s-%x\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"mdio\00", align 1
@macb_phylink_pcs_ops = internal constant %struct.phylink_pcs_ops { ptr null, ptr @macb_pcs_get_state, ptr @macb_pcs_config, ptr @macb_pcs_an_restart, ptr null }, align 4
@macb_phylink_usx_pcs_ops = internal constant %struct.phylink_pcs_ops { ptr null, ptr @macb_usx_pcs_get_state, ptr @macb_usx_pcs_config, ptr null, ptr @macb_usx_pcs_link_up }, align 4
@macb_phylink_ops = internal constant %struct.phylink_mac_ops { ptr @phylink_generic_validate, ptr @macb_mac_select_pcs, ptr null, ptr null, ptr @macb_mac_config, ptr null, ptr null, ptr @macb_mac_link_down, ptr @macb_mac_link_up }, align 4
@.str.44 = private unnamed_addr constant [43 x i8] c"Could not create a phylink instance (%ld)\0A\00", align 1
@.str.45 = private unnamed_addr constant [45 x i8] c"unable to generate target frequency: %ld Hz\0A\00", align 1
@.str.46 = private unnamed_addr constant [26 x i8] c"adjusting tx_clk failed.\0A\00", align 1
@at91sam9260_config = internal constant %struct.macb_config { i32 6, i32 0, ptr @macb_clk_init, ptr @macb_init, i32 0, ptr @macb_default_usrio }, align 4
@np4_config = internal constant %struct.macb_config { i32 16, i32 0, ptr @macb_clk_init, ptr @macb_init, i32 0, ptr @macb_default_usrio }, align 4
@pc302gem_config = internal constant %struct.macb_config { i32 1610612736, i32 16, ptr @macb_clk_init, ptr @macb_init, i32 0, ptr @macb_default_usrio }, align 4
@sama5d2_config = internal constant %struct.macb_config { i32 4, i32 16, ptr @macb_clk_init, ptr @macb_init, i32 0, ptr @macb_default_usrio }, align 4
@sama5d29_config = internal constant %struct.macb_config { i32 68, i32 16, ptr @macb_clk_init, ptr @macb_init, i32 0, ptr @macb_default_usrio }, align 4
@sama5d3_config = internal constant %struct.macb_config { i32 1610612772, i32 16, ptr @macb_clk_init, ptr @macb_init, i32 10240, ptr @macb_default_usrio }, align 4
@sama5d3macb_config = internal constant %struct.macb_config { i32 1073741830, i32 0, ptr @macb_clk_init, ptr @macb_init, i32 0, ptr @macb_default_usrio }, align 4
@sama5d4_config = internal constant %struct.macb_config { i32 4, i32 4, ptr @macb_clk_init, ptr @macb_init, i32 0, ptr @macb_default_usrio }, align 4
@emac_config = internal constant %struct.macb_config { i32 134217984, i32 0, ptr @at91ether_clk_init, ptr @at91ether_init, i32 0, ptr @macb_default_usrio }, align 4
@zynqmp_config = internal constant %struct.macb_config { i32 536871136, i32 16, ptr @macb_clk_init, ptr @macb_init, i32 10240, ptr @macb_default_usrio }, align 4
@zynq_config = internal constant %struct.macb_config { i32 536871176, i32 16, ptr @macb_clk_init, ptr @macb_init, i32 0, ptr @macb_default_usrio }, align 4
@fu540_c000_config = internal constant %struct.macb_config { i32 536871008, i32 16, ptr @fu540_c000_clk_init, ptr @fu540_c000_init, i32 10240, ptr @macb_default_usrio }, align 4
@sama7g5_gem_config = internal constant %struct.macb_config { i32 603980288, i32 16, ptr @macb_clk_init, ptr @macb_init, i32 0, ptr @sama7g5_usrio }, align 4
@sama7g5_emac_config = internal constant %struct.macb_config { i32 518, i32 16, ptr @macb_clk_init, ptr @macb_init, i32 0, ptr @sama7g5_usrio }, align 4
@.str.47 = private unnamed_addr constant [10 x i8] c"ether_clk\00", align 1
@at91ether_netdev_ops = internal constant %struct.net_device_ops { ptr null, ptr null, ptr @at91ether_open, ptr @at91ether_close, ptr @at91ether_start_xmit, ptr null, ptr null, ptr null, ptr @macb_set_rx_mode, ptr @eth_mac_addr, ptr @eth_validate_addr, ptr null, ptr @macb_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @macb_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.48 = private unnamed_addr constant [23 x i8] c"%s: DMA mapping error\0A\00", align 1
@__func__.at91ether_start_xmit = private unnamed_addr constant [21 x i8] c"at91ether_start_xmit\00", align 1
@.str.49 = private unnamed_addr constant [32 x i8] c"%s called, but device is busy!\0A\00", align 1
@.str.50 = private unnamed_addr constant [12 x i8] c"ROVR error\0A\00", align 1
@mgmt = internal unnamed_addr global ptr null, align 4
@.str.51 = private unnamed_addr constant [19 x i8] c"sifive-gemgxl-mgmt\00", align 1
@fu540_c000_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fu540_macb_tx_recalc_rate, ptr @fu540_macb_tx_round_rate, ptr null, ptr null, ptr null, ptr @fu540_macb_tx_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.52 = private unnamed_addr constant [30 x i8] c"failed to enable tx_clk (%u)\0A\00", align 1
@.str.53 = private unnamed_addr constant [28 x i8] c"Registered clk switch '%s'\0A\00", align 1
@sama7g5_usrio = internal constant %struct.macb_usrio_config { i32 0, i32 1, i32 2, i32 4, i32 64 }, align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias464, ptr @__UNIQUE_ID_author463, ptr @__UNIQUE_ID_description462, ptr @__UNIQUE_ID_file460, ptr @__UNIQUE_ID_license461, ptr @__exitcall_macb_driver_exit, ptr @__initcall__kmod_macb__459_5066_macb_driver_init6, ptr @macb_driver_exit], section "llvm.metadata"
@switch.table.macb_get_regs.57 = private unnamed_addr constant [3 x i32] [i32 16, i32 16, i32 24], align 4
@switch.table.at91ether_stop = private unnamed_addr constant [3 x i32] [i32 144, i32 144, i32 216], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @macb_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @macb_driver, ptr noundef null) #22
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @macb_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @macb_driver) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @macb_probe(ptr noundef %0) #2 {
  %2 = alloca [5 x %struct.clk_bulk_data], align 4
  %3 = alloca [6 x i8], align 1
  %4 = alloca [6 x i8], align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 4
  %12 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %13 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %14 = load ptr, ptr %13, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #22
  store ptr null, ptr %5, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #22
  store ptr null, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #22
  store ptr null, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #22
  store ptr null, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #22
  store ptr null, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #22
  store i32 0, ptr %10, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #22
  store ptr null, ptr %11, align 4, !annotation !8
  %15 = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %11) #22
  %16 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = ptrtoint ptr %15 to i32
  br label %415

19:                                               ; preds = %1
  %20 = icmp eq ptr %14, null
  br i1 %20, label %33, label %21

21:                                               ; preds = %19
  %22 = call ptr @of_match_node(ptr noundef nonnull @macb_dt_ids, ptr noundef nonnull %14) #22
  %23 = icmp eq ptr %22, null
  br i1 %23, label %33, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.of_device_id, ptr %22, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.macb_config, ptr %26, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.macb_config, ptr %26, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  br label %33

33:                                               ; preds = %28, %24, %21, %19
  %34 = phi ptr [ @default_gem_config, %19 ], [ %26, %28 ], [ @default_gem_config, %24 ], [ @default_gem_config, %21 ]
  %35 = phi ptr [ @macb_clk_init, %19 ], [ %30, %28 ], [ @macb_clk_init, %24 ], [ @macb_clk_init, %21 ]
  %36 = phi ptr [ @macb_init, %19 ], [ %32, %28 ], [ @macb_init, %24 ], [ @macb_init, %21 ]
  %37 = call i32 %35(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #22
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %415

39:                                               ; preds = %33
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %12, i32 noundef 100) #22
  call void @__pm_runtime_use_autosuspend(ptr noundef %12, i1 noundef zeroext true) #22
  %40 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 13
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %40) #22, !srcloc !9
  %41 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %40, ptr %40, i32 1, ptr elementtype(i32) %40) #22, !srcloc !10
  %42 = call i32 @__pm_runtime_set_status(ptr noundef %12, i32 noundef 0) #22
  call void @pm_runtime_enable(ptr noundef %12) #22
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 2) #22, !srcloc !11
  %43 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #22, !srcloc !12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 0) #22, !srcloc !11
  %44 = icmp eq i32 %43, 2
  %45 = getelementptr i8, ptr %15, i32 252
  %46 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #22
  %47 = and i32 %46, 268304384
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %39
  %50 = getelementptr i8, ptr %15, i32 660
  %51 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #22, !srcloc !12
  %52 = and i32 %51, 254
  %53 = or i32 %52, 1
  %54 = call i32 @__sw_hweight32(i32 noundef %53) #22
  br label %55

55:                                               ; preds = %49, %39
  %56 = phi i32 [ 1, %39 ], [ %53, %49 ]
  %57 = phi i32 [ 1, %39 ], [ %54, %49 ]
  %58 = call ptr @alloc_etherdev_mqs(i32 noundef 16624, i32 noundef %57, i32 noundef %57) #22
  %59 = icmp eq ptr %58, null
  br i1 %59, label %398, label %60

60:                                               ; preds = %55
  %61 = zext i1 %44 to i8
  %62 = load ptr, ptr %11, align 4
  %63 = load i32, ptr %62, align 4
  %64 = getelementptr inbounds %struct.net_device, ptr %58, i32 0, i32 5
  store i32 %63, ptr %64, align 32
  %65 = getelementptr inbounds %struct.net_device, ptr %58, i32 0, i32 111, i32 1
  store ptr %12, ptr %65, align 4
  %66 = getelementptr i8, ptr %58, i32 1408
  %67 = getelementptr i8, ptr %58, i32 16748
  store ptr %0, ptr %67, align 4
  %68 = getelementptr i8, ptr %58, i32 16772
  store ptr %58, ptr %68, align 4
  store ptr %15, ptr %66, align 8
  %69 = getelementptr i8, ptr %58, i32 1412
  store i8 %61, ptr %69, align 4
  %70 = select i1 %44, ptr @hw_readl_native, ptr @hw_readl
  %71 = select i1 %44, ptr @hw_writel_native, ptr @hw_writel
  %72 = getelementptr i8, ptr %58, i32 1416
  store ptr %70, ptr %72, align 8
  %73 = getelementptr i8, ptr %58, i32 1420
  store ptr %71, ptr %73, align 4
  %74 = getelementptr i8, ptr %58, i32 1436
  store i32 %57, ptr %74, align 4
  %75 = getelementptr i8, ptr %58, i32 1440
  store i32 %56, ptr %75, align 8
  %76 = getelementptr inbounds %struct.macb_config, ptr %34, i32 0, i32 1
  %77 = load i32, ptr %76, align 4
  %78 = getelementptr i8, ptr %58, i32 17024
  store i32 %77, ptr %78, align 8
  %79 = load ptr, ptr %5, align 4
  %80 = getelementptr i8, ptr %58, i32 16752
  store ptr %79, ptr %80, align 8
  %81 = load ptr, ptr %6, align 4
  %82 = getelementptr i8, ptr %58, i32 16756
  store ptr %81, ptr %82, align 4
  %83 = load ptr, ptr %7, align 4
  %84 = getelementptr i8, ptr %58, i32 16760
  store ptr %83, ptr %84, align 8
  %85 = load ptr, ptr %8, align 4
  %86 = getelementptr i8, ptr %58, i32 16764
  store ptr %85, ptr %86, align 4
  %87 = load ptr, ptr %9, align 4
  %88 = getelementptr i8, ptr %58, i32 16768
  store ptr %87, ptr %88, align 8
  %89 = getelementptr inbounds %struct.macb_config, ptr %34, i32 0, i32 4
  %90 = load i32, ptr %89, align 4
  %91 = getelementptr i8, ptr %58, i32 17804
  store i32 %90, ptr %91, align 4
  %92 = getelementptr i8, ptr %58, i32 17808
  store i32 0, ptr %92, align 8
  %93 = call ptr @of_get_property(ptr noundef %14, ptr noundef nonnull @.str.1, ptr noundef null) #22
  %94 = icmp eq ptr %93, null
  %95 = load i32, ptr %92, align 8
  br i1 %94, label %98, label %96

96:                                               ; preds = %60
  %97 = or i32 %95, 1
  store i32 %97, ptr %92, align 8
  br label %98

98:                                               ; preds = %96, %60
  %99 = phi i32 [ %97, %96 ], [ %95, %60 ]
  %100 = and i32 %99, 1
  %101 = icmp ne i32 %100, 0
  call void @device_set_wakeup_capable(ptr noundef %12, i1 noundef zeroext %101) #22
  %102 = getelementptr inbounds %struct.macb_config, ptr %34, i32 0, i32 5
  %103 = load ptr, ptr %102, align 4
  %104 = getelementptr i8, ptr %58, i32 18024
  store ptr %103, ptr %104, align 8
  %105 = getelementptr i8, ptr %58, i32 16744
  store i32 0, ptr %105, align 8
  %106 = load i32, ptr %34, align 4
  %107 = getelementptr i8, ptr %58, i32 17020
  store i32 %106, ptr %107, align 4
  %108 = load ptr, ptr %66, align 8
  %109 = getelementptr i8, ptr %108, i32 252
  %110 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %109) #22
  %111 = and i32 %110, 268304384
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %162, label %113

113:                                              ; preds = %98
  %114 = load i32, ptr %107, align 4
  %115 = or i32 %114, -2147483648
  store i32 %115, ptr %107, align 4
  %116 = load ptr, ptr %72, align 8
  %117 = call i32 %116(ptr noundef %66, i32 noundef 640) #22
  %118 = and i32 %117, 8388608
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %113
  %121 = load i32, ptr %107, align 4
  %122 = or i32 %121, 1
  store i32 %122, ptr %107, align 4
  br label %123

123:                                              ; preds = %120, %113
  %124 = and i32 %117, 1
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %123
  %127 = load i32, ptr %107, align 4
  %128 = or i32 %127, 16777216
  store i32 %128, ptr %107, align 4
  br label %129

129:                                              ; preds = %126, %123
  %130 = load ptr, ptr %72, align 8
  %131 = call i32 %130(ptr noundef %66, i32 noundef 684) #22
  %132 = and i32 %131, 67108864
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %137, label %134

134:                                              ; preds = %129
  %135 = load i32, ptr %107, align 4
  %136 = or i32 %135, 33554432
  store i32 %136, ptr %107, align 4
  br label %137

137:                                              ; preds = %134, %129
  %138 = load ptr, ptr %72, align 8
  %139 = call i32 %138(ptr noundef %66, i32 noundef 644) #22
  %140 = and i32 %139, 3145728
  %141 = icmp eq i32 %140, 0
  %142 = load i32, ptr %107, align 4
  br i1 %141, label %143, label %145

143:                                              ; preds = %137
  %144 = or i32 %142, 268435456
  store i32 %144, ptr %107, align 4
  br label %145

145:                                              ; preds = %143, %137
  %146 = phi i32 [ %144, %143 ], [ %142, %137 ]
  %147 = and i32 %146, 64
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %162, label %149

149:                                              ; preds = %145
  %150 = load ptr, ptr %72, align 8
  %151 = call i32 %150(ptr noundef %66, i32 noundef 656) #22
  %152 = and i32 %151, 256
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %149
  %155 = load ptr, ptr %67, align 4
  %156 = getelementptr inbounds %struct.platform_device, ptr %155, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %156, ptr noundef nonnull @.str.39) #23
  br label %162

157:                                              ; preds = %149
  %158 = getelementptr i8, ptr %58, i32 17816
  %159 = load i8, ptr %158, align 8
  %160 = or i8 %159, 2
  store i8 %160, ptr %158, align 8
  %161 = getelementptr i8, ptr %58, i32 17812
  store ptr @gem_ptp_info, ptr %161, align 4
  br label %162

162:                                              ; preds = %157, %154, %145, %98
  %163 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %58, ptr %163, align 8
  %164 = call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #22
  %165 = getelementptr inbounds %struct.net_device, ptr %58, i32 0, i32 59
  store i32 %164, ptr %165, align 8
  %166 = icmp slt i32 %164, 0
  br i1 %166, label %396, label %167

167:                                              ; preds = %162
  %168 = getelementptr inbounds %struct.net_device, ptr %58, i32 0, i32 30
  store i32 68, ptr %168, align 8
  %169 = load i32, ptr %107, align 4
  %170 = and i32 %169, 32
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %177, label %172

172:                                              ; preds = %167
  %173 = load ptr, ptr %72, align 8
  %174 = call i32 %173(ptr noundef %66, i32 noundef 72) #22
  %175 = add i32 %174, -18
  %176 = load i32, ptr %107, align 4
  br label %177

177:                                              ; preds = %172, %167
  %178 = phi i32 [ %176, %172 ], [ %169, %167 ]
  %179 = phi i32 [ %175, %172 ], [ 1500, %167 ]
  %180 = getelementptr inbounds %struct.net_device, ptr %58, i32 0, i32 31
  store i32 %179, ptr %180, align 4
  %181 = and i32 %178, 128
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %221, label %183

183:                                              ; preds = %177
  %184 = load ptr, ptr %72, align 8
  %185 = call i32 %184(ptr noundef %66, i32 noundef 676) #22
  %186 = lshr i32 %185, 8
  %187 = and i32 %186, 15
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %202, label %189

189:                                              ; preds = %183
  %190 = getelementptr i8, ptr %58, i32 17816
  %191 = load i8, ptr %190, align 8
  %192 = add i8 %191, -1
  %193 = icmp ult i8 %192, 3
  br i1 %193, label %194, label %198

194:                                              ; preds = %189
  %195 = sext i8 %192 to i32
  %196 = getelementptr inbounds [3 x i32], ptr @switch.table.macb_get_regs.57, i32 0, i32 %195
  %197 = load i32, ptr %196, align 4
  br label %198

198:                                              ; preds = %194, %189
  %199 = phi i32 [ %197, %194 ], [ 8, %189 ]
  %200 = shl nuw nsw i32 %199, %187
  %201 = getelementptr i8, ptr %58, i32 18004
  store i32 %200, ptr %201, align 4
  br label %202

202:                                              ; preds = %198, %183
  %203 = load ptr, ptr %72, align 8
  %204 = call i32 %203(ptr noundef %66, i32 noundef 676) #22
  %205 = lshr i32 %204, 12
  %206 = and i32 %205, 15
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %221, label %208

208:                                              ; preds = %202
  %209 = getelementptr i8, ptr %58, i32 17816
  %210 = load i8, ptr %209, align 8
  %211 = add i8 %210, -1
  %212 = icmp ult i8 %211, 3
  br i1 %212, label %213, label %217

213:                                              ; preds = %208
  %214 = sext i8 %211 to i32
  %215 = getelementptr inbounds [3 x i32], ptr @switch.table.macb_get_regs.57, i32 0, i32 %214
  %216 = load i32, ptr %215, align 4
  br label %217

217:                                              ; preds = %213, %208
  %218 = phi i32 [ %216, %213 ], [ 8, %208 ]
  %219 = shl nuw nsw i32 %218, %206
  %220 = getelementptr i8, ptr %58, i32 18008
  store i32 %219, ptr %220, align 8
  br label %221

221:                                              ; preds = %217, %202, %177
  %222 = getelementptr i8, ptr %58, i32 18012
  %223 = load i32, ptr %107, align 4
  %224 = and i32 %223, 256
  %225 = icmp eq i32 %224, 0
  %226 = select i1 %225, i32 1026, i32 1030
  store i32 %226, ptr %222, align 4
  %227 = load ptr, ptr %68, align 4
  %228 = call i32 @of_get_ethdev_address(ptr noundef %14, ptr noundef %227) #22
  switch i32 %228, label %229 [
    i32 -517, label %396
    i32 0, label %361
  ]

229:                                              ; preds = %221
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %4) #22
  %230 = getelementptr inbounds [6 x i8], ptr %4, i32 0, i32 1
  %231 = getelementptr inbounds [6 x i8], ptr %4, i32 0, i32 2
  %232 = getelementptr inbounds [6 x i8], ptr %4, i32 0, i32 3
  %233 = getelementptr inbounds [6 x i8], ptr %4, i32 0, i32 4
  %234 = getelementptr inbounds [6 x i8], ptr %4, i32 0, i32 5
  %235 = load i32, ptr %107, align 4
  %236 = icmp slt i32 %235, 0
  %237 = load ptr, ptr %72, align 8
  %238 = select i1 %236, i32 136, i32 152
  %239 = call i32 %237(ptr noundef %66, i32 noundef %238) #22
  %240 = load i32, ptr %107, align 4
  %241 = icmp slt i32 %240, 0
  %242 = select i1 %241, i32 140, i32 156
  %243 = load ptr, ptr %72, align 8
  %244 = call i32 %243(ptr noundef %66, i32 noundef %242) #22
  %245 = trunc i32 %239 to i8
  store i8 %245, ptr %4, align 4
  %246 = lshr i32 %239, 8
  %247 = trunc i32 %246 to i8
  store i8 %247, ptr %230, align 1
  %248 = lshr i32 %239, 16
  %249 = trunc i32 %248 to i8
  store i8 %249, ptr %231, align 2
  %250 = lshr i32 %239, 24
  %251 = trunc i32 %250 to i8
  store i8 %251, ptr %232, align 1
  %252 = trunc i32 %244 to i8
  store i8 %252, ptr %233, align 4
  %253 = lshr i32 %244, 8
  %254 = trunc i32 %253 to i8
  store i8 %254, ptr %234, align 1
  %255 = load i32, ptr %4, align 4
  %256 = and i32 %255, 1
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %258, label %265

258:                                              ; preds = %229
  %259 = load i16, ptr %233, align 4
  %260 = zext i16 %259 to i32
  %261 = or i32 %255, %260
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %265, label %263

263:                                              ; preds = %347, %318, %289, %258
  %264 = load ptr, ptr %68, align 4
  call void @dev_addr_mod(ptr noundef %264, i32 noundef 0, ptr noundef nonnull %4, i32 noundef 6) #22
  br label %360

265:                                              ; preds = %258, %229
  %266 = load i32, ptr %107, align 4
  %267 = icmp slt i32 %266, 0
  %268 = load ptr, ptr %72, align 8
  %269 = select i1 %267, i32 144, i32 160
  %270 = call i32 %268(ptr noundef %66, i32 noundef %269) #22
  %271 = load i32, ptr %107, align 4
  %272 = icmp slt i32 %271, 0
  %273 = load ptr, ptr %72, align 8
  %274 = select i1 %272, i32 148, i32 164
  %275 = call i32 %273(ptr noundef %66, i32 noundef %274) #22
  %276 = trunc i32 %270 to i8
  store i8 %276, ptr %4, align 4
  %277 = lshr i32 %270, 8
  %278 = trunc i32 %277 to i8
  store i8 %278, ptr %230, align 1
  %279 = lshr i32 %270, 16
  %280 = trunc i32 %279 to i8
  store i8 %280, ptr %231, align 2
  %281 = lshr i32 %270, 24
  %282 = trunc i32 %281 to i8
  store i8 %282, ptr %232, align 1
  %283 = trunc i32 %275 to i8
  store i8 %283, ptr %233, align 4
  %284 = lshr i32 %275, 8
  %285 = trunc i32 %284 to i8
  store i8 %285, ptr %234, align 1
  %286 = load i32, ptr %4, align 4
  %287 = and i32 %286, 1
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %289, label %294

289:                                              ; preds = %265
  %290 = load i16, ptr %233, align 4
  %291 = zext i16 %290 to i32
  %292 = or i32 %286, %291
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %294, label %263

294:                                              ; preds = %289, %265
  %295 = load i32, ptr %107, align 4
  %296 = icmp slt i32 %295, 0
  %297 = load ptr, ptr %72, align 8
  %298 = select i1 %296, i32 152, i32 168
  %299 = call i32 %297(ptr noundef %66, i32 noundef %298) #22
  %300 = load i32, ptr %107, align 4
  %301 = icmp slt i32 %300, 0
  %302 = load ptr, ptr %72, align 8
  %303 = select i1 %301, i32 156, i32 172
  %304 = call i32 %302(ptr noundef %66, i32 noundef %303) #22
  %305 = trunc i32 %299 to i8
  store i8 %305, ptr %4, align 4
  %306 = lshr i32 %299, 8
  %307 = trunc i32 %306 to i8
  store i8 %307, ptr %230, align 1
  %308 = lshr i32 %299, 16
  %309 = trunc i32 %308 to i8
  store i8 %309, ptr %231, align 2
  %310 = lshr i32 %299, 24
  %311 = trunc i32 %310 to i8
  store i8 %311, ptr %232, align 1
  %312 = trunc i32 %304 to i8
  store i8 %312, ptr %233, align 4
  %313 = lshr i32 %304, 8
  %314 = trunc i32 %313 to i8
  store i8 %314, ptr %234, align 1
  %315 = load i32, ptr %4, align 4
  %316 = and i32 %315, 1
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %318, label %323

318:                                              ; preds = %294
  %319 = load i16, ptr %233, align 4
  %320 = zext i16 %319 to i32
  %321 = or i32 %315, %320
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %323, label %263

323:                                              ; preds = %318, %294
  %324 = load i32, ptr %107, align 4
  %325 = icmp slt i32 %324, 0
  %326 = load ptr, ptr %72, align 8
  %327 = select i1 %325, i32 160, i32 176
  %328 = call i32 %326(ptr noundef %66, i32 noundef %327) #22
  %329 = load i32, ptr %107, align 4
  %330 = icmp slt i32 %329, 0
  %331 = load ptr, ptr %72, align 8
  %332 = select i1 %330, i32 164, i32 180
  %333 = call i32 %331(ptr noundef %66, i32 noundef %332) #22
  %334 = trunc i32 %328 to i8
  store i8 %334, ptr %4, align 4
  %335 = lshr i32 %328, 8
  %336 = trunc i32 %335 to i8
  store i8 %336, ptr %230, align 1
  %337 = lshr i32 %328, 16
  %338 = trunc i32 %337 to i8
  store i8 %338, ptr %231, align 2
  %339 = lshr i32 %328, 24
  %340 = trunc i32 %339 to i8
  store i8 %340, ptr %232, align 1
  %341 = trunc i32 %333 to i8
  store i8 %341, ptr %233, align 4
  %342 = lshr i32 %333, 8
  %343 = trunc i32 %342 to i8
  store i8 %343, ptr %234, align 1
  %344 = load i32, ptr %4, align 4
  %345 = and i32 %344, 1
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %347, label %352

347:                                              ; preds = %323
  %348 = load i16, ptr %233, align 4
  %349 = zext i16 %348 to i32
  %350 = or i32 %344, %349
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %352, label %263

352:                                              ; preds = %347, %323
  %353 = load ptr, ptr %67, align 4
  %354 = getelementptr inbounds %struct.platform_device, ptr %353, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %354, ptr noundef nonnull @.str.40) #23
  %355 = load ptr, ptr %68, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %3, i8 0, i32 6, i1 false) #22, !annotation !8
  call void @get_random_bytes(ptr noundef nonnull %3, i32 noundef 6) #22
  %356 = load i8, ptr %3, align 1
  %357 = and i8 %356, -4
  %358 = or i8 %357, 2
  store i8 %358, ptr %3, align 1
  call void @dev_addr_mod(ptr noundef %355, i32 noundef 0, ptr noundef nonnull %3, i32 noundef 6) #22
  %359 = getelementptr inbounds %struct.net_device, ptr %355, i32 0, i32 50
  store i8 1, ptr %359, align 8
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #22
  br label %360

360:                                              ; preds = %352, %263
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %4) #22
  br label %361

361:                                              ; preds = %360, %221
  %362 = call i32 @of_get_phy_mode(ptr noundef %14, ptr noundef nonnull %10) #22
  %363 = icmp eq i32 %362, 0
  %364 = load i32, ptr %10, align 4
  %365 = select i1 %363, i32 %364, i32 2
  %366 = getelementptr i8, ptr %58, i32 17028
  store i32 %365, ptr %366, align 4
  %367 = call i32 %36(ptr noundef %0) #22
  %368 = icmp eq i32 %367, 0
  br i1 %368, label %369, label %396

369:                                              ; preds = %361
  %370 = call fastcc i32 @macb_mii_init(ptr noundef %66)
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %372, label %396

372:                                              ; preds = %369
  call void @netif_carrier_off(ptr noundef nonnull %58) #22
  %373 = call i32 @register_netdev(ptr noundef nonnull %58) #22
  %374 = icmp eq i32 %373, 0
  br i1 %374, label %379, label %375

375:                                              ; preds = %372
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.2) #23
  %376 = getelementptr i8, ptr %58, i32 16972
  %377 = load ptr, ptr %376, align 4
  call void @mdiobus_unregister(ptr noundef %377) #22
  %378 = load ptr, ptr %376, align 4
  call void @mdiobus_free(ptr noundef %378) #22
  br label %396

379:                                              ; preds = %372
  %380 = getelementptr i8, ptr %58, i32 17980
  call void @tasklet_setup(ptr noundef %380, ptr noundef nonnull @macb_hresp_error_task) #22
  %381 = load i32, ptr %107, align 4
  %382 = icmp slt i32 %381, 0
  %383 = select i1 %382, ptr @.str.4, ptr @.str.5
  %384 = load ptr, ptr %72, align 8
  %385 = call i32 %384(ptr noundef %66, i32 noundef 252) #22
  %386 = load i32, ptr %64, align 32
  %387 = load i32, ptr %165, align 8
  %388 = getelementptr inbounds %struct.net_device, ptr %58, i32 0, i32 72
  %389 = load ptr, ptr %388, align 32
  call void (ptr, ptr, ...) @netdev_info(ptr noundef nonnull %58, ptr noundef nonnull @.str.3, ptr noundef nonnull %383, i32 noundef %385, i32 noundef %386, i32 noundef %387, ptr noundef %389) #23
  %390 = load ptr, ptr %67, align 4
  %391 = call i64 @ktime_get_mono_fast_ns() #22
  %392 = getelementptr inbounds %struct.platform_device, ptr %390, i32 0, i32 3, i32 11, i32 22
  store volatile i64 %391, ptr %392, align 8
  %393 = load ptr, ptr %67, align 4
  %394 = getelementptr inbounds %struct.platform_device, ptr %393, i32 0, i32 3
  %395 = call i32 @__pm_runtime_suspend(ptr noundef %394, i32 noundef 13) #22
  br label %415

396:                                              ; preds = %375, %369, %361, %221, %162
  %397 = phi i32 [ %228, %221 ], [ %367, %361 ], [ %370, %369 ], [ %373, %375 ], [ %164, %162 ]
  call void @free_netdev(ptr noundef nonnull %58) #22
  br label %398

398:                                              ; preds = %396, %55
  %399 = phi i32 [ %397, %396 ], [ -12, %55 ]
  %400 = load ptr, ptr %5, align 4
  %401 = load ptr, ptr %6, align 4
  %402 = load ptr, ptr %7, align 4
  %403 = load ptr, ptr %8, align 4
  %404 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #22
  %405 = getelementptr inbounds %struct.clk_bulk_data, ptr %2, i32 0, i32 1
  store i32 0, ptr %2, align 4
  store ptr %404, ptr %405, align 4
  %406 = getelementptr inbounds %struct.clk_bulk_data, ptr %2, i32 1
  store ptr null, ptr %406, align 4
  %407 = getelementptr inbounds %struct.clk_bulk_data, ptr %2, i32 1, i32 1
  store ptr %403, ptr %407, align 4
  %408 = getelementptr inbounds %struct.clk_bulk_data, ptr %2, i32 2
  store ptr null, ptr %408, align 4
  %409 = getelementptr inbounds %struct.clk_bulk_data, ptr %2, i32 2, i32 1
  store ptr %400, ptr %409, align 4
  %410 = getelementptr inbounds %struct.clk_bulk_data, ptr %2, i32 3
  store ptr null, ptr %410, align 4
  %411 = getelementptr inbounds %struct.clk_bulk_data, ptr %2, i32 3, i32 1
  store ptr %401, ptr %411, align 4
  %412 = getelementptr inbounds %struct.clk_bulk_data, ptr %2, i32 4
  store ptr null, ptr %412, align 4
  %413 = getelementptr inbounds %struct.clk_bulk_data, ptr %2, i32 4, i32 1
  store ptr %402, ptr %413, align 4
  call void @clk_bulk_disable(i32 noundef 5, ptr noundef nonnull %2) #22
  call void @clk_bulk_unprepare(i32 noundef 5, ptr noundef nonnull %2) #22
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #22
  call void @__pm_runtime_disable(ptr noundef %12, i1 noundef zeroext true) #22
  %414 = call i32 @__pm_runtime_set_status(ptr noundef %12, i32 noundef 2) #22
  call void @__pm_runtime_use_autosuspend(ptr noundef %12, i1 noundef zeroext false) #22
  br label %415

415:                                              ; preds = %398, %379, %33, %17
  %416 = phi i32 [ %18, %17 ], [ %399, %398 ], [ 0, %379 ], [ %37, %33 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #22
  ret i32 %416
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @macb_remove(ptr noundef %0) #2 {
  %2 = alloca [5 x %struct.clk_bulk_data], align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %44, label %6

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %4, i32 16972
  %8 = load ptr, ptr %7, align 4
  tail call void @mdiobus_unregister(ptr noundef %8) #22
  %9 = load ptr, ptr %7, align 4
  tail call void @mdiobus_free(ptr noundef %9) #22
  tail call void @unregister_netdev(ptr noundef nonnull %4) #22
  %10 = getelementptr i8, ptr %4, i32 17980
  tail call void @tasklet_kill(ptr noundef %10) #22
  %11 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %11, i1 noundef zeroext true) #22
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %11, i1 noundef zeroext false) #22
  %12 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 18
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %15, label %20

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 15
  %17 = load i16, ptr %16, align 8
  %18 = and i16 %17, 7
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %41, label %20

20:                                               ; preds = %15, %6
  %21 = getelementptr i8, ptr %4, i32 16752
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr i8, ptr %4, i32 16756
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %4, i32 16760
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr i8, ptr %4, i32 16764
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i8, ptr %4, i32 16768
  %30 = load ptr, ptr %29, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #22
  %31 = getelementptr inbounds %struct.clk_bulk_data, ptr %2, i32 0, i32 1
  store i32 0, ptr %2, align 4
  store ptr %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.clk_bulk_data, ptr %2, i32 1
  store ptr null, ptr %32, align 4
  %33 = getelementptr inbounds %struct.clk_bulk_data, ptr %2, i32 1, i32 1
  store ptr %28, ptr %33, align 4
  %34 = getelementptr inbounds %struct.clk_bulk_data, ptr %2, i32 2
  store ptr null, ptr %34, align 4
  %35 = getelementptr inbounds %struct.clk_bulk_data, ptr %2, i32 2, i32 1
  store ptr %22, ptr %35, align 4
  %36 = getelementptr inbounds %struct.clk_bulk_data, ptr %2, i32 3
  store ptr null, ptr %36, align 4
  %37 = getelementptr inbounds %struct.clk_bulk_data, ptr %2, i32 3, i32 1
  store ptr %24, ptr %37, align 4
  %38 = getelementptr inbounds %struct.clk_bulk_data, ptr %2, i32 4
  store ptr null, ptr %38, align 4
  %39 = getelementptr inbounds %struct.clk_bulk_data, ptr %2, i32 4, i32 1
  store ptr %26, ptr %39, align 4
  call void @clk_bulk_disable(i32 noundef 5, ptr noundef nonnull %2) #22
  call void @clk_bulk_unprepare(i32 noundef 5, ptr noundef nonnull %2) #22
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #22
  %40 = call i32 @__pm_runtime_set_status(ptr noundef %11, i32 noundef 2) #22
  br label %41

41:                                               ; preds = %20, %15
  %42 = getelementptr i8, ptr %4, i32 16976
  %43 = load ptr, ptr %42, align 8
  call void @phylink_destroy(ptr noundef %43) #22
  call void @free_netdev(ptr noundef nonnull %4) #22
  br label %44

44:                                               ; preds = %41, %1
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hw_readl_native(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr i8, ptr %3, i32 %1
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #22, !srcloc !12
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hw_writel_native(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr i8, ptr %4, i32 %1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %2) #22, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hw_readl(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr i8, ptr %3, i32 %1
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #22, !srcloc !12
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hw_writel(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr i8, ptr %4, i32 %1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %2) #22, !srcloc !11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_wakeup_capable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_ethdev_address(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_phy_mode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @macb_mii_init(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.macb, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  tail call void %3(ptr noundef %0, i32 noundef 0, i32 noundef 16) #22
  %4 = tail call ptr @mdiobus_alloc_size(i32 noundef 0) #22
  %5 = getelementptr inbounds %struct.macb, ptr %0, i32 0, i32 20
  store ptr %4, ptr %5, align 4
  %6 = icmp eq ptr %4, null
  br i1 %6, label %115, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.mii_bus, ptr %4, i32 0, i32 1
  store ptr @.str.41, ptr %8, align 4
  %9 = load ptr, ptr %5, align 4
  %10 = getelementptr inbounds %struct.mii_bus, ptr %9, i32 0, i32 4
  store ptr @macb_mdio_read, ptr %10, align 4
  %11 = load ptr, ptr %5, align 4
  %12 = getelementptr inbounds %struct.mii_bus, ptr %11, i32 0, i32 5
  store ptr @macb_mdio_write, ptr %12, align 8
  %13 = load ptr, ptr %5, align 4
  %14 = getelementptr inbounds %struct.mii_bus, ptr %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.macb, ptr %0, i32 0, i32 11
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.platform_device, ptr %16, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %14, i32 noundef 61, ptr noundef nonnull @.str.42, ptr noundef %17, i32 noundef %19)
  %21 = load ptr, ptr %5, align 4
  %22 = getelementptr inbounds %struct.mii_bus, ptr %21, i32 0, i32 3
  store ptr %0, ptr %22, align 8
  %23 = load ptr, ptr %15, align 4
  %24 = getelementptr inbounds %struct.platform_device, ptr %23, i32 0, i32 3
  %25 = load ptr, ptr %5, align 4
  %26 = getelementptr inbounds %struct.mii_bus, ptr %25, i32 0, i32 9
  store ptr %24, ptr %26, align 4
  %27 = getelementptr inbounds %struct.macb, ptr %0, i32 0, i32 17
  %28 = load ptr, ptr %27, align 4
  %29 = load ptr, ptr %5, align 4
  %30 = getelementptr inbounds %struct.net_device, ptr %28, i32 0, i32 111, i32 8
  store ptr %29, ptr %30, align 8
  %31 = load ptr, ptr %15, align 4
  %32 = getelementptr inbounds %struct.platform_device, ptr %31, i32 0, i32 3, i32 25
  %33 = load ptr, ptr %32, align 8
  %34 = tail call ptr @of_get_child_by_name(ptr noundef %33, ptr noundef nonnull @.str.43) #22
  %35 = icmp eq ptr %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %7
  %37 = load ptr, ptr %5, align 4
  %38 = tail call i32 @of_mdiobus_register(ptr noundef %37, ptr noundef nonnull %34) #22
  tail call void @of_node_put(ptr noundef nonnull %34) #22
  br label %59

39:                                               ; preds = %7
  %40 = tail call zeroext i1 @of_phy_is_fixed_link(ptr noundef %33) #22
  br i1 %40, label %41, label %44

41:                                               ; preds = %39
  %42 = load ptr, ptr %5, align 4
  %43 = tail call i32 @__mdiobus_register(ptr noundef %42, ptr noundef null) #22
  br label %59

44:                                               ; preds = %39
  %45 = tail call ptr @of_get_next_available_child(ptr noundef %33, ptr noundef null) #22
  %46 = icmp eq ptr %45, null
  br i1 %46, label %56, label %47

47:                                               ; preds = %53, %44
  %48 = phi ptr [ %54, %53 ], [ %45, %44 ]
  %49 = tail call zeroext i1 @of_mdiobus_child_is_phy(ptr noundef nonnull %48) #22
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  tail call void @of_node_put(ptr noundef nonnull %48) #22
  %51 = load ptr, ptr %5, align 4
  %52 = tail call i32 @of_mdiobus_register(ptr noundef %51, ptr noundef %33) #22
  br label %59

53:                                               ; preds = %47
  %54 = tail call ptr @of_get_next_available_child(ptr noundef %33, ptr noundef nonnull %48) #22
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %47

56:                                               ; preds = %53, %44
  %57 = load ptr, ptr %5, align 4
  %58 = tail call i32 @__mdiobus_register(ptr noundef %57, ptr noundef null) #22
  br label %59

59:                                               ; preds = %56, %50, %41, %36
  %60 = phi i32 [ %38, %36 ], [ %43, %41 ], [ %52, %50 ], [ %58, %56 ]
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %112

62:                                               ; preds = %59
  %63 = load ptr, ptr %27, align 4
  %64 = getelementptr i8, ptr %63, i32 17012
  store ptr @macb_phylink_pcs_ops, ptr %64, align 4
  %65 = getelementptr i8, ptr %63, i32 17004
  store ptr @macb_phylink_usx_pcs_ops, ptr %65, align 4
  %66 = getelementptr inbounds %struct.net_device, ptr %63, i32 0, i32 111
  %67 = getelementptr i8, ptr %63, i32 16980
  store ptr %66, ptr %67, align 4
  %68 = getelementptr i8, ptr %63, i32 16984
  store i32 0, ptr %68, align 4
  %69 = getelementptr i8, ptr %63, i32 17028
  %70 = load i32, ptr %69, align 4
  %71 = icmp eq i32 %70, 4
  br i1 %71, label %72, label %75

72:                                               ; preds = %62
  %73 = getelementptr i8, ptr %63, i32 16990
  store i8 1, ptr %73, align 2
  %74 = getelementptr i8, ptr %63, i32 16992
  store ptr @macb_get_pcs_fixed_state, ptr %74, align 4
  br label %75

75:                                               ; preds = %72, %62
  %76 = getelementptr i8, ptr %63, i32 17000
  store i32 62, ptr %76, align 4
  %77 = getelementptr i8, ptr %63, i32 16996
  %78 = load i32, ptr %77, align 4
  %79 = or i32 %78, 132
  store i32 %79, ptr %77, align 4
  %80 = getelementptr i8, ptr %63, i32 17020
  %81 = load i32, ptr %80, align 4
  %82 = and i32 %81, -1610612736
  %83 = icmp eq i32 %82, -1610612736
  br i1 %83, label %84, label %97

84:                                               ; preds = %75
  %85 = and i32 %81, 8
  %86 = icmp eq i32 %85, 0
  %87 = select i1 %86, i32 254, i32 190
  store i32 %87, ptr %76, align 4
  %88 = and i32 %81, 16777216
  %89 = icmp eq i32 %88, 0
  %90 = select i1 %89, i32 7820, i32 7836
  %91 = or i32 %90, %78
  store i32 %91, ptr %77, align 4
  %92 = and i32 %81, 33554432
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %84
  %95 = or i32 %91, 67108864
  store i32 %95, ptr %77, align 4
  %96 = or i32 %87, 1024
  store i32 %96, ptr %76, align 4
  br label %97

97:                                               ; preds = %94, %84, %75
  %98 = getelementptr i8, ptr %63, i32 16748
  %99 = load ptr, ptr %98, align 4
  %100 = getelementptr inbounds %struct.platform_device, ptr %99, i32 0, i32 3, i32 26
  %101 = load ptr, ptr %100, align 4
  %102 = tail call ptr @phylink_create(ptr noundef %67, ptr noundef %101, i32 noundef %70, ptr noundef nonnull @macb_phylink_ops) #22
  %103 = getelementptr i8, ptr %63, i32 16976
  store ptr %102, ptr %103, align 8
  %104 = icmp ugt ptr %102, inttoptr (i32 -4096 to ptr)
  br i1 %104, label %105, label %115

105:                                              ; preds = %97
  %106 = ptrtoint ptr %102 to i32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %63, ptr noundef nonnull @.str.44, i32 noundef %106) #23
  %107 = load ptr, ptr %103, align 8
  %108 = icmp eq ptr %107, null
  br i1 %108, label %115, label %109

109:                                              ; preds = %105
  %110 = ptrtoint ptr %107 to i32
  %111 = load ptr, ptr %5, align 4
  tail call void @mdiobus_unregister(ptr noundef %111) #22
  br label %112

112:                                              ; preds = %109, %59
  %113 = phi i32 [ %60, %59 ], [ %110, %109 ]
  %114 = load ptr, ptr %5, align 4
  tail call void @mdiobus_free(ptr noundef %114) #22
  br label %115

115:                                              ; preds = %112, %105, %97, %1
  %116 = phi i32 [ 0, %105 ], [ %113, %112 ], [ -12, %1 ], [ 0, %97 ]
  ret i32 %116
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @macb_hresp_error_task(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -16572
  %3 = getelementptr i8, ptr %0, i32 -1208
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 -16532
  %6 = getelementptr i8, ptr %0, i32 -16544
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %1
  %10 = getelementptr i8, ptr %0, i32 32
  br label %11

11:                                               ; preds = %11, %9
  %12 = phi i32 [ 0, %9 ], [ %21, %11 ]
  %13 = phi ptr [ %5, %9 ], [ %22, %11 ]
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.macb, ptr %14, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.macb_queue, ptr %13, i32 0, i32 4
  %18 = load i32, ptr %17, align 8
  %19 = load i32, ptr %10, align 4
  %20 = or i32 %19, 2296
  tail call void %16(ptr noundef %14, i32 noundef %18, i32 noundef %20) #22
  %21 = add nuw i32 %12, 1
  %22 = getelementptr %struct.macb_queue, ptr %13, i32 1
  %23 = load i32, ptr %6, align 4
  %24 = icmp ult i32 %21, %23
  br i1 %24, label %11, label %25

25:                                               ; preds = %11, %1
  %26 = getelementptr i8, ptr %0, i32 -16564
  %27 = load ptr, ptr %26, align 8
  %28 = tail call i32 %27(ptr noundef %2, i32 noundef 0) #22
  %29 = and i32 %28, -13
  %30 = getelementptr i8, ptr %0, i32 -16560
  %31 = load ptr, ptr %30, align 4
  tail call void %31(ptr noundef %2, i32 noundef 0, i32 noundef %29) #22
  tail call void @netif_tx_stop_all_queues(ptr noundef %4) #22
  tail call void @netif_carrier_off(ptr noundef %4) #22
  %32 = getelementptr i8, ptr %0, i32 -1016
  %33 = load ptr, ptr %32, align 4
  tail call void %33(ptr noundef %2) #22
  %34 = load i32, ptr %6, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %75, label %36

36:                                               ; preds = %36, %25
  %37 = phi i32 [ %53, %36 ], [ 0, %25 ]
  %38 = phi ptr [ %54, %36 ], [ %5, %25 ]
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr inbounds %struct.macb, ptr %39, i32 0, i32 3
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.macb_queue, ptr %38, i32 0, i32 9
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.macb_queue, ptr %38, i32 0, i32 17
  %45 = load i32, ptr %44, align 8
  tail call void %41(ptr noundef %39, i32 noundef %43, i32 noundef %45) #22
  %46 = load ptr, ptr %38, align 8
  %47 = getelementptr inbounds %struct.macb, ptr %46, i32 0, i32 3
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.macb_queue, ptr %38, i32 0, i32 6
  %50 = load i32, ptr %49, align 8
  %51 = getelementptr inbounds %struct.macb_queue, ptr %38, i32 0, i32 15
  %52 = load i32, ptr %51, align 4
  tail call void %48(ptr noundef %46, i32 noundef %50, i32 noundef %52) #22
  %53 = add nuw i32 %37, 1
  %54 = getelementptr %struct.macb_queue, ptr %38, i32 1
  %55 = load i32, ptr %6, align 4
  %56 = icmp ult i32 %53, %55
  br i1 %56, label %36, label %57

57:                                               ; preds = %36
  %58 = icmp eq i32 %55, 0
  br i1 %58, label %75, label %59

59:                                               ; preds = %57
  %60 = getelementptr i8, ptr %0, i32 32
  br label %61

61:                                               ; preds = %61, %59
  %62 = phi i32 [ 0, %59 ], [ %71, %61 ]
  %63 = phi ptr [ %5, %59 ], [ %72, %61 ]
  %64 = load ptr, ptr %63, align 8
  %65 = getelementptr inbounds %struct.macb, ptr %64, i32 0, i32 3
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.macb_queue, ptr %63, i32 0, i32 3
  %68 = load i32, ptr %67, align 4
  %69 = load i32, ptr %60, align 4
  %70 = or i32 %69, 2296
  tail call void %66(ptr noundef %64, i32 noundef %68, i32 noundef %70) #22
  %71 = add nuw i32 %62, 1
  %72 = getelementptr %struct.macb_queue, ptr %63, i32 1
  %73 = load i32, ptr %6, align 4
  %74 = icmp ult i32 %71, %73
  br i1 %74, label %61, label %75

75:                                               ; preds = %61, %57, %25
  %76 = or i32 %28, 12
  %77 = load ptr, ptr %30, align 4
  tail call void %77(ptr noundef %2, i32 noundef 0, i32 noundef %76) #22
  tail call void @netif_carrier_on(ptr noundef %4) #22
  %78 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 88
  %79 = load i32, ptr %78, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %90, label %81

81:                                               ; preds = %75
  %82 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 87
  br label %83

83:                                               ; preds = %83, %81
  %84 = phi i32 [ 0, %81 ], [ %87, %83 ]
  %85 = load ptr, ptr %82, align 64
  %86 = getelementptr %struct.netdev_queue, ptr %85, i32 %84, i32 12
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %86) #22
  %87 = add nuw i32 %84, 1
  %88 = load i32, ptr %78, align 4
  %89 = icmp ult i32 %87, %88
  br i1 %89, label %83, label %90

90:                                               ; preds = %83, %75
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @macb_clk_init(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5) #2 {
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %6
  %12 = load ptr, ptr %9, align 4
  store ptr %12, ptr %1, align 4
  %13 = getelementptr inbounds %struct.macb_platform_data, ptr %9, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  br label %18

15:                                               ; preds = %6
  %16 = tail call ptr @devm_clk_get(ptr noundef %7, ptr noundef nonnull @.str.6) #22
  store ptr %16, ptr %1, align 4
  %17 = tail call ptr @devm_clk_get(ptr noundef %7, ptr noundef nonnull @.str.7) #22
  br label %18

18:                                               ; preds = %15, %11
  %19 = phi ptr [ %17, %15 ], [ %14, %11 ]
  store ptr %19, ptr %2, align 4
  %20 = load ptr, ptr %1, align 4
  %21 = icmp eq ptr %20, null
  %22 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  %23 = or i1 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = ptrtoint ptr %20 to i32
  %26 = select i1 %22, i32 %25, i32 -19
  %27 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %7, i32 noundef %26, ptr noundef nonnull @.str.8) #22
  br label %111

28:                                               ; preds = %18
  %29 = icmp eq ptr %19, null
  %30 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  %31 = or i1 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = ptrtoint ptr %19 to i32
  %34 = select i1 %30, i32 %33, i32 -19
  %35 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %7, i32 noundef %34, ptr noundef nonnull @.str.9) #22
  br label %111

36:                                               ; preds = %28
  %37 = tail call ptr @devm_clk_get_optional(ptr noundef %7, ptr noundef nonnull @.str.10) #22
  store ptr %37, ptr %3, align 4
  %38 = icmp ugt ptr %37, inttoptr (i32 -4096 to ptr)
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = ptrtoint ptr %37 to i32
  br label %111

41:                                               ; preds = %36
  %42 = tail call ptr @devm_clk_get_optional(ptr noundef %7, ptr noundef nonnull @.str.11) #22
  store ptr %42, ptr %4, align 4
  %43 = icmp ugt ptr %42, inttoptr (i32 -4096 to ptr)
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = ptrtoint ptr %42 to i32
  br label %111

46:                                               ; preds = %41
  %47 = tail call ptr @devm_clk_get_optional(ptr noundef %7, ptr noundef nonnull @.str.12) #22
  store ptr %47, ptr %5, align 4
  %48 = icmp ugt ptr %47, inttoptr (i32 -4096 to ptr)
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = ptrtoint ptr %47 to i32
  br label %111

51:                                               ; preds = %46
  %52 = load ptr, ptr %1, align 4
  %53 = tail call i32 @clk_prepare(ptr noundef %52) #22
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = tail call i32 @clk_enable(ptr noundef %52) #22
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  tail call void @clk_unprepare(ptr noundef %52) #22
  br label %59

59:                                               ; preds = %58, %51
  %60 = phi i32 [ %56, %58 ], [ %53, %51 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.13, i32 noundef %60) #23
  br label %111

61:                                               ; preds = %55
  %62 = load ptr, ptr %2, align 4
  %63 = tail call i32 @clk_prepare(ptr noundef %62) #22
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = tail call i32 @clk_enable(ptr noundef %62) #22
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %65
  tail call void @clk_unprepare(ptr noundef %62) #22
  br label %69

69:                                               ; preds = %68, %61
  %70 = phi i32 [ %66, %68 ], [ %63, %61 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.14, i32 noundef %70) #23
  br label %108

71:                                               ; preds = %65
  %72 = load ptr, ptr %3, align 4
  %73 = tail call i32 @clk_prepare(ptr noundef %72) #22
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = tail call i32 @clk_enable(ptr noundef %72) #22
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %75
  tail call void @clk_unprepare(ptr noundef %72) #22
  br label %79

79:                                               ; preds = %78, %71
  %80 = phi i32 [ %76, %78 ], [ %73, %71 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.15, i32 noundef %80) #23
  br label %105

81:                                               ; preds = %75
  %82 = load ptr, ptr %4, align 4
  %83 = tail call i32 @clk_prepare(ptr noundef %82) #22
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %81
  %86 = tail call i32 @clk_enable(ptr noundef %82) #22
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %85
  tail call void @clk_unprepare(ptr noundef %82) #22
  br label %89

89:                                               ; preds = %88, %81
  %90 = phi i32 [ %86, %88 ], [ %83, %81 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.16, i32 noundef %90) #23
  br label %102

91:                                               ; preds = %85
  %92 = load ptr, ptr %5, align 4
  %93 = tail call i32 @clk_prepare(ptr noundef %92) #22
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %91
  %96 = tail call i32 @clk_enable(ptr noundef %92) #22
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %111, label %98

98:                                               ; preds = %95
  tail call void @clk_unprepare(ptr noundef %92) #22
  br label %99

99:                                               ; preds = %98, %91
  %100 = phi i32 [ %96, %98 ], [ %93, %91 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.17, i32 noundef %100) #23
  %101 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %101) #22
  tail call void @clk_unprepare(ptr noundef %101) #22
  br label %102

102:                                              ; preds = %99, %89
  %103 = phi i32 [ %90, %89 ], [ %100, %99 ]
  %104 = load ptr, ptr %3, align 4
  tail call void @clk_disable(ptr noundef %104) #22
  tail call void @clk_unprepare(ptr noundef %104) #22
  br label %105

105:                                              ; preds = %102, %79
  %106 = phi i32 [ %80, %79 ], [ %103, %102 ]
  %107 = load ptr, ptr %2, align 4
  tail call void @clk_disable(ptr noundef %107) #22
  tail call void @clk_unprepare(ptr noundef %107) #22
  br label %108

108:                                              ; preds = %105, %69
  %109 = phi i32 [ %70, %69 ], [ %106, %105 ]
  %110 = load ptr, ptr %1, align 4
  tail call void @clk_disable(ptr noundef %110) #22
  tail call void @clk_unprepare(ptr noundef %110) #22
  br label %111

111:                                              ; preds = %108, %95, %59, %49, %44, %39, %32, %24
  %112 = phi i32 [ %27, %24 ], [ %35, %32 ], [ %40, %39 ], [ %45, %44 ], [ %50, %49 ], [ %60, %59 ], [ %109, %108 ], [ 0, %95 ]
  ret i32 %112
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @macb_init(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 1408
  %5 = getelementptr i8, ptr %3, i32 1432
  store i32 512, ptr %5, align 8
  %6 = getelementptr i8, ptr %3, i32 1428
  store i32 512, ptr %6, align 4
  %7 = getelementptr i8, ptr %3, i32 1440
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  br label %9

9:                                                ; preds = %55, %1
  %10 = phi i32 [ 0, %1 ], [ %57, %55 ]
  %11 = phi i32 [ 0, %1 ], [ %56, %55 ]
  %12 = load i32, ptr %7, align 8
  %13 = shl nuw nsw i32 1, %10
  %14 = and i32 %12, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %55, label %16

16:                                               ; preds = %9
  %17 = getelementptr %struct.macb, ptr %4, i32 0, i32 9, i32 %11
  store ptr %4, ptr %17, align 8
  %18 = getelementptr %struct.macb, ptr %4, i32 0, i32 9, i32 %11, i32 24
  tail call void @netif_napi_add(ptr noundef %3, ptr noundef %18, ptr noundef nonnull @macb_poll, i32 noundef 64) #22
  %19 = icmp eq i32 %10, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %16
  %21 = shl nuw nsw i32 %10, 2
  %22 = add nuw nsw i32 %21, 1020
  %23 = add nuw nsw i32 %21, 1532
  %24 = add nuw nsw i32 %21, 1564
  %25 = add nuw nsw i32 %21, 1596
  %26 = add nuw nsw i32 %21, 1084
  %27 = add nuw nsw i32 %21, 1148
  %28 = add nuw nsw i32 %21, 1180
  %29 = getelementptr %struct.macb, ptr %4, i32 0, i32 9, i32 %11, i32 8
  store i32 %28, ptr %29, align 8
  br label %30

30:                                               ; preds = %20, %16
  %31 = phi i32 [ %22, %20 ], [ 36, %16 ]
  %32 = phi i32 [ %23, %20 ], [ 40, %16 ]
  %33 = phi i32 [ %24, %20 ], [ 44, %16 ]
  %34 = phi i32 [ %25, %20 ], [ 48, %16 ]
  %35 = phi i32 [ %26, %20 ], [ 28, %16 ]
  %36 = phi i32 [ %27, %20 ], [ 24, %16 ]
  %37 = getelementptr %struct.macb, ptr %4, i32 0, i32 9, i32 %11, i32 2
  store i32 %31, ptr %37, align 8
  %38 = getelementptr %struct.macb, ptr %4, i32 0, i32 9, i32 %11, i32 3
  store i32 %32, ptr %38, align 4
  %39 = getelementptr %struct.macb, ptr %4, i32 0, i32 9, i32 %11, i32 4
  store i32 %33, ptr %39, align 8
  %40 = getelementptr %struct.macb, ptr %4, i32 0, i32 9, i32 %11, i32 5
  store i32 %34, ptr %40, align 4
  %41 = getelementptr %struct.macb, ptr %4, i32 0, i32 9, i32 %11, i32 6
  store i32 %35, ptr %41, align 8
  %42 = getelementptr %struct.macb, ptr %4, i32 0, i32 9, i32 %11, i32 9
  store i32 %36, ptr %42, align 4
  %43 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef %11) #22
  %44 = getelementptr %struct.macb, ptr %4, i32 0, i32 9, i32 %11, i32 1
  store i32 %43, ptr %44, align 4
  %45 = tail call i32 @devm_request_threaded_irq(ptr noundef %8, i32 noundef %43, ptr noundef nonnull @macb_interrupt, ptr noundef null, i32 noundef 128, ptr noundef %3, ptr noundef %17) #22
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %30
  %48 = load i32, ptr %44, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.18, i32 noundef %48, i32 noundef %45) #23
  br label %218

49:                                               ; preds = %30
  %50 = getelementptr %struct.macb, ptr %4, i32 0, i32 9, i32 %11, i32 16
  store i32 -32, ptr %50, align 8
  %51 = getelementptr %struct.macb, ptr %4, i32 0, i32 9, i32 %11, i32 16, i32 1
  store volatile ptr %51, ptr %51, align 4
  %52 = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  store ptr %51, ptr %52, align 4
  %53 = getelementptr %struct.macb, ptr %4, i32 0, i32 9, i32 %11, i32 16, i32 2
  store ptr @macb_tx_error_task, ptr %53, align 4
  %54 = add i32 %11, 1
  br label %55

55:                                               ; preds = %49, %9
  %56 = phi i32 [ %54, %49 ], [ %11, %9 ]
  %57 = add nuw nsw i32 %10, 1
  %58 = icmp eq i32 %57, 8
  br i1 %58, label %59, label %9

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 16
  store ptr @macb_netdev_ops, ptr %60, align 8
  %61 = getelementptr i8, ptr %3, i32 17020
  %62 = load i32, ptr %61, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %59
  br label %65

65:                                               ; preds = %64, %59
  %66 = phi i32 [ 2040, %64 ], [ 16320, %59 ]
  %67 = phi ptr [ @macb_alloc_rx_buffers, %64 ], [ @gem_alloc_rx_buffers, %59 ]
  %68 = phi ptr [ @macb_free_rx_buffers, %64 ], [ @gem_free_rx_buffers, %59 ]
  %69 = phi ptr [ @macb_init_rings, %64 ], [ @gem_init_rings, %59 ]
  %70 = phi ptr [ @macb_rx, %64 ], [ @gem_rx, %59 ]
  %71 = phi ptr [ @macb_ethtool_ops, %64 ], [ @gem_ethtool_ops, %59 ]
  %72 = getelementptr i8, ptr %3, i32 17064
  store i32 %66, ptr %72, align 8
  %73 = getelementptr i8, ptr %3, i32 16956
  store ptr %67, ptr %73, align 4
  %74 = getelementptr i8, ptr %3, i32 16960
  store ptr %68, ptr %74, align 4
  %75 = getelementptr i8, ptr %3, i32 16964
  store ptr %69, ptr %75, align 4
  %76 = getelementptr i8, ptr %3, i32 16968
  store ptr %70, ptr %76, align 4
  %77 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 42
  store ptr %71, ptr %77, align 8
  %78 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 24
  store i64 1, ptr %78, align 8
  %79 = getelementptr i8, ptr %3, i32 1416
  %80 = load ptr, ptr %79, align 8
  %81 = tail call i32 %80(ptr noundef %4, i32 noundef 660) #22
  %82 = and i32 %81, 134217728
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %65
  %85 = load i64, ptr %78, align 8
  %86 = or i64 %85, 65536
  store i64 %86, ptr %78, align 8
  br label %87

87:                                               ; preds = %84, %65
  %88 = load i32, ptr %61, align 4
  %89 = and i32 %88, -1879048192
  %90 = icmp eq i32 %89, -2147483648
  br i1 %90, label %91, label %94

91:                                               ; preds = %87
  %92 = load i64, ptr %78, align 8
  %93 = or i64 %92, 1099511627784
  store i64 %93, ptr %78, align 8
  br label %94

94:                                               ; preds = %91, %87
  %95 = and i32 %88, 1073741824
  %96 = icmp eq i32 %95, 0
  %97 = load i64, ptr %78, align 8
  br i1 %96, label %100, label %98

98:                                               ; preds = %94
  %99 = and i64 %97, -2
  store i64 %99, ptr %78, align 8
  br label %100

100:                                              ; preds = %98, %94
  %101 = phi i64 [ %99, %98 ], [ %97, %94 ]
  %102 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 23
  store i64 %101, ptr %102, align 16
  %103 = load ptr, ptr %79, align 8
  %104 = tail call i32 %103(ptr noundef %4, i32 noundef 668) #22
  %105 = trunc i32 %104 to i8
  %106 = udiv i8 %105, 3
  %107 = zext i8 %106 to i32
  %108 = lshr i32 %104, 16
  %109 = and i32 %108, 255
  %110 = tail call i32 @llvm.umin.i32(i32 %107, i32 %109)
  %111 = getelementptr i8, ptr %3, i32 17976
  store i32 %110, ptr %111, align 8
  %112 = getelementptr i8, ptr %3, i32 17960
  store volatile ptr %112, ptr %112, align 4
  %113 = getelementptr i8, ptr %3, i32 17964
  store ptr %112, ptr %113, align 4
  %114 = icmp eq i32 %110, 0
  br i1 %114, label %126, label %115

115:                                              ; preds = %100
  %116 = and i32 %104, 65280
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %125, label %118

118:                                              ; preds = %115
  %119 = getelementptr i8, ptr %3, i32 1420
  %120 = load ptr, ptr %119, align 4
  tail call void %120(ptr noundef %4, i32 noundef 1760, i32 noundef 2048) #22
  %121 = load i64, ptr %78, align 8
  %122 = or i64 %121, 274877906944
  store i64 %122, ptr %78, align 8
  %123 = getelementptr i8, ptr %3, i32 17968
  store i32 0, ptr %123, align 8
  %124 = getelementptr i8, ptr %3, i32 17972
  store i32 0, ptr %124, align 4
  br label %126

125:                                              ; preds = %115
  store i32 0, ptr %111, align 8
  br label %126

126:                                              ; preds = %125, %118, %100
  %127 = load i32, ptr %61, align 4
  %128 = and i32 %127, 16
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %172

130:                                              ; preds = %126
  %131 = getelementptr i8, ptr %3, i32 17028
  %132 = load i32, ptr %131, align 4
  %133 = add i32 %132, -9
  %134 = icmp ult i32 %133, 4
  br i1 %134, label %135, label %139

135:                                              ; preds = %130
  %136 = getelementptr i8, ptr %3, i32 18024
  %137 = load ptr, ptr %136, align 8
  %138 = getelementptr inbounds %struct.macb_usrio_config, ptr %137, i32 0, i32 2
  br label %152

139:                                              ; preds = %130
  %140 = icmp ne i32 %132, 7
  %141 = and i32 %127, 4
  %142 = icmp eq i32 %141, 0
  %143 = select i1 %140, i1 true, i1 %142
  br i1 %143, label %148, label %144

144:                                              ; preds = %139
  %145 = getelementptr i8, ptr %3, i32 18024
  %146 = load ptr, ptr %145, align 8
  %147 = getelementptr inbounds %struct.macb_usrio_config, ptr %146, i32 0, i32 1
  br label %152

148:                                              ; preds = %139
  br i1 %142, label %149, label %155

149:                                              ; preds = %148
  %150 = getelementptr i8, ptr %3, i32 18024
  %151 = load ptr, ptr %150, align 8
  br label %152

152:                                              ; preds = %149, %144, %135
  %153 = phi ptr [ %147, %144 ], [ %151, %149 ], [ %138, %135 ]
  %154 = load i32, ptr %153, align 4
  br label %155

155:                                              ; preds = %152, %148
  %156 = phi i32 [ 0, %148 ], [ %154, %152 ]
  %157 = and i32 %127, 2
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %165, label %159

159:                                              ; preds = %155
  %160 = getelementptr i8, ptr %3, i32 18024
  %161 = load ptr, ptr %160, align 8
  %162 = getelementptr inbounds %struct.macb_usrio_config, ptr %161, i32 0, i32 3
  %163 = load i32, ptr %162, align 4
  %164 = or i32 %163, %156
  br label %165

165:                                              ; preds = %159, %155
  %166 = phi i32 [ %164, %159 ], [ %156, %155 ]
  %167 = icmp slt i32 %127, 0
  %168 = getelementptr i8, ptr %3, i32 1420
  %169 = load ptr, ptr %168, align 4
  %170 = select i1 %167, i32 12, i32 192
  tail call void %169(ptr noundef %4, i32 noundef %170, i32 noundef %166) #22
  %171 = load i32, ptr %61, align 4
  br label %172

172:                                              ; preds = %165, %126
  %173 = phi i32 [ %171, %165 ], [ %127, %126 ]
  %174 = icmp slt i32 %173, 0
  %175 = getelementptr i8, ptr %3, i32 16752
  %176 = load ptr, ptr %175, align 8
  %177 = tail call i32 @clk_get_rate(ptr noundef %176) #22
  %178 = icmp ult i32 %177, 20000001
  br i1 %174, label %179, label %189

179:                                              ; preds = %172
  br i1 %178, label %195, label %180

180:                                              ; preds = %179
  %181 = icmp ult i32 %177, 40000001
  br i1 %181, label %195, label %182

182:                                              ; preds = %180
  %183 = icmp ult i32 %177, 80000001
  br i1 %183, label %195, label %184

184:                                              ; preds = %182
  %185 = icmp ult i32 %177, 120000001
  br i1 %185, label %195, label %186

186:                                              ; preds = %184
  %187 = icmp ult i32 %177, 160000001
  %188 = select i1 %187, i32 1048576, i32 1310720
  br label %195

189:                                              ; preds = %172
  br i1 %178, label %195, label %190

190:                                              ; preds = %189
  %191 = icmp ult i32 %177, 40000001
  br i1 %191, label %195, label %192

192:                                              ; preds = %190
  %193 = icmp ult i32 %177, 80000001
  %194 = select i1 %193, i32 2048, i32 3072
  br label %195

195:                                              ; preds = %192, %190, %189, %186, %184, %182, %180, %179
  %196 = phi i32 [ 0, %189 ], [ 1024, %190 ], [ %194, %192 ], [ 0, %179 ], [ 262144, %180 ], [ 524288, %182 ], [ 786432, %184 ], [ %188, %186 ]
  %197 = load i32, ptr %61, align 4
  %198 = icmp slt i32 %197, 0
  br i1 %198, label %199, label %208

199:                                              ; preds = %195
  %200 = load ptr, ptr %79, align 8
  %201 = tail call i32 %200(ptr noundef %4, i32 noundef 640) #22
  %202 = lshr i32 %201, 25
  %203 = and i32 %202, 7
  %204 = icmp eq i32 %203, 2
  %205 = select i1 %204, i32 2097152, i32 0
  %206 = icmp eq i32 %203, 4
  %207 = select i1 %206, i32 4194304, i32 %205
  br label %208

208:                                              ; preds = %199, %195
  %209 = phi i32 [ 0, %195 ], [ %207, %199 ]
  %210 = or i32 %209, %196
  %211 = getelementptr i8, ptr %3, i32 17028
  %212 = load i32, ptr %211, align 4
  %213 = icmp eq i32 %212, 4
  %214 = or i32 %210, 134219776
  %215 = select i1 %213, i32 %214, i32 %210
  %216 = getelementptr i8, ptr %3, i32 1420
  %217 = load ptr, ptr %216, align 4
  tail call void %217(ptr noundef %4, i32 noundef 4, i32 noundef %215) #22
  br label %218

218:                                              ; preds = %208, %47
  %219 = phi i32 [ %45, %47 ], [ 0, %208 ]
  ret i32 %219
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %0) unnamed_addr #6 {
  %2 = tail call i32 @clk_prepare(ptr noundef %0) #22
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = tail call i32 @clk_enable(ptr noundef %0) #22
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @clk_unprepare(ptr noundef %0) #22
  br label %8

8:                                                ; preds = %7, %4, %1
  %9 = phi i32 [ %2, %1 ], [ %5, %7 ], [ 0, %4 ]
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @macb_poll(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 -112
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.macb, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 %6(ptr noundef %4, i32 noundef 32) #22
  %8 = getelementptr inbounds %struct.macb, ptr %4, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  tail call void %9(ptr noundef %4, i32 noundef 32, i32 noundef %7) #22
  %10 = getelementptr inbounds %struct.macb, ptr %4, i32 0, i32 19, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %11(ptr noundef %3, ptr noundef %0, i32 noundef %1) #22
  %13 = icmp slt i32 %12, %1
  br i1 %13, label %14, label %63

14:                                               ; preds = %2
  %15 = tail call zeroext i1 @napi_complete_done(ptr noundef %0, i32 noundef %12) #22
  %16 = load ptr, ptr %5, align 8
  %17 = tail call i32 %16(ptr noundef %4, i32 noundef 32) #22
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %32, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.macb, ptr %4, i32 0, i32 25
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %19
  %25 = load ptr, ptr %3, align 8
  %26 = getelementptr inbounds %struct.macb, ptr %25, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr i8, ptr %0, i32 -104
  %29 = load i32, ptr %28, align 8
  tail call void %27(ptr noundef %25, i32 noundef %29, i32 noundef 2) #22
  br label %30

30:                                               ; preds = %24, %19
  %31 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %0) #22
  br i1 %31, label %62, label %63

32:                                               ; preds = %14
  %33 = load ptr, ptr %3, align 8
  %34 = getelementptr inbounds %struct.macb, ptr %33, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr i8, ptr %0, i32 -100
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.macb, ptr %4, i32 0, i32 48
  %39 = load i32, ptr %38, align 4
  tail call void %35(ptr noundef %33, i32 noundef %37, i32 noundef %39) #22
  %40 = load ptr, ptr %5, align 8
  %41 = tail call i32 %40(ptr noundef %4, i32 noundef 32) #22
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %63, label %43, !prof !13

43:                                               ; preds = %32
  %44 = load ptr, ptr %3, align 8
  %45 = getelementptr inbounds %struct.macb, ptr %44, i32 0, i32 3
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr i8, ptr %0, i32 -96
  %48 = load i32, ptr %47, align 8
  %49 = load i32, ptr %38, align 4
  tail call void %46(ptr noundef %44, i32 noundef %48, i32 noundef %49) #22
  %50 = getelementptr inbounds %struct.macb, ptr %4, i32 0, i32 25
  %51 = load i32, ptr %50, align 4
  %52 = and i32 %51, 1
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %43
  %55 = load ptr, ptr %3, align 8
  %56 = getelementptr inbounds %struct.macb, ptr %55, i32 0, i32 3
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr i8, ptr %0, i32 -104
  %59 = load i32, ptr %58, align 8
  tail call void %57(ptr noundef %55, i32 noundef %59, i32 noundef 2) #22
  br label %60

60:                                               ; preds = %54, %43
  %61 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %0) #22
  br i1 %61, label %62, label %63

62:                                               ; preds = %60, %30
  tail call void @__napi_schedule(ptr noundef %0) #22
  br label %63

63:                                               ; preds = %62, %60, %32, %30, %2
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @macb_interrupt(i32 noundef %0, ptr noundef %1) #2 {
  %3 = load ptr, ptr %1, align 8
  %4 = getelementptr inbounds %struct.macb, ptr %3, i32 0, i32 17
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.macb, ptr %3, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.macb_queue, ptr %1, i32 0, i32 2
  %9 = load i32, ptr %8, align 8
  %10 = tail call i32 %7(ptr noundef %3, i32 noundef %9) #22
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %334, label %12, !prof !14

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.macb, ptr %3, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %13) #22
  %14 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 6
  %15 = getelementptr inbounds %struct.macb, ptr %3, i32 0, i32 48
  %16 = getelementptr inbounds %struct.macb_queue, ptr %1, i32 0, i32 4
  %17 = getelementptr inbounds %struct.macb, ptr %3, i32 0, i32 25
  %18 = getelementptr inbounds %struct.macb_queue, ptr %1, i32 0, i32 24
  %19 = ptrtoint ptr %1 to i32
  %20 = getelementptr inbounds %struct.macb_queue, ptr %1, i32 0, i32 11
  %21 = getelementptr inbounds %struct.macb_queue, ptr %1, i32 0, i32 12
  %22 = getelementptr inbounds %struct.macb_queue, ptr %1, i32 0, i32 13
  %23 = getelementptr inbounds %struct.macb_queue, ptr %1, i32 0, i32 14
  %24 = getelementptr inbounds %struct.macb_queue, ptr %1, i32 0, i32 25, i32 3
  %25 = getelementptr inbounds %struct.macb_queue, ptr %1, i32 0, i32 25, i32 4
  %26 = getelementptr inbounds %struct.macb, ptr %3, i32 0, i32 3
  %27 = getelementptr inbounds %struct.macb, ptr %3, i32 0, i32 18, i32 0, i32 13
  %28 = getelementptr inbounds %struct.macb, ptr %3, i32 0, i32 18, i32 0, i32 41
  %29 = getelementptr inbounds %struct.macb, ptr %3, i32 0, i32 45, i32 1
  %30 = getelementptr inbounds %struct.macb, ptr %3, i32 0, i32 45
  br label %31

31:                                               ; preds = %324, %12
  %32 = phi i32 [ %10, %12 ], [ %329, %324 ]
  %33 = load volatile i32, ptr %14, align 4
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %49, !prof !14

36:                                               ; preds = %31
  %37 = load ptr, ptr %1, align 8
  %38 = getelementptr inbounds %struct.macb, ptr %37, i32 0, i32 3
  %39 = load ptr, ptr %38, align 4
  %40 = load i32, ptr %16, align 8
  tail call void %39(ptr noundef %37, i32 noundef %40, i32 noundef -1) #22
  %41 = load i32, ptr %17, align 4
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %331, label %44

44:                                               ; preds = %36
  %45 = load ptr, ptr %1, align 8
  %46 = getelementptr inbounds %struct.macb, ptr %45, i32 0, i32 3
  %47 = load ptr, ptr %46, align 4
  %48 = load i32, ptr %8, align 8
  tail call void %47(ptr noundef %45, i32 noundef %48, i32 noundef -1) #22
  br label %331

49:                                               ; preds = %31
  %50 = load i32, ptr %15, align 4
  %51 = and i32 %50, %32
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %69, label %53

53:                                               ; preds = %49
  %54 = load ptr, ptr %1, align 8
  %55 = getelementptr inbounds %struct.macb, ptr %54, i32 0, i32 3
  %56 = load ptr, ptr %55, align 4
  %57 = load i32, ptr %16, align 8
  tail call void %56(ptr noundef %54, i32 noundef %57, i32 noundef %50) #22
  %58 = load i32, ptr %17, align 4
  %59 = and i32 %58, 1
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %53
  %62 = load ptr, ptr %1, align 8
  %63 = getelementptr inbounds %struct.macb, ptr %62, i32 0, i32 3
  %64 = load ptr, ptr %63, align 4
  %65 = load i32, ptr %8, align 8
  tail call void %64(ptr noundef %62, i32 noundef %65, i32 noundef 2) #22
  br label %66

66:                                               ; preds = %61, %53
  %67 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %18) #22
  br i1 %67, label %68, label %69

68:                                               ; preds = %66
  tail call void @__napi_schedule(ptr noundef %18) #22
  br label %69

69:                                               ; preds = %68, %66, %49
  %70 = and i32 %32, 112
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %88, label %72, !prof !13

72:                                               ; preds = %69
  %73 = load ptr, ptr %1, align 8
  %74 = getelementptr inbounds %struct.macb, ptr %73, i32 0, i32 3
  %75 = load ptr, ptr %74, align 4
  %76 = load i32, ptr %16, align 8
  tail call void %75(ptr noundef %73, i32 noundef %76, i32 noundef 248) #22
  %77 = getelementptr inbounds %struct.macb_queue, ptr %1, i32 0, i32 16
  %78 = load ptr, ptr @system_wq, align 4
  %79 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %78, ptr noundef %77) #22
  %80 = load i32, ptr %17, align 4
  %81 = and i32 %80, 1
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %331, label %83

83:                                               ; preds = %72
  %84 = load ptr, ptr %1, align 8
  %85 = getelementptr inbounds %struct.macb, ptr %84, i32 0, i32 3
  %86 = load ptr, ptr %85, align 4
  %87 = load i32, ptr %8, align 8
  tail call void %86(ptr noundef %84, i32 noundef %87, i32 noundef 112) #22
  br label %331

88:                                               ; preds = %69
  %89 = and i32 %32, 128
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %250, label %91

91:                                               ; preds = %88
  %92 = load ptr, ptr %1, align 8
  %93 = getelementptr inbounds %struct.macb, ptr %92, i32 0, i32 9
  %94 = ptrtoint ptr %93 to i32
  %95 = sub i32 %19, %94
  %96 = sdiv exact i32 %95, 1912
  %97 = getelementptr inbounds %struct.macb, ptr %92, i32 0, i32 2
  %98 = load ptr, ptr %97, align 8
  %99 = tail call i32 %98(ptr noundef %92, i32 noundef 20) #22
  %100 = getelementptr inbounds %struct.macb, ptr %92, i32 0, i32 3
  %101 = load ptr, ptr %100, align 4
  tail call void %101(ptr noundef %92, i32 noundef 20, i32 noundef %99) #22
  %102 = getelementptr inbounds %struct.macb, ptr %92, i32 0, i32 25
  %103 = load i32, ptr %102, align 4
  %104 = and i32 %103, 1
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %111, label %106

106:                                              ; preds = %91
  %107 = load ptr, ptr %1, align 8
  %108 = getelementptr inbounds %struct.macb, ptr %107, i32 0, i32 3
  %109 = load ptr, ptr %108, align 4
  %110 = load i32, ptr %8, align 8
  tail call void %109(ptr noundef %107, i32 noundef %110, i32 noundef 128) #22
  br label %111

111:                                              ; preds = %106, %91
  %112 = load i32, ptr %20, align 4
  %113 = load i32, ptr %21, align 8
  %114 = icmp eq i32 %113, %112
  br i1 %114, label %227, label %115

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.macb, ptr %92, i32 0, i32 11
  %117 = getelementptr inbounds %struct.macb, ptr %92, i32 0, i32 17
  br label %118

118:                                              ; preds = %224, %115
  %119 = phi i32 [ %113, %115 ], [ %225, %224 ]
  %120 = load ptr, ptr %1, align 8
  %121 = getelementptr inbounds %struct.macb, ptr %120, i32 0, i32 6
  %122 = load i32, ptr %121, align 8
  %123 = add i32 %122, -1
  %124 = and i32 %123, %119
  %125 = getelementptr inbounds %struct.macb, ptr %120, i32 0, i32 35
  %126 = load i8, ptr %125, align 8
  switch i8 %126, label %131 [
    i8 1, label %127
    i8 2, label %127
    i8 3, label %129
  ]

127:                                              ; preds = %118, %118
  %128 = shl i32 %124, 1
  br label %131

129:                                              ; preds = %118
  %130 = mul i32 %124, 3
  br label %131

131:                                              ; preds = %129, %127, %118
  %132 = phi i32 [ %124, %118 ], [ %130, %129 ], [ %128, %127 ]
  %133 = load ptr, ptr %22, align 4
  %134 = getelementptr %struct.macb_dma_desc, ptr %133, i32 %132
  tail call void asm sideeffect "dsb ", "~{memory}"() #22, !srcloc !15
  %135 = getelementptr %struct.macb_dma_desc, ptr %133, i32 %132, i32 1
  %136 = load i32, ptr %135, align 4
  %137 = icmp sgt i32 %136, -1
  br i1 %137, label %227, label %138

138:                                              ; preds = %131
  %139 = load ptr, ptr %23, align 8
  %140 = load ptr, ptr %1, align 8
  %141 = getelementptr inbounds %struct.macb, ptr %140, i32 0, i32 6
  %142 = load i32, ptr %141, align 8
  %143 = add i32 %142, -1
  %144 = and i32 %143, %119
  %145 = getelementptr %struct.macb_tx_skb, ptr %139, i32 %144
  %146 = load ptr, ptr %145, align 4
  %147 = icmp eq ptr %146, null
  br i1 %147, label %197, label %148

148:                                              ; preds = %213, %138
  %149 = phi i32 [ %119, %138 ], [ %214, %213 ]
  %150 = phi ptr [ %139, %138 ], [ %215, %213 ]
  %151 = phi ptr [ %140, %138 ], [ %216, %213 ]
  %152 = phi i32 [ %144, %138 ], [ %220, %213 ]
  %153 = phi ptr [ %145, %138 ], [ %221, %213 ]
  %154 = phi ptr [ %146, %138 ], [ %222, %213 ]
  %155 = getelementptr inbounds %struct.sk_buff, ptr %154, i32 0, i32 15
  %156 = load ptr, ptr %155, align 4
  %157 = getelementptr inbounds %struct.skb_shared_info, ptr %156, i32 0, i32 3
  %158 = load i8, ptr %157, align 1
  %159 = and i8 %158, 1
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %169, label %161, !prof !13

161:                                              ; preds = %148
  %162 = getelementptr inbounds %struct.macb, ptr %151, i32 0, i32 41, i32 1
  %163 = load i32, ptr %162, align 4
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %169, label %165

165:                                              ; preds = %161
  %166 = tail call i32 @gem_ptp_txstamp(ptr noundef %1, ptr noundef nonnull %154, ptr noundef %134) #22
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %165
  store ptr null, ptr %153, align 4
  br label %169

169:                                              ; preds = %168, %165, %161, %148
  %170 = load ptr, ptr %117, align 4
  %171 = getelementptr inbounds %struct.net_device, ptr %170, i32 0, i32 36, i32 1
  %172 = load i32, ptr %171, align 4
  %173 = add i32 %172, 1
  store i32 %173, ptr %171, align 4
  %174 = load i32, ptr %24, align 4
  %175 = add i32 %174, 1
  store i32 %175, ptr %24, align 4
  %176 = getelementptr inbounds %struct.sk_buff, ptr %154, i32 0, i32 5
  %177 = load i32, ptr %176, align 8
  %178 = load ptr, ptr %117, align 4
  %179 = getelementptr inbounds %struct.net_device, ptr %178, i32 0, i32 36, i32 3
  %180 = load i32, ptr %179, align 4
  %181 = add i32 %180, %177
  store i32 %181, ptr %179, align 4
  %182 = load i32, ptr %176, align 8
  %183 = load i32, ptr %25, align 8
  %184 = add i32 %183, %182
  store i32 %184, ptr %25, align 8
  %185 = getelementptr %struct.macb_tx_skb, ptr %150, i32 %152, i32 1
  %186 = load i32, ptr %185, align 4
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %193, label %188

188:                                              ; preds = %169
  %189 = load ptr, ptr %116, align 4
  %190 = getelementptr inbounds %struct.platform_device, ptr %189, i32 0, i32 3
  %191 = getelementptr %struct.macb_tx_skb, ptr %150, i32 %152, i32 2
  %192 = load i32, ptr %191, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %190, i32 noundef %186, i32 noundef %192, i32 noundef 1, i32 noundef 0) #22
  store i32 0, ptr %185, align 4
  br label %193

193:                                              ; preds = %188, %169
  %194 = load ptr, ptr %153, align 4
  %195 = icmp eq ptr %194, null
  br i1 %195, label %224, label %196

196:                                              ; preds = %193
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %194, i32 noundef 1) #22
  store ptr null, ptr %153, align 4
  br label %224

197:                                              ; preds = %213, %138
  %198 = phi ptr [ %221, %213 ], [ %145, %138 ]
  %199 = phi i32 [ %220, %213 ], [ %144, %138 ]
  %200 = phi ptr [ %215, %213 ], [ %139, %138 ]
  %201 = phi i32 [ %214, %213 ], [ %119, %138 ]
  %202 = getelementptr %struct.macb_tx_skb, ptr %200, i32 %199, i32 1
  %203 = load i32, ptr %202, align 4
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %213, label %205

205:                                              ; preds = %197
  %206 = load ptr, ptr %116, align 4
  %207 = getelementptr inbounds %struct.platform_device, ptr %206, i32 0, i32 3
  %208 = getelementptr %struct.macb_tx_skb, ptr %200, i32 %199, i32 2
  %209 = load i32, ptr %208, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %207, i32 noundef %203, i32 noundef %209, i32 noundef 1, i32 noundef 0) #22
  store i32 0, ptr %202, align 4
  %210 = load ptr, ptr %198, align 4
  %211 = icmp eq ptr %210, null
  br i1 %211, label %213, label %212

212:                                              ; preds = %205
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %210, i32 noundef 1) #22
  store ptr null, ptr %198, align 4
  br label %213

213:                                              ; preds = %212, %205, %197
  %214 = add i32 %201, 1
  %215 = load ptr, ptr %23, align 8
  %216 = load ptr, ptr %1, align 8
  %217 = getelementptr inbounds %struct.macb, ptr %216, i32 0, i32 6
  %218 = load i32, ptr %217, align 8
  %219 = add i32 %218, -1
  %220 = and i32 %219, %214
  %221 = getelementptr %struct.macb_tx_skb, ptr %215, i32 %220
  %222 = load ptr, ptr %221, align 4
  %223 = icmp eq ptr %222, null
  br i1 %223, label %197, label %148

224:                                              ; preds = %196, %193
  %225 = add i32 %149, 1
  %226 = icmp eq i32 %225, %112
  br i1 %226, label %227, label %118

227:                                              ; preds = %224, %131, %111
  %228 = phi i32 [ %112, %111 ], [ %112, %224 ], [ %119, %131 ]
  store i32 %228, ptr %21, align 8
  %229 = getelementptr inbounds %struct.macb, ptr %92, i32 0, i32 17
  %230 = load ptr, ptr %229, align 4
  %231 = and i32 %96, 65535
  %232 = getelementptr inbounds %struct.net_device, ptr %230, i32 0, i32 87
  %233 = load ptr, ptr %232, align 64
  %234 = getelementptr %struct.netdev_queue, ptr %233, i32 %231, i32 12
  %235 = load volatile i32, ptr %234, align 4
  %236 = and i32 %235, 1
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %250, label %238

238:                                              ; preds = %227
  %239 = load i32, ptr %20, align 4
  %240 = sub i32 %239, %228
  %241 = getelementptr inbounds %struct.macb, ptr %92, i32 0, i32 6
  %242 = load i32, ptr %241, align 8
  %243 = add i32 %242, -1
  %244 = and i32 %243, %240
  %245 = mul i32 %242, 3
  %246 = lshr i32 %245, 2
  %247 = icmp ugt i32 %244, %246
  br i1 %247, label %250, label %248

248:                                              ; preds = %238
  %249 = getelementptr %struct.netdev_queue, ptr %233, i32 %231
  tail call void @netif_tx_wake_queue(ptr noundef %249) #22
  br label %250

250:                                              ; preds = %248, %238, %227, %88
  %251 = and i32 %32, 8
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %274, label %253

253:                                              ; preds = %250
  %254 = load i32, ptr %20, align 4
  %255 = load i32, ptr %21, align 8
  %256 = load ptr, ptr %1, align 8
  %257 = getelementptr inbounds %struct.macb, ptr %256, i32 0, i32 25
  %258 = load i32, ptr %257, align 4
  %259 = and i32 %258, 1
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %265, label %261

261:                                              ; preds = %253
  %262 = getelementptr inbounds %struct.macb, ptr %256, i32 0, i32 3
  %263 = load ptr, ptr %262, align 4
  %264 = load i32, ptr %8, align 8
  tail call void %263(ptr noundef %256, i32 noundef %264, i32 noundef 8) #22
  br label %265

265:                                              ; preds = %261, %253
  %266 = icmp eq i32 %254, %255
  br i1 %266, label %274, label %267

267:                                              ; preds = %265
  %268 = getelementptr inbounds %struct.macb, ptr %256, i32 0, i32 3
  %269 = load ptr, ptr %268, align 4
  %270 = getelementptr inbounds %struct.macb, ptr %256, i32 0, i32 2
  %271 = load ptr, ptr %270, align 8
  %272 = tail call i32 %271(ptr noundef %256, i32 noundef 0) #22
  %273 = or i32 %272, 512
  tail call void %269(ptr noundef %256, i32 noundef 0, i32 noundef %273) #22
  br label %274

274:                                              ; preds = %267, %265, %250
  %275 = and i32 %32, 4
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %292, label %277

277:                                              ; preds = %274
  %278 = load ptr, ptr %6, align 8
  %279 = tail call i32 %278(ptr noundef %3, i32 noundef 0) #22
  %280 = load ptr, ptr %26, align 4
  %281 = and i32 %279, -5
  tail call void %280(ptr noundef %3, i32 noundef 0, i32 noundef %281) #22
  tail call void asm sideeffect "dsb st", "~{memory}"() #22, !srcloc !16
  tail call void @arm_heavy_mb() #22
  %282 = load ptr, ptr %26, align 4
  %283 = or i32 %279, 4
  tail call void %282(ptr noundef %3, i32 noundef 0, i32 noundef %283) #22
  %284 = load i32, ptr %17, align 4
  %285 = and i32 %284, 1
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %292, label %287

287:                                              ; preds = %277
  %288 = load ptr, ptr %1, align 8
  %289 = getelementptr inbounds %struct.macb, ptr %288, i32 0, i32 3
  %290 = load ptr, ptr %289, align 4
  %291 = load i32, ptr %8, align 8
  tail call void %290(ptr noundef %288, i32 noundef %291, i32 noundef 4) #22
  br label %292

292:                                              ; preds = %287, %277, %274
  %293 = and i32 %32, 1024
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %308, label %295

295:                                              ; preds = %292
  %296 = load i32, ptr %17, align 4
  %297 = icmp slt i32 %296, 0
  %298 = select i1 %297, ptr %28, ptr %27
  %299 = load i32, ptr %298, align 4
  %300 = add i32 %299, 1
  store i32 %300, ptr %298, align 4
  %301 = and i32 %296, 1
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %308, label %303

303:                                              ; preds = %295
  %304 = load ptr, ptr %1, align 8
  %305 = getelementptr inbounds %struct.macb, ptr %304, i32 0, i32 3
  %306 = load ptr, ptr %305, align 4
  %307 = load i32, ptr %8, align 8
  tail call void %306(ptr noundef %304, i32 noundef %307, i32 noundef 1024) #22
  br label %308

308:                                              ; preds = %303, %295, %292
  %309 = and i32 %32, 2048
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %324, label %311

311:                                              ; preds = %308
  %312 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %29) #22
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %314, label %315

314:                                              ; preds = %311
  tail call void @__tasklet_schedule(ptr noundef %30) #22
  br label %315

315:                                              ; preds = %314, %311
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %5, ptr noundef nonnull @.str.19) #23
  %316 = load i32, ptr %17, align 4
  %317 = and i32 %316, 1
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %324, label %319

319:                                              ; preds = %315
  %320 = load ptr, ptr %1, align 8
  %321 = getelementptr inbounds %struct.macb, ptr %320, i32 0, i32 3
  %322 = load ptr, ptr %321, align 4
  %323 = load i32, ptr %8, align 8
  tail call void %322(ptr noundef %320, i32 noundef %323, i32 noundef 2048) #22
  br label %324

324:                                              ; preds = %319, %315, %308
  %325 = load ptr, ptr %1, align 8
  %326 = getelementptr inbounds %struct.macb, ptr %325, i32 0, i32 2
  %327 = load ptr, ptr %326, align 8
  %328 = load i32, ptr %8, align 8
  %329 = tail call i32 %327(ptr noundef %325, i32 noundef %328) #22
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %331, label %31

331:                                              ; preds = %324, %83, %72, %44, %36
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !17
  %332 = load i16, ptr %13, align 4
  %333 = add i16 %332, 1
  store i16 %333, ptr %13, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !20
  br label %334

334:                                              ; preds = %331, %2
  %335 = phi i32 [ 1, %331 ], [ 0, %2 ]
  ret i32 %335
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @macb_tx_error_task(ptr nocapture noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -64
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.macb, ptr %3, i32 0, i32 10
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #22
  %6 = getelementptr inbounds %struct.macb, ptr %3, i32 0, i32 17
  %7 = load ptr, ptr %6, align 4
  tail call void @netif_tx_stop_all_queues(ptr noundef %7) #22
  %8 = getelementptr inbounds %struct.macb, ptr %3, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.macb, ptr %3, i32 0, i32 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call i32 %11(ptr noundef %3, i32 noundef 0) #22
  %13 = or i32 %12, 1024
  tail call void %9(ptr noundef %3, i32 noundef 0, i32 noundef %13) #22
  %14 = load volatile i32, ptr @jiffies, align 64
  %15 = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #22
  %16 = icmp ult i32 %15, 1230
  %17 = select i1 %16, i32 -1073741822, i32 -1
  %18 = sub i32 %17, %14
  br label %19

19:                                               ; preds = %25, %1
  %20 = load volatile i32, ptr @jiffies, align 64
  %21 = load ptr, ptr %10, align 8
  %22 = tail call i32 %21(ptr noundef %3, i32 noundef 20) #22
  %23 = and i32 %22, 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 53687000) #22
  %27 = add i32 %18, %20
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %19, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %30, ptr noundef nonnull @.str.20) #23
  br label %31

31:                                               ; preds = %29, %19
  %32 = getelementptr i8, ptr %0, i32 -16
  %33 = load i32, ptr %32, align 8
  %34 = getelementptr i8, ptr %0, i32 -20
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %140, label %37

37:                                               ; preds = %31
  %38 = getelementptr i8, ptr %0, i32 -12
  %39 = getelementptr i8, ptr %0, i32 -8
  %40 = getelementptr inbounds %struct.macb, ptr %3, i32 0, i32 11
  %41 = getelementptr i8, ptr %0, i32 276
  %42 = getelementptr i8, ptr %0, i32 280
  br label %43

43:                                               ; preds = %136, %37
  %44 = phi i32 [ %33, %37 ], [ %137, %136 ]
  %45 = load ptr, ptr %2, align 8
  %46 = getelementptr inbounds %struct.macb, ptr %45, i32 0, i32 6
  %47 = load i32, ptr %46, align 8
  %48 = add i32 %47, -1
  %49 = and i32 %48, %44
  %50 = getelementptr inbounds %struct.macb, ptr %45, i32 0, i32 35
  %51 = load i8, ptr %50, align 8
  switch i8 %51, label %56 [
    i8 1, label %52
    i8 2, label %52
    i8 3, label %54
  ]

52:                                               ; preds = %43, %43
  %53 = shl i32 %49, 1
  br label %56

54:                                               ; preds = %43
  %55 = mul i32 %49, 3
  br label %56

56:                                               ; preds = %54, %52, %43
  %57 = phi i32 [ %49, %43 ], [ %55, %54 ], [ %53, %52 ]
  %58 = load ptr, ptr %38, align 4
  %59 = getelementptr %struct.macb_dma_desc, ptr %58, i32 %57, i32 1
  %60 = load i32, ptr %59, align 4
  %61 = load ptr, ptr %39, align 8
  %62 = getelementptr %struct.macb_tx_skb, ptr %61, i32 %49
  %63 = icmp sgt i32 %60, -1
  br i1 %63, label %114, label %64

64:                                               ; preds = %56
  %65 = load ptr, ptr %62, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %92

67:                                               ; preds = %81, %64
  %68 = phi ptr [ %89, %81 ], [ %62, %64 ]
  %69 = phi i32 [ %82, %81 ], [ %44, %64 ]
  %70 = getelementptr inbounds %struct.macb_tx_skb, ptr %68, i32 0, i32 1
  %71 = load i32, ptr %70, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %81, label %73

73:                                               ; preds = %67
  %74 = load ptr, ptr %40, align 4
  %75 = getelementptr inbounds %struct.platform_device, ptr %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.macb_tx_skb, ptr %68, i32 0, i32 2
  %77 = load i32, ptr %76, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %75, i32 noundef %71, i32 noundef %77, i32 noundef 1, i32 noundef 0) #22
  store i32 0, ptr %70, align 4
  %78 = load ptr, ptr %68, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %73
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %78, i32 noundef 1) #22
  store ptr null, ptr %68, align 4
  br label %81

81:                                               ; preds = %80, %73, %67
  %82 = add i32 %69, 1
  %83 = load ptr, ptr %39, align 8
  %84 = load ptr, ptr %2, align 8
  %85 = getelementptr inbounds %struct.macb, ptr %84, i32 0, i32 6
  %86 = load i32, ptr %85, align 8
  %87 = add i32 %86, -1
  %88 = and i32 %87, %82
  %89 = getelementptr %struct.macb_tx_skb, ptr %83, i32 %88
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %67, label %92

92:                                               ; preds = %81, %64
  %93 = phi i32 [ %44, %64 ], [ %82, %81 ]
  %94 = phi ptr [ %62, %64 ], [ %89, %81 ]
  %95 = phi ptr [ %65, %64 ], [ %90, %81 ]
  %96 = and i32 %60, 134217728
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %121

98:                                               ; preds = %92
  %99 = load ptr, ptr %6, align 4
  %100 = getelementptr inbounds %struct.net_device, ptr %99, i32 0, i32 36, i32 1
  %101 = load i32, ptr %100, align 4
  %102 = add i32 %101, 1
  store i32 %102, ptr %100, align 4
  %103 = load i32, ptr %41, align 4
  %104 = add i32 %103, 1
  store i32 %104, ptr %41, align 4
  %105 = getelementptr inbounds %struct.sk_buff, ptr %95, i32 0, i32 5
  %106 = load i32, ptr %105, align 8
  %107 = load ptr, ptr %6, align 4
  %108 = getelementptr inbounds %struct.net_device, ptr %107, i32 0, i32 36, i32 3
  %109 = load i32, ptr %108, align 4
  %110 = add i32 %109, %106
  store i32 %110, ptr %108, align 4
  %111 = load i32, ptr %105, align 8
  %112 = load i32, ptr %42, align 8
  %113 = add i32 %112, %111
  store i32 %113, ptr %42, align 8
  br label %121

114:                                              ; preds = %56
  %115 = and i32 %60, 134217728
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %119, label %117

117:                                              ; preds = %114
  %118 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %118, ptr noundef nonnull @.str.21) #23
  br label %119

119:                                              ; preds = %117, %114
  %120 = or i32 %60, -2147483648
  store i32 %120, ptr %59, align 4
  br label %121

121:                                              ; preds = %119, %98, %92
  %122 = phi i32 [ %93, %92 ], [ %93, %98 ], [ %44, %119 ]
  %123 = phi ptr [ %94, %92 ], [ %94, %98 ], [ %62, %119 ]
  %124 = getelementptr inbounds %struct.macb_tx_skb, ptr %123, i32 0, i32 1
  %125 = load i32, ptr %124, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %132, label %127

127:                                              ; preds = %121
  %128 = load ptr, ptr %40, align 4
  %129 = getelementptr inbounds %struct.platform_device, ptr %128, i32 0, i32 3
  %130 = getelementptr inbounds %struct.macb_tx_skb, ptr %123, i32 0, i32 2
  %131 = load i32, ptr %130, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %129, i32 noundef %125, i32 noundef %131, i32 noundef 1, i32 noundef 0) #22
  store i32 0, ptr %124, align 4
  br label %132

132:                                              ; preds = %127, %121
  %133 = load ptr, ptr %123, align 4
  %134 = icmp eq ptr %133, null
  br i1 %134, label %136, label %135

135:                                              ; preds = %132
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %133, i32 noundef 1) #22
  store ptr null, ptr %123, align 4
  br label %136

136:                                              ; preds = %135, %132
  %137 = add i32 %122, 1
  %138 = load i32, ptr %34, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %43

140:                                              ; preds = %136, %31
  %141 = getelementptr i8, ptr %0, i32 -12
  %142 = load ptr, ptr %141, align 4
  store i32 0, ptr %142, align 4
  %143 = getelementptr inbounds %struct.macb_dma_desc, ptr %142, i32 0, i32 1
  store i32 -2147483648, ptr %143, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #22, !srcloc !21
  tail call void @arm_heavy_mb() #22
  %144 = load ptr, ptr %2, align 8
  %145 = getelementptr inbounds %struct.macb, ptr %144, i32 0, i32 3
  %146 = load ptr, ptr %145, align 4
  %147 = getelementptr i8, ptr %0, i32 -40
  %148 = load i32, ptr %147, align 8
  %149 = getelementptr i8, ptr %0, i32 -4
  %150 = load i32, ptr %149, align 4
  tail call void %146(ptr noundef %144, i32 noundef %148, i32 noundef %150) #22
  store i32 0, ptr %34, align 4
  store i32 0, ptr %32, align 8
  %151 = load ptr, ptr %8, align 4
  %152 = load ptr, ptr %10, align 8
  %153 = tail call i32 %152(ptr noundef %3, i32 noundef 20) #22
  tail call void %151(ptr noundef %3, i32 noundef 20, i32 noundef %153) #22
  %154 = load ptr, ptr %2, align 8
  %155 = getelementptr inbounds %struct.macb, ptr %154, i32 0, i32 3
  %156 = load ptr, ptr %155, align 4
  %157 = getelementptr i8, ptr %0, i32 -52
  %158 = load i32, ptr %157, align 4
  tail call void %156(ptr noundef %154, i32 noundef %158, i32 noundef 248) #22
  %159 = load ptr, ptr %6, align 4
  %160 = getelementptr inbounds %struct.net_device, ptr %159, i32 0, i32 88
  %161 = load i32, ptr %160, align 4
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %172, label %163

163:                                              ; preds = %140
  %164 = getelementptr inbounds %struct.net_device, ptr %159, i32 0, i32 87
  br label %165

165:                                              ; preds = %165, %163
  %166 = phi i32 [ 0, %163 ], [ %169, %165 ]
  %167 = load ptr, ptr %164, align 64
  %168 = getelementptr %struct.netdev_queue, ptr %167, i32 %166, i32 12
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %168) #22
  %169 = add nuw i32 %166, 1
  %170 = load i32, ptr %160, align 4
  %171 = icmp ult i32 %169, %170
  br i1 %171, label %165, label %172

172:                                              ; preds = %165, %140
  %173 = load ptr, ptr %8, align 4
  %174 = load ptr, ptr %10, align 8
  %175 = tail call i32 %174(ptr noundef %3, i32 noundef 0) #22
  %176 = or i32 %175, 512
  tail call void %173(ptr noundef %3, i32 noundef 0, i32 noundef %176) #22
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gem_alloc_rx_buffers(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.macb, ptr %0, i32 0, i32 7
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.macb, ptr %0, i32 0, i32 9
  %7 = getelementptr inbounds %struct.macb, ptr %0, i32 0, i32 5
  br label %8

8:                                                ; preds = %16, %5
  %9 = phi i32 [ 0, %5 ], [ %17, %16 ]
  %10 = phi ptr [ %6, %5 ], [ %18, %16 ]
  %11 = load i32, ptr %7, align 4
  %12 = shl i32 %11, 2
  %13 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %12, i32 noundef 3520) #24
  %14 = getelementptr inbounds %struct.macb_queue, ptr %10, i32 0, i32 22
  store ptr %13, ptr %14, align 4
  %15 = icmp eq ptr %13, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %8
  %17 = add nuw i32 %9, 1
  %18 = getelementptr %struct.macb_queue, ptr %10, i32 1
  %19 = load i32, ptr %2, align 4
  %20 = icmp ult i32 %17, %19
  br i1 %20, label %8, label %21

21:                                               ; preds = %16, %8, %1
  %22 = phi i32 [ 0, %1 ], [ 0, %16 ], [ -12, %8 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gem_free_rx_buffers(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.macb, ptr %0, i32 0, i32 7
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %64, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.macb, ptr %0, i32 0, i32 9
  %7 = getelementptr inbounds %struct.macb, ptr %0, i32 0, i32 5
  %8 = getelementptr inbounds %struct.macb, ptr %0, i32 0, i32 11
  %9 = getelementptr inbounds %struct.macb, ptr %0, i32 0, i32 4
  br label %10

10:                                               ; preds = %59, %5
  %11 = phi i32 [ %3, %5 ], [ %60, %59 ]
  %12 = phi i32 [ 0, %5 ], [ %61, %59 ]
  %13 = phi ptr [ %6, %5 ], [ %62, %59 ]
  %14 = getelementptr inbounds %struct.macb_queue, ptr %13, i32 0, i32 22
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %59, label %17

17:                                               ; preds = %10
  %18 = load i32, ptr %7, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %56, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.macb_queue, ptr %13, i32 0, i32 21
  br label %22

22:                                               ; preds = %51, %20
  %23 = phi i32 [ %18, %20 ], [ %52, %51 ]
  %24 = phi ptr [ %15, %20 ], [ %55, %51 ]
  %25 = phi i32 [ 0, %20 ], [ %53, %51 ]
  %26 = getelementptr ptr, ptr %24, i32 %25
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %51, label %29

29:                                               ; preds = %22
  %30 = load ptr, ptr %13, align 8
  %31 = getelementptr inbounds %struct.macb, ptr %30, i32 0, i32 5
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, -1
  %34 = and i32 %33, %25
  %35 = getelementptr inbounds %struct.macb, ptr %30, i32 0, i32 35
  %36 = load i8, ptr %35, align 8
  switch i8 %36, label %41 [
    i8 1, label %37
    i8 2, label %37
    i8 3, label %39
  ]

37:                                               ; preds = %29, %29
  %38 = shl i32 %34, 1
  br label %41

39:                                               ; preds = %29
  %40 = mul i32 %34, 3
  br label %41

41:                                               ; preds = %39, %37, %29
  %42 = phi i32 [ %34, %29 ], [ %40, %39 ], [ %38, %37 ]
  %43 = load ptr, ptr %21, align 8
  %44 = getelementptr %struct.macb_dma_desc, ptr %43, i32 %42
  %45 = load i32, ptr %44, align 4
  %46 = and i32 %45, -4
  %47 = load ptr, ptr %8, align 4
  %48 = getelementptr inbounds %struct.platform_device, ptr %47, i32 0, i32 3
  %49 = load i32, ptr %9, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %48, i32 noundef %46, i32 noundef %49, i32 noundef 2, i32 noundef 0) #22
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %27, i32 noundef 1) #22
  %50 = load i32, ptr %7, align 4
  br label %51

51:                                               ; preds = %41, %22
  %52 = phi i32 [ %23, %22 ], [ %50, %41 ]
  %53 = add nuw i32 %25, 1
  %54 = icmp ult i32 %53, %52
  %55 = load ptr, ptr %14, align 4
  br i1 %54, label %22, label %56

56:                                               ; preds = %51, %17
  %57 = phi ptr [ %15, %17 ], [ %55, %51 ]
  tail call void @kfree(ptr noundef %57) #22
  store ptr null, ptr %14, align 4
  %58 = load i32, ptr %2, align 4
  br label %59

59:                                               ; preds = %56, %10
  %60 = phi i32 [ %11, %10 ], [ %58, %56 ]
  %61 = add nuw i32 %12, 1
  %62 = getelementptr %struct.macb_queue, ptr %13, i32 1
  %63 = icmp ult i32 %61, %60
  br i1 %63, label %10, label %64

64:                                               ; preds = %59, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gem_init_rings(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.macb, ptr %0, i32 0, i32 7
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %50, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.macb, ptr %0, i32 0, i32 9
  %7 = getelementptr inbounds %struct.macb, ptr %0, i32 0, i32 6
  br label %8

8:                                                ; preds = %37, %5
  %9 = phi i32 [ 0, %5 ], [ %46, %37 ]
  %10 = phi ptr [ null, %5 ], [ %38, %37 ]
  %11 = phi ptr [ %6, %5 ], [ %47, %37 ]
  %12 = load i32, ptr %7, align 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %37, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.macb_queue, ptr %11, i32 0, i32 13
  br label %16

16:                                               ; preds = %29, %14
  %17 = phi i32 [ 0, %14 ], [ %34, %29 ]
  %18 = load ptr, ptr %11, align 8
  %19 = getelementptr inbounds %struct.macb, ptr %18, i32 0, i32 6
  %20 = load i32, ptr %19, align 8
  %21 = add i32 %20, -1
  %22 = and i32 %21, %17
  %23 = getelementptr inbounds %struct.macb, ptr %18, i32 0, i32 35
  %24 = load i8, ptr %23, align 8
  switch i8 %24, label %29 [
    i8 1, label %25
    i8 2, label %25
    i8 3, label %27
  ]

25:                                               ; preds = %16, %16
  %26 = shl i32 %22, 1
  br label %29

27:                                               ; preds = %16
  %28 = mul i32 %22, 3
  br label %29

29:                                               ; preds = %27, %25, %16
  %30 = phi i32 [ %22, %16 ], [ %28, %27 ], [ %26, %25 ]
  %31 = load ptr, ptr %15, align 4
  %32 = getelementptr %struct.macb_dma_desc, ptr %31, i32 %30
  store i32 0, ptr %32, align 4
  %33 = getelementptr %struct.macb_dma_desc, ptr %31, i32 %30, i32 1
  store i32 -2147483648, ptr %33, align 4
  %34 = add nuw i32 %17, 1
  %35 = load i32, ptr %7, align 8
  %36 = icmp ult i32 %34, %35
  br i1 %36, label %16, label %37

37:                                               ; preds = %29, %8
  %38 = phi ptr [ %10, %8 ], [ %32, %29 ]
  %39 = getelementptr inbounds %struct.macb_dma_desc, ptr %38, i32 0, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = or i32 %40, 1073741824
  store i32 %41, ptr %39, align 4
  %42 = getelementptr inbounds %struct.macb_queue, ptr %11, i32 0, i32 11
  store i32 0, ptr %42, align 4
  %43 = getelementptr inbounds %struct.macb_queue, ptr %11, i32 0, i32 12
  store i32 0, ptr %43, align 8
  %44 = getelementptr inbounds %struct.macb_queue, ptr %11, i32 0, i32 19
  store i32 0, ptr %44, align 8
  %45 = getelementptr inbounds %struct.macb_queue, ptr %11, i32 0, i32 20
  store i32 0, ptr %45, align 4
  tail call fastcc void @gem_rx_refill(ptr noundef %11)
  %46 = add nuw i32 %9, 1
  %47 = getelementptr %struct.macb_queue, ptr %11, i32 1
  %48 = load i32, ptr %2, align 4
  %49 = icmp ult i32 %46, %48
  br i1 %49, label %8, label %50

50:                                               ; preds = %37, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gem_rx(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = load ptr, ptr %0, align 8
  %5 = icmp sgt i32 %2, 0
  br i1 %5, label %6, label %119

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.macb_queue, ptr %0, i32 0, i32 19
  %8 = getelementptr inbounds %struct.macb, ptr %4, i32 0, i32 5
  %9 = getelementptr inbounds %struct.macb_queue, ptr %0, i32 0, i32 21
  %10 = getelementptr inbounds %struct.macb_queue, ptr %0, i32 0, i32 22
  %11 = getelementptr inbounds %struct.macb, ptr %4, i32 0, i32 31
  %12 = getelementptr inbounds %struct.macb, ptr %4, i32 0, i32 11
  %13 = getelementptr inbounds %struct.macb, ptr %4, i32 0, i32 4
  %14 = getelementptr inbounds %struct.macb, ptr %4, i32 0, i32 17
  %15 = getelementptr inbounds %struct.macb_queue, ptr %0, i32 0, i32 25
  %16 = getelementptr inbounds %struct.macb_queue, ptr %0, i32 0, i32 25, i32 1
  %17 = getelementptr inbounds %struct.macb, ptr %4, i32 0, i32 41, i32 2
  br label %18

18:                                               ; preds = %107, %6
  %19 = phi ptr [ %4, %6 ], [ %108, %107 ]
  %20 = phi i32 [ 0, %6 ], [ %48, %107 ]
  %21 = load i32, ptr %7, align 8
  %22 = load i32, ptr %8, align 4
  %23 = add i32 %22, -1
  %24 = and i32 %23, %21
  %25 = getelementptr inbounds %struct.macb, ptr %19, i32 0, i32 5
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, -1
  %28 = and i32 %27, %24
  %29 = getelementptr inbounds %struct.macb, ptr %19, i32 0, i32 35
  %30 = load i8, ptr %29, align 8
  switch i8 %30, label %35 [
    i8 1, label %31
    i8 2, label %31
    i8 3, label %33
  ]

31:                                               ; preds = %18, %18
  %32 = shl i32 %28, 1
  br label %35

33:                                               ; preds = %18
  %34 = mul i32 %28, 3
  br label %35

35:                                               ; preds = %33, %31, %18
  %36 = phi i32 [ %28, %18 ], [ %34, %33 ], [ %32, %31 ]
  %37 = load ptr, ptr %9, align 8
  %38 = getelementptr %struct.macb_dma_desc, ptr %37, i32 %36
  tail call void asm sideeffect "dsb ", "~{memory}"() #22, !srcloc !22
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %39, 1
  %41 = icmp eq i32 %40, 0
  %42 = and i32 %39, -4
  br i1 %41, label %119, label %43

43:                                               ; preds = %35
  tail call void asm sideeffect "dmb osh", "~{memory}"() #22, !srcloc !23
  %44 = getelementptr %struct.macb_dma_desc, ptr %37, i32 %36, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = load i32, ptr %7, align 8
  %47 = add i32 %46, 1
  store i32 %47, ptr %7, align 8
  %48 = add nuw nsw i32 %20, 1
  %49 = and i32 %45, 49152
  %50 = icmp eq i32 %49, 49152
  br i1 %50, label %51, label %109

51:                                               ; preds = %43
  %52 = load ptr, ptr %10, align 4
  %53 = getelementptr ptr, ptr %52, i32 %24
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %109, label %56, !prof !14

56:                                               ; preds = %51
  store ptr null, ptr %53, align 4
  %57 = load i32, ptr %11, align 8
  %58 = and i32 %57, %45
  %59 = tail call ptr @skb_put(ptr noundef nonnull %54, i32 noundef %58) #22
  %60 = load ptr, ptr %12, align 4
  %61 = getelementptr inbounds %struct.platform_device, ptr %60, i32 0, i32 3
  %62 = load i32, ptr %13, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %61, i32 noundef %42, i32 noundef %62, i32 noundef 2, i32 noundef 0) #22
  %63 = load ptr, ptr %14, align 4
  %64 = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %54, ptr noundef %63) #22
  %65 = getelementptr inbounds %struct.sk_buff, ptr %54, i32 0, i32 13, i32 0, i32 16
  store i16 %64, ptr %65, align 8
  %66 = load ptr, ptr %14, align 4
  %67 = getelementptr inbounds %struct.net_device, ptr %66, i32 0, i32 23
  %68 = load i64, ptr %67, align 16
  %69 = and i64 %68, 1099511627776
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %85, label %71

71:                                               ; preds = %56
  %72 = getelementptr inbounds %struct.net_device, ptr %66, i32 0, i32 14
  %73 = load i32, ptr %72, align 8
  %74 = and i32 %73, 256
  %75 = icmp ne i32 %74, 0
  %76 = and i32 %45, 8388608
  %77 = icmp eq i32 %76, 0
  %78 = select i1 %75, i1 true, i1 %77
  br i1 %78, label %85, label %79

79:                                               ; preds = %71
  %80 = getelementptr inbounds %struct.sk_buff, ptr %54, i32 0, i32 13
  %81 = load i16, ptr %80, align 8
  %82 = and i16 %81, -97
  %83 = or i16 %82, 32
  store i16 %83, ptr %80, align 8
  %84 = load ptr, ptr %14, align 4
  br label %85

85:                                               ; preds = %79, %71, %56
  %86 = phi ptr [ %84, %79 ], [ %66, %71 ], [ %66, %56 ]
  %87 = getelementptr inbounds %struct.net_device, ptr %86, i32 0, i32 36
  %88 = load i32, ptr %87, align 8
  %89 = add i32 %88, 1
  store i32 %89, ptr %87, align 8
  %90 = load i32, ptr %15, align 8
  %91 = add i32 %90, 1
  store i32 %91, ptr %15, align 8
  %92 = getelementptr inbounds %struct.sk_buff, ptr %54, i32 0, i32 5
  %93 = load i32, ptr %92, align 8
  %94 = load ptr, ptr %14, align 4
  %95 = getelementptr inbounds %struct.net_device, ptr %94, i32 0, i32 36, i32 2
  %96 = load i32, ptr %95, align 8
  %97 = add i32 %96, %93
  store i32 %97, ptr %95, align 8
  %98 = load i32, ptr %92, align 8
  %99 = load i32, ptr %16, align 4
  %100 = add i32 %99, %98
  store i32 %100, ptr %16, align 4
  %101 = load i32, ptr %17, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %85
  tail call void @gem_ptp_rxstamp(ptr noundef %4, ptr noundef nonnull %54, ptr noundef %38) #22
  br label %104

104:                                              ; preds = %103, %85
  %105 = tail call i32 @napi_gro_receive(ptr noundef %1, ptr noundef nonnull %54) #22
  %106 = icmp eq i32 %48, %2
  br i1 %106, label %119, label %107

107:                                              ; preds = %104
  %108 = load ptr, ptr %0, align 8
  br label %18

109:                                              ; preds = %51, %43
  %110 = phi ptr [ @.str.33, %43 ], [ @.str.34, %51 ]
  %111 = load ptr, ptr %14, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %111, ptr noundef nonnull %110) #23
  %112 = load ptr, ptr %14, align 4
  %113 = getelementptr inbounds %struct.net_device, ptr %112, i32 0, i32 36, i32 6
  %114 = load i32, ptr %113, align 8
  %115 = add i32 %114, 1
  store i32 %115, ptr %113, align 8
  %116 = getelementptr inbounds %struct.macb_queue, ptr %0, i32 0, i32 25, i32 2
  %117 = load i32, ptr %116, align 8
  %118 = add i32 %117, 1
  store i32 %118, ptr %116, align 8
  br label %119

119:                                              ; preds = %109, %104, %35, %3
  %120 = phi i32 [ 0, %3 ], [ %48, %109 ], [ %2, %104 ], [ %20, %35 ]
  tail call fastcc void @gem_rx_refill(ptr noundef %0)
  ret i32 %120
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @macb_alloc_rx_buffers(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.macb, ptr %0, i32 0, i32 5
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.macb, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %4, align 8
  %6 = mul i32 %5, %3
  %7 = getelementptr inbounds %struct.macb, ptr %0, i32 0, i32 11
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.macb, ptr %0, i32 0, i32 9, i32 0, i32 18
  %11 = tail call ptr @dma_alloc_attrs(ptr noundef %9, i32 noundef %6, ptr noundef %10, i32 noundef 3264, i32 noundef 0) #22
  %12 = getelementptr inbounds %struct.macb, ptr %0, i32 0, i32 9, i32 0, i32 23
  store ptr %11, ptr %12, align 8
  %13 = icmp eq ptr %11, null
  %14 = select i1 %13, i32 -12, i32 0
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @macb_free_rx_buffers(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.macb, ptr %0, i32 0, i32 9, i32 0, i32 23
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.macb, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.macb, ptr %0, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.macb, ptr %0, i32 0, i32 4
  %12 = load i32, ptr %11, align 8
  %13 = mul i32 %12, %10
  %14 = getelementptr inbounds %struct.macb, ptr %0, i32 0, i32 9, i32 0, i32 18
  %15 = load i32, ptr %14, align 4
  tail call void @dma_free_attrs(ptr noundef %8, i32 noundef %13, ptr noundef nonnull %3, i32 noundef %15, i32 noundef 0) #22
  store ptr null, ptr %2, align 8
  br label %16

16:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @macb_init_rings(ptr nocapture noundef %0) #7 {
  %2 = getelementptr inbounds %struct.macb, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.macb, ptr %3, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, ptr null, align 2147483648
  br label %41

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.macb, ptr %0, i32 0, i32 9, i32 0, i32 18
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.macb, ptr %0, i32 0, i32 9, i32 0, i32 21
  %13 = getelementptr inbounds %struct.macb, ptr %3, i32 0, i32 4
  br label %14

14:                                               ; preds = %35, %9
  %15 = phi i32 [ %5, %9 ], [ %40, %35 ]
  %16 = phi ptr [ %3, %9 ], [ %38, %35 ]
  %17 = phi i32 [ 0, %9 ], [ %32, %35 ]
  %18 = phi i32 [ %11, %9 ], [ %37, %35 ]
  %19 = add i32 %15, -1
  %20 = and i32 %17, %19
  %21 = getelementptr inbounds %struct.macb, ptr %16, i32 0, i32 35
  %22 = load i8, ptr %21, align 8
  switch i8 %22, label %27 [
    i8 1, label %23
    i8 2, label %23
    i8 3, label %25
  ]

23:                                               ; preds = %14, %14
  %24 = shl i32 %20, 1
  br label %27

25:                                               ; preds = %14
  %26 = mul i32 %20, 3
  br label %27

27:                                               ; preds = %25, %23, %14
  %28 = phi i32 [ %20, %14 ], [ %26, %25 ], [ %24, %23 ]
  %29 = load ptr, ptr %12, align 8
  %30 = getelementptr %struct.macb_dma_desc, ptr %29, i32 %28
  store i32 %18, ptr %30, align 4
  %31 = getelementptr %struct.macb_dma_desc, ptr %29, i32 %28, i32 1
  store i32 0, ptr %31, align 4
  %32 = add nuw i32 %17, 1
  %33 = load i32, ptr %4, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %27
  %36 = load i32, ptr %13, align 8
  %37 = add i32 %36, %18
  %38 = load ptr, ptr %2, align 8
  %39 = getelementptr inbounds %struct.macb, ptr %38, i32 0, i32 5
  %40 = load i32, ptr %39, align 4
  br label %14

41:                                               ; preds = %27, %7
  %42 = phi i32 [ %8, %7 ], [ %18, %27 ]
  %43 = phi ptr [ null, %7 ], [ %30, %27 ]
  %44 = or i32 %42, 2
  store i32 %44, ptr %43, align 4
  %45 = getelementptr inbounds %struct.macb, ptr %0, i32 0, i32 9, i32 0, i32 19
  store i32 0, ptr %45, align 8
  %46 = getelementptr inbounds %struct.macb, ptr %0, i32 0, i32 6
  %47 = load i32, ptr %46, align 8
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %72, label %49

49:                                               ; preds = %41
  %50 = getelementptr inbounds %struct.macb, ptr %0, i32 0, i32 9, i32 0, i32 13
  br label %51

51:                                               ; preds = %64, %49
  %52 = phi i32 [ 0, %49 ], [ %69, %64 ]
  %53 = load ptr, ptr %2, align 8
  %54 = getelementptr inbounds %struct.macb, ptr %53, i32 0, i32 6
  %55 = load i32, ptr %54, align 8
  %56 = add i32 %55, -1
  %57 = and i32 %56, %52
  %58 = getelementptr inbounds %struct.macb, ptr %53, i32 0, i32 35
  %59 = load i8, ptr %58, align 8
  switch i8 %59, label %64 [
    i8 1, label %60
    i8 2, label %60
    i8 3, label %62
  ]

60:                                               ; preds = %51, %51
  %61 = shl i32 %57, 1
  br label %64

62:                                               ; preds = %51
  %63 = mul i32 %57, 3
  br label %64

64:                                               ; preds = %62, %60, %51
  %65 = phi i32 [ %57, %51 ], [ %63, %62 ], [ %61, %60 ]
  %66 = load ptr, ptr %50, align 4
  %67 = getelementptr %struct.macb_dma_desc, ptr %66, i32 %65
  store i32 0, ptr %67, align 4
  %68 = getelementptr %struct.macb_dma_desc, ptr %66, i32 %65, i32 1
  store i32 -2147483648, ptr %68, align 4
  %69 = add nuw i32 %52, 1
  %70 = load i32, ptr %46, align 8
  %71 = icmp ult i32 %69, %70
  br i1 %71, label %51, label %72

72:                                               ; preds = %64, %41
  %73 = phi ptr [ null, %41 ], [ %67, %64 ]
  %74 = getelementptr inbounds %struct.macb, ptr %0, i32 0, i32 9, i32 0, i32 11
  store i32 0, ptr %74, align 4
  %75 = getelementptr inbounds %struct.macb, ptr %0, i32 0, i32 9, i32 0, i32 12
  store i32 0, ptr %75, align 8
  %76 = getelementptr inbounds %struct.macb_dma_desc, ptr %73, i32 0, i32 1
  %77 = load i32, ptr %76, align 4
  %78 = or i32 %77, 1073741824
  store i32 %78, ptr %76, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @macb_rx(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.macb_queue, ptr %0, i32 0, i32 19
  %6 = load i32, ptr %5, align 8
  %7 = icmp sgt i32 %2, 0
  br i1 %7, label %8, label %241

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.macb_queue, ptr %0, i32 0, i32 21
  %10 = getelementptr inbounds %struct.macb_queue, ptr %0, i32 0, i32 23
  br label %11

11:                                               ; preds = %212, %8
  %12 = phi ptr [ %4, %8 ], [ %213, %212 ]
  %13 = phi i32 [ %2, %8 ], [ %209, %212 ]
  %14 = phi i32 [ -1, %8 ], [ %208, %212 ]
  %15 = phi i32 [ %6, %8 ], [ %210, %212 ]
  %16 = phi i32 [ 0, %8 ], [ %207, %212 ]
  %17 = phi i1 [ false, %8 ], [ %206, %212 ]
  %18 = getelementptr inbounds %struct.macb, ptr %12, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, -1
  %21 = and i32 %20, %15
  %22 = getelementptr inbounds %struct.macb, ptr %12, i32 0, i32 35
  %23 = load i8, ptr %22, align 8
  switch i8 %23, label %28 [
    i8 1, label %24
    i8 2, label %24
    i8 3, label %26
  ]

24:                                               ; preds = %11, %11
  %25 = shl i32 %21, 1
  br label %28

26:                                               ; preds = %11
  %27 = mul i32 %21, 3
  br label %28

28:                                               ; preds = %26, %24, %11
  %29 = phi i32 [ %21, %11 ], [ %27, %26 ], [ %25, %24 ]
  %30 = load ptr, ptr %9, align 8
  %31 = getelementptr %struct.macb_dma_desc, ptr %30, i32 %29
  tail call void asm sideeffect "dsb ", "~{memory}"() #22, !srcloc !24
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %204, label %35

35:                                               ; preds = %28
  tail call void asm sideeffect "dmb osh", "~{memory}"() #22, !srcloc !25
  %36 = getelementptr %struct.macb_dma_desc, ptr %30, i32 %29, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = and i32 %37, 16384
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %66, label %40

40:                                               ; preds = %35
  %41 = icmp eq i32 %14, -1
  br i1 %41, label %66, label %42

42:                                               ; preds = %40
  %43 = icmp eq i32 %14, %15
  br i1 %43, label %65, label %44

44:                                               ; preds = %57, %42
  %45 = phi i32 [ %63, %57 ], [ %14, %42 ]
  %46 = load ptr, ptr %0, align 8
  %47 = getelementptr inbounds %struct.macb, ptr %46, i32 0, i32 5
  %48 = load i32, ptr %47, align 4
  %49 = add i32 %48, -1
  %50 = and i32 %49, %45
  %51 = getelementptr inbounds %struct.macb, ptr %46, i32 0, i32 35
  %52 = load i8, ptr %51, align 8
  switch i8 %52, label %57 [
    i8 1, label %53
    i8 2, label %53
    i8 3, label %55
  ]

53:                                               ; preds = %44, %44
  %54 = shl i32 %50, 1
  br label %57

55:                                               ; preds = %44
  %56 = mul i32 %50, 3
  br label %57

57:                                               ; preds = %55, %53, %44
  %58 = phi i32 [ %50, %44 ], [ %56, %55 ], [ %54, %53 ]
  %59 = load ptr, ptr %9, align 8
  %60 = getelementptr %struct.macb_dma_desc, ptr %59, i32 %58
  %61 = load i32, ptr %60, align 4
  %62 = and i32 %61, -2
  store i32 %62, ptr %60, align 4
  %63 = add i32 %45, 1
  %64 = icmp eq i32 %63, %15
  br i1 %64, label %65, label %44

65:                                               ; preds = %57, %42
  tail call void asm sideeffect "dsb st", "~{memory}"() #22, !srcloc !26
  tail call void @arm_heavy_mb() #22
  br label %66

66:                                               ; preds = %65, %40, %35
  %67 = phi i32 [ %14, %35 ], [ %15, %65 ], [ %15, %40 ]
  %68 = and i32 %37, 32768
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %205, label %70

70:                                               ; preds = %66
  %71 = icmp eq i32 %67, -1
  br i1 %71, label %205, label %72, !prof !14

72:                                               ; preds = %70
  %73 = load ptr, ptr %0, align 8
  %74 = getelementptr inbounds %struct.macb, ptr %73, i32 0, i32 5
  %75 = load i32, ptr %74, align 4
  %76 = add i32 %75, -1
  %77 = and i32 %76, %15
  %78 = getelementptr inbounds %struct.macb, ptr %73, i32 0, i32 35
  %79 = load i8, ptr %78, align 8
  switch i8 %79, label %84 [
    i8 1, label %80
    i8 2, label %80
    i8 3, label %82
  ]

80:                                               ; preds = %72, %72
  %81 = shl i32 %77, 1
  br label %84

82:                                               ; preds = %72
  %83 = mul i32 %77, 3
  br label %84

84:                                               ; preds = %82, %80, %72
  %85 = phi i32 [ %77, %72 ], [ %83, %82 ], [ %81, %80 ]
  %86 = load ptr, ptr %9, align 8
  %87 = getelementptr %struct.macb_dma_desc, ptr %86, i32 %85, i32 1
  %88 = load i32, ptr %87, align 4
  %89 = getelementptr inbounds %struct.macb, ptr %73, i32 0, i32 31
  %90 = load i32, ptr %89, align 8
  %91 = and i32 %90, %88
  %92 = getelementptr inbounds %struct.macb, ptr %73, i32 0, i32 17
  %93 = load ptr, ptr %92, align 4
  %94 = add i32 %91, 2
  %95 = tail call ptr @__netdev_alloc_skb(ptr noundef %93, i32 noundef %94, i32 noundef 2592) #22
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %124

97:                                               ; preds = %84
  %98 = load ptr, ptr %92, align 4
  %99 = getelementptr inbounds %struct.net_device, ptr %98, i32 0, i32 36, i32 6
  %100 = load i32, ptr %99, align 8
  %101 = add i32 %100, 1
  store i32 %101, ptr %99, align 8
  br label %102

102:                                              ; preds = %115, %97
  %103 = phi i32 [ %67, %97 ], [ %122, %115 ]
  %104 = load ptr, ptr %0, align 8
  %105 = getelementptr inbounds %struct.macb, ptr %104, i32 0, i32 5
  %106 = load i32, ptr %105, align 4
  %107 = add i32 %106, -1
  %108 = and i32 %107, %103
  %109 = getelementptr inbounds %struct.macb, ptr %104, i32 0, i32 35
  %110 = load i8, ptr %109, align 8
  switch i8 %110, label %115 [
    i8 1, label %111
    i8 2, label %111
    i8 3, label %113
  ]

111:                                              ; preds = %102, %102
  %112 = shl i32 %108, 1
  br label %115

113:                                              ; preds = %102
  %114 = mul i32 %108, 3
  br label %115

115:                                              ; preds = %113, %111, %102
  %116 = phi i32 [ %108, %102 ], [ %114, %113 ], [ %112, %111 ]
  %117 = load ptr, ptr %9, align 8
  %118 = getelementptr %struct.macb_dma_desc, ptr %117, i32 %116
  %119 = load i32, ptr %118, align 4
  %120 = and i32 %119, -2
  store i32 %120, ptr %118, align 4
  %121 = icmp eq i32 %103, %15
  %122 = add i32 %103, 1
  br i1 %121, label %123, label %102

123:                                              ; preds = %115
  tail call void asm sideeffect "dsb st", "~{memory}"() #22, !srcloc !27
  tail call void @arm_heavy_mb() #22
  br label %198

124:                                              ; preds = %84
  %125 = tail call ptr @skb_put(ptr noundef nonnull %95, i32 noundef %94) #22
  %126 = getelementptr inbounds %struct.macb, ptr %73, i32 0, i32 4
  %127 = getelementptr inbounds %struct.sk_buff, ptr %95, i32 0, i32 17
  br label %128

128:                                              ; preds = %165, %124
  %129 = phi i32 [ %67, %124 ], [ %172, %165 ]
  %130 = phi i32 [ 0, %124 ], [ %153, %165 ]
  %131 = load i32, ptr %126, align 8
  %132 = add i32 %131, %130
  %133 = icmp ugt i32 %132, %94
  br i1 %133, label %134, label %138

134:                                              ; preds = %128
  %135 = icmp eq i32 %129, %15
  br i1 %135, label %136, label %197, !prof !13

136:                                              ; preds = %134
  %137 = sub i32 %94, %130
  br label %138

138:                                              ; preds = %136, %128
  %139 = phi i32 [ %137, %136 ], [ %131, %128 ]
  %140 = load ptr, ptr %10, align 8
  %141 = load ptr, ptr %0, align 8
  %142 = getelementptr inbounds %struct.macb, ptr %141, i32 0, i32 4
  %143 = load i32, ptr %142, align 8
  %144 = getelementptr inbounds %struct.macb, ptr %141, i32 0, i32 5
  %145 = load i32, ptr %144, align 4
  %146 = add i32 %145, -1
  %147 = and i32 %146, %129
  %148 = mul i32 %147, %143
  %149 = getelementptr i8, ptr %140, i32 %148
  %150 = load ptr, ptr %127, align 4
  %151 = getelementptr i8, ptr %150, i32 %130
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %151, ptr align 1 %149, i32 %139, i1 false) #22
  %152 = load i32, ptr %126, align 8
  %153 = add i32 %152, %130
  %154 = load ptr, ptr %0, align 8
  %155 = getelementptr inbounds %struct.macb, ptr %154, i32 0, i32 5
  %156 = load i32, ptr %155, align 4
  %157 = add i32 %156, -1
  %158 = and i32 %157, %129
  %159 = getelementptr inbounds %struct.macb, ptr %154, i32 0, i32 35
  %160 = load i8, ptr %159, align 8
  switch i8 %160, label %165 [
    i8 1, label %161
    i8 2, label %161
    i8 3, label %163
  ]

161:                                              ; preds = %138, %138
  %162 = shl i32 %158, 1
  br label %165

163:                                              ; preds = %138
  %164 = mul i32 %158, 3
  br label %165

165:                                              ; preds = %163, %161, %138
  %166 = phi i32 [ %158, %138 ], [ %164, %163 ], [ %162, %161 ]
  %167 = load ptr, ptr %9, align 8
  %168 = getelementptr %struct.macb_dma_desc, ptr %167, i32 %166
  %169 = load i32, ptr %168, align 4
  %170 = and i32 %169, -2
  store i32 %170, ptr %168, align 4
  %171 = icmp eq i32 %129, %15
  %172 = add i32 %129, 1
  br i1 %171, label %173, label %128

173:                                              ; preds = %165
  tail call void asm sideeffect "dsb st", "~{memory}"() #22, !srcloc !28
  tail call void @arm_heavy_mb() #22
  %174 = getelementptr inbounds %struct.sk_buff, ptr %95, i32 0, i32 5
  %175 = load i32, ptr %174, align 8
  %176 = add i32 %175, -2
  store i32 %176, ptr %174, align 8
  %177 = getelementptr inbounds %struct.sk_buff, ptr %95, i32 0, i32 6
  %178 = load i32, ptr %177, align 4
  %179 = icmp ult i32 %176, %178
  br i1 %179, label %180, label %181, !prof !14

180:                                              ; preds = %173
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #22, !srcloc !29
  unreachable

181:                                              ; preds = %173
  %182 = load ptr, ptr %127, align 4
  %183 = getelementptr i8, ptr %182, i32 2
  store ptr %183, ptr %127, align 4
  %184 = load ptr, ptr %92, align 4
  %185 = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %95, ptr noundef %184) #22
  %186 = getelementptr inbounds %struct.sk_buff, ptr %95, i32 0, i32 13, i32 0, i32 16
  store i16 %185, ptr %186, align 8
  %187 = load ptr, ptr %92, align 4
  %188 = getelementptr inbounds %struct.net_device, ptr %187, i32 0, i32 36
  %189 = load i32, ptr %188, align 8
  %190 = add i32 %189, 1
  store i32 %190, ptr %188, align 8
  %191 = load i32, ptr %174, align 8
  %192 = load ptr, ptr %92, align 4
  %193 = getelementptr inbounds %struct.net_device, ptr %192, i32 0, i32 36, i32 2
  %194 = load i32, ptr %193, align 8
  %195 = add i32 %194, %191
  store i32 %195, ptr %193, align 8
  %196 = tail call i32 @napi_gro_receive(ptr noundef %1, ptr noundef nonnull %95) #22
  br label %198

197:                                              ; preds = %134
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %95, i32 noundef 1) #22
  br label %205

198:                                              ; preds = %181, %123
  %199 = xor i1 %96, true
  %200 = zext i1 %199 to i32
  %201 = add i32 %16, %200
  %202 = sext i1 %199 to i32
  %203 = add i32 %13, %202
  br label %205

204:                                              ; preds = %28
  br i1 %17, label %215, label %236, !prof !14

205:                                              ; preds = %198, %197, %70, %66
  %206 = phi i1 [ %17, %66 ], [ %17, %198 ], [ true, %70 ], [ true, %197 ]
  %207 = phi i32 [ %16, %66 ], [ %201, %198 ], [ %16, %70 ], [ %16, %197 ]
  %208 = phi i32 [ %67, %66 ], [ -1, %198 ], [ -1, %70 ], [ -1, %197 ]
  %209 = phi i32 [ %13, %66 ], [ %203, %198 ], [ %13, %70 ], [ %13, %197 ]
  %210 = add i32 %15, 1
  %211 = icmp sgt i32 %209, 0
  br i1 %211, label %212, label %214

212:                                              ; preds = %205
  %213 = load ptr, ptr %0, align 8
  br label %11

214:                                              ; preds = %205
  br i1 %206, label %215, label %236, !prof !14

215:                                              ; preds = %214, %204
  %216 = phi i32 [ %16, %204 ], [ %207, %214 ]
  %217 = getelementptr inbounds %struct.macb, ptr %4, i32 0, i32 17
  %218 = load ptr, ptr %217, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %218, ptr noundef nonnull @.str.38) #23
  %219 = getelementptr inbounds %struct.macb, ptr %4, i32 0, i32 10
  %220 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %219) #22
  %221 = getelementptr inbounds %struct.macb, ptr %4, i32 0, i32 2
  %222 = load ptr, ptr %221, align 8
  %223 = tail call i32 %222(ptr noundef %4, i32 noundef 0) #22
  %224 = getelementptr inbounds %struct.macb, ptr %4, i32 0, i32 3
  %225 = load ptr, ptr %224, align 4
  %226 = and i32 %223, -5
  tail call void %225(ptr noundef %4, i32 noundef 0, i32 noundef %226) #22
  tail call fastcc void @macb_init_rx_ring(ptr noundef %0)
  %227 = load ptr, ptr %0, align 8
  %228 = getelementptr inbounds %struct.macb, ptr %227, i32 0, i32 3
  %229 = load ptr, ptr %228, align 4
  %230 = getelementptr inbounds %struct.macb_queue, ptr %0, i32 0, i32 9
  %231 = load i32, ptr %230, align 4
  %232 = getelementptr inbounds %struct.macb_queue, ptr %0, i32 0, i32 17
  %233 = load i32, ptr %232, align 8
  tail call void %229(ptr noundef %227, i32 noundef %231, i32 noundef %233) #22
  %234 = load ptr, ptr %224, align 4
  %235 = or i32 %223, 4
  tail call void %234(ptr noundef %4, i32 noundef 0, i32 noundef %235) #22
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %219, i32 noundef %220) #22
  br label %247

236:                                              ; preds = %214, %204
  %237 = phi i32 [ %16, %204 ], [ %207, %214 ]
  %238 = phi i32 [ %15, %204 ], [ %210, %214 ]
  %239 = phi i32 [ %14, %204 ], [ %208, %214 ]
  %240 = icmp eq i32 %239, -1
  br i1 %240, label %241, label %244

241:                                              ; preds = %236, %3
  %242 = phi i32 [ %238, %236 ], [ %6, %3 ]
  %243 = phi i32 [ %237, %236 ], [ 0, %3 ]
  br label %244

244:                                              ; preds = %241, %236
  %245 = phi i32 [ %243, %241 ], [ %237, %236 ]
  %246 = phi i32 [ %242, %241 ], [ %239, %236 ]
  store i32 %246, ptr %5, align 8
  br label %247

247:                                              ; preds = %244, %215
  %248 = phi i32 [ %245, %244 ], [ %216, %215 ]
  ret i32 %248
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gem_ptp_txstamp(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_stop_all_queues(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @macb_open(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 20
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr i8, ptr %0, i32 1408
  %5 = getelementptr i8, ptr %0, i32 16748
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3
  %8 = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #22
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %140, label %10

10:                                               ; preds = %1
  %11 = getelementptr i8, ptr %0, i32 17020
  %12 = load i32, ptr %11, align 4
  %13 = icmp slt i32 %12, 0
  %14 = getelementptr i8, ptr %0, i32 1424
  br i1 %13, label %15, label %22

15:                                               ; preds = %10
  %16 = add i32 %3, 20
  store i32 %16, ptr %14, align 8
  %17 = and i32 %16, 63
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  %20 = add i32 %3, 83
  %21 = and i32 %20, -64
  br label %22

22:                                               ; preds = %19, %10
  %23 = phi i32 [ %21, %19 ], [ 128, %10 ]
  store i32 %23, ptr %14, align 8
  br label %24

24:                                               ; preds = %22, %15
  %25 = getelementptr i8, ptr %0, i32 1436
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %88, label %28

28:                                               ; preds = %24
  %29 = getelementptr i8, ptr %0, i32 1448
  %30 = getelementptr i8, ptr %0, i32 17816
  %31 = getelementptr i8, ptr %0, i32 1432
  %32 = getelementptr i8, ptr %0, i32 18008
  %33 = getelementptr i8, ptr %0, i32 1428
  %34 = getelementptr i8, ptr %0, i32 18004
  br label %35

35:                                               ; preds = %83, %28
  %36 = phi i32 [ 0, %28 ], [ %84, %83 ]
  %37 = phi ptr [ %29, %28 ], [ %85, %83 ]
  %38 = load i8, ptr %30, align 8
  %39 = add i8 %38, -1
  %40 = icmp ult i8 %39, 3
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = sext i8 %39 to i32
  %43 = getelementptr inbounds [3 x i32], ptr @switch.table.macb_get_regs.57, i32 0, i32 %42
  %44 = load i32, ptr %43, align 4
  br label %45

45:                                               ; preds = %41, %35
  %46 = phi i32 [ %44, %41 ], [ 8, %35 ]
  %47 = load i32, ptr %31, align 8
  %48 = mul i32 %47, %46
  %49 = load i32, ptr %32, align 8
  %50 = add i32 %48, %49
  %51 = load ptr, ptr %5, align 4
  %52 = getelementptr inbounds %struct.platform_device, ptr %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.macb_queue, ptr %37, i32 0, i32 15
  %54 = tail call ptr @dma_alloc_attrs(ptr noundef %52, i32 noundef %50, ptr noundef %53, i32 noundef 3264, i32 noundef 0) #22
  %55 = getelementptr inbounds %struct.macb_queue, ptr %37, i32 0, i32 13
  store ptr %54, ptr %55, align 4
  %56 = icmp eq ptr %54, null
  br i1 %56, label %93, label %57

57:                                               ; preds = %45
  %58 = load i32, ptr %31, align 8
  %59 = shl i32 %58, 4
  %60 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %59, i32 noundef 3264) #24
  %61 = getelementptr inbounds %struct.macb_queue, ptr %37, i32 0, i32 14
  store ptr %60, ptr %61, align 8
  %62 = icmp eq ptr %60, null
  br i1 %62, label %93, label %63

63:                                               ; preds = %57
  %64 = load i8, ptr %30, align 8
  %65 = add i8 %64, -1
  %66 = icmp ult i8 %65, 3
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = sext i8 %65 to i32
  %69 = getelementptr inbounds [3 x i32], ptr @switch.table.macb_get_regs.57, i32 0, i32 %68
  %70 = load i32, ptr %69, align 4
  br label %71

71:                                               ; preds = %67, %63
  %72 = phi i32 [ %70, %67 ], [ 8, %63 ]
  %73 = load i32, ptr %33, align 4
  %74 = mul i32 %73, %72
  %75 = load i32, ptr %34, align 4
  %76 = add i32 %74, %75
  %77 = load ptr, ptr %5, align 4
  %78 = getelementptr inbounds %struct.platform_device, ptr %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.macb_queue, ptr %37, i32 0, i32 17
  %80 = tail call ptr @dma_alloc_attrs(ptr noundef %78, i32 noundef %76, ptr noundef %79, i32 noundef 3264, i32 noundef 0) #22
  %81 = getelementptr inbounds %struct.macb_queue, ptr %37, i32 0, i32 21
  store ptr %80, ptr %81, align 8
  %82 = icmp eq ptr %80, null
  br i1 %82, label %93, label %83

83:                                               ; preds = %71
  %84 = add nuw i32 %36, 1
  %85 = getelementptr %struct.macb_queue, ptr %37, i32 1
  %86 = load i32, ptr %25, align 4
  %87 = icmp ult i32 %84, %86
  br i1 %87, label %35, label %88

88:                                               ; preds = %83, %24
  %89 = getelementptr i8, ptr %0, i32 16956
  %90 = load ptr, ptr %89, align 4
  %91 = tail call i32 %90(ptr noundef %4) #22
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %88, %71, %57, %45
  tail call fastcc void @macb_free_consistent(ptr noundef %4) #22
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.22, i32 noundef -12) #23
  br label %140

94:                                               ; preds = %88
  %95 = getelementptr i8, ptr %0, i32 1448
  %96 = load i32, ptr %25, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %106, label %98

98:                                               ; preds = %98, %94
  %99 = phi i32 [ %102, %98 ], [ 0, %94 ]
  %100 = phi ptr [ %103, %98 ], [ %95, %94 ]
  %101 = getelementptr inbounds %struct.macb_queue, ptr %100, i32 0, i32 24
  tail call void @napi_enable(ptr noundef %101) #22
  %102 = add nuw i32 %99, 1
  %103 = getelementptr %struct.macb_queue, ptr %100, i32 1
  %104 = load i32, ptr %25, align 4
  %105 = icmp ult i32 %102, %104
  br i1 %105, label %98, label %106

106:                                              ; preds = %98, %94
  tail call fastcc void @macb_init_hw(ptr noundef %4)
  %107 = tail call fastcc i32 @macb_phylink_connect(ptr noundef %4)
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %128

109:                                              ; preds = %106
  %110 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 88
  %111 = load i32, ptr %110, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %122, label %113

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  br label %115

115:                                              ; preds = %115, %113
  %116 = phi i32 [ 0, %113 ], [ %119, %115 ]
  %117 = load ptr, ptr %114, align 64
  %118 = getelementptr %struct.netdev_queue, ptr %117, i32 %116, i32 12
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %118) #22
  %119 = add nuw i32 %116, 1
  %120 = load i32, ptr %110, align 4
  %121 = icmp ult i32 %119, %120
  br i1 %121, label %115, label %122

122:                                              ; preds = %115, %109
  %123 = getelementptr i8, ptr %0, i32 17812
  %124 = load ptr, ptr %123, align 4
  %125 = icmp eq ptr %124, null
  br i1 %125, label %145, label %126

126:                                              ; preds = %122
  %127 = load ptr, ptr %124, align 4
  tail call void %127(ptr noundef %0) #22
  br label %145

128:                                              ; preds = %106
  tail call fastcc void @macb_reset_hw(ptr noundef %4)
  %129 = load i32, ptr %25, align 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %139, label %131

131:                                              ; preds = %131, %128
  %132 = phi i32 [ %135, %131 ], [ 0, %128 ]
  %133 = phi ptr [ %136, %131 ], [ %95, %128 ]
  %134 = getelementptr inbounds %struct.macb_queue, ptr %133, i32 0, i32 24
  tail call void @napi_disable(ptr noundef %134) #22
  %135 = add nuw i32 %132, 1
  %136 = getelementptr %struct.macb_queue, ptr %133, i32 1
  %137 = load i32, ptr %25, align 4
  %138 = icmp ult i32 %135, %137
  br i1 %138, label %131, label %139

139:                                              ; preds = %131, %128
  tail call fastcc void @macb_free_consistent(ptr noundef %4)
  br label %140

140:                                              ; preds = %139, %93, %1
  %141 = phi i32 [ %8, %1 ], [ -12, %93 ], [ %107, %139 ]
  %142 = load ptr, ptr %5, align 4
  %143 = getelementptr inbounds %struct.platform_device, ptr %142, i32 0, i32 3
  %144 = tail call i32 @__pm_runtime_idle(ptr noundef %143, i32 noundef 4) #22
  br label %145

145:                                              ; preds = %140, %126, %122
  %146 = phi i32 [ %141, %140 ], [ 0, %126 ], [ 0, %122 ]
  ret i32 %146
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @macb_close(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 1408
  tail call void @netif_tx_stop_all_queues(ptr noundef %0) #22
  %3 = getelementptr i8, ptr %0, i32 1436
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %16, label %6

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 1448
  br label %8

8:                                                ; preds = %8, %6
  %9 = phi i32 [ %12, %8 ], [ 0, %6 ]
  %10 = phi ptr [ %13, %8 ], [ %7, %6 ]
  %11 = getelementptr inbounds %struct.macb_queue, ptr %10, i32 0, i32 24
  tail call void @napi_disable(ptr noundef %11) #22
  %12 = add nuw i32 %9, 1
  %13 = getelementptr %struct.macb_queue, ptr %10, i32 1
  %14 = load i32, ptr %3, align 4
  %15 = icmp ult i32 %12, %14
  br i1 %15, label %8, label %16

16:                                               ; preds = %8, %1
  %17 = getelementptr i8, ptr %0, i32 16976
  %18 = load ptr, ptr %17, align 8
  tail call void @phylink_stop(ptr noundef %18) #22
  %19 = load ptr, ptr %17, align 8
  tail call void @phylink_disconnect_phy(ptr noundef %19) #22
  %20 = getelementptr i8, ptr %0, i32 16744
  %21 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %20) #22
  tail call fastcc void @macb_reset_hw(ptr noundef %2)
  tail call void @netif_carrier_off(ptr noundef %0) #22
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %20, i32 noundef %21) #22
  tail call fastcc void @macb_free_consistent(ptr noundef %2)
  %22 = getelementptr i8, ptr %0, i32 17812
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.macb_ptp_info, ptr %23, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  tail call void %27(ptr noundef %0) #22
  br label %28

28:                                               ; preds = %25, %16
  %29 = getelementptr i8, ptr %0, i32 16748
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.platform_device, ptr %30, i32 0, i32 3
  %32 = tail call i32 @__pm_runtime_idle(ptr noundef %31, i32 noundef 5) #22
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @macb_start_xmit(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 9
  %4 = load i16, ptr %3, align 4
  %5 = getelementptr i8, ptr %1, i32 1408
  %6 = zext i16 %4 to i32
  %7 = getelementptr %struct.macb, ptr %5, i32 0, i32 9, i32 %6
  %8 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %9 = load i16, ptr %8, align 8
  %10 = and i16 %9, 96
  %11 = icmp eq i16 %10, 96
  br i1 %11, label %12, label %41

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 11
  %14 = load i8, ptr %13, align 2
  %15 = and i8 %14, 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.skb_shared_info, ptr %19, i32 0, i32 10
  %21 = load volatile i32, ptr %20, align 4
  %22 = and i32 %21, 65535
  %23 = ashr i32 %21, 16
  %24 = sub nsw i32 %22, %23
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %29, label %26

26:                                               ; preds = %17
  %27 = tail call i32 @pskb_expand_head(ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 2592) #22
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %40, !prof !13

29:                                               ; preds = %26, %17, %12
  %30 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  %33 = load i16, ptr %32, align 4
  %34 = zext i16 %33 to i32
  %35 = getelementptr i8, ptr %31, i32 %34
  %36 = getelementptr inbounds %struct.anon.58, ptr %32, i32 0, i32 1
  %37 = load i16, ptr %36, align 2
  %38 = zext i16 %37 to i32
  %39 = getelementptr i8, ptr %35, i32 %38
  store i16 0, ptr %39, align 2
  br label %41

40:                                               ; preds = %26
  tail call void @__dev_kfree_skb_any(ptr noundef %0, i32 noundef 1) #22
  br label %629

41:                                               ; preds = %29, %2
  %42 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 11
  %43 = load i8, ptr %42, align 2
  %44 = and i8 %43, 1
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %59, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.skb_shared_info, ptr %48, i32 0, i32 10
  %50 = load volatile i32, ptr %49, align 4
  %51 = and i32 %50, 65535
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %53, label %63

53:                                               ; preds = %46
  %54 = load volatile i32, ptr %49, align 4
  %55 = and i32 %54, 65535
  %56 = ashr i32 %54, 16
  %57 = sub nsw i32 %55, %56
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %63

59:                                               ; preds = %53, %41
  %60 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %61 = load i32, ptr %60, align 4
  %62 = icmp ne i32 %61, 0
  br label %63

63:                                               ; preds = %59, %53, %46
  %64 = phi i1 [ true, %53 ], [ true, %46 ], [ %62, %59 ]
  %65 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %66 = load i32, ptr %65, align 8
  %67 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %70 = load ptr, ptr %69, align 8
  %71 = ptrtoint ptr %68 to i32
  %72 = ptrtoint ptr %70 to i32
  %73 = sub i32 %71, %72
  %74 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %75 = load i32, ptr %74, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %63
  %78 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %81 = load ptr, ptr %80, align 8
  %82 = ptrtoint ptr %79 to i32
  %83 = ptrtoint ptr %81 to i32
  %84 = sub i32 %82, %83
  br label %85

85:                                               ; preds = %77, %63
  %86 = phi i32 [ %84, %77 ], [ 0, %63 ]
  %87 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 23
  %88 = load i64, ptr %87, align 16
  %89 = and i64 %88, 8
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %154, label %91

91:                                               ; preds = %85
  %92 = load i16, ptr %8, align 8
  %93 = and i16 %92, 96
  %94 = icmp eq i16 %93, 96
  br i1 %94, label %154, label %95

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %97 = load ptr, ptr %96, align 4
  %98 = getelementptr inbounds %struct.skb_shared_info, ptr %97, i32 0, i32 4
  %99 = load i16, ptr %98, align 4
  %100 = icmp eq i16 %99, 0
  br i1 %100, label %101, label %154

101:                                              ; preds = %95
  %102 = add i32 %66, -61
  %103 = icmp sgt i32 %102, -2
  br i1 %103, label %104, label %112

104:                                              ; preds = %101
  %105 = icmp sgt i32 %86, 3
  br i1 %105, label %134, label %106

106:                                              ; preds = %104
  %107 = xor i1 %64, true
  %108 = add i32 %86, %73
  %109 = icmp sgt i32 %108, 3
  %110 = select i1 %107, i1 %109, i1 false
  %111 = select i1 %110, i32 0, i32 4
  br label %115

112:                                              ; preds = %101
  %113 = sub i32 64, %66
  %114 = add i32 %86, %73
  br label %115

115:                                              ; preds = %112, %106
  %116 = phi i32 [ %108, %106 ], [ %114, %112 ]
  %117 = phi i32 [ %111, %106 ], [ %113, %112 ]
  %118 = icmp slt i32 %116, %117
  %119 = select i1 %64, i1 true, i1 %118
  br i1 %119, label %124, label %120

120:                                              ; preds = %115
  tail call void @llvm.memmove.p0.p0.i32(ptr align 1 %70, ptr align 1 %68, i32 %66, i1 false) #22
  store ptr %70, ptr %67, align 4
  %121 = load i32, ptr %65, align 8
  %122 = getelementptr i8, ptr %70, i32 %121
  %123 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  store ptr %122, ptr %123, align 8
  br label %128

124:                                              ; preds = %115
  %125 = tail call ptr @skb_copy_expand(ptr noundef %0, i32 noundef 0, i32 noundef %117, i32 noundef 2592) #22
  %126 = icmp eq ptr %125, null
  br i1 %126, label %153, label %127

127:                                              ; preds = %124
  tail call void @__dev_kfree_skb_any(ptr noundef %0, i32 noundef 0) #22
  br label %128

128:                                              ; preds = %127, %120
  %129 = phi ptr [ %125, %127 ], [ %0, %120 ]
  %130 = icmp sgt i32 %117, 4
  br i1 %130, label %131, label %134

131:                                              ; preds = %128
  %132 = add nsw i32 %117, -4
  %133 = tail call ptr @skb_put(ptr noundef %129, i32 noundef %132) #22
  tail call void @llvm.memset.p0.i32(ptr align 1 %133, i8 0, i32 %132, i1 false) #22
  br label %134

134:                                              ; preds = %131, %128, %104
  %135 = phi ptr [ %0, %104 ], [ %129, %131 ], [ %129, %128 ]
  %136 = getelementptr inbounds %struct.sk_buff, ptr %135, i32 0, i32 17
  %137 = load ptr, ptr %136, align 4
  %138 = getelementptr inbounds %struct.sk_buff, ptr %135, i32 0, i32 5
  %139 = load i32, ptr %138, align 8
  %140 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %137, i32 noundef %139) #25
  %141 = xor i32 %140, -1
  %142 = trunc i32 %141 to i8
  %143 = tail call ptr @skb_put(ptr noundef %135, i32 noundef 1) #22
  store i8 %142, ptr %143, align 1
  %144 = lshr i32 %141, 8
  %145 = trunc i32 %144 to i8
  %146 = tail call ptr @skb_put(ptr noundef %135, i32 noundef 1) #22
  store i8 %145, ptr %146, align 1
  %147 = lshr i32 %141, 16
  %148 = trunc i32 %147 to i8
  %149 = tail call ptr @skb_put(ptr noundef %135, i32 noundef 1) #22
  store i8 %148, ptr %149, align 1
  %150 = lshr i32 %141, 24
  %151 = trunc i32 %150 to i8
  %152 = tail call ptr @skb_put(ptr noundef %135, i32 noundef 1) #22
  store i8 %151, ptr %152, align 1
  br label %154

153:                                              ; preds = %124
  tail call void @__dev_kfree_skb_any(ptr noundef %0, i32 noundef 1) #22
  br label %629

154:                                              ; preds = %134, %95, %91, %85
  %155 = phi ptr [ %0, %95 ], [ %135, %134 ], [ %0, %91 ], [ %0, %85 ]
  %156 = getelementptr inbounds %struct.sk_buff, ptr %155, i32 0, i32 15
  %157 = load ptr, ptr %156, align 4
  %158 = getelementptr inbounds %struct.skb_shared_info, ptr %157, i32 0, i32 4
  %159 = load i16, ptr %158, align 4
  %160 = icmp eq i16 %159, 0
  br i1 %160, label %198, label %161

161:                                              ; preds = %154
  %162 = getelementptr inbounds %struct.sk_buff, ptr %155, i32 0, i32 16
  %163 = load ptr, ptr %162, align 8
  %164 = getelementptr inbounds %struct.sk_buff, ptr %155, i32 0, i32 13, i32 0, i32 18
  %165 = load i16, ptr %164, align 4
  %166 = zext i16 %165 to i32
  %167 = getelementptr i8, ptr %163, i32 %166
  %168 = getelementptr inbounds %struct.iphdr, ptr %167, i32 0, i32 6
  %169 = load i8, ptr %168, align 1
  %170 = icmp eq i8 %169, 17
  %171 = getelementptr inbounds %struct.sk_buff, ptr %155, i32 0, i32 13, i32 0, i32 17
  %172 = load i16, ptr %171, align 2
  %173 = zext i16 %172 to i32
  %174 = getelementptr i8, ptr %163, i32 %173
  %175 = getelementptr inbounds %struct.sk_buff, ptr %155, i32 0, i32 17
  %176 = load ptr, ptr %175, align 4
  %177 = ptrtoint ptr %174 to i32
  %178 = ptrtoint ptr %176 to i32
  %179 = sub i32 %177, %178
  br i1 %170, label %187, label %180

180:                                              ; preds = %161
  %181 = getelementptr inbounds %struct.tcphdr, ptr %174, i32 0, i32 4
  %182 = load i16, ptr %181, align 4
  %183 = lshr i16 %182, 2
  %184 = and i16 %183, 60
  %185 = zext i16 %184 to i32
  %186 = add i32 %179, %185
  br label %187

187:                                              ; preds = %180, %161
  %188 = phi i32 [ %186, %180 ], [ %179, %161 ]
  %189 = getelementptr inbounds %struct.sk_buff, ptr %155, i32 0, i32 5
  %190 = load i32, ptr %189, align 8
  %191 = getelementptr inbounds %struct.sk_buff, ptr %155, i32 0, i32 6
  %192 = load i32, ptr %191, align 4
  %193 = sub i32 %190, %192
  %194 = icmp ult i32 %193, %188
  br i1 %194, label %195, label %207

195:                                              ; preds = %187
  %196 = getelementptr i8, ptr %1, i32 16772
  %197 = load ptr, ptr %196, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %197, ptr noundef nonnull @.str.26) #23
  br label %629

198:                                              ; preds = %154
  %199 = getelementptr inbounds %struct.sk_buff, ptr %155, i32 0, i32 5
  %200 = load i32, ptr %199, align 8
  %201 = getelementptr inbounds %struct.sk_buff, ptr %155, i32 0, i32 6
  %202 = load i32, ptr %201, align 4
  %203 = sub i32 %200, %202
  %204 = getelementptr i8, ptr %1, i32 17064
  %205 = load i32, ptr %204, align 8
  %206 = tail call i32 @llvm.umin.i32(i32 %203, i32 %205)
  br label %217

207:                                              ; preds = %187
  %208 = icmp ugt i32 %193, %188
  %209 = getelementptr i8, ptr %1, i32 17064
  %210 = load i32, ptr %209, align 8
  br i1 %208, label %211, label %217

211:                                              ; preds = %207
  %212 = xor i32 %188, -1
  %213 = add i32 %193, %212
  %214 = add i32 %213, %210
  %215 = udiv i32 %214, %210
  %216 = add i32 %215, 1
  br label %226

217:                                              ; preds = %207, %198
  %218 = phi i32 [ %205, %198 ], [ %210, %207 ]
  %219 = phi i32 [ %202, %198 ], [ %192, %207 ]
  %220 = phi i32 [ %200, %198 ], [ %190, %207 ]
  %221 = phi i32 [ %206, %198 ], [ %188, %207 ]
  %222 = xor i32 %219, -1
  %223 = add i32 %220, %222
  %224 = add i32 %223, %218
  %225 = udiv i32 %224, %218
  br label %226

226:                                              ; preds = %217, %211
  %227 = phi i32 [ %210, %211 ], [ %218, %217 ]
  %228 = phi i32 [ %188, %211 ], [ %221, %217 ]
  %229 = phi i32 [ %216, %211 ], [ %225, %217 ]
  %230 = getelementptr inbounds %struct.skb_shared_info, ptr %157, i32 0, i32 2
  %231 = load i8, ptr %230, align 2
  %232 = zext i8 %231 to i32
  %233 = icmp eq i8 %231, 0
  br i1 %233, label %245, label %234

234:                                              ; preds = %234, %226
  %235 = phi i32 [ %243, %234 ], [ 0, %226 ]
  %236 = phi i32 [ %242, %234 ], [ %229, %226 ]
  %237 = getelementptr %struct.skb_shared_info, ptr %157, i32 0, i32 12, i32 %235, i32 1
  %238 = load i32, ptr %237, align 4
  %239 = add i32 %238, -1
  %240 = add i32 %239, %227
  %241 = udiv i32 %240, %227
  %242 = add i32 %241, %236
  %243 = add nuw nsw i32 %235, 1
  %244 = icmp eq i32 %243, %232
  br i1 %244, label %245, label %234

245:                                              ; preds = %234, %226
  %246 = phi i32 [ %229, %226 ], [ %242, %234 ]
  %247 = getelementptr i8, ptr %1, i32 16744
  %248 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %247) #22
  %249 = getelementptr %struct.macb, ptr %5, i32 0, i32 9, i32 %6, i32 12
  %250 = load i32, ptr %249, align 8
  %251 = getelementptr %struct.macb, ptr %5, i32 0, i32 9, i32 %6, i32 11
  %252 = load i32, ptr %251, align 4
  %253 = xor i32 %252, -1
  %254 = add i32 %250, %253
  %255 = getelementptr i8, ptr %1, i32 1432
  %256 = load i32, ptr %255, align 8
  %257 = add i32 %256, -1
  %258 = and i32 %257, %254
  %259 = icmp ult i32 %258, %246
  br i1 %259, label %260, label %264

260:                                              ; preds = %245
  %261 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 87
  %262 = load ptr, ptr %261, align 64
  %263 = getelementptr %struct.netdev_queue, ptr %262, i32 %6, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %263) #22
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %247, i32 noundef %248) #22
  br label %629

264:                                              ; preds = %245
  %265 = getelementptr inbounds %struct.macb_queue, ptr %7, i32 0, i32 11
  %266 = load ptr, ptr %156, align 4
  %267 = getelementptr inbounds %struct.skb_shared_info, ptr %266, i32 0, i32 2
  %268 = load i8, ptr %267, align 2
  %269 = zext i8 %268 to i32
  %270 = getelementptr inbounds %struct.skb_shared_info, ptr %266, i32 0, i32 4
  %271 = load i16, ptr %270, align 4
  %272 = icmp eq i16 %271, 0
  br i1 %272, label %284, label %273

273:                                              ; preds = %264
  %274 = getelementptr inbounds %struct.sk_buff, ptr %155, i32 0, i32 16
  %275 = load ptr, ptr %274, align 8
  %276 = getelementptr inbounds %struct.sk_buff, ptr %155, i32 0, i32 13, i32 0, i32 18
  %277 = load i16, ptr %276, align 4
  %278 = zext i16 %277 to i32
  %279 = getelementptr i8, ptr %275, i32 %278
  %280 = getelementptr inbounds %struct.iphdr, ptr %279, i32 0, i32 6
  %281 = load i8, ptr %280, align 1
  %282 = icmp eq i8 %281, 17
  %283 = select i1 %282, i32 131072, i32 262144
  br label %284

284:                                              ; preds = %273, %264
  %285 = phi i1 [ false, %264 ], [ %282, %273 ]
  %286 = phi i32 [ 0, %264 ], [ %283, %273 ]
  %287 = xor i1 %272, true
  %288 = getelementptr inbounds %struct.sk_buff, ptr %155, i32 0, i32 5
  %289 = load i32, ptr %288, align 8
  %290 = getelementptr inbounds %struct.sk_buff, ptr %155, i32 0, i32 6
  %291 = load i32, ptr %290, align 4
  %292 = sub i32 %289, %291
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %299, label %294

294:                                              ; preds = %284
  %295 = getelementptr inbounds %struct.macb_queue, ptr %7, i32 0, i32 14
  %296 = getelementptr i8, ptr %1, i32 16748
  %297 = getelementptr inbounds %struct.sk_buff, ptr %155, i32 0, i32 17
  %298 = getelementptr i8, ptr %1, i32 17064
  br label %308

299:                                              ; preds = %345, %284
  %300 = phi ptr [ null, %284 ], [ %346, %345 ]
  %301 = phi i32 [ 0, %284 ], [ %351, %345 ]
  %302 = phi i32 [ %252, %284 ], [ %352, %345 ]
  %303 = icmp eq i8 %268, 0
  br i1 %303, label %405, label %304

304:                                              ; preds = %299
  %305 = getelementptr i8, ptr %1, i32 17064
  %306 = getelementptr inbounds %struct.macb_queue, ptr %7, i32 0, i32 14
  %307 = getelementptr i8, ptr %1, i32 16748
  br label %359

308:                                              ; preds = %354, %294
  %309 = phi i32 [ %256, %294 ], [ %358, %354 ]
  %310 = phi i32 [ %292, %294 ], [ %350, %354 ]
  %311 = phi i32 [ %252, %294 ], [ %352, %354 ]
  %312 = phi i32 [ 0, %294 ], [ %351, %354 ]
  %313 = phi i32 [ %228, %294 ], [ %356, %354 ]
  %314 = phi i32 [ 0, %294 ], [ %357, %354 ]
  %315 = add i32 %309, -1
  %316 = and i32 %315, %311
  %317 = load ptr, ptr %295, align 8
  %318 = load ptr, ptr %296, align 4
  %319 = getelementptr inbounds %struct.platform_device, ptr %318, i32 0, i32 3
  %320 = load ptr, ptr %297, align 4
  %321 = getelementptr i8, ptr %320, i32 %314
  %322 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %321) #22
  %323 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %324 = xor i1 %323, true
  %325 = select i1 %322, i1 %324, i1 false
  br i1 %325, label %326, label %335, !prof !14

326:                                              ; preds = %308
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %327 = tail call ptr @dev_driver_string(ptr noundef %319) #22
  %328 = getelementptr inbounds %struct.platform_device, ptr %318, i32 0, i32 3, i32 3
  %329 = load ptr, ptr %328, align 4
  %330 = icmp eq ptr %329, null
  br i1 %330, label %331, label %333

331:                                              ; preds = %326
  %332 = load ptr, ptr %319, align 4
  br label %333

333:                                              ; preds = %331, %326
  %334 = phi ptr [ %332, %331 ], [ %329, %326 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.30, ptr noundef %327, ptr noundef %334) #22
  br label %335

335:                                              ; preds = %333, %308
  br i1 %322, label %566, label %336

336:                                              ; preds = %335
  %337 = load ptr, ptr @mem_map, align 4
  %338 = ptrtoint ptr %321 to i32
  %339 = add i32 %338, 1073741824
  %340 = lshr i32 %339, 12
  %341 = getelementptr %struct.page, ptr %337, i32 %340
  %342 = and i32 %338, 4095
  %343 = tail call i32 @dma_map_page_attrs(ptr noundef %319, ptr noundef %341, i32 noundef %342, i32 noundef %313, i32 noundef 1, i32 noundef 0) #22
  %344 = icmp eq i32 %343, -1
  br i1 %344, label %566, label %345

345:                                              ; preds = %336
  %346 = getelementptr %struct.macb_tx_skb, ptr %317, i32 %316
  store ptr null, ptr %346, align 4
  %347 = getelementptr %struct.macb_tx_skb, ptr %317, i32 %316, i32 1
  store i32 %343, ptr %347, align 4
  %348 = getelementptr %struct.macb_tx_skb, ptr %317, i32 %316, i32 2
  store i32 %313, ptr %348, align 4
  %349 = getelementptr %struct.macb_tx_skb, ptr %317, i32 %316, i32 3
  store i8 0, ptr %349, align 4
  %350 = sub i32 %310, %313
  %351 = add i32 %312, 1
  %352 = add i32 %311, 1
  %353 = icmp eq i32 %350, 0
  br i1 %353, label %299, label %354

354:                                              ; preds = %345
  %355 = load i32, ptr %298, align 8
  %356 = tail call i32 @llvm.umin.i32(i32 %350, i32 %355) #22
  %357 = add i32 %314, %313
  %358 = load i32, ptr %255, align 8
  br label %308

359:                                              ; preds = %399, %304
  %360 = phi i32 [ %302, %304 ], [ %402, %399 ]
  %361 = phi i32 [ 0, %304 ], [ %403, %399 ]
  %362 = phi i32 [ %301, %304 ], [ %401, %399 ]
  %363 = phi ptr [ %300, %304 ], [ %400, %399 ]
  %364 = load ptr, ptr %156, align 4
  %365 = getelementptr %struct.skb_shared_info, ptr %364, i32 0, i32 12, i32 %361
  %366 = getelementptr %struct.skb_shared_info, ptr %364, i32 0, i32 12, i32 %361, i32 1
  %367 = load i32, ptr %366, align 4
  %368 = icmp eq i32 %367, 0
  br i1 %368, label %399, label %369

369:                                              ; preds = %359
  %370 = getelementptr %struct.skb_shared_info, ptr %364, i32 0, i32 12, i32 %361, i32 2
  br label %371

371:                                              ; preds = %387, %369
  %372 = phi i32 [ %367, %369 ], [ %394, %387 ]
  %373 = phi i32 [ %360, %369 ], [ %397, %387 ]
  %374 = phi i32 [ %362, %369 ], [ %396, %387 ]
  %375 = phi i32 [ 0, %369 ], [ %395, %387 ]
  %376 = load i32, ptr %305, align 8
  %377 = tail call i32 @llvm.umin.i32(i32 %372, i32 %376) #22
  %378 = load i32, ptr %255, align 8
  %379 = load ptr, ptr %306, align 8
  %380 = load ptr, ptr %307, align 4
  %381 = getelementptr inbounds %struct.platform_device, ptr %380, i32 0, i32 3
  %382 = load ptr, ptr %365, align 4
  %383 = load i32, ptr %370, align 4
  %384 = add i32 %383, %375
  %385 = tail call i32 @dma_map_page_attrs(ptr noundef %381, ptr noundef %382, i32 noundef %384, i32 noundef %377, i32 noundef 1, i32 noundef 0) #22
  %386 = icmp eq i32 %385, -1
  br i1 %386, label %566, label %387

387:                                              ; preds = %371
  %388 = add i32 %378, -1
  %389 = and i32 %388, %373
  %390 = getelementptr %struct.macb_tx_skb, ptr %379, i32 %389
  store ptr null, ptr %390, align 4
  %391 = getelementptr %struct.macb_tx_skb, ptr %379, i32 %389, i32 1
  store i32 %385, ptr %391, align 4
  %392 = getelementptr %struct.macb_tx_skb, ptr %379, i32 %389, i32 2
  store i32 %377, ptr %392, align 4
  %393 = getelementptr %struct.macb_tx_skb, ptr %379, i32 %389, i32 3
  store i8 1, ptr %393, align 4
  %394 = sub i32 %372, %377
  %395 = add i32 %377, %375
  %396 = add i32 %374, 1
  %397 = add i32 %373, 1
  %398 = icmp eq i32 %394, 0
  br i1 %398, label %399, label %371

399:                                              ; preds = %387, %359
  %400 = phi ptr [ %363, %359 ], [ %390, %387 ]
  %401 = phi i32 [ %362, %359 ], [ %396, %387 ]
  %402 = phi i32 [ %360, %359 ], [ %397, %387 ]
  %403 = add nuw nsw i32 %361, 1
  %404 = icmp eq i32 %403, %269
  br i1 %404, label %405, label %359

405:                                              ; preds = %399, %299
  %406 = phi ptr [ %300, %299 ], [ %400, %399 ]
  %407 = phi i32 [ %301, %299 ], [ %401, %399 ]
  %408 = phi i32 [ %302, %299 ], [ %402, %399 ]
  %409 = icmp eq ptr %406, null
  br i1 %409, label %410, label %413, !prof !14

410:                                              ; preds = %405
  %411 = getelementptr i8, ptr %1, i32 16772
  %412 = load ptr, ptr %411, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %412, ptr noundef nonnull @.str.27) #23
  br label %601

413:                                              ; preds = %405
  store ptr %155, ptr %406, align 4
  %414 = load i32, ptr %255, align 8
  %415 = add i32 %414, -1
  %416 = and i32 %415, %408
  %417 = load ptr, ptr %7, align 8
  %418 = getelementptr inbounds %struct.macb, ptr %417, i32 0, i32 6
  %419 = load i32, ptr %418, align 8
  %420 = add i32 %419, -1
  %421 = and i32 %416, %420
  %422 = getelementptr inbounds %struct.macb, ptr %417, i32 0, i32 35
  %423 = load i8, ptr %422, align 8
  switch i8 %423, label %428 [
    i8 1, label %424
    i8 2, label %424
    i8 3, label %426
  ]

424:                                              ; preds = %413, %413
  %425 = shl i32 %421, 1
  br label %428

426:                                              ; preds = %413
  %427 = mul i32 %421, 3
  br label %428

428:                                              ; preds = %426, %424, %413
  %429 = phi i32 [ %421, %413 ], [ %427, %426 ], [ %425, %424 ]
  %430 = getelementptr inbounds %struct.macb_queue, ptr %7, i32 0, i32 13
  %431 = load ptr, ptr %430, align 4
  %432 = getelementptr %struct.macb_dma_desc, ptr %431, i32 %429, i32 1
  store i32 -2147483648, ptr %432, align 4
  br i1 %272, label %452, label %433

433:                                              ; preds = %428
  %434 = load ptr, ptr %156, align 4
  %435 = getelementptr inbounds %struct.skb_shared_info, ptr %434, i32 0, i32 4
  %436 = load i16, ptr %435, align 4
  %437 = zext i16 %436 to i32
  br i1 %285, label %438, label %452

438:                                              ; preds = %433
  %439 = getelementptr inbounds %struct.sk_buff, ptr %155, i32 0, i32 16
  %440 = load ptr, ptr %439, align 8
  %441 = getelementptr inbounds %struct.sk_buff, ptr %155, i32 0, i32 13, i32 0, i32 17
  %442 = load i16, ptr %441, align 2
  %443 = zext i16 %442 to i32
  %444 = getelementptr i8, ptr %440, i32 %443
  %445 = getelementptr inbounds %struct.sk_buff, ptr %155, i32 0, i32 17
  %446 = load ptr, ptr %445, align 4
  %447 = ptrtoint ptr %444 to i32
  %448 = ptrtoint ptr %446 to i32
  %449 = add nuw nsw i32 %437, 4
  %450 = sub i32 %449, %448
  %451 = add i32 %450, %447
  br label %452

452:                                              ; preds = %438, %433, %428
  %453 = phi i32 [ %451, %438 ], [ 0, %428 ], [ %437, %433 ]
  %454 = getelementptr inbounds %struct.macb_queue, ptr %7, i32 0, i32 14
  %455 = shl i32 %453, 16
  %456 = and i32 %455, 1073676288
  %457 = getelementptr i8, ptr %1, i32 16772
  %458 = getelementptr inbounds %struct.sk_buff, ptr %155, i32 0, i32 13
  %459 = add i32 %408, -1
  %460 = load i32, ptr %255, align 8
  %461 = add i32 %460, -1
  %462 = and i32 %461, %459
  %463 = load ptr, ptr %454, align 8
  %464 = load ptr, ptr %7, align 8
  %465 = getelementptr inbounds %struct.macb, ptr %464, i32 0, i32 6
  %466 = load i32, ptr %465, align 8
  %467 = add i32 %466, -1
  %468 = and i32 %467, %462
  %469 = getelementptr inbounds %struct.macb, ptr %464, i32 0, i32 35
  %470 = load i8, ptr %469, align 8
  switch i8 %470, label %475 [
    i8 1, label %473
    i8 2, label %473
    i8 3, label %471
  ]

471:                                              ; preds = %452
  %472 = mul i32 %468, 3
  br label %475

473:                                              ; preds = %452, %452
  %474 = shl i32 %468, 1
  br label %475

475:                                              ; preds = %473, %471, %452
  %476 = phi i32 [ %468, %452 ], [ %472, %471 ], [ %474, %473 ]
  %477 = load ptr, ptr %430, align 4
  %478 = getelementptr %struct.macb_dma_desc, ptr %477, i32 %476
  %479 = getelementptr %struct.macb_tx_skb, ptr %463, i32 %462, i32 2
  %480 = load i32, ptr %479, align 4
  %481 = or i32 %480, 32768
  %482 = icmp eq i32 %462, %461
  br i1 %482, label %483, label %485, !prof !14

483:                                              ; preds = %475
  %484 = or i32 %480, 1073774592
  br label %485

485:                                              ; preds = %483, %475
  %486 = phi i32 [ %484, %483 ], [ %481, %475 ]
  %487 = load i32, ptr %265, align 4
  %488 = icmp eq i32 %459, %487
  br i1 %488, label %491, label %489

489:                                              ; preds = %485
  %490 = or i32 %486, %456
  br label %505

491:                                              ; preds = %485
  %492 = or i32 %486, %286
  %493 = load ptr, ptr %457, align 4
  %494 = getelementptr inbounds %struct.net_device, ptr %493, i32 0, i32 23
  %495 = load i64, ptr %494, align 16
  %496 = and i64 %495, 8
  %497 = icmp eq i64 %496, 0
  br i1 %497, label %505, label %498

498:                                              ; preds = %491
  %499 = load i16, ptr %458, align 8
  %500 = and i16 %499, 96
  %501 = icmp eq i16 %500, 96
  %502 = select i1 %501, i1 true, i1 %287
  %503 = or i32 %492, 65536
  %504 = select i1 %502, i32 %492, i32 %503
  br label %505

505:                                              ; preds = %498, %491, %489
  %506 = phi i32 [ %492, %491 ], [ %490, %489 ], [ %504, %498 ]
  %507 = getelementptr %struct.macb_tx_skb, ptr %463, i32 %462, i32 1
  %508 = load i32, ptr %507, align 4
  store i32 %508, ptr %478, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #22, !srcloc !30
  tail call void @arm_heavy_mb() #22
  %509 = getelementptr %struct.macb_dma_desc, ptr %477, i32 %476, i32 1
  store i32 %506, ptr %509, align 4
  %510 = load i32, ptr %265, align 4
  %511 = icmp eq i32 %459, %510
  br i1 %511, label %599, label %512

512:                                              ; preds = %559, %505
  %513 = phi i32 [ %564, %559 ], [ %510, %505 ]
  %514 = phi i32 [ %515, %559 ], [ %459, %505 ]
  %515 = add i32 %514, -1
  %516 = load i32, ptr %255, align 8
  %517 = add i32 %516, -1
  %518 = and i32 %517, %515
  %519 = load ptr, ptr %454, align 8
  %520 = load ptr, ptr %7, align 8
  %521 = getelementptr inbounds %struct.macb, ptr %520, i32 0, i32 6
  %522 = load i32, ptr %521, align 8
  %523 = add i32 %522, -1
  %524 = and i32 %523, %518
  %525 = getelementptr inbounds %struct.macb, ptr %520, i32 0, i32 35
  %526 = load i8, ptr %525, align 8
  switch i8 %526, label %531 [
    i8 1, label %527
    i8 2, label %527
    i8 3, label %529
  ]

527:                                              ; preds = %512, %512
  %528 = shl i32 %524, 1
  br label %531

529:                                              ; preds = %512
  %530 = mul i32 %524, 3
  br label %531

531:                                              ; preds = %529, %527, %512
  %532 = phi i32 [ %524, %512 ], [ %530, %529 ], [ %528, %527 ]
  %533 = load ptr, ptr %430, align 4
  %534 = getelementptr %struct.macb_dma_desc, ptr %533, i32 %532
  %535 = getelementptr %struct.macb_tx_skb, ptr %519, i32 %518, i32 2
  %536 = load i32, ptr %535, align 4
  %537 = icmp eq i32 %518, %517
  br i1 %537, label %538, label %540, !prof !14

538:                                              ; preds = %531
  %539 = or i32 %536, 1073741824
  br label %540

540:                                              ; preds = %538, %531
  %541 = phi i32 [ %539, %538 ], [ %536, %531 ]
  %542 = icmp eq i32 %515, %513
  br i1 %542, label %543, label %557

543:                                              ; preds = %540
  %544 = or i32 %541, %286
  %545 = load ptr, ptr %457, align 4
  %546 = getelementptr inbounds %struct.net_device, ptr %545, i32 0, i32 23
  %547 = load i64, ptr %546, align 16
  %548 = and i64 %547, 8
  %549 = icmp eq i64 %548, 0
  br i1 %549, label %559, label %550

550:                                              ; preds = %543
  %551 = load i16, ptr %458, align 8
  %552 = and i16 %551, 96
  %553 = icmp eq i16 %552, 96
  %554 = select i1 %553, i1 true, i1 %287
  %555 = or i32 %544, 65536
  %556 = select i1 %554, i32 %544, i32 %555
  br label %559

557:                                              ; preds = %540
  %558 = or i32 %541, %456
  br label %559

559:                                              ; preds = %557, %550, %543
  %560 = phi i32 [ %544, %543 ], [ %558, %557 ], [ %556, %550 ]
  %561 = getelementptr %struct.macb_tx_skb, ptr %519, i32 %518, i32 1
  %562 = load i32, ptr %561, align 4
  store i32 %562, ptr %534, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #22, !srcloc !30
  tail call void @arm_heavy_mb() #22
  %563 = getelementptr %struct.macb_dma_desc, ptr %533, i32 %532, i32 1
  store i32 %560, ptr %563, align 4
  %564 = load i32, ptr %265, align 4
  %565 = icmp eq i32 %515, %564
  br i1 %565, label %599, label %512, !llvm.loop !31

566:                                              ; preds = %371, %336, %335
  %567 = phi i32 [ %373, %371 ], [ %311, %335 ], [ %311, %336 ]
  %568 = getelementptr i8, ptr %1, i32 16772
  %569 = load ptr, ptr %568, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %569, ptr noundef nonnull @.str.28) #23
  %570 = load i32, ptr %265, align 4
  %571 = icmp eq i32 %570, %567
  br i1 %571, label %601, label %572

572:                                              ; preds = %566
  %573 = getelementptr inbounds %struct.macb_queue, ptr %7, i32 0, i32 14
  %574 = getelementptr i8, ptr %1, i32 16748
  br label %575

575:                                              ; preds = %596, %572
  %576 = phi i32 [ %570, %572 ], [ %597, %596 ]
  %577 = load ptr, ptr %573, align 8
  %578 = load ptr, ptr %7, align 8
  %579 = getelementptr inbounds %struct.macb, ptr %578, i32 0, i32 6
  %580 = load i32, ptr %579, align 8
  %581 = add i32 %580, -1
  %582 = and i32 %581, %576
  %583 = getelementptr %struct.macb_tx_skb, ptr %577, i32 %582
  %584 = getelementptr %struct.macb_tx_skb, ptr %577, i32 %582, i32 1
  %585 = load i32, ptr %584, align 4
  %586 = icmp eq i32 %585, 0
  br i1 %586, label %592, label %587

587:                                              ; preds = %575
  %588 = load ptr, ptr %574, align 4
  %589 = getelementptr inbounds %struct.platform_device, ptr %588, i32 0, i32 3
  %590 = getelementptr %struct.macb_tx_skb, ptr %577, i32 %582, i32 2
  %591 = load i32, ptr %590, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %589, i32 noundef %585, i32 noundef %591, i32 noundef 1, i32 noundef 0) #22
  store i32 0, ptr %584, align 4
  br label %592

592:                                              ; preds = %587, %575
  %593 = load ptr, ptr %583, align 4
  %594 = icmp eq ptr %593, null
  br i1 %594, label %596, label %595

595:                                              ; preds = %592
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %593, i32 noundef 1) #22
  store ptr null, ptr %583, align 4
  br label %596

596:                                              ; preds = %595, %592
  %597 = add i32 %576, 1
  %598 = icmp eq i32 %597, %567
  br i1 %598, label %601, label %575

599:                                              ; preds = %559, %505
  store i32 %408, ptr %265, align 4
  %600 = icmp eq i32 %407, 0
  br i1 %600, label %601, label %602

601:                                              ; preds = %599, %596, %566, %410
  tail call void @__dev_kfree_skb_any(ptr noundef %155, i32 noundef 1) #22
  br label %628

602:                                              ; preds = %599
  tail call void asm sideeffect "dsb st", "~{memory}"() #22, !srcloc !33
  tail call void @arm_heavy_mb() #22
  %603 = load ptr, ptr %156, align 4
  %604 = getelementptr inbounds %struct.skb_shared_info, ptr %603, i32 0, i32 3
  %605 = load i8, ptr %604, align 1
  %606 = and i8 %605, 2
  %607 = icmp eq i8 %606, 0
  br i1 %607, label %609, label %608

608:                                              ; preds = %602
  tail call void @skb_tstamp_tx(ptr noundef %155, ptr noundef null) #22
  br label %609

609:                                              ; preds = %608, %602
  %610 = getelementptr i8, ptr %1, i32 1420
  %611 = load ptr, ptr %610, align 4
  %612 = getelementptr i8, ptr %1, i32 1416
  %613 = load ptr, ptr %612, align 8
  %614 = tail call i32 %613(ptr noundef %5, i32 noundef 0) #22
  %615 = or i32 %614, 512
  tail call void %611(ptr noundef %5, i32 noundef 0, i32 noundef %615) #22
  %616 = load i32, ptr %249, align 8
  %617 = load i32, ptr %251, align 4
  %618 = xor i32 %617, -1
  %619 = add i32 %616, %618
  %620 = load i32, ptr %255, align 8
  %621 = add i32 %620, -1
  %622 = and i32 %621, %619
  %623 = icmp eq i32 %622, 0
  br i1 %623, label %624, label %628

624:                                              ; preds = %609
  %625 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 87
  %626 = load ptr, ptr %625, align 64
  %627 = getelementptr %struct.netdev_queue, ptr %626, i32 %6, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %627) #22
  br label %628

628:                                              ; preds = %624, %609, %601
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %247, i32 noundef %248) #22
  br label %629

629:                                              ; preds = %628, %260, %195, %153, %40
  %630 = phi i32 [ 0, %40 ], [ 0, %153 ], [ 16, %195 ], [ 16, %260 ], [ 0, %628 ]
  ret i32 %630
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal i64 @macb_features_check(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i64 noundef %2) #8 {
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %54, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %11 = load i16, ptr %10, align 4
  %12 = zext i16 %11 to i32
  %13 = getelementptr i8, ptr %9, i32 %12
  %14 = getelementptr inbounds %struct.iphdr, ptr %13, i32 0, i32 6
  %15 = load i8, ptr %14, align 1
  %16 = icmp eq i8 %15, 17
  br i1 %16, label %17, label %54

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %19 = load i16, ptr %18, align 2
  %20 = zext i16 %19 to i32
  %21 = getelementptr i8, ptr %9, i32 %20
  %22 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %23 = load ptr, ptr %22, align 4
  %24 = ptrtoint ptr %21 to i32
  %25 = ptrtoint ptr %23 to i32
  %26 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %27 = load i32, ptr %26, align 8
  %28 = add i32 %27, %25
  %29 = add i32 %5, %24
  %30 = sub i32 %28, %29
  %31 = and i32 %30, 7
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %17
  %34 = and i64 %2, -65537
  br label %54

35:                                               ; preds = %17
  %36 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.skb_shared_info, ptr %37, i32 0, i32 2
  %39 = load i8, ptr %38, align 2
  %40 = zext i8 %39 to i32
  %41 = add nsw i32 %40, -1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %54, label %46

43:                                               ; preds = %46
  %44 = add nuw i32 %47, 1
  %45 = icmp eq i32 %44, %41
  br i1 %45, label %54, label %46

46:                                               ; preds = %43, %35
  %47 = phi i32 [ %44, %43 ], [ 0, %35 ]
  %48 = getelementptr %struct.skb_shared_info, ptr %37, i32 0, i32 12, i32 %47, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = and i32 %49, 7
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %43, label %52

52:                                               ; preds = %46
  %53 = and i64 %2, -65537
  br label %54

54:                                               ; preds = %52, %43, %35, %33, %7, %3
  %55 = phi i64 [ %34, %33 ], [ %2, %7 ], [ %2, %3 ], [ %53, %52 ], [ %2, %35 ], [ %2, %43 ]
  ret i64 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @macb_set_rx_mode(ptr noundef %0) #2 {
  %2 = alloca [2 x i32], align 8
  %3 = getelementptr i8, ptr %0, i32 1408
  %4 = getelementptr i8, ptr %0, i32 1416
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 %5(ptr noundef %3, i32 noundef 4) #22
  %7 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 14
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 256
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %1
  %12 = or i32 %6, 16
  %13 = getelementptr i8, ptr %0, i32 17020
  %14 = load i32, ptr %13, align 4
  %15 = icmp slt i32 %14, 0
  %16 = and i32 %12, -16777217
  %17 = select i1 %15, i32 %16, i32 %12
  br label %30

18:                                               ; preds = %1
  %19 = and i32 %6, -17
  %20 = getelementptr i8, ptr %0, i32 17020
  %21 = load i32, ptr %20, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 23
  %25 = load i64, ptr %24, align 16
  %26 = lshr i64 %25, 16
  %27 = trunc i64 %26 to i32
  %28 = and i32 %27, 16777216
  %29 = or i32 %28, %19
  br label %30

30:                                               ; preds = %23, %18, %11
  %31 = phi i32 [ %21, %18 ], [ %14, %11 ], [ %21, %23 ]
  %32 = phi i32 [ %19, %18 ], [ %17, %11 ], [ %29, %23 ]
  %33 = and i32 %8, 512
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %47, label %35

35:                                               ; preds = %30
  %36 = getelementptr i8, ptr %0, i32 17020
  %37 = icmp slt i32 %31, 0
  %38 = getelementptr i8, ptr %0, i32 1420
  %39 = load ptr, ptr %38, align 4
  %40 = select i1 %37, i32 128, i32 144
  tail call void %39(ptr noundef %3, i32 noundef %40, i32 noundef -1) #22
  %41 = load i32, ptr %36, align 4
  %42 = icmp slt i32 %41, 0
  %43 = select i1 %42, i32 132, i32 148
  %44 = getelementptr i8, ptr %0, i32 1420
  %45 = load ptr, ptr %44, align 4
  tail call void %45(ptr noundef %3, i32 noundef %43, i32 noundef -1) #22
  %46 = or i32 %32, 64
  br label %229

47:                                               ; preds = %30
  %48 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 61, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %214, label %51

51:                                               ; preds = %47
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #22
  %52 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 61
  store i64 0, ptr %2, align 8
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, %52
  br i1 %54, label %200, label %55

55:                                               ; preds = %55, %51
  %56 = phi ptr [ %192, %55 ], [ %53, %51 ]
  %57 = getelementptr inbounds %struct.netdev_hw_addr, ptr %56, i32 0, i32 2
  %58 = load i8, ptr %57, align 1
  %59 = zext i8 %58 to i32
  %60 = lshr i32 %59, 6
  %61 = xor i32 %60, %59
  %62 = getelementptr %struct.netdev_hw_addr, ptr %56, i32 0, i32 2, i32 1
  %63 = load i8, ptr %62, align 1
  %64 = zext i8 %63 to i32
  %65 = lshr i32 %64, 4
  %66 = xor i32 %61, %65
  %67 = getelementptr %struct.netdev_hw_addr, ptr %56, i32 0, i32 2, i32 2
  %68 = load i8, ptr %67, align 1
  %69 = zext i8 %68 to i32
  %70 = lshr i32 %69, 2
  %71 = xor i32 %66, %70
  %72 = getelementptr %struct.netdev_hw_addr, ptr %56, i32 0, i32 2, i32 3
  %73 = load i8, ptr %72, align 1
  %74 = zext i8 %73 to i32
  %75 = xor i32 %71, %74
  %76 = lshr i32 %74, 6
  %77 = xor i32 %75, %76
  %78 = getelementptr %struct.netdev_hw_addr, ptr %56, i32 0, i32 2, i32 4
  %79 = load i8, ptr %78, align 1
  %80 = zext i8 %79 to i32
  %81 = lshr i32 %80, 4
  %82 = xor i32 %77, %81
  %83 = getelementptr %struct.netdev_hw_addr, ptr %56, i32 0, i32 2, i32 5
  %84 = load i8, ptr %83, align 1
  %85 = zext i8 %84 to i32
  %86 = lshr i32 %85, 2
  %87 = xor i32 %82, %86
  %88 = and i32 %87, 1
  %89 = lshr i32 %59, 1
  %90 = and i32 %89, 1
  %91 = lshr i32 %59, 7
  %92 = xor i32 %90, %91
  %93 = lshr i32 %64, 5
  %94 = and i32 %93, 1
  %95 = xor i32 %92, %94
  %96 = lshr i32 %69, 3
  %97 = and i32 %96, 1
  %98 = xor i32 %95, %97
  %99 = lshr i32 %74, 1
  %100 = and i32 %99, 1
  %101 = lshr i32 %74, 7
  %102 = lshr i32 %80, 5
  %103 = and i32 %102, 1
  %104 = lshr i32 %85, 3
  %105 = and i32 %104, 1
  %106 = xor i32 %98, %101
  %107 = xor i32 %106, %100
  %108 = xor i32 %107, %103
  %109 = xor i32 %108, %105
  %110 = shl i32 %109, 1
  %111 = or i32 %110, %88
  %112 = lshr i32 %59, 2
  %113 = xor i32 %112, %64
  %114 = lshr i32 %64, 6
  %115 = xor i32 %113, %114
  %116 = lshr i32 %69, 4
  %117 = xor i32 %115, %116
  %118 = lshr i32 %74, 2
  %119 = xor i32 %117, %118
  %120 = xor i32 %119, %80
  %121 = lshr i32 %80, 6
  %122 = xor i32 %120, %121
  %123 = lshr i32 %85, 4
  %124 = xor i32 %122, %123
  %125 = shl i32 %124, 2
  %126 = and i32 %125, 4
  %127 = or i32 %111, %126
  %128 = lshr i32 %59, 3
  %129 = lshr i32 %64, 1
  %130 = xor i32 %129, %128
  %131 = and i32 %130, 1
  %132 = lshr i32 %64, 7
  %133 = xor i32 %131, %132
  %134 = lshr i32 %69, 5
  %135 = and i32 %134, 1
  %136 = xor i32 %133, %135
  %137 = lshr i32 %74, 3
  %138 = and i32 %137, 1
  %139 = xor i32 %136, %138
  %140 = lshr i32 %80, 1
  %141 = and i32 %140, 1
  %142 = lshr i32 %80, 7
  %143 = lshr i32 %85, 5
  %144 = and i32 %143, 1
  %145 = xor i32 %139, %142
  %146 = xor i32 %145, %141
  %147 = xor i32 %146, %144
  %148 = shl i32 %147, 3
  %149 = or i32 %127, %148
  %150 = lshr i32 %59, 4
  %151 = lshr i32 %64, 2
  %152 = xor i32 %151, %150
  %153 = xor i32 %152, %69
  %154 = lshr i32 %69, 6
  %155 = xor i32 %153, %154
  %156 = lshr i32 %74, 4
  %157 = xor i32 %155, %156
  %158 = lshr i32 %80, 2
  %159 = xor i32 %157, %158
  %160 = xor i32 %159, %85
  %161 = lshr i32 %85, 6
  %162 = xor i32 %160, %161
  %163 = shl i32 %162, 4
  %164 = or i32 %149, %163
  %165 = lshr i32 %59, 5
  %166 = lshr i32 %64, 3
  %167 = xor i32 %166, %165
  %168 = lshr i32 %69, 1
  %169 = xor i32 %167, %168
  %170 = and i32 %169, 1
  %171 = lshr i32 %69, 7
  %172 = xor i32 %170, %171
  %173 = lshr i32 %74, 5
  %174 = and i32 %173, 1
  %175 = xor i32 %172, %174
  %176 = lshr i32 %80, 3
  %177 = and i32 %176, 1
  %178 = xor i32 %175, %177
  %179 = lshr i32 %85, 1
  %180 = and i32 %179, 1
  %181 = lshr i32 %85, 7
  %182 = xor i32 %178, %181
  %183 = xor i32 %182, %180
  %184 = shl nuw nsw i32 %183, 5
  %185 = or i32 %149, %184
  %186 = and i32 %164, 31
  %187 = shl nuw i32 1, %186
  %188 = lshr i32 %185, 5
  %189 = getelementptr [2 x i32], ptr %2, i32 0, i32 %188
  %190 = load i32, ptr %189, align 4
  %191 = or i32 %187, %190
  store i32 %191, ptr %189, align 4
  %192 = load ptr, ptr %56, align 4
  %193 = icmp eq ptr %192, %52
  br i1 %193, label %194, label %55

194:                                              ; preds = %55
  %195 = getelementptr i8, ptr %0, i32 17020
  %196 = load i32, ptr %195, align 4
  %197 = load i32, ptr %2, align 8
  %198 = getelementptr inbounds [2 x i32], ptr %2, i32 0, i32 1
  %199 = load i32, ptr %198, align 4
  br label %200

200:                                              ; preds = %194, %51
  %201 = phi i32 [ %199, %194 ], [ 0, %51 ]
  %202 = phi i32 [ %197, %194 ], [ 0, %51 ]
  %203 = phi i32 [ %196, %194 ], [ %31, %51 ]
  %204 = getelementptr i8, ptr %0, i32 17020
  %205 = icmp slt i32 %203, 0
  %206 = getelementptr i8, ptr %0, i32 1420
  %207 = load ptr, ptr %206, align 4
  %208 = select i1 %205, i32 128, i32 144
  tail call void %207(ptr noundef %3, i32 noundef %208, i32 noundef %202) #22
  %209 = load i32, ptr %204, align 4
  %210 = icmp slt i32 %209, 0
  %211 = select i1 %210, i32 132, i32 148
  %212 = load ptr, ptr %206, align 4
  tail call void %212(ptr noundef %3, i32 noundef %211, i32 noundef %201) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #22
  %213 = or i32 %32, 64
  br label %229

214:                                              ; preds = %47
  %215 = and i32 %8, -513
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %229, label %217

217:                                              ; preds = %214
  %218 = getelementptr i8, ptr %0, i32 17020
  %219 = icmp slt i32 %31, 0
  %220 = getelementptr i8, ptr %0, i32 1420
  %221 = load ptr, ptr %220, align 4
  %222 = select i1 %219, i32 128, i32 144
  tail call void %221(ptr noundef %3, i32 noundef %222, i32 noundef 0) #22
  %223 = load i32, ptr %218, align 4
  %224 = icmp slt i32 %223, 0
  %225 = select i1 %224, i32 132, i32 148
  %226 = getelementptr i8, ptr %0, i32 1420
  %227 = load ptr, ptr %226, align 4
  tail call void %227(ptr noundef %3, i32 noundef %225, i32 noundef 0) #22
  %228 = and i32 %32, -65
  br label %229

229:                                              ; preds = %217, %214, %200, %35
  %230 = phi i32 [ %46, %35 ], [ %228, %217 ], [ %32, %214 ], [ %213, %200 ]
  %231 = getelementptr i8, ptr %0, i32 1420
  %232 = load ptr, ptr %231, align 4
  tail call void %232(ptr noundef %3, i32 noundef 4, i32 noundef %230) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @macb_ioctl(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %25, label %8

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %0, i32 17812
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %21, label %12

12:                                               ; preds = %8
  switch i32 %2, label %21 [
    i32 35248, label %13
    i32 35249, label %17
  ]

13:                                               ; preds = %12
  %14 = getelementptr inbounds %struct.macb_ptp_info, ptr %10, i32 0, i32 6
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 %15(ptr noundef %0, ptr noundef %1, i32 noundef 35248) #22
  br label %25

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.macb_ptp_info, ptr %10, i32 0, i32 5
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 %19(ptr noundef %0, ptr noundef %1) #22
  br label %25

21:                                               ; preds = %12, %8
  %22 = getelementptr i8, ptr %0, i32 16976
  %23 = load ptr, ptr %22, align 8
  %24 = tail call i32 @phylink_mii_ioctl(ptr noundef %23, ptr noundef %1, i32 noundef %2) #22
  br label %25

25:                                               ; preds = %21, %17, %13, %3
  %26 = phi i32 [ %24, %21 ], [ %20, %17 ], [ %16, %13 ], [ -22, %3 ]
  ret i32 %26
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @macb_change_mtu(ptr noundef %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 20
  store i32 %1, ptr %8, align 4
  br label %9

9:                                                ; preds = %7, %2
  %10 = phi i32 [ 0, %7 ], [ -16, %2 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @macb_get_stats(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 1408
  %3 = getelementptr i8, ptr %0, i32 16772
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 17020
  %6 = load i32, ptr %5, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %70

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 6
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %166, label %13

13:                                               ; preds = %8
  tail call fastcc void @gem_update_stats(ptr noundef %2) #22
  %14 = getelementptr i8, ptr %0, i32 16920
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr i8, ptr %0, i32 16932
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, %15
  %19 = getelementptr i8, ptr %0, i32 16936
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %18, %20
  %22 = getelementptr i8, ptr %0, i32 16940
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %21, %23
  %25 = getelementptr i8, ptr %0, i32 16912
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %24, %26
  %28 = getelementptr i8, ptr %0, i32 16916
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %27, %29
  %31 = getelementptr i8, ptr %0, i32 16908
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %30, %32
  %34 = getelementptr i8, ptr %0, i32 16924
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %33, %35
  %37 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 36, i32 4
  store i32 %36, ptr %37, align 4
  %38 = getelementptr i8, ptr %0, i32 16844
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr i8, ptr %0, i32 16840
  %41 = load i32, ptr %40, align 4
  %42 = add i32 %41, %39
  %43 = getelementptr i8, ptr %0, i32 16828
  %44 = load i32, ptr %43, align 4
  %45 = add i32 %42, %44
  %46 = getelementptr i8, ptr %0, i32 16852
  %47 = load i32, ptr %46, align 4
  %48 = add i32 %45, %47
  %49 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 36, i32 5
  store i32 %48, ptr %49, align 4
  %50 = getelementptr i8, ptr %0, i32 16872
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 36, i32 8
  store i32 %51, ptr %52, align 4
  %53 = getelementptr i8, ptr %0, i32 16832
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr i8, ptr %0, i32 16836
  %56 = load i32, ptr %55, align 4
  %57 = add i32 %56, %54
  %58 = load i32, ptr %40, align 4
  %59 = add i32 %57, %58
  %60 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 36, i32 9
  store i32 %59, ptr %60, align 4
  %61 = load i32, ptr %25, align 4
  %62 = load i32, ptr %28, align 4
  %63 = add i32 %62, %61
  %64 = load i32, ptr %31, align 4
  %65 = add i32 %63, %64
  %66 = load i32, ptr %34, align 4
  %67 = add i32 %65, %66
  %68 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 36, i32 10
  store i32 %67, ptr %68, align 4
  %69 = load i32, ptr %19, align 4
  br label %145

70:                                               ; preds = %1
  %71 = getelementptr i8, ptr %0, i32 16776
  %72 = getelementptr i8, ptr %0, i32 16860
  %73 = icmp ult ptr %71, %72
  br i1 %73, label %74, label %86

74:                                               ; preds = %70
  %75 = getelementptr i8, ptr %0, i32 1416
  br label %76

76:                                               ; preds = %76, %74
  %77 = phi ptr [ %71, %74 ], [ %83, %76 ]
  %78 = phi i32 [ 60, %74 ], [ %84, %76 ]
  %79 = load ptr, ptr %75, align 8
  %80 = tail call i32 %79(ptr noundef %2, i32 noundef %78) #22
  %81 = load i32, ptr %77, align 4
  %82 = add i32 %81, %80
  store i32 %82, ptr %77, align 4
  %83 = getelementptr i32, ptr %77, i32 1
  %84 = add i32 %78, 4
  %85 = icmp ult ptr %83, %72
  br i1 %85, label %76, label %86

86:                                               ; preds = %76, %70
  %87 = getelementptr i8, ptr %0, i32 16796
  %88 = load i32, ptr %87, align 4
  %89 = getelementptr i8, ptr %0, i32 16800
  %90 = load i32, ptr %89, align 4
  %91 = add i32 %90, %88
  %92 = getelementptr i8, ptr %0, i32 16824
  %93 = load i32, ptr %92, align 4
  %94 = add i32 %91, %93
  %95 = getelementptr i8, ptr %0, i32 16828
  %96 = load i32, ptr %95, align 4
  %97 = add i32 %94, %96
  %98 = getelementptr i8, ptr %0, i32 16836
  %99 = load i32, ptr %98, align 4
  %100 = add i32 %97, %99
  %101 = getelementptr i8, ptr %0, i32 16840
  %102 = load i32, ptr %101, align 4
  %103 = add i32 %100, %102
  %104 = getelementptr i8, ptr %0, i32 16844
  %105 = load i32, ptr %104, align 4
  %106 = add i32 %103, %105
  %107 = getelementptr i8, ptr %0, i32 16852
  %108 = load i32, ptr %107, align 4
  %109 = add i32 %106, %108
  %110 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 36, i32 4
  store i32 %109, ptr %110, align 4
  %111 = getelementptr i8, ptr %0, i32 16808
  %112 = load i32, ptr %111, align 4
  %113 = getelementptr i8, ptr %0, i32 16812
  %114 = load i32, ptr %113, align 4
  %115 = add i32 %114, %112
  %116 = getelementptr i8, ptr %0, i32 16816
  %117 = load i32, ptr %116, align 4
  %118 = add i32 %115, %117
  %119 = getelementptr i8, ptr %0, i32 16820
  %120 = load i32, ptr %119, align 4
  %121 = add i32 %118, %120
  %122 = getelementptr i8, ptr %0, i32 16848
  %123 = load i32, ptr %122, align 4
  %124 = add i32 %121, %123
  %125 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 36, i32 5
  store i32 %124, ptr %125, align 4
  %126 = getelementptr i8, ptr %0, i32 16784
  %127 = load i32, ptr %126, align 4
  %128 = getelementptr i8, ptr %0, i32 16788
  %129 = load i32, ptr %128, align 4
  %130 = add i32 %129, %127
  %131 = load i32, ptr %113, align 4
  %132 = add i32 %130, %131
  %133 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 36, i32 9
  store i32 %132, ptr %133, align 4
  %134 = load i32, ptr %98, align 4
  %135 = load i32, ptr %101, align 4
  %136 = add i32 %135, %134
  %137 = load i32, ptr %104, align 4
  %138 = add i32 %136, %137
  %139 = load i32, ptr %107, align 4
  %140 = add i32 %138, %139
  %141 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 36, i32 10
  store i32 %140, ptr %141, align 4
  %142 = load i32, ptr %92, align 4
  %143 = load i32, ptr %95, align 4
  %144 = add i32 %143, %142
  br label %145

145:                                              ; preds = %86, %13
  %146 = phi i32 [ %69, %13 ], [ %144, %86 ]
  %147 = phi ptr [ %14, %13 ], [ %87, %86 ]
  %148 = phi ptr [ %16, %13 ], [ %89, %86 ]
  %149 = phi ptr [ %22, %13 ], [ %95, %86 ]
  %150 = phi ptr [ %40, %13 ], [ %113, %86 ]
  %151 = phi ptr [ %46, %13 ], [ %119, %86 ]
  %152 = phi ptr [ %43, %13 ], [ %116, %86 ]
  %153 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 36, i32 11
  store i32 %146, ptr %153, align 4
  %154 = load i32, ptr %147, align 4
  %155 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 36, i32 12
  store i32 %154, ptr %155, align 4
  %156 = load i32, ptr %148, align 4
  %157 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 36, i32 13
  store i32 %156, ptr %157, align 4
  %158 = load i32, ptr %149, align 4
  %159 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 36, i32 14
  store i32 %158, ptr %159, align 4
  %160 = load i32, ptr %150, align 4
  %161 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 36, i32 16
  store i32 %160, ptr %161, align 4
  %162 = load i32, ptr %151, align 4
  %163 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 36, i32 17
  store i32 %162, ptr %163, align 4
  %164 = load i32, ptr %152, align 4
  %165 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 36, i32 18
  store i32 %164, ptr %165, align 4
  br label %166

166:                                              ; preds = %145, %8
  %167 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 36
  ret ptr %167
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @macb_set_features(ptr noundef %0, i64 noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 1408
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 23
  %5 = load i64, ptr %4, align 16
  %6 = xor i64 %5, %1
  %7 = and i64 %6, 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %24, label %9

9:                                                ; preds = %2
  %10 = getelementptr i8, ptr %0, i32 17020
  %11 = load i32, ptr %10, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %9
  %14 = getelementptr i8, ptr %0, i32 1416
  %15 = load ptr, ptr %14, align 8
  %16 = tail call i32 %15(ptr noundef %3, i32 noundef 16) #22
  %17 = and i32 %16, -2049
  %18 = trunc i64 %1 to i32
  %19 = shl i32 %18, 8
  %20 = and i32 %19, 2048
  %21 = or i32 %17, %20
  %22 = getelementptr i8, ptr %0, i32 1420
  %23 = load ptr, ptr %22, align 4
  tail call void %23(ptr noundef %3, i32 noundef 16, i32 noundef %21) #22
  br label %24

24:                                               ; preds = %13, %9, %2
  %25 = and i64 %6, 1099511627776
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %52, label %27

27:                                               ; preds = %24
  %28 = getelementptr i8, ptr %0, i32 16772
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr i8, ptr %0, i32 17020
  %31 = load i32, ptr %30, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %52

33:                                               ; preds = %27
  %34 = getelementptr i8, ptr %0, i32 1416
  %35 = load ptr, ptr %34, align 8
  %36 = tail call i32 %35(ptr noundef %3, i32 noundef 4) #22
  %37 = and i64 %1, 1099511627776
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.net_device, ptr %29, i32 0, i32 14
  %41 = load i32, ptr %40, align 8
  %42 = and i32 %41, 256
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = or i32 %36, 16777216
  br label %48

46:                                               ; preds = %39, %33
  %47 = and i32 %36, -16777217
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i32 [ %47, %46 ], [ %45, %44 ]
  %50 = getelementptr i8, ptr %0, i32 1420
  %51 = load ptr, ptr %50, align 4
  tail call void %51(ptr noundef %3, i32 noundef 4, i32 noundef %49) #22
  br label %52

52:                                               ; preds = %48, %27, %24
  %53 = and i64 %6, 274877906944
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %52
  %56 = getelementptr i8, ptr %0, i32 17020
  %57 = load i32, ptr %56, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = and i64 %1, 274877906944
  %61 = icmp ne i64 %60, 0
  tail call fastcc void @gem_enable_flow_filters(ptr noundef %3, i1 noundef zeroext %61) #22
  br label %62

62:                                               ; preds = %59, %55, %52
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @macb_init_hw(ptr noundef %0) unnamed_addr #2 {
  tail call fastcc void @macb_reset_hw(ptr noundef %0)
  %2 = getelementptr inbounds %struct.macb, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 72
  %5 = load ptr, ptr %4, align 32
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.macb, ptr %0, i32 0, i32 25
  %8 = load i32, ptr %7, align 4
  %9 = icmp slt i32 %8, 0
  %10 = getelementptr inbounds %struct.macb, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = select i1 %9, i32 136, i32 152
  tail call void %11(ptr noundef %0, i32 noundef %12, i32 noundef %6) #22
  %13 = load ptr, ptr %2, align 4
  %14 = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 72
  %15 = load ptr, ptr %14, align 32
  %16 = getelementptr i8, ptr %15, i32 4
  %17 = load i16, ptr %16, align 2
  %18 = load i32, ptr %7, align 4
  %19 = icmp slt i32 %18, 0
  %20 = select i1 %19, i32 140, i32 156
  %21 = load ptr, ptr %10, align 4
  %22 = zext i16 %17 to i32
  tail call void %21(ptr noundef %0, i32 noundef %20, i32 noundef %22) #22
  %23 = load i32, ptr %7, align 4
  %24 = icmp slt i32 %23, 0
  %25 = select i1 %24, i32 144, i32 160
  %26 = load ptr, ptr %10, align 4
  tail call void %26(ptr noundef %0, i32 noundef %25, i32 noundef 0) #22
  %27 = load i32, ptr %7, align 4
  %28 = icmp slt i32 %27, 0
  %29 = select i1 %28, i32 148, i32 164
  %30 = load ptr, ptr %10, align 4
  tail call void %30(ptr noundef %0, i32 noundef %29, i32 noundef 0) #22
  %31 = load i32, ptr %7, align 4
  %32 = icmp slt i32 %31, 0
  %33 = select i1 %32, i32 152, i32 168
  %34 = load ptr, ptr %10, align 4
  tail call void %34(ptr noundef %0, i32 noundef %33, i32 noundef 0) #22
  %35 = load i32, ptr %7, align 4
  %36 = icmp slt i32 %35, 0
  %37 = select i1 %36, i32 156, i32 172
  %38 = load ptr, ptr %10, align 4
  tail call void %38(ptr noundef %0, i32 noundef %37, i32 noundef 0) #22
  %39 = load i32, ptr %7, align 4
  %40 = icmp slt i32 %39, 0
  %41 = select i1 %40, i32 160, i32 176
  %42 = load ptr, ptr %10, align 4
  tail call void %42(ptr noundef %0, i32 noundef %41, i32 noundef 0) #22
  %43 = load i32, ptr %7, align 4
  %44 = icmp slt i32 %43, 0
  %45 = select i1 %44, i32 164, i32 180
  %46 = load ptr, ptr %10, align 4
  tail call void %46(ptr noundef %0, i32 noundef %45, i32 noundef 0) #22
  %47 = load i32, ptr %7, align 4
  %48 = icmp slt i32 %47, 0
  %49 = getelementptr inbounds %struct.macb, ptr %0, i32 0, i32 12
  %50 = load ptr, ptr %49, align 8
  %51 = tail call i32 @clk_get_rate(ptr noundef %50) #22
  %52 = icmp ult i32 %51, 20000001
  br i1 %48, label %53, label %63

53:                                               ; preds = %1
  br i1 %52, label %69, label %54

54:                                               ; preds = %53
  %55 = icmp ult i32 %51, 40000001
  br i1 %55, label %69, label %56

56:                                               ; preds = %54
  %57 = icmp ult i32 %51, 80000001
  br i1 %57, label %69, label %58

58:                                               ; preds = %56
  %59 = icmp ult i32 %51, 120000001
  br i1 %59, label %69, label %60

60:                                               ; preds = %58
  %61 = icmp ult i32 %51, 160000001
  %62 = select i1 %61, i32 1048576, i32 1310720
  br label %69

63:                                               ; preds = %1
  br i1 %52, label %69, label %64

64:                                               ; preds = %63
  %65 = icmp ult i32 %51, 40000001
  br i1 %65, label %69, label %66

66:                                               ; preds = %64
  %67 = icmp ult i32 %51, 80000001
  %68 = select i1 %67, i32 2048, i32 3072
  br label %69

69:                                               ; preds = %66, %64, %63, %60, %58, %56, %54, %53
  %70 = phi i32 [ 0, %63 ], [ 1024, %64 ], [ %68, %66 ], [ 0, %53 ], [ 262144, %54 ], [ 524288, %56 ], [ 786432, %58 ], [ %62, %60 ]
  %71 = load i32, ptr %7, align 4
  %72 = and i32 %71, 32
  %73 = icmp eq i32 %72, 0
  %74 = select i1 %73, i32 164096, i32 163848
  %75 = or i32 %74, %70
  %76 = load ptr, ptr %2, align 4
  %77 = getelementptr inbounds %struct.net_device, ptr %76, i32 0, i32 14
  %78 = load i32, ptr %77, align 8
  %79 = and i32 %78, 256
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %99

81:                                               ; preds = %69
  %82 = icmp slt i32 %71, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %81
  %84 = shl i32 %78, 4
  %85 = and i32 %84, 32
  %86 = or i32 %85, %75
  %87 = xor i32 %86, 32
  br label %116

88:                                               ; preds = %81
  %89 = getelementptr inbounds %struct.net_device, ptr %76, i32 0, i32 23
  %90 = load i64, ptr %89, align 16
  %91 = lshr i64 %90, 16
  %92 = trunc i64 %91 to i32
  %93 = and i32 %92, 16777216
  %94 = shl i32 %78, 4
  %95 = and i32 %94, 32
  %96 = or i32 %95, %75
  %97 = or i32 %96, %93
  %98 = xor i32 %97, 32
  br label %105

99:                                               ; preds = %69
  %100 = and i32 %78, 2
  %101 = icmp eq i32 %100, 0
  %102 = select i1 %101, i32 48, i32 16
  %103 = or i32 %102, %75
  %104 = icmp slt i32 %71, 0
  br i1 %104, label %105, label %116

105:                                              ; preds = %99, %88
  %106 = phi i32 [ %98, %88 ], [ %103, %99 ]
  %107 = getelementptr inbounds %struct.macb, ptr %0, i32 0, i32 2
  %108 = load ptr, ptr %107, align 8
  %109 = tail call i32 %108(ptr noundef %0, i32 noundef 640) #22
  %110 = lshr i32 %109, 25
  %111 = and i32 %110, 7
  %112 = icmp eq i32 %111, 2
  %113 = select i1 %112, i32 2097152, i32 0
  %114 = icmp eq i32 %111, 4
  %115 = select i1 %114, i32 4194304, i32 %113
  br label %116

116:                                              ; preds = %105, %99, %83
  %117 = phi i32 [ %103, %99 ], [ %106, %105 ], [ %87, %83 ]
  %118 = phi i32 [ 0, %99 ], [ %115, %105 ], [ 0, %83 ]
  %119 = or i32 %118, %117
  %120 = load ptr, ptr %10, align 4
  tail call void %120(ptr noundef %0, i32 noundef 4, i32 noundef %119) #22
  %121 = load i32, ptr %7, align 4
  %122 = and i32 %121, 32
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %134, label %124

124:                                              ; preds = %116
  %125 = getelementptr inbounds %struct.macb, ptr %0, i32 0, i32 32
  %126 = load i32, ptr %125, align 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %134, label %128

128:                                              ; preds = %124
  %129 = load ptr, ptr %10, align 4
  tail call void %129(ptr noundef %0, i32 noundef 72, i32 noundef %126) #22
  %130 = load i32, ptr %7, align 4
  %131 = and i32 %130, 32
  %132 = icmp eq i32 %131, 0
  %133 = select i1 %132, i32 4095, i32 16383
  br label %134

134:                                              ; preds = %128, %124, %116
  %135 = phi i32 [ 4095, %116 ], [ 16383, %124 ], [ %133, %128 ]
  %136 = phi i32 [ %121, %116 ], [ %121, %124 ], [ %130, %128 ]
  %137 = getelementptr inbounds %struct.macb, ptr %0, i32 0, i32 31
  store i32 %135, ptr %137, align 8
  %138 = getelementptr inbounds %struct.macb, ptr %0, i32 0, i32 4
  %139 = load i32, ptr %138, align 8
  %140 = lshr i32 %139, 6
  %141 = icmp slt i32 %136, 0
  br i1 %141, label %142, label %200

142:                                              ; preds = %134
  %143 = getelementptr inbounds %struct.macb, ptr %0, i32 0, i32 2
  %144 = load ptr, ptr %143, align 8
  %145 = tail call i32 %144(ptr noundef %0, i32 noundef 16) #22
  %146 = and i32 %145, -16711681
  %147 = getelementptr inbounds %struct.macb, ptr %0, i32 0, i32 7
  %148 = load i32, ptr %147, align 4
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %169, label %150

150:                                              ; preds = %142
  %151 = shl i32 %140, 16
  %152 = and i32 %151, 16711680
  %153 = or i32 %146, %152
  %154 = icmp eq i32 %148, 1
  br i1 %154, label %169, label %155

155:                                              ; preds = %150
  %156 = getelementptr %struct.macb, ptr %0, i32 0, i32 9, i32 1
  br label %157

157:                                              ; preds = %157, %155
  %158 = phi i32 [ 1, %155 ], [ %166, %157 ]
  %159 = phi ptr [ %156, %155 ], [ %167, %157 ]
  %160 = load ptr, ptr %159, align 8
  %161 = getelementptr inbounds %struct.macb, ptr %160, i32 0, i32 3
  %162 = load ptr, ptr %161, align 4
  %163 = getelementptr inbounds %struct.macb_queue, ptr %159, i32 0, i32 8
  %164 = load i32, ptr %163, align 8
  tail call void %162(ptr noundef %160, i32 noundef %164, i32 noundef %140) #22
  %165 = load i32, ptr %147, align 4
  %166 = add nuw i32 %158, 1
  %167 = getelementptr %struct.macb_queue, ptr %159, i32 1
  %168 = icmp ult i32 %166, %165
  br i1 %168, label %157, label %169, !llvm.loop !34

169:                                              ; preds = %157, %150, %142
  %170 = phi i32 [ %146, %142 ], [ %153, %150 ], [ %153, %157 ]
  %171 = getelementptr inbounds %struct.macb, ptr %0, i32 0, i32 26
  %172 = load i32, ptr %171, align 8
  %173 = icmp eq i32 %172, 0
  %174 = and i32 %170, -2016
  %175 = and i32 %172, 31
  %176 = or i32 %175, %174
  %177 = select i1 %173, i32 %170, i32 %176
  %178 = getelementptr inbounds %struct.macb, ptr %0, i32 0, i32 1
  %179 = load i8, ptr %178, align 4, !range !35
  %180 = icmp eq i8 %179, 0
  %181 = and i32 %177, -1985
  %182 = select i1 %180, i32 1856, i32 1792
  %183 = or i32 %181, %182
  %184 = load ptr, ptr %2, align 4
  %185 = getelementptr inbounds %struct.net_device, ptr %184, i32 0, i32 23
  %186 = load i64, ptr %185, align 16
  %187 = and i64 %186, 8
  %188 = icmp eq i64 %187, 0
  %189 = or i32 %183, 2048
  %190 = and i32 %183, -1073744001
  %191 = select i1 %188, i32 %190, i32 %189
  %192 = and i32 %191, -1073741953
  %193 = getelementptr inbounds %struct.macb, ptr %0, i32 0, i32 35
  %194 = load i8, ptr %193, align 8
  %195 = and i8 %194, 2
  %196 = icmp eq i8 %195, 0
  %197 = or i32 %192, 805306368
  %198 = select i1 %196, i32 %192, i32 %197
  %199 = load ptr, ptr %10, align 4
  tail call void %199(ptr noundef %0, i32 noundef 16, i32 noundef %198) #22
  br label %200

200:                                              ; preds = %169, %134
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @macb_phylink_connect(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = alloca %struct.of_phandle_args, align 4
  %3 = getelementptr inbounds %struct.macb, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.macb, ptr %0, i32 0, i32 17
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %6, null
  br i1 %9, label %21, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.macb, ptr %0, i32 0, i32 21
  %12 = load ptr, ptr %11, align 8
  %13 = tail call i32 @phylink_of_phy_connect(ptr noundef %12, ptr noundef nonnull %6, i32 noundef 0) #22
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %34, label %15

15:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false) #22, !annotation !8
  %16 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %6, ptr noundef nonnull @.str.25, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %2) #22
  %17 = icmp eq i32 %16, 0
  %18 = load ptr, ptr %2, align 4
  %19 = select i1 %17, ptr %18, ptr null
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #22
  call void @of_node_put(ptr noundef %19) #22
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %32

21:                                               ; preds = %15, %1
  %22 = getelementptr inbounds %struct.macb, ptr %0, i32 0, i32 20
  %23 = load ptr, ptr %22, align 4
  %24 = call ptr @phy_find_first(ptr noundef %23) #22
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %8, ptr noundef nonnull @.str.23) #23
  br label %37

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.macb, ptr %0, i32 0, i32 21
  %29 = load ptr, ptr %28, align 8
  %30 = call i32 @phylink_connect_phy(ptr noundef %29, ptr noundef nonnull %24) #22
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %27, %15
  %33 = phi i32 [ %30, %27 ], [ %13, %15 ]
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %8, ptr noundef nonnull @.str.24, i32 noundef %33) #23
  br label %37

34:                                               ; preds = %27, %10
  %35 = getelementptr inbounds %struct.macb, ptr %0, i32 0, i32 21
  %36 = load ptr, ptr %35, align 8
  call void @phylink_start(ptr noundef %36) #22
  br label %37

37:                                               ; preds = %34, %32, %26
  %38 = phi i32 [ %33, %32 ], [ 0, %34 ], [ -6, %26 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @macb_reset_hw(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.macb, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 %3(ptr noundef %0, i32 noundef 0) #22
  %5 = and i32 %4, -45
  %6 = or i32 %5, 32
  %7 = getelementptr inbounds %struct.macb, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  tail call void %8(ptr noundef %0, i32 noundef 0, i32 noundef %6) #22
  %9 = load ptr, ptr %7, align 4
  tail call void %9(ptr noundef %0, i32 noundef 20, i32 noundef -1) #22
  %10 = load ptr, ptr %7, align 4
  tail call void %10(ptr noundef %0, i32 noundef 32, i32 noundef -1) #22
  %11 = getelementptr inbounds %struct.macb, ptr %0, i32 0, i32 7
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %44, label %14

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.macb, ptr %0, i32 0, i32 9
  %16 = getelementptr inbounds %struct.macb, ptr %0, i32 0, i32 25
  br label %17

17:                                               ; preds = %39, %14
  %18 = phi ptr [ %15, %14 ], [ %41, %39 ]
  %19 = phi i32 [ 0, %14 ], [ %40, %39 ]
  %20 = load ptr, ptr %18, align 8
  %21 = getelementptr inbounds %struct.macb, ptr %20, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.macb_queue, ptr %18, i32 0, i32 4
  %24 = load i32, ptr %23, align 8
  tail call void %22(ptr noundef %20, i32 noundef %24, i32 noundef -1) #22
  %25 = load ptr, ptr %18, align 8
  %26 = getelementptr inbounds %struct.macb, ptr %25, i32 0, i32 2
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.macb_queue, ptr %18, i32 0, i32 2
  %29 = load i32, ptr %28, align 8
  %30 = tail call i32 %27(ptr noundef %25, i32 noundef %29) #22
  %31 = load i32, ptr %16, align 4
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %17
  %35 = load ptr, ptr %18, align 8
  %36 = getelementptr inbounds %struct.macb, ptr %35, i32 0, i32 3
  %37 = load ptr, ptr %36, align 4
  %38 = load i32, ptr %28, align 8
  tail call void %37(ptr noundef %35, i32 noundef %38, i32 noundef -1) #22
  br label %39

39:                                               ; preds = %34, %17
  %40 = add nuw i32 %19, 1
  %41 = getelementptr %struct.macb_queue, ptr %18, i32 1
  %42 = load i32, ptr %11, align 4
  %43 = icmp ult i32 %40, %42
  br i1 %43, label %17, label %44

44:                                               ; preds = %39, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @macb_free_consistent(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.macb, ptr %0, i32 0, i32 19, i32 1
  %3 = load ptr, ptr %2, align 4
  tail call void %3(ptr noundef %0) #22
  %4 = getelementptr inbounds %struct.macb, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %68, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.macb, ptr %0, i32 0, i32 9
  %9 = getelementptr inbounds %struct.macb, ptr %0, i32 0, i32 35
  %10 = getelementptr inbounds %struct.macb, ptr %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.macb, ptr %0, i32 0, i32 47
  %12 = getelementptr inbounds %struct.macb, ptr %0, i32 0, i32 11
  %13 = getelementptr inbounds %struct.macb, ptr %0, i32 0, i32 5
  %14 = getelementptr inbounds %struct.macb, ptr %0, i32 0, i32 46
  br label %15

15:                                               ; preds = %63, %7
  %16 = phi i32 [ 0, %7 ], [ %64, %63 ]
  %17 = phi ptr [ %8, %7 ], [ %65, %63 ]
  %18 = getelementptr inbounds %struct.macb_queue, ptr %17, i32 0, i32 14
  %19 = load ptr, ptr %18, align 8
  tail call void @kfree(ptr noundef %19) #22
  store ptr null, ptr %18, align 8
  %20 = getelementptr inbounds %struct.macb_queue, ptr %17, i32 0, i32 13
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %41, label %23

23:                                               ; preds = %15
  %24 = load i8, ptr %9, align 8
  %25 = add i8 %24, -1
  %26 = icmp ult i8 %25, 3
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = sext i8 %25 to i32
  %29 = getelementptr inbounds [3 x i32], ptr @switch.table.macb_get_regs.57, i32 0, i32 %28
  %30 = load i32, ptr %29, align 4
  br label %31

31:                                               ; preds = %27, %23
  %32 = phi i32 [ %30, %27 ], [ 8, %23 ]
  %33 = load i32, ptr %10, align 8
  %34 = mul i32 %33, %32
  %35 = load i32, ptr %11, align 8
  %36 = add i32 %34, %35
  %37 = load ptr, ptr %12, align 4
  %38 = getelementptr inbounds %struct.platform_device, ptr %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.macb_queue, ptr %17, i32 0, i32 15
  %40 = load i32, ptr %39, align 4
  tail call void @dma_free_attrs(ptr noundef %38, i32 noundef %36, ptr noundef nonnull %21, i32 noundef %40, i32 noundef 0) #22
  store ptr null, ptr %20, align 4
  br label %41

41:                                               ; preds = %31, %15
  %42 = getelementptr inbounds %struct.macb_queue, ptr %17, i32 0, i32 21
  %43 = load ptr, ptr %42, align 8
  %44 = icmp eq ptr %43, null
  br i1 %44, label %63, label %45

45:                                               ; preds = %41
  %46 = load i8, ptr %9, align 8
  %47 = add i8 %46, -1
  %48 = icmp ult i8 %47, 3
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = sext i8 %47 to i32
  %51 = getelementptr inbounds [3 x i32], ptr @switch.table.macb_get_regs.57, i32 0, i32 %50
  %52 = load i32, ptr %51, align 4
  br label %53

53:                                               ; preds = %49, %45
  %54 = phi i32 [ %52, %49 ], [ 8, %45 ]
  %55 = load i32, ptr %13, align 4
  %56 = mul i32 %55, %54
  %57 = load i32, ptr %14, align 4
  %58 = add i32 %56, %57
  %59 = load ptr, ptr %12, align 4
  %60 = getelementptr inbounds %struct.platform_device, ptr %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.macb_queue, ptr %17, i32 0, i32 17
  %62 = load i32, ptr %61, align 8
  tail call void @dma_free_attrs(ptr noundef %60, i32 noundef %58, ptr noundef nonnull %43, i32 noundef %62, i32 noundef 0) #22
  store ptr null, ptr %42, align 8
  br label %63

63:                                               ; preds = %53, %41
  %64 = add nuw i32 %16, 1
  %65 = getelementptr %struct.macb_queue, ptr %17, i32 1
  %66 = load i32, ptr %4, align 4
  %67 = icmp ult i32 %64, %66
  br i1 %67, label %15, label %68

68:                                               ; preds = %63, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_of_phy_connect(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @phy_find_first(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_connect_phy(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_disconnect_phy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i32(ptr nocapture writeonly, ptr nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_copy_expand(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_tstamp_tx(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_mii_ioctl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @gem_update_stats(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.macb, ptr %0, i32 0, i32 18
  %3 = getelementptr inbounds %struct.macb, ptr %0, i32 0, i32 2
  br label %4

4:                                                ; preds = %28, %1
  %5 = phi ptr [ %2, %1 ], [ %31, %28 ]
  %6 = phi i32 [ 0, %1 ], [ %30, %28 ]
  %7 = getelementptr [43 x %struct.gem_statistic], ptr @gem_statistics, i32 0, i32 %6, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = load ptr, ptr %3, align 8
  %10 = tail call i32 %9(ptr noundef %0, i32 noundef %8) #22
  %11 = zext i32 %10 to i64
  %12 = getelementptr %struct.macb, ptr %0, i32 0, i32 30, i32 %6
  %13 = load i64, ptr %12, align 8
  %14 = add i64 %13, %11
  store i64 %14, ptr %12, align 8
  %15 = load i32, ptr %5, align 4
  %16 = add i32 %15, %10
  store i32 %16, ptr %5, align 4
  switch i32 %6, label %28 [
    i32 19, label %17
    i32 0, label %17
  ]

17:                                               ; preds = %4, %4
  %18 = load ptr, ptr %3, align 8
  %19 = add i32 %8, 4
  %20 = tail call i32 %18(ptr noundef %0, i32 noundef %19) #22
  %21 = zext i32 %20 to i64
  %22 = shl nuw i64 %21, 32
  %23 = load i64, ptr %12, align 8
  %24 = add i64 %22, %23
  store i64 %24, ptr %12, align 8
  %25 = getelementptr i32, ptr %5, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, %20
  store i32 %27, ptr %25, align 4
  br label %28

28:                                               ; preds = %17, %4
  %29 = phi ptr [ %25, %17 ], [ %5, %4 ]
  %30 = add nuw nsw i32 %6, 1
  %31 = getelementptr i32, ptr %29, i32 1
  %32 = icmp eq i32 %30, 43
  br i1 %32, label %33, label %4

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.macb, ptr %0, i32 0, i32 7
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %77, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.macb, ptr %0, i32 0, i32 9
  br label %39

39:                                               ; preds = %39, %37
  %40 = phi i32 [ %71, %39 ], [ 43, %37 ]
  %41 = phi i32 [ %73, %39 ], [ 0, %37 ]
  %42 = phi ptr [ %74, %39 ], [ %38, %37 ]
  %43 = getelementptr inbounds %struct.macb_queue, ptr %42, i32 0, i32 25
  %44 = load i32, ptr %43, align 4
  %45 = zext i32 %44 to i64
  %46 = add i32 %40, 1
  %47 = getelementptr %struct.macb, ptr %0, i32 0, i32 30, i32 %40
  store i64 %45, ptr %47, align 8
  %48 = getelementptr %struct.macb_queue, ptr %42, i32 0, i32 25, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = zext i32 %49 to i64
  %51 = add i32 %40, 2
  %52 = getelementptr %struct.macb, ptr %0, i32 0, i32 30, i32 %46
  store i64 %50, ptr %52, align 8
  %53 = getelementptr %struct.macb_queue, ptr %42, i32 0, i32 25, i32 2
  %54 = load i32, ptr %53, align 4
  %55 = zext i32 %54 to i64
  %56 = add i32 %40, 3
  %57 = getelementptr %struct.macb, ptr %0, i32 0, i32 30, i32 %51
  store i64 %55, ptr %57, align 8
  %58 = getelementptr %struct.macb_queue, ptr %42, i32 0, i32 25, i32 3
  %59 = load i32, ptr %58, align 4
  %60 = zext i32 %59 to i64
  %61 = add i32 %40, 4
  %62 = getelementptr %struct.macb, ptr %0, i32 0, i32 30, i32 %56
  store i64 %60, ptr %62, align 8
  %63 = getelementptr %struct.macb_queue, ptr %42, i32 0, i32 25, i32 4
  %64 = load i32, ptr %63, align 4
  %65 = zext i32 %64 to i64
  %66 = add i32 %40, 5
  %67 = getelementptr %struct.macb, ptr %0, i32 0, i32 30, i32 %61
  store i64 %65, ptr %67, align 8
  %68 = getelementptr %struct.macb_queue, ptr %42, i32 0, i32 25, i32 5
  %69 = load i32, ptr %68, align 4
  %70 = zext i32 %69 to i64
  %71 = add i32 %40, 6
  %72 = getelementptr %struct.macb, ptr %0, i32 0, i32 30, i32 %66
  store i64 %70, ptr %72, align 8
  %73 = add nuw i32 %41, 1
  %74 = getelementptr %struct.macb_queue, ptr %42, i32 1
  %75 = load i32, ptr %34, align 4
  %76 = icmp ult i32 %73, %75
  br i1 %76, label %39, label %77

77:                                               ; preds = %39, %33
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @gem_enable_flow_filters(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.macb, ptr %0, i32 0, i32 17
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 23
  %6 = load i64, ptr %5, align 16
  %7 = and i64 %6, 274877906944
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %68, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.macb, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call i32 %11(ptr noundef %0, i32 noundef 668) #22
  %13 = lshr i32 %12, 16
  %14 = and i32 %13, 255
  %15 = getelementptr inbounds %struct.macb, ptr %0, i32 0, i32 42
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, %15
  br i1 %17, label %68, label %18

18:                                               ; preds = %9
  %19 = select i1 %1, i32 4096, i32 0
  %20 = getelementptr inbounds %struct.macb, ptr %0, i32 0, i32 3
  br label %21

21:                                               ; preds = %65, %18
  %22 = phi ptr [ %16, %18 ], [ %66, %65 ]
  %23 = getelementptr i8, ptr %22, i32 -8
  %24 = load i32, ptr %23, align 8
  %25 = icmp ult i32 %24, %14
  br i1 %25, label %26, label %65

26:                                               ; preds = %21
  %27 = load ptr, ptr %10, align 8
  %28 = shl i32 %24, 2
  %29 = add i32 %28, 1344
  %30 = tail call i32 %27(ptr noundef %0, i32 noundef %29) #22
  %31 = and i32 %30, -4097
  %32 = or i32 %31, %19
  br i1 %1, label %33, label %48

33:                                               ; preds = %26
  %34 = getelementptr i8, ptr %22, i32 -92
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, -1
  %37 = and i32 %32, -17039361
  %38 = select i1 %36, i32 262144, i32 0
  %39 = or i32 %38, %37
  %40 = getelementptr i8, ptr %22, i32 -88
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, -1
  %43 = select i1 %42, i32 16777216, i32 0
  %44 = or i32 %39, %43
  %45 = getelementptr i8, ptr %22, i32 -84
  %46 = load i16, ptr %45, align 4
  %47 = icmp eq i16 %46, -1
  br i1 %47, label %54, label %50

48:                                               ; preds = %26
  %49 = and i32 %32, -17039361
  br label %56

50:                                               ; preds = %33
  %51 = getelementptr i8, ptr %22, i32 -82
  %52 = load i16, ptr %51, align 2
  %53 = icmp eq i16 %52, -1
  br i1 %53, label %54, label %56

54:                                               ; preds = %50, %33
  %55 = or i32 %44, 1073741824
  br label %59

56:                                               ; preds = %50, %48
  %57 = phi i32 [ %44, %50 ], [ %49, %48 ]
  %58 = and i32 %57, -1073741825
  br label %59

59:                                               ; preds = %56, %54
  %60 = phi i32 [ %55, %54 ], [ %58, %56 ]
  %61 = load ptr, ptr %20, align 4
  %62 = load i32, ptr %23, align 8
  %63 = shl i32 %62, 2
  %64 = add i32 %63, 1344
  tail call void %61(ptr noundef %0, i32 noundef %64, i32 noundef %60) #22
  br label %65

65:                                               ; preds = %59, %21
  %66 = load ptr, ptr %22, align 8
  %67 = icmp eq ptr %66, %15
  br i1 %67, label %68, label %21

68:                                               ; preds = %65, %9, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @gem_rx_refill(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.macb_queue, ptr %0, i32 0, i32 19
  %4 = getelementptr inbounds %struct.macb_queue, ptr %0, i32 0, i32 20
  %5 = getelementptr inbounds %struct.macb, ptr %2, i32 0, i32 5
  %6 = load i32, ptr %3, align 8
  %7 = load i32, ptr %4, align 4
  %8 = xor i32 %7, -1
  %9 = add i32 %6, %8
  %10 = load i32, ptr %5, align 4
  %11 = add i32 %10, -1
  %12 = and i32 %11, %9
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %109, label %14

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.macb_queue, ptr %0, i32 0, i32 21
  %16 = getelementptr inbounds %struct.macb_queue, ptr %0, i32 0, i32 22
  %17 = getelementptr inbounds %struct.macb, ptr %2, i32 0, i32 17
  %18 = getelementptr inbounds %struct.macb, ptr %2, i32 0, i32 4
  %19 = getelementptr inbounds %struct.macb, ptr %2, i32 0, i32 11
  br label %20

20:                                               ; preds = %100, %14
  %21 = phi i32 [ %11, %14 ], [ %106, %100 ]
  %22 = phi i32 [ %7, %14 ], [ %102, %100 ]
  %23 = and i32 %21, %22
  tail call void asm sideeffect "dsb ", "~{memory}"() #22, !srcloc !36
  %24 = load i32, ptr %4, align 4
  %25 = add i32 %24, 1
  store i32 %25, ptr %4, align 4
  %26 = load ptr, ptr %0, align 8
  %27 = getelementptr inbounds %struct.macb, ptr %26, i32 0, i32 5
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, -1
  %30 = and i32 %29, %23
  %31 = getelementptr inbounds %struct.macb, ptr %26, i32 0, i32 35
  %32 = load i8, ptr %31, align 8
  switch i8 %32, label %37 [
    i8 1, label %33
    i8 2, label %33
    i8 3, label %35
  ]

33:                                               ; preds = %20, %20
  %34 = shl i32 %30, 1
  br label %37

35:                                               ; preds = %20
  %36 = mul i32 %30, 3
  br label %37

37:                                               ; preds = %35, %33, %20
  %38 = phi i32 [ %30, %20 ], [ %36, %35 ], [ %34, %33 ]
  %39 = load ptr, ptr %15, align 8
  %40 = getelementptr %struct.macb_dma_desc, ptr %39, i32 %38
  %41 = load ptr, ptr %16, align 4
  %42 = getelementptr ptr, ptr %41, i32 %23
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %96

45:                                               ; preds = %37
  %46 = load ptr, ptr %17, align 4
  %47 = load i32, ptr %18, align 8
  %48 = tail call ptr @__netdev_alloc_skb(ptr noundef %46, i32 noundef %47, i32 noundef 2592) #22
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %52, !prof !14

50:                                               ; preds = %45
  %51 = load ptr, ptr %17, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %51, ptr noundef nonnull @.str.32) #23
  br label %109

52:                                               ; preds = %45
  %53 = load ptr, ptr %19, align 4
  %54 = getelementptr inbounds %struct.platform_device, ptr %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.sk_buff, ptr %48, i32 0, i32 17
  %56 = load ptr, ptr %55, align 4
  %57 = load i32, ptr %18, align 8
  %58 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %56) #22
  %59 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %60 = xor i1 %59, true
  %61 = select i1 %58, i1 %60, i1 false
  br i1 %61, label %62, label %71, !prof !14

62:                                               ; preds = %52
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %63 = tail call ptr @dev_driver_string(ptr noundef %54) #22
  %64 = getelementptr inbounds %struct.platform_device, ptr %53, i32 0, i32 3, i32 3
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load ptr, ptr %54, align 4
  br label %69

69:                                               ; preds = %67, %62
  %70 = phi ptr [ %68, %67 ], [ %65, %62 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.30, ptr noundef %63, ptr noundef %70) #22
  br label %71

71:                                               ; preds = %69, %52
  br i1 %58, label %81, label %72

72:                                               ; preds = %71
  %73 = load ptr, ptr @mem_map, align 4
  %74 = ptrtoint ptr %56 to i32
  %75 = add i32 %74, 1073741824
  %76 = lshr i32 %75, 12
  %77 = getelementptr %struct.page, ptr %73, i32 %76
  %78 = and i32 %74, 4095
  %79 = tail call i32 @dma_map_page_attrs(ptr noundef %54, ptr noundef %77, i32 noundef %78, i32 noundef %57, i32 noundef 2, i32 noundef 0) #22
  %80 = icmp eq i32 %79, -1
  br i1 %80, label %81, label %82

81:                                               ; preds = %72, %71
  tail call void @consume_skb(ptr noundef nonnull %48) #22
  br label %109

82:                                               ; preds = %72
  %83 = load ptr, ptr %16, align 4
  %84 = getelementptr ptr, ptr %83, i32 %23
  store ptr %48, ptr %84, align 4
  %85 = load i32, ptr %5, align 4
  %86 = add i32 %85, -1
  %87 = icmp eq i32 %23, %86
  %88 = or i32 %79, 2
  %89 = select i1 %87, i32 %88, i32 %79
  %90 = getelementptr %struct.macb_dma_desc, ptr %39, i32 %38, i32 1
  store i32 0, ptr %90, align 4
  tail call void asm sideeffect "dmb oshst", "~{memory}"() #22, !srcloc !37
  store i32 %89, ptr %40, align 4
  %91 = load ptr, ptr %55, align 4
  %92 = getelementptr i8, ptr %91, i32 2
  store ptr %92, ptr %55, align 4
  %93 = getelementptr inbounds %struct.sk_buff, ptr %48, i32 0, i32 14
  %94 = load ptr, ptr %93, align 8
  %95 = getelementptr i8, ptr %94, i32 2
  store ptr %95, ptr %93, align 8
  br label %100

96:                                               ; preds = %37
  %97 = getelementptr %struct.macb_dma_desc, ptr %39, i32 %38, i32 1
  store i32 0, ptr %97, align 4
  tail call void asm sideeffect "dmb oshst", "~{memory}"() #22, !srcloc !38
  %98 = load i32, ptr %40, align 4
  %99 = and i32 %98, -2
  store i32 %99, ptr %40, align 4
  br label %100

100:                                              ; preds = %96, %82
  %101 = load i32, ptr %3, align 8
  %102 = load i32, ptr %4, align 4
  %103 = xor i32 %102, -1
  %104 = add i32 %101, %103
  %105 = load i32, ptr %5, align 4
  %106 = add i32 %105, -1
  %107 = and i32 %106, %104
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %20

109:                                              ; preds = %100, %81, %50, %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #22, !srcloc !39
  tail call void @arm_heavy_mb() #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @napi_gro_receive(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gem_ptp_rxstamp(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @macb_get_regs_len(ptr nocapture noundef readnone %0) #15 {
  ret i32 64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @macb_get_regs(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 1408
  %5 = getelementptr i8, ptr %0, i32 1416
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 %6(ptr noundef %4, i32 noundef 252) #22
  %8 = and i32 %7, 65533
  %9 = or i32 %8, 2
  %10 = getelementptr inbounds %struct.ethtool_regs, ptr %1, i32 0, i32 1
  store i32 %9, ptr %10, align 4
  %11 = getelementptr i8, ptr %0, i32 1448
  %12 = getelementptr i8, ptr %0, i32 1496
  %13 = load i32, ptr %12, align 8
  %14 = getelementptr i8, ptr %0, i32 1432
  %15 = load i32, ptr %14, align 8
  %16 = add i32 %15, -1
  %17 = and i32 %16, %13
  %18 = getelementptr i8, ptr %0, i32 1492
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %16, %19
  %21 = load ptr, ptr %5, align 8
  %22 = tail call i32 %21(ptr noundef %4, i32 noundef 0) #22
  store i32 %22, ptr %2, align 4
  %23 = getelementptr i8, ptr %0, i32 17020
  %24 = load ptr, ptr %5, align 8
  %25 = tail call i32 %24(ptr noundef %4, i32 noundef 4) #22
  %26 = getelementptr i32, ptr %2, i32 1
  store i32 %25, ptr %26, align 4
  %27 = load ptr, ptr %5, align 8
  %28 = tail call i32 %27(ptr noundef %4, i32 noundef 8) #22
  %29 = getelementptr i32, ptr %2, i32 2
  store i32 %28, ptr %29, align 4
  %30 = load ptr, ptr %5, align 8
  %31 = tail call i32 %30(ptr noundef %4, i32 noundef 20) #22
  %32 = getelementptr i32, ptr %2, i32 3
  store i32 %31, ptr %32, align 4
  %33 = load ptr, ptr %5, align 8
  %34 = tail call i32 %33(ptr noundef %4, i32 noundef 24) #22
  %35 = getelementptr i32, ptr %2, i32 4
  store i32 %34, ptr %35, align 4
  %36 = load ptr, ptr %5, align 8
  %37 = tail call i32 %36(ptr noundef %4, i32 noundef 28) #22
  %38 = getelementptr i32, ptr %2, i32 5
  store i32 %37, ptr %38, align 4
  %39 = load ptr, ptr %5, align 8
  %40 = tail call i32 %39(ptr noundef %4, i32 noundef 32) #22
  %41 = getelementptr i32, ptr %2, i32 6
  store i32 %40, ptr %41, align 4
  %42 = load ptr, ptr %5, align 8
  %43 = tail call i32 %42(ptr noundef %4, i32 noundef 48) #22
  %44 = getelementptr i32, ptr %2, i32 7
  store i32 %43, ptr %44, align 4
  %45 = getelementptr i32, ptr %2, i32 8
  store i32 %17, ptr %45, align 4
  %46 = getelementptr i32, ptr %2, i32 9
  store i32 %20, ptr %46, align 4
  %47 = load ptr, ptr %11, align 8
  %48 = getelementptr inbounds %struct.macb, ptr %47, i32 0, i32 6
  %49 = load i32, ptr %48, align 8
  %50 = getelementptr inbounds %struct.macb, ptr %47, i32 0, i32 35
  %51 = load i8, ptr %50, align 8
  %52 = add i8 %51, -1
  %53 = icmp ult i8 %52, 3
  br i1 %53, label %54, label %58

54:                                               ; preds = %3
  %55 = sext i8 %52 to i32
  %56 = getelementptr inbounds [3 x i32], ptr @switch.table.macb_get_regs.57, i32 0, i32 %55
  %57 = load i32, ptr %56, align 4
  br label %58

58:                                               ; preds = %54, %3
  %59 = phi i32 [ %57, %54 ], [ 8, %3 ]
  %60 = add i32 %49, -1
  %61 = and i32 %60, %17
  %62 = mul i32 %59, %61
  %63 = getelementptr i8, ptr %0, i32 1508
  %64 = load i32, ptr %63, align 4
  %65 = add i32 %64, %62
  %66 = getelementptr i32, ptr %2, i32 10
  store i32 %65, ptr %66, align 4
  %67 = load ptr, ptr %11, align 8
  %68 = getelementptr inbounds %struct.macb, ptr %67, i32 0, i32 6
  %69 = load i32, ptr %68, align 8
  %70 = getelementptr inbounds %struct.macb, ptr %67, i32 0, i32 35
  %71 = load i8, ptr %70, align 8
  %72 = add i8 %71, -1
  %73 = icmp ult i8 %72, 3
  br i1 %73, label %74, label %78

74:                                               ; preds = %58
  %75 = sext i8 %72 to i32
  %76 = getelementptr inbounds [3 x i32], ptr @switch.table.macb_get_regs.57, i32 0, i32 %75
  %77 = load i32, ptr %76, align 4
  br label %78

78:                                               ; preds = %74, %58
  %79 = phi i32 [ %77, %74 ], [ 8, %58 ]
  %80 = add i32 %69, -1
  %81 = and i32 %80, %20
  %82 = mul i32 %79, %81
  %83 = load i32, ptr %63, align 4
  %84 = add i32 %83, %82
  %85 = getelementptr i32, ptr %2, i32 11
  store i32 %84, ptr %85, align 4
  %86 = load i32, ptr %23, align 4
  %87 = and i32 %86, 16
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %78
  %90 = icmp slt i32 %86, 0
  %91 = load ptr, ptr %5, align 8
  %92 = select i1 %90, i32 12, i32 192
  %93 = tail call i32 %91(ptr noundef %4, i32 noundef %92) #22
  %94 = getelementptr i32, ptr %2, i32 12
  store i32 %93, ptr %94, align 4
  %95 = load i32, ptr %23, align 4
  br label %96

96:                                               ; preds = %89, %78
  %97 = phi i32 [ %95, %89 ], [ %86, %78 ]
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %96
  %100 = load ptr, ptr %5, align 8
  %101 = tail call i32 %100(ptr noundef %4, i32 noundef 16) #22
  %102 = getelementptr i32, ptr %2, i32 13
  store i32 %101, ptr %102, align 4
  br label %103

103:                                              ; preds = %99, %96
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @macb_get_wol(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 17808
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %20, label %7

7:                                                ; preds = %2
  %8 = getelementptr i8, ptr %0, i32 16976
  %9 = load ptr, ptr %8, align 8
  tail call void @phylink_ethtool_get_wol(ptr noundef %9, ptr noundef %1) #22
  %10 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %1, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = or i32 %11, 32
  store i32 %12, ptr %10, align 4
  %13 = load i32, ptr %3, align 8
  %14 = and i32 %13, 2
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %1, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = or i32 %18, 32
  store i32 %19, ptr %17, align 4
  br label %20

20:                                               ; preds = %16, %7, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @macb_set_wol(ptr nocapture noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 16976
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i32 @phylink_ethtool_set_wol(ptr noundef %4, ptr noundef %1) #22
  %6 = icmp eq i32 %5, -95
  br i1 %6, label %7, label %27

7:                                                ; preds = %2
  %8 = getelementptr i8, ptr %0, i32 17808
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %27, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %1, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, -33
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %12
  %18 = and i32 %9, -3
  %19 = lshr i32 %14, 4
  %20 = and i32 %19, 2
  %21 = or i32 %20, %18
  store i32 %21, ptr %8, align 8
  %22 = getelementptr i8, ptr %0, i32 16748
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.platform_device, ptr %23, i32 0, i32 3
  %25 = icmp ne i32 %20, 0
  %26 = tail call i32 @device_set_wakeup_enable(ptr noundef %24, i1 noundef zeroext %25) #22
  br label %27

27:                                               ; preds = %17, %12, %7, %2
  %28 = phi i32 [ 0, %17 ], [ %5, %2 ], [ -95, %12 ], [ -95, %7 ]
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @macb_get_ringparam(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) #16 {
  %5 = getelementptr inbounds %struct.ethtool_ringparam, ptr %1, i32 0, i32 1
  store i32 8192, ptr %5, align 4
  %6 = getelementptr inbounds %struct.ethtool_ringparam, ptr %1, i32 0, i32 4
  store i32 4096, ptr %6, align 4
  %7 = getelementptr i8, ptr %0, i32 1428
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ethtool_ringparam, ptr %1, i32 0, i32 5
  store i32 %8, ptr %9, align 4
  %10 = getelementptr i8, ptr %0, i32 1432
  %11 = load i32, ptr %10, align 8
  %12 = getelementptr inbounds %struct.ethtool_ringparam, ptr %1, i32 0, i32 8
  store i32 %11, ptr %12, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @macb_set_ringparam(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) #2 {
  %5 = getelementptr inbounds %struct.ethtool_ringparam, ptr %1, i32 0, i32 6
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %50

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ethtool_ringparam, ptr %1, i32 0, i32 7
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %50

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ethtool_ringparam, ptr %1, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @llvm.umax.i32(i32 %14, i32 64)
  %16 = tail call i32 @llvm.umin.i32(i32 %15, i32 8192)
  %17 = add nsw i32 %16, -1
  %18 = tail call i32 @llvm.ctlz.i32(i32 %17, i1 false) #22, !range !40
  %19 = sub nuw nsw i32 32, %18
  %20 = shl nuw i32 1, %19
  %21 = getelementptr inbounds %struct.ethtool_ringparam, ptr %1, i32 0, i32 8
  %22 = load i32, ptr %21, align 4
  %23 = tail call i32 @llvm.umax.i32(i32 %22, i32 64)
  %24 = tail call i32 @llvm.umin.i32(i32 %23, i32 4096)
  %25 = add nsw i32 %24, -1
  %26 = tail call i32 @llvm.ctlz.i32(i32 %25, i1 false) #22, !range !40
  %27 = sub nuw nsw i32 32, %26
  %28 = shl nuw i32 1, %27
  %29 = getelementptr i8, ptr %0, i32 1432
  %30 = load i32, ptr %29, align 8
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %12
  %33 = getelementptr i8, ptr %0, i32 1428
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %20, %34
  br i1 %35, label %50, label %36

36:                                               ; preds = %32, %12
  %37 = getelementptr i8, ptr %0, i32 16772
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.net_device, ptr %38, i32 0, i32 6
  %40 = load volatile i32, ptr %39, align 4
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %36
  %44 = tail call i32 @macb_close(ptr noundef %38)
  %45 = getelementptr i8, ptr %0, i32 1428
  store i32 %20, ptr %45, align 4
  store i32 %28, ptr %29, align 8
  %46 = load ptr, ptr %37, align 4
  %47 = tail call i32 @macb_open(ptr noundef %46)
  br label %50

48:                                               ; preds = %36
  %49 = getelementptr i8, ptr %0, i32 1428
  store i32 %20, ptr %49, align 4
  store i32 %28, ptr %29, align 8
  br label %50

50:                                               ; preds = %48, %43, %32, %8, %4
  %51 = phi i32 [ -22, %8 ], [ -22, %4 ], [ 0, %32 ], [ 0, %48 ], [ 0, %43 ]
  ret i32 %51
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gem_get_ethtool_strings(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #17 {
  %4 = alloca [32 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %4, i8 0, i32 32, i1 false), !annotation !8
  %5 = icmp eq i32 %1, 1
  br i1 %5, label %10, label %35

6:                                                ; preds = %10
  %7 = getelementptr i8, ptr %0, i32 1436
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %35, label %17

10:                                               ; preds = %10, %3
  %11 = phi i32 [ %14, %10 ], [ 0, %3 ]
  %12 = phi ptr [ %15, %10 ], [ %2, %3 ]
  %13 = getelementptr [43 x %struct.gem_statistic], ptr @gem_statistics, i32 0, i32 %11
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(32) %12, ptr noundef align 4 dereferenceable(32) %13, i32 32, i1 false)
  %14 = add nuw nsw i32 %11, 1
  %15 = getelementptr i8, ptr %12, i32 32
  %16 = icmp eq i32 %14, 43
  br i1 %16, label %6, label %10

17:                                               ; preds = %17, %6
  %18 = phi i32 [ %32, %17 ], [ 0, %6 ]
  %19 = phi ptr [ %31, %17 ], [ %15, %6 ]
  %20 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 32, ptr noundef nonnull @.str.35, i32 noundef %18, ptr noundef nonnull @queue_statistics)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(32) %19, ptr noundef nonnull align 1 dereferenceable(32) %4, i32 32, i1 false)
  %21 = getelementptr i8, ptr %19, i32 32
  %22 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 32, ptr noundef nonnull @.str.35, i32 noundef %18, ptr noundef getelementptr inbounds ([6 x %struct.gem_statistic], ptr @queue_statistics, i32 0, i32 1))
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(32) %21, ptr noundef nonnull align 1 dereferenceable(32) %4, i32 32, i1 false)
  %23 = getelementptr i8, ptr %19, i32 64
  %24 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 32, ptr noundef nonnull @.str.35, i32 noundef %18, ptr noundef getelementptr inbounds ([6 x %struct.gem_statistic], ptr @queue_statistics, i32 0, i32 2))
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(32) %23, ptr noundef nonnull align 1 dereferenceable(32) %4, i32 32, i1 false)
  %25 = getelementptr i8, ptr %19, i32 96
  %26 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 32, ptr noundef nonnull @.str.35, i32 noundef %18, ptr noundef getelementptr inbounds ([6 x %struct.gem_statistic], ptr @queue_statistics, i32 0, i32 3))
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(32) %25, ptr noundef nonnull align 1 dereferenceable(32) %4, i32 32, i1 false)
  %27 = getelementptr i8, ptr %19, i32 128
  %28 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 32, ptr noundef nonnull @.str.35, i32 noundef %18, ptr noundef getelementptr inbounds ([6 x %struct.gem_statistic], ptr @queue_statistics, i32 0, i32 4))
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(32) %27, ptr noundef nonnull align 1 dereferenceable(32) %4, i32 32, i1 false)
  %29 = getelementptr i8, ptr %19, i32 160
  %30 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 32, ptr noundef nonnull @.str.35, i32 noundef %18, ptr noundef getelementptr inbounds ([6 x %struct.gem_statistic], ptr @queue_statistics, i32 0, i32 5))
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(32) %29, ptr noundef nonnull align 1 dereferenceable(32) %4, i32 32, i1 false)
  %31 = getelementptr i8, ptr %19, i32 192
  %32 = add nuw i32 %18, 1
  %33 = load i32, ptr %7, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %17, label %35

35:                                               ; preds = %17, %6, %3
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gem_get_ethtool_stats(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 1408
  tail call fastcc void @gem_update_stats(ptr noundef %4)
  %5 = getelementptr i8, ptr %0, i32 17072
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(728) %2, ptr noundef align 8 dereferenceable(728) %5, i32 728, i1 false)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @gem_get_sset_count(ptr nocapture noundef readonly %0, i32 noundef %1) #18 {
  %3 = icmp eq i32 %1, 1
  br i1 %3, label %4, label %9

4:                                                ; preds = %2
  %5 = getelementptr i8, ptr %0, i32 1436
  %6 = load i32, ptr %5, align 4
  %7 = mul i32 %6, 6
  %8 = add i32 %7, 43
  br label %9

9:                                                ; preds = %4, %2
  %10 = phi i32 [ %8, %4 ], [ -95, %2 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gem_get_rxnfc(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = load i32, ptr %1, align 8
  switch i32 %4, label %54 [
    i32 45, label %5
    i32 46, label %10
    i32 47, label %14
    i32 48, label %29
  ]

5:                                                ; preds = %3
  %6 = getelementptr i8, ptr %0, i32 1436
  %7 = load i32, ptr %6, align 4
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %1, i32 0, i32 2
  store i64 %8, ptr %9, align 8
  br label %55

10:                                               ; preds = %3
  %11 = getelementptr i8, ptr %0, i32 17968
  %12 = load i32, ptr %11, align 8
  %13 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %1, i32 0, i32 4
  store i32 %12, ptr %13, align 8
  br label %55

14:                                               ; preds = %3
  %15 = getelementptr i8, ptr %0, i32 17960
  %16 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %1, i32 0, i32 3, i32 6
  br label %17

17:                                               ; preds = %21, %14
  %18 = phi ptr [ %15, %14 ], [ %19, %21 ]
  %19 = load ptr, ptr %18, align 8
  %20 = icmp eq ptr %19, %15
  br i1 %20, label %55, label %21

21:                                               ; preds = %17
  %22 = getelementptr i8, ptr %19, i32 -8
  %23 = load i32, ptr %22, align 8
  %24 = load i32, ptr %16, align 8
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %17

26:                                               ; preds = %21
  %27 = getelementptr i8, ptr %19, i32 -168
  %28 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %1, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(168) %28, ptr noundef align 8 dereferenceable(168) %27, i32 168, i1 false) #22
  br label %55

29:                                               ; preds = %3
  %30 = getelementptr i8, ptr %0, i32 17960
  %31 = load ptr, ptr %30, align 8
  %32 = icmp eq ptr %31, %30
  br i1 %32, label %47, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %1, i32 0, i32 4
  br label %35

35:                                               ; preds = %40, %33
  %36 = phi ptr [ %31, %33 ], [ %45, %40 ]
  %37 = phi i32 [ 0, %33 ], [ %44, %40 ]
  %38 = load i32, ptr %34, align 8
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %55, label %40

40:                                               ; preds = %35
  %41 = getelementptr i8, ptr %36, i32 -8
  %42 = load i32, ptr %41, align 8
  %43 = getelementptr i32, ptr %2, i32 %37
  store i32 %42, ptr %43, align 4
  %44 = add i32 %37, 1
  %45 = load ptr, ptr %36, align 8
  %46 = icmp eq ptr %45, %30
  br i1 %46, label %47, label %35

47:                                               ; preds = %40, %29
  %48 = phi i32 [ 0, %29 ], [ %44, %40 ]
  %49 = getelementptr i8, ptr %0, i32 17976
  %50 = load i32, ptr %49, align 8
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %1, i32 0, i32 2
  store i64 %51, ptr %52, align 8
  %53 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %1, i32 0, i32 4
  store i32 %48, ptr %53, align 8
  br label %55

54:                                               ; preds = %3
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.36, i32 noundef %4) #23
  br label %55

55:                                               ; preds = %54, %47, %35, %26, %17, %10, %5
  %56 = phi i32 [ -95, %54 ], [ 0, %10 ], [ 0, %5 ], [ 0, %26 ], [ 0, %47 ], [ -22, %17 ], [ -90, %35 ]
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gem_set_rxnfc(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 1408
  %4 = load i32, ptr %1, align 8
  switch i32 %4, label %83 [
    i32 50, label %5
    i32 49, label %55
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %1, i32 0, i32 3, i32 6
  %7 = load i32, ptr %6, align 8
  %8 = getelementptr i8, ptr %0, i32 17976
  %9 = load i32, ptr %8, align 8
  %10 = icmp ult i32 %7, %9
  br i1 %10, label %11, label %84

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %1, i32 0, i32 3, i32 5
  %13 = load i64, ptr %12, align 8
  %14 = getelementptr i8, ptr %0, i32 1436
  %15 = load i32, ptr %14, align 4
  %16 = zext i32 %15 to i64
  %17 = icmp ult i64 %13, %16
  br i1 %17, label %18, label %84

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %1, i32 0, i32 3
  %20 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %21 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3264, i32 noundef 176) #26
  %22 = icmp eq ptr %21, null
  br i1 %22, label %84, label %23

23:                                               ; preds = %18
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(168) %21, ptr noundef align 8 dereferenceable(168) %19, i32 168, i1 false) #22
  %24 = getelementptr i8, ptr %0, i32 17972
  %25 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %24) #22
  %26 = getelementptr i8, ptr %0, i32 17960
  %27 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %21, i32 0, i32 6
  br label %28

28:                                               ; preds = %42, %23
  %29 = phi ptr [ %26, %23 ], [ %30, %42 ]
  %30 = load ptr, ptr %29, align 8
  %31 = icmp eq ptr %30, %26
  br i1 %31, label %46, label %32

32:                                               ; preds = %28
  %33 = getelementptr i8, ptr %30, i32 -8
  %34 = load i32, ptr %33, align 8
  %35 = load i32, ptr %27, align 8
  %36 = icmp ugt i32 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.ethtool_rx_fs_item, ptr %21, i32 0, i32 1
  %39 = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  store ptr %38, ptr %39, align 4
  store ptr %30, ptr %38, align 8
  %41 = getelementptr inbounds %struct.ethtool_rx_fs_item, ptr %21, i32 0, i32 1, i32 1
  store ptr %40, ptr %41, align 4
  store volatile ptr %38, ptr %40, align 4
  br label %51

42:                                               ; preds = %32
  %43 = load i32, ptr %6, align 8
  %44 = icmp eq i32 %34, %43
  br i1 %44, label %45, label %28

45:                                               ; preds = %42
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.37, i32 noundef %34) #23
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %24, i32 noundef %25) #22
  tail call void @kfree(ptr noundef nonnull %21) #22
  br label %84

46:                                               ; preds = %28
  %47 = getelementptr inbounds %struct.ethtool_rx_fs_item, ptr %21, i32 0, i32 1
  %48 = getelementptr i8, ptr %0, i32 17964
  %49 = load ptr, ptr %48, align 4
  store ptr %47, ptr %48, align 4
  store ptr %26, ptr %47, align 8
  %50 = getelementptr inbounds %struct.ethtool_rx_fs_item, ptr %21, i32 0, i32 1, i32 1
  store ptr %49, ptr %50, align 4
  store volatile ptr %47, ptr %49, align 4
  br label %51

51:                                               ; preds = %46, %37
  tail call fastcc void @gem_prog_cmp_regs(ptr noundef %3, ptr noundef %19) #22
  %52 = getelementptr i8, ptr %0, i32 17968
  %53 = load i32, ptr %52, align 8
  %54 = add i32 %53, 1
  store i32 %54, ptr %52, align 8
  tail call fastcc void @gem_enable_flow_filters(ptr noundef %3, i1 noundef zeroext true) #22
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %24, i32 noundef %25) #22
  br label %84

55:                                               ; preds = %2
  %56 = getelementptr i8, ptr %0, i32 17972
  %57 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %56) #22
  %58 = getelementptr i8, ptr %0, i32 17960
  %59 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %1, i32 0, i32 3, i32 6
  br label %60

60:                                               ; preds = %64, %55
  %61 = phi ptr [ %58, %55 ], [ %62, %64 ]
  %62 = load ptr, ptr %61, align 8
  %63 = icmp eq ptr %62, %58
  br i1 %63, label %82, label %64

64:                                               ; preds = %60
  %65 = getelementptr i8, ptr %62, i32 -8
  %66 = load i32, ptr %65, align 8
  %67 = load i32, ptr %59, align 8
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %60

69:                                               ; preds = %64
  %70 = getelementptr i8, ptr %62, i32 -168
  %71 = getelementptr i8, ptr %0, i32 1420
  %72 = load ptr, ptr %71, align 4
  %73 = shl i32 %66, 2
  %74 = add i32 %73, 1344
  tail call void %72(ptr noundef %3, i32 noundef %74, i32 noundef 0) #22
  %75 = getelementptr inbounds %struct.list_head, ptr %62, i32 0, i32 1
  %76 = load ptr, ptr %75, align 4
  %77 = load ptr, ptr %62, align 4
  %78 = getelementptr inbounds %struct.list_head, ptr %77, i32 0, i32 1
  store ptr %76, ptr %78, align 4
  store volatile ptr %77, ptr %76, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %62, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %75, align 4
  %79 = getelementptr i8, ptr %0, i32 17968
  %80 = load i32, ptr %79, align 8
  %81 = add i32 %80, -1
  store i32 %81, ptr %79, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %56, i32 noundef %57) #22
  tail call void @kfree(ptr noundef %70) #22
  br label %84

82:                                               ; preds = %60
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %56, i32 noundef %57) #22
  br label %84

83:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.36, i32 noundef %4) #23
  br label %84

84:                                               ; preds = %83, %82, %69, %51, %45, %18, %11, %5
  %85 = phi i32 [ -95, %83 ], [ -22, %11 ], [ -22, %5 ], [ 0, %51 ], [ -16, %45 ], [ -12, %18 ], [ 0, %69 ], [ -22, %82 ]
  ret i32 %85
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @macb_get_ts_info(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 17812
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.macb_ptp_info, ptr %4, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 %8(ptr noundef %0, ptr noundef %1) #22
  br label %12

10:                                               ; preds = %2
  %11 = tail call i32 @ethtool_op_get_ts_info(ptr noundef %0, ptr noundef %1) #22
  br label %12

12:                                               ; preds = %10, %6
  %13 = phi i32 [ %9, %6 ], [ %11, %10 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @macb_get_link_ksettings(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 16976
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i32 @phylink_ethtool_ksettings_get(ptr noundef %4, ptr noundef %1) #22
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @macb_set_link_ksettings(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 16976
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i32 @phylink_ethtool_ksettings_set(ptr noundef %4, ptr noundef %1) #22
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_ethtool_get_wol(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_ethtool_set_wol(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_set_wakeup_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #19

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @gem_prog_cmp_regs(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %1, i32 0, i32 6
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr inbounds %struct.macb, ptr %0, i32 0, i32 25
  %6 = load i32, ptr %5, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %92

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %1, i32 0, i32 1
  %10 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %1, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %22

13:                                               ; preds = %8
  %14 = load i32, ptr %9, align 4
  %15 = getelementptr inbounds %struct.macb, ptr %0, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = and i32 %4, 65535
  %18 = mul nuw nsw i32 %17, 24
  %19 = add nuw nsw i32 %18, 1792
  tail call void %16(ptr noundef %0, i32 noundef %19, i32 noundef %14) #22
  %20 = load ptr, ptr %15, align 4
  %21 = add nuw nsw i32 %18, 1796
  tail call void %20(ptr noundef %0, i32 noundef %21, i32 noundef 652) #22
  br label %22

22:                                               ; preds = %13, %8
  %23 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %1, i32 0, i32 3, i32 0, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %36

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %1, i32 0, i32 1, i32 0, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.macb, ptr %0, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = and i32 %4, 65535
  %32 = mul nuw nsw i32 %31, 24
  %33 = add nuw nsw i32 %32, 1800
  tail call void %30(ptr noundef %0, i32 noundef %33, i32 noundef %28) #22
  %34 = load ptr, ptr %29, align 4
  %35 = add nuw nsw i32 %32, 1804
  tail call void %34(ptr noundef %0, i32 noundef %35, i32 noundef 656) #22
  br label %36

36:                                               ; preds = %26, %22
  %37 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %1, i32 0, i32 3, i32 0, i32 0, i32 2
  %38 = load i16, ptr %37, align 4
  %39 = icmp eq i16 %38, -1
  %40 = getelementptr inbounds %struct.ethtool_tcpip4_spec, ptr %10, i32 0, i32 3
  %41 = load i16, ptr %40, align 2
  %42 = icmp eq i16 %41, -1
  br i1 %39, label %44, label %43

43:                                               ; preds = %36
  br i1 %42, label %48, label %67

44:                                               ; preds = %36
  %45 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %1, i32 0, i32 1, i32 0, i32 0, i32 2
  %46 = load i16, ptr %45, align 4
  %47 = zext i16 %46 to i32
  br i1 %42, label %48, label %54

48:                                               ; preds = %44, %43
  %49 = phi i32 [ %47, %44 ], [ 65535, %43 ]
  %50 = phi i32 [ 768, %44 ], [ 258, %43 ]
  %51 = getelementptr inbounds %struct.ethtool_tcpip4_spec, ptr %9, i32 0, i32 3
  %52 = load i16, ptr %51, align 2
  %53 = zext i16 %52 to i32
  br label %54

54:                                               ; preds = %48, %44
  %55 = phi i32 [ %47, %44 ], [ %53, %48 ]
  %56 = phi i32 [ 65535, %44 ], [ %49, %48 ]
  %57 = phi i32 [ 256, %44 ], [ %50, %48 ]
  %58 = shl nuw i32 %55, 16
  %59 = or i32 %58, %56
  %60 = getelementptr inbounds %struct.macb, ptr %0, i32 0, i32 3
  %61 = load ptr, ptr %60, align 4
  %62 = and i32 %4, 65535
  %63 = mul nuw nsw i32 %62, 24
  %64 = add nuw nsw i32 %63, 1808
  tail call void %61(ptr noundef %0, i32 noundef %64, i32 noundef %59) #22
  %65 = load ptr, ptr %60, align 4
  %66 = add nuw nsw i32 %63, 1812
  tail call void %65(ptr noundef %0, i32 noundef %66, i32 noundef %57) #22
  br label %67

67:                                               ; preds = %54, %43
  %68 = phi i1 [ true, %54 ], [ false, %43 ]
  %69 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %1, i32 0, i32 5
  %70 = load i64, ptr %69, align 8
  %71 = trunc i64 %70 to i32
  %72 = and i32 %71, 15
  %73 = mul i32 %4, 24576
  %74 = and i32 %73, 253952
  %75 = select i1 %12, i32 %74, i32 0
  %76 = mul i32 %4, 1572864
  %77 = add i32 %76, 524288
  %78 = and i32 %77, 16252928
  %79 = select i1 %25, i32 %78, i32 0
  %80 = or i32 %79, %75
  %81 = or i32 %80, %72
  %82 = mul i32 %4, 100663296
  %83 = add i32 %82, 67108864
  %84 = and i32 %83, 1040187392
  %85 = select i1 %68, i32 %84, i32 0
  %86 = or i32 %81, %85
  %87 = getelementptr inbounds %struct.macb, ptr %0, i32 0, i32 3
  %88 = load ptr, ptr %87, align 4
  %89 = shl i32 %4, 2
  %90 = and i32 %89, 262140
  %91 = add nuw nsw i32 %90, 1344
  tail call void %88(ptr noundef %0, i32 noundef %91, i32 noundef %86) #22
  br label %92

92:                                               ; preds = %67, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_ts_info(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_ethtool_ksettings_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_ethtool_ksettings_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @macb_init_rx_ring(ptr nocapture noundef %0) unnamed_addr #20 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.macb, ptr %2, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load i32, ptr null, align 2147483648
  br label %40

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.macb_queue, ptr %0, i32 0, i32 18
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.macb_queue, ptr %0, i32 0, i32 21
  %12 = getelementptr inbounds %struct.macb, ptr %2, i32 0, i32 4
  br label %13

13:                                               ; preds = %34, %8
  %14 = phi i32 [ %4, %8 ], [ %39, %34 ]
  %15 = phi ptr [ %2, %8 ], [ %37, %34 ]
  %16 = phi i32 [ 0, %8 ], [ %31, %34 ]
  %17 = phi i32 [ %10, %8 ], [ %36, %34 ]
  %18 = add i32 %14, -1
  %19 = and i32 %18, %16
  %20 = getelementptr inbounds %struct.macb, ptr %15, i32 0, i32 35
  %21 = load i8, ptr %20, align 8
  switch i8 %21, label %26 [
    i8 1, label %22
    i8 2, label %22
    i8 3, label %24
  ]

22:                                               ; preds = %13, %13
  %23 = shl i32 %19, 1
  br label %26

24:                                               ; preds = %13
  %25 = mul i32 %19, 3
  br label %26

26:                                               ; preds = %24, %22, %13
  %27 = phi i32 [ %19, %13 ], [ %25, %24 ], [ %23, %22 ]
  %28 = load ptr, ptr %11, align 8
  %29 = getelementptr %struct.macb_dma_desc, ptr %28, i32 %27
  store i32 %17, ptr %29, align 4
  %30 = getelementptr %struct.macb_dma_desc, ptr %28, i32 %27, i32 1
  store i32 0, ptr %30, align 4
  %31 = add nuw i32 %16, 1
  %32 = load i32, ptr %3, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %26
  %35 = load i32, ptr %12, align 8
  %36 = add i32 %35, %17
  %37 = load ptr, ptr %0, align 8
  %38 = getelementptr inbounds %struct.macb, ptr %37, i32 0, i32 5
  %39 = load i32, ptr %38, align 4
  br label %13

40:                                               ; preds = %26, %6
  %41 = phi i32 [ %7, %6 ], [ %17, %26 ]
  %42 = phi ptr [ null, %6 ], [ %29, %26 ]
  %43 = or i32 %41, 2
  store i32 %43, ptr %42, align 4
  %44 = getelementptr inbounds %struct.macb_queue, ptr %0, i32 0, i32 19
  store i32 0, ptr %44, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gem_ptp_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gem_ptp_remove(ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @gem_get_ptp_max_adj() #15 {
  ret i32 64000000
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gem_get_tsu_rate(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.macb, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %5 = tail call ptr @devm_clk_get(ptr noundef %4, ptr noundef nonnull @.str.12) #22
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.macb, ptr %0, i32 0, i32 12
  %9 = load ptr, ptr %8, align 8
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %14, label %11

11:                                               ; preds = %7, %1
  %12 = phi ptr [ %5, %1 ], [ %9, %7 ]
  %13 = tail call i32 @clk_get_rate(ptr noundef %12) #22
  br label %14

14:                                               ; preds = %11, %7
  %15 = phi i32 [ -524, %7 ], [ %13, %11 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gem_get_ts_info(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 17816
  %4 = load i8, ptr %3, align 8
  %5 = and i8 %4, 2
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = tail call i32 @ethtool_op_get_ts_info(ptr noundef %0, ptr noundef %1) #22
  br label %21

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.ethtool_ts_info, ptr %1, i32 0, i32 1
  store i32 95, ptr %10, align 4
  %11 = getelementptr inbounds %struct.ethtool_ts_info, ptr %1, i32 0, i32 3
  store i32 7, ptr %11, align 4
  %12 = getelementptr inbounds %struct.ethtool_ts_info, ptr %1, i32 0, i32 5
  store i32 3, ptr %12, align 4
  %13 = getelementptr i8, ptr %0, i32 17828
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %9
  %17 = tail call i32 @ptp_clock_index(ptr noundef nonnull %14) #22
  br label %18

18:                                               ; preds = %16, %9
  %19 = phi i32 [ %17, %16 ], [ -1, %9 ]
  %20 = getelementptr inbounds %struct.ethtool_ts_info, ptr %1, i32 0, i32 2
  store i32 %19, ptr %20, align 4
  br label %21

21:                                               ; preds = %18, %7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gem_get_hwtst(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gem_set_hwtst(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_clock_index(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @macb_mdio_read(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.mii_bus, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.macb, ptr %5, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  %9 = tail call i32 @__pm_runtime_resume(ptr noundef %8, i32 noundef 4) #22
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %3
  %12 = load ptr, ptr %6, align 4
  %13 = getelementptr inbounds %struct.platform_device, ptr %12, i32 0, i32 3, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !41
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #22, !srcloc !9
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 0, i32 -1, ptr elementtype(i32) %13) #22, !srcloc !42
  %15 = extractvalue { i32, i32, i32 } %14, 0
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %112, label %17

17:                                               ; preds = %11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !43
  br label %112

18:                                               ; preds = %3
  %19 = tail call i64 @ktime_get() #22
  %20 = add i64 %19, 1000000000
  %21 = getelementptr inbounds %struct.macb, ptr %5, i32 0, i32 2
  %22 = load ptr, ptr %21, align 8
  %23 = tail call i32 %22(ptr noundef %5, i32 noundef 8) #22
  %24 = and i32 %23, 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %29, %18
  %27 = tail call i64 @ktime_get() #22
  %28 = icmp sgt i64 %27, %20
  br i1 %28, label %34, label %29

29:                                               ; preds = %26
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #22
  %30 = load ptr, ptr %21, align 8
  %31 = tail call i32 %30(ptr noundef %5, i32 noundef 8) #22
  %32 = and i32 %31, 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %26, label %39

34:                                               ; preds = %26
  %35 = load ptr, ptr %21, align 8
  %36 = tail call i32 %35(ptr noundef %5, i32 noundef 8) #22
  %37 = and i32 %36, 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %104, label %39

39:                                               ; preds = %34, %29, %18
  %40 = and i32 %2, 1073741824
  %41 = icmp eq i32 %40, 0
  %42 = getelementptr inbounds %struct.macb, ptr %5, i32 0, i32 3
  %43 = load ptr, ptr %42, align 4
  %44 = shl i32 %1, 23
  %45 = and i32 %44, 260046848
  br i1 %41, label %75, label %46

46:                                               ; preds = %39
  %47 = shl i32 %2, 2
  %48 = and i32 %47, 8126464
  %49 = or i32 %48, %45
  %50 = and i32 %2, 65535
  %51 = or i32 %50, %49
  %52 = or i32 %51, 131072
  tail call void %43(ptr noundef %5, i32 noundef 52, i32 noundef %52) #22
  %53 = tail call i64 @ktime_get() #22
  %54 = add i64 %53, 1000000000
  %55 = load ptr, ptr %21, align 8
  %56 = tail call i32 %55(ptr noundef %5, i32 noundef 8) #22
  %57 = and i32 %56, 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %62, %46
  %60 = tail call i64 @ktime_get() #22
  %61 = icmp sgt i64 %60, %54
  br i1 %61, label %67, label %62

62:                                               ; preds = %59
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #22
  %63 = load ptr, ptr %21, align 8
  %64 = tail call i32 %63(ptr noundef %5, i32 noundef 8) #22
  %65 = and i32 %64, 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %59, label %72

67:                                               ; preds = %59
  %68 = load ptr, ptr %21, align 8
  %69 = tail call i32 %68(ptr noundef %5, i32 noundef 8) #22
  %70 = and i32 %69, 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %104, label %72

72:                                               ; preds = %67, %62, %46
  %73 = load ptr, ptr %42, align 4
  %74 = or i32 %49, 805437440
  tail call void %73(ptr noundef %5, i32 noundef 52, i32 noundef %74) #22
  br label %80

75:                                               ; preds = %39
  %76 = shl i32 %2, 18
  %77 = and i32 %76, 8126464
  %78 = or i32 %45, %77
  %79 = or i32 %78, 1610743808
  tail call void %43(ptr noundef %5, i32 noundef 52, i32 noundef %79) #22
  br label %80

80:                                               ; preds = %75, %72
  %81 = tail call i64 @ktime_get() #22
  %82 = add i64 %81, 1000000000
  %83 = load ptr, ptr %21, align 8
  %84 = tail call i32 %83(ptr noundef %5, i32 noundef 8) #22
  %85 = and i32 %84, 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %100

87:                                               ; preds = %90, %80
  %88 = tail call i64 @ktime_get() #22
  %89 = icmp sgt i64 %88, %82
  br i1 %89, label %95, label %90

90:                                               ; preds = %87
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #22
  %91 = load ptr, ptr %21, align 8
  %92 = tail call i32 %91(ptr noundef %5, i32 noundef 8) #22
  %93 = and i32 %92, 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %87, label %100

95:                                               ; preds = %87
  %96 = load ptr, ptr %21, align 8
  %97 = tail call i32 %96(ptr noundef %5, i32 noundef 8) #22
  %98 = and i32 %97, 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %95, %90, %80
  %101 = load ptr, ptr %21, align 8
  %102 = tail call i32 %101(ptr noundef %5, i32 noundef 52) #22
  %103 = and i32 %102, 65535
  br label %104

104:                                              ; preds = %100, %95, %67, %34
  %105 = phi i32 [ %103, %100 ], [ -110, %34 ], [ -110, %67 ], [ -110, %95 ]
  %106 = load ptr, ptr %6, align 4
  %107 = tail call i64 @ktime_get_mono_fast_ns() #22
  %108 = getelementptr inbounds %struct.platform_device, ptr %106, i32 0, i32 3, i32 11, i32 22
  store volatile i64 %107, ptr %108, align 8
  %109 = load ptr, ptr %6, align 4
  %110 = getelementptr inbounds %struct.platform_device, ptr %109, i32 0, i32 3
  %111 = tail call i32 @__pm_runtime_suspend(ptr noundef %110, i32 noundef 13) #22
  br label %112

112:                                              ; preds = %104, %17, %11
  %113 = phi i32 [ %105, %104 ], [ %9, %11 ], [ %9, %17 ]
  ret i32 %113
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @macb_mdio_write(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i16 noundef zeroext %3) #2 {
  %5 = getelementptr inbounds %struct.mii_bus, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.macb, ptr %6, i32 0, i32 11
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 3
  %10 = tail call i32 @__pm_runtime_resume(ptr noundef %9, i32 noundef 4) #22
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %4
  %13 = load ptr, ptr %7, align 4
  %14 = getelementptr inbounds %struct.platform_device, ptr %13, i32 0, i32 3, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !41
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %14) #22, !srcloc !9
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %14, ptr %14, i32 0, i32 -1, ptr elementtype(i32) %14) #22, !srcloc !42
  %16 = extractvalue { i32, i32, i32 } %15, 0
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %114, label %18

18:                                               ; preds = %12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !43
  br label %114

19:                                               ; preds = %4
  %20 = tail call i64 @ktime_get() #22
  %21 = add i64 %20, 1000000000
  %22 = getelementptr inbounds %struct.macb, ptr %6, i32 0, i32 2
  %23 = load ptr, ptr %22, align 8
  %24 = tail call i32 %23(ptr noundef %6, i32 noundef 8) #22
  %25 = and i32 %24, 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %30, %19
  %28 = tail call i64 @ktime_get() #22
  %29 = icmp sgt i64 %28, %21
  br i1 %29, label %35, label %30

30:                                               ; preds = %27
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #22
  %31 = load ptr, ptr %22, align 8
  %32 = tail call i32 %31(ptr noundef %6, i32 noundef 8) #22
  %33 = and i32 %32, 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %27, label %40

35:                                               ; preds = %27
  %36 = load ptr, ptr %22, align 8
  %37 = tail call i32 %36(ptr noundef %6, i32 noundef 8) #22
  %38 = and i32 %37, 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %106, label %40

40:                                               ; preds = %35, %30, %19
  %41 = and i32 %2, 1073741824
  %42 = icmp eq i32 %41, 0
  %43 = getelementptr inbounds %struct.macb, ptr %6, i32 0, i32 3
  %44 = load ptr, ptr %43, align 4
  %45 = shl i32 %1, 23
  %46 = and i32 %45, 260046848
  br i1 %42, label %78, label %47

47:                                               ; preds = %40
  %48 = shl i32 %2, 2
  %49 = and i32 %48, 8126464
  %50 = or i32 %49, %46
  %51 = and i32 %2, 65535
  %52 = or i32 %51, %50
  %53 = or i32 %52, 131072
  tail call void %44(ptr noundef %6, i32 noundef 52, i32 noundef %53) #22
  %54 = tail call i64 @ktime_get() #22
  %55 = add i64 %54, 1000000000
  %56 = load ptr, ptr %22, align 8
  %57 = tail call i32 %56(ptr noundef %6, i32 noundef 8) #22
  %58 = and i32 %57, 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %63, %47
  %61 = tail call i64 @ktime_get() #22
  %62 = icmp sgt i64 %61, %55
  br i1 %62, label %68, label %63

63:                                               ; preds = %60
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #22
  %64 = load ptr, ptr %22, align 8
  %65 = tail call i32 %64(ptr noundef %6, i32 noundef 8) #22
  %66 = and i32 %65, 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %60, label %73

68:                                               ; preds = %60
  %69 = load ptr, ptr %22, align 8
  %70 = tail call i32 %69(ptr noundef %6, i32 noundef 8) #22
  %71 = and i32 %70, 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %106, label %73

73:                                               ; preds = %68, %63, %47
  %74 = load ptr, ptr %43, align 4
  %75 = zext i16 %3 to i32
  %76 = or i32 %50, %75
  %77 = or i32 %76, 268566528
  tail call void %74(ptr noundef %6, i32 noundef 52, i32 noundef %77) #22
  br label %85

78:                                               ; preds = %40
  %79 = shl i32 %2, 18
  %80 = and i32 %79, 8126464
  %81 = zext i16 %3 to i32
  %82 = or i32 %46, %80
  %83 = or i32 %82, %81
  %84 = or i32 %83, 1342308352
  tail call void %44(ptr noundef %6, i32 noundef 52, i32 noundef %84) #22
  br label %85

85:                                               ; preds = %78, %73
  %86 = tail call i64 @ktime_get() #22
  %87 = add i64 %86, 1000000000
  %88 = load ptr, ptr %22, align 8
  %89 = tail call i32 %88(ptr noundef %6, i32 noundef 8) #22
  %90 = and i32 %89, 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %106

92:                                               ; preds = %95, %85
  %93 = tail call i64 @ktime_get() #22
  %94 = icmp sgt i64 %93, %87
  br i1 %94, label %100, label %95

95:                                               ; preds = %92
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #22
  %96 = load ptr, ptr %22, align 8
  %97 = tail call i32 %96(ptr noundef %6, i32 noundef 8) #22
  %98 = and i32 %97, 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %92, label %106

100:                                              ; preds = %92
  %101 = load ptr, ptr %22, align 8
  %102 = tail call i32 %101(ptr noundef %6, i32 noundef 8) #22
  %103 = and i32 %102, 4
  %104 = icmp eq i32 %103, 0
  %105 = select i1 %104, i32 -110, i32 0
  br label %106

106:                                              ; preds = %100, %95, %85, %68, %35
  %107 = phi i32 [ -110, %35 ], [ -110, %68 ], [ 0, %85 ], [ %105, %100 ], [ 0, %95 ]
  %108 = load ptr, ptr %7, align 4
  %109 = tail call i64 @ktime_get_mono_fast_ns() #22
  %110 = getelementptr inbounds %struct.platform_device, ptr %108, i32 0, i32 3, i32 11, i32 22
  store volatile i64 %109, ptr %110, align 8
  %111 = load ptr, ptr %7, align 4
  %112 = getelementptr inbounds %struct.platform_device, ptr %111, i32 0, i32 3
  %113 = tail call i32 @__pm_runtime_suspend(ptr noundef %112, i32 noundef 13) #22
  br label %114

114:                                              ; preds = %106, %18, %12
  %115 = phi i32 [ %107, %106 ], [ %10, %12 ], [ %10, %18 ]
  ret i32 %115
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdiobus_alloc_size(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_mdiobus_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_phy_is_fixed_link(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mdiobus_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_mdiobus_child_is_phy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @macb_get_pcs_fixed_state(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #2 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr i8, ptr %3, i32 720
  %5 = getelementptr i8, ptr %3, i32 728
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 %6(ptr noundef %4, i32 noundef 8) #22
  %8 = getelementptr inbounds %struct.phylink_link_state, ptr %1, i32 0, i32 6
  %9 = trunc i32 %7 to i8
  %10 = and i8 %9, 1
  %11 = load i8, ptr %8, align 4
  %12 = and i8 %11, -2
  %13 = or i8 %12, %10
  store i8 %13, ptr %8, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @phylink_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @macb_pcs_get_state(ptr nocapture noundef readnone %0, ptr nocapture noundef %1) #16 {
  %3 = getelementptr inbounds %struct.phylink_link_state, ptr %1, i32 0, i32 6
  %4 = load i8, ptr %3, align 4
  %5 = and i8 %4, -2
  store i8 %5, ptr %3, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @macb_pcs_config(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3, i1 noundef zeroext %4) #15 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @macb_pcs_an_restart(ptr nocapture noundef %0) #15 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @macb_usx_pcs_get_state(ptr noundef %0, ptr nocapture noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 -15596
  %4 = getelementptr inbounds %struct.phylink_link_state, ptr %1, i32 0, i32 3
  store i32 10000, ptr %4, align 4
  %5 = getelementptr inbounds %struct.phylink_link_state, ptr %1, i32 0, i32 4
  store i32 1, ptr %5, align 4
  %6 = getelementptr inbounds %struct.phylink_link_state, ptr %1, i32 0, i32 6
  %7 = load i8, ptr %6, align 4
  %8 = or i8 %7, 4
  store i8 %8, ptr %6, align 4
  %9 = getelementptr i8, ptr %0, i32 -15588
  %10 = load ptr, ptr %9, align 8
  %11 = tail call i32 %10(ptr noundef %3, i32 noundef 2696) #22
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = load i8, ptr %6, align 4
  %15 = and i8 %14, -2
  %16 = or i8 %15, %13
  store i8 %16, ptr %6, align 4
  %17 = load ptr, ptr %9, align 8
  %18 = tail call i32 %17(ptr noundef %3, i32 noundef 4) #22
  %19 = and i32 %18, 8192
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.phylink_link_state, ptr %1, i32 0, i32 5
  store i32 1, ptr %22, align 4
  br label %23

23:                                               ; preds = %21, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @macb_usx_pcs_config(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3, i1 noundef zeroext %4) #2 {
  %6 = getelementptr i8, ptr %0, i32 -15596
  %7 = getelementptr i8, ptr %0, i32 -15584
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %0, i32 -15588
  %10 = load ptr, ptr %9, align 8
  %11 = tail call i32 %10(ptr noundef %6, i32 noundef 2688) #22
  %12 = or i32 %11, 1
  tail call void %8(ptr noundef %6, i32 noundef 2688, i32 noundef %12) #22
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @macb_usx_pcs_link_up(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #2 {
  %6 = getelementptr i8, ptr %0, i32 -15596
  %7 = getelementptr i8, ptr %0, i32 -15588
  %8 = load ptr, ptr %7, align 8
  %9 = tail call i32 %8(ptr noundef %6, i32 noundef 2688) #22
  %10 = and i32 %9, -127747
  %11 = or i32 %10, 69634
  %12 = getelementptr i8, ptr %0, i32 -15584
  %13 = load ptr, ptr %12, align 4
  tail call void %13(ptr noundef %6, i32 noundef 2688, i32 noundef %11) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_generic_validate(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @macb_mac_select_pcs(ptr nocapture noundef readonly %0, i32 noundef %1) #18 {
  %3 = load ptr, ptr %0, align 4
  switch i32 %1, label %8 [
    i32 26, label %4
    i32 4, label %6
  ]

4:                                                ; preds = %2
  %5 = getelementptr i8, ptr %3, i32 16316
  br label %8

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %3, i32 16324
  br label %8

8:                                                ; preds = %6, %4, %2
  %9 = phi ptr [ %5, %4 ], [ %7, %6 ], [ null, %2 ]
  ret ptr %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @macb_mac_config(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) #2 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr i8, ptr %4, i32 720
  %6 = getelementptr i8, ptr %4, i32 16056
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #22
  %8 = getelementptr i8, ptr %4, i32 16332
  %9 = getelementptr i8, ptr %4, i32 728
  %10 = load ptr, ptr %9, align 8
  %11 = tail call i32 %10(ptr noundef %5, i32 noundef 4) #22
  %12 = getelementptr i8, ptr %4, i32 728
  %13 = load ptr, ptr %12, align 8
  %14 = tail call i32 %13(ptr noundef %5, i32 noundef 0) #22
  %15 = load i32, ptr %8, align 4
  %16 = and i32 %15, 134217728
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.phylink_link_state, ptr %2, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 7
  %22 = or i32 %11, 8192
  %23 = select i1 %21, i32 %22, i32 %11
  br label %45

24:                                               ; preds = %3
  %25 = icmp slt i32 %15, 0
  br i1 %25, label %26, label %45

26:                                               ; preds = %24
  %27 = and i32 %11, -134219777
  %28 = and i32 %14, 2147483647
  %29 = getelementptr inbounds %struct.phylink_link_state, ptr %2, i32 0, i32 2
  %30 = load i32, ptr %29, align 4
  switch i32 %30, label %36 [
    i32 4, label %31
    i32 26, label %33
  ]

31:                                               ; preds = %26
  %32 = or i32 %11, 134219776
  br label %45

33:                                               ; preds = %26
  %34 = or i32 %27, 2048
  %35 = or i32 %14, -2147483648
  br label %45

36:                                               ; preds = %26
  %37 = and i32 %15, 512
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %36
  %40 = getelementptr i8, ptr %4, i32 16340
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 2
  %43 = or i32 %28, 268435456
  %44 = select i1 %42, i32 %43, i32 %28
  br label %45

45:                                               ; preds = %39, %36, %33, %31, %24, %18
  %46 = phi i32 [ %32, %31 ], [ %34, %33 ], [ %27, %36 ], [ %11, %24 ], [ %23, %18 ], [ %27, %39 ]
  %47 = phi i32 [ %28, %31 ], [ %35, %33 ], [ %28, %36 ], [ %14, %24 ], [ %14, %18 ], [ %44, %39 ]
  %48 = icmp eq i32 %11, %46
  br i1 %48, label %52, label %49

49:                                               ; preds = %45
  %50 = getelementptr i8, ptr %4, i32 732
  %51 = load ptr, ptr %50, align 4
  tail call void %51(ptr noundef %5, i32 noundef 4, i32 noundef %46) #22
  br label %52

52:                                               ; preds = %49, %45
  %53 = icmp eq i32 %14, %47
  br i1 %53, label %57, label %54

54:                                               ; preds = %52
  %55 = getelementptr i8, ptr %4, i32 732
  %56 = load ptr, ptr %55, align 4
  tail call void %56(ptr noundef %5, i32 noundef 0, i32 noundef %47) #22
  br label %57

57:                                               ; preds = %54, %52
  %58 = load i32, ptr %8, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %76

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.phylink_link_state, ptr %2, i32 0, i32 2
  %62 = load i32, ptr %61, align 4
  %63 = icmp eq i32 %62, 4
  br i1 %63, label %64, label %76

64:                                               ; preds = %60
  %65 = getelementptr i8, ptr %4, i32 728
  %66 = load ptr, ptr %65, align 8
  %67 = tail call i32 %66(ptr noundef %5, i32 noundef 512) #22
  %68 = icmp eq i32 %1, 1
  %69 = and i32 %67, -4097
  %70 = select i1 %68, i32 0, i32 4096
  %71 = or i32 %69, %70
  %72 = icmp eq i32 %67, %71
  br i1 %72, label %76, label %73

73:                                               ; preds = %64
  %74 = getelementptr i8, ptr %4, i32 732
  %75 = load ptr, ptr %74, align 4
  tail call void %75(ptr noundef %5, i32 noundef 512, i32 noundef %71) #22
  br label %76

76:                                               ; preds = %73, %64, %60, %57
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @macb_mac_link_down(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr i8, ptr %4, i32 16332
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 134217728
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %30

9:                                                ; preds = %3
  %10 = getelementptr i8, ptr %4, i32 748
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %30, label %13

13:                                               ; preds = %9
  %14 = getelementptr i8, ptr %4, i32 760
  %15 = getelementptr i8, ptr %4, i32 17324
  br label %16

16:                                               ; preds = %16, %13
  %17 = phi i32 [ 0, %13 ], [ %26, %16 ]
  %18 = phi ptr [ %14, %13 ], [ %27, %16 ]
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.macb, ptr %19, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.macb_queue, ptr %18, i32 0, i32 4
  %23 = load i32, ptr %22, align 8
  %24 = load i32, ptr %15, align 4
  %25 = or i32 %24, 2296
  tail call void %21(ptr noundef %19, i32 noundef %23, i32 noundef %25) #22
  %26 = add nuw i32 %17, 1
  %27 = getelementptr %struct.macb_queue, ptr %18, i32 1
  %28 = load i32, ptr %10, align 4
  %29 = icmp ult i32 %26, %28
  br i1 %29, label %16, label %30

30:                                               ; preds = %16, %9, %3
  %31 = getelementptr i8, ptr %4, i32 720
  %32 = getelementptr i8, ptr %4, i32 -688
  %33 = getelementptr i8, ptr %4, i32 728
  %34 = load ptr, ptr %33, align 8
  %35 = tail call i32 %34(ptr noundef %31, i32 noundef 0) #22
  %36 = and i32 %35, -13
  %37 = getelementptr i8, ptr %4, i32 732
  %38 = load ptr, ptr %37, align 4
  tail call void %38(ptr noundef %31, i32 noundef 0, i32 noundef %36) #22
  tail call void @netif_tx_stop_all_queues(ptr noundef %32) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @macb_mac_link_up(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i1 noundef zeroext %6, i1 noundef zeroext %7) #2 {
  %9 = load ptr, ptr %0, align 4
  %10 = getelementptr i8, ptr %9, i32 720
  %11 = getelementptr i8, ptr %9, i32 16056
  %12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %11) #22
  %13 = getelementptr i8, ptr %9, i32 16332
  %14 = getelementptr i8, ptr %9, i32 728
  %15 = load ptr, ptr %14, align 8
  %16 = tail call i32 %15(ptr noundef %10, i32 noundef 4) #22
  %17 = and i32 %16, -4
  %18 = icmp eq i32 %4, 100
  %19 = zext i1 %18 to i32
  %20 = or i32 %17, %19
  %21 = icmp eq i32 %5, 0
  %22 = or i32 %20, 2
  %23 = select i1 %21, i32 %20, i32 %22
  %24 = load i32, ptr %13, align 4
  %25 = and i32 %24, 134217728
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %120

27:                                               ; preds = %8
  %28 = and i32 %23, -8193
  %29 = icmp slt i32 %24, 0
  %30 = and i32 %23, -9217
  %31 = icmp eq i32 %4, 1000
  %32 = or i32 %30, 1024
  %33 = select i1 %31, i32 %32, i32 %30
  %34 = select i1 %29, i32 %33, i32 %28
  %35 = or i32 %34, 8192
  %36 = select i1 %7, i32 %35, i32 %34
  %37 = getelementptr i8, ptr %9, i32 16072
  %38 = load ptr, ptr %37, align 8
  %39 = icmp ne ptr %38, null
  %40 = and i32 %24, 67108864
  %41 = icmp eq i32 %40, 0
  %42 = select i1 %39, i1 %41, i1 false
  br i1 %42, label %43, label %72

43:                                               ; preds = %27
  %44 = getelementptr i8, ptr %9, i32 16340
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 2
  br i1 %46, label %72, label %47

47:                                               ; preds = %43
  switch i32 %4, label %72 [
    i32 10, label %50
    i32 100, label %48
    i32 1000, label %49
  ]

48:                                               ; preds = %47
  br label %50

49:                                               ; preds = %47
  br label %50

50:                                               ; preds = %49, %48, %47
  %51 = phi i32 [ 125000000, %49 ], [ 25000000, %48 ], [ 2500000, %47 ]
  %52 = tail call i32 @clk_round_rate(ptr noundef nonnull %38, i32 noundef %51) #22
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %72, label %54

54:                                               ; preds = %50
  %55 = sub nsw i32 %52, %51
  %56 = tail call i32 @llvm.abs.i32(i32 %55, i1 true) #22
  %57 = udiv i32 %51, 100000
  %58 = add nsw i32 %57, -1
  %59 = add nuw nsw i32 %58, %56
  %60 = udiv i32 %59, %57
  %61 = icmp ugt i32 %60, 5
  br i1 %61, label %62, label %65

62:                                               ; preds = %54
  %63 = getelementptr i8, ptr %9, i32 16084
  %64 = load ptr, ptr %63, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %64, ptr noundef nonnull @.str.45, i32 noundef %51) #23
  br label %65

65:                                               ; preds = %62, %54
  %66 = load ptr, ptr %37, align 8
  %67 = tail call i32 @clk_set_rate(ptr noundef %66, i32 noundef %52) #22
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %65
  %70 = getelementptr i8, ptr %9, i32 16084
  %71 = load ptr, ptr %70, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %71, ptr noundef nonnull @.str.46) #23
  br label %72

72:                                               ; preds = %69, %65, %50, %47, %43, %27
  %73 = getelementptr i8, ptr %9, i32 16276
  %74 = load ptr, ptr %73, align 4
  tail call void %74(ptr noundef %10) #22
  %75 = getelementptr i8, ptr %9, i32 748
  %76 = load i32, ptr %75, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %120, label %78

78:                                               ; preds = %72
  %79 = getelementptr i8, ptr %9, i32 760
  br label %80

80:                                               ; preds = %80, %78
  %81 = phi i32 [ %97, %80 ], [ 0, %78 ]
  %82 = phi ptr [ %98, %80 ], [ %79, %78 ]
  %83 = load ptr, ptr %82, align 8
  %84 = getelementptr inbounds %struct.macb, ptr %83, i32 0, i32 3
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr inbounds %struct.macb_queue, ptr %82, i32 0, i32 9
  %87 = load i32, ptr %86, align 4
  %88 = getelementptr inbounds %struct.macb_queue, ptr %82, i32 0, i32 17
  %89 = load i32, ptr %88, align 8
  tail call void %85(ptr noundef %83, i32 noundef %87, i32 noundef %89) #22
  %90 = load ptr, ptr %82, align 8
  %91 = getelementptr inbounds %struct.macb, ptr %90, i32 0, i32 3
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr inbounds %struct.macb_queue, ptr %82, i32 0, i32 6
  %94 = load i32, ptr %93, align 8
  %95 = getelementptr inbounds %struct.macb_queue, ptr %82, i32 0, i32 15
  %96 = load i32, ptr %95, align 4
  tail call void %92(ptr noundef %90, i32 noundef %94, i32 noundef %96) #22
  %97 = add nuw i32 %81, 1
  %98 = getelementptr %struct.macb_queue, ptr %82, i32 1
  %99 = load i32, ptr %75, align 4
  %100 = icmp ult i32 %97, %99
  br i1 %100, label %80, label %101

101:                                              ; preds = %80
  %102 = icmp eq i32 %99, 0
  br i1 %102, label %120, label %103

103:                                              ; preds = %101
  %104 = getelementptr i8, ptr %9, i32 760
  %105 = getelementptr i8, ptr %9, i32 17324
  br label %106

106:                                              ; preds = %106, %103
  %107 = phi i32 [ 0, %103 ], [ %116, %106 ]
  %108 = phi ptr [ %104, %103 ], [ %117, %106 ]
  %109 = load ptr, ptr %108, align 8
  %110 = getelementptr inbounds %struct.macb, ptr %109, i32 0, i32 3
  %111 = load ptr, ptr %110, align 4
  %112 = getelementptr inbounds %struct.macb_queue, ptr %108, i32 0, i32 3
  %113 = load i32, ptr %112, align 4
  %114 = load i32, ptr %105, align 4
  %115 = or i32 %114, 2296
  tail call void %111(ptr noundef %109, i32 noundef %113, i32 noundef %115) #22
  %116 = add nuw i32 %107, 1
  %117 = getelementptr %struct.macb_queue, ptr %108, i32 1
  %118 = load i32, ptr %75, align 4
  %119 = icmp ult i32 %116, %118
  br i1 %119, label %106, label %120

120:                                              ; preds = %106, %101, %72, %8
  %121 = phi i32 [ %23, %8 ], [ %36, %72 ], [ %36, %101 ], [ %36, %106 ]
  %122 = getelementptr i8, ptr %9, i32 732
  %123 = load ptr, ptr %122, align 4
  tail call void %123(ptr noundef %10, i32 noundef 4, i32 noundef %121) #22
  %124 = getelementptr i8, ptr %9, i32 16340
  %125 = load i32, ptr %124, align 4
  %126 = icmp eq i32 %125, 26
  br i1 %126, label %127, label %135

127:                                              ; preds = %120
  %128 = getelementptr i8, ptr %9, i32 732
  %129 = load ptr, ptr %128, align 4
  %130 = getelementptr i8, ptr %9, i32 728
  %131 = load ptr, ptr %130, align 8
  %132 = tail call i32 %131(ptr noundef %10, i32 noundef 80) #22
  %133 = and i32 %132, -8
  %134 = or i32 %133, 4
  tail call void %129(ptr noundef %10, i32 noundef 80, i32 noundef %134) #22
  br label %135

135:                                              ; preds = %127, %120
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %11, i32 noundef %12) #22
  %136 = getelementptr i8, ptr %9, i32 732
  %137 = load ptr, ptr %136, align 4
  %138 = getelementptr i8, ptr %9, i32 728
  %139 = load ptr, ptr %138, align 8
  %140 = tail call i32 %139(ptr noundef %10, i32 noundef 0) #22
  %141 = or i32 %140, 12
  tail call void %137(ptr noundef %10, i32 noundef 0, i32 noundef %141) #22
  %142 = getelementptr i8, ptr %9, i32 -108
  %143 = load i32, ptr %142, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %154, label %145

145:                                              ; preds = %135
  %146 = getelementptr i8, ptr %9, i32 -112
  br label %147

147:                                              ; preds = %147, %145
  %148 = phi i32 [ 0, %145 ], [ %151, %147 ]
  %149 = load ptr, ptr %146, align 64
  %150 = getelementptr %struct.netdev_queue, ptr %149, i32 %148
  tail call void @netif_tx_wake_queue(ptr noundef %150) #22
  %151 = add nuw i32 %148, 1
  %152 = load i32, ptr %142, align 4
  %153 = icmp ult i32 %151, %152
  br i1 %153, label %147, label %154

154:                                              ; preds = %147, %135
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91ether_clk_init(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) #2 {
  store ptr null, ptr %2, align 4
  store ptr null, ptr %3, align 4
  store ptr null, ptr %4, align 4
  store ptr null, ptr %5, align 4
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %8 = tail call ptr @devm_clk_get(ptr noundef %7, ptr noundef nonnull @.str.47) #22
  store ptr %8, ptr %1, align 4
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = ptrtoint ptr %8 to i32
  br label %21

12:                                               ; preds = %6
  %13 = tail call i32 @clk_prepare(ptr noundef %8) #22
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = tail call i32 @clk_enable(ptr noundef %8) #22
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  tail call void @clk_unprepare(ptr noundef %8) #22
  br label %19

19:                                               ; preds = %18, %12
  %20 = phi i32 [ %16, %18 ], [ %13, %12 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.13, i32 noundef %20) #23
  br label %21

21:                                               ; preds = %19, %15, %10
  %22 = phi i32 [ %11, %10 ], [ %20, %19 ], [ 0, %15 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91ether_init(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 1408
  %5 = getelementptr i8, ptr %3, i32 1448
  store ptr %4, ptr %5, align 8
  %6 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 16
  store ptr @at91ether_netdev_ops, ptr %6, align 8
  %7 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 42
  store ptr @macb_ethtool_ops, ptr %7, align 8
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %9 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 59
  %10 = load i32, ptr %9, align 8
  %11 = tail call i32 @devm_request_threaded_irq(ptr noundef %8, i32 noundef %10, ptr noundef nonnull @at91ether_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %3, ptr noundef %3) #22
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = getelementptr i8, ptr %3, i32 1420
  %15 = load ptr, ptr %14, align 4
  tail call void %15(ptr noundef %4, i32 noundef 0, i32 noundef 0) #22
  %16 = load ptr, ptr %14, align 4
  tail call void %16(ptr noundef %4, i32 noundef 4, i32 noundef 2304) #22
  br label %17

17:                                               ; preds = %13, %1
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91ether_interrupt(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr i8, ptr %1, i32 1408
  %4 = getelementptr i8, ptr %1, i32 1416
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 %5(ptr noundef %3, i32 noundef 36) #22
  %7 = and i32 %6, 2
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %100, label %9

9:                                                ; preds = %2
  %10 = getelementptr i8, ptr %1, i32 1448
  %11 = getelementptr i8, ptr %1, i32 1536
  %12 = load i32, ptr %11, align 8
  %13 = load ptr, ptr %10, align 8
  %14 = getelementptr inbounds %struct.macb, ptr %13, i32 0, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, -1
  %17 = and i32 %16, %12
  %18 = getelementptr inbounds %struct.macb, ptr %13, i32 0, i32 35
  %19 = load i8, ptr %18, align 8
  switch i8 %19, label %24 [
    i8 1, label %20
    i8 2, label %20
    i8 3, label %22
  ]

20:                                               ; preds = %9, %9
  %21 = shl i32 %17, 1
  br label %24

22:                                               ; preds = %9
  %23 = mul i32 %17, 3
  br label %24

24:                                               ; preds = %22, %20, %9
  %25 = phi i32 [ %17, %9 ], [ %23, %22 ], [ %21, %20 ]
  %26 = getelementptr i8, ptr %1, i32 1544
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr %struct.macb_dma_desc, ptr %27, i32 %25
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %100, label %32

32:                                               ; preds = %24
  %33 = getelementptr i8, ptr %1, i32 1552
  %34 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36
  %35 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 2
  %36 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 6
  %37 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 8
  br label %38

38:                                               ; preds = %93, %32
  %39 = phi i32 [ %12, %32 ], [ %81, %93 ]
  %40 = phi ptr [ %28, %32 ], [ %96, %93 ]
  %41 = load ptr, ptr %33, align 8
  %42 = getelementptr inbounds %struct.macb_dma_desc, ptr %40, i32 0, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = and i32 %43, 4095
  %45 = add nuw nsw i32 %44, 2
  %46 = tail call ptr @__netdev_alloc_skb(ptr noundef %1, i32 noundef %45, i32 noundef 2592) #22
  %47 = icmp eq ptr %46, null
  br i1 %47, label %65, label %48

48:                                               ; preds = %38
  %49 = mul i32 %39, 1536
  %50 = getelementptr i8, ptr %41, i32 %49
  %51 = getelementptr inbounds %struct.sk_buff, ptr %46, i32 0, i32 17
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr i8, ptr %52, i32 2
  store ptr %53, ptr %51, align 4
  %54 = getelementptr inbounds %struct.sk_buff, ptr %46, i32 0, i32 14
  %55 = load ptr, ptr %54, align 8
  %56 = getelementptr i8, ptr %55, i32 2
  store ptr %56, ptr %54, align 8
  %57 = tail call ptr @skb_put(ptr noundef nonnull %46, i32 noundef %44) #22
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %57, ptr align 1 %50, i32 %44, i1 false) #22
  %58 = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %46, ptr noundef %1) #22
  %59 = getelementptr inbounds %struct.sk_buff, ptr %46, i32 0, i32 13, i32 0, i32 16
  store i16 %58, ptr %59, align 8
  %60 = load i32, ptr %34, align 8
  %61 = add i32 %60, 1
  store i32 %61, ptr %34, align 8
  %62 = load i32, ptr %35, align 8
  %63 = add i32 %62, %44
  store i32 %63, ptr %35, align 8
  %64 = tail call i32 @netif_rx(ptr noundef nonnull %46) #22
  br label %68

65:                                               ; preds = %38
  %66 = load i32, ptr %36, align 8
  %67 = add i32 %66, 1
  store i32 %67, ptr %36, align 8
  br label %68

68:                                               ; preds = %65, %48
  %69 = load i32, ptr %42, align 4
  %70 = and i32 %69, 1073741824
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %68
  %73 = load i32, ptr %37, align 8
  %74 = add i32 %73, 1
  store i32 %74, ptr %37, align 8
  br label %75

75:                                               ; preds = %72, %68
  %76 = load i32, ptr %40, align 4
  %77 = and i32 %76, -2
  store i32 %77, ptr %40, align 4
  %78 = load i32, ptr %11, align 8
  %79 = icmp eq i32 %78, 8
  %80 = add i32 %78, 1
  %81 = select i1 %79, i32 0, i32 %80
  store i32 %81, ptr %11, align 8
  %82 = load ptr, ptr %10, align 8
  %83 = getelementptr inbounds %struct.macb, ptr %82, i32 0, i32 5
  %84 = load i32, ptr %83, align 4
  %85 = add i32 %84, -1
  %86 = and i32 %85, %81
  %87 = getelementptr inbounds %struct.macb, ptr %82, i32 0, i32 35
  %88 = load i8, ptr %87, align 8
  switch i8 %88, label %93 [
    i8 1, label %89
    i8 2, label %89
    i8 3, label %91
  ]

89:                                               ; preds = %75, %75
  %90 = shl i32 %86, 1
  br label %93

91:                                               ; preds = %75
  %92 = mul i32 %86, 3
  br label %93

93:                                               ; preds = %91, %89, %75
  %94 = phi i32 [ %86, %75 ], [ %92, %91 ], [ %90, %89 ]
  %95 = load ptr, ptr %26, align 8
  %96 = getelementptr %struct.macb_dma_desc, ptr %95, i32 %94
  %97 = load i32, ptr %96, align 4
  %98 = and i32 %97, 1
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %38

100:                                              ; preds = %93, %24, %2
  %101 = and i32 %6, 128
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %132, label %103

103:                                              ; preds = %100
  %104 = and i32 %6, 48
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %103
  %107 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 5
  %108 = load i32, ptr %107, align 4
  %109 = add i32 %108, 1
  store i32 %109, ptr %107, align 4
  br label %110

110:                                              ; preds = %106, %103
  %111 = getelementptr i8, ptr %1, i32 17032
  %112 = load ptr, ptr %111, align 8
  %113 = icmp eq ptr %112, null
  br i1 %113, label %129, label %114

114:                                              ; preds = %110
  tail call void @__dev_kfree_skb_irq(ptr noundef nonnull %112, i32 noundef 0) #22
  store ptr null, ptr %111, align 8
  %115 = getelementptr i8, ptr %1, i32 16748
  %116 = load ptr, ptr %115, align 4
  %117 = getelementptr inbounds %struct.platform_device, ptr %116, i32 0, i32 3
  %118 = getelementptr i8, ptr %1, i32 17036
  %119 = load i32, ptr %118, align 4
  %120 = getelementptr i8, ptr %1, i32 17040
  %121 = load i32, ptr %120, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %117, i32 noundef %119, i32 noundef %121, i32 noundef 1, i32 noundef 0) #22
  %122 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 1
  %123 = load i32, ptr %122, align 4
  %124 = add i32 %123, 1
  store i32 %124, ptr %122, align 4
  %125 = load i32, ptr %120, align 8
  %126 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 3
  %127 = load i32, ptr %126, align 4
  %128 = add i32 %127, %125
  store i32 %128, ptr %126, align 4
  br label %129

129:                                              ; preds = %114, %110
  %130 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 87
  %131 = load ptr, ptr %130, align 64
  tail call void @netif_tx_wake_queue(ptr noundef %131) #22
  br label %132

132:                                              ; preds = %129, %100
  %133 = and i32 %6, 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %143, label %135

135:                                              ; preds = %132
  %136 = load ptr, ptr %4, align 8
  %137 = tail call i32 %136(ptr noundef %3, i32 noundef 0) #22
  %138 = getelementptr i8, ptr %1, i32 1420
  %139 = load ptr, ptr %138, align 4
  %140 = and i32 %137, -5
  tail call void %139(ptr noundef %3, i32 noundef 0, i32 noundef %140) #22
  tail call void asm sideeffect "dsb st", "~{memory}"() #22, !srcloc !44
  tail call void @arm_heavy_mb() #22
  %141 = load ptr, ptr %138, align 4
  %142 = or i32 %137, 4
  tail call void %141(ptr noundef %3, i32 noundef 0, i32 noundef %142) #22
  br label %143

143:                                              ; preds = %135, %132
  %144 = and i32 %6, 1024
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %143
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.50) #23
  br label %147

147:                                              ; preds = %146, %143
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91ether_open(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 1408
  %3 = getelementptr i8, ptr %0, i32 16748
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  %6 = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #22
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load ptr, ptr %3, align 4
  %10 = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !41
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #22, !srcloc !9
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 0, i32 -1, ptr elementtype(i32) %10) #22, !srcloc !42
  %12 = extractvalue { i32, i32, i32 } %11, 0
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %265, label %14

14:                                               ; preds = %8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !43
  br label %265

15:                                               ; preds = %1
  %16 = getelementptr i8, ptr %0, i32 1416
  %17 = load ptr, ptr %16, align 8
  %18 = tail call i32 %17(ptr noundef %2, i32 noundef 0) #22
  %19 = getelementptr i8, ptr %0, i32 1420
  %20 = load ptr, ptr %19, align 4
  %21 = or i32 %18, 32
  tail call void %20(ptr noundef %2, i32 noundef 0, i32 noundef %21) #22
  %22 = getelementptr i8, ptr %0, i32 16772
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 72
  %25 = load ptr, ptr %24, align 32
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr i8, ptr %0, i32 17020
  %28 = load i32, ptr %27, align 4
  %29 = icmp slt i32 %28, 0
  %30 = load ptr, ptr %19, align 4
  %31 = select i1 %29, i32 136, i32 152
  tail call void %30(ptr noundef %2, i32 noundef %31, i32 noundef %26) #22
  %32 = load ptr, ptr %22, align 4
  %33 = getelementptr inbounds %struct.net_device, ptr %32, i32 0, i32 72
  %34 = load ptr, ptr %33, align 32
  %35 = getelementptr i8, ptr %34, i32 4
  %36 = load i16, ptr %35, align 2
  %37 = load i32, ptr %27, align 4
  %38 = icmp slt i32 %37, 0
  %39 = select i1 %38, i32 140, i32 156
  %40 = load ptr, ptr %19, align 4
  %41 = zext i16 %36 to i32
  tail call void %40(ptr noundef %2, i32 noundef %39, i32 noundef %41) #22
  %42 = load i32, ptr %27, align 4
  %43 = icmp slt i32 %42, 0
  %44 = select i1 %43, i32 144, i32 160
  %45 = load ptr, ptr %19, align 4
  tail call void %45(ptr noundef %2, i32 noundef %44, i32 noundef 0) #22
  %46 = load i32, ptr %27, align 4
  %47 = icmp slt i32 %46, 0
  %48 = select i1 %47, i32 148, i32 164
  %49 = load ptr, ptr %19, align 4
  tail call void %49(ptr noundef %2, i32 noundef %48, i32 noundef 0) #22
  %50 = load i32, ptr %27, align 4
  %51 = icmp slt i32 %50, 0
  %52 = select i1 %51, i32 152, i32 168
  %53 = load ptr, ptr %19, align 4
  tail call void %53(ptr noundef %2, i32 noundef %52, i32 noundef 0) #22
  %54 = load i32, ptr %27, align 4
  %55 = icmp slt i32 %54, 0
  %56 = select i1 %55, i32 156, i32 172
  %57 = load ptr, ptr %19, align 4
  tail call void %57(ptr noundef %2, i32 noundef %56, i32 noundef 0) #22
  %58 = load i32, ptr %27, align 4
  %59 = icmp slt i32 %58, 0
  %60 = select i1 %59, i32 160, i32 176
  %61 = load ptr, ptr %19, align 4
  tail call void %61(ptr noundef %2, i32 noundef %60, i32 noundef 0) #22
  %62 = load i32, ptr %27, align 4
  %63 = icmp slt i32 %62, 0
  %64 = select i1 %63, i32 164, i32 180
  %65 = load ptr, ptr %19, align 4
  tail call void %65(ptr noundef %2, i32 noundef %64, i32 noundef 0) #22
  %66 = getelementptr i8, ptr %0, i32 1448
  %67 = load ptr, ptr %3, align 4
  %68 = getelementptr inbounds %struct.platform_device, ptr %67, i32 0, i32 3
  %69 = getelementptr i8, ptr %0, i32 17816
  %70 = load i8, ptr %69, align 8
  %71 = add i8 %70, -1
  %72 = icmp ult i8 %71, 3
  br i1 %72, label %73, label %77

73:                                               ; preds = %15
  %74 = sext i8 %71 to i32
  %75 = getelementptr inbounds [3 x i32], ptr @switch.table.at91ether_stop, i32 0, i32 %74
  %76 = load i32, ptr %75, align 4
  br label %77

77:                                               ; preds = %73, %15
  %78 = phi i32 [ %76, %73 ], [ 72, %15 ]
  %79 = getelementptr i8, ptr %0, i32 1528
  %80 = tail call ptr @dma_alloc_attrs(ptr noundef %68, i32 noundef %78, ptr noundef %79, i32 noundef 3264, i32 noundef 0) #22
  %81 = getelementptr i8, ptr %0, i32 1544
  store ptr %80, ptr %81, align 8
  %82 = icmp eq ptr %80, null
  br i1 %82, label %260, label %83

83:                                               ; preds = %77
  %84 = load ptr, ptr %3, align 4
  %85 = getelementptr inbounds %struct.platform_device, ptr %84, i32 0, i32 3
  %86 = getelementptr i8, ptr %0, i32 1532
  %87 = tail call ptr @dma_alloc_attrs(ptr noundef %85, i32 noundef 13824, ptr noundef %86, i32 noundef 3264, i32 noundef 0) #22
  %88 = getelementptr i8, ptr %0, i32 1552
  store ptr %87, ptr %88, align 8
  %89 = icmp eq ptr %87, null
  br i1 %89, label %90, label %104

90:                                               ; preds = %83
  %91 = load ptr, ptr %3, align 4
  %92 = getelementptr inbounds %struct.platform_device, ptr %91, i32 0, i32 3
  %93 = load i8, ptr %69, align 8
  %94 = add i8 %93, -1
  %95 = icmp ult i8 %94, 3
  br i1 %95, label %96, label %100

96:                                               ; preds = %90
  %97 = sext i8 %94 to i32
  %98 = getelementptr inbounds [3 x i32], ptr @switch.table.at91ether_stop, i32 0, i32 %97
  %99 = load i32, ptr %98, align 4
  br label %100

100:                                              ; preds = %96, %90
  %101 = phi i32 [ %99, %96 ], [ 72, %90 ]
  %102 = load ptr, ptr %81, align 8
  %103 = load i32, ptr %79, align 8
  tail call void @dma_free_attrs(ptr noundef %92, i32 noundef %101, ptr noundef %102, i32 noundef %103, i32 noundef 0) #22
  store ptr null, ptr %81, align 8
  br label %260

104:                                              ; preds = %83
  %105 = load i32, ptr %86, align 4
  %106 = load ptr, ptr %81, align 8
  store i32 %105, ptr %106, align 4
  %107 = getelementptr %struct.macb_dma_desc, ptr %106, i32 0, i32 1
  store i32 0, ptr %107, align 4
  %108 = add i32 %105, 1536
  %109 = load ptr, ptr %66, align 8
  %110 = getelementptr inbounds %struct.macb, ptr %109, i32 0, i32 5
  %111 = load i32, ptr %110, align 4
  %112 = and i32 %111, 1
  %113 = xor i32 %112, 1
  %114 = getelementptr inbounds %struct.macb, ptr %109, i32 0, i32 35
  %115 = load i8, ptr %114, align 8
  switch i8 %115, label %120 [
    i8 1, label %118
    i8 2, label %118
    i8 3, label %116
  ]

116:                                              ; preds = %104
  %117 = mul nuw nsw i32 %113, 3
  br label %120

118:                                              ; preds = %104, %104
  %119 = shl nuw nsw i32 %113, 1
  br label %120

120:                                              ; preds = %118, %116, %104
  %121 = phi i32 [ %113, %104 ], [ %117, %116 ], [ %119, %118 ]
  %122 = load ptr, ptr %81, align 8
  %123 = getelementptr %struct.macb_dma_desc, ptr %122, i32 %121
  store i32 %108, ptr %123, align 4
  %124 = getelementptr %struct.macb_dma_desc, ptr %122, i32 %121, i32 1
  store i32 0, ptr %124, align 4
  %125 = add i32 %105, 3072
  %126 = load ptr, ptr %66, align 8
  %127 = getelementptr inbounds %struct.macb, ptr %126, i32 0, i32 5
  %128 = load i32, ptr %127, align 4
  %129 = add i32 %128, 3
  %130 = and i32 %129, 2
  %131 = getelementptr inbounds %struct.macb, ptr %126, i32 0, i32 35
  %132 = load i8, ptr %131, align 8
  switch i8 %132, label %137 [
    i8 1, label %135
    i8 2, label %135
    i8 3, label %133
  ]

133:                                              ; preds = %120
  %134 = mul nuw nsw i32 %130, 3
  br label %137

135:                                              ; preds = %120, %120
  %136 = shl nuw nsw i32 %130, 1
  br label %137

137:                                              ; preds = %135, %133, %120
  %138 = phi i32 [ %130, %120 ], [ %134, %133 ], [ %136, %135 ]
  %139 = load ptr, ptr %81, align 8
  %140 = getelementptr %struct.macb_dma_desc, ptr %139, i32 %138
  store i32 %125, ptr %140, align 4
  %141 = getelementptr %struct.macb_dma_desc, ptr %139, i32 %138, i32 1
  store i32 0, ptr %141, align 4
  %142 = add i32 %105, 4608
  %143 = load ptr, ptr %66, align 8
  %144 = getelementptr inbounds %struct.macb, ptr %143, i32 0, i32 5
  %145 = load i32, ptr %144, align 4
  %146 = add i32 %145, 3
  %147 = and i32 %146, 3
  %148 = getelementptr inbounds %struct.macb, ptr %143, i32 0, i32 35
  %149 = load i8, ptr %148, align 8
  switch i8 %149, label %154 [
    i8 1, label %152
    i8 2, label %152
    i8 3, label %150
  ]

150:                                              ; preds = %137
  %151 = mul nuw nsw i32 %147, 3
  br label %154

152:                                              ; preds = %137, %137
  %153 = shl nuw nsw i32 %147, 1
  br label %154

154:                                              ; preds = %152, %150, %137
  %155 = phi i32 [ %147, %137 ], [ %151, %150 ], [ %153, %152 ]
  %156 = load ptr, ptr %81, align 8
  %157 = getelementptr %struct.macb_dma_desc, ptr %156, i32 %155
  store i32 %142, ptr %157, align 4
  %158 = getelementptr %struct.macb_dma_desc, ptr %156, i32 %155, i32 1
  store i32 0, ptr %158, align 4
  %159 = add i32 %105, 6144
  %160 = load ptr, ptr %66, align 8
  %161 = getelementptr inbounds %struct.macb, ptr %160, i32 0, i32 5
  %162 = load i32, ptr %161, align 4
  %163 = add i32 %162, 7
  %164 = and i32 %163, 4
  %165 = getelementptr inbounds %struct.macb, ptr %160, i32 0, i32 35
  %166 = load i8, ptr %165, align 8
  switch i8 %166, label %171 [
    i8 1, label %169
    i8 2, label %169
    i8 3, label %167
  ]

167:                                              ; preds = %154
  %168 = mul nuw nsw i32 %164, 3
  br label %171

169:                                              ; preds = %154, %154
  %170 = shl nuw nsw i32 %164, 1
  br label %171

171:                                              ; preds = %169, %167, %154
  %172 = phi i32 [ %164, %154 ], [ %168, %167 ], [ %170, %169 ]
  %173 = load ptr, ptr %81, align 8
  %174 = getelementptr %struct.macb_dma_desc, ptr %173, i32 %172
  store i32 %159, ptr %174, align 4
  %175 = getelementptr %struct.macb_dma_desc, ptr %173, i32 %172, i32 1
  store i32 0, ptr %175, align 4
  %176 = add i32 %105, 7680
  %177 = load ptr, ptr %66, align 8
  %178 = getelementptr inbounds %struct.macb, ptr %177, i32 0, i32 5
  %179 = load i32, ptr %178, align 4
  %180 = add i32 %179, 7
  %181 = and i32 %180, 5
  %182 = getelementptr inbounds %struct.macb, ptr %177, i32 0, i32 35
  %183 = load i8, ptr %182, align 8
  switch i8 %183, label %188 [
    i8 1, label %186
    i8 2, label %186
    i8 3, label %184
  ]

184:                                              ; preds = %171
  %185 = mul nuw nsw i32 %181, 3
  br label %188

186:                                              ; preds = %171, %171
  %187 = shl nuw nsw i32 %181, 1
  br label %188

188:                                              ; preds = %186, %184, %171
  %189 = phi i32 [ %181, %171 ], [ %185, %184 ], [ %187, %186 ]
  %190 = load ptr, ptr %81, align 8
  %191 = getelementptr %struct.macb_dma_desc, ptr %190, i32 %189
  store i32 %176, ptr %191, align 4
  %192 = getelementptr %struct.macb_dma_desc, ptr %190, i32 %189, i32 1
  store i32 0, ptr %192, align 4
  %193 = add i32 %105, 9216
  %194 = load ptr, ptr %66, align 8
  %195 = getelementptr inbounds %struct.macb, ptr %194, i32 0, i32 5
  %196 = load i32, ptr %195, align 4
  %197 = add i32 %196, 7
  %198 = and i32 %197, 6
  %199 = getelementptr inbounds %struct.macb, ptr %194, i32 0, i32 35
  %200 = load i8, ptr %199, align 8
  switch i8 %200, label %205 [
    i8 1, label %203
    i8 2, label %203
    i8 3, label %201
  ]

201:                                              ; preds = %188
  %202 = mul nuw nsw i32 %198, 3
  br label %205

203:                                              ; preds = %188, %188
  %204 = shl nuw nsw i32 %198, 1
  br label %205

205:                                              ; preds = %203, %201, %188
  %206 = phi i32 [ %198, %188 ], [ %202, %201 ], [ %204, %203 ]
  %207 = load ptr, ptr %81, align 8
  %208 = getelementptr %struct.macb_dma_desc, ptr %207, i32 %206
  store i32 %193, ptr %208, align 4
  %209 = getelementptr %struct.macb_dma_desc, ptr %207, i32 %206, i32 1
  store i32 0, ptr %209, align 4
  %210 = add i32 %105, 10752
  %211 = load ptr, ptr %66, align 8
  %212 = getelementptr inbounds %struct.macb, ptr %211, i32 0, i32 5
  %213 = load i32, ptr %212, align 4
  %214 = add i32 %213, 7
  %215 = and i32 %214, 7
  %216 = getelementptr inbounds %struct.macb, ptr %211, i32 0, i32 35
  %217 = load i8, ptr %216, align 8
  switch i8 %217, label %222 [
    i8 1, label %220
    i8 2, label %220
    i8 3, label %218
  ]

218:                                              ; preds = %205
  %219 = mul nuw nsw i32 %215, 3
  br label %222

220:                                              ; preds = %205, %205
  %221 = shl nuw nsw i32 %215, 1
  br label %222

222:                                              ; preds = %220, %218, %205
  %223 = phi i32 [ %215, %205 ], [ %219, %218 ], [ %221, %220 ]
  %224 = load ptr, ptr %81, align 8
  %225 = getelementptr %struct.macb_dma_desc, ptr %224, i32 %223
  store i32 %210, ptr %225, align 4
  %226 = getelementptr %struct.macb_dma_desc, ptr %224, i32 %223, i32 1
  store i32 0, ptr %226, align 4
  %227 = add i32 %105, 12288
  %228 = load ptr, ptr %66, align 8
  %229 = getelementptr inbounds %struct.macb, ptr %228, i32 0, i32 5
  %230 = load i32, ptr %229, align 4
  %231 = add i32 %230, 15
  %232 = and i32 %231, 8
  %233 = getelementptr inbounds %struct.macb, ptr %228, i32 0, i32 35
  %234 = load i8, ptr %233, align 8
  switch i8 %234, label %239 [
    i8 1, label %237
    i8 2, label %237
    i8 3, label %235
  ]

235:                                              ; preds = %222
  %236 = mul nuw nsw i32 %232, 3
  br label %239

237:                                              ; preds = %222, %222
  %238 = shl nuw nsw i32 %232, 1
  br label %239

239:                                              ; preds = %237, %235, %222
  %240 = phi i32 [ %232, %222 ], [ %236, %235 ], [ %238, %237 ]
  %241 = load ptr, ptr %81, align 8
  %242 = getelementptr %struct.macb_dma_desc, ptr %241, i32 %240
  %243 = getelementptr %struct.macb_dma_desc, ptr %241, i32 %240, i32 1
  store i32 0, ptr %243, align 4
  %244 = or i32 %227, 2
  store i32 %244, ptr %242, align 4
  %245 = getelementptr i8, ptr %0, i32 1536
  store i32 0, ptr %245, align 8
  %246 = load ptr, ptr %19, align 4
  %247 = load i32, ptr %79, align 8
  tail call void %246(ptr noundef %2, i32 noundef 24, i32 noundef %247) #22
  %248 = load ptr, ptr %16, align 8
  %249 = tail call i32 %248(ptr noundef %2, i32 noundef 0) #22
  %250 = load ptr, ptr %19, align 4
  %251 = or i32 %249, 12
  tail call void %250(ptr noundef %2, i32 noundef 0, i32 noundef %251) #22
  %252 = load ptr, ptr %19, align 4
  tail call void %252(ptr noundef %2, i32 noundef 40, i32 noundef 3254) #22
  %253 = tail call fastcc i32 @macb_phylink_connect(ptr noundef %2)
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %255, label %259

255:                                              ; preds = %239
  %256 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  %257 = load ptr, ptr %256, align 64
  %258 = getelementptr inbounds %struct.netdev_queue, ptr %257, i32 0, i32 12
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %258) #22
  br label %265

259:                                              ; preds = %239
  tail call fastcc void @at91ether_stop(ptr noundef %2)
  br label %260

260:                                              ; preds = %259, %100, %77
  %261 = phi i32 [ %253, %259 ], [ -12, %100 ], [ -12, %77 ]
  %262 = load ptr, ptr %3, align 4
  %263 = getelementptr inbounds %struct.platform_device, ptr %262, i32 0, i32 3
  %264 = tail call i32 @__pm_runtime_idle(ptr noundef %263, i32 noundef 4) #22
  br label %265

265:                                              ; preds = %260, %255, %14, %8
  %266 = phi i32 [ %261, %260 ], [ 0, %255 ], [ %6, %8 ], [ %6, %14 ]
  ret i32 %266
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91ether_close(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 1408
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  %4 = load ptr, ptr %3, align 64
  %5 = getelementptr inbounds %struct.netdev_queue, ptr %4, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %5) #22
  %6 = getelementptr i8, ptr %0, i32 16976
  %7 = load ptr, ptr %6, align 8
  tail call void @phylink_stop(ptr noundef %7) #22
  %8 = load ptr, ptr %6, align 8
  tail call void @phylink_disconnect_phy(ptr noundef %8) #22
  tail call fastcc void @at91ether_stop(ptr noundef %2)
  %9 = getelementptr i8, ptr %0, i32 16748
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.platform_device, ptr %10, i32 0, i32 3
  %12 = tail call i32 @__pm_runtime_idle(ptr noundef %11, i32 noundef 5) #22
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91ether_start_xmit(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr i8, ptr %1, i32 1408
  %4 = getelementptr i8, ptr %1, i32 1416
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 %5(ptr noundef %3, i32 noundef 20) #22
  %7 = and i32 %6, 16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %58, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 87
  %11 = load ptr, ptr %10, align 64
  %12 = getelementptr inbounds %struct.netdev_queue, ptr %11, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %12) #22
  %13 = getelementptr i8, ptr %1, i32 17032
  store ptr %0, ptr %13, align 8
  %14 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %15 = load i32, ptr %14, align 8
  %16 = getelementptr i8, ptr %1, i32 17040
  store i32 %15, ptr %16, align 8
  %17 = getelementptr i8, ptr %1, i32 16748
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.platform_device, ptr %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %21 = load ptr, ptr %20, align 4
  %22 = load i32, ptr %14, align 8
  %23 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %21) #22
  %24 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %25 = xor i1 %24, true
  %26 = select i1 %23, i1 %25, i1 false
  br i1 %26, label %27, label %36, !prof !14

27:                                               ; preds = %9
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %28 = tail call ptr @dev_driver_string(ptr noundef %19) #22
  %29 = getelementptr inbounds %struct.platform_device, ptr %18, i32 0, i32 3, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load ptr, ptr %19, align 4
  br label %34

34:                                               ; preds = %32, %27
  %35 = phi ptr [ %33, %32 ], [ %30, %27 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.30, ptr noundef %28, ptr noundef %35) #22
  br label %36

36:                                               ; preds = %34, %9
  br i1 %23, label %37, label %39

37:                                               ; preds = %36
  %38 = getelementptr i8, ptr %1, i32 17036
  store i32 -1, ptr %38, align 4
  br label %49

39:                                               ; preds = %36
  %40 = load ptr, ptr @mem_map, align 4
  %41 = ptrtoint ptr %21 to i32
  %42 = add i32 %41, 1073741824
  %43 = lshr i32 %42, 12
  %44 = getelementptr %struct.page, ptr %40, i32 %43
  %45 = and i32 %41, 4095
  %46 = tail call i32 @dma_map_page_attrs(ptr noundef %19, ptr noundef %44, i32 noundef %45, i32 noundef %22, i32 noundef 1, i32 noundef 0) #22
  %47 = getelementptr i8, ptr %1, i32 17036
  store i32 %46, ptr %47, align 4
  %48 = icmp eq i32 %46, -1
  br i1 %48, label %49, label %53

49:                                               ; preds = %39, %37
  tail call void @__dev_kfree_skb_any(ptr noundef %0, i32 noundef 1) #22
  %50 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 7
  %51 = load i32, ptr %50, align 4
  %52 = add i32 %51, 1
  store i32 %52, ptr %50, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.48, ptr noundef nonnull @__func__.at91ether_start_xmit) #23
  br label %59

53:                                               ; preds = %39
  %54 = getelementptr i8, ptr %1, i32 1420
  %55 = load ptr, ptr %54, align 4
  tail call void %55(ptr noundef %3, i32 noundef 12, i32 noundef %46) #22
  %56 = load ptr, ptr %54, align 4
  %57 = load i32, ptr %14, align 8
  tail call void %56(ptr noundef %3, i32 noundef 16, i32 noundef %57) #22
  br label %59

58:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.49, ptr noundef nonnull @__func__.at91ether_start_xmit) #23
  br label %59

59:                                               ; preds = %58, %53, %49
  %60 = phi i32 [ 0, %53 ], [ 16, %58 ], [ 0, %49 ]
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @at91ether_stop(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.macb, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  tail call void %3(ptr noundef %0, i32 noundef 44, i32 noundef 3254) #22
  %4 = getelementptr inbounds %struct.macb, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 %5(ptr noundef %0, i32 noundef 0) #22
  %7 = load ptr, ptr %2, align 4
  %8 = and i32 %6, -13
  tail call void %7(ptr noundef %0, i32 noundef 0, i32 noundef %8) #22
  %9 = getelementptr inbounds %struct.macb, ptr %0, i32 0, i32 9, i32 0, i32 21
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %28, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.macb, ptr %0, i32 0, i32 11
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.platform_device, ptr %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.macb, ptr %0, i32 0, i32 35
  %17 = load i8, ptr %16, align 8
  %18 = add i8 %17, -1
  %19 = icmp ult i8 %18, 3
  br i1 %19, label %20, label %24

20:                                               ; preds = %12
  %21 = sext i8 %18 to i32
  %22 = getelementptr inbounds [3 x i32], ptr @switch.table.at91ether_stop, i32 0, i32 %21
  %23 = load i32, ptr %22, align 4
  br label %24

24:                                               ; preds = %20, %12
  %25 = phi i32 [ %23, %20 ], [ 72, %12 ]
  %26 = getelementptr inbounds %struct.macb, ptr %0, i32 0, i32 9, i32 0, i32 17
  %27 = load i32, ptr %26, align 8
  tail call void @dma_free_attrs(ptr noundef %15, i32 noundef %25, ptr noundef nonnull %10, i32 noundef %27, i32 noundef 0) #22
  store ptr null, ptr %9, align 8
  br label %28

28:                                               ; preds = %24, %1
  %29 = getelementptr inbounds %struct.macb, ptr %0, i32 0, i32 9, i32 0, i32 23
  %30 = load ptr, ptr %29, align 8
  %31 = icmp eq ptr %30, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.macb, ptr %0, i32 0, i32 11
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.platform_device, ptr %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.macb, ptr %0, i32 0, i32 9, i32 0, i32 18
  %37 = load i32, ptr %36, align 4
  tail call void @dma_free_attrs(ptr noundef %35, i32 noundef 13824, ptr noundef nonnull %30, i32 noundef %37, i32 noundef 0) #22
  store ptr null, ptr %29, align 8
  br label %38

38:                                               ; preds = %32, %28
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fu540_c000_clk_init(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5) #2 {
  %7 = alloca [5 x %struct.clk_bulk_data], align 4
  %8 = alloca %struct.clk_init_data, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %8) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %8, i8 0, i32 28, i1 false), !annotation !8
  %9 = tail call i32 @macb_clk_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %50

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %13 = tail call noalias ptr @devm_kmalloc(ptr noundef %12, i32 noundef 20, i32 noundef 3520) #22
  store ptr %13, ptr @mgmt, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = load ptr, ptr %3, align 4
  br label %34

17:                                               ; preds = %11
  store ptr @.str.51, ptr %8, align 4
  %18 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 1
  store ptr @fu540_c000_ops, ptr %18, align 4
  %19 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 6
  store i32 0, ptr %19, align 4
  %20 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 5
  store i8 0, ptr %20, align 4
  %21 = getelementptr inbounds %struct.sifive_fu540_macb_mgmt, ptr %13, i32 0, i32 1
  store i32 0, ptr %21, align 4
  %22 = getelementptr inbounds %struct.sifive_fu540_macb_mgmt, ptr %13, i32 0, i32 2, i32 2
  store ptr %8, ptr %22, align 4
  %23 = getelementptr inbounds %struct.sifive_fu540_macb_mgmt, ptr %13, i32 0, i32 2
  %24 = call ptr @devm_clk_register(ptr noundef %12, ptr noundef %23) #22
  store ptr %24, ptr %3, align 4
  %25 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %26, label %28

26:                                               ; preds = %17
  %27 = ptrtoint ptr %24 to i32
  br label %34

28:                                               ; preds = %17
  %29 = call fastcc i32 @clk_prepare_enable(ptr noundef %24)
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.52, i32 noundef %29) #23
  store ptr null, ptr %3, align 4
  br label %34

32:                                               ; preds = %28
  %33 = load ptr, ptr %8, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %12, ptr noundef nonnull @.str.53, ptr noundef %33) #23
  br label %50

34:                                               ; preds = %31, %26, %15
  %35 = phi ptr [ %24, %26 ], [ null, %31 ], [ %16, %15 ]
  %36 = phi i32 [ %27, %26 ], [ %29, %31 ], [ -12, %15 ]
  %37 = load ptr, ptr %1, align 4
  %38 = load ptr, ptr %2, align 4
  %39 = load ptr, ptr %4, align 4
  %40 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #22
  %41 = getelementptr inbounds %struct.clk_bulk_data, ptr %7, i32 0, i32 1
  store i32 0, ptr %7, align 4
  store ptr %40, ptr %41, align 4
  %42 = getelementptr inbounds %struct.clk_bulk_data, ptr %7, i32 1
  store ptr null, ptr %42, align 4
  %43 = getelementptr inbounds %struct.clk_bulk_data, ptr %7, i32 1, i32 1
  store ptr %39, ptr %43, align 4
  %44 = getelementptr inbounds %struct.clk_bulk_data, ptr %7, i32 2
  store ptr null, ptr %44, align 4
  %45 = getelementptr inbounds %struct.clk_bulk_data, ptr %7, i32 2, i32 1
  store ptr %37, ptr %45, align 4
  %46 = getelementptr inbounds %struct.clk_bulk_data, ptr %7, i32 3
  store ptr null, ptr %46, align 4
  %47 = getelementptr inbounds %struct.clk_bulk_data, ptr %7, i32 3, i32 1
  store ptr %38, ptr %47, align 4
  %48 = getelementptr inbounds %struct.clk_bulk_data, ptr %7, i32 4
  store ptr null, ptr %48, align 4
  %49 = getelementptr inbounds %struct.clk_bulk_data, ptr %7, i32 4, i32 1
  store ptr %35, ptr %49, align 4
  call void @clk_bulk_disable(i32 noundef 5, ptr noundef nonnull %7) #22
  call void @clk_bulk_unprepare(i32 noundef 5, ptr noundef nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #22
  br label %50

50:                                               ; preds = %34, %32, %6
  %51 = phi i32 [ %36, %34 ], [ 0, %32 ], [ %9, %6 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %8) #22
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fu540_c000_init(ptr noundef %0) #2 {
  %2 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 1) #22
  %3 = load ptr, ptr @mgmt, align 4
  store ptr %2, ptr %3, align 4
  %4 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = ptrtoint ptr %2 to i32
  br label %9

7:                                                ; preds = %1
  %8 = tail call i32 @macb_init(ptr noundef %0)
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi i32 [ %6, %5 ], [ %8, %7 ]
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @fu540_macb_tx_recalc_rate(ptr nocapture noundef readnone %0, i32 noundef %1) #21 {
  %3 = load ptr, ptr @mgmt, align 4
  %4 = getelementptr inbounds %struct.sifive_fu540_macb_mgmt, ptr %3, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fu540_macb_tx_round_rate(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readnone %2) #2 {
  %4 = icmp ult i32 %1, 2500000
  br i1 %4, label %19, label %5, !prof !14

5:                                                ; preds = %3
  %6 = icmp eq i32 %1, 2500000
  br i1 %6, label %22, label %7

7:                                                ; preds = %5
  %8 = icmp ult i32 %1, 13750000
  br i1 %8, label %19, label %9, !prof !14

9:                                                ; preds = %7
  %10 = icmp ult i32 %1, 25000000
  br i1 %10, label %19, label %11, !prof !14

11:                                               ; preds = %9
  %12 = icmp eq i32 %1, 25000000
  br i1 %12, label %22, label %13

13:                                               ; preds = %11
  %14 = icmp ult i32 %1, 75000000
  br i1 %14, label %19, label %15, !prof !14

15:                                               ; preds = %13
  %16 = icmp ult i32 %1, 125000000
  br i1 %16, label %19, label %17, !prof !14

17:                                               ; preds = %15
  %18 = icmp eq i32 %1, 125000000
  br i1 %18, label %22, label %19

19:                                               ; preds = %17, %15, %13, %9, %7, %3
  %20 = phi i32 [ 4383, %3 ], [ 4387, %7 ], [ 4389, %9 ], [ 4393, %13 ], [ 4395, %15 ], [ 4400, %17 ]
  %21 = phi i32 [ 2500000, %3 ], [ 2500000, %7 ], [ 25000000, %9 ], [ 25000000, %13 ], [ 125000000, %15 ], [ 125000000, %17 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef %20, i32 noundef 9, ptr noundef null) #22
  br label %22

22:                                               ; preds = %19, %17, %11, %5
  %23 = phi i32 [ 2500000, %5 ], [ 25000000, %11 ], [ 125000000, %17 ], [ %21, %19 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fu540_macb_tx_set_rate(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = icmp ult i32 %1, 2500000
  br i1 %4, label %19, label %5, !prof !14

5:                                                ; preds = %3
  %6 = icmp eq i32 %1, 2500000
  br i1 %6, label %24, label %7

7:                                                ; preds = %5
  %8 = icmp ult i32 %1, 13750000
  br i1 %8, label %19, label %9, !prof !14

9:                                                ; preds = %7
  %10 = icmp ult i32 %1, 25000000
  br i1 %10, label %19, label %11, !prof !14

11:                                               ; preds = %9
  %12 = icmp eq i32 %1, 25000000
  br i1 %12, label %24, label %13

13:                                               ; preds = %11
  %14 = icmp ult i32 %1, 75000000
  br i1 %14, label %19, label %15, !prof !14

15:                                               ; preds = %13
  %16 = icmp ult i32 %1, 125000000
  br i1 %16, label %22, label %17, !prof !14

17:                                               ; preds = %15
  %18 = icmp eq i32 %1, 125000000
  br i1 %18, label %28, label %22

19:                                               ; preds = %13, %9, %7, %3
  %20 = phi i32 [ 4393, %13 ], [ 4389, %9 ], [ 4387, %7 ], [ 4383, %3 ]
  %21 = phi i32 [ 25000000, %13 ], [ 25000000, %9 ], [ 2500000, %7 ], [ 2500000, %3 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef %20, i32 noundef 9, ptr noundef null) #22
  br label %24

22:                                               ; preds = %17, %15
  %23 = phi i32 [ 4395, %15 ], [ 4400, %17 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef %23, i32 noundef 9, ptr noundef null) #22
  br label %28

24:                                               ; preds = %19, %11, %5
  %25 = phi i32 [ %21, %19 ], [ 25000000, %11 ], [ 2500000, %5 ]
  %26 = load ptr, ptr @mgmt, align 4
  %27 = load ptr, ptr %26, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #22, !srcloc !45
  tail call void @arm_heavy_mb() #22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 1) #22, !srcloc !11
  br label %31

28:                                               ; preds = %22, %17
  %29 = load ptr, ptr @mgmt, align 4
  %30 = load ptr, ptr %29, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #22, !srcloc !45
  tail call void @arm_heavy_mb() #22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 0) #22, !srcloc !11
  br label %31

31:                                               ; preds = %28, %24
  %32 = phi i32 [ 125000000, %28 ], [ %25, %24 ]
  %33 = load ptr, ptr @mgmt, align 4
  %34 = getelementptr inbounds %struct.sifive_fu540_macb_mgmt, ptr %33, i32 0, i32 1
  store i32 %32, ptr %34, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @macb_suspend(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 1408
  %5 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %150, label %9

9:                                                ; preds = %1
  %10 = getelementptr i8, ptr %3, i32 17808
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %87, label %14

14:                                               ; preds = %9
  %15 = getelementptr i8, ptr %3, i32 16744
  %16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %15) #22
  %17 = getelementptr i8, ptr %3, i32 1420
  %18 = load ptr, ptr %17, align 4
  tail call void %18(ptr noundef %4, i32 noundef 20, i32 noundef -1) #22
  %19 = load ptr, ptr %17, align 4
  tail call void %19(ptr noundef %4, i32 noundef 32, i32 noundef -1) #22
  %20 = getelementptr i8, ptr %3, i32 1448
  %21 = getelementptr i8, ptr %3, i32 1436
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %53, label %24

24:                                               ; preds = %14
  %25 = getelementptr i8, ptr %3, i32 17020
  br label %26

26:                                               ; preds = %48, %24
  %27 = phi i32 [ 0, %24 ], [ %49, %48 ]
  %28 = phi ptr [ %20, %24 ], [ %50, %48 ]
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds %struct.macb, ptr %29, i32 0, i32 3
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.macb_queue, ptr %28, i32 0, i32 4
  %33 = load i32, ptr %32, align 8
  tail call void %31(ptr noundef %29, i32 noundef %33, i32 noundef -1) #22
  %34 = load ptr, ptr %28, align 8
  %35 = getelementptr inbounds %struct.macb, ptr %34, i32 0, i32 2
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr inbounds %struct.macb_queue, ptr %28, i32 0, i32 2
  %38 = load i32, ptr %37, align 8
  %39 = tail call i32 %36(ptr noundef %34, i32 noundef %38) #22
  %40 = load i32, ptr %25, align 4
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %26
  %44 = load ptr, ptr %28, align 8
  %45 = getelementptr inbounds %struct.macb, ptr %44, i32 0, i32 3
  %46 = load ptr, ptr %45, align 4
  %47 = load i32, ptr %37, align 8
  tail call void %46(ptr noundef %44, i32 noundef %47, i32 noundef -1) #22
  br label %48

48:                                               ; preds = %43, %26
  %49 = add nuw i32 %27, 1
  %50 = getelementptr %struct.macb_queue, ptr %28, i32 1
  %51 = load i32, ptr %21, align 4
  %52 = icmp ult i32 %49, %51
  br i1 %52, label %26, label %53

53:                                               ; preds = %48, %14
  %54 = getelementptr i8, ptr %3, i32 1452
  %55 = load i32, ptr %54, align 4
  tail call void @devm_free_irq(ptr noundef %0, i32 noundef %55, ptr noundef %20) #22
  %56 = getelementptr i8, ptr %3, i32 17020
  %57 = load i32, ptr %56, align 4
  %58 = icmp slt i32 %57, 0
  %59 = load i32, ptr %54, align 4
  br i1 %58, label %60, label %71

60:                                               ; preds = %53
  %61 = tail call i32 @devm_request_threaded_irq(ptr noundef %0, i32 noundef %59, ptr noundef nonnull @gem_wol_interrupt, ptr noundef null, i32 noundef 128, ptr noundef %3, ptr noundef %20) #22
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %60
  %64 = load i32, ptr %54, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.18, i32 noundef %64, i32 noundef %61) #23
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %15, i32 noundef %16) #22
  br label %150

65:                                               ; preds = %60
  %66 = load ptr, ptr %20, align 8
  %67 = getelementptr inbounds %struct.macb, ptr %66, i32 0, i32 3
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr i8, ptr %3, i32 1460
  %70 = load i32, ptr %69, align 4
  tail call void %68(ptr noundef %66, i32 noundef %70, i32 noundef 268435456) #22
  br label %82

71:                                               ; preds = %53
  %72 = tail call i32 @devm_request_threaded_irq(ptr noundef %0, i32 noundef %59, ptr noundef nonnull @macb_wol_interrupt, ptr noundef null, i32 noundef 128, ptr noundef %3, ptr noundef %20) #22
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %71
  %75 = load i32, ptr %54, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.18, i32 noundef %75, i32 noundef %72) #23
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %15, i32 noundef %16) #22
  br label %150

76:                                               ; preds = %71
  %77 = load ptr, ptr %20, align 8
  %78 = getelementptr inbounds %struct.macb, ptr %77, i32 0, i32 3
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr i8, ptr %3, i32 1460
  %81 = load i32, ptr %80, align 4
  tail call void %79(ptr noundef %77, i32 noundef %81, i32 noundef 16384) #22
  br label %82

82:                                               ; preds = %76, %65
  %83 = phi i32 [ 196, %76 ], [ 184, %65 ]
  %84 = load ptr, ptr %17, align 4
  tail call void %84(ptr noundef %4, i32 noundef %83, i32 noundef 65536) #22
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %15, i32 noundef %16) #22
  %85 = load i32, ptr %54, align 4
  %86 = tail call i32 @irq_set_irq_wake(i32 noundef %85, i32 noundef 1) #22
  br label %87

87:                                               ; preds = %82, %9
  tail call void @netif_device_detach(ptr noundef %3) #22
  %88 = getelementptr i8, ptr %3, i32 1436
  %89 = load i32, ptr %88, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %101, label %91

91:                                               ; preds = %87
  %92 = getelementptr i8, ptr %3, i32 1448
  br label %93

93:                                               ; preds = %93, %91
  %94 = phi i32 [ %97, %93 ], [ 0, %91 ]
  %95 = phi ptr [ %98, %93 ], [ %92, %91 ]
  %96 = getelementptr inbounds %struct.macb_queue, ptr %95, i32 0, i32 24
  tail call void @napi_disable(ptr noundef %96) #22
  %97 = add nuw i32 %94, 1
  %98 = getelementptr %struct.macb_queue, ptr %95, i32 1
  %99 = load i32, ptr %88, align 4
  %100 = icmp ult i32 %97, %99
  br i1 %100, label %93, label %101

101:                                              ; preds = %93, %87
  %102 = load i32, ptr %10, align 8
  %103 = and i32 %102, 2
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %101
  tail call void @rtnl_lock() #22
  %106 = getelementptr i8, ptr %3, i32 16976
  %107 = load ptr, ptr %106, align 8
  tail call void @phylink_stop(ptr noundef %107) #22
  tail call void @rtnl_unlock() #22
  %108 = getelementptr i8, ptr %3, i32 16744
  %109 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %108) #22
  tail call fastcc void @macb_reset_hw(ptr noundef %4)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %108, i32 noundef %109) #22
  br label %110

110:                                              ; preds = %105, %101
  %111 = getelementptr i8, ptr %3, i32 17020
  %112 = load i32, ptr %111, align 4
  %113 = and i32 %112, 16
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %110
  %116 = icmp slt i32 %112, 0
  %117 = getelementptr i8, ptr %3, i32 1416
  %118 = load ptr, ptr %117, align 8
  %119 = select i1 %116, i32 12, i32 192
  %120 = tail call i32 %118(ptr noundef %4, i32 noundef %119) #22
  %121 = getelementptr i8, ptr %3, i32 18020
  store i32 %120, ptr %121, align 4
  br label %122

122:                                              ; preds = %115, %110
  %123 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 24
  %124 = load i64, ptr %123, align 8
  %125 = and i64 %124, 274877906944
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %132, label %127

127:                                              ; preds = %122
  %128 = getelementptr i8, ptr %3, i32 1416
  %129 = load ptr, ptr %128, align 8
  %130 = tail call i32 %129(ptr noundef %4, i32 noundef 1760) #22
  %131 = getelementptr i8, ptr %3, i32 18016
  store i32 %130, ptr %131, align 8
  br label %132

132:                                              ; preds = %127, %122
  %133 = getelementptr i8, ptr %3, i32 17812
  %134 = load ptr, ptr %133, align 4
  %135 = icmp eq ptr %134, null
  br i1 %135, label %139, label %136

136:                                              ; preds = %132
  %137 = getelementptr inbounds %struct.macb_ptp_info, ptr %134, i32 0, i32 1
  %138 = load ptr, ptr %137, align 4
  tail call void %138(ptr noundef %3) #22
  br label %139

139:                                              ; preds = %136, %132
  %140 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %141 = load i16, ptr %140, align 4
  %142 = and i16 %141, 1
  %143 = icmp eq i16 %142, 0
  br i1 %143, label %148, label %144

144:                                              ; preds = %139
  %145 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %146 = load ptr, ptr %145, align 8
  %147 = icmp eq ptr %146, null
  br i1 %147, label %148, label %150

148:                                              ; preds = %144, %139
  %149 = tail call i32 @pm_runtime_force_suspend(ptr noundef %0) #22
  br label %150

150:                                              ; preds = %148, %144, %74, %63, %1
  %151 = phi i32 [ %61, %63 ], [ %72, %74 ], [ 0, %1 ], [ 0, %148 ], [ 0, %144 ]
  ret i32 %151
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @macb_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 1408
  %5 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %167, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %11 = load i16, ptr %10, align 4
  %12 = and i16 %11, 1
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %14, %9
  %19 = tail call i32 @pm_runtime_force_resume(ptr noundef %0) #22
  br label %20

20:                                               ; preds = %18, %14
  %21 = getelementptr i8, ptr %3, i32 17808
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 2
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %69, label %25

25:                                               ; preds = %20
  %26 = getelementptr i8, ptr %3, i32 16744
  %27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %26) #22
  %28 = getelementptr i8, ptr %3, i32 17020
  %29 = load i32, ptr %28, align 4
  %30 = icmp slt i32 %29, 0
  %31 = getelementptr i8, ptr %3, i32 1448
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds %struct.macb, ptr %32, i32 0, i32 3
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr i8, ptr %3, i32 1464
  %36 = load i32, ptr %35, align 8
  %37 = select i1 %30, i32 268435456, i32 16384
  %38 = select i1 %30, i32 184, i32 196
  tail call void %34(ptr noundef %32, i32 noundef %36, i32 noundef %37) #22
  %39 = getelementptr i8, ptr %3, i32 1420
  %40 = load ptr, ptr %39, align 4
  tail call void %40(ptr noundef %4, i32 noundef %38, i32 noundef 0) #22
  %41 = getelementptr i8, ptr %3, i32 1448
  %42 = load ptr, ptr %41, align 8
  %43 = getelementptr inbounds %struct.macb, ptr %42, i32 0, i32 2
  %44 = load ptr, ptr %43, align 8
  %45 = getelementptr i8, ptr %3, i32 1456
  %46 = load i32, ptr %45, align 8
  %47 = tail call i32 %44(ptr noundef %42, i32 noundef %46) #22
  %48 = load i32, ptr %28, align 4
  %49 = and i32 %48, 1
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %25
  %52 = load ptr, ptr %41, align 8
  %53 = getelementptr inbounds %struct.macb, ptr %52, i32 0, i32 3
  %54 = load ptr, ptr %53, align 4
  %55 = load i32, ptr %45, align 8
  tail call void %54(ptr noundef %52, i32 noundef %55, i32 noundef -1) #22
  br label %56

56:                                               ; preds = %51, %25
  %57 = getelementptr i8, ptr %3, i32 1452
  %58 = load i32, ptr %57, align 4
  tail call void @devm_free_irq(ptr noundef %0, i32 noundef %58, ptr noundef %41) #22
  %59 = load i32, ptr %57, align 4
  %60 = tail call i32 @devm_request_threaded_irq(ptr noundef %0, i32 noundef %59, ptr noundef nonnull @macb_interrupt, ptr noundef null, i32 noundef 128, ptr noundef %3, ptr noundef %41) #22
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %56
  %63 = load i32, ptr %57, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.18, i32 noundef %63, i32 noundef %60) #23
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %26, i32 noundef %27) #22
  br label %167

64:                                               ; preds = %56
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %26, i32 noundef %27) #22
  %65 = load i32, ptr %57, align 4
  %66 = tail call i32 @irq_set_irq_wake(i32 noundef %65, i32 noundef 0) #22
  tail call void @rtnl_lock() #22
  %67 = getelementptr i8, ptr %3, i32 16976
  %68 = load ptr, ptr %67, align 8
  tail call void @phylink_stop(ptr noundef %68) #22
  tail call void @rtnl_unlock() #22
  br label %69

69:                                               ; preds = %64, %20
  %70 = getelementptr i8, ptr %3, i32 1436
  %71 = load i32, ptr %70, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %83, label %73

73:                                               ; preds = %69
  %74 = getelementptr i8, ptr %3, i32 1448
  br label %75

75:                                               ; preds = %75, %73
  %76 = phi i32 [ %79, %75 ], [ 0, %73 ]
  %77 = phi ptr [ %80, %75 ], [ %74, %73 ]
  %78 = getelementptr inbounds %struct.macb_queue, ptr %77, i32 0, i32 24
  tail call void @napi_enable(ptr noundef %78) #22
  %79 = add nuw i32 %76, 1
  %80 = getelementptr %struct.macb_queue, ptr %77, i32 1
  %81 = load i32, ptr %70, align 4
  %82 = icmp ult i32 %79, %81
  br i1 %82, label %75, label %83

83:                                               ; preds = %75, %69
  %84 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 24
  %85 = load i64, ptr %84, align 8
  %86 = and i64 %85, 274877906944
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %83
  %89 = getelementptr i8, ptr %3, i32 1420
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr i8, ptr %3, i32 18016
  %92 = load i32, ptr %91, align 8
  tail call void %90(ptr noundef %4, i32 noundef 1760, i32 noundef %92) #22
  br label %93

93:                                               ; preds = %88, %83
  %94 = getelementptr i8, ptr %3, i32 17020
  %95 = load i32, ptr %94, align 4
  %96 = and i32 %95, 16
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %93
  %99 = icmp slt i32 %95, 0
  %100 = getelementptr i8, ptr %3, i32 1420
  %101 = load ptr, ptr %100, align 4
  %102 = getelementptr i8, ptr %3, i32 18020
  %103 = load i32, ptr %102, align 4
  %104 = select i1 %99, i32 12, i32 192
  tail call void %101(ptr noundef %4, i32 noundef %104, i32 noundef %103) #22
  br label %105

105:                                              ; preds = %98, %93
  %106 = getelementptr i8, ptr %3, i32 1420
  %107 = load ptr, ptr %106, align 4
  tail call void %107(ptr noundef %4, i32 noundef 0, i32 noundef 16) #22
  tail call fastcc void @macb_init_hw(ptr noundef %4)
  tail call void @macb_set_rx_mode(ptr noundef %3)
  %108 = getelementptr i8, ptr %3, i32 16772
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr inbounds %struct.net_device, ptr %109, i32 0, i32 23
  %111 = load i64, ptr %110, align 16
  %112 = load i32, ptr %94, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %144

114:                                              ; preds = %105
  %115 = getelementptr i8, ptr %3, i32 1416
  %116 = load ptr, ptr %115, align 8
  %117 = tail call i32 %116(ptr noundef %4, i32 noundef 16) #22
  %118 = and i32 %117, -2049
  %119 = trunc i64 %111 to i32
  %120 = shl i32 %119, 8
  %121 = and i32 %120, 2048
  %122 = or i32 %118, %121
  %123 = load ptr, ptr %106, align 4
  tail call void %123(ptr noundef %4, i32 noundef 16, i32 noundef %122) #22
  %124 = load i32, ptr %94, align 4
  %125 = load ptr, ptr %108, align 4
  %126 = icmp slt i32 %124, 0
  br i1 %126, label %127, label %144

127:                                              ; preds = %114
  %128 = load ptr, ptr %115, align 8
  %129 = tail call i32 %128(ptr noundef %4, i32 noundef 4) #22
  %130 = and i64 %111, 1099511627776
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %139, label %132

132:                                              ; preds = %127
  %133 = getelementptr inbounds %struct.net_device, ptr %125, i32 0, i32 14
  %134 = load i32, ptr %133, align 8
  %135 = and i32 %134, 256
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %132
  %138 = or i32 %129, 16777216
  br label %141

139:                                              ; preds = %132, %127
  %140 = and i32 %129, -16777217
  br label %141

141:                                              ; preds = %139, %137
  %142 = phi i32 [ %140, %139 ], [ %138, %137 ]
  %143 = load ptr, ptr %106, align 4
  tail call void %143(ptr noundef %4, i32 noundef 4, i32 noundef %142) #22
  br label %144

144:                                              ; preds = %141, %114, %105
  %145 = getelementptr i8, ptr %3, i32 17960
  %146 = load ptr, ptr %145, align 8
  %147 = icmp eq ptr %146, %145
  br i1 %147, label %153, label %148

148:                                              ; preds = %148, %144
  %149 = phi ptr [ %151, %148 ], [ %146, %144 ]
  %150 = getelementptr i8, ptr %149, i32 -168
  tail call fastcc void @gem_prog_cmp_regs(ptr noundef %4, ptr noundef %150) #22
  %151 = load ptr, ptr %149, align 8
  %152 = icmp eq ptr %151, %145
  br i1 %152, label %153, label %148

153:                                              ; preds = %148, %144
  %154 = load i32, ptr %94, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %153
  %157 = and i64 %111, 274877906944
  %158 = icmp ne i64 %157, 0
  tail call fastcc void @gem_enable_flow_filters(ptr noundef %4, i1 noundef zeroext %158) #22
  br label %159

159:                                              ; preds = %156, %153
  tail call void @rtnl_lock() #22
  %160 = getelementptr i8, ptr %3, i32 16976
  %161 = load ptr, ptr %160, align 8
  tail call void @phylink_start(ptr noundef %161) #22
  tail call void @rtnl_unlock() #22
  tail call void @netif_device_attach(ptr noundef %3) #22
  %162 = getelementptr i8, ptr %3, i32 17812
  %163 = load ptr, ptr %162, align 4
  %164 = icmp eq ptr %163, null
  br i1 %164, label %167, label %165

165:                                              ; preds = %159
  %166 = load ptr, ptr %163, align 4
  tail call void %166(ptr noundef %3) #22
  br label %167

167:                                              ; preds = %165, %159, %62, %1
  %168 = phi i32 [ %60, %62 ], [ 0, %1 ], [ 0, %165 ], [ 0, %159 ]
  ret i32 %168
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @macb_runtime_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca [5 x %struct.clk_bulk_data], align 4
  %3 = alloca [5 x %struct.clk_bulk_data], align 4
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %7 = load i16, ptr %6, align 4
  %8 = and i16 %7, 1
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %34

14:                                               ; preds = %10, %1
  %15 = getelementptr i8, ptr %5, i32 16752
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr i8, ptr %5, i32 16756
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %5, i32 16760
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr i8, ptr %5, i32 16764
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr i8, ptr %5, i32 16768
  %24 = load ptr, ptr %23, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #22
  %25 = getelementptr inbounds %struct.clk_bulk_data, ptr %3, i32 0, i32 1
  store i32 0, ptr %3, align 4
  store ptr %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.clk_bulk_data, ptr %3, i32 1
  store ptr null, ptr %26, align 4
  %27 = getelementptr inbounds %struct.clk_bulk_data, ptr %3, i32 1, i32 1
  store ptr %22, ptr %27, align 4
  %28 = getelementptr inbounds %struct.clk_bulk_data, ptr %3, i32 2
  store ptr null, ptr %28, align 4
  %29 = getelementptr inbounds %struct.clk_bulk_data, ptr %3, i32 2, i32 1
  store ptr %16, ptr %29, align 4
  %30 = getelementptr inbounds %struct.clk_bulk_data, ptr %3, i32 3
  store ptr null, ptr %30, align 4
  %31 = getelementptr inbounds %struct.clk_bulk_data, ptr %3, i32 3, i32 1
  store ptr %18, ptr %31, align 4
  %32 = getelementptr inbounds %struct.clk_bulk_data, ptr %3, i32 4
  store ptr null, ptr %32, align 4
  %33 = getelementptr inbounds %struct.clk_bulk_data, ptr %3, i32 4, i32 1
  store ptr %20, ptr %33, align 4
  call void @clk_bulk_disable(i32 noundef 5, ptr noundef nonnull %3) #22
  call void @clk_bulk_unprepare(i32 noundef 5, ptr noundef nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #22
  br label %39

34:                                               ; preds = %10
  %35 = getelementptr i8, ptr %5, i32 16768
  %36 = load ptr, ptr %35, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #22
  %37 = getelementptr inbounds %struct.clk_bulk_data, ptr %2, i32 0, i32 1
  store i32 0, ptr %2, align 4
  store ptr %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.clk_bulk_data, ptr %2, i32 1
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(32) %38, i8 0, i64 32, i1 false)
  call void @clk_bulk_disable(i32 noundef 5, ptr noundef nonnull %2) #22
  call void @clk_bulk_unprepare(i32 noundef 5, ptr noundef nonnull %2) #22
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #22
  br label %39

39:                                               ; preds = %34, %14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @macb_runtime_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %5 = load i16, ptr %4, align 4
  %6 = and i16 %5, 1
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %48

12:                                               ; preds = %8, %1
  %13 = getelementptr i8, ptr %3, i32 16752
  %14 = load ptr, ptr %13, align 8
  %15 = tail call i32 @clk_prepare(ptr noundef %14) #22
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = tail call i32 @clk_enable(ptr noundef %14) #22
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  tail call void @clk_unprepare(ptr noundef %14) #22
  br label %21

21:                                               ; preds = %20, %17, %12
  %22 = getelementptr i8, ptr %3, i32 16756
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 @clk_prepare(ptr noundef %23) #22
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = tail call i32 @clk_enable(ptr noundef %23) #22
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  tail call void @clk_unprepare(ptr noundef %23) #22
  br label %30

30:                                               ; preds = %29, %26, %21
  %31 = getelementptr i8, ptr %3, i32 16760
  %32 = load ptr, ptr %31, align 8
  %33 = tail call i32 @clk_prepare(ptr noundef %32) #22
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = tail call i32 @clk_enable(ptr noundef %32) #22
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  tail call void @clk_unprepare(ptr noundef %32) #22
  br label %39

39:                                               ; preds = %38, %35, %30
  %40 = getelementptr i8, ptr %3, i32 16764
  %41 = load ptr, ptr %40, align 4
  %42 = tail call i32 @clk_prepare(ptr noundef %41) #22
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = tail call i32 @clk_enable(ptr noundef %41) #22
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %44
  tail call void @clk_unprepare(ptr noundef %41) #22
  br label %48

48:                                               ; preds = %47, %44, %39, %8
  %49 = getelementptr i8, ptr %3, i32 16768
  %50 = load ptr, ptr %49, align 8
  %51 = tail call i32 @clk_prepare(ptr noundef %50) #22
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = tail call i32 @clk_enable(ptr noundef %50) #22
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %53
  tail call void @clk_unprepare(ptr noundef %50) #22
  br label %57

57:                                               ; preds = %56, %53, %48
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gem_wol_interrupt(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = load ptr, ptr %1, align 8
  %4 = getelementptr inbounds %struct.macb, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.macb_queue, ptr %1, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = tail call i32 %5(ptr noundef %3, i32 noundef %7) #22
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %38, label %10, !prof !14

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.macb, ptr %3, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %11) #22
  %12 = and i32 %8, 268435456
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %35, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %1, align 8
  %16 = getelementptr inbounds %struct.macb, ptr %15, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.macb_queue, ptr %1, i32 0, i32 4
  %19 = load i32, ptr %18, align 8
  tail call void %17(ptr noundef %15, i32 noundef %19, i32 noundef 268435456) #22
  %20 = getelementptr inbounds %struct.macb, ptr %3, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  tail call void %21(ptr noundef %3, i32 noundef 184, i32 noundef 0) #22
  %22 = getelementptr inbounds %struct.macb, ptr %3, i32 0, i32 25
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %14
  %27 = load ptr, ptr %1, align 8
  %28 = getelementptr inbounds %struct.macb, ptr %27, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = load i32, ptr %6, align 8
  tail call void %29(ptr noundef %27, i32 noundef %30, i32 noundef 268435456) #22
  br label %31

31:                                               ; preds = %26, %14
  %32 = getelementptr inbounds %struct.macb, ptr %3, i32 0, i32 11
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.platform_device, ptr %33, i32 0, i32 3
  tail call void @pm_wakeup_dev_event(ptr noundef %34, i32 noundef 0, i1 noundef zeroext false) #22
  br label %35

35:                                               ; preds = %31, %10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !17
  %36 = load i16, ptr %11, align 4
  %37 = add i16 %36, 1
  store i16 %37, ptr %11, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !20
  br label %38

38:                                               ; preds = %35, %2
  %39 = phi i32 [ 1, %35 ], [ 0, %2 ]
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @macb_wol_interrupt(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = load ptr, ptr %1, align 8
  %4 = getelementptr inbounds %struct.macb, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.macb_queue, ptr %1, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = tail call i32 %5(ptr noundef %3, i32 noundef %7) #22
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %38, label %10, !prof !14

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.macb, ptr %3, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %11) #22
  %12 = and i32 %8, 16384
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %35, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %1, align 8
  %16 = getelementptr inbounds %struct.macb, ptr %15, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.macb_queue, ptr %1, i32 0, i32 4
  %19 = load i32, ptr %18, align 8
  tail call void %17(ptr noundef %15, i32 noundef %19, i32 noundef 16384) #22
  %20 = getelementptr inbounds %struct.macb, ptr %3, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  tail call void %21(ptr noundef %3, i32 noundef 196, i32 noundef 0) #22
  %22 = getelementptr inbounds %struct.macb, ptr %3, i32 0, i32 25
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %14
  %27 = load ptr, ptr %1, align 8
  %28 = getelementptr inbounds %struct.macb, ptr %27, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = load i32, ptr %6, align 8
  tail call void %29(ptr noundef %27, i32 noundef %30, i32 noundef 16384) #22
  br label %31

31:                                               ; preds = %26, %14
  %32 = getelementptr inbounds %struct.macb, ptr %3, i32 0, i32 11
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.platform_device, ptr %33, i32 0, i32 3
  tail call void @pm_wakeup_dev_event(ptr noundef %34, i32 noundef 0, i1 noundef zeroext false) #22
  br label %35

35:                                               ; preds = %31, %10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !17
  %36 = load i16, ptr %11, align 4
  %37 = add i16 %36, 1
  store i16 %37, ptr %11, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !20
  br label %38

38:                                               ; preds = %35, %2
  %39 = phi i32 [ 1, %35 ], [ 0, %2 ]
  ret i32 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_wakeup_dev_event(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #12

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { argmemonly nofree nounwind willreturn writeonly }
attributes #14 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #18 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #19 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #20 = { inlinehint nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #22 = { nounwind }
attributes #23 = { cold nounwind }
attributes #24 = { nounwind allocsize(0) }
attributes #25 = { nounwind readonly willreturn }
attributes #26 = { nounwind allocsize(2) }

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
!9 = !{i64 571616, i64 2148061587, i64 2148061613, i64 2148061660, i64 2148061682, i64 2148061710, i64 2148061730}
!10 = !{i64 2148073799, i64 2148073825, i64 2148073854, i64 2148073888, i64 2148073919, i64 2148073942}
!11 = !{i64 3346615}
!12 = !{i64 3347033}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{!"branch_weights", i32 1, i32 2000}
!15 = !{i64 2156711267}
!16 = !{i64 2156730252}
!17 = !{i64 2149010168}
!18 = !{i64 2149005992}
!19 = !{i64 2149006067, i64 2149006094, i64 2149006141, i64 2149006163, i64 2149006191, i64 2149006211}
!20 = !{i64 2149033171}
!21 = !{i64 2156709506}
!22 = !{i64 2156713081}
!23 = !{i64 2156713204}
!24 = !{i64 2156715037}
!25 = !{i64 2156715160}
!26 = !{i64 2156713017}
!27 = !{i64 2156714319}
!28 = !{i64 2156714545}
!29 = !{i64 2154205450, i64 2154205938, i64 2154205487, i64 2154205543, i64 2154205577, i64 2154205601, i64 2154205642, i64 2154205663, i64 2154205691, i64 2154205725}
!30 = !{i64 2156735426}
!31 = distinct !{!31, !32}
!32 = !{!"llvm.loop.peeled.count", i32 1}
!33 = !{i64 2156739487}
!34 = distinct !{!34, !32}
!35 = !{i8 0, i8 2}
!36 = !{i64 2156712088}
!37 = !{i64 2156712360}
!38 = !{i64 2156712434}
!39 = !{i64 2156712616}
!40 = !{i32 0, i32 33}
!41 = !{i64 2148073306}
!42 = !{i64 558185, i64 558210, i64 558232, i64 558248, i64 558260, i64 558280, i64 558304, i64 558320, i64 558332}
!43 = !{i64 2148073432}
!44 = !{i64 2156853490}
!45 = !{i64 2150880218}
