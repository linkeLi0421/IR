; ModuleID = '/llk/IR/drivers/net/ethernet/socionext/sni_ave.c_pt.bc'
source_filename = "../drivers/net/ethernet/socionext/sni_ave.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.ave_soc_data = type { i8, [4 x ptr], [2 x ptr], ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.95, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.112, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.95 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.ref_tracker_dir = type {}
%struct.possible_net_t = type {}
%union.anon.112 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.ave_desc = type { ptr, i32, i32 }
%struct.netdev_queue = type { ptr, %struct.netdevice_tracker, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, [4 x i8], %struct.spinlock, i32, i32, i32, [48 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [52 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [24 x i8] }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.ave_private = type { ptr, i32, i32, i32, i32, i32, [4 x ptr], i32, [2 x ptr], i32, ptr, ptr, ptr, i32, i32, i32, %struct.ave_stats, %struct.ave_stats, ptr, %struct.napi_struct, %struct.napi_struct, %struct.ave_desc_info, %struct.ave_desc_info, i32, i32, i32, ptr }
%struct.ave_stats = type { %struct.u64_stats_sync, i64, i64, i64, i64, i64, i64 }
%struct.ave_desc_info = type { i32, i32, i32, i32, ptr }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.sk_buff = type { %union.anon.40, %union.anon.43, %union.anon.44, [48 x i8], %union.anon.45, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.47, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.40 = type { %struct.anon.41 }
%struct.anon.41 = type { ptr, ptr, %union.anon.42 }
%union.anon.42 = type { ptr }
%union.anon.43 = type { ptr }
%union.anon.44 = type { i64 }
%union.anon.45 = type { %struct.anon.46 }
%struct.anon.46 = type { i32, ptr }
%union.anon.47 = type { %struct.anon.48 }
%struct.anon.48 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.49, i32, i32, i32, i16, i16, %union.anon.51, %union.anon.52, %union.anon.53, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.49 = type { i32 }
%union.anon.51 = type { i32 }
%union.anon.52 = type { i32 }
%union.anon.53 = type { i16 }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.page = type { i32, %union.anon.1, %union.anon.89, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.89 = type { %struct.atomic_t }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_pauseparam = type { i32, i32, i32, i32 }

@__initcall__kmod_sni_ave__330_1987_ave_driver_init6 = internal global ptr @ave_driver_init, section ".initcall6.init", align 4
@ave_driver = internal global %struct.platform_driver { ptr @ave_probe, ptr @ave_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_ave_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ave_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_ave_driver_exit = internal global ptr @ave_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author331 = internal constant [65 x i8] c"sni_ave.author=Kunihiko Hayashi <hayashi.kunihiko@socionext.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description332 = internal constant [59 x i8] c"sni_ave.description=Socionext UniPhier AVE ethernet driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file333 = internal constant [52 x i8] c"sni_ave.file=drivers/net/ethernet/socionext/sni_ave\00", section ".modinfo", align 1
@__UNIQUE_ID_license334 = internal constant [23 x i8] c"sni_ave.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [4 x i8] c"ave\00", align 1
@of_ave_match = internal constant [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-pro4-ave4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ave_pro4_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-pxs2-ave4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ave_pxs2_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-ld11-ave4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ave_ld11_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-ld20-ave4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ave_ld20_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-pxs3-ave4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ave_pxs3_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-nx1-ave4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ave_nx1_data }, %struct.of_device_id zeroinitializer], align 4
@ave_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @ave_suspend, ptr @ave_resume, ptr @ave_suspend, ptr @ave_resume, ptr @ave_suspend, ptr @ave_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"drivers/net/ethernet/socionext/sni_ave.c\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"phy-mode not found\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"can't allocate ethernet device\0A\00", align 1
@ave_netdev_ops = internal constant %struct.net_device_ops { ptr @ave_init, ptr @ave_uninit, ptr @ave_open, ptr @ave_stop, ptr @ave_start_xmit, ptr null, ptr null, ptr null, ptr @ave_set_rx_mode, ptr @ave_set_mac_address, ptr null, ptr null, ptr @ave_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ave_get_stats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@ave_ethtool_ops = internal constant %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @ave_ethtool_get_drvinfo, ptr null, ptr null, ptr @ave_ethtool_get_wol, ptr @ave_ethtool_set_wol, ptr @ave_ethtool_get_msglevel, ptr @ave_ethtool_set_msglevel, ptr @phy_ethtool_nway_reset, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ave_ethtool_get_pauseparam, ptr @ave_ethtool_set_pauseparam, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @phy_ethtool_get_link_ksettings, ptr @phy_ethtool_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"Using random MAC address: %pM\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"socionext,syscon-phy-mode\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"can't get syscon-phy-mode property\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"can't map syscon-phy-mode\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"invalid phy-mode setting\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"uniphier-mdio\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"%s-%x\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"failed to register netdevice\0A\00", align 1
@.str.12 = private unnamed_addr constant [52 x i8] c"Socionext %c%c%c%c Ethernet IP %s (irq=%d, phy=%s)\0A\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"can't enable clock\0A\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"can't deassert reset\0A\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"mdio\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"mdio node not found\0A\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"failed to register mdiobus\0A\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"could not attach to PHY\0A\00", align 1
@.str.19 = private unnamed_addr constant [41 x i8] c"receive a packet exceeding frame buffer\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.20 = private unnamed_addr constant [27 x i8] c"can't allocate skb for Rx\0A\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"can't map skb for Rx\0A\00", align 1
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.22 = private unnamed_addr constant [28 x i8] c"include/linux/dma-mapping.h\00", align 1
@.str.23 = private unnamed_addr constant [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.24 = private unnamed_addr constant [23 x i8] c"can't stop descriptor\0A\00", align 1
@.str.25 = private unnamed_addr constant [26 x i8] c"can't suspend descriptor\0A\00", align 1
@v4multi_macadr = internal constant [6 x i8] c"\01\00\00\00\00\00", align 1
@v6multi_macadr = internal constant [6 x i8] c"3\00\00\00\00\00", align 1
@.str.26 = private unnamed_addr constant [32 x i8] c"failed to read (phy:%d reg:%x)\0A\00", align 1
@.str.27 = private unnamed_addr constant [33 x i8] c"failed to write (phy:%d reg:%x)\0A\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"v%u.%u\00", align 1
@.str.29 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"internal\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"mii\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"gmii\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"sgmii\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"tbi\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"rev-mii\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"rmii\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"rev-rmii\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"rgmii\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"rgmii-id\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"rgmii-rxid\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"rgmii-txid\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"rtbi\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"smii\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"xgmii\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"xlgmii\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"moca\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"qsgmii\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"trgmii\00", align 1
@.str.49 = private unnamed_addr constant [11 x i8] c"1000base-x\00", align 1
@.str.50 = private unnamed_addr constant [11 x i8] c"2500base-x\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"5gbase-r\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"rxaui\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"xaui\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c"10gbase-r\00", align 1
@.str.55 = private unnamed_addr constant [10 x i8] c"25gbase-r\00", align 1
@.str.56 = private unnamed_addr constant [8 x i8] c"usxgmii\00", align 1
@.str.57 = private unnamed_addr constant [11 x i8] c"10gbase-kr\00", align 1
@.str.58 = private unnamed_addr constant [10 x i8] c"100base-x\00", align 1
@.str.59 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@ave_pro4_data = internal constant %struct.ave_soc_data { i8 0, [4 x ptr] [ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63], [2 x ptr] [ptr @.str.60, ptr @.str.61], ptr @ave_pro4_get_pinmode }, align 4
@ave_pxs2_data = internal constant %struct.ave_soc_data { i8 0, [4 x ptr] [ptr @.str.61, ptr null, ptr null, ptr null], [2 x ptr] [ptr @.str.61, ptr null], ptr @ave_pro4_get_pinmode }, align 4
@ave_ld11_data = internal constant %struct.ave_soc_data { i8 0, [4 x ptr] [ptr @.str.61, ptr null, ptr null, ptr null], [2 x ptr] [ptr @.str.61, ptr null], ptr @ave_ld11_get_pinmode }, align 4
@ave_ld20_data = internal constant %struct.ave_soc_data { i8 1, [4 x ptr] [ptr @.str.61, ptr null, ptr null, ptr null], [2 x ptr] [ptr @.str.61, ptr null], ptr @ave_ld20_get_pinmode }, align 4
@ave_pxs3_data = internal constant %struct.ave_soc_data { i8 0, [4 x ptr] [ptr @.str.61, ptr null, ptr null, ptr null], [2 x ptr] [ptr @.str.61, ptr null], ptr @ave_pxs3_get_pinmode }, align 4
@ave_nx1_data = internal constant %struct.ave_soc_data { i8 1, [4 x ptr] [ptr @.str.61, ptr null, ptr null, ptr null], [2 x ptr] [ptr @.str.61, ptr null], ptr @ave_pxs3_get_pinmode }, align 4
@.str.60 = private unnamed_addr constant [4 x i8] c"gio\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"ether\00", align 1
@.str.62 = private unnamed_addr constant [9 x i8] c"ether-gb\00", align 1
@.str.63 = private unnamed_addr constant [10 x i8] c"ether-phy\00", align 1
@__const.ave_resume.wol = private unnamed_addr constant { i32, i32, i32, [6 x i8], [2 x i8] } { i32 5, i32 0, i32 0, [6 x i8] zeroinitializer, [2 x i8] zeroinitializer }, align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author331, ptr @__UNIQUE_ID_description332, ptr @__UNIQUE_ID_file333, ptr @__UNIQUE_ID_license334, ptr @__exitcall_ave_driver_exit, ptr @__initcall__kmod_sni_ave__330_1987_ave_driver_init6, ptr @ave_driver_exit], section "llvm.metadata"
@switch.table.phy_modes = private unnamed_addr constant [30 x ptr] [ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.58, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57], align 4
@switch.table.ave_pro4_get_pinmode = private unnamed_addr constant [11 x i32] [i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0], align 4
@switch.table.ave_ld20_get_pinmode = private unnamed_addr constant [6 x i32] [i32 1, i32 1, i32 0, i32 0, i32 0, i32 0], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ave_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @ave_driver, ptr noundef null) #17
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @ave_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @ave_driver) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ave_probe(ptr noundef %0) #2 {
  %2 = alloca [32 x i8], align 1
  %3 = alloca %struct.of_phandle_args, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %2, i8 0, i32 32, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  store i32 0, ptr %4, align 4, !annotation !8
  %6 = tail call ptr @of_device_get_match_data(ptr noundef %5) #17
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9, !prof !9

8:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1569, i32 noundef 9, ptr noundef null) #17
  br label %204

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %11 = load ptr, ptr %10, align 8
  %12 = call i32 @of_get_phy_mode(ptr noundef %11, ptr noundef nonnull %4) #17
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.2) #18
  br label %204

15:                                               ; preds = %9
  %16 = call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #17
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %204, label %18

18:                                               ; preds = %15
  %19 = call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #17
  %20 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = ptrtoint ptr %19 to i32
  br label %204

23:                                               ; preds = %18
  %24 = call ptr @devm_alloc_etherdev_mqs(ptr noundef %5, i32 noundef 688, i32 noundef 1, i32 noundef 1) #17
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.3) #18
  br label %204

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 16
  store ptr @ave_netdev_ops, ptr %28, align 8
  %29 = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 42
  store ptr @ave_ethtool_ops, ptr %29, align 8
  %30 = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 111, i32 1
  store ptr %5, ptr %30, align 4
  %31 = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 23
  %32 = load i64, ptr %31, align 16
  %33 = or i64 %32, 1099511627778
  store i64 %33, ptr %31, align 16
  %34 = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 24
  %35 = load i64, ptr %34, align 8
  %36 = or i64 %35, 1099511627778
  store i64 %36, ptr %34, align 8
  %37 = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 31
  store i32 1500, ptr %37, align 4
  %38 = call i32 @of_get_ethdev_address(ptr noundef %11, ptr noundef nonnull %24) #17
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %27
  call fastcc void @eth_hw_addr_random(ptr noundef nonnull %24)
  %41 = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 72
  %42 = load ptr, ptr %41, align 32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.4, ptr noundef %42) #18
  br label %43

43:                                               ; preds = %40, %27
  %44 = getelementptr i8, ptr %24, i32 1408
  store ptr %19, ptr %44, align 8
  %45 = getelementptr i8, ptr %24, i32 1412
  store i32 %16, ptr %45, align 4
  %46 = getelementptr i8, ptr %24, i32 1600
  store ptr %24, ptr %46, align 8
  %47 = getelementptr i8, ptr %24, i32 1424
  store i32 255, ptr %47, align 8
  %48 = load i32, ptr %4, align 4
  %49 = getelementptr i8, ptr %24, i32 1460
  store i32 %48, ptr %49, align 4
  %50 = getelementptr i8, ptr %24, i32 2092
  store ptr %6, ptr %50, align 4
  %51 = load i8, ptr %6, align 4, !range !10
  %52 = icmp eq i8 %51, 0
  %53 = select i1 %52, i32 8, i32 12
  %54 = select i1 %52, i32 6144, i32 7168
  %55 = select i1 %52, i64 4294967295, i64 -1
  %56 = getelementptr i8, ptr %24, i32 1420
  store i32 %53, ptr %56, align 4
  %57 = getelementptr i8, ptr %24, i32 2064
  store i32 4096, ptr %57, align 4
  %58 = getelementptr i8, ptr %24, i32 2044
  store i32 %54, ptr %58, align 4
  %59 = call i32 @dma_set_mask(ptr noundef %5, i64 noundef %55) #17
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %204

61:                                               ; preds = %43
  %62 = getelementptr i8, ptr %24, i32 2060
  store i32 64, ptr %62, align 4
  %63 = getelementptr i8, ptr %24, i32 2040
  store i32 256, ptr %63, align 8
  %64 = getelementptr i8, ptr %24, i32 1544
  store i32 0, ptr %64, align 4
  %65 = getelementptr i8, ptr %24, i32 1488
  store i32 0, ptr %65, align 4
  %66 = getelementptr i8, ptr %24, i32 1428
  %67 = load ptr, ptr %50, align 4
  %68 = getelementptr %struct.ave_soc_data, ptr %67, i32 0, i32 1, i32 0
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %115, label %71

71:                                               ; preds = %61
  %72 = call ptr @devm_clk_get(ptr noundef %5, ptr noundef nonnull %69) #17
  %73 = getelementptr i8, ptr %24, i32 1432
  store ptr %72, ptr %73, align 4
  %74 = icmp ugt ptr %72, inttoptr (i32 -4096 to ptr)
  br i1 %74, label %75, label %78

75:                                               ; preds = %107, %96, %85, %71
  %76 = phi ptr [ %72, %71 ], [ %86, %85 ], [ %97, %96 ], [ %108, %107 ]
  %77 = ptrtoint ptr %76 to i32
  br label %204

78:                                               ; preds = %71
  %79 = load i32, ptr %66, align 4
  %80 = add i32 %79, 1
  store i32 %80, ptr %66, align 4
  %81 = load ptr, ptr %50, align 4
  %82 = getelementptr %struct.ave_soc_data, ptr %81, i32 0, i32 1, i32 1
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %115, label %85

85:                                               ; preds = %78
  %86 = call ptr @devm_clk_get(ptr noundef %5, ptr noundef nonnull %83) #17
  %87 = getelementptr i8, ptr %24, i32 1436
  store ptr %86, ptr %87, align 4
  %88 = icmp ugt ptr %86, inttoptr (i32 -4096 to ptr)
  br i1 %88, label %75, label %89

89:                                               ; preds = %85
  %90 = load i32, ptr %66, align 4
  %91 = add i32 %90, 1
  store i32 %91, ptr %66, align 4
  %92 = load ptr, ptr %50, align 4
  %93 = getelementptr %struct.ave_soc_data, ptr %92, i32 0, i32 1, i32 2
  %94 = load ptr, ptr %93, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %115, label %96

96:                                               ; preds = %89
  %97 = call ptr @devm_clk_get(ptr noundef %5, ptr noundef nonnull %94) #17
  %98 = getelementptr i8, ptr %24, i32 1440
  store ptr %97, ptr %98, align 4
  %99 = icmp ugt ptr %97, inttoptr (i32 -4096 to ptr)
  br i1 %99, label %75, label %100

100:                                              ; preds = %96
  %101 = load i32, ptr %66, align 4
  %102 = add i32 %101, 1
  store i32 %102, ptr %66, align 4
  %103 = load ptr, ptr %50, align 4
  %104 = getelementptr %struct.ave_soc_data, ptr %103, i32 0, i32 1, i32 3
  %105 = load ptr, ptr %104, align 4
  %106 = icmp eq ptr %105, null
  br i1 %106, label %115, label %107

107:                                              ; preds = %100
  %108 = call ptr @devm_clk_get(ptr noundef %5, ptr noundef nonnull %105) #17
  %109 = getelementptr i8, ptr %24, i32 1444
  store ptr %108, ptr %109, align 4
  %110 = icmp ugt ptr %108, inttoptr (i32 -4096 to ptr)
  br i1 %110, label %75, label %111

111:                                              ; preds = %107
  %112 = load i32, ptr %66, align 4
  %113 = add i32 %112, 1
  store i32 %113, ptr %66, align 4
  %114 = load ptr, ptr %50, align 4
  br label %115

115:                                              ; preds = %111, %100, %89, %78, %61
  %116 = phi ptr [ %114, %111 ], [ %103, %100 ], [ %92, %89 ], [ %81, %78 ], [ %67, %61 ]
  %117 = getelementptr i8, ptr %24, i32 1448
  %118 = getelementptr %struct.ave_soc_data, ptr %116, i32 0, i32 2, i32 0
  %119 = load ptr, ptr %118, align 4
  %120 = icmp eq ptr %119, null
  br i1 %120, label %142, label %121

121:                                              ; preds = %115
  %122 = call ptr @__devm_reset_control_get(ptr noundef %5, ptr noundef nonnull %119, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false) #17
  %123 = getelementptr i8, ptr %24, i32 1452
  store ptr %122, ptr %123, align 4
  %124 = icmp ugt ptr %122, inttoptr (i32 -4096 to ptr)
  br i1 %124, label %125, label %128

125:                                              ; preds = %135, %121
  %126 = phi ptr [ %122, %121 ], [ %136, %135 ]
  %127 = ptrtoint ptr %126 to i32
  br label %204

128:                                              ; preds = %121
  %129 = load i32, ptr %117, align 8
  %130 = add i32 %129, 1
  store i32 %130, ptr %117, align 8
  %131 = load ptr, ptr %50, align 4
  %132 = getelementptr %struct.ave_soc_data, ptr %131, i32 0, i32 2, i32 1
  %133 = load ptr, ptr %132, align 4
  %134 = icmp eq ptr %133, null
  br i1 %134, label %142, label %135

135:                                              ; preds = %128
  %136 = call ptr @__devm_reset_control_get(ptr noundef %5, ptr noundef nonnull %133, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false) #17
  %137 = getelementptr i8, ptr %24, i32 1456
  store ptr %136, ptr %137, align 4
  %138 = icmp ugt ptr %136, inttoptr (i32 -4096 to ptr)
  br i1 %138, label %125, label %139

139:                                              ; preds = %135
  %140 = load i32, ptr %117, align 8
  %141 = add i32 %140, 1
  store i32 %141, ptr %117, align 8
  br label %142

142:                                              ; preds = %139, %128, %115
  %143 = call i32 @__of_parse_phandle_with_args(ptr noundef %11, ptr noundef nonnull @.str.5, ptr noundef null, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %3) #17
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %146, label %145

145:                                              ; preds = %142
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.6) #18
  br label %204

146:                                              ; preds = %142
  %147 = load ptr, ptr %3, align 4
  %148 = call ptr @syscon_node_to_regmap(ptr noundef %147) #17
  %149 = getelementptr i8, ptr %24, i32 1472
  store ptr %148, ptr %149, align 8
  %150 = load ptr, ptr %3, align 4
  call void @of_node_put(ptr noundef %150) #17
  %151 = load ptr, ptr %149, align 8
  %152 = icmp ugt ptr %151, inttoptr (i32 -4096 to ptr)
  br i1 %152, label %153, label %156

153:                                              ; preds = %146
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.7) #18
  %154 = load ptr, ptr %149, align 8
  %155 = ptrtoint ptr %154 to i32
  br label %204

156:                                              ; preds = %146
  %157 = load ptr, ptr %50, align 4
  %158 = getelementptr inbounds %struct.ave_soc_data, ptr %157, i32 0, i32 3
  %159 = load ptr, ptr %158, align 4
  %160 = load i32, ptr %4, align 4
  %161 = getelementptr inbounds %struct.of_phandle_args, ptr %3, i32 0, i32 2
  %162 = load i32, ptr %161, align 4
  %163 = call i32 %159(ptr noundef %44, i32 noundef %160, i32 noundef %162) #17
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %166, label %165

165:                                              ; preds = %156
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.8) #18
  br label %204

166:                                              ; preds = %156
  %167 = call ptr @devm_mdiobus_alloc_size(ptr noundef %5, i32 noundef 0) #17
  %168 = getelementptr i8, ptr %24, i32 1468
  store ptr %167, ptr %168, align 4
  %169 = icmp eq ptr %167, null
  br i1 %169, label %204, label %170

170:                                              ; preds = %166
  %171 = getelementptr inbounds %struct.mii_bus, ptr %167, i32 0, i32 3
  store ptr %24, ptr %171, align 8
  %172 = load ptr, ptr %168, align 4
  %173 = getelementptr inbounds %struct.mii_bus, ptr %172, i32 0, i32 9
  store ptr %5, ptr %173, align 4
  %174 = load ptr, ptr %168, align 4
  %175 = getelementptr inbounds %struct.mii_bus, ptr %174, i32 0, i32 4
  store ptr @ave_mdiobus_read, ptr %175, align 4
  %176 = load ptr, ptr %168, align 4
  %177 = getelementptr inbounds %struct.mii_bus, ptr %176, i32 0, i32 5
  store ptr @ave_mdiobus_write, ptr %177, align 8
  %178 = load ptr, ptr %168, align 4
  %179 = getelementptr inbounds %struct.mii_bus, ptr %178, i32 0, i32 1
  store ptr @.str.9, ptr %179, align 4
  %180 = load ptr, ptr %168, align 4
  %181 = getelementptr inbounds %struct.mii_bus, ptr %180, i32 0, i32 2
  %182 = load ptr, ptr %0, align 8
  %183 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 1
  %184 = load i32, ptr %183, align 4
  %185 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %181, i32 noundef 61, ptr noundef nonnull @.str.10, ptr noundef %182, i32 noundef %184)
  %186 = getelementptr i8, ptr %24, i32 1608
  call void @netif_napi_add(ptr noundef nonnull %24, ptr noundef %186, ptr noundef nonnull @ave_napi_poll_rx, i32 noundef 64) #17
  %187 = getelementptr i8, ptr %24, i32 1824
  call fastcc void @netif_tx_napi_add(ptr noundef nonnull %24, ptr noundef %187)
  %188 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %24, ptr %188, align 8
  %189 = call i32 @register_netdev(ptr noundef nonnull %24) #17
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %192, label %191

191:                                              ; preds = %170
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.11) #18
  call void @__netif_napi_del(ptr noundef %186) #17
  call void @synchronize_net() #17
  call void @__netif_napi_del(ptr noundef %187) #17
  call void @synchronize_net() #17
  br label %204

192:                                              ; preds = %170
  %193 = load ptr, ptr %44, align 8
  %194 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %193) #17, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !12
  call fastcc void @ave_hw_read_version(ptr noundef nonnull %24, ptr noundef nonnull %2)
  %195 = lshr i32 %194, 24
  %196 = lshr i32 %194, 16
  %197 = and i32 %196, 255
  %198 = lshr i32 %194, 8
  %199 = and i32 %198, 255
  %200 = and i32 %194, 255
  %201 = load i32, ptr %45, align 4
  %202 = load i32, ptr %4, align 4
  %203 = call fastcc ptr @phy_modes(i32 noundef %202)
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.12, i32 noundef %195, i32 noundef %197, i32 noundef %199, i32 noundef %200, ptr noundef nonnull %2, i32 noundef %201, ptr noundef nonnull %203) #18
  br label %204

204:                                              ; preds = %192, %191, %166, %165, %153, %145, %125, %75, %43, %26, %21, %15, %14, %8
  %205 = phi i32 [ -22, %8 ], [ %12, %14 ], [ %22, %21 ], [ %77, %75 ], [ %127, %125 ], [ %143, %145 ], [ %155, %153 ], [ %163, %165 ], [ %189, %191 ], [ 0, %192 ], [ -12, %26 ], [ %16, %15 ], [ %59, %43 ], [ -12, %166 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #17
  ret i32 %205
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ave_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @unregister_netdev(ptr noundef %3) #17
  %4 = getelementptr i8, ptr %3, i32 1608
  tail call void @__netif_napi_del(ptr noundef %4) #17
  tail call void @synchronize_net() #17
  %5 = getelementptr i8, ptr %3, i32 1824
  tail call void @__netif_napi_del(ptr noundef %5) #17
  tail call void @synchronize_net() #17
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_phy_mode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_alloc_etherdev_mqs(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_ethdev_address(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @eth_hw_addr_random(ptr noundef %0) unnamed_addr #6 {
  %2 = alloca [6 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %2, i8 0, i32 6, i1 false), !annotation !8
  call void @get_random_bytes(ptr noundef nonnull %2, i32 noundef 6) #17
  %3 = load i8, ptr %2, align 1
  %4 = and i8 %3, -4
  %5 = or i8 %4, 2
  store i8 %5, ptr %2, align 1
  call void @dev_addr_mod(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2, i32 noundef 6) #17
  %6 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 50
  store i8 1, ptr %6, align 8
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #17
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ave_mdiobus_read(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.mii_bus, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %5, i32 1408
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !13
  tail call void @arm_heavy_mb() #17
  %7 = shl i32 %1, 8
  %8 = or i32 %7, %2
  %9 = load ptr, ptr %6, align 8
  %10 = getelementptr i8, ptr %9, i32 536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #17, !srcloc !14
  %11 = load ptr, ptr %6, align 8
  %12 = getelementptr i8, ptr %11, i32 532
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #17, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !16
  tail call void @arm_heavy_mb() #17
  %14 = and i32 %13, -13
  %15 = or i32 %14, 8
  %16 = load ptr, ptr %6, align 8
  %17 = getelementptr i8, ptr %16, i32 532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #17, !srcloc !14
  %18 = tail call i64 @ktime_get() #17
  %19 = add i64 %18, 2000000
  %20 = load ptr, ptr %6, align 8
  %21 = getelementptr i8, ptr %20, i32 544
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #17, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !17
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %38, label %25

25:                                               ; preds = %32, %3
  %26 = tail call i64 @ktime_get() #17
  %27 = icmp sgt i64 %26, %19
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load ptr, ptr %6, align 8
  %30 = getelementptr i8, ptr %29, i32 544
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #17, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !18
  br label %38

32:                                               ; preds = %25
  tail call void @usleep_range_state(i32 noundef 6, i32 noundef 20, i32 noundef 2) #17
  %33 = load ptr, ptr %6, align 8
  %34 = getelementptr i8, ptr %33, i32 544
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #17, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !17
  %36 = and i32 %35, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %25

38:                                               ; preds = %32, %28, %3
  %39 = phi i32 [ %31, %28 ], [ %22, %3 ], [ %35, %32 ]
  %40 = and i32 %39, 1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %5, ptr noundef nonnull @.str.26, i32 noundef %1, i32 noundef %2) #18
  br label %48

43:                                               ; preds = %38
  %44 = load ptr, ptr %6, align 8
  %45 = getelementptr i8, ptr %44, i32 548
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #17, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !19
  %47 = and i32 %46, 65535
  br label %48

48:                                               ; preds = %43, %42
  %49 = phi i32 [ -110, %42 ], [ %47, %43 ]
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ave_mdiobus_write(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i16 noundef zeroext %3) #2 {
  %5 = getelementptr inbounds %struct.mii_bus, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr i8, ptr %6, i32 1408
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !20
  tail call void @arm_heavy_mb() #17
  %8 = shl i32 %1, 8
  %9 = or i32 %8, %2
  %10 = load ptr, ptr %7, align 8
  %11 = getelementptr i8, ptr %10, i32 536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #17, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !21
  tail call void @arm_heavy_mb() #17
  %12 = zext i16 %3 to i32
  %13 = load ptr, ptr %7, align 8
  %14 = getelementptr i8, ptr %13, i32 540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #17, !srcloc !14
  %15 = load ptr, ptr %7, align 8
  %16 = getelementptr i8, ptr %15, i32 532
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #17, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !22
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !23
  tail call void @arm_heavy_mb() #17
  %18 = and i32 %17, -13
  %19 = or i32 %18, 4
  %20 = load ptr, ptr %7, align 8
  %21 = getelementptr i8, ptr %20, i32 532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #17, !srcloc !14
  %22 = tail call i64 @ktime_get() #17
  %23 = add i64 %22, 2000000
  %24 = load ptr, ptr %7, align 8
  %25 = getelementptr i8, ptr %24, i32 544
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #17, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !24
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %45, label %29

29:                                               ; preds = %32, %4
  %30 = tail call i64 @ktime_get() #17
  %31 = icmp sgt i64 %30, %23
  br i1 %31, label %38, label %32

32:                                               ; preds = %29
  tail call void @usleep_range_state(i32 noundef 6, i32 noundef 20, i32 noundef 2) #17
  %33 = load ptr, ptr %7, align 8
  %34 = getelementptr i8, ptr %33, i32 544
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #17, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !24
  %36 = and i32 %35, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %45, label %29

38:                                               ; preds = %29
  %39 = load ptr, ptr %7, align 8
  %40 = getelementptr i8, ptr %39, i32 544
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #17, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !25
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %38
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %6, ptr noundef nonnull @.str.27, i32 noundef %1, i32 noundef %2) #18
  br label %45

45:                                               ; preds = %44, %38, %32, %4
  %46 = phi i32 [ -110, %44 ], [ 0, %38 ], [ 0, %4 ], [ 0, %32 ]
  ret i32 %46
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ave_napi_poll_rx(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 -8
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc i32 @ave_rx_receive(ptr noundef %4, i32 noundef %1)
  %6 = icmp slt i32 %5, %1
  br i1 %6, label %7, label %18

7:                                                ; preds = %2
  %8 = tail call zeroext i1 @napi_complete_done(ptr noundef %0, i32 noundef %5) #17
  %9 = getelementptr i8, ptr %4, i32 1408
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !26
  tail call void @arm_heavy_mb() #17
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr i8, ptr %10, i32 256
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #17, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !27
  %13 = or i32 %12, 32
  %14 = load ptr, ptr %9, align 8
  %15 = getelementptr i8, ptr %14, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #17, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !28
  tail call void @arm_heavy_mb() #17
  %16 = load ptr, ptr %9, align 8
  %17 = getelementptr i8, ptr %16, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 32) #17, !srcloc !14
  br label %18

18:                                               ; preds = %7, %2
  ret i32 %5
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @netif_tx_napi_add(ptr noundef %0, ptr noundef %1) unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.napi_struct, ptr %1, i32 0, i32 1
  tail call void @_set_bit(i32 noundef 5, ptr noundef %3) #17
  tail call void @netif_napi_add(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @ave_napi_poll_tx, i32 noundef 64) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ave_napi_poll_tx(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 -224
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 1408
  %6 = getelementptr i8, ptr %4, i32 2060
  %7 = getelementptr i8, ptr %4, i32 2068
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr i8, ptr %4, i32 2072
  %10 = load i32, ptr %9, align 4
  %11 = load i32, ptr %6, align 4
  %12 = getelementptr i8, ptr %4, i32 2064
  %13 = icmp eq i32 %8, %10
  br i1 %13, label %81, label %14

14:                                               ; preds = %2
  %15 = getelementptr i8, ptr %4, i32 1420
  %16 = getelementptr i8, ptr %4, i32 1568
  %17 = getelementptr i8, ptr %4, i32 1584
  %18 = getelementptr i8, ptr %4, i32 2076
  %19 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 111, i32 1
  br label %20

20:                                               ; preds = %76, %14
  %21 = phi i32 [ 0, %14 ], [ %55, %76 ]
  %22 = phi i32 [ 0, %14 ], [ %54, %76 ]
  %23 = phi i32 [ 0, %14 ], [ %77, %76 ]
  %24 = phi i32 [ %10, %14 ], [ %79, %76 ]
  %25 = load i32, ptr %12, align 4
  %26 = load i32, ptr %15, align 4
  %27 = mul i32 %26, %24
  %28 = add i32 %27, %25
  %29 = load ptr, ptr %5, align 8
  %30 = getelementptr i8, ptr %29, i32 %28
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #17, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !29
  %32 = icmp sgt i32 %31, -1
  br i1 %32, label %33, label %81

33:                                               ; preds = %20
  %34 = and i32 %31, 134217728
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %33
  %37 = and i32 %31, 65535
  %38 = add i32 %37, %21
  %39 = lshr i32 %31, 25
  %40 = and i32 %39, 1
  %41 = add i32 %40, %22
  br label %53

42:                                               ; preds = %33
  %43 = and i32 %31, 33554432
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %42
  %46 = load i64, ptr %16, align 8
  %47 = add i64 %46, 1
  store i64 %47, ptr %16, align 8
  %48 = and i32 %31, 3145728
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %45
  %51 = load i64, ptr %17, align 8
  %52 = add i64 %51, 1
  store i64 %52, ptr %17, align 8
  br label %53

53:                                               ; preds = %50, %45, %42, %36
  %54 = phi i32 [ %22, %50 ], [ %22, %45 ], [ %22, %42 ], [ %41, %36 ]
  %55 = phi i32 [ %21, %50 ], [ %21, %45 ], [ %21, %42 ], [ %38, %36 ]
  %56 = load ptr, ptr %18, align 4
  %57 = getelementptr %struct.ave_desc, ptr %56, i32 %24
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %76, label %60

60:                                               ; preds = %53
  %61 = getelementptr %struct.ave_desc, ptr %56, i32 %24, i32 1
  %62 = load i32, ptr %61, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %60
  %65 = load ptr, ptr %19, align 4
  %66 = getelementptr %struct.ave_desc, ptr %56, i32 %24, i32 2
  %67 = load i32, ptr %66, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %65, i32 noundef %62, i32 noundef %67, i32 noundef 1, i32 noundef 0) #17
  store i32 0, ptr %61, align 4
  %68 = load ptr, ptr %18, align 4
  %69 = getelementptr %struct.ave_desc, ptr %68, i32 %24
  %70 = load ptr, ptr %69, align 4
  br label %71

71:                                               ; preds = %64, %60
  %72 = phi ptr [ %58, %60 ], [ %70, %64 ]
  tail call void @__dev_kfree_skb_any(ptr noundef %72, i32 noundef 0) #17
  %73 = load ptr, ptr %18, align 4
  %74 = getelementptr %struct.ave_desc, ptr %73, i32 %24
  store ptr null, ptr %74, align 4
  %75 = add i32 %23, 1
  br label %76

76:                                               ; preds = %71, %53
  %77 = phi i32 [ %75, %71 ], [ %23, %53 ]
  %78 = add i32 %24, 1
  %79 = urem i32 %78, %11
  %80 = icmp eq i32 %8, %79
  br i1 %80, label %81, label %20

81:                                               ; preds = %76, %20, %2
  %82 = phi i32 [ %8, %2 ], [ %8, %76 ], [ %24, %20 ]
  %83 = phi i32 [ 0, %2 ], [ %77, %76 ], [ %23, %20 ]
  %84 = phi i32 [ 0, %2 ], [ %54, %76 ], [ %22, %20 ]
  %85 = phi i32 [ 0, %2 ], [ %55, %76 ], [ %21, %20 ]
  store i32 %82, ptr %9, align 4
  %86 = getelementptr i8, ptr %4, i32 1544
  %87 = load i32, ptr %86, align 4
  %88 = add i32 %87, 1
  store i32 %88, ptr %86, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #17, !srcloc !30
  %89 = zext i32 %84 to i64
  %90 = getelementptr i8, ptr %4, i32 1552
  %91 = load i64, ptr %90, align 8
  %92 = add i64 %91, %89
  store i64 %92, ptr %90, align 8
  %93 = zext i32 %85 to i64
  %94 = getelementptr i8, ptr %4, i32 1560
  %95 = load i64, ptr %94, align 8
  %96 = add i64 %95, %93
  store i64 %96, ptr %94, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #17, !srcloc !31
  %97 = load i32, ptr %86, align 4
  %98 = add i32 %97, 1
  store i32 %98, ptr %86, align 4
  %99 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 87
  %100 = load ptr, ptr %99, align 64
  %101 = getelementptr inbounds %struct.netdev_queue, ptr %100, i32 0, i32 12
  %102 = load volatile i32, ptr %101, align 4
  %103 = and i32 %102, 1
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %108, label %105, !prof !32

105:                                              ; preds = %81
  %106 = icmp eq i32 %83, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %105
  tail call void @netif_tx_wake_queue(ptr noundef %100) #17
  br label %108

108:                                              ; preds = %107, %105, %81
  %109 = tail call zeroext i1 @napi_complete_done(ptr noundef %0, i32 noundef 0) #17
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !26
  tail call void @arm_heavy_mb() #17
  %110 = load ptr, ptr %5, align 8
  %111 = getelementptr i8, ptr %110, i32 256
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %111) #17, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !27
  %113 = or i32 %112, 65536
  %114 = load ptr, ptr %5, align 8
  %115 = getelementptr i8, ptr %114, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %115, i32 %113) #17, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !28
  tail call void @arm_heavy_mb() #17
  %116 = load ptr, ptr %5, align 8
  %117 = getelementptr i8, ptr %116, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %117, i32 65536) #17, !srcloc !14
  ret i32 %83
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ave_hw_read_version(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #2 {
  %3 = getelementptr i8, ptr %0, i32 1408
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #17, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !33
  %7 = lshr i32 %6, 8
  %8 = and i32 %7, 255
  %9 = and i32 %6, 255
  %10 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.28, i32 noundef %8, i32 noundef %9)
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal fastcc nonnull ptr @phy_modes(i32 noundef %0) unnamed_addr #8 {
  %2 = icmp ult i32 %0, 30
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  %4 = getelementptr inbounds [30 x ptr], ptr @switch.table.phy_modes, i32 0, i32 %0
  %5 = load ptr, ptr %4, align 4
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi ptr [ %5, %3 ], [ @.str.59, %1 ]
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ave_init(ptr noundef %0) #2 {
  %2 = alloca %struct.ethtool_wolinfo, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #17
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) @__const.ave_resume.wol, i32 20, i1 false)
  %3 = getelementptr i8, ptr %0, i32 1408
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 111
  %5 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 111, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 25
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr i8, ptr %0, i32 1428
  %10 = load i32, ptr %9, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %29, %1
  %13 = phi i32 [ 0, %1 ], [ %30, %29 ]
  %14 = getelementptr i8, ptr %0, i32 1448
  %15 = load i32, ptr %14, align 8
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %33, label %44

17:                                               ; preds = %29, %1
  %18 = phi i32 [ %30, %29 ], [ 0, %1 ]
  %19 = getelementptr %struct.ave_private, ptr %3, i32 0, i32 6, i32 %18
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 @clk_prepare(ptr noundef %20) #17
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = tail call i32 @clk_enable(ptr noundef %20) #17
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  tail call void @clk_unprepare(ptr noundef %20) #17
  br label %27

27:                                               ; preds = %26, %17
  %28 = phi i32 [ %24, %26 ], [ %21, %17 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.13) #18
  br label %105

29:                                               ; preds = %23
  %30 = add nuw nsw i32 %18, 1
  %31 = load i32, ptr %9, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %17, label %12

33:                                               ; preds = %40, %12
  %34 = phi i32 [ %41, %40 ], [ 0, %12 ]
  %35 = getelementptr %struct.ave_private, ptr %3, i32 0, i32 8, i32 %34
  %36 = load ptr, ptr %35, align 4
  %37 = tail call i32 @reset_control_deassert(ptr noundef %36) #17
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %33
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.14) #18
  br label %93

40:                                               ; preds = %33
  %41 = add nuw nsw i32 %34, 1
  %42 = load i32, ptr %14, align 8
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %33, label %44

44:                                               ; preds = %40, %12
  %45 = phi i32 [ 0, %12 ], [ %41, %40 ]
  %46 = getelementptr i8, ptr %0, i32 1472
  %47 = load ptr, ptr %46, align 8
  %48 = getelementptr i8, ptr %0, i32 1476
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr i8, ptr %0, i32 1480
  %51 = load i32, ptr %50, align 8
  %52 = tail call i32 @regmap_update_bits_base(ptr noundef %47, i32 noundef 1344, i32 noundef %49, i32 noundef %51, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #17
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %93

54:                                               ; preds = %44
  tail call fastcc void @ave_global_reset(ptr noundef %0)
  %55 = tail call ptr @of_get_child_by_name(ptr noundef %8, ptr noundef nonnull @.str.15) #17
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.16) #18
  br label %93

58:                                               ; preds = %54
  %59 = getelementptr i8, ptr %0, i32 1468
  %60 = load ptr, ptr %59, align 4
  %61 = tail call i32 @of_mdiobus_register(ptr noundef %60, ptr noundef nonnull %55) #17
  tail call void @of_node_put(ptr noundef nonnull %55) #17
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %58
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.17) #18
  br label %93

64:                                               ; preds = %58
  %65 = tail call ptr @of_phy_get_and_connect(ptr noundef %0, ptr noundef %8, ptr noundef nonnull @ave_phy_adjust_link) #17
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.18) #18
  %68 = load ptr, ptr %59, align 4
  tail call void @mdiobus_unregister(ptr noundef %68) #17
  br label %93

69:                                               ; preds = %64
  %70 = getelementptr i8, ptr %0, i32 1464
  store ptr %65, ptr %70, align 8
  %71 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %2, i32 0, i32 1
  store i32 0, ptr %71, align 4
  %72 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %2, i32 0, i32 2
  store i32 0, ptr %72, align 4
  %73 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %74 = load ptr, ptr %73, align 8
  %75 = icmp eq ptr %74, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %69
  call void @phy_ethtool_get_wol(ptr noundef nonnull %74, ptr noundef nonnull %2) #17
  %77 = load i32, ptr %71, align 4
  %78 = icmp ne i32 %77, 0
  br label %79

79:                                               ; preds = %76, %69
  %80 = phi i1 [ false, %69 ], [ %78, %76 ]
  call void @device_set_wakeup_capable(ptr noundef %4, i1 noundef zeroext %80) #17
  store i32 0, ptr %72, align 4
  %81 = load ptr, ptr %73, align 8
  %82 = icmp eq ptr %81, null
  br i1 %82, label %85, label %83

83:                                               ; preds = %79
  %84 = call i32 @phy_ethtool_set_wol(ptr noundef nonnull %81, ptr noundef nonnull %2) #17
  br label %85

85:                                               ; preds = %83, %79
  %86 = getelementptr inbounds %struct.phy_device, ptr %65, i32 0, i32 7
  %87 = load i32, ptr %86, align 4
  %88 = add i32 %87, -9
  %89 = icmp ult i32 %88, 4
  br i1 %89, label %92, label %90

90:                                               ; preds = %85
  %91 = call i32 @phy_set_max_speed(ptr noundef nonnull %65, i32 noundef 100) #17
  br label %92

92:                                               ; preds = %90, %85
  call void @phy_support_asym_pause(ptr noundef nonnull %65) #17
  call void @phy_attached_info(ptr noundef nonnull %65) #17
  br label %116

93:                                               ; preds = %67, %63, %57, %44, %39
  %94 = phi i32 [ %34, %39 ], [ %45, %44 ], [ %45, %63 ], [ %45, %67 ], [ %45, %57 ]
  %95 = phi i32 [ %37, %39 ], [ %52, %44 ], [ %61, %63 ], [ -19, %67 ], [ -22, %57 ]
  %96 = add i32 %94, -1
  %97 = icmp sgt i32 %96, -1
  br i1 %97, label %98, label %105

98:                                               ; preds = %98, %93
  %99 = phi i32 [ %103, %98 ], [ %96, %93 ]
  %100 = getelementptr %struct.ave_private, ptr %3, i32 0, i32 8, i32 %99
  %101 = load ptr, ptr %100, align 4
  %102 = tail call i32 @reset_control_assert(ptr noundef %101) #17
  %103 = add nsw i32 %99, -1
  %104 = icmp eq i32 %99, 0
  br i1 %104, label %105, label %98

105:                                              ; preds = %98, %93, %27
  %106 = phi i32 [ %18, %27 ], [ %13, %93 ], [ %13, %98 ]
  %107 = phi i32 [ %28, %27 ], [ %95, %93 ], [ %95, %98 ]
  %108 = add i32 %106, -1
  %109 = icmp sgt i32 %108, -1
  br i1 %109, label %110, label %116

110:                                              ; preds = %110, %105
  %111 = phi i32 [ %114, %110 ], [ %108, %105 ]
  %112 = getelementptr %struct.ave_private, ptr %3, i32 0, i32 6, i32 %111
  %113 = load ptr, ptr %112, align 4
  tail call void @clk_disable(ptr noundef %113) #17
  tail call void @clk_unprepare(ptr noundef %113) #17
  %114 = add nsw i32 %111, -1
  %115 = icmp eq i32 %111, 0
  br i1 %115, label %116, label %110

116:                                              ; preds = %110, %105, %92
  %117 = phi i32 [ 0, %92 ], [ %107, %105 ], [ %107, %110 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #17
  ret i32 %117
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ave_uninit(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 1408
  %3 = getelementptr i8, ptr %0, i32 1464
  %4 = load ptr, ptr %3, align 8
  tail call void @phy_disconnect(ptr noundef %4) #17
  %5 = getelementptr i8, ptr %0, i32 1468
  %6 = load ptr, ptr %5, align 4
  tail call void @mdiobus_unregister(ptr noundef %6) #17
  %7 = getelementptr i8, ptr %0, i32 1448
  %8 = load i32, ptr %7, align 8
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %14, %1
  %11 = getelementptr i8, ptr %0, i32 1428
  %12 = load i32, ptr %11, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %22, label %29

14:                                               ; preds = %14, %1
  %15 = phi i32 [ %19, %14 ], [ 0, %1 ]
  %16 = getelementptr %struct.ave_private, ptr %2, i32 0, i32 8, i32 %15
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @reset_control_assert(ptr noundef %17) #17
  %19 = add nuw nsw i32 %15, 1
  %20 = load i32, ptr %7, align 8
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %14, label %10

22:                                               ; preds = %22, %10
  %23 = phi i32 [ %26, %22 ], [ 0, %10 ]
  %24 = getelementptr %struct.ave_private, ptr %2, i32 0, i32 6, i32 %23
  %25 = load ptr, ptr %24, align 4
  tail call void @clk_disable(ptr noundef %25) #17
  tail call void @clk_unprepare(ptr noundef %25) #17
  %26 = add nuw nsw i32 %23, 1
  %27 = load i32, ptr %11, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %22, label %29

29:                                               ; preds = %22, %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ave_open(ptr noundef %0) #2 {
  %2 = alloca [6 x i8], align 1
  %3 = getelementptr i8, ptr %0, i32 1408
  %4 = getelementptr i8, ptr %0, i32 1412
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 @request_threaded_irq(i32 noundef %5, ptr noundef nonnull @ave_irq_handler, ptr noundef null, i32 noundef 128, ptr noundef %0, ptr noundef %0) #17
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %198

8:                                                ; preds = %1
  %9 = getelementptr i8, ptr %0, i32 2060
  %10 = load i32, ptr %9, align 4
  %11 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %10, i32 12) #17
  %12 = extractvalue { i32, i1 } %11, 1
  br i1 %12, label %13, label %15, !prof !9

13:                                               ; preds = %8
  %14 = getelementptr i8, ptr %0, i32 2076
  store ptr null, ptr %14, align 4
  br label %194

15:                                               ; preds = %8
  %16 = extractvalue { i32, i1 } %11, 0
  %17 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %16, i32 noundef 3520) #19
  %18 = getelementptr i8, ptr %0, i32 2076
  store ptr %17, ptr %18, align 4
  %19 = icmp eq ptr %17, null
  br i1 %19, label %194, label %20

20:                                               ; preds = %15
  %21 = getelementptr i8, ptr %0, i32 2040
  %22 = load i32, ptr %21, align 8
  %23 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %22, i32 12) #17
  %24 = extractvalue { i32, i1 } %23, 1
  br i1 %24, label %25, label %27, !prof !9

25:                                               ; preds = %20
  %26 = getelementptr i8, ptr %0, i32 2056
  store ptr null, ptr %26, align 8
  br label %34

27:                                               ; preds = %20
  %28 = extractvalue { i32, i1 } %23, 0
  %29 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %28, i32 noundef 3520) #19
  %30 = getelementptr i8, ptr %0, i32 2056
  store ptr %29, ptr %30, align 8
  %31 = icmp eq ptr %29, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load ptr, ptr %18, align 4
  br label %34

34:                                               ; preds = %32, %25
  %35 = phi ptr [ %33, %32 ], [ %17, %25 ]
  tail call void @kfree(ptr noundef %35) #17
  br label %194

36:                                               ; preds = %27
  %37 = getelementptr i8, ptr %0, i32 2068
  store i32 0, ptr %37, align 4
  %38 = getelementptr i8, ptr %0, i32 2072
  store i32 0, ptr %38, align 4
  %39 = load i32, ptr %9, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %75, label %41

41:                                               ; preds = %36
  %42 = getelementptr i8, ptr %0, i32 2064
  %43 = getelementptr i8, ptr %0, i32 1420
  %44 = getelementptr i8, ptr %0, i32 2092
  br label %45

45:                                               ; preds = %71, %41
  %46 = phi i32 [ 0, %41 ], [ %72, %71 ]
  %47 = load i32, ptr %42, align 4
  %48 = load i32, ptr %43, align 4
  %49 = mul i32 %48, %46
  %50 = add i32 %49, %47
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !34
  tail call void @arm_heavy_mb() #17
  %51 = load ptr, ptr %3, align 8
  %52 = getelementptr i8, ptr %51, i32 %50
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 0) #17, !srcloc !14
  %53 = load i32, ptr %42, align 4
  %54 = load i32, ptr %43, align 4
  %55 = mul i32 %54, %46
  %56 = add i32 %53, 4
  %57 = add i32 %56, %55
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !34
  tail call void @arm_heavy_mb() #17
  %58 = load ptr, ptr %3, align 8
  %59 = getelementptr i8, ptr %58, i32 %57
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 0) #17, !srcloc !14
  %60 = load ptr, ptr %44, align 4
  %61 = load i8, ptr %60, align 4, !range !10
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %71, label %63

63:                                               ; preds = %45
  %64 = load i32, ptr %42, align 4
  %65 = load i32, ptr %43, align 4
  %66 = mul i32 %65, %46
  %67 = add i32 %64, 8
  %68 = add i32 %67, %66
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !34
  tail call void @arm_heavy_mb() #17
  %69 = load ptr, ptr %3, align 8
  %70 = getelementptr i8, ptr %69, i32 %68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 0) #17, !srcloc !14
  br label %71

71:                                               ; preds = %63, %45
  %72 = add nuw i32 %46, 1
  %73 = load i32, ptr %9, align 4
  %74 = icmp ult i32 %72, %73
  br i1 %74, label %45, label %75

75:                                               ; preds = %71, %36
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !35
  tail call void @arm_heavy_mb() #17
  %76 = load i32, ptr %9, align 4
  %77 = getelementptr i8, ptr %0, i32 1420
  %78 = load i32, ptr %77, align 4
  %79 = shl i32 %76, 16
  %80 = mul i32 %79, %78
  %81 = and i32 %80, 268369920
  %82 = load ptr, ptr %3, align 8
  %83 = getelementptr i8, ptr %82, i32 772
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %83, i32 %81) #17, !srcloc !14
  %84 = getelementptr i8, ptr %0, i32 2048
  store i32 0, ptr %84, align 8
  %85 = getelementptr i8, ptr %0, i32 2052
  store i32 0, ptr %85, align 4
  %86 = load i32, ptr %21, align 8
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %96, label %92

88:                                               ; preds = %92
  %89 = add nuw i32 %93, 1
  %90 = load i32, ptr %21, align 8
  %91 = icmp ult i32 %89, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %88, %75
  %93 = phi i32 [ %89, %88 ], [ 0, %75 ]
  %94 = tail call fastcc i32 @ave_rxdesc_prepare(ptr noundef %0, i32 noundef %93)
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %88, label %96

96:                                               ; preds = %92, %88, %75
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !36
  tail call void @arm_heavy_mb() #17
  %97 = load i32, ptr %21, align 8
  %98 = load i32, ptr %77, align 4
  %99 = shl i32 %97, 16
  %100 = mul i32 %99, %98
  %101 = and i32 %100, 2147418112
  %102 = load ptr, ptr %3, align 8
  %103 = getelementptr i8, ptr %102, i32 776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %103, i32 %101) #17, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !37
  tail call void @arm_heavy_mb() #17
  %104 = load ptr, ptr %3, align 8
  %105 = getelementptr i8, ptr %104, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %105, i32 257) #17, !srcloc !14
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %2, i8 -1, i32 6, i1 false) #17
  br label %106

106:                                              ; preds = %106, %96
  %107 = phi i32 [ 0, %96 ], [ %116, %106 ]
  %108 = load ptr, ptr %3, align 8
  %109 = getelementptr i8, ptr %108, i32 4092
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %109) #17, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !38
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !39
  tail call void @arm_heavy_mb() #17
  %111 = shl nuw nsw i32 1, %107
  %112 = xor i32 %111, -1
  %113 = and i32 %110, %112
  %114 = load ptr, ptr %3, align 8
  %115 = getelementptr i8, ptr %114, i32 4092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %115, i32 %113) #17, !srcloc !14
  %116 = add nuw nsw i32 %107, 1
  %117 = icmp eq i32 %116, 17
  br i1 %117, label %118, label %106

118:                                              ; preds = %106
  %119 = load ptr, ptr %3, align 8
  %120 = getelementptr i8, ptr %119, i32 4092
  %121 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %120) #17, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !38
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !39
  tail call void @arm_heavy_mb() #17
  %122 = and i32 %121, -2
  %123 = load ptr, ptr %3, align 8
  %124 = getelementptr i8, ptr %123, i32 4092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %124, i32 %122) #17, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !40
  tail call void @arm_heavy_mb() #17
  %125 = load ptr, ptr %3, align 8
  %126 = getelementptr i8, ptr %125, i32 3328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %126, i32 -193) #17, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !41
  tail call void @arm_heavy_mb() #17
  %127 = load ptr, ptr %3, align 8
  %128 = getelementptr i8, ptr %127, i32 3332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %128, i32 67108863) #17, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !42
  tail call void @arm_heavy_mb() #17
  %129 = load ptr, ptr %3, align 8
  %130 = getelementptr i8, ptr %129, i32 3584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %130, i32 65535) #17, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !43
  tail call void @arm_heavy_mb() #17
  %131 = load ptr, ptr %3, align 8
  %132 = getelementptr i8, ptr %131, i32 3840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %132, i32 0) #17, !srcloc !14
  %133 = load ptr, ptr %3, align 8
  %134 = getelementptr i8, ptr %133, i32 4092
  %135 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %134) #17, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !44
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !45
  tail call void @arm_heavy_mb() #17
  %136 = or i32 %135, 1
  %137 = load ptr, ptr %3, align 8
  %138 = getelementptr i8, ptr %137, i32 4092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %138, i32 %136) #17, !srcloc !14
  %139 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 72
  %140 = load ptr, ptr %139, align 32
  tail call fastcc void @ave_pfsel_set_macaddr(ptr noundef %0, i32 noundef 1, ptr noundef %140, i32 noundef 6) #17
  call fastcc void @ave_pfsel_set_macaddr(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %2, i32 noundef 6) #17
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #17
  %141 = load ptr, ptr %139, align 32
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !46
  tail call void @arm_heavy_mb() #17
  %142 = load i8, ptr %141, align 1
  %143 = zext i8 %142 to i32
  %144 = getelementptr i8, ptr %141, i32 1
  %145 = load i8, ptr %144, align 1
  %146 = zext i8 %145 to i32
  %147 = shl nuw nsw i32 %146, 8
  %148 = or i32 %147, %143
  %149 = getelementptr i8, ptr %141, i32 2
  %150 = load i8, ptr %149, align 1
  %151 = zext i8 %150 to i32
  %152 = shl nuw nsw i32 %151, 16
  %153 = or i32 %148, %152
  %154 = getelementptr i8, ptr %141, i32 3
  %155 = load i8, ptr %154, align 1
  %156 = zext i8 %155 to i32
  %157 = shl nuw i32 %156, 24
  %158 = or i32 %153, %157
  %159 = load ptr, ptr %3, align 8
  %160 = getelementptr i8, ptr %159, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %160, i32 %158) #17, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !47
  tail call void @arm_heavy_mb() #17
  %161 = getelementptr i8, ptr %141, i32 4
  %162 = load i8, ptr %161, align 1
  %163 = zext i8 %162 to i32
  %164 = getelementptr i8, ptr %141, i32 5
  %165 = load i8, ptr %164, align 1
  %166 = zext i8 %165 to i32
  %167 = shl nuw nsw i32 %166, 8
  %168 = or i32 %167, %163
  %169 = load ptr, ptr %3, align 8
  %170 = getelementptr i8, ptr %169, i32 524
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %170, i32 %168) #17, !srcloc !14
  %171 = load ptr, ptr %139, align 32
  tail call fastcc void @ave_pfsel_set_macaddr(ptr noundef %0, i32 noundef 1, ptr noundef %171, i32 noundef 6) #17
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !48
  tail call void @arm_heavy_mb() #17
  %172 = load ptr, ptr %3, align 8
  %173 = getelementptr i8, ptr %172, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %173, i32 1080296942) #17, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !49
  tail call void @arm_heavy_mb() #17
  %174 = load ptr, ptr %3, align 8
  %175 = getelementptr i8, ptr %174, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %175, i32 262144) #17, !srcloc !14
  %176 = load ptr, ptr %3, align 8
  %177 = getelementptr i8, ptr %176, i32 844
  %178 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %177) #17, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !50
  %179 = and i32 %178, 65535
  %180 = or i32 %179, 135528448
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !51
  tail call void @arm_heavy_mb() #17
  %181 = load ptr, ptr %3, align 8
  %182 = getelementptr i8, ptr %181, i32 844
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %182, i32 %180) #17, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !52
  tail call void @arm_heavy_mb() #17
  %183 = load ptr, ptr %3, align 8
  %184 = getelementptr i8, ptr %183, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %184, i32 65760) #17, !srcloc !14
  %185 = getelementptr i8, ptr %0, i32 1608
  tail call void @napi_enable(ptr noundef %185) #17
  %186 = getelementptr i8, ptr %0, i32 1824
  tail call void @napi_enable(ptr noundef %186) #17
  %187 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %188 = load ptr, ptr %187, align 8
  tail call void @phy_start(ptr noundef %188) #17
  %189 = load ptr, ptr %187, align 8
  %190 = tail call i32 @phy_start_aneg(ptr noundef %189) #17
  %191 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  %192 = load ptr, ptr %191, align 64
  %193 = getelementptr inbounds %struct.netdev_queue, ptr %192, i32 0, i32 12
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %193) #17
  br label %198

194:                                              ; preds = %34, %15, %13
  %195 = load i32, ptr %4, align 4
  tail call void @disable_irq(i32 noundef %195) #17
  %196 = load i32, ptr %4, align 4
  %197 = tail call ptr @free_irq(i32 noundef %196, ptr noundef %0) #17
  br label %198

198:                                              ; preds = %194, %118, %1
  %199 = phi i32 [ 0, %118 ], [ -12, %194 ], [ %6, %1 ]
  ret i32 %199
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ave_stop(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 1408
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 256
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #17, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !53
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !54
  tail call void @arm_heavy_mb() #17
  %6 = load ptr, ptr %2, align 8
  %7 = getelementptr i8, ptr %6, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 0) #17, !srcloc !14
  %8 = getelementptr i8, ptr %0, i32 1412
  %9 = load i32, ptr %8, align 4
  tail call void @disable_irq(i32 noundef %9) #17
  %10 = load i32, ptr %8, align 4
  %11 = tail call ptr @free_irq(i32 noundef %10, ptr noundef %0) #17
  %12 = tail call ptr @llvm.thread.pointer() #17
  %13 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %14 = load volatile i32, ptr %13, align 4
  %15 = add i32 %14, 512
  store volatile i32 %15, ptr %13, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !55
  %16 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %17 = load i32, ptr %16, align 8
  %18 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 92
  tail call void @_raw_spin_lock(ptr noundef %18) #17
  %19 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 88
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %35, label %22

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  br label %24

24:                                               ; preds = %24, %22
  %25 = phi i32 [ 0, %22 ], [ %32, %24 ]
  %26 = load ptr, ptr %23, align 64
  %27 = getelementptr %struct.netdev_queue, ptr %26, i32 %25, i32 9
  tail call void @_raw_spin_lock(ptr noundef %27) #17
  %28 = getelementptr %struct.netdev_queue, ptr %26, i32 %25, i32 10
  store volatile i32 %17, ptr %28, align 4
  %29 = getelementptr %struct.netdev_queue, ptr %26, i32 %25, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %29) #17
  store volatile i32 -1, ptr %28, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !56
  %30 = load i16, ptr %27, align 4
  %31 = add i16 %30, 1
  store i16 %31, ptr %27, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !57
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !58
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !59
  %32 = add nuw i32 %25, 1
  %33 = load i32, ptr %19, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %24, label %35

35:                                               ; preds = %24, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !56
  %36 = load i16, ptr %18, align 4
  %37 = add i16 %36, 1
  store i16 %37, ptr %18, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !57
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !58
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !59
  tail call fastcc void @local_bh_enable() #17
  %38 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %39 = load ptr, ptr %38, align 8
  tail call void @phy_stop(ptr noundef %39) #17
  %40 = getelementptr i8, ptr %0, i32 1824
  tail call void @napi_disable(ptr noundef %40) #17
  %41 = getelementptr i8, ptr %0, i32 1608
  tail call void @napi_disable(ptr noundef %41) #17
  tail call fastcc void @ave_desc_switch(ptr noundef %0, i32 noundef 3)
  %42 = getelementptr i8, ptr %0, i32 2060
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %75, label %45

45:                                               ; preds = %35
  %46 = getelementptr i8, ptr %0, i32 2076
  %47 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 111, i32 1
  br label %48

48:                                               ; preds = %71, %45
  %49 = phi i32 [ %43, %45 ], [ %72, %71 ]
  %50 = phi i32 [ 0, %45 ], [ %73, %71 ]
  %51 = load ptr, ptr %46, align 4
  %52 = getelementptr %struct.ave_desc, ptr %51, i32 %50
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %71, label %55

55:                                               ; preds = %48
  %56 = getelementptr %struct.ave_desc, ptr %51, i32 %50, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %66, label %59

59:                                               ; preds = %55
  %60 = load ptr, ptr %47, align 4
  %61 = getelementptr %struct.ave_desc, ptr %51, i32 %50, i32 2
  %62 = load i32, ptr %61, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %60, i32 noundef %57, i32 noundef %62, i32 noundef 1, i32 noundef 0) #17
  store i32 0, ptr %56, align 4
  %63 = load ptr, ptr %46, align 4
  %64 = getelementptr %struct.ave_desc, ptr %63, i32 %50
  %65 = load ptr, ptr %64, align 4
  br label %66

66:                                               ; preds = %59, %55
  %67 = phi ptr [ %53, %55 ], [ %65, %59 ]
  tail call void @__dev_kfree_skb_any(ptr noundef %67, i32 noundef 1) #17
  %68 = load ptr, ptr %46, align 4
  %69 = getelementptr %struct.ave_desc, ptr %68, i32 %50
  store ptr null, ptr %69, align 4
  %70 = load i32, ptr %42, align 4
  br label %71

71:                                               ; preds = %66, %48
  %72 = phi i32 [ %49, %48 ], [ %70, %66 ]
  %73 = add nuw i32 %50, 1
  %74 = icmp ult i32 %73, %72
  br i1 %74, label %48, label %75

75:                                               ; preds = %71, %35
  %76 = getelementptr i8, ptr %0, i32 2068
  store i32 0, ptr %76, align 4
  %77 = getelementptr i8, ptr %0, i32 2072
  store i32 0, ptr %77, align 4
  %78 = getelementptr i8, ptr %0, i32 2040
  %79 = load i32, ptr %78, align 8
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %111, label %81

81:                                               ; preds = %75
  %82 = getelementptr i8, ptr %0, i32 2056
  %83 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 111, i32 1
  br label %84

84:                                               ; preds = %107, %81
  %85 = phi i32 [ %79, %81 ], [ %108, %107 ]
  %86 = phi i32 [ 0, %81 ], [ %109, %107 ]
  %87 = load ptr, ptr %82, align 8
  %88 = getelementptr %struct.ave_desc, ptr %87, i32 %86
  %89 = load ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %107, label %91

91:                                               ; preds = %84
  %92 = getelementptr %struct.ave_desc, ptr %87, i32 %86, i32 1
  %93 = load i32, ptr %92, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %102, label %95

95:                                               ; preds = %91
  %96 = load ptr, ptr %83, align 4
  %97 = getelementptr %struct.ave_desc, ptr %87, i32 %86, i32 2
  %98 = load i32, ptr %97, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %96, i32 noundef %93, i32 noundef %98, i32 noundef 2, i32 noundef 0) #17
  store i32 0, ptr %92, align 4
  %99 = load ptr, ptr %82, align 8
  %100 = getelementptr %struct.ave_desc, ptr %99, i32 %86
  %101 = load ptr, ptr %100, align 4
  br label %102

102:                                              ; preds = %95, %91
  %103 = phi ptr [ %89, %91 ], [ %101, %95 ]
  tail call void @__dev_kfree_skb_any(ptr noundef %103, i32 noundef 1) #17
  %104 = load ptr, ptr %82, align 8
  %105 = getelementptr %struct.ave_desc, ptr %104, i32 %86
  store ptr null, ptr %105, align 4
  %106 = load i32, ptr %78, align 8
  br label %107

107:                                              ; preds = %102, %84
  %108 = phi i32 [ %85, %84 ], [ %106, %102 ]
  %109 = add nuw i32 %86, 1
  %110 = icmp ult i32 %109, %108
  br i1 %110, label %84, label %111

111:                                              ; preds = %107, %75
  %112 = getelementptr i8, ptr %0, i32 2048
  store i32 0, ptr %112, align 8
  %113 = getelementptr i8, ptr %0, i32 2052
  store i32 0, ptr %113, align 4
  %114 = getelementptr i8, ptr %0, i32 2076
  %115 = load ptr, ptr %114, align 4
  tail call void @kfree(ptr noundef %115) #17
  %116 = getelementptr i8, ptr %0, i32 2056
  %117 = load ptr, ptr %116, align 8
  tail call void @kfree(ptr noundef %117) #17
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ave_start_xmit(ptr noundef %0, ptr nocapture noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr i8, ptr %1, i32 1408
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #17
  store i32 0, ptr %3, align 4, !annotation !8
  %5 = getelementptr i8, ptr %1, i32 2060
  %6 = getelementptr i8, ptr %1, i32 2068
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr i8, ptr %1, i32 2072
  %9 = load i32, ptr %8, align 4
  %10 = load i32, ptr %5, align 4
  %11 = xor i32 %7, -1
  %12 = add i32 %9, %11
  %13 = add i32 %12, %10
  %14 = urem i32 %13, %10
  %15 = icmp slt i32 %14, 1
  br i1 %15, label %16, label %20, !prof !9

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 87
  %18 = load ptr, ptr %17, align 64
  %19 = getelementptr inbounds %struct.netdev_queue, ptr %18, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %19) #17
  br label %98

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %22 = load i32, ptr %21, align 8
  %23 = icmp ult i32 %22, 60
  br i1 %23, label %24, label %43, !prof !9

24:                                               ; preds = %20
  %25 = sub nuw nsw i32 60, %22
  %26 = tail call i32 @__skb_pad(ptr noundef %0, i32 noundef %25, i1 noundef zeroext true) #17
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32, !prof !32

32:                                               ; preds = %28
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #17, !srcloc !60
  unreachable

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr i8, ptr %35, i32 %25
  store ptr %36, ptr %34, align 8
  %37 = load i32, ptr %21, align 8
  %38 = add i32 %37, %25
  store i32 %38, ptr %21, align 8
  br label %43

39:                                               ; preds = %24
  %40 = getelementptr i8, ptr %1, i32 1576
  %41 = load i64, ptr %40, align 8
  %42 = add i64 %41, 1
  store i64 %42, ptr %40, align 8
  br label %98

43:                                               ; preds = %33, %20
  %44 = phi i32 [ %38, %33 ], [ %22, %20 ]
  %45 = getelementptr i8, ptr %1, i32 2076
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr %struct.ave_desc, ptr %46, i32 %7
  %48 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %49 = load ptr, ptr %48, align 4
  %50 = call fastcc i32 @ave_dma_map(ptr noundef %1, ptr noundef %47, ptr noundef %49, i32 noundef %44, i32 noundef 1, ptr noundef nonnull %3)
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %43
  tail call void @__dev_kfree_skb_any(ptr noundef %0, i32 noundef 1) #17
  %53 = getelementptr i8, ptr %1, i32 1576
  %54 = load i64, ptr %53, align 8
  %55 = add i64 %54, 1
  store i64 %55, ptr %53, align 8
  br label %98

56:                                               ; preds = %43
  %57 = load ptr, ptr %45, align 4
  %58 = getelementptr %struct.ave_desc, ptr %57, i32 %7
  store ptr %0, ptr %58, align 4
  %59 = load i32, ptr %3, align 4
  %60 = getelementptr i8, ptr %1, i32 2064
  %61 = load i32, ptr %60, align 4
  %62 = getelementptr i8, ptr %1, i32 1420
  %63 = load i32, ptr %62, align 4
  %64 = mul i32 %63, %7
  %65 = add i32 %61, 4
  %66 = add i32 %65, %64
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !34
  tail call void @arm_heavy_mb() #17
  %67 = load ptr, ptr %4, align 8
  %68 = getelementptr i8, ptr %67, i32 %66
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %59) #17, !srcloc !14
  %69 = getelementptr i8, ptr %1, i32 2092
  %70 = load ptr, ptr %69, align 4
  %71 = load i8, ptr %70, align 4, !range !10
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %81, label %73

73:                                               ; preds = %56
  %74 = load i32, ptr %60, align 4
  %75 = load i32, ptr %62, align 4
  %76 = mul i32 %75, %7
  %77 = add i32 %74, 8
  %78 = add i32 %77, %76
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !34
  tail call void @arm_heavy_mb() #17
  %79 = load ptr, ptr %4, align 8
  %80 = getelementptr i8, ptr %79, i32 %78
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %80, i32 0) #17, !srcloc !14
  br label %81

81:                                               ; preds = %73, %56
  %82 = load i32, ptr %21, align 8
  %83 = and i32 %82, 65535
  %84 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %85 = load i16, ptr %84, align 8
  %86 = and i16 %85, 64
  %87 = icmp eq i16 %86, 0
  %88 = select i1 %87, i32 -1241513984, i32 -1509949440
  %89 = or i32 %88, %83
  %90 = load i32, ptr %60, align 4
  %91 = load i32, ptr %62, align 4
  %92 = mul i32 %91, %7
  %93 = add i32 %92, %90
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !34
  tail call void @arm_heavy_mb() #17
  %94 = load ptr, ptr %4, align 8
  %95 = getelementptr i8, ptr %94, i32 %93
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %95, i32 %89) #17, !srcloc !14
  %96 = add i32 %7, 1
  %97 = urem i32 %96, %10
  store i32 %97, ptr %6, align 4
  br label %98

98:                                               ; preds = %81, %52, %39, %16
  %99 = phi i32 [ 16, %16 ], [ 0, %39 ], [ 0, %52 ], [ 0, %81 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  ret i32 %99
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ave_set_rx_mode(ptr noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 1408
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 61
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 61, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = load ptr, ptr %2, align 8
  %7 = getelementptr i8, ptr %6, i32 516
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #17, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !61
  %9 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 14
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 256
  %12 = icmp eq i32 %11, 0
  %13 = icmp ne i32 %5, 0
  %14 = select i1 %12, i1 %13, i1 false
  %15 = and i32 %8, -524289
  %16 = select i1 %14, i32 524288, i32 0
  %17 = or i32 %16, %15
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !62
  tail call void @arm_heavy_mb() #17
  %18 = load ptr, ptr %2, align 8
  %19 = getelementptr i8, ptr %18, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #17, !srcloc !14
  %20 = load i32, ptr %9, align 8
  %21 = and i32 %20, 512
  %22 = icmp ne i32 %21, 0
  %23 = icmp sgt i32 %5, 7
  %24 = select i1 %22, i1 true, i1 %23
  br i1 %24, label %72, label %25

25:                                               ; preds = %1
  %26 = load ptr, ptr %2, align 8
  %27 = getelementptr i8, ptr %26, i32 4092
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #17, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !38
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !39
  tail call void @arm_heavy_mb() #17
  %29 = and i32 %28, -2049
  %30 = load ptr, ptr %2, align 8
  %31 = getelementptr i8, ptr %30, i32 4092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %29) #17, !srcloc !14
  %32 = load ptr, ptr %2, align 8
  %33 = getelementptr i8, ptr %32, i32 4092
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #17, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !38
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !39
  tail call void @arm_heavy_mb() #17
  %35 = and i32 %34, -4097
  %36 = load ptr, ptr %2, align 8
  %37 = getelementptr i8, ptr %36, i32 4092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %35) #17, !srcloc !14
  %38 = load ptr, ptr %2, align 8
  %39 = getelementptr i8, ptr %38, i32 4092
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #17, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !38
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !39
  tail call void @arm_heavy_mb() #17
  %41 = and i32 %40, -8193
  %42 = load ptr, ptr %2, align 8
  %43 = getelementptr i8, ptr %42, i32 4092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %41) #17, !srcloc !14
  %44 = load ptr, ptr %2, align 8
  %45 = getelementptr i8, ptr %44, i32 4092
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #17, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !38
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !39
  tail call void @arm_heavy_mb() #17
  %47 = and i32 %46, -16385
  %48 = load ptr, ptr %2, align 8
  %49 = getelementptr i8, ptr %48, i32 4092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %47) #17, !srcloc !14
  %50 = load ptr, ptr %2, align 8
  %51 = getelementptr i8, ptr %50, i32 4092
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #17, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !38
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !39
  tail call void @arm_heavy_mb() #17
  %53 = and i32 %52, -32769
  %54 = load ptr, ptr %2, align 8
  %55 = getelementptr i8, ptr %54, i32 4092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %53) #17, !srcloc !14
  %56 = load ptr, ptr %2, align 8
  %57 = getelementptr i8, ptr %56, i32 4092
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #17, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !38
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !39
  tail call void @arm_heavy_mb() #17
  %59 = and i32 %58, -65537
  %60 = load ptr, ptr %2, align 8
  %61 = getelementptr i8, ptr %60, i32 4092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 %59) #17, !srcloc !14
  %62 = load ptr, ptr %2, align 8
  %63 = getelementptr i8, ptr %62, i32 4092
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #17, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !38
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !39
  tail call void @arm_heavy_mb() #17
  %65 = and i32 %64, -131073
  %66 = load ptr, ptr %2, align 8
  %67 = getelementptr i8, ptr %66, i32 4092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 %65) #17, !srcloc !14
  %68 = load ptr, ptr %3, align 4
  %69 = icmp eq ptr %68, %3
  %70 = icmp eq i32 %5, 0
  %71 = select i1 %69, i1 true, i1 %70
  br i1 %71, label %83, label %73

72:                                               ; preds = %1
  tail call fastcc void @ave_pfsel_set_macaddr(ptr noundef %0, i32 noundef 11, ptr noundef nonnull @v4multi_macadr, i32 noundef 1)
  tail call fastcc void @ave_pfsel_set_macaddr(ptr noundef %0, i32 noundef 12, ptr noundef nonnull @v6multi_macadr, i32 noundef 1)
  br label %83

73:                                               ; preds = %73, %25
  %74 = phi ptr [ %79, %73 ], [ %68, %25 ]
  %75 = phi i32 [ %78, %73 ], [ 0, %25 ]
  %76 = add i32 %75, 11
  %77 = getelementptr inbounds %struct.netdev_hw_addr, ptr %74, i32 0, i32 2
  tail call fastcc void @ave_pfsel_set_macaddr(ptr noundef %0, i32 noundef %76, ptr noundef %77, i32 noundef 6)
  %78 = add nuw i32 %75, 1
  %79 = load ptr, ptr %74, align 4
  %80 = icmp eq ptr %79, %3
  %81 = icmp eq i32 %78, %5
  %82 = select i1 %80, i1 true, i1 %81
  br i1 %82, label %83, label %73

83:                                               ; preds = %73, %72, %25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ave_set_mac_address(ptr noundef %0, ptr noundef %1) #2 {
  %3 = tail call i32 @eth_mac_addr(ptr noundef %0, ptr noundef %1) #17
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %39

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 72
  %7 = load ptr, ptr %6, align 32
  %8 = getelementptr i8, ptr %0, i32 1408
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !46
  tail call void @arm_heavy_mb() #17
  %9 = load i8, ptr %7, align 1
  %10 = zext i8 %9 to i32
  %11 = getelementptr i8, ptr %7, i32 1
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = shl nuw nsw i32 %13, 8
  %15 = or i32 %14, %10
  %16 = getelementptr i8, ptr %7, i32 2
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  %19 = shl nuw nsw i32 %18, 16
  %20 = or i32 %15, %19
  %21 = getelementptr i8, ptr %7, i32 3
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i32
  %24 = shl nuw i32 %23, 24
  %25 = or i32 %20, %24
  %26 = load ptr, ptr %8, align 8
  %27 = getelementptr i8, ptr %26, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #17, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !47
  tail call void @arm_heavy_mb() #17
  %28 = getelementptr i8, ptr %7, i32 4
  %29 = load i8, ptr %28, align 1
  %30 = zext i8 %29 to i32
  %31 = getelementptr i8, ptr %7, i32 5
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  %34 = shl nuw nsw i32 %33, 8
  %35 = or i32 %34, %30
  %36 = load ptr, ptr %8, align 8
  %37 = getelementptr i8, ptr %36, i32 524
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %35) #17, !srcloc !14
  %38 = load ptr, ptr %6, align 32
  tail call fastcc void @ave_pfsel_set_macaddr(ptr noundef %0, i32 noundef 1, ptr noundef %38, i32 noundef 6) #17
  br label %39

39:                                               ; preds = %5, %2
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ave_ioctl(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @phy_mii_ioctl(ptr noundef %5, ptr noundef %1, i32 noundef %2) #17
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ave_get_stats64(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 1488
  %4 = getelementptr i8, ptr %0, i32 1496
  %5 = getelementptr i8, ptr %0, i32 1504
  %6 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %1, i32 0, i32 2
  br label %7

7:                                                ; preds = %15, %2
  %8 = load volatile i32, ptr %3, align 4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %11, %7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !63
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #17, !srcloc !64
  %12 = load volatile i32, ptr %3, align 4
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %11

15:                                               ; preds = %11, %7
  %16 = phi i32 [ %8, %7 ], [ %12, %11 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !65
  %17 = load i64, ptr %4, align 8
  store i64 %17, ptr %1, align 8
  %18 = load i64, ptr %5, align 8
  store i64 %18, ptr %6, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !66
  %19 = load volatile i32, ptr %3, align 4
  %20 = icmp eq i32 %19, %16
  br i1 %20, label %21, label %7

21:                                               ; preds = %15
  %22 = getelementptr i8, ptr %0, i32 1544
  %23 = getelementptr i8, ptr %0, i32 1552
  %24 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %1, i32 0, i32 1
  %25 = getelementptr i8, ptr %0, i32 1560
  %26 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %1, i32 0, i32 3
  br label %27

27:                                               ; preds = %35, %21
  %28 = load volatile i32, ptr %22, align 4
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %31, %27
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !63
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #17, !srcloc !64
  %32 = load volatile i32, ptr %22, align 4
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %31

35:                                               ; preds = %31, %27
  %36 = phi i32 [ %28, %27 ], [ %32, %31 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !65
  %37 = load i64, ptr %23, align 8
  store i64 %37, ptr %24, align 8
  %38 = load i64, ptr %25, align 8
  store i64 %38, ptr %26, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !66
  %39 = load volatile i32, ptr %22, align 4
  %40 = icmp eq i32 %39, %36
  br i1 %40, label %41, label %27

41:                                               ; preds = %35
  %42 = getelementptr i8, ptr %0, i32 1512
  %43 = load i64, ptr %42, align 8
  %44 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %1, i32 0, i32 4
  store i64 %43, ptr %44, align 8
  %45 = getelementptr i8, ptr %0, i32 1568
  %46 = load i64, ptr %45, align 8
  %47 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %1, i32 0, i32 5
  store i64 %46, ptr %47, align 8
  %48 = getelementptr i8, ptr %0, i32 1520
  %49 = load i64, ptr %48, align 8
  %50 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %1, i32 0, i32 6
  store i64 %49, ptr %50, align 8
  %51 = getelementptr i8, ptr %0, i32 1576
  %52 = load i64, ptr %51, align 8
  %53 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %1, i32 0, i32 7
  store i64 %52, ptr %53, align 8
  %54 = getelementptr i8, ptr %0, i32 1536
  %55 = load i64, ptr %54, align 8
  %56 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %1, i32 0, i32 14
  store i64 %55, ptr %56, align 8
  %57 = getelementptr i8, ptr %0, i32 1584
  %58 = load i64, ptr %57, align 8
  %59 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %1, i32 0, i32 9
  store i64 %58, ptr %59, align 8
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ave_global_reset(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr i8, ptr %0, i32 1408
  %3 = getelementptr i8, ptr %0, i32 1460
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, -9
  %6 = icmp ult i32 %5, 4
  %7 = select i1 %6, i32 -1056964608, i32 -922746880
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !67
  tail call void @arm_heavy_mb() #17
  %8 = load ptr, ptr %2, align 8
  %9 = getelementptr i8, ptr %8, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #17, !srcloc !14
  %10 = load ptr, ptr %2, align 8
  %11 = getelementptr i8, ptr %10, i32 32808
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #17, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !68
  %13 = and i32 %12, -65537
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !69
  tail call void @arm_heavy_mb() #17
  %14 = load ptr, ptr %2, align 8
  %15 = getelementptr i8, ptr %14, i32 32808
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #17, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !70
  tail call void @arm_heavy_mb() #17
  %16 = load ptr, ptr %2, align 8
  %17 = getelementptr i8, ptr %16, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 17) #17, !srcloc !14
  tail call void @msleep(i32 noundef 20) #17
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !71
  tail call void @arm_heavy_mb() #17
  %18 = load ptr, ptr %2, align 8
  %19 = getelementptr i8, ptr %18, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 1) #17, !srcloc !14
  tail call void @msleep(i32 noundef 40) #17
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !72
  tail call void @arm_heavy_mb() #17
  %20 = load ptr, ptr %2, align 8
  %21 = getelementptr i8, ptr %20, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 0) #17, !srcloc !14
  tail call void @msleep(i32 noundef 40) #17
  %22 = load ptr, ptr %2, align 8
  %23 = getelementptr i8, ptr %22, i32 32808
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #17, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !73
  %25 = or i32 %24, 65536
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !74
  tail call void @arm_heavy_mb() #17
  %26 = load ptr, ptr %2, align 8
  %27 = getelementptr i8, ptr %26, i32 32808
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #17, !srcloc !14
  %28 = load ptr, ptr %2, align 8
  %29 = getelementptr i8, ptr %28, i32 256
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #17, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !53
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !54
  tail call void @arm_heavy_mb() #17
  %31 = load ptr, ptr %2, align 8
  %32 = getelementptr i8, ptr %31, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 0) #17, !srcloc !14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_mdiobus_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_get_and_connect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ave_phy_adjust_link(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 1408
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %2, align 8
  %6 = getelementptr i8, ptr %5, i32 512
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #17, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !75
  %8 = and i32 %7, -196609
  %9 = getelementptr inbounds %struct.phy_device, ptr %4, i32 0, i32 7
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, -9
  %12 = icmp ult i32 %11, 4
  %13 = getelementptr inbounds %struct.phy_device, ptr %4, i32 0, i32 8
  %14 = load i32, ptr %13, align 8
  %15 = icmp eq i32 %14, 1000
  %16 = select i1 %12, i1 %15, i1 false
  %17 = or i32 %8, 131072
  %18 = icmp eq i32 %14, 100
  %19 = or i32 %8, 65536
  %20 = select i1 %18, i32 %19, i32 %8
  %21 = select i1 %16, i32 %17, i32 %20
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !76
  tail call void @arm_heavy_mb() #17
  %22 = load ptr, ptr %2, align 8
  %23 = getelementptr i8, ptr %22, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #17, !srcloc !14
  %24 = load i32, ptr %9, align 4
  %25 = add i32 %24, -9
  %26 = icmp ult i32 %25, 4
  br i1 %26, label %39, label %27

27:                                               ; preds = %1
  %28 = load ptr, ptr %2, align 8
  %29 = getelementptr i8, ptr %28, i32 32820
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #17, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !77
  %31 = getelementptr inbounds %struct.phy_device, ptr %4, i32 0, i32 8
  %32 = load i32, ptr %31, align 8
  %33 = icmp ne i32 %32, 10
  %34 = and i32 %30, -2
  %35 = zext i1 %33 to i32
  %36 = or i32 %34, %35
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !78
  tail call void @arm_heavy_mb() #17
  %37 = load ptr, ptr %2, align 8
  %38 = getelementptr i8, ptr %37, i32 32820
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %36) #17, !srcloc !14
  br label %39

39:                                               ; preds = %27, %1
  %40 = load ptr, ptr %2, align 8
  %41 = getelementptr i8, ptr %40, i32 516
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #17, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !79
  %43 = load ptr, ptr %2, align 8
  %44 = getelementptr i8, ptr %43, i32 512
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #17, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !80
  %46 = getelementptr inbounds %struct.phy_device, ptr %4, i32 0, i32 9
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %96, label %49

49:                                               ; preds = %39
  %50 = getelementptr inbounds %struct.phy_device, ptr %4, i32 0, i32 11
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 0
  %53 = select i1 %52, i16 0, i16 1024
  %54 = getelementptr inbounds %struct.phy_device, ptr %4, i32 0, i32 12
  %55 = load i32, ptr %54, align 8
  %56 = icmp eq i32 %55, 0
  %57 = or i16 %53, 2048
  %58 = select i1 %56, i16 %53, i16 %57
  %59 = getelementptr inbounds %struct.phy_device, ptr %4, i32 0, i32 17
  %60 = load volatile i32, ptr %59, align 4
  %61 = lshr i32 %60, 3
  %62 = and i32 %61, 1024
  %63 = load volatile i32, ptr %59, align 4
  %64 = lshr i32 %63, 3
  %65 = and i32 %64, 2048
  %66 = or i32 %65, %62
  %67 = trunc i32 %66 to i16
  %68 = and i16 %58, %67
  %69 = zext i16 %68 to i32
  %70 = and i32 %69, 1024
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %87

72:                                               ; preds = %49
  %73 = and i32 %69, 2048
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = and i32 %45, -262145
  br label %92

77:                                               ; preds = %72
  %78 = and i16 %67, 1024
  %79 = icmp eq i16 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %77
  %81 = lshr exact i16 %58, 10
  %82 = and i16 %81, 1
  %83 = zext i16 %82 to i32
  %84 = and i32 %45, -262145
  %85 = shl nuw nsw i32 %83, 18
  %86 = or i32 %85, %84
  br label %92

87:                                               ; preds = %77, %49
  %88 = phi i32 [ 0, %77 ], [ 262144, %49 ]
  %89 = and i32 %45, -262145
  %90 = or i32 %88, %89
  %91 = or i32 %42, 6291456
  br label %99

92:                                               ; preds = %80, %75
  %93 = phi i32 [ %76, %75 ], [ %86, %80 ]
  %94 = and i32 %42, -6291457
  %95 = or i32 %94, 4194304
  br label %99

96:                                               ; preds = %39
  %97 = and i32 %42, -6291457
  %98 = and i32 %45, -262145
  br label %99

99:                                               ; preds = %96, %92, %87
  %100 = phi i32 [ %91, %87 ], [ %95, %92 ], [ %97, %96 ]
  %101 = phi i32 [ %90, %87 ], [ %93, %92 ], [ %98, %96 ]
  %102 = icmp eq i32 %42, %100
  br i1 %102, label %111, label %103

103:                                              ; preds = %99
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !81
  tail call void @arm_heavy_mb() #17
  %104 = and i32 %100, -1073741825
  %105 = load ptr, ptr %2, align 8
  %106 = getelementptr i8, ptr %105, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %106, i32 %104) #17, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !82
  tail call void @arm_heavy_mb() #17
  %107 = load ptr, ptr %2, align 8
  %108 = getelementptr i8, ptr %107, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %108, i32 %101) #17, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !83
  tail call void @arm_heavy_mb() #17
  %109 = load ptr, ptr %2, align 8
  %110 = getelementptr i8, ptr %109, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %110, i32 %100) #17, !srcloc !14
  br label %111

111:                                              ; preds = %103, %99
  tail call void @phy_print_status(ptr noundef %4) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ave_ethtool_get_wol(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %1, i32 0, i32 1
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %1, i32 0, i32 2
  store i32 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @phy_ethtool_get_wol(ptr noundef nonnull %6, ptr noundef %1) #17
  br label %9

9:                                                ; preds = %8, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_wakeup_capable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_set_max_speed(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_support_asym_pause(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_attached_info(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_print_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_ethtool_get_wol(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_set_wol(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ave_irq_handler(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr i8, ptr %1, i32 1408
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 256
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #17, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !53
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !54
  tail call void @arm_heavy_mb() #17
  %7 = load ptr, ptr %3, align 8
  %8 = getelementptr i8, ptr %7, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 0) #17, !srcloc !14
  %9 = load ptr, ptr %3, align 8
  %10 = getelementptr i8, ptr %9, i32 260
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #17, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !84
  %12 = and i32 %11, 16777216
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !85
  tail call void @arm_heavy_mb() #17
  %15 = load ptr, ptr %3, align 8
  %16 = getelementptr i8, ptr %15, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 16777216) #17, !srcloc !14
  br label %17

17:                                               ; preds = %14, %2
  %18 = and i32 %11, 256
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !86
  tail call void @arm_heavy_mb() #17
  %21 = load ptr, ptr %3, align 8
  %22 = getelementptr i8, ptr %21, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 256) #17, !srcloc !14
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.19) #18
  br label %23

23:                                               ; preds = %20, %17
  %24 = and i32 %11, %6
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %86, label %26

26:                                               ; preds = %23
  %27 = and i32 %24, 128
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %58, label %29

29:                                               ; preds = %26
  %30 = getelementptr i8, ptr %1, i32 1536
  %31 = load i64, ptr %30, align 8
  %32 = add i64 %31, 1
  store i64 %32, ptr %30, align 8
  %33 = load ptr, ptr %3, align 8
  %34 = getelementptr i8, ptr %33, i32 516
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #17, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !87
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !88
  tail call void @arm_heavy_mb() #17
  %36 = and i32 %35, -1073741825
  %37 = load ptr, ptr %3, align 8
  %38 = getelementptr i8, ptr %37, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %36) #17, !srcloc !14
  tail call fastcc void @ave_desc_switch(ptr noundef %1, i32 noundef 1) #17
  %39 = getelementptr i8, ptr %1, i32 2040
  %40 = load i32, ptr %39, align 8
  %41 = tail call fastcc i32 @ave_rx_receive(ptr noundef %1, i32 noundef %40) #17
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !89
  tail call void @arm_heavy_mb() #17
  %42 = load ptr, ptr %3, align 8
  %43 = getelementptr i8, ptr %42, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 32) #17, !srcloc !14
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 10737400) #17
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !90
  tail call void @arm_heavy_mb() #17
  %45 = load ptr, ptr %3, align 8
  %46 = getelementptr i8, ptr %45, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 0) #17, !srcloc !14
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 4294960) #17
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !91
  tail call void @arm_heavy_mb() #17
  %48 = load ptr, ptr %3, align 8
  %49 = getelementptr i8, ptr %48, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 128) #17, !srcloc !14
  %50 = load ptr, ptr %3, align 8
  %51 = getelementptr i8, ptr %50, i32 768
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #17, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !92
  %53 = and i32 %52, 65519
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !93
  tail call void @arm_heavy_mb() #17
  %54 = load ptr, ptr %3, align 8
  %55 = getelementptr i8, ptr %54, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %53) #17, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !94
  tail call void @arm_heavy_mb() #17
  %56 = load ptr, ptr %3, align 8
  %57 = getelementptr i8, ptr %56, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %35) #17, !srcloc !14
  br label %86

58:                                               ; preds = %26
  %59 = and i32 %24, 64
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %58
  %62 = getelementptr i8, ptr %1, i32 1520
  %63 = load i64, ptr %62, align 8
  %64 = add i64 %63, 1
  store i64 %64, ptr %62, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !95
  tail call void @arm_heavy_mb() #17
  %65 = load ptr, ptr %3, align 8
  %66 = getelementptr i8, ptr %65, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 64) #17, !srcloc !14
  br label %67

67:                                               ; preds = %61, %58
  %68 = and i32 %24, 32
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %67
  %71 = getelementptr i8, ptr %1, i32 1608
  %72 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %71) #17
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  tail call void @__napi_schedule(ptr noundef %71) #17
  br label %74

74:                                               ; preds = %73, %70
  %75 = and i32 %6, -33
  br label %76

76:                                               ; preds = %74, %67
  %77 = phi i32 [ %75, %74 ], [ %6, %67 ]
  %78 = and i32 %24, 65536
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %86, label %80

80:                                               ; preds = %76
  %81 = getelementptr i8, ptr %1, i32 1824
  %82 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %81) #17
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  tail call void @__napi_schedule(ptr noundef %81) #17
  br label %84

84:                                               ; preds = %83, %80
  %85 = and i32 %77, -65537
  br label %86

86:                                               ; preds = %84, %76, %29, %23
  %87 = phi i32 [ %6, %29 ], [ %85, %84 ], [ %77, %76 ], [ %6, %23 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !52
  tail call void @arm_heavy_mb() #17
  %88 = load ptr, ptr %3, align 8
  %89 = getelementptr i8, ptr %88, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %89, i32 %87) #17, !srcloc !14
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ave_rxdesc_prepare(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr i8, ptr %0, i32 1408
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #17
  store i32 0, ptr %3, align 4, !annotation !8
  %5 = getelementptr i8, ptr %0, i32 2056
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr %struct.ave_desc, ptr %6, i32 %1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %21

10:                                               ; preds = %2
  %11 = tail call ptr @__netdev_alloc_skb(ptr noundef %0, i32 noundef 1518, i32 noundef 2592) #17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.20) #18
  br label %69

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 17
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 2
  store ptr %17, ptr %15, align 4
  %18 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 14
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr i8, ptr %19, i32 2
  store ptr %20, ptr %18, align 8
  br label %21

21:                                               ; preds = %14, %2
  %22 = phi ptr [ %8, %2 ], [ %11, %14 ]
  %23 = getelementptr i8, ptr %0, i32 2044
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr i8, ptr %0, i32 1420
  %26 = load i32, ptr %25, align 4
  %27 = mul i32 %26, %1
  %28 = add i32 %27, %24
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !34
  tail call void @arm_heavy_mb() #17
  %29 = load ptr, ptr %4, align 8
  %30 = getelementptr i8, ptr %29, i32 %28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 -1610612736) #17, !srcloc !14
  %31 = load ptr, ptr %5, align 8
  %32 = getelementptr %struct.ave_desc, ptr %31, i32 %1
  %33 = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 17
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr i8, ptr %34, i32 -2
  %36 = call fastcc i32 @ave_dma_map(ptr noundef %0, ptr noundef %32, ptr noundef %35, i32 noundef 1520, i32 noundef 2, ptr noundef nonnull %3)
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %21
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.21) #18
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %22, i32 noundef 1) #17
  br label %69

39:                                               ; preds = %21
  %40 = load ptr, ptr %5, align 8
  %41 = getelementptr %struct.ave_desc, ptr %40, i32 %1
  store ptr %22, ptr %41, align 4
  %42 = load i32, ptr %3, align 4
  %43 = load i32, ptr %23, align 4
  %44 = load i32, ptr %25, align 4
  %45 = mul i32 %44, %1
  %46 = add i32 %43, 4
  %47 = add i32 %46, %45
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !34
  tail call void @arm_heavy_mb() #17
  %48 = load ptr, ptr %4, align 8
  %49 = getelementptr i8, ptr %48, i32 %47
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %42) #17, !srcloc !14
  %50 = getelementptr i8, ptr %0, i32 2092
  %51 = load ptr, ptr %50, align 4
  %52 = load i8, ptr %51, align 4, !range !10
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %39
  %55 = load i32, ptr %23, align 4
  %56 = load i32, ptr %25, align 4
  %57 = mul i32 %56, %1
  %58 = add i32 %55, 8
  %59 = add i32 %58, %57
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !34
  tail call void @arm_heavy_mb() #17
  %60 = load ptr, ptr %4, align 8
  %61 = getelementptr i8, ptr %60, i32 %59
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 0) #17, !srcloc !14
  br label %62

62:                                               ; preds = %54, %39
  %63 = load i32, ptr %23, align 4
  %64 = load i32, ptr %25, align 4
  %65 = mul i32 %64, %1
  %66 = add i32 %65, %63
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !34
  tail call void @arm_heavy_mb() #17
  %67 = load ptr, ptr %4, align 8
  %68 = getelementptr i8, ptr %67, i32 %66
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 536872430) #17, !srcloc !14
  br label %69

69:                                               ; preds = %62, %38, %13
  %70 = phi i32 [ %36, %38 ], [ 0, %62 ], [ -12, %13 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  ret i32 %70
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ave_desc_switch(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = getelementptr i8, ptr %0, i32 1408
  switch i32 %1, label %70 [
    i32 2, label %4
    i32 3, label %7
    i32 1, label %30
    i32 0, label %63
  ]

4:                                                ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !37
  tail call void @arm_heavy_mb() #17
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr i8, ptr %5, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 257) #17, !srcloc !14
  br label %70

7:                                                ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !96
  tail call void @arm_heavy_mb() #17
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr i8, ptr %8, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 0) #17, !srcloc !14
  %10 = tail call i64 @ktime_get() #17
  %11 = add i64 %10, 15000000
  %12 = load ptr, ptr %3, align 8
  %13 = getelementptr i8, ptr %12, i32 768
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #17, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !97
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %70, label %16

16:                                               ; preds = %24, %7
  %17 = tail call i64 @ktime_get() #17
  %18 = icmp sgt i64 %17, %11
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load ptr, ptr %3, align 8
  %21 = getelementptr i8, ptr %20, i32 768
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #17, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !98
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %70, label %29

24:                                               ; preds = %16
  tail call void @usleep_range_state(i32 noundef 38, i32 noundef 150, i32 noundef 2) #17
  %25 = load ptr, ptr %3, align 8
  %26 = getelementptr i8, ptr %25, i32 768
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #17, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !97
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %70, label %16

29:                                               ; preds = %19
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.24) #18
  br label %70

30:                                               ; preds = %2
  %31 = load ptr, ptr %3, align 8
  %32 = getelementptr i8, ptr %31, i32 768
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #17, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !99
  %34 = and i32 %33, 65519
  %35 = or i32 %34, 16
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !100
  tail call void @arm_heavy_mb() #17
  %36 = load ptr, ptr %3, align 8
  %37 = getelementptr i8, ptr %36, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %35) #17, !srcloc !14
  %38 = tail call i64 @ktime_get() #17
  %39 = add i64 %38, 150000000
  %40 = load ptr, ptr %3, align 8
  %41 = getelementptr i8, ptr %40, i32 768
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #17, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !101
  %43 = and i32 %42, 1048576
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %52, %30
  %46 = tail call i64 @ktime_get() #17
  %47 = icmp sgt i64 %46, %39
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load ptr, ptr %3, align 8
  %50 = getelementptr i8, ptr %49, i32 768
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #17, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !102
  br label %58

52:                                               ; preds = %45
  tail call void @usleep_range_state(i32 noundef 38, i32 noundef 150, i32 noundef 2) #17
  %53 = load ptr, ptr %3, align 8
  %54 = getelementptr i8, ptr %53, i32 768
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #17, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !101
  %56 = and i32 %55, 1048576
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %45, label %58

58:                                               ; preds = %52, %48, %30
  %59 = phi i32 [ %51, %48 ], [ %42, %30 ], [ %55, %52 ]
  %60 = and i32 %59, 1048576
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %58
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.25) #18
  br label %70

63:                                               ; preds = %2
  %64 = load ptr, ptr %3, align 8
  %65 = getelementptr i8, ptr %64, i32 768
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #17, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !92
  %67 = and i32 %66, 65519
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !93
  tail call void @arm_heavy_mb() #17
  %68 = load ptr, ptr %3, align 8
  %69 = getelementptr i8, ptr %68, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %67) #17, !srcloc !14
  br label %70

70:                                               ; preds = %63, %62, %58, %29, %24, %19, %7, %4, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_start_aneg(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ave_rx_receive(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = getelementptr i8, ptr %0, i32 1408
  %4 = getelementptr i8, ptr %0, i32 2040
  %5 = getelementptr i8, ptr %0, i32 2048
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr i8, ptr %0, i32 2052
  %8 = load i32, ptr %7, align 4
  %9 = load i32, ptr %4, align 8
  %10 = getelementptr i8, ptr %0, i32 2044
  %11 = icmp sgt i32 %1, 0
  br i1 %11, label %12, label %80

12:                                               ; preds = %2
  %13 = xor i32 %8, -1
  %14 = add i32 %6, %13
  %15 = add i32 %14, %9
  %16 = urem i32 %15, %9
  %17 = getelementptr i8, ptr %0, i32 1420
  %18 = getelementptr i8, ptr %0, i32 2056
  %19 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 111, i32 1
  %20 = getelementptr i8, ptr %0, i32 1512
  br label %21

21:                                               ; preds = %73, %12
  %22 = phi i32 [ 0, %12 ], [ %78, %73 ]
  %23 = phi i32 [ %16, %12 ], [ %27, %73 ]
  %24 = phi i32 [ %6, %12 ], [ %77, %73 ]
  %25 = phi i32 [ 0, %12 ], [ %75, %73 ]
  %26 = phi i32 [ 0, %12 ], [ %74, %73 ]
  %27 = add i32 %23, -1
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %80, label %29

29:                                               ; preds = %21
  %30 = load i32, ptr %10, align 4
  %31 = load i32, ptr %17, align 4
  %32 = mul i32 %31, %24
  %33 = add i32 %32, %30
  %34 = load ptr, ptr %3, align 8
  %35 = getelementptr i8, ptr %34, i32 %33
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #17, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !29
  %37 = icmp sgt i32 %36, -1
  br i1 %37, label %80, label %38

38:                                               ; preds = %29
  %39 = and i32 %36, 134217728
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i64, ptr %20, align 8
  %43 = add i64 %42, 1
  store i64 %43, ptr %20, align 8
  br label %73

44:                                               ; preds = %38
  %45 = and i32 %36, 2047
  %46 = load ptr, ptr %18, align 8
  %47 = getelementptr %struct.ave_desc, ptr %46, i32 %24
  %48 = load ptr, ptr %47, align 4
  store ptr null, ptr %47, align 4
  %49 = load ptr, ptr %18, align 8
  %50 = getelementptr %struct.ave_desc, ptr %49, i32 %24, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %44
  %54 = load ptr, ptr %19, align 4
  %55 = getelementptr %struct.ave_desc, ptr %49, i32 %24, i32 2
  %56 = load i32, ptr %55, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %54, i32 noundef %51, i32 noundef %56, i32 noundef 2, i32 noundef 0) #17
  store i32 0, ptr %50, align 4
  br label %57

57:                                               ; preds = %53, %44
  %58 = getelementptr inbounds %struct.anon.41, ptr %48, i32 0, i32 2
  store ptr %0, ptr %58, align 8
  %59 = tail call ptr @skb_put(ptr noundef %48, i32 noundef %45) #17
  %60 = tail call zeroext i16 @eth_type_trans(ptr noundef %48, ptr noundef %0) #17
  %61 = getelementptr inbounds %struct.sk_buff, ptr %48, i32 0, i32 13, i32 0, i32 16
  store i16 %60, ptr %61, align 8
  %62 = and i32 %36, 3145728
  %63 = icmp eq i32 %62, 2097152
  br i1 %63, label %64, label %69

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.sk_buff, ptr %48, i32 0, i32 13
  %66 = load i16, ptr %65, align 8
  %67 = and i16 %66, -97
  %68 = or i16 %67, 32
  store i16 %68, ptr %65, align 8
  br label %69

69:                                               ; preds = %64, %57
  %70 = add i32 %26, 1
  %71 = add i32 %45, %25
  %72 = tail call i32 @netif_receive_skb(ptr noundef %48) #17
  br label %73

73:                                               ; preds = %69, %41
  %74 = phi i32 [ %70, %69 ], [ %26, %41 ]
  %75 = phi i32 [ %71, %69 ], [ %25, %41 ]
  %76 = add i32 %24, 1
  %77 = urem i32 %76, %9
  %78 = add nuw nsw i32 %22, 1
  %79 = icmp eq i32 %78, %1
  br i1 %79, label %80, label %21

80:                                               ; preds = %73, %29, %21, %2
  %81 = phi i32 [ 0, %2 ], [ %26, %29 ], [ %26, %21 ], [ %74, %73 ]
  %82 = phi i32 [ 0, %2 ], [ %25, %29 ], [ %25, %21 ], [ %75, %73 ]
  %83 = phi i32 [ %6, %2 ], [ %24, %29 ], [ %24, %21 ], [ %77, %73 ]
  %84 = phi i32 [ 0, %2 ], [ %22, %29 ], [ %22, %21 ], [ %1, %73 ]
  store i32 %83, ptr %5, align 8
  %85 = getelementptr i8, ptr %0, i32 1488
  %86 = load i32, ptr %85, align 4
  %87 = add i32 %86, 1
  store i32 %87, ptr %85, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #17, !srcloc !30
  %88 = zext i32 %81 to i64
  %89 = getelementptr i8, ptr %0, i32 1496
  %90 = load i64, ptr %89, align 8
  %91 = add i64 %90, %88
  store i64 %91, ptr %89, align 8
  %92 = zext i32 %82 to i64
  %93 = getelementptr i8, ptr %0, i32 1504
  %94 = load i64, ptr %93, align 8
  %95 = add i64 %94, %92
  store i64 %95, ptr %93, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #17, !srcloc !31
  %96 = load i32, ptr %85, align 4
  %97 = add i32 %96, 1
  store i32 %97, ptr %85, align 4
  %98 = icmp eq i32 %83, %8
  br i1 %98, label %107, label %99

99:                                               ; preds = %103, %80
  %100 = phi i32 [ %105, %103 ], [ %8, %80 ]
  %101 = tail call fastcc i32 @ave_rxdesc_prepare(ptr noundef %0, i32 noundef %100)
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %99
  %104 = add i32 %100, 1
  %105 = urem i32 %104, %9
  %106 = icmp eq i32 %83, %105
  br i1 %106, label %107, label %99

107:                                              ; preds = %103, %99, %80
  %108 = phi i32 [ %8, %80 ], [ %100, %99 ], [ %83, %103 ]
  store i32 %108, ptr %7, align 4
  ret i32 %84
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_receive_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ave_dma_map(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef writeonly %5) unnamed_addr #2 {
  %7 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 111, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %2) #17
  %10 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %11 = xor i1 %10, true
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %22, !prof !9

13:                                               ; preds = %6
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %14 = tail call ptr @dev_driver_string(ptr noundef %8) #17
  %15 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load ptr, ptr %8, align 4
  br label %20

20:                                               ; preds = %18, %13
  %21 = phi ptr [ %19, %18 ], [ %16, %13 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.23, ptr noundef %14, ptr noundef %21) #17
  br label %22

22:                                               ; preds = %20, %6
  br i1 %9, label %35, label %23

23:                                               ; preds = %22
  %24 = load ptr, ptr @mem_map, align 4
  %25 = ptrtoint ptr %2 to i32
  %26 = add i32 %25, 1073741824
  %27 = lshr i32 %26, 12
  %28 = getelementptr %struct.page, ptr %24, i32 %27
  %29 = and i32 %25, 4095
  %30 = tail call i32 @dma_map_page_attrs(ptr noundef %8, ptr noundef %28, i32 noundef %29, i32 noundef %3, i32 noundef %4, i32 noundef 0) #17
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %35, label %32

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct.ave_desc, ptr %1, i32 0, i32 1
  store i32 %30, ptr %33, align 4
  %34 = getelementptr inbounds %struct.ave_desc, ptr %1, i32 0, i32 2
  store i32 %3, ptr %34, align 4
  store i32 %30, ptr %5, align 4
  br label %35

35:                                               ; preds = %32, %23, %22
  %36 = phi i32 [ 0, %32 ], [ -12, %23 ], [ -12, %22 ]
  ret i32 %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ave_pfsel_set_macaddr(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #2 {
  %5 = icmp ugt i32 %1, 17
  br i1 %5, label %6, label %7, !prof !9

6:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1016, i32 noundef 9, ptr noundef null) #17
  br label %71

7:                                                ; preds = %4
  %8 = getelementptr i8, ptr %0, i32 1408
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr i8, ptr %9, i32 4092
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #17, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !38
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !39
  tail call void @arm_heavy_mb() #17
  %12 = shl nuw nsw i32 1, %1
  %13 = xor i32 %12, -1
  %14 = and i32 %11, %13
  %15 = load ptr, ptr %8, align 8
  %16 = getelementptr i8, ptr %15, i32 4092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #17, !srcloc !14
  %17 = shl nuw nsw i32 %1, 6
  %18 = add nuw nsw i32 %17, 2048
  %19 = add nuw nsw i32 %17, 2052
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !46
  tail call void @arm_heavy_mb() #17
  %20 = load i8, ptr %2, align 1
  %21 = zext i8 %20 to i32
  %22 = getelementptr i8, ptr %2, i32 1
  %23 = load i8, ptr %22, align 1
  %24 = zext i8 %23 to i32
  %25 = shl nuw nsw i32 %24, 8
  %26 = or i32 %25, %21
  %27 = getelementptr i8, ptr %2, i32 2
  %28 = load i8, ptr %27, align 1
  %29 = zext i8 %28 to i32
  %30 = shl nuw nsw i32 %29, 16
  %31 = or i32 %26, %30
  %32 = getelementptr i8, ptr %2, i32 3
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i32
  %35 = shl nuw i32 %34, 24
  %36 = or i32 %31, %35
  %37 = load ptr, ptr %8, align 8
  %38 = getelementptr i8, ptr %37, i32 %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %36) #17, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !47
  tail call void @arm_heavy_mb() #17
  %39 = getelementptr i8, ptr %2, i32 4
  %40 = load i8, ptr %39, align 1
  %41 = zext i8 %40 to i32
  %42 = getelementptr i8, ptr %2, i32 5
  %43 = load i8, ptr %42, align 1
  %44 = zext i8 %43 to i32
  %45 = shl nuw nsw i32 %44, 8
  %46 = or i32 %45, %41
  %47 = load ptr, ptr %8, align 8
  %48 = getelementptr i8, ptr %47, i32 %19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %46) #17, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !103
  tail call void @arm_heavy_mb() #17
  %49 = shl nsw i32 -1, %3
  %50 = and i32 %49, -193
  %51 = load ptr, ptr %8, align 8
  %52 = shl nuw nsw i32 %1, 3
  %53 = add nuw nsw i32 %52, 3328
  %54 = getelementptr i8, ptr %51, i32 %53
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %50) #17, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !104
  tail call void @arm_heavy_mb() #17
  %55 = load ptr, ptr %8, align 8
  %56 = getelementptr i8, ptr %55, i32 %53
  %57 = getelementptr i8, ptr %56, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 67108863) #17, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !105
  tail call void @arm_heavy_mb() #17
  %58 = load ptr, ptr %8, align 8
  %59 = shl nuw nsw i32 %1, 2
  %60 = add nuw nsw i32 %59, 3584
  %61 = getelementptr i8, ptr %58, i32 %60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 65535) #17, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !106
  tail call void @arm_heavy_mb() #17
  %62 = load ptr, ptr %8, align 8
  %63 = add nuw nsw i32 %59, 3840
  %64 = getelementptr i8, ptr %62, i32 %63
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 0) #17, !srcloc !14
  %65 = load ptr, ptr %8, align 8
  %66 = getelementptr i8, ptr %65, i32 4092
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %66) #17, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !44
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !45
  tail call void @arm_heavy_mb() #17
  %68 = or i32 %67, %12
  %69 = load ptr, ptr %8, align 8
  %70 = getelementptr i8, ptr %69, i32 4092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 %68) #17, !srcloc !14
  br label %71

71:                                               ; preds = %7, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #6 {
  br label %1

1:                                                ; preds = %0
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %1) to i32), i32 noundef 512) #17
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__skb_pad(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_mii_ioctl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ave_ethtool_get_drvinfo(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 111, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ethtool_drvinfo, ptr %1, i32 0, i32 1
  %6 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 6
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @strlcpy(ptr noundef %5, ptr noundef %8, i32 noundef 32) #17
  %10 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load ptr, ptr %4, align 4
  br label %15

15:                                               ; preds = %13, %2
  %16 = phi ptr [ %14, %13 ], [ %11, %2 ]
  %17 = getelementptr inbounds %struct.ethtool_drvinfo, ptr %1, i32 0, i32 4
  %18 = tail call i32 @strlcpy(ptr noundef %17, ptr noundef %16, i32 noundef 32) #17
  %19 = getelementptr inbounds %struct.ethtool_drvinfo, ptr %1, i32 0, i32 3
  %20 = getelementptr i8, ptr %0, i32 1408
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr i8, ptr %21, i32 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #17, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !33
  %24 = lshr i32 %23, 8
  %25 = and i32 %24, 255
  %26 = and i32 %23, 255
  %27 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %19, i32 noundef 32, ptr noundef nonnull @.str.28, i32 noundef %25, i32 noundef %26) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ave_ethtool_set_wol(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %1, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 80
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %6
  %12 = tail call i32 @phy_ethtool_set_wol(ptr noundef nonnull %4, ptr noundef %1) #17
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 111
  %16 = load i32, ptr %7, align 4
  %17 = icmp ne i32 %16, 0
  %18 = tail call i32 @device_set_wakeup_enable(ptr noundef %15, i1 noundef zeroext %17) #17
  br label %19

19:                                               ; preds = %14, %11, %6, %2
  %20 = phi i32 [ 0, %14 ], [ %12, %11 ], [ -95, %6 ], [ -95, %2 ]
  ret i32 %20
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @ave_ethtool_get_msglevel(ptr nocapture noundef readonly %0) #13 {
  %2 = getelementptr i8, ptr %0, i32 1424
  %3 = load i32, ptr %2, align 8
  ret i32 %3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @ave_ethtool_set_msglevel(ptr nocapture noundef writeonly %0, i32 noundef %1) #14 {
  %3 = getelementptr i8, ptr %0, i32 1424
  store i32 %1, ptr %3, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_nway_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @ave_ethtool_get_pauseparam(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #15 {
  %3 = getelementptr i8, ptr %0, i32 2080
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %1, i32 0, i32 1
  store i32 %4, ptr %5, align 4
  %6 = getelementptr i8, ptr %0, i32 2084
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %1, i32 0, i32 2
  store i32 %7, ptr %8, align 4
  %9 = getelementptr i8, ptr %0, i32 2088
  %10 = load i32, ptr %9, align 8
  %11 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %1, i32 0, i32 3
  store i32 %10, ptr %11, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ave_ethtool_set_pauseparam(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %1, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr i8, ptr %0, i32 2080
  store i32 %8, ptr %9, align 8
  %10 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %1, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr i8, ptr %0, i32 2084
  store i32 %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %1, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr i8, ptr %0, i32 2088
  store i32 %14, ptr %15, align 8
  %16 = load i32, ptr %10, align 4
  %17 = icmp ne i32 %16, 0
  %18 = load i32, ptr %13, align 4
  %19 = icmp ne i32 %18, 0
  tail call void @phy_set_asym_pause(ptr noundef nonnull %4, i1 noundef zeroext %17, i1 noundef zeroext %19) #17
  br label %20

20:                                               ; preds = %6, %2
  %21 = phi i32 [ 0, %6 ], [ -22, %2 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_get_link_ksettings(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_set_link_ksettings(ptr noundef, ptr noundef) #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_set_wakeup_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_set_asym_pause(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_mdiobus_alloc_size(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netif_napi_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @ave_pro4_get_pinmode(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2) #14 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %18

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.ave_private, ptr %0, i32 0, i32 13
  store i32 1, ptr %6, align 4
  %7 = add i32 %1, -2
  %8 = icmp ult i32 %7, 11
  br i1 %8, label %9, label %18

9:                                                ; preds = %5
  %10 = trunc i32 %7 to i16
  %11 = lshr i16 1953, %10
  %12 = and i16 %11, 1
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds [11 x i32], ptr @switch.table.ave_pro4_get_pinmode, i32 0, i32 %7
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.ave_private, ptr %0, i32 0, i32 14
  store i32 %16, ptr %17, align 8
  br label %18

18:                                               ; preds = %14, %9, %5, %3
  %19 = phi i32 [ -22, %3 ], [ -22, %5 ], [ 0, %14 ], [ -22, %9 ]
  ret i32 %19
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @ave_ld11_get_pinmode(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2) #14 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.ave_private, ptr %0, i32 0, i32 13
  store i32 3, ptr %6, align 4
  switch i32 %1, label %11 [
    i32 1, label %8
    i32 7, label %7
  ]

7:                                                ; preds = %5
  br label %8

8:                                                ; preds = %7, %5
  %9 = phi i32 [ 3, %7 ], [ 0, %5 ]
  %10 = getelementptr inbounds %struct.ave_private, ptr %0, i32 0, i32 14
  store i32 %9, ptr %10, align 8
  br label %11

11:                                               ; preds = %8, %5, %3
  %12 = phi i32 [ -22, %3 ], [ -22, %5 ], [ 0, %8 ]
  ret i32 %12
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @ave_ld20_get_pinmode(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2) #14 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %18

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.ave_private, ptr %0, i32 0, i32 13
  store i32 1, ptr %6, align 4
  %7 = add i32 %1, -7
  %8 = icmp ult i32 %7, 6
  br i1 %8, label %9, label %18

9:                                                ; preds = %5
  %10 = trunc i32 %7 to i8
  %11 = lshr i8 61, %10
  %12 = and i8 %11, 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds [6 x i32], ptr @switch.table.ave_ld20_get_pinmode, i32 0, i32 %7
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.ave_private, ptr %0, i32 0, i32 14
  store i32 %16, ptr %17, align 8
  br label %18

18:                                               ; preds = %14, %9, %5, %3
  %19 = phi i32 [ -22, %3 ], [ -22, %5 ], [ 0, %14 ], [ -22, %9 ]
  ret i32 %19
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @ave_pxs3_get_pinmode(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2) #14 {
  %4 = icmp ugt i32 %2, 1
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = shl nuw nsw i32 1, %2
  %7 = getelementptr inbounds %struct.ave_private, ptr %0, i32 0, i32 13
  store i32 %6, ptr %7, align 4
  switch i32 %1, label %12 [
    i32 7, label %9
    i32 9, label %8
    i32 10, label %8
    i32 11, label %8
    i32 12, label %8
  ]

8:                                                ; preds = %5, %5, %5, %5
  br label %9

9:                                                ; preds = %8, %5
  %10 = phi i32 [ 0, %8 ], [ %6, %5 ]
  %11 = getelementptr inbounds %struct.ave_private, ptr %0, i32 0, i32 14
  store i32 %10, ptr %11, align 8
  br label %12

12:                                               ; preds = %9, %5, %3
  %13 = phi i32 [ -22, %3 ], [ -22, %5 ], [ 0, %9 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ave_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca %struct.ethtool_wolinfo, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #17
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) @__const.ave_resume.wol, i32 20, i1 false)
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 6
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = tail call i32 @ave_stop(ptr noundef %4)
  tail call void @netif_device_detach(ptr noundef %4) #17
  br label %11

11:                                               ; preds = %9, %1
  %12 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %2, i32 0, i32 1
  store i32 0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %2, i32 0, i32 2
  store i32 0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 120
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %11
  call void @phy_ethtool_get_wol(ptr noundef nonnull %15, ptr noundef nonnull %2) #17
  %18 = load i32, ptr %13, align 4
  br label %19

19:                                               ; preds = %17, %11
  %20 = phi i32 [ 0, %11 ], [ %18, %17 ]
  %21 = getelementptr i8, ptr %4, i32 1484
  store i32 %20, ptr %21, align 4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #17
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ave_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca %struct.ethtool_wolinfo, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #17
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) @__const.ave_resume.wol, i32 20, i1 false)
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  tail call fastcc void @ave_global_reset(ptr noundef %4)
  %5 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %2, i32 0, i32 1
  store i32 0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %2, i32 0, i32 2
  store i32 0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 120
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = getelementptr i8, ptr %4, i32 1484
  %12 = load i32, ptr %11, align 4
  store i32 %12, ptr %6, align 4
  br label %29

13:                                               ; preds = %1
  call void @phy_ethtool_get_wol(ptr noundef nonnull %8, ptr noundef nonnull %2) #17
  %14 = load ptr, ptr %7, align 8
  %15 = getelementptr i8, ptr %4, i32 1484
  %16 = load i32, ptr %15, align 4
  store i32 %16, ptr %6, align 4
  %17 = icmp eq ptr %14, null
  br i1 %17, label %29, label %18

18:                                               ; preds = %13
  %19 = and i32 %16, 80
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = call i32 @phy_ethtool_set_wol(ptr noundef nonnull %14, ptr noundef nonnull %2) #17
  %23 = load ptr, ptr %7, align 8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %21, %18
  %26 = phi ptr [ %23, %21 ], [ %14, %18 ]
  %27 = call i32 @phy_resume(ptr noundef nonnull %26) #17
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %25, %21, %13, %10
  %30 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 6
  %31 = load volatile i32, ptr %30, align 4
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %29
  %35 = call i32 @ave_open(ptr noundef %4)
  call void @netif_device_attach(ptr noundef %4) #17
  br label %36

36:                                               ; preds = %34, %29, %25
  %37 = phi i32 [ %27, %25 ], [ %35, %34 ], [ 0, %29 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #17
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #13 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { nounwind }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind allocsize(0) }

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
!11 = !{i64 4865070}
!12 = !{i64 2155507240}
!13 = !{i64 2155427517}
!14 = !{i64 4864652}
!15 = !{i64 2155428026}
!16 = !{i64 2155428451}
!17 = !{i64 2155430274}
!18 = !{i64 2155430611}
!19 = !{i64 2155430958}
!20 = !{i64 2155431836}
!21 = !{i64 2155432194}
!22 = !{i64 2155432667}
!23 = !{i64 2155433092}
!24 = !{i64 2155434915}
!25 = !{i64 2155435252}
!26 = !{i64 2155423848}
!27 = !{i64 2155424332}
!28 = !{i64 2155424540}
!29 = !{i64 2155421730}
!30 = !{i64 2149905924}
!31 = !{i64 2149906225}
!32 = !{!"branch_weights", i32 2000, i32 1}
!33 = !{i64 2155425955}
!34 = !{i64 2155421917}
!35 = !{i64 2155487864}
!36 = !{i64 2155489921}
!37 = !{i64 2155436177}
!38 = !{i64 2155459853}
!39 = !{i64 2155460160}
!40 = !{i64 2155473591}
!41 = !{i64 2155476109}
!42 = !{i64 2155478044}
!43 = !{i64 2155479010}
!44 = !{i64 2155458486}
!45 = !{i64 2155458791}
!46 = !{i64 2155424938}
!47 = !{i64 2155425429}
!48 = !{i64 2155491961}
!49 = !{i64 2155492392}
!50 = !{i64 2155492915}
!51 = !{i64 2155493877}
!52 = !{i64 2155423000}
!53 = !{i64 2155422492}
!54 = !{i64 2155422682}
!55 = !{i64 2148914246}
!56 = !{i64 2148927103}
!57 = !{i64 2148922927}
!58 = !{i64 2148923002, i64 2148923029, i64 2148923076, i64 2148923098, i64 2148923126, i64 2148923146}
!59 = !{i64 2148950106}
!60 = !{i64 2153366478, i64 2153366966, i64 2153366515, i64 2153366571, i64 2153366605, i64 2153366629, i64 2153366670, i64 2153366691, i64 2153366719, i64 2153366753}
!61 = !{i64 2155495925}
!62 = !{i64 2155496297}
!63 = !{i64 2153683223}
!64 = !{i64 2153683065}
!65 = !{i64 2153683367}
!66 = !{i64 2149905625}
!67 = !{i64 2155448542}
!68 = !{i64 2155449019}
!69 = !{i64 2155449297}
!70 = !{i64 2155449838}
!71 = !{i64 2155450374}
!72 = !{i64 2155450742}
!73 = !{i64 2155451215}
!74 = !{i64 2155451493}
!75 = !{i64 2155479519}
!76 = !{i64 2155480056}
!77 = !{i64 2155480533}
!78 = !{i64 2155480894}
!79 = !{i64 2155481368}
!80 = !{i64 2155481711}
!81 = !{i64 2155482717}
!82 = !{i64 2155483108}
!83 = !{i64 2155483433}
!84 = !{i64 2155455528}
!85 = !{i64 2155455913}
!86 = !{i64 2155456473}
!87 = !{i64 2155451967}
!88 = !{i64 2155452284}
!89 = !{i64 2155452794}
!90 = !{i64 2155453704}
!91 = !{i64 2155454670}
!92 = !{i64 2155442084}
!93 = !{i64 2155443050}
!94 = !{i64 2155455045}
!95 = !{i64 2155457113}
!96 = !{i64 2155436605}
!97 = !{i64 2155438054}
!98 = !{i64 2155438391}
!99 = !{i64 2155438741}
!100 = !{i64 2155439707}
!101 = !{i64 2155441397}
!102 = !{i64 2155441734}
!103 = !{i64 2155464708}
!104 = !{i64 2155467848}
!105 = !{i64 2155469783}
!106 = !{i64 2155470744}
