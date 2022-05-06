; ModuleID = '/llk/IR/drivers/net/ethernet/freescale/gianfar.c_pt.bc'
source_filename = "../drivers/net/ethernet/freescale/gianfar.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.gfar_private = type { ptr, ptr, i32, i16, i16, i32, i32, i32, [8 x ptr], [8 x ptr], [36 x i8], [2 x %struct.gfar_priv_grp], i32, i16, i32, i32, i32, i32, %struct.gfar_extra_stats, %struct.rmon_overflow, i32, ptr, ptr, ptr, i32, i32, i32, i32, %struct.work_struct, ptr, i8, i32, i32, i32, i32, i32, i32, i32, %struct.ethtool_rx_list, %struct.mutex, [16 x ptr], i32, i16, i16, [256 x i32], [256 x i32], [52 x i8] }
%struct.gfar_priv_grp = type { %struct.spinlock, %struct.napi_struct, %struct.napi_struct, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, [3 x ptr], [20 x i8] }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.gfar_extra_stats = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.rmon_overflow = type { %struct.spinlock, i32, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.ethtool_rx_list = type { %struct.list_head, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.133, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.ref_tracker_dir = type {}
%struct.possible_net_t = type {}
%union.anon.133 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.gfar = type { i32, i32, [8 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, [28 x i8], i32, i32, i32, i32, [44 x i8], i32, [8 x i8], i32, i32, [96 x i8], i32, i32, i32, i32, i32, i32, [40 x i8], i32, i32, [52 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [64 x i8], i32, i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [192 x i8], i32, i32, [8 x i8], i32, i32, i32, i32, i32, i32, [8 x i8], i32, i32, i32, i32, i32, [56 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [64 x i8], i32, i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [192 x i8], i32, i32, i32, i32, i32, [12 x i8], [24 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [192 x i8], %struct.rmon_mib, i32, [188 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [96 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [352 x i8], i32, [252 x i8], [248 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [36 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], [556 x i8], i32, i32, i32, i32, [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [208 x i8] }
%struct.rmon_mib = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.gfar_priv_tx_q = type { %struct.spinlock, ptr, ptr, i32, i16, i16, %struct.tx_q_stats, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, [56 x i8] }
%struct.tx_q_stats = type { i64, i64 }
%struct.txbd8 = type { %union.anon.138, i32 }
%union.anon.138 = type { i32 }
%struct.anon.139 = type { i16, i16 }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.101, [48 x i8], %union.anon.102, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.104, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.101 = type { i64 }
%union.anon.102 = type { %struct.anon.103 }
%struct.anon.103 = type { i32, ptr }
%union.anon.104 = type { %struct.anon.105 }
%struct.anon.105 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.106, i32, i32, i32, i16, i16, %union.anon.108, %union.anon.109, %union.anon.110, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.106 = type { i32 }
%union.anon.108 = type { i32 }
%union.anon.109 = type { i32 }
%union.anon.110 = type { i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.netdev_queue = type { ptr, %struct.netdevice_tracker, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, [4 x i8], %struct.spinlock, i32, i32, i32, [48 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [52 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [24 x i8] }
%struct.gfar_priv_rx_q = type { ptr, ptr, ptr, ptr, i16, i16, ptr, i16, i16, i16, ptr, %struct.rx_q_stats, ptr, i8, i32, i32, [48 x i8] }
%struct.rx_q_stats = type { i64, i64, i64 }
%struct.rxbd8 = type { %union.anon.140, i32 }
%union.anon.140 = type { i32 }
%struct.gfar_rx_buff = type { i32, ptr, i32 }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.gfar_irqinfo = type { i32, [22 x i8] }
%struct.page = type { i32, %union.anon.10, %union.anon.88, %struct.atomic_t }
%union.anon.10 = type { %struct.anon.11 }
%struct.anon.11 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.88 = type { %struct.atomic_t }
%struct.rxfcb = type { i16, i8, i8, i16, i16 }
%struct.ethtool_eee = type { i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.udphdr = type { i16, i16, i16, i16 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.txfcb = type { i8, i8, i8, i8, i16, i16 }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.ifreq = type { %union.anon.117, %union.anon.118 }
%union.anon.117 = type { [16 x i8] }
%union.anon.118 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@__UNIQUE_ID_author442 = internal constant [51 x i8] c"gianfar_driver.author=Freescale Semiconductor, Inc\00", section ".modinfo", align 1
@__UNIQUE_ID_description443 = internal constant [51 x i8] c"gianfar_driver.description=Gianfar Ethernet Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file444 = internal constant [66 x i8] c"gianfar_driver.file=drivers/net/ethernet/freescale/gianfar_driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license445 = internal constant [27 x i8] c"gianfar_driver.license=GPL\00", section ".modinfo", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__initcall__kmod_gianfar_driver__446_3647_gfar_driver_init6 = internal global ptr @gfar_driver_init, section ".initcall6.init", align 4
@gfar_driver = internal global %struct.platform_driver { ptr @gfar_probe, ptr @gfar_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @gfar_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gfar_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_gfar_driver_exit = internal global ptr @gfar_driver_exit, section ".exitcall.exit", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str = private unnamed_addr constant [24 x i8] c"Can't alloc RX buffers\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.1 = private unnamed_addr constant [12 x i8] c"fsl-gianfar\00", align 1
@gfar_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] c"network\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"gianfar\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,etsec2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@gfar_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @gfar_suspend, ptr @gfar_resume, ptr @gfar_suspend, ptr @gfar_resume, ptr null, ptr @gfar_restore, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@gfar_netdev_ops = internal constant %struct.net_device_ops { ptr null, ptr null, ptr @gfar_enet_open, ptr @gfar_close, ptr @gfar_start_xmit, ptr null, ptr null, ptr null, ptr @gfar_set_multi, ptr @gfar_set_mac_addr, ptr @eth_validate_addr, ptr null, ptr @gfar_ioctl, ptr null, ptr null, ptr null, ptr null, ptr @gfar_change_mtu, ptr null, ptr @gfar_timeout, ptr @gfar_get_stats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gfar_set_features, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fixed_phy_change_carrier, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@gfar_ethtool_ops = external dso_local constant %struct.ethtool_ops, align 4
@.str.2 = private unnamed_addr constant [60 x i8] c"\013gianfar_driver: %s: Cannot register net device, aborting\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"%s%s%c%s\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"_g\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"_tx\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"_rx\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"_er\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"mac: %pM\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"Running with NAPI enabled\0A\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"RX BD ring size for Q[%d]: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"TX BD ring size for Q[%d]: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"fsl,etsec2\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"Invalid # of int groups(%d)\0A\00", align 1
@.str.14 = private unnamed_addr constant [54 x i8] c"\013gianfar_driver: Cannot do alloc_etherdev, aborting\0A\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"model\00", align 1
@.str.18 = private unnamed_addr constant [59 x i8] c"\013gianfar_driver: Device model property missing, aborting\0A\00", align 1
@gfar_of_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"&priv->rx_queue_access\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"queue-group\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"bd-stash\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"rx-stash-len\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"rx-stash-idx\00", align 1
@.str.24 = private unnamed_addr constant [31 x i8] c"Using random MAC address: %pM\0A\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"TSEC\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"eTSEC\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"fsl,magic-packet\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"fsl,wake-on-filer\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"phy-handle\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"tbi-handle\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"FEC\00", align 1
@.str.32 = private unnamed_addr constant [41 x i8] c"enabled errata workarounds, flags: 0x%x\0A\00", align 1
@phy_10_100_features_array = external dso_local local_unnamed_addr constant [4 x i32], align 4
@.str.33 = private unnamed_addr constant [25 x i8] c"could not attach to PHY\0A\00", align 1
@.str.34 = private unnamed_addr constant [38 x i8] c"Ack!  Speed (%d) is not 10/100/1000!\0A\00", align 1
@.str.35 = private unnamed_addr constant [70 x i8] c"error: SGMII mode requires that the device tree specify a tbi-handle\0A\00", align 1
@.str.36 = private unnamed_addr constant [33 x i8] c"error: Could not get TBI device\0A\00", align 1
@.str.37 = private unnamed_addr constant [18 x i8] c"Can't get IRQ %d\0A\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.38 = private unnamed_addr constant [28 x i8] c"include/linux/dma-mapping.h\00", align 1
@.str.39 = private unnamed_addr constant [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.42 = private unnamed_addr constant [41 x i8] c"drivers/net/ethernet/freescale/gianfar.c\00", align 1
@.str.43 = private unnamed_addr constant [36 x i8] c"gianfar: rx fragment size underflow\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author442, ptr @__UNIQUE_ID_description443, ptr @__UNIQUE_ID_file444, ptr @__UNIQUE_ID_license445, ptr @__exitcall_gfar_driver_exit, ptr @__initcall__kmod_gianfar_driver__446_3647_gfar_driver_init6, ptr @gfar_driver_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @stop_gfar(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 1408
  tail call void @netif_tx_stop_all_queues(ptr noundef %0) #16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !8
  %3 = getelementptr i8, ptr %0, i32 2560
  tail call void @_set_bit(i32 noundef 1, ptr noundef %3) #16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !9
  %4 = getelementptr i8, ptr %0, i32 2576
  %5 = load i32, ptr %4, align 16
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %7, %1
  %8 = phi i32 [ %11, %7 ], [ 0, %1 ]
  %9 = getelementptr %struct.gfar_private, ptr %2, i32 0, i32 11, i32 %8, i32 1
  tail call void @napi_disable(ptr noundef %9) #16
  %10 = getelementptr %struct.gfar_private, ptr %2, i32 0, i32 11, i32 %8, i32 2
  tail call void @napi_disable(ptr noundef %10) #16
  %11 = add nuw i32 %8, 1
  %12 = load i32, ptr %4, align 16
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %7, label %14

14:                                               ; preds = %7, %1
  tail call fastcc void @gfar_halt(ptr noundef %2)
  %15 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %16 = load ptr, ptr %15, align 8
  tail call void @phy_stop(ptr noundef %16) #16
  tail call fastcc void @free_skb_resources(ptr noundef %2)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_stop_all_queues(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @gfar_halt(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gfar_private, ptr %0, i32 0, i32 11, i32 0, i32 3
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.gfar, ptr %3, i32 0, i32 72
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 0) #16, !srcloc !11
  %5 = getelementptr inbounds %struct.gfar, ptr %3, i32 0, i32 28
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 0) #16, !srcloc !11
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #16
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748000) #16
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #16
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #16
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #16
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #16
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748000) #16
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748000) #16
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748000) #16
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748000) #16
  %16 = load ptr, ptr %2, align 8
  %17 = getelementptr inbounds %struct.gfar_private, ptr %0, i32 0, i32 16
  %18 = load i32, ptr %17, align 16
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %36, label %20

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.gfar, ptr %16, i32 0, i32 3
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 -1) #16, !srcloc !11
  %22 = getelementptr inbounds %struct.gfar, ptr %16, i32 0, i32 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 0) #16, !srcloc !11
  %23 = load i32, ptr %17, align 16
  %24 = icmp ugt i32 %23, 1
  br i1 %24, label %25, label %34

25:                                               ; preds = %25, %20
  %26 = phi i32 [ %31, %25 ], [ 1, %20 ]
  %27 = getelementptr %struct.gfar_private, ptr %0, i32 0, i32 11, i32 %26, i32 3
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.gfar, ptr %28, i32 0, i32 3
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 -1) #16, !srcloc !11
  %30 = getelementptr inbounds %struct.gfar, ptr %28, i32 0, i32 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 0) #16, !srcloc !11
  %31 = add nuw i32 %26, 1
  %32 = load i32, ptr %17, align 16
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %25, label %34

34:                                               ; preds = %25, %20
  %35 = load ptr, ptr %2, align 8
  br label %36

36:                                               ; preds = %34, %1
  %37 = phi ptr [ %35, %34 ], [ %16, %1 ]
  %38 = getelementptr inbounds %struct.gfar, ptr %37, i32 0, i32 3
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #16, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !13
  %40 = and i32 %39, 65538
  %41 = icmp eq i32 %40, 65538
  br i1 %41, label %95, label %42

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.gfar, ptr %16, i32 0, i32 10
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #16, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !13
  %45 = or i32 %44, 402653184
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %45) #16, !srcloc !11
  %46 = getelementptr inbounds %struct.gfar_private, ptr %0, i32 0, i32 2
  br label %47

47:                                               ; preds = %92, %42
  %48 = load ptr, ptr %2, align 8
  %49 = getelementptr inbounds %struct.gfar, ptr %48, i32 0, i32 3
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #16, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !13
  %51 = and i32 %50, 65538
  %52 = icmp eq i32 %51, 65538
  br i1 %52, label %95, label %53

53:                                               ; preds = %53, %47
  %54 = phi i32 [ %55, %53 ], [ 1000, %47 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !14
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #16, !srcloc !15
  %55 = add nsw i32 %54, -1
  %56 = load ptr, ptr %2, align 8
  %57 = getelementptr inbounds %struct.gfar, ptr %56, i32 0, i32 3
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #16, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !13
  %59 = and i32 %58, 65538
  %60 = icmp eq i32 %59, 65538
  %61 = xor i1 %60, true
  %62 = icmp ne i32 %55, 0
  %63 = select i1 %61, i1 %62, i1 false
  br i1 %63, label %53, label %64

64:                                               ; preds = %53
  br i1 %62, label %71, label %65

65:                                               ; preds = %64
  %66 = load ptr, ptr %2, align 8
  %67 = getelementptr inbounds %struct.gfar, ptr %66, i32 0, i32 3
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %67) #16, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !13
  %69 = and i32 %68, 65538
  %70 = icmp eq i32 %69, 65538
  br i1 %70, label %95, label %72

71:                                               ; preds = %64
  br i1 %60, label %95, label %72

72:                                               ; preds = %71, %65
  %73 = load ptr, ptr %2, align 8
  %74 = getelementptr inbounds %struct.gfar, ptr %73, i32 0, i32 3
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %74) #16, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !13
  %76 = and i32 %75, 65536
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %95

78:                                               ; preds = %72
  %79 = load i32, ptr %46, align 8
  %80 = and i32 %79, 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %92, label %82

82:                                               ; preds = %78
  %83 = load ptr, ptr %2, align 8
  %84 = getelementptr i8, ptr %83, i32 3356
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %84) #16, !srcloc !12
  %86 = tail call i32 @llvm.bswap.i32(i32 %85) #16
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !13
  %87 = lshr i32 %86, 16
  %88 = xor i32 %87, %86
  %89 = and i32 %88, 32640
  %90 = icmp eq i32 %89, 0
  %91 = zext i1 %90 to i32
  br label %92

92:                                               ; preds = %82, %78
  %93 = phi i32 [ 0, %78 ], [ %91, %82 ]
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %47, label %95

95:                                               ; preds = %92, %72, %71, %65, %47, %36
  %96 = getelementptr inbounds %struct.gfar, ptr %3, i32 0, i32 119
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %96) #16, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !13
  %98 = and i32 %97, -83886081
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %96, i32 %98) #16, !srcloc !11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @free_skb_resources(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gfar_private, ptr %0, i32 0, i32 14
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %94, %1
  %6 = getelementptr inbounds %struct.gfar_private, ptr %0, i32 0, i32 15
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %143, label %100

9:                                                ; preds = %94, %1
  %10 = phi i32 [ %97, %94 ], [ 0, %1 ]
  %11 = getelementptr %struct.gfar_private, ptr %0, i32 0, i32 8, i32 %10
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %12, i32 0, i32 8
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %12, i32 0, i32 12
  %16 = load i16, ptr %15, align 2
  %17 = zext i16 %16 to i32
  %18 = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 87
  %19 = load ptr, ptr %18, align 64
  %20 = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %12, i32 0, i32 9
  %21 = load ptr, ptr %20, align 16
  %22 = icmp eq ptr %21, null
  br i1 %22, label %94, label %23

23:                                               ; preds = %9
  %24 = getelementptr i8, ptr %14, i32 1408
  %25 = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %12, i32 0, i32 5
  %26 = load i16, ptr %25, align 2
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %92, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %12, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  br label %31

31:                                               ; preds = %85, %28
  %32 = phi ptr [ %21, %28 ], [ %91, %85 ]
  %33 = phi i16 [ %26, %28 ], [ %86, %85 ]
  %34 = phi i32 [ 0, %28 ], [ %88, %85 ]
  %35 = phi ptr [ %30, %28 ], [ %87, %85 ]
  %36 = getelementptr ptr, ptr %32, i32 %34
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %85, label %39

39:                                               ; preds = %31
  %40 = load ptr, ptr %24, align 64
  %41 = getelementptr inbounds %struct.txbd8, ptr %35, i32 0, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #16
  %44 = getelementptr inbounds %struct.anon.139, ptr %35, i32 0, i32 1
  %45 = load i16, ptr %44, align 2
  %46 = tail call i16 @llvm.bswap.i16(i16 %45) #16
  %47 = zext i16 %46 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %40, i32 noundef %43, i32 noundef %47, i32 noundef 1, i32 noundef 0) #16
  store i32 0, ptr %35, align 4
  %48 = load ptr, ptr %20, align 16
  %49 = getelementptr ptr, ptr %48, i32 %34
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.sk_buff, ptr %50, i32 0, i32 15
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.skb_shared_info, ptr %52, i32 0, i32 2
  %54 = load i8, ptr %53, align 2
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %78, label %56

56:                                               ; preds = %56, %39
  %57 = phi i32 [ %68, %56 ], [ 0, %39 ]
  %58 = phi ptr [ %59, %56 ], [ %35, %39 ]
  %59 = getelementptr %struct.txbd8, ptr %58, i32 1
  %60 = load ptr, ptr %24, align 64
  %61 = getelementptr %struct.txbd8, ptr %58, i32 1, i32 1
  %62 = load i32, ptr %61, align 4
  %63 = tail call i32 @llvm.bswap.i32(i32 %62) #16
  %64 = getelementptr inbounds %struct.anon.139, ptr %59, i32 0, i32 1
  %65 = load i16, ptr %64, align 2
  %66 = tail call i16 @llvm.bswap.i16(i16 %65) #16
  %67 = zext i16 %66 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %60, i32 noundef %63, i32 noundef %67, i32 noundef 1, i32 noundef 0) #16
  %68 = add nuw nsw i32 %57, 1
  %69 = load ptr, ptr %20, align 16
  %70 = getelementptr ptr, ptr %69, i32 %34
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.sk_buff, ptr %71, i32 0, i32 15
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.skb_shared_info, ptr %73, i32 0, i32 2
  %75 = load i8, ptr %74, align 2
  %76 = zext i8 %75 to i32
  %77 = icmp ult i32 %68, %76
  br i1 %77, label %56, label %78

78:                                               ; preds = %56, %39
  %79 = phi ptr [ %35, %39 ], [ %59, %56 ]
  %80 = phi ptr [ %50, %39 ], [ %71, %56 ]
  %81 = getelementptr %struct.txbd8, ptr %79, i32 1
  tail call void @__dev_kfree_skb_any(ptr noundef %80, i32 noundef 1) #16
  %82 = load ptr, ptr %20, align 16
  %83 = getelementptr ptr, ptr %82, i32 %34
  store ptr null, ptr %83, align 4
  %84 = load i16, ptr %25, align 2
  br label %85

85:                                               ; preds = %78, %31
  %86 = phi i16 [ %84, %78 ], [ %33, %31 ]
  %87 = phi ptr [ %81, %78 ], [ %35, %31 ]
  %88 = add nuw nsw i32 %34, 1
  %89 = zext i16 %86 to i32
  %90 = icmp ult i32 %88, %89
  %91 = load ptr, ptr %20, align 16
  br i1 %90, label %31, label %92

92:                                               ; preds = %85, %23
  %93 = phi ptr [ %21, %23 ], [ %91, %85 ]
  tail call void @kfree(ptr noundef %93) #16
  store ptr null, ptr %20, align 16
  br label %94

94:                                               ; preds = %92, %9
  %95 = getelementptr %struct.netdev_queue, ptr %19, i32 %17, i32 12
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %95) #16
  %96 = getelementptr %struct.netdev_queue, ptr %19, i32 %17, i32 14
  tail call void @dql_reset(ptr noundef %96) #16
  %97 = add nuw i32 %10, 1
  %98 = load i32, ptr %2, align 8
  %99 = icmp ult i32 %97, %98
  br i1 %99, label %9, label %5

100:                                              ; preds = %139, %5
  %101 = phi i32 [ %140, %139 ], [ %7, %5 ]
  %102 = phi i32 [ %141, %139 ], [ 0, %5 ]
  %103 = getelementptr %struct.gfar_private, ptr %0, i32 0, i32 9, i32 %102
  %104 = load ptr, ptr %103, align 4
  %105 = load ptr, ptr %104, align 64
  %106 = icmp eq ptr %105, null
  br i1 %106, label %139, label %107

107:                                              ; preds = %100
  %108 = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %104, i32 0, i32 1
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %104, i32 0, i32 10
  %111 = load ptr, ptr %110, align 32
  tail call void @consume_skb(ptr noundef %111) #16
  %112 = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %104, i32 0, i32 4
  %113 = load i16, ptr %112, align 16
  %114 = icmp eq i16 %113, 0
  br i1 %114, label %136, label %115

115:                                              ; preds = %107
  %116 = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %104, i32 0, i32 3
  br label %117

117:                                              ; preds = %131, %115
  %118 = phi ptr [ %109, %115 ], [ %122, %131 ]
  %119 = phi i32 [ 0, %115 ], [ %132, %131 ]
  %120 = load ptr, ptr %104, align 64
  store i32 0, ptr %118, align 4
  %121 = getelementptr inbounds %struct.rxbd8, ptr %118, i32 0, i32 1
  store i32 0, ptr %121, align 4
  %122 = getelementptr %struct.rxbd8, ptr %118, i32 1
  %123 = getelementptr %struct.gfar_rx_buff, ptr %120, i32 %119, i32 1
  %124 = load ptr, ptr %123, align 4
  %125 = icmp eq ptr %124, null
  br i1 %125, label %131, label %126

126:                                              ; preds = %117
  %127 = getelementptr %struct.gfar_rx_buff, ptr %120, i32 %119
  %128 = load ptr, ptr %116, align 4
  %129 = load i32, ptr %127, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %128, i32 noundef %129, i32 noundef 4096, i32 noundef 2, i32 noundef 0) #16
  %130 = load ptr, ptr %123, align 4
  tail call void @__free_pages(ptr noundef %130, i32 noundef 0) #16
  store ptr null, ptr %123, align 4
  br label %131

131:                                              ; preds = %126, %117
  %132 = add nuw nsw i32 %119, 1
  %133 = load i16, ptr %112, align 16
  %134 = zext i16 %133 to i32
  %135 = icmp ult i32 %132, %134
  br i1 %135, label %117, label %136

136:                                              ; preds = %131, %107
  %137 = load ptr, ptr %104, align 64
  tail call void @kfree(ptr noundef %137) #16
  store ptr null, ptr %104, align 64
  %138 = load i32, ptr %6, align 4
  br label %139

139:                                              ; preds = %136, %100
  %140 = phi i32 [ %101, %100 ], [ %138, %136 ]
  %141 = add nuw i32 %102, 1
  %142 = icmp ult i32 %141, %140
  br i1 %142, label %100, label %143

143:                                              ; preds = %139, %5
  %144 = load ptr, ptr %0, align 64
  %145 = getelementptr inbounds %struct.gfar_private, ptr %0, i32 0, i32 31
  %146 = load i32, ptr %145, align 8
  %147 = getelementptr inbounds %struct.gfar_private, ptr %0, i32 0, i32 32
  %148 = load i32, ptr %147, align 4
  %149 = add i32 %148, %146
  %150 = shl i32 %149, 3
  %151 = getelementptr inbounds %struct.gfar_private, ptr %0, i32 0, i32 8
  %152 = load ptr, ptr %151, align 4
  %153 = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %152, i32 0, i32 1
  %154 = load ptr, ptr %153, align 4
  %155 = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %152, i32 0, i32 15
  %156 = load i32, ptr %155, align 4
  tail call void @dma_free_attrs(ptr noundef %144, i32 noundef %150, ptr noundef %154, i32 noundef %156, i32 noundef 0) #16
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @startup_gfar(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr i8, ptr %0, i32 1408
  tail call void @gfar_mac_reset(ptr noundef %3)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #16
  store i32 0, ptr %2, align 4, !annotation !16
  %4 = load ptr, ptr %3, align 64
  %5 = getelementptr i8, ptr %0, i32 2760
  store i32 0, ptr %5, align 8
  %6 = getelementptr i8, ptr %0, i32 2568
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %20, label %9

9:                                                ; preds = %9, %1
  %10 = phi i32 [ %17, %9 ], [ 0, %1 ]
  %11 = phi i32 [ %18, %9 ], [ 0, %1 ]
  %12 = getelementptr %struct.gfar_private, ptr %3, i32 0, i32 8, i32 %11
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %13, i32 0, i32 5
  %15 = load i16, ptr %14, align 2
  %16 = zext i16 %15 to i32
  %17 = add i32 %10, %16
  store i32 %17, ptr %5, align 8
  %18 = add nuw i32 %11, 1
  %19 = icmp eq i32 %18, %7
  br i1 %19, label %20, label %9

20:                                               ; preds = %9, %1
  %21 = phi i32 [ 0, %1 ], [ %17, %9 ]
  %22 = getelementptr i8, ptr %0, i32 2764
  store i32 0, ptr %22, align 4
  %23 = getelementptr i8, ptr %0, i32 2572
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %37, label %26

26:                                               ; preds = %26, %20
  %27 = phi i32 [ %34, %26 ], [ 0, %20 ]
  %28 = phi i32 [ %35, %26 ], [ 0, %20 ]
  %29 = getelementptr %struct.gfar_private, ptr %3, i32 0, i32 9, i32 %28
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %30, i32 0, i32 4
  %32 = load i16, ptr %31, align 16
  %33 = zext i16 %32 to i32
  %34 = add i32 %27, %33
  store i32 %34, ptr %22, align 4
  %35 = add nuw i32 %28, 1
  %36 = icmp eq i32 %35, %24
  br i1 %36, label %37, label %26

37:                                               ; preds = %26, %20
  %38 = phi i32 [ 0, %20 ], [ %34, %26 ]
  %39 = add i32 %38, %21
  %40 = shl i32 %39, 3
  %41 = call ptr @dma_alloc_attrs(ptr noundef %4, i32 noundef %40, ptr noundef nonnull %2, i32 noundef 3264, i32 noundef 0) #16
  %42 = icmp eq ptr %41, null
  br i1 %42, label %212, label %43

43:                                               ; preds = %37
  %44 = load i32, ptr %2, align 4
  %45 = load i32, ptr %6, align 8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %48, label %54

47:                                               ; preds = %54
  store i32 %67, ptr %2, align 4
  br label %48

48:                                               ; preds = %47, %43
  %49 = phi i32 [ %70, %47 ], [ 0, %43 ]
  %50 = phi i32 [ %67, %47 ], [ %44, %43 ]
  %51 = phi ptr [ %68, %47 ], [ %41, %43 ]
  %52 = load i32, ptr %23, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %74, label %78

54:                                               ; preds = %54, %43
  %55 = phi i32 [ %69, %54 ], [ 0, %43 ]
  %56 = phi ptr [ %68, %54 ], [ %41, %43 ]
  %57 = phi i32 [ %67, %54 ], [ %44, %43 ]
  %58 = getelementptr %struct.gfar_private, ptr %3, i32 0, i32 8, i32 %55
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %59, i32 0, i32 1
  store ptr %56, ptr %60, align 4
  %61 = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %59, i32 0, i32 15
  store i32 %57, ptr %61, align 4
  %62 = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %59, i32 0, i32 8
  store ptr %0, ptr %62, align 4
  %63 = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %59, i32 0, i32 5
  %64 = load i16, ptr %63, align 2
  %65 = zext i16 %64 to i32
  %66 = shl nuw nsw i32 %65, 3
  %67 = add i32 %66, %57
  %68 = getelementptr i8, ptr %56, i32 %66
  %69 = add nuw i32 %55, 1
  %70 = load i32, ptr %6, align 8
  %71 = icmp ult i32 %69, %70
  br i1 %71, label %54, label %47

72:                                               ; preds = %78
  store i32 %92, ptr %2, align 4
  %73 = load i32, ptr %6, align 8
  br label %74

74:                                               ; preds = %72, %48
  %75 = phi i32 [ %95, %72 ], [ 0, %48 ]
  %76 = phi i32 [ %73, %72 ], [ %49, %48 ]
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %99, label %103

78:                                               ; preds = %78, %48
  %79 = phi i32 [ %94, %78 ], [ 0, %48 ]
  %80 = phi ptr [ %93, %78 ], [ %51, %48 ]
  %81 = phi i32 [ %92, %78 ], [ %50, %48 ]
  %82 = getelementptr %struct.gfar_private, ptr %3, i32 0, i32 9, i32 %79
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %83, i32 0, i32 1
  store ptr %80, ptr %84, align 4
  %85 = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %83, i32 0, i32 15
  store i32 %81, ptr %85, align 4
  %86 = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %83, i32 0, i32 2
  store ptr %0, ptr %86, align 8
  %87 = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %83, i32 0, i32 3
  store ptr %4, ptr %87, align 4
  %88 = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %83, i32 0, i32 4
  %89 = load i16, ptr %88, align 16
  %90 = zext i16 %89 to i32
  %91 = shl nuw nsw i32 %90, 3
  %92 = add i32 %91, %81
  %93 = getelementptr i8, ptr %80, i32 %91
  %94 = add nuw i32 %79, 1
  %95 = load i32, ptr %23, align 4
  %96 = icmp ult i32 %94, %95
  br i1 %96, label %78, label %72

97:                                               ; preds = %128
  %98 = load i32, ptr %23, align 4
  br label %99

99:                                               ; preds = %97, %74
  %100 = phi i32 [ %98, %97 ], [ %75, %74 ]
  %101 = phi i32 [ %130, %97 ], [ 0, %74 ]
  %102 = icmp eq i32 %100, 0
  br i1 %102, label %148, label %132

103:                                              ; preds = %128, %74
  %104 = phi i32 [ %129, %128 ], [ 0, %74 ]
  %105 = getelementptr %struct.gfar_private, ptr %3, i32 0, i32 8, i32 %104
  %106 = load ptr, ptr %105, align 4
  %107 = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %106, i32 0, i32 5
  %108 = load i16, ptr %107, align 2
  %109 = zext i16 %108 to i32
  %110 = shl nuw nsw i32 %109, 2
  %111 = call noalias align 64 ptr @__kmalloc(i32 noundef %110, i32 noundef 3264) #17
  %112 = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %106, i32 0, i32 9
  store ptr %111, ptr %112, align 16
  %113 = icmp eq ptr %111, null
  br i1 %113, label %211, label %114

114:                                              ; preds = %103
  %115 = load i16, ptr %107, align 2
  %116 = icmp eq i16 %115, 0
  br i1 %116, label %128, label %117

117:                                              ; preds = %114
  store ptr null, ptr %111, align 64
  %118 = load i16, ptr %107, align 2
  %119 = icmp ugt i16 %118, 1
  br i1 %119, label %120, label %128

120:                                              ; preds = %120, %117
  %121 = phi i32 [ %124, %120 ], [ 1, %117 ]
  %122 = load ptr, ptr %112, align 16
  %123 = getelementptr ptr, ptr %122, i32 %121
  store ptr null, ptr %123, align 4
  %124 = add nuw nsw i32 %121, 1
  %125 = load i16, ptr %107, align 2
  %126 = zext i16 %125 to i32
  %127 = icmp ult i32 %124, %126
  br i1 %127, label %120, label %128

128:                                              ; preds = %120, %117, %114
  %129 = add nuw i32 %104, 1
  %130 = load i32, ptr %6, align 8
  %131 = icmp ult i32 %129, %130
  br i1 %131, label %103, label %97

132:                                              ; preds = %142, %99
  %133 = phi i32 [ %143, %142 ], [ 0, %99 ]
  %134 = getelementptr %struct.gfar_private, ptr %3, i32 0, i32 9, i32 %133
  %135 = load ptr, ptr %134, align 4
  %136 = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %135, i32 0, i32 4
  %137 = load i16, ptr %136, align 16
  %138 = zext i16 %137 to i32
  %139 = mul nuw nsw i32 %138, 12
  %140 = call noalias align 64 ptr @__kmalloc(i32 noundef %139, i32 noundef 3520) #17
  store ptr %140, ptr %135, align 64
  %141 = icmp eq ptr %140, null
  br i1 %141, label %211, label %142

142:                                              ; preds = %132
  %143 = add nuw i32 %133, 1
  %144 = load i32, ptr %23, align 4
  %145 = icmp ult i32 %143, %144
  br i1 %145, label %132, label %146

146:                                              ; preds = %142
  %147 = load i32, ptr %6, align 8
  br label %148

148:                                              ; preds = %146, %99
  %149 = phi i32 [ %144, %146 ], [ 0, %99 ]
  %150 = phi i32 [ %147, %146 ], [ %101, %99 ]
  %151 = getelementptr i8, ptr %0, i32 1976
  %152 = load ptr, ptr %151, align 8
  %153 = icmp eq i32 %150, 0
  br i1 %153, label %188, label %154

154:                                              ; preds = %178, %148
  %155 = phi i32 [ %183, %178 ], [ 0, %148 ]
  %156 = getelementptr %struct.gfar_private, ptr %3, i32 0, i32 8, i32 %155
  %157 = load ptr, ptr %156, align 4
  %158 = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %157, i32 0, i32 5
  %159 = load i16, ptr %158, align 2
  %160 = zext i16 %159 to i32
  %161 = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %157, i32 0, i32 3
  store i32 %160, ptr %161, align 4
  %162 = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %157, i32 0, i32 1
  %163 = load ptr, ptr %162, align 4
  %164 = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %157, i32 0, i32 10
  store ptr %163, ptr %164, align 4
  %165 = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %157, i32 0, i32 2
  store ptr %163, ptr %165, align 8
  %166 = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %157, i32 0, i32 4
  store i16 0, ptr %166, align 16
  %167 = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %157, i32 0, i32 11
  store i16 0, ptr %167, align 8
  %168 = icmp eq i16 %159, 0
  br i1 %168, label %178, label %169

169:                                              ; preds = %169, %154
  %170 = phi i32 [ %174, %169 ], [ 0, %154 ]
  %171 = phi ptr [ %173, %169 ], [ %163, %154 ]
  store i32 0, ptr %171, align 4
  %172 = getelementptr inbounds %struct.txbd8, ptr %171, i32 0, i32 1
  store i32 0, ptr %172, align 4
  %173 = getelementptr %struct.txbd8, ptr %171, i32 1
  %174 = add nuw nsw i32 %170, 1
  %175 = load i16, ptr %158, align 2
  %176 = zext i16 %175 to i32
  %177 = icmp ult i32 %174, %176
  br i1 %177, label %169, label %178

178:                                              ; preds = %169, %154
  %179 = phi ptr [ %163, %154 ], [ %173, %169 ]
  %180 = getelementptr %struct.txbd8, ptr %179, i32 -1
  %181 = load i16, ptr %180, align 4
  %182 = or i16 %181, 32
  store i16 %182, ptr %180, align 4
  %183 = add nuw i32 %155, 1
  %184 = load i32, ptr %6, align 8
  %185 = icmp ult i32 %183, %184
  br i1 %185, label %154, label %186

186:                                              ; preds = %178
  %187 = load i32, ptr %23, align 4
  br label %188

188:                                              ; preds = %186, %148
  %189 = phi i32 [ %187, %186 ], [ %149, %148 ]
  %190 = phi i32 [ %184, %186 ], [ 0, %148 ]
  %191 = icmp eq i32 %189, 0
  br i1 %191, label %215, label %192

192:                                              ; preds = %188
  %193 = getelementptr inbounds %struct.gfar, ptr %152, i32 0, i32 196
  br label %194

194:                                              ; preds = %194, %192
  %195 = phi i32 [ %208, %194 ], [ 0, %192 ]
  %196 = phi ptr [ %207, %194 ], [ %193, %192 ]
  %197 = getelementptr %struct.gfar_private, ptr %3, i32 0, i32 9, i32 %195
  %198 = load ptr, ptr %197, align 4
  %199 = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %198, i32 0, i32 7
  store i16 0, ptr %199, align 8
  %200 = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %198, i32 0, i32 8
  store i16 0, ptr %200, align 2
  %201 = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %198, i32 0, i32 9
  store i16 0, ptr %201, align 4
  %202 = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %198, i32 0, i32 4
  %203 = load i16, ptr %202, align 16
  %204 = zext i16 %203 to i32
  %205 = add nsw i32 %204, -1
  call fastcc void @gfar_alloc_rx_buffs(ptr noundef %198, i32 noundef %205) #16
  %206 = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %198, i32 0, i32 12
  store ptr %196, ptr %206, align 64
  %207 = getelementptr i32, ptr %196, i32 2
  %208 = add nuw i32 %195, 1
  %209 = load i32, ptr %23, align 4
  %210 = icmp ult i32 %208, %209
  br i1 %210, label %194, label %213

211:                                              ; preds = %132, %103
  call fastcc void @free_skb_resources(ptr noundef %3) #16
  br label %212

212:                                              ; preds = %211, %37
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #16
  br label %283

213:                                              ; preds = %194
  %214 = load i32, ptr %6, align 8
  br label %215

215:                                              ; preds = %213, %188
  %216 = phi i32 [ %209, %213 ], [ 0, %188 ]
  %217 = phi i32 [ %214, %213 ], [ %190, %188 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #16
  %218 = load ptr, ptr %151, align 8
  %219 = icmp eq i32 %217, 0
  br i1 %219, label %236, label %220

220:                                              ; preds = %215
  %221 = getelementptr inbounds %struct.gfar, ptr %218, i32 0, i32 52
  br label %222

222:                                              ; preds = %222, %220
  %223 = phi i32 [ %231, %222 ], [ 0, %220 ]
  %224 = phi ptr [ %230, %222 ], [ %221, %220 ]
  %225 = getelementptr %struct.gfar_private, ptr %3, i32 0, i32 8, i32 %223
  %226 = load ptr, ptr %225, align 4
  %227 = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %226, i32 0, i32 15
  %228 = load i32, ptr %227, align 4
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  call void @arm_heavy_mb() #16
  %229 = call i32 @llvm.bswap.i32(i32 %228) #16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %224, i32 %229) #16, !srcloc !11
  %230 = getelementptr i32, ptr %224, i32 2
  %231 = add nuw i32 %223, 1
  %232 = load i32, ptr %6, align 8
  %233 = icmp ult i32 %231, %232
  br i1 %233, label %222, label %234

234:                                              ; preds = %222
  %235 = load i32, ptr %23, align 4
  br label %236

236:                                              ; preds = %234, %215
  %237 = phi i32 [ %235, %234 ], [ %216, %215 ]
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %253, label %239

239:                                              ; preds = %236
  %240 = getelementptr inbounds %struct.gfar, ptr %218, i32 0, i32 103
  br label %241

241:                                              ; preds = %241, %239
  %242 = phi i32 [ %250, %241 ], [ 0, %239 ]
  %243 = phi ptr [ %249, %241 ], [ %240, %239 ]
  %244 = getelementptr %struct.gfar_private, ptr %3, i32 0, i32 9, i32 %242
  %245 = load ptr, ptr %244, align 4
  %246 = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %245, i32 0, i32 15
  %247 = load i32, ptr %246, align 4
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  call void @arm_heavy_mb() #16
  %248 = call i32 @llvm.bswap.i32(i32 %247) #16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %243, i32 %248) #16, !srcloc !11
  %249 = getelementptr i32, ptr %243, i32 2
  %250 = add nuw i32 %242, 1
  %251 = load i32, ptr %23, align 4
  %252 = icmp ult i32 %250, %251
  br i1 %252, label %241, label %253

253:                                              ; preds = %241, %236
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !17
  %254 = getelementptr i8, ptr %0, i32 2560
  call void @_clear_bit(i32 noundef 1, ptr noundef %254) #16
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !18
  call fastcc void @gfar_start(ptr noundef %3)
  %255 = getelementptr i8, ptr %0, i32 2728
  store i32 0, ptr %255, align 8
  %256 = getelementptr i8, ptr %0, i32 2720
  store i32 0, ptr %256, align 32
  %257 = getelementptr i8, ptr %0, i32 2724
  store i32 -1, ptr %257, align 4
  %258 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %259 = load ptr, ptr %258, align 8
  call void @phy_start(ptr noundef %259) #16
  %260 = getelementptr i8, ptr %0, i32 2576
  %261 = load i32, ptr %260, align 16
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %270, label %263

263:                                              ; preds = %263, %253
  %264 = phi i32 [ %267, %263 ], [ 0, %253 ]
  %265 = getelementptr %struct.gfar_private, ptr %3, i32 0, i32 11, i32 %264, i32 1
  call void @napi_enable(ptr noundef %265) #16
  %266 = getelementptr %struct.gfar_private, ptr %3, i32 0, i32 11, i32 %264, i32 2
  call void @napi_enable(ptr noundef %266) #16
  %267 = add nuw i32 %264, 1
  %268 = load i32, ptr %260, align 16
  %269 = icmp ult i32 %267, %268
  br i1 %269, label %263, label %270

270:                                              ; preds = %263, %253
  %271 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 88
  %272 = load i32, ptr %271, align 4
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %283, label %274

274:                                              ; preds = %270
  %275 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  br label %276

276:                                              ; preds = %276, %274
  %277 = phi i32 [ 0, %274 ], [ %280, %276 ]
  %278 = load ptr, ptr %275, align 64
  %279 = getelementptr %struct.netdev_queue, ptr %278, i32 %277
  call void @netif_tx_wake_queue(ptr noundef %279) #16
  %280 = add nuw i32 %277, 1
  %281 = load i32, ptr %271, align 4
  %282 = icmp ult i32 %280, %281
  br i1 %282, label %276, label %283

283:                                              ; preds = %276, %270, %212
  %284 = phi i32 [ -12, %212 ], [ 0, %270 ], [ 0, %276 ]
  ret i32 %284
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gfar_mac_reset(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.gfar_private, ptr %0, i32 0, i32 11, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.gfar, ptr %5, i32 0, i32 119
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 128) #16, !srcloc !11
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 644244) #16
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 0) #16, !srcloc !11
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 644244) #16
  %9 = getelementptr inbounds %struct.gfar_private, ptr %0, i32 0, i32 3
  store i16 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.gfar_private, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 23
  %13 = load i64, ptr %12, align 16
  %14 = and i64 %13, 1099511628032
  %15 = icmp ne i64 %14, 0
  %16 = zext i1 %15 to i16
  store i16 %16, ptr %9, align 4
  %17 = getelementptr inbounds %struct.gfar_private, ptr %0, i32 0, i32 6
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.gfar_private, ptr %0, i32 0, i32 30
  %22 = load i8, ptr %21, align 4
  %23 = and i8 %22, 4
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20, %1
  store i16 1, ptr %9, align 4
  br label %26

26:                                               ; preds = %25, %20
  %27 = getelementptr inbounds %struct.gfar, ptr %5, i32 0, i32 123
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 -2145058816) #16, !srcloc !11
  %28 = getelementptr inbounds %struct.gfar, ptr %5, i32 0, i32 82
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 -1073348608) #16, !srcloc !11
  %29 = getelementptr inbounds %struct.gfar, ptr %5, i32 0, i32 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 1073741824) #16, !srcloc !11
  %30 = getelementptr inbounds %struct.gfar_private, ptr %0, i32 0, i32 2
  %31 = load i32, ptr %30, align 8
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  %34 = select i1 %33, i32 29189, i32 29237
  %35 = getelementptr inbounds %struct.gfar, ptr %5, i32 0, i32 120
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  %36 = tail call i32 @llvm.bswap.i32(i32 %34) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %36) #16, !srcloc !11
  %37 = getelementptr inbounds %struct.gfar, ptr %5, i32 0, i32 164
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 0) #16, !srcloc !11
  %38 = getelementptr inbounds %struct.gfar, ptr %5, i32 0, i32 165
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 0) #16, !srcloc !11
  %39 = getelementptr inbounds %struct.gfar, ptr %5, i32 0, i32 166
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 0) #16, !srcloc !11
  %40 = getelementptr inbounds %struct.gfar, ptr %5, i32 0, i32 167
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 0) #16, !srcloc !11
  %41 = getelementptr inbounds %struct.gfar, ptr %5, i32 0, i32 168
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 0) #16, !srcloc !11
  %42 = getelementptr inbounds %struct.gfar, ptr %5, i32 0, i32 169
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 0) #16, !srcloc !11
  %43 = getelementptr inbounds %struct.gfar, ptr %5, i32 0, i32 170
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 0) #16, !srcloc !11
  %44 = getelementptr inbounds %struct.gfar, ptr %5, i32 0, i32 171
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 0) #16, !srcloc !11
  %45 = getelementptr inbounds %struct.gfar, ptr %5, i32 0, i32 173
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 0) #16, !srcloc !11
  %46 = getelementptr inbounds %struct.gfar, ptr %5, i32 0, i32 174
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 0) #16, !srcloc !11
  %47 = getelementptr inbounds %struct.gfar, ptr %5, i32 0, i32 175
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 0) #16, !srcloc !11
  %48 = getelementptr inbounds %struct.gfar, ptr %5, i32 0, i32 176
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 0) #16, !srcloc !11
  %49 = getelementptr inbounds %struct.gfar, ptr %5, i32 0, i32 177
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 0) #16, !srcloc !11
  %50 = getelementptr inbounds %struct.gfar, ptr %5, i32 0, i32 178
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 0) #16, !srcloc !11
  %51 = getelementptr inbounds %struct.gfar, ptr %5, i32 0, i32 179
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 0) #16, !srcloc !11
  %52 = getelementptr inbounds %struct.gfar, ptr %5, i32 0, i32 180
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 0) #16, !srcloc !11
  %53 = getelementptr inbounds %struct.gfar_private, ptr %0, i32 0, i32 30
  %54 = load i8, ptr %53, align 4
  %55 = and i8 %54, 1
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %71, label %57

57:                                               ; preds = %26
  %58 = load ptr, ptr %10, align 4
  %59 = getelementptr i8, ptr %58, i32 1976
  br label %60

60:                                               ; preds = %60, %57
  %61 = phi i32 [ 1, %57 ], [ %67, %60 ]
  %62 = load ptr, ptr %59, align 8
  %63 = getelementptr inbounds %struct.gfar, ptr %62, i32 0, i32 128
  %64 = shl nuw i32 %61, 1
  %65 = getelementptr i32, ptr %63, i32 %64
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 0) #16, !srcloc !11
  %66 = getelementptr i32, ptr %65, i32 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 0) #16, !srcloc !11
  %67 = add nuw nsw i32 %61, 1
  %68 = icmp eq i32 %67, 16
  br i1 %68, label %69, label %60

69:                                               ; preds = %60
  %70 = load i8, ptr %53, align 4
  br label %71

71:                                               ; preds = %69, %26
  %72 = phi i8 [ %70, %69 ], [ %54, %26 ]
  %73 = load ptr, ptr %4, align 8
  %74 = and i8 %72, 4
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.gfar, ptr %73, i32 0, i32 73
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 4263940) #16, !srcloc !11
  %78 = load i8, ptr %53, align 4
  br label %79

79:                                               ; preds = %76, %71
  %80 = phi i8 [ %78, %76 ], [ %72, %71 ]
  %81 = phi i32 [ 4288, %76 ], [ 0, %71 ]
  %82 = load ptr, ptr %10, align 4
  %83 = getelementptr inbounds %struct.net_device, ptr %82, i32 0, i32 14
  %84 = load i32, ptr %83, align 8
  %85 = lshr i32 %84, 5
  %86 = and i32 %85, 8
  %87 = or i32 %86, %81
  %88 = getelementptr inbounds %struct.net_device, ptr %82, i32 0, i32 23
  %89 = load i64, ptr %88, align 16
  %90 = and i64 %89, 1099511627776
  %91 = icmp eq i64 %90, 0
  %92 = or i32 %87, 960
  %93 = select i1 %91, i32 %87, i32 %92
  %94 = and i8 %80, 1
  %95 = icmp eq i8 %94, 0
  %96 = or i32 %93, 1026
  %97 = select i1 %95, i32 %93, i32 %96
  %98 = getelementptr inbounds %struct.gfar_private, ptr %0, i32 0, i32 4
  %99 = load i16, ptr %98, align 2
  %100 = icmp eq i16 %99, 0
  %101 = and i32 %97, -2031617
  %102 = zext i16 %99 to i32
  %103 = shl nuw i32 %102, 16
  %104 = and i32 %103, 2031616
  %105 = or i32 %101, %104
  %106 = select i1 %100, i32 %97, i32 %105
  %107 = load i32, ptr %17, align 4
  %108 = icmp eq i32 %107, 0
  %109 = or i32 %106, 16777408
  %110 = select i1 %108, i32 %106, i32 %109
  %111 = and i64 %89, 256
  %112 = icmp eq i64 %111, 0
  %113 = or i32 %110, 8384
  %114 = select i1 %112, i32 %110, i32 %113
  %115 = getelementptr inbounds %struct.gfar, ptr %73, i32 0, i32 68
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  %116 = tail call i32 @llvm.bswap.i32(i32 %114) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %115, i32 %116) #16, !srcloc !11
  %117 = getelementptr inbounds %struct.gfar_private, ptr %0, i32 0, i32 15
  %118 = load i32, ptr %117, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %137, label %120

120:                                              ; preds = %79
  %121 = load ptr, ptr %4, align 8
  %122 = getelementptr inbounds %struct.gfar, ptr %121, i32 0, i32 187
  br label %123

123:                                              ; preds = %123, %120
  %124 = phi i32 [ %134, %123 ], [ 0, %120 ]
  %125 = phi ptr [ %133, %123 ], [ %122, %120 ]
  %126 = getelementptr %struct.gfar_private, ptr %0, i32 0, i32 9, i32 %124
  %127 = load ptr, ptr %126, align 4
  %128 = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %127, i32 0, i32 4
  %129 = load i16, ptr %128, align 16
  %130 = zext i16 %129 to i32
  %131 = or i32 %130, 268435456
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  %132 = tail call i32 @llvm.bswap.i32(i32 %131) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %125, i32 %132) #16, !srcloc !11
  %133 = getelementptr i32, ptr %125, i32 1
  %134 = add nuw i32 %124, 1
  %135 = load i32, ptr %117, align 4
  %136 = icmp ult i32 %134, %135
  br i1 %136, label %123, label %137

137:                                              ; preds = %123, %79
  %138 = getelementptr inbounds %struct.gfar, ptr %73, i32 0, i32 9
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %138, i32 67108864) #16, !srcloc !11
  %139 = or i32 %114, 16384
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  %140 = tail call i32 @llvm.bswap.i32(i32 %139) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %115, i32 %140) #16, !srcloc !11
  %141 = load ptr, ptr %4, align 8
  %142 = load ptr, ptr %10, align 4
  %143 = getelementptr inbounds %struct.net_device, ptr %142, i32 0, i32 23
  %144 = load i64, ptr %143, align 16
  %145 = and i64 %144, 2
  %146 = icmp eq i64 %145, 0
  %147 = select i1 %146, i32 0, i32 24576
  %148 = load i8, ptr %53, align 4
  %149 = and i8 %148, 8
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %154, label %151

151:                                              ; preds = %137
  %152 = or i32 %147, 2
  %153 = trunc i64 %144 to i32
  br label %162

154:                                              ; preds = %137
  %155 = or i32 %147, 4
  %156 = getelementptr inbounds %struct.gfar, ptr %141, i32 0, i32 30
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %156, i32 404232216) #16, !srcloc !11
  %157 = getelementptr inbounds %struct.gfar, ptr %141, i32 0, i32 31
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %157, i32 404232216) #16, !srcloc !11
  %158 = load ptr, ptr %10, align 4
  %159 = getelementptr inbounds %struct.net_device, ptr %158, i32 0, i32 23
  %160 = load i64, ptr %159, align 16
  %161 = trunc i64 %160 to i32
  br label %162

162:                                              ; preds = %154, %151
  %163 = phi i32 [ %153, %151 ], [ %161, %154 ]
  %164 = phi i32 [ %152, %151 ], [ %155, %154 ]
  %165 = shl i32 %163, 5
  %166 = and i32 %165, 4096
  %167 = or i32 %166, %164
  %168 = getelementptr inbounds %struct.gfar, ptr %141, i32 0, i32 23
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  %169 = tail call i32 @llvm.bswap.i32(i32 %167) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %168, i32 %169) #16, !srcloc !11
  %170 = load ptr, ptr %10, align 4
  %171 = getelementptr inbounds %struct.net_device, ptr %170, i32 0, i32 72
  %172 = load ptr, ptr %171, align 32
  %173 = getelementptr i8, ptr %170, i32 1976
  %174 = load ptr, ptr %173, align 8
  %175 = getelementptr inbounds %struct.gfar, ptr %174, i32 0, i32 128
  %176 = getelementptr i8, ptr %172, i32 5
  %177 = load i8, ptr %176, align 1
  %178 = zext i8 %177 to i32
  %179 = shl nuw i32 %178, 24
  %180 = getelementptr i8, ptr %172, i32 4
  %181 = load i8, ptr %180, align 1
  %182 = zext i8 %181 to i32
  %183 = shl nuw nsw i32 %182, 16
  %184 = or i32 %183, %179
  %185 = getelementptr i8, ptr %172, i32 3
  %186 = load i8, ptr %185, align 1
  %187 = zext i8 %186 to i32
  %188 = shl nuw nsw i32 %187, 8
  %189 = or i32 %184, %188
  %190 = getelementptr i8, ptr %172, i32 2
  %191 = load i8, ptr %190, align 1
  %192 = zext i8 %191 to i32
  %193 = or i32 %189, %192
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  %194 = tail call i32 @llvm.bswap.i32(i32 %193) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %175, i32 %194) #16, !srcloc !11
  %195 = getelementptr i8, ptr %172, i32 1
  %196 = load i8, ptr %195, align 1
  %197 = zext i8 %196 to i32
  %198 = shl nuw i32 %197, 24
  %199 = load i8, ptr %172, align 1
  %200 = zext i8 %199 to i32
  %201 = shl nuw nsw i32 %200, 16
  %202 = or i32 %201, %198
  %203 = getelementptr %struct.gfar, ptr %174, i32 0, i32 129
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  %204 = tail call i32 @llvm.bswap.i32(i32 %202) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %203, i32 %204) #16, !srcloc !11
  %205 = load ptr, ptr %10, align 4
  tail call void @gfar_set_multi(ptr noundef %205)
  %206 = getelementptr inbounds %struct.gfar_private, ptr %0, i32 0, i32 16
  %207 = load i32, ptr %206, align 16
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %218, label %209

209:                                              ; preds = %209, %162
  %210 = phi i32 [ %215, %209 ], [ 0, %162 ]
  %211 = getelementptr %struct.gfar_private, ptr %0, i32 0, i32 11, i32 %210, i32 3
  %212 = load ptr, ptr %211, align 8
  %213 = getelementptr inbounds %struct.gfar, ptr %212, i32 0, i32 3
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %213, i32 -1) #16, !srcloc !11
  %214 = getelementptr inbounds %struct.gfar, ptr %212, i32 0, i32 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %214, i32 0) #16, !srcloc !11
  %215 = add nuw i32 %210, 1
  %216 = load i32, ptr %206, align 16
  %217 = icmp ult i32 %215, %216
  br i1 %217, label %209, label %218

218:                                              ; preds = %209, %162
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  store i32 255, ptr %2, align 4
  store i32 255, ptr %3, align 4
  %219 = load ptr, ptr %4, align 8
  %220 = getelementptr inbounds %struct.gfar_private, ptr %0, i32 0, i32 13
  %221 = load i16, ptr %220, align 4
  %222 = icmp eq i16 %221, 1
  br i1 %222, label %223, label %272

223:                                              ; preds = %218
  %224 = getelementptr inbounds %struct.gfar, ptr %219, i32 0, i32 227
  %225 = getelementptr inbounds %struct.gfar_private, ptr %0, i32 0, i32 14
  %226 = load i32, ptr %225, align 8
  %227 = call i32 @_find_next_bit_le(ptr noundef nonnull %2, i32 noundef %226, i32 noundef 0) #16
  %228 = load i32, ptr %225, align 8
  %229 = icmp ult i32 %227, %228
  br i1 %229, label %230, label %248

230:                                              ; preds = %242, %223
  %231 = phi i32 [ %245, %242 ], [ %227, %223 ]
  %232 = getelementptr i32, ptr %224, i32 %231
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  call void @arm_heavy_mb() #16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %232, i32 0) #16, !srcloc !11
  %233 = getelementptr %struct.gfar_private, ptr %0, i32 0, i32 8, i32 %231
  %234 = load ptr, ptr %233, align 4
  %235 = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %234, i32 0, i32 13
  %236 = load i32, ptr %235, align 4
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %242, label %238, !prof !19

238:                                              ; preds = %230
  %239 = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %234, i32 0, i32 14
  %240 = load i32, ptr %239, align 64
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  call void @arm_heavy_mb() #16
  %241 = call i32 @llvm.bswap.i32(i32 %240) #16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %232, i32 %241) #16, !srcloc !11
  br label %242

242:                                              ; preds = %238, %230
  %243 = load i32, ptr %225, align 8
  %244 = add nuw i32 %231, 1
  %245 = call i32 @_find_next_bit_le(ptr noundef nonnull %2, i32 noundef %243, i32 noundef %244) #16
  %246 = load i32, ptr %225, align 8
  %247 = icmp ult i32 %245, %246
  br i1 %247, label %230, label %248

248:                                              ; preds = %242, %223
  %249 = getelementptr inbounds %struct.gfar, ptr %219, i32 0, i32 218
  %250 = load i32, ptr %117, align 4
  %251 = call i32 @_find_next_bit_le(ptr noundef nonnull %3, i32 noundef %250, i32 noundef 0) #16
  %252 = load i32, ptr %117, align 4
  %253 = icmp ult i32 %251, %252
  br i1 %253, label %254, label %294

254:                                              ; preds = %266, %248
  %255 = phi i32 [ %269, %266 ], [ %251, %248 ]
  %256 = getelementptr i32, ptr %249, i32 %255
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  call void @arm_heavy_mb() #16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %256, i32 0) #16, !srcloc !11
  %257 = getelementptr %struct.gfar_private, ptr %0, i32 0, i32 9, i32 %255
  %258 = load ptr, ptr %257, align 4
  %259 = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %258, i32 0, i32 13
  %260 = load i8, ptr %259, align 4
  %261 = icmp eq i8 %260, 0
  br i1 %261, label %266, label %262, !prof !19

262:                                              ; preds = %254
  %263 = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %258, i32 0, i32 14
  %264 = load i32, ptr %263, align 8
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  call void @arm_heavy_mb() #16
  %265 = call i32 @llvm.bswap.i32(i32 %264) #16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %256, i32 %265) #16, !srcloc !11
  br label %266

266:                                              ; preds = %262, %254
  %267 = load i32, ptr %117, align 4
  %268 = add nuw i32 %255, 1
  %269 = call i32 @_find_next_bit_le(ptr noundef nonnull %3, i32 noundef %267, i32 noundef %268) #16
  %270 = load i32, ptr %117, align 4
  %271 = icmp ult i32 %269, %270
  br i1 %271, label %254, label %294

272:                                              ; preds = %218
  %273 = getelementptr inbounds %struct.gfar, ptr %219, i32 0, i32 27
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %273, i32 0) #16, !srcloc !11
  %274 = getelementptr inbounds %struct.gfar_private, ptr %0, i32 0, i32 8
  %275 = load ptr, ptr %274, align 4
  %276 = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %275, i32 0, i32 13
  %277 = load i32, ptr %276, align 4
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %283, label %279, !prof !19

279:                                              ; preds = %272
  %280 = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %275, i32 0, i32 14
  %281 = load i32, ptr %280, align 64
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  %282 = tail call i32 @llvm.bswap.i32(i32 %281) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %273, i32 %282) #16, !srcloc !11
  br label %283

283:                                              ; preds = %279, %272
  %284 = getelementptr inbounds %struct.gfar, ptr %219, i32 0, i32 71
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %284, i32 0) #16, !srcloc !11
  %285 = getelementptr inbounds %struct.gfar_private, ptr %0, i32 0, i32 9
  %286 = load ptr, ptr %285, align 4
  %287 = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %286, i32 0, i32 13
  %288 = load i8, ptr %287, align 4
  %289 = icmp eq i8 %288, 0
  br i1 %289, label %294, label %290, !prof !20

290:                                              ; preds = %283
  %291 = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %286, i32 0, i32 14
  %292 = load i32, ptr %291, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  %293 = tail call i32 @llvm.bswap.i32(i32 %292) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %284, i32 %293) #16, !srcloc !11
  br label %294

294:                                              ; preds = %290, %283, %266, %248
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @gfar_start(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gfar_private, ptr %0, i32 0, i32 11, i32 0, i32 3
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.gfar, ptr %3, i32 0, i32 72
  %5 = getelementptr inbounds %struct.gfar_private, ptr %0, i32 0, i32 33
  %6 = load i32, ptr %5, align 16
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %7) #16, !srcloc !11
  %8 = getelementptr inbounds %struct.gfar, ptr %3, i32 0, i32 28
  %9 = getelementptr inbounds %struct.gfar_private, ptr %0, i32 0, i32 34
  %10 = load i32, ptr %9, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %11) #16, !srcloc !11
  %12 = getelementptr inbounds %struct.gfar, ptr %3, i32 0, i32 10
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #16, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !13
  %14 = or i32 %13, -1023410176
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %14) #16, !srcloc !11
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #16, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !13
  %16 = and i32 %15, -402653185
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %16) #16, !srcloc !11
  %17 = getelementptr inbounds %struct.gfar_private, ptr %0, i32 0, i32 16
  %18 = load i32, ptr %17, align 16
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %35, label %20

20:                                               ; preds = %20, %1
  %21 = phi i32 [ %32, %20 ], [ 0, %1 ]
  %22 = getelementptr %struct.gfar_private, ptr %0, i32 0, i32 11, i32 %21, i32 3
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.gfar, ptr %23, i32 0, i32 24
  %25 = getelementptr %struct.gfar_private, ptr %0, i32 0, i32 11, i32 %21, i32 6
  %26 = load i32, ptr %25, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %27) #16, !srcloc !11
  %28 = getelementptr inbounds %struct.gfar, ptr %23, i32 0, i32 69
  %29 = getelementptr %struct.gfar_private, ptr %0, i32 0, i32 11, i32 %21, i32 7
  %30 = load i32, ptr %29, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %31) #16, !srcloc !11
  %32 = add nuw i32 %21, 1
  %33 = load i32, ptr %17, align 16
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %20, label %35

35:                                               ; preds = %20, %1
  %36 = phi ptr [ %3, %1 ], [ %23, %20 ]
  %37 = getelementptr inbounds %struct.gfar, ptr %36, i32 0, i32 119
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #16, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !13
  %39 = or i32 %38, 83886080
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %39) #16, !srcloc !11
  %40 = load i32, ptr %17, align 16
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %55, label %42

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.gfar_private, ptr %0, i32 0, i32 19, i32 1
  br label %44

44:                                               ; preds = %44, %42
  %45 = phi i32 [ 0, %42 ], [ %52, %44 ]
  %46 = getelementptr %struct.gfar_private, ptr %0, i32 0, i32 11, i32 %45, i32 3
  %47 = load ptr, ptr %46, align 8
  %48 = getelementptr inbounds %struct.gfar, ptr %47, i32 0, i32 4
  %49 = load i32, ptr %43, align 4
  %50 = or i32 %49, -244252541
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %51) #16, !srcloc !11
  %52 = add nuw i32 %45, 1
  %53 = load i32, ptr %17, align 16
  %54 = icmp ult i32 %52, %53
  br i1 %54, label %44, label %55

55:                                               ; preds = %44, %35
  %56 = getelementptr inbounds %struct.gfar_private, ptr %0, i32 0, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.net_device, ptr %57, i32 0, i32 87
  %59 = load ptr, ptr %58, align 64
  %60 = load volatile i32, ptr @jiffies, align 64
  %61 = getelementptr inbounds %struct.netdev_queue, ptr %59, i32 0, i32 11
  %62 = load volatile i32, ptr %61, align 8
  %63 = icmp eq i32 %62, %60
  br i1 %63, label %65, label %64

64:                                               ; preds = %55
  store volatile i32 %60, ptr %61, align 8
  br label %65

65:                                               ; preds = %64, %55
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gfar_set_multi(ptr noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 1408
  %3 = getelementptr i8, ptr %0, i32 1976
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 14
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  %9 = getelementptr inbounds %struct.gfar, ptr %4, i32 0, i32 68
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #16
  tail call void asm sideeffect "dsb ", "~{memory}"() #16
  br i1 %8, label %13, label %11

11:                                               ; preds = %1
  %12 = or i32 %10, 134217728
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %12) #16, !srcloc !11
  br label %15

13:                                               ; preds = %1
  %14 = and i32 %10, -134217729
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %14) #16, !srcloc !11
  br label %15

15:                                               ; preds = %13, %11
  %16 = load i32, ptr %5, align 8
  %17 = and i32 %16, 512
  %18 = icmp eq i32 %17, 0
  %19 = getelementptr inbounds %struct.gfar, ptr %4, i32 0, i32 164
  tail call void asm sideeffect "dsb st", "~{memory}"() #16
  tail call void @arm_heavy_mb() #16
  br i1 %18, label %36, label %20

20:                                               ; preds = %15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 -1) #16, !srcloc !11
  %21 = getelementptr inbounds %struct.gfar, ptr %4, i32 0, i32 165
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 -1) #16, !srcloc !11
  %22 = getelementptr inbounds %struct.gfar, ptr %4, i32 0, i32 166
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 -1) #16, !srcloc !11
  %23 = getelementptr inbounds %struct.gfar, ptr %4, i32 0, i32 167
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 -1) #16, !srcloc !11
  %24 = getelementptr inbounds %struct.gfar, ptr %4, i32 0, i32 168
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 -1) #16, !srcloc !11
  %25 = getelementptr inbounds %struct.gfar, ptr %4, i32 0, i32 169
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 -1) #16, !srcloc !11
  %26 = getelementptr inbounds %struct.gfar, ptr %4, i32 0, i32 170
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 -1) #16, !srcloc !11
  %27 = getelementptr inbounds %struct.gfar, ptr %4, i32 0, i32 171
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 -1) #16, !srcloc !11
  %28 = getelementptr inbounds %struct.gfar, ptr %4, i32 0, i32 173
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 -1) #16, !srcloc !11
  %29 = getelementptr inbounds %struct.gfar, ptr %4, i32 0, i32 174
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 -1) #16, !srcloc !11
  %30 = getelementptr inbounds %struct.gfar, ptr %4, i32 0, i32 175
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 -1) #16, !srcloc !11
  %31 = getelementptr inbounds %struct.gfar, ptr %4, i32 0, i32 176
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 -1) #16, !srcloc !11
  %32 = getelementptr inbounds %struct.gfar, ptr %4, i32 0, i32 177
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 -1) #16, !srcloc !11
  %33 = getelementptr inbounds %struct.gfar, ptr %4, i32 0, i32 178
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 -1) #16, !srcloc !11
  %34 = getelementptr inbounds %struct.gfar, ptr %4, i32 0, i32 179
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 -1) #16, !srcloc !11
  %35 = getelementptr inbounds %struct.gfar, ptr %4, i32 0, i32 180
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 -1) #16, !srcloc !11
  br label %140

36:                                               ; preds = %15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 0) #16, !srcloc !11
  %37 = getelementptr inbounds %struct.gfar, ptr %4, i32 0, i32 165
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 0) #16, !srcloc !11
  %38 = getelementptr inbounds %struct.gfar, ptr %4, i32 0, i32 166
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 0) #16, !srcloc !11
  %39 = getelementptr inbounds %struct.gfar, ptr %4, i32 0, i32 167
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 0) #16, !srcloc !11
  %40 = getelementptr inbounds %struct.gfar, ptr %4, i32 0, i32 168
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 0) #16, !srcloc !11
  %41 = getelementptr inbounds %struct.gfar, ptr %4, i32 0, i32 169
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 0) #16, !srcloc !11
  %42 = getelementptr inbounds %struct.gfar, ptr %4, i32 0, i32 170
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 0) #16, !srcloc !11
  %43 = getelementptr inbounds %struct.gfar, ptr %4, i32 0, i32 171
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 0) #16, !srcloc !11
  %44 = getelementptr inbounds %struct.gfar, ptr %4, i32 0, i32 173
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 0) #16, !srcloc !11
  %45 = getelementptr inbounds %struct.gfar, ptr %4, i32 0, i32 174
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 0) #16, !srcloc !11
  %46 = getelementptr inbounds %struct.gfar, ptr %4, i32 0, i32 175
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 0) #16, !srcloc !11
  %47 = getelementptr inbounds %struct.gfar, ptr %4, i32 0, i32 176
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 0) #16, !srcloc !11
  %48 = getelementptr inbounds %struct.gfar, ptr %4, i32 0, i32 177
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 0) #16, !srcloc !11
  %49 = getelementptr inbounds %struct.gfar, ptr %4, i32 0, i32 178
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 0) #16, !srcloc !11
  %50 = getelementptr inbounds %struct.gfar, ptr %4, i32 0, i32 179
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 0) #16, !srcloc !11
  %51 = getelementptr inbounds %struct.gfar, ptr %4, i32 0, i32 180
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 0) #16, !srcloc !11
  %52 = getelementptr i8, ptr %0, i32 2756
  %53 = load i8, ptr %52, align 4
  %54 = and i8 %53, 1
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %65, label %56

56:                                               ; preds = %56, %36
  %57 = phi i32 [ %63, %56 ], [ 1, %36 ]
  %58 = load ptr, ptr %3, align 8
  %59 = getelementptr inbounds %struct.gfar, ptr %58, i32 0, i32 128
  %60 = shl nuw i32 %57, 1
  %61 = getelementptr i32, ptr %59, i32 %60
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 0) #16, !srcloc !11
  %62 = getelementptr i32, ptr %61, i32 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 0) #16, !srcloc !11
  %63 = add nuw nsw i32 %57, 1
  %64 = icmp eq i32 %63, 16
  br i1 %64, label %65, label %56

65:                                               ; preds = %56, %36
  %66 = phi i32 [ 0, %36 ], [ 16, %56 ]
  %67 = phi i32 [ 0, %36 ], [ 1, %56 ]
  %68 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 61
  %69 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 61, i32 1
  %70 = load i32, ptr %69, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %140, label %72

72:                                               ; preds = %65
  %73 = load ptr, ptr %68, align 4
  %74 = icmp eq ptr %73, %68
  br i1 %74, label %140, label %75

75:                                               ; preds = %72
  %76 = getelementptr i8, ptr %0, i32 2884
  br label %77

77:                                               ; preds = %136, %75
  %78 = phi ptr [ %73, %75 ], [ %138, %136 ]
  %79 = phi i32 [ %67, %75 ], [ %137, %136 ]
  %80 = icmp slt i32 %79, %66
  %81 = getelementptr inbounds %struct.netdev_hw_addr, ptr %78, i32 0, i32 2
  br i1 %80, label %82, label %117

82:                                               ; preds = %77
  %83 = load ptr, ptr %3, align 8
  %84 = getelementptr inbounds %struct.gfar, ptr %83, i32 0, i32 128
  %85 = shl i32 %79, 1
  %86 = getelementptr i32, ptr %84, i32 %85
  %87 = getelementptr %struct.netdev_hw_addr, ptr %78, i32 0, i32 2, i32 5
  %88 = load i8, ptr %87, align 1
  %89 = zext i8 %88 to i32
  %90 = shl nuw i32 %89, 24
  %91 = getelementptr %struct.netdev_hw_addr, ptr %78, i32 0, i32 2, i32 4
  %92 = load i8, ptr %91, align 1
  %93 = zext i8 %92 to i32
  %94 = shl nuw nsw i32 %93, 16
  %95 = or i32 %94, %90
  %96 = getelementptr %struct.netdev_hw_addr, ptr %78, i32 0, i32 2, i32 3
  %97 = load i8, ptr %96, align 1
  %98 = zext i8 %97 to i32
  %99 = shl nuw nsw i32 %98, 8
  %100 = or i32 %95, %99
  %101 = getelementptr %struct.netdev_hw_addr, ptr %78, i32 0, i32 2, i32 2
  %102 = load i8, ptr %101, align 1
  %103 = zext i8 %102 to i32
  %104 = or i32 %100, %103
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  %105 = tail call i32 @llvm.bswap.i32(i32 %104) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %86, i32 %105) #16, !srcloc !11
  %106 = getelementptr %struct.netdev_hw_addr, ptr %78, i32 0, i32 2, i32 1
  %107 = load i8, ptr %106, align 1
  %108 = zext i8 %107 to i32
  %109 = shl nuw i32 %108, 24
  %110 = load i8, ptr %81, align 1
  %111 = zext i8 %110 to i32
  %112 = shl nuw nsw i32 %111, 16
  %113 = or i32 %112, %109
  %114 = getelementptr i32, ptr %86, i32 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  %115 = tail call i32 @llvm.bswap.i32(i32 %113) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %114, i32 %115) #16, !srcloc !11
  %116 = add nsw i32 %79, 1
  br label %136

117:                                              ; preds = %77
  %118 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %81, i32 noundef 6) #18
  %119 = tail call i32 asm "rbit $0, $1", "=r,r"(i32 %118) #19, !srcloc !21
  %120 = load i32, ptr %76, align 4
  %121 = sub i32 32, %120
  %122 = lshr i32 %119, %121
  %123 = and i32 %122, 31
  %124 = sub i32 37, %120
  %125 = lshr i32 %119, %124
  %126 = xor i32 %123, 31
  %127 = shl nuw i32 1, %126
  %128 = and i32 %125, 255
  %129 = getelementptr %struct.gfar_private, ptr %2, i32 0, i32 40, i32 %128
  %130 = load ptr, ptr %129, align 4
  %131 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %130) #16, !srcloc !12
  %132 = tail call i32 @llvm.bswap.i32(i32 %131) #16
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !13
  %133 = or i32 %127, %132
  %134 = load ptr, ptr %129, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  %135 = tail call i32 @llvm.bswap.i32(i32 %133) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %134, i32 %135) #16, !srcloc !11
  br label %136

136:                                              ; preds = %117, %82
  %137 = phi i32 [ %116, %82 ], [ %79, %117 ]
  %138 = load ptr, ptr %78, align 4
  %139 = icmp eq ptr %138, %68
  br i1 %139, label %140, label %77

140:                                              ; preds = %136, %72, %65, %20
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @gfar_driver_init() #3 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @gfar_driver, ptr noundef null) #16
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @gfar_driver_exit() #3 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @gfar_driver) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dql_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @gfar_alloc_rx_buffs(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %0, i32 0, i32 8
  %4 = load i16, ptr %3, align 2
  %5 = zext i16 %4 to i32
  %6 = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %0, i32 0, i32 1
  %7 = icmp eq i32 %1, 0
  br i1 %7, label %55, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %0, align 64
  %10 = getelementptr %struct.gfar_rx_buff, ptr %9, i32 %5
  %11 = load ptr, ptr %6, align 4
  %12 = getelementptr %struct.rxbd8, ptr %11, i32 %5
  %13 = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %0, i32 0, i32 4
  br label %14

14:                                               ; preds = %50, %8
  %15 = phi i32 [ %1, %8 ], [ %19, %50 ]
  %16 = phi i32 [ %5, %8 ], [ %53, %50 ]
  %17 = phi ptr [ %10, %8 ], [ %52, %50 ]
  %18 = phi ptr [ %12, %8 ], [ %51, %50 ]
  %19 = add i32 %15, -1
  %20 = getelementptr inbounds %struct.gfar_rx_buff, ptr %17, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %26, !prof !19

23:                                               ; preds = %14
  %24 = tail call fastcc zeroext i1 @gfar_new_page(ptr noundef %0, ptr noundef %17)
  br i1 %24, label %26, label %25, !prof !20

25:                                               ; preds = %23
  tail call fastcc void @gfar_rx_alloc_err(ptr noundef %0)
  br label %55

26:                                               ; preds = %23, %14
  %27 = load i32, ptr %17, align 4
  %28 = getelementptr inbounds %struct.gfar_rx_buff, ptr %17, i32 0, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %27, 64
  %31 = add i32 %30, %29
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #16
  %33 = getelementptr inbounds %struct.rxbd8, ptr %18, i32 0, i32 1
  store i32 %32, ptr %33, align 4
  %34 = load ptr, ptr %6, align 4
  %35 = load i16, ptr %13, align 16
  %36 = zext i16 %35 to i32
  %37 = getelementptr %struct.rxbd8, ptr %34, i32 -1
  %38 = getelementptr %struct.rxbd8, ptr %37, i32 %36
  %39 = icmp eq ptr %38, %18
  %40 = select i1 %39, i32 176, i32 144
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !22
  tail call void @arm_heavy_mb() #16
  store i32 %40, ptr %18, align 4
  %41 = getelementptr %struct.rxbd8, ptr %18, i32 1
  %42 = getelementptr %struct.gfar_rx_buff, ptr %17, i32 1
  %43 = add i32 %16, 1
  %44 = load i16, ptr %13, align 16
  %45 = zext i16 %44 to i32
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %47, label %50, !prof !19

47:                                               ; preds = %26
  %48 = load ptr, ptr %6, align 4
  %49 = load ptr, ptr %0, align 64
  br label %50

50:                                               ; preds = %47, %26
  %51 = phi ptr [ %48, %47 ], [ %41, %26 ]
  %52 = phi ptr [ %49, %47 ], [ %42, %26 ]
  %53 = phi i32 [ 0, %47 ], [ %43, %26 ]
  %54 = icmp eq i32 %19, 0
  br i1 %54, label %55, label %14

55:                                               ; preds = %50, %25, %2
  %56 = phi i32 [ %16, %25 ], [ %5, %2 ], [ %53, %50 ]
  %57 = trunc i32 %56 to i16
  store i16 %57, ptr %3, align 2
  %58 = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %0, i32 0, i32 9
  store i16 %57, ptr %58, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @gfar_new_page(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = tail call ptr @__alloc_pages(i32 noundef 404000, i32 noundef 0, i32 noundef 0, ptr noundef null) #16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5, !prof !19

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @dma_map_page_attrs(ptr noundef %7, ptr noundef nonnull %3, i32 noundef 0, i32 noundef 4096, i32 noundef 2, i32 noundef 0) #16
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %11, !prof !19

10:                                               ; preds = %5
  tail call void @__free_pages(ptr noundef nonnull %3, i32 noundef 0) #16
  br label %14

11:                                               ; preds = %5
  store i32 %8, ptr %1, align 4
  %12 = getelementptr inbounds %struct.gfar_rx_buff, ptr %1, i32 0, i32 1
  store ptr %3, ptr %12, align 4
  %13 = getelementptr inbounds %struct.gfar_rx_buff, ptr %1, i32 0, i32 2
  store i32 0, ptr %13, align 4
  br label %14

14:                                               ; preds = %11, %10, %2
  %15 = phi i1 [ false, %10 ], [ true, %11 ], [ false, %2 ]
  ret i1 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @gfar_rx_alloc_err(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 2584
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str) #20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #16, !srcloc !23
  %5 = tail call { i64, i32 } asm sideeffect "@ atomic64_add\0A1:\09ldrexd\09$0, ${0:H}, [$3]\0A\09adds ${0:Q}, ${0:Q}, ${4:Q}\0A\09adc ${0:R}, ${0:R}, ${4:R}\0A\09strexd\09$1, $0, ${0:H}, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,r,*Qo,~{cc}"(ptr elementtype(i64) %4, ptr %4, i64 1, ptr elementtype(i64) %4) #16, !srcloc !24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gfar_probe(ptr noundef %0) #0 {
  %2 = alloca %struct.of_phandle_args, align 4
  %3 = alloca %struct.of_phandle_args, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %9 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %10 = load ptr, ptr %9, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  store ptr null, ptr %4, align 4, !annotation !16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  store i32 0, ptr %5, align 4, !annotation !16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  store i32 0, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  store i32 0, ptr %7, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %285, label %12

12:                                               ; preds = %1
  %13 = tail call i32 @of_device_is_compatible(ptr noundef nonnull %10, ptr noundef nonnull @.str.12) #16
  %14 = icmp eq i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i16
  br i1 %14, label %34, label %17

17:                                               ; preds = %12
  %18 = tail call ptr @of_get_next_available_child(ptr noundef nonnull %10, ptr noundef null) #16
  %19 = icmp eq ptr %18, null
  br i1 %19, label %31, label %20

20:                                               ; preds = %20, %17
  %21 = phi i32 [ %25, %20 ], [ 0, %17 ]
  %22 = phi ptr [ %26, %20 ], [ %18, %17 ]
  %23 = tail call zeroext i1 @of_node_name_eq(ptr noundef nonnull %22, ptr noundef nonnull @.str.20) #16
  %24 = zext i1 %23 to i32
  %25 = add i32 %21, %24
  %26 = tail call ptr @of_get_next_available_child(ptr noundef nonnull %10, ptr noundef nonnull %22) #16
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %20

28:                                               ; preds = %20
  %29 = add i32 %25, -3
  %30 = icmp ult i32 %29, -2
  br i1 %30, label %31, label %34

31:                                               ; preds = %28, %17
  %32 = phi i32 [ %25, %28 ], [ 0, %17 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.13, i32 noundef %32) #20
  %33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #20
  br label %285

34:                                               ; preds = %28, %12
  %35 = phi i32 [ 1, %12 ], [ %25, %28 ]
  %36 = tail call ptr @alloc_etherdev_mqs(i32 noundef 3584, i32 noundef %35, i32 noundef %35) #16
  %37 = icmp eq ptr %36, null
  br i1 %37, label %285, label %38

38:                                               ; preds = %34
  %39 = getelementptr i8, ptr %36, i32 1408
  %40 = getelementptr i8, ptr %36, i32 1412
  store ptr %36, ptr %40, align 4
  %41 = getelementptr i8, ptr %36, i32 2564
  store i16 %16, ptr %41, align 4
  %42 = getelementptr i8, ptr %36, i32 2568
  store i32 %35, ptr %42, align 8
  %43 = tail call i32 @netif_set_real_num_rx_queues(ptr noundef nonnull %36, i32 noundef %35) #16
  %44 = getelementptr i8, ptr %36, i32 2572
  store i32 %35, ptr %44, align 4
  %45 = load i32, ptr %42, align 8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %65, label %47

47:                                               ; preds = %53, %38
  %48 = phi i32 [ %59, %53 ], [ 0, %38 ]
  %49 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %50 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %49, i32 noundef 3520, i32 noundef 128) #21
  %51 = getelementptr %struct.gfar_private, ptr %39, i32 0, i32 8, i32 %48
  store ptr %50, ptr %51, align 4
  %52 = icmp eq ptr %50, null
  br i1 %52, label %259, label %53

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %50, i32 0, i32 9
  store ptr null, ptr %54, align 16
  %55 = trunc i32 %48 to i16
  %56 = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %50, i32 0, i32 12
  store i16 %55, ptr %56, align 2
  %57 = load ptr, ptr %40, align 4
  %58 = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %50, i32 0, i32 8
  store ptr %57, ptr %58, align 4
  store i32 0, ptr %50, align 64
  %59 = add nuw i32 %48, 1
  %60 = load i32, ptr %42, align 8
  %61 = icmp ult i32 %59, %60
  br i1 %61, label %47, label %62

62:                                               ; preds = %53
  %63 = load i32, ptr %44, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %80, label %65

65:                                               ; preds = %62, %38
  br label %66

66:                                               ; preds = %72, %65
  %67 = phi i32 [ %77, %72 ], [ 0, %65 ]
  %68 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %69 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %68, i32 noundef 3520, i32 noundef 128) #21
  %70 = getelementptr %struct.gfar_private, ptr %39, i32 0, i32 9, i32 %67
  store ptr %69, ptr %70, align 4
  %71 = icmp eq ptr %69, null
  br i1 %71, label %248, label %72

72:                                               ; preds = %66
  %73 = trunc i32 %67 to i16
  %74 = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %69, i32 0, i32 5
  store i16 %73, ptr %74, align 2
  %75 = load ptr, ptr %40, align 4
  %76 = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %69, i32 0, i32 2
  store ptr %75, ptr %76, align 8
  %77 = add nuw i32 %67, 1
  %78 = load i32, ptr %44, align 4
  %79 = icmp ult i32 %77, %78
  br i1 %79, label %66, label %80

80:                                               ; preds = %72, %62
  %81 = call i32 @of_property_read_string(ptr noundef nonnull %10, ptr noundef nonnull @.str.17, ptr noundef nonnull %4) #16
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %80
  %84 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #20
  br label %248

85:                                               ; preds = %80
  %86 = getelementptr i8, ptr %36, i32 2788
  store volatile ptr %86, ptr %86, align 4
  %87 = getelementptr i8, ptr %36, i32 2792
  store ptr %86, ptr %87, align 4
  %88 = getelementptr i8, ptr %36, i32 2796
  store i32 0, ptr %88, align 4
  %89 = getelementptr i8, ptr %36, i32 2800
  call void @__mutex_init(ptr noundef %89, ptr noundef nonnull @.str.19, ptr noundef nonnull @gfar_of_init.__key) #16
  %90 = getelementptr i8, ptr %36, i32 1976
  store ptr null, ptr %90, align 8
  %91 = getelementptr i8, ptr %36, i32 2488
  store ptr null, ptr %91, align 8
  %92 = load i16, ptr %41, align 4
  %93 = icmp eq i16 %92, 1
  br i1 %93, label %94, label %108

94:                                               ; preds = %85
  %95 = call ptr @of_get_next_available_child(ptr noundef nonnull %10, ptr noundef null) #16
  %96 = icmp eq ptr %95, null
  br i1 %96, label %112, label %97

97:                                               ; preds = %105, %94
  %98 = phi ptr [ %106, %105 ], [ %95, %94 ]
  %99 = call zeroext i1 @of_node_name_eq(ptr noundef nonnull %98, ptr noundef nonnull @.str.20) #16
  br i1 %99, label %100, label %105

100:                                              ; preds = %97
  %101 = load ptr, ptr %4, align 4
  %102 = call fastcc i32 @gfar_parse_group(ptr noundef nonnull %98, ptr noundef %39, ptr noundef %101) #16
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %100
  call void @of_node_put(ptr noundef nonnull %98) #16
  br label %239

105:                                              ; preds = %100, %97
  %106 = call ptr @of_get_next_available_child(ptr noundef nonnull %10, ptr noundef nonnull %98) #16
  %107 = icmp eq ptr %106, null
  br i1 %107, label %112, label %97

108:                                              ; preds = %85
  %109 = load ptr, ptr %4, align 4
  %110 = call fastcc i32 @gfar_parse_group(ptr noundef nonnull %10, ptr noundef %39, ptr noundef %109) #16
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %239

112:                                              ; preds = %108, %105, %94
  %113 = call ptr @of_find_property(ptr noundef nonnull %10, ptr noundef nonnull @.str.21, ptr noundef null) #16
  %114 = icmp eq ptr %113, null
  br i1 %114, label %122, label %115

115:                                              ; preds = %112
  %116 = getelementptr i8, ptr %36, i32 1424
  %117 = load i32, ptr %116, align 16
  %118 = or i32 %117, 512
  store i32 %118, ptr %116, align 16
  %119 = getelementptr i8, ptr %36, i32 2756
  %120 = load i8, ptr %119, align 4
  %121 = or i8 %120, 2
  store i8 %121, ptr %119, align 4
  br label %122

122:                                              ; preds = %115, %112
  %123 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %10, ptr noundef nonnull @.str.22, ptr noundef nonnull %6, i32 noundef 1, i32 noundef 0) #16
  %124 = icmp sgt i32 %123, -1
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  %126 = load i32, ptr %6, align 4
  %127 = getelementptr i8, ptr %36, i32 2776
  store i32 %126, ptr %127, align 8
  br label %128

128:                                              ; preds = %125, %122
  %129 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %10, ptr noundef nonnull @.str.23, ptr noundef nonnull %7, i32 noundef 1, i32 noundef 0) #16
  %130 = icmp sgt i32 %129, -1
  br i1 %130, label %131, label %134

131:                                              ; preds = %128
  %132 = load i32, ptr %7, align 4
  %133 = getelementptr i8, ptr %36, i32 2780
  store i32 %132, ptr %133, align 4
  br label %134

134:                                              ; preds = %131, %128
  %135 = load i32, ptr %6, align 4
  %136 = icmp ne i32 %135, 0
  %137 = load i32, ptr %7, align 4
  %138 = icmp ne i32 %137, 0
  %139 = select i1 %136, i1 true, i1 %138
  br i1 %139, label %140, label %144

140:                                              ; preds = %134
  %141 = getelementptr i8, ptr %36, i32 1424
  %142 = load i32, ptr %141, align 16
  %143 = or i32 %142, 1024
  store i32 %143, ptr %141, align 16
  br label %144

144:                                              ; preds = %140, %134
  %145 = call i32 @of_get_ethdev_address(ptr noundef nonnull %10, ptr noundef nonnull %36) #16
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %150, label %147

147:                                              ; preds = %144
  call fastcc void @eth_hw_addr_random(ptr noundef nonnull %36) #16
  %148 = getelementptr inbounds %struct.net_device, ptr %36, i32 0, i32 72
  %149 = load ptr, ptr %148, align 32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %8, ptr noundef nonnull @.str.24, ptr noundef %149) #20
  br label %150

150:                                              ; preds = %147, %144
  %151 = load ptr, ptr %4, align 4
  %152 = icmp eq ptr %151, null
  br i1 %152, label %170, label %153

153:                                              ; preds = %150
  %154 = call i32 @strcasecmp(ptr noundef nonnull %151, ptr noundef nonnull @.str.25) #16
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %162

156:                                              ; preds = %153
  %157 = getelementptr i8, ptr %36, i32 1424
  %158 = load i32, ptr %157, align 16
  %159 = or i32 %158, 15
  store i32 %159, ptr %157, align 16
  %160 = load ptr, ptr %4, align 4
  %161 = icmp eq ptr %160, null
  br i1 %161, label %170, label %162

162:                                              ; preds = %156, %153
  %163 = phi ptr [ %160, %156 ], [ %151, %153 ]
  %164 = call i32 @strcasecmp(ptr noundef nonnull %163, ptr noundef nonnull @.str.26) #16
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %162
  %167 = getelementptr i8, ptr %36, i32 1424
  %168 = load i32, ptr %167, align 16
  %169 = or i32 %168, 10623
  store i32 %169, ptr %167, align 16
  br label %170

170:                                              ; preds = %166, %162, %156, %150
  %171 = call i32 @of_get_phy_mode(ptr noundef nonnull %10, ptr noundef nonnull %5) #16
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %170
  %174 = load i32, ptr %5, align 4
  br label %203

175:                                              ; preds = %170
  %176 = load ptr, ptr %90, align 8
  %177 = getelementptr inbounds %struct.gfar, ptr %176, i32 0, i32 7
  %178 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %177) #16, !srcloc !12
  %179 = call i32 @llvm.bswap.i32(i32 %178) #16
  call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !13
  %180 = and i32 %179, 2
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %203

182:                                              ; preds = %175
  %183 = and i32 %179, 32
  %184 = icmp eq i32 %183, 0
  %185 = and i32 %179, 16
  %186 = icmp eq i32 %185, 0
  br i1 %184, label %189, label %187

187:                                              ; preds = %182
  %188 = select i1 %186, i32 5, i32 13
  br label %203

189:                                              ; preds = %182
  br i1 %186, label %198, label %190

190:                                              ; preds = %189
  %191 = and i32 %179, 4
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %203

193:                                              ; preds = %190
  %194 = getelementptr i8, ptr %36, i32 2704
  %195 = load i32, ptr %194, align 16
  %196 = icmp eq i32 %195, 10
  %197 = select i1 %196, i32 10, i32 9
  br label %203

198:                                              ; preds = %189
  %199 = getelementptr i8, ptr %36, i32 1424
  %200 = load i32, ptr %199, align 16
  %201 = and i32 %200, 1
  %202 = or i32 %201, 2
  br label %203

203:                                              ; preds = %198, %193, %190, %187, %175, %173
  %204 = phi i32 [ %174, %173 ], [ %197, %193 ], [ 4, %175 ], [ %188, %187 ], [ 7, %190 ], [ %202, %198 ]
  %205 = getelementptr i8, ptr %36, i32 2704
  store i32 %204, ptr %205, align 16
  %206 = call ptr @of_find_property(ptr noundef nonnull %10, ptr noundef nonnull @.str.27, ptr noundef null) #16
  %207 = icmp eq ptr %206, null
  br i1 %207, label %212, label %208

208:                                              ; preds = %203
  %209 = getelementptr i8, ptr %36, i32 1424
  %210 = load i32, ptr %209, align 16
  %211 = or i32 %210, 256
  store i32 %211, ptr %209, align 16
  br label %212

212:                                              ; preds = %208, %203
  %213 = call ptr @of_get_property(ptr noundef nonnull %10, ptr noundef nonnull @.str.28, ptr noundef null) #16
  %214 = icmp eq ptr %213, null
  br i1 %214, label %219, label %215

215:                                              ; preds = %212
  %216 = getelementptr i8, ptr %36, i32 1424
  %217 = load i32, ptr %216, align 16
  %218 = or i32 %217, 4096
  store i32 %218, ptr %216, align 16
  br label %219

219:                                              ; preds = %215, %212
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false) #16, !annotation !16
  %220 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %10, ptr noundef nonnull @.str.29, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %2) #16
  %221 = icmp eq i32 %220, 0
  %222 = load ptr, ptr %2, align 4
  %223 = select i1 %221, ptr %222, ptr null
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #16
  %224 = getelementptr i8, ptr %36, i32 2708
  store ptr %223, ptr %224, align 4
  %225 = icmp eq ptr %223, null
  br i1 %225, label %226, label %233

226:                                              ; preds = %219
  %227 = call zeroext i1 @of_phy_is_fixed_link(ptr noundef nonnull %10) #16
  br i1 %227, label %228, label %233

228:                                              ; preds = %226
  %229 = call i32 @of_phy_register_fixed_link(ptr noundef nonnull %10) #16
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %231, label %239

231:                                              ; preds = %228
  %232 = call ptr @of_node_get(ptr noundef nonnull %10) #16
  store ptr %232, ptr %224, align 4
  br label %233

233:                                              ; preds = %231, %226, %219
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false) #16, !annotation !16
  %234 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %10, ptr noundef nonnull @.str.30, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %3) #16
  %235 = icmp eq i32 %234, 0
  %236 = load ptr, ptr %3, align 4
  %237 = select i1 %235, ptr %236, ptr null
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #16
  %238 = getelementptr i8, ptr %36, i32 2712
  store ptr %237, ptr %238, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  br label %290

239:                                              ; preds = %228, %108, %104
  %240 = phi i32 [ %102, %104 ], [ %229, %228 ], [ %110, %108 ]
  %241 = load ptr, ptr %90, align 8
  %242 = icmp eq ptr %241, null
  br i1 %242, label %244, label %243

243:                                              ; preds = %239
  call void @iounmap(ptr noundef nonnull %241) #16
  br label %244

244:                                              ; preds = %243, %239
  %245 = load ptr, ptr %91, align 8
  %246 = icmp eq ptr %245, null
  br i1 %246, label %248, label %247

247:                                              ; preds = %244
  call void @iounmap(ptr noundef nonnull %245) #16
  br label %248

248:                                              ; preds = %247, %244, %83, %66
  %249 = phi i32 [ %81, %83 ], [ %240, %244 ], [ %240, %247 ], [ -12, %66 ]
  %250 = load i32, ptr %44, align 4
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %259, label %252

252:                                              ; preds = %252, %248
  %253 = phi i32 [ %256, %252 ], [ 0, %248 ]
  %254 = getelementptr %struct.gfar_private, ptr %39, i32 0, i32 9, i32 %253
  %255 = load ptr, ptr %254, align 4
  call void @kfree(ptr noundef %255) #16
  %256 = add nuw i32 %253, 1
  %257 = load i32, ptr %44, align 4
  %258 = icmp ult i32 %256, %257
  br i1 %258, label %252, label %259

259:                                              ; preds = %252, %248, %47
  %260 = phi i32 [ %249, %248 ], [ %249, %252 ], [ -12, %47 ]
  %261 = load i32, ptr %42, align 8
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %270, label %263

263:                                              ; preds = %263, %259
  %264 = phi i32 [ %267, %263 ], [ 0, %259 ]
  %265 = getelementptr %struct.gfar_private, ptr %39, i32 0, i32 8, i32 %264
  %266 = load ptr, ptr %265, align 4
  call void @kfree(ptr noundef %266) #16
  %267 = add nuw i32 %264, 1
  %268 = load i32, ptr %42, align 8
  %269 = icmp ult i32 %267, %268
  br i1 %269, label %263, label %270

270:                                              ; preds = %263, %259
  %271 = getelementptr i8, ptr %36, i32 2576
  %272 = load i32, ptr %271, align 16
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %287, label %274

274:                                              ; preds = %274, %270
  %275 = phi i32 [ %282, %274 ], [ 0, %270 ]
  %276 = getelementptr %struct.gfar_private, ptr %39, i32 0, i32 11, i32 %275, i32 13, i32 0
  %277 = load ptr, ptr %276, align 4
  call void @kfree(ptr noundef %277) #16
  store ptr null, ptr %276, align 4
  %278 = getelementptr %struct.gfar_private, ptr %39, i32 0, i32 11, i32 %275, i32 13, i32 1
  %279 = load ptr, ptr %278, align 4
  call void @kfree(ptr noundef %279) #16
  store ptr null, ptr %278, align 4
  %280 = getelementptr %struct.gfar_private, ptr %39, i32 0, i32 11, i32 %275, i32 13, i32 2
  %281 = load ptr, ptr %280, align 4
  call void @kfree(ptr noundef %281) #16
  store ptr null, ptr %280, align 4
  %282 = add nuw i32 %275, 1
  %283 = load i32, ptr %271, align 16
  %284 = icmp ult i32 %282, %283
  br i1 %284, label %274, label %287

285:                                              ; preds = %34, %31, %1
  %286 = phi i32 [ -22, %31 ], [ -12, %34 ], [ -19, %1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  br label %720

287:                                              ; preds = %274, %270
  %288 = load ptr, ptr %40, align 4
  call void @free_netdev(ptr noundef %288) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  %289 = icmp eq i32 %260, 0
  br i1 %289, label %290, label %720

290:                                              ; preds = %287, %233
  store ptr %36, ptr %40, align 4
  %291 = getelementptr i8, ptr %36, i32 2752
  store ptr %0, ptr %291, align 64
  store ptr %8, ptr %39, align 64
  %292 = getelementptr inbounds %struct.net_device, ptr %36, i32 0, i32 111, i32 1
  store ptr %8, ptr %292, align 4
  %293 = getelementptr i8, ptr %36, i32 2736
  store i32 -32, ptr %293, align 16
  %294 = getelementptr i8, ptr %36, i32 2740
  store volatile ptr %294, ptr %294, align 4
  %295 = getelementptr i8, ptr %36, i32 2744
  store ptr %294, ptr %295, align 4
  %296 = getelementptr i8, ptr %36, i32 2748
  store ptr @gfar_reset_task, ptr %296, align 4
  %297 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %39, ptr %297, align 8
  %298 = load ptr, ptr %291, align 64
  %299 = getelementptr i8, ptr %36, i32 1416
  %300 = load i32, ptr %299, align 8
  %301 = or i32 %300, 4
  store i32 %301, ptr %299, align 8
  %302 = getelementptr inbounds %struct.platform_device, ptr %298, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %302, ptr noundef nonnull @.str.32, i32 noundef %301) #20
  %303 = getelementptr i8, ptr %36, i32 1976
  %304 = load ptr, ptr %303, align 8
  %305 = ptrtoint ptr %304 to i32
  %306 = getelementptr inbounds %struct.net_device, ptr %36, i32 0, i32 5
  store i32 %305, ptr %306, align 32
  %307 = getelementptr inbounds %struct.net_device, ptr %36, i32 0, i32 96
  store i32 500, ptr %307, align 8
  %308 = getelementptr inbounds %struct.net_device, ptr %36, i32 0, i32 20
  store i32 1500, ptr %308, align 4
  %309 = getelementptr inbounds %struct.net_device, ptr %36, i32 0, i32 30
  store i32 50, ptr %309, align 8
  %310 = getelementptr inbounds %struct.net_device, ptr %36, i32 0, i32 31
  store i32 9586, ptr %310, align 4
  %311 = getelementptr inbounds %struct.net_device, ptr %36, i32 0, i32 16
  store ptr @gfar_netdev_ops, ptr %311, align 8
  %312 = getelementptr inbounds %struct.net_device, ptr %36, i32 0, i32 42
  store ptr @gfar_ethtool_ops, ptr %312, align 8
  %313 = getelementptr i8, ptr %36, i32 2576
  %314 = load i32, ptr %313, align 16
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %324, label %316

316:                                              ; preds = %316, %290
  %317 = phi i32 [ %321, %316 ], [ 0, %290 ]
  %318 = getelementptr %struct.gfar_private, ptr %39, i32 0, i32 11, i32 %317, i32 1
  call void @netif_napi_add(ptr noundef %36, ptr noundef %318, ptr noundef nonnull @gfar_poll_rx_sq, i32 noundef 64) #16
  %319 = getelementptr %struct.gfar_private, ptr %39, i32 0, i32 11, i32 %317, i32 2
  %320 = getelementptr inbounds %struct.napi_struct, ptr %319, i32 0, i32 1
  call void @_set_bit(i32 noundef 5, ptr noundef %320) #16
  call void @netif_napi_add(ptr noundef %36, ptr noundef %319, ptr noundef nonnull @gfar_poll_tx_sq, i32 noundef 2) #16
  %321 = add nuw i32 %317, 1
  %322 = load i32, ptr %313, align 16
  %323 = icmp ult i32 %321, %322
  br i1 %323, label %316, label %324

324:                                              ; preds = %316, %290
  %325 = getelementptr i8, ptr %36, i32 1424
  %326 = load i32, ptr %325, align 16
  %327 = and i32 %326, 16
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %334, label %329

329:                                              ; preds = %324
  %330 = getelementptr inbounds %struct.net_device, ptr %36, i32 0, i32 24
  store i64 1099511627779, ptr %330, align 8
  %331 = getelementptr inbounds %struct.net_device, ptr %36, i32 0, i32 23
  %332 = load i64, ptr %331, align 16
  %333 = or i64 %332, 1099511627811
  store i64 %333, ptr %331, align 16
  br label %334

334:                                              ; preds = %329, %324
  %335 = and i32 %326, 32
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %344, label %337

337:                                              ; preds = %334
  %338 = getelementptr inbounds %struct.net_device, ptr %36, i32 0, i32 24
  %339 = load i64, ptr %338, align 8
  %340 = or i64 %339, 384
  store i64 %340, ptr %338, align 8
  %341 = getelementptr inbounds %struct.net_device, ptr %36, i32 0, i32 23
  %342 = load i64, ptr %341, align 16
  %343 = or i64 %342, 256
  store i64 %343, ptr %341, align 16
  br label %344

344:                                              ; preds = %337, %334
  %345 = getelementptr inbounds %struct.net_device, ptr %36, i32 0, i32 15
  %346 = load i64, ptr %345, align 16
  %347 = or i64 %346, 32768
  store i64 %347, ptr %345, align 16
  %348 = load ptr, ptr %303, align 8
  %349 = and i32 %326, 64
  %350 = icmp eq i32 %349, 0
  %351 = getelementptr i8, ptr %36, i32 2756
  %352 = load i8, ptr %351, align 4
  br i1 %350, label %379, label %353

353:                                              ; preds = %344
  %354 = or i8 %352, 1
  store i8 %354, ptr %351, align 4
  %355 = getelementptr inbounds %struct.gfar, ptr %348, i32 0, i32 164
  %356 = getelementptr inbounds %struct.gfar, ptr %348, i32 0, i32 165
  %357 = getelementptr inbounds %struct.gfar, ptr %348, i32 0, i32 166
  %358 = getelementptr inbounds %struct.gfar, ptr %348, i32 0, i32 167
  %359 = getelementptr inbounds %struct.gfar, ptr %348, i32 0, i32 168
  %360 = getelementptr inbounds %struct.gfar, ptr %348, i32 0, i32 169
  %361 = getelementptr inbounds %struct.gfar, ptr %348, i32 0, i32 170
  %362 = getelementptr inbounds %struct.gfar, ptr %348, i32 0, i32 171
  %363 = getelementptr inbounds %struct.gfar, ptr %348, i32 0, i32 173
  %364 = getelementptr i8, ptr %36, i32 2852
  store ptr %363, ptr %364, align 4
  %365 = getelementptr inbounds %struct.gfar, ptr %348, i32 0, i32 174
  %366 = getelementptr i8, ptr %36, i32 2856
  store ptr %365, ptr %366, align 4
  %367 = getelementptr inbounds %struct.gfar, ptr %348, i32 0, i32 175
  %368 = getelementptr i8, ptr %36, i32 2860
  store ptr %367, ptr %368, align 4
  %369 = getelementptr inbounds %struct.gfar, ptr %348, i32 0, i32 176
  %370 = getelementptr i8, ptr %36, i32 2864
  store ptr %369, ptr %370, align 4
  %371 = getelementptr inbounds %struct.gfar, ptr %348, i32 0, i32 177
  %372 = getelementptr i8, ptr %36, i32 2868
  store ptr %371, ptr %372, align 4
  %373 = getelementptr inbounds %struct.gfar, ptr %348, i32 0, i32 178
  %374 = getelementptr i8, ptr %36, i32 2872
  store ptr %373, ptr %374, align 4
  %375 = getelementptr inbounds %struct.gfar, ptr %348, i32 0, i32 179
  %376 = getelementptr i8, ptr %36, i32 2876
  store ptr %375, ptr %376, align 4
  %377 = getelementptr inbounds %struct.gfar, ptr %348, i32 0, i32 180
  %378 = getelementptr i8, ptr %36, i32 2880
  store ptr %377, ptr %378, align 4
  br label %389

379:                                              ; preds = %344
  %380 = and i8 %352, -2
  store i8 %380, ptr %351, align 4
  %381 = getelementptr inbounds %struct.gfar, ptr %348, i32 0, i32 173
  %382 = getelementptr inbounds %struct.gfar, ptr %348, i32 0, i32 174
  %383 = getelementptr inbounds %struct.gfar, ptr %348, i32 0, i32 175
  %384 = getelementptr inbounds %struct.gfar, ptr %348, i32 0, i32 176
  %385 = getelementptr inbounds %struct.gfar, ptr %348, i32 0, i32 177
  %386 = getelementptr inbounds %struct.gfar, ptr %348, i32 0, i32 178
  %387 = getelementptr inbounds %struct.gfar, ptr %348, i32 0, i32 179
  %388 = getelementptr inbounds %struct.gfar, ptr %348, i32 0, i32 180
  br label %389

389:                                              ; preds = %379, %353
  %390 = phi i32 [ 8, %379 ], [ 9, %353 ]
  %391 = phi ptr [ %381, %379 ], [ %355, %353 ]
  %392 = phi ptr [ %382, %379 ], [ %356, %353 ]
  %393 = phi ptr [ %383, %379 ], [ %357, %353 ]
  %394 = phi ptr [ %384, %379 ], [ %358, %353 ]
  %395 = phi ptr [ %385, %379 ], [ %359, %353 ]
  %396 = phi ptr [ %386, %379 ], [ %360, %353 ]
  %397 = phi ptr [ %387, %379 ], [ %361, %353 ]
  %398 = phi ptr [ %388, %379 ], [ %362, %353 ]
  %399 = getelementptr i8, ptr %36, i32 2884
  store i32 %390, ptr %399, align 4
  %400 = getelementptr i8, ptr %36, i32 2820
  store ptr %391, ptr %400, align 4
  %401 = getelementptr i8, ptr %36, i32 2824
  store ptr %392, ptr %401, align 4
  %402 = getelementptr i8, ptr %36, i32 2828
  store ptr %393, ptr %402, align 4
  %403 = getelementptr i8, ptr %36, i32 2832
  store ptr %394, ptr %403, align 4
  %404 = getelementptr i8, ptr %36, i32 2836
  store ptr %395, ptr %404, align 4
  %405 = getelementptr i8, ptr %36, i32 2840
  store ptr %396, ptr %405, align 4
  %406 = getelementptr i8, ptr %36, i32 2844
  store ptr %397, ptr %406, align 4
  %407 = getelementptr i8, ptr %36, i32 2848
  store ptr %398, ptr %407, align 4
  %408 = and i32 %326, 2048
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %410, label %415

410:                                              ; preds = %389
  %411 = getelementptr inbounds %struct.net_device, ptr %36, i32 0, i32 23
  %412 = load i64, ptr %411, align 16
  %413 = and i64 %412, 2
  %414 = icmp eq i64 %413, 0
  br i1 %414, label %419, label %417

415:                                              ; preds = %389
  %416 = getelementptr i8, ptr %36, i32 1422
  store i16 10, ptr %416, align 2
  br label %417

417:                                              ; preds = %415, %410
  %418 = getelementptr inbounds %struct.net_device, ptr %36, i32 0, i32 21
  store i16 24, ptr %418, align 8
  br label %419

419:                                              ; preds = %417, %410
  %420 = load i32, ptr %42, align 8
  %421 = icmp eq i32 %420, 0
  br i1 %421, label %422, label %426

422:                                              ; preds = %426, %419
  %423 = phi i32 [ 0, %419 ], [ %438, %426 ]
  %424 = load i32, ptr %44, align 4
  %425 = icmp eq i32 %424, 0
  br i1 %425, label %454, label %440

426:                                              ; preds = %426, %419
  %427 = phi i32 [ %437, %426 ], [ 0, %419 ]
  %428 = getelementptr %struct.gfar_private, ptr %39, i32 0, i32 8, i32 %427
  %429 = load ptr, ptr %428, align 4
  %430 = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %429, i32 0, i32 5
  store i16 256, ptr %430, align 2
  %431 = load ptr, ptr %428, align 4
  %432 = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %431, i32 0, i32 3
  store i32 256, ptr %432, align 4
  %433 = load ptr, ptr %428, align 4
  %434 = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %433, i32 0, i32 13
  store i32 1, ptr %434, align 4
  %435 = load ptr, ptr %428, align 4
  %436 = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %435, i32 0, i32 14
  store i32 -2113929195, ptr %436, align 64
  %437 = add nuw i32 %427, 1
  %438 = load i32, ptr %42, align 8
  %439 = icmp ult i32 %437, %438
  br i1 %439, label %426, label %422

440:                                              ; preds = %440, %422
  %441 = phi i32 [ %449, %440 ], [ 0, %422 ]
  %442 = getelementptr %struct.gfar_private, ptr %39, i32 0, i32 9, i32 %441
  %443 = load ptr, ptr %442, align 4
  %444 = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %443, i32 0, i32 4
  store i16 256, ptr %444, align 16
  %445 = load ptr, ptr %442, align 4
  %446 = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %445, i32 0, i32 13
  store i8 0, ptr %446, align 4
  %447 = load ptr, ptr %442, align 4
  %448 = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %447, i32 0, i32 14
  store i32 -2147483627, ptr %448, align 8
  %449 = add nuw i32 %441, 1
  %450 = load i32, ptr %44, align 4
  %451 = icmp ult i32 %449, %450
  br i1 %451, label %440, label %452

452:                                              ; preds = %440
  %453 = load i32, ptr %42, align 8
  br label %454

454:                                              ; preds = %452, %422
  %455 = phi i32 [ %453, %452 ], [ %423, %422 ]
  %456 = load i32, ptr %325, align 16
  %457 = load i8, ptr %351, align 4
  %458 = lshr i32 %456, 11
  %459 = trunc i32 %458 to i8
  %460 = and i8 %459, 4
  %461 = and i8 %457, -5
  %462 = or i8 %460, %461
  store i8 %462, ptr %351, align 4
  %463 = getelementptr i8, ptr %36, i32 2732
  store i32 63, ptr %463, align 4
  %464 = icmp eq i32 %455, 1
  br i1 %464, label %465, label %467

465:                                              ; preds = %454
  %466 = or i8 %462, 8
  store i8 %466, ptr %351, align 4
  br label %467

467:                                              ; preds = %465, %454
  %468 = getelementptr i8, ptr %36, i32 2560
  call void @_set_bit(i32 noundef 1, ptr noundef %468) #16
  %469 = load ptr, ptr %303, align 8
  call fastcc void @gfar_halt(ptr noundef %39) #16
  call void @gfar_mac_reset(ptr noundef %39) #16
  %470 = load i32, ptr %325, align 16
  %471 = and i32 %470, 4
  %472 = icmp eq i32 %471, 0
  br i1 %472, label %479, label %473

473:                                              ; preds = %467
  %474 = getelementptr inbounds %struct.gfar, ptr %469, i32 0, i32 161
  call void @mmioset(ptr noundef %474, i32 noundef 0, i32 noundef 176) #16
  %475 = getelementptr inbounds %struct.gfar, ptr %469, i32 0, i32 161, i32 46
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  call void @arm_heavy_mb() #16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %475, i32 -1) #16, !srcloc !11
  %476 = getelementptr inbounds %struct.gfar, ptr %469, i32 0, i32 161, i32 47
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  call void @arm_heavy_mb() #16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %476, i32 -1) #16, !srcloc !11
  %477 = getelementptr inbounds %struct.gfar, ptr %469, i32 0, i32 161, i32 44
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  call void @arm_heavy_mb() #16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %477, i32 -1) #16, !srcloc !11
  %478 = getelementptr inbounds %struct.gfar, ptr %469, i32 0, i32 161, i32 45
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  call void @arm_heavy_mb() #16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %478, i32 -1) #16, !srcloc !11
  br label %479

479:                                              ; preds = %473, %467
  %480 = getelementptr inbounds %struct.gfar, ptr %469, i32 0, i32 7
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  call void @arm_heavy_mb() #16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %480, i32 1048576) #16, !srcloc !11
  %481 = getelementptr i8, ptr %36, i32 2776
  %482 = load i32, ptr %481, align 8
  %483 = shl i32 %482, 16
  %484 = getelementptr i8, ptr %36, i32 2780
  %485 = load i32, ptr %484, align 4
  %486 = or i32 %483, %485
  %487 = getelementptr inbounds %struct.gfar, ptr %469, i32 0, i32 186
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  call void @arm_heavy_mb() #16
  %488 = call i32 @llvm.bswap.i32(i32 %486) #16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %487, i32 %488) #16, !srcloc !11
  %489 = load i8, ptr %351, align 4
  %490 = and i8 %489, 2
  %491 = icmp eq i8 %490, 0
  %492 = select i1 %491, i32 192, i32 2240
  %493 = load i32, ptr %481, align 8
  %494 = icmp eq i32 %493, 0
  %495 = or i32 %492, 16384
  %496 = select i1 %494, i32 %492, i32 %495
  %497 = getelementptr inbounds %struct.gfar, ptr %469, i32 0, i32 185
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  call void @arm_heavy_mb() #16
  %498 = call i32 @llvm.bswap.i32(i32 %496) #16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %497, i32 %498) #16, !srcloc !11
  %499 = getelementptr inbounds %struct.gfar, ptr %469, i32 0, i32 18
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  call void @arm_heavy_mb() #16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %499, i32 65536) #16, !srcloc !11
  %500 = getelementptr inbounds %struct.gfar, ptr %469, i32 0, i32 20
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  call void @arm_heavy_mb() #16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %500, i32 1073741824) #16, !srcloc !11
  %501 = getelementptr inbounds %struct.gfar, ptr %469, i32 0, i32 21
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  call void @arm_heavy_mb() #16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %501, i32 -2147483648) #16, !srcloc !11
  %502 = load i32, ptr %313, align 16
  %503 = icmp ugt i32 %502, 1
  br i1 %503, label %504, label %549

504:                                              ; preds = %479
  %505 = load ptr, ptr %303, align 8
  %506 = getelementptr inbounds %struct.gfar, ptr %505, i32 0, i32 213
  br label %507

507:                                              ; preds = %542, %504
  %508 = phi i32 [ 0, %504 ], [ %546, %542 ]
  %509 = phi ptr [ %506, %504 ], [ %545, %542 ]
  %510 = getelementptr %struct.gfar_private, ptr %39, i32 0, i32 11, i32 %508, i32 12
  %511 = load i32, ptr %44, align 4
  %512 = call i32 @_find_next_bit_le(ptr noundef %510, i32 noundef %511, i32 noundef 0) #16
  %513 = load i32, ptr %44, align 4
  %514 = icmp ult i32 %512, %513
  br i1 %514, label %515, label %525

515:                                              ; preds = %515, %507
  %516 = phi i32 [ %523, %515 ], [ %513, %507 ]
  %517 = phi i32 [ %522, %515 ], [ %512, %507 ]
  %518 = phi i32 [ %520, %515 ], [ 0, %507 ]
  %519 = lshr i32 -2147483648, %517
  %520 = or i32 %519, %518
  %521 = add nuw i32 %517, 1
  %522 = call i32 @_find_next_bit_le(ptr noundef %510, i32 noundef %516, i32 noundef %521) #16
  %523 = load i32, ptr %44, align 4
  %524 = icmp ult i32 %522, %523
  br i1 %524, label %515, label %525

525:                                              ; preds = %515, %507
  %526 = phi i32 [ 0, %507 ], [ %520, %515 ]
  %527 = getelementptr %struct.gfar_private, ptr %39, i32 0, i32 11, i32 %508, i32 10
  %528 = load i32, ptr %42, align 8
  %529 = call i32 @_find_next_bit_le(ptr noundef %527, i32 noundef %528, i32 noundef 0) #16
  %530 = load i32, ptr %42, align 8
  %531 = icmp ult i32 %529, %530
  br i1 %531, label %532, label %542

532:                                              ; preds = %532, %525
  %533 = phi i32 [ %540, %532 ], [ %530, %525 ]
  %534 = phi i32 [ %539, %532 ], [ %529, %525 ]
  %535 = phi i32 [ %537, %532 ], [ %526, %525 ]
  %536 = lshr i32 8388608, %534
  %537 = or i32 %536, %535
  %538 = add nuw i32 %534, 1
  %539 = call i32 @_find_next_bit_le(ptr noundef %527, i32 noundef %533, i32 noundef %538) #16
  %540 = load i32, ptr %42, align 8
  %541 = icmp ult i32 %539, %540
  br i1 %541, label %532, label %542

542:                                              ; preds = %532, %525
  %543 = phi i32 [ %526, %525 ], [ %537, %532 ]
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  call void @arm_heavy_mb() #16
  %544 = call i32 @llvm.bswap.i32(i32 %543) #16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %509, i32 %544) #16, !srcloc !11
  %545 = getelementptr i32, ptr %509, i32 1
  %546 = add nuw i32 %508, 1
  %547 = load i32, ptr %313, align 16
  %548 = icmp ult i32 %546, %547
  br i1 %548, label %507, label %549

549:                                              ; preds = %542, %479
  %550 = load i32, ptr %325, align 16
  %551 = and i32 %550, 4
  %552 = icmp eq i32 %551, 0
  br i1 %552, label %560, label %553

553:                                              ; preds = %549
  %554 = load ptr, ptr %303, align 8
  %555 = getelementptr i8, ptr %36, i32 2688
  store i32 0, ptr %555, align 64
  %556 = getelementptr i8, ptr %36, i32 2692
  store i32 67108864, ptr %556, align 4
  %557 = getelementptr inbounds %struct.gfar, ptr %554, i32 0, i32 161, i32 46
  %558 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %557) #16, !srcloc !12
  call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !13
  %559 = and i32 %558, -16777217
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  call void @arm_heavy_mb() #16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %557, i32 %559) #16, !srcloc !11
  br label %560

560:                                              ; preds = %553, %549
  call void @netif_carrier_off(ptr noundef %36) #16
  %561 = call i32 @register_netdev(ptr noundef %36) #16
  %562 = icmp eq i32 %561, 0
  br i1 %562, label %566, label %563

563:                                              ; preds = %560
  %564 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %36) #20
  %565 = call zeroext i1 @of_phy_is_fixed_link(ptr noundef nonnull %10) #16
  br i1 %565, label %670, label %671

566:                                              ; preds = %560
  %567 = load i32, ptr %325, align 16
  %568 = and i32 %567, 256
  %569 = icmp eq i32 %568, 0
  br i1 %569, label %574, label %570

570:                                              ; preds = %566
  %571 = getelementptr i8, ptr %36, i32 2890
  %572 = load i16, ptr %571, align 2
  %573 = or i16 %572, 1
  store i16 %573, ptr %571, align 2
  br label %574

574:                                              ; preds = %570, %566
  %575 = and i32 %567, 4096
  %576 = icmp eq i32 %575, 0
  br i1 %576, label %585, label %577

577:                                              ; preds = %574
  %578 = load i8, ptr %351, align 4
  %579 = and i8 %578, 4
  %580 = icmp eq i8 %579, 0
  br i1 %580, label %585, label %581

581:                                              ; preds = %577
  %582 = getelementptr i8, ptr %36, i32 2890
  %583 = load i16, ptr %582, align 2
  %584 = or i16 %583, 2
  store i16 %584, ptr %582, align 2
  br label %585

585:                                              ; preds = %581, %577, %574
  %586 = getelementptr i8, ptr %36, i32 2890
  %587 = load i16, ptr %586, align 2
  %588 = icmp ne i16 %587, 0
  call void @device_set_wakeup_capable(ptr noundef %8, i1 noundef zeroext %588) #16
  %589 = load i32, ptr %313, align 16
  %590 = icmp eq i32 %589, 0
  br i1 %590, label %616, label %591

591:                                              ; preds = %612, %585
  %592 = phi i32 [ %613, %612 ], [ 0, %585 ]
  %593 = load i32, ptr %325, align 16
  %594 = and i32 %593, 8
  %595 = icmp eq i32 %594, 0
  %596 = getelementptr %struct.gfar_private, ptr %39, i32 0, i32 11, i32 %592, i32 13
  %597 = load ptr, ptr %596, align 32
  %598 = getelementptr inbounds %struct.gfar_irqinfo, ptr %597, i32 0, i32 1
  br i1 %595, label %610, label %599

599:                                              ; preds = %591
  %600 = add i32 %592, 48
  %601 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %598, ptr noundef nonnull @.str.3, ptr noundef %36, ptr noundef nonnull @.str.4, i32 noundef %600, ptr noundef nonnull @.str.5)
  %602 = getelementptr %struct.gfar_private, ptr %39, i32 0, i32 11, i32 %592, i32 13, i32 1
  %603 = load ptr, ptr %602, align 4
  %604 = getelementptr inbounds %struct.gfar_irqinfo, ptr %603, i32 0, i32 1
  %605 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %604, ptr noundef nonnull @.str.3, ptr noundef %36, ptr noundef nonnull @.str.4, i32 noundef %600, ptr noundef nonnull @.str.6)
  %606 = getelementptr %struct.gfar_private, ptr %39, i32 0, i32 11, i32 %592, i32 13, i32 2
  %607 = load ptr, ptr %606, align 8
  %608 = getelementptr inbounds %struct.gfar_irqinfo, ptr %607, i32 0, i32 1
  %609 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %608, ptr noundef nonnull @.str.3, ptr noundef %36, ptr noundef nonnull @.str.4, i32 noundef %600, ptr noundef nonnull @.str.7)
  br label %612

610:                                              ; preds = %591
  %611 = call ptr @strcpy(ptr noundef %598, ptr noundef %36)
  br label %612

612:                                              ; preds = %610, %599
  %613 = add nuw i32 %592, 1
  %614 = load i32, ptr %313, align 16
  %615 = icmp ult i32 %613, %614
  br i1 %615, label %591, label %616

616:                                              ; preds = %612, %585
  %617 = getelementptr i8, ptr %36, i32 4936
  store i32 32, ptr %617, align 4
  %618 = getelementptr i8, ptr %36, i32 3912
  store i32 -1, ptr %618, align 4
  %619 = load ptr, ptr %303, align 8
  %620 = getelementptr inbounds %struct.gfar, ptr %619, i32 0, i32 79
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  call void @arm_heavy_mb() #16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %620, i32 -16777216) #16, !srcloc !11
  %621 = getelementptr inbounds %struct.gfar, ptr %619, i32 0, i32 80
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  call void @arm_heavy_mb() #16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %621, i32 536870912) #16, !srcloc !11
  %622 = getelementptr inbounds %struct.gfar, ptr %619, i32 0, i32 81
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  call void @arm_heavy_mb() #16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %622, i32 -1) #16, !srcloc !11
  %623 = call fastcc i32 @cluster_entry_per_class(ptr noundef %39, i32 noundef 255, i32 noundef 256) #16
  %624 = call fastcc i32 @cluster_entry_per_class(ptr noundef %39, i32 noundef %623, i32 noundef 272) #16
  %625 = call fastcc i32 @cluster_entry_per_class(ptr noundef %39, i32 noundef %624, i32 noundef 288) #16
  %626 = call fastcc i32 @cluster_entry_per_class(ptr noundef %39, i32 noundef %625, i32 noundef 512) #16
  %627 = call fastcc i32 @cluster_entry_per_class(ptr noundef %39, i32 noundef %626, i32 noundef 528) #16
  %628 = call fastcc i32 @cluster_entry_per_class(ptr noundef %39, i32 noundef %627, i32 noundef 544) #16
  %629 = getelementptr i8, ptr %36, i32 2784
  store i32 %628, ptr %629, align 32
  %630 = icmp eq i32 %628, 0
  br i1 %630, label %642, label %631

631:                                              ; preds = %631, %616
  %632 = phi i32 [ %640, %631 ], [ 0, %616 ]
  %633 = getelementptr %struct.gfar_private, ptr %39, i32 0, i32 45, i32 %632
  store i32 96, ptr %633, align 4
  %634 = getelementptr %struct.gfar_private, ptr %39, i32 0, i32 44, i32 %632
  store i32 -1, ptr %634, align 4
  %635 = load ptr, ptr %303, align 8
  %636 = getelementptr inbounds %struct.gfar, ptr %635, i32 0, i32 79
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  call void @arm_heavy_mb() #16
  %637 = call i32 @llvm.bswap.i32(i32 %632) #16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %636, i32 %637) #16, !srcloc !11
  %638 = getelementptr inbounds %struct.gfar, ptr %635, i32 0, i32 80
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  call void @arm_heavy_mb() #16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %638, i32 1610612736) #16, !srcloc !11
  %639 = getelementptr inbounds %struct.gfar, ptr %635, i32 0, i32 81
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  call void @arm_heavy_mb() #16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %639, i32 -1) #16, !srcloc !11
  %640 = add nuw i32 %632, 1
  %641 = icmp eq i32 %640, %628
  br i1 %641, label %642, label %631

642:                                              ; preds = %631, %616
  %643 = getelementptr inbounds %struct.net_device, ptr %36, i32 0, i32 72
  %644 = load ptr, ptr %643, align 32
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %36, ptr noundef nonnull @.str.8, ptr noundef %644) #20
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %36, ptr noundef nonnull @.str.9) #20
  %645 = load i32, ptr %44, align 4
  %646 = icmp eq i32 %645, 0
  br i1 %646, label %647, label %650

647:                                              ; preds = %650, %642
  %648 = load i32, ptr %42, align 8
  %649 = icmp eq i32 %648, 0
  br i1 %649, label %720, label %660

650:                                              ; preds = %650, %642
  %651 = phi i32 [ %657, %650 ], [ 0, %642 ]
  %652 = getelementptr %struct.gfar_private, ptr %39, i32 0, i32 9, i32 %651
  %653 = load ptr, ptr %652, align 4
  %654 = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %653, i32 0, i32 4
  %655 = load i16, ptr %654, align 16
  %656 = zext i16 %655 to i32
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %36, ptr noundef nonnull @.str.10, i32 noundef %651, i32 noundef %656) #20
  %657 = add nuw i32 %651, 1
  %658 = load i32, ptr %44, align 4
  %659 = icmp ult i32 %657, %658
  br i1 %659, label %650, label %647

660:                                              ; preds = %660, %647
  %661 = phi i32 [ %667, %660 ], [ 0, %647 ]
  %662 = getelementptr %struct.gfar_private, ptr %39, i32 0, i32 8, i32 %661
  %663 = load ptr, ptr %662, align 4
  %664 = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %663, i32 0, i32 5
  %665 = load i16, ptr %664, align 2
  %666 = zext i16 %665 to i32
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %36, ptr noundef nonnull @.str.11, i32 noundef %661, i32 noundef %666) #20
  %667 = add nuw i32 %661, 1
  %668 = load i32, ptr %42, align 8
  %669 = icmp ult i32 %667, %668
  br i1 %669, label %660, label %720

670:                                              ; preds = %563
  call void @of_phy_deregister_fixed_link(ptr noundef nonnull %10) #16
  br label %671

671:                                              ; preds = %670, %563
  %672 = load ptr, ptr %303, align 8
  %673 = icmp eq ptr %672, null
  br i1 %673, label %675, label %674

674:                                              ; preds = %671
  call void @iounmap(ptr noundef nonnull %672) #16
  br label %675

675:                                              ; preds = %674, %671
  %676 = getelementptr i8, ptr %36, i32 2488
  %677 = load ptr, ptr %676, align 8
  %678 = icmp eq ptr %677, null
  br i1 %678, label %680, label %679

679:                                              ; preds = %675
  call void @iounmap(ptr noundef nonnull %677) #16
  br label %680

680:                                              ; preds = %679, %675
  %681 = load i32, ptr %44, align 4
  %682 = icmp eq i32 %681, 0
  br i1 %682, label %690, label %683

683:                                              ; preds = %683, %680
  %684 = phi i32 [ %687, %683 ], [ 0, %680 ]
  %685 = getelementptr %struct.gfar_private, ptr %39, i32 0, i32 9, i32 %684
  %686 = load ptr, ptr %685, align 4
  call void @kfree(ptr noundef %686) #16
  %687 = add nuw i32 %684, 1
  %688 = load i32, ptr %44, align 4
  %689 = icmp ult i32 %687, %688
  br i1 %689, label %683, label %690

690:                                              ; preds = %683, %680
  %691 = load i32, ptr %42, align 8
  %692 = icmp eq i32 %691, 0
  br i1 %692, label %700, label %693

693:                                              ; preds = %693, %690
  %694 = phi i32 [ %697, %693 ], [ 0, %690 ]
  %695 = getelementptr %struct.gfar_private, ptr %39, i32 0, i32 8, i32 %694
  %696 = load ptr, ptr %695, align 4
  call void @kfree(ptr noundef %696) #16
  %697 = add nuw i32 %694, 1
  %698 = load i32, ptr %42, align 8
  %699 = icmp ult i32 %697, %698
  br i1 %699, label %693, label %700

700:                                              ; preds = %693, %690
  %701 = getelementptr i8, ptr %36, i32 2708
  %702 = load ptr, ptr %701, align 4
  call void @of_node_put(ptr noundef %702) #16
  %703 = getelementptr i8, ptr %36, i32 2712
  %704 = load ptr, ptr %703, align 8
  call void @of_node_put(ptr noundef %704) #16
  %705 = load i32, ptr %313, align 16
  %706 = icmp eq i32 %705, 0
  br i1 %706, label %718, label %707

707:                                              ; preds = %707, %700
  %708 = phi i32 [ %715, %707 ], [ 0, %700 ]
  %709 = getelementptr %struct.gfar_private, ptr %39, i32 0, i32 11, i32 %708, i32 13, i32 0
  %710 = load ptr, ptr %709, align 4
  call void @kfree(ptr noundef %710) #16
  store ptr null, ptr %709, align 4
  %711 = getelementptr %struct.gfar_private, ptr %39, i32 0, i32 11, i32 %708, i32 13, i32 1
  %712 = load ptr, ptr %711, align 4
  call void @kfree(ptr noundef %712) #16
  store ptr null, ptr %711, align 4
  %713 = getelementptr %struct.gfar_private, ptr %39, i32 0, i32 11, i32 %708, i32 13, i32 2
  %714 = load ptr, ptr %713, align 4
  call void @kfree(ptr noundef %714) #16
  store ptr null, ptr %713, align 4
  %715 = add nuw i32 %708, 1
  %716 = load i32, ptr %313, align 16
  %717 = icmp ult i32 %715, %716
  br i1 %717, label %707, label %718

718:                                              ; preds = %707, %700
  %719 = load ptr, ptr %40, align 4
  call void @free_netdev(ptr noundef %719) #16
  br label %720

720:                                              ; preds = %718, %660, %647, %287, %285
  %721 = phi i32 [ %561, %718 ], [ %260, %287 ], [ %286, %285 ], [ 0, %647 ], [ 0, %660 ]
  ret i32 %721
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gfar_remove(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.gfar_private, ptr %3, i32 0, i32 21
  %7 = load ptr, ptr %6, align 4
  tail call void @of_node_put(ptr noundef %7) #16
  %8 = getelementptr inbounds %struct.gfar_private, ptr %3, i32 0, i32 22
  %9 = load ptr, ptr %8, align 8
  tail call void @of_node_put(ptr noundef %9) #16
  %10 = getelementptr inbounds %struct.gfar_private, ptr %3, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void @unregister_netdev(ptr noundef %11) #16
  %12 = tail call zeroext i1 @of_phy_is_fixed_link(ptr noundef %5) #16
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  tail call void @of_phy_deregister_fixed_link(ptr noundef %5) #16
  br label %14

14:                                               ; preds = %13, %1
  %15 = getelementptr %struct.gfar_private, ptr %3, i32 0, i32 11, i32 0, i32 3
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  tail call void @iounmap(ptr noundef nonnull %16) #16
  br label %19

19:                                               ; preds = %18, %14
  %20 = getelementptr %struct.gfar_private, ptr %3, i32 0, i32 11, i32 1, i32 3
  %21 = load ptr, ptr %20, align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  tail call void @iounmap(ptr noundef nonnull %21) #16
  br label %24

24:                                               ; preds = %23, %19
  %25 = getelementptr inbounds %struct.gfar_private, ptr %3, i32 0, i32 15
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %28, %24
  %29 = phi i32 [ %32, %28 ], [ 0, %24 ]
  %30 = getelementptr %struct.gfar_private, ptr %3, i32 0, i32 9, i32 %29
  %31 = load ptr, ptr %30, align 4
  tail call void @kfree(ptr noundef %31) #16
  %32 = add nuw i32 %29, 1
  %33 = load i32, ptr %25, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %28, label %35

35:                                               ; preds = %28, %24
  %36 = getelementptr inbounds %struct.gfar_private, ptr %3, i32 0, i32 14
  %37 = load i32, ptr %36, align 8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %39, %35
  %40 = phi i32 [ %43, %39 ], [ 0, %35 ]
  %41 = getelementptr %struct.gfar_private, ptr %3, i32 0, i32 8, i32 %40
  %42 = load ptr, ptr %41, align 4
  tail call void @kfree(ptr noundef %42) #16
  %43 = add nuw i32 %40, 1
  %44 = load i32, ptr %36, align 8
  %45 = icmp ult i32 %43, %44
  br i1 %45, label %39, label %46

46:                                               ; preds = %39, %35
  %47 = getelementptr inbounds %struct.gfar_private, ptr %3, i32 0, i32 16
  %48 = load i32, ptr %47, align 16
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %61, label %50

50:                                               ; preds = %50, %46
  %51 = phi i32 [ %58, %50 ], [ 0, %46 ]
  %52 = getelementptr %struct.gfar_private, ptr %3, i32 0, i32 11, i32 %51, i32 13, i32 0
  %53 = load ptr, ptr %52, align 4
  tail call void @kfree(ptr noundef %53) #16
  store ptr null, ptr %52, align 4
  %54 = getelementptr %struct.gfar_private, ptr %3, i32 0, i32 11, i32 %51, i32 13, i32 1
  %55 = load ptr, ptr %54, align 4
  tail call void @kfree(ptr noundef %55) #16
  store ptr null, ptr %54, align 4
  %56 = getelementptr %struct.gfar_private, ptr %3, i32 0, i32 11, i32 %51, i32 13, i32 2
  %57 = load ptr, ptr %56, align 4
  tail call void @kfree(ptr noundef %57) #16
  store ptr null, ptr %56, align 4
  %58 = add nuw i32 %51, 1
  %59 = load i32, ptr %47, align 16
  %60 = icmp ult i32 %58, %59
  br i1 %60, label %50, label %61

61:                                               ; preds = %50, %46
  %62 = load ptr, ptr %10, align 4
  tail call void @free_netdev(ptr noundef %62) #16
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #10

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gfar_reset_task(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -1324
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 2560
  br label %5

5:                                                ; preds = %14, %1
  %6 = load volatile i32, ptr %4, align 4
  %7 = and i32 %6, 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #16, !srcloc !23
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 4, ptr elementtype(i32) %4) #16, !srcloc !25
  %11 = extractvalue { i32, i32, i32 } %10, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !26
  %12 = and i32 %11, 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9, %5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !27
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #16, !srcloc !28
  br label %5

15:                                               ; preds = %9
  tail call void @stop_gfar(ptr noundef %3) #16
  %16 = tail call i32 @startup_gfar(ptr noundef %3) #16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !29
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #16, !srcloc !23
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 4, ptr elementtype(i32) %4) #16, !srcloc !30
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gfar_poll_rx_sq(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 432
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %0, i32 440
  %6 = load ptr, ptr %5, align 64
  %7 = getelementptr inbounds %struct.gfar, ptr %4, i32 0, i32 3
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 -2139095008) #16, !srcloc !11
  %8 = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %6, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %6, i32 0, i32 10
  %11 = load ptr, ptr %10, align 32
  %12 = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %6, i32 0, i32 7
  %13 = load i16, ptr %12, align 8
  %14 = zext i16 %13 to i32
  %15 = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %6, i32 0, i32 8
  %16 = load i16, ptr %15, align 2
  %17 = zext i16 %16 to i32
  %18 = icmp ugt i16 %13, %16
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = xor i32 %17, -1
  %21 = add nsw i32 %20, %14
  br label %29

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %6, i32 0, i32 4
  %24 = load i16, ptr %23, align 16
  %25 = zext i16 %24 to i32
  %26 = xor i32 %17, -1
  %27 = add nsw i32 %26, %14
  %28 = add nsw i32 %27, %25
  br label %29

29:                                               ; preds = %22, %19
  %30 = phi i32 [ %21, %19 ], [ %28, %22 ]
  %31 = icmp eq i32 %1, 0
  br i1 %31, label %319, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %6, i32 0, i32 1
  %34 = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %6, i32 0, i32 11, i32 2
  %35 = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %6, i32 0, i32 3
  %36 = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %6, i32 0, i32 9
  %37 = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %6, i32 0, i32 4
  %38 = getelementptr i8, ptr %9, i32 1420
  %39 = getelementptr i8, ptr %9, i32 1428
  %40 = getelementptr i8, ptr %9, i32 1422
  %41 = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 23
  %42 = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %6, i32 0, i32 5
  %43 = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %6, i32 0, i32 6
  %44 = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 36, i32 10
  %45 = getelementptr i8, ptr %9, i32 2648
  %46 = getelementptr i8, ptr %9, i32 2592
  %47 = getelementptr i8, ptr %9, i32 2600
  %48 = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 36, i32 13
  %49 = getelementptr i8, ptr %9, i32 2608
  %50 = getelementptr i8, ptr %9, i32 2616
  %51 = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 36, i32 12
  %52 = getelementptr i8, ptr %9, i32 2624
  %53 = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 36, i32 11
  br label %54

54:                                               ; preds = %314, %32
  %55 = phi i32 [ %1, %32 ], [ %62, %314 ]
  %56 = phi i32 [ 0, %32 ], [ %317, %314 ]
  %57 = phi i32 [ 0, %32 ], [ %316, %314 ]
  %58 = phi i32 [ %30, %32 ], [ %175, %314 ]
  %59 = phi ptr [ %11, %32 ], [ %315, %314 ]
  %60 = phi i32 [ 0, %32 ], [ %176, %314 ]
  %61 = phi i32 [ %14, %32 ], [ %183, %314 ]
  %62 = add i32 %55, -1
  %63 = icmp sgt i32 %58, 15
  br i1 %63, label %64, label %65

64:                                               ; preds = %54
  tail call fastcc void @gfar_alloc_rx_buffs(ptr noundef %6, i32 noundef %58) #16
  br label %65

65:                                               ; preds = %64, %54
  %66 = phi i32 [ 0, %64 ], [ %58, %54 ]
  %67 = load ptr, ptr %33, align 4
  %68 = getelementptr %struct.rxbd8, ptr %67, i32 %61
  %69 = load i32, ptr %68, align 4
  %70 = tail call i32 @llvm.bswap.i32(i32 %69) #16
  %71 = icmp sgt i32 %70, -1
  br i1 %71, label %72, label %319

72:                                               ; preds = %65
  %73 = icmp eq ptr %59, null
  br i1 %73, label %80, label %74

74:                                               ; preds = %72
  %75 = and i32 %70, 67108864
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %74
  tail call void @consume_skb(ptr noundef nonnull %59) #16
  %78 = load i64, ptr %34, align 8
  %79 = add i64 %78, 1
  store i64 %79, ptr %34, align 8
  br label %80

80:                                               ; preds = %77, %74, %72
  %81 = phi ptr [ null, %77 ], [ %59, %74 ], [ null, %72 ]
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !31
  %82 = load ptr, ptr %6, align 64
  %83 = load i16, ptr %12, align 8
  %84 = zext i16 %83 to i32
  %85 = getelementptr %struct.gfar_rx_buff, ptr %82, i32 %84
  %86 = getelementptr %struct.gfar_rx_buff, ptr %82, i32 %84, i32 1
  %87 = icmp eq ptr %81, null
  br i1 %87, label %88, label %107, !prof !20

88:                                               ; preds = %80
  %89 = load ptr, ptr %86, align 4
  %90 = tail call ptr @page_address(ptr noundef %89) #16
  %91 = getelementptr %struct.gfar_rx_buff, ptr %82, i32 %84, i32 2
  %92 = load i32, ptr %91, align 4
  %93 = getelementptr i8, ptr %90, i32 %92
  %94 = tail call ptr @build_skb(ptr noundef %93, i32 noundef 2048) #16
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %100, !prof !19

96:                                               ; preds = %88
  %97 = load ptr, ptr %8, align 8
  %98 = getelementptr i8, ptr %97, i32 2584
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %97, ptr noundef nonnull @.str) #20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %98) #16, !srcloc !23
  %99 = tail call { i64, i32 } asm sideeffect "@ atomic64_add\0A1:\09ldrexd\09$0, ${0:H}, [$3]\0A\09adds ${0:Q}, ${0:Q}, ${4:Q}\0A\09adc ${0:R}, ${0:R}, ${4:R}\0A\09strexd\09$1, $0, ${0:H}, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,r,*Qo,~{cc}"(ptr elementtype(i64) %98, ptr %98, i64 1, ptr elementtype(i64) %98) #16, !srcloc !24
  br label %319

100:                                              ; preds = %88
  %101 = getelementptr inbounds %struct.sk_buff, ptr %94, i32 0, i32 17
  %102 = load ptr, ptr %101, align 4
  %103 = getelementptr i8, ptr %102, i32 64
  store ptr %103, ptr %101, align 4
  %104 = getelementptr inbounds %struct.sk_buff, ptr %94, i32 0, i32 14
  %105 = load ptr, ptr %104, align 8
  %106 = getelementptr i8, ptr %105, i32 64
  store ptr %106, ptr %104, align 8
  br label %107

107:                                              ; preds = %100, %80
  %108 = phi ptr [ %81, %80 ], [ %94, %100 ]
  %109 = load ptr, ptr %35, align 4
  %110 = load i32, ptr %85, align 4
  %111 = getelementptr %struct.gfar_rx_buff, ptr %82, i32 %84, i32 2
  %112 = load i32, ptr %111, align 4
  %113 = add i32 %112, %110
  tail call void @dma_sync_single_for_cpu(ptr noundef %109, i32 noundef %113, i32 noundef 2048, i32 noundef 2) #16
  %114 = and i32 %70, 65535
  %115 = load ptr, ptr %86, align 4
  br i1 %87, label %116, label %118, !prof !20

116:                                              ; preds = %107
  %117 = tail call ptr @skb_put(ptr noundef nonnull %108, i32 noundef %114) #16
  br label %136

118:                                              ; preds = %107
  %119 = and i32 %70, 134217728
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %127, label %121

121:                                              ; preds = %118
  %122 = getelementptr inbounds %struct.sk_buff, ptr %108, i32 0, i32 5
  %123 = load i32, ptr %122, align 8
  %124 = sub i32 %114, %123
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %127, !prof !19

126:                                              ; preds = %121
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.42, i32 noundef 2361, i32 noundef 9, ptr noundef nonnull @.str.43) #16
  br label %171

127:                                              ; preds = %121, %118
  %128 = phi i32 [ %124, %121 ], [ %114, %118 ]
  %129 = getelementptr inbounds %struct.sk_buff, ptr %108, i32 0, i32 15
  %130 = load ptr, ptr %129, align 4
  %131 = getelementptr inbounds %struct.skb_shared_info, ptr %130, i32 0, i32 2
  %132 = load i8, ptr %131, align 2
  %133 = zext i8 %132 to i32
  %134 = load i32, ptr %111, align 4
  %135 = add i32 %134, 64
  tail call void @skb_add_rx_frag(ptr noundef nonnull %108, i32 noundef %133, ptr noundef %115, i32 noundef %135, i32 noundef %128, i32 noundef 2048) #16
  br label %136

136:                                              ; preds = %127, %116
  %137 = getelementptr inbounds %struct.page, ptr %115, i32 0, i32 1
  %138 = load volatile i32, ptr %137, align 4
  %139 = and i32 %138, 1
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %143, label %141, !prof !20

141:                                              ; preds = %136
  %142 = add i32 %138, -1
  br label %145

143:                                              ; preds = %136
  %144 = ptrtoint ptr %115 to i32
  br label %145

145:                                              ; preds = %143, %141
  %146 = phi i32 [ %142, %141 ], [ %144, %143 ]
  %147 = inttoptr i32 %146 to ptr
  %148 = getelementptr inbounds %struct.page, ptr %147, i32 0, i32 3
  %149 = load volatile i32, ptr %148, align 4
  %150 = icmp eq i32 %149, 1
  %151 = and i32 %138, 2
  %152 = icmp eq i32 %151, 0
  %153 = select i1 %150, i1 %152, i1 false
  br i1 %153, label %154, label %171, !prof !32

154:                                              ; preds = %145
  %155 = load i32, ptr %111, align 4
  %156 = xor i32 %155, 2048
  store i32 %156, ptr %111, align 4
  %157 = getelementptr inbounds %struct.page, ptr %115, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %157) #16, !srcloc !23
  %158 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %157, ptr %157, i32 1, ptr elementtype(i32) %157) #16, !srcloc !33
  %159 = load i16, ptr %36, align 4
  %160 = load ptr, ptr %6, align 64
  %161 = zext i16 %159 to i32
  %162 = getelementptr %struct.gfar_rx_buff, ptr %160, i32 %161
  %163 = add i16 %159, 1
  %164 = load i16, ptr %37, align 16
  %165 = icmp ult i16 %163, %164
  %166 = select i1 %165, i16 %163, i16 0
  store i16 %166, ptr %36, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %162, ptr noundef align 4 dereferenceable(12) %85, i32 12, i1 false) #16
  %167 = load ptr, ptr %35, align 4
  %168 = load i32, ptr %85, align 4
  %169 = load i32, ptr %111, align 4
  %170 = add i32 %169, %168
  tail call void @dma_sync_single_for_device(ptr noundef %167, i32 noundef %170, i32 noundef 2048, i32 noundef 2) #16
  br label %174

171:                                              ; preds = %145, %126
  %172 = load ptr, ptr %35, align 4
  %173 = load i32, ptr %85, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %172, i32 noundef %173, i32 noundef 4096, i32 noundef 2, i32 noundef 0) #16
  br label %174

174:                                              ; preds = %171, %154
  store ptr null, ptr %86, align 4
  %175 = add nsw i32 %66, 1
  %176 = add nuw i32 %60, 1
  %177 = add i32 %61, 1
  %178 = load i16, ptr %37, align 16
  %179 = zext i16 %178 to i32
  %180 = icmp eq i32 %177, %179
  br i1 %180, label %181, label %182, !prof !19

181:                                              ; preds = %174
  br label %182

182:                                              ; preds = %181, %174
  %183 = phi i32 [ 0, %181 ], [ %177, %174 ]
  %184 = trunc i32 %183 to i16
  store i16 %184, ptr %12, align 8
  %185 = and i32 %70, 134217728
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %314, label %187

187:                                              ; preds = %182
  %188 = and i32 %70, 4128768
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %233, label %190, !prof !20

190:                                              ; preds = %187
  %191 = and i32 %70, 65536
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %197, label %193

193:                                              ; preds = %190
  %194 = load i32, ptr %44, align 4
  %195 = add i32 %194, 1
  store i32 %195, ptr %44, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %45) #16, !srcloc !23
  %196 = tail call { i64, i32 } asm sideeffect "@ atomic64_add\0A1:\09ldrexd\09$0, ${0:H}, [$3]\0A\09adds ${0:Q}, ${0:Q}, ${4:Q}\0A\09adc ${0:R}, ${0:R}, ${4:R}\0A\09strexd\09$1, $0, ${0:H}, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,r,*Qo,~{cc}"(ptr elementtype(i64) %45, ptr %45, i64 1, ptr elementtype(i64) %45) #16, !srcloc !24
  br label %230

197:                                              ; preds = %190
  %198 = and i32 %70, 2621440
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %209, label %200

200:                                              ; preds = %197
  %201 = load i32, ptr %44, align 4
  %202 = add i32 %201, 1
  store i32 %202, ptr %44, align 4
  %203 = and i32 %70, 2097152
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %207, label %205

205:                                              ; preds = %200
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %46) #16, !srcloc !23
  %206 = tail call { i64, i32 } asm sideeffect "@ atomic64_add\0A1:\09ldrexd\09$0, ${0:H}, [$3]\0A\09adds ${0:Q}, ${0:Q}, ${4:Q}\0A\09adc ${0:R}, ${0:R}, ${4:R}\0A\09strexd\09$1, $0, ${0:H}, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,r,*Qo,~{cc}"(ptr elementtype(i64) %46, ptr %46, i64 1, ptr elementtype(i64) %46) #16, !srcloc !24
  br label %209

207:                                              ; preds = %200
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %47) #16, !srcloc !23
  %208 = tail call { i64, i32 } asm sideeffect "@ atomic64_add\0A1:\09ldrexd\09$0, ${0:H}, [$3]\0A\09adds ${0:Q}, ${0:Q}, ${4:Q}\0A\09adc ${0:R}, ${0:R}, ${4:R}\0A\09strexd\09$1, $0, ${0:H}, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,r,*Qo,~{cc}"(ptr elementtype(i64) %47, ptr %47, i64 1, ptr elementtype(i64) %47) #16, !srcloc !24
  br label %209

209:                                              ; preds = %207, %205, %197
  %210 = and i32 %70, 1048576
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %216, label %212

212:                                              ; preds = %209
  %213 = load i32, ptr %48, align 4
  %214 = add i32 %213, 1
  store i32 %214, ptr %48, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %49) #16, !srcloc !23
  %215 = tail call { i64, i32 } asm sideeffect "@ atomic64_add\0A1:\09ldrexd\09$0, ${0:H}, [$3]\0A\09adds ${0:Q}, ${0:Q}, ${4:Q}\0A\09adc ${0:R}, ${0:R}, ${4:R}\0A\09strexd\09$1, $0, ${0:H}, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,r,*Qo,~{cc}"(ptr elementtype(i64) %49, ptr %49, i64 1, ptr elementtype(i64) %49) #16, !srcloc !24
  br label %216

216:                                              ; preds = %212, %209
  %217 = and i32 %70, 262144
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %223, label %219

219:                                              ; preds = %216
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %50) #16, !srcloc !23
  %220 = tail call { i64, i32 } asm sideeffect "@ atomic64_add\0A1:\09ldrexd\09$0, ${0:H}, [$3]\0A\09adds ${0:Q}, ${0:Q}, ${4:Q}\0A\09adc ${0:R}, ${0:R}, ${4:R}\0A\09strexd\09$1, $0, ${0:H}, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,r,*Qo,~{cc}"(ptr elementtype(i64) %50, ptr %50, i64 1, ptr elementtype(i64) %50) #16, !srcloc !24
  %221 = load i32, ptr %51, align 4
  %222 = add i32 %221, 1
  store i32 %222, ptr %51, align 4
  br label %223

223:                                              ; preds = %219, %216
  %224 = and i32 %70, 131072
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %230, label %226

226:                                              ; preds = %223
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %52) #16, !srcloc !23
  %227 = tail call { i64, i32 } asm sideeffect "@ atomic64_add\0A1:\09ldrexd\09$0, ${0:H}, [$3]\0A\09adds ${0:Q}, ${0:Q}, ${4:Q}\0A\09adc ${0:R}, ${0:R}, ${4:R}\0A\09strexd\09$1, $0, ${0:H}, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,r,*Qo,~{cc}"(ptr elementtype(i64) %52, ptr %52, i64 1, ptr elementtype(i64) %52) #16, !srcloc !24
  %228 = load i32, ptr %53, align 4
  %229 = add i32 %228, 1
  store i32 %229, ptr %53, align 4
  br label %230

230:                                              ; preds = %226, %223, %193
  tail call void @consume_skb(ptr noundef nonnull %108) #16
  %231 = load i64, ptr %34, align 8
  %232 = add i64 %231, 1
  store i64 %232, ptr %34, align 8
  br label %314

233:                                              ; preds = %187
  %234 = getelementptr inbounds %struct.sk_buff, ptr %108, i32 0, i32 17
  %235 = load ptr, ptr %234, align 4
  %236 = load i16, ptr %38, align 4
  %237 = icmp eq i16 %236, 0
  br i1 %237, label %240, label %238

238:                                              ; preds = %233
  %239 = tail call ptr @skb_pull(ptr noundef nonnull %108, i32 noundef 8) #16
  br label %240

240:                                              ; preds = %238, %233
  %241 = load i32, ptr %39, align 4
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %250, label %243

243:                                              ; preds = %240
  %244 = getelementptr inbounds %struct.sk_buff, ptr %108, i32 0, i32 15
  %245 = load ptr, ptr %244, align 4
  %246 = getelementptr inbounds %struct.skb_shared_info, ptr %245, i32 0, i32 7
  %247 = load ptr, ptr %234, align 4
  store i64 0, ptr %246, align 8
  %248 = load i64, ptr %247, align 8
  %249 = tail call i64 @llvm.bswap.i64(i64 %248) #16
  store i64 %249, ptr %246, align 8
  br label %250

250:                                              ; preds = %243, %240
  %251 = load i16, ptr %40, align 2
  %252 = icmp eq i16 %251, 0
  br i1 %252, label %256, label %253

253:                                              ; preds = %250
  %254 = zext i16 %251 to i32
  %255 = tail call ptr @skb_pull(ptr noundef nonnull %108, i32 noundef %254) #16
  br label %256

256:                                              ; preds = %253, %250
  %257 = getelementptr inbounds %struct.sk_buff, ptr %108, i32 0, i32 5
  %258 = load i32, ptr %257, align 8
  %259 = add i32 %258, -4
  %260 = icmp ugt i32 %258, 3
  br i1 %260, label %261, label %271

261:                                              ; preds = %256
  %262 = getelementptr inbounds %struct.sk_buff, ptr %108, i32 0, i32 6
  %263 = load i32, ptr %262, align 4
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %267, label %265

265:                                              ; preds = %261
  %266 = tail call i32 @___pskb_trim(ptr noundef nonnull %108, i32 noundef %259) #16
  br label %271

267:                                              ; preds = %261
  store i32 %259, ptr %257, align 8
  %268 = load ptr, ptr %234, align 4
  %269 = getelementptr i8, ptr %268, i32 %259
  %270 = getelementptr inbounds %struct.sk_buff, ptr %108, i32 0, i32 14
  store ptr %269, ptr %270, align 8
  br label %271

271:                                              ; preds = %267, %265, %256
  %272 = load i64, ptr %41, align 16
  %273 = and i64 %272, 1099511627776
  %274 = icmp eq i64 %273, 0
  br i1 %274, label %285, label %275

275:                                              ; preds = %271
  %276 = load i16, ptr %235, align 2
  %277 = and i16 %276, 15
  %278 = icmp eq i16 %277, 12
  br i1 %278, label %279, label %285

279:                                              ; preds = %275
  %280 = getelementptr inbounds %struct.sk_buff, ptr %108, i32 0, i32 13
  %281 = load i16, ptr %280, align 8
  %282 = and i16 %281, -97
  %283 = or i16 %282, 32
  store i16 %283, ptr %280, align 8
  %284 = load i64, ptr %41, align 16
  br label %285

285:                                              ; preds = %279, %275, %271
  %286 = phi i64 [ %284, %279 ], [ %272, %275 ], [ %272, %271 ]
  %287 = and i64 %286, 256
  %288 = icmp eq i64 %287, 0
  br i1 %288, label %302, label %289

289:                                              ; preds = %285
  %290 = load i16, ptr %235, align 2
  %291 = and i16 %290, 128
  %292 = icmp eq i16 %291, 0
  br i1 %292, label %302, label %293

293:                                              ; preds = %289
  %294 = getelementptr inbounds %struct.rxfcb, ptr %235, i32 0, i32 4
  %295 = load i16, ptr %294, align 2
  %296 = tail call i16 @llvm.bswap.i16(i16 %295) #16
  %297 = getelementptr inbounds %struct.sk_buff, ptr %108, i32 0, i32 13, i32 0, i32 8
  store i16 129, ptr %297, align 4
  %298 = getelementptr inbounds %struct.sk_buff, ptr %108, i32 0, i32 13, i32 0, i32 9
  store i16 %296, ptr %298, align 2
  %299 = getelementptr inbounds %struct.sk_buff, ptr %108, i32 0, i32 13, i32 0, i32 3
  %300 = load i16, ptr %299, align 2
  %301 = or i16 %300, 1
  store i16 %301, ptr %299, align 2
  br label %302

302:                                              ; preds = %293, %289, %285
  %303 = add i32 %56, 1
  %304 = load i32, ptr %257, align 8
  %305 = add i32 %304, %57
  %306 = load i16, ptr %42, align 2
  %307 = add i16 %306, 1
  %308 = getelementptr inbounds %struct.sk_buff, ptr %108, i32 0, i32 9
  store i16 %307, ptr %308, align 4
  %309 = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %108, ptr noundef %9) #16
  %310 = getelementptr inbounds %struct.sk_buff, ptr %108, i32 0, i32 13, i32 0, i32 16
  store i16 %309, ptr %310, align 8
  %311 = load ptr, ptr %43, align 4
  %312 = getelementptr inbounds %struct.gfar_priv_grp, ptr %311, i32 0, i32 1
  %313 = tail call i32 @napi_gro_receive(ptr noundef %312, ptr noundef nonnull %108) #16
  br label %314

314:                                              ; preds = %302, %230, %182
  %315 = phi ptr [ null, %230 ], [ null, %302 ], [ %108, %182 ]
  %316 = phi i32 [ %57, %230 ], [ %305, %302 ], [ %57, %182 ]
  %317 = phi i32 [ %56, %230 ], [ %303, %302 ], [ %56, %182 ]
  %318 = icmp eq i32 %62, 0
  br i1 %318, label %319, label %54

319:                                              ; preds = %314, %96, %65, %29
  %320 = phi i32 [ %60, %96 ], [ 0, %29 ], [ %60, %65 ], [ %1, %314 ]
  %321 = phi i32 [ %57, %96 ], [ 0, %29 ], [ %57, %65 ], [ %316, %314 ]
  %322 = phi i32 [ %56, %96 ], [ 0, %29 ], [ %56, %65 ], [ %317, %314 ]
  %323 = phi ptr [ null, %96 ], [ %11, %29 ], [ %59, %65 ], [ %315, %314 ]
  %324 = phi i32 [ %66, %96 ], [ %30, %29 ], [ %66, %65 ], [ %175, %314 ]
  store ptr %323, ptr %10, align 32
  %325 = zext i32 %322 to i64
  %326 = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %6, i32 0, i32 11
  %327 = load i64, ptr %326, align 8
  %328 = add i64 %327, %325
  store i64 %328, ptr %326, align 8
  %329 = zext i32 %321 to i64
  %330 = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %6, i32 0, i32 11, i32 1
  %331 = load i64, ptr %330, align 8
  %332 = add i64 %331, %329
  store i64 %332, ptr %330, align 8
  %333 = icmp eq i32 %324, 0
  br i1 %333, label %335, label %334

334:                                              ; preds = %319
  tail call fastcc void @gfar_alloc_rx_buffs(ptr noundef %6, i32 noundef %324) #16
  br label %335

335:                                              ; preds = %334, %319
  %336 = getelementptr i8, ptr %9, i32 2580
  %337 = load i32, ptr %336, align 4
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %356, label %339, !prof !20

339:                                              ; preds = %335
  %340 = load i16, ptr %15, align 2
  %341 = icmp eq i16 %340, 0
  br i1 %341, label %342, label %345

342:                                              ; preds = %339
  %343 = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %6, i32 0, i32 4
  %344 = load i16, ptr %343, align 16
  br label %345

345:                                              ; preds = %342, %339
  %346 = phi i16 [ %344, %342 ], [ %340, %339 ]
  %347 = zext i16 %346 to i32
  %348 = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %6, i32 0, i32 15
  %349 = load i32, ptr %348, align 4
  %350 = shl nuw nsw i32 %347, 3
  %351 = add i32 %349, -8
  %352 = add i32 %351, %350
  %353 = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %6, i32 0, i32 12
  %354 = load ptr, ptr %353, align 64
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  %355 = tail call i32 @llvm.bswap.i32(i32 %352) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %354, i32 %355) #16, !srcloc !11
  br label %356

356:                                              ; preds = %345, %335
  %357 = icmp slt i32 %320, %1
  br i1 %357, label %358, label %370

358:                                              ; preds = %356
  %359 = getelementptr i8, ptr %0, i32 -8
  %360 = tail call zeroext i1 @napi_complete_done(ptr noundef %0, i32 noundef %320) #16
  %361 = getelementptr inbounds %struct.gfar, ptr %4, i32 0, i32 69
  %362 = getelementptr i8, ptr %0, i32 448
  %363 = load i32, ptr %362, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  %364 = tail call i32 @llvm.bswap.i32(i32 %363) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %361, i32 %364) #16, !srcloc !11
  tail call void @_raw_spin_lock_irq(ptr noundef %359) #16
  %365 = getelementptr inbounds %struct.gfar, ptr %4, i32 0, i32 4
  %366 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %365) #16, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !13
  %367 = or i32 %366, -2147483616
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %365, i32 %367) #16, !srcloc !11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !34
  %368 = load i16, ptr %359, align 4
  %369 = add i16 %368, 1
  store i16 %369, ptr %359, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !35
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !36
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #16, !srcloc !37
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !38
  br label %370

370:                                              ; preds = %358, %356
  ret i32 %320
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gfar_poll_tx_sq(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.skb_shared_hwtstamps, align 8
  %4 = getelementptr i8, ptr %0, i32 216
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %0, i32 220
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.gfar, ptr %5, i32 0, i32 3
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 12288) #16, !srcloc !11
  %9 = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %7, i32 0, i32 9
  %10 = load ptr, ptr %9, align 16
  %11 = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %7, i32 0, i32 11
  %12 = load i16, ptr %11, align 8
  %13 = zext i16 %12 to i32
  %14 = getelementptr ptr, ptr %10, i32 %13
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %198, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %7, i32 0, i32 8
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %19, i32 1408
  %21 = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %7, i32 0, i32 12
  %22 = load i16, ptr %21, align 2
  %23 = zext i16 %22 to i32
  %24 = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 87
  %25 = load ptr, ptr %24, align 64
  %26 = getelementptr %struct.netdev_queue, ptr %25, i32 %23
  %27 = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %7, i32 0, i32 10
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %7, i32 0, i32 5
  %30 = load i16, ptr %29, align 2
  %31 = zext i16 %30 to i32
  %32 = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %7, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr i8, ptr %19, i32 1432
  %35 = getelementptr %struct.txbd8, ptr %33, i32 %31
  %36 = sub nsw i32 0, %31
  %37 = add nsw i32 %31, -1
  %38 = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %7, i32 0, i32 3
  br label %39

39:                                               ; preds = %144, %17
  %40 = phi ptr [ %15, %17 ], [ %159, %144 ]
  %41 = phi i32 [ 0, %17 ], [ %148, %144 ]
  %42 = phi i32 [ %13, %17 ], [ %152, %144 ]
  %43 = phi ptr [ null, %17 ], [ %98, %144 ]
  %44 = phi ptr [ %28, %17 ], [ %145, %144 ]
  %45 = getelementptr inbounds %struct.sk_buff, ptr %40, i32 0, i32 15
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.skb_shared_info, ptr %46, i32 0, i32 3
  %48 = load i8, ptr %47, align 1
  %49 = and i8 %48, 1
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %39
  %52 = getelementptr inbounds %struct.skb_shared_info, ptr %46, i32 0, i32 2
  %53 = load i8, ptr %52, align 2
  %54 = zext i8 %53 to i32
  br label %63

55:                                               ; preds = %39
  %56 = load i32, ptr %34, align 8
  %57 = icmp eq i32 %56, 0
  %58 = getelementptr inbounds %struct.skb_shared_info, ptr %46, i32 0, i32 2
  %59 = load i8, ptr %58, align 2
  %60 = zext i8 %59 to i32
  br i1 %57, label %63, label %61, !prof !20

61:                                               ; preds = %55
  %62 = add nuw nsw i32 %60, 2
  br label %66

63:                                               ; preds = %55, %51
  %64 = phi i32 [ %54, %51 ], [ %60, %55 ]
  %65 = add nuw nsw i32 %64, 1
  br label %66

66:                                               ; preds = %63, %61
  %67 = phi i32 [ %60, %61 ], [ %64, %63 ]
  %68 = phi i1 [ true, %61 ], [ false, %63 ]
  %69 = phi i32 [ %62, %61 ], [ %65, %63 ]
  %70 = add nsw i32 %69, -1
  %71 = getelementptr %struct.txbd8, ptr %44, i32 %70
  %72 = icmp ult ptr %71, %35
  %73 = select i1 %72, i32 0, i32 %36
  %74 = getelementptr %struct.txbd8, ptr %71, i32 %73
  %75 = load i32, ptr %74, align 4
  %76 = call i32 @llvm.bswap.i32(i32 %75) #16
  %77 = icmp sgt i32 %76, -1
  %78 = and i32 %76, 65535
  %79 = icmp eq i32 %78, 0
  %80 = or i1 %77, %79
  br i1 %80, label %81, label %161

81:                                               ; preds = %66
  br i1 %68, label %82, label %92, !prof !19

82:                                               ; preds = %81
  %83 = getelementptr %struct.txbd8, ptr %44, i32 1
  %84 = icmp ult ptr %83, %35
  %85 = select i1 %84, i32 0, i32 %36
  %86 = getelementptr %struct.txbd8, ptr %83, i32 %85
  %87 = getelementptr inbounds %struct.anon.139, ptr %86, i32 0, i32 1
  %88 = load i16, ptr %87, align 2
  %89 = call i16 @llvm.bswap.i16(i16 %88) #16
  %90 = zext i16 %89 to i32
  %91 = add nuw nsw i32 %90, 24
  br label %97

92:                                               ; preds = %81
  %93 = getelementptr inbounds %struct.anon.139, ptr %44, i32 0, i32 1
  %94 = load i16, ptr %93, align 2
  %95 = call i16 @llvm.bswap.i16(i16 %94) #16
  %96 = zext i16 %95 to i32
  br label %97

97:                                               ; preds = %92, %82
  %98 = phi ptr [ %86, %82 ], [ %43, %92 ]
  %99 = phi i32 [ %91, %82 ], [ %96, %92 ]
  %100 = load ptr, ptr %20, align 64
  %101 = getelementptr inbounds %struct.txbd8, ptr %44, i32 0, i32 1
  %102 = load i32, ptr %101, align 4
  %103 = call i32 @llvm.bswap.i32(i32 %102) #16
  call void @dma_unmap_page_attrs(ptr noundef %100, i32 noundef %103, i32 noundef %99, i32 noundef 1, i32 noundef 0) #16
  br i1 %68, label %104, label %116, !prof !19

104:                                              ; preds = %97
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  %105 = getelementptr inbounds %struct.sk_buff, ptr %40, i32 0, i32 17
  %106 = load ptr, ptr %105, align 4
  %107 = ptrtoint ptr %106 to i32
  %108 = add i32 %107, 16
  %109 = and i32 %108, -8
  %110 = inttoptr i32 %109 to ptr
  store i64 0, ptr %3, align 8
  %111 = load i64, ptr %110, align 8
  %112 = call i64 @llvm.bswap.i64(i64 %111) #16
  store i64 %112, ptr %3, align 8
  %113 = call ptr @skb_pull(ptr noundef nonnull %40, i32 noundef 24) #16
  call void @skb_tstamp_tx(ptr noundef nonnull %40, ptr noundef nonnull %3) #16
  %114 = load i32, ptr %44, align 4
  %115 = and i32 %114, 32
  store i32 %115, ptr %44, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  br label %116

116:                                              ; preds = %104, %97
  %117 = phi ptr [ %98, %104 ], [ %44, %97 ]
  %118 = load i32, ptr %117, align 4
  %119 = and i32 %118, 32
  store i32 %119, ptr %117, align 4
  %120 = getelementptr %struct.txbd8, ptr %117, i32 1
  %121 = icmp ult ptr %120, %35
  %122 = select i1 %121, i32 0, i32 %36
  %123 = getelementptr %struct.txbd8, ptr %120, i32 %122
  %124 = icmp eq i32 %67, 0
  br i1 %124, label %144, label %125

125:                                              ; preds = %125, %116
  %126 = phi i32 [ %142, %125 ], [ 0, %116 ]
  %127 = phi ptr [ %141, %125 ], [ %123, %116 ]
  %128 = load ptr, ptr %20, align 64
  %129 = getelementptr inbounds %struct.txbd8, ptr %127, i32 0, i32 1
  %130 = load i32, ptr %129, align 4
  %131 = call i32 @llvm.bswap.i32(i32 %130) #16
  %132 = getelementptr inbounds %struct.anon.139, ptr %127, i32 0, i32 1
  %133 = load i16, ptr %132, align 2
  %134 = call i16 @llvm.bswap.i16(i16 %133) #16
  %135 = zext i16 %134 to i32
  call void @dma_unmap_page_attrs(ptr noundef %128, i32 noundef %131, i32 noundef %135, i32 noundef 1, i32 noundef 0) #16
  %136 = load i32, ptr %127, align 4
  %137 = and i32 %136, 32
  store i32 %137, ptr %127, align 4
  %138 = getelementptr %struct.txbd8, ptr %127, i32 1
  %139 = icmp ult ptr %138, %35
  %140 = select i1 %139, i32 0, i32 %36
  %141 = getelementptr %struct.txbd8, ptr %138, i32 %140
  %142 = add nuw nsw i32 %126, 1
  %143 = icmp eq i32 %142, %67
  br i1 %143, label %144, label %125

144:                                              ; preds = %125, %116
  %145 = phi ptr [ %123, %116 ], [ %141, %125 ]
  %146 = getelementptr inbounds %struct.sk_buff, ptr %40, i32 0, i32 3
  %147 = load i32, ptr %146, align 8
  %148 = add i32 %147, %41
  call void @__dev_kfree_skb_any(ptr noundef nonnull %40, i32 noundef 1) #16
  %149 = load ptr, ptr %9, align 16
  %150 = getelementptr ptr, ptr %149, i32 %42
  store ptr null, ptr %150, align 4
  %151 = add i32 %42, 1
  %152 = and i32 %151, %37
  call void @_raw_spin_lock(ptr noundef %7) #16
  %153 = load i32, ptr %38, align 4
  %154 = add i32 %153, %69
  store i32 %154, ptr %38, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !34
  %155 = load i16, ptr %7, align 4
  %156 = add i16 %155, 1
  store i16 %156, ptr %7, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !35
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !36
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !39
  %157 = load ptr, ptr %9, align 16
  %158 = getelementptr ptr, ptr %157, i32 %152
  %159 = load ptr, ptr %158, align 4
  %160 = icmp eq ptr %159, null
  br i1 %160, label %161, label %39

161:                                              ; preds = %144, %66
  %162 = phi ptr [ %44, %66 ], [ %145, %144 ]
  %163 = phi i32 [ %42, %66 ], [ %152, %144 ]
  %164 = phi i32 [ %41, %66 ], [ %148, %144 ]
  %165 = load i32, ptr %38, align 4
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %183, label %167

167:                                              ; preds = %161
  %168 = getelementptr %struct.netdev_queue, ptr %25, i32 %23, i32 12
  %169 = load volatile i32, ptr %168, align 4
  %170 = and i32 %169, 1
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %183, label %172

172:                                              ; preds = %167
  %173 = getelementptr i8, ptr %19, i32 2560
  %174 = load volatile i32, ptr %173, align 4
  %175 = and i32 %174, 2
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %183

177:                                              ; preds = %172
  %178 = getelementptr i8, ptr %19, i32 1412
  %179 = load ptr, ptr %178, align 4
  %180 = getelementptr inbounds %struct.net_device, ptr %179, i32 0, i32 87
  %181 = load ptr, ptr %180, align 64
  %182 = getelementptr %struct.netdev_queue, ptr %181, i32 %23
  call void @netif_tx_wake_queue(ptr noundef %182) #16
  br label %183

183:                                              ; preds = %177, %172, %167, %161
  %184 = trunc i32 %163 to i16
  store i16 %184, ptr %11, align 8
  store ptr %162, ptr %27, align 4
  %185 = icmp eq i32 %164, 0
  br i1 %185, label %198, label %186, !prof !19

186:                                              ; preds = %183
  %187 = getelementptr %struct.netdev_queue, ptr %25, i32 %23, i32 14
  call void @dql_completed(ptr noundef %187, i32 noundef %164) #16
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !40
  %188 = getelementptr %struct.netdev_queue, ptr %25, i32 %23, i32 14, i32 1
  %189 = load volatile i32, ptr %188, align 4
  %190 = load volatile i32, ptr %187, align 64
  %191 = sub i32 %189, %190
  %192 = icmp slt i32 %191, 0
  br i1 %192, label %198, label %193, !prof !19

193:                                              ; preds = %186
  %194 = getelementptr %struct.netdev_queue, ptr %25, i32 %23, i32 12
  %195 = call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %194) #16
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %198, label %197

197:                                              ; preds = %193
  call void @netif_schedule_queue(ptr noundef %26) #16
  br label %198

198:                                              ; preds = %197, %193, %186, %183, %2
  %199 = getelementptr i8, ptr %0, i32 -224
  %200 = call zeroext i1 @napi_complete_done(ptr noundef %0, i32 noundef 0) #16
  call void @_raw_spin_lock_irq(ptr noundef %199) #16
  %201 = getelementptr inbounds %struct.gfar, ptr %5, i32 0, i32 4
  %202 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %201) #16, !srcloc !12
  call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !13
  %203 = or i32 %202, 12288
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  call void @arm_heavy_mb() #16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %201, i32 %203) #16, !srcloc !11
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !34
  %204 = load i16, ptr %199, align 4
  %205 = add i16 %204, 1
  store i16 %205, ptr %199, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !35
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !36
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #16, !srcloc !37
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !38
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_wakeup_capable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #12

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_phy_is_fixed_link(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_phy_deregister_fixed_link(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_set_real_num_rx_queues(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_node_name_eq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @gfar_parse_group(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.gfar_private, ptr %1, i32 0, i32 16
  %5 = load i32, ptr %4, align 16
  %6 = getelementptr %struct.gfar_private, ptr %1, i32 0, i32 11, i32 %5
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 28) #21
  %9 = getelementptr %struct.gfar_private, ptr %1, i32 0, i32 11, i32 %5, i32 13, i32 0
  store ptr %8, ptr %9, align 4
  %10 = icmp eq ptr %8, null
  br i1 %10, label %136, label %11

11:                                               ; preds = %3
  %12 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %13 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 28) #21
  %14 = getelementptr %struct.gfar_private, ptr %1, i32 0, i32 11, i32 %5, i32 13, i32 1
  store ptr %13, ptr %14, align 4
  %15 = icmp eq ptr %13, null
  br i1 %15, label %136, label %16

16:                                               ; preds = %11
  %17 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %18 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3520, i32 noundef 28) #21
  %19 = getelementptr %struct.gfar_private, ptr %1, i32 0, i32 11, i32 %5, i32 13, i32 2
  store ptr %18, ptr %19, align 4
  %20 = icmp eq ptr %18, null
  br i1 %20, label %136, label %21

21:                                               ; preds = %16
  %22 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #16
  %23 = getelementptr %struct.gfar_private, ptr %1, i32 0, i32 11, i32 %5, i32 3
  store ptr %22, ptr %23, align 8
  %24 = icmp eq ptr %22, null
  br i1 %24, label %136, label %25

25:                                               ; preds = %21
  %26 = tail call i32 @irq_of_parse_and_map(ptr noundef %0, i32 noundef 0) #16
  %27 = load ptr, ptr %9, align 32
  store i32 %26, ptr %27, align 4
  %28 = icmp eq ptr %2, null
  br i1 %28, label %48, label %29

29:                                               ; preds = %25
  %30 = tail call i32 @strcasecmp(ptr noundef nonnull %2, ptr noundef nonnull @.str.31)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %48, label %32

32:                                               ; preds = %29
  %33 = tail call i32 @irq_of_parse_and_map(ptr noundef %0, i32 noundef 1) #16
  %34 = load ptr, ptr %14, align 4
  store i32 %33, ptr %34, align 4
  %35 = tail call i32 @irq_of_parse_and_map(ptr noundef %0, i32 noundef 2) #16
  %36 = load ptr, ptr %19, align 8
  store i32 %35, ptr %36, align 4
  %37 = load ptr, ptr %9, align 32
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %136, label %40

40:                                               ; preds = %32
  %41 = load ptr, ptr %14, align 4
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %136, label %44

44:                                               ; preds = %40
  %45 = load ptr, ptr %19, align 8
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %136, label %48

48:                                               ; preds = %44, %29, %25
  %49 = getelementptr %struct.gfar_private, ptr %1, i32 0, i32 11, i32 %5, i32 8
  store ptr %1, ptr %49, align 4
  store i32 0, ptr %6, align 64
  %50 = getelementptr inbounds %struct.gfar_private, ptr %1, i32 0, i32 13
  %51 = load i16, ptr %50, align 4
  %52 = icmp eq i16 %51, 1
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i32, ptr %4, align 16
  %55 = lshr i32 170, %54
  br label %56

56:                                               ; preds = %53, %48
  %57 = phi i32 [ %55, %53 ], [ 255, %48 ]
  %58 = getelementptr %struct.gfar_private, ptr %1, i32 0, i32 11, i32 %5, i32 12
  store i32 %57, ptr %58, align 4
  %59 = getelementptr %struct.gfar_private, ptr %1, i32 0, i32 11, i32 %5, i32 10
  store i32 %57, ptr %59, align 4
  %60 = tail call i32 asm "rbit $0, $1", "=r,r"(i32 %57) #19, !srcloc !21
  %61 = lshr i32 %60, 24
  store i32 %61, ptr %58, align 4
  %62 = tail call i32 asm "rbit $0, $1", "=r,r"(i32 %57) #19, !srcloc !21
  %63 = lshr i32 %62, 24
  store i32 %63, ptr %59, align 4
  %64 = getelementptr inbounds %struct.gfar_private, ptr %1, i32 0, i32 15
  %65 = load i32, ptr %64, align 4
  %66 = tail call i32 @_find_next_bit_le(ptr noundef %58, i32 noundef %65, i32 noundef 0) #16
  %67 = load i32, ptr %64, align 4
  %68 = icmp ult i32 %66, %67
  br i1 %68, label %69, label %98

69:                                               ; preds = %56
  %70 = getelementptr %struct.gfar_private, ptr %1, i32 0, i32 11, i32 %5, i32 5
  %71 = getelementptr %struct.gfar_private, ptr %1, i32 0, i32 11, i32 %5, i32 11
  %72 = getelementptr %struct.gfar_private, ptr %1, i32 0, i32 11, i32 %5, i32 7
  %73 = getelementptr inbounds %struct.gfar_private, ptr %1, i32 0, i32 33
  br label %74

74:                                               ; preds = %81, %69
  %75 = phi i32 [ %66, %69 ], [ %95, %81 ]
  %76 = load ptr, ptr %70, align 64
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  %79 = getelementptr %struct.gfar_private, ptr %1, i32 0, i32 9, i32 %75
  %80 = load ptr, ptr %79, align 4
  store ptr %80, ptr %70, align 64
  br label %81

81:                                               ; preds = %78, %74
  %82 = load i32, ptr %71, align 8
  %83 = add i32 %82, 1
  store i32 %83, ptr %71, align 8
  %84 = lshr i32 8388608, %75
  %85 = load i32, ptr %72, align 8
  %86 = or i32 %85, %84
  store i32 %86, ptr %72, align 8
  %87 = lshr i32 8388736, %75
  %88 = load i32, ptr %73, align 16
  %89 = or i32 %88, %87
  store i32 %89, ptr %73, align 16
  %90 = getelementptr %struct.gfar_private, ptr %1, i32 0, i32 9, i32 %75
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %91, i32 0, i32 6
  store ptr %6, ptr %92, align 4
  %93 = load i32, ptr %64, align 4
  %94 = add nuw i32 %75, 1
  %95 = tail call i32 @_find_next_bit_le(ptr noundef %58, i32 noundef %93, i32 noundef %94) #16
  %96 = load i32, ptr %64, align 4
  %97 = icmp ult i32 %95, %96
  br i1 %97, label %74, label %98

98:                                               ; preds = %81, %56
  %99 = getelementptr inbounds %struct.gfar_private, ptr %1, i32 0, i32 14
  %100 = load i32, ptr %99, align 8
  %101 = tail call i32 @_find_next_bit_le(ptr noundef %59, i32 noundef %100, i32 noundef 0) #16
  %102 = load i32, ptr %99, align 8
  %103 = icmp ult i32 %101, %102
  br i1 %103, label %104, label %133

104:                                              ; preds = %98
  %105 = getelementptr %struct.gfar_private, ptr %1, i32 0, i32 11, i32 %5, i32 4
  %106 = getelementptr %struct.gfar_private, ptr %1, i32 0, i32 11, i32 %5, i32 9
  %107 = getelementptr %struct.gfar_private, ptr %1, i32 0, i32 11, i32 %5, i32 6
  %108 = getelementptr inbounds %struct.gfar_private, ptr %1, i32 0, i32 34
  br label %109

109:                                              ; preds = %116, %104
  %110 = phi i32 [ %101, %104 ], [ %130, %116 ]
  %111 = load ptr, ptr %105, align 4
  %112 = icmp eq ptr %111, null
  br i1 %112, label %113, label %116

113:                                              ; preds = %109
  %114 = getelementptr %struct.gfar_private, ptr %1, i32 0, i32 8, i32 %110
  %115 = load ptr, ptr %114, align 4
  store ptr %115, ptr %105, align 4
  br label %116

116:                                              ; preds = %113, %109
  %117 = load i32, ptr %106, align 16
  %118 = add i32 %117, 1
  store i32 %118, ptr %106, align 16
  %119 = lshr i32 -2147483648, %110
  %120 = load i32, ptr %107, align 4
  %121 = or i32 %120, %119
  store i32 %121, ptr %107, align 4
  %122 = lshr i32 32768, %110
  %123 = load i32, ptr %108, align 4
  %124 = or i32 %123, %122
  store i32 %124, ptr %108, align 4
  %125 = getelementptr %struct.gfar_private, ptr %1, i32 0, i32 8, i32 %110
  %126 = load ptr, ptr %125, align 4
  %127 = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %126, i32 0, i32 7
  store ptr %6, ptr %127, align 8
  %128 = load i32, ptr %99, align 8
  %129 = add nuw i32 %110, 1
  %130 = tail call i32 @_find_next_bit_le(ptr noundef %59, i32 noundef %128, i32 noundef %129) #16
  %131 = load i32, ptr %99, align 8
  %132 = icmp ult i32 %130, %131
  br i1 %132, label %109, label %133

133:                                              ; preds = %116, %98
  %134 = load i32, ptr %4, align 16
  %135 = add i32 %134, 1
  store i32 %135, ptr %4, align 16
  br label %136

136:                                              ; preds = %133, %44, %40, %32, %21, %16, %11, %3
  %137 = phi i32 [ 0, %133 ], [ -12, %21 ], [ -22, %44 ], [ -22, %40 ], [ -22, %32 ], [ -12, %16 ], [ -12, %11 ], [ -12, %3 ]
  ret i32 %137
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_ethdev_address(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @eth_hw_addr_random(ptr noundef %0) unnamed_addr #13 {
  %2 = alloca [6 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %2, i8 0, i32 6, i1 false), !annotation !16
  call void @get_random_bytes(ptr noundef nonnull %2, i32 noundef 6) #16
  %3 = load i8, ptr %2, align 1
  %4 = and i8 %3, -4
  %5 = or i8 %4, 2
  store i8 %5, ptr %2, align 1
  call void @dev_addr_mod(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2, i32 noundef 6) #16
  %6 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 50
  store i8 1, ptr %6, align 8
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #16
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_phy_mode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_phy_register_fixed_link(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gfar_enet_open(ptr noundef %0) #0 {
  %2 = alloca [3 x i32], align 4
  %3 = alloca %struct.ethtool_eee, align 4
  %4 = getelementptr i8, ptr %0, i32 1408
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %2, i8 0, i32 12, i1 false) #16
  %5 = getelementptr i8, ptr %0, i32 2704
  %6 = load i32, ptr %5, align 16
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #16
  %7 = load i32, ptr @phy_10_100_features_array, align 4
  %8 = and i32 %7, 31
  %9 = shl nuw i32 1, %8
  %10 = lshr i32 %7, 5
  %11 = getelementptr i32, ptr %2, i32 %10
  %12 = load i32, ptr %11, align 4
  %13 = or i32 %9, %12
  store i32 %13, ptr %11, align 4
  %14 = load i32, ptr getelementptr inbounds ([4 x i32], ptr @phy_10_100_features_array, i32 0, i32 1), align 4
  %15 = and i32 %14, 31
  %16 = shl nuw i32 1, %15
  %17 = lshr i32 %14, 5
  %18 = getelementptr i32, ptr %2, i32 %17
  %19 = load i32, ptr %18, align 4
  %20 = or i32 %16, %19
  store i32 %20, ptr %18, align 4
  %21 = load i32, ptr getelementptr inbounds ([4 x i32], ptr @phy_10_100_features_array, i32 0, i32 2), align 4
  %22 = and i32 %21, 31
  %23 = shl nuw i32 1, %22
  %24 = lshr i32 %21, 5
  %25 = getelementptr i32, ptr %2, i32 %24
  %26 = load i32, ptr %25, align 4
  %27 = or i32 %23, %26
  store i32 %27, ptr %25, align 4
  %28 = load i32, ptr getelementptr inbounds ([4 x i32], ptr @phy_10_100_features_array, i32 0, i32 3), align 4
  %29 = and i32 %28, 31
  %30 = shl nuw i32 1, %29
  %31 = lshr i32 %28, 5
  %32 = getelementptr i32, ptr %2, i32 %31
  %33 = load i32, ptr %32, align 4
  %34 = or i32 %30, %33
  store i32 %34, ptr %32, align 4
  %35 = load i32, ptr %2, align 4
  %36 = or i32 %35, 576
  store i32 %36, ptr %2, align 4
  %37 = getelementptr i8, ptr %0, i32 1424
  %38 = load i32, ptr %37, align 16
  %39 = and i32 %38, 1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %1
  %42 = or i32 %35, 608
  store i32 %42, ptr %2, align 4
  br label %43

43:                                               ; preds = %41, %1
  %44 = getelementptr i8, ptr %0, i32 2728
  store i32 0, ptr %44, align 8
  %45 = getelementptr i8, ptr %0, i32 2720
  store i32 0, ptr %45, align 32
  %46 = getelementptr i8, ptr %0, i32 2724
  store i32 -1, ptr %46, align 4
  %47 = getelementptr i8, ptr %0, i32 2708
  %48 = load ptr, ptr %47, align 4
  %49 = tail call ptr @of_phy_connect(ptr noundef %0, ptr noundef %48, ptr noundef nonnull @adjust_link, i32 noundef 0, i32 noundef %6) #16
  %50 = icmp eq ptr %49, null
  br i1 %50, label %83, label %51

51:                                               ; preds = %43
  %52 = icmp eq i32 %6, 4
  br i1 %52, label %53, label %85

53:                                               ; preds = %51
  %54 = getelementptr i8, ptr %0, i32 2712
  %55 = load ptr, ptr %54, align 8
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 111
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %58, ptr noundef nonnull @.str.35) #20
  br label %85

59:                                               ; preds = %53
  %60 = tail call ptr @of_phy_find_device(ptr noundef nonnull %55) #16
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 111
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.36) #20
  br label %85

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.mdio_device, ptr %60, i32 0, i32 1
  %66 = load ptr, ptr %65, align 8
  %67 = getelementptr inbounds %struct.mdio_device, ptr %60, i32 0, i32 6
  %68 = load i32, ptr %67, align 8
  %69 = tail call i32 @mdiobus_read(ptr noundef %66, i32 noundef %68, i32 noundef 1) #16
  %70 = and i32 %69, 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %64
  tail call void @put_device(ptr noundef nonnull %60) #16
  br label %85

73:                                               ; preds = %64
  %74 = load ptr, ptr %65, align 8
  %75 = load i32, ptr %67, align 8
  %76 = tail call i32 @mdiobus_write(ptr noundef %74, i32 noundef %75, i32 noundef 17, i16 noundef zeroext 32) #16
  %77 = load ptr, ptr %65, align 8
  %78 = load i32, ptr %67, align 8
  %79 = tail call i32 @mdiobus_write(ptr noundef %77, i32 noundef %78, i32 noundef 4, i16 noundef zeroext 416) #16
  %80 = load ptr, ptr %65, align 8
  %81 = load i32, ptr %67, align 8
  %82 = tail call i32 @mdiobus_write(ptr noundef %80, i32 noundef %81, i32 noundef 0, i16 noundef zeroext 4928) #16
  tail call void @put_device(ptr noundef nonnull %60) #16
  br label %85

83:                                               ; preds = %43
  %84 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 111
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %84, ptr noundef nonnull @.str.33) #20
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #16
  br label %205

85:                                               ; preds = %73, %72, %62, %57, %51
  %86 = getelementptr inbounds %struct.phy_device, ptr %49, i32 0, i32 16
  %87 = call i32 @__bitmap_and(ptr noundef %86, ptr noundef %86, ptr noundef nonnull %2, i32 noundef 92) #16
  %88 = getelementptr inbounds %struct.phy_device, ptr %49, i32 0, i32 17
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %88, ptr noundef align 4 dereferenceable(12) %86, i32 12, i1 false) #16
  call void @phy_support_asym_pause(ptr noundef nonnull %49) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %3, i8 0, i32 40, i1 false) #16
  %89 = call i32 @phy_ethtool_set_eee(ptr noundef nonnull %49, ptr noundef nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #16
  %90 = getelementptr i8, ptr %0, i32 2576
  %91 = load i32, ptr %90, align 16
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %203, label %93

93:                                               ; preds = %195, %85
  %94 = phi i32 [ %200, %195 ], [ 0, %85 ]
  %95 = getelementptr %struct.gfar_private, ptr %4, i32 0, i32 11, i32 %94
  %96 = getelementptr %struct.gfar_private, ptr %4, i32 0, i32 11, i32 %94, i32 8
  %97 = load ptr, ptr %96, align 4
  %98 = getelementptr inbounds %struct.gfar_private, ptr %97, i32 0, i32 1
  %99 = load ptr, ptr %98, align 4
  %100 = getelementptr inbounds %struct.gfar_private, ptr %97, i32 0, i32 5
  %101 = load i32, ptr %100, align 16
  %102 = and i32 %101, 8
  %103 = icmp eq i32 %102, 0
  %104 = getelementptr %struct.gfar_private, ptr %4, i32 0, i32 11, i32 %94, i32 13
  br i1 %103, label %152, label %105

105:                                              ; preds = %93
  %106 = getelementptr %struct.gfar_private, ptr %4, i32 0, i32 11, i32 %94, i32 13, i32 2
  %107 = load ptr, ptr %106, align 8
  %108 = load i32, ptr %107, align 4
  %109 = getelementptr inbounds %struct.gfar_irqinfo, ptr %107, i32 0, i32 1
  %110 = call i32 @request_threaded_irq(i32 noundef %108, ptr noundef nonnull @gfar_error, ptr noundef null, i32 noundef 0, ptr noundef %109, ptr noundef %95) #16
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %105
  %113 = getelementptr inbounds %struct.gfar_private, ptr %97, i32 0, i32 27
  %114 = load i32, ptr %113, align 4
  %115 = and i32 %114, 512
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %175, label %117

117:                                              ; preds = %112
  %118 = load ptr, ptr %106, align 8
  %119 = load i32, ptr %118, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %99, ptr noundef nonnull @.str.37, i32 noundef %119) #20
  br label %175

120:                                              ; preds = %105
  %121 = load ptr, ptr %106, align 8
  %122 = load i32, ptr %121, align 4
  %123 = call i32 @irq_set_irq_wake(i32 noundef %122, i32 noundef 1) #16
  %124 = load ptr, ptr %104, align 32
  %125 = load i32, ptr %124, align 4
  %126 = getelementptr inbounds %struct.gfar_irqinfo, ptr %124, i32 0, i32 1
  %127 = call i32 @request_threaded_irq(i32 noundef %125, ptr noundef nonnull @gfar_transmit, ptr noundef null, i32 noundef 0, ptr noundef %126, ptr noundef %95) #16
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %137

129:                                              ; preds = %120
  %130 = getelementptr inbounds %struct.gfar_private, ptr %97, i32 0, i32 27
  %131 = load i32, ptr %130, align 4
  %132 = and i32 %131, 512
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %170, label %134

134:                                              ; preds = %129
  %135 = load ptr, ptr %104, align 32
  %136 = load i32, ptr %135, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %99, ptr noundef nonnull @.str.37, i32 noundef %136) #20
  br label %170

137:                                              ; preds = %120
  %138 = getelementptr %struct.gfar_private, ptr %4, i32 0, i32 11, i32 %94, i32 13, i32 1
  %139 = load ptr, ptr %138, align 4
  %140 = load i32, ptr %139, align 4
  %141 = getelementptr inbounds %struct.gfar_irqinfo, ptr %139, i32 0, i32 1
  %142 = call i32 @request_threaded_irq(i32 noundef %140, ptr noundef nonnull @gfar_receive, ptr noundef null, i32 noundef 0, ptr noundef %141, ptr noundef %95) #16
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %195

144:                                              ; preds = %137
  %145 = getelementptr inbounds %struct.gfar_private, ptr %97, i32 0, i32 27
  %146 = load i32, ptr %145, align 4
  %147 = and i32 %146, 512
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %166, label %149

149:                                              ; preds = %144
  %150 = load ptr, ptr %138, align 4
  %151 = load i32, ptr %150, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %99, ptr noundef nonnull @.str.37, i32 noundef %151) #20
  br label %166

152:                                              ; preds = %93
  %153 = load ptr, ptr %104, align 32
  %154 = load i32, ptr %153, align 4
  %155 = getelementptr inbounds %struct.gfar_irqinfo, ptr %153, i32 0, i32 1
  %156 = call i32 @request_threaded_irq(i32 noundef %154, ptr noundef nonnull @gfar_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %155, ptr noundef %95) #16
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %158, label %195

158:                                              ; preds = %152
  %159 = getelementptr inbounds %struct.gfar_private, ptr %97, i32 0, i32 27
  %160 = load i32, ptr %159, align 4
  %161 = and i32 %160, 512
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %175, label %163

163:                                              ; preds = %158
  %164 = load ptr, ptr %104, align 32
  %165 = load i32, ptr %164, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %99, ptr noundef nonnull @.str.37, i32 noundef %165) #20
  br label %175

166:                                              ; preds = %149, %144
  %167 = load ptr, ptr %104, align 32
  %168 = load i32, ptr %167, align 4
  %169 = call ptr @free_irq(i32 noundef %168, ptr noundef %95) #16
  br label %170

170:                                              ; preds = %166, %134, %129
  %171 = phi i32 [ %127, %134 ], [ %127, %129 ], [ %142, %166 ]
  %172 = load ptr, ptr %106, align 8
  %173 = load i32, ptr %172, align 4
  %174 = call ptr @free_irq(i32 noundef %173, ptr noundef %95) #16
  br label %175

175:                                              ; preds = %170, %163, %158, %117, %112
  %176 = phi i32 [ %110, %117 ], [ %110, %112 ], [ %171, %170 ], [ %156, %163 ], [ %156, %158 ]
  %177 = icmp sgt i32 %94, 0
  br i1 %177, label %178, label %205

178:                                              ; preds = %178, %175
  %179 = phi i32 [ %193, %178 ], [ 0, %175 ]
  %180 = getelementptr %struct.gfar_private, ptr %4, i32 0, i32 11, i32 %179
  %181 = getelementptr %struct.gfar_private, ptr %4, i32 0, i32 11, i32 %179, i32 13
  %182 = load ptr, ptr %181, align 32
  %183 = load i32, ptr %182, align 4
  %184 = call ptr @free_irq(i32 noundef %183, ptr noundef %180) #16
  %185 = getelementptr %struct.gfar_private, ptr %4, i32 0, i32 11, i32 %179, i32 13, i32 1
  %186 = load ptr, ptr %185, align 4
  %187 = load i32, ptr %186, align 4
  %188 = call ptr @free_irq(i32 noundef %187, ptr noundef %180) #16
  %189 = getelementptr %struct.gfar_private, ptr %4, i32 0, i32 11, i32 %179, i32 13, i32 2
  %190 = load ptr, ptr %189, align 8
  %191 = load i32, ptr %190, align 4
  %192 = call ptr @free_irq(i32 noundef %191, ptr noundef %180) #16
  %193 = add nuw nsw i32 %179, 1
  %194 = icmp eq i32 %193, %94
  br i1 %194, label %205, label %178

195:                                              ; preds = %152, %137
  %196 = phi ptr [ %138, %137 ], [ %104, %152 ]
  %197 = load ptr, ptr %196, align 4
  %198 = load i32, ptr %197, align 4
  %199 = call i32 @irq_set_irq_wake(i32 noundef %198, i32 noundef 1) #16
  %200 = add nuw i32 %94, 1
  %201 = load i32, ptr %90, align 16
  %202 = icmp ult i32 %200, %201
  br i1 %202, label %93, label %203

203:                                              ; preds = %195, %85
  %204 = call i32 @startup_gfar(ptr noundef %0)
  br label %205

205:                                              ; preds = %203, %178, %175, %83
  %206 = phi i32 [ -19, %83 ], [ %204, %203 ], [ %176, %175 ], [ %176, %178 ]
  ret i32 %206
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gfar_close(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 1408
  %3 = getelementptr i8, ptr %0, i32 2736
  %4 = tail call zeroext i1 @cancel_work_sync(ptr noundef %3) #16
  tail call void @stop_gfar(ptr noundef %0)
  %5 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %6 = load ptr, ptr %5, align 8
  tail call void @phy_disconnect(ptr noundef %6) #16
  %7 = getelementptr i8, ptr %0, i32 1424
  %8 = load i32, ptr %7, align 16
  %9 = and i32 %8, 8
  %10 = icmp eq i32 %9, 0
  %11 = getelementptr i8, ptr %0, i32 2576
  %12 = load i32, ptr %11, align 16
  %13 = icmp eq i32 %12, 0
  br i1 %10, label %15, label %14

14:                                               ; preds = %1
  br i1 %13, label %44, label %16

15:                                               ; preds = %1
  br i1 %13, label %44, label %34

16:                                               ; preds = %16, %14
  %17 = phi i32 [ %31, %16 ], [ 0, %14 ]
  %18 = getelementptr %struct.gfar_private, ptr %2, i32 0, i32 11, i32 %17
  %19 = getelementptr %struct.gfar_private, ptr %2, i32 0, i32 11, i32 %17, i32 13
  %20 = load ptr, ptr %19, align 32
  %21 = load i32, ptr %20, align 4
  %22 = tail call ptr @free_irq(i32 noundef %21, ptr noundef %18) #16
  %23 = getelementptr %struct.gfar_private, ptr %2, i32 0, i32 11, i32 %17, i32 13, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = load i32, ptr %24, align 4
  %26 = tail call ptr @free_irq(i32 noundef %25, ptr noundef %18) #16
  %27 = getelementptr %struct.gfar_private, ptr %2, i32 0, i32 11, i32 %17, i32 13, i32 2
  %28 = load ptr, ptr %27, align 8
  %29 = load i32, ptr %28, align 4
  %30 = tail call ptr @free_irq(i32 noundef %29, ptr noundef %18) #16
  %31 = add nuw i32 %17, 1
  %32 = load i32, ptr %11, align 16
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %16, label %44

34:                                               ; preds = %34, %15
  %35 = phi i32 [ %41, %34 ], [ 0, %15 ]
  %36 = getelementptr %struct.gfar_private, ptr %2, i32 0, i32 11, i32 %35
  %37 = getelementptr %struct.gfar_private, ptr %2, i32 0, i32 11, i32 %35, i32 13
  %38 = load ptr, ptr %37, align 32
  %39 = load i32, ptr %38, align 4
  %40 = tail call ptr @free_irq(i32 noundef %39, ptr noundef %36) #16
  %41 = add nuw i32 %35, 1
  %42 = load i32, ptr %11, align 16
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %34, label %44

44:                                               ; preds = %34, %16, %15, %14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gfar_start_xmit(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr i8, ptr %1, i32 1408
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 9
  %5 = load i16, ptr %4, align 4
  %6 = zext i16 %5 to i32
  %7 = getelementptr %struct.gfar_private, ptr %3, i32 0, i32 8, i32 %6
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 87
  %10 = load ptr, ptr %9, align 64
  %11 = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %8, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %8, i32 0, i32 7
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.gfar_priv_grp, ptr %14, i32 0, i32 3
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %18 = load i16, ptr %17, align 8
  %19 = and i16 %18, 96
  %20 = icmp eq i16 %19, 96
  %21 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 3
  %22 = load i16, ptr %21, align 2
  %23 = and i16 %22, 1
  %24 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.skb_shared_info, ptr %25, i32 0, i32 3
  %27 = load i8, ptr %26, align 1
  %28 = and i8 %27, 1
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %2
  %31 = icmp ne i16 %23, 0
  %32 = select i1 %20, i1 true, i1 %31
  br i1 %32, label %40, label %81

33:                                               ; preds = %2
  %34 = getelementptr i8, ptr %1, i32 1432
  %35 = load i32, ptr %34, align 8
  %36 = icmp eq i32 %35, 0
  %37 = icmp ne i16 %23, 0
  br i1 %36, label %38, label %40, !prof !20

38:                                               ; preds = %33
  %39 = select i1 %20, i1 true, i1 %37
  br i1 %39, label %40, label %81

40:                                               ; preds = %38, %33, %30
  %41 = phi i32 [ 8, %38 ], [ 24, %33 ], [ 8, %30 ]
  %42 = phi i1 [ false, %38 ], [ true, %33 ], [ false, %30 ]
  %43 = phi i1 [ %37, %38 ], [ %37, %33 ], [ %31, %30 ]
  %44 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 11
  %45 = load i8, ptr %44, align 2
  %46 = and i8 %45, 1
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %40
  %49 = getelementptr inbounds %struct.skb_shared_info, ptr %25, i32 0, i32 10
  %50 = load volatile i32, ptr %49, align 4
  %51 = and i32 %50, 65535
  %52 = ashr i32 %50, 16
  %53 = sub nsw i32 %51, %52
  %54 = icmp ne i32 %53, 1
  %55 = zext i1 %54 to i32
  br label %56

56:                                               ; preds = %48, %40
  %57 = phi i32 [ %55, %48 ], [ 0, %40 ]
  %58 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %61 = load ptr, ptr %60, align 8
  %62 = ptrtoint ptr %59 to i32
  %63 = ptrtoint ptr %61 to i32
  %64 = sub i32 %62, %63
  %65 = tail call i32 @llvm.usub.sat.i32(i32 %41, i32 %64) #16
  %66 = or i32 %65, %57
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %56
  %69 = getelementptr inbounds %struct.skb_shared_info, ptr %25, i32 0, i32 2
  %70 = load i8, ptr %69, align 2
  %71 = zext i8 %70 to i32
  br i1 %42, label %90, label %94, !prof !19

72:                                               ; preds = %56
  %73 = add nuw nsw i32 %65, 63
  %74 = and i32 %73, 64
  %75 = tail call i32 @pskb_expand_head(ptr noundef %0, i32 noundef %74, i32 noundef 0, i32 noundef 2592) #16
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %85, label %77, !prof !20

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 5
  %79 = load i32, ptr %78, align 4
  %80 = add i32 %79, 1
  store i32 %80, ptr %78, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %0, i32 noundef 1) #16
  br label %446

81:                                               ; preds = %38, %30
  %82 = getelementptr inbounds %struct.skb_shared_info, ptr %25, i32 0, i32 2
  %83 = load i8, ptr %82, align 2
  %84 = zext i8 %83 to i32
  br label %94

85:                                               ; preds = %72
  %86 = load ptr, ptr %24, align 4
  %87 = getelementptr inbounds %struct.skb_shared_info, ptr %86, i32 0, i32 2
  %88 = load i8, ptr %87, align 2
  %89 = zext i8 %88 to i32
  br i1 %42, label %90, label %94, !prof !19

90:                                               ; preds = %85, %68
  %91 = phi i32 [ %71, %68 ], [ %89, %85 ]
  %92 = phi i8 [ %70, %68 ], [ %88, %85 ]
  %93 = add nuw nsw i32 %91, 2
  br label %101

94:                                               ; preds = %85, %81, %68
  %95 = phi i32 [ %84, %81 ], [ %89, %85 ], [ %71, %68 ]
  %96 = phi i8 [ %83, %81 ], [ %88, %85 ], [ %70, %68 ]
  %97 = phi i1 [ false, %81 ], [ %43, %85 ], [ %43, %68 ]
  %98 = phi i32 [ 0, %81 ], [ %41, %85 ], [ %41, %68 ]
  %99 = phi i1 [ true, %81 ], [ false, %85 ], [ false, %68 ]
  %100 = add nuw nsw i32 %95, 1
  br label %101

101:                                              ; preds = %94, %90
  %102 = phi i32 [ %91, %90 ], [ %95, %94 ]
  %103 = phi i8 [ %92, %90 ], [ %96, %94 ]
  %104 = phi i1 [ %43, %90 ], [ %97, %94 ]
  %105 = phi i1 [ true, %90 ], [ false, %94 ]
  %106 = phi i32 [ %41, %90 ], [ %98, %94 ]
  %107 = phi i1 [ false, %90 ], [ %99, %94 ]
  %108 = phi i32 [ %93, %90 ], [ %100, %94 ]
  %109 = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %8, i32 0, i32 3
  %110 = load i32, ptr %109, align 4
  %111 = icmp ugt i32 %108, %110
  br i1 %111, label %112, label %117

112:                                              ; preds = %101
  %113 = getelementptr %struct.netdev_queue, ptr %10, i32 %6, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %113) #16
  %114 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 18
  %115 = load i32, ptr %114, align 8
  %116 = add i32 %115, 1
  store i32 %116, ptr %114, align 8
  br label %446

117:                                              ; preds = %101
  %118 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %119 = load i32, ptr %118, align 8
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %8, i32 0, i32 6
  %122 = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %8, i32 0, i32 6, i32 1
  %123 = load i64, ptr %122, align 8
  %124 = add i64 %123, %120
  store i64 %124, ptr %122, align 8
  %125 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3
  store i32 %119, ptr %125, align 8
  %126 = load i64, ptr %121, align 8
  %127 = add i64 %126, 1
  store i64 %127, ptr %121, align 8
  %128 = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %8, i32 0, i32 2
  %129 = load ptr, ptr %128, align 8
  %130 = load i32, ptr %129, align 4
  %131 = tail call i32 @llvm.bswap.i32(i32 %130)
  br i1 %105, label %132, label %136, !prof !19

132:                                              ; preds = %117
  %133 = tail call ptr @skb_push(ptr noundef %0, i32 noundef 16) #16
  %134 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %135 = load ptr, ptr %134, align 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(16) %135, i8 0, i32 16, i1 false)
  br label %136

136:                                              ; preds = %132, %117
  br i1 %107, label %140, label %137

137:                                              ; preds = %136
  %138 = tail call ptr @skb_push(ptr noundef %0, i32 noundef 8) #16
  store i64 0, ptr %138, align 2
  %139 = or i32 %131, 131072
  br label %140

140:                                              ; preds = %137, %136
  %141 = phi ptr [ %138, %137 ], [ null, %136 ]
  %142 = phi i32 [ %139, %137 ], [ %131, %136 ]
  br i1 %20, label %143, label %210

143:                                              ; preds = %140
  %144 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %145 = load ptr, ptr %144, align 8
  %146 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %147 = load i16, ptr %146, align 4
  %148 = zext i16 %147 to i32
  %149 = getelementptr i8, ptr %145, i32 %148
  %150 = getelementptr inbounds %struct.iphdr, ptr %149, i32 0, i32 6
  %151 = load i8, ptr %150, align 1
  %152 = icmp eq i8 %151, 17
  %153 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %154 = load i16, ptr %153, align 2
  %155 = zext i16 %154 to i32
  %156 = getelementptr i8, ptr %145, i32 %155
  %157 = getelementptr inbounds %struct.udphdr, ptr %156, i32 0, i32 3
  %158 = getelementptr inbounds %struct.tcphdr, ptr %156, i32 0, i32 6
  %159 = select i1 %152, ptr %157, ptr %158
  %160 = select i1 %152, i8 91, i8 83
  %161 = load i16, ptr %159, align 2
  %162 = getelementptr inbounds %struct.txfcb, ptr %141, i32 0, i32 4
  store i16 %161, ptr %162, align 2
  %163 = load ptr, ptr %144, align 8
  %164 = load i16, ptr %146, align 4
  %165 = zext i16 %164 to i32
  %166 = getelementptr i8, ptr %163, i32 %165
  %167 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %168 = load ptr, ptr %167, align 4
  %169 = ptrtoint ptr %166 to i32
  %170 = ptrtoint ptr %168 to i32
  %171 = add i32 %106, %170
  %172 = sub i32 %169, %171
  %173 = trunc i32 %172 to i8
  %174 = getelementptr inbounds %struct.txfcb, ptr %141, i32 0, i32 3
  store i8 %173, ptr %174, align 1
  %175 = load i16, ptr %153, align 2
  %176 = trunc i16 %175 to i8
  %177 = load i16, ptr %146, align 4
  %178 = trunc i16 %177 to i8
  %179 = sub i8 %176, %178
  %180 = getelementptr inbounds %struct.txfcb, ptr %141, i32 0, i32 2
  store i8 %179, ptr %180, align 2
  store i8 %160, ptr %141, align 2
  %181 = ptrtoint ptr %141 to i32
  %182 = getelementptr i8, ptr %1, i32 1416
  %183 = load i32, ptr %182, align 8
  %184 = and i32 %183, 8
  %185 = icmp ne i32 %184, 0
  %186 = and i32 %181, 31
  %187 = icmp ugt i32 %186, 24
  %188 = and i1 %187, %185
  %189 = load i32, ptr %118, align 8
  br i1 %188, label %195, label %190, !prof !19

190:                                              ; preds = %143
  %191 = and i32 %183, 2
  %192 = icmp ne i32 %191, 0
  %193 = icmp ugt i32 %189, 2500
  %194 = and i1 %192, %193
  br i1 %194, label %195, label %210, !prof !19

195:                                              ; preds = %190, %143
  %196 = add i32 %189, -8
  store i32 %196, ptr %118, align 8
  %197 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %198 = load i32, ptr %197, align 4
  %199 = icmp ult i32 %196, %198
  br i1 %199, label %200, label %201, !prof !19

200:                                              ; preds = %195
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #16, !srcloc !41
  unreachable

201:                                              ; preds = %195
  %202 = load ptr, ptr %167, align 4
  %203 = getelementptr i8, ptr %202, i32 8
  store ptr %203, ptr %167, align 4
  %204 = tail call i32 @skb_checksum_help(ptr noundef %0) #16
  %205 = or i1 %104, %105
  br i1 %205, label %206, label %208

206:                                              ; preds = %201
  %207 = tail call ptr @skb_push(ptr noundef %0, i32 noundef 8) #16
  store i64 0, ptr %207, align 2
  br label %210

208:                                              ; preds = %201
  %209 = and i32 %142, -131073
  br label %210

210:                                              ; preds = %208, %206, %190, %140
  %211 = phi ptr [ %207, %206 ], [ null, %208 ], [ %141, %190 ], [ %141, %140 ]
  %212 = phi i32 [ %142, %206 ], [ %209, %208 ], [ %142, %190 ], [ %142, %140 ]
  br i1 %104, label %213, label %220

213:                                              ; preds = %210
  %214 = load i8, ptr %211, align 2
  %215 = or i8 %214, -128
  store i8 %215, ptr %211, align 2
  %216 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 9
  %217 = load i16, ptr %216, align 2
  %218 = tail call i16 @llvm.bswap.i16(i16 %217) #16
  %219 = getelementptr inbounds %struct.txfcb, ptr %211, i32 0, i32 5
  store i16 %218, ptr %219, align 2
  br label %220

220:                                              ; preds = %213, %210
  %221 = load ptr, ptr %3, align 64
  %222 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %223 = load ptr, ptr %222, align 4
  %224 = load i32, ptr %118, align 8
  %225 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %226 = load i32, ptr %225, align 4
  %227 = sub i32 %224, %226
  %228 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %223) #16
  %229 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %230 = xor i1 %229, true
  %231 = select i1 %228, i1 %230, i1 false
  br i1 %231, label %232, label %241, !prof !19

232:                                              ; preds = %220
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %233 = tail call ptr @dev_driver_string(ptr noundef %221) #16
  %234 = getelementptr inbounds %struct.device, ptr %221, i32 0, i32 3
  %235 = load ptr, ptr %234, align 4
  %236 = icmp eq ptr %235, null
  br i1 %236, label %237, label %239

237:                                              ; preds = %232
  %238 = load ptr, ptr %221, align 4
  br label %239

239:                                              ; preds = %237, %232
  %240 = phi ptr [ %238, %237 ], [ %235, %232 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.39, ptr noundef %233, ptr noundef %240) #16
  br label %241

241:                                              ; preds = %239, %220
  br i1 %228, label %401, label %242

242:                                              ; preds = %241
  %243 = load ptr, ptr @mem_map, align 4
  %244 = ptrtoint ptr %223 to i32
  %245 = add i32 %244, 1073741824
  %246 = lshr i32 %245, 12
  %247 = getelementptr %struct.page, ptr %243, i32 %246
  %248 = and i32 %244, 4095
  %249 = tail call i32 @dma_map_page_attrs(ptr noundef %221, ptr noundef %247, i32 noundef %248, i32 noundef %227, i32 noundef 1, i32 noundef 0) #16
  %250 = icmp eq i32 %249, -1
  br i1 %250, label %401, label %251

251:                                              ; preds = %242
  %252 = tail call i32 @llvm.bswap.i32(i32 %249)
  %253 = getelementptr inbounds %struct.txbd8, ptr %129, i32 0, i32 1
  store i32 %252, ptr %253, align 4
  br i1 %105, label %254, label %264, !prof !19

254:                                              ; preds = %251
  %255 = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %8, i32 0, i32 5
  %256 = load i16, ptr %255, align 2
  %257 = zext i16 %256 to i32
  %258 = getelementptr %struct.txbd8, ptr %129, i32 1
  %259 = getelementptr %struct.txbd8, ptr %12, i32 %257
  %260 = icmp ult ptr %258, %259
  %261 = sub nsw i32 0, %257
  %262 = select i1 %260, i32 0, i32 %261
  %263 = getelementptr %struct.txbd8, ptr %258, i32 %262
  br label %264

264:                                              ; preds = %254, %251
  %265 = phi ptr [ %263, %254 ], [ %129, %251 ]
  %266 = phi ptr [ %263, %254 ], [ null, %251 ]
  %267 = icmp eq i8 %103, 0
  br i1 %267, label %268, label %271, !prof !20

268:                                              ; preds = %264
  %269 = or i32 %212, 402653184
  %270 = select i1 %105, i32 %212, i32 %269, !prof !19
  br label %311

271:                                              ; preds = %264
  %272 = icmp eq i32 %102, 0
  br i1 %272, label %311, label %273

273:                                              ; preds = %271
  %274 = load ptr, ptr %24, align 4
  %275 = getelementptr inbounds %struct.skb_shared_info, ptr %274, i32 0, i32 12
  %276 = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %8, i32 0, i32 5
  %277 = add nsw i32 %102, -1
  br label %278

278:                                              ; preds = %299, %273
  %279 = phi i32 [ 0, %273 ], [ %308, %299 ]
  %280 = phi ptr [ %275, %273 ], [ %309, %299 ]
  %281 = phi ptr [ %265, %273 ], [ %289, %299 ]
  %282 = load i16, ptr %276, align 2
  %283 = zext i16 %282 to i32
  %284 = getelementptr %struct.txbd8, ptr %281, i32 1
  %285 = getelementptr %struct.txbd8, ptr %12, i32 %283
  %286 = icmp ult ptr %284, %285
  %287 = sub nsw i32 0, %283
  %288 = select i1 %286, i32 0, i32 %287
  %289 = getelementptr %struct.txbd8, ptr %284, i32 %288
  %290 = getelementptr inbounds %struct.bio_vec, ptr %280, i32 0, i32 1
  %291 = load i32, ptr %290, align 4
  %292 = load i32, ptr %289, align 4
  %293 = load ptr, ptr %3, align 64
  %294 = load ptr, ptr %280, align 4
  %295 = getelementptr inbounds %struct.bio_vec, ptr %280, i32 0, i32 2
  %296 = load i32, ptr %295, align 4
  %297 = tail call i32 @dma_map_page_attrs(ptr noundef %293, ptr noundef %294, i32 noundef %296, i32 noundef %291, i32 noundef 1, i32 noundef 0) #16
  %298 = icmp eq i32 %297, -1
  br i1 %298, label %401, label %299, !prof !19

299:                                              ; preds = %278
  %300 = icmp eq i32 %279, %277
  %301 = tail call i32 @llvm.bswap.i32(i32 %292)
  %302 = select i1 %300, i32 -1744830464, i32 -2147483648
  %303 = or i32 %291, %302
  %304 = or i32 %303, %301
  %305 = tail call i32 @llvm.bswap.i32(i32 %297)
  %306 = getelementptr inbounds %struct.txbd8, ptr %289, i32 0, i32 1
  store i32 %305, ptr %306, align 4
  %307 = tail call i32 @llvm.bswap.i32(i32 %304)
  store i32 %307, ptr %289, align 4
  %308 = add nuw nsw i32 %279, 1
  %309 = getelementptr %struct.bio_vec, ptr %280, i32 1
  %310 = icmp eq i32 %308, %102
  br i1 %310, label %311, label %278

311:                                              ; preds = %299, %271, %268
  %312 = phi ptr [ %265, %268 ], [ %265, %271 ], [ %289, %299 ]
  %313 = phi i32 [ %270, %268 ], [ %212, %271 ], [ %212, %299 ]
  br i1 %105, label %314, label %337, !prof !19

314:                                              ; preds = %311
  %315 = load i32, ptr %266, align 4
  %316 = load i32, ptr %253, align 4
  %317 = tail call i32 @llvm.bswap.i32(i32 %316)
  %318 = add i32 %317, %106
  %319 = load i32, ptr %118, align 8
  %320 = load i32, ptr %225, align 4
  %321 = add i32 %106, %320
  %322 = sub i32 %319, %321
  %323 = or i32 %315, 128
  %324 = call i32 @llvm.bswap.i32(i32 %323)
  %325 = or i32 %324, %322
  %326 = or i32 %325, 402653184
  %327 = select i1 %267, i32 %326, i32 %325
  %328 = tail call i32 @llvm.bswap.i32(i32 %318)
  %329 = getelementptr inbounds %struct.txbd8, ptr %266, i32 0, i32 1
  store i32 %328, ptr %329, align 4
  %330 = tail call i32 @llvm.bswap.i32(i32 %327)
  store i32 %330, ptr %266, align 4
  %331 = or i32 %313, -2080374776
  %332 = load ptr, ptr %24, align 4
  %333 = getelementptr inbounds %struct.skb_shared_info, ptr %332, i32 0, i32 3
  %334 = load i8, ptr %333, align 1
  %335 = or i8 %334, 4
  store i8 %335, ptr %333, align 1
  %336 = getelementptr inbounds %struct.txfcb, ptr %211, i32 0, i32 1
  store i8 1, ptr %336, align 1
  br label %343

337:                                              ; preds = %311
  %338 = load i32, ptr %118, align 8
  %339 = load i32, ptr %225, align 4
  %340 = sub i32 %338, %339
  %341 = or i32 %313, %340
  %342 = or i32 %341, -2080374784
  br label %343

343:                                              ; preds = %337, %314
  %344 = phi i32 [ %331, %314 ], [ %342, %337 ]
  %345 = getelementptr %struct.netdev_queue, ptr %10, i32 %6, i32 14
  %346 = icmp ugt i32 %119, 268435455
  br i1 %346, label %347, label %348, !prof !19

347:                                              ; preds = %343
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/dynamic_queue_limits.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #16, !srcloc !42
  unreachable

348:                                              ; preds = %343
  %349 = getelementptr %struct.netdev_queue, ptr %10, i32 %6, i32 14, i32 2
  store i32 %119, ptr %349, align 8
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !43
  %350 = load i32, ptr %345, align 64
  %351 = add i32 %350, %119
  store i32 %351, ptr %345, align 64
  %352 = getelementptr %struct.netdev_queue, ptr %10, i32 %6, i32 14, i32 1
  %353 = load volatile i32, ptr %352, align 4
  %354 = load volatile i32, ptr %345, align 64
  %355 = sub i32 %353, %354
  %356 = icmp sgt i32 %355, -1
  br i1 %356, label %364, label %357, !prof !20

357:                                              ; preds = %348
  %358 = getelementptr %struct.netdev_queue, ptr %10, i32 %6, i32 12
  tail call void @_set_bit(i32 noundef 1, ptr noundef %358) #16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !44
  %359 = load volatile i32, ptr %352, align 4
  %360 = load volatile i32, ptr %345, align 64
  %361 = sub i32 %359, %360
  %362 = icmp sgt i32 %361, -1
  br i1 %362, label %363, label %364, !prof !19

363:                                              ; preds = %357
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %358) #16
  br label %364

364:                                              ; preds = %363, %357, %348
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !22
  tail call void @arm_heavy_mb() #16
  %365 = tail call i32 @llvm.bswap.i32(i32 %344)
  store i32 %365, ptr %129, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !22
  tail call void @arm_heavy_mb() #16
  %366 = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %8, i32 0, i32 9
  %367 = load ptr, ptr %366, align 16
  %368 = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %8, i32 0, i32 4
  %369 = load i16, ptr %368, align 16
  %370 = zext i16 %369 to i32
  %371 = getelementptr ptr, ptr %367, i32 %370
  store ptr %0, ptr %371, align 4
  %372 = load i16, ptr %368, align 16
  %373 = add i16 %372, 1
  %374 = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %8, i32 0, i32 5
  %375 = load i16, ptr %374, align 2
  %376 = add i16 %375, -1
  %377 = and i16 %376, %373
  store i16 %377, ptr %368, align 16
  %378 = zext i16 %375 to i32
  %379 = getelementptr %struct.txbd8, ptr %312, i32 1
  %380 = getelementptr %struct.txbd8, ptr %12, i32 %378
  %381 = icmp ult ptr %379, %380
  %382 = sub nsw i32 0, %378
  %383 = select i1 %381, i32 0, i32 %382
  %384 = getelementptr %struct.txbd8, ptr %379, i32 %383
  store ptr %384, ptr %128, align 8
  tail call void @_raw_spin_lock_bh(ptr noundef %8) #16
  %385 = load i32, ptr %109, align 4
  %386 = sub i32 %385, %108
  store i32 %386, ptr %109, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %8) #16
  %387 = load i32, ptr %109, align 4
  %388 = icmp eq i32 %387, 0
  br i1 %388, label %389, label %394

389:                                              ; preds = %364
  %390 = getelementptr %struct.netdev_queue, ptr %10, i32 %6, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %390) #16
  %391 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 18
  %392 = load i32, ptr %391, align 8
  %393 = add i32 %392, 1
  store i32 %393, ptr %391, align 8
  br label %394

394:                                              ; preds = %389, %364
  %395 = getelementptr inbounds %struct.gfar, ptr %16, i32 0, i32 24
  %396 = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %8, i32 0, i32 12
  %397 = load i16, ptr %396, align 2
  %398 = zext i16 %397 to i32
  %399 = lshr i32 -2147483648, %398
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  %400 = tail call i32 @llvm.bswap.i32(i32 %399) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %395, i32 %400) #16, !srcloc !11
  br label %446

401:                                              ; preds = %278, %242, %241
  %402 = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %8, i32 0, i32 5
  %403 = icmp eq i32 %102, 0
  br i1 %403, label %445, label %404

404:                                              ; preds = %401
  %405 = getelementptr %struct.txbd8, ptr %129, i32 1
  %406 = load i16, ptr %402, align 2
  %407 = zext i16 %406 to i32
  %408 = getelementptr %struct.txbd8, ptr %12, i32 %407
  %409 = icmp ult ptr %405, %408
  %410 = sub nsw i32 0, %407
  %411 = select i1 %409, i32 0, i32 %410
  %412 = getelementptr %struct.txbd8, ptr %405, i32 %411
  %413 = getelementptr %struct.txbd8, ptr %412, i32 1
  %414 = icmp ult ptr %413, %408
  %415 = select i1 %414, i32 0, i32 %410
  %416 = getelementptr %struct.txbd8, ptr %413, i32 %415
  %417 = select i1 %105, ptr %416, ptr %412
  br label %418

418:                                              ; preds = %424, %404
  %419 = phi i32 [ %443, %424 ], [ 0, %404 ]
  %420 = phi ptr [ %442, %424 ], [ %417, %404 ]
  %421 = load i32, ptr %420, align 4
  %422 = tail call i32 @llvm.bswap.i32(i32 %421)
  %423 = icmp sgt i32 %422, -1
  br i1 %423, label %445, label %424

424:                                              ; preds = %418
  %425 = and i32 %422, 2147483647
  %426 = tail call i32 @llvm.bswap.i32(i32 %425)
  store i32 %426, ptr %420, align 4
  %427 = getelementptr inbounds %struct.txbd8, ptr %420, i32 0, i32 1
  %428 = load i32, ptr %427, align 4
  %429 = tail call i32 @llvm.bswap.i32(i32 %428)
  %430 = load ptr, ptr %3, align 64
  %431 = lshr i32 %426, 16
  %432 = trunc i32 %431 to i16
  %433 = tail call i16 @llvm.bswap.i16(i16 %432)
  %434 = zext i16 %433 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %430, i32 noundef %429, i32 noundef %434, i32 noundef 1, i32 noundef 0) #16
  %435 = load i16, ptr %402, align 2
  %436 = zext i16 %435 to i32
  %437 = getelementptr %struct.txbd8, ptr %420, i32 1
  %438 = getelementptr %struct.txbd8, ptr %12, i32 %436
  %439 = icmp ult ptr %437, %438
  %440 = sub nsw i32 0, %436
  %441 = select i1 %439, i32 0, i32 %440
  %442 = getelementptr %struct.txbd8, ptr %437, i32 %441
  %443 = add nuw nsw i32 %419, 1
  %444 = icmp eq i32 %443, %102
  br i1 %444, label %445, label %418

445:                                              ; preds = %424, %418, %401
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !22
  tail call void @arm_heavy_mb() #16
  tail call void @__dev_kfree_skb_any(ptr noundef %0, i32 noundef 1) #16
  br label %446

446:                                              ; preds = %445, %394, %112, %77
  %447 = phi i32 [ 0, %77 ], [ 16, %112 ], [ 0, %445 ], [ 0, %394 ]
  ret i32 %447
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gfar_set_mac_addr(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @eth_mac_addr(ptr noundef %0, ptr noundef %1) #16
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %40

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 72
  %7 = load ptr, ptr %6, align 32
  %8 = getelementptr i8, ptr %0, i32 1976
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.gfar, ptr %9, i32 0, i32 128
  %11 = getelementptr i8, ptr %7, i32 5
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = shl nuw i32 %13, 24
  %15 = getelementptr i8, ptr %7, i32 4
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = shl nuw nsw i32 %17, 16
  %19 = or i32 %18, %14
  %20 = getelementptr i8, ptr %7, i32 3
  %21 = load i8, ptr %20, align 1
  %22 = zext i8 %21 to i32
  %23 = shl nuw nsw i32 %22, 8
  %24 = or i32 %19, %23
  %25 = getelementptr i8, ptr %7, i32 2
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i32
  %28 = or i32 %24, %27
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %29) #16, !srcloc !11
  %30 = getelementptr i8, ptr %7, i32 1
  %31 = load i8, ptr %30, align 1
  %32 = zext i8 %31 to i32
  %33 = shl nuw i32 %32, 24
  %34 = load i8, ptr %7, align 1
  %35 = zext i8 %34 to i32
  %36 = shl nuw nsw i32 %35, 16
  %37 = or i32 %36, %33
  %38 = getelementptr %struct.gfar, ptr %9, i32 0, i32 129
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  %39 = tail call i32 @llvm.bswap.i32(i32 %37) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %39) #16, !srcloc !11
  br label %40

40:                                               ; preds = %5, %2
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gfar_ioctl(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.hwtstamp_config, align 4
  %5 = alloca %struct.hwtstamp_config, align 4
  %6 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %133, label %12

12:                                               ; preds = %3
  switch i32 %2, label %129 [
    i32 35248, label %13
    i32 35249, label %102
  ]

13:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i32 12, i1 false) #16, !annotation !16
  %14 = getelementptr inbounds %struct.ifreq, ptr %1, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %15, i32 12, i32 -1090519040) #19, !srcloc !45
  %17 = extractvalue { i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %27, !prof !20

19:                                               ; preds = %13
  %20 = tail call ptr @llvm.thread.pointer() #16
  %21 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 3
  %22 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %21) #22, !srcloc !46
  %23 = and i32 %22, -13
  %24 = or i32 %23, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %24) #16, !srcloc !47
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !48
  %25 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %15, i32 noundef 12) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %22) #16, !srcloc !47
  call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !48
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %27, !prof !20

27:                                               ; preds = %19, %13
  %28 = phi i32 [ %25, %19 ], [ 12, %13 ]
  %29 = sub i32 12, %28
  %30 = getelementptr i8, ptr %5, i32 %29
  call void @llvm.memset.p0.i32(ptr align 1 %30, i8 0, i32 %28, i1 false) #16
  br label %100

31:                                               ; preds = %19
  %32 = getelementptr inbounds %struct.hwtstamp_config, ptr %5, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  switch i32 %33, label %100 [
    i32 0, label %39
    i32 1, label %34
  ]

34:                                               ; preds = %31
  %35 = getelementptr i8, ptr %0, i32 1424
  %36 = load i32, ptr %35, align 16
  %37 = and i32 %36, 2048
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %100, label %39

39:                                               ; preds = %34, %31
  %40 = getelementptr i8, ptr %0, i32 1432
  store i32 %33, ptr %40, align 8
  %41 = getelementptr inbounds %struct.hwtstamp_config, ptr %5, i32 0, i32 2
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %63

44:                                               ; preds = %39
  %45 = getelementptr i8, ptr %0, i32 1428
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %88, label %48

48:                                               ; preds = %44
  store i32 0, ptr %45, align 4
  %49 = getelementptr i8, ptr %0, i32 2560
  br label %50

50:                                               ; preds = %59, %48
  %51 = load volatile i32, ptr %49, align 4
  %52 = and i32 %51, 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %49) #16, !srcloc !23
  %55 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %49, ptr %49, i32 4, ptr elementtype(i32) %49) #16, !srcloc !25
  %56 = extractvalue { i32, i32, i32 } %55, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !26
  %57 = and i32 %56, 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %54, %50
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !27
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #16, !srcloc !28
  br label %50

60:                                               ; preds = %54
  call void @stop_gfar(ptr noundef %0) #16
  %61 = call i32 @startup_gfar(ptr noundef %0) #16
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !29
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %49) #16, !srcloc !23
  %62 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %49, ptr %49, i32 4, ptr elementtype(i32) %49) #16, !srcloc !30
  br label %88

63:                                               ; preds = %39
  %64 = getelementptr i8, ptr %0, i32 1424
  %65 = load i32, ptr %64, align 16
  %66 = and i32 %65, 2048
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %100, label %68

68:                                               ; preds = %63
  %69 = getelementptr i8, ptr %0, i32 1428
  %70 = load i32, ptr %69, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %87

72:                                               ; preds = %68
  store i32 1, ptr %69, align 4
  %73 = getelementptr i8, ptr %0, i32 2560
  br label %74

74:                                               ; preds = %83, %72
  %75 = load volatile i32, ptr %73, align 4
  %76 = and i32 %75, 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %74
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %73) #16, !srcloc !23
  %79 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %73, ptr %73, i32 4, ptr elementtype(i32) %73) #16, !srcloc !25
  %80 = extractvalue { i32, i32, i32 } %79, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !26
  %81 = and i32 %80, 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %78, %74
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !27
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #16, !srcloc !28
  br label %74

84:                                               ; preds = %78
  call void @stop_gfar(ptr noundef %0) #16
  %85 = call i32 @startup_gfar(ptr noundef %0) #16
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !29
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %73) #16, !srcloc !23
  %86 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %73, ptr %73, i32 4, ptr elementtype(i32) %73) #16, !srcloc !30
  br label %87

87:                                               ; preds = %84, %68
  store i32 1, ptr %41, align 4
  br label %88

88:                                               ; preds = %87, %60, %44
  %89 = load ptr, ptr %14, align 4
  %90 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %89, i32 12, i32 -1090519040) #19, !srcloc !49
  %91 = extractvalue { i32, i32 } %90, 0
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %88
  %94 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %21) #22, !srcloc !46
  %95 = and i32 %94, -13
  %96 = or i32 %95, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %96) #16, !srcloc !47
  call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !48
  %97 = call i32 @arm_copy_to_user(ptr noundef %89, ptr noundef nonnull %5, i32 noundef 12) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %94) #16, !srcloc !47
  call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !48
  %98 = icmp eq i32 %97, 0
  %99 = select i1 %98, i32 0, i32 -14
  br label %100

100:                                              ; preds = %93, %88, %63, %34, %31, %27
  %101 = phi i32 [ -34, %34 ], [ -34, %31 ], [ -34, %63 ], [ -14, %27 ], [ -14, %88 ], [ %99, %93 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #16
  br label %133

102:                                              ; preds = %12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #16
  %103 = getelementptr i8, ptr %0, i32 1432
  store i32 0, ptr %4, align 4
  %104 = load i32, ptr %103, align 8
  %105 = icmp ne i32 %104, 0
  %106 = zext i1 %105 to i32
  %107 = getelementptr inbounds %struct.hwtstamp_config, ptr %4, i32 0, i32 1
  store i32 %106, ptr %107, align 4
  %108 = getelementptr i8, ptr %0, i32 1428
  %109 = load i32, ptr %108, align 4
  %110 = icmp ne i32 %109, 0
  %111 = zext i1 %110 to i32
  %112 = getelementptr inbounds %struct.hwtstamp_config, ptr %4, i32 0, i32 2
  store i32 %111, ptr %112, align 4
  %113 = getelementptr inbounds %struct.ifreq, ptr %1, i32 0, i32 1
  %114 = load ptr, ptr %113, align 4
  %115 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %114, i32 12, i32 -1090519040) #19, !srcloc !49
  %116 = extractvalue { i32, i32 } %115, 0
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %127

118:                                              ; preds = %102
  %119 = tail call ptr @llvm.thread.pointer() #16
  %120 = getelementptr inbounds %struct.thread_info, ptr %119, i32 0, i32 3
  %121 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %120) #22, !srcloc !46
  %122 = and i32 %121, -13
  %123 = or i32 %122, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %123) #16, !srcloc !47
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !48
  %124 = call i32 @arm_copy_to_user(ptr noundef %114, ptr noundef nonnull %4, i32 noundef 12) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %121) #16, !srcloc !47
  call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !48
  %125 = icmp eq i32 %124, 0
  %126 = select i1 %125, i32 0, i32 -14
  br label %127

127:                                              ; preds = %118, %102
  %128 = phi i32 [ -14, %102 ], [ %126, %118 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #16
  br label %133

129:                                              ; preds = %12
  %130 = icmp eq ptr %7, null
  br i1 %130, label %133, label %131

131:                                              ; preds = %129
  %132 = tail call i32 @phy_mii_ioctl(ptr noundef nonnull %7, ptr noundef %1, i32 noundef %2) #16
  br label %133

133:                                              ; preds = %131, %129, %127, %100, %3
  %134 = phi i32 [ %101, %100 ], [ %128, %127 ], [ %132, %131 ], [ -22, %3 ], [ -19, %129 ]
  ret i32 %134
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gfar_change_mtu(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 2560
  br label %4

4:                                                ; preds = %13, %2
  %5 = load volatile i32, ptr %3, align 4
  %6 = and i32 %5, 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %3) #16, !srcloc !23
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %3, ptr %3, i32 4, ptr elementtype(i32) %3) #16, !srcloc !25
  %10 = extractvalue { i32, i32, i32 } %9, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !26
  %11 = and i32 %10, 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %8, %4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !50
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #16, !srcloc !51
  br label %4

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 14
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 20
  store i32 %1, ptr %20, align 4
  br label %28

21:                                               ; preds = %14
  tail call void @stop_gfar(ptr noundef %0)
  %22 = load i32, ptr %15, align 8
  %23 = and i32 %22, 1
  %24 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 20
  store i32 %1, ptr %24, align 4
  %25 = icmp eq i32 %23, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %21
  %27 = tail call i32 @startup_gfar(ptr noundef %0)
  br label %28

28:                                               ; preds = %26, %21, %19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !29
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %3) #16, !srcloc !23
  %29 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %3, ptr %3, i32 4, ptr elementtype(i32) %3) #16, !srcloc !30
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gfar_timeout(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 36, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, 1
  store i32 %5, ptr %3, align 4
  %6 = getelementptr i8, ptr %0, i32 2736
  %7 = load ptr, ptr @system_wq, align 4
  %8 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %7, ptr noundef %6) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gfar_get_stats64(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 1408
  %4 = getelementptr i8, ptr %0, i32 2572
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %1, i32 0, i32 2
  %9 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %1, i32 0, i32 6
  %10 = load i64, ptr %1, align 8
  %11 = load i64, ptr %8, align 8
  %12 = load i64, ptr %9, align 8
  br label %22

13:                                               ; preds = %22, %2
  %14 = getelementptr i8, ptr %0, i32 2568
  %15 = load i32, ptr %14, align 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %59, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %1, i32 0, i32 3
  %19 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %1, i32 0, i32 1
  %20 = load i64, ptr %18, align 8
  %21 = load i64, ptr %19, align 8
  br label %43

22:                                               ; preds = %22, %7
  %23 = phi i64 [ %12, %7 ], [ %39, %22 ]
  %24 = phi i64 [ %11, %7 ], [ %35, %22 ]
  %25 = phi i64 [ %10, %7 ], [ %31, %22 ]
  %26 = phi i32 [ 0, %7 ], [ %40, %22 ]
  %27 = getelementptr %struct.gfar_private, ptr %3, i32 0, i32 9, i32 %26
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %28, i32 0, i32 11
  %30 = load i64, ptr %29, align 8
  %31 = add i64 %25, %30
  store i64 %31, ptr %1, align 8
  %32 = load ptr, ptr %27, align 4
  %33 = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %32, i32 0, i32 11, i32 1
  %34 = load i64, ptr %33, align 8
  %35 = add i64 %24, %34
  store i64 %35, ptr %8, align 8
  %36 = load ptr, ptr %27, align 4
  %37 = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %36, i32 0, i32 11, i32 2
  %38 = load i64, ptr %37, align 8
  %39 = add i64 %23, %38
  store i64 %39, ptr %9, align 8
  %40 = add nuw i32 %26, 1
  %41 = load i32, ptr %4, align 4
  %42 = icmp ult i32 %40, %41
  br i1 %42, label %22, label %13

43:                                               ; preds = %43, %17
  %44 = phi i64 [ %21, %17 ], [ %55, %43 ]
  %45 = phi i64 [ %20, %17 ], [ %51, %43 ]
  %46 = phi i32 [ 0, %17 ], [ %56, %43 ]
  %47 = getelementptr %struct.gfar_private, ptr %3, i32 0, i32 8, i32 %46
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %48, i32 0, i32 6, i32 1
  %50 = load i64, ptr %49, align 8
  %51 = add i64 %45, %50
  store i64 %51, ptr %18, align 8
  %52 = load ptr, ptr %47, align 4
  %53 = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %52, i32 0, i32 6
  %54 = load i64, ptr %53, align 8
  %55 = add i64 %44, %54
  store i64 %55, ptr %19, align 8
  %56 = add nuw i32 %46, 1
  %57 = load i32, ptr %14, align 8
  %58 = icmp ult i32 %56, %57
  br i1 %58, label %43, label %59

59:                                               ; preds = %43, %13
  %60 = getelementptr i8, ptr %0, i32 1424
  %61 = load i32, ptr %60, align 16
  %62 = and i32 %61, 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %95, label %64

64:                                               ; preds = %59
  %65 = getelementptr i8, ptr %0, i32 1976
  %66 = load ptr, ptr %65, align 8
  %67 = getelementptr i8, ptr %0, i32 2688
  %68 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %67) #16
  %69 = getelementptr inbounds %struct.gfar, ptr %66, i32 0, i32 161, i32 44
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #16, !srcloc !12
  %71 = lshr i32 %70, 24
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !13
  %72 = and i32 %71, 1
  %73 = getelementptr inbounds %struct.gfar, ptr %66, i32 0, i32 161, i32 23
  br label %74

74:                                               ; preds = %74, %64
  %75 = phi i32 [ %72, %64 ], [ %79, %74 ]
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %73) #16, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !13
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #16, !srcloc !12
  %78 = lshr i32 %77, 24
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !13
  %79 = and i32 %78, 1
  %80 = icmp eq i32 %79, %75
  br i1 %80, label %81, label %74

81:                                               ; preds = %74
  %82 = tail call i32 @llvm.bswap.i32(i32 %76) #16
  %83 = icmp eq i32 %75, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %81
  %85 = getelementptr i8, ptr %0, i32 2696
  %86 = load i64, ptr %85, align 8
  %87 = add i64 %86, 1
  store i64 %87, ptr %85, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 16777216) #16, !srcloc !11
  br label %88

88:                                               ; preds = %84, %81
  %89 = getelementptr i8, ptr %0, i32 2696
  %90 = load i64, ptr %89, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %67, i32 noundef %68) #16
  %91 = zext i32 %82 to i64
  %92 = shl i64 %90, 16
  %93 = add i64 %92, %91
  %94 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %1, i32 0, i32 15
  store i64 %93, ptr %94, align 8
  br label %95

95:                                               ; preds = %88, %59
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfar_set_features(ptr noundef, i64 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fixed_phy_change_carrier(ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_connect(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @adjust_link(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 1408
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.phy_device, ptr %4, i32 0, i32 4
  %6 = load i16, ptr %5, align 8
  %7 = lshr i16 %6, 13
  %8 = and i16 %7, 1
  %9 = zext i16 %8 to i32
  %10 = getelementptr i8, ptr %0, i32 2728
  %11 = load i32, ptr %10, align 8
  %12 = icmp eq i32 %11, %9
  br i1 %12, label %13, label %27, !prof !20

13:                                               ; preds = %1
  %14 = icmp eq i16 %8, 0
  br i1 %14, label %28, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.phy_device, ptr %4, i32 0, i32 9
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr i8, ptr %0, i32 2724
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.phy_device, ptr %4, i32 0, i32 8
  %23 = load i32, ptr %22, align 8
  %24 = getelementptr i8, ptr %0, i32 2720
  %25 = load i32, ptr %24, align 32
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %28, label %27, !prof !20

27:                                               ; preds = %21, %15, %1
  tail call fastcc void @gfar_update_link_state(ptr noundef %2)
  br label %28

28:                                               ; preds = %27, %21, %13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_support_asym_pause(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_set_eee(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @gfar_update_link_state(ptr noundef %0) unnamed_addr #15 {
  %2 = getelementptr inbounds %struct.gfar_private, ptr %0, i32 0, i32 11, i32 0, i32 3
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.gfar_private, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 120
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.gfar_private, ptr %0, i32 0, i32 12
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %191, !prof !20

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.phy_device, ptr %7, i32 0, i32 4
  %14 = load i16, ptr %13, align 8
  %15 = and i16 %14, 8192
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %178, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.gfar, ptr %3, i32 0, i32 119
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #16, !srcloc !12
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #16
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !13
  %21 = getelementptr inbounds %struct.gfar, ptr %3, i32 0, i32 120
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #16, !srcloc !12
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #16
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !13
  %24 = getelementptr inbounds %struct.gfar, ptr %3, i32 0, i32 7
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #16, !srcloc !12
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #16
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !13
  %27 = and i32 %20, 16
  %28 = getelementptr inbounds %struct.phy_device, ptr %7, i32 0, i32 9
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.gfar_private, ptr %0, i32 0, i32 25
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %38, label %33

33:                                               ; preds = %17
  %34 = icmp ne i32 %29, 0
  %35 = and i32 %23, -2
  %36 = zext i1 %34 to i32
  %37 = or i32 %35, %36
  store i32 %29, ptr %30, align 4
  br label %38

38:                                               ; preds = %33, %17
  %39 = phi i32 [ %37, %33 ], [ %23, %17 ]
  %40 = getelementptr inbounds %struct.phy_device, ptr %7, i32 0, i32 8
  %41 = load i32, ptr %40, align 8
  %42 = getelementptr inbounds %struct.gfar_private, ptr %0, i32 0, i32 24
  %43 = load i32, ptr %42, align 32
  %44 = icmp eq i32 %41, %43
  br i1 %44, label %70, label %45

45:                                               ; preds = %38
  switch i32 %41, label %58 [
    i32 1000, label %46
    i32 100, label %50
    i32 10, label %50
  ]

46:                                               ; preds = %45
  %47 = and i32 %39, -769
  %48 = or i32 %47, 512
  %49 = and i32 %26, -9
  br label %66

50:                                               ; preds = %45, %45
  %51 = and i32 %39, -769
  %52 = or i32 %51, 256
  %53 = icmp eq i32 %41, 100
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = or i32 %26, 8
  br label %66

56:                                               ; preds = %50
  %57 = and i32 %26, -9
  br label %66

58:                                               ; preds = %45
  %59 = getelementptr inbounds %struct.gfar_private, ptr %0, i32 0, i32 27
  %60 = load i32, ptr %59, align 4
  %61 = and i32 %60, 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %58
  %64 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %64, ptr noundef nonnull @.str.34, i32 noundef %41) #20
  %65 = load i32, ptr %40, align 8
  br label %66

66:                                               ; preds = %63, %58, %56, %54, %46
  %67 = phi i32 [ %65, %63 ], [ %41, %58 ], [ 100, %54 ], [ %41, %56 ], [ 1000, %46 ]
  %68 = phi i32 [ %39, %63 ], [ %39, %58 ], [ %52, %54 ], [ %52, %56 ], [ %48, %46 ]
  %69 = phi i32 [ %26, %63 ], [ %26, %58 ], [ %55, %54 ], [ %57, %56 ], [ %49, %46 ]
  store i32 %67, ptr %42, align 32
  br label %70

70:                                               ; preds = %66, %38
  %71 = phi i32 [ %68, %66 ], [ %39, %38 ]
  %72 = phi i32 [ %69, %66 ], [ %26, %38 ]
  %73 = and i32 %20, -49
  %74 = load ptr, ptr %4, align 4
  %75 = getelementptr inbounds %struct.net_device, ptr %74, i32 0, i32 120
  %76 = load ptr, ptr %75, align 8
  %77 = getelementptr inbounds %struct.phy_device, ptr %76, i32 0, i32 9
  %78 = load i32, ptr %77, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %122, label %80

80:                                               ; preds = %70
  %81 = getelementptr inbounds %struct.gfar_private, ptr %0, i32 0, i32 30
  %82 = load i8, ptr %81, align 4
  %83 = and i8 %82, 16
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  %86 = lshr i8 %82, 1
  %87 = and i8 %86, 48
  %88 = zext i8 %87 to i32
  br label %125

89:                                               ; preds = %80
  %90 = getelementptr inbounds %struct.phy_device, ptr %76, i32 0, i32 11
  %91 = load i32, ptr %90, align 4
  %92 = icmp eq i32 %91, 0
  %93 = select i1 %92, i16 0, i16 1024
  %94 = getelementptr inbounds %struct.phy_device, ptr %76, i32 0, i32 12
  %95 = load i32, ptr %94, align 8
  %96 = icmp eq i32 %95, 0
  %97 = or i16 %93, 2048
  %98 = select i1 %96, i16 %93, i16 %97
  %99 = getelementptr inbounds %struct.phy_device, ptr %76, i32 0, i32 17
  %100 = load volatile i32, ptr %99, align 4
  %101 = lshr i32 %100, 3
  %102 = and i32 %101, 1024
  %103 = load volatile i32, ptr %99, align 4
  %104 = lshr i32 %103, 3
  %105 = and i32 %104, 2048
  %106 = or i32 %105, %102
  %107 = trunc i32 %106 to i16
  %108 = and i16 %98, %107
  %109 = zext i16 %108 to i32
  %110 = and i32 %109, 1024
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %125

112:                                              ; preds = %89
  %113 = and i32 %109, 2048
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %122, label %115

115:                                              ; preds = %112
  %116 = and i16 %107, 1024
  %117 = icmp eq i16 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %115
  %119 = lshr exact i16 %98, 6
  %120 = and i16 %119, 16
  %121 = zext i16 %120 to i32
  br label %125

122:                                              ; preds = %115, %112, %70
  %123 = phi i32 [ 32, %115 ], [ 0, %112 ], [ 0, %70 ]
  %124 = icmp ne i32 %27, 0
  br label %159

125:                                              ; preds = %118, %89, %85
  %126 = phi i32 [ %88, %85 ], [ 48, %89 ], [ %121, %118 ]
  %127 = and i32 %126, 16
  %128 = icmp eq i32 %127, 0
  %129 = icmp ne i32 %27, 0
  %130 = select i1 %128, i1 true, i1 %129
  br i1 %130, label %159, label %131

131:                                              ; preds = %125
  %132 = getelementptr inbounds %struct.gfar_private, ptr %0, i32 0, i32 15
  %133 = load i32, ptr %132, align 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %164, label %135

135:                                              ; preds = %145, %131
  %136 = phi i32 [ %156, %145 ], [ 0, %131 ]
  %137 = getelementptr %struct.gfar_private, ptr %0, i32 0, i32 9, i32 %136
  %138 = load ptr, ptr %137, align 4
  %139 = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %138, i32 0, i32 8
  %140 = load i16, ptr %139, align 2
  %141 = icmp eq i16 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %135
  %143 = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %138, i32 0, i32 4
  %144 = load i16, ptr %143, align 16
  br label %145

145:                                              ; preds = %142, %135
  %146 = phi i16 [ %144, %142 ], [ %140, %135 ]
  %147 = zext i16 %146 to i32
  %148 = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %138, i32 0, i32 15
  %149 = load i32, ptr %148, align 4
  %150 = shl nuw nsw i32 %147, 3
  %151 = add i32 %149, -8
  %152 = add i32 %151, %150
  %153 = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %138, i32 0, i32 12
  %154 = load ptr, ptr %153, align 64
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  %155 = tail call i32 @llvm.bswap.i32(i32 %152) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %154, i32 %155) #16, !srcloc !11
  %156 = add nuw i32 %136, 1
  %157 = load i32, ptr %132, align 4
  %158 = icmp ult i32 %156, %157
  br i1 %158, label %135, label %164

159:                                              ; preds = %125, %122
  %160 = phi i1 [ %124, %122 ], [ %129, %125 ]
  %161 = phi i1 [ true, %122 ], [ %128, %125 ]
  %162 = phi i32 [ %123, %122 ], [ %126, %125 ]
  %163 = select i1 %161, i1 %160, i1 false
  br i1 %163, label %164, label %168, !prof !19

164:                                              ; preds = %159, %145, %131
  %165 = phi i32 [ 1, %131 ], [ 0, %159 ], [ 1, %145 ]
  %166 = phi i32 [ %126, %131 ], [ %162, %159 ], [ %126, %145 ]
  %167 = getelementptr inbounds %struct.gfar_private, ptr %0, i32 0, i32 17
  store i32 %165, ptr %167, align 4
  br label %168

168:                                              ; preds = %164, %159
  %169 = phi i32 [ %162, %159 ], [ %166, %164 ]
  %170 = or i32 %169, %73
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  %171 = tail call i32 @llvm.bswap.i32(i32 %170) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %171) #16, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  %172 = tail call i32 @llvm.bswap.i32(i32 %71) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %172) #16, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  %173 = tail call i32 @llvm.bswap.i32(i32 %72) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %173) #16, !srcloc !11
  %174 = getelementptr inbounds %struct.gfar_private, ptr %0, i32 0, i32 26
  %175 = load i32, ptr %174, align 8
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %185

177:                                              ; preds = %168
  store i32 1, ptr %174, align 8
  br label %185

178:                                              ; preds = %12
  %179 = getelementptr inbounds %struct.gfar_private, ptr %0, i32 0, i32 26
  %180 = load i32, ptr %179, align 8
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %185, label %182

182:                                              ; preds = %178
  store i32 0, ptr %179, align 8
  %183 = getelementptr inbounds %struct.gfar_private, ptr %0, i32 0, i32 24
  store i32 0, ptr %183, align 32
  %184 = getelementptr inbounds %struct.gfar_private, ptr %0, i32 0, i32 25
  store i32 -1, ptr %184, align 4
  br label %185

185:                                              ; preds = %182, %178, %177, %168
  %186 = getelementptr inbounds %struct.gfar_private, ptr %0, i32 0, i32 27
  %187 = load i32, ptr %186, align 4
  %188 = and i32 %187, 4
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %191, label %190

190:                                              ; preds = %185
  tail call void @phy_print_status(ptr noundef %7) #16
  br label %191

191:                                              ; preds = %190, %185, %1
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_print_status(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_find_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_and(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gfar_error(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.gfar_priv_grp, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.gfar_priv_grp, ptr %1, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.gfar_private, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.gfar, ptr %4, i32 0, i32 3
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #16, !srcloc !12
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #16
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !13
  %12 = and i32 %11, -171505661
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %13) #16, !srcloc !11
  %14 = getelementptr inbounds %struct.gfar_private, ptr %6, i32 0, i32 5
  %15 = load i32, ptr %14, align 16
  %16 = and i32 %15, 256
  %17 = icmp eq i32 %16, 0
  %18 = and i32 %11, 2048
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %17, i1 true, i1 %19
  %21 = and i32 %11, -2049
  %22 = select i1 %20, i32 %11, i32 %21
  %23 = and i32 %22, 4194304
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %54, label %25

25:                                               ; preds = %2
  %26 = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 36, i32 5
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, 1
  store i32 %28, ptr %26, align 4
  %29 = and i32 %22, 262144
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 36, i32 20
  %33 = load i32, ptr %32, align 8
  %34 = add i32 %33, 1
  store i32 %34, ptr %32, align 8
  br label %35

35:                                               ; preds = %31, %25
  %36 = and i32 %22, 131072
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 36, i32 16
  %40 = load i32, ptr %39, align 8
  %41 = add i32 %40, 1
  store i32 %41, ptr %39, align 8
  br label %42

42:                                               ; preds = %38, %35
  %43 = and i32 %22, 65536
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %54, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 36, i32 7
  %47 = load i32, ptr %46, align 4
  %48 = add i32 %47, 1
  store i32 %48, ptr %46, align 4
  %49 = getelementptr inbounds %struct.gfar_private, ptr %6, i32 0, i32 18, i32 11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %49) #16, !srcloc !23
  %50 = tail call { i64, i32 } asm sideeffect "@ atomic64_add\0A1:\09ldrexd\09$0, ${0:H}, [$3]\0A\09adds ${0:Q}, ${0:Q}, ${4:Q}\0A\09adc ${0:R}, ${0:R}, ${4:R}\0A\09strexd\09$1, $0, ${0:H}, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,r,*Qo,~{cc}"(ptr elementtype(i64) %49, ptr %49, i64 1, ptr elementtype(i64) %49) #16, !srcloc !24
  %51 = getelementptr inbounds %struct.gfar_private, ptr %6, i32 0, i32 28
  %52 = load ptr, ptr @system_wq, align 4
  %53 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %52, ptr noundef %51) #16
  br label %54

54:                                               ; preds = %45, %42, %2
  %55 = and i32 %22, 67108864
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %70, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.gfar_private, ptr %6, i32 0, i32 19
  tail call void @_raw_spin_lock(ptr noundef %58) #16
  %59 = getelementptr inbounds %struct.gfar, ptr %4, i32 0, i32 161, i32 44
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #16, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !13
  %61 = and i32 %60, 16777216
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct.gfar_private, ptr %6, i32 0, i32 19, i32 2
  %65 = load i64, ptr %64, align 8
  %66 = add i64 %65, 1
  store i64 %66, ptr %64, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 16777216) #16, !srcloc !11
  br label %67

67:                                               ; preds = %63, %57
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !34
  %68 = load i16, ptr %58, align 4
  %69 = add i16 %68, 1
  store i16 %69, ptr %58, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !35
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !36
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !39
  br label %70

70:                                               ; preds = %67, %54
  %71 = and i32 %22, 536870912
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 36, i32 11
  %75 = load i32, ptr %74, align 4
  %76 = add i32 %75, 1
  store i32 %76, ptr %74, align 4
  %77 = getelementptr inbounds %struct.gfar_private, ptr %6, i32 0, i32 18, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %77) #16, !srcloc !23
  %78 = tail call { i64, i32 } asm sideeffect "@ atomic64_add\0A1:\09ldrexd\09$0, ${0:H}, [$3]\0A\09adds ${0:Q}, ${0:Q}, ${4:Q}\0A\09adc ${0:R}, ${0:R}, ${4:R}\0A\09strexd\09$1, $0, ${0:H}, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,r,*Qo,~{cc}"(ptr elementtype(i64) %77, ptr %77, i64 1, ptr elementtype(i64) %77) #16, !srcloc !24
  br label %79

79:                                               ; preds = %73, %70
  %80 = icmp sgt i32 %22, -1
  br i1 %80, label %87, label %81

81:                                               ; preds = %79
  %82 = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 36, i32 4
  %83 = load i32, ptr %82, align 8
  %84 = add i32 %83, 1
  store i32 %84, ptr %82, align 8
  %85 = getelementptr inbounds %struct.gfar_private, ptr %6, i32 0, i32 18, i32 7
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %85) #16, !srcloc !23
  %86 = tail call { i64, i32 } asm sideeffect "@ atomic64_add\0A1:\09ldrexd\09$0, ${0:H}, [$3]\0A\09adds ${0:Q}, ${0:Q}, ${4:Q}\0A\09adc ${0:R}, ${0:R}, ${4:R}\0A\09strexd\09$1, $0, ${0:H}, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,r,*Qo,~{cc}"(ptr elementtype(i64) %85, ptr %85, i64 1, ptr elementtype(i64) %85) #16, !srcloc !24
  br label %87

87:                                               ; preds = %81, %79
  %88 = and i32 %22, 268435456
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.gfar_private, ptr %6, i32 0, i32 18, i32 9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %91) #16, !srcloc !23
  %92 = tail call { i64, i32 } asm sideeffect "@ atomic64_add\0A1:\09ldrexd\09$0, ${0:H}, [$3]\0A\09adds ${0:Q}, ${0:Q}, ${4:Q}\0A\09adc ${0:R}, ${0:R}, ${4:R}\0A\09strexd\09$1, $0, ${0:H}, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,r,*Qo,~{cc}"(ptr elementtype(i64) %91, ptr %91, i64 1, ptr elementtype(i64) %91) #16, !srcloc !24
  br label %93

93:                                               ; preds = %90, %87
  %94 = and i32 %22, 16777216
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct.gfar_private, ptr %6, i32 0, i32 18, i32 10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %97) #16, !srcloc !23
  %98 = tail call { i64, i32 } asm sideeffect "@ atomic64_add\0A1:\09ldrexd\09$0, ${0:H}, [$3]\0A\09adds ${0:Q}, ${0:Q}, ${4:Q}\0A\09adc ${0:R}, ${0:R}, ${4:R}\0A\09strexd\09$1, $0, ${0:H}, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,r,*Qo,~{cc}"(ptr elementtype(i64) %97, ptr %97, i64 1, ptr elementtype(i64) %97) #16, !srcloc !24
  br label %99

99:                                               ; preds = %96, %93
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gfar_transmit(i32 noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.gfar_priv_grp, ptr %1, i32 0, i32 2
  %4 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %3) #16
  br i1 %4, label %5, label %21, !prof !20

5:                                                ; preds = %2
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #16
  %7 = getelementptr inbounds %struct.gfar_priv_grp, ptr %1, i32 0, i32 3
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.gfar, ptr %8, i32 0, i32 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #16, !srcloc !12
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #16
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !13
  %12 = getelementptr inbounds %struct.gfar_priv_grp, ptr %1, i32 0, i32 8
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.gfar_private, ptr %13, i32 0, i32 19, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = or i32 %15, -247398269
  %17 = and i32 %16, %11
  %18 = load ptr, ptr %7, align 8
  %19 = getelementptr inbounds %struct.gfar, ptr %18, i32 0, i32 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  %20 = tail call i32 @llvm.bswap.i32(i32 %17) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %20) #16, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %6) #16
  tail call void @__napi_schedule(ptr noundef %3) #16
  br label %25

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.gfar_priv_grp, ptr %1, i32 0, i32 3
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.gfar, ptr %23, i32 0, i32 3
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 12288) #16, !srcloc !11
  br label %25

25:                                               ; preds = %21, %5
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gfar_receive(i32 noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.gfar_priv_grp, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.gfar, ptr %4, i32 0, i32 3
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #16, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !13
  %7 = and i32 %6, 268435456
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9, !prof !20

9:                                                ; preds = %2
  %10 = load ptr, ptr %3, align 8
  %11 = getelementptr inbounds %struct.gfar, ptr %10, i32 0, i32 3
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 268435456) #16, !srcloc !11
  br label %33

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.gfar_priv_grp, ptr %1, i32 0, i32 1
  %14 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %13) #16
  br i1 %14, label %15, label %30, !prof !20

15:                                               ; preds = %12
  %16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #16
  %17 = load ptr, ptr %3, align 8
  %18 = getelementptr inbounds %struct.gfar, ptr %17, i32 0, i32 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #16, !srcloc !12
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #16
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !13
  %21 = getelementptr inbounds %struct.gfar_priv_grp, ptr %1, i32 0, i32 8
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.gfar_private, ptr %22, i32 0, i32 19, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = or i32 %24, -781123581
  %26 = and i32 %25, %20
  %27 = load ptr, ptr %3, align 8
  %28 = getelementptr inbounds %struct.gfar, ptr %27, i32 0, i32 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  %29 = tail call i32 @llvm.bswap.i32(i32 %26) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %29) #16, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %16) #16
  tail call void @__napi_schedule(ptr noundef %13) #16
  br label %33

30:                                               ; preds = %12
  %31 = load ptr, ptr %3, align 8
  %32 = getelementptr inbounds %struct.gfar, ptr %31, i32 0, i32 3
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 -2139095008) #16, !srcloc !11
  br label %33

33:                                               ; preds = %30, %15, %9
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gfar_interrupt(i32 noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.gfar_priv_grp, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.gfar, ptr %4, i32 0, i32 3
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #16, !srcloc !12
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #16
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !13
  %8 = and i32 %7, 536903808
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = tail call i32 @gfar_receive(i32 noundef %0, ptr noundef %1)
  br label %12

12:                                               ; preds = %10, %2
  %13 = and i32 %7, 3145728
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = tail call i32 @gfar_transmit(i32 noundef %0, ptr noundef %1)
  br label %17

17:                                               ; preds = %15, %12
  %18 = and i32 %7, -171505661
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = tail call i32 @gfar_error(i32 noundef %0, ptr noundef %1)
  br label %22

22:                                               ; preds = %20, %17
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_disconnect(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_checksum_help(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_mii_ioctl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @napi_gro_receive(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @build_skb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_add_rx_frag(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___pskb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_tstamp_tx(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dql_completed(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_schedule_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmioset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cluster_entry_per_class(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = add i32 %1, -1
  %5 = getelementptr %struct.gfar_private, ptr %0, i32 0, i32 44, i32 %4
  store i32 -1, ptr %5, align 4
  %6 = getelementptr %struct.gfar_private, ptr %0, i32 0, i32 45, i32 %4
  store i32 512, ptr %6, align 4
  %7 = getelementptr inbounds %struct.gfar_private, ptr %0, i32 0, i32 11, i32 0, i32 3
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.gfar, ptr %8, i32 0, i32 79
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  %10 = tail call i32 @llvm.bswap.i32(i32 %4) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %10) #16, !srcloc !11
  %11 = getelementptr inbounds %struct.gfar, ptr %8, i32 0, i32 80
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 131072) #16, !srcloc !11
  %12 = getelementptr inbounds %struct.gfar, ptr %8, i32 0, i32 81
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 -1) #16, !srcloc !11
  %13 = add i32 %1, -2
  %14 = getelementptr %struct.gfar_private, ptr %0, i32 0, i32 44, i32 %13
  store i32 -1, ptr %14, align 4
  %15 = getelementptr %struct.gfar_private, ptr %0, i32 0, i32 45, i32 %13
  store i32 96, ptr %15, align 4
  %16 = load ptr, ptr %7, align 8
  %17 = getelementptr inbounds %struct.gfar, ptr %16, i32 0, i32 79
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  %18 = tail call i32 @llvm.bswap.i32(i32 %13) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %18) #16, !srcloc !11
  %19 = getelementptr inbounds %struct.gfar, ptr %16, i32 0, i32 80
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 1610612736) #16, !srcloc !11
  %20 = getelementptr inbounds %struct.gfar, ptr %16, i32 0, i32 81
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 -1) #16, !srcloc !11
  %21 = add i32 %1, -3
  %22 = getelementptr %struct.gfar_private, ptr %0, i32 0, i32 45, i32 %21
  store i32 641, ptr %22, align 4
  %23 = getelementptr %struct.gfar_private, ptr %0, i32 0, i32 44, i32 %21
  store i32 %2, ptr %23, align 4
  %24 = load ptr, ptr %7, align 8
  %25 = getelementptr inbounds %struct.gfar, ptr %24, i32 0, i32 79
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  %26 = tail call i32 @llvm.bswap.i32(i32 %21) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %26) #16, !srcloc !11
  %27 = getelementptr inbounds %struct.gfar, ptr %24, i32 0, i32 80
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 -2130575360) #16, !srcloc !11
  %28 = getelementptr inbounds %struct.gfar, ptr %24, i32 0, i32 81
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  %29 = tail call i32 @llvm.bswap.i32(i32 %2) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %29) #16, !srcloc !11
  %30 = add i32 %1, -4
  %31 = getelementptr %struct.gfar_private, ptr %0, i32 0, i32 45, i32 %30
  store i32 128, ptr %31, align 4
  %32 = getelementptr %struct.gfar_private, ptr %0, i32 0, i32 44, i32 %30
  store i32 %2, ptr %32, align 4
  %33 = load ptr, ptr %7, align 8
  %34 = getelementptr inbounds %struct.gfar, ptr %33, i32 0, i32 79
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  %35 = tail call i32 @llvm.bswap.i32(i32 %30) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %35) #16, !srcloc !11
  %36 = getelementptr inbounds %struct.gfar, ptr %33, i32 0, i32 80
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 -2147483648) #16, !srcloc !11
  %37 = getelementptr inbounds %struct.gfar, ptr %33, i32 0, i32 81
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %29) #16, !srcloc !11
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gfar_suspend(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.gfar_private, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.gfar_private, ptr %3, i32 0, i32 11, i32 0, i32 3
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.gfar_private, ptr %3, i32 0, i32 42
  %9 = load i16, ptr %8, align 8
  %10 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 6
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %146, label %14

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.gfar_private, ptr %3, i32 0, i32 16
  %16 = load i32, ptr %15, align 16
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %18, %14
  %19 = phi i32 [ %22, %18 ], [ 0, %14 ]
  %20 = getelementptr %struct.gfar_private, ptr %3, i32 0, i32 11, i32 %19, i32 1
  tail call void @napi_disable(ptr noundef %20) #16
  %21 = getelementptr %struct.gfar_private, ptr %3, i32 0, i32 11, i32 %19, i32 2
  tail call void @napi_disable(ptr noundef %21) #16
  %22 = add nuw i32 %19, 1
  %23 = load i32, ptr %15, align 16
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %18, label %25

25:                                               ; preds = %18, %14
  tail call void @netif_tx_lock(ptr noundef %5) #16
  tail call void @netif_device_detach(ptr noundef %5) #16
  tail call void @netif_tx_unlock(ptr noundef %5) #16
  tail call fastcc void @gfar_halt(ptr noundef %3)
  %26 = zext i16 %9 to i32
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.gfar, ptr %7, i32 0, i32 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 524288) #16, !srcloc !11
  %31 = getelementptr inbounds %struct.gfar, ptr %7, i32 0, i32 120
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #16, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !13
  %33 = or i32 %32, 134217728
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %33) #16, !srcloc !11
  %34 = getelementptr inbounds %struct.gfar, ptr %7, i32 0, i32 119
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #16, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !13
  %36 = or i32 %35, 67108864
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %36) #16, !srcloc !11
  br label %146

37:                                               ; preds = %25
  %38 = and i32 %26, 2
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %143, label %40

40:                                               ; preds = %37
  %41 = load ptr, ptr %6, align 8
  %42 = getelementptr inbounds %struct.gfar, ptr %41, i32 0, i32 68
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #16, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !13
  %44 = and i32 %43, 1072693247
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %44) #16, !srcloc !11
  br label %45

45:                                               ; preds = %45, %40
  %46 = phi i32 [ 0, %40 ], [ %52, %45 ]
  %47 = load ptr, ptr %6, align 8
  %48 = getelementptr inbounds %struct.gfar, ptr %47, i32 0, i32 79
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  %49 = tail call i32 @llvm.bswap.i32(i32 %46) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %49) #16, !srcloc !11
  %50 = getelementptr inbounds %struct.gfar, ptr %47, i32 0, i32 80
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 536936448) #16, !srcloc !11
  %51 = getelementptr inbounds %struct.gfar, ptr %47, i32 0, i32 81
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 0) #16, !srcloc !11
  %52 = add nuw nsw i32 %46, 1
  %53 = icmp eq i32 %52, 256
  br i1 %53, label %54, label %45

54:                                               ; preds = %45
  %55 = load i16, ptr %8, align 8
  %56 = and i16 %55, 2
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %109, label %58

58:                                               ; preds = %54
  %59 = load ptr, ptr %4, align 4
  %60 = getelementptr inbounds %struct.gfar_private, ptr %3, i32 0, i32 11, i32 0, i32 5
  %61 = load ptr, ptr %60, align 64
  %62 = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %61, i32 0, i32 5
  %63 = load i16, ptr %62, align 2
  %64 = getelementptr inbounds %struct.net_device, ptr %59, i32 0, i32 72
  %65 = load ptr, ptr %64, align 32
  %66 = load i8, ptr %65, align 1
  %67 = zext i8 %66 to i32
  %68 = shl nuw nsw i32 %67, 16
  %69 = getelementptr i8, ptr %65, i32 1
  %70 = load i8, ptr %69, align 1
  %71 = zext i8 %70 to i32
  %72 = shl nuw nsw i32 %71, 8
  %73 = or i32 %72, %68
  %74 = getelementptr i8, ptr %65, i32 2
  %75 = load i8, ptr %74, align 1
  %76 = zext i8 %75 to i32
  %77 = or i32 %73, %76
  %78 = and i16 %63, 255
  %79 = zext i16 %78 to i32
  %80 = shl nuw nsw i32 %79, 10
  %81 = or i32 %80, 131
  %82 = load ptr, ptr %6, align 8
  %83 = getelementptr inbounds %struct.gfar, ptr %82, i32 0, i32 79
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %83, i32 0) #16, !srcloc !11
  %84 = getelementptr inbounds %struct.gfar, ptr %82, i32 0, i32 80
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  %85 = tail call i32 @llvm.bswap.i32(i32 %81) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 %85) #16, !srcloc !11
  %86 = getelementptr inbounds %struct.gfar, ptr %82, i32 0, i32 81
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  %87 = tail call i32 @llvm.bswap.i32(i32 %77) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %86, i32 %87) #16, !srcloc !11
  %88 = load ptr, ptr %64, align 32
  %89 = getelementptr i8, ptr %88, i32 3
  %90 = load i8, ptr %89, align 1
  %91 = zext i8 %90 to i32
  %92 = shl nuw nsw i32 %91, 16
  %93 = getelementptr i8, ptr %88, i32 4
  %94 = load i8, ptr %93, align 1
  %95 = zext i8 %94 to i32
  %96 = shl nuw nsw i32 %95, 8
  %97 = or i32 %96, %92
  %98 = getelementptr i8, ptr %88, i32 5
  %99 = load i8, ptr %98, align 1
  %100 = zext i8 %99 to i32
  %101 = or i32 %97, %100
  %102 = or i32 %80, -2147483644
  %103 = load ptr, ptr %6, align 8
  %104 = getelementptr inbounds %struct.gfar, ptr %103, i32 0, i32 79
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %104, i32 16777216) #16, !srcloc !11
  %105 = getelementptr inbounds %struct.gfar, ptr %103, i32 0, i32 80
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  %106 = tail call i32 @llvm.bswap.i32(i32 %102) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %105, i32 %106) #16, !srcloc !11
  %107 = getelementptr inbounds %struct.gfar, ptr %103, i32 0, i32 81
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  %108 = tail call i32 @llvm.bswap.i32(i32 %101) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %107, i32 %108) #16, !srcloc !11
  br label %109

109:                                              ; preds = %58, %54
  %110 = load ptr, ptr %6, align 8
  %111 = getelementptr inbounds %struct.gfar, ptr %110, i32 0, i32 68
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %111) #16, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !13
  %113 = or i32 %112, -1072693248
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %111, i32 %113) #16, !srcloc !11
  %114 = load ptr, ptr %6, align 8
  %115 = getelementptr inbounds %struct.gfar, ptr %114, i32 0, i32 72
  %116 = getelementptr inbounds %struct.gfar_private, ptr %3, i32 0, i32 33
  %117 = load i32, ptr %116, align 16
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  %118 = tail call i32 @llvm.bswap.i32(i32 %117) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %115, i32 %118) #16, !srcloc !11
  %119 = getelementptr inbounds %struct.gfar, ptr %114, i32 0, i32 10
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %119) #16, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !13
  %121 = or i32 %120, -1023410176
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %119, i32 %121) #16, !srcloc !11
  %122 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %119) #16, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !13
  %123 = and i32 %122, -268435457
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %119, i32 %123) #16, !srcloc !11
  %124 = load i32, ptr %15, align 16
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %138, label %126

126:                                              ; preds = %126, %109
  %127 = phi i32 [ %135, %126 ], [ 0, %109 ]
  %128 = getelementptr %struct.gfar_private, ptr %3, i32 0, i32 11, i32 %127, i32 3
  %129 = load ptr, ptr %128, align 8
  %130 = getelementptr inbounds %struct.gfar, ptr %129, i32 0, i32 69
  %131 = getelementptr %struct.gfar_private, ptr %3, i32 0, i32 11, i32 %127, i32 7
  %132 = load i32, ptr %131, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  %133 = tail call i32 @llvm.bswap.i32(i32 %132) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %130, i32 %133) #16, !srcloc !11
  %134 = getelementptr inbounds %struct.gfar, ptr %129, i32 0, i32 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %134, i32 268435456) #16, !srcloc !11
  %135 = add nuw i32 %127, 1
  %136 = load i32, ptr %15, align 16
  %137 = icmp ult i32 %135, %136
  br i1 %137, label %126, label %138

138:                                              ; preds = %126, %109
  %139 = phi ptr [ %114, %109 ], [ %129, %126 ]
  %140 = getelementptr inbounds %struct.gfar, ptr %139, i32 0, i32 119
  %141 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %140) #16, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !13
  %142 = or i32 %141, 67108864
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %140, i32 %142) #16, !srcloc !11
  br label %146

143:                                              ; preds = %37
  %144 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 120
  %145 = load ptr, ptr %144, align 8
  tail call void @phy_stop(ptr noundef %145) #16
  br label %146

146:                                              ; preds = %143, %138, %29, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gfar_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.gfar_private, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.gfar_private, ptr %3, i32 0, i32 11, i32 0, i32 3
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.gfar_private, ptr %3, i32 0, i32 42
  %9 = load i16, ptr %8, align 8
  %10 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 6
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %64, label %14

14:                                               ; preds = %1
  %15 = zext i16 %9 to i32
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.gfar, ptr %7, i32 0, i32 120
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #16, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !13
  %21 = and i32 %20, -134217729
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %21) #16, !srcloc !11
  br label %53

22:                                               ; preds = %14
  %23 = and i32 %15, 2
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %50, label %25

25:                                               ; preds = %22
  tail call fastcc void @gfar_halt(ptr noundef %3)
  %26 = load ptr, ptr %6, align 8
  %27 = getelementptr inbounds %struct.gfar, ptr %26, i32 0, i32 68
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #16, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !13
  %29 = and i32 %28, 1072693247
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %29) #16, !srcloc !11
  br label %30

30:                                               ; preds = %30, %25
  %31 = phi i32 [ 0, %25 ], [ %43, %30 ]
  %32 = getelementptr %struct.gfar_private, ptr %3, i32 0, i32 45, i32 %31
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr %struct.gfar_private, ptr %3, i32 0, i32 44, i32 %31
  %35 = load i32, ptr %34, align 4
  %36 = load ptr, ptr %6, align 8
  %37 = getelementptr inbounds %struct.gfar, ptr %36, i32 0, i32 79
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  %38 = tail call i32 @llvm.bswap.i32(i32 %31) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %38) #16, !srcloc !11
  %39 = getelementptr inbounds %struct.gfar, ptr %36, i32 0, i32 80
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  %40 = tail call i32 @llvm.bswap.i32(i32 %33) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %40) #16, !srcloc !11
  %41 = getelementptr inbounds %struct.gfar, ptr %36, i32 0, i32 81
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  %42 = tail call i32 @llvm.bswap.i32(i32 %35) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %42) #16, !srcloc !11
  %43 = add nuw nsw i32 %31, 1
  %44 = icmp eq i32 %43, 256
  br i1 %44, label %45, label %30

45:                                               ; preds = %30
  %46 = load ptr, ptr %6, align 8
  %47 = getelementptr inbounds %struct.gfar, ptr %46, i32 0, i32 68
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #16, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !13
  %49 = or i32 %48, -1072693248
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %49) #16, !srcloc !11
  br label %53

50:                                               ; preds = %22
  %51 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 120
  %52 = load ptr, ptr %51, align 8
  tail call void @phy_start(ptr noundef %52) #16
  br label %53

53:                                               ; preds = %50, %45, %18
  tail call fastcc void @gfar_start(ptr noundef %3)
  tail call void @netif_device_attach(ptr noundef %5) #16
  %54 = getelementptr inbounds %struct.gfar_private, ptr %3, i32 0, i32 16
  %55 = load i32, ptr %54, align 16
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %57, %53
  %58 = phi i32 [ %61, %57 ], [ 0, %53 ]
  %59 = getelementptr %struct.gfar_private, ptr %3, i32 0, i32 11, i32 %58, i32 1
  tail call void @napi_enable(ptr noundef %59) #16
  %60 = getelementptr %struct.gfar_private, ptr %3, i32 0, i32 11, i32 %58, i32 2
  tail call void @napi_enable(ptr noundef %60) #16
  %61 = add nuw i32 %58, 1
  %62 = load i32, ptr %54, align 16
  %63 = icmp ult i32 %61, %62
  br i1 %63, label %57, label %64

64:                                               ; preds = %57, %53, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gfar_restore(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.gfar_private, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 6
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  tail call void @netif_device_attach(ptr noundef %5) #16
  br label %130

11:                                               ; preds = %1
  %12 = getelementptr i8, ptr %5, i32 1408
  %13 = getelementptr i8, ptr %5, i32 1976
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr i8, ptr %5, i32 2568
  %16 = load i32, ptr %15, align 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %50, label %18

18:                                               ; preds = %42, %11
  %19 = phi i32 [ %47, %42 ], [ 0, %11 ]
  %20 = getelementptr %struct.gfar_private, ptr %12, i32 0, i32 8, i32 %19
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %21, i32 0, i32 5
  %23 = load i16, ptr %22, align 2
  %24 = zext i16 %23 to i32
  %25 = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %21, i32 0, i32 3
  store i32 %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %21, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %21, i32 0, i32 10
  store ptr %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %21, i32 0, i32 2
  store ptr %27, ptr %29, align 8
  %30 = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %21, i32 0, i32 4
  store i16 0, ptr %30, align 16
  %31 = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %21, i32 0, i32 11
  store i16 0, ptr %31, align 8
  %32 = icmp eq i16 %23, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %33, %18
  %34 = phi i32 [ %38, %33 ], [ 0, %18 ]
  %35 = phi ptr [ %37, %33 ], [ %27, %18 ]
  store i32 0, ptr %35, align 4
  %36 = getelementptr inbounds %struct.txbd8, ptr %35, i32 0, i32 1
  store i32 0, ptr %36, align 4
  %37 = getelementptr %struct.txbd8, ptr %35, i32 1
  %38 = add nuw nsw i32 %34, 1
  %39 = load i16, ptr %22, align 2
  %40 = zext i16 %39 to i32
  %41 = icmp ult i32 %38, %40
  br i1 %41, label %33, label %42

42:                                               ; preds = %33, %18
  %43 = phi ptr [ %27, %18 ], [ %37, %33 ]
  %44 = getelementptr %struct.txbd8, ptr %43, i32 -1
  %45 = load i16, ptr %44, align 4
  %46 = or i16 %45, 32
  store i16 %46, ptr %44, align 4
  %47 = add nuw i32 %19, 1
  %48 = load i32, ptr %15, align 8
  %49 = icmp ult i32 %47, %48
  br i1 %49, label %18, label %50

50:                                               ; preds = %42, %11
  %51 = getelementptr i8, ptr %5, i32 2572
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %73, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.gfar, ptr %14, i32 0, i32 196
  br label %56

56:                                               ; preds = %56, %54
  %57 = phi i32 [ %70, %56 ], [ 0, %54 ]
  %58 = phi ptr [ %69, %56 ], [ %55, %54 ]
  %59 = getelementptr %struct.gfar_private, ptr %12, i32 0, i32 9, i32 %57
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %60, i32 0, i32 7
  store i16 0, ptr %61, align 8
  %62 = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %60, i32 0, i32 8
  store i16 0, ptr %62, align 2
  %63 = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %60, i32 0, i32 9
  store i16 0, ptr %63, align 4
  %64 = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %60, i32 0, i32 4
  %65 = load i16, ptr %64, align 16
  %66 = zext i16 %65 to i32
  %67 = add nsw i32 %66, -1
  tail call fastcc void @gfar_alloc_rx_buffs(ptr noundef %60, i32 noundef %67) #16
  %68 = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %60, i32 0, i32 12
  store ptr %58, ptr %68, align 64
  %69 = getelementptr i32, ptr %58, i32 2
  %70 = add nuw i32 %57, 1
  %71 = load i32, ptr %51, align 4
  %72 = icmp ult i32 %70, %71
  br i1 %72, label %56, label %73

73:                                               ; preds = %56, %50
  tail call void @gfar_mac_reset(ptr noundef %3)
  %74 = getelementptr inbounds %struct.gfar_private, ptr %3, i32 0, i32 11, i32 0, i32 3
  %75 = load ptr, ptr %74, align 8
  %76 = getelementptr inbounds %struct.gfar_private, ptr %3, i32 0, i32 14
  %77 = load i32, ptr %76, align 8
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %93, label %79

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.gfar, ptr %75, i32 0, i32 52
  br label %81

81:                                               ; preds = %81, %79
  %82 = phi i32 [ %90, %81 ], [ 0, %79 ]
  %83 = phi ptr [ %89, %81 ], [ %80, %79 ]
  %84 = getelementptr %struct.gfar_private, ptr %3, i32 0, i32 8, i32 %82
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr inbounds %struct.gfar_priv_tx_q, ptr %85, i32 0, i32 15
  %87 = load i32, ptr %86, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  %88 = tail call i32 @llvm.bswap.i32(i32 %87) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %83, i32 %88) #16, !srcloc !11
  %89 = getelementptr i32, ptr %83, i32 2
  %90 = add nuw i32 %82, 1
  %91 = load i32, ptr %76, align 8
  %92 = icmp ult i32 %90, %91
  br i1 %92, label %81, label %93

93:                                               ; preds = %81, %73
  %94 = getelementptr inbounds %struct.gfar_private, ptr %3, i32 0, i32 15
  %95 = load i32, ptr %94, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %111, label %97

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.gfar, ptr %75, i32 0, i32 103
  br label %99

99:                                               ; preds = %99, %97
  %100 = phi i32 [ %108, %99 ], [ 0, %97 ]
  %101 = phi ptr [ %107, %99 ], [ %98, %97 ]
  %102 = getelementptr %struct.gfar_private, ptr %3, i32 0, i32 9, i32 %100
  %103 = load ptr, ptr %102, align 4
  %104 = getelementptr inbounds %struct.gfar_priv_rx_q, ptr %103, i32 0, i32 15
  %105 = load i32, ptr %104, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !10
  tail call void @arm_heavy_mb() #16
  %106 = tail call i32 @llvm.bswap.i32(i32 %105) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %101, i32 %106) #16, !srcloc !11
  %107 = getelementptr i32, ptr %101, i32 2
  %108 = add nuw i32 %100, 1
  %109 = load i32, ptr %94, align 4
  %110 = icmp ult i32 %108, %109
  br i1 %110, label %99, label %111

111:                                              ; preds = %99, %93
  tail call fastcc void @gfar_start(ptr noundef %3)
  %112 = getelementptr inbounds %struct.gfar_private, ptr %3, i32 0, i32 26
  store i32 0, ptr %112, align 8
  %113 = getelementptr inbounds %struct.gfar_private, ptr %3, i32 0, i32 24
  store i32 0, ptr %113, align 32
  %114 = getelementptr inbounds %struct.gfar_private, ptr %3, i32 0, i32 25
  store i32 -1, ptr %114, align 4
  %115 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 120
  %116 = load ptr, ptr %115, align 8
  %117 = icmp eq ptr %116, null
  br i1 %117, label %119, label %118

118:                                              ; preds = %111
  tail call void @phy_start(ptr noundef nonnull %116) #16
  br label %119

119:                                              ; preds = %118, %111
  tail call void @netif_device_attach(ptr noundef %5) #16
  %120 = getelementptr inbounds %struct.gfar_private, ptr %3, i32 0, i32 16
  %121 = load i32, ptr %120, align 16
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %130, label %123

123:                                              ; preds = %123, %119
  %124 = phi i32 [ %127, %123 ], [ 0, %119 ]
  %125 = getelementptr %struct.gfar_private, ptr %3, i32 0, i32 11, i32 %124, i32 1
  tail call void @napi_enable(ptr noundef %125) #16
  %126 = getelementptr %struct.gfar_private, ptr %3, i32 0, i32 11, i32 %124, i32 2
  tail call void @napi_enable(ptr noundef %126) #16
  %127 = add nuw i32 %124, 1
  %128 = load i32, ptr %120, align 16
  %129 = icmp ult i32 %127, %128
  br i1 %129, label %123, label %130

130:                                              ; preds = %123, %119, %10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly nofree nounwind willreturn }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { argmemonly nofree nounwind willreturn writeonly }
attributes #15 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { nounwind }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind readonly willreturn }
attributes #19 = { nounwind readnone }
attributes #20 = { cold nounwind }
attributes #21 = { nounwind allocsize(2) }
attributes #22 = { nounwind readonly }

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
!8 = !{i64 2156399769}
!9 = !{i64 2156400024}
!10 = !{i64 2156372564}
!11 = !{i64 3303130}
!12 = !{i64 3303548}
!13 = !{i64 2156372196}
!14 = !{i64 2156396929}
!15 = !{i64 2156396771}
!16 = !{!"auto-init"}
!17 = !{i64 2156401676}
!18 = !{i64 2156401937}
!19 = !{!"branch_weights", i32 1, i32 2000}
!20 = !{!"branch_weights", i32 2000, i32 1}
!21 = !{i64 7175751}
!22 = !{i64 2156374672}
!23 = !{i64 503797, i64 2147993768, i64 2147993794, i64 2147993841, i64 2147993863, i64 2147993891, i64 2147993911}
!24 = !{i64 2148017212, i64 2148017240, i64 2148017274, i64 2148017308, i64 2148017342, i64 2148017378, i64 2148017401}
!25 = !{i64 2148014442, i64 2148014474, i64 2148014503, i64 2148014537, i64 2148014568, i64 2148014591}
!26 = !{i64 2148115758}
!27 = !{i64 2156411514}
!28 = !{i64 2156411356}
!29 = !{i64 2148114723}
!30 = !{i64 2148012901, i64 2148012933, i64 2148012962, i64 2148012996, i64 2148013027, i64 2148013050}
!31 = !{i64 2156420854}
!32 = !{!"branch_weights", i32 4000000, i32 4001}
!33 = !{i64 2148005980, i64 2148006006, i64 2148006035, i64 2148006069, i64 2148006100, i64 2148006123}
!34 = !{i64 2149041020}
!35 = !{i64 2149036844}
!36 = !{i64 2149036919, i64 2149036946, i64 2149036993, i64 2149037015, i64 2149037043, i64 2149037063}
!37 = !{i64 399281}
!38 = !{i64 2149065164}
!39 = !{i64 2149064023}
!40 = !{i64 2154515213}
!41 = !{i64 2153814315, i64 2153814803, i64 2153814352, i64 2153814408, i64 2153814442, i64 2153814466, i64 2153814507, i64 2153814528, i64 2153814556, i64 2153814590}
!42 = !{i64 2151377126, i64 2151377626, i64 2151377163, i64 2151377219, i64 2151377253, i64 2151377277, i64 2151377318, i64 2151377339, i64 2151377367, i64 2151377401}
!43 = !{i64 2151377906}
!44 = !{i64 2154514168}
!45 = !{i64 2152234037, i64 2152234062}
!46 = !{i64 4730149}
!47 = !{i64 4730346}
!48 = !{i64 2152215625}
!49 = !{i64 2152234615, i64 2152234640}
!50 = !{i64 2156411251}
!51 = !{i64 2156411093}
