; ModuleID = '/llk/IR/drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c_pt.bc'
source_filename = "../drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stmmac_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stmmac_dma_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.emac_variant = type { i32, ptr, i8, i8, i8, i8, i8, i8 }
%struct.reg_field = type { i32, i32, i32, i32, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.stmmac_resources = type { ptr, [6 x i8], i32, i32, i32, i32, i32, [8 x i32], [8 x i32] }
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
%struct.sunxi_priv_data = type { ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, ptr }
%struct.plat_stmmacenet_data = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [8 x %struct.stmmac_rxq_cfg], [8 x %struct.stmmac_txq_cfg], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i8, i8, i32, i32, i8, i32, i8, i8, i32, ptr, i8, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.stmmac_rxq_cfg = type { i8, i32, i8, i8, i32 }
%struct.stmmac_txq_cfg = type { i32, i8, i32, i32, i32, i32, i8, i32, i32 }
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
%struct.hlist_node = type { ptr, ptr }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }
%struct.stmmac_extra_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x %struct.stmmac_txq_stats], [8 x %struct.stmmac_rxq_stats], [40 x i8] }
%struct.stmmac_txq_stats = type { i32, i32 }
%struct.stmmac_rxq_stats = type { i32, i32 }
%struct.stmmac_safety_stats = type { [32 x i32], [32 x i32], [32 x i32] }
%struct.dma_features = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.stmmac_counters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stmmac_pps_cfg = type { i8, %struct.timespec64, %struct.timespec64 }
%struct.timespec64 = type { i64, i32 }
%struct.stmmac_rss = type { i32, [40 x i8], [256 x i32] }
%struct.mac_device_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mii_regs, %struct.mac_link, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, [32 x i32], i32, i8, i8 }
%struct.mii_regs = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mac_link = type { i32, i32, i32, i32, i32, i32, %struct.anon.123, %struct.anon.124 }
%struct.anon.123 = type { i32, i32, i32 }
%struct.anon.124 = type { i32, i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.97, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.114, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.97 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type {}
%struct.possible_net_t = type {}
%union.anon.114 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }

@__initcall__kmod_dwmac_sun8i__337_1347_sun8i_dwmac_driver_init6 = internal global ptr @sun8i_dwmac_driver_init, section ".initcall6.init", align 4
@sun8i_dwmac_driver = internal global %struct.platform_driver { ptr @sun8i_dwmac_probe, ptr @sun8i_dwmac_remove, ptr @sun8i_dwmac_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sun8i_dwmac_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stmmac_pltfr_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_sun8i_dwmac_driver_exit = internal global ptr @sun8i_dwmac_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author338 = internal constant [62 x i8] c"dwmac_sun8i.author=Corentin Labbe <clabbe.montjoie@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description339 = internal constant [66 x i8] c"dwmac_sun8i.description=Allwinner sun8i DWMAC specific glue layer\00", section ".modinfo", align 1
@__UNIQUE_ID_file340 = internal constant [65 x i8] c"dwmac_sun8i.file=drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i\00", section ".modinfo", align 1
@__UNIQUE_ID_license341 = internal constant [24 x i8] c"dwmac_sun8i.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [12 x i8] c"dwmac-sun8i\00", align 1
@sun8i_dwmac_match = internal constant [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-h3-emac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @emac_variant_h3 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-v3s-emac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @emac_variant_v3s }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-a83t-emac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @emac_variant_a83t }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-r40-gmac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @emac_variant_r40 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-a64-emac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @emac_variant_a64 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-h6-emac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @emac_variant_h6 }, %struct.of_device_id zeroinitializer], align 4
@stmmac_pltfr_pm_ops = external dso_local constant %struct.dev_pm_ops, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Missing dwmac-sun8i variant\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"stmmaceth\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Could not get TX clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"phy\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"No regulator found\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"syscon\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Unable to map syscon: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"Unable to map syscon register: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"Failed to register mux\0A\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"Fail to enable regulator\0A\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"Could not enable AHB clock\0A\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"Internal PHY already powered\0A\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"Powering internal PHY\0A\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"Cannot enable internal PHY\0A\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"Cannot reset internal PHY\0A\00", align 1
@sun8i_dwmac_ops = internal constant %struct.stmmac_ops { ptr @sun8i_dwmac_core_init, ptr @sun8i_dwmac_set_mac, ptr @sun8i_dwmac_rx_ipc_enable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sun8i_dwmac_dump_mac_regs, ptr null, ptr null, ptr @sun8i_dwmac_set_filter, ptr @sun8i_dwmac_flow_ctrl, ptr null, ptr @sun8i_dwmac_set_umac_addr, ptr @sun8i_dwmac_get_umac_addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sun8i_dwmac_set_mac_loopback, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@sun8i_dwmac_dma_ops = internal constant %struct.stmmac_dma_ops { ptr @sun8i_dwmac_dma_reset, ptr @sun8i_dwmac_dma_init, ptr null, ptr @sun8i_dwmac_dma_init_rx, ptr @sun8i_dwmac_dma_init_tx, ptr null, ptr @sun8i_dwmac_dump_regs, ptr @sun8i_dwmac_dma_operation_mode_rx, ptr @sun8i_dwmac_dma_operation_mode_tx, ptr null, ptr @sun8i_dwmac_enable_dma_transmission, ptr @sun8i_dwmac_enable_dma_irq, ptr @sun8i_dwmac_disable_dma_irq, ptr @sun8i_dwmac_dma_start_tx, ptr @sun8i_dwmac_dma_stop_tx, ptr @sun8i_dwmac_dma_start_rx, ptr @sun8i_dwmac_dma_stop_rx, ptr @sun8i_dwmac_dma_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.16 = private unnamed_addr constant [44 x i8] c"Too many address, switching to promiscuous\0A\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"Fail to read from regmap field.\0A\00", align 1
@.str.18 = private unnamed_addr constant [56 x i8] c"Current syscon value is not the default %x (expect %x)\0A\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"allwinner,leds-active-low\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"Could not parse MDIO addr\0A\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"allwinner,tx-delay-ps\00", align 1
@.str.22 = private unnamed_addr constant [36 x i8] c"tx-delay must be a multiple of 100\0A\00", align 1
@.str.23 = private unnamed_addr constant [28 x i8] c"Invalid TX clock delay: %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"allwinner,rx-delay-ps\00", align 1
@.str.25 = private unnamed_addr constant [36 x i8] c"rx-delay must be a multiple of 100\0A\00", align 1
@.str.26 = private unnamed_addr constant [28 x i8] c"Invalid RX clock delay: %d\0A\00", align 1
@.str.27 = private unnamed_addr constant [31 x i8] c"Unsupported interface mode: %s\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.29 = private unnamed_addr constant [28 x i8] c"%s has invalid PHY address\0A\00", align 1
@.str.30 = private unnamed_addr constant [32 x i8] c"%s PHY address %i is too large\0A\00", align 1
@.str.31 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"internal\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"mii\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"gmii\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"sgmii\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"tbi\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"rev-mii\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"rmii\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"rev-rmii\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"rgmii\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"rgmii-id\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"rgmii-rxid\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"rgmii-txid\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"rtbi\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"smii\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"xgmii\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"xlgmii\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"moca\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"qsgmii\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"trgmii\00", align 1
@.str.51 = private unnamed_addr constant [11 x i8] c"1000base-x\00", align 1
@.str.52 = private unnamed_addr constant [11 x i8] c"2500base-x\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"5gbase-r\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"rxaui\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"xaui\00", align 1
@.str.56 = private unnamed_addr constant [10 x i8] c"10gbase-r\00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"25gbase-r\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c"usxgmii\00", align 1
@.str.59 = private unnamed_addr constant [11 x i8] c"10gbase-kr\00", align 1
@.str.60 = private unnamed_addr constant [10 x i8] c"100base-x\00", align 1
@.str.61 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.62 = private unnamed_addr constant [9 x i8] c"mdio-mux\00", align 1
@.str.63 = private unnamed_addr constant [26 x i8] c"Cannot get mdio-mux node\0A\00", align 1
@.str.64 = private unnamed_addr constant [33 x i8] c"allwinner,sun8i-h3-mdio-internal\00", align 1
@.str.65 = private unnamed_addr constant [31 x i8] c"Cannot get internal_mdio node\0A\00", align 1
@.str.66 = private unnamed_addr constant [25 x i8] c"Found internal PHY node\0A\00", align 1
@.str.67 = private unnamed_addr constant [27 x i8] c"Switch mux to internal PHY\00", align 1
@.str.68 = private unnamed_addr constant [27 x i8] c"Switch mux to external PHY\00", align 1
@.str.69 = private unnamed_addr constant [21 x i8] c"Invalid child ID %x\0A\00", align 1
@.str.70 = private unnamed_addr constant [20 x i8] c"EMAC reset timeout\0A\00", align 1
@emac_variant_h3 = internal constant %struct.emac_variant { i32 360448, ptr @sun8i_syscon_reg_field, i8 1, i8 1, i8 1, i8 1, i8 31, i8 7 }, align 4
@emac_variant_v3s = internal constant %struct.emac_variant { i32 229376, ptr @sun8i_syscon_reg_field, i8 1, i8 1, i8 0, i8 0, i8 0, i8 0 }, align 4
@emac_variant_a83t = internal constant %struct.emac_variant { i32 0, ptr @sun8i_syscon_reg_field, i8 0, i8 1, i8 0, i8 1, i8 31, i8 7 }, align 4
@emac_variant_r40 = internal constant %struct.emac_variant { i32 0, ptr @sun8i_ccu_reg_field, i8 0, i8 1, i8 0, i8 1, i8 7, i8 0 }, align 4
@emac_variant_a64 = internal constant %struct.emac_variant { i32 0, ptr @sun8i_syscon_reg_field, i8 0, i8 1, i8 1, i8 1, i8 31, i8 7 }, align 4
@emac_variant_h6 = internal constant %struct.emac_variant { i32 327680, ptr @sun8i_syscon_reg_field, i8 0, i8 1, i8 1, i8 1, i8 31, i8 7 }, align 4
@sun8i_syscon_reg_field = internal constant %struct.reg_field { i32 48, i32 0, i32 31, i32 0, i32 0 }, align 4
@sun8i_ccu_reg_field = internal constant %struct.reg_field { i32 356, i32 0, i32 31, i32 0, i32 0 }, align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author338, ptr @__UNIQUE_ID_description339, ptr @__UNIQUE_ID_file340, ptr @__UNIQUE_ID_license341, ptr @__exitcall_sun8i_dwmac_driver_exit, ptr @__initcall__kmod_dwmac_sun8i__337_1347_sun8i_dwmac_driver_init6, ptr @sun8i_dwmac_driver_exit], section "llvm.metadata"
@switch.table.phy_modes = private unnamed_addr constant [30 x ptr] [ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.60, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sun8i_dwmac_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @sun8i_dwmac_driver, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sun8i_dwmac_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @sun8i_dwmac_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun8i_dwmac_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.of_phandle_args, align 4
  %3 = alloca %struct.stmmac_resources, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(96) %3, i8 0, i32 96, i1 false), !annotation !8
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !8
  %6 = call i32 @stmmac_get_platform_resources(ptr noundef %0, ptr noundef nonnull %3) #7
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %142

8:                                                ; preds = %1
  %9 = call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 32, i32 noundef 3520) #7
  %10 = icmp eq ptr %9, null
  br i1 %10, label %142, label %11

11:                                               ; preds = %8
  %12 = call ptr @of_device_get_match_data(ptr noundef %5) #7
  %13 = getelementptr inbounds %struct.sunxi_priv_data, ptr %9, i32 0, i32 4
  store ptr %12, ptr %13, align 4
  %14 = icmp eq ptr %12, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.1) #8
  br label %142

16:                                               ; preds = %11
  %17 = call ptr @devm_clk_get(ptr noundef %5, ptr noundef nonnull @.str.2) #7
  store ptr %17, ptr %9, align 4
  %18 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.3) #8
  %20 = ptrtoint ptr %17 to i32
  br label %142

21:                                               ; preds = %16
  %22 = call ptr @devm_regulator_get_optional(ptr noundef %5, ptr noundef nonnull @.str.4) #7
  %23 = getelementptr inbounds %struct.sunxi_priv_data, ptr %9, i32 0, i32 2
  store ptr %22, ptr %23, align 4
  %24 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = icmp eq ptr %22, inttoptr (i32 -517 to ptr)
  br i1 %26, label %142, label %27

27:                                               ; preds = %25
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.5) #8
  store ptr null, ptr %23, align 4
  br label %28

28:                                               ; preds = %27, %21
  %29 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %30 = load ptr, ptr %29, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false) #7, !annotation !8
  %31 = call i32 @__of_parse_phandle_with_args(ptr noundef %30, ptr noundef nonnull @.str.6, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %2) #7
  %32 = icmp ne i32 %31, 0
  %33 = load ptr, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #7
  %34 = icmp eq ptr %33, null
  %35 = select i1 %32, i1 true, i1 %34
  br i1 %35, label %46, label %36

36:                                               ; preds = %28
  %37 = call ptr @of_find_device_by_node(ptr noundef nonnull %33) #7
  %38 = icmp eq ptr %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.platform_device, ptr %37, i32 0, i32 3
  %41 = call ptr @dev_get_regmap(ptr noundef %40, ptr noundef null) #7
  %42 = icmp eq ptr %41, null
  call void @platform_device_put(ptr noundef nonnull %37) #7
  br i1 %42, label %43, label %44

43:                                               ; preds = %39, %36
  call void @of_node_put(ptr noundef nonnull %33) #7
  br label %46

44:                                               ; preds = %39
  call void @of_node_put(ptr noundef nonnull %33) #7
  %45 = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  br i1 %45, label %46, label %49

46:                                               ; preds = %44, %43, %28
  %47 = load ptr, ptr %29, align 8
  %48 = call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %47, ptr noundef nonnull @.str.6) #7
  br label %49

49:                                               ; preds = %46, %44
  %50 = phi ptr [ %48, %46 ], [ %41, %44 ]
  %51 = icmp ugt ptr %50, inttoptr (i32 -4096 to ptr)
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = ptrtoint ptr %50 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.7, i32 noundef %53) #8
  br label %142

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.emac_variant, ptr %12, i32 0, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = load i32, ptr %56, align 4
  %58 = insertvalue [5 x i32] undef, i32 %57, 0
  %59 = getelementptr inbounds [5 x i32], ptr %56, i32 0, i32 1
  %60 = load i32, ptr %59, align 4
  %61 = insertvalue [5 x i32] %58, i32 %60, 1
  %62 = getelementptr inbounds [5 x i32], ptr %56, i32 0, i32 2
  %63 = load i32, ptr %62, align 4
  %64 = insertvalue [5 x i32] %61, i32 %63, 2
  %65 = getelementptr inbounds [5 x i32], ptr %56, i32 0, i32 3
  %66 = load i32, ptr %65, align 4
  %67 = insertvalue [5 x i32] %64, i32 %66, 3
  %68 = getelementptr inbounds [5 x i32], ptr %56, i32 0, i32 4
  %69 = load i32, ptr %68, align 4
  %70 = insertvalue [5 x i32] %67, i32 %69, 4
  %71 = call ptr @devm_regmap_field_alloc(ptr noundef %5, ptr noundef %50, [5 x i32] %70) #7
  %72 = getelementptr inbounds %struct.sunxi_priv_data, ptr %9, i32 0, i32 5
  store ptr %71, ptr %72, align 4
  %73 = icmp ugt ptr %71, inttoptr (i32 -4096 to ptr)
  br i1 %73, label %74, label %76

74:                                               ; preds = %54
  %75 = ptrtoint ptr %71 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.8, i32 noundef %75) #8
  br label %142

76:                                               ; preds = %54
  %77 = load ptr, ptr %29, align 8
  %78 = call i32 @of_get_phy_mode(ptr noundef %77, ptr noundef nonnull %4) #7
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %142

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.stmmac_resources, ptr %3, i32 0, i32 1
  %82 = call ptr @stmmac_probe_config_dt(ptr noundef %0, ptr noundef %81) #7
  %83 = icmp ugt ptr %82, inttoptr (i32 -4096 to ptr)
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  %85 = ptrtoint ptr %82 to i32
  br label %142

86:                                               ; preds = %80
  %87 = load i32, ptr %4, align 4
  %88 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %82, i32 0, i32 2
  store i32 %87, ptr %88, align 4
  %89 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %82, i32 0, i32 16
  store i32 2, ptr %89, align 4
  %90 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %82, i32 0, i32 15
  store i32 1, ptr %90, align 4
  %91 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %82, i32 0, i32 59
  store i8 1, ptr %91, align 4
  %92 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %82, i32 0, i32 46
  store ptr %9, ptr %92, align 4
  %93 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %82, i32 0, i32 40
  store ptr @sun8i_dwmac_init, ptr %93, align 4
  %94 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %82, i32 0, i32 41
  store ptr @sun8i_dwmac_exit, ptr %94, align 4
  %95 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %82, i32 0, i32 42
  store ptr @sun8i_dwmac_setup, ptr %95, align 4
  %96 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %82, i32 0, i32 26
  store i32 4096, ptr %96, align 4
  %97 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %82, i32 0, i32 27
  store i32 16384, ptr %97, align 4
  %98 = call fastcc i32 @sun8i_dwmac_set_syscon(ptr noundef %5, ptr noundef %82)
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %140

100:                                              ; preds = %86
  %101 = load ptr, ptr %92, align 4
  %102 = call i32 @sun8i_dwmac_init(ptr noundef %0, ptr noundef %101)
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %134

104:                                              ; preds = %100
  %105 = call i32 @stmmac_dvr_probe(ptr noundef %5, ptr noundef %82, ptr noundef nonnull %3) #7
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %132

107:                                              ; preds = %104
  %108 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %109 = load ptr, ptr %108, align 8
  %110 = getelementptr i8, ptr %109, i32 1408
  %111 = load ptr, ptr %13, align 4
  %112 = getelementptr inbounds %struct.emac_variant, ptr %111, i32 0, i32 2
  %113 = load i8, ptr %112, align 4, !range !9
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %126, label %115

115:                                              ; preds = %107
  %116 = call fastcc i32 @get_ephy_nodes(ptr noundef %110)
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %129

118:                                              ; preds = %115
  %119 = call fastcc i32 @sun8i_dwmac_register_mdio_mux(ptr noundef %110)
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %142, label %121

121:                                              ; preds = %118
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.9) #8
  %122 = getelementptr inbounds %struct.sunxi_priv_data, ptr %9, i32 0, i32 3
  %123 = load ptr, ptr %122, align 4
  call void @reset_control_put(ptr noundef %123) #7
  %124 = getelementptr inbounds %struct.sunxi_priv_data, ptr %9, i32 0, i32 1
  %125 = load ptr, ptr %124, align 4
  call void @clk_put(ptr noundef %125) #7
  br label %129

126:                                              ; preds = %107
  %127 = call fastcc i32 @sun8i_dwmac_reset(ptr noundef %110)
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %142, label %129

129:                                              ; preds = %126, %121, %115
  %130 = phi i32 [ %116, %115 ], [ %119, %121 ], [ %127, %126 ]
  %131 = call i32 @stmmac_dvr_remove(ptr noundef %5) #7
  br label %132

132:                                              ; preds = %129, %104
  %133 = phi i32 [ %105, %104 ], [ %130, %129 ]
  call void @sun8i_dwmac_exit(ptr noundef %0, ptr noundef nonnull %9)
  br label %134

134:                                              ; preds = %132, %100
  %135 = phi i32 [ %102, %100 ], [ %133, %132 ]
  %136 = load ptr, ptr %13, align 4
  %137 = load i32, ptr %136, align 4
  %138 = load ptr, ptr %72, align 4
  %139 = call i32 @regmap_field_update_bits_base(ptr noundef %138, i32 noundef -1, i32 noundef %137, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %140

140:                                              ; preds = %134, %86
  %141 = phi i32 [ %98, %86 ], [ %135, %134 ]
  call void @stmmac_remove_config_dt(ptr noundef %0, ptr noundef %82) #7
  br label %142

142:                                              ; preds = %140, %126, %118, %84, %76, %74, %52, %25, %19, %15, %8, %1
  %143 = phi i32 [ %20, %19 ], [ %53, %52 ], [ %75, %74 ], [ %85, %84 ], [ %141, %140 ], [ -22, %15 ], [ %6, %1 ], [ -12, %8 ], [ -517, %25 ], [ -22, %76 ], [ 0, %126 ], [ 0, %118 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %3) #7
  ret i32 %143
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun8i_dwmac_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 12096
  %5 = load ptr, ptr %4, align 64
  %6 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %5, i32 0, i32 46
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.sunxi_priv_data, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.emac_variant, ptr %9, i32 0, i32 2
  %11 = load i8, ptr %10, align 4, !range !9
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %30, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.sunxi_priv_data, ptr %7, i32 0, i32 8
  %15 = load ptr, ptr %14, align 4
  tail call void @mdio_mux_uninit(ptr noundef %15) #7
  %16 = getelementptr inbounds %struct.sunxi_priv_data, ptr %7, i32 0, i32 6
  %17 = load i8, ptr %16, align 4, !range !9
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.sunxi_priv_data, ptr %7, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  tail call void @clk_disable(ptr noundef %21) #7
  tail call void @clk_unprepare(ptr noundef %21) #7
  %22 = getelementptr inbounds %struct.sunxi_priv_data, ptr %7, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 @reset_control_assert(ptr noundef %23) #7
  store i8 0, ptr %16, align 4
  br label %25

25:                                               ; preds = %19, %13
  %26 = getelementptr inbounds %struct.sunxi_priv_data, ptr %7, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  tail call void @reset_control_put(ptr noundef %27) #7
  %28 = getelementptr inbounds %struct.sunxi_priv_data, ptr %7, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  tail call void @clk_put(ptr noundef %29) #7
  br label %30

30:                                               ; preds = %25, %1
  %31 = tail call i32 @stmmac_pltfr_remove(ptr noundef %0) #7
  %32 = load ptr, ptr %8, align 4
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.sunxi_priv_data, ptr %7, i32 0, i32 5
  %35 = load ptr, ptr %34, align 4
  %36 = tail call i32 @regmap_field_update_bits_base(ptr noundef %35, i32 noundef -1, i32 noundef %33, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sun8i_dwmac_shutdown(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 12096
  %5 = load ptr, ptr %4, align 64
  %6 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %5, i32 0, i32 46
  %7 = load ptr, ptr %6, align 4
  tail call void @sun8i_dwmac_exit(ptr noundef %0, ptr noundef %7)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_get_platform_resources(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regmap_field_alloc(ptr noundef, ptr noundef, [5 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_phy_mode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @stmmac_probe_config_dt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun8i_dwmac_init(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.sunxi_priv_data, ptr %1, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = tail call i32 @regulator_enable(ptr noundef nonnull %6) #7
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.10) #8
  br label %40

13:                                               ; preds = %8, %2
  %14 = load ptr, ptr %1, align 4
  %15 = tail call i32 @clk_prepare(ptr noundef %14) #7
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = tail call i32 @clk_enable(ptr noundef %14) #7
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  tail call void @clk_unprepare(ptr noundef %14) #7
  br label %21

21:                                               ; preds = %20, %13
  %22 = phi i32 [ %18, %20 ], [ %15, %13 ]
  %23 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.11) #8
  br label %34

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.sunxi_priv_data, ptr %1, i32 0, i32 7
  %26 = load i8, ptr %25, align 1, !range !9
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %40, label %28

28:                                               ; preds = %24
  %29 = getelementptr i8, ptr %4, i32 1408
  %30 = tail call fastcc i32 @sun8i_dwmac_power_internal_phy(ptr noundef %29)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr %1, align 4
  tail call void @clk_disable(ptr noundef %33) #7
  tail call void @clk_unprepare(ptr noundef %33) #7
  br label %34

34:                                               ; preds = %32, %21
  %35 = phi i32 [ %22, %21 ], [ %30, %32 ]
  %36 = load ptr, ptr %5, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %34
  %39 = tail call i32 @regulator_disable(ptr noundef nonnull %36) #7
  br label %40

40:                                               ; preds = %38, %34, %28, %24, %11
  %41 = phi i32 [ %9, %11 ], [ 0, %28 ], [ 0, %24 ], [ %35, %38 ], [ %35, %34 ]
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sun8i_dwmac_exit(ptr nocapture noundef readnone %0, ptr nocapture noundef %1) #2 {
  %3 = getelementptr inbounds %struct.sunxi_priv_data, ptr %1, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.emac_variant, ptr %4, i32 0, i32 2
  %6 = load i8, ptr %5, align 4, !range !9
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %18, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.sunxi_priv_data, ptr %1, i32 0, i32 6
  %10 = load i8, ptr %9, align 4, !range !9
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.sunxi_priv_data, ptr %1, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  tail call void @clk_disable(ptr noundef %14) #7
  tail call void @clk_unprepare(ptr noundef %14) #7
  %15 = getelementptr inbounds %struct.sunxi_priv_data, ptr %1, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @reset_control_assert(ptr noundef %16) #7
  store i8 0, ptr %9, align 4
  br label %18

18:                                               ; preds = %12, %8, %2
  %19 = load ptr, ptr %1, align 4
  tail call void @clk_disable(ptr noundef %19) #7
  tail call void @clk_unprepare(ptr noundef %19) #7
  %20 = getelementptr inbounds %struct.sunxi_priv_data, ptr %1, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %18
  %24 = tail call i32 @regulator_disable(ptr noundef nonnull %21) #7
  br label %25

25:                                               ; preds = %23, %18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal noalias ptr @sun8i_dwmac_setup(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 15
  %3 = load ptr, ptr %2, align 8
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 292, i32 noundef 3520) #7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %31, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 13
  %8 = load ptr, ptr %7, align 32
  %9 = getelementptr inbounds %struct.mac_device_info, ptr %4, i32 0, i32 10
  store ptr %8, ptr %9, align 4
  store ptr @sun8i_dwmac_ops, ptr %4, align 4
  %10 = getelementptr inbounds %struct.mac_device_info, ptr %4, i32 0, i32 2
  store ptr @sun8i_dwmac_dma_ops, ptr %10, align 4
  %11 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 14
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 15
  %14 = load i64, ptr %13, align 16
  %15 = or i64 %14, 4096
  store i64 %15, ptr %13, align 16
  %16 = getelementptr inbounds %struct.mac_device_info, ptr %4, i32 0, i32 9
  store i32 14, ptr %16, align 4
  %17 = getelementptr inbounds %struct.mac_device_info, ptr %4, i32 0, i32 9, i32 1
  store i32 8, ptr %17, align 4
  %18 = getelementptr inbounds %struct.mac_device_info, ptr %4, i32 0, i32 9, i32 2
  store i32 12, ptr %18, align 4
  %19 = getelementptr inbounds %struct.mac_device_info, ptr %4, i32 0, i32 9, i32 3
  store i32 0, ptr %19, align 4
  %20 = getelementptr inbounds %struct.mac_device_info, ptr %4, i32 0, i32 9, i32 5
  store i32 1, ptr %20, align 4
  %21 = getelementptr inbounds %struct.mac_device_info, ptr %4, i32 0, i32 8
  store i32 72, ptr %21, align 4
  %22 = getelementptr inbounds %struct.mac_device_info, ptr %4, i32 0, i32 8, i32 1
  store i32 76, ptr %22, align 4
  %23 = getelementptr inbounds %struct.mac_device_info, ptr %4, i32 0, i32 8, i32 3
  store i32 4, ptr %23, align 4
  %24 = getelementptr inbounds %struct.mac_device_info, ptr %4, i32 0, i32 8, i32 5
  store i32 496, ptr %24, align 4
  %25 = getelementptr inbounds %struct.mac_device_info, ptr %4, i32 0, i32 8, i32 2
  store i32 12, ptr %25, align 4
  %26 = getelementptr inbounds %struct.mac_device_info, ptr %4, i32 0, i32 8, i32 4
  store i32 126976, ptr %26, align 4
  %27 = getelementptr inbounds %struct.mac_device_info, ptr %4, i32 0, i32 8, i32 6
  store i32 20, ptr %27, align 4
  %28 = getelementptr inbounds %struct.mac_device_info, ptr %4, i32 0, i32 8, i32 7
  store i32 7340032, ptr %28, align 4
  %29 = getelementptr inbounds %struct.mac_device_info, ptr %4, i32 0, i32 12
  store i32 8, ptr %29, align 4
  %30 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 40
  store i32 0, ptr %30, align 8
  br label %31

31:                                               ; preds = %6, %1
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sun8i_dwmac_set_syscon(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %1, i32 0, i32 46
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !8
  %9 = getelementptr inbounds %struct.sunxi_priv_data, ptr %6, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = call i32 @regmap_field_read(ptr noundef %10, ptr noundef nonnull %4) #7
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.17) #8
  br label %124

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.sunxi_priv_data, ptr %6, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = load i32, ptr %16, align 4
  %18 = load i32, ptr %4, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %22, label %20

20:                                               ; preds = %14
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.18, i32 noundef %18, i32 noundef %17) #8
  %21 = load ptr, ptr %15, align 4
  br label %22

22:                                               ; preds = %20, %14
  %23 = phi ptr [ %21, %20 ], [ %16, %14 ]
  %24 = getelementptr inbounds %struct.emac_variant, ptr %23, i32 0, i32 2
  %25 = load i8, ptr %24, align 4, !range !9
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %50, label %27

27:                                               ; preds = %22
  %28 = call ptr @of_find_property(ptr noundef %8, ptr noundef nonnull @.str.19, ptr noundef null) #7
  %29 = icmp eq ptr %28, null
  %30 = and i32 %17, -1441793
  %31 = select i1 %29, i32 0, i32 131072
  %32 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %1, i32 0, i32 5
  %33 = load ptr, ptr %32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !8
  %34 = call i32 @of_property_read_variable_u32_array(ptr noundef %33, ptr noundef nonnull @.str.28, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #7
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = getelementptr inbounds %struct.device_node, ptr %33, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.29, ptr noundef %38) #8
  br label %45

39:                                               ; preds = %27
  %40 = load i32, ptr %3, align 4
  %41 = icmp ugt i32 %40, 31
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.device_node, ptr %33, i32 0, i32 2
  %44 = load ptr, ptr %43, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.30, ptr noundef %44, i32 noundef %40) #8
  br label %45

45:                                               ; preds = %42, %36
  %46 = phi i32 [ -22, %42 ], [ %34, %36 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.20) #8
  br label %124

47:                                               ; preds = %39
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  %48 = or i32 %30, %31
  %49 = or i32 %48, 1310720
  br label %52

50:                                               ; preds = %22
  %51 = and i32 %17, -32769
  br label %52

52:                                               ; preds = %50, %47
  %53 = phi i32 [ %49, %47 ], [ %51, %50 ]
  %54 = call i32 @of_property_read_variable_u32_array(ptr noundef %8, ptr noundef nonnull @.str.21, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #7
  %55 = icmp sgt i32 %54, -1
  br i1 %55, label %56, label %77

56:                                               ; preds = %52
  %57 = load i32, ptr %4, align 4
  %58 = freeze i32 %57
  %59 = udiv i32 %58, 100
  %60 = mul i32 %59, 100
  %61 = sub i32 %58, %60
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.22) #8
  br label %124

64:                                               ; preds = %56
  store i32 %59, ptr %4, align 4
  %65 = load ptr, ptr %15, align 4
  %66 = getelementptr inbounds %struct.emac_variant, ptr %65, i32 0, i32 7
  %67 = load i8, ptr %66, align 1
  %68 = zext i8 %67 to i32
  %69 = icmp ugt i32 %59, %68
  br i1 %69, label %76, label %70

70:                                               ; preds = %64
  %71 = shl nuw nsw i32 %68, 10
  %72 = xor i32 %71, -1
  %73 = and i32 %53, %72
  %74 = shl i32 %59, 10
  %75 = or i32 %73, %74
  br label %77

76:                                               ; preds = %64
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.23, i32 noundef %59) #8
  br label %124

77:                                               ; preds = %70, %52
  %78 = phi i32 [ %53, %52 ], [ %75, %70 ]
  %79 = call i32 @of_property_read_variable_u32_array(ptr noundef %8, ptr noundef nonnull @.str.24, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #7
  %80 = icmp sgt i32 %79, -1
  br i1 %80, label %83, label %81

81:                                               ; preds = %77
  %82 = load ptr, ptr %15, align 4
  br label %104

83:                                               ; preds = %77
  %84 = load i32, ptr %4, align 4
  %85 = freeze i32 %84
  %86 = udiv i32 %85, 100
  %87 = mul i32 %86, 100
  %88 = sub i32 %85, %87
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %83
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.25) #8
  br label %124

91:                                               ; preds = %83
  store i32 %86, ptr %4, align 4
  %92 = load ptr, ptr %15, align 4
  %93 = getelementptr inbounds %struct.emac_variant, ptr %92, i32 0, i32 6
  %94 = load i8, ptr %93, align 4
  %95 = zext i8 %94 to i32
  %96 = icmp ugt i32 %86, %95
  br i1 %96, label %103, label %97

97:                                               ; preds = %91
  %98 = shl nuw nsw i32 %95, 5
  %99 = xor i32 %98, -1
  %100 = and i32 %78, %99
  %101 = shl nuw nsw i32 %86, 5
  %102 = or i32 %100, %101
  br label %104

103:                                              ; preds = %91
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.26, i32 noundef %86) #8
  br label %124

104:                                              ; preds = %97, %81
  %105 = phi ptr [ %82, %81 ], [ %92, %97 ]
  %106 = phi i32 [ %78, %81 ], [ %102, %97 ]
  %107 = getelementptr inbounds %struct.emac_variant, ptr %105, i32 0, i32 4
  %108 = load i8, ptr %107, align 2, !range !9
  %109 = icmp eq i8 %108, 0
  %110 = select i1 %109, i32 -8, i32 -8200
  %111 = and i32 %110, %106
  %112 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %1, i32 0, i32 2
  %113 = load i32, ptr %112, align 4
  switch i32 %113, label %118 [
    i32 2, label %120
    i32 9, label %114
    i32 10, label %114
    i32 11, label %114
    i32 12, label %114
    i32 7, label %116
  ]

114:                                              ; preds = %104, %104, %104, %104
  %115 = or i32 %111, 6
  br label %120

116:                                              ; preds = %104
  %117 = or i32 %111, 8193
  br label %120

118:                                              ; preds = %104
  %119 = call fastcc ptr @phy_modes(i32 noundef %113)
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.27, ptr noundef nonnull %119) #8
  br label %124

120:                                              ; preds = %116, %114, %104
  %121 = phi i32 [ %117, %116 ], [ %115, %114 ], [ %111, %104 ]
  %122 = load ptr, ptr %9, align 4
  %123 = call i32 @regmap_field_update_bits_base(ptr noundef %122, i32 noundef -1, i32 noundef %121, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %124

124:                                              ; preds = %120, %118, %103, %90, %76, %63, %45, %13
  %125 = phi i32 [ %11, %13 ], [ %46, %45 ], [ -22, %118 ], [ 0, %120 ], [ -22, %90 ], [ -22, %103 ], [ -22, %63 ], [ -22, %76 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  ret i32 %125
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_dvr_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @get_ephy_nodes(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 36
  %3 = load ptr, ptr %2, align 64
  %4 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %3, i32 0, i32 46
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 25
  %9 = load ptr, ptr %8, align 8
  %10 = tail call ptr @of_get_child_by_name(ptr noundef %9, ptr noundef nonnull @.str.62) #7
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load ptr, ptr %6, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.63) #8
  br label %41

14:                                               ; preds = %1
  %15 = tail call ptr @of_get_compatible_child(ptr noundef nonnull %10, ptr noundef nonnull @.str.64) #7
  tail call void @of_node_put(ptr noundef nonnull %10) #7
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load ptr, ptr %6, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.65) #8
  br label %41

19:                                               ; preds = %14
  %20 = tail call ptr @of_get_next_child(ptr noundef nonnull %15, ptr noundef null) #7
  %21 = icmp eq ptr %20, null
  br i1 %21, label %40, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.sunxi_priv_data, ptr %5, i32 0, i32 1
  %24 = getelementptr inbounds %struct.sunxi_priv_data, ptr %5, i32 0, i32 3
  br label %25

25:                                               ; preds = %37, %22
  %26 = phi ptr [ %20, %22 ], [ %38, %37 ]
  %27 = tail call ptr @of_clk_get(ptr noundef nonnull %26, i32 noundef 0) #7
  store ptr %27, ptr %23, align 4
  %28 = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  br i1 %28, label %37, label %29

29:                                               ; preds = %25
  %30 = tail call ptr @__of_reset_control_get(ptr noundef nonnull %26, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #7
  store ptr %30, ptr %24, align 4
  %31 = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = icmp eq ptr %30, inttoptr (i32 -517 to ptr)
  br i1 %33, label %34, label %37

34:                                               ; preds = %32
  tail call void @of_node_put(ptr noundef nonnull %26) #7
  tail call void @of_node_put(ptr noundef nonnull %15) #7
  br label %41

35:                                               ; preds = %29
  %36 = load ptr, ptr %6, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %36, ptr noundef nonnull @.str.66) #8
  tail call void @of_node_put(ptr noundef nonnull %26) #7
  tail call void @of_node_put(ptr noundef nonnull %15) #7
  br label %41

37:                                               ; preds = %32, %25
  %38 = tail call ptr @of_get_next_child(ptr noundef nonnull %15, ptr noundef nonnull %26) #7
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %25

40:                                               ; preds = %37, %19
  tail call void @of_node_put(ptr noundef nonnull %15) #7
  br label %41

41:                                               ; preds = %40, %35, %34, %17, %12
  %42 = phi i32 [ -517, %34 ], [ 0, %35 ], [ -19, %40 ], [ -19, %17 ], [ -19, %12 ]
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sun8i_dwmac_register_mdio_mux(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 36
  %3 = load ptr, ptr %2, align 64
  %4 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %3, i32 0, i32 46
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 25
  %9 = load ptr, ptr %8, align 8
  %10 = tail call ptr @of_get_child_by_name(ptr noundef %9, ptr noundef nonnull @.str.62) #7
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = load ptr, ptr %6, align 8
  %14 = getelementptr inbounds %struct.sunxi_priv_data, ptr %5, i32 0, i32 8
  %15 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 30
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @mdio_mux_init(ptr noundef %13, ptr noundef nonnull %10, ptr noundef nonnull @mdio_mux_syscon_switch_fn, ptr noundef %14, ptr noundef %0, ptr noundef %16) #7
  br label %18

18:                                               ; preds = %12, %1
  %19 = phi i32 [ %17, %12 ], [ -19, %1 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sun8i_dwmac_reset(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 13
  %3 = load ptr, ptr %2, align 32
  %4 = getelementptr i8, ptr %3, i32 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !12
  tail call void @arm_heavy_mb() #7
  %6 = or i32 %5, 1
  %7 = load ptr, ptr %2, align 32
  %8 = getelementptr i8, ptr %7, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #7, !srcloc !13
  %9 = tail call i64 @ktime_get() #7
  %10 = add i64 %9, 100000000
  %11 = load ptr, ptr %2, align 32
  %12 = getelementptr i8, ptr %11, i32 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !14
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %34, label %16

16:                                               ; preds = %19, %1
  %17 = tail call i64 @ktime_get() #7
  %18 = icmp sgt i64 %17, %10
  br i1 %18, label %25, label %19

19:                                               ; preds = %16
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #7
  %20 = load ptr, ptr %2, align 32
  %21 = getelementptr i8, ptr %20, i32 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !14
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %34, label %16

25:                                               ; preds = %16
  %26 = load ptr, ptr %2, align 32
  %27 = getelementptr i8, ptr %26, i32 4
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !15
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 15
  %33 = load ptr, ptr %32, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.70) #8
  br label %34

34:                                               ; preds = %31, %25, %19, %1
  %35 = phi i32 [ -110, %31 ], [ 0, %25 ], [ 0, %1 ], [ 0, %19 ]
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @reset_control_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_dvr_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @stmmac_remove_config_dt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sun8i_dwmac_power_internal_phy(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 36
  %3 = load ptr, ptr %2, align 64
  %4 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %3, i32 0, i32 46
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.sunxi_priv_data, ptr %5, i32 0, i32 6
  %7 = load i8, ptr %6, align 4, !range !9
  %8 = icmp eq i8 %7, 0
  %9 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 15
  %10 = load ptr, ptr %9, align 8
  br i1 %8, label %12, label %11

11:                                               ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %10, ptr noundef nonnull @.str.12) #8
  br label %33

12:                                               ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str.13) #8
  %13 = getelementptr inbounds %struct.sunxi_priv_data, ptr %5, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 @clk_prepare(ptr noundef %14) #7
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = tail call i32 @clk_enable(ptr noundef %14) #7
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  tail call void @clk_unprepare(ptr noundef %14) #7
  br label %21

21:                                               ; preds = %20, %12
  %22 = phi i32 [ %18, %20 ], [ %15, %12 ]
  %23 = load ptr, ptr %9, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.14) #8
  br label %33

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.sunxi_priv_data, ptr %5, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 @reset_control_reset(ptr noundef %26) #7
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load ptr, ptr %9, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.15) #8
  %31 = load ptr, ptr %13, align 4
  tail call void @clk_disable(ptr noundef %31) #7
  tail call void @clk_unprepare(ptr noundef %31) #7
  br label %33

32:                                               ; preds = %24
  store i8 1, ptr %6, align 4
  br label %33

33:                                               ; preds = %32, %29, %21, %11
  %34 = phi i32 [ 0, %11 ], [ %22, %21 ], [ %27, %29 ], [ 0, %32 ]
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sun8i_dwmac_unpower_internal_phy(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.sunxi_priv_data, ptr %0, i32 0, i32 6
  %3 = load i8, ptr %2, align 4, !range !9
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.sunxi_priv_data, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  tail call void @clk_disable(ptr noundef %7) #7
  tail call void @clk_unprepare(ptr noundef %7) #7
  %8 = getelementptr inbounds %struct.sunxi_priv_data, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @reset_control_assert(ptr noundef %9) #7
  store i8 0, ptr %2, align 4
  br label %11

11:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sun8i_dwmac_core_init(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !16
  tail call void @arm_heavy_mb() #7
  %5 = getelementptr i8, ptr %4, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 134217728) #7, !srcloc !13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sun8i_dwmac_set_mac(ptr noundef %0, i1 noundef zeroext %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 16
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !17
  %5 = getelementptr i8, ptr %0, i32 36
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !18
  %7 = and i32 %4, 2147483647
  %8 = and i32 %6, 2147483647
  %9 = select i1 %1, i32 -2147483648, i32 0
  %10 = or i32 %8, %9
  %11 = or i32 %7, %9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !19
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %11) #7, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !20
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %10) #7, !srcloc !13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun8i_dwmac_rx_ipc_enable(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 36
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !21
  %6 = or i32 %5, 134217728
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !22
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %6) #7, !srcloc !13
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sun8i_dwmac_dump_mac_regs(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  br label %5

5:                                                ; preds = %13, %2
  %6 = phi i32 [ 0, %2 ], [ %14, %13 ]
  %7 = icmp eq i32 %6, 60
  br i1 %7, label %13, label %8

8:                                                ; preds = %5
  %9 = getelementptr i8, ptr %4, i32 %6
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !23
  %11 = lshr exact i32 %6, 2
  %12 = getelementptr i32, ptr %1, i32 %11
  store i32 %10, ptr %12, align 4
  br label %13

13:                                               ; preds = %8, %5
  %14 = add nuw nsw i32 %6, 4
  %15 = icmp ult i32 %6, 196
  br i1 %15, label %5, label %16

16:                                               ; preds = %13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sun8i_dwmac_set_filter(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 60
  %6 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 60, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 61
  %9 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 61, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %7, 1
  %12 = add i32 %11, %10
  %13 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 14
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 256
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %92

17:                                               ; preds = %2
  %18 = and i32 %14, 512
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %92

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 12
  %22 = load i32, ptr %21, align 4
  %23 = icmp ugt i32 %12, %22
  br i1 %23, label %86, label %24

24:                                               ; preds = %20
  %25 = icmp eq i32 %10, 0
  br i1 %25, label %56, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr %8, align 4
  %28 = icmp eq ptr %27, %8
  br i1 %28, label %56, label %29

29:                                               ; preds = %52, %26
  %30 = phi ptr [ %53, %52 ], [ %4, %26 ]
  %31 = phi ptr [ %50, %52 ], [ %27, %26 ]
  %32 = phi i32 [ %49, %52 ], [ 1, %26 ]
  %33 = getelementptr inbounds %struct.netdev_hw_addr, ptr %31, i32 0, i32 2
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !24
  tail call void @arm_heavy_mb() #7
  %36 = shl i32 %32, 3
  %37 = add i32 %36, 80
  %38 = getelementptr i8, ptr %30, i32 %37
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 0) #7, !srcloc !13
  br label %48

39:                                               ; preds = %29
  %40 = shl i32 %32, 3
  %41 = add i32 %40, 80
  %42 = add i32 %40, 84
  tail call void @stmmac_set_mac_addr(ptr noundef %30, ptr noundef nonnull %33, i32 noundef %41, i32 noundef %42) #7
  %43 = icmp eq i32 %32, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %39
  %45 = getelementptr i8, ptr %30, i32 %41
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !25
  %47 = or i32 %46, -2147483648
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !26
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %47) #7, !srcloc !13
  br label %48

48:                                               ; preds = %44, %39, %35
  %49 = add i32 %32, 1
  %50 = load ptr, ptr %31, align 4
  %51 = icmp eq ptr %50, %8
  br i1 %51, label %54, label %52

52:                                               ; preds = %48
  %53 = load ptr, ptr %3, align 4
  br label %29

54:                                               ; preds = %48
  %55 = load i32, ptr %6, align 4
  br label %56

56:                                               ; preds = %54, %26, %24
  %57 = phi i32 [ %7, %24 ], [ %7, %26 ], [ %55, %54 ]
  %58 = phi i32 [ 1, %24 ], [ 1, %26 ], [ %49, %54 ]
  %59 = icmp eq i32 %57, 0
  br i1 %59, label %92, label %60

60:                                               ; preds = %56
  %61 = load ptr, ptr %5, align 4
  %62 = icmp eq ptr %61, %5
  br i1 %62, label %92, label %63

63:                                               ; preds = %82, %60
  %64 = phi ptr [ %84, %82 ], [ %61, %60 ]
  %65 = phi i32 [ %83, %82 ], [ %58, %60 ]
  %66 = getelementptr inbounds %struct.netdev_hw_addr, ptr %64, i32 0, i32 2
  %67 = load ptr, ptr %3, align 4
  %68 = icmp eq ptr %66, null
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !24
  tail call void @arm_heavy_mb() #7
  %70 = shl i32 %65, 3
  %71 = add i32 %70, 80
  %72 = getelementptr i8, ptr %67, i32 %71
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 0) #7, !srcloc !13
  br label %82

73:                                               ; preds = %63
  %74 = shl i32 %65, 3
  %75 = add i32 %74, 80
  %76 = add i32 %74, 84
  tail call void @stmmac_set_mac_addr(ptr noundef %67, ptr noundef nonnull %66, i32 noundef %75, i32 noundef %76) #7
  %77 = icmp eq i32 %65, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %73
  %79 = getelementptr i8, ptr %67, i32 %75
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %79) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !25
  %81 = or i32 %80, -2147483648
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !26
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %79, i32 %81) #7, !srcloc !13
  br label %82

82:                                               ; preds = %78, %73, %69
  %83 = add i32 %65, 1
  %84 = load ptr, ptr %64, align 4
  %85 = icmp eq ptr %84, %5
  br i1 %85, label %92, label %63

86:                                               ; preds = %20
  %87 = getelementptr i8, ptr %4, i32 56
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %87) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !27
  %89 = and i32 %88, 1
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.16) #8
  br label %92

92:                                               ; preds = %91, %86, %82, %60, %56, %17, %2
  %93 = phi i32 [ %58, %56 ], [ 1, %2 ], [ 1, %17 ], [ 1, %91 ], [ 1, %86 ], [ %58, %60 ], [ %83, %82 ]
  %94 = phi i32 [ 8192, %56 ], [ 1, %2 ], [ 73728, %17 ], [ 1, %91 ], [ 1, %86 ], [ 8192, %60 ], [ 8192, %82 ]
  %95 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 12
  %96 = load i32, ptr %95, align 4
  %97 = icmp ult i32 %93, %96
  br i1 %97, label %98, label %107

98:                                               ; preds = %98, %92
  %99 = phi i32 [ %100, %98 ], [ %93, %92 ]
  %100 = add nuw i32 %99, 1
  %101 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !24
  tail call void @arm_heavy_mb() #7
  %102 = shl i32 %99, 3
  %103 = add i32 %102, 80
  %104 = getelementptr i8, ptr %101, i32 %103
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %104, i32 0) #7, !srcloc !13
  %105 = load i32, ptr %95, align 4
  %106 = icmp ult i32 %100, %105
  br i1 %106, label %98, label %107

107:                                              ; preds = %98, %92
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !28
  tail call void @arm_heavy_mb() #7
  %108 = getelementptr i8, ptr %4, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %108, i32 %94) #7, !srcloc !13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sun8i_dwmac_flow_ctrl(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #2 {
  %6 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 36
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !29
  %10 = icmp eq i32 %2, 3
  %11 = and i32 %9, -65537
  %12 = select i1 %10, i32 65536, i32 0
  %13 = or i32 %11, %12
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %13) #7, !srcloc !13
  %14 = getelementptr i8, ptr %7, i32 28
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !31
  %16 = and i32 %15, -2
  %17 = zext i1 %10 to i32
  %18 = or i32 %16, %17
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !32
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %18) #7, !srcloc !13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sun8i_dwmac_set_umac_addr(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %1, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !24
  tail call void @arm_heavy_mb() #7
  %8 = shl i32 %2, 3
  %9 = add i32 %8, 80
  %10 = getelementptr i8, ptr %5, i32 %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 0) #7, !srcloc !13
  br label %20

11:                                               ; preds = %3
  %12 = shl i32 %2, 3
  %13 = add i32 %12, 80
  %14 = add i32 %12, 84
  tail call void @stmmac_set_mac_addr(ptr noundef %5, ptr noundef nonnull %1, i32 noundef %13, i32 noundef %14) #7
  %15 = icmp eq i32 %2, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %11
  %17 = getelementptr i8, ptr %5, i32 %13
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !25
  %19 = or i32 %18, -2147483648
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !26
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %19) #7, !srcloc !13
  br label %20

20:                                               ; preds = %16, %11, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sun8i_dwmac_get_umac_addr(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.mac_device_info, ptr %0, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = shl i32 %2, 3
  %7 = add i32 %6, 80
  %8 = add i32 %6, 84
  tail call void @stmmac_get_mac_addr(ptr noundef %5, ptr noundef %1, i32 noundef %7, i32 noundef %8) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sun8i_dwmac_set_mac_loopback(ptr noundef %0, i1 noundef zeroext %1) #2 {
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !33
  %4 = and i32 %3, -3
  %5 = select i1 %1, i32 2, i32 0
  %6 = or i32 %4, %5
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !34
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %0, i32 %6) #7, !srcloc !13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @stmmac_set_mac_addr(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @stmmac_get_mac_addr(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun8i_dwmac_dma_reset(ptr noundef %0) #2 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !35
  tail call void @arm_heavy_mb() #7
  %2 = getelementptr i8, ptr %0, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 0) #7, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !36
  tail call void @arm_heavy_mb() #7
  %3 = getelementptr i8, ptr %0, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 0) #7, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !37
  tail call void @arm_heavy_mb() #7
  %4 = getelementptr i8, ptr %0, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 0) #7, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !38
  tail call void @arm_heavy_mb() #7
  %5 = getelementptr i8, ptr %0, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 0) #7, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !39
  tail call void @arm_heavy_mb() #7
  %6 = getelementptr i8, ptr %0, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 0) #7, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !40
  tail call void @arm_heavy_mb() #7
  %7 = getelementptr i8, ptr %0, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 0) #7, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !41
  tail call void @arm_heavy_mb() #7
  %8 = getelementptr i8, ptr %0, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 33554431) #7, !srcloc !13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sun8i_dwmac_dma_init(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #2 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  %4 = getelementptr i8, ptr %0, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 257) #7, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !43
  tail call void @arm_heavy_mb() #7
  %5 = getelementptr i8, ptr %0, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 33554431) #7, !srcloc !13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sun8i_dwmac_dma_init_rx(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2, i32 noundef %3) #2 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !44
  tail call void @arm_heavy_mb() #7
  %5 = getelementptr i8, ptr %0, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %2) #7, !srcloc !13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sun8i_dwmac_dma_init_tx(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2, i32 noundef %3) #2 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !45
  tail call void @arm_heavy_mb() #7
  %5 = getelementptr i8, ptr %0, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %2) #7, !srcloc !13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sun8i_dwmac_dump_regs(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  br label %3

3:                                                ; preds = %11, %2
  %4 = phi i32 [ 0, %2 ], [ %12, %11 ]
  %5 = icmp eq i32 %4, 60
  br i1 %5, label %11, label %6

6:                                                ; preds = %3
  %7 = getelementptr i8, ptr %0, i32 %4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !46
  %9 = lshr exact i32 %4, 2
  %10 = getelementptr i32, ptr %1, i32 %9
  store i32 %8, ptr %10, align 4
  br label %11

11:                                               ; preds = %6, %3
  %12 = add nuw nsw i32 %4, 4
  %13 = icmp ult i32 %4, 196
  br i1 %13, label %3, label %14

14:                                               ; preds = %11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sun8i_dwmac_dma_operation_mode_rx(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4) #2 {
  %6 = getelementptr i8, ptr %0, i32 40
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !47
  %8 = icmp eq i32 %1, 1
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = or i32 %7, 2
  br label %26

11:                                               ; preds = %5
  %12 = and i32 %7, -51
  %13 = icmp slt i32 %1, 32
  br i1 %13, label %26, label %14

14:                                               ; preds = %11
  %15 = icmp ult i32 %1, 64
  br i1 %15, label %16, label %18

16:                                               ; preds = %14
  %17 = or i32 %12, 16
  br label %26

18:                                               ; preds = %14
  %19 = icmp ult i32 %1, 96
  br i1 %19, label %20, label %22

20:                                               ; preds = %18
  %21 = or i32 %12, 32
  br label %26

22:                                               ; preds = %18
  %23 = icmp ult i32 %1, 128
  %24 = or i32 %12, 48
  %25 = select i1 %23, i32 %24, i32 %12
  br label %26

26:                                               ; preds = %22, %20, %16, %11, %9
  %27 = phi i32 [ %10, %9 ], [ %17, %16 ], [ %21, %20 ], [ %12, %11 ], [ %25, %22 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %27) #7, !srcloc !13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sun8i_dwmac_dma_operation_mode_tx(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4) #2 {
  %6 = getelementptr i8, ptr %0, i32 20
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !49
  %8 = icmp eq i32 %1, 1
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = or i32 %7, 6
  br label %26

11:                                               ; preds = %5
  %12 = and i32 %7, -1795
  %13 = icmp slt i32 %1, 64
  br i1 %13, label %26, label %14

14:                                               ; preds = %11
  %15 = icmp ult i32 %1, 128
  br i1 %15, label %16, label %18

16:                                               ; preds = %14
  %17 = or i32 %12, 256
  br label %26

18:                                               ; preds = %14
  %19 = icmp ult i32 %1, 192
  br i1 %19, label %20, label %22

20:                                               ; preds = %18
  %21 = or i32 %12, 512
  br label %26

22:                                               ; preds = %18
  %23 = icmp ult i32 %1, 256
  %24 = or i32 %12, 768
  %25 = select i1 %23, i32 %24, i32 %12
  br label %26

26:                                               ; preds = %22, %20, %16, %11, %9
  %27 = phi i32 [ %10, %9 ], [ %17, %16 ], [ %21, %20 ], [ %12, %11 ], [ %25, %22 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !50
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %27) #7, !srcloc !13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sun8i_dwmac_enable_dma_transmission(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 20
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !51
  %4 = or i32 %3, -1073741824
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !52
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 %4) #7, !srcloc !13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sun8i_dwmac_enable_dma_irq(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) #2 {
  %5 = getelementptr i8, ptr %0, i32 12
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !53
  %7 = or i32 %6, 256
  %8 = select i1 %2, i32 %7, i32 %6
  %9 = zext i1 %3 to i32
  %10 = or i32 %8, %9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !54
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %10) #7, !srcloc !13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sun8i_dwmac_disable_dma_irq(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) #2 {
  %5 = getelementptr i8, ptr %0, i32 12
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !55
  %7 = and i32 %6, -257
  %8 = select i1 %2, i32 %7, i32 %6
  %9 = and i32 %8, -2
  %10 = select i1 %3, i32 %9, i32 %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !56
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %10) #7, !srcloc !13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sun8i_dwmac_dma_start_tx(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 20
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !57
  %5 = or i32 %4, -1073741824
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !58
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %5) #7, !srcloc !13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sun8i_dwmac_dma_stop_tx(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 20
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !59
  %5 = and i32 %4, -1073741825
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !60
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %5) #7, !srcloc !13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sun8i_dwmac_dma_start_rx(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 40
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !61
  %5 = or i32 %4, -1073741824
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !62
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %5) #7, !srcloc !13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sun8i_dwmac_dma_stop_rx(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 40
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !63
  %5 = and i32 %4, -1073741825
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !64
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %5) #7, !srcloc !13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun8i_dwmac_dma_interrupt(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = getelementptr i8, ptr %0, i32 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !65
  switch i32 %3, label %11 [
    i32 1, label %7
    i32 2, label %9
  ]

7:                                                ; preds = %4
  %8 = and i32 %6, 81664
  br label %11

9:                                                ; preds = %4
  %10 = and i32 %6, 65599
  br label %11

11:                                               ; preds = %9, %7, %4
  %12 = phi i32 [ %8, %7 ], [ %10, %9 ], [ %6, %4 ]
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 44
  %17 = load i32, ptr %16, align 16
  %18 = add i32 %17, 1
  store i32 %18, ptr %16, align 16
  br label %19

19:                                               ; preds = %15, %11
  %20 = phi i32 [ 8, %15 ], [ 0, %11 ]
  %21 = and i32 %12, 2
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 29
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, 1
  store i32 %26, ptr %24, align 4
  br label %27

27:                                               ; preds = %23, %19
  %28 = and i32 %12, 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 29
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, 1
  store i32 %33, ptr %31, align 4
  br label %34

34:                                               ; preds = %30, %27
  %35 = lshr i32 %12, 3
  %36 = and i32 %35, 1
  %37 = or i32 %20, %36
  %38 = and i32 %12, 16
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %34
  %41 = or i32 %20, 1
  %42 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 28
  %43 = load i32, ptr %42, align 16
  %44 = add i32 %43, 1
  store i32 %44, ptr %42, align 16
  br label %45

45:                                               ; preds = %40, %34
  %46 = phi i32 [ %41, %40 ], [ %37, %34 ]
  %47 = and i32 %12, 32
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 35
  %51 = load i32, ptr %50, align 4
  %52 = add i32 %51, 1
  store i32 %52, ptr %50, align 4
  br label %53

53:                                               ; preds = %49, %45
  %54 = and i32 %12, 256
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %53
  %57 = or i32 %46, 4
  %58 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 42
  %59 = load i32, ptr %58, align 8
  %60 = add i32 %59, 1
  store i32 %60, ptr %58, align 8
  br label %61

61:                                               ; preds = %56, %53
  %62 = phi i32 [ %57, %56 ], [ %46, %53 ]
  %63 = and i32 %12, 512
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 32
  %67 = load i32, ptr %66, align 64
  %68 = add i32 %67, 1
  store i32 %68, ptr %66, align 64
  br label %69

69:                                               ; preds = %65, %61
  %70 = and i32 %12, 1024
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 33
  %74 = load i32, ptr %73, align 4
  %75 = add i32 %74, 1
  store i32 %75, ptr %73, align 4
  br label %76

76:                                               ; preds = %72, %69
  %77 = lshr i32 %12, 11
  %78 = and i32 %77, 1
  %79 = or i32 %62, %78
  %80 = and i32 %12, 4096
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %76
  %83 = or i32 %62, 1
  %84 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 31
  %85 = load i32, ptr %84, align 4
  %86 = add i32 %85, 1
  store i32 %86, ptr %84, align 4
  br label %87

87:                                               ; preds = %82, %76
  %88 = phi i32 [ %83, %82 ], [ %79, %76 ]
  %89 = and i32 %12, 8192
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 37
  %93 = load i32, ptr %92, align 4
  %94 = add i32 %93, 1
  store i32 %94, ptr %92, align 4
  br label %95

95:                                               ; preds = %91, %87
  %96 = and i32 %12, 65536
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 83
  %100 = load i32, ptr %99, align 4
  %101 = add i32 %100, 1
  store i32 %101, ptr %99, align 4
  br label %102

102:                                              ; preds = %98, %95
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !66
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %12) #7, !srcloc !13
  ret i32 %88
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_read(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal fastcc nonnull ptr @phy_modes(i32 noundef %0) unnamed_addr #6 {
  %2 = icmp ult i32 %0, 30
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  %4 = getelementptr inbounds [30 x ptr], ptr @switch.table.phy_modes, i32 0, i32 %0
  %5 = load ptr, ptr %4, align 4
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi ptr [ %5, %3 ], [ @.str.61, %1 ]
  ret ptr %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_update_bits_base(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_compatible_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__of_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdio_mux_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mdio_mux_syscon_switch_fn(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) #2 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.stmmac_priv, ptr %2, i32 0, i32 36
  %6 = load ptr, ptr %5, align 64
  %7 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %6, i32 0, i32 46
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !8
  %9 = icmp eq i32 %0, %1
  br i1 %9, label %39, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.sunxi_priv_data, ptr %8, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = call i32 @regmap_field_read(ptr noundef %12, ptr noundef nonnull %4) #7
  switch i32 %1, label %15 [
    i32 1, label %18
    i32 2, label %14
  ]

14:                                               ; preds = %10
  br label %18

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.stmmac_priv, ptr %2, i32 0, i32 15
  %17 = load ptr, ptr %16, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.69, i32 noundef %1) #8
  br label %39

18:                                               ; preds = %14, %10
  %19 = phi ptr [ @.str.68, %14 ], [ @.str.67, %10 ]
  %20 = phi i32 [ 65536, %14 ], [ 32768, %10 ]
  %21 = phi i8 [ 0, %14 ], [ 1, %10 ]
  %22 = getelementptr inbounds %struct.stmmac_priv, ptr %2, i32 0, i32 15
  %23 = load ptr, ptr %22, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %23, ptr noundef nonnull %19) #8
  %24 = load i32, ptr %4, align 4
  %25 = and i32 %24, -98305
  %26 = or i32 %25, %20
  %27 = getelementptr inbounds %struct.sunxi_priv_data, ptr %8, i32 0, i32 7
  store i8 %21, ptr %27, align 1
  %28 = load ptr, ptr %11, align 4
  %29 = call i32 @regmap_field_update_bits_base(ptr noundef %28, i32 noundef -1, i32 noundef %26, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %30 = getelementptr inbounds %struct.sunxi_priv_data, ptr %8, i32 0, i32 7
  %31 = load i8, ptr %30, align 1, !range !9
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %18
  %34 = call fastcc i32 @sun8i_dwmac_power_internal_phy(ptr noundef %2)
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %37, label %39

36:                                               ; preds = %18
  call fastcc void @sun8i_dwmac_unpower_internal_phy(ptr noundef %8)
  br label %37

37:                                               ; preds = %36, %33
  %38 = call fastcc i32 @sun8i_dwmac_reset(ptr noundef %2)
  br label %39

39:                                               ; preds = %37, %33, %15, %3
  %40 = phi i32 [ -22, %15 ], [ %34, %33 ], [ %38, %37 ], [ 0, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  ret i32 %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdio_mux_uninit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_pltfr_remove(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
!9 = !{i8 0, i8 2}
!10 = !{i64 1753074}
!11 = !{i64 2156528112}
!12 = !{i64 2156528309}
!13 = !{i64 1752656}
!14 = !{i64 2156529802}
!15 = !{i64 2156530142}
!16 = !{i64 2156514074}
!17 = !{i64 2156514522}
!18 = !{i64 2156514849}
!19 = !{i64 2156515369}
!20 = !{i64 2156515674}
!21 = !{i64 2156517429}
!22 = !{i64 2156517697}
!23 = !{i64 2156500922}
!24 = !{i64 2156516017}
!25 = !{i64 2156516607}
!26 = !{i64 2156516913}
!27 = !{i64 2156525642}
!28 = !{i64 2156526002}
!29 = !{i64 2156526450}
!30 = !{i64 2156526826}
!31 = !{i64 2156527274}
!32 = !{i64 2156527646}
!33 = !{i64 2156544853}
!34 = !{i64 2156545205}
!35 = !{i64 2156496461}
!36 = !{i64 2156496766}
!37 = !{i64 2156497071}
!38 = !{i64 2156497376}
!39 = !{i64 2156497681}
!40 = !{i64 2156497986}
!41 = !{i64 2156498299}
!42 = !{i64 2156498840}
!43 = !{i64 2156499265}
!44 = !{i64 2156499658}
!45 = !{i64 2156500105}
!46 = !{i64 2156500609}
!47 = !{i64 2156509977}
!48 = !{i64 2156511036}
!49 = !{i64 2156511484}
!50 = !{i64 2156512634}
!51 = !{i64 2156503665}
!52 = !{i64 2156504017}
!53 = !{i64 2156501249}
!54 = !{i64 2156501601}
!55 = !{i64 2156502057}
!56 = !{i64 2156502409}
!57 = !{i64 2156502865}
!58 = !{i64 2156503217}
!59 = !{i64 2156504465}
!60 = !{i64 2156504733}
!61 = !{i64 2156505181}
!62 = !{i64 2156505533}
!63 = !{i64 2156505981}
!64 = !{i64 2156506249}
!65 = !{i64 2156506697}
!66 = !{i64 2156509529}
