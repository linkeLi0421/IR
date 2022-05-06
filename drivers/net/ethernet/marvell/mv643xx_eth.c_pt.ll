; ModuleID = '/llk/IR/drivers/net/ethernet/marvell/mv643xx_eth.c_pt.bc'
source_filename = "../drivers/net/ethernet/marvell/mv643xx_eth.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.mv643xx_eth_stats = type { [32 x i8], i32, i32, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.mv643xx_eth_platform_data = type { ptr, i32, i32, ptr, [6 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
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
%struct.mv643xx_eth_shared_private = type { ptr, i32, i32, i32, i32, ptr }
%struct.mbus_dram_target_info = type { i8, i32, [4 x %struct.mbus_dram_window] }
%struct.mbus_dram_window = type { i8, i8, i64, i64 }
%struct.mv643xx_eth_shared_platform_data = type { ptr, i32 }
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
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mv643xx_eth_private = type { ptr, ptr, i32, ptr, %struct.timer_list, %struct.spinlock, %struct.mib_counters, %struct.work_struct, %struct.napi_struct, i32, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, %struct.timer_list, [8 x %struct.rx_queue], i32, i32, i32, i32, [8 x %struct.tx_queue], ptr, i32 }
%struct.mib_counters = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.rx_queue = type { i32, i32, i32, i32, i32, ptr, i32, i32, ptr }
%struct.tx_queue = type { i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.sk_buff_head, i32, i32, i32 }
%struct.sk_buff_head = type { %union.anon.76, i32, %struct.spinlock }
%union.anon.76 = type { %struct.anon.77 }
%struct.anon.77 = type { ptr, ptr }
%struct.netdev_queue = type { ptr, %struct.netdevice_tracker, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, [4 x i8], %struct.spinlock, i32, i32, i32, [48 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [52 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [24 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.rx_desc = type { i32, i16, i16, i32, i32 }
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
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_ringparam = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.137, i32 }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.anon.137 = type { [3 x i32], [3 x i32], [3 x i32] }
%struct.tx_desc = type { i32, i16, i16, i32, i32 }
%struct.page = type { i32, %union.anon.1, %union.anon.115, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.115 = type { %struct.atomic_t }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.tso_t = type { i32, i32, ptr, i16, i8, i8, i32 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }

@__initcall__kmod_mv643xx_eth__478_3292_mv643xx_eth_init_module6 = internal global ptr @mv643xx_eth_init_module, section ".initcall6.init", align 4
@drivers = internal constant [2 x ptr] [ptr @mv643xx_eth_shared_driver, ptr @mv643xx_eth_driver], align 4
@__exitcall_mv643xx_eth_cleanup_module = internal global ptr @mv643xx_eth_cleanup_module, section ".exitcall.exit", align 4
@__UNIQUE_ID_author479 = internal constant [119 x i8] c"mv643xx_eth.author=Rabeeh Khoury, Assaf Hoffman, Matthew Dharm, Manish Lachwani, Dale Farnsworth and Lennert Buytenhek\00", section ".modinfo", align 1
@__UNIQUE_ID_description480 = internal constant [60 x i8] c"mv643xx_eth.description=Ethernet driver for Marvell MV643XX\00", section ".modinfo", align 1
@__UNIQUE_ID_file481 = internal constant [58 x i8] c"mv643xx_eth.file=drivers/net/ethernet/marvell/mv643xx_eth\00", section ".modinfo", align 1
@__UNIQUE_ID_license482 = internal constant [24 x i8] c"mv643xx_eth.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias483 = internal constant [39 x i8] c"mv643xx_eth.alias=platform:mv643xx_eth\00", section ".modinfo", align 1
@__UNIQUE_ID_alias484 = internal constant [44 x i8] c"mv643xx_eth.alias=platform:mv643xx_eth_port\00", section ".modinfo", align 1
@mv643xx_eth_shared_driver = internal global %struct.platform_driver { ptr @mv643xx_eth_shared_probe, ptr @mv643xx_eth_shared_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mv643xx_eth_shared_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@mv643xx_eth_driver = internal global %struct.platform_driver { ptr @mv643xx_eth_probe, ptr @mv643xx_eth_remove, ptr @mv643xx_eth_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str.17, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [12 x i8] c"mv643xx_eth\00", align 1
@mv643xx_eth_shared_ids = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,orion-eth\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,kirkwood-eth\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@mv643xx_eth_shared_probe.mv643xx_eth_version_printed = internal unnamed_addr global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"\015mv643xx_eth: MV-643xx 10/100/1000 ethernet driver version %s\0A\00", align 1
@mv643xx_eth_driver_version = internal global [4 x i8] c"1.4\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"marvell,tx-checksum-limit\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"missing interrupt on %pOFn\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"missing reg property on %pOFn\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"invalid reg property on %pOFn\0A\00", align 1
@port_platdev = internal unnamed_addr global [3 x ptr] zeroinitializer, align 4
@.str.7 = private unnamed_addr constant [27 x i8] c"too many ports registered\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"marvell,tx-queue-size\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"marvell,tx-sram-addr\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"marvell,tx-sram-size\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"marvell,rx-queue-size\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"marvell,rx-sram-addr\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"marvell,rx-sram-size\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"phy-handle\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"speed\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"duplex\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"mv643xx_eth_port\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"no mv643xx_eth_platform_data\0A\00", align 1
@.str.19 = private unnamed_addr constant [38 x i8] c"no mv643xx_eth_platform_data->shared\0A\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"marvell,kirkwood-eth-port\00", align 1
@mv643xx_eth_ethtool_ops = internal constant %struct.ethtool_ops { i8 0, i32 17, i32 0, ptr @mv643xx_eth_get_drvinfo, ptr null, ptr null, ptr @mv643xx_eth_get_wol, ptr @mv643xx_eth_set_wol, ptr null, ptr null, ptr @phy_ethtool_nway_reset, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr @mv643xx_eth_get_coalesce, ptr @mv643xx_eth_set_coalesce, ptr @mv643xx_eth_get_ringparam, ptr @mv643xx_eth_set_ringparam, ptr null, ptr null, ptr null, ptr null, ptr @mv643xx_eth_get_strings, ptr null, ptr @mv643xx_eth_get_ethtool_stats, ptr null, ptr null, ptr null, ptr null, ptr @mv643xx_eth_get_sset_count, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ethtool_op_get_ts_info, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mv643xx_eth_get_link_ksettings, ptr @mv643xx_eth_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@mv643xx_eth_netdev_ops = internal constant %struct.net_device_ops { ptr null, ptr null, ptr @mv643xx_eth_open, ptr @mv643xx_eth_stop, ptr @mv643xx_eth_xmit, ptr null, ptr null, ptr null, ptr @mv643xx_eth_set_rx_mode, ptr @mv643xx_eth_set_mac_address, ptr @eth_validate_addr, ptr null, ptr @mv643xx_eth_ioctl, ptr null, ptr null, ptr null, ptr null, ptr @mv643xx_eth_change_mtu, ptr null, ptr @mv643xx_eth_tx_timeout, ptr null, ptr null, ptr null, ptr @mv643xx_eth_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mv643xx_eth_set_features, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.21 = private unnamed_addr constant [30 x i8] c"port %d with MAC address %pM\0A\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"configured with sram\0A\00", align 1
@.str.23 = private unnamed_addr constant [40 x i8] c"TX queue size set to %u (requested %u)\0A\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"%s:%02x\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"orion-mdio-mii\00", align 1
@mv643xx_eth_driver_name = internal global [12 x i8] c"mv643xx_eth\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"N/A\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"platform\00", align 1
@.str.28 = private unnamed_addr constant [67 x i8] c"The PHY does not support set_wol, was CONFIG_MARVELL_PHY enabled?\0A\00", align 1
@.str.29 = private unnamed_addr constant [58 x i8] c"fatal error on re-opening device after ring param change\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.30 = private unnamed_addr constant [40 x i8] c"error freeing rx ring -- %d skbs stuck\0A\00", align 1
@.str.31 = private unnamed_addr constant [43 x i8] c"drivers/net/ethernet/marvell/mv643xx_eth.c\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"tx error\0A\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"can't assign irq\0A\00", align 1
@.str.34 = private unnamed_addr constant [35 x i8] c"can't allocate rx ring (%d bytes)\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.35 = private unnamed_addr constant [28 x i8] c"include/linux/dma-mapping.h\00", align 1
@.str.36 = private unnamed_addr constant [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.37 = private unnamed_addr constant [35 x i8] c"can't allocate tx ring (%d bytes)\0A\00", align 1
@mv643xx_eth_stats = internal unnamed_addr constant [40 x %struct.mv643xx_eth_stats] [%struct.mv643xx_eth_stats { [32 x i8] c"rx_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 216, i32 -1 }, %struct.mv643xx_eth_stats { [32 x i8] c"tx_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 220, i32 -1 }, %struct.mv643xx_eth_stats { [32 x i8] c"rx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 224, i32 -1 }, %struct.mv643xx_eth_stats { [32 x i8] c"tx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 228, i32 -1 }, %struct.mv643xx_eth_stats { [32 x i8] c"rx_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 232, i32 -1 }, %struct.mv643xx_eth_stats { [32 x i8] c"tx_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 236, i32 -1 }, %struct.mv643xx_eth_stats { [32 x i8] c"rx_dropped\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 240, i32 -1 }, %struct.mv643xx_eth_stats { [32 x i8] c"tx_dropped\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 244, i32 -1 }, %struct.mv643xx_eth_stats { [32 x i8] c"good_octets_received\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 -1, i32 40 }, %struct.mv643xx_eth_stats { [32 x i8] c"bad_octets_received\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 -1, i32 48 }, %struct.mv643xx_eth_stats { [32 x i8] c"internal_mac_transmit_err\00\00\00\00\00\00\00", i32 4, i32 -1, i32 52 }, %struct.mv643xx_eth_stats { [32 x i8] c"good_frames_received\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 -1, i32 56 }, %struct.mv643xx_eth_stats { [32 x i8] c"bad_frames_received\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 -1, i32 60 }, %struct.mv643xx_eth_stats { [32 x i8] c"broadcast_frames_received\00\00\00\00\00\00\00", i32 4, i32 -1, i32 64 }, %struct.mv643xx_eth_stats { [32 x i8] c"multicast_frames_received\00\00\00\00\00\00\00", i32 4, i32 -1, i32 68 }, %struct.mv643xx_eth_stats { [32 x i8] c"frames_64_octets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 -1, i32 72 }, %struct.mv643xx_eth_stats { [32 x i8] c"frames_65_to_127_octets\00\00\00\00\00\00\00\00\00", i32 4, i32 -1, i32 76 }, %struct.mv643xx_eth_stats { [32 x i8] c"frames_128_to_255_octets\00\00\00\00\00\00\00\00", i32 4, i32 -1, i32 80 }, %struct.mv643xx_eth_stats { [32 x i8] c"frames_256_to_511_octets\00\00\00\00\00\00\00\00", i32 4, i32 -1, i32 84 }, %struct.mv643xx_eth_stats { [32 x i8] c"frames_512_to_1023_octets\00\00\00\00\00\00\00", i32 4, i32 -1, i32 88 }, %struct.mv643xx_eth_stats { [32 x i8] c"frames_1024_to_max_octets\00\00\00\00\00\00\00", i32 4, i32 -1, i32 92 }, %struct.mv643xx_eth_stats { [32 x i8] c"good_octets_sent\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 -1, i32 96 }, %struct.mv643xx_eth_stats { [32 x i8] c"good_frames_sent\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 -1, i32 104 }, %struct.mv643xx_eth_stats { [32 x i8] c"excessive_collision\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 -1, i32 108 }, %struct.mv643xx_eth_stats { [32 x i8] c"multicast_frames_sent\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 -1, i32 112 }, %struct.mv643xx_eth_stats { [32 x i8] c"broadcast_frames_sent\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 -1, i32 116 }, %struct.mv643xx_eth_stats { [32 x i8] c"unrec_mac_control_received\00\00\00\00\00\00", i32 4, i32 -1, i32 120 }, %struct.mv643xx_eth_stats { [32 x i8] c"fc_sent\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 -1, i32 124 }, %struct.mv643xx_eth_stats { [32 x i8] c"good_fc_received\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 -1, i32 128 }, %struct.mv643xx_eth_stats { [32 x i8] c"bad_fc_received\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 -1, i32 132 }, %struct.mv643xx_eth_stats { [32 x i8] c"undersize_received\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 -1, i32 136 }, %struct.mv643xx_eth_stats { [32 x i8] c"fragments_received\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 -1, i32 140 }, %struct.mv643xx_eth_stats { [32 x i8] c"oversize_received\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 -1, i32 144 }, %struct.mv643xx_eth_stats { [32 x i8] c"jabber_received\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 -1, i32 148 }, %struct.mv643xx_eth_stats { [32 x i8] c"mac_receive_error\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 -1, i32 152 }, %struct.mv643xx_eth_stats { [32 x i8] c"bad_crc_event\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 -1, i32 156 }, %struct.mv643xx_eth_stats { [32 x i8] c"collision\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 -1, i32 160 }, %struct.mv643xx_eth_stats { [32 x i8] c"late_collision\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 -1, i32 164 }, %struct.mv643xx_eth_stats { [32 x i8] c"rx_discard\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 -1, i32 168 }, %struct.mv643xx_eth_stats { [32 x i8] c"rx_overrun\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 -1, i32 172 }], align 4
@.str.38 = private unnamed_addr constant [11 x i8] c"link down\0A\00", align 1
@.str.39 = private unnamed_addr constant [51 x i8] c"link up, %d Mb/s, %s duplex, flow control %sabled\0A\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"half\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"en\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"dis\00", align 1
@.str.44 = private unnamed_addr constant [47 x i8] c"received packet spanning multiple descriptors\0A\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"\017\00", align 1
@.str.46 = private unnamed_addr constant [54 x i8] c"failed to linearize skb with tiny unaligned fragment\0A\00", align 1
@.str.47 = private unnamed_addr constant [28 x i8] c"failed to prepare checksum!\00", align 1
@.str.48 = private unnamed_addr constant [23 x i8] c"protocol not supported\00", align 1
@.str.49 = private unnamed_addr constant [24 x i8] c"dma_map_single failed!\0A\00", align 1
@.str.50 = private unnamed_addr constant [17 x i8] c"tx queue full?!\0A\00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c"\01\00^\00\00\00", align 1
@.str.52 = private unnamed_addr constant [51 x i8] c"fatal error on re-opening device after MTU change\0A\00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c"tx timeout\0A\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_alias483, ptr @__UNIQUE_ID_alias484, ptr @__UNIQUE_ID_author479, ptr @__UNIQUE_ID_description480, ptr @__UNIQUE_ID_file481, ptr @__UNIQUE_ID_license482, ptr @__exitcall_mv643xx_eth_cleanup_module, ptr @__initcall__kmod_mv643xx_eth__478_3292_mv643xx_eth_init_module6, ptr @mv643xx_eth_cleanup_module], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @mv643xx_eth_init_module() #0 section ".init.text" {
  %1 = tail call i32 @__platform_register_drivers(ptr noundef nonnull @drivers, i32 noundef 2, ptr noundef null) #20
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @mv643xx_eth_cleanup_module() #0 section ".exit.text" {
  tail call void @platform_unregister_drivers(ptr noundef nonnull @drivers, i32 noundef 2) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_unregister_drivers(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_register_drivers(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv643xx_eth_shared_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.of_phandle_args, align 4
  %3 = alloca %struct.mv643xx_eth_platform_data, align 4
  %4 = alloca %struct.resource, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = load i32, ptr @mv643xx_eth_shared_probe.mv643xx_eth_version_printed, align 4
  %13 = add i32 %12, 1
  store i32 %13, ptr @mv643xx_eth_shared_probe.mv643xx_eth_version_printed, align 4
  %14 = icmp eq i32 %12, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @mv643xx_eth_driver_version) #21
  br label %17

17:                                               ; preds = %15, %1
  %18 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #20
  %19 = icmp eq ptr %18, null
  br i1 %19, label %276, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %22 = tail call noalias ptr @devm_kmalloc(ptr noundef %21, i32 noundef 24, i32 noundef 3520) #20
  %23 = icmp eq ptr %22, null
  br i1 %23, label %276, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %22, ptr %25, align 8
  %26 = load i32, ptr %18, align 4
  %27 = getelementptr inbounds %struct.resource, ptr %18, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = sub i32 1, %26
  %30 = add i32 %29, %28
  %31 = tail call ptr @devm_ioremap(ptr noundef %21, i32 noundef %26, i32 noundef %30) #20
  store ptr %31, ptr %22, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %276, label %33

33:                                               ; preds = %24
  %34 = tail call ptr @devm_clk_get(ptr noundef %21, ptr noundef null) #20
  %35 = getelementptr inbounds %struct.mv643xx_eth_shared_private, ptr %22, i32 0, i32 5
  store ptr %34, ptr %35, align 4
  %36 = icmp ugt ptr %34, inttoptr (i32 -4096 to ptr)
  br i1 %36, label %44, label %37

37:                                               ; preds = %33
  %38 = tail call i32 @clk_prepare(ptr noundef %34) #20
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = tail call i32 @clk_enable(ptr noundef %34) #20
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %40
  tail call void @clk_unprepare(ptr noundef %34) #20
  br label %44

44:                                               ; preds = %43, %40, %37, %33
  %45 = tail call ptr @mv_mbus_dram_info() #20
  %46 = icmp eq ptr %45, null
  br i1 %46, label %110, label %47

47:                                               ; preds = %44
  %48 = load ptr, ptr %22, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !8
  tail call void @arm_heavy_mb() #20
  %49 = getelementptr i8, ptr %48, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 0) #20, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !10
  tail call void @arm_heavy_mb() #20
  %50 = getelementptr i8, ptr %48, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 0) #20, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !11
  tail call void @arm_heavy_mb() #20
  %51 = getelementptr i8, ptr %48, i32 640
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 0) #20, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !8
  tail call void @arm_heavy_mb() #20
  %52 = getelementptr i8, ptr %48, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 0) #20, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !10
  tail call void @arm_heavy_mb() #20
  %53 = getelementptr i8, ptr %48, i32 524
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 0) #20, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !11
  tail call void @arm_heavy_mb() #20
  %54 = getelementptr i8, ptr %48, i32 644
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 0) #20, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !8
  tail call void @arm_heavy_mb() #20
  %55 = getelementptr i8, ptr %48, i32 528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 0) #20, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !10
  tail call void @arm_heavy_mb() #20
  %56 = getelementptr i8, ptr %48, i32 532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 0) #20, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !11
  tail call void @arm_heavy_mb() #20
  %57 = getelementptr i8, ptr %48, i32 648
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 0) #20, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !8
  tail call void @arm_heavy_mb() #20
  %58 = getelementptr i8, ptr %48, i32 536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 0) #20, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !10
  tail call void @arm_heavy_mb() #20
  %59 = getelementptr i8, ptr %48, i32 540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 0) #20, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !11
  tail call void @arm_heavy_mb() #20
  %60 = getelementptr i8, ptr %48, i32 652
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 0) #20, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !8
  tail call void @arm_heavy_mb() #20
  %61 = getelementptr i8, ptr %48, i32 544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 0) #20, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !10
  tail call void @arm_heavy_mb() #20
  %62 = getelementptr i8, ptr %48, i32 548
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 0) #20, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !8
  tail call void @arm_heavy_mb() #20
  %63 = getelementptr i8, ptr %48, i32 552
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 0) #20, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !10
  tail call void @arm_heavy_mb() #20
  %64 = getelementptr i8, ptr %48, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 0) #20, !srcloc !9
  %65 = getelementptr inbounds %struct.mbus_dram_target_info, ptr %45, i32 0, i32 1
  %66 = load i32, ptr %65, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %105

68:                                               ; preds = %47
  %69 = getelementptr inbounds %struct.mbus_dram_target_info, ptr %45, i32 0, i32 2
  br label %70

70:                                               ; preds = %70, %68
  %71 = phi i32 [ 0, %68 ], [ %102, %70 ]
  %72 = phi i32 [ 0, %68 ], [ %101, %70 ]
  %73 = phi i32 [ 63, %68 ], [ %98, %70 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !12
  tail call void @arm_heavy_mb() #20
  %74 = getelementptr %struct.mbus_dram_window, ptr %69, i32 %71, i32 2
  %75 = load i64, ptr %74, align 8
  %76 = and i64 %75, 4294901760
  %77 = getelementptr %struct.mbus_dram_window, ptr %69, i32 %71, i32 1
  %78 = load i8, ptr %77, align 1
  %79 = zext i8 %78 to i32
  %80 = shl nuw nsw i32 %79, 8
  %81 = load i8, ptr %45, align 8
  %82 = zext i8 %81 to i64
  %83 = or i64 %76, %82
  %84 = trunc i64 %83 to i32
  %85 = or i32 %80, %84
  %86 = shl i32 %71, 3
  %87 = add i32 %86, 512
  %88 = getelementptr i8, ptr %48, i32 %87
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %88, i32 %85) #20, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !13
  tail call void @arm_heavy_mb() #20
  %89 = getelementptr %struct.mbus_dram_window, ptr %69, i32 %71, i32 3
  %90 = load i64, ptr %89, align 8
  %91 = trunc i64 %90 to i32
  %92 = add i32 %91, -1
  %93 = and i32 %92, -65536
  %94 = add i32 %86, 516
  %95 = getelementptr i8, ptr %48, i32 %94
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %95, i32 %93) #20, !srcloc !9
  %96 = shl nuw i32 1, %71
  %97 = xor i32 %96, -1
  %98 = and i32 %73, %97
  %99 = shl nuw i32 %71, 1
  %100 = shl i32 3, %99
  %101 = or i32 %100, %72
  %102 = add nuw nsw i32 %71, 1
  %103 = load i32, ptr %65, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %70, label %105

105:                                              ; preds = %70, %47
  %106 = phi i32 [ 63, %47 ], [ %98, %70 ]
  %107 = phi i32 [ 0, %47 ], [ %101, %70 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !14
  tail call void @arm_heavy_mb() #20
  %108 = getelementptr i8, ptr %48, i32 656
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %108, i32 %106) #20, !srcloc !9
  %109 = getelementptr inbounds %struct.mv643xx_eth_shared_private, ptr %22, i32 0, i32 1
  store i32 %107, ptr %109, align 4
  br label %110

110:                                              ; preds = %105, %44
  %111 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %112 = load ptr, ptr %111, align 8
  %113 = icmp eq ptr %112, null
  br i1 %113, label %231, label %114

114:                                              ; preds = %110
  %115 = tail call noalias ptr @devm_kmalloc(ptr noundef %21, i32 noundef 8, i32 noundef 3520) #20
  %116 = icmp eq ptr %115, null
  br i1 %116, label %271, label %117

117:                                              ; preds = %114
  %118 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  store ptr %115, ptr %118, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #20
  store i32 0, ptr %11, align 4, !annotation !15
  %119 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %112, ptr noundef nonnull @.str.2, ptr noundef nonnull %11, i32 noundef 1, i32 noundef 0) #20
  %120 = icmp sgt i32 %119, -1
  br i1 %120, label %121, label %124

121:                                              ; preds = %117
  %122 = load i32, ptr %11, align 4
  %123 = getelementptr inbounds %struct.mv643xx_eth_shared_platform_data, ptr %115, i32 0, i32 1
  store i32 %122, ptr %123, align 4
  br label %124

124:                                              ; preds = %121, %117
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #20
  %125 = call ptr @of_get_next_available_child(ptr noundef nonnull %112, ptr noundef null) #20
  %126 = icmp eq ptr %125, null
  br i1 %126, label %231, label %127

127:                                              ; preds = %124
  %128 = getelementptr inbounds i8, ptr %3, i32 4
  %129 = getelementptr inbounds %struct.mv643xx_eth_platform_data, ptr %3, i32 0, i32 4
  %130 = getelementptr inbounds %struct.mv643xx_eth_platform_data, ptr %3, i32 0, i32 10
  %131 = getelementptr inbounds %struct.mv643xx_eth_platform_data, ptr %3, i32 0, i32 13
  %132 = getelementptr inbounds %struct.mv643xx_eth_platform_data, ptr %3, i32 0, i32 14
  %133 = getelementptr inbounds %struct.mv643xx_eth_platform_data, ptr %3, i32 0, i32 9
  %134 = getelementptr inbounds %struct.mv643xx_eth_platform_data, ptr %3, i32 0, i32 11
  %135 = getelementptr inbounds %struct.mv643xx_eth_platform_data, ptr %3, i32 0, i32 12
  %136 = getelementptr inbounds %struct.mv643xx_eth_platform_data, ptr %3, i32 0, i32 3
  %137 = getelementptr inbounds %struct.mv643xx_eth_platform_data, ptr %3, i32 0, i32 2
  %138 = getelementptr inbounds %struct.mv643xx_eth_platform_data, ptr %3, i32 0, i32 5
  %139 = getelementptr inbounds %struct.mv643xx_eth_platform_data, ptr %3, i32 0, i32 6
  br label %140

140:                                              ; preds = %227, %127
  %141 = phi ptr [ %125, %127 ], [ %229, %227 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %128, i8 0, i32 60, i1 false) #20
  store ptr %0, ptr %3, align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %4, i8 0, i32 32, i1 false) #20
  %142 = call i32 @of_irq_to_resource(ptr noundef nonnull %141, i32 noundef 0, ptr noundef nonnull %4) #20
  %143 = icmp slt i32 %142, 1
  br i1 %143, label %144, label %145

144:                                              ; preds = %140
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.3, ptr noundef nonnull %141) #21
  br label %222

145:                                              ; preds = %140
  %146 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %141, ptr noundef nonnull @.str.4, ptr noundef %128, i32 noundef 1, i32 noundef 0) #20
  %147 = icmp sgt i32 %146, -1
  br i1 %147, label %149, label %148

148:                                              ; preds = %145
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.5, ptr noundef nonnull %141) #21
  br label %222

149:                                              ; preds = %145
  %150 = load i32, ptr %128, align 4
  %151 = icmp sgt i32 %150, 2
  br i1 %151, label %155, label %152

152:                                              ; preds = %149
  %153 = load ptr, ptr @port_platdev, align 4
  %154 = icmp eq ptr %153, null
  br i1 %154, label %163, label %156

155:                                              ; preds = %149
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.6, ptr noundef nonnull %141) #21
  br label %222

156:                                              ; preds = %152
  %157 = load ptr, ptr getelementptr inbounds ([3 x ptr], ptr @port_platdev, i32 0, i32 1), align 4
  %158 = icmp eq ptr %157, null
  br i1 %158, label %163, label %159

159:                                              ; preds = %156
  %160 = load ptr, ptr getelementptr inbounds ([3 x ptr], ptr @port_platdev, i32 0, i32 2), align 4
  %161 = icmp eq ptr %160, null
  br i1 %161, label %163, label %162

162:                                              ; preds = %159
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.7) #21
  br label %222

163:                                              ; preds = %159, %156, %152
  %164 = phi i32 [ 0, %152 ], [ 1, %156 ], [ 2, %159 ]
  %165 = call i32 @of_get_mac_address(ptr noundef nonnull %141, ptr noundef %129) #20
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %222

167:                                              ; preds = %163
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  store i32 0, ptr %5, align 4, !annotation !15
  %168 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %141, ptr noundef nonnull @.str.8, ptr noundef nonnull %5, i32 noundef 1, i32 noundef 0) #20
  %169 = icmp sgt i32 %168, -1
  br i1 %169, label %170, label %172

170:                                              ; preds = %167
  %171 = load i32, ptr %5, align 4
  store i32 %171, ptr %130, align 4
  br label %172

172:                                              ; preds = %170, %167
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #20
  store i32 0, ptr %6, align 4, !annotation !15
  %173 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %141, ptr noundef nonnull @.str.9, ptr noundef nonnull %6, i32 noundef 1, i32 noundef 0) #20
  %174 = icmp sgt i32 %173, -1
  br i1 %174, label %175, label %177

175:                                              ; preds = %172
  %176 = load i32, ptr %6, align 4
  store i32 %176, ptr %131, align 4
  br label %177

177:                                              ; preds = %175, %172
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #20
  store i32 0, ptr %7, align 4, !annotation !15
  %178 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %141, ptr noundef nonnull @.str.10, ptr noundef nonnull %7, i32 noundef 1, i32 noundef 0) #20
  %179 = icmp sgt i32 %178, -1
  br i1 %179, label %180, label %182

180:                                              ; preds = %177
  %181 = load i32, ptr %7, align 4
  store i32 %181, ptr %132, align 4
  br label %182

182:                                              ; preds = %180, %177
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #20
  store i32 0, ptr %8, align 4, !annotation !15
  %183 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %141, ptr noundef nonnull @.str.11, ptr noundef nonnull %8, i32 noundef 1, i32 noundef 0) #20
  %184 = icmp sgt i32 %183, -1
  br i1 %184, label %185, label %187

185:                                              ; preds = %182
  %186 = load i32, ptr %8, align 4
  store i32 %186, ptr %133, align 4
  br label %187

187:                                              ; preds = %185, %182
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #20
  store i32 0, ptr %9, align 4, !annotation !15
  %188 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %141, ptr noundef nonnull @.str.12, ptr noundef nonnull %9, i32 noundef 1, i32 noundef 0) #20
  %189 = icmp sgt i32 %188, -1
  br i1 %189, label %190, label %192

190:                                              ; preds = %187
  %191 = load i32, ptr %9, align 4
  store i32 %191, ptr %134, align 4
  br label %192

192:                                              ; preds = %190, %187
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #20
  store i32 0, ptr %10, align 4, !annotation !15
  %193 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %141, ptr noundef nonnull @.str.13, ptr noundef nonnull %10, i32 noundef 1, i32 noundef 0) #20
  %194 = icmp sgt i32 %193, -1
  br i1 %194, label %195, label %197

195:                                              ; preds = %192
  %196 = load i32, ptr %10, align 4
  store i32 %196, ptr %135, align 4
  br label %197

197:                                              ; preds = %195, %192
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #20
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false) #20, !annotation !15
  %198 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %141, ptr noundef nonnull @.str.14, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %2) #20
  %199 = icmp eq i32 %198, 0
  %200 = load ptr, ptr %2, align 4
  %201 = select i1 %199, ptr %200, ptr null
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #20
  store ptr %201, ptr %136, align 4
  %202 = icmp eq ptr %201, null
  br i1 %202, label %203, label %206

203:                                              ; preds = %197
  store i32 255, ptr %137, align 4
  %204 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %141, ptr noundef nonnull @.str.15, ptr noundef %138, i32 noundef 1, i32 noundef 0) #20
  %205 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %141, ptr noundef nonnull @.str.16, ptr noundef %139, i32 noundef 1, i32 noundef 0) #20
  br label %206

206:                                              ; preds = %203, %197
  %207 = call ptr @platform_device_alloc(ptr noundef nonnull @.str.17, i32 noundef %164) #20
  %208 = icmp eq ptr %207, null
  br i1 %208, label %222, label %209

209:                                              ; preds = %206
  %210 = getelementptr inbounds %struct.platform_device, ptr %207, i32 0, i32 3, i32 17
  store i64 4294967295, ptr %210, align 8
  %211 = getelementptr inbounds %struct.platform_device, ptr %207, i32 0, i32 3, i32 25
  store ptr %141, ptr %211, align 8
  %212 = call i32 @platform_device_add_resources(ptr noundef nonnull %207, ptr noundef nonnull %4, i32 noundef 1) #20
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %220

214:                                              ; preds = %209
  %215 = call i32 @platform_device_add_data(ptr noundef nonnull %207, ptr noundef nonnull %3, i32 noundef 64) #20
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %214
  %218 = call i32 @platform_device_add(ptr noundef nonnull %207) #20
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %227, label %220

220:                                              ; preds = %217, %214, %209
  %221 = phi i32 [ %212, %209 ], [ %215, %214 ], [ %218, %217 ]
  call void @platform_device_put(ptr noundef nonnull %207) #20
  br label %222

222:                                              ; preds = %220, %206, %163, %162, %155, %148, %144
  %223 = phi i32 [ %221, %220 ], [ -22, %162 ], [ -22, %155 ], [ -22, %148 ], [ -22, %144 ], [ %165, %163 ], [ -12, %206 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #20
  call void @of_node_put(ptr noundef nonnull %141) #20
  %224 = load ptr, ptr @port_platdev, align 4
  call void @platform_device_del(ptr noundef %224) #20
  store ptr null, ptr @port_platdev, align 4
  %225 = load ptr, ptr getelementptr inbounds ([3 x ptr], ptr @port_platdev, i32 0, i32 1), align 4
  call void @platform_device_del(ptr noundef %225) #20
  store ptr null, ptr getelementptr inbounds ([3 x ptr], ptr @port_platdev, i32 0, i32 1), align 4
  %226 = load ptr, ptr getelementptr inbounds ([3 x ptr], ptr @port_platdev, i32 0, i32 2), align 4
  call void @platform_device_del(ptr noundef %226) #20
  store ptr null, ptr getelementptr inbounds ([3 x ptr], ptr @port_platdev, i32 0, i32 2), align 4
  br label %271

227:                                              ; preds = %217
  %228 = getelementptr [3 x ptr], ptr @port_platdev, i32 0, i32 %164
  store ptr %207, ptr %228, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #20
  %229 = call ptr @of_get_next_available_child(ptr noundef nonnull %112, ptr noundef nonnull %141) #20
  %230 = icmp eq ptr %229, null
  br i1 %230, label %231, label %140

231:                                              ; preds = %227, %124, %110
  %232 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %233 = load ptr, ptr %232, align 4
  %234 = icmp eq ptr %233, null
  br i1 %234, label %240, label %235

235:                                              ; preds = %231
  %236 = getelementptr inbounds %struct.mv643xx_eth_shared_platform_data, ptr %233, i32 0, i32 1
  %237 = load i32, ptr %236, align 4
  %238 = icmp eq i32 %237, 0
  %239 = select i1 %238, i32 9216, i32 %237
  br label %240

240:                                              ; preds = %235, %231
  %241 = phi i32 [ 9216, %231 ], [ %239, %235 ]
  %242 = getelementptr inbounds %struct.mv643xx_eth_shared_private, ptr %22, i32 0, i32 4
  store i32 %241, ptr %242, align 4
  call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !16
  call void @arm_heavy_mb() #20
  %243 = load ptr, ptr %22, align 4
  %244 = getelementptr i8, ptr %243, i32 1052
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %244, i32 33554432) #20, !srcloc !9
  %245 = load ptr, ptr %22, align 4
  %246 = getelementptr i8, ptr %245, i32 1052
  %247 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %246) #20, !srcloc !17
  call void asm sideeffect "dsb ", "~{memory}"() #20, !srcloc !18
  %248 = lshr i32 %247, 25
  %249 = and i32 %248, 1
  %250 = getelementptr inbounds %struct.mv643xx_eth_shared_private, ptr %22, i32 0, i32 2
  store i32 %249, ptr %250, align 4
  call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !19
  call void @arm_heavy_mb() #20
  %251 = load ptr, ptr %22, align 4
  %252 = getelementptr i8, ptr %251, i32 1256
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %252, i32 1) #20, !srcloc !9
  %253 = load ptr, ptr %22, align 4
  %254 = getelementptr i8, ptr %253, i32 1256
  %255 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %254) #20, !srcloc !17
  call void asm sideeffect "dsb ", "~{memory}"() #20, !srcloc !20
  %256 = and i32 %255, 1
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %260, label %258

258:                                              ; preds = %240
  %259 = getelementptr inbounds %struct.mv643xx_eth_shared_private, ptr %22, i32 0, i32 3
  store i32 2, ptr %259, align 4
  br label %276

260:                                              ; preds = %240
  call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !21
  call void @arm_heavy_mb() #20
  %261 = load ptr, ptr %22, align 4
  %262 = getelementptr i8, ptr %261, i32 1104
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %262, i32 7) #20, !srcloc !9
  %263 = load ptr, ptr %22, align 4
  %264 = getelementptr i8, ptr %263, i32 1104
  %265 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %264) #20, !srcloc !17
  call void asm sideeffect "dsb ", "~{memory}"() #20, !srcloc !22
  %266 = and i32 %265, 7
  %267 = icmp eq i32 %266, 0
  %268 = getelementptr inbounds %struct.mv643xx_eth_shared_private, ptr %22, i32 0, i32 3
  br i1 %267, label %270, label %269

269:                                              ; preds = %260
  store i32 1, ptr %268, align 4
  br label %276

270:                                              ; preds = %260
  store i32 0, ptr %268, align 4
  br label %276

271:                                              ; preds = %222, %114
  %272 = phi i32 [ %223, %222 ], [ -12, %114 ]
  %273 = load ptr, ptr %35, align 4
  %274 = icmp ugt ptr %273, inttoptr (i32 -4096 to ptr)
  br i1 %274, label %276, label %275

275:                                              ; preds = %271
  call void @clk_disable(ptr noundef %273) #20
  call void @clk_unprepare(ptr noundef %273) #20
  br label %276

276:                                              ; preds = %275, %271, %270, %269, %258, %24, %20, %17
  %277 = phi i32 [ -22, %17 ], [ -12, %20 ], [ -12, %24 ], [ %272, %275 ], [ %272, %271 ], [ 0, %258 ], [ 0, %269 ], [ 0, %270 ]
  ret i32 %277
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv643xx_eth_shared_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr @port_platdev, align 4
  tail call void @platform_device_del(ptr noundef %4) #20
  store ptr null, ptr @port_platdev, align 4
  %5 = load ptr, ptr getelementptr inbounds ([3 x ptr], ptr @port_platdev, i32 0, i32 1), align 4
  tail call void @platform_device_del(ptr noundef %5) #20
  store ptr null, ptr getelementptr inbounds ([3 x ptr], ptr @port_platdev, i32 0, i32 1), align 4
  %6 = load ptr, ptr getelementptr inbounds ([3 x ptr], ptr @port_platdev, i32 0, i32 2), align 4
  tail call void @platform_device_del(ptr noundef %6) #20
  store ptr null, ptr getelementptr inbounds ([3 x ptr], ptr @port_platdev, i32 0, i32 2), align 4
  %7 = getelementptr inbounds %struct.mv643xx_eth_shared_private, ptr %3, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  tail call void @clk_disable(ptr noundef %8) #20
  tail call void @clk_unprepare(ptr noundef %8) #20
  br label %11

11:                                               ; preds = %10, %1
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mv_mbus_dram_info() local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_mac_address(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add_resources(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add_data(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv643xx_eth_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca [64 x i8], align 1
  %4 = alloca i32, align 4
  %5 = alloca [6 x i8], align 1
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.18) #21
  br label %422

11:                                               ; preds = %1
  %12 = load ptr, ptr %8, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.19) #21
  br label %422

15:                                               ; preds = %11
  %16 = tail call ptr @alloc_etherdev_mqs(i32 noundef 1416, i32 noundef 8, i32 noundef 8) #20
  %17 = icmp eq ptr %16, null
  br i1 %17, label %422, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 111, i32 1
  store ptr %6, ptr %19, align 4
  %20 = getelementptr i8, ptr %16, i32 1408
  %21 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %20, ptr %21, align 8
  %22 = load ptr, ptr %8, align 4
  %23 = getelementptr inbounds %struct.platform_device, ptr %22, i32 0, i32 3, i32 8
  %24 = load ptr, ptr %23, align 8
  store ptr %24, ptr %20, align 8
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr i8, ptr %25, i32 1024
  %27 = getelementptr inbounds %struct.mv643xx_eth_platform_data, ptr %8, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = shl i32 %28, 10
  %30 = getelementptr i8, ptr %26, i32 %29
  %31 = getelementptr i8, ptr %16, i32 1412
  store ptr %30, ptr %31, align 4
  %32 = load i32, ptr %27, align 4
  %33 = getelementptr i8, ptr %16, i32 1416
  store i32 %32, ptr %33, align 8
  %34 = getelementptr i8, ptr %16, i32 1420
  store ptr %16, ptr %34, align 4
  %35 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %36 = load ptr, ptr %35, align 8
  %37 = tail call i32 @of_device_is_compatible(ptr noundef %36, ptr noundef nonnull @.str.20) #20
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %18
  %40 = load ptr, ptr %31, align 4
  %41 = getelementptr i8, ptr %40, i32 76
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #20, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #20, !srcloc !23
  %43 = and i32 %42, -17
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !24
  tail call void @arm_heavy_mb() #20
  %44 = load ptr, ptr %31, align 4
  %45 = getelementptr i8, ptr %44, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %43) #20, !srcloc !9
  br label %46

46:                                               ; preds = %39, %18
  %47 = getelementptr i8, ptr %16, i32 2816
  store i32 133000000, ptr %47, align 8
  %48 = tail call ptr @devm_clk_get(ptr noundef %6, ptr noundef null) #20
  %49 = getelementptr i8, ptr %16, i32 2812
  store ptr %48, ptr %49, align 4
  %50 = icmp ugt ptr %48, inttoptr (i32 -4096 to ptr)
  br i1 %50, label %60, label %51

51:                                               ; preds = %46
  %52 = tail call i32 @clk_prepare(ptr noundef %48) #20
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = tail call i32 @clk_enable(ptr noundef %48) #20
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %54
  tail call void @clk_unprepare(ptr noundef %48) #20
  br label %58

58:                                               ; preds = %57, %54, %51
  %59 = load ptr, ptr %49, align 4
  br label %65

60:                                               ; preds = %46
  %61 = load ptr, ptr %20, align 8
  %62 = getelementptr inbounds %struct.mv643xx_eth_shared_private, ptr %61, i32 0, i32 5
  %63 = load ptr, ptr %62, align 4
  %64 = icmp ugt ptr %63, inttoptr (i32 -4096 to ptr)
  br i1 %64, label %68, label %65

65:                                               ; preds = %60, %58
  %66 = phi ptr [ %59, %58 ], [ %63, %60 ]
  %67 = tail call i32 @clk_get_rate(ptr noundef %66) #20
  store i32 %67, ptr %47, align 8
  br label %68

68:                                               ; preds = %65, %60
  %69 = load ptr, ptr %34, align 4
  %70 = getelementptr inbounds %struct.mv643xx_eth_platform_data, ptr %8, i32 0, i32 4
  %71 = load i32, ptr %70, align 4
  %72 = and i32 %71, 1
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %68
  %75 = getelementptr %struct.mv643xx_eth_platform_data, ptr %8, i32 0, i32 4, i32 4
  %76 = load i16, ptr %75, align 2
  %77 = zext i16 %76 to i32
  %78 = or i32 %71, %77
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %74
  tail call void @dev_addr_mod(ptr noundef %69, i32 noundef 0, ptr noundef %70, i32 noundef 6) #20
  br label %103

81:                                               ; preds = %74, %68
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %5) #20
  %82 = load ptr, ptr %31, align 4
  %83 = getelementptr i8, ptr %82, i32 24
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %83) #20, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #20, !srcloc !23
  %85 = load ptr, ptr %31, align 4
  %86 = getelementptr i8, ptr %85, i32 20
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %86) #20, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #20, !srcloc !23
  %88 = lshr i32 %84, 24
  %89 = trunc i32 %88 to i8
  store i8 %89, ptr %5, align 1
  %90 = lshr i32 %84, 16
  %91 = trunc i32 %90 to i8
  %92 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 %91, ptr %92, align 1
  %93 = lshr i32 %84, 8
  %94 = trunc i32 %93 to i8
  %95 = getelementptr inbounds i8, ptr %5, i32 2
  store i8 %94, ptr %95, align 1
  %96 = trunc i32 %84 to i8
  %97 = getelementptr inbounds i8, ptr %5, i32 3
  store i8 %96, ptr %97, align 1
  %98 = lshr i32 %87, 8
  %99 = trunc i32 %98 to i8
  %100 = getelementptr inbounds i8, ptr %5, i32 4
  store i8 %99, ptr %100, align 1
  %101 = trunc i32 %87 to i8
  %102 = getelementptr inbounds i8, ptr %5, i32 5
  store i8 %101, ptr %102, align 1
  call void @dev_addr_mod(ptr noundef %69, i32 noundef 0, ptr noundef nonnull %5, i32 noundef 6) #20
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %5) #20
  br label %103

103:                                              ; preds = %81, %80
  %104 = getelementptr i8, ptr %16, i32 1832
  store i32 128, ptr %104, align 8
  %105 = getelementptr inbounds %struct.mv643xx_eth_platform_data, ptr %8, i32 0, i32 9
  %106 = load i32, ptr %105, align 4
  %107 = icmp eq i32 %106, 0
  %108 = select i1 %107, i32 128, i32 %106
  store i32 %108, ptr %104, align 8
  %109 = getelementptr inbounds %struct.mv643xx_eth_platform_data, ptr %8, i32 0, i32 11
  %110 = load i32, ptr %109, align 4
  %111 = getelementptr i8, ptr %16, i32 1836
  store i32 %110, ptr %111, align 4
  %112 = getelementptr inbounds %struct.mv643xx_eth_platform_data, ptr %8, i32 0, i32 12
  %113 = load i32, ptr %112, align 4
  %114 = getelementptr i8, ptr %16, i32 1840
  store i32 %113, ptr %114, align 8
  %115 = getelementptr inbounds %struct.mv643xx_eth_platform_data, ptr %8, i32 0, i32 7
  %116 = load i32, ptr %115, align 4
  %117 = icmp eq i32 %116, 0
  %118 = select i1 %117, i32 1, i32 %116
  %119 = getelementptr i8, ptr %16, i32 1844
  store i32 %118, ptr %119, align 4
  %120 = getelementptr inbounds %struct.mv643xx_eth_platform_data, ptr %8, i32 0, i32 10
  %121 = load i32, ptr %120, align 4
  %122 = icmp eq i32 %121, 0
  %123 = select i1 %122, i32 512, i32 %121
  %124 = call i32 @llvm.umax.i32(i32 %123, i32 434) #20
  %125 = call i32 @llvm.umin.i32(i32 %124, i32 4096) #20
  %126 = getelementptr i8, ptr %16, i32 2156
  store i32 %125, ptr %126, align 4
  %127 = icmp eq i32 %125, %123
  br i1 %127, label %129, label %128

128:                                              ; preds = %103
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %69, ptr noundef nonnull @.str.23, i32 noundef %125, i32 noundef %123) #21
  br label %129

129:                                              ; preds = %128, %103
  %130 = getelementptr inbounds %struct.mv643xx_eth_platform_data, ptr %8, i32 0, i32 13
  %131 = load i32, ptr %130, align 4
  %132 = getelementptr i8, ptr %16, i32 2160
  store i32 %131, ptr %132, align 8
  %133 = getelementptr inbounds %struct.mv643xx_eth_platform_data, ptr %8, i32 0, i32 14
  %134 = load i32, ptr %133, align 4
  %135 = getelementptr i8, ptr %16, i32 2164
  store i32 %134, ptr %135, align 4
  %136 = getelementptr inbounds %struct.mv643xx_eth_platform_data, ptr %8, i32 0, i32 8
  %137 = load i32, ptr %136, align 4
  %138 = icmp eq i32 %137, 0
  %139 = select i1 %138, i32 1, i32 %137
  %140 = getelementptr i8, ptr %16, i32 2168
  store i32 %139, ptr %140, align 8
  %141 = call i32 @netif_set_real_num_tx_queues(ptr noundef nonnull %16, i32 noundef %139) #20
  %142 = load i32, ptr %119, align 4
  %143 = call i32 @netif_set_real_num_rx_queues(ptr noundef nonnull %16, i32 noundef %142) #20
  %144 = getelementptr inbounds %struct.mv643xx_eth_platform_data, ptr %8, i32 0, i32 3
  %145 = load ptr, ptr %144, align 4
  %146 = icmp eq ptr %145, null
  br i1 %146, label %182, label %147

147:                                              ; preds = %129
  %148 = load ptr, ptr %34, align 4
  %149 = getelementptr inbounds %struct.net_device, ptr %148, i32 0, i32 111, i32 1
  %150 = load ptr, ptr %149, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #20
  store i32 0, ptr %4, align 4, !annotation !15
  %151 = getelementptr inbounds %struct.device, ptr %150, i32 0, i32 25
  %152 = load ptr, ptr %151, align 8
  %153 = icmp eq ptr %152, null
  br i1 %153, label %162, label %154

154:                                              ; preds = %147
  %155 = call i32 @of_get_phy_mode(ptr noundef nonnull %152, ptr noundef nonnull %4) #20
  %156 = icmp ne i32 %155, 0
  %157 = load ptr, ptr %151, align 8
  %158 = icmp eq ptr %157, null
  %159 = select i1 %158, i1 true, i1 %156
  %160 = load i32, ptr %4, align 4
  %161 = select i1 %159, i32 3, i32 %160
  br label %162

162:                                              ; preds = %154, %147
  %163 = phi i32 [ 3, %147 ], [ %161, %154 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #20
  %164 = call ptr @of_phy_connect(ptr noundef %148, ptr noundef nonnull %145, ptr noundef nonnull @mv643xx_eth_adjust_link, i32 noundef 0, i32 noundef %163) #20
  %165 = icmp eq ptr %164, null
  br i1 %165, label %416, label %166

166:                                              ; preds = %162
  %167 = getelementptr inbounds %struct.mdio_device, ptr %164, i32 0, i32 6
  %168 = load i32, ptr %167, align 8
  %169 = load i32, ptr %33, align 8
  %170 = mul i32 %169, 5
  %171 = load ptr, ptr %20, align 8
  %172 = load ptr, ptr %171, align 4
  %173 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %172) #20, !srcloc !17
  call void asm sideeffect "dsb ", "~{memory}"() #20, !srcloc !25
  %174 = shl i32 31, %170
  %175 = xor i32 %174, -1
  %176 = and i32 %173, %175
  %177 = and i32 %168, 31
  %178 = shl i32 %177, %170
  %179 = or i32 %176, %178
  call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !26
  call void @arm_heavy_mb() #20
  %180 = load ptr, ptr %20, align 8
  %181 = load ptr, ptr %180, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %181, i32 %179) #20, !srcloc !9
  br label %264

182:                                              ; preds = %129
  %183 = getelementptr inbounds %struct.mv643xx_eth_platform_data, ptr %8, i32 0, i32 2
  %184 = load i32, ptr %183, align 4
  %185 = icmp eq i32 %184, 255
  br i1 %185, label %264, label %186

186:                                              ; preds = %182
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %3, i8 0, i32 64, i1 false) #20, !annotation !15
  %187 = icmp eq i32 %184, 0
  br i1 %187, label %188, label %196

188:                                              ; preds = %186
  %189 = load ptr, ptr %20, align 8
  %190 = load ptr, ptr %189, align 4
  %191 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %190) #20, !srcloc !17
  call void asm sideeffect "dsb ", "~{memory}"() #20, !srcloc !25
  %192 = load i32, ptr %33, align 8
  %193 = mul i32 %192, 5
  %194 = lshr i32 %191, %193
  %195 = and i32 %194, 31
  br label %196

196:                                              ; preds = %188, %186
  %197 = phi i32 [ %195, %188 ], [ %184, %186 ]
  %198 = phi i32 [ 32, %188 ], [ 1, %186 ]
  br label %202

199:                                              ; preds = %221
  %200 = add nuw nsw i32 %203, 1
  %201 = icmp eq i32 %200, %198
  br i1 %201, label %262, label %202

202:                                              ; preds = %199, %196
  %203 = phi i32 [ 0, %196 ], [ %200, %199 ]
  %204 = add i32 %203, %197
  %205 = and i32 %204, 31
  %206 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 64, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %205) #20
  %207 = load ptr, ptr %34, align 4
  %208 = getelementptr inbounds %struct.net_device, ptr %207, i32 0, i32 111, i32 1
  %209 = load ptr, ptr %208, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #20
  store i32 0, ptr %2, align 4, !annotation !15
  %210 = getelementptr inbounds %struct.device, ptr %209, i32 0, i32 25
  %211 = load ptr, ptr %210, align 8
  %212 = icmp eq ptr %211, null
  br i1 %212, label %221, label %213

213:                                              ; preds = %202
  %214 = call i32 @of_get_phy_mode(ptr noundef nonnull %211, ptr noundef nonnull %2) #20
  %215 = icmp ne i32 %214, 0
  %216 = load ptr, ptr %210, align 8
  %217 = icmp eq ptr %216, null
  %218 = select i1 %217, i1 true, i1 %215
  %219 = load i32, ptr %2, align 4
  %220 = select i1 %218, i32 3, i32 %219
  br label %221

221:                                              ; preds = %213, %202
  %222 = phi i32 [ 3, %202 ], [ %220, %213 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #20
  %223 = call ptr @phy_connect(ptr noundef %207, ptr noundef nonnull %3, ptr noundef nonnull @mv643xx_eth_adjust_link, i32 noundef %222) #20
  %224 = icmp ugt ptr %223, inttoptr (i32 -4096 to ptr)
  br i1 %224, label %199, label %225

225:                                              ; preds = %221
  %226 = load i32, ptr %33, align 8
  %227 = mul i32 %226, 5
  %228 = load ptr, ptr %20, align 8
  %229 = load ptr, ptr %228, align 4
  %230 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %229) #20, !srcloc !17
  call void asm sideeffect "dsb ", "~{memory}"() #20, !srcloc !25
  %231 = shl i32 31, %227
  %232 = xor i32 %231, -1
  %233 = and i32 %230, %232
  %234 = shl i32 %205, %227
  %235 = or i32 %233, %234
  call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !26
  call void @arm_heavy_mb() #20
  %236 = load ptr, ptr %20, align 8
  %237 = load ptr, ptr %236, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %237, i32 %235) #20, !srcloc !9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #20
  %238 = getelementptr inbounds %struct.mv643xx_eth_platform_data, ptr %8, i32 0, i32 5
  %239 = load i32, ptr %238, align 4
  %240 = load ptr, ptr %34, align 4
  %241 = getelementptr inbounds %struct.net_device, ptr %240, i32 0, i32 120
  %242 = load ptr, ptr %241, align 8
  %243 = icmp eq i32 %239, 0
  %244 = getelementptr inbounds %struct.phy_device, ptr %242, i32 0, i32 4
  %245 = load i16, ptr %244, align 8
  br i1 %243, label %246, label %252

246:                                              ; preds = %225
  %247 = or i16 %245, 4096
  store i16 %247, ptr %244, align 8
  %248 = getelementptr inbounds %struct.phy_device, ptr %242, i32 0, i32 17
  %249 = getelementptr inbounds %struct.phy_device, ptr %242, i32 0, i32 16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %248, ptr noundef align 4 dereferenceable(12) %249, i32 12, i1 false) #20
  %250 = load i32, ptr %248, align 4
  %251 = or i32 %250, 64
  store i32 %251, ptr %248, align 4
  br label %257

252:                                              ; preds = %225
  %253 = getelementptr inbounds %struct.mv643xx_eth_platform_data, ptr %8, i32 0, i32 6
  %254 = load i32, ptr %253, align 4
  %255 = and i16 %245, -4097
  store i16 %255, ptr %244, align 8
  %256 = getelementptr inbounds %struct.phy_device, ptr %242, i32 0, i32 17
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(12) %256, i8 0, i32 12, i1 false) #20
  br label %257

257:                                              ; preds = %252, %246
  %258 = phi i32 [ 0, %246 ], [ %254, %252 ]
  %259 = getelementptr inbounds %struct.phy_device, ptr %242, i32 0, i32 8
  store i32 %239, ptr %259, align 8
  %260 = getelementptr inbounds %struct.phy_device, ptr %242, i32 0, i32 9
  store i32 %258, ptr %260, align 4
  %261 = call i32 @phy_start_aneg(ptr noundef %242) #20
  br label %264

262:                                              ; preds = %199
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #20
  %263 = ptrtoint ptr %223 to i32
  switch i32 %263, label %415 [
    i32 -19, label %416
    i32 0, label %264
  ]

264:                                              ; preds = %262, %257, %182, %166
  %265 = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 42
  store ptr @mv643xx_eth_ethtool_ops, ptr %265, align 8
  %266 = getelementptr inbounds %struct.mv643xx_eth_platform_data, ptr %8, i32 0, i32 5
  %267 = load i32, ptr %266, align 4
  %268 = getelementptr inbounds %struct.mv643xx_eth_platform_data, ptr %8, i32 0, i32 6
  %269 = load i32, ptr %268, align 4
  %270 = load ptr, ptr %34, align 4
  %271 = load ptr, ptr %31, align 4
  %272 = getelementptr i8, ptr %271, i32 60
  %273 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %272) #20, !srcloc !17
  call void asm sideeffect "dsb ", "~{memory}"() #20, !srcloc !23
  %274 = and i32 %273, 1
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %280, label %276

276:                                              ; preds = %264
  %277 = and i32 %273, -2
  call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !24
  call void @arm_heavy_mb() #20
  %278 = load ptr, ptr %31, align 4
  %279 = getelementptr i8, ptr %278, i32 60
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %279, i32 %277) #20, !srcloc !9
  br label %280

280:                                              ; preds = %276, %264
  %281 = getelementptr inbounds %struct.net_device, ptr %270, i32 0, i32 120
  %282 = load ptr, ptr %281, align 8
  %283 = icmp eq ptr %282, null
  br i1 %283, label %284, label %292

284:                                              ; preds = %280
  %285 = icmp eq i32 %267, 100
  %286 = select i1 %285, i32 17441292, i32 664076
  %287 = icmp eq i32 %267, 1000
  %288 = select i1 %287, i32 9052684, i32 %286
  %289 = icmp eq i32 %269, 1
  %290 = or i32 %288, 2097152
  %291 = select i1 %289, i32 %290, i32 %288
  br label %292

292:                                              ; preds = %284, %280
  %293 = phi i32 [ 655872, %280 ], [ %291, %284 ]
  call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !24
  call void @arm_heavy_mb() #20
  %294 = load ptr, ptr %31, align 4
  %295 = getelementptr i8, ptr %294, i32 60
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %295, i32 %293) #20, !srcloc !9
  br label %296

296:                                              ; preds = %296, %292
  %297 = phi i32 [ 0, %292 ], [ %306, %296 ]
  %298 = load i32, ptr %33, align 8
  %299 = shl i32 %298, 7
  %300 = add nuw nsw i32 %297, 4096
  %301 = add i32 %300, %299
  %302 = load ptr, ptr %20, align 8
  %303 = load ptr, ptr %302, align 4
  %304 = getelementptr i8, ptr %303, i32 %301
  %305 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %304) #20, !srcloc !17
  call void asm sideeffect "dsb ", "~{memory}"() #20, !srcloc !25
  %306 = add nuw nsw i32 %297, 4
  %307 = icmp ult i32 %297, 124
  br i1 %307, label %296, label %308

308:                                              ; preds = %296
  %309 = load ptr, ptr %31, align 4
  %310 = getelementptr i8, ptr %309, i32 132
  %311 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %310) #20, !srcloc !17
  call void asm sideeffect "dsb ", "~{memory}"() #20, !srcloc !23
  %312 = load ptr, ptr %31, align 4
  %313 = getelementptr i8, ptr %312, i32 136
  %314 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %313) #20, !srcloc !17
  call void asm sideeffect "dsb ", "~{memory}"() #20, !srcloc !23
  %315 = getelementptr i8, ptr %16, i32 1424
  call void @init_timer_key(ptr noundef %315, ptr noundef nonnull @mib_counters_timer_wrapper, i32 noundef 0, ptr noundef null, ptr noundef null) #20
  %316 = load volatile i32, ptr @jiffies, align 64
  %317 = add i32 %316, 3000
  %318 = getelementptr i8, ptr %16, i32 1432
  store i32 %317, ptr %318, align 8
  %319 = getelementptr i8, ptr %16, i32 1444
  store i32 0, ptr %319, align 4
  %320 = getelementptr i8, ptr %16, i32 1584
  store i32 -32, ptr %320, align 8
  %321 = getelementptr i8, ptr %16, i32 1588
  store volatile ptr %321, ptr %321, align 4
  %322 = getelementptr i8, ptr %16, i32 1592
  store ptr %321, ptr %322, align 4
  %323 = getelementptr i8, ptr %16, i32 1596
  store ptr @tx_timeout_task, ptr %323, align 4
  %324 = getelementptr i8, ptr %16, i32 1600
  call void @netif_napi_add(ptr noundef %16, ptr noundef %324, ptr noundef nonnull @mv643xx_eth_poll, i32 noundef 64) #20
  %325 = getelementptr i8, ptr %16, i32 1848
  call void @init_timer_key(ptr noundef %325, ptr noundef nonnull @oom_timer_wrapper, i32 noundef 0, ptr noundef null, ptr noundef null) #20
  %326 = call ptr @platform_get_resource(ptr noundef %0, i32 noundef 1024, i32 noundef 0) #20
  %327 = icmp eq ptr %326, null
  br i1 %327, label %328, label %329, !prof !27

328:                                              ; preds = %308
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/marvell/mv643xx_eth.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3193, 0\0A.popsection", ""() #20, !srcloc !28
  unreachable

329:                                              ; preds = %308
  %330 = load i32, ptr %326, align 4
  %331 = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 59
  store i32 %330, ptr %331, align 8
  %332 = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 16
  store ptr @mv643xx_eth_netdev_ops, ptr %332, align 8
  %333 = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 96
  store i32 200, ptr %333, align 8
  %334 = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 5
  store i32 0, ptr %334, align 32
  %335 = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 23
  %336 = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 26
  store i64 65539, ptr %336, align 8
  store i64 1099511693315, ptr %335, align 16
  %337 = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 24
  store i64 1099511693315, ptr %337, align 8
  %338 = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 15
  %339 = load i64, ptr %338, align 16
  %340 = or i64 %339, 4096
  store i64 %340, ptr %338, align 16
  %341 = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 116
  store volatile i16 100, ptr %341, align 4
  %342 = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 30
  store i32 64, ptr %342, align 8
  %343 = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 31
  store i32 9500, ptr %343, align 4
  %344 = load ptr, ptr %20, align 8
  %345 = getelementptr inbounds %struct.mv643xx_eth_shared_private, ptr %344, i32 0, i32 1
  %346 = load i32, ptr %345, align 4
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %355, label %348

348:                                              ; preds = %329
  %349 = load i32, ptr %33, align 8
  %350 = shl i32 %349, 4
  %351 = add i32 %350, 660
  call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !26
  call void @arm_heavy_mb() #20
  %352 = load ptr, ptr %20, align 8
  %353 = load ptr, ptr %352, align 4
  %354 = getelementptr i8, ptr %353, i32 %351
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %354, i32 %346) #20, !srcloc !9
  br label %355

355:                                              ; preds = %348, %329
  call void @netif_carrier_off(ptr noundef %16) #20
  call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !24
  call void @arm_heavy_mb() #20
  %356 = load ptr, ptr %31, align 4
  %357 = getelementptr i8, ptr %356, i32 28
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %357, i32 8388660) #20, !srcloc !9
  %358 = load i32, ptr %47, align 8
  %359 = zext i32 %358 to i64
  %360 = mul nuw nsw i64 %359, 250
  %361 = add nuw nsw i64 %360, 31999999
  %362 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %361) #22, !srcloc !29
  %363 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %361, i64 %362, i32 0) #22, !srcloc !30
  %364 = extractvalue { i64, i32 } %363, 0
  %365 = lshr i64 %364, 24
  %366 = load ptr, ptr %31, align 4
  %367 = getelementptr i8, ptr %366, i32 28
  %368 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %367) #20, !srcloc !17
  call void asm sideeffect "dsb ", "~{memory}"() #20, !srcloc !23
  %369 = load ptr, ptr %20, align 8
  %370 = getelementptr inbounds %struct.mv643xx_eth_shared_private, ptr %369, i32 0, i32 2
  %371 = load i32, ptr %370, align 4
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %384, label %373

373:                                              ; preds = %355
  %374 = icmp ugt i64 %364, 1099511627775
  %375 = trunc i64 %365 to i32
  %376 = select i1 %374, i32 65535, i32 %375
  %377 = and i32 %368, -37748609
  %378 = shl i32 %376, 10
  %379 = and i32 %378, 33554432
  %380 = or i32 %379, %377
  %381 = shl i32 %376, 7
  %382 = and i32 %381, 4194176
  %383 = or i32 %380, %382
  br label %392

384:                                              ; preds = %355
  %385 = icmp ugt i64 %364, 274877906943
  %386 = trunc i64 %365 to i32
  %387 = and i32 %368, -4194049
  %388 = shl i32 %386, 8
  %389 = and i32 %388, 4194048
  %390 = select i1 %385, i32 4194048, i32 %389
  %391 = or i32 %390, %387
  br label %392

392:                                              ; preds = %384, %373
  %393 = phi i32 [ %383, %373 ], [ %391, %384 ]
  call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !24
  call void @arm_heavy_mb() #20
  %394 = load ptr, ptr %31, align 4
  %395 = getelementptr i8, ptr %394, i32 28
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %395, i32 %393) #20, !srcloc !9
  %396 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 31999999) #22, !srcloc !29
  %397 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 31999999, i64 %396, i32 0) #22, !srcloc !30
  %398 = extractvalue { i64, i32 } %397, 0
  %399 = icmp ugt i64 %398, 274877906943
  %400 = lshr i64 %398, 20
  %401 = trunc i64 %400 to i32
  %402 = and i32 %401, -16
  %403 = select i1 %399, i32 262128, i32 %402
  call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !24
  call void @arm_heavy_mb() #20
  %404 = load ptr, ptr %31, align 4
  %405 = getelementptr i8, ptr %404, i32 116
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %405, i32 %403) #20, !srcloc !9
  %406 = call i32 @register_netdev(ptr noundef %16) #20
  %407 = icmp eq i32 %406, 0
  br i1 %407, label %408, label %416

408:                                              ; preds = %392
  %409 = load i32, ptr %33, align 8
  %410 = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 72
  %411 = load ptr, ptr %410, align 32
  call void (ptr, ptr, ...) @netdev_notice(ptr noundef %16, ptr noundef nonnull @.str.21, i32 noundef %409, ptr noundef %411) #21
  %412 = load i32, ptr %135, align 4
  %413 = icmp sgt i32 %412, 0
  br i1 %413, label %414, label %422

414:                                              ; preds = %408
  call void (ptr, ptr, ...) @netdev_notice(ptr noundef %16, ptr noundef nonnull @.str.22) #21
  br label %422

415:                                              ; preds = %262
  br label %416

416:                                              ; preds = %415, %392, %262, %162
  %417 = phi i32 [ %406, %392 ], [ -517, %262 ], [ %263, %415 ], [ -517, %162 ]
  %418 = load ptr, ptr %49, align 4
  %419 = icmp ugt ptr %418, inttoptr (i32 -4096 to ptr)
  br i1 %419, label %421, label %420

420:                                              ; preds = %416
  call void @clk_disable(ptr noundef %418) #20
  call void @clk_unprepare(ptr noundef %418) #20
  br label %421

421:                                              ; preds = %420, %416
  call void @free_netdev(ptr noundef %16) #20
  br label %422

422:                                              ; preds = %421, %414, %408, %15, %14, %10
  %423 = phi i32 [ -19, %10 ], [ -19, %14 ], [ %417, %421 ], [ -12, %15 ], [ 0, %414 ], [ 0, %408 ]
  ret i32 %423
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv643xx_eth_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  tail call void @unregister_netdev(ptr noundef %5) #20
  %6 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 120
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call void @phy_disconnect(ptr noundef nonnull %7) #20
  br label %10

10:                                               ; preds = %9, %1
  %11 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %3, i32 0, i32 7
  %12 = tail call zeroext i1 @cancel_work_sync(ptr noundef %11) #20
  %13 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %3, i32 0, i32 28
  %14 = load ptr, ptr %13, align 4
  %15 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %17, label %16

16:                                               ; preds = %10
  tail call void @clk_disable(ptr noundef %14) #20
  tail call void @clk_unprepare(ptr noundef %14) #20
  br label %17

17:                                               ; preds = %16, %10
  %18 = load ptr, ptr %4, align 4
  tail call void @free_netdev(ptr noundef %18) #20
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mv643xx_eth_shutdown(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !24
  tail call void @arm_heavy_mb() #20
  %4 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 0) #20, !srcloc !9
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr i8, ptr %7, i32 104
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #20, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #20, !srcloc !23
  %10 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %3, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 6
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  tail call fastcc void @port_reset(ptr noundef %3)
  br label %17

17:                                               ; preds = %16, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_set_real_num_tx_queues(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_set_real_num_rx_queues(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_connect(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mv643xx_eth_adjust_link(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 1412
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 60
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #20, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #20, !srcloc !23
  %6 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.phy_device, ptr %7, i32 0, i32 4
  %9 = load i16, ptr %8, align 8
  %10 = and i16 %9, 4096
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = and i32 %5, -8207
  br label %34

14:                                               ; preds = %1
  %15 = or i32 %5, 8206
  %16 = getelementptr inbounds %struct.phy_device, ptr %7, i32 0, i32 8
  %17 = load i32, ptr %16, align 8
  switch i32 %17, label %23 [
    i32 1000, label %18
    i32 100, label %20
  ]

18:                                               ; preds = %14
  %19 = or i32 %5, 10493966
  br label %34

20:                                               ; preds = %14
  %21 = and i32 %15, -25165825
  %22 = or i32 %21, 16777216
  br label %25

23:                                               ; preds = %14
  %24 = and i32 %15, -25165825
  br label %25

25:                                               ; preds = %23, %20
  %26 = phi i32 [ %22, %20 ], [ %24, %23 ]
  %27 = getelementptr inbounds %struct.phy_device, ptr %7, i32 0, i32 9
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = or i32 %26, 2097152
  br label %34

32:                                               ; preds = %25
  %33 = and i32 %26, -2097153
  br label %34

34:                                               ; preds = %32, %30, %18, %12
  %35 = phi i32 [ %13, %12 ], [ %19, %18 ], [ %31, %30 ], [ %33, %32 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !24
  tail call void @arm_heavy_mb() #20
  %36 = load ptr, ptr %2, align 4
  %37 = getelementptr i8, ptr %36, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %35) #20, !srcloc !9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mib_counters_timer_wrapper(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -16
  tail call fastcc void @mib_counters_update(ptr noundef %2)
  %3 = load volatile i32, ptr @jiffies, align 64
  %4 = add i32 %3, 3000
  %5 = tail call i32 @mod_timer(ptr noundef %0, i32 noundef %4) #20
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tx_timeout_task(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -164
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %23, label %8

8:                                                ; preds = %1
  %9 = getelementptr i8, ptr %0, i32 -176
  tail call void @netif_tx_stop_all_queues(ptr noundef %3) #20
  tail call fastcc void @port_reset(ptr noundef %9)
  tail call fastcc void @port_start(ptr noundef %9)
  %10 = load ptr, ptr %2, align 4
  %11 = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 88
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 87
  br label %16

16:                                               ; preds = %16, %14
  %17 = phi i32 [ 0, %14 ], [ %20, %16 ]
  %18 = load ptr, ptr %15, align 64
  %19 = getelementptr %struct.netdev_queue, ptr %18, i32 %17
  tail call void @netif_tx_wake_queue(ptr noundef %19) #20
  %20 = add nuw i32 %17, 1
  %21 = load i32, ptr %11, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %16, label %23

23:                                               ; preds = %16, %8, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv643xx_eth_poll(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 -192
  %4 = getelementptr i8, ptr %0, i32 220
  %5 = load i8, ptr %4, align 4
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %10, label %7, !prof !31

7:                                                ; preds = %2
  store i8 0, ptr %4, align 4
  %8 = getelementptr i8, ptr %0, i32 248
  %9 = tail call i32 @del_timer(ptr noundef %8) #20
  br label %10

10:                                               ; preds = %7, %2
  %11 = getelementptr i8, ptr %0, i32 221
  %12 = getelementptr i8, ptr %0, i32 -180
  %13 = getelementptr i8, ptr %0, i32 -188
  %14 = getelementptr i8, ptr %0, i32 568
  %15 = getelementptr i8, ptr %0, i32 572
  %16 = getelementptr i8, ptr %0, i32 222
  %17 = getelementptr i8, ptr %0, i32 223
  %18 = getelementptr i8, ptr %0, i32 224
  %19 = getelementptr i8, ptr %0, i32 225
  %20 = getelementptr i8, ptr %0, i32 268
  %21 = icmp sgt i32 %1, 0
  br i1 %21, label %22, label %336

22:                                               ; preds = %333, %10
  %23 = phi i32 [ %334, %333 ], [ 0, %10 ]
  %24 = load i8, ptr %11, align 1
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %85, label %26

26:                                               ; preds = %22
  store i8 0, ptr %11, align 1
  %27 = load ptr, ptr %12, align 4
  %28 = load ptr, ptr %13, align 4
  %29 = getelementptr i8, ptr %28, i32 68
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #20, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #20, !srcloc !23
  %31 = and i32 %30, 2
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %65

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.net_device, ptr %27, i32 0, i32 6
  %35 = load volatile i32, ptr %34, align 4
  %36 = and i32 %35, 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %83

38:                                               ; preds = %33
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %27, ptr noundef nonnull @.str.38) #21
  tail call void @netif_carrier_off(ptr noundef %27) #20
  %39 = load i32, ptr %14, align 8
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %83

41:                                               ; preds = %41, %38
  %42 = phi i32 [ %62, %41 ], [ 0, %38 ]
  %43 = getelementptr %struct.tx_queue, ptr %15, i32 %42
  %44 = getelementptr %struct.tx_queue, ptr %15, i32 %42, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = tail call fastcc i32 @txq_reclaim(ptr noundef %43, i32 noundef %45, i32 noundef 1) #20
  %47 = load i32, ptr %43, align 4
  %48 = mul i32 %47, -80
  %49 = add i32 %48, -764
  %50 = getelementptr i8, ptr %43, i32 %49
  %51 = getelementptr %struct.tx_queue, ptr %15, i32 %42, i32 11
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr %struct.tx_queue, ptr %15, i32 %42, i32 3
  %54 = load i32, ptr %53, align 4
  %55 = shl i32 %54, 4
  %56 = add i32 %55, %52
  %57 = shl i32 %47, 2
  %58 = add i32 %57, 704
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !24
  tail call void @arm_heavy_mb() #20
  %59 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %50, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr i8, ptr %60, i32 %58
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 %56) #20, !srcloc !9
  %62 = add nuw nsw i32 %42, 1
  %63 = load i32, ptr %14, align 8
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %41, label %83

65:                                               ; preds = %26
  %66 = and i32 %30, 48
  switch i32 %66, label %69 [
    i32 0, label %70
    i32 32, label %67
    i32 16, label %68
  ]

67:                                               ; preds = %65
  br label %70

68:                                               ; preds = %65
  br label %70

69:                                               ; preds = %65
  br label %70

70:                                               ; preds = %69, %68, %67, %65
  %71 = phi i32 [ -1, %69 ], [ 1000, %68 ], [ 100, %67 ], [ 10, %65 ]
  %72 = and i32 %30, 4
  %73 = icmp eq i32 %72, 0
  %74 = and i32 %30, 8
  %75 = icmp eq i32 %74, 0
  %76 = select i1 %73, ptr @.str.41, ptr @.str.40
  %77 = select i1 %75, ptr @.str.43, ptr @.str.42
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %27, ptr noundef nonnull @.str.39, i32 noundef %71, ptr noundef nonnull %76, ptr noundef nonnull %77) #21
  %78 = getelementptr inbounds %struct.net_device, ptr %27, i32 0, i32 6
  %79 = load volatile i32, ptr %78, align 4
  %80 = and i32 %79, 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %70
  tail call void @netif_carrier_on(ptr noundef %27) #20
  br label %83

83:                                               ; preds = %82, %70, %41, %38, %33
  %84 = add i32 %23, 1
  br label %333

85:                                               ; preds = %22
  %86 = load i8, ptr %16, align 2
  %87 = load i8, ptr %17, align 1
  %88 = or i8 %87, %86
  %89 = load i8, ptr %18, align 8
  %90 = or i8 %88, %89
  %91 = load i8, ptr %4, align 4
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %93, label %96, !prof !31

93:                                               ; preds = %85
  %94 = load i8, ptr %19, align 1
  %95 = or i8 %94, %90
  br label %96

96:                                               ; preds = %93, %85
  %97 = phi i8 [ %95, %93 ], [ %90, %85 ]
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = tail call fastcc i32 @mv643xx_eth_collect_events(ptr noundef %3)
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %336, label %333

102:                                              ; preds = %96
  %103 = zext i8 %97 to i32
  %104 = tail call i32 @llvm.ctlz.i32(i32 %103, i1 true) #20, !range !32
  %105 = xor i32 %104, 31
  %106 = shl nuw i32 1, %105
  %107 = sub i32 %1, %23
  %108 = tail call i32 @llvm.smin.i32(i32 %107, i32 16)
  %109 = zext i8 %87 to i32
  %110 = and i32 %106, %109
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %167, label %112

112:                                              ; preds = %102
  %113 = getelementptr %struct.tx_queue, ptr %15, i32 %105
  %114 = load i32, ptr %113, align 4
  %115 = mul i32 %114, -80
  %116 = add i32 %115, -764
  %117 = getelementptr i8, ptr %113, i32 %116
  %118 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %117, i32 0, i32 3
  %119 = load ptr, ptr %118, align 4
  %120 = getelementptr inbounds %struct.net_device, ptr %119, i32 0, i32 87
  %121 = load ptr, ptr %120, align 64
  %122 = tail call ptr @llvm.thread.pointer() #20
  %123 = getelementptr inbounds %struct.thread_info, ptr %122, i32 0, i32 2
  %124 = load i32, ptr %123, align 8
  %125 = getelementptr %struct.netdev_queue, ptr %121, i32 %114, i32 9
  tail call void @_raw_spin_lock(ptr noundef %125) #20
  %126 = getelementptr %struct.netdev_queue, ptr %121, i32 %114, i32 10
  store volatile i32 %124, ptr %126, align 4
  %127 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %117, i32 0, i32 1
  %128 = load ptr, ptr %127, align 4
  %129 = getelementptr i8, ptr %128, i32 72
  %130 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %129) #20, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #20, !srcloc !23
  %131 = load i32, ptr %113, align 4
  %132 = shl nuw i32 1, %131
  %133 = and i32 %132, %130
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %157

135:                                              ; preds = %112
  %136 = shl i32 %131, 2
  %137 = add i32 %136, 704
  %138 = load ptr, ptr %127, align 4
  %139 = getelementptr i8, ptr %138, i32 %137
  %140 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %139) #20, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #20, !srcloc !23
  %141 = getelementptr inbounds %struct.tx_queue, ptr %113, i32 0, i32 11
  %142 = load i32, ptr %141, align 4
  %143 = getelementptr inbounds %struct.tx_queue, ptr %113, i32 0, i32 3
  %144 = load i32, ptr %143, align 4
  %145 = shl i32 %144, 4
  %146 = add i32 %145, %142
  %147 = icmp eq i32 %140, %146
  br i1 %147, label %157, label %148

148:                                              ; preds = %135
  %149 = load i32, ptr %113, align 4
  %150 = mul i32 %149, -80
  %151 = add i32 %150, -764
  %152 = getelementptr i8, ptr %113, i32 %151
  %153 = shl nuw i32 1, %149
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !24
  tail call void @arm_heavy_mb() #20
  %154 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %152, i32 0, i32 1
  %155 = load ptr, ptr %154, align 4
  %156 = getelementptr i8, ptr %155, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %156, i32 %153) #20, !srcloc !9
  br label %157

157:                                              ; preds = %148, %135, %112
  store volatile i32 -1, ptr %126, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !33
  %158 = load i16, ptr %125, align 4
  %159 = add i16 %158, 1
  store i16 %159, ptr %125, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #20, !srcloc !34
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #20, !srcloc !35
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !36
  %160 = load i32, ptr %113, align 4
  %161 = shl nuw i32 1, %160
  %162 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %117, i32 0, i32 13
  %163 = load i8, ptr %162, align 1
  %164 = trunc i32 %161 to i8
  %165 = xor i8 %164, -1
  %166 = and i8 %163, %165
  store i8 %166, ptr %162, align 1
  br label %333

167:                                              ; preds = %102
  %168 = zext i8 %86 to i32
  %169 = and i32 %106, %168
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %203, label %171

171:                                              ; preds = %167
  %172 = getelementptr %struct.tx_queue, ptr %15, i32 %105
  %173 = tail call fastcc i32 @txq_reclaim(ptr noundef %172, i32 noundef %108, i32 noundef 0)
  %174 = add i32 %173, %23
  %175 = load i32, ptr %172, align 4
  %176 = mul i32 %175, -80
  %177 = add i32 %176, -764
  %178 = getelementptr i8, ptr %172, i32 %177
  %179 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %178, i32 0, i32 3
  %180 = load ptr, ptr %179, align 4
  %181 = getelementptr inbounds %struct.net_device, ptr %180, i32 0, i32 87
  %182 = load ptr, ptr %181, align 64
  %183 = getelementptr %struct.netdev_queue, ptr %182, i32 %175
  %184 = getelementptr %struct.netdev_queue, ptr %182, i32 %175, i32 12
  %185 = load volatile i32, ptr %184, align 4
  %186 = and i32 %185, 1
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %333, label %188

188:                                              ; preds = %171
  %189 = tail call ptr @llvm.thread.pointer() #20
  %190 = getelementptr inbounds %struct.thread_info, ptr %189, i32 0, i32 2
  %191 = load i32, ptr %190, align 8
  %192 = getelementptr %struct.netdev_queue, ptr %182, i32 %175, i32 9
  tail call void @_raw_spin_lock(ptr noundef %192) #20
  %193 = getelementptr %struct.netdev_queue, ptr %182, i32 %175, i32 10
  store volatile i32 %191, ptr %193, align 4
  %194 = getelementptr inbounds %struct.tx_queue, ptr %172, i32 0, i32 2
  %195 = load i32, ptr %194, align 4
  %196 = getelementptr inbounds %struct.tx_queue, ptr %172, i32 0, i32 6
  %197 = load i32, ptr %196, align 4
  %198 = icmp sgt i32 %195, %197
  br i1 %198, label %200, label %199

199:                                              ; preds = %188
  tail call void @netif_tx_wake_queue(ptr noundef %183) #20
  br label %200

200:                                              ; preds = %199, %188
  store volatile i32 -1, ptr %193, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !33
  %201 = load i16, ptr %192, align 4
  %202 = add i16 %201, 1
  store i16 %202, ptr %192, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #20, !srcloc !34
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #20, !srcloc !35
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !36
  br label %333

203:                                              ; preds = %167
  %204 = zext i8 %89 to i32
  %205 = and i32 %106, %204
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %322, label %207

207:                                              ; preds = %203
  %208 = getelementptr %struct.rx_queue, ptr %20, i32 %105
  %209 = load i32, ptr %208, align 4
  %210 = mul i32 %209, -36
  %211 = add i32 %210, -460
  %212 = getelementptr i8, ptr %208, i32 %211
  %213 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %212, i32 0, i32 3
  %214 = load ptr, ptr %213, align 4
  %215 = getelementptr inbounds %struct.net_device, ptr %214, i32 0, i32 36
  %216 = getelementptr inbounds %struct.rx_queue, ptr %208, i32 0, i32 2
  %217 = getelementptr inbounds %struct.rx_queue, ptr %208, i32 0, i32 5
  %218 = icmp sgt i32 %107, 0
  br i1 %218, label %219, label %308

219:                                              ; preds = %207
  %220 = getelementptr inbounds %struct.rx_queue, ptr %208, i32 0, i32 3
  %221 = getelementptr inbounds %struct.rx_queue, ptr %208, i32 0, i32 8
  %222 = getelementptr inbounds %struct.rx_queue, ptr %208, i32 0, i32 1
  %223 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %212, i32 0, i32 15
  %224 = getelementptr inbounds %struct.net_device, ptr %214, i32 0, i32 36, i32 2
  %225 = getelementptr inbounds %struct.net_device, ptr %214, i32 0, i32 36, i32 6
  %226 = getelementptr inbounds %struct.net_device, ptr %214, i32 0, i32 36, i32 4
  %227 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %212, i32 0, i32 8
  br label %228

228:                                              ; preds = %306, %219
  %229 = phi i32 [ 0, %219 ], [ %258, %306 ]
  %230 = load i32, ptr %216, align 4
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %308, label %232

232:                                              ; preds = %228
  %233 = load ptr, ptr %217, align 4
  %234 = load i32, ptr %220, align 4
  %235 = getelementptr %struct.rx_desc, ptr %233, i32 %234
  %236 = load i32, ptr %235, align 4
  %237 = icmp sgt i32 %236, -1
  br i1 %237, label %238, label %308

238:                                              ; preds = %232
  tail call void asm sideeffect "dsb ", "~{memory}"() #20, !srcloc !37
  %239 = load ptr, ptr %221, align 4
  %240 = load i32, ptr %220, align 4
  %241 = getelementptr ptr, ptr %239, i32 %240
  %242 = load ptr, ptr %241, align 4
  store ptr null, ptr %241, align 4
  %243 = load i32, ptr %220, align 4
  %244 = add i32 %243, 1
  %245 = load i32, ptr %222, align 4
  %246 = icmp eq i32 %244, %245
  %247 = select i1 %246, i32 0, i32 %244
  store i32 %247, ptr %220, align 4
  %248 = load ptr, ptr %213, align 4
  %249 = getelementptr inbounds %struct.net_device, ptr %248, i32 0, i32 111, i32 1
  %250 = load ptr, ptr %249, align 4
  %251 = getelementptr %struct.rx_desc, ptr %233, i32 %234, i32 3
  %252 = load i32, ptr %251, align 4
  %253 = getelementptr %struct.rx_desc, ptr %233, i32 %234, i32 1
  %254 = load i16, ptr %253, align 4
  %255 = zext i16 %254 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %250, i32 noundef %252, i32 noundef %255, i32 noundef 2, i32 noundef 0) #20
  %256 = load i32, ptr %216, align 4
  %257 = add i32 %256, -1
  store i32 %257, ptr %216, align 4
  %258 = add nuw nsw i32 %229, 1
  %259 = load i32, ptr %208, align 4
  %260 = shl nuw i32 1, %259
  %261 = load i8, ptr %223, align 1
  %262 = trunc i32 %260 to i8
  %263 = or i8 %261, %262
  store i8 %263, ptr %223, align 1
  %264 = getelementptr %struct.rx_desc, ptr %233, i32 %234, i32 2
  %265 = load i16, ptr %264, align 2
  %266 = load i32, ptr %215, align 4
  %267 = add i32 %266, 1
  store i32 %267, ptr %215, align 4
  %268 = zext i16 %265 to i32
  %269 = add nsw i32 %268, -2
  %270 = load i32, ptr %224, align 4
  %271 = add i32 %269, %270
  store i32 %271, ptr %224, align 4
  %272 = and i32 %236, 201326593
  %273 = icmp eq i32 %272, 201326592
  br i1 %273, label %274, label %289

274:                                              ; preds = %238
  %275 = add nsw i32 %268, -6
  %276 = tail call ptr @skb_put(ptr noundef %242, i32 noundef %275) #20
  %277 = and i32 %236, 1073741824
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %284, label %279

279:                                              ; preds = %274
  %280 = getelementptr inbounds %struct.sk_buff, ptr %242, i32 0, i32 13
  %281 = load i16, ptr %280, align 8
  %282 = and i16 %281, -97
  %283 = or i16 %282, 32
  store i16 %283, ptr %280, align 8
  br label %284

284:                                              ; preds = %279, %274
  %285 = load ptr, ptr %213, align 4
  %286 = tail call zeroext i16 @eth_type_trans(ptr noundef %242, ptr noundef %285) #20
  %287 = getelementptr inbounds %struct.sk_buff, ptr %242, i32 0, i32 13, i32 0, i32 16
  store i16 %286, ptr %287, align 8
  %288 = tail call i32 @napi_gro_receive(ptr noundef %227, ptr noundef %242) #20
  br label %306

289:                                              ; preds = %238
  %290 = load i32, ptr %225, align 4
  %291 = add i32 %290, 1
  store i32 %291, ptr %225, align 4
  %292 = and i32 %236, 201326592
  %293 = icmp eq i32 %292, 201326592
  br i1 %293, label %299, label %294

294:                                              ; preds = %289
  %295 = tail call i32 @net_ratelimit() #20
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %299, label %297

297:                                              ; preds = %294
  %298 = load ptr, ptr %213, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %298, ptr noundef nonnull @.str.44) #21
  br label %299

299:                                              ; preds = %297, %294, %289
  %300 = and i32 %236, 1
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %305, label %302

302:                                              ; preds = %299
  %303 = load i32, ptr %226, align 4
  %304 = add i32 %303, 1
  store i32 %304, ptr %226, align 4
  br label %305

305:                                              ; preds = %302, %299
  tail call void @consume_skb(ptr noundef %242) #20
  br label %306

306:                                              ; preds = %305, %284
  %307 = icmp eq i32 %258, %108
  br i1 %307, label %319, label %228

308:                                              ; preds = %232, %228, %207
  %309 = phi i32 [ 0, %207 ], [ %229, %228 ], [ %229, %232 ]
  %310 = icmp slt i32 %309, %108
  br i1 %310, label %311, label %319

311:                                              ; preds = %308
  %312 = load i32, ptr %208, align 4
  %313 = shl nuw i32 1, %312
  %314 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %212, i32 0, i32 14
  %315 = load i8, ptr %314, align 8
  %316 = trunc i32 %313 to i8
  %317 = xor i8 %316, -1
  %318 = and i8 %315, %317
  store i8 %318, ptr %314, align 8
  br label %319

319:                                              ; preds = %311, %308, %306
  %320 = phi i32 [ %309, %311 ], [ %309, %308 ], [ %108, %306 ]
  %321 = add i32 %320, %23
  br label %333

322:                                              ; preds = %203
  br i1 %92, label %323, label %332

323:                                              ; preds = %322
  %324 = load i8, ptr %19, align 1
  %325 = zext i8 %324 to i32
  %326 = and i32 %106, %325
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %332, label %328

328:                                              ; preds = %323
  %329 = getelementptr %struct.rx_queue, ptr %20, i32 %105
  %330 = tail call fastcc i32 @rxq_refill(ptr noundef %329, i32 noundef %108)
  %331 = add i32 %330, %23
  br label %333

332:                                              ; preds = %323, %322
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/marvell/mv643xx_eth.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2296, 0\0A.popsection", ""() #20, !srcloc !38
  unreachable

333:                                              ; preds = %328, %319, %200, %171, %157, %99, %83
  %334 = phi i32 [ %84, %83 ], [ %23, %99 ], [ %23, %157 ], [ %321, %319 ], [ %331, %328 ], [ %174, %171 ], [ %174, %200 ]
  %335 = icmp slt i32 %334, %1
  br i1 %335, label %22, label %336

336:                                              ; preds = %333, %99, %10
  %337 = phi i32 [ 0, %10 ], [ %334, %333 ], [ %23, %99 ]
  %338 = icmp slt i32 %337, %1
  br i1 %338, label %339, label %353

339:                                              ; preds = %336
  %340 = load i8, ptr %4, align 4
  %341 = icmp eq i8 %340, 0
  br i1 %341, label %347, label %342

342:                                              ; preds = %339
  %343 = getelementptr i8, ptr %0, i32 248
  %344 = load volatile i32, ptr @jiffies, align 64
  %345 = add i32 %344, 10
  %346 = tail call i32 @mod_timer(ptr noundef %343, i32 noundef %345) #20
  br label %347

347:                                              ; preds = %342, %339
  %348 = tail call zeroext i1 @napi_complete_done(ptr noundef %0, i32 noundef %337) #20
  %349 = getelementptr i8, ptr %0, i32 216
  %350 = load i32, ptr %349, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !24
  tail call void @arm_heavy_mb() #20
  %351 = load ptr, ptr %13, align 4
  %352 = getelementptr i8, ptr %351, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %352, i32 %350) #20, !srcloc !9
  br label %353

353:                                              ; preds = %347, %336
  ret i32 %337
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @oom_timer_wrapper(ptr noundef %0) #7 {
  %2 = getelementptr i8, ptr %0, i32 -248
  %3 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %2) #20
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @__napi_schedule(ptr noundef %2) #20
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_phy_mode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @phy_connect(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_start_aneg(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mv643xx_eth_get_drvinfo(ptr nocapture noundef readnone %0, ptr noundef %1) #9 {
  %3 = getelementptr inbounds %struct.ethtool_drvinfo, ptr %1, i32 0, i32 1
  %4 = tail call i32 @strlcpy(ptr noundef %3, ptr noundef nonnull @mv643xx_eth_driver_name, i32 noundef 32) #20
  %5 = getelementptr inbounds %struct.ethtool_drvinfo, ptr %1, i32 0, i32 2
  %6 = tail call i32 @strlcpy(ptr noundef %5, ptr noundef nonnull @mv643xx_eth_driver_version, i32 noundef 32) #20
  %7 = getelementptr inbounds %struct.ethtool_drvinfo, ptr %1, i32 0, i32 3
  %8 = tail call i32 @strlcpy(ptr noundef %7, ptr noundef nonnull @.str.26, i32 noundef 32) #20
  %9 = getelementptr inbounds %struct.ethtool_drvinfo, ptr %1, i32 0, i32 4
  %10 = tail call i32 @strlcpy(ptr noundef %9, ptr noundef nonnull @.str.27, i32 noundef 32) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mv643xx_eth_get_wol(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %1, i32 0, i32 1
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %1, i32 0, i32 2
  store i32 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @phy_ethtool_get_wol(ptr noundef nonnull %6, ptr noundef %1) #20
  br label %9

9:                                                ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv643xx_eth_set_wol(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @phy_ethtool_set_wol(ptr noundef nonnull %4, ptr noundef %1) #20
  %8 = icmp eq i32 %7, -95
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %0, ptr noundef nonnull @.str.28) #21
  br label %10

10:                                               ; preds = %9, %6, %2
  %11 = phi i32 [ -95, %2 ], [ -95, %9 ], [ %7, %6 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_nway_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv643xx_eth_get_coalesce(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) #2 {
  %5 = getelementptr i8, ptr %0, i32 1408
  %6 = getelementptr i8, ptr %0, i32 1412
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 28
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #20, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #20, !srcloc !23
  %10 = load ptr, ptr %5, align 8
  %11 = getelementptr inbounds %struct.mv643xx_eth_shared_private, ptr %10, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  %14 = lshr i32 %9, 8
  %15 = and i32 %14, 16383
  %16 = lshr i32 %9, 10
  %17 = and i32 %16, 32768
  %18 = lshr i32 %9, 7
  %19 = and i32 %18, 32767
  %20 = or i32 %17, %19
  %21 = select i1 %13, i32 %15, i32 %20
  %22 = zext i32 %21 to i64
  %23 = mul nuw nsw i64 %22, 64000000
  %24 = getelementptr i8, ptr %0, i32 2816
  %25 = load i32, ptr %24, align 8
  %26 = lshr i32 %25, 1
  %27 = zext i32 %26 to i64
  %28 = add nuw nsw i64 %23, %27
  %29 = icmp ult i64 %28, 4294967296
  br i1 %29, label %30, label %33, !prof !31

30:                                               ; preds = %4
  %31 = trunc i64 %28 to i32
  %32 = udiv i32 %31, %25
  br label %37

33:                                               ; preds = %4
  %34 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %25, i64 %28) #22, !srcloc !39
  %35 = extractvalue { i64, i64 } %34, 1
  %36 = trunc i64 %35 to i32
  br label %37

37:                                               ; preds = %33, %30
  %38 = phi i32 [ %32, %30 ], [ %36, %33 ]
  %39 = getelementptr inbounds %struct.ethtool_coalesce, ptr %1, i32 0, i32 1
  store i32 %38, ptr %39, align 4
  %40 = load ptr, ptr %6, align 4
  %41 = getelementptr i8, ptr %40, i32 116
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #20, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #20, !srcloc !23
  %43 = lshr i32 %42, 4
  %44 = and i32 %43, 16383
  %45 = zext i32 %44 to i64
  %46 = mul nuw nsw i64 %45, 64000000
  %47 = load i32, ptr %24, align 8
  %48 = lshr i32 %47, 1
  %49 = zext i32 %48 to i64
  %50 = add nuw nsw i64 %46, %49
  %51 = icmp ult i64 %50, 4294967296
  br i1 %51, label %52, label %55, !prof !31

52:                                               ; preds = %37
  %53 = trunc i64 %50 to i32
  %54 = udiv i32 %53, %47
  br label %59

55:                                               ; preds = %37
  %56 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %47, i64 %50) #22, !srcloc !39
  %57 = extractvalue { i64, i64 } %56, 1
  %58 = trunc i64 %57 to i32
  br label %59

59:                                               ; preds = %55, %52
  %60 = phi i32 [ %54, %52 ], [ %58, %55 ]
  %61 = getelementptr inbounds %struct.ethtool_coalesce, ptr %1, i32 0, i32 5
  store i32 %60, ptr %61, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv643xx_eth_set_coalesce(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) #2 {
  %5 = getelementptr i8, ptr %0, i32 1408
  %6 = getelementptr inbounds %struct.ethtool_coalesce, ptr %1, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = zext i32 %7 to i64
  %9 = getelementptr i8, ptr %0, i32 2816
  %10 = load i32, ptr %9, align 8
  %11 = zext i32 %10 to i64
  %12 = mul nuw i64 %11, %8
  %13 = add nuw i64 %12, 31999999
  %14 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %13) #22, !srcloc !29
  %15 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %13, i64 %14, i32 0) #22, !srcloc !30
  %16 = extractvalue { i64, i32 } %15, 0
  %17 = lshr i64 %16, 24
  %18 = getelementptr i8, ptr %0, i32 1412
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %19, i32 28
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #20, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #20, !srcloc !23
  %22 = load ptr, ptr %5, align 8
  %23 = getelementptr inbounds %struct.mv643xx_eth_shared_private, ptr %22, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %37, label %26

26:                                               ; preds = %4
  %27 = icmp ugt i64 %16, 1099511627775
  %28 = trunc i64 %17 to i32
  %29 = select i1 %27, i32 65535, i32 %28
  %30 = and i32 %21, -37748609
  %31 = shl i32 %29, 10
  %32 = and i32 %31, 33554432
  %33 = or i32 %32, %30
  %34 = shl i32 %29, 7
  %35 = and i32 %34, 4194176
  %36 = or i32 %33, %35
  br label %45

37:                                               ; preds = %4
  %38 = icmp ugt i64 %16, 274877906943
  %39 = trunc i64 %17 to i32
  %40 = and i32 %21, -4194049
  %41 = shl i32 %39, 8
  %42 = and i32 %41, 4194048
  %43 = select i1 %38, i32 4194048, i32 %42
  %44 = or i32 %43, %40
  br label %45

45:                                               ; preds = %37, %26
  %46 = phi i32 [ %36, %26 ], [ %44, %37 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !24
  tail call void @arm_heavy_mb() #20
  %47 = load ptr, ptr %18, align 4
  %48 = getelementptr i8, ptr %47, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %46) #20, !srcloc !9
  %49 = getelementptr inbounds %struct.ethtool_coalesce, ptr %1, i32 0, i32 5
  %50 = load i32, ptr %49, align 4
  %51 = zext i32 %50 to i64
  %52 = load i32, ptr %9, align 8
  %53 = zext i32 %52 to i64
  %54 = mul nuw i64 %53, %51
  %55 = add nuw i64 %54, 31999999
  %56 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %55) #22, !srcloc !29
  %57 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %55, i64 %56, i32 0) #22, !srcloc !30
  %58 = extractvalue { i64, i32 } %57, 0
  %59 = icmp ugt i64 %58, 274877906943
  %60 = lshr i64 %58, 20
  %61 = trunc i64 %60 to i32
  %62 = and i32 %61, -16
  %63 = select i1 %59, i32 262128, i32 %62
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !24
  tail call void @arm_heavy_mb() #20
  %64 = load ptr, ptr %18, align 4
  %65 = getelementptr i8, ptr %64, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %63) #20, !srcloc !9
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @mv643xx_eth_get_ringparam(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) #10 {
  %5 = getelementptr inbounds %struct.ethtool_ringparam, ptr %1, i32 0, i32 1
  store i32 4096, ptr %5, align 4
  %6 = getelementptr inbounds %struct.ethtool_ringparam, ptr %1, i32 0, i32 4
  store i32 4096, ptr %6, align 4
  %7 = getelementptr i8, ptr %0, i32 1832
  %8 = load i32, ptr %7, align 8
  %9 = getelementptr inbounds %struct.ethtool_ringparam, ptr %1, i32 0, i32 5
  store i32 %8, ptr %9, align 4
  %10 = getelementptr i8, ptr %0, i32 2156
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.ethtool_ringparam, ptr %1, i32 0, i32 8
  store i32 %11, ptr %12, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv643xx_eth_set_ringparam(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) #2 {
  %5 = getelementptr inbounds %struct.ethtool_ringparam, ptr %1, i32 0, i32 6
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %35

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ethtool_ringparam, ptr %1, i32 0, i32 7
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %35

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ethtool_ringparam, ptr %1, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @llvm.umin.i32(i32 %14, i32 4096)
  %16 = getelementptr i8, ptr %0, i32 1832
  store i32 %15, ptr %16, align 8
  %17 = getelementptr inbounds %struct.ethtool_ringparam, ptr %1, i32 0, i32 8
  %18 = load i32, ptr %17, align 4
  %19 = tail call i32 @llvm.umax.i32(i32 %18, i32 434)
  %20 = tail call i32 @llvm.umin.i32(i32 %19, i32 4096)
  %21 = getelementptr i8, ptr %0, i32 2156
  store i32 %20, ptr %21, align 4
  %22 = load i32, ptr %17, align 4
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %25, label %24

24:                                               ; preds = %12
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %0, ptr noundef nonnull @.str.23, i32 noundef %20, i32 noundef %22) #21
  br label %25

25:                                               ; preds = %24, %12
  %26 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %27 = load volatile i32, ptr %26, align 4
  %28 = and i32 %27, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = tail call i32 @mv643xx_eth_stop(ptr noundef %0)
  %32 = tail call i32 @mv643xx_eth_open(ptr noundef %0)
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.29) #21
  br label %35

35:                                               ; preds = %34, %30, %25, %8, %4
  %36 = phi i32 [ -12, %34 ], [ -22, %8 ], [ -22, %4 ], [ 0, %30 ], [ 0, %25 ]
  ret i32 %36
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mv643xx_eth_get_strings(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #11 {
  %4 = icmp eq i32 %1, 1
  br i1 %4, label %5, label %12

5:                                                ; preds = %5, %3
  %6 = phi i32 [ %10, %5 ], [ 0, %3 ]
  %7 = shl nuw nsw i32 %6, 5
  %8 = getelementptr i8, ptr %2, i32 %7
  %9 = getelementptr [40 x %struct.mv643xx_eth_stats], ptr @mv643xx_eth_stats, i32 0, i32 %6
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(32) %8, ptr noundef align 4 dereferenceable(32) %9, i32 32, i1 false)
  %10 = add nuw nsw i32 %6, 1
  %11 = icmp eq i32 %10, 40
  br i1 %11, label %12, label %5

12:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mv643xx_eth_get_ethtool_stats(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 1408
  %5 = getelementptr i8, ptr %0, i32 2168
  %6 = load i32, ptr %5, align 8
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %26

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %0, i32 2172
  br label %10

10:                                               ; preds = %10, %8
  %11 = phi i32 [ 0, %8 ], [ %24, %10 ]
  %12 = phi i32 [ 0, %8 ], [ %23, %10 ]
  %13 = phi i32 [ 0, %8 ], [ %20, %10 ]
  %14 = phi i32 [ 0, %8 ], [ %17, %10 ]
  %15 = getelementptr %struct.tx_queue, ptr %9, i32 %11, i32 14
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, %14
  %18 = getelementptr %struct.tx_queue, ptr %9, i32 %11, i32 15
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, %13
  %21 = getelementptr %struct.tx_queue, ptr %9, i32 %11, i32 16
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, %12
  %24 = add nuw nsw i32 %11, 1
  %25 = icmp eq i32 %24, %6
  br i1 %25, label %26, label %10

26:                                               ; preds = %10, %3
  %27 = phi i32 [ 0, %3 ], [ %17, %10 ]
  %28 = phi i32 [ 0, %3 ], [ %20, %10 ]
  %29 = phi i32 [ 0, %3 ], [ %23, %10 ]
  %30 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 36, i32 1
  store i32 %27, ptr %30, align 4
  %31 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 36, i32 3
  store i32 %28, ptr %31, align 4
  %32 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 36, i32 7
  store i32 %29, ptr %32, align 4
  tail call fastcc void @mib_counters_update(ptr noundef %4)
  %33 = getelementptr i8, ptr %0, i32 1420
  br label %34

34:                                               ; preds = %56, %26
  %35 = phi i32 [ 0, %26 ], [ %59, %56 ]
  %36 = getelementptr %struct.mv643xx_eth_stats, ptr @mv643xx_eth_stats, i32 %35, i32 2
  %37 = load i32, ptr %36, align 4
  %38 = icmp sgt i32 %37, -1
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load ptr, ptr %33, align 4
  %41 = getelementptr i8, ptr %40, i32 %37
  br label %46

42:                                               ; preds = %34
  %43 = getelementptr %struct.mv643xx_eth_stats, ptr @mv643xx_eth_stats, i32 %35, i32 3
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr i8, ptr %4, i32 %44
  br label %46

46:                                               ; preds = %42, %39
  %47 = phi ptr [ %41, %39 ], [ %45, %42 ]
  %48 = getelementptr %struct.mv643xx_eth_stats, ptr @mv643xx_eth_stats, i32 %35, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, 8
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i64, ptr %47, align 8
  br label %56

53:                                               ; preds = %46
  %54 = load i32, ptr %47, align 4
  %55 = zext i32 %54 to i64
  br label %56

56:                                               ; preds = %53, %51
  %57 = phi i64 [ %52, %51 ], [ %55, %53 ]
  %58 = getelementptr i64, ptr %2, i32 %35
  store i64 %57, ptr %58, align 8
  %59 = add nuw nsw i32 %35, 1
  %60 = icmp eq i32 %59, 40
  br i1 %60, label %61, label %34

61:                                               ; preds = %56
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @mv643xx_eth_get_sset_count(ptr nocapture noundef readnone %0, i32 noundef %1) #12 {
  %3 = icmp eq i32 %1, 1
  %4 = select i1 %3, i32 40, i32 -95
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_ts_info(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv643xx_eth_get_link_ksettings(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %0, i32 1420
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 120
  %10 = load ptr, ptr %9, align 8
  tail call void @phy_ethtool_ksettings_get(ptr noundef %10, ptr noundef %1) #20
  %11 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %1, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, -17
  store i32 %13, ptr %11, align 4
  %14 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %1, i32 0, i32 1, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, -17
  store i32 %16, ptr %14, align 4
  br label %38

17:                                               ; preds = %2
  %18 = getelementptr i8, ptr %0, i32 1412
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %19, i32 68
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #20, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #20, !srcloc !23
  %22 = and i32 %21, 48
  switch i32 %22, label %25 [
    i32 0, label %26
    i32 32, label %23
    i32 16, label %24
  ]

23:                                               ; preds = %17
  br label %26

24:                                               ; preds = %17
  br label %26

25:                                               ; preds = %17
  br label %26

26:                                               ; preds = %25, %24, %23, %17
  %27 = phi i32 [ -1, %25 ], [ 1000, %24 ], [ 100, %23 ], [ 10, %17 ]
  %28 = getelementptr inbounds %struct.ethtool_link_settings, ptr %1, i32 0, i32 1
  store i32 %27, ptr %28, align 4
  %29 = trunc i32 %21 to i8
  %30 = lshr i8 %29, 2
  %31 = and i8 %30, 1
  %32 = getelementptr inbounds %struct.ethtool_link_settings, ptr %1, i32 0, i32 2
  store i8 %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.ethtool_link_settings, ptr %1, i32 0, i32 3
  store i8 2, ptr %33, align 1
  %34 = getelementptr inbounds %struct.ethtool_link_settings, ptr %1, i32 0, i32 4
  store i8 0, ptr %34, align 2
  %35 = getelementptr inbounds %struct.ethtool_link_settings, ptr %1, i32 0, i32 5
  store i8 0, ptr %35, align 1
  %36 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %1, i32 0, i32 1
  tail call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %36, i32 noundef 512) #20
  %37 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %1, i32 0, i32 1, i32 1
  tail call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %37, i32 noundef 512) #20
  br label %38

38:                                               ; preds = %26, %6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv643xx_eth_set_link_ksettings(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca %struct.ethtool_link_ksettings, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %3) #20
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(88) %3, ptr noundef align 4 dereferenceable(88) %1, i32 88, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #20
  store i32 0, ptr %4, align 4, !annotation !15
  %5 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %52, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %3, i32 0, i32 1, i32 1
  %10 = call zeroext i1 @ethtool_convert_link_mode_to_legacy_u32(ptr noundef nonnull %4, ptr noundef %9) #20
  %11 = load i32, ptr %4, align 4
  %12 = and i32 %11, -17
  store i32 %12, ptr %4, align 4
  call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %9, i32 noundef %12) #20
  %13 = load ptr, ptr %5, align 8
  %14 = call i32 @phy_ethtool_ksettings_set(ptr noundef %13, ptr noundef nonnull %3) #20
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %52

16:                                               ; preds = %8
  %17 = getelementptr i8, ptr %0, i32 1412
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 60
  %20 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #20, !srcloc !17
  call void asm sideeffect "dsb ", "~{memory}"() #20, !srcloc !23
  %21 = load ptr, ptr %5, align 8
  %22 = getelementptr inbounds %struct.phy_device, ptr %21, i32 0, i32 4
  %23 = load i16, ptr %22, align 8
  %24 = and i16 %23, 4096
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %16
  %27 = and i32 %20, -8207
  br label %48

28:                                               ; preds = %16
  %29 = or i32 %20, 8206
  %30 = getelementptr inbounds %struct.phy_device, ptr %21, i32 0, i32 8
  %31 = load i32, ptr %30, align 8
  switch i32 %31, label %37 [
    i32 1000, label %32
    i32 100, label %34
  ]

32:                                               ; preds = %28
  %33 = or i32 %20, 10493966
  br label %48

34:                                               ; preds = %28
  %35 = and i32 %29, -25165825
  %36 = or i32 %35, 16777216
  br label %39

37:                                               ; preds = %28
  %38 = and i32 %29, -25165825
  br label %39

39:                                               ; preds = %37, %34
  %40 = phi i32 [ %36, %34 ], [ %38, %37 ]
  %41 = getelementptr inbounds %struct.phy_device, ptr %21, i32 0, i32 9
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = or i32 %40, 2097152
  br label %48

46:                                               ; preds = %39
  %47 = and i32 %40, -2097153
  br label %48

48:                                               ; preds = %46, %44, %32, %26
  %49 = phi i32 [ %27, %26 ], [ %33, %32 ], [ %45, %44 ], [ %47, %46 ]
  call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !24
  call void @arm_heavy_mb() #20
  %50 = load ptr, ptr %17, align 4
  %51 = getelementptr i8, ptr %50, i32 60
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %49) #20, !srcloc !9
  br label %52

52:                                               ; preds = %48, %8, %2
  %53 = phi i32 [ -22, %2 ], [ 0, %48 ], [ %14, %8 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3) #20
  ret i32 %53
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_ethtool_get_wol(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_set_wol(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #14

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv643xx_eth_stop(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 1408
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !24
  tail call void @arm_heavy_mb() #20
  %3 = getelementptr i8, ptr %0, i32 1412
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 0) #20, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !24
  tail call void @arm_heavy_mb() #20
  %6 = load ptr, ptr %3, align 4
  %7 = getelementptr i8, ptr %6, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 0) #20, !srcloc !9
  %8 = load ptr, ptr %3, align 4
  %9 = getelementptr i8, ptr %8, i32 104
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #20, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #20, !srcloc !23
  %11 = getelementptr i8, ptr %0, i32 1600
  tail call void @napi_disable(ptr noundef %11) #20
  %12 = getelementptr i8, ptr %0, i32 1848
  %13 = tail call i32 @del_timer_sync(ptr noundef %12) #20
  tail call void @netif_carrier_off(ptr noundef %0) #20
  %14 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  tail call void @phy_stop(ptr noundef nonnull %15) #20
  br label %18

18:                                               ; preds = %17, %1
  %19 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 59
  %20 = load i32, ptr %19, align 8
  %21 = tail call ptr @free_irq(i32 noundef %20, ptr noundef %0) #20
  tail call fastcc void @port_reset(ptr noundef %2)
  %22 = getelementptr i8, ptr %0, i32 2168
  %23 = load i32, ptr %22, align 8
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %43

25:                                               ; preds = %18
  %26 = getelementptr i8, ptr %0, i32 2172
  br label %27

27:                                               ; preds = %27, %25
  %28 = phi i32 [ 0, %25 ], [ %41, %27 ]
  %29 = phi i32 [ 0, %25 ], [ %40, %27 ]
  %30 = phi i32 [ 0, %25 ], [ %37, %27 ]
  %31 = phi i32 [ 0, %25 ], [ %34, %27 ]
  %32 = getelementptr %struct.tx_queue, ptr %26, i32 %28, i32 14
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, %31
  %35 = getelementptr %struct.tx_queue, ptr %26, i32 %28, i32 15
  %36 = load i32, ptr %35, align 4
  %37 = add i32 %36, %30
  %38 = getelementptr %struct.tx_queue, ptr %26, i32 %28, i32 16
  %39 = load i32, ptr %38, align 4
  %40 = add i32 %39, %29
  %41 = add nuw nsw i32 %28, 1
  %42 = icmp eq i32 %41, %23
  br i1 %42, label %43, label %27

43:                                               ; preds = %27, %18
  %44 = phi i32 [ 0, %18 ], [ %34, %27 ]
  %45 = phi i32 [ 0, %18 ], [ %37, %27 ]
  %46 = phi i32 [ 0, %18 ], [ %40, %27 ]
  %47 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 36, i32 1
  store i32 %44, ptr %47, align 4
  %48 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 36, i32 3
  store i32 %45, ptr %48, align 4
  %49 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 36, i32 7
  store i32 %46, ptr %49, align 4
  tail call fastcc void @mib_counters_update(ptr noundef %2)
  %50 = getelementptr i8, ptr %0, i32 1424
  %51 = tail call i32 @del_timer_sync(ptr noundef %50) #20
  %52 = getelementptr i8, ptr %0, i32 1844
  %53 = load i32, ptr %52, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %43
  %56 = getelementptr i8, ptr %0, i32 1868
  br label %62

57:                                               ; preds = %62, %43
  %58 = load i32, ptr %22, align 8
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %57
  %61 = getelementptr i8, ptr %0, i32 2172
  br label %68

62:                                               ; preds = %62, %55
  %63 = phi i32 [ 0, %55 ], [ %65, %62 ]
  %64 = getelementptr %struct.rx_queue, ptr %56, i32 %63
  tail call fastcc void @rxq_deinit(ptr noundef %64)
  %65 = add nuw nsw i32 %63, 1
  %66 = load i32, ptr %52, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %62, label %57

68:                                               ; preds = %68, %60
  %69 = phi i32 [ 0, %60 ], [ %71, %68 ]
  %70 = getelementptr %struct.tx_queue, ptr %61, i32 %69
  tail call fastcc void @txq_deinit(ptr noundef %70)
  %71 = add nuw nsw i32 %69, 1
  %72 = load i32, ptr %22, align 8
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %68, label %74

74:                                               ; preds = %68, %57
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv643xx_eth_open(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 1408
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !24
  tail call void @arm_heavy_mb() #20
  %3 = getelementptr i8, ptr %0, i32 1412
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 0) #20, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !24
  tail call void @arm_heavy_mb() #20
  %6 = load ptr, ptr %3, align 4
  %7 = getelementptr i8, ptr %6, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 0) #20, !srcloc !9
  %8 = load ptr, ptr %3, align 4
  %9 = getelementptr i8, ptr %8, i32 100
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #20, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #20, !srcloc !23
  %11 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 59
  %12 = load i32, ptr %11, align 8
  %13 = tail call i32 @request_threaded_irq(i32 noundef %12, ptr noundef nonnull @mv643xx_eth_irq, ptr noundef null, i32 noundef 128, ptr noundef %0, ptr noundef %0) #20
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.33) #21
  br label %268

16:                                               ; preds = %1
  %17 = getelementptr i8, ptr %0, i32 1420
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 20
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, 43
  %22 = and i32 %21, -8
  %23 = getelementptr i8, ptr %0, i32 1828
  store i32 %22, ptr %23, align 4
  %24 = getelementptr i8, ptr %0, i32 1600
  tail call void @napi_enable(ptr noundef %24) #20
  %25 = getelementptr i8, ptr %0, i32 1816
  store i32 2, ptr %25, align 8
  %26 = getelementptr i8, ptr %0, i32 1844
  %27 = load i32, ptr %26, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %124

29:                                               ; preds = %16
  %30 = getelementptr i8, ptr %0, i32 1868
  %31 = getelementptr i8, ptr %0, i32 1832
  %32 = getelementptr i8, ptr %0, i32 1840
  %33 = getelementptr i8, ptr %0, i32 1836
  %34 = getelementptr i8, ptr %0, i32 1888
  %35 = getelementptr i8, ptr %0, i32 1892
  br label %36

36:                                               ; preds = %116, %29
  %37 = phi i32 [ 0, %29 ], [ %121, %116 ]
  %38 = getelementptr %struct.rx_queue, ptr %30, i32 %37
  store i32 %37, ptr %38, align 4
  %39 = load i32, ptr %31, align 8
  %40 = getelementptr %struct.rx_queue, ptr %30, i32 %37, i32 1
  store i32 %39, ptr %40, align 4
  %41 = getelementptr %struct.rx_queue, ptr %30, i32 %37, i32 2
  store i32 0, ptr %41, align 4
  %42 = getelementptr %struct.rx_queue, ptr %30, i32 %37, i32 3
  store i32 0, ptr %42, align 4
  %43 = getelementptr %struct.rx_queue, ptr %30, i32 %37, i32 4
  store i32 0, ptr %43, align 4
  %44 = shl i32 %39, 4
  %45 = icmp eq i32 %37, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %36
  %47 = load i32, ptr %32, align 8
  %48 = icmp sgt i32 %44, %47
  br i1 %48, label %53, label %49

49:                                               ; preds = %46
  %50 = load i32, ptr %33, align 4
  %51 = tail call ptr @ioremap(i32 noundef %50, i32 noundef %47) #20
  store ptr %51, ptr %34, align 4
  %52 = load i32, ptr %33, align 4
  store i32 %52, ptr %35, align 4
  br label %60

53:                                               ; preds = %46, %36
  %54 = load ptr, ptr %17, align 4
  %55 = getelementptr inbounds %struct.net_device, ptr %54, i32 0, i32 111, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr %struct.rx_queue, ptr %30, i32 %37, i32 6
  %58 = tail call ptr @dma_alloc_attrs(ptr noundef %56, i32 noundef %44, ptr noundef %57, i32 noundef 3264, i32 noundef 0) #20
  %59 = getelementptr %struct.rx_queue, ptr %30, i32 %37, i32 5
  store ptr %58, ptr %59, align 4
  br label %60

60:                                               ; preds = %53, %49
  %61 = phi ptr [ %58, %53 ], [ %51, %49 ]
  %62 = getelementptr %struct.rx_queue, ptr %30, i32 %37, i32 5
  %63 = icmp eq ptr %61, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load ptr, ptr %17, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %65, ptr noundef nonnull @.str.34, i32 noundef %44) #21
  br label %109

66:                                               ; preds = %60
  tail call void @llvm.memset.p0.i32(ptr nonnull align 4 %61, i8 0, i32 %44, i1 false) #20
  %67 = getelementptr %struct.rx_queue, ptr %30, i32 %37, i32 7
  store i32 %44, ptr %67, align 4
  %68 = load i32, ptr %40, align 4
  %69 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %68, i32 4) #20
  %70 = extractvalue { i32, i1 } %69, 1
  br i1 %70, label %71, label %73, !prof !27

71:                                               ; preds = %66
  %72 = getelementptr %struct.rx_queue, ptr %30, i32 %37, i32 8
  store ptr null, ptr %72, align 4
  br label %96

73:                                               ; preds = %66
  %74 = extractvalue { i32, i1 } %69, 0
  %75 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %74, i32 noundef 3520) #23
  %76 = getelementptr %struct.rx_queue, ptr %30, i32 %37, i32 8
  store ptr %75, ptr %76, align 4
  %77 = icmp eq ptr %75, null
  br i1 %77, label %96, label %78

78:                                               ; preds = %73
  %79 = load i32, ptr %40, align 4
  %80 = load ptr, ptr %62, align 4
  %81 = icmp sgt i32 %79, 0
  br i1 %81, label %82, label %116

82:                                               ; preds = %78
  %83 = getelementptr %struct.rx_queue, ptr %30, i32 %37, i32 6
  br label %84

84:                                               ; preds = %84, %82
  %85 = phi i32 [ %79, %82 ], [ %94, %84 ]
  %86 = phi i32 [ 0, %82 ], [ %87, %84 ]
  %87 = add nuw nsw i32 %86, 1
  %88 = icmp eq i32 %87, %85
  %89 = load i32, ptr %83, align 4
  %90 = shl i32 %87, 4
  %91 = select i1 %88, i32 0, i32 %90
  %92 = add i32 %91, %89
  %93 = getelementptr %struct.rx_desc, ptr %80, i32 %86, i32 4
  store i32 %92, ptr %93, align 4
  %94 = load i32, ptr %40, align 4
  %95 = icmp slt i32 %87, %94
  br i1 %95, label %84, label %116

96:                                               ; preds = %73, %71
  br i1 %45, label %97, label %102

97:                                               ; preds = %96
  %98 = load i32, ptr %32, align 8
  %99 = icmp sgt i32 %44, %98
  br i1 %99, label %102, label %100

100:                                              ; preds = %97
  %101 = load ptr, ptr %62, align 4
  tail call void @iounmap(ptr noundef %101) #20
  br label %265

102:                                              ; preds = %97, %96
  %103 = load ptr, ptr %17, align 4
  %104 = getelementptr inbounds %struct.net_device, ptr %103, i32 0, i32 111, i32 1
  %105 = load ptr, ptr %104, align 4
  %106 = load ptr, ptr %62, align 4
  %107 = getelementptr %struct.rx_queue, ptr %30, i32 %37, i32 6
  %108 = load i32, ptr %107, align 4
  tail call void @dma_free_attrs(ptr noundef %105, i32 noundef %44, ptr noundef %106, i32 noundef %108, i32 noundef 0) #20
  br label %109

109:                                              ; preds = %102, %64
  %110 = icmp eq i32 %37, 0
  br i1 %110, label %265, label %111

111:                                              ; preds = %111, %109
  %112 = phi i32 [ %113, %111 ], [ %37, %109 ]
  %113 = add nsw i32 %112, -1
  %114 = getelementptr %struct.rx_queue, ptr %30, i32 %113
  tail call fastcc void @rxq_deinit(ptr noundef %114)
  %115 = icmp sgt i32 %112, 1
  br i1 %115, label %111, label %265

116:                                              ; preds = %84, %78
  %117 = tail call fastcc i32 @rxq_refill(ptr noundef %38, i32 noundef 2147483647)
  %118 = shl i32 4, %37
  %119 = load i32, ptr %25, align 8
  %120 = or i32 %119, %118
  store i32 %120, ptr %25, align 8
  %121 = add nuw nsw i32 %37, 1
  %122 = load i32, ptr %26, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %36, label %124

124:                                              ; preds = %116, %16
  %125 = getelementptr i8, ptr %0, i32 1820
  %126 = load i8, ptr %125, align 4
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %133, label %128

128:                                              ; preds = %124
  %129 = load volatile i32, ptr @jiffies, align 64
  %130 = add i32 %129, 10
  %131 = getelementptr i8, ptr %0, i32 1848
  %132 = getelementptr i8, ptr %0, i32 1856
  store i32 %130, ptr %132, align 8
  tail call void @add_timer(ptr noundef %131) #20
  br label %133

133:                                              ; preds = %128, %124
  %134 = getelementptr i8, ptr %0, i32 2168
  %135 = load i32, ptr %134, align 8
  %136 = icmp sgt i32 %135, 0
  br i1 %136, label %137, label %252

137:                                              ; preds = %133
  %138 = getelementptr i8, ptr %0, i32 2172
  %139 = getelementptr i8, ptr %0, i32 2156
  %140 = getelementptr i8, ptr %0, i32 2164
  %141 = getelementptr i8, ptr %0, i32 2160
  %142 = getelementptr i8, ptr %0, i32 2208
  %143 = getelementptr i8, ptr %0, i32 2216
  br label %144

144:                                              ; preds = %241, %137
  %145 = phi i32 [ 0, %137 ], [ %249, %241 ]
  %146 = getelementptr %struct.tx_queue, ptr %138, i32 %145
  store i32 %145, ptr %146, align 4
  %147 = load i32, ptr %139, align 4
  %148 = getelementptr %struct.tx_queue, ptr %138, i32 %145, i32 1
  store i32 %147, ptr %148, align 4
  %149 = add i32 %147, -217
  %150 = getelementptr %struct.tx_queue, ptr %138, i32 %145, i32 5
  store i32 %149, ptr %150, align 4
  %151 = sdiv i32 %149, 2
  %152 = getelementptr %struct.tx_queue, ptr %138, i32 %145, i32 6
  store i32 %151, ptr %152, align 4
  %153 = getelementptr %struct.tx_queue, ptr %138, i32 %145, i32 2
  store i32 0, ptr %153, align 4
  %154 = getelementptr %struct.tx_queue, ptr %138, i32 %145, i32 3
  store i32 0, ptr %154, align 4
  %155 = getelementptr %struct.tx_queue, ptr %138, i32 %145, i32 4
  store i32 0, ptr %155, align 4
  %156 = shl i32 %147, 4
  %157 = icmp eq i32 %145, 0
  br i1 %157, label %158, label %165

158:                                              ; preds = %144
  %159 = load i32, ptr %140, align 4
  %160 = icmp sgt i32 %156, %159
  br i1 %160, label %165, label %161

161:                                              ; preds = %158
  %162 = load i32, ptr %141, align 8
  %163 = tail call ptr @ioremap(i32 noundef %162, i32 noundef %159) #20
  store ptr %163, ptr %142, align 4
  %164 = load i32, ptr %141, align 8
  store i32 %164, ptr %143, align 4
  br label %172

165:                                              ; preds = %158, %144
  %166 = load ptr, ptr %17, align 4
  %167 = getelementptr inbounds %struct.net_device, ptr %166, i32 0, i32 111, i32 1
  %168 = load ptr, ptr %167, align 4
  %169 = getelementptr %struct.tx_queue, ptr %138, i32 %145, i32 11
  %170 = tail call ptr @dma_alloc_attrs(ptr noundef %168, i32 noundef %156, ptr noundef %169, i32 noundef 3264, i32 noundef 0) #20
  %171 = getelementptr %struct.tx_queue, ptr %138, i32 %145, i32 9
  store ptr %170, ptr %171, align 4
  br label %172

172:                                              ; preds = %165, %161
  %173 = phi ptr [ %170, %165 ], [ %163, %161 ]
  %174 = getelementptr %struct.tx_queue, ptr %138, i32 %145, i32 9
  %175 = icmp eq ptr %173, null
  br i1 %175, label %176, label %178

176:                                              ; preds = %172
  %177 = load ptr, ptr %17, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %177, ptr noundef nonnull @.str.37, i32 noundef %156) #21
  br label %229

178:                                              ; preds = %172
  tail call void @llvm.memset.p0.i32(ptr nonnull align 4 %173, i8 0, i32 %156, i1 false) #20
  %179 = getelementptr %struct.tx_queue, ptr %138, i32 %145, i32 12
  store i32 %156, ptr %179, align 4
  %180 = load ptr, ptr %174, align 4
  %181 = load i32, ptr %148, align 4
  %182 = icmp sgt i32 %181, 0
  br i1 %182, label %183, label %198

183:                                              ; preds = %178
  %184 = getelementptr %struct.tx_queue, ptr %138, i32 %145, i32 11
  br label %185

185:                                              ; preds = %185, %183
  %186 = phi i32 [ %181, %183 ], [ %196, %185 ]
  %187 = phi i32 [ 0, %183 ], [ %189, %185 ]
  %188 = getelementptr %struct.tx_desc, ptr %180, i32 %187
  %189 = add nuw nsw i32 %187, 1
  %190 = icmp eq i32 %189, %186
  store i32 0, ptr %188, align 4
  %191 = load i32, ptr %184, align 4
  %192 = shl i32 %189, 4
  %193 = select i1 %190, i32 0, i32 %192
  %194 = add i32 %193, %191
  %195 = getelementptr %struct.tx_desc, ptr %180, i32 %187, i32 4
  store i32 %194, ptr %195, align 4
  %196 = load i32, ptr %148, align 4
  %197 = icmp slt i32 %189, %196
  br i1 %197, label %185, label %198

198:                                              ; preds = %185, %178
  %199 = phi i32 [ %181, %178 ], [ %196, %185 ]
  %200 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %199, i32 noundef 3520) #23
  %201 = getelementptr %struct.tx_queue, ptr %138, i32 %145, i32 10
  store ptr %200, ptr %201, align 4
  %202 = icmp eq ptr %200, null
  br i1 %202, label %215, label %203

203:                                              ; preds = %198
  %204 = load i32, ptr %148, align 4
  %205 = shl i32 %204, 8
  %206 = load ptr, ptr %17, align 4
  %207 = getelementptr inbounds %struct.net_device, ptr %206, i32 0, i32 111, i32 1
  %208 = load ptr, ptr %207, align 4
  %209 = getelementptr %struct.tx_queue, ptr %138, i32 %145, i32 8
  %210 = tail call ptr @dma_alloc_attrs(ptr noundef %208, i32 noundef %205, ptr noundef %209, i32 noundef 3264, i32 noundef 0) #20
  %211 = getelementptr %struct.tx_queue, ptr %138, i32 %145, i32 7
  store ptr %210, ptr %211, align 4
  %212 = icmp eq ptr %210, null
  br i1 %212, label %213, label %241

213:                                              ; preds = %203
  %214 = load ptr, ptr %201, align 4
  tail call void @kfree(ptr noundef %214) #20
  br label %215

215:                                              ; preds = %213, %198
  br i1 %157, label %216, label %221

216:                                              ; preds = %215
  %217 = load i32, ptr %140, align 4
  %218 = icmp sgt i32 %156, %217
  br i1 %218, label %221, label %219

219:                                              ; preds = %216
  %220 = load ptr, ptr %174, align 4
  tail call void @iounmap(ptr noundef %220) #20
  br label %231

221:                                              ; preds = %216, %215
  %222 = load ptr, ptr %17, align 4
  %223 = getelementptr inbounds %struct.net_device, ptr %222, i32 0, i32 111, i32 1
  %224 = load ptr, ptr %223, align 4
  %225 = load i32, ptr %179, align 4
  %226 = load ptr, ptr %174, align 4
  %227 = getelementptr %struct.tx_queue, ptr %138, i32 %145, i32 11
  %228 = load i32, ptr %227, align 4
  tail call void @dma_free_attrs(ptr noundef %224, i32 noundef %225, ptr noundef %226, i32 noundef %228, i32 noundef 0) #20
  br label %229

229:                                              ; preds = %221, %176
  %230 = icmp eq i32 %145, 0
  br i1 %230, label %231, label %236

231:                                              ; preds = %236, %229, %219
  %232 = load i32, ptr %26, align 4
  %233 = icmp sgt i32 %232, 0
  br i1 %233, label %234, label %265

234:                                              ; preds = %231
  %235 = getelementptr i8, ptr %0, i32 1868
  br label %259

236:                                              ; preds = %236, %229
  %237 = phi i32 [ %238, %236 ], [ %145, %229 ]
  %238 = add nsw i32 %237, -1
  %239 = getelementptr %struct.tx_queue, ptr %138, i32 %238
  tail call fastcc void @txq_deinit(ptr noundef %239)
  %240 = icmp sgt i32 %237, 1
  br i1 %240, label %236, label %231

241:                                              ; preds = %203
  %242 = getelementptr %struct.tx_queue, ptr %138, i32 %145, i32 13
  %243 = getelementptr %struct.tx_queue, ptr %138, i32 %145, i32 13, i32 2
  store i32 0, ptr %243, align 4
  store ptr %242, ptr %242, align 4
  %244 = getelementptr inbounds %struct.anon.77, ptr %242, i32 0, i32 1
  store ptr %242, ptr %244, align 4
  %245 = getelementptr %struct.tx_queue, ptr %138, i32 %145, i32 13, i32 1
  store i32 0, ptr %245, align 4
  %246 = shl i32 524288, %145
  %247 = load i32, ptr %25, align 8
  %248 = or i32 %247, %246
  store i32 %248, ptr %25, align 8
  %249 = add nuw nsw i32 %145, 1
  %250 = load i32, ptr %134, align 8
  %251 = icmp slt i32 %249, %250
  br i1 %251, label %144, label %252

252:                                              ; preds = %241, %133
  %253 = getelementptr i8, ptr %0, i32 1424
  tail call void @add_timer(ptr noundef %253) #20
  tail call fastcc void @port_start(ptr noundef %2)
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !24
  tail call void @arm_heavy_mb() #20
  %254 = load ptr, ptr %3, align 4
  %255 = getelementptr i8, ptr %254, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %255, i32 1114367) #20, !srcloc !9
  %256 = load i32, ptr %25, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !24
  tail call void @arm_heavy_mb() #20
  %257 = load ptr, ptr %3, align 4
  %258 = getelementptr i8, ptr %257, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %258, i32 %256) #20, !srcloc !9
  br label %268

259:                                              ; preds = %259, %234
  %260 = phi i32 [ 0, %234 ], [ %262, %259 ]
  %261 = getelementptr %struct.rx_queue, ptr %235, i32 %260
  tail call fastcc void @rxq_deinit(ptr noundef %261)
  %262 = add nuw nsw i32 %260, 1
  %263 = load i32, ptr %26, align 4
  %264 = icmp slt i32 %262, %263
  br i1 %264, label %259, label %265

265:                                              ; preds = %259, %231, %111, %109, %100
  %266 = load i32, ptr %11, align 8
  %267 = tail call ptr @free_irq(i32 noundef %266, ptr noundef %0) #20
  br label %268

268:                                              ; preds = %265, %252, %15
  %269 = phi i32 [ -11, %15 ], [ -12, %265 ], [ 0, %252 ]
  ret i32 %269
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @port_reset(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %0, i32 0, i32 20
  %3 = load i32, ptr %2, align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %0, i32 0, i32 22
  br label %13

7:                                                ; preds = %38, %1
  %8 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %0, i32 0, i32 26
  %9 = load i32, ptr %8, align 8
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %42

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %0, i32 0, i32 27
  br label %49

13:                                               ; preds = %38, %5
  %14 = phi i32 [ 0, %5 ], [ %39, %38 ]
  %15 = getelementptr %struct.rx_queue, ptr %6, i32 %14
  %16 = load i32, ptr %15, align 4
  %17 = mul i32 %16, -36
  %18 = add i32 %17, -460
  %19 = getelementptr i8, ptr %15, i32 %18
  %20 = shl nuw i32 1, %16
  %21 = and i32 %20, 255
  %22 = shl nuw nsw i32 %21, 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !24
  tail call void @arm_heavy_mb() #20
  %23 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %19, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %24, i32 640
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %22) #20, !srcloc !9
  %26 = load ptr, ptr %23, align 4
  %27 = getelementptr i8, ptr %26, i32 640
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #20, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #20, !srcloc !23
  %29 = and i32 %28, %21
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %31, %13
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 2147480) #20
  %33 = load ptr, ptr %23, align 4
  %34 = getelementptr i8, ptr %33, i32 640
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #20, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #20, !srcloc !23
  %36 = and i32 %35, %21
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %31

38:                                               ; preds = %31, %13
  %39 = add nuw nsw i32 %14, 1
  %40 = load i32, ptr %2, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %13, label %7

42:                                               ; preds = %74, %7
  %43 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %0, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr i8, ptr %44, i32 68
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #20, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #20, !srcloc !23
  %47 = and i32 %46, 1152
  %48 = icmp eq i32 %47, 1024
  br i1 %48, label %85, label %78

49:                                               ; preds = %74, %11
  %50 = phi i32 [ 0, %11 ], [ %75, %74 ]
  %51 = getelementptr %struct.tx_queue, ptr %12, i32 %50
  %52 = load i32, ptr %51, align 4
  %53 = mul i32 %52, -80
  %54 = add i32 %53, -764
  %55 = getelementptr i8, ptr %51, i32 %54
  %56 = shl nuw i32 1, %52
  %57 = and i32 %56, 255
  %58 = shl nuw nsw i32 %57, 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !24
  tail call void @arm_heavy_mb() #20
  %59 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %55, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr i8, ptr %60, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 %58) #20, !srcloc !9
  %62 = load ptr, ptr %59, align 4
  %63 = getelementptr i8, ptr %62, i32 72
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #20, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #20, !srcloc !23
  %65 = and i32 %64, %57
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %74, label %67

67:                                               ; preds = %67, %49
  %68 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %68(i32 noundef 2147480) #20
  %69 = load ptr, ptr %59, align 4
  %70 = getelementptr i8, ptr %69, i32 72
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %70) #20, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #20, !srcloc !23
  %72 = and i32 %71, %57
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %67

74:                                               ; preds = %67, %49
  %75 = add nuw nsw i32 %50, 1
  %76 = load i32, ptr %8, align 8
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %49, label %42

78:                                               ; preds = %78, %42
  %79 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %79(i32 noundef 2147480) #20
  %80 = load ptr, ptr %43, align 4
  %81 = getelementptr i8, ptr %80, i32 68
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %81) #20, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #20, !srcloc !23
  %83 = and i32 %82, 1152
  %84 = icmp eq i32 %83, 1024
  br i1 %84, label %85, label %78

85:                                               ; preds = %78, %42
  %86 = load ptr, ptr %43, align 4
  %87 = getelementptr i8, ptr %86, i32 60
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %87) #20, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #20, !srcloc !23
  %89 = and i32 %88, -1028
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !24
  tail call void @arm_heavy_mb() #20
  %90 = load ptr, ptr %43, align 4
  %91 = getelementptr i8, ptr %90, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %91, i32 %89) #20, !srcloc !9
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @mv643xx_eth_get_stats(ptr noundef %0) #15 {
  %2 = getelementptr i8, ptr %0, i32 2168
  %3 = load i32, ptr %2, align 8
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %23

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %0, i32 2172
  br label %7

7:                                                ; preds = %7, %5
  %8 = phi i32 [ 0, %5 ], [ %21, %7 ]
  %9 = phi i32 [ 0, %5 ], [ %20, %7 ]
  %10 = phi i32 [ 0, %5 ], [ %17, %7 ]
  %11 = phi i32 [ 0, %5 ], [ %14, %7 ]
  %12 = getelementptr %struct.tx_queue, ptr %6, i32 %8, i32 14
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, %11
  %15 = getelementptr %struct.tx_queue, ptr %6, i32 %8, i32 15
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, %10
  %18 = getelementptr %struct.tx_queue, ptr %6, i32 %8, i32 16
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, %9
  %21 = add nuw nsw i32 %8, 1
  %22 = icmp eq i32 %21, %3
  br i1 %22, label %23, label %7

23:                                               ; preds = %7, %1
  %24 = phi i32 [ 0, %1 ], [ %14, %7 ]
  %25 = phi i32 [ 0, %1 ], [ %17, %7 ]
  %26 = phi i32 [ 0, %1 ], [ %20, %7 ]
  %27 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 36
  %28 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 36, i32 1
  store i32 %24, ptr %28, align 4
  %29 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 36, i32 3
  store i32 %25, ptr %29, align 4
  %30 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 36, i32 7
  store i32 %26, ptr %30, align 4
  ret ptr %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mib_counters_update(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %0, i32 0, i32 6
  %3 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %0, i32 0, i32 5
  tail call void @_raw_spin_lock_bh(ptr noundef %3) #20
  %4 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 8
  %6 = shl i32 %5, 7
  %7 = add i32 %6, 4096
  %8 = load ptr, ptr %0, align 8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 %7
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #20, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #20, !srcloc !25
  %12 = zext i32 %11 to i64
  %13 = load i64, ptr %2, align 8
  %14 = add i64 %13, %12
  store i64 %14, ptr %2, align 8
  %15 = load i32, ptr %4, align 8
  %16 = shl i32 %15, 7
  %17 = add i32 %16, 4104
  %18 = load ptr, ptr %0, align 8
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %19, i32 %17
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #20, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #20, !srcloc !25
  %22 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %0, i32 0, i32 6, i32 1
  %23 = load i32, ptr %22, align 8
  %24 = add i32 %23, %21
  store i32 %24, ptr %22, align 8
  %25 = load i32, ptr %4, align 8
  %26 = shl i32 %25, 7
  %27 = add i32 %26, 4108
  %28 = load ptr, ptr %0, align 8
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr i8, ptr %29, i32 %27
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #20, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #20, !srcloc !25
  %32 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %0, i32 0, i32 6, i32 2
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, %31
  store i32 %34, ptr %32, align 4
  %35 = load i32, ptr %4, align 8
  %36 = shl i32 %35, 7
  %37 = add i32 %36, 4112
  %38 = load ptr, ptr %0, align 8
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr i8, ptr %39, i32 %37
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #20, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #20, !srcloc !25
  %42 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %0, i32 0, i32 6, i32 3
  %43 = load i32, ptr %42, align 8
  %44 = add i32 %43, %41
  store i32 %44, ptr %42, align 8
  %45 = load i32, ptr %4, align 8
  %46 = shl i32 %45, 7
  %47 = add i32 %46, 4116
  %48 = load ptr, ptr %0, align 8
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr i8, ptr %49, i32 %47
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #20, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #20, !srcloc !25
  %52 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %0, i32 0, i32 6, i32 4
  %53 = load i32, ptr %52, align 4
  %54 = add i32 %53, %51
  store i32 %54, ptr %52, align 4
  %55 = load i32, ptr %4, align 8
  %56 = shl i32 %55, 7
  %57 = add i32 %56, 4120
  %58 = load ptr, ptr %0, align 8
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr i8, ptr %59, i32 %57
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %60) #20, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #20, !srcloc !25
  %62 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %0, i32 0, i32 6, i32 5
  %63 = load i32, ptr %62, align 8
  %64 = add i32 %63, %61
  store i32 %64, ptr %62, align 8
  %65 = load i32, ptr %4, align 8
  %66 = shl i32 %65, 7
  %67 = add i32 %66, 4124
  %68 = load ptr, ptr %0, align 8
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr i8, ptr %69, i32 %67
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %70) #20, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #20, !srcloc !25
  %72 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %0, i32 0, i32 6, i32 6
  %73 = load i32, ptr %72, align 4
  %74 = add i32 %73, %71
  store i32 %74, ptr %72, align 4
  %75 = load i32, ptr %4, align 8
  %76 = shl i32 %75, 7
  %77 = add i32 %76, 4128
  %78 = load ptr, ptr %0, align 8
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr i8, ptr %79, i32 %77
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %80) #20, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #20, !srcloc !25
  %82 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %0, i32 0, i32 6, i32 7
  %83 = load i32, ptr %82, align 8
  %84 = add i32 %83, %81
  store i32 %84, ptr %82, align 8
  %85 = load i32, ptr %4, align 8
  %86 = shl i32 %85, 7
  %87 = add i32 %86, 4132
  %88 = load ptr, ptr %0, align 8
  %89 = load ptr, ptr %88, align 4
  %90 = getelementptr i8, ptr %89, i32 %87
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %90) #20, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #20, !srcloc !25
  %92 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %0, i32 0, i32 6, i32 8
  %93 = load i32, ptr %92, align 4
  %94 = add i32 %93, %91
  store i32 %94, ptr %92, align 4
  %95 = load i32, ptr %4, align 8
  %96 = shl i32 %95, 7
  %97 = add i32 %96, 4136
  %98 = load ptr, ptr %0, align 8
  %99 = load ptr, ptr %98, align 4
  %100 = getelementptr i8, ptr %99, i32 %97
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %100) #20, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #20, !srcloc !25
  %102 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %0, i32 0, i32 6, i32 9
  %103 = load i32, ptr %102, align 8
  %104 = add i32 %103, %101
  store i32 %104, ptr %102, align 8
  %105 = load i32, ptr %4, align 8
  %106 = shl i32 %105, 7
  %107 = add i32 %106, 4140
  %108 = load ptr, ptr %0, align 8
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr i8, ptr %109, i32 %107
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %110) #20, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #20, !srcloc !25
  %112 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %0, i32 0, i32 6, i32 10
  %113 = load i32, ptr %112, align 4
  %114 = add i32 %113, %111
  store i32 %114, ptr %112, align 4
  %115 = load i32, ptr %4, align 8
  %116 = shl i32 %115, 7
  %117 = add i32 %116, 4144
  %118 = load ptr, ptr %0, align 8
  %119 = load ptr, ptr %118, align 4
  %120 = getelementptr i8, ptr %119, i32 %117
  %121 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %120) #20, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #20, !srcloc !25
  %122 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %0, i32 0, i32 6, i32 11
  %123 = load i32, ptr %122, align 8
  %124 = add i32 %123, %121
  store i32 %124, ptr %122, align 8
  %125 = load i32, ptr %4, align 8
  %126 = shl i32 %125, 7
  %127 = add i32 %126, 4148
  %128 = load ptr, ptr %0, align 8
  %129 = load ptr, ptr %128, align 4
  %130 = getelementptr i8, ptr %129, i32 %127
  %131 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %130) #20, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #20, !srcloc !25
  %132 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %0, i32 0, i32 6, i32 12
  %133 = load i32, ptr %132, align 4
  %134 = add i32 %133, %131
  store i32 %134, ptr %132, align 4
  %135 = load i32, ptr %4, align 8
  %136 = shl i32 %135, 7
  %137 = add i32 %136, 4152
  %138 = load ptr, ptr %0, align 8
  %139 = load ptr, ptr %138, align 4
  %140 = getelementptr i8, ptr %139, i32 %137
  %141 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %140) #20, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #20, !srcloc !25
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %0, i32 0, i32 6, i32 13
  %144 = load i64, ptr %143, align 8
  %145 = add i64 %144, %142
  store i64 %145, ptr %143, align 8
  %146 = load i32, ptr %4, align 8
  %147 = shl i32 %146, 7
  %148 = add i32 %147, 4160
  %149 = load ptr, ptr %0, align 8
  %150 = load ptr, ptr %149, align 4
  %151 = getelementptr i8, ptr %150, i32 %148
  %152 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %151) #20, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #20, !srcloc !25
  %153 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %0, i32 0, i32 6, i32 14
  %154 = load i32, ptr %153, align 8
  %155 = add i32 %154, %152
  store i32 %155, ptr %153, align 8
  %156 = load i32, ptr %4, align 8
  %157 = shl i32 %156, 7
  %158 = add i32 %157, 4164
  %159 = load ptr, ptr %0, align 8
  %160 = load ptr, ptr %159, align 4
  %161 = getelementptr i8, ptr %160, i32 %158
  %162 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %161) #20, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #20, !srcloc !25
  %163 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %0, i32 0, i32 6, i32 15
  %164 = load i32, ptr %163, align 4
  %165 = add i32 %164, %162
  store i32 %165, ptr %163, align 4
  %166 = load i32, ptr %4, align 8
  %167 = shl i32 %166, 7
  %168 = add i32 %167, 4168
  %169 = load ptr, ptr %0, align 8
  %170 = load ptr, ptr %169, align 4
  %171 = getelementptr i8, ptr %170, i32 %168
  %172 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %171) #20, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #20, !srcloc !25
  %173 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %0, i32 0, i32 6, i32 16
  %174 = load i32, ptr %173, align 8
  %175 = add i32 %174, %172
  store i32 %175, ptr %173, align 8
  %176 = load i32, ptr %4, align 8
  %177 = shl i32 %176, 7
  %178 = add i32 %177, 4172
  %179 = load ptr, ptr %0, align 8
  %180 = load ptr, ptr %179, align 4
  %181 = getelementptr i8, ptr %180, i32 %178
  %182 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %181) #20, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #20, !srcloc !25
  %183 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %0, i32 0, i32 6, i32 17
  %184 = load i32, ptr %183, align 4
  %185 = add i32 %184, %182
  store i32 %185, ptr %183, align 4
  %186 = load i32, ptr %4, align 8
  %187 = shl i32 %186, 7
  %188 = add i32 %187, 4176
  %189 = load ptr, ptr %0, align 8
  %190 = load ptr, ptr %189, align 4
  %191 = getelementptr i8, ptr %190, i32 %188
  %192 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %191) #20, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #20, !srcloc !25
  %193 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %0, i32 0, i32 6, i32 18
  %194 = load i32, ptr %193, align 8
  %195 = add i32 %194, %192
  store i32 %195, ptr %193, align 8
  %196 = load i32, ptr %4, align 8
  %197 = shl i32 %196, 7
  %198 = add i32 %197, 4180
  %199 = load ptr, ptr %0, align 8
  %200 = load ptr, ptr %199, align 4
  %201 = getelementptr i8, ptr %200, i32 %198
  %202 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %201) #20, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #20, !srcloc !25
  %203 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %0, i32 0, i32 6, i32 19
  %204 = load i32, ptr %203, align 4
  %205 = add i32 %204, %202
  store i32 %205, ptr %203, align 4
  %206 = load i32, ptr %4, align 8
  %207 = shl i32 %206, 7
  %208 = add i32 %207, 4184
  %209 = load ptr, ptr %0, align 8
  %210 = load ptr, ptr %209, align 4
  %211 = getelementptr i8, ptr %210, i32 %208
  %212 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %211) #20, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #20, !srcloc !25
  %213 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %0, i32 0, i32 6, i32 20
  %214 = load i32, ptr %213, align 8
  %215 = add i32 %214, %212
  store i32 %215, ptr %213, align 8
  %216 = load i32, ptr %4, align 8
  %217 = shl i32 %216, 7
  %218 = add i32 %217, 4188
  %219 = load ptr, ptr %0, align 8
  %220 = load ptr, ptr %219, align 4
  %221 = getelementptr i8, ptr %220, i32 %218
  %222 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %221) #20, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #20, !srcloc !25
  %223 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %0, i32 0, i32 6, i32 21
  %224 = load i32, ptr %223, align 4
  %225 = add i32 %224, %222
  store i32 %225, ptr %223, align 4
  %226 = load i32, ptr %4, align 8
  %227 = shl i32 %226, 7
  %228 = add i32 %227, 4192
  %229 = load ptr, ptr %0, align 8
  %230 = load ptr, ptr %229, align 4
  %231 = getelementptr i8, ptr %230, i32 %228
  %232 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %231) #20, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #20, !srcloc !25
  %233 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %0, i32 0, i32 6, i32 22
  %234 = load i32, ptr %233, align 8
  %235 = add i32 %234, %232
  store i32 %235, ptr %233, align 8
  %236 = load i32, ptr %4, align 8
  %237 = shl i32 %236, 7
  %238 = add i32 %237, 4196
  %239 = load ptr, ptr %0, align 8
  %240 = load ptr, ptr %239, align 4
  %241 = getelementptr i8, ptr %240, i32 %238
  %242 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %241) #20, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #20, !srcloc !25
  %243 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %0, i32 0, i32 6, i32 23
  %244 = load i32, ptr %243, align 4
  %245 = add i32 %244, %242
  store i32 %245, ptr %243, align 4
  %246 = load i32, ptr %4, align 8
  %247 = shl i32 %246, 7
  %248 = add i32 %247, 4200
  %249 = load ptr, ptr %0, align 8
  %250 = load ptr, ptr %249, align 4
  %251 = getelementptr i8, ptr %250, i32 %248
  %252 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %251) #20, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #20, !srcloc !25
  %253 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %0, i32 0, i32 6, i32 24
  %254 = load i32, ptr %253, align 8
  %255 = add i32 %254, %252
  store i32 %255, ptr %253, align 8
  %256 = load i32, ptr %4, align 8
  %257 = shl i32 %256, 7
  %258 = add i32 %257, 4204
  %259 = load ptr, ptr %0, align 8
  %260 = load ptr, ptr %259, align 4
  %261 = getelementptr i8, ptr %260, i32 %258
  %262 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %261) #20, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #20, !srcloc !25
  %263 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %0, i32 0, i32 6, i32 25
  %264 = load i32, ptr %263, align 4
  %265 = add i32 %264, %262
  store i32 %265, ptr %263, align 4
  %266 = load i32, ptr %4, align 8
  %267 = shl i32 %266, 7
  %268 = add i32 %267, 4208
  %269 = load ptr, ptr %0, align 8
  %270 = load ptr, ptr %269, align 4
  %271 = getelementptr i8, ptr %270, i32 %268
  %272 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %271) #20, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #20, !srcloc !25
  %273 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %0, i32 0, i32 6, i32 26
  %274 = load i32, ptr %273, align 8
  %275 = add i32 %274, %272
  store i32 %275, ptr %273, align 8
  %276 = load i32, ptr %4, align 8
  %277 = shl i32 %276, 7
  %278 = add i32 %277, 4212
  %279 = load ptr, ptr %0, align 8
  %280 = load ptr, ptr %279, align 4
  %281 = getelementptr i8, ptr %280, i32 %278
  %282 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %281) #20, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #20, !srcloc !25
  %283 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %0, i32 0, i32 6, i32 27
  %284 = load i32, ptr %283, align 4
  %285 = add i32 %284, %282
  store i32 %285, ptr %283, align 4
  %286 = load i32, ptr %4, align 8
  %287 = shl i32 %286, 7
  %288 = add i32 %287, 4216
  %289 = load ptr, ptr %0, align 8
  %290 = load ptr, ptr %289, align 4
  %291 = getelementptr i8, ptr %290, i32 %288
  %292 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %291) #20, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #20, !srcloc !25
  %293 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %0, i32 0, i32 6, i32 28
  %294 = load i32, ptr %293, align 8
  %295 = add i32 %294, %292
  store i32 %295, ptr %293, align 8
  %296 = load i32, ptr %4, align 8
  %297 = shl i32 %296, 7
  %298 = add i32 %297, 4220
  %299 = load ptr, ptr %0, align 8
  %300 = load ptr, ptr %299, align 4
  %301 = getelementptr i8, ptr %300, i32 %298
  %302 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %301) #20, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #20, !srcloc !25
  %303 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %0, i32 0, i32 6, i32 29
  %304 = load i32, ptr %303, align 4
  %305 = add i32 %304, %302
  store i32 %305, ptr %303, align 4
  %306 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %0, i32 0, i32 1
  %307 = load ptr, ptr %306, align 4
  %308 = getelementptr i8, ptr %307, i32 132
  %309 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %308) #20, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #20, !srcloc !23
  %310 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %0, i32 0, i32 6, i32 30
  %311 = load i32, ptr %310, align 8
  %312 = add i32 %311, %309
  store i32 %312, ptr %310, align 8
  %313 = load ptr, ptr %306, align 4
  %314 = getelementptr i8, ptr %313, i32 136
  %315 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %314) #20, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #20, !srcloc !23
  %316 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %0, i32 0, i32 6, i32 31
  %317 = load i32, ptr %316, align 4
  %318 = add i32 %317, %315
  store i32 %318, ptr %316, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %3) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rxq_deinit(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = load i32, ptr %0, align 4
  %3 = mul i32 %2, -36
  %4 = add i32 %3, -460
  %5 = getelementptr i8, ptr %0, i32 %4
  %6 = shl nuw i32 1, %2
  %7 = and i32 %6, 255
  %8 = shl nuw nsw i32 %7, 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !24
  tail call void @arm_heavy_mb() #20
  %9 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %5, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 640
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %8) #20, !srcloc !9
  %12 = load ptr, ptr %9, align 4
  %13 = getelementptr i8, ptr %12, i32 640
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #20, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #20, !srcloc !23
  %15 = and i32 %14, %7
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %17, %1
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 2147480) #20
  %19 = load ptr, ptr %9, align 4
  %20 = getelementptr i8, ptr %19, i32 640
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #20, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #20, !srcloc !23
  %22 = and i32 %21, %7
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %17

24:                                               ; preds = %17, %1
  %25 = getelementptr inbounds %struct.rx_queue, ptr %0, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %46

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.rx_queue, ptr %0, i32 0, i32 8
  %30 = getelementptr inbounds %struct.rx_queue, ptr %0, i32 0, i32 2
  br label %31

31:                                               ; preds = %42, %28
  %32 = phi i32 [ %26, %28 ], [ %43, %42 ]
  %33 = phi i32 [ 0, %28 ], [ %44, %42 ]
  %34 = load ptr, ptr %29, align 4
  %35 = getelementptr ptr, ptr %34, i32 %33
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %31
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %36, i32 noundef 0) #20
  %39 = load i32, ptr %30, align 4
  %40 = add i32 %39, -1
  store i32 %40, ptr %30, align 4
  %41 = load i32, ptr %25, align 4
  br label %42

42:                                               ; preds = %38, %31
  %43 = phi i32 [ %32, %31 ], [ %41, %38 ]
  %44 = add nuw nsw i32 %33, 1
  %45 = icmp slt i32 %44, %43
  br i1 %45, label %31, label %46

46:                                               ; preds = %42, %24
  %47 = getelementptr inbounds %struct.rx_queue, ptr %0, i32 0, i32 2
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %5, i32 0, i32 3
  %52 = load ptr, ptr %51, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %52, ptr noundef nonnull @.str.30, i32 noundef %48) #21
  br label %53

53:                                               ; preds = %50, %46
  %54 = load i32, ptr %0, align 4
  %55 = icmp eq i32 %54, 0
  %56 = getelementptr inbounds %struct.rx_queue, ptr %0, i32 0, i32 7
  %57 = load i32, ptr %56, align 4
  br i1 %55, label %58, label %65

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %5, i32 0, i32 19
  %60 = load i32, ptr %59, align 8
  %61 = icmp sgt i32 %57, %60
  br i1 %61, label %65, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.rx_queue, ptr %0, i32 0, i32 5
  %64 = load ptr, ptr %63, align 4
  tail call void @iounmap(ptr noundef %64) #20
  br label %74

65:                                               ; preds = %58, %53
  %66 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %5, i32 0, i32 3
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.net_device, ptr %67, i32 0, i32 111, i32 1
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.rx_queue, ptr %0, i32 0, i32 5
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.rx_queue, ptr %0, i32 0, i32 6
  %73 = load i32, ptr %72, align 4
  tail call void @dma_free_attrs(ptr noundef %69, i32 noundef %57, ptr noundef %71, i32 noundef %73, i32 noundef 0) #20
  br label %74

74:                                               ; preds = %65, %62
  %75 = getelementptr inbounds %struct.rx_queue, ptr %0, i32 0, i32 8
  %76 = load ptr, ptr %75, align 4
  tail call void @kfree(ptr noundef %76) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @txq_deinit(ptr noundef %0) unnamed_addr #2 {
  %2 = load i32, ptr %0, align 4
  %3 = mul i32 %2, -80
  %4 = add i32 %3, -764
  %5 = getelementptr i8, ptr %0, i32 %4
  %6 = shl nuw i32 1, %2
  %7 = and i32 %6, 255
  %8 = shl nuw nsw i32 %7, 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !24
  tail call void @arm_heavy_mb() #20
  %9 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %5, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %8) #20, !srcloc !9
  %12 = load ptr, ptr %9, align 4
  %13 = getelementptr i8, ptr %12, i32 72
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #20, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #20, !srcloc !23
  %15 = and i32 %14, %7
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %17, %1
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 2147480) #20
  %19 = load ptr, ptr %9, align 4
  %20 = getelementptr i8, ptr %19, i32 72
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #20, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #20, !srcloc !23
  %22 = and i32 %21, %7
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %17

24:                                               ; preds = %17, %1
  %25 = getelementptr inbounds %struct.tx_queue, ptr %0, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = tail call fastcc i32 @txq_reclaim(ptr noundef %0, i32 noundef %26, i32 noundef 1)
  %28 = getelementptr inbounds %struct.tx_queue, ptr %0, i32 0, i32 4
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.tx_queue, ptr %0, i32 0, i32 3
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %34, label %33, !prof !31

33:                                               ; preds = %24
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/marvell/mv643xx_eth.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2128, 0\0A.popsection", ""() #20, !srcloc !40
  unreachable

34:                                               ; preds = %24
  %35 = load i32, ptr %0, align 4
  %36 = icmp eq i32 %35, 0
  %37 = getelementptr inbounds %struct.tx_queue, ptr %0, i32 0, i32 12
  %38 = load i32, ptr %37, align 4
  br i1 %36, label %39, label %46

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %5, i32 0, i32 25
  %41 = load i32, ptr %40, align 4
  %42 = icmp sgt i32 %38, %41
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.tx_queue, ptr %0, i32 0, i32 9
  %45 = load ptr, ptr %44, align 4
  tail call void @iounmap(ptr noundef %45) #20
  br label %55

46:                                               ; preds = %39, %34
  %47 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %5, i32 0, i32 3
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.net_device, ptr %48, i32 0, i32 111, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.tx_queue, ptr %0, i32 0, i32 9
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.tx_queue, ptr %0, i32 0, i32 11
  %54 = load i32, ptr %53, align 4
  tail call void @dma_free_attrs(ptr noundef %50, i32 noundef %38, ptr noundef %52, i32 noundef %54, i32 noundef 0) #20
  br label %55

55:                                               ; preds = %46, %43
  %56 = getelementptr inbounds %struct.tx_queue, ptr %0, i32 0, i32 10
  %57 = load ptr, ptr %56, align 4
  tail call void @kfree(ptr noundef %57) #20
  %58 = getelementptr inbounds %struct.tx_queue, ptr %0, i32 0, i32 7
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %70, label %61

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %5, i32 0, i32 3
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.net_device, ptr %63, i32 0, i32 111, i32 1
  %65 = load ptr, ptr %64, align 4
  %66 = load i32, ptr %25, align 4
  %67 = shl i32 %66, 8
  %68 = getelementptr inbounds %struct.tx_queue, ptr %0, i32 0, i32 8
  %69 = load i32, ptr %68, align 4
  tail call void @dma_free_attrs(ptr noundef %65, i32 noundef %67, ptr noundef nonnull %59, i32 noundef %69, i32 noundef 0) #20
  br label %70

70:                                               ; preds = %61, %55
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @txq_reclaim(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = load i32, ptr %0, align 4
  %5 = mul i32 %4, -80
  %6 = add i32 %5, -764
  %7 = getelementptr i8, ptr %0, i32 %6
  %8 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 87
  %11 = load ptr, ptr %10, align 64
  %12 = getelementptr %struct.netdev_queue, ptr %11, i32 %4, i32 9
  tail call void @_raw_spin_lock_bh(ptr noundef %12) #20
  %13 = tail call ptr @llvm.thread.pointer() #20
  %14 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %15 = load i32, ptr %14, align 8
  %16 = getelementptr %struct.netdev_queue, ptr %11, i32 %4, i32 10
  store volatile i32 %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.tx_queue, ptr %0, i32 0, i32 2
  %18 = icmp sgt i32 %1, 0
  br i1 %18, label %19, label %92

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.tx_queue, ptr %0, i32 0, i32 4
  %21 = getelementptr inbounds %struct.tx_queue, ptr %0, i32 0, i32 9
  %22 = icmp eq i32 %2, 0
  %23 = getelementptr inbounds %struct.tx_queue, ptr %0, i32 0, i32 1
  %24 = getelementptr inbounds %struct.tx_queue, ptr %0, i32 0, i32 8
  %25 = getelementptr inbounds %struct.tx_queue, ptr %0, i32 0, i32 13
  %26 = getelementptr inbounds %struct.tx_queue, ptr %0, i32 0, i32 13, i32 1
  br label %27

27:                                               ; preds = %89, %19
  %28 = phi i32 [ 0, %19 ], [ %47, %89 ]
  %29 = load i32, ptr %17, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %92

31:                                               ; preds = %27
  %32 = load i32, ptr %20, align 4
  %33 = load ptr, ptr %21, align 4
  %34 = getelementptr %struct.tx_desc, ptr %33, i32 %32
  %35 = load i32, ptr %34, align 4
  %36 = icmp sgt i32 %35, -1
  br i1 %36, label %41, label %37

37:                                               ; preds = %31
  br i1 %22, label %92, label %38

38:                                               ; preds = %37
  %39 = and i32 %35, 2147483647
  store i32 %39, ptr %34, align 4
  %40 = load i32, ptr %17, align 4
  br label %41

41:                                               ; preds = %38, %31
  %42 = phi i32 [ %40, %38 ], [ %29, %31 ]
  %43 = add i32 %32, 1
  %44 = load i32, ptr %23, align 4
  %45 = icmp eq i32 %43, %44
  %46 = select i1 %45, i32 0, i32 %43
  store i32 %46, ptr %20, align 4
  %47 = add nuw nsw i32 %28, 1
  %48 = add i32 %42, -1
  store i32 %48, ptr %17, align 4
  %49 = getelementptr %struct.tx_desc, ptr %33, i32 %32, i32 3
  %50 = load i32, ptr %49, align 4
  %51 = load i32, ptr %24, align 4
  %52 = icmp uge i32 %50, %51
  %53 = shl i32 %44, 8
  %54 = add i32 %51, %53
  %55 = icmp ult i32 %50, %54
  %56 = select i1 %52, i1 %55, i1 false
  br i1 %56, label %64, label %57

57:                                               ; preds = %41
  %58 = load ptr, ptr %8, align 4
  %59 = getelementptr inbounds %struct.net_device, ptr %58, i32 0, i32 111, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr %struct.tx_desc, ptr %33, i32 %32, i32 2
  %62 = load i16, ptr %61, align 2
  %63 = zext i16 %62 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %60, i32 noundef %50, i32 noundef %63, i32 noundef 1, i32 noundef 0) #20
  br label %64

64:                                               ; preds = %57, %41
  %65 = and i32 %35, 8388608
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %80, label %67

67:                                               ; preds = %64
  %68 = load ptr, ptr %25, align 4
  %69 = icmp eq ptr %68, %25
  %70 = icmp eq ptr %68, null
  %71 = or i1 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 1107, i32 noundef 9, ptr noundef null) #20
  br label %80

73:                                               ; preds = %67
  %74 = load i32, ptr %26, align 4
  %75 = add i32 %74, -1
  store volatile i32 %75, ptr %26, align 4
  %76 = load ptr, ptr %68, align 8
  %77 = getelementptr inbounds %struct.anon.49, ptr %68, i32 0, i32 1
  %78 = load ptr, ptr %77, align 4
  store ptr null, ptr %77, align 4
  store ptr null, ptr %68, align 8
  %79 = getelementptr inbounds %struct.anon.49, ptr %76, i32 0, i32 1
  store volatile ptr %78, ptr %79, align 4
  store volatile ptr %76, ptr %78, align 8
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %68, i32 noundef 0) #20
  br label %80

80:                                               ; preds = %73, %72, %64
  %81 = and i32 %35, 1
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %89, label %83

83:                                               ; preds = %80
  %84 = load ptr, ptr %8, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %84, ptr noundef nonnull @.str.32) #21
  %85 = load ptr, ptr %8, align 4
  %86 = getelementptr inbounds %struct.net_device, ptr %85, i32 0, i32 36, i32 5
  %87 = load i32, ptr %86, align 4
  %88 = add i32 %87, 1
  store i32 %88, ptr %86, align 4
  br label %89

89:                                               ; preds = %83, %80
  %90 = icmp eq i32 %47, %1
  br i1 %90, label %91, label %27

91:                                               ; preds = %89
  store volatile i32 -1, ptr %16, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %12) #20
  br label %103

92:                                               ; preds = %37, %27, %3
  %93 = phi i32 [ 0, %3 ], [ %28, %37 ], [ %28, %27 ]
  store volatile i32 -1, ptr %16, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %12) #20
  %94 = icmp slt i32 %93, %1
  br i1 %94, label %95, label %103

95:                                               ; preds = %92
  %96 = load i32, ptr %0, align 4
  %97 = shl nuw i32 1, %96
  %98 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %7, i32 0, i32 12
  %99 = load i8, ptr %98, align 2
  %100 = trunc i32 %97 to i8
  %101 = xor i8 %100, -1
  %102 = and i8 %99, %101
  store i8 %102, ptr %98, align 2
  br label %103

103:                                              ; preds = %95, %92, %91
  %104 = phi i32 [ %1, %91 ], [ %93, %95 ], [ %93, %92 ]
  ret i32 %104
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #16

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv643xx_eth_irq(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr i8, ptr %1, i32 1408
  %4 = tail call fastcc i32 @mv643xx_eth_collect_events(ptr noundef %3)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %13, label %6, !prof !27

6:                                                ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !24
  tail call void @arm_heavy_mb() #20
  %7 = getelementptr i8, ptr %1, i32 1412
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 0) #20, !srcloc !9
  %10 = getelementptr i8, ptr %1, i32 1600
  %11 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %10) #20
  br i1 %11, label %12, label %13

12:                                               ; preds = %6
  tail call void @__napi_schedule(ptr noundef %10) #20
  br label %13

13:                                               ; preds = %12, %6, %2
  %14 = phi i32 [ 0, %2 ], [ 1, %6 ], [ 1, %12 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rxq_refill(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = load i32, ptr %0, align 4
  %4 = mul i32 %3, -36
  %5 = add i32 %4, -460
  %6 = getelementptr i8, ptr %0, i32 %5
  %7 = icmp sgt i32 %1, 0
  br i1 %7, label %8, label %91

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.rx_queue, ptr %0, i32 0, i32 2
  %10 = getelementptr inbounds %struct.rx_queue, ptr %0, i32 0, i32 1
  %11 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %6, i32 0, i32 3
  %12 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %6, i32 0, i32 16
  %13 = getelementptr inbounds %struct.rx_queue, ptr %0, i32 0, i32 4
  %14 = getelementptr inbounds %struct.rx_queue, ptr %0, i32 0, i32 5
  %15 = getelementptr inbounds %struct.rx_queue, ptr %0, i32 0, i32 8
  br label %16

16:                                               ; preds = %70, %8
  %17 = phi i32 [ 0, %8 ], [ %29, %70 ]
  %18 = load i32, ptr %9, align 4
  %19 = load i32, ptr %10, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %83

21:                                               ; preds = %16
  %22 = load ptr, ptr %11, align 4
  %23 = load i32, ptr %12, align 4
  %24 = tail call ptr @__netdev_alloc_skb(ptr noundef %22, i32 noundef %23, i32 noundef 2592) #20
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %6, i32 0, i32 10
  store i8 1, ptr %27, align 4
  br label %91

28:                                               ; preds = %21
  %29 = add nuw nsw i32 %17, 1
  %30 = load i32, ptr %9, align 4
  %31 = add i32 %30, 1
  store i32 %31, ptr %9, align 4
  %32 = load i32, ptr %13, align 4
  %33 = add i32 %32, 1
  %34 = load i32, ptr %10, align 4
  %35 = icmp eq i32 %33, %34
  %36 = select i1 %35, i32 0, i32 %33
  store i32 %36, ptr %13, align 4
  %37 = load ptr, ptr %14, align 4
  %38 = getelementptr %struct.rx_desc, ptr %37, i32 %32
  %39 = getelementptr inbounds %struct.sk_buff, ptr %24, i32 0, i32 15
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.sk_buff, ptr %24, i32 0, i32 17
  %42 = load ptr, ptr %41, align 4
  %43 = ptrtoint ptr %40 to i32
  %44 = ptrtoint ptr %42 to i32
  %45 = sub i32 %43, %44
  %46 = load ptr, ptr %11, align 4
  %47 = getelementptr inbounds %struct.net_device, ptr %46, i32 0, i32 111, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %42) #20
  %50 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %51 = xor i1 %50, true
  %52 = select i1 %49, i1 %51, i1 false
  br i1 %52, label %53, label %62, !prof !27

53:                                               ; preds = %28
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %54 = tail call ptr @dev_driver_string(ptr noundef %48) #20
  %55 = getelementptr inbounds %struct.device, ptr %48, i32 0, i32 3
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load ptr, ptr %48, align 4
  br label %60

60:                                               ; preds = %58, %53
  %61 = phi ptr [ %59, %58 ], [ %56, %53 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.36, ptr noundef %54, ptr noundef %61) #20
  br label %62

62:                                               ; preds = %60, %28
  br i1 %49, label %70, label %63

63:                                               ; preds = %62
  %64 = load ptr, ptr @mem_map, align 4
  %65 = add i32 %44, 1073741824
  %66 = lshr i32 %65, 12
  %67 = getelementptr %struct.page, ptr %64, i32 %66
  %68 = and i32 %44, 4095
  %69 = tail call i32 @dma_map_page_attrs(ptr noundef %48, ptr noundef %67, i32 noundef %68, i32 noundef %45, i32 noundef 2, i32 noundef 0) #20
  br label %70

70:                                               ; preds = %63, %62
  %71 = phi i32 [ %69, %63 ], [ -1, %62 ]
  %72 = getelementptr %struct.rx_desc, ptr %37, i32 %32, i32 3
  store i32 %71, ptr %72, align 4
  %73 = trunc i32 %45 to i16
  %74 = getelementptr %struct.rx_desc, ptr %37, i32 %32, i32 1
  store i16 %73, ptr %74, align 4
  %75 = load ptr, ptr %15, align 4
  %76 = getelementptr ptr, ptr %75, i32 %32
  store ptr %24, ptr %76, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !41
  tail call void @arm_heavy_mb() #20
  store i32 -1610612736, ptr %38, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !42
  tail call void @arm_heavy_mb() #20
  %77 = load ptr, ptr %41, align 4
  %78 = getelementptr i8, ptr %77, i32 2
  store ptr %78, ptr %41, align 4
  %79 = getelementptr inbounds %struct.sk_buff, ptr %24, i32 0, i32 14
  %80 = load ptr, ptr %79, align 8
  %81 = getelementptr i8, ptr %80, i32 2
  store ptr %81, ptr %79, align 8
  %82 = icmp eq i32 %29, %1
  br i1 %82, label %91, label %16

83:                                               ; preds = %16
  %84 = load i32, ptr %0, align 4
  %85 = shl nuw i32 1, %84
  %86 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %6, i32 0, i32 15
  %87 = load i8, ptr %86, align 1
  %88 = trunc i32 %85 to i8
  %89 = xor i8 %88, -1
  %90 = and i8 %87, %89
  store i8 %90, ptr %86, align 1
  br label %91

91:                                               ; preds = %83, %70, %26, %2
  %92 = phi i32 [ %17, %26 ], [ %17, %83 ], [ 0, %2 ], [ %1, %70 ]
  ret i32 %92
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @port_start(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = alloca %struct.ethtool_link_ksettings, align 4
  %3 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 120
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %2) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(88) %2, i8 0, i32 88, i1 false), !annotation !15
  %9 = call i32 @mv643xx_eth_get_link_ksettings(ptr noundef %4, ptr noundef nonnull %2)
  %10 = load ptr, ptr %5, align 8
  %11 = call i32 @phy_init_hw(ptr noundef %10) #20
  %12 = call i32 @mv643xx_eth_set_link_ksettings(ptr noundef %4, ptr noundef nonnull %2)
  %13 = load ptr, ptr %5, align 8
  call void @phy_start(ptr noundef %13) #20
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %2) #20
  br label %14

14:                                               ; preds = %8, %1
  %15 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 60
  %18 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #20, !srcloc !17
  call void asm sideeffect "dsb ", "~{memory}"() #20, !srcloc !23
  %19 = or i32 %18, 1
  call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !24
  call void @arm_heavy_mb() #20
  %20 = load ptr, ptr %15, align 4
  %21 = getelementptr i8, ptr %20, i32 60
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #20, !srcloc !9
  %22 = load ptr, ptr %5, align 8
  %23 = icmp eq ptr %22, null
  %24 = select i1 %23, i32 1027, i32 1025
  %25 = or i32 %24, %18
  call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !24
  call void @arm_heavy_mb() #20
  %26 = load ptr, ptr %15, align 4
  %27 = getelementptr i8, ptr %26, i32 60
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #20, !srcloc !9
  call fastcc void @tx_set_rate(ptr noundef %0)
  %28 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %0, i32 0, i32 26
  %29 = load i32, ptr %28, align 8
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %95

31:                                               ; preds = %14
  %32 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %0, i32 0, i32 27
  br label %33

33:                                               ; preds = %91, %31
  %34 = phi i32 [ 0, %31 ], [ %92, %91 ]
  %35 = getelementptr %struct.tx_queue, ptr %32, i32 %34
  %36 = load i32, ptr %35, align 4
  %37 = mul i32 %36, -80
  %38 = add i32 %37, -764
  %39 = getelementptr i8, ptr %35, i32 %38
  %40 = getelementptr %struct.tx_queue, ptr %32, i32 %34, i32 11
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr %struct.tx_queue, ptr %32, i32 %34, i32 3
  %43 = load i32, ptr %42, align 4
  %44 = shl i32 %43, 4
  %45 = add i32 %44, %41
  %46 = shl i32 %36, 2
  %47 = add i32 %46, 704
  call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !24
  call void @arm_heavy_mb() #20
  %48 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %39, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr i8, ptr %49, i32 %47
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %45) #20, !srcloc !9
  %51 = load i32, ptr %35, align 4
  %52 = mul i32 %51, -80
  %53 = add i32 %52, -764
  %54 = getelementptr i8, ptr %35, i32 %53
  %55 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %54, i32 0, i32 29
  %56 = load i32, ptr %55, align 8
  %57 = udiv i32 %56, 1000
  %58 = udiv i32 64000000, %57
  %59 = call i32 @llvm.umin.i32(i32 %58, i32 1023) #20
  %60 = shl i32 %51, 4
  %61 = add i32 %60, 768
  %62 = shl nuw nsw i32 %59, 14
  call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !24
  call void @arm_heavy_mb() #20
  %63 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %54, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr i8, ptr %64, i32 %61
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %62) #20, !srcloc !9
  %66 = load i32, ptr %35, align 4
  %67 = shl i32 %66, 4
  %68 = add i32 %67, 772
  %69 = or i32 %59, 67107840
  call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !24
  call void @arm_heavy_mb() #20
  %70 = load ptr, ptr %63, align 4
  %71 = getelementptr i8, ptr %70, i32 %68
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 %69) #20, !srcloc !9
  %72 = load i32, ptr %35, align 4
  %73 = mul i32 %72, -80
  %74 = add i32 %73, -764
  %75 = getelementptr i8, ptr %35, i32 %74
  %76 = load ptr, ptr %75, align 8
  %77 = getelementptr inbounds %struct.mv643xx_eth_shared_private, ptr %76, i32 0, i32 3
  %78 = load i32, ptr %77, align 4
  switch i32 %78, label %91 [
    i32 1, label %80
    i32 2, label %79
  ]

79:                                               ; preds = %33
  br label %80

80:                                               ; preds = %79, %33
  %81 = phi i32 [ 220, %79 ], [ 76, %33 ]
  %82 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %75, i32 0, i32 1
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr i8, ptr %83, i32 %81
  %85 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %84) #20, !srcloc !17
  call void asm sideeffect "dsb ", "~{memory}"() #20, !srcloc !23
  %86 = load i32, ptr %35, align 4
  %87 = shl nuw i32 1, %86
  %88 = or i32 %87, %85
  call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !24
  call void @arm_heavy_mb() #20
  %89 = load ptr, ptr %82, align 4
  %90 = getelementptr i8, ptr %89, i32 %81
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %90, i32 %88) #20, !srcloc !9
  br label %91

91:                                               ; preds = %80, %33
  %92 = add nuw nsw i32 %34, 1
  %93 = load i32, ptr %28, align 8
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %33, label %95

95:                                               ; preds = %91, %14
  %96 = load ptr, ptr %3, align 4
  %97 = getelementptr inbounds %struct.net_device, ptr %96, i32 0, i32 23
  %98 = load i64, ptr %97, align 16
  %99 = lshr i64 %98, 15
  %100 = trunc i64 %99 to i32
  %101 = and i32 %100, 33554432
  call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !24
  call void @arm_heavy_mb() #20
  %102 = getelementptr i8, ptr %96, i32 1412
  %103 = load ptr, ptr %102, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %103, i32 %101) #20, !srcloc !9
  call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !24
  call void @arm_heavy_mb() #20
  %104 = load ptr, ptr %15, align 4
  %105 = getelementptr i8, ptr %104, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %105, i32 0) #20, !srcloc !9
  %106 = load ptr, ptr %3, align 4
  call fastcc void @mv643xx_eth_program_unicast_filter(ptr noundef %106)
  %107 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %0, i32 0, i32 20
  %108 = load i32, ptr %107, align 4
  %109 = icmp sgt i32 %108, 0
  br i1 %109, label %110, label %136

110:                                              ; preds = %95
  %111 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %0, i32 0, i32 22
  br label %112

112:                                              ; preds = %112, %110
  %113 = phi i32 [ 0, %110 ], [ %133, %112 ]
  %114 = getelementptr %struct.rx_queue, ptr %111, i32 %113
  %115 = getelementptr %struct.rx_queue, ptr %111, i32 %113, i32 6
  %116 = load i32, ptr %115, align 4
  %117 = getelementptr %struct.rx_queue, ptr %111, i32 %113, i32 3
  %118 = load i32, ptr %117, align 4
  %119 = shl i32 %118, 4
  %120 = add i32 %119, %116
  %121 = shl i32 %113, 4
  %122 = add i32 %121, 524
  call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !24
  call void @arm_heavy_mb() #20
  %123 = load ptr, ptr %15, align 4
  %124 = getelementptr i8, ptr %123, i32 %122
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %124, i32 %120) #20, !srcloc !9
  %125 = load i32, ptr %114, align 4
  %126 = mul i32 %125, -36
  %127 = add i32 %126, -460
  %128 = getelementptr i8, ptr %114, i32 %127
  %129 = shl nuw i32 1, %125
  call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !24
  call void @arm_heavy_mb() #20
  %130 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %128, i32 0, i32 1
  %131 = load ptr, ptr %130, align 4
  %132 = getelementptr i8, ptr %131, i32 640
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %132, i32 %129) #20, !srcloc !9
  %133 = add nuw nsw i32 %113, 1
  %134 = load i32, ptr %107, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %112, label %136

136:                                              ; preds = %112, %95
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mv643xx_eth_collect_events(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 96
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #20, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #20, !srcloc !23
  %6 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %0, i32 0, i32 9
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, %5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %57, label %10

10:                                               ; preds = %1
  %11 = and i32 %8, 2
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %10
  %14 = and i32 %8, -3
  %15 = load ptr, ptr %2, align 4
  %16 = getelementptr i8, ptr %15, i32 100
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #20, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #20, !srcloc !23
  %18 = and i32 %17, 1114367
  %19 = icmp eq i32 %14, 0
  br i1 %19, label %41, label %20

20:                                               ; preds = %13, %10
  %21 = phi i32 [ %18, %13 ], [ 0, %10 ]
  %22 = phi i32 [ %14, %13 ], [ %8, %10 ]
  %23 = xor i32 %22, -1
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !24
  tail call void @arm_heavy_mb() #20
  %24 = load ptr, ptr %2, align 4
  %25 = getelementptr i8, ptr %24, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #20, !srcloc !9
  %26 = lshr i32 %22, 19
  %27 = load ptr, ptr %2, align 4
  %28 = getelementptr i8, ptr %27, i32 72
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #20, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #20, !srcloc !23
  %30 = xor i32 %29, -1
  %31 = and i32 %26, %30
  %32 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %0, i32 0, i32 13
  %33 = load i8, ptr %32, align 1
  %34 = trunc i32 %31 to i8
  %35 = or i8 %33, %34
  store i8 %35, ptr %32, align 1
  %36 = lshr i32 %22, 2
  %37 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %0, i32 0, i32 14
  %38 = load i8, ptr %37, align 8
  %39 = trunc i32 %36 to i8
  %40 = or i8 %38, %39
  store i8 %40, ptr %37, align 8
  br label %41

41:                                               ; preds = %20, %13
  %42 = phi i32 [ %21, %20 ], [ %18, %13 ]
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %57, label %44

44:                                               ; preds = %41
  %45 = xor i32 %42, -1
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !24
  tail call void @arm_heavy_mb() #20
  %46 = load ptr, ptr %2, align 4
  %47 = getelementptr i8, ptr %46, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %45) #20, !srcloc !9
  %48 = and i32 %42, 1114112
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %0, i32 0, i32 11
  store i8 1, ptr %51, align 1
  br label %52

52:                                               ; preds = %50, %44
  %53 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %0, i32 0, i32 12
  %54 = load i8, ptr %53, align 2
  %55 = trunc i32 %42 to i8
  %56 = or i8 %54, %55
  store i8 %56, ptr %53, align 2
  br label %57

57:                                               ; preds = %52, %41, %1
  %58 = phi i32 [ 0, %1 ], [ 1, %52 ], [ 1, %41 ]
  ret i32 %58
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #14

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #17

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #18

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tx_set_rate(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %0, i32 0, i32 29
  %3 = load i32, ptr %2, align 8
  %4 = udiv i32 %3, 1000
  %5 = udiv i32 64000000, %4
  %6 = tail call i32 @llvm.umin.i32(i32 %5, i32 1023)
  %7 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 20
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, 255
  %12 = lshr i32 %11, 8
  %13 = tail call i32 @llvm.umin.i32(i32 %12, i32 63)
  %14 = load ptr, ptr %0, align 8
  %15 = getelementptr inbounds %struct.mv643xx_eth_shared_private, ptr %14, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  switch i32 %16, label %33 [
    i32 1, label %17
    i32 2, label %25
  ]

17:                                               ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !24
  tail call void @arm_heavy_mb() #20
  %18 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %0, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %19, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %6) #20, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !24
  tail call void @arm_heavy_mb() #20
  %21 = load ptr, ptr %18, align 4
  %22 = getelementptr i8, ptr %21, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %13) #20, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !24
  tail call void @arm_heavy_mb() #20
  %23 = load ptr, ptr %18, align 4
  %24 = getelementptr i8, ptr %23, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 65535) #20, !srcloc !9
  br label %33

25:                                               ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !24
  tail call void @arm_heavy_mb() #20
  %26 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %0, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr i8, ptr %27, i32 224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %6) #20, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !24
  tail call void @arm_heavy_mb() #20
  %29 = load ptr, ptr %26, align 4
  %30 = getelementptr i8, ptr %29, i32 232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %13) #20, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !24
  tail call void @arm_heavy_mb() #20
  %31 = load ptr, ptr %26, align 4
  %32 = getelementptr i8, ptr %31, i32 236
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 65535) #20, !srcloc !9
  br label %33

33:                                               ; preds = %25, %17, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv643xx_eth_set_features(ptr nocapture noundef readonly %0, i64 noundef %1) #2 {
  %3 = lshr i64 %1, 15
  %4 = trunc i64 %3 to i32
  %5 = and i32 %4, 33554432
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !24
  tail call void @arm_heavy_mb() #20
  %6 = getelementptr i8, ptr %0, i32 1412
  %7 = load ptr, ptr %6, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #20, !srcloc !9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mv643xx_eth_program_unicast_filter(ptr noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 72
  %3 = load ptr, ptr %2, align 32
  %4 = load i8, ptr %3, align 1
  %5 = zext i8 %4 to i32
  %6 = shl nuw i32 %5, 24
  %7 = getelementptr i8, ptr %3, i32 1
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = shl nuw nsw i32 %9, 16
  %11 = or i32 %10, %6
  %12 = getelementptr i8, ptr %3, i32 2
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = shl nuw nsw i32 %14, 8
  %16 = or i32 %11, %15
  %17 = getelementptr i8, ptr %3, i32 3
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = or i32 %16, %19
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !24
  tail call void @arm_heavy_mb() #20
  %21 = getelementptr i8, ptr %0, i32 1412
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr i8, ptr %22, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %20) #20, !srcloc !9
  %24 = getelementptr i8, ptr %3, i32 4
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i32
  %27 = shl nuw nsw i32 %26, 8
  %28 = getelementptr i8, ptr %3, i32 5
  %29 = load i8, ptr %28, align 1
  %30 = zext i8 %29 to i32
  %31 = or i32 %27, %30
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !24
  tail call void @arm_heavy_mb() #20
  %32 = load ptr, ptr %21, align 4
  %33 = getelementptr i8, ptr %32, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %31) #20, !srcloc !9
  %34 = load ptr, ptr %21, align 4
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #20, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #20, !srcloc !23
  %36 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 14
  %37 = load i32, ptr %36, align 8
  %38 = and i32 %37, 256
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %68

40:                                               ; preds = %1
  %41 = load ptr, ptr %2, align 32
  %42 = getelementptr i8, ptr %41, i32 5
  %43 = load i8, ptr %42, align 1
  %44 = and i8 %43, 15
  %45 = zext i8 %44 to i32
  %46 = shl nuw nsw i32 1, %45
  %47 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 60
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, %47
  br i1 %49, label %68, label %50

50:                                               ; preds = %61, %40
  %51 = phi ptr [ %66, %61 ], [ %48, %40 ]
  %52 = phi i32 [ %65, %61 ], [ %46, %40 ]
  %53 = getelementptr inbounds %struct.netdev_hw_addr, ptr %51, i32 0, i32 2
  %54 = tail call i32 @bcmp(ptr noundef dereferenceable(5) %41, ptr noundef dereferenceable(5) %53, i32 5) #20
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %50
  %57 = getelementptr %struct.netdev_hw_addr, ptr %51, i32 0, i32 2, i32 5
  %58 = load i8, ptr %57, align 1
  %59 = xor i8 %58, %43
  %60 = icmp ult i8 %59, 16
  br i1 %60, label %61, label %68

61:                                               ; preds = %56
  %62 = and i8 %58, 15
  %63 = zext i8 %62 to i32
  %64 = shl nuw nsw i32 1, %63
  %65 = or i32 %64, %52
  %66 = load ptr, ptr %51, align 4
  %67 = icmp eq ptr %66, %47
  br i1 %67, label %68, label %50

68:                                               ; preds = %61, %56, %50, %40, %1
  %69 = phi i32 [ 0, %1 ], [ %46, %40 ], [ %65, %61 ], [ 0, %56 ], [ 0, %50 ]
  %70 = getelementptr i8, ptr %0, i32 1408
  %71 = icmp eq i32 %69, 0
  %72 = select i1 %71, i32 65535, i32 %69
  %73 = getelementptr i8, ptr %0, i32 1416
  %74 = load i32, ptr %73, align 8
  %75 = shl i32 %74, 10
  %76 = add i32 %75, 5632
  %77 = and i32 %72, 1
  %78 = shl i32 %72, 7
  %79 = and i32 %78, 256
  %80 = or i32 %79, %77
  %81 = shl i32 %72, 14
  %82 = and i32 %81, 65536
  %83 = or i32 %80, %82
  %84 = shl i32 %72, 21
  %85 = and i32 %84, 16777216
  %86 = or i32 %83, %85
  %87 = lshr i32 %72, 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !26
  tail call void @arm_heavy_mb() #20
  %88 = load ptr, ptr %70, align 8
  %89 = load ptr, ptr %88, align 4
  %90 = getelementptr i8, ptr %89, i32 %76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %90, i32 %86) #20, !srcloc !9
  %91 = load i32, ptr %73, align 8
  %92 = shl i32 %91, 10
  %93 = add i32 %92, 5636
  %94 = and i32 %87, 1
  %95 = shl i32 %87, 7
  %96 = and i32 %95, 256
  %97 = or i32 %96, %94
  %98 = shl i32 %87, 14
  %99 = and i32 %98, 65536
  %100 = or i32 %97, %99
  %101 = shl i32 %87, 21
  %102 = and i32 %101, 16777216
  %103 = or i32 %100, %102
  %104 = lshr i32 %72, 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !26
  tail call void @arm_heavy_mb() #20
  %105 = load ptr, ptr %70, align 8
  %106 = load ptr, ptr %105, align 4
  %107 = getelementptr i8, ptr %106, i32 %93
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %107, i32 %103) #20, !srcloc !9
  %108 = load i32, ptr %73, align 8
  %109 = shl i32 %108, 10
  %110 = add i32 %109, 5640
  %111 = and i32 %104, 1
  %112 = shl nuw nsw i32 %104, 7
  %113 = and i32 %112, 256
  %114 = or i32 %113, %111
  %115 = shl i32 %104, 14
  %116 = and i32 %115, 65536
  %117 = or i32 %114, %116
  %118 = shl i32 %104, 21
  %119 = and i32 %118, 16777216
  %120 = or i32 %117, %119
  %121 = lshr i32 %72, 12
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !26
  tail call void @arm_heavy_mb() #20
  %122 = load ptr, ptr %70, align 8
  %123 = load ptr, ptr %122, align 4
  %124 = getelementptr i8, ptr %123, i32 %110
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %124, i32 %120) #20, !srcloc !9
  %125 = load i32, ptr %73, align 8
  %126 = shl i32 %125, 10
  %127 = add i32 %126, 5644
  %128 = and i32 %121, 1
  %129 = shl nuw nsw i32 %121, 7
  %130 = and i32 %129, 256
  %131 = or i32 %130, %128
  %132 = shl i32 %121, 14
  %133 = and i32 %132, 65536
  %134 = or i32 %131, %133
  %135 = shl i32 %121, 21
  %136 = and i32 %135, 16777216
  %137 = or i32 %134, %136
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !26
  tail call void @arm_heavy_mb() #20
  %138 = load ptr, ptr %70, align 8
  %139 = load ptr, ptr %138, align 4
  %140 = getelementptr i8, ptr %139, i32 %127
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %140, i32 %137) #20, !srcloc !9
  %141 = and i32 %35, -2
  %142 = zext i1 %71 to i32
  %143 = or i32 %141, %142
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !24
  tail call void @arm_heavy_mb() #20
  %144 = load ptr, ptr %21, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %144, i32 %143) #20, !srcloc !9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_ethtool_ksettings_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ethtool_convert_link_mode_to_legacy_u32(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_ksettings_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_stop_all_queues(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @napi_gro_receive(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv643xx_eth_xmit(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  %7 = alloca %struct.tso_t, align 4
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 9
  %10 = load i16, ptr %9, align 4
  %11 = zext i16 %10 to i32
  %12 = getelementptr i8, ptr %1, i32 2172
  %13 = getelementptr %struct.tx_queue, ptr %12, i32 %11
  %14 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 87
  %15 = load ptr, ptr %14, align 64
  %16 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.skb_shared_info, ptr %17, i32 0, i32 2
  %19 = load i8, ptr %18, align 2
  %20 = zext i8 %19 to i32
  %21 = icmp eq i8 %19, 0
  br i1 %21, label %43, label %22

22:                                               ; preds = %32, %2
  %23 = phi i32 [ %33, %32 ], [ 0, %2 ]
  %24 = getelementptr %struct.skb_shared_info, ptr %17, i32 0, i32 12, i32 %23, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = icmp ult i32 %25, 9
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = getelementptr %struct.skb_shared_info, ptr %17, i32 0, i32 12, i32 %23, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, 7
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27, %22
  %33 = add nuw nsw i32 %23, 1
  %34 = icmp eq i32 %33, %20
  br i1 %34, label %43, label %22

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %37 = load i32, ptr %36, align 4
  %38 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %37) #20
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %35
  %41 = load ptr, ptr %16, align 4
  br label %43

42:                                               ; preds = %35
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.45, ptr noundef %1, ptr noundef nonnull @.str.46) #21
  br label %429

43:                                               ; preds = %40, %32, %2
  %44 = phi ptr [ %41, %40 ], [ %17, %2 ], [ %17, %32 ]
  %45 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %46 = load i32, ptr %45, align 8
  %47 = getelementptr inbounds %struct.skb_shared_info, ptr %44, i32 0, i32 4
  %48 = load i16, ptr %47, align 4
  %49 = icmp eq i16 %48, 0
  %50 = load i32, ptr %13, align 4
  %51 = mul i32 %50, -80
  %52 = add i32 %51, -764
  %53 = getelementptr i8, ptr %13, i32 %52
  br i1 %49, label %249, label %54

54:                                               ; preds = %43
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %7) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %7, i8 0, i32 20, i1 false) #20, !annotation !15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8)
  store i32 0, ptr %8, align 4
  %55 = getelementptr inbounds %struct.tx_queue, ptr %13, i32 0, i32 2
  %56 = load i32, ptr %55, align 4
  %57 = tail call i32 @tso_count_descs(ptr noundef %0) #20
  %58 = add i32 %57, %56
  %59 = getelementptr inbounds %struct.tx_queue, ptr %13, i32 0, i32 1
  %60 = load i32, ptr %59, align 4
  %61 = icmp slt i32 %58, %60
  br i1 %61, label %62, label %247

62:                                               ; preds = %54
  %63 = getelementptr inbounds %struct.tx_queue, ptr %13, i32 0, i32 9
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.tx_queue, ptr %13, i32 0, i32 3
  %66 = load i32, ptr %65, align 4
  %67 = getelementptr %struct.tx_desc, ptr %64, i32 %66
  %68 = call i32 @tso_start(ptr noundef %0, ptr noundef nonnull %7) #20
  %69 = load i32, ptr %45, align 8
  %70 = sub i32 %69, %68
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %213

72:                                               ; preds = %62
  %73 = getelementptr inbounds %struct.tx_queue, ptr %13, i32 0, i32 7
  %74 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %75 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %76 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %77 = getelementptr inbounds %struct.tx_queue, ptr %13, i32 0, i32 8
  %78 = getelementptr inbounds %struct.tso_t, ptr %7, i32 0, i32 1
  %79 = getelementptr inbounds %struct.tso_t, ptr %7, i32 0, i32 2
  %80 = getelementptr inbounds %struct.tx_queue, ptr %13, i32 0, i32 10
  %81 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 111, i32 1
  br label %85

82:                                               ; preds = %205, %116
  %83 = phi i32 [ %140, %116 ], [ %208, %205 ]
  %84 = icmp sgt i32 %94, 0
  br i1 %84, label %85, label %213

85:                                               ; preds = %82, %72
  %86 = phi i32 [ %70, %72 ], [ %94, %82 ]
  %87 = phi i32 [ 0, %72 ], [ %83, %82 ]
  %88 = icmp eq i32 %87, 0
  %89 = load ptr, ptr %16, align 4
  %90 = getelementptr inbounds %struct.skb_shared_info, ptr %89, i32 0, i32 4
  %91 = load i16, ptr %90, align 4
  %92 = zext i16 %91 to i32
  %93 = call i32 @llvm.smin.i32(i32 %86, i32 %92) #20
  %94 = sub nsw i32 %86, %93
  %95 = load ptr, ptr %73, align 4
  %96 = load i32, ptr %65, align 4
  %97 = shl i32 %96, 8
  %98 = getelementptr i8, ptr %95, i32 %97
  %99 = icmp eq i32 %94, 0
  call void @tso_build_hdr(ptr noundef %0, ptr noundef %98, ptr noundef nonnull %7, i32 noundef %93, i1 noundef zeroext %99) #20
  %100 = load i32, ptr %13, align 4
  %101 = mul i32 %100, -80
  %102 = add i32 %101, -764
  %103 = getelementptr i8, ptr %13, i32 %102
  %104 = load ptr, ptr %74, align 8
  %105 = load i16, ptr %75, align 2
  %106 = zext i16 %105 to i32
  %107 = getelementptr i8, ptr %104, i32 %106
  %108 = load ptr, ptr %76, align 4
  %109 = getelementptr inbounds %struct.tcphdr, ptr %107, i32 0, i32 4
  %110 = load i16, ptr %109, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  store i32 0, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #20
  %111 = load i32, ptr %65, align 4
  %112 = load ptr, ptr %63, align 4
  %113 = call fastcc i32 @skb_tx_csum(ptr noundef %103, ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %5, i32 noundef %93) #20
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %85
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 791, i32 noundef 9, ptr noundef nonnull @.str.47) #20
  br label %116

116:                                              ; preds = %115, %85
  %117 = getelementptr %struct.tx_desc, ptr %112, i32 %111
  %118 = lshr i16 %110, 2
  %119 = and i16 %118, 60
  %120 = ptrtoint ptr %107 to i32
  %121 = ptrtoint ptr %108 to i32
  %122 = sub i32 %120, %121
  %123 = getelementptr %struct.tx_desc, ptr %112, i32 %111, i32 1
  store i16 0, ptr %123, align 4
  %124 = trunc i32 %122 to i16
  %125 = add i16 %119, %124
  %126 = getelementptr %struct.tx_desc, ptr %112, i32 %111, i32 2
  store i16 %125, ptr %126, align 2
  %127 = load i32, ptr %77, align 4
  %128 = load i32, ptr %65, align 4
  %129 = shl i32 %128, 8
  %130 = add i32 %129, %127
  %131 = getelementptr %struct.tx_desc, ptr %112, i32 %111, i32 3
  store i32 %130, ptr %131, align 4
  %132 = load i32, ptr %5, align 4
  %133 = or i32 %132, -2141192192
  %134 = select i1 %88, ptr %8, ptr %117
  store i32 %133, ptr %134, align 4
  %135 = load i32, ptr %65, align 4
  %136 = add i32 %135, 1
  %137 = load i32, ptr %59, align 4
  %138 = icmp eq i32 %136, %137
  %139 = select i1 %138, i32 0, i32 %136
  store i32 %139, ptr %65, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  %140 = add i32 %87, 1
  %141 = icmp sgt i32 %93, 0
  br i1 %141, label %142, label %82

142:                                              ; preds = %116
  %143 = select i1 %99, i32 -2137522176, i32 -2145910784
  br label %144

144:                                              ; preds = %210, %142
  %145 = phi i32 [ %137, %142 ], [ %212, %210 ]
  %146 = phi i32 [ %139, %142 ], [ %211, %210 ]
  %147 = phi i32 [ %140, %142 ], [ %208, %210 ]
  %148 = phi i32 [ %93, %142 ], [ %207, %210 ]
  %149 = load i32, ptr %78, align 4
  %150 = call i32 @llvm.smin.i32(i32 %149, i32 %148) #20
  %151 = load ptr, ptr %79, align 4
  %152 = icmp sgt i32 %148, %149
  %153 = add i32 %146, 1
  %154 = icmp eq i32 %153, %145
  %155 = select i1 %154, i32 0, i32 %153
  store i32 %155, ptr %65, align 4
  %156 = load ptr, ptr %63, align 4
  %157 = getelementptr %struct.tx_desc, ptr %156, i32 %146
  %158 = load ptr, ptr %80, align 4
  %159 = getelementptr i8, ptr %158, i32 %146
  store i8 0, ptr %159, align 1
  %160 = getelementptr %struct.tx_desc, ptr %156, i32 %146, i32 1
  store i16 0, ptr %160, align 4
  %161 = trunc i32 %150 to i16
  %162 = getelementptr %struct.tx_desc, ptr %156, i32 %146, i32 2
  store i16 %161, ptr %162, align 2
  %163 = icmp sgt i32 %150, 8
  %164 = ptrtoint ptr %151 to i32
  %165 = and i32 %164, 7
  %166 = icmp eq i32 %165, 0
  %167 = or i1 %163, %166
  br i1 %167, label %175, label %168

168:                                              ; preds = %144
  %169 = load ptr, ptr %73, align 4
  %170 = shl i32 %146, 8
  %171 = getelementptr i8, ptr %169, i32 %170
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %171, ptr align 1 %151, i32 %150, i1 false) #20
  %172 = load i32, ptr %77, align 4
  %173 = add i32 %172, %170
  %174 = getelementptr %struct.tx_desc, ptr %156, i32 %146, i32 3
  store i32 %173, ptr %174, align 4
  br label %205

175:                                              ; preds = %144
  %176 = load ptr, ptr %80, align 4
  %177 = getelementptr i8, ptr %176, i32 %146
  store i8 0, ptr %177, align 1
  %178 = load ptr, ptr %81, align 4
  %179 = call zeroext i1 @is_vmalloc_addr(ptr noundef %151) #20
  %180 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %181 = xor i1 %180, true
  %182 = select i1 %179, i1 %181, i1 false
  br i1 %182, label %183, label %192, !prof !27

183:                                              ; preds = %175
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %184 = call ptr @dev_driver_string(ptr noundef %178) #20
  %185 = getelementptr inbounds %struct.device, ptr %178, i32 0, i32 3
  %186 = load ptr, ptr %185, align 4
  %187 = icmp eq ptr %186, null
  br i1 %187, label %188, label %190

188:                                              ; preds = %183
  %189 = load ptr, ptr %178, align 4
  br label %190

190:                                              ; preds = %188, %183
  %191 = phi ptr [ %189, %188 ], [ %186, %183 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.36, ptr noundef %184, ptr noundef %191) #20
  br label %192

192:                                              ; preds = %190, %175
  br i1 %179, label %193, label %195

193:                                              ; preds = %192
  %194 = getelementptr %struct.tx_desc, ptr %156, i32 %146, i32 3
  store i32 -1, ptr %194, align 4
  br label %204

195:                                              ; preds = %192
  %196 = load ptr, ptr @mem_map, align 4
  %197 = add i32 %164, 1073741824
  %198 = lshr i32 %197, 12
  %199 = getelementptr %struct.page, ptr %196, i32 %198
  %200 = and i32 %164, 4095
  %201 = call i32 @dma_map_page_attrs(ptr noundef %178, ptr noundef %199, i32 noundef %200, i32 noundef %150, i32 noundef 1, i32 noundef 0) #20
  %202 = getelementptr %struct.tx_desc, ptr %156, i32 %146, i32 3
  store i32 %201, ptr %202, align 4
  %203 = icmp eq i32 %201, -1
  br i1 %203, label %204, label %205

204:                                              ; preds = %195, %193
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 756, i32 noundef 9, ptr noundef nonnull @.str.49) #20
  br label %247

205:                                              ; preds = %195, %168
  %206 = select i1 %152, i32 -2147483648, i32 %143
  store i32 %206, ptr %157, align 4
  %207 = sub i32 %148, %150
  call void @tso_build_data(ptr noundef %0, ptr noundef nonnull %7, i32 noundef %150) #20
  %208 = add i32 %147, 1
  %209 = icmp sgt i32 %207, 0
  br i1 %209, label %210, label %82

210:                                              ; preds = %205
  %211 = load i32, ptr %65, align 4
  %212 = load i32, ptr %59, align 4
  br label %144

213:                                              ; preds = %82, %62
  %214 = phi i32 [ 0, %62 ], [ %83, %82 ]
  %215 = getelementptr inbounds %struct.tx_queue, ptr %13, i32 0, i32 13
  %216 = getelementptr inbounds %struct.tx_queue, ptr %13, i32 0, i32 13, i32 0, i32 0, i32 1
  %217 = load ptr, ptr %216, align 4
  store volatile ptr %215, ptr %0, align 8
  %218 = getelementptr inbounds %struct.anon.49, ptr %0, i32 0, i32 1
  store volatile ptr %217, ptr %218, align 4
  store volatile ptr %0, ptr %216, align 4
  store volatile ptr %0, ptr %217, align 4
  %219 = getelementptr inbounds %struct.tx_queue, ptr %13, i32 0, i32 13, i32 1
  %220 = load i32, ptr %219, align 4
  %221 = add i32 %220, 1
  store volatile i32 %221, ptr %219, align 4
  %222 = load ptr, ptr %16, align 4
  %223 = getelementptr inbounds %struct.skb_shared_info, ptr %222, i32 0, i32 3
  %224 = load i8, ptr %223, align 1
  %225 = and i8 %224, 2
  %226 = icmp eq i8 %225, 0
  br i1 %226, label %228, label %227

227:                                              ; preds = %213
  call void @skb_tstamp_tx(ptr noundef %0, ptr noundef null) #20
  br label %228

228:                                              ; preds = %227, %213
  call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !43
  call void @arm_heavy_mb() #20
  %229 = load i32, ptr %8, align 4
  store i32 %229, ptr %67, align 4
  %230 = load i32, ptr %13, align 4
  %231 = shl nuw i32 1, %230
  %232 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %53, i32 0, i32 13
  %233 = load i8, ptr %232, align 1
  %234 = trunc i32 %231 to i8
  %235 = xor i8 %234, -1
  %236 = and i8 %233, %235
  store i8 %236, ptr %232, align 1
  call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !44
  call void @arm_heavy_mb() #20
  %237 = load i32, ptr %13, align 4
  %238 = mul i32 %237, -80
  %239 = add i32 %238, -764
  %240 = getelementptr i8, ptr %13, i32 %239
  %241 = shl nuw i32 1, %237
  call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !24
  call void @arm_heavy_mb() #20
  %242 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %240, i32 0, i32 1
  %243 = load ptr, ptr %242, align 4
  %244 = getelementptr i8, ptr %243, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %244, i32 %241) #20, !srcloc !9
  %245 = load i32, ptr %55, align 4
  %246 = add i32 %245, %214
  store i32 %246, ptr %55, align 4
  br label %247

247:                                              ; preds = %228, %204, %54
  %248 = phi i32 [ 0, %228 ], [ -16, %54 ], [ -12, %204 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8)
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %7) #20
  br label %408

249:                                              ; preds = %43
  %250 = getelementptr inbounds %struct.skb_shared_info, ptr %44, i32 0, i32 2
  %251 = load i8, ptr %250, align 2
  %252 = zext i8 %251 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #20
  store i32 0, ptr %3, align 4
  store i16 0, ptr %4, align 2
  %253 = getelementptr inbounds %struct.tx_queue, ptr %13, i32 0, i32 1
  %254 = load i32, ptr %253, align 4
  %255 = getelementptr inbounds %struct.tx_queue, ptr %13, i32 0, i32 2
  %256 = load i32, ptr %255, align 4
  %257 = sub i32 %254, %256
  %258 = icmp ult i32 %257, 18
  br i1 %258, label %259, label %263

259:                                              ; preds = %249
  %260 = tail call i32 @net_ratelimit() #20
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %406, label %262

262:                                              ; preds = %259
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.50) #21
  br label %406

263:                                              ; preds = %249
  %264 = call fastcc i32 @skb_tx_csum(ptr noundef %53, ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %3, i32 noundef %46) #20
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %266, label %406

266:                                              ; preds = %263
  %267 = load i32, ptr %3, align 4
  %268 = or i32 %267, -2141192192
  %269 = getelementptr inbounds %struct.tx_queue, ptr %13, i32 0, i32 3
  %270 = load i32, ptr %269, align 4
  %271 = add i32 %270, 1
  %272 = load i32, ptr %253, align 4
  %273 = icmp eq i32 %271, %272
  %274 = select i1 %273, i32 0, i32 %271
  store i32 %274, ptr %269, align 4
  %275 = getelementptr inbounds %struct.tx_queue, ptr %13, i32 0, i32 9
  %276 = load ptr, ptr %275, align 4
  %277 = getelementptr %struct.tx_desc, ptr %276, i32 %270
  %278 = getelementptr inbounds %struct.tx_queue, ptr %13, i32 0, i32 10
  %279 = load ptr, ptr %278, align 4
  %280 = getelementptr i8, ptr %279, i32 %270
  store i8 0, ptr %280, align 1
  %281 = icmp eq i8 %251, 0
  br i1 %281, label %333, label %282

282:                                              ; preds = %266
  %283 = load ptr, ptr %16, align 4
  %284 = getelementptr inbounds %struct.skb_shared_info, ptr %283, i32 0, i32 2
  %285 = load i8, ptr %284, align 2
  %286 = zext i8 %285 to i32
  %287 = icmp eq i8 %285, 0
  br i1 %287, label %328, label %288

288:                                              ; preds = %282
  %289 = load i32, ptr %13, align 4
  %290 = mul i32 %289, -80
  %291 = add i32 %290, -764
  %292 = getelementptr i8, ptr %13, i32 %291
  %293 = add nsw i32 %286, -1
  %294 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %292, i32 0, i32 3
  br label %295

295:                                              ; preds = %326, %288
  %296 = phi ptr [ %283, %288 ], [ %327, %326 ]
  %297 = phi i32 [ 0, %288 ], [ %324, %326 ]
  %298 = getelementptr %struct.skb_shared_info, ptr %296, i32 0, i32 12, i32 %297
  %299 = load i32, ptr %269, align 4
  %300 = add i32 %299, 1
  %301 = load i32, ptr %253, align 4
  %302 = icmp eq i32 %300, %301
  %303 = select i1 %302, i32 0, i32 %300
  store i32 %303, ptr %269, align 4
  %304 = load ptr, ptr %275, align 4
  %305 = getelementptr %struct.tx_desc, ptr %304, i32 %299
  %306 = load ptr, ptr %278, align 4
  %307 = getelementptr i8, ptr %306, i32 %299
  store i8 1, ptr %307, align 1
  %308 = icmp eq i32 %297, %293
  %309 = select i1 %308, i32 -2137522176, i32 -2147483648
  store i32 %309, ptr %305, align 4
  %310 = getelementptr %struct.tx_desc, ptr %304, i32 %299, i32 1
  store i16 0, ptr %310, align 4
  %311 = getelementptr %struct.skb_shared_info, ptr %296, i32 0, i32 12, i32 %297, i32 1
  %312 = load i32, ptr %311, align 4
  %313 = trunc i32 %312 to i16
  %314 = getelementptr %struct.tx_desc, ptr %304, i32 %299, i32 2
  store i16 %313, ptr %314, align 2
  %315 = load ptr, ptr %294, align 4
  %316 = getelementptr inbounds %struct.net_device, ptr %315, i32 0, i32 111, i32 1
  %317 = load ptr, ptr %316, align 4
  %318 = and i32 %312, 65535
  %319 = load ptr, ptr %298, align 4
  %320 = getelementptr %struct.skb_shared_info, ptr %296, i32 0, i32 12, i32 %297, i32 2
  %321 = load i32, ptr %320, align 4
  %322 = tail call i32 @dma_map_page_attrs(ptr noundef %317, ptr noundef %319, i32 noundef %321, i32 noundef %318, i32 noundef 1, i32 noundef 0) #20
  %323 = getelementptr %struct.tx_desc, ptr %304, i32 %299, i32 3
  store i32 %322, ptr %323, align 4
  %324 = add nuw nsw i32 %297, 1
  %325 = icmp eq i32 %324, %286
  br i1 %325, label %328, label %326

326:                                              ; preds = %295
  %327 = load ptr, ptr %16, align 4
  br label %295

328:                                              ; preds = %295, %282
  %329 = load i32, ptr %45, align 8
  %330 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %331 = load i32, ptr %330, align 4
  %332 = sub i32 %329, %331
  br label %336

333:                                              ; preds = %266
  %334 = or i32 %267, -2131230720
  store i32 %334, ptr %3, align 4
  %335 = load i32, ptr %45, align 8
  br label %336

336:                                              ; preds = %333, %328
  %337 = phi i32 [ %268, %328 ], [ %334, %333 ]
  %338 = phi i32 [ %332, %328 ], [ %335, %333 ]
  %339 = load i16, ptr %4, align 2
  %340 = getelementptr %struct.tx_desc, ptr %276, i32 %270, i32 1
  store i16 %339, ptr %340, align 4
  %341 = trunc i32 %338 to i16
  %342 = getelementptr %struct.tx_desc, ptr %276, i32 %270, i32 2
  store i16 %341, ptr %342, align 2
  %343 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %53, i32 0, i32 3
  %344 = load ptr, ptr %343, align 4
  %345 = getelementptr inbounds %struct.net_device, ptr %344, i32 0, i32 111, i32 1
  %346 = load ptr, ptr %345, align 4
  %347 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %348 = load ptr, ptr %347, align 4
  %349 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %348) #20
  %350 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %351 = xor i1 %350, true
  %352 = select i1 %349, i1 %351, i1 false
  br i1 %352, label %353, label %362, !prof !27

353:                                              ; preds = %336
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %354 = tail call ptr @dev_driver_string(ptr noundef %346) #20
  %355 = getelementptr inbounds %struct.device, ptr %346, i32 0, i32 3
  %356 = load ptr, ptr %355, align 4
  %357 = icmp eq ptr %356, null
  br i1 %357, label %358, label %360

358:                                              ; preds = %353
  %359 = load ptr, ptr %346, align 4
  br label %360

360:                                              ; preds = %358, %353
  %361 = phi ptr [ %359, %358 ], [ %356, %353 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.36, ptr noundef %354, ptr noundef %361) #20
  br label %362

362:                                              ; preds = %360, %336
  br i1 %349, label %371, label %363

363:                                              ; preds = %362
  %364 = load ptr, ptr @mem_map, align 4
  %365 = ptrtoint ptr %348 to i32
  %366 = add i32 %365, 1073741824
  %367 = lshr i32 %366, 12
  %368 = getelementptr %struct.page, ptr %364, i32 %367
  %369 = and i32 %365, 4095
  %370 = tail call i32 @dma_map_page_attrs(ptr noundef %346, ptr noundef %368, i32 noundef %369, i32 noundef %338, i32 noundef 1, i32 noundef 0) #20
  br label %371

371:                                              ; preds = %363, %362
  %372 = phi i32 [ %370, %363 ], [ -1, %362 ]
  %373 = getelementptr %struct.tx_desc, ptr %276, i32 %270, i32 3
  store i32 %372, ptr %373, align 4
  %374 = getelementptr inbounds %struct.tx_queue, ptr %13, i32 0, i32 13
  %375 = getelementptr inbounds %struct.tx_queue, ptr %13, i32 0, i32 13, i32 0, i32 0, i32 1
  %376 = load ptr, ptr %375, align 4
  store volatile ptr %374, ptr %0, align 8
  %377 = getelementptr inbounds %struct.anon.49, ptr %0, i32 0, i32 1
  store volatile ptr %376, ptr %377, align 4
  store volatile ptr %0, ptr %375, align 4
  store volatile ptr %0, ptr %376, align 4
  %378 = getelementptr inbounds %struct.tx_queue, ptr %13, i32 0, i32 13, i32 1
  %379 = load i32, ptr %378, align 4
  %380 = add i32 %379, 1
  store volatile i32 %380, ptr %378, align 4
  %381 = load ptr, ptr %16, align 4
  %382 = getelementptr inbounds %struct.skb_shared_info, ptr %381, i32 0, i32 3
  %383 = load i8, ptr %382, align 1
  %384 = and i8 %383, 2
  %385 = icmp eq i8 %384, 0
  br i1 %385, label %387, label %386

386:                                              ; preds = %371
  tail call void @skb_tstamp_tx(ptr noundef %0, ptr noundef null) #20
  br label %387

387:                                              ; preds = %386, %371
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !45
  tail call void @arm_heavy_mb() #20
  store i32 %337, ptr %277, align 4
  %388 = load i32, ptr %13, align 4
  %389 = shl nuw i32 1, %388
  %390 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %53, i32 0, i32 13
  %391 = load i8, ptr %390, align 1
  %392 = trunc i32 %389 to i8
  %393 = xor i8 %392, -1
  %394 = and i8 %391, %393
  store i8 %394, ptr %390, align 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !46
  tail call void @arm_heavy_mb() #20
  %395 = load i32, ptr %13, align 4
  %396 = mul i32 %395, -80
  %397 = add i32 %396, -764
  %398 = getelementptr i8, ptr %13, i32 %397
  %399 = shl nuw i32 1, %395
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !24
  tail call void @arm_heavy_mb() #20
  %400 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %398, i32 0, i32 1
  %401 = load ptr, ptr %400, align 4
  %402 = getelementptr i8, ptr %401, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %402, i32 %399) #20, !srcloc !9
  %403 = add nuw nsw i32 %252, 1
  %404 = load i32, ptr %255, align 4
  %405 = add i32 %403, %404
  store i32 %405, ptr %255, align 4
  br label %406

406:                                              ; preds = %387, %263, %262, %259
  %407 = phi i32 [ 0, %387 ], [ -16, %262 ], [ -16, %259 ], [ %264, %263 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #20
  br label %408

408:                                              ; preds = %406, %247
  %409 = phi i32 [ %248, %247 ], [ %407, %406 ]
  %410 = icmp eq i32 %409, 0
  br i1 %410, label %411, label %425

411:                                              ; preds = %408
  %412 = getelementptr %struct.tx_queue, ptr %12, i32 %11, i32 15
  %413 = load i32, ptr %412, align 4
  %414 = add i32 %413, %46
  store i32 %414, ptr %412, align 4
  %415 = getelementptr %struct.tx_queue, ptr %12, i32 %11, i32 14
  %416 = load i32, ptr %415, align 4
  %417 = add i32 %416, 1
  store i32 %417, ptr %415, align 4
  %418 = getelementptr %struct.tx_queue, ptr %12, i32 %11, i32 2
  %419 = load i32, ptr %418, align 4
  %420 = getelementptr %struct.tx_queue, ptr %12, i32 %11, i32 5
  %421 = load i32, ptr %420, align 4
  %422 = icmp slt i32 %419, %421
  br i1 %422, label %429, label %423

423:                                              ; preds = %411
  %424 = getelementptr %struct.netdev_queue, ptr %15, i32 %11, i32 12
  call void @_set_bit(i32 noundef 0, ptr noundef %424) #20
  br label %429

425:                                              ; preds = %408
  %426 = getelementptr %struct.tx_queue, ptr %12, i32 %11, i32 16
  %427 = load i32, ptr %426, align 4
  %428 = add i32 %427, 1
  store i32 %428, ptr %426, align 4
  call void @__dev_kfree_skb_any(ptr noundef %0, i32 noundef 1) #20
  br label %429

429:                                              ; preds = %425, %423, %411, %42
  %430 = phi i32 [ 16, %42 ], [ 0, %411 ], [ 0, %423 ], [ 0, %425 ]
  ret i32 %430
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mv643xx_eth_set_rx_mode(ptr noundef %0) #2 {
  tail call fastcc void @mv643xx_eth_program_unicast_filter(ptr noundef %0)
  %2 = getelementptr i8, ptr %0, i32 1408
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 14
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 768
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %107

7:                                                ; preds = %1
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 2848, i32 noundef 512) #24
  %10 = icmp eq ptr %9, null
  br i1 %10, label %107, label %11

11:                                               ; preds = %7
  %12 = getelementptr i32, ptr %9, i32 64
  %13 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 61
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %13
  br i1 %15, label %16, label %18

16:                                               ; preds = %70, %11
  %17 = getelementptr i8, ptr %0, i32 1416
  br label %83

18:                                               ; preds = %70, %11
  %19 = phi ptr [ %81, %70 ], [ %14, %11 ]
  %20 = getelementptr inbounds %struct.netdev_hw_addr, ptr %19, i32 0, i32 2
  %21 = tail call i32 @bcmp(ptr noundef dereferenceable(5) %20, ptr noundef nonnull dereferenceable(5) @.str.51, i32 5) #20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = getelementptr %struct.netdev_hw_addr, ptr %19, i32 0, i32 2, i32 5
  %25 = load i8, ptr %24, align 1
  br label %70

26:                                               ; preds = %26, %18
  %27 = phi i32 [ %66, %26 ], [ 0, %18 ]
  %28 = phi i32 [ %65, %26 ], [ 0, %18 ]
  %29 = getelementptr i8, ptr %20, i32 %27
  %30 = load i8, ptr %29, align 1
  %31 = zext i8 %30 to i32
  %32 = xor i32 %28, %31
  %33 = shl i32 %32, 8
  %34 = and i32 %32, 128
  %35 = icmp eq i32 %34, 0
  %36 = select i1 %35, i32 0, i32 33664
  %37 = xor i32 %36, %33
  %38 = and i32 %32, 64
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %39, i32 0, i32 16832
  %41 = xor i32 %37, %40
  %42 = and i32 %32, 32
  %43 = icmp eq i32 %42, 0
  %44 = select i1 %43, i32 0, i32 8416
  %45 = and i32 %32, 16
  %46 = icmp eq i32 %45, 0
  %47 = select i1 %46, i32 0, i32 4208
  %48 = and i32 %32, 8
  %49 = icmp eq i32 %48, 0
  %50 = select i1 %49, i32 0, i32 2104
  %51 = and i32 %32, 4
  %52 = icmp eq i32 %51, 0
  %53 = select i1 %52, i32 0, i32 1052
  %54 = and i32 %37, 512
  %55 = icmp eq i32 %54, 0
  %56 = select i1 %55, i32 0, i32 526
  %57 = and i32 %41, 256
  %58 = icmp eq i32 %57, 0
  %59 = select i1 %58, i32 0, i32 263
  %60 = xor i32 %47, %44
  %61 = xor i32 %60, %50
  %62 = xor i32 %61, %53
  %63 = xor i32 %62, %41
  %64 = xor i32 %63, %56
  %65 = xor i32 %64, %59
  %66 = add nuw nsw i32 %27, 1
  %67 = icmp eq i32 %66, 6
  br i1 %67, label %68, label %26

68:                                               ; preds = %26
  %69 = trunc i32 %65 to i8
  br label %70

70:                                               ; preds = %68, %23
  %71 = phi ptr [ %9, %23 ], [ %12, %68 ]
  %72 = phi i8 [ %25, %23 ], [ %69, %68 ]
  %73 = zext i8 %72 to i32
  %74 = shl nuw nsw i32 %73, 3
  %75 = and i32 %74, 24
  %76 = shl nuw nsw i32 1, %75
  %77 = lshr i32 %73, 2
  %78 = getelementptr i32, ptr %71, i32 %77
  %79 = load i32, ptr %78, align 4
  %80 = or i32 %76, %79
  store i32 %80, ptr %78, align 4
  %81 = load ptr, ptr %19, align 4
  %82 = icmp eq ptr %81, %13
  br i1 %82, label %16, label %18

83:                                               ; preds = %83, %16
  %84 = phi i32 [ 0, %16 ], [ %104, %83 ]
  %85 = load i32, ptr %17, align 8
  %86 = shl i32 %85, 10
  %87 = shl i32 %84, 2
  %88 = add nuw nsw i32 %87, 5120
  %89 = add i32 %88, %86
  %90 = getelementptr i32, ptr %9, i32 %84
  %91 = load i32, ptr %90, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !26
  tail call void @arm_heavy_mb() #20
  %92 = load ptr, ptr %2, align 8
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr i8, ptr %93, i32 %89
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %94, i32 %91) #20, !srcloc !9
  %95 = load i32, ptr %17, align 8
  %96 = shl i32 %95, 10
  %97 = add nuw nsw i32 %87, 5376
  %98 = add i32 %97, %96
  %99 = getelementptr i32, ptr %12, i32 %84
  %100 = load i32, ptr %99, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !26
  tail call void @arm_heavy_mb() #20
  %101 = load ptr, ptr %2, align 8
  %102 = load ptr, ptr %101, align 4
  %103 = getelementptr i8, ptr %102, i32 %98
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %103, i32 %100) #20, !srcloc !9
  %104 = add nuw nsw i32 %84, 1
  %105 = icmp eq i32 %104, 64
  br i1 %105, label %106, label %83

106:                                              ; preds = %83
  tail call void @kfree(ptr noundef nonnull %9) #20
  br label %128

107:                                              ; preds = %7, %1
  %108 = getelementptr i8, ptr %0, i32 1416
  br label %109

109:                                              ; preds = %109, %107
  %110 = phi i32 [ 0, %107 ], [ %126, %109 ]
  %111 = load i32, ptr %108, align 8
  %112 = shl i32 %111, 10
  %113 = shl i32 %110, 2
  %114 = add nuw nsw i32 %113, 5120
  %115 = add i32 %114, %112
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !26
  tail call void @arm_heavy_mb() #20
  %116 = load ptr, ptr %2, align 8
  %117 = load ptr, ptr %116, align 4
  %118 = getelementptr i8, ptr %117, i32 %115
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %118, i32 16843009) #20, !srcloc !9
  %119 = load i32, ptr %108, align 8
  %120 = shl i32 %119, 10
  %121 = add nuw nsw i32 %113, 5376
  %122 = add i32 %121, %120
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !26
  tail call void @arm_heavy_mb() #20
  %123 = load ptr, ptr %2, align 8
  %124 = load ptr, ptr %123, align 4
  %125 = getelementptr i8, ptr %124, i32 %122
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %125, i32 16843009) #20, !srcloc !9
  %126 = add nuw nsw i32 %110, 1
  %127 = icmp eq i32 %126, 64
  br i1 %127, label %128, label %109

128:                                              ; preds = %109, %106
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv643xx_eth_set_mac_address(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.sockaddr, ptr %1, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %19

7:                                                ; preds = %2
  %8 = getelementptr %struct.sockaddr, ptr %1, i32 0, i32 1, i32 4
  %9 = load i16, ptr %8, align 2
  %10 = zext i16 %9 to i32
  %11 = or i32 %4, %10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %7
  tail call void @dev_addr_mod(ptr noundef %0, i32 noundef 0, ptr noundef %3, i32 noundef 6) #20
  %14 = tail call ptr @llvm.thread.pointer() #20
  %15 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %16 = load volatile i32, ptr %15, align 4
  %17 = add i32 %16, 512
  store volatile i32 %17, ptr %15, align 4
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !47
  %18 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 58
  tail call void @_raw_spin_lock(ptr noundef %18) #20
  tail call fastcc void @mv643xx_eth_program_unicast_filter(ptr noundef %0)
  tail call void @_raw_spin_unlock_bh(ptr noundef %18) #20
  br label %19

19:                                               ; preds = %13, %7, %2
  %20 = phi i32 [ 0, %13 ], [ -99, %7 ], [ -99, %2 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv643xx_eth_ioctl(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %46, label %7

7:                                                ; preds = %3
  %8 = tail call i32 @phy_mii_ioctl(ptr noundef nonnull %5, ptr noundef %1, i32 noundef %2) #20
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %46

10:                                               ; preds = %7
  %11 = getelementptr i8, ptr %0, i32 1412
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 60
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #20, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #20, !srcloc !23
  %15 = load ptr, ptr %4, align 8
  %16 = getelementptr inbounds %struct.phy_device, ptr %15, i32 0, i32 4
  %17 = load i16, ptr %16, align 8
  %18 = and i16 %17, 4096
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %10
  %21 = and i32 %14, -8207
  br label %42

22:                                               ; preds = %10
  %23 = or i32 %14, 8206
  %24 = getelementptr inbounds %struct.phy_device, ptr %15, i32 0, i32 8
  %25 = load i32, ptr %24, align 8
  switch i32 %25, label %31 [
    i32 1000, label %26
    i32 100, label %28
  ]

26:                                               ; preds = %22
  %27 = or i32 %14, 10493966
  br label %42

28:                                               ; preds = %22
  %29 = and i32 %23, -25165825
  %30 = or i32 %29, 16777216
  br label %33

31:                                               ; preds = %22
  %32 = and i32 %23, -25165825
  br label %33

33:                                               ; preds = %31, %28
  %34 = phi i32 [ %30, %28 ], [ %32, %31 ]
  %35 = getelementptr inbounds %struct.phy_device, ptr %15, i32 0, i32 9
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = or i32 %34, 2097152
  br label %42

40:                                               ; preds = %33
  %41 = and i32 %34, -2097153
  br label %42

42:                                               ; preds = %40, %38, %26, %20
  %43 = phi i32 [ %21, %20 ], [ %27, %26 ], [ %39, %38 ], [ %41, %40 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #20, !srcloc !24
  tail call void @arm_heavy_mb() #20
  %44 = load ptr, ptr %11, align 4
  %45 = getelementptr i8, ptr %44, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %43) #20, !srcloc !9
  br label %46

46:                                               ; preds = %42, %7, %3
  %47 = phi i32 [ -524, %3 ], [ 0, %42 ], [ %8, %7 ]
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv643xx_eth_change_mtu(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 1408
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 20
  store i32 %1, ptr %4, align 4
  %5 = getelementptr i8, ptr %0, i32 1420
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 20
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 43
  %10 = and i32 %9, -8
  %11 = getelementptr i8, ptr %0, i32 1828
  store i32 %10, ptr %11, align 4
  tail call fastcc void @tx_set_rate(ptr noundef %3)
  %12 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = tail call i32 @mv643xx_eth_stop(ptr noundef %0)
  %18 = tail call i32 @mv643xx_eth_open(ptr noundef %0)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.52) #21
  br label %21

21:                                               ; preds = %20, %16, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mv643xx_eth_tx_timeout(ptr noundef %0, i32 noundef %1) #2 {
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %0, ptr noundef nonnull @.str.53) #21
  %3 = getelementptr i8, ptr %0, i32 1584
  %4 = load ptr, ptr @system_wq, align 4
  %5 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %4, ptr noundef %3) #20
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tso_count_descs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tso_start(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tso_build_hdr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tso_build_data(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @skb_tx_csum(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, i32 noundef %4) unnamed_addr #2 {
  %6 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13
  %7 = load i16, ptr %6, align 8
  %8 = and i16 %7, 96
  %9 = icmp eq i16 %8, 96
  br i1 %9, label %10, label %56

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 16
  %12 = load i16, ptr %11, align 8
  switch i16 %12, label %13 [
    i16 129, label %14
    i16 8, label %14
  ]

13:                                               ; preds = %10
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/marvell/mv643xx_eth.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 680, 0\0A.popsection", ""() #20, !srcloc !48
  unreachable

14:                                               ; preds = %10, %10
  %15 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 18
  %18 = load i16, ptr %17, align 4
  %19 = zext i16 %18 to i32
  %20 = getelementptr i8, ptr %16, i32 %19
  %21 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %22 = load ptr, ptr %21, align 4
  %23 = ptrtoint ptr %20 to i32
  %24 = ptrtoint ptr %22 to i32
  %25 = sub i32 %23, %24
  %26 = add i32 %25, -14
  %27 = sub i32 %4, %25
  %28 = load ptr, ptr %0, align 8
  %29 = getelementptr inbounds %struct.mv643xx_eth_shared_private, ptr %28, i32 0, i32 4
  %30 = load i32, ptr %29, align 4
  %31 = icmp sle i32 %27, %30
  %32 = and i32 %26, -13
  %33 = icmp eq i32 %32, 0
  %34 = select i1 %31, i1 %33, i1 false
  br i1 %34, label %38, label %35, !prof !49

35:                                               ; preds = %14
  %36 = tail call i32 @skb_checksum_help(ptr noundef %1) #20
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %56, label %58

38:                                               ; preds = %14
  %39 = shl nuw nsw i32 %26, 13
  %40 = and i32 %39, 32768
  %41 = shl nuw nsw i32 %26, 6
  %42 = and i32 %41, 512
  %43 = or i32 %42, %40
  %44 = load i8, ptr %20, align 4
  %45 = and i8 %44, 15
  %46 = zext i8 %45 to i32
  %47 = shl nuw nsw i32 %46, 11
  %48 = or i32 %47, %43
  %49 = or i32 %48, 394240
  %50 = getelementptr inbounds %struct.iphdr, ptr %20, i32 0, i32 6
  %51 = load i8, ptr %50, align 1
  switch i8 %51, label %55 [
    i8 17, label %52
    i8 6, label %54
  ]

52:                                               ; preds = %38
  %53 = or i32 %48, 459776
  store i16 0, ptr %2, align 2
  br label %56

54:                                               ; preds = %38
  store i16 0, ptr %2, align 2
  br label %56

55:                                               ; preds = %38
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 714, i32 noundef 9, ptr noundef nonnull @.str.48) #20
  br label %56

56:                                               ; preds = %55, %54, %52, %35, %5
  %57 = phi i32 [ %53, %52 ], [ %49, %54 ], [ %49, %55 ], [ 10240, %35 ], [ 10240, %5 ]
  store i32 %57, ptr %3, align 4
  br label %58

58:                                               ; preds = %56, %35
  %59 = phi i32 [ 0, %56 ], [ %36, %35 ]
  ret i32 %59
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_checksum_help(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_tstamp_tx(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_mii_ioctl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #19

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #17 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #18 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #19 = { argmemonly nofree nounwind readonly willreturn }
attributes #20 = { nounwind }
attributes #21 = { cold nounwind }
attributes #22 = { nounwind readnone }
attributes #23 = { nounwind allocsize(0) }
attributes #24 = { nounwind allocsize(2) }

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
!8 = !{i64 2156622635}
!9 = !{i64 5031521}
!10 = !{i64 2156622993}
!11 = !{i64 2156623351}
!12 = !{i64 2156623788}
!13 = !{i64 2156624330}
!14 = !{i64 2156624715}
!15 = !{!"auto-init"}
!16 = !{i64 2156625063}
!17 = !{i64 5031939}
!18 = !{i64 2156625587}
!19 = !{i64 2156625787}
!20 = !{i64 2156626293}
!21 = !{i64 2156626495}
!22 = !{i64 2156627001}
!23 = !{i64 2156527120}
!24 = !{i64 2156527977}
!25 = !{i64 2156526617}
!26 = !{i64 2156527483}
!27 = !{!"branch_weights", i32 1, i32 2000}
!28 = !{i64 2156657651, i64 2156658159, i64 2156657688, i64 2156657744, i64 2156657778, i64 2156657802, i64 2156657843, i64 2156657864, i64 2156657892, i64 2156657926}
!29 = !{i64 1247625, i64 1247652}
!30 = !{i64 1248320, i64 1248347, i64 1248380, i64 1248401, i64 1248428, i64 1248454}
!31 = !{!"branch_weights", i32 2000, i32 1}
!32 = !{i32 0, i32 33}
!33 = !{i64 2149308691}
!34 = !{i64 2149304515}
!35 = !{i64 2149304590, i64 2149304617, i64 2149304664, i64 2149304686, i64 2149304714, i64 2149304734}
!36 = !{i64 2149331694}
!37 = !{i64 2156532090}
!38 = !{i64 2156616553, i64 2156617061, i64 2156616590, i64 2156616646, i64 2156616680, i64 2156616704, i64 2156616745, i64 2156616766, i64 2156616794, i64 2156616828}
!39 = !{i64 2148733456, i64 2148733736, i64 2148734070, i64 2148734404}
!40 = !{i64 2156613973, i64 2156614481, i64 2156614010, i64 2156614066, i64 2156614100, i64 2156614124, i64 2156614165, i64 2156614186, i64 2156614214, i64 2156614248}
!41 = !{i64 2156535699}
!42 = !{i64 2156535842}
!43 = !{i64 2156544558}
!44 = !{i64 2156544679}
!45 = !{i64 2156545262}
!46 = !{i64 2156545383}
!47 = !{i64 2148905770}
!48 = !{i64 2156537090, i64 2156537597, i64 2156537127, i64 2156537183, i64 2156537217, i64 2156537241, i64 2156537282, i64 2156537303, i64 2156537331, i64 2156537365}
!49 = !{!"branch_weights", i32 2000, i32 2002}
