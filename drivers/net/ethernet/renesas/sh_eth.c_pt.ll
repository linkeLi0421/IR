; ModuleID = '/llk/IR/drivers/net/ethernet/renesas/sh_eth.c_pt.bc'
source_filename = "../drivers/net/ethernet/renesas/sh_eth.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.mdiobb_ops = type { ptr, ptr, ptr, ptr, ptr }
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
%struct.sh_eth_plat_data = type { i32, i32, i32, ptr, [6 x i8], i8 }
%struct.sh_eth_cpu_data = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i24 }
%struct.bb_info = type { ptr, %struct.mdiobb_ctrl, ptr }
%struct.mdiobb_ctrl = type { ptr, i32, i8, i8 }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.sh_eth_rxdesc = type { i32, i32, i32, i32 }
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
%struct.page = type { i32, %union.anon.1, %union.anon.89, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.89 = type { %struct.atomic_t }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.netdev_queue = type { ptr, %struct.netdevice_tracker, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, [4 x i8], %struct.spinlock, i32, i32, i32, [48 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [52 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [24 x i8] }
%struct.sh_eth_txdesc = type { i32, i32, i32, i32 }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.ethtool_regs = type { i32, i32, i32, [0 x i8] }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.ethtool_ringparam = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__initcall__kmod_sh_eth__336_3549_sh_eth_driver_init6 = internal global ptr @sh_eth_driver_init, section ".initcall6.init", align 4
@sh_eth_driver = internal global %struct.platform_driver { ptr @sh_eth_drv_probe, ptr @sh_eth_drv_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sh_eth_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sh_eth_dev_pm_ops, ptr null, ptr null }, ptr @sh_eth_id_table, i8 0 }, align 4
@__exitcall_sh_eth_driver_exit = internal global ptr @sh_eth_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author337 = internal constant [51 x i8] c"sh_eth.author=Nobuhiro Iwamatsu, Yoshihiro Shimoda\00", section ".modinfo", align 1
@__UNIQUE_ID_description338 = internal constant [50 x i8] c"sh_eth.description=Renesas SuperH Ethernet driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file339 = internal constant [48 x i8] c"sh_eth.file=drivers/net/ethernet/renesas/sh_eth\00", section ".modinfo", align 1
@__UNIQUE_ID_license340 = internal constant [22 x i8] c"sh_eth.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [7 x i8] c"sh-eth\00", align 1
@sh_eth_match_table = internal constant [15 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,gether-r8a7740\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a7740_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,ether-r8a7743\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_gen2_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,ether-r8a7745\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_gen2_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,ether-r8a7778\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_gen1_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,ether-r8a7779\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_gen1_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,ether-r8a7790\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_gen2_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,ether-r8a7791\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_gen2_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,ether-r8a7793\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_gen2_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,ether-r8a7794\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_gen2_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,gether-r8a77980\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a77980_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,ether-r7s72100\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r7s72100_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,ether-r7s9210\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r7s9210_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-gen1-ether\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_gen1_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-gen2-ether\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_gen2_data }, %struct.of_device_id zeroinitializer], align 4
@sh_eth_dev_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @sh_eth_suspend, ptr @sh_eth_resume, ptr @sh_eth_suspend, ptr @sh_eth_resume, ptr @sh_eth_suspend, ptr @sh_eth_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sh_eth_runtime_nop, ptr @sh_eth_runtime_nop, ptr null }, align 4
@sh_eth_id_table = internal constant [8 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"sh7619-ether\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @sh7619_data to i32) }, %struct.platform_device_id { [20 x i8] c"sh771x-ether\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @sh771x_data to i32) }, %struct.platform_device_id { [20 x i8] c"sh7724-ether\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @sh7724_data to i32) }, %struct.platform_device_id { [20 x i8] c"sh7734-gether\00\00\00\00\00\00\00", i32 ptrtoint (ptr @sh7734_data to i32) }, %struct.platform_device_id { [20 x i8] c"sh7757-ether\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @sh7757_data to i32) }, %struct.platform_device_id { [20 x i8] c"sh7757-gether\00\00\00\00\00\00\00", i32 ptrtoint (ptr @sh7757_data_giga to i32) }, %struct.platform_device_id { [20 x i8] c"sh7763-gether\00\00\00\00\00\00\00", i32 ptrtoint (ptr @sh7763_data to i32) }, %struct.platform_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"no platform data\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Unknown register type (%d)\0A\00", align 1
@sh_eth_netdev_ops_tsu = internal constant %struct.net_device_ops { ptr null, ptr null, ptr @sh_eth_open, ptr @sh_eth_close, ptr @sh_eth_start_xmit, ptr null, ptr null, ptr null, ptr @sh_eth_set_rx_mode, ptr @eth_mac_addr, ptr @eth_validate_addr, ptr null, ptr @phy_do_ioctl_running, ptr null, ptr null, ptr null, ptr null, ptr @sh_eth_change_mtu, ptr null, ptr @sh_eth_tx_timeout, ptr null, ptr null, ptr null, ptr @sh_eth_get_stats, ptr @sh_eth_vlan_rx_add_vid, ptr @sh_eth_vlan_rx_kill_vid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sh_eth_set_features, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@sh_eth_netdev_ops = internal constant %struct.net_device_ops { ptr null, ptr null, ptr @sh_eth_open, ptr @sh_eth_close, ptr @sh_eth_start_xmit, ptr null, ptr null, ptr null, ptr @sh_eth_set_rx_mode, ptr @eth_mac_addr, ptr @eth_validate_addr, ptr null, ptr @phy_do_ioctl_running, ptr null, ptr null, ptr null, ptr null, ptr @sh_eth_change_mtu, ptr null, ptr @sh_eth_tx_timeout, ptr null, ptr null, ptr null, ptr @sh_eth_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sh_eth_set_features, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@sh_eth_ethtool_ops = internal constant %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr null, ptr @sh_eth_get_regs_len, ptr @sh_eth_get_regs, ptr @sh_eth_get_wol, ptr @sh_eth_set_wol, ptr @sh_eth_get_msglevel, ptr @sh_eth_set_msglevel, ptr @phy_ethtool_nway_reset, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sh_eth_get_ringparam, ptr @sh_eth_set_ringparam, ptr null, ptr null, ptr null, ptr null, ptr @sh_eth_get_strings, ptr null, ptr @sh_eth_get_ethtool_stats, ptr null, ptr null, ptr null, ptr null, ptr @sh_eth_get_sset_count, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @phy_ethtool_get_link_ksettings, ptr @phy_ethtool_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.3 = private unnamed_addr constant [52 x i8] c"no valid MAC address supplied, using a random one.\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"no TSU resource\0A\00", align 1
@iomem_resource = external dso_local global %struct.resource, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"can't request TSU resource.\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"TSU region ioremap() failed.\0A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"MDIO init failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"Base address at 0x%x, %pM, IRQ %d.\0A\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"renesas,no-ether-link\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"renesas,ether-link-active-low\00", align 1
@sh_eth_offset_gigabit = internal constant [106 x i16] [i16 0, i16 1024, i16 1032, i16 1040, i16 1064, i16 1072, i16 16, i16 20, i16 24, i16 28, i16 48, i16 52, i16 56, i16 60, i16 1080, i16 1088, i16 1096, i16 1104, i16 1112, i16 -1, i16 -1, i16 -1, i16 -1, i16 1128, i16 1120, i16 -1, i16 -1, i16 -1, i16 1280, i16 1296, i16 1304, i16 1312, i16 1320, i16 -1, i16 1324, i16 1288, i16 -1, i16 1364, i16 1368, i16 1372, i16 1376, i16 1888, i16 -1, i16 1380, i16 -1, i16 -1, i16 -1, i16 1456, i16 1460, i16 1472, i16 1480, i16 1792, i16 1800, i16 1808, i16 -1, i16 1856, i16 1864, i16 1872, i16 1880, i16 1896, i16 1904, i16 1912, i16 -1, i16 1252, i16 1936, i16 0, i16 4, i16 16, i16 20, i16 24, i16 32, i16 36, i16 40, i16 44, i16 48, i16 52, i16 56, i16 -1, i16 -1, i16 64, i16 68, i16 80, i16 84, i16 72, i16 76, i16 88, i16 92, i16 96, i16 100, i16 112, i16 116, i16 120, i16 124, i16 256, i16 128, i16 132, i16 136, i16 140, i16 144, i16 148, i16 160, i16 164, i16 168, i16 172, i16 176, i16 180], align 2
@sh_eth_offset_fast_rcar = internal constant [106 x i16] [i16 -1, i16 512, i16 520, i16 528, i16 552, i16 560, i16 536, i16 -1, i16 -1, i16 -1, i16 544, i16 -1, i16 -1, i16 -1, i16 568, i16 576, i16 584, i16 592, i16 600, i16 -1, i16 612, i16 616, i16 620, i16 624, i16 -1, i16 636, i16 -1, i16 -1, i16 768, i16 784, i16 792, i16 800, i16 808, i16 832, i16 -1, i16 776, i16 848, i16 852, i16 856, i16 -1, i16 -1, i16 1012, i16 864, i16 868, i16 872, i16 -1, i16 -1, i16 -1, i16 -1, i16 960, i16 968, i16 976, i16 980, i16 984, i16 988, i16 996, i16 1000, i16 1004, i16 1008, i16 -1, i16 -1, i16 1016, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], align 2
@sh_eth_offset_fast_sh4 = internal constant [106 x i16] [i16 -1, i16 0, i16 8, i16 16, i16 40, i16 48, i16 24, i16 216, i16 -1, i16 -1, i16 32, i16 204, i16 -1, i16 -1, i16 56, i16 64, i16 72, i16 80, i16 88, i16 -1, i16 100, i16 104, i16 -1, i16 112, i16 120, i16 124, i16 200, i16 212, i16 256, i16 272, i16 280, i16 288, i16 296, i16 320, i16 -1, i16 264, i16 336, i16 340, i16 344, i16 -1, i16 -1, i16 500, i16 352, i16 356, i16 360, i16 -1, i16 364, i16 -1, i16 -1, i16 448, i16 456, i16 464, i16 468, i16 472, i16 476, i16 484, i16 488, i16 492, i16 496, i16 -1, i16 -1, i16 504, i16 508, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], align 2
@sh_eth_offset_fast_sh3_sh2 = internal constant [106 x i16] [i16 -1, i16 0, i16 4, i16 8, i16 20, i16 24, i16 12, i16 80, i16 -1, i16 -1, i16 16, i16 68, i16 -1, i16 -1, i16 28, i16 32, i16 36, i16 40, i16 44, i16 48, i16 -1, i16 -1, i16 -1, i16 52, i16 56, i16 60, i16 64, i16 76, i16 352, i16 356, i16 360, i16 364, i16 380, i16 -1, i16 -1, i16 376, i16 436, i16 440, i16 444, i16 -1, i16 -1, i16 420, i16 -1, i16 452, i16 -1, i16 460, i16 -1, i16 -1, i16 -1, i16 368, i16 372, i16 384, i16 388, i16 392, i16 396, i16 404, i16 408, i16 412, i16 416, i16 -1, i16 -1, i16 424, i16 -1, i16 -1, i16 -1, i16 0, i16 4, i16 16, i16 20, i16 24, i16 32, i16 36, i16 40, i16 44, i16 48, i16 52, i16 56, i16 -1, i16 -1, i16 64, i16 68, i16 80, i16 84, i16 72, i16 76, i16 -1, i16 -1, i16 96, i16 100, i16 112, i16 116, i16 120, i16 124, i16 256, i16 128, i16 132, i16 136, i16 140, i16 144, i16 148, i16 160, i16 164, i16 168, i16 172, i16 176, i16 180], align 2
@.str.11 = private unnamed_addr constant [27 x i8] c"Can not assign IRQ number\0A\00", align 1
@.str.12 = private unnamed_addr constant [49 x i8] c"ignoring interrupt, status 0x%08x, mask 0x%08x.\0A\00", align 1
@.str.13 = private unnamed_addr constant [38 x i8] c"drivers/net/ethernet/renesas/sh_eth.c\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"tx entry %d status 0x%08x\0A\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"Transmit Abort\0A\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"Transmit Descriptor Empty\0A\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"Transmit FIFO Under flow\0A\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"Address Error\0A\00", align 1
@.str.19 = private unnamed_addr constant [77 x i8] c"TX error. status=%8.8x cur_tx=%8.8x dirty_tx=%8.8x state=%8.8x EDTRR=%8.8x.\0A\00", align 1
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"include/linux/dma-mapping.h\00", align 1
@.str.21 = private unnamed_addr constant [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.22 = private unnamed_addr constant [11 x i8] c"phy-handle\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"%s:%02x\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"failed to connect PHY\0A\00", align 1
@.str.25 = private unnamed_addr constant [35 x i8] c"failed to limit PHY to 100 Mbit/s\0A\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"TxFD exhausted.\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.27 = private unnamed_addr constant [13 x i8] c"%s: timeout\0A\00", align 1
@__func__.sh_eth_tsu_busy = private unnamed_addr constant [16 x i8] c"sh_eth_tsu_busy\00", align 1
@.str.28 = private unnamed_addr constant [48 x i8] c"transmit timed out, status %8.8x, resetting...\0A\00", align 1
@.str.29 = private unnamed_addr constant [30 x i8] c"%s: sh_eth_ring_init failed.\0A\00", align 1
@__func__.sh_eth_set_ringparam = private unnamed_addr constant [21 x i8] c"sh_eth_set_ringparam\00", align 1
@.str.30 = private unnamed_addr constant [29 x i8] c"%s: sh_eth_dev_init failed.\0A\00", align 1
@sh_eth_gstrings_stats = internal unnamed_addr constant [4 x [32 x i8]] [[32 x i8] c"rx_current\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_current\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_dirty\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_dirty\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], align 1
@bb_ops = internal constant %struct.mdiobb_ops { ptr null, ptr @sh_mdc_ctrl, ptr @sh_mmd_ctrl, ptr @sh_set_mdio, ptr @sh_get_mdio }, align 4
@.str.31 = private unnamed_addr constant [7 x i8] c"sh_mii\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"%s-%x\00", align 1
@.str.33 = private unnamed_addr constant [34 x i8] c"rx entry %d status 0x%08x len %d\0A\00", align 1
@r8a7740_data = internal global { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8 } { ptr @sh_eth_soft_reset_gether, ptr @sh_eth_chip_reset_r8a7740, ptr @sh_eth_set_duplex, ptr @sh_eth_set_rate_gether, i32 0, i32 3, i32 25165823, i32 3, i32 7, i32 1807, i32 0, i32 538968064, i32 -954531840, i32 0, i32 0, i8 -2, i8 -18, i8 41 }, align 4
@.str.35 = private unnamed_addr constant [21 x i8] c"Device reset failed\0A\00", align 1
@.str.36 = private unnamed_addr constant [47 x i8] c"PHY interface mode was not setup. Set to MII.\0A\00", align 1
@rcar_gen2_data = internal global { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8 } { ptr @sh_eth_soft_reset, ptr null, ptr @sh_eth_set_duplex, ptr @sh_eth_set_rate_rcar, i32 1, i32 1, i32 33489055, i32 23, i32 23, i32 3855, i32 0, i32 2100992, i32 1192951808, i32 128, i32 0, i8 -114, i8 16, i8 10 }, align 4
@rcar_gen1_data = internal global { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8 } { ptr @sh_eth_soft_reset, ptr null, ptr @sh_eth_set_duplex, ptr @sh_eth_set_rate_rcar, i32 1, i32 1, i32 33489055, i32 21, i32 21, i32 3855, i32 0, i32 2100992, i32 1192951808, i32 0, i32 0, i8 -114, i8 16, i8 0 }, align 4
@r8a77980_data = internal global { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8 } { ptr @sh_eth_soft_reset_gether, ptr null, ptr @sh_eth_set_duplex, ptr @sh_eth_set_rate_gether, i32 0, i32 3, i32 25100447, i32 23, i32 23, i32 1807, i32 0, i32 2097920, i32 -950337536, i32 0, i32 0, i8 -66, i8 -17, i8 41 }, align 4
@r7s72100_data = internal global { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8 } { ptr @sh_eth_soft_reset_gether, ptr @sh_eth_chip_reset, ptr @sh_eth_set_duplex, ptr null, i32 0, i32 3, i32 -411107169, i32 1, i32 1, i32 1807, i32 0, i32 538968064, i32 -954531840, i32 144, i32 0, i8 -49, i8 -18, i8 16 }, align 4
@r7s9210_data = internal global { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8 } { ptr @sh_eth_soft_reset, ptr null, ptr @sh_eth_set_duplex, ptr @sh_eth_set_rate_rcar, i32 2, i32 1, i32 1199509407, i32 1, i32 1, i32 1807, i32 0, i32 2100992, i32 1192951808, i32 144, i32 0, i8 -114, i8 42, i8 0 }, align 4
@sh7619_data = internal global { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8 } { ptr @sh_eth_soft_reset, ptr null, ptr null, ptr null, i32 3, i32 1, i32 25165823, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 -114, i8 0, i8 0 }, align 4
@sh771x_data = internal global { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8 } { ptr @sh_eth_soft_reset, ptr null, ptr null, ptr null, i32 3, i32 1, i32 25165823, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 128, i32 0, i8 64, i8 0, i8 64 }, align 4
@sh7724_data = internal global { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8 } { ptr @sh_eth_soft_reset, ptr null, ptr @sh_eth_set_duplex, ptr @sh_eth_set_rate_sh7724, i32 2, i32 1, i32 33489055, i32 21, i32 21, i32 0, i32 0, i32 2100992, i32 1192951808, i32 0, i32 0, i8 -114, i8 2, i8 0 }, align 4
@sh7734_data = internal global { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8 } { ptr @sh_eth_soft_reset_gether, ptr @sh_eth_chip_reset, ptr @sh_eth_set_duplex, ptr @sh_eth_set_rate_gether, i32 0, i32 3, i32 25102335, i32 3, i32 7, i32 0, i32 0, i32 538968064, i32 -954531840, i32 0, i32 0, i8 -2, i8 -20, i8 41 }, align 4
@sh7757_data = internal global { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8 } { ptr @sh_eth_soft_reset, ptr null, ptr @sh_eth_set_duplex, ptr @sh_eth_set_rate_sh7757, i32 2, i32 1, i32 25165823, i32 0, i32 0, i32 0, i32 0, i32 2100992, i32 1192951808, i32 0, i32 128, i8 -114, i8 10, i8 68 }, align 4
@sh7757_data_giga = internal global { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8 } { ptr @sh_eth_soft_reset_gether, ptr @sh_eth_chip_reset_giga, ptr @sh_eth_set_duplex, ptr @sh_eth_set_rate_giga, i32 0, i32 3, i32 25165823, i32 3, i32 7, i32 1839, i32 0, i32 538968064, i32 -954531840, i32 0, i32 128, i8 -2, i8 46, i8 96 }, align 4
@sh7763_data = internal global { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8 } { ptr @sh_eth_soft_reset_gether, ptr @sh_eth_chip_reset, ptr @sh_eth_set_duplex, ptr @sh_eth_set_rate_gether, i32 0, i32 3, i32 25102335, i32 3, i32 7, i32 0, i32 0, i32 538968064, i32 -954597376, i32 0, i32 128, i8 -2, i8 -84, i8 104 }, align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author337, ptr @__UNIQUE_ID_description338, ptr @__UNIQUE_ID_file339, ptr @__UNIQUE_ID_license340, ptr @__exitcall_sh_eth_driver_exit, ptr @__initcall__kmod_sh_eth__336_3549_sh_eth_driver_init6, ptr @sh_eth_driver_exit], section "llvm.metadata"
@switch.table.sh_eth_drv_probe = private unnamed_addr constant [4 x ptr] [ptr @sh_eth_offset_gigabit, ptr @sh_eth_offset_fast_rcar, ptr @sh_eth_offset_fast_sh4, ptr @sh_eth_offset_fast_sh3_sh2], align 4
@switch.table.sh_eth_chip_reset_r8a7740 = private unnamed_addr constant [11 x i32] [i32 1, i32 2, i32 3, i32 3, i32 3, i32 0, i32 3, i32 3, i32 3, i32 3, i32 3], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sh_eth_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @sh_eth_driver, ptr noundef null) #18
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sh_eth_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @sh_eth_driver) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_eth_drv_probe(ptr noundef %0) #2 {
  %2 = alloca [6 x i8], align 1
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #18
  store ptr null, ptr %4, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = tail call ptr @alloc_etherdev_mqs(i32 noundef 344, i32 noundef 1, i32 noundef 1) #18
  %11 = icmp eq ptr %10, null
  br i1 %11, label %572, label %12

12:                                               ; preds = %1
  tail call void @pm_runtime_enable(ptr noundef %5) #18
  %13 = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #18
  %14 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #18
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %569, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 59
  store i32 %14, ptr %17, align 8
  %18 = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 111, i32 1
  store ptr %5, ptr %18, align 4
  %19 = getelementptr i8, ptr %10, i32 1408
  %20 = getelementptr i8, ptr %10, i32 1436
  store i32 64, ptr %20, align 4
  %21 = getelementptr i8, ptr %10, i32 1432
  store i32 64, ptr %21, align 8
  %22 = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %4) #18
  %23 = getelementptr i8, ptr %10, i32 1420
  store ptr %22, ptr %23, align 4
  %24 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %24, label %25, label %27

25:                                               ; preds = %16
  %26 = ptrtoint ptr %22 to i32
  br label %569

27:                                               ; preds = %16
  %28 = load ptr, ptr %4, align 4
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 5
  store i32 %29, ptr %30, align 32
  %31 = getelementptr i8, ptr %10, i32 1464
  store i32 0, ptr %31, align 8
  store ptr %0, ptr %19, align 8
  %32 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %33 = load ptr, ptr %32, align 8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %61, label %35

35:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #18
  store i32 0, ptr %3, align 4, !annotation !8
  %36 = call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 24, i32 noundef 3520) #18
  %37 = icmp eq ptr %36, null
  br i1 %37, label %59, label %38

38:                                               ; preds = %35
  %39 = call i32 @of_get_phy_mode(ptr noundef nonnull %33, ptr noundef nonnull %3) #18
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %59

41:                                               ; preds = %38
  %42 = load i32, ptr %3, align 4
  %43 = getelementptr inbounds %struct.sh_eth_plat_data, ptr %36, i32 0, i32 2
  store i32 %42, ptr %43, align 4
  %44 = getelementptr inbounds %struct.sh_eth_plat_data, ptr %36, i32 0, i32 4
  %45 = call i32 @of_get_mac_address(ptr noundef nonnull %33, ptr noundef %44) #18
  %46 = call ptr @of_find_property(ptr noundef nonnull %33, ptr noundef nonnull @.str.9, ptr noundef null) #18
  %47 = icmp ne ptr %46, null
  %48 = getelementptr inbounds %struct.sh_eth_plat_data, ptr %36, i32 0, i32 5
  %49 = zext i1 %47 to i8
  %50 = load i8, ptr %48, align 2
  %51 = and i8 %50, -2
  %52 = or i8 %51, %49
  store i8 %52, ptr %48, align 2
  %53 = call ptr @of_find_property(ptr noundef nonnull %33, ptr noundef nonnull @.str.10, ptr noundef null) #18
  %54 = icmp eq ptr %53, null
  %55 = load i8, ptr %48, align 2
  %56 = select i1 %54, i8 0, i8 2
  %57 = and i8 %55, -3
  %58 = or i8 %57, %56
  store i8 %58, ptr %48, align 2
  br label %59

59:                                               ; preds = %41, %38, %35
  %60 = phi ptr [ %36, %41 ], [ null, %35 ], [ null, %38 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #18
  br label %61

61:                                               ; preds = %59, %27
  %62 = phi ptr [ %60, %59 ], [ %7, %27 ]
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.1) #19
  br label %569

65:                                               ; preds = %61
  %66 = load i32, ptr %62, align 4
  %67 = getelementptr i8, ptr %10, i32 1708
  store i32 %66, ptr %67, align 4
  %68 = getelementptr inbounds %struct.sh_eth_plat_data, ptr %62, i32 0, i32 2
  %69 = load i32, ptr %68, align 4
  %70 = getelementptr i8, ptr %10, i32 1720
  store i32 %69, ptr %70, align 8
  %71 = getelementptr inbounds %struct.sh_eth_plat_data, ptr %62, i32 0, i32 5
  %72 = load i8, ptr %71, align 2
  %73 = and i8 %72, 1
  %74 = getelementptr i8, ptr %10, i32 1744
  %75 = load i8, ptr %74, align 8
  %76 = and i8 %75, -2
  %77 = or i8 %76, %73
  store i8 %77, ptr %74, align 8
  %78 = load i8, ptr %71, align 2
  %79 = and i8 %78, 2
  %80 = and i8 %77, -3
  %81 = or i8 %80, %79
  store i8 %81, ptr %74, align 8
  %82 = icmp eq ptr %9, null
  br i1 %82, label %87, label %83

83:                                               ; preds = %65
  %84 = getelementptr inbounds %struct.platform_device_id, ptr %9, i32 0, i32 1
  %85 = load i32, ptr %84, align 4
  %86 = inttoptr i32 %85 to ptr
  br label %89

87:                                               ; preds = %65
  %88 = call ptr @of_device_get_match_data(ptr noundef %5) #18
  br label %89

89:                                               ; preds = %87, %83
  %90 = phi ptr [ %88, %87 ], [ %86, %83 ]
  %91 = getelementptr i8, ptr %10, i32 1412
  store ptr %90, ptr %91, align 4
  %92 = getelementptr inbounds %struct.sh_eth_cpu_data, ptr %90, i32 0, i32 4
  %93 = load i32, ptr %92, align 4
  %94 = icmp ult i32 %93, 4
  br i1 %94, label %98, label %95

95:                                               ; preds = %89
  %96 = getelementptr i8, ptr %10, i32 1416
  store ptr null, ptr %96, align 8
  %97 = load i32, ptr %92, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.2, i32 noundef %97) #19
  br label %569

98:                                               ; preds = %89
  %99 = getelementptr inbounds [4 x ptr], ptr @switch.table.sh_eth_drv_probe, i32 0, i32 %93
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr i8, ptr %10, i32 1416
  store ptr %100, ptr %101, align 8
  %102 = getelementptr inbounds %struct.sh_eth_cpu_data, ptr %90, i32 0, i32 7
  %103 = load i32, ptr %102, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %98
  store i32 55, ptr %102, align 4
  br label %106

106:                                              ; preds = %105, %98
  %107 = getelementptr inbounds %struct.sh_eth_cpu_data, ptr %90, i32 0, i32 8
  %108 = load i32, ptr %107, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  store i32 55, ptr %107, align 4
  br label %111

111:                                              ; preds = %110, %106
  %112 = getelementptr inbounds %struct.sh_eth_cpu_data, ptr %90, i32 0, i32 10
  %113 = load i32, ptr %112, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %111
  store i32 458759, ptr %112, align 4
  br label %116

116:                                              ; preds = %115, %111
  %117 = getelementptr inbounds %struct.sh_eth_cpu_data, ptr %90, i32 0, i32 9
  %118 = load i32, ptr %117, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %116
  store i32 1799, ptr %117, align 4
  br label %121

121:                                              ; preds = %120, %116
  %122 = getelementptr inbounds %struct.sh_eth_cpu_data, ptr %90, i32 0, i32 11
  %123 = load i32, ptr %122, align 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %121
  store i32 2100992, ptr %122, align 4
  br label %126

126:                                              ; preds = %125, %121
  %127 = getelementptr inbounds %struct.sh_eth_cpu_data, ptr %90, i32 0, i32 12
  %128 = load i32, ptr %127, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %126
  store i32 1201340416, ptr %127, align 4
  br label %131

131:                                              ; preds = %130, %126
  %132 = getelementptr inbounds %struct.sh_eth_cpu_data, ptr %90, i32 0, i32 13
  %133 = load i32, ptr %132, align 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %131
  store i32 656, ptr %132, align 4
  br label %136

136:                                              ; preds = %135, %131
  %137 = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 31
  store i32 1978, ptr %137, align 4
  %138 = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 30
  store i32 68, ptr %138, align 8
  %139 = load ptr, ptr %91, align 4
  %140 = getelementptr inbounds %struct.sh_eth_cpu_data, ptr %139, i32 0, i32 15
  %141 = load i32, ptr %140, align 4
  %142 = and i32 %141, 32768
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %148, label %144

144:                                              ; preds = %136
  %145 = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 23
  store i64 1099511627776, ptr %145, align 16
  %146 = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 24
  store i64 1099511627776, ptr %146, align 8
  %147 = load i32, ptr %140, align 4
  br label %148

148:                                              ; preds = %144, %136
  %149 = phi i32 [ %147, %144 ], [ %141, %136 ]
  %150 = and i32 %149, 64
  %151 = icmp eq i32 %150, 0
  %152 = select i1 %151, ptr @sh_eth_netdev_ops, ptr @sh_eth_netdev_ops_tsu
  %153 = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 16
  store ptr %152, ptr %153, align 8
  %154 = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 42
  store ptr @sh_eth_ethtool_ops, ptr %154, align 8
  %155 = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 96
  store i32 500, ptr %155, align 8
  %156 = getelementptr i8, ptr %10, i32 1724
  store i32 204, ptr %156, align 4
  %157 = getelementptr inbounds %struct.sh_eth_plat_data, ptr %62, i32 0, i32 4
  %158 = load i8, ptr %157, align 1
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %160, label %180

160:                                              ; preds = %148
  %161 = getelementptr %struct.sh_eth_plat_data, ptr %62, i32 0, i32 4, i32 1
  %162 = load i8, ptr %161, align 1
  %163 = icmp eq i8 %162, 0
  br i1 %163, label %164, label %180

164:                                              ; preds = %160
  %165 = getelementptr %struct.sh_eth_plat_data, ptr %62, i32 0, i32 4, i32 2
  %166 = load i8, ptr %165, align 1
  %167 = icmp eq i8 %166, 0
  br i1 %167, label %168, label %180

168:                                              ; preds = %164
  %169 = getelementptr %struct.sh_eth_plat_data, ptr %62, i32 0, i32 4, i32 3
  %170 = load i8, ptr %169, align 1
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %172, label %180

172:                                              ; preds = %168
  %173 = getelementptr %struct.sh_eth_plat_data, ptr %62, i32 0, i32 4, i32 4
  %174 = load i8, ptr %173, align 1
  %175 = icmp eq i8 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %172
  %177 = getelementptr %struct.sh_eth_plat_data, ptr %62, i32 0, i32 4, i32 5
  %178 = load i8, ptr %177, align 1
  %179 = icmp eq i8 %178, 0
  br i1 %179, label %181, label %180

180:                                              ; preds = %176, %172, %168, %164, %160, %148
  call void @dev_addr_mod(ptr noundef nonnull %10, i32 noundef 0, ptr noundef %157, i32 noundef 6) #18
  br label %199

181:                                              ; preds = %176
  %182 = call fastcc i32 @sh_eth_read(ptr noundef nonnull %10, i32 noundef 49) #18
  %183 = call fastcc i32 @sh_eth_read(ptr noundef nonnull %10, i32 noundef 50) #18
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #18
  %184 = lshr i32 %182, 24
  %185 = trunc i32 %184 to i8
  store i8 %185, ptr %2, align 1
  %186 = lshr i32 %182, 16
  %187 = trunc i32 %186 to i8
  %188 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 1
  store i8 %187, ptr %188, align 1
  %189 = lshr i32 %182, 8
  %190 = trunc i32 %189 to i8
  %191 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 2
  store i8 %190, ptr %191, align 1
  %192 = trunc i32 %182 to i8
  %193 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 3
  store i8 %192, ptr %193, align 1
  %194 = lshr i32 %183, 8
  %195 = trunc i32 %194 to i8
  %196 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 4
  store i8 %195, ptr %196, align 1
  %197 = trunc i32 %183 to i8
  %198 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 5
  store i8 %197, ptr %198, align 1
  call void @dev_addr_mod(ptr noundef nonnull %10, i32 noundef 0, ptr noundef nonnull %2, i32 noundef 6) #18
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #18
  br label %199

199:                                              ; preds = %181, %180
  %200 = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 72
  %201 = load ptr, ptr %200, align 32
  %202 = load i32, ptr %201, align 4
  %203 = and i32 %202, 1
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %211

205:                                              ; preds = %199
  %206 = getelementptr i8, ptr %201, i32 4
  %207 = load i16, ptr %206, align 2
  %208 = zext i16 %207 to i32
  %209 = or i32 %202, %208
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %205, %199
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.3) #19
  call fastcc void @eth_hw_addr_random(ptr noundef nonnull %10)
  br label %212

212:                                              ; preds = %211, %205
  %213 = load ptr, ptr %91, align 4
  %214 = getelementptr inbounds %struct.sh_eth_cpu_data, ptr %213, i32 0, i32 15
  %215 = load i32, ptr %214, align 4
  %216 = and i32 %215, 64
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %482, label %218

218:                                              ; preds = %212
  %219 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 1
  %220 = load i32, ptr %219, align 4
  %221 = icmp slt i32 %220, 0
  %222 = srem i32 %220, 2
  %223 = select i1 %221, i32 0, i32 %222
  %224 = call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 1) #18
  %225 = icmp eq ptr %224, null
  br i1 %225, label %226, label %227

226:                                              ; preds = %218
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.4) #19
  br label %569

227:                                              ; preds = %218
  %228 = icmp eq i32 %223, 0
  br i1 %228, label %229, label %245

229:                                              ; preds = %227
  %230 = load i32, ptr %224, align 4
  %231 = getelementptr inbounds %struct.resource, ptr %224, i32 0, i32 1
  %232 = load i32, ptr %231, align 4
  %233 = sub i32 1, %230
  %234 = add i32 %233, %232
  %235 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %236 = load ptr, ptr %235, align 4
  %237 = icmp eq ptr %236, null
  br i1 %237, label %238, label %240

238:                                              ; preds = %229
  %239 = load ptr, ptr %5, align 4
  br label %240

240:                                              ; preds = %238, %229
  %241 = phi ptr [ %239, %238 ], [ %236, %229 ]
  %242 = call ptr @__devm_request_region(ptr noundef %5, ptr noundef nonnull @iomem_resource, i32 noundef %230, i32 noundef %234, ptr noundef %241) #18
  %243 = icmp eq ptr %242, null
  br i1 %243, label %244, label %245

244:                                              ; preds = %240
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.5) #19
  br label %569

245:                                              ; preds = %240, %227
  %246 = load i32, ptr %224, align 4
  %247 = getelementptr inbounds %struct.resource, ptr %224, i32 0, i32 1
  %248 = load i32, ptr %247, align 4
  %249 = sub i32 1, %246
  %250 = add i32 %249, %248
  %251 = call ptr @devm_ioremap(ptr noundef %5, i32 noundef %246, i32 noundef %250) #18
  %252 = getelementptr i8, ptr %10, i32 1424
  store ptr %251, ptr %252, align 8
  %253 = icmp eq ptr %251, null
  br i1 %253, label %254, label %255

254:                                              ; preds = %245
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.6) #19
  br label %569

255:                                              ; preds = %245
  %256 = getelementptr i8, ptr %10, i32 1736
  store i32 %223, ptr %256, align 8
  %257 = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 23
  %258 = load i64, ptr %257, align 16
  %259 = or i64 %258, 512
  store i64 %259, ptr %257, align 16
  br i1 %228, label %260, label %482

260:                                              ; preds = %255
  %261 = load ptr, ptr %91, align 4
  %262 = getelementptr inbounds %struct.sh_eth_cpu_data, ptr %261, i32 0, i32 1
  %263 = load ptr, ptr %262, align 4
  %264 = icmp eq ptr %263, null
  br i1 %264, label %267, label %265

265:                                              ; preds = %260
  call void %263(ptr noundef nonnull %10) #18
  %266 = load ptr, ptr %91, align 4
  br label %267

267:                                              ; preds = %265, %260
  %268 = phi ptr [ %266, %265 ], [ %261, %260 ]
  %269 = getelementptr inbounds %struct.sh_eth_cpu_data, ptr %268, i32 0, i32 15
  %270 = load i32, ptr %269, align 4
  %271 = and i32 %270, 4194304
  %272 = icmp eq i32 %271, 0
  %273 = load ptr, ptr %101, align 8
  br i1 %272, label %274, label %293

274:                                              ; preds = %267
  %275 = getelementptr i16, ptr %273, i32 88
  %276 = load i16, ptr %275, align 2
  %277 = icmp eq i16 %276, -1
  br i1 %277, label %278, label %279, !prof !9

278:                                              ; preds = %274
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 388, i32 noundef 9, ptr noundef null) #18
  br label %283

279:                                              ; preds = %274
  %280 = zext i16 %276 to i32
  %281 = load ptr, ptr %252, align 8
  %282 = getelementptr i8, ptr %281, i32 %280
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  call void @arm_heavy_mb() #18
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %282, i32 0) #18, !srcloc !11
  br label %283

283:                                              ; preds = %279, %278
  %284 = load ptr, ptr %101, align 8
  %285 = getelementptr i16, ptr %284, i32 76
  %286 = load i16, ptr %285, align 2
  %287 = icmp eq i16 %286, -1
  br i1 %287, label %288, label %289, !prof !9

288:                                              ; preds = %283
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 388, i32 noundef 9, ptr noundef null) #18
  br label %482

289:                                              ; preds = %283
  %290 = zext i16 %286 to i32
  %291 = load ptr, ptr %252, align 8
  %292 = getelementptr i8, ptr %291, i32 %290
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  call void @arm_heavy_mb() #18
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %292, i32 12288) #18, !srcloc !11
  br label %482

293:                                              ; preds = %267
  %294 = getelementptr i16, ptr %273, i32 67
  %295 = load i16, ptr %294, align 2
  %296 = icmp eq i16 %295, -1
  br i1 %296, label %297, label %298, !prof !9

297:                                              ; preds = %293
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 388, i32 noundef 9, ptr noundef null) #18
  br label %302

298:                                              ; preds = %293
  %299 = zext i16 %295 to i32
  %300 = load ptr, ptr %252, align 8
  %301 = getelementptr i8, ptr %300, i32 %299
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  call void @arm_heavy_mb() #18
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %301, i32 0) #18, !srcloc !11
  br label %302

302:                                              ; preds = %298, %297
  %303 = load ptr, ptr %101, align 8
  %304 = getelementptr i16, ptr %303, i32 68
  %305 = load i16, ptr %304, align 2
  %306 = icmp eq i16 %305, -1
  br i1 %306, label %307, label %308, !prof !9

307:                                              ; preds = %302
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 388, i32 noundef 9, ptr noundef null) #18
  br label %312

308:                                              ; preds = %302
  %309 = zext i16 %305 to i32
  %310 = load ptr, ptr %252, align 8
  %311 = getelementptr i8, ptr %310, i32 %309
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  call void @arm_heavy_mb() #18
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %311, i32 0) #18, !srcloc !11
  br label %312

312:                                              ; preds = %308, %307
  %313 = load ptr, ptr %101, align 8
  %314 = getelementptr i16, ptr %313, i32 69
  %315 = load i16, ptr %314, align 2
  %316 = icmp eq i16 %315, -1
  br i1 %316, label %317, label %318, !prof !9

317:                                              ; preds = %312
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 388, i32 noundef 9, ptr noundef null) #18
  br label %322

318:                                              ; preds = %312
  %319 = zext i16 %315 to i32
  %320 = load ptr, ptr %252, align 8
  %321 = getelementptr i8, ptr %320, i32 %319
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  call void @arm_heavy_mb() #18
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %321, i32 0) #18, !srcloc !11
  br label %322

322:                                              ; preds = %318, %317
  %323 = load ptr, ptr %101, align 8
  %324 = getelementptr i16, ptr %323, i32 70
  %325 = load i16, ptr %324, align 2
  %326 = icmp eq i16 %325, -1
  br i1 %326, label %327, label %328, !prof !9

327:                                              ; preds = %322
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 388, i32 noundef 9, ptr noundef null) #18
  br label %332

328:                                              ; preds = %322
  %329 = zext i16 %325 to i32
  %330 = load ptr, ptr %252, align 8
  %331 = getelementptr i8, ptr %330, i32 %329
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  call void @arm_heavy_mb() #18
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %331, i32 12) #18, !srcloc !11
  br label %332

332:                                              ; preds = %328, %327
  %333 = load ptr, ptr %101, align 8
  %334 = getelementptr i16, ptr %333, i32 71
  %335 = load i16, ptr %334, align 2
  %336 = icmp eq i16 %335, -1
  br i1 %336, label %337, label %338, !prof !9

337:                                              ; preds = %332
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 388, i32 noundef 9, ptr noundef null) #18
  br label %342

338:                                              ; preds = %332
  %339 = zext i16 %335 to i32
  %340 = load ptr, ptr %252, align 8
  %341 = getelementptr i8, ptr %340, i32 %339
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  call void @arm_heavy_mb() #18
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %341, i32 12) #18, !srcloc !11
  br label %342

342:                                              ; preds = %338, %337
  %343 = load ptr, ptr %101, align 8
  %344 = getelementptr i16, ptr %343, i32 72
  %345 = load i16, ptr %344, align 2
  %346 = icmp eq i16 %345, -1
  br i1 %346, label %347, label %348, !prof !9

347:                                              ; preds = %342
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 388, i32 noundef 9, ptr noundef null) #18
  br label %352

348:                                              ; preds = %342
  %349 = zext i16 %345 to i32
  %350 = load ptr, ptr %252, align 8
  %351 = getelementptr i8, ptr %350, i32 %349
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  call void @arm_heavy_mb() #18
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %351, i32 0) #18, !srcloc !11
  br label %352

352:                                              ; preds = %348, %347
  %353 = load ptr, ptr %101, align 8
  %354 = getelementptr i16, ptr %353, i32 73
  %355 = load i16, ptr %354, align 2
  %356 = icmp eq i16 %355, -1
  br i1 %356, label %357, label %358, !prof !9

357:                                              ; preds = %352
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 388, i32 noundef 9, ptr noundef null) #18
  br label %362

358:                                              ; preds = %352
  %359 = zext i16 %355 to i32
  %360 = load ptr, ptr %252, align 8
  %361 = getelementptr i8, ptr %360, i32 %359
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  call void @arm_heavy_mb() #18
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %361, i32 0) #18, !srcloc !11
  br label %362

362:                                              ; preds = %358, %357
  %363 = load ptr, ptr %101, align 8
  %364 = getelementptr i16, ptr %363, i32 74
  %365 = load i16, ptr %364, align 2
  %366 = icmp eq i16 %365, -1
  br i1 %366, label %367, label %368, !prof !9

367:                                              ; preds = %362
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 388, i32 noundef 9, ptr noundef null) #18
  br label %372

368:                                              ; preds = %362
  %369 = zext i16 %365 to i32
  %370 = load ptr, ptr %252, align 8
  %371 = getelementptr i8, ptr %370, i32 %369
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  call void @arm_heavy_mb() #18
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %371, i32 0) #18, !srcloc !11
  br label %372

372:                                              ; preds = %368, %367
  %373 = load ptr, ptr %101, align 8
  %374 = getelementptr i16, ptr %373, i32 75
  %375 = load i16, ptr %374, align 2
  %376 = icmp eq i16 %375, -1
  br i1 %376, label %377, label %378, !prof !9

377:                                              ; preds = %372
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 388, i32 noundef 9, ptr noundef null) #18
  br label %382

378:                                              ; preds = %372
  %379 = zext i16 %375 to i32
  %380 = load ptr, ptr %252, align 8
  %381 = getelementptr i8, ptr %380, i32 %379
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  call void @arm_heavy_mb() #18
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %381, i32 0) #18, !srcloc !11
  br label %382

382:                                              ; preds = %378, %377
  %383 = load ptr, ptr %101, align 8
  %384 = getelementptr i16, ptr %383, i32 76
  %385 = load i16, ptr %384, align 2
  %386 = icmp eq i16 %385, -1
  br i1 %386, label %387, label %388, !prof !9

387:                                              ; preds = %382
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 388, i32 noundef 9, ptr noundef null) #18
  br label %392

388:                                              ; preds = %382
  %389 = zext i16 %385 to i32
  %390 = load ptr, ptr %252, align 8
  %391 = getelementptr i8, ptr %390, i32 %389
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  call void @arm_heavy_mb() #18
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %391, i32 12288) #18, !srcloc !11
  br label %392

392:                                              ; preds = %388, %387
  %393 = load ptr, ptr %101, align 8
  %394 = getelementptr i16, ptr %393, i32 79
  %395 = load i16, ptr %394, align 2
  %396 = icmp eq i16 %395, -1
  br i1 %396, label %397, label %398, !prof !9

397:                                              ; preds = %392
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 388, i32 noundef 9, ptr noundef null) #18
  br label %402

398:                                              ; preds = %392
  %399 = zext i16 %395 to i32
  %400 = load ptr, ptr %252, align 8
  %401 = getelementptr i8, ptr %400, i32 %399
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  call void @arm_heavy_mb() #18
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %401, i32 0) #18, !srcloc !11
  br label %402

402:                                              ; preds = %398, %397
  %403 = load ptr, ptr %101, align 8
  %404 = getelementptr i16, ptr %403, i32 80
  %405 = load i16, ptr %404, align 2
  %406 = icmp eq i16 %405, -1
  br i1 %406, label %407, label %408, !prof !9

407:                                              ; preds = %402
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 388, i32 noundef 9, ptr noundef null) #18
  br label %412

408:                                              ; preds = %402
  %409 = zext i16 %405 to i32
  %410 = load ptr, ptr %252, align 8
  %411 = getelementptr i8, ptr %410, i32 %409
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  call void @arm_heavy_mb() #18
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %411, i32 0) #18, !srcloc !11
  br label %412

412:                                              ; preds = %408, %407
  %413 = load ptr, ptr %101, align 8
  %414 = getelementptr i16, ptr %413, i32 81
  %415 = load i16, ptr %414, align 2
  %416 = icmp eq i16 %415, -1
  br i1 %416, label %417, label %418, !prof !9

417:                                              ; preds = %412
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 388, i32 noundef 9, ptr noundef null) #18
  br label %422

418:                                              ; preds = %412
  %419 = zext i16 %415 to i32
  %420 = load ptr, ptr %252, align 8
  %421 = getelementptr i8, ptr %420, i32 %419
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  call void @arm_heavy_mb() #18
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %421, i32 0) #18, !srcloc !11
  br label %422

422:                                              ; preds = %418, %417
  %423 = load ptr, ptr %101, align 8
  %424 = getelementptr i16, ptr %423, i32 82
  %425 = load i16, ptr %424, align 2
  %426 = icmp eq i16 %425, -1
  br i1 %426, label %427, label %428, !prof !9

427:                                              ; preds = %422
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 388, i32 noundef 9, ptr noundef null) #18
  br label %432

428:                                              ; preds = %422
  %429 = zext i16 %425 to i32
  %430 = load ptr, ptr %252, align 8
  %431 = getelementptr i8, ptr %430, i32 %429
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  call void @arm_heavy_mb() #18
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %431, i32 0) #18, !srcloc !11
  br label %432

432:                                              ; preds = %428, %427
  %433 = load ptr, ptr %101, align 8
  %434 = getelementptr i16, ptr %433, i32 88
  %435 = load i16, ptr %434, align 2
  %436 = icmp eq i16 %435, -1
  br i1 %436, label %437, label %438, !prof !9

437:                                              ; preds = %432
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 388, i32 noundef 9, ptr noundef null) #18
  br label %442

438:                                              ; preds = %432
  %439 = zext i16 %435 to i32
  %440 = load ptr, ptr %252, align 8
  %441 = getelementptr i8, ptr %440, i32 %439
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  call void @arm_heavy_mb() #18
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %441, i32 0) #18, !srcloc !11
  br label %442

442:                                              ; preds = %438, %437
  %443 = load ptr, ptr %101, align 8
  %444 = getelementptr i16, ptr %443, i32 89
  %445 = load i16, ptr %444, align 2
  %446 = icmp eq i16 %445, -1
  br i1 %446, label %447, label %448, !prof !9

447:                                              ; preds = %442
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 388, i32 noundef 9, ptr noundef null) #18
  br label %452

448:                                              ; preds = %442
  %449 = zext i16 %445 to i32
  %450 = load ptr, ptr %252, align 8
  %451 = getelementptr i8, ptr %450, i32 %449
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  call void @arm_heavy_mb() #18
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %451, i32 0) #18, !srcloc !11
  br label %452

452:                                              ; preds = %448, %447
  %453 = load ptr, ptr %101, align 8
  %454 = getelementptr i16, ptr %453, i32 90
  %455 = load i16, ptr %454, align 2
  %456 = icmp eq i16 %455, -1
  br i1 %456, label %457, label %458, !prof !9

457:                                              ; preds = %452
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 388, i32 noundef 9, ptr noundef null) #18
  br label %462

458:                                              ; preds = %452
  %459 = zext i16 %455 to i32
  %460 = load ptr, ptr %252, align 8
  %461 = getelementptr i8, ptr %460, i32 %459
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  call void @arm_heavy_mb() #18
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %461, i32 0) #18, !srcloc !11
  br label %462

462:                                              ; preds = %458, %457
  %463 = load ptr, ptr %101, align 8
  %464 = getelementptr i16, ptr %463, i32 91
  %465 = load i16, ptr %464, align 2
  %466 = icmp eq i16 %465, -1
  br i1 %466, label %467, label %468, !prof !9

467:                                              ; preds = %462
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 388, i32 noundef 9, ptr noundef null) #18
  br label %472

468:                                              ; preds = %462
  %469 = zext i16 %465 to i32
  %470 = load ptr, ptr %252, align 8
  %471 = getelementptr i8, ptr %470, i32 %469
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  call void @arm_heavy_mb() #18
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %471, i32 0) #18, !srcloc !11
  br label %472

472:                                              ; preds = %468, %467
  %473 = load ptr, ptr %101, align 8
  %474 = getelementptr i16, ptr %473, i32 92
  %475 = load i16, ptr %474, align 2
  %476 = icmp eq i16 %475, -1
  br i1 %476, label %477, label %478, !prof !9

477:                                              ; preds = %472
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 388, i32 noundef 9, ptr noundef null) #18
  br label %482

478:                                              ; preds = %472
  %479 = zext i16 %475 to i32
  %480 = load ptr, ptr %252, align 8
  %481 = getelementptr i8, ptr %480, i32 %479
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  call void @arm_heavy_mb() #18
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %481, i32 0) #18, !srcloc !11
  br label %482

482:                                              ; preds = %478, %477, %289, %288, %255, %212
  %483 = load ptr, ptr %91, align 4
  %484 = getelementptr inbounds %struct.sh_eth_cpu_data, ptr %483, i32 0, i32 15
  %485 = load i32, ptr %484, align 4
  %486 = and i32 %485, 131072
  %487 = icmp eq i32 %486, 0
  br i1 %487, label %498, label %488

488:                                              ; preds = %482
  %489 = load ptr, ptr %101, align 8
  %490 = getelementptr i16, ptr %489, i32 22
  %491 = load i16, ptr %490, align 2
  %492 = icmp eq i16 %491, -1
  br i1 %492, label %493, label %494, !prof !9

493:                                              ; preds = %488
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 354, i32 noundef 9, ptr noundef null) #18
  br label %498

494:                                              ; preds = %488
  %495 = zext i16 %491 to i32
  %496 = load ptr, ptr %23, align 4
  %497 = getelementptr i8, ptr %496, i32 %495
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  call void @arm_heavy_mb() #18
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %497, i32 1) #18, !srcloc !11
  br label %498

498:                                              ; preds = %494, %493, %482
  %499 = load ptr, ptr %19, align 8
  %500 = getelementptr inbounds %struct.platform_device, ptr %499, i32 0, i32 3
  %501 = call noalias ptr @devm_kmalloc(ptr noundef %500, i32 noundef 20, i32 noundef 3520) #18
  %502 = icmp eq ptr %501, null
  br i1 %502, label %546, label %503

503:                                              ; preds = %498
  %504 = load ptr, ptr %23, align 4
  %505 = load ptr, ptr %101, align 8
  %506 = getelementptr i16, ptr %505, i32 31
  %507 = load i16, ptr %506, align 2
  %508 = zext i16 %507 to i32
  %509 = getelementptr i8, ptr %504, i32 %508
  %510 = getelementptr inbounds %struct.bb_info, ptr %501, i32 0, i32 2
  store ptr %509, ptr %510, align 4
  %511 = getelementptr inbounds %struct.sh_eth_plat_data, ptr %62, i32 0, i32 3
  %512 = load ptr, ptr %511, align 4
  store ptr %512, ptr %501, align 4
  %513 = getelementptr inbounds %struct.bb_info, ptr %501, i32 0, i32 1
  store ptr @bb_ops, ptr %513, align 4
  %514 = call ptr @alloc_mdio_bitbang(ptr noundef %513) #18
  %515 = getelementptr i8, ptr %10, i32 1712
  store ptr %514, ptr %515, align 8
  %516 = icmp eq ptr %514, null
  br i1 %516, label %546, label %517

517:                                              ; preds = %503
  %518 = getelementptr inbounds %struct.mii_bus, ptr %514, i32 0, i32 4
  store ptr @sh_mdiobb_read, ptr %518, align 4
  %519 = load ptr, ptr %515, align 8
  %520 = getelementptr inbounds %struct.mii_bus, ptr %519, i32 0, i32 5
  store ptr @sh_mdiobb_write, ptr %520, align 8
  %521 = load ptr, ptr %515, align 8
  %522 = getelementptr inbounds %struct.mii_bus, ptr %521, i32 0, i32 1
  store ptr @.str.31, ptr %522, align 4
  %523 = load ptr, ptr %515, align 8
  %524 = getelementptr inbounds %struct.mii_bus, ptr %523, i32 0, i32 9
  store ptr %500, ptr %524, align 4
  %525 = load ptr, ptr %515, align 8
  %526 = getelementptr inbounds %struct.mii_bus, ptr %525, i32 0, i32 2
  %527 = load ptr, ptr %499, align 8
  %528 = getelementptr inbounds %struct.platform_device, ptr %499, i32 0, i32 1
  %529 = load i32, ptr %528, align 4
  %530 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %526, i32 noundef 61, ptr noundef nonnull @.str.32, ptr noundef %527, i32 noundef %529) #18
  %531 = getelementptr inbounds %struct.sh_eth_plat_data, ptr %62, i32 0, i32 1
  %532 = load i32, ptr %531, align 4
  %533 = icmp sgt i32 %532, 0
  br i1 %533, label %534, label %538

534:                                              ; preds = %517
  %535 = load ptr, ptr %515, align 8
  %536 = load i32, ptr %62, align 4
  %537 = getelementptr %struct.mii_bus, ptr %535, i32 0, i32 15, i32 %536
  store i32 %532, ptr %537, align 4
  br label %538

538:                                              ; preds = %534, %517
  %539 = load ptr, ptr %515, align 8
  %540 = getelementptr inbounds %struct.platform_device, ptr %499, i32 0, i32 3, i32 25
  %541 = load ptr, ptr %540, align 8
  %542 = call i32 @of_mdiobus_register(ptr noundef %539, ptr noundef %541) #18
  %543 = icmp eq i32 %542, 0
  br i1 %543, label %549, label %544

544:                                              ; preds = %538
  %545 = load ptr, ptr %515, align 8
  call void @free_mdio_bitbang(ptr noundef %545) #18
  br label %546

546:                                              ; preds = %544, %503, %498
  %547 = phi i32 [ -12, %503 ], [ -12, %498 ], [ %542, %544 ]
  %548 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %5, i32 noundef %547, ptr noundef nonnull @.str.7) #18
  br label %569

549:                                              ; preds = %538
  %550 = getelementptr i8, ptr %10, i32 1488
  call void @netif_napi_add(ptr noundef nonnull %10, ptr noundef %550, ptr noundef nonnull @sh_eth_poll, i32 noundef 64) #18
  %551 = call i32 @register_netdev(ptr noundef nonnull %10) #18
  %552 = icmp eq i32 %551, 0
  br i1 %552, label %553, label %566

553:                                              ; preds = %549
  %554 = load ptr, ptr %91, align 4
  %555 = getelementptr inbounds %struct.sh_eth_cpu_data, ptr %554, i32 0, i32 15
  %556 = load i32, ptr %555, align 4
  %557 = and i32 %556, 524288
  %558 = icmp eq i32 %557, 0
  br i1 %558, label %560, label %559

559:                                              ; preds = %553
  call void @device_set_wakeup_capable(ptr noundef %5, i1 noundef zeroext true) #18
  br label %560

560:                                              ; preds = %559, %553
  %561 = load i32, ptr %30, align 32
  %562 = load ptr, ptr %200, align 32
  %563 = load i32, ptr %17, align 8
  call void (ptr, ptr, ...) @netdev_info(ptr noundef nonnull %10, ptr noundef nonnull @.str.8, i32 noundef %561, ptr noundef %562, i32 noundef %563) #19
  %564 = call i32 @__pm_runtime_idle(ptr noundef %5, i32 noundef 5) #18
  %565 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %10, ptr %565, align 8
  br label %572

566:                                              ; preds = %549
  call void @__netif_napi_del(ptr noundef %550) #18
  call void @synchronize_net() #18
  %567 = load ptr, ptr %515, align 8
  call void @mdiobus_unregister(ptr noundef %567) #18
  %568 = load ptr, ptr %515, align 8
  call void @free_mdio_bitbang(ptr noundef %568) #18
  br label %569

569:                                              ; preds = %566, %546, %254, %244, %226, %95, %64, %25, %12
  %570 = phi i32 [ %14, %12 ], [ %26, %25 ], [ %547, %546 ], [ %551, %566 ], [ -22, %95 ], [ -22, %64 ], [ -12, %254 ], [ -16, %244 ], [ -19, %226 ]
  call void @free_netdev(ptr noundef nonnull %10) #18
  %571 = call i32 @__pm_runtime_idle(ptr noundef %5, i32 noundef 5) #18
  call void @__pm_runtime_disable(ptr noundef %5, i1 noundef zeroext true) #18
  br label %572

572:                                              ; preds = %569, %560, %1
  %573 = phi i32 [ %570, %569 ], [ 0, %560 ], [ -12, %1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #18
  ret i32 %573
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_eth_drv_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @unregister_netdev(ptr noundef %3) #18
  %4 = getelementptr i8, ptr %3, i32 1488
  tail call void @__netif_napi_del(ptr noundef %4) #18
  tail call void @synchronize_net() #18
  %5 = getelementptr i8, ptr %3, i32 1712
  %6 = load ptr, ptr %5, align 8
  tail call void @mdiobus_unregister(ptr noundef %6) #18
  %7 = load ptr, ptr %5, align 8
  tail call void @free_mdio_bitbang(ptr noundef %7) #18
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %8, i1 noundef zeroext true) #18
  tail call void @free_netdev(ptr noundef %3) #18
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @eth_hw_addr_random(ptr noundef %0) unnamed_addr #6 {
  %2 = alloca [6 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %2, i8 0, i32 6, i1 false), !annotation !8
  call void @get_random_bytes(ptr noundef nonnull %2, i32 noundef 6) #18
  %3 = load i8, ptr %2, align 1
  %4 = and i8 %3, -4
  %5 = or i8 %4, 2
  store i8 %5, ptr %2, align 1
  call void @dev_addr_mod(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2, i32 noundef 6) #18
  %6 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 50
  store i8 1, ptr %6, align 8
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_request_region(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sh_eth_write(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = getelementptr i8, ptr %0, i32 1416
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i16, ptr %5, i32 %2
  %7 = load i16, ptr %6, align 2
  %8 = icmp eq i16 %7, -1
  br i1 %8, label %9, label %10, !prof !9

9:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 354, i32 noundef 9, ptr noundef null) #18
  br label %15

10:                                               ; preds = %3
  %11 = zext i16 %7 to i32
  %12 = getelementptr i8, ptr %0, i32 1420
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 %11
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %1) #18, !srcloc !11
  br label %15

15:                                               ; preds = %10, %9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_eth_poll(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.napi_struct, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 1416
  %6 = getelementptr i8, ptr %4, i32 1420
  %7 = getelementptr i8, ptr %4, i32 1408
  %8 = getelementptr i8, ptr %4, i32 1468
  %9 = getelementptr i8, ptr %4, i32 1432
  %10 = getelementptr i8, ptr %4, i32 1472
  %11 = getelementptr i8, ptr %4, i32 1484
  %12 = getelementptr i8, ptr %4, i32 1448
  %13 = getelementptr i8, ptr %4, i32 1724
  %14 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 36, i32 10
  %15 = getelementptr i8, ptr %4, i32 1412
  %16 = getelementptr i8, ptr %4, i32 1456
  %17 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 36, i32 4
  %18 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 36, i32 12
  %19 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 36, i32 13
  %20 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 36, i32 15
  %21 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 36, i32 11
  %22 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 23
  %23 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 36
  %24 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 36, i32 2
  %25 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 36, i32 8
  br label %26

26:                                               ; preds = %373, %2
  %27 = phi i32 [ %1, %2 ], [ %376, %373 ]
  %28 = load ptr, ptr %5, align 8
  %29 = getelementptr i16, ptr %28, i32 4
  %30 = load i16, ptr %29, align 2
  %31 = icmp eq i16 %30, -1
  br i1 %31, label %32, label %33, !prof !9

32:                                               ; preds = %26
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %40

33:                                               ; preds = %26
  %34 = zext i16 %30 to i32
  %35 = load ptr, ptr %6, align 4
  %36 = getelementptr i8, ptr %35, i32 %34
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  %38 = and i32 %37, 262303
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %378, label %40

40:                                               ; preds = %33, %32
  %41 = phi i32 [ 262303, %32 ], [ %38, %33 ]
  %42 = phi i32 [ -1, %32 ], [ %37, %33 ]
  %43 = load ptr, ptr %5, align 8
  %44 = getelementptr i16, ptr %43, i32 4
  %45 = load i16, ptr %44, align 2
  %46 = icmp eq i16 %45, -1
  br i1 %46, label %47, label %48, !prof !9

47:                                               ; preds = %40
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 354, i32 noundef 9, ptr noundef null) #18
  br label %52

48:                                               ; preds = %40
  %49 = zext i16 %45 to i32
  %50 = load ptr, ptr %6, align 4
  %51 = getelementptr i8, ptr %50, i32 %49
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %41) #18, !srcloc !11
  br label %52

52:                                               ; preds = %48, %47
  %53 = load i32, ptr %8, align 4
  %54 = load i32, ptr %9, align 8
  %55 = urem i32 %53, %54
  %56 = load i32, ptr %10, align 8
  %57 = sub i32 %54, %53
  %58 = add i32 %57, %56
  %59 = load i32, ptr %11, align 4
  %60 = add i32 %59, 63
  %61 = tail call i32 @llvm.smin.i32(i32 %58, i32 %27) #18
  %62 = load ptr, ptr %12, align 8
  %63 = getelementptr %struct.sh_eth_rxdesc, ptr %62, i32 %55
  %64 = load i32, ptr %63, align 2
  %65 = icmp sgt i32 %64, -1
  br i1 %65, label %66, label %236

66:                                               ; preds = %52
  %67 = add i32 %61, -1
  %68 = tail call i32 @llvm.smin.i32(i32 %67, i32 -1) #18
  br label %69

69:                                               ; preds = %223, %66
  %70 = phi ptr [ %63, %66 ], [ %229, %223 ]
  %71 = phi i32 [ %55, %66 ], [ %227, %223 ]
  %72 = phi i32 [ %61, %66 ], [ %76, %223 ]
  tail call void asm sideeffect "dmb osh", "~{memory}"() #18, !srcloc !14
  %73 = load i32, ptr %70, align 2
  %74 = getelementptr inbounds %struct.sh_eth_rxdesc, ptr %70, i32 0, i32 1
  %75 = load i32, ptr %74, align 2
  %76 = add i32 %72, -1
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %69
  %79 = load i32, ptr %8, align 4
  br label %232

80:                                               ; preds = %69
  %81 = load i32, ptr %13, align 4
  %82 = and i32 %81, 2048
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %80
  %85 = and i32 %75, 65535
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %4, ptr noundef nonnull @.str.33, i32 noundef %71, i32 noundef %73, i32 noundef %85) #19
  br label %86

86:                                               ; preds = %84, %80
  %87 = and i32 %73, 268435456
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load i32, ptr %14, align 8
  %91 = add i32 %90, 1
  store i32 %91, ptr %14, align 8
  br label %92

92:                                               ; preds = %89, %86
  %93 = load ptr, ptr %15, align 4
  %94 = getelementptr inbounds %struct.sh_eth_cpu_data, ptr %93, i32 0, i32 15
  %95 = load i32, ptr %94, align 4
  %96 = and i32 %95, 16384
  %97 = icmp eq i32 %96, 0
  %98 = lshr i32 %73, 16
  %99 = select i1 %97, i32 %73, i32 %98
  %100 = load ptr, ptr %16, align 8
  %101 = getelementptr ptr, ptr %100, i32 %71
  %102 = load ptr, ptr %101, align 4
  %103 = and i32 %99, 575
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %143, label %105

105:                                              ; preds = %92
  %106 = load i32, ptr %17, align 8
  %107 = add i32 %106, 1
  store i32 %107, ptr %17, align 8
  %108 = and i32 %99, 1
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %105
  %111 = load i32, ptr %18, align 8
  %112 = add i32 %111, 1
  store i32 %112, ptr %18, align 8
  br label %113

113:                                              ; preds = %110, %105
  %114 = and i32 %99, 2
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %113
  %117 = load i32, ptr %19, align 4
  %118 = add i32 %117, 1
  store i32 %118, ptr %19, align 4
  br label %119

119:                                              ; preds = %116, %113
  %120 = and i32 %99, 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %119
  %123 = load i32, ptr %14, align 8
  %124 = add i32 %123, 1
  store i32 %124, ptr %14, align 8
  br label %125

125:                                              ; preds = %122, %119
  %126 = and i32 %99, 8
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %131, label %128

128:                                              ; preds = %125
  %129 = load i32, ptr %14, align 8
  %130 = add i32 %129, 1
  store i32 %130, ptr %14, align 8
  br label %131

131:                                              ; preds = %128, %125
  %132 = and i32 %99, 32
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %137, label %134

134:                                              ; preds = %131
  %135 = load i32, ptr %20, align 4
  %136 = add i32 %135, 1
  store i32 %136, ptr %20, align 4
  br label %137

137:                                              ; preds = %134, %131
  %138 = and i32 %99, 512
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %223, label %140

140:                                              ; preds = %137
  %141 = load i32, ptr %21, align 4
  %142 = add i32 %141, 1
  store i32 %142, ptr %21, align 4
  br label %223

143:                                              ; preds = %92
  %144 = icmp eq ptr %102, null
  br i1 %144, label %223, label %145

145:                                              ; preds = %143
  %146 = getelementptr inbounds %struct.sh_eth_rxdesc, ptr %70, i32 0, i32 2
  %147 = load i32, ptr %146, align 2
  %148 = and i32 %95, 128
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %168

150:                                              ; preds = %145
  %151 = add i32 %147, 3
  %152 = and i32 %151, -4
  %153 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %152, i32 -2130706432, i32 8454144) #20, !srcloc !15
  %154 = inttoptr i32 %153 to ptr
  %155 = and i32 %75, 65535
  %156 = add nuw nsw i32 %155, 5
  %157 = lshr i32 %156, 2
  %158 = getelementptr i32, ptr %154, i32 %157
  %159 = icmp ugt ptr %158, %154
  br i1 %159, label %160, label %168

160:                                              ; preds = %160, %150
  %161 = phi ptr [ %164, %160 ], [ %154, %150 ]
  %162 = load i32, ptr %161, align 4
  %163 = tail call i32 @llvm.bswap.i32(i32 %162) #18
  store i32 %163, ptr %161, align 4
  %164 = getelementptr i32, ptr %161, i32 1
  %165 = icmp ult ptr %164, %158
  br i1 %165, label %160, label %166

166:                                              ; preds = %160
  %167 = load ptr, ptr %16, align 8
  br label %168

168:                                              ; preds = %166, %150, %145
  %169 = phi ptr [ %167, %166 ], [ %100, %150 ], [ %100, %145 ]
  %170 = getelementptr ptr, ptr %169, i32 %71
  store ptr null, ptr %170, align 4
  %171 = load ptr, ptr %15, align 4
  %172 = getelementptr inbounds %struct.sh_eth_cpu_data, ptr %171, i32 0, i32 15
  %173 = load i32, ptr %172, align 4
  %174 = and i32 %173, 512
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %183, label %176

176:                                              ; preds = %168
  %177 = getelementptr inbounds %struct.sk_buff, ptr %102, i32 0, i32 17
  %178 = load ptr, ptr %177, align 4
  %179 = getelementptr i8, ptr %178, i32 2
  store ptr %179, ptr %177, align 4
  %180 = getelementptr inbounds %struct.sk_buff, ptr %102, i32 0, i32 14
  %181 = load ptr, ptr %180, align 8
  %182 = getelementptr i8, ptr %181, i32 2
  store ptr %182, ptr %180, align 8
  br label %183

183:                                              ; preds = %176, %168
  %184 = load ptr, ptr %7, align 8
  %185 = getelementptr inbounds %struct.platform_device, ptr %184, i32 0, i32 3
  %186 = load i32, ptr %11, align 4
  %187 = add i32 %186, 31
  %188 = and i32 %187, -32
  tail call void @dma_unmap_page_attrs(ptr noundef %185, i32 noundef %147, i32 noundef %188, i32 noundef 2, i32 noundef 0) #18
  %189 = and i32 %75, 65535
  %190 = tail call ptr @skb_put(ptr noundef nonnull %102, i32 noundef %189) #18
  %191 = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %102, ptr noundef %4) #18
  %192 = getelementptr inbounds %struct.sk_buff, ptr %102, i32 0, i32 13, i32 0, i32 16
  store i16 %191, ptr %192, align 8
  %193 = load i64, ptr %22, align 16
  %194 = and i64 %193, 1099511627776
  %195 = icmp eq i64 %194, 0
  br i1 %195, label %212, label %196

196:                                              ; preds = %183
  %197 = getelementptr inbounds %struct.sk_buff, ptr %102, i32 0, i32 5
  %198 = load i32, ptr %197, align 8
  %199 = icmp ult i32 %198, 2
  br i1 %199, label %212, label %200, !prof !9

200:                                              ; preds = %196
  %201 = getelementptr inbounds %struct.sk_buff, ptr %102, i32 0, i32 14
  %202 = load ptr, ptr %201, align 8
  %203 = getelementptr i8, ptr %202, i32 -2
  %204 = load i16, ptr %203, align 1
  %205 = zext i16 %204 to i32
  %206 = getelementptr inbounds %struct.sk_buff, ptr %102, i32 0, i32 13, i32 0, i32 4
  store i32 %205, ptr %206, align 4
  %207 = getelementptr inbounds %struct.sk_buff, ptr %102, i32 0, i32 13
  %208 = load i16, ptr %207, align 8
  %209 = and i16 %208, -97
  %210 = or i16 %209, 64
  store i16 %210, ptr %207, align 8
  %211 = add i32 %198, -2
  tail call void @skb_trim(ptr noundef nonnull %102, i32 noundef %211) #18
  br label %212

212:                                              ; preds = %200, %196, %183
  %213 = tail call i32 @netif_receive_skb(ptr noundef nonnull %102) #18
  %214 = load i32, ptr %23, align 8
  %215 = add i32 %214, 1
  store i32 %215, ptr %23, align 8
  %216 = load i32, ptr %24, align 8
  %217 = add i32 %216, %189
  store i32 %217, ptr %24, align 8
  %218 = and i32 %99, 128
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %223, label %220

220:                                              ; preds = %212
  %221 = load i32, ptr %25, align 8
  %222 = add i32 %221, 1
  store i32 %222, ptr %25, align 8
  br label %223

223:                                              ; preds = %220, %212, %143, %140, %137
  %224 = load i32, ptr %8, align 4
  %225 = add i32 %224, 1
  store i32 %225, ptr %8, align 4
  %226 = load i32, ptr %9, align 8
  %227 = urem i32 %225, %226
  %228 = load ptr, ptr %12, align 8
  %229 = getelementptr %struct.sh_eth_rxdesc, ptr %228, i32 %227
  %230 = load i32, ptr %229, align 2
  %231 = icmp sgt i32 %230, -1
  br i1 %231, label %69, label %232

232:                                              ; preds = %223, %78
  %233 = phi i32 [ %79, %78 ], [ %225, %223 ]
  %234 = phi i32 [ %68, %78 ], [ %76, %223 ]
  %235 = load i32, ptr %10, align 8
  br label %236

236:                                              ; preds = %232, %52
  %237 = phi i32 [ %56, %52 ], [ %235, %232 ]
  %238 = phi i32 [ %53, %52 ], [ %233, %232 ]
  %239 = phi i32 [ %61, %52 ], [ %234, %232 ]
  %240 = icmp eq i32 %238, %237
  br i1 %240, label %314, label %241

241:                                              ; preds = %303, %236
  %242 = phi i32 [ %311, %303 ], [ %237, %236 ]
  %243 = load i32, ptr %9, align 8
  %244 = urem i32 %242, %243
  %245 = load ptr, ptr %12, align 8
  %246 = getelementptr %struct.sh_eth_rxdesc, ptr %245, i32 %244
  %247 = load i32, ptr %11, align 4
  %248 = add i32 %247, 31
  %249 = and i32 %248, -32
  %250 = shl i32 %249, 16
  %251 = getelementptr %struct.sh_eth_rxdesc, ptr %245, i32 %244, i32 1
  store i32 %250, ptr %251, align 2
  %252 = load ptr, ptr %16, align 8
  %253 = getelementptr ptr, ptr %252, i32 %244
  %254 = load ptr, ptr %253, align 4
  %255 = icmp eq ptr %254, null
  br i1 %255, label %256, label %303

256:                                              ; preds = %241
  %257 = tail call ptr @__netdev_alloc_skb(ptr noundef %4, i32 noundef %60, i32 noundef 2592) #18
  %258 = icmp eq ptr %257, null
  br i1 %258, label %314, label %259

259:                                              ; preds = %256
  %260 = getelementptr inbounds %struct.sk_buff, ptr %257, i32 0, i32 17
  %261 = load ptr, ptr %260, align 4
  %262 = ptrtoint ptr %261 to i32
  %263 = and i32 %262, 31
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %271, label %265

265:                                              ; preds = %259
  %266 = sub nuw nsw i32 32, %263
  %267 = getelementptr i8, ptr %261, i32 %266
  store ptr %267, ptr %260, align 4
  %268 = getelementptr inbounds %struct.sk_buff, ptr %257, i32 0, i32 14
  %269 = load ptr, ptr %268, align 8
  %270 = getelementptr i8, ptr %269, i32 %266
  store ptr %270, ptr %268, align 8
  br label %271

271:                                              ; preds = %265, %259
  %272 = phi ptr [ %261, %259 ], [ %267, %265 ]
  %273 = load ptr, ptr %7, align 8
  %274 = getelementptr inbounds %struct.platform_device, ptr %273, i32 0, i32 3
  %275 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %272) #18
  %276 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %277 = xor i1 %276, true
  %278 = select i1 %275, i1 %277, i1 false
  br i1 %278, label %279, label %288, !prof !9

279:                                              ; preds = %271
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %280 = tail call ptr @dev_driver_string(ptr noundef %274) #18
  %281 = getelementptr inbounds %struct.platform_device, ptr %273, i32 0, i32 3, i32 3
  %282 = load ptr, ptr %281, align 4
  %283 = icmp eq ptr %282, null
  br i1 %283, label %284, label %286

284:                                              ; preds = %279
  %285 = load ptr, ptr %274, align 4
  br label %286

286:                                              ; preds = %284, %279
  %287 = phi ptr [ %285, %284 ], [ %282, %279 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.21, ptr noundef %280, ptr noundef %287) #18
  br label %288

288:                                              ; preds = %286, %271
  br i1 %275, label %298, label %289

289:                                              ; preds = %288
  %290 = load ptr, ptr @mem_map, align 4
  %291 = ptrtoint ptr %272 to i32
  %292 = add i32 %291, 1073741824
  %293 = lshr i32 %292, 12
  %294 = getelementptr %struct.page, ptr %290, i32 %293
  %295 = and i32 %291, 4095
  %296 = tail call i32 @dma_map_page_attrs(ptr noundef %274, ptr noundef %294, i32 noundef %295, i32 noundef %249, i32 noundef 2, i32 noundef 0) #18
  %297 = icmp eq i32 %296, -1
  br i1 %297, label %298, label %299

298:                                              ; preds = %289, %288
  tail call void @kfree_skb_reason(ptr noundef nonnull %257, i32 noundef 0) #18
  br label %314

299:                                              ; preds = %289
  %300 = load ptr, ptr %16, align 8
  %301 = getelementptr ptr, ptr %300, i32 %244
  store ptr %257, ptr %301, align 4
  %302 = getelementptr %struct.sh_eth_rxdesc, ptr %245, i32 %244, i32 2
  store i32 %296, ptr %302, align 2
  br label %303

303:                                              ; preds = %299, %241
  tail call void asm sideeffect "dmb oshst", "~{memory}"() #18, !srcloc !16
  %304 = load i32, ptr %9, align 8
  %305 = add i32 %304, -1
  %306 = icmp ult i32 %244, %305
  %307 = load i32, ptr %246, align 2
  %308 = select i1 %306, i32 -1342177280, i32 -268435456
  %309 = or i32 %308, %307
  store i32 %309, ptr %246, align 2
  %310 = load i32, ptr %10, align 8
  %311 = add i32 %310, 1
  store i32 %311, ptr %10, align 8
  %312 = load i32, ptr %8, align 4
  %313 = icmp eq i32 %312, %311
  br i1 %313, label %314, label %241

314:                                              ; preds = %303, %298, %256, %236
  %315 = load ptr, ptr %5, align 8
  %316 = getelementptr i16, ptr %315, i32 3
  %317 = load i16, ptr %316, align 2
  %318 = icmp eq i16 %317, -1
  br i1 %318, label %319, label %320, !prof !9

319:                                              ; preds = %314
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %373

320:                                              ; preds = %314
  %321 = zext i16 %317 to i32
  %322 = load ptr, ptr %6, align 4
  %323 = getelementptr i8, ptr %322, i32 %321
  %324 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %323) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  %325 = and i32 %324, 1
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %327, label %373

327:                                              ; preds = %320
  %328 = and i32 %42, 131072
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %363, label %330

330:                                              ; preds = %327
  %331 = load ptr, ptr %15, align 4
  %332 = getelementptr inbounds %struct.sh_eth_cpu_data, ptr %331, i32 0, i32 15
  %333 = load i32, ptr %332, align 4
  %334 = and i32 %333, 4096
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %336, label %363

336:                                              ; preds = %330
  %337 = load ptr, ptr %5, align 8
  %338 = getelementptr i16, ptr %337, i32 11
  %339 = load i16, ptr %338, align 2
  %340 = icmp eq i16 %339, -1
  br i1 %340, label %341, label %342, !prof !9

341:                                              ; preds = %336
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %347

342:                                              ; preds = %336
  %343 = zext i16 %339 to i32
  %344 = load ptr, ptr %6, align 4
  %345 = getelementptr i8, ptr %344, i32 %343
  %346 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %345) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %347

347:                                              ; preds = %342, %341
  %348 = phi i32 [ -1, %341 ], [ %346, %342 ]
  %349 = load ptr, ptr %5, align 8
  %350 = getelementptr i16, ptr %349, i32 10
  %351 = load i16, ptr %350, align 2
  %352 = icmp eq i16 %351, -1
  br i1 %352, label %353, label %354, !prof !9

353:                                              ; preds = %347
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %359

354:                                              ; preds = %347
  %355 = zext i16 %351 to i32
  %356 = load ptr, ptr %6, align 4
  %357 = getelementptr i8, ptr %356, i32 %355
  %358 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %357) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %359

359:                                              ; preds = %354, %353
  %360 = phi i32 [ -1, %353 ], [ %358, %354 ]
  %361 = sub i32 %348, %360
  %362 = lshr i32 %361, 4
  store i32 %362, ptr %8, align 4
  store i32 %362, ptr %10, align 8
  br label %363

363:                                              ; preds = %359, %330, %327
  %364 = load ptr, ptr %5, align 8
  %365 = getelementptr i16, ptr %364, i32 3
  %366 = load i16, ptr %365, align 2
  %367 = icmp eq i16 %366, -1
  br i1 %367, label %368, label %369, !prof !9

368:                                              ; preds = %363
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 354, i32 noundef 9, ptr noundef null) #18
  br label %373

369:                                              ; preds = %363
  %370 = zext i16 %366 to i32
  %371 = load ptr, ptr %6, align 4
  %372 = getelementptr i8, ptr %371, i32 %370
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %372, i32 1) #18, !srcloc !11
  br label %373

373:                                              ; preds = %369, %368, %320, %319
  %374 = add i32 %27, 1
  %375 = sub i32 %374, %61
  %376 = add i32 %375, %239
  %377 = icmp sgt i32 %376, 0
  br i1 %377, label %26, label %397

378:                                              ; preds = %33
  %379 = tail call zeroext i1 @napi_complete_done(ptr noundef %0, i32 noundef 0) #18
  %380 = getelementptr i8, ptr %0, i32 216
  %381 = load i8, ptr %380, align 8, !range !17
  %382 = icmp eq i8 %381, 0
  br i1 %382, label %397, label %383

383:                                              ; preds = %378
  %384 = load ptr, ptr %5, align 8
  %385 = getelementptr i16, ptr %384, i32 5
  %386 = load i16, ptr %385, align 2
  %387 = icmp eq i16 %386, -1
  br i1 %387, label %388, label %389, !prof !9

388:                                              ; preds = %383
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 354, i32 noundef 9, ptr noundef null) #18
  br label %397

389:                                              ; preds = %383
  %390 = getelementptr i8, ptr %0, i32 -76
  %391 = load ptr, ptr %390, align 4
  %392 = getelementptr inbounds %struct.sh_eth_cpu_data, ptr %391, i32 0, i32 6
  %393 = load i32, ptr %392, align 4
  %394 = zext i16 %386 to i32
  %395 = load ptr, ptr %6, align 4
  %396 = getelementptr i8, ptr %395, i32 %394
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %396, i32 %393) #18, !srcloc !11
  br label %397

397:                                              ; preds = %389, %388, %378, %373
  %398 = phi i32 [ %27, %378 ], [ %27, %388 ], [ %27, %389 ], [ %376, %373 ]
  %399 = sub i32 %1, %398
  ret i32 %399
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_wakeup_capable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_phy_mode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_mac_address(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_eth_open(ptr noundef %0) #2 {
  %2 = alloca %struct.of_phandle_args, align 4
  %3 = alloca [64 x i8], align 1
  %4 = getelementptr i8, ptr %0, i32 1408
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %7 = tail call i32 @__pm_runtime_resume(ptr noundef %6, i32 noundef 4) #18
  %8 = getelementptr i8, ptr %0, i32 1488
  tail call void @napi_enable(ptr noundef %8) #18
  %9 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 59
  %10 = load i32, ptr %9, align 8
  %11 = getelementptr i8, ptr %0, i32 1412
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.sh_eth_cpu_data, ptr %12, i32 0, i32 14
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @request_threaded_irq(i32 noundef %10, ptr noundef nonnull @sh_eth_interrupt, ptr noundef null, i32 noundef %14, ptr noundef %0, ptr noundef %0) #18
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.11) #19
  br label %80

18:                                               ; preds = %1
  %19 = tail call fastcc i32 @sh_eth_ring_init(ptr noundef %0)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %76

21:                                               ; preds = %18
  %22 = tail call fastcc i32 @sh_eth_dev_init(ptr noundef %0)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %76

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 111, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.device, ptr %26, i32 0, i32 25
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr i8, ptr %0, i32 1716
  store i32 0, ptr %29, align 4
  %30 = getelementptr i8, ptr %0, i32 1728
  store i32 0, ptr %30, align 8
  %31 = getelementptr i8, ptr %0, i32 1732
  store i32 -1, ptr %31, align 4
  %32 = icmp eq ptr %28, null
  br i1 %32, label %43, label %33

33:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false) #18, !annotation !8
  %34 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %28, ptr noundef nonnull @.str.22, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %2) #18
  %35 = icmp eq i32 %34, 0
  %36 = load ptr, ptr %2, align 4
  %37 = select i1 %35, ptr %36, ptr null
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #18
  %38 = getelementptr i8, ptr %0, i32 1720
  %39 = load i32, ptr %38, align 8
  %40 = call ptr @of_phy_connect(ptr noundef %0, ptr noundef %37, ptr noundef nonnull @sh_eth_adjust_link, i32 noundef 0, i32 noundef %39) #18
  call void @of_node_put(ptr noundef %37) #18
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %53

42:                                               ; preds = %33
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.24) #19
  br label %76

43:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %3, i8 0, i32 64, i1 false) #18, !annotation !8
  %44 = getelementptr i8, ptr %0, i32 1712
  %45 = load ptr, ptr %44, align 8
  %46 = getelementptr inbounds %struct.mii_bus, ptr %45, i32 0, i32 2
  %47 = getelementptr i8, ptr %0, i32 1708
  %48 = load i32, ptr %47, align 4
  %49 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 64, ptr noundef nonnull @.str.23, ptr noundef %46, i32 noundef %48) #18
  %50 = getelementptr i8, ptr %0, i32 1720
  %51 = load i32, ptr %50, align 8
  %52 = call ptr @phy_connect(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull @sh_eth_adjust_link, i32 noundef %51) #18
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #18
  br label %53

53:                                               ; preds = %43, %33
  %54 = phi ptr [ %52, %43 ], [ %40, %33 ]
  %55 = icmp ugt ptr %54, inttoptr (i32 -4096 to ptr)
  br i1 %55, label %74, label %56

56:                                               ; preds = %53
  %57 = load ptr, ptr %11, align 4
  %58 = getelementptr inbounds %struct.sh_eth_cpu_data, ptr %57, i32 0, i32 4
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %56
  %62 = call i32 @phy_set_max_speed(ptr noundef %54, i32 noundef 100) #18
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %61
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.25) #19
  call void @phy_disconnect(ptr noundef %54) #18
  br label %76

65:                                               ; preds = %61, %56
  call void @phy_attached_info(ptr noundef %54) #18
  %66 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %67 = load ptr, ptr %66, align 8
  call void @phy_start(ptr noundef %67) #18
  %68 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  %69 = load ptr, ptr %68, align 64
  %70 = getelementptr inbounds %struct.netdev_queue, ptr %69, i32 0, i32 12
  call void @_clear_bit(i32 noundef 0, ptr noundef %70) #18
  %71 = getelementptr i8, ptr %0, i32 1744
  %72 = load i8, ptr %71, align 8
  %73 = or i8 %72, 4
  store i8 %73, ptr %71, align 8
  br label %85

74:                                               ; preds = %53
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.24) #19
  %75 = ptrtoint ptr %54 to i32
  br label %76

76:                                               ; preds = %74, %64, %42, %21, %18
  %77 = phi i32 [ %19, %18 ], [ %22, %21 ], [ %75, %74 ], [ -2, %42 ], [ %62, %64 ]
  %78 = load i32, ptr %9, align 8
  %79 = call ptr @free_irq(i32 noundef %78, ptr noundef %0) #18
  br label %80

80:                                               ; preds = %76, %17
  %81 = phi i32 [ %15, %17 ], [ %77, %76 ]
  call void @napi_disable(ptr noundef %8) #18
  %82 = load ptr, ptr %4, align 8
  %83 = getelementptr inbounds %struct.platform_device, ptr %82, i32 0, i32 3
  %84 = call i32 @__pm_runtime_idle(ptr noundef %83, i32 noundef 4) #18
  br label %85

85:                                               ; preds = %80, %65
  %86 = phi i32 [ %81, %80 ], [ 0, %65 ]
  ret i32 %86
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_eth_close(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  %3 = load ptr, ptr %2, align 64
  %4 = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %4) #18
  %5 = getelementptr i8, ptr %0, i32 1704
  store i8 0, ptr %5, align 8
  %6 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 59
  %7 = load i32, ptr %6, align 8
  tail call void @synchronize_irq(i32 noundef %7) #18
  %8 = getelementptr i8, ptr %0, i32 1488
  tail call void @napi_disable(ptr noundef %8) #18
  %9 = getelementptr i8, ptr %0, i32 1416
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr i16, ptr %10, i32 5
  %12 = load i16, ptr %11, align 2
  %13 = icmp eq i16 %12, -1
  br i1 %13, label %14, label %15, !prof !9

14:                                               ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 354, i32 noundef 9, ptr noundef null) #18
  br label %20

15:                                               ; preds = %1
  %16 = zext i16 %12 to i32
  %17 = getelementptr i8, ptr %0, i32 1420
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 %16
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 0) #18, !srcloc !11
  br label %20

20:                                               ; preds = %15, %14
  tail call fastcc void @sh_eth_dev_exit(ptr noundef %0)
  %21 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %22 = load ptr, ptr %21, align 8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  tail call void @phy_stop(ptr noundef nonnull %22) #18
  %25 = load ptr, ptr %21, align 8
  tail call void @phy_disconnect(ptr noundef %25) #18
  br label %26

26:                                               ; preds = %24, %20
  %27 = getelementptr i8, ptr %0, i32 1408
  %28 = load i32, ptr %6, align 8
  %29 = tail call ptr @free_irq(i32 noundef %28, ptr noundef %0) #18
  tail call fastcc void @sh_eth_ring_free(ptr noundef %0)
  %30 = getelementptr i8, ptr %0, i32 1744
  %31 = load i8, ptr %30, align 8
  %32 = and i8 %31, -5
  store i8 %32, ptr %30, align 8
  %33 = load ptr, ptr %27, align 8
  %34 = getelementptr inbounds %struct.platform_device, ptr %33, i32 0, i32 3
  %35 = tail call i32 @__pm_runtime_idle(ptr noundef %34, i32 noundef 5) #18
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_eth_start_xmit(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr i8, ptr %1, i32 1408
  %4 = getelementptr i8, ptr %1, i32 1464
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #18
  %6 = getelementptr i8, ptr %1, i32 1476
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr i8, ptr %1, i32 1480
  %9 = load i32, ptr %8, align 8
  %10 = sub i32 %7, %9
  %11 = getelementptr i8, ptr %1, i32 1436
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, -4
  %14 = icmp ult i32 %10, %13
  br i1 %14, label %28, label %15

15:                                               ; preds = %2
  %16 = tail call fastcc i32 @sh_eth_tx_free(ptr noundef %1, i1 noundef zeroext true)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %15
  %19 = getelementptr i8, ptr %1, i32 1724
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 256
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %1, ptr noundef nonnull @.str.26) #19
  br label %24

24:                                               ; preds = %23, %18
  %25 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 87
  %26 = load ptr, ptr %25, align 64
  %27 = getelementptr inbounds %struct.netdev_queue, ptr %26, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %27) #18
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #18
  br label %154

28:                                               ; preds = %15, %2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #18
  %29 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %30 = load i32, ptr %29, align 8
  %31 = icmp ult i32 %30, 60
  br i1 %31, label %32, label %47, !prof !9

32:                                               ; preds = %28
  %33 = sub nuw nsw i32 60, %30
  %34 = tail call i32 @__skb_pad(ptr noundef %0, i32 noundef %33, i1 noundef zeroext true) #18
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %154

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %41, label %40, !prof !18

40:                                               ; preds = %36
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #18, !srcloc !19
  unreachable

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %43 = load ptr, ptr %42, align 8
  %44 = getelementptr i8, ptr %43, i32 %33
  store ptr %44, ptr %42, align 8
  %45 = load i32, ptr %29, align 8
  %46 = add i32 %45, %33
  store i32 %46, ptr %29, align 8
  br label %47

47:                                               ; preds = %41, %28
  %48 = load i32, ptr %6, align 4
  %49 = load i32, ptr %11, align 4
  %50 = urem i32 %48, %49
  %51 = getelementptr i8, ptr %1, i32 1460
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr ptr, ptr %52, i32 %50
  store ptr %0, ptr %53, align 4
  %54 = getelementptr i8, ptr %1, i32 1452
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr %struct.sh_eth_txdesc, ptr %55, i32 %50
  %57 = getelementptr i8, ptr %1, i32 1412
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.sh_eth_cpu_data, ptr %58, i32 0, i32 15
  %60 = load i32, ptr %59, align 4
  %61 = and i32 %60, 128
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %81

63:                                               ; preds = %47
  %64 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %65 = load ptr, ptr %64, align 4
  %66 = ptrtoint ptr %65 to i32
  %67 = add i32 %66, 3
  %68 = and i32 %67, -4
  %69 = inttoptr i32 %68 to ptr
  %70 = load i32, ptr %29, align 8
  %71 = add i32 %70, 5
  %72 = lshr i32 %71, 2
  %73 = getelementptr i32, ptr %69, i32 %72
  %74 = icmp ugt ptr %73, %69
  br i1 %74, label %75, label %81

75:                                               ; preds = %75, %63
  %76 = phi ptr [ %79, %75 ], [ %69, %63 ]
  %77 = load i32, ptr %76, align 4
  %78 = tail call i32 @llvm.bswap.i32(i32 %77) #18
  store i32 %78, ptr %76, align 4
  %79 = getelementptr i32, ptr %76, i32 1
  %80 = icmp ult ptr %79, %73
  br i1 %80, label %75, label %81

81:                                               ; preds = %75, %63, %47
  %82 = load ptr, ptr %3, align 8
  %83 = getelementptr inbounds %struct.platform_device, ptr %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %85 = load ptr, ptr %84, align 4
  %86 = load i32, ptr %29, align 8
  %87 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %85) #18
  %88 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %89 = xor i1 %88, true
  %90 = select i1 %87, i1 %89, i1 false
  br i1 %90, label %91, label %100, !prof !9

91:                                               ; preds = %81
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %92 = tail call ptr @dev_driver_string(ptr noundef %83) #18
  %93 = getelementptr inbounds %struct.platform_device, ptr %82, i32 0, i32 3, i32 3
  %94 = load ptr, ptr %93, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = load ptr, ptr %83, align 4
  br label %98

98:                                               ; preds = %96, %91
  %99 = phi ptr [ %97, %96 ], [ %94, %91 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.21, ptr noundef %92, ptr noundef %99) #18
  br label %100

100:                                              ; preds = %98, %81
  br i1 %87, label %110, label %101

101:                                              ; preds = %100
  %102 = load ptr, ptr @mem_map, align 4
  %103 = ptrtoint ptr %85 to i32
  %104 = add i32 %103, 1073741824
  %105 = lshr i32 %104, 12
  %106 = getelementptr %struct.page, ptr %102, i32 %105
  %107 = and i32 %103, 4095
  %108 = tail call i32 @dma_map_page_attrs(ptr noundef %83, ptr noundef %106, i32 noundef %107, i32 noundef %86, i32 noundef 1, i32 noundef 0) #18
  %109 = icmp eq i32 %108, -1
  br i1 %109, label %110, label %111

110:                                              ; preds = %101, %100
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #18
  br label %154

111:                                              ; preds = %101
  %112 = getelementptr %struct.sh_eth_txdesc, ptr %55, i32 %50, i32 2
  store i32 %108, ptr %112, align 2
  %113 = load i32, ptr %29, align 8
  %114 = shl i32 %113, 16
  %115 = getelementptr %struct.sh_eth_txdesc, ptr %55, i32 %50, i32 1
  store i32 %114, ptr %115, align 2
  tail call void asm sideeffect "dmb oshst", "~{memory}"() #18, !srcloc !20
  %116 = load i32, ptr %11, align 4
  %117 = add i32 %116, -1
  %118 = icmp ult i32 %50, %117
  %119 = load i32, ptr %56, align 2
  %120 = select i1 %118, i32 -2147483648, i32 -1073741824
  %121 = or i32 %119, %120
  store i32 %121, ptr %56, align 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !21
  tail call void @arm_heavy_mb() #18
  %122 = load i32, ptr %6, align 4
  %123 = add i32 %122, 1
  store i32 %123, ptr %6, align 4
  %124 = getelementptr i8, ptr %1, i32 1416
  %125 = load ptr, ptr %124, align 8
  %126 = getelementptr i16, ptr %125, i32 2
  %127 = load i16, ptr %126, align 2
  %128 = icmp eq i16 %127, -1
  br i1 %128, label %129, label %130, !prof !9

129:                                              ; preds = %111
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %136

130:                                              ; preds = %111
  %131 = zext i16 %127 to i32
  %132 = getelementptr i8, ptr %1, i32 1420
  %133 = load ptr, ptr %132, align 4
  %134 = getelementptr i8, ptr %133, i32 %131
  %135 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %134) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %136

136:                                              ; preds = %130, %129
  %137 = phi i32 [ -1, %129 ], [ %135, %130 ]
  %138 = load ptr, ptr %57, align 4
  %139 = getelementptr inbounds %struct.sh_eth_cpu_data, ptr %138, i32 0, i32 5
  %140 = load i32, ptr %139, align 4
  %141 = and i32 %140, %137
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %154

143:                                              ; preds = %136
  %144 = load ptr, ptr %124, align 8
  %145 = getelementptr i16, ptr %144, i32 2
  %146 = load i16, ptr %145, align 2
  %147 = icmp eq i16 %146, -1
  br i1 %147, label %148, label %149, !prof !9

148:                                              ; preds = %143
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 354, i32 noundef 9, ptr noundef null) #18
  br label %154

149:                                              ; preds = %143
  %150 = zext i16 %146 to i32
  %151 = getelementptr i8, ptr %1, i32 1420
  %152 = load ptr, ptr %151, align 4
  %153 = getelementptr i8, ptr %152, i32 %150
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %153, i32 %140) #18, !srcloc !11
  br label %154

154:                                              ; preds = %149, %148, %136, %110, %32, %24
  %155 = phi i32 [ 0, %110 ], [ 16, %24 ], [ 0, %136 ], [ 0, %32 ], [ 0, %148 ], [ 0, %149 ]
  ret i32 %155
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sh_eth_set_rx_mode(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 1464
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #18
  %4 = getelementptr i8, ptr %0, i32 1416
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i16, ptr %5, i32 28
  %7 = load i16, ptr %6, align 2
  %8 = icmp eq i16 %7, -1
  br i1 %8, label %9, label %10, !prof !9

9:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %16

10:                                               ; preds = %1
  %11 = zext i16 %7 to i32
  %12 = getelementptr i8, ptr %0, i32 1420
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 %11
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %16

16:                                               ; preds = %10, %9
  %17 = phi i32 [ -1, %9 ], [ %15, %10 ]
  %18 = and i32 %17, -2
  %19 = getelementptr i8, ptr %0, i32 1412
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.sh_eth_cpu_data, ptr %20, i32 0, i32 15
  %22 = load i32, ptr %21, align 4
  %23 = shl i32 %22, 7
  %24 = and i32 %23, 8192
  %25 = or i32 %24, %18
  %26 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 14
  %27 = load i32, ptr %26, align 8
  %28 = and i32 %27, 4096
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %16
  tail call fastcc void @sh_eth_tsu_purge_mcast(ptr noundef %0)
  %31 = load i32, ptr %26, align 8
  br label %32

32:                                               ; preds = %30, %16
  %33 = phi i32 [ %27, %16 ], [ %31, %30 ]
  %34 = phi i32 [ 0, %16 ], [ 1, %30 ]
  %35 = and i32 %33, 512
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  tail call fastcc void @sh_eth_tsu_purge_mcast(ptr noundef %0)
  %38 = and i32 %17, -8194
  %39 = load i32, ptr %26, align 8
  br label %40

40:                                               ; preds = %37, %32
  %41 = phi i32 [ %39, %37 ], [ %33, %32 ]
  %42 = phi i32 [ 1, %37 ], [ %34, %32 ]
  %43 = phi i32 [ %38, %37 ], [ %25, %32 ]
  %44 = and i32 %41, 256
  %45 = icmp eq i32 %44, 0
  %46 = load ptr, ptr %19, align 4
  %47 = getelementptr inbounds %struct.sh_eth_cpu_data, ptr %46, i32 0, i32 15
  %48 = load i32, ptr %47, align 4
  %49 = and i32 %48, 64
  %50 = icmp eq i32 %49, 0
  br i1 %45, label %67, label %51

51:                                               ; preds = %40
  br i1 %50, label %64, label %52

52:                                               ; preds = %62, %51
  %53 = phi i32 [ %63, %62 ], [ 0, %51 ]
  %54 = tail call fastcc zeroext i1 @sh_eth_tsu_disable_cam_entry_post(ptr noundef %0, i32 noundef %53) #18
  br i1 %54, label %60, label %55

55:                                               ; preds = %52
  %56 = tail call fastcc i32 @sh_eth_tsu_disable_cam_entry_table(ptr noundef %0, i32 noundef %53) #18
  %57 = icmp sgt i32 %56, -1
  %58 = icmp ult i32 %53, 31
  %59 = and i1 %58, %57
  br i1 %59, label %62, label %64

60:                                               ; preds = %52
  %61 = icmp ult i32 %53, 31
  br i1 %61, label %62, label %64

62:                                               ; preds = %60, %55
  %63 = add nuw nsw i32 %53, 1
  br label %52

64:                                               ; preds = %60, %55, %51
  %65 = and i32 %43, -8194
  %66 = or i32 %65, 1
  br label %218

67:                                               ; preds = %40
  br i1 %50, label %218, label %68

68:                                               ; preds = %67
  %69 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 61
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, %69
  br i1 %71, label %218, label %72

72:                                               ; preds = %68
  %73 = getelementptr i8, ptr %0, i32 1424
  %74 = getelementptr i8, ptr %0, i32 1736
  br label %75

75:                                               ; preds = %213, %72
  %76 = phi ptr [ %70, %72 ], [ %216, %213 ]
  %77 = phi i32 [ %43, %72 ], [ %215, %213 ]
  %78 = phi i32 [ %42, %72 ], [ %214, %213 ]
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.netdev_hw_addr, ptr %76, i32 0, i32 2
  %82 = load i32, ptr %81, align 4
  %83 = and i32 %82, 1
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %213

85:                                               ; preds = %80, %75
  %86 = getelementptr inbounds %struct.netdev_hw_addr, ptr %76, i32 0, i32 2
  %87 = load ptr, ptr %4, align 8
  %88 = getelementptr i16, ptr %87, i32 93
  %89 = load i16, ptr %88, align 2
  %90 = load ptr, ptr %19, align 4
  %91 = getelementptr inbounds %struct.sh_eth_cpu_data, ptr %90, i32 0, i32 15
  %92 = load i32, ptr %91, align 4
  %93 = and i32 %92, 64
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %213, label %95

95:                                               ; preds = %85
  %96 = getelementptr %struct.netdev_hw_addr, ptr %76, i32 0, i32 2, i32 4
  br label %97

97:                                               ; preds = %118, %95
  %98 = phi i32 [ 0, %95 ], [ %119, %118 ]
  %99 = phi i16 [ %89, %95 ], [ %120, %118 ]
  %100 = load ptr, ptr %73, align 8
  %101 = zext i16 %99 to i32
  %102 = getelementptr i8, ptr %100, i32 %101
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %102) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  %104 = load ptr, ptr %73, align 8
  %105 = getelementptr i8, ptr %104, i32 4
  %106 = getelementptr i8, ptr %105, i32 %101
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %106) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  %108 = trunc i32 %107 to i16
  %109 = tail call i16 @llvm.bswap.i16(i16 %108) #18
  %110 = load i32, ptr %86, align 4
  %111 = tail call i32 @llvm.bswap.i32(i32 %103) #18
  %112 = xor i32 %110, %111
  %113 = load i16, ptr %96, align 2
  %114 = xor i16 %113, %109
  %115 = zext i16 %114 to i32
  %116 = or i32 %112, %115
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %177, label %118

118:                                              ; preds = %97
  %119 = add nuw nsw i32 %98, 1
  %120 = add i16 %99, 8
  %121 = icmp eq i32 %119, 32
  br i1 %121, label %122, label %97

122:                                              ; preds = %118
  %123 = load ptr, ptr %4, align 8
  %124 = getelementptr i16, ptr %123, i32 93
  %125 = load i16, ptr %124, align 2
  br label %126

126:                                              ; preds = %143, %122
  %127 = phi i32 [ 0, %122 ], [ %144, %143 ]
  %128 = phi i16 [ %125, %122 ], [ %145, %143 ]
  %129 = load ptr, ptr %73, align 8
  %130 = zext i16 %128 to i32
  %131 = getelementptr i8, ptr %129, i32 %130
  %132 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %131) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  %133 = load ptr, ptr %73, align 8
  %134 = getelementptr i8, ptr %133, i32 4
  %135 = getelementptr i8, ptr %134, i32 %130
  %136 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %135) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  %137 = trunc i32 %136 to i16
  %138 = tail call i16 @llvm.bswap.i16(i16 %137) #18
  %139 = tail call i32 @llvm.bswap.i32(i32 %132) #18
  %140 = zext i16 %138 to i32
  %141 = or i32 %139, %140
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %147, label %143

143:                                              ; preds = %126
  %144 = add nuw nsw i32 %127, 1
  %145 = add i16 %128, 8
  %146 = icmp eq i32 %144, 32
  br i1 %146, label %210, label %126

147:                                              ; preds = %126
  %148 = trunc i32 %127 to i16
  %149 = shl i16 %148, 3
  %150 = add i16 %149, %89
  %151 = tail call fastcc i32 @sh_eth_tsu_write_entry(ptr noundef %0, i16 noundef zeroext %150, ptr noundef %86) #18
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %210, label %153

153:                                              ; preds = %147
  %154 = load ptr, ptr %4, align 8
  %155 = getelementptr i16, ptr %154, i32 88
  %156 = load i16, ptr %155, align 2
  %157 = icmp eq i16 %156, -1
  br i1 %157, label %158, label %159, !prof !9

158:                                              ; preds = %153
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 398, i32 noundef 9, ptr noundef null) #18
  br label %164

159:                                              ; preds = %153
  %160 = zext i16 %156 to i32
  %161 = load ptr, ptr %73, align 8
  %162 = getelementptr i8, ptr %161, i32 %160
  %163 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %162) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %164

164:                                              ; preds = %159, %158
  %165 = phi i32 [ -1, %158 ], [ %163, %159 ]
  %166 = load ptr, ptr %4, align 8
  %167 = getelementptr i16, ptr %166, i32 88
  %168 = load i16, ptr %167, align 2
  %169 = icmp eq i16 %168, -1
  br i1 %169, label %170, label %171, !prof !9

170:                                              ; preds = %164
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 388, i32 noundef 9, ptr noundef null) #18
  br label %177

171:                                              ; preds = %164
  %172 = lshr i32 -2147483648, %127
  %173 = or i32 %165, %172
  %174 = zext i16 %168 to i32
  %175 = load ptr, ptr %73, align 8
  %176 = getelementptr i8, ptr %175, i32 %174
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %176, i32 %173) #18, !srcloc !11
  br label %177

177:                                              ; preds = %171, %170, %97
  %178 = phi i32 [ %127, %170 ], [ %127, %171 ], [ %98, %97 ]
  %179 = lshr i32 %178, 3
  %180 = add nuw nsw i32 %179, 89
  %181 = load ptr, ptr %4, align 8
  %182 = getelementptr i16, ptr %181, i32 %180
  %183 = load i16, ptr %182, align 2
  %184 = icmp eq i16 %183, -1
  br i1 %184, label %185, label %186, !prof !9

185:                                              ; preds = %177
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 398, i32 noundef 9, ptr noundef null) #18
  br label %191

186:                                              ; preds = %177
  %187 = zext i16 %183 to i32
  %188 = load ptr, ptr %73, align 8
  %189 = getelementptr i8, ptr %188, i32 %187
  %190 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %189) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %191

191:                                              ; preds = %186, %185
  %192 = phi i32 [ -1, %185 ], [ %190, %186 ]
  %193 = load ptr, ptr %4, align 8
  %194 = getelementptr i16, ptr %193, i32 %180
  %195 = load i16, ptr %194, align 2
  %196 = icmp eq i16 %195, -1
  br i1 %196, label %197, label %198, !prof !9

197:                                              ; preds = %191
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 388, i32 noundef 9, ptr noundef null) #18
  br label %213

198:                                              ; preds = %191
  %199 = load i32, ptr %74, align 8
  %200 = shl i32 %199, 1
  %201 = lshr i32 8, %200
  %202 = and i32 %178, 7
  %203 = mul nsw i32 %202, -4
  %204 = add nsw i32 %203, 28
  %205 = shl nuw i32 %201, %204
  %206 = or i32 %205, %192
  %207 = zext i16 %195 to i32
  %208 = load ptr, ptr %73, align 8
  %209 = getelementptr i8, ptr %208, i32 %207
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %209, i32 %206) #18, !srcloc !11
  br label %213

210:                                              ; preds = %147, %143
  br i1 %79, label %211, label %213

211:                                              ; preds = %210
  tail call fastcc void @sh_eth_tsu_purge_mcast(ptr noundef %0)
  %212 = and i32 %77, -8193
  br label %213

213:                                              ; preds = %211, %210, %198, %197, %85, %80
  %214 = phi i32 [ 1, %80 ], [ %78, %210 ], [ 1, %211 ], [ %78, %85 ], [ %78, %197 ], [ %78, %198 ]
  %215 = phi i32 [ %77, %80 ], [ %77, %210 ], [ %212, %211 ], [ %77, %85 ], [ %77, %197 ], [ %77, %198 ]
  %216 = load ptr, ptr %76, align 4
  %217 = icmp eq ptr %216, %69
  br i1 %217, label %218, label %75

218:                                              ; preds = %213, %68, %67, %64
  %219 = phi i32 [ %66, %64 ], [ %43, %67 ], [ %43, %68 ], [ %215, %213 ]
  %220 = load ptr, ptr %4, align 8
  %221 = getelementptr i16, ptr %220, i32 28
  %222 = load i16, ptr %221, align 2
  %223 = icmp eq i16 %222, -1
  br i1 %223, label %224, label %225, !prof !9

224:                                              ; preds = %218
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 354, i32 noundef 9, ptr noundef null) #18
  br label %230

225:                                              ; preds = %218
  %226 = zext i16 %222 to i32
  %227 = getelementptr i8, ptr %0, i32 1420
  %228 = load ptr, ptr %227, align 4
  %229 = getelementptr i8, ptr %228, i32 %226
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %229, i32 %219) #18, !srcloc !11
  br label %230

230:                                              ; preds = %225, %224
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_do_ioctl_running(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_eth_change_mtu(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 20
  store i32 %1, ptr %8, align 4
  tail call void @netdev_update_features(ptr noundef %0) #18
  br label %9

9:                                                ; preds = %7, %2
  %10 = phi i32 [ 0, %7 ], [ -16, %2 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sh_eth_tx_timeout(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  %4 = load ptr, ptr %3, align 64
  %5 = getelementptr inbounds %struct.netdev_queue, ptr %4, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %5) #18
  %6 = getelementptr i8, ptr %0, i32 1724
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %25, label %10

10:                                               ; preds = %2
  %11 = getelementptr i8, ptr %0, i32 1416
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr i16, ptr %12, i32 4
  %14 = load i16, ptr %13, align 2
  %15 = icmp eq i16 %14, -1
  br i1 %15, label %16, label %17, !prof !9

16:                                               ; preds = %10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %23

17:                                               ; preds = %10
  %18 = zext i16 %14 to i32
  %19 = getelementptr i8, ptr %0, i32 1420
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %20, i32 %18
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %23

23:                                               ; preds = %17, %16
  %24 = phi i32 [ -1, %16 ], [ %22, %17 ]
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.28, i32 noundef %24) #19
  br label %25

25:                                               ; preds = %23, %2
  %26 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 36, i32 5
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, 1
  store i32 %28, ptr %26, align 4
  %29 = getelementptr i8, ptr %0, i32 1432
  %30 = load i32, ptr %29, align 8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %25
  %33 = getelementptr i8, ptr %0, i32 1448
  %34 = getelementptr i8, ptr %0, i32 1456
  br label %41

35:                                               ; preds = %41, %25
  %36 = getelementptr i8, ptr %0, i32 1436
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %64, label %39

39:                                               ; preds = %35
  %40 = getelementptr i8, ptr %0, i32 1460
  br label %54

41:                                               ; preds = %41, %32
  %42 = phi i32 [ 0, %32 ], [ %51, %41 ]
  %43 = load ptr, ptr %33, align 8
  %44 = getelementptr %struct.sh_eth_rxdesc, ptr %43, i32 %42
  store i32 0, ptr %44, align 2
  %45 = getelementptr %struct.sh_eth_rxdesc, ptr %43, i32 %42, i32 2
  store i32 -1159790384, ptr %45, align 2
  %46 = load ptr, ptr %34, align 8
  %47 = getelementptr ptr, ptr %46, i32 %42
  %48 = load ptr, ptr %47, align 4
  tail call void @consume_skb(ptr noundef %48) #18
  %49 = load ptr, ptr %34, align 8
  %50 = getelementptr ptr, ptr %49, i32 %42
  store ptr null, ptr %50, align 4
  %51 = add nuw i32 %42, 1
  %52 = load i32, ptr %29, align 8
  %53 = icmp ult i32 %51, %52
  br i1 %53, label %41, label %35

54:                                               ; preds = %54, %39
  %55 = phi i32 [ 0, %39 ], [ %61, %54 ]
  %56 = load ptr, ptr %40, align 4
  %57 = getelementptr ptr, ptr %56, i32 %55
  %58 = load ptr, ptr %57, align 4
  tail call void @consume_skb(ptr noundef %58) #18
  %59 = load ptr, ptr %40, align 4
  %60 = getelementptr ptr, ptr %59, i32 %55
  store ptr null, ptr %60, align 4
  %61 = add nuw i32 %55, 1
  %62 = load i32, ptr %36, align 4
  %63 = icmp ult i32 %61, %62
  br i1 %63, label %54, label %64

64:                                               ; preds = %54, %35
  %65 = tail call fastcc i32 @sh_eth_dev_init(ptr noundef %0)
  %66 = load ptr, ptr %3, align 64
  %67 = getelementptr inbounds %struct.netdev_queue, ptr %66, i32 0, i32 12
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %67) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @sh_eth_get_stats(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 1412
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.sh_eth_cpu_data, ptr %3, i32 0, i32 15
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 1048576
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %184

8:                                                ; preds = %1
  %9 = getelementptr i8, ptr %0, i32 1744
  %10 = load i8, ptr %9, align 8
  %11 = and i8 %10, 4
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %184, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 36, i32 7
  %15 = getelementptr i8, ptr %0, i32 1416
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr i16, ptr %16, i32 51
  %18 = load i16, ptr %17, align 2
  %19 = icmp eq i16 %18, -1
  br i1 %19, label %20, label %21, !prof !9

20:                                               ; preds = %13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %28

21:                                               ; preds = %13
  %22 = zext i16 %18 to i32
  %23 = getelementptr i8, ptr %0, i32 1420
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %24, i32 %22
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %42, label %28

28:                                               ; preds = %21, %20
  %29 = phi i32 [ -1, %20 ], [ %26, %21 ]
  %30 = load i32, ptr %14, align 4
  %31 = add i32 %30, %29
  store i32 %31, ptr %14, align 4
  %32 = load ptr, ptr %15, align 8
  %33 = getelementptr i16, ptr %32, i32 51
  %34 = load i16, ptr %33, align 2
  %35 = icmp eq i16 %34, -1
  br i1 %35, label %36, label %37, !prof !9

36:                                               ; preds = %28
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 354, i32 noundef 9, ptr noundef null) #18
  br label %42

37:                                               ; preds = %28
  %38 = zext i16 %34 to i32
  %39 = getelementptr i8, ptr %0, i32 1420
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr i8, ptr %40, i32 %38
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 0) #18, !srcloc !11
  br label %42

42:                                               ; preds = %37, %36, %21
  %43 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 36, i32 9
  %44 = load ptr, ptr %15, align 8
  %45 = getelementptr i16, ptr %44, i32 52
  %46 = load i16, ptr %45, align 2
  %47 = icmp eq i16 %46, -1
  br i1 %47, label %48, label %49, !prof !9

48:                                               ; preds = %42
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %56

49:                                               ; preds = %42
  %50 = zext i16 %46 to i32
  %51 = getelementptr i8, ptr %0, i32 1420
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr i8, ptr %52, i32 %50
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %70, label %56

56:                                               ; preds = %49, %48
  %57 = phi i32 [ -1, %48 ], [ %54, %49 ]
  %58 = load i32, ptr %43, align 4
  %59 = add i32 %58, %57
  store i32 %59, ptr %43, align 4
  %60 = load ptr, ptr %15, align 8
  %61 = getelementptr i16, ptr %60, i32 52
  %62 = load i16, ptr %61, align 2
  %63 = icmp eq i16 %62, -1
  br i1 %63, label %64, label %65, !prof !9

64:                                               ; preds = %56
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 354, i32 noundef 9, ptr noundef null) #18
  br label %70

65:                                               ; preds = %56
  %66 = zext i16 %62 to i32
  %67 = getelementptr i8, ptr %0, i32 1420
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr i8, ptr %68, i32 %66
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 0) #18, !srcloc !11
  br label %70

70:                                               ; preds = %65, %64, %49
  %71 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 36, i32 17
  %72 = load ptr, ptr %15, align 8
  %73 = getelementptr i16, ptr %72, i32 53
  %74 = load i16, ptr %73, align 2
  %75 = icmp eq i16 %74, -1
  br i1 %75, label %76, label %77, !prof !9

76:                                               ; preds = %70
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %84

77:                                               ; preds = %70
  %78 = zext i16 %74 to i32
  %79 = getelementptr i8, ptr %0, i32 1420
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr i8, ptr %80, i32 %78
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %81) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %98, label %84

84:                                               ; preds = %77, %76
  %85 = phi i32 [ -1, %76 ], [ %82, %77 ]
  %86 = load i32, ptr %71, align 4
  %87 = add i32 %86, %85
  store i32 %87, ptr %71, align 4
  %88 = load ptr, ptr %15, align 8
  %89 = getelementptr i16, ptr %88, i32 53
  %90 = load i16, ptr %89, align 2
  %91 = icmp eq i16 %90, -1
  br i1 %91, label %92, label %93, !prof !9

92:                                               ; preds = %84
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 354, i32 noundef 9, ptr noundef null) #18
  br label %98

93:                                               ; preds = %84
  %94 = zext i16 %90 to i32
  %95 = getelementptr i8, ptr %0, i32 1420
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr i8, ptr %96, i32 %94
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %97, i32 0) #18, !srcloc !11
  br label %98

98:                                               ; preds = %93, %92, %77
  %99 = load ptr, ptr %2, align 4
  %100 = getelementptr inbounds %struct.sh_eth_cpu_data, ptr %99, i32 0, i32 15
  %101 = load i32, ptr %100, align 4
  %102 = and i32 %101, 2097152
  %103 = icmp eq i32 %102, 0
  %104 = load ptr, ptr %15, align 8
  br i1 %103, label %158, label %105

105:                                              ; preds = %98
  %106 = getelementptr i16, ptr %104, i32 59
  %107 = load i16, ptr %106, align 2
  %108 = icmp eq i16 %107, -1
  br i1 %108, label %109, label %110, !prof !9

109:                                              ; preds = %105
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %117

110:                                              ; preds = %105
  %111 = zext i16 %107 to i32
  %112 = getelementptr i8, ptr %0, i32 1420
  %113 = load ptr, ptr %112, align 4
  %114 = getelementptr i8, ptr %113, i32 %111
  %115 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %114) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %131, label %117

117:                                              ; preds = %110, %109
  %118 = phi i32 [ -1, %109 ], [ %115, %110 ]
  %119 = load i32, ptr %71, align 4
  %120 = add i32 %119, %118
  store i32 %120, ptr %71, align 4
  %121 = load ptr, ptr %15, align 8
  %122 = getelementptr i16, ptr %121, i32 59
  %123 = load i16, ptr %122, align 2
  %124 = icmp eq i16 %123, -1
  br i1 %124, label %125, label %126, !prof !9

125:                                              ; preds = %117
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 354, i32 noundef 9, ptr noundef null) #18
  br label %131

126:                                              ; preds = %117
  %127 = zext i16 %123 to i32
  %128 = getelementptr i8, ptr %0, i32 1420
  %129 = load ptr, ptr %128, align 4
  %130 = getelementptr i8, ptr %129, i32 %127
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %130, i32 0) #18, !srcloc !11
  br label %131

131:                                              ; preds = %126, %125, %110
  %132 = load ptr, ptr %15, align 8
  %133 = getelementptr i16, ptr %132, i32 60
  %134 = load i16, ptr %133, align 2
  %135 = icmp eq i16 %134, -1
  br i1 %135, label %136, label %137, !prof !9

136:                                              ; preds = %131
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %144

137:                                              ; preds = %131
  %138 = zext i16 %134 to i32
  %139 = getelementptr i8, ptr %0, i32 1420
  %140 = load ptr, ptr %139, align 4
  %141 = getelementptr i8, ptr %140, i32 %138
  %142 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %141) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %184, label %144

144:                                              ; preds = %137, %136
  %145 = phi i32 [ -1, %136 ], [ %142, %137 ]
  %146 = load i32, ptr %71, align 4
  %147 = add i32 %146, %145
  store i32 %147, ptr %71, align 4
  %148 = load ptr, ptr %15, align 8
  %149 = getelementptr i16, ptr %148, i32 60
  %150 = load i16, ptr %149, align 2
  %151 = icmp eq i16 %150, -1
  br i1 %151, label %152, label %153, !prof !9

152:                                              ; preds = %144
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 354, i32 noundef 9, ptr noundef null) #18
  br label %184

153:                                              ; preds = %144
  %154 = zext i16 %150 to i32
  %155 = getelementptr i8, ptr %0, i32 1420
  %156 = load ptr, ptr %155, align 4
  %157 = getelementptr i8, ptr %156, i32 %154
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %157, i32 0) #18, !srcloc !11
  br label %184

158:                                              ; preds = %98
  %159 = getelementptr i16, ptr %104, i32 54
  %160 = load i16, ptr %159, align 2
  %161 = icmp eq i16 %160, -1
  br i1 %161, label %162, label %163, !prof !9

162:                                              ; preds = %158
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %170

163:                                              ; preds = %158
  %164 = zext i16 %160 to i32
  %165 = getelementptr i8, ptr %0, i32 1420
  %166 = load ptr, ptr %165, align 4
  %167 = getelementptr i8, ptr %166, i32 %164
  %168 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %167) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %184, label %170

170:                                              ; preds = %163, %162
  %171 = phi i32 [ -1, %162 ], [ %168, %163 ]
  %172 = load i32, ptr %71, align 4
  %173 = add i32 %172, %171
  store i32 %173, ptr %71, align 4
  %174 = load ptr, ptr %15, align 8
  %175 = getelementptr i16, ptr %174, i32 54
  %176 = load i16, ptr %175, align 2
  %177 = icmp eq i16 %176, -1
  br i1 %177, label %178, label %179, !prof !9

178:                                              ; preds = %170
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 354, i32 noundef 9, ptr noundef null) #18
  br label %184

179:                                              ; preds = %170
  %180 = zext i16 %176 to i32
  %181 = getelementptr i8, ptr %0, i32 1420
  %182 = load ptr, ptr %181, align 4
  %183 = getelementptr i8, ptr %182, i32 %180
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %183, i32 0) #18, !srcloc !11
  br label %184

184:                                              ; preds = %179, %178, %163, %153, %152, %137, %8, %1
  %185 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 36
  ret ptr %185
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_eth_vlan_rx_add_vid(ptr nocapture noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 1736
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %6, i32 85, i32 86
  %8 = getelementptr i8, ptr %0, i32 1412
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.sh_eth_cpu_data, ptr %9, i32 0, i32 15
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 64
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %43, label %14, !prof !9

14:                                               ; preds = %3
  %15 = icmp eq i16 %2, 0
  br i1 %15, label %43, label %16

16:                                               ; preds = %14
  %17 = getelementptr i8, ptr %0, i32 1740
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, 1
  store i32 %19, ptr %17, align 4
  %20 = icmp sgt i32 %19, 1
  %21 = getelementptr i8, ptr %0, i32 1416
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr i16, ptr %22, i32 %7
  %24 = load i16, ptr %23, align 2
  %25 = icmp eq i16 %24, -1
  br i1 %20, label %26, label %33

26:                                               ; preds = %16
  br i1 %25, label %27, label %28, !prof !9

27:                                               ; preds = %26
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 388, i32 noundef 9, ptr noundef null) #18
  br label %43

28:                                               ; preds = %26
  %29 = zext i16 %24 to i32
  %30 = getelementptr i8, ptr %0, i32 1424
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr i8, ptr %31, i32 %29
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 0) #18, !srcloc !11
  br label %43

33:                                               ; preds = %16
  br i1 %25, label %34, label %35, !prof !9

34:                                               ; preds = %33
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 388, i32 noundef 9, ptr noundef null) #18
  br label %43

35:                                               ; preds = %33
  %36 = and i16 %2, 4095
  %37 = zext i16 %36 to i32
  %38 = or i32 %37, -2147483648
  %39 = zext i16 %24 to i32
  %40 = getelementptr i8, ptr %0, i32 1424
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr i8, ptr %41, i32 %39
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %38) #18, !srcloc !11
  br label %43

43:                                               ; preds = %35, %34, %28, %27, %14, %3
  %44 = phi i32 [ -1, %3 ], [ 0, %14 ], [ 0, %27 ], [ 0, %28 ], [ 0, %34 ], [ 0, %35 ]
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_eth_vlan_rx_kill_vid(ptr nocapture noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 1736
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %6, i32 85, i32 86
  %8 = getelementptr i8, ptr %0, i32 1412
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.sh_eth_cpu_data, ptr %9, i32 0, i32 15
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 64
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %31, label %14, !prof !9

14:                                               ; preds = %3
  %15 = icmp eq i16 %2, 0
  br i1 %15, label %31, label %16

16:                                               ; preds = %14
  %17 = getelementptr i8, ptr %0, i32 1740
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, -1
  store i32 %19, ptr %17, align 4
  %20 = getelementptr i8, ptr %0, i32 1416
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr i16, ptr %21, i32 %7
  %23 = load i16, ptr %22, align 2
  %24 = icmp eq i16 %23, -1
  br i1 %24, label %25, label %26, !prof !9

25:                                               ; preds = %16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 388, i32 noundef 9, ptr noundef null) #18
  br label %31

26:                                               ; preds = %16
  %27 = zext i16 %23 to i32
  %28 = getelementptr i8, ptr %0, i32 1424
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr i8, ptr %29, i32 %27
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 0) #18, !srcloc !11
  br label %31

31:                                               ; preds = %26, %25, %14, %3
  %32 = phi i32 [ -1, %3 ], [ 0, %14 ], [ 0, %25 ], [ 0, %26 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_eth_set_features(ptr noundef %0, i64 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 23
  %4 = load i64, ptr %3, align 16
  %5 = xor i64 %4, %1
  %6 = and i64 %5, 1099511627776
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %98, label %8

8:                                                ; preds = %2
  %9 = getelementptr i8, ptr %0, i32 1412
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.sh_eth_cpu_data, ptr %10, i32 0, i32 15
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 32768
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %98, label %15

15:                                               ; preds = %8
  %16 = getelementptr i8, ptr %0, i32 1464
  %17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %16) #18
  %18 = getelementptr i8, ptr %0, i32 1416
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr i16, ptr %19, i32 28
  %21 = load i16, ptr %20, align 2
  %22 = icmp eq i16 %21, -1
  br i1 %22, label %23, label %24, !prof !9

23:                                               ; preds = %15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %31

24:                                               ; preds = %15
  %25 = zext i16 %21 to i32
  %26 = getelementptr i8, ptr %0, i32 1420
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr i8, ptr %27, i32 %25
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  %30 = and i32 %29, -97
  br label %31

31:                                               ; preds = %24, %23
  %32 = phi i32 [ -97, %23 ], [ %30, %24 ]
  %33 = load ptr, ptr %18, align 8
  %34 = getelementptr i16, ptr %33, i32 28
  %35 = load i16, ptr %34, align 2
  %36 = icmp eq i16 %35, -1
  br i1 %36, label %37, label %38, !prof !9

37:                                               ; preds = %31
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 354, i32 noundef 9, ptr noundef null) #18
  br label %43

38:                                               ; preds = %31
  %39 = zext i16 %35 to i32
  %40 = getelementptr i8, ptr %0, i32 1420
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr i8, ptr %41, i32 %39
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %32) #18, !srcloc !11
  br label %43

43:                                               ; preds = %38, %37
  %44 = lshr i64 %1, 17
  %45 = trunc i64 %44 to i32
  %46 = and i32 %45, 8388608
  %47 = load ptr, ptr %18, align 8
  %48 = getelementptr i16, ptr %47, i32 28
  %49 = load i16, ptr %48, align 2
  %50 = icmp eq i16 %49, -1
  br i1 %50, label %51, label %52, !prof !9

51:                                               ; preds = %43
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %59

52:                                               ; preds = %43
  %53 = zext i16 %49 to i32
  %54 = getelementptr i8, ptr %0, i32 1420
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr i8, ptr %55, i32 %53
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  %58 = and i32 %57, -8388609
  br label %59

59:                                               ; preds = %52, %51
  %60 = phi i32 [ -8388609, %51 ], [ %58, %52 ]
  %61 = load ptr, ptr %18, align 8
  %62 = getelementptr i16, ptr %61, i32 28
  %63 = load i16, ptr %62, align 2
  %64 = icmp eq i16 %63, -1
  br i1 %64, label %65, label %66, !prof !9

65:                                               ; preds = %59
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 354, i32 noundef 9, ptr noundef null) #18
  br label %72

66:                                               ; preds = %59
  %67 = or i32 %60, %46
  %68 = zext i16 %63 to i32
  %69 = getelementptr i8, ptr %0, i32 1420
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr i8, ptr %70, i32 %68
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 %67) #18, !srcloc !11
  br label %72

72:                                               ; preds = %66, %65
  %73 = load ptr, ptr %18, align 8
  %74 = getelementptr i16, ptr %73, i32 28
  %75 = load i16, ptr %74, align 2
  %76 = icmp eq i16 %75, -1
  br i1 %76, label %77, label %78, !prof !9

77:                                               ; preds = %72
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %85

78:                                               ; preds = %72
  %79 = zext i16 %75 to i32
  %80 = getelementptr i8, ptr %0, i32 1420
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr i8, ptr %81, i32 %79
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %82) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  %84 = or i32 %83, 96
  br label %85

85:                                               ; preds = %78, %77
  %86 = phi i32 [ -1, %77 ], [ %84, %78 ]
  %87 = load ptr, ptr %18, align 8
  %88 = getelementptr i16, ptr %87, i32 28
  %89 = load i16, ptr %88, align 2
  %90 = icmp eq i16 %89, -1
  br i1 %90, label %91, label %92, !prof !9

91:                                               ; preds = %85
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 354, i32 noundef 9, ptr noundef null) #18
  br label %97

92:                                               ; preds = %85
  %93 = zext i16 %89 to i32
  %94 = getelementptr i8, ptr %0, i32 1420
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr i8, ptr %95, i32 %93
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %96, i32 %86) #18, !srcloc !11
  br label %97

97:                                               ; preds = %92, %91
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %16, i32 noundef %17) #18
  br label %98

98:                                               ; preds = %97, %8, %2
  store i64 %1, ptr %3, align 16
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_eth_interrupt(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr i8, ptr %1, i32 1408
  %4 = getelementptr i8, ptr %1, i32 1412
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %1, i32 1464
  tail call void @_raw_spin_lock(ptr noundef %6) #18
  %7 = getelementptr i8, ptr %1, i32 1416
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr i16, ptr %8, i32 4
  %10 = load i16, ptr %9, align 2
  %11 = icmp eq i16 %10, -1
  br i1 %11, label %12, label %13, !prof !9

12:                                               ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %19

13:                                               ; preds = %2
  %14 = zext i16 %10 to i32
  %15 = getelementptr i8, ptr %1, i32 1420
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 %14
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %19

19:                                               ; preds = %13, %12
  %20 = phi i32 [ -1, %12 ], [ %18, %13 ]
  %21 = load ptr, ptr %7, align 8
  %22 = getelementptr i16, ptr %21, i32 5
  %23 = load i16, ptr %22, align 2
  %24 = icmp eq i16 %23, -1
  br i1 %24, label %25, label %26, !prof !9

25:                                               ; preds = %19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %32

26:                                               ; preds = %19
  %27 = zext i16 %23 to i32
  %28 = getelementptr i8, ptr %1, i32 1420
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr i8, ptr %29, i32 %27
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %32

32:                                               ; preds = %26, %25
  %33 = phi i32 [ -1, %25 ], [ %31, %26 ]
  %34 = or i32 %33, 4194304
  %35 = and i32 %34, %20
  %36 = getelementptr inbounds %struct.sh_eth_cpu_data, ptr %5, i32 0, i32 11
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.sh_eth_cpu_data, ptr %5, i32 0, i32 12
  %39 = load i32, ptr %38, align 4
  %40 = or i32 %37, %39
  %41 = or i32 %40, 4456607
  %42 = and i32 %41, %35
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %438, label %44

44:                                               ; preds = %32
  %45 = getelementptr i8, ptr %1, i32 1704
  %46 = load i8, ptr %45, align 8, !range !17
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %49, !prof !9

48:                                               ; preds = %44
  tail call fastcc void @sh_eth_write(ptr noundef %1, i32 noundef 0, i32 noundef 5)
  br label %438

49:                                               ; preds = %44
  %50 = and i32 %35, 262303
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %69, label %52

52:                                               ; preds = %49
  %53 = getelementptr i8, ptr %1, i32 1488
  %54 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %53) #18
  br i1 %54, label %55, label %68

55:                                               ; preds = %52
  %56 = load ptr, ptr %7, align 8
  %57 = getelementptr i16, ptr %56, i32 5
  %58 = load i16, ptr %57, align 2
  %59 = icmp eq i16 %58, -1
  br i1 %59, label %60, label %61, !prof !9

60:                                               ; preds = %55
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 354, i32 noundef 9, ptr noundef null) #18
  br label %67

61:                                               ; preds = %55
  %62 = and i32 %33, -262304
  %63 = zext i16 %58 to i32
  %64 = getelementptr i8, ptr %1, i32 1420
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr i8, ptr %65, i32 %63
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %62) #18, !srcloc !11
  br label %67

67:                                               ; preds = %61, %60
  tail call void @__napi_schedule(ptr noundef %53) #18
  br label %69

68:                                               ; preds = %52
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %1, ptr noundef nonnull @.str.12, i32 noundef %35, i32 noundef %33) #19
  br label %69

69:                                               ; preds = %68, %67, %49
  %70 = load i32, ptr %36, align 4
  %71 = and i32 %70, %35
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %88, label %73

73:                                               ; preds = %69
  %74 = load ptr, ptr %7, align 8
  %75 = getelementptr i16, ptr %74, i32 4
  %76 = load i16, ptr %75, align 2
  %77 = icmp eq i16 %76, -1
  br i1 %77, label %78, label %79, !prof !9

78:                                               ; preds = %73
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 354, i32 noundef 9, ptr noundef null) #18
  br label %84

79:                                               ; preds = %73
  %80 = zext i16 %76 to i32
  %81 = getelementptr i8, ptr %1, i32 1420
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr i8, ptr %82, i32 %80
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %83, i32 %71) #18, !srcloc !11
  br label %84

84:                                               ; preds = %79, %78
  %85 = tail call fastcc i32 @sh_eth_tx_free(ptr noundef %1, i1 noundef zeroext true)
  %86 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 87
  %87 = load ptr, ptr %86, align 64
  tail call void @netif_tx_wake_queue(ptr noundef %87) #18
  br label %88

88:                                               ; preds = %84, %69
  %89 = and i32 %20, 4194304
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %299, label %91

91:                                               ; preds = %88
  %92 = load ptr, ptr %7, align 8
  %93 = getelementptr i16, ptr %92, i32 29
  %94 = load i16, ptr %93, align 2
  %95 = icmp eq i16 %94, -1
  br i1 %95, label %96, label %97, !prof !9

96:                                               ; preds = %91
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %103

97:                                               ; preds = %91
  %98 = zext i16 %94 to i32
  %99 = getelementptr i8, ptr %1, i32 1420
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr i8, ptr %100, i32 %98
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %101) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %103

103:                                              ; preds = %97, %96
  %104 = phi i32 [ -1, %96 ], [ %102, %97 ]
  %105 = load ptr, ptr %7, align 8
  %106 = getelementptr i16, ptr %105, i32 30
  %107 = load i16, ptr %106, align 2
  %108 = icmp eq i16 %107, -1
  br i1 %108, label %109, label %110, !prof !9

109:                                              ; preds = %103
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %116

110:                                              ; preds = %103
  %111 = zext i16 %107 to i32
  %112 = getelementptr i8, ptr %1, i32 1420
  %113 = load ptr, ptr %112, align 4
  %114 = getelementptr i8, ptr %113, i32 %111
  %115 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %114) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %116

116:                                              ; preds = %110, %109
  %117 = phi i32 [ -1, %109 ], [ %115, %110 ]
  %118 = and i32 %117, %104
  %119 = load ptr, ptr %7, align 8
  %120 = getelementptr i16, ptr %119, i32 29
  %121 = load i16, ptr %120, align 2
  %122 = icmp eq i16 %121, -1
  br i1 %122, label %123, label %124, !prof !9

123:                                              ; preds = %116
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 354, i32 noundef 9, ptr noundef null) #18
  br label %129

124:                                              ; preds = %116
  %125 = zext i16 %121 to i32
  %126 = getelementptr i8, ptr %1, i32 1420
  %127 = load ptr, ptr %126, align 4
  %128 = getelementptr i8, ptr %127, i32 %125
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %128, i32 %118) #18, !srcloc !11
  br label %129

129:                                              ; preds = %124, %123
  %130 = and i32 %118, 1
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %136, label %132

132:                                              ; preds = %129
  %133 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 17
  %134 = load i32, ptr %133, align 4
  %135 = add i32 %134, 1
  store i32 %135, ptr %133, align 4
  br label %136

136:                                              ; preds = %132, %129
  %137 = and i32 %118, 2
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %142, label %139

139:                                              ; preds = %136
  %140 = load ptr, ptr %3, align 8
  %141 = getelementptr inbounds %struct.platform_device, ptr %140, i32 0, i32 3
  tail call void @pm_wakeup_dev_event(ptr noundef %141, i32 noundef 0, i1 noundef zeroext false) #18
  br label %142

142:                                              ; preds = %139, %136
  %143 = and i32 %118, 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %299, label %145

145:                                              ; preds = %142
  %146 = load ptr, ptr %4, align 4
  %147 = getelementptr inbounds %struct.sh_eth_cpu_data, ptr %146, i32 0, i32 15
  %148 = load i32, ptr %147, align 4
  %149 = and i32 %148, 1
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %299

151:                                              ; preds = %145
  %152 = getelementptr i8, ptr %1, i32 1744
  %153 = load i8, ptr %152, align 8
  %154 = and i8 %153, 1
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %156, label %299

156:                                              ; preds = %151
  %157 = load ptr, ptr %7, align 8
  %158 = getelementptr i16, ptr %157, i32 32
  %159 = load i16, ptr %158, align 2
  %160 = icmp eq i16 %159, -1
  br i1 %160, label %161, label %162, !prof !9

161:                                              ; preds = %156
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %168

162:                                              ; preds = %156
  %163 = zext i16 %159 to i32
  %164 = getelementptr i8, ptr %1, i32 1420
  %165 = load ptr, ptr %164, align 4
  %166 = getelementptr i8, ptr %165, i32 %163
  %167 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %166) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %168

168:                                              ; preds = %162, %161
  %169 = phi i32 [ -1, %161 ], [ %167, %162 ]
  %170 = load i8, ptr %152, align 8
  %171 = lshr i8 %170, 1
  %172 = zext i8 %171 to i32
  %173 = xor i32 %169, %172
  %174 = and i32 %173, 1
  %175 = icmp eq i32 %174, 0
  %176 = load ptr, ptr %7, align 8
  br i1 %175, label %177, label %201

177:                                              ; preds = %168
  %178 = getelementptr i16, ptr %176, i32 28
  %179 = load i16, ptr %178, align 2
  %180 = icmp eq i16 %179, -1
  br i1 %180, label %181, label %182, !prof !9

181:                                              ; preds = %177
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %189

182:                                              ; preds = %177
  %183 = zext i16 %179 to i32
  %184 = getelementptr i8, ptr %1, i32 1420
  %185 = load ptr, ptr %184, align 4
  %186 = getelementptr i8, ptr %185, i32 %183
  %187 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %186) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  %188 = and i32 %187, -97
  br label %189

189:                                              ; preds = %182, %181
  %190 = phi i32 [ -97, %181 ], [ %188, %182 ]
  %191 = load ptr, ptr %7, align 8
  %192 = getelementptr i16, ptr %191, i32 28
  %193 = load i16, ptr %192, align 2
  %194 = icmp eq i16 %193, -1
  br i1 %194, label %195, label %196, !prof !9

195:                                              ; preds = %189
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 354, i32 noundef 9, ptr noundef null) #18
  br label %299

196:                                              ; preds = %189
  %197 = zext i16 %193 to i32
  %198 = getelementptr i8, ptr %1, i32 1420
  %199 = load ptr, ptr %198, align 4
  %200 = getelementptr i8, ptr %199, i32 %197
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %200, i32 %190) #18, !srcloc !11
  br label %299

201:                                              ; preds = %168
  %202 = getelementptr i16, ptr %176, i32 5
  %203 = load i16, ptr %202, align 2
  %204 = icmp eq i16 %203, -1
  br i1 %204, label %205, label %206, !prof !9

205:                                              ; preds = %201
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %213

206:                                              ; preds = %201
  %207 = zext i16 %203 to i32
  %208 = getelementptr i8, ptr %1, i32 1420
  %209 = load ptr, ptr %208, align 4
  %210 = getelementptr i8, ptr %209, i32 %207
  %211 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %210) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  %212 = and i32 %211, -4194305
  br label %213

213:                                              ; preds = %206, %205
  %214 = phi i32 [ -4194305, %205 ], [ %212, %206 ]
  %215 = load ptr, ptr %7, align 8
  %216 = getelementptr i16, ptr %215, i32 5
  %217 = load i16, ptr %216, align 2
  %218 = icmp eq i16 %217, -1
  br i1 %218, label %219, label %220, !prof !9

219:                                              ; preds = %213
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 354, i32 noundef 9, ptr noundef null) #18
  br label %225

220:                                              ; preds = %213
  %221 = zext i16 %217 to i32
  %222 = getelementptr i8, ptr %1, i32 1420
  %223 = load ptr, ptr %222, align 4
  %224 = getelementptr i8, ptr %223, i32 %221
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %224, i32 %214) #18, !srcloc !11
  br label %225

225:                                              ; preds = %220, %219
  %226 = load ptr, ptr %7, align 8
  %227 = getelementptr i16, ptr %226, i32 29
  %228 = load i16, ptr %227, align 2
  %229 = icmp eq i16 %228, -1
  br i1 %229, label %230, label %231, !prof !9

230:                                              ; preds = %225
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %237

231:                                              ; preds = %225
  %232 = zext i16 %228 to i32
  %233 = getelementptr i8, ptr %1, i32 1420
  %234 = load ptr, ptr %233, align 4
  %235 = getelementptr i8, ptr %234, i32 %232
  %236 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %235) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %237

237:                                              ; preds = %231, %230
  %238 = phi i32 [ -1, %230 ], [ %236, %231 ]
  %239 = load ptr, ptr %7, align 8
  %240 = getelementptr i16, ptr %239, i32 29
  %241 = load i16, ptr %240, align 2
  %242 = icmp eq i16 %241, -1
  br i1 %242, label %243, label %244, !prof !9

243:                                              ; preds = %237
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 354, i32 noundef 9, ptr noundef null) #18
  br label %249

244:                                              ; preds = %237
  %245 = zext i16 %241 to i32
  %246 = getelementptr i8, ptr %1, i32 1420
  %247 = load ptr, ptr %246, align 4
  %248 = getelementptr i8, ptr %247, i32 %245
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %248, i32 %238) #18, !srcloc !11
  br label %249

249:                                              ; preds = %244, %243
  %250 = load ptr, ptr %7, align 8
  %251 = getelementptr i16, ptr %250, i32 5
  %252 = load i16, ptr %251, align 2
  %253 = icmp eq i16 %252, -1
  br i1 %253, label %254, label %255, !prof !9

254:                                              ; preds = %249
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %262

255:                                              ; preds = %249
  %256 = zext i16 %252 to i32
  %257 = getelementptr i8, ptr %1, i32 1420
  %258 = load ptr, ptr %257, align 4
  %259 = getelementptr i8, ptr %258, i32 %256
  %260 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %259) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  %261 = or i32 %260, 4194304
  br label %262

262:                                              ; preds = %255, %254
  %263 = phi i32 [ -1, %254 ], [ %261, %255 ]
  %264 = load ptr, ptr %7, align 8
  %265 = getelementptr i16, ptr %264, i32 5
  %266 = load i16, ptr %265, align 2
  %267 = icmp eq i16 %266, -1
  br i1 %267, label %268, label %269, !prof !9

268:                                              ; preds = %262
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 354, i32 noundef 9, ptr noundef null) #18
  br label %274

269:                                              ; preds = %262
  %270 = zext i16 %266 to i32
  %271 = getelementptr i8, ptr %1, i32 1420
  %272 = load ptr, ptr %271, align 4
  %273 = getelementptr i8, ptr %272, i32 %270
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %273, i32 %263) #18, !srcloc !11
  br label %274

274:                                              ; preds = %269, %268
  %275 = load ptr, ptr %7, align 8
  %276 = getelementptr i16, ptr %275, i32 28
  %277 = load i16, ptr %276, align 2
  %278 = icmp eq i16 %277, -1
  br i1 %278, label %279, label %280, !prof !9

279:                                              ; preds = %274
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %287

280:                                              ; preds = %274
  %281 = zext i16 %277 to i32
  %282 = getelementptr i8, ptr %1, i32 1420
  %283 = load ptr, ptr %282, align 4
  %284 = getelementptr i8, ptr %283, i32 %281
  %285 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %284) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  %286 = or i32 %285, 96
  br label %287

287:                                              ; preds = %280, %279
  %288 = phi i32 [ -1, %279 ], [ %286, %280 ]
  %289 = load ptr, ptr %7, align 8
  %290 = getelementptr i16, ptr %289, i32 28
  %291 = load i16, ptr %290, align 2
  %292 = icmp eq i16 %291, -1
  br i1 %292, label %293, label %294, !prof !9

293:                                              ; preds = %287
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 354, i32 noundef 9, ptr noundef null) #18
  br label %299

294:                                              ; preds = %287
  %295 = zext i16 %291 to i32
  %296 = getelementptr i8, ptr %1, i32 1420
  %297 = load ptr, ptr %296, align 4
  %298 = getelementptr i8, ptr %297, i32 %295
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %298, i32 %288) #18, !srcloc !11
  br label %299

299:                                              ; preds = %294, %293, %196, %195, %151, %145, %142, %88
  %300 = load i32, ptr %38, align 4
  %301 = and i32 %300, %35
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %438, label %303

303:                                              ; preds = %299
  %304 = load ptr, ptr %7, align 8
  %305 = getelementptr i16, ptr %304, i32 4
  %306 = load i16, ptr %305, align 2
  %307 = icmp eq i16 %306, -1
  br i1 %307, label %308, label %309, !prof !9

308:                                              ; preds = %303
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 354, i32 noundef 9, ptr noundef null) #18
  br label %314

309:                                              ; preds = %303
  %310 = zext i16 %306 to i32
  %311 = getelementptr i8, ptr %1, i32 1420
  %312 = load ptr, ptr %311, align 4
  %313 = getelementptr i8, ptr %312, i32 %310
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %313, i32 %301) #18, !srcloc !11
  br label %314

314:                                              ; preds = %309, %308
  %315 = and i32 %35, 1140850688
  %316 = icmp eq i32 %315, 1140850688
  br i1 %316, label %317, label %326

317:                                              ; preds = %314
  %318 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 16
  %319 = load i32, ptr %318, align 8
  %320 = add i32 %319, 1
  store i32 %320, ptr %318, align 8
  %321 = getelementptr i8, ptr %1, i32 1724
  %322 = load i32, ptr %321, align 4
  %323 = and i32 %322, 128
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %326, label %325

325:                                              ; preds = %317
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.15) #19
  br label %326

326:                                              ; preds = %325, %317, %314
  %327 = and i32 %35, 50331648
  %328 = icmp eq i32 %327, 50331648
  br i1 %328, label %329, label %333

329:                                              ; preds = %326
  %330 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 13
  %331 = load i32, ptr %330, align 4
  %332 = add i32 %331, 1
  store i32 %332, ptr %330, align 4
  br label %333

333:                                              ; preds = %329, %326
  %334 = and i32 %35, 1048576
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %345, label %336

336:                                              ; preds = %333
  %337 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 18
  %338 = load i32, ptr %337, align 8
  %339 = add i32 %338, 1
  store i32 %339, ptr %337, align 8
  %340 = getelementptr i8, ptr %1, i32 1724
  %341 = load i32, ptr %340, align 4
  %342 = and i32 %341, 128
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %345, label %344

344:                                              ; preds = %336
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.16) #19
  br label %345

345:                                              ; preds = %344, %336, %333
  %346 = and i32 %35, 524288
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %357, label %348

348:                                              ; preds = %345
  %349 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 18
  %350 = load i32, ptr %349, align 8
  %351 = add i32 %350, 1
  store i32 %351, ptr %349, align 8
  %352 = getelementptr i8, ptr %1, i32 1724
  %353 = load i32, ptr %352, align 4
  %354 = and i32 %353, 128
  %355 = icmp eq i32 %354, 0
  br i1 %355, label %357, label %356

356:                                              ; preds = %348
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.17) #19
  br label %357

357:                                              ; preds = %356, %348, %345
  %358 = and i32 %35, 131072
  %359 = icmp eq i32 %358, 0
  br i1 %359, label %364, label %360

360:                                              ; preds = %357
  %361 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 11
  %362 = load i32, ptr %361, align 4
  %363 = add i32 %362, 1
  store i32 %363, ptr %361, align 4
  br label %364

364:                                              ; preds = %360, %357
  %365 = and i32 %35, 65536
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %371, label %367

367:                                              ; preds = %364
  %368 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 14
  %369 = load i32, ptr %368, align 8
  %370 = add i32 %369, 1
  store i32 %370, ptr %368, align 8
  br label %371

371:                                              ; preds = %367, %364
  %372 = load ptr, ptr %4, align 4
  %373 = getelementptr inbounds %struct.sh_eth_cpu_data, ptr %372, i32 0, i32 15
  %374 = load i32, ptr %373, align 4
  %375 = and i32 %374, 2048
  %376 = icmp ne i32 %375, 0
  %377 = and i32 %35, 8388608
  %378 = icmp eq i32 %377, 0
  %379 = or i1 %378, %376
  br i1 %379, label %390, label %380

380:                                              ; preds = %371
  %381 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 18
  %382 = load i32, ptr %381, align 8
  %383 = add i32 %382, 1
  store i32 %383, ptr %381, align 8
  %384 = getelementptr i8, ptr %1, i32 1724
  %385 = load i32, ptr %384, align 4
  %386 = and i32 %385, 128
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %390, label %388

388:                                              ; preds = %380
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.18) #19
  %389 = load ptr, ptr %4, align 4
  br label %390

390:                                              ; preds = %388, %380, %371
  %391 = phi ptr [ %372, %380 ], [ %389, %388 ], [ %372, %371 ]
  %392 = getelementptr inbounds %struct.sh_eth_cpu_data, ptr %391, i32 0, i32 15
  %393 = load i32, ptr %392, align 4
  %394 = and i32 %393, 2048
  %395 = icmp eq i32 %394, 0
  %396 = select i1 %395, i32 1150812160, i32 1142423552
  %397 = and i32 %396, %35
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %438, label %399

399:                                              ; preds = %390
  %400 = load ptr, ptr %7, align 8
  %401 = getelementptr i16, ptr %400, i32 2
  %402 = load i16, ptr %401, align 2
  %403 = icmp eq i16 %402, -1
  br i1 %403, label %404, label %405, !prof !9

404:                                              ; preds = %399
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %411

405:                                              ; preds = %399
  %406 = zext i16 %402 to i32
  %407 = getelementptr i8, ptr %1, i32 1420
  %408 = load ptr, ptr %407, align 4
  %409 = getelementptr i8, ptr %408, i32 %406
  %410 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %409) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %411

411:                                              ; preds = %405, %404
  %412 = phi i32 [ -1, %404 ], [ %410, %405 ]
  %413 = getelementptr i8, ptr %1, i32 1476
  %414 = load i32, ptr %413, align 4
  %415 = getelementptr i8, ptr %1, i32 1480
  %416 = load i32, ptr %415, align 8
  %417 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %418 = load i32, ptr %417, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.19, i32 noundef %35, i32 noundef %414, i32 noundef %416, i32 noundef %418, i32 noundef %412) #19
  %419 = tail call fastcc i32 @sh_eth_tx_free(ptr noundef %1, i1 noundef zeroext true) #18
  %420 = load ptr, ptr %4, align 4
  %421 = getelementptr inbounds %struct.sh_eth_cpu_data, ptr %420, i32 0, i32 5
  %422 = load i32, ptr %421, align 4
  %423 = icmp eq i32 %412, %422
  br i1 %423, label %435, label %424

424:                                              ; preds = %411
  %425 = load ptr, ptr %7, align 8
  %426 = getelementptr i16, ptr %425, i32 2
  %427 = load i16, ptr %426, align 2
  %428 = icmp eq i16 %427, -1
  br i1 %428, label %429, label %430, !prof !9

429:                                              ; preds = %424
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 354, i32 noundef 9, ptr noundef null) #18
  br label %435

430:                                              ; preds = %424
  %431 = zext i16 %427 to i32
  %432 = getelementptr i8, ptr %1, i32 1420
  %433 = load ptr, ptr %432, align 4
  %434 = getelementptr i8, ptr %433, i32 %431
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %434, i32 %422) #18, !srcloc !11
  br label %435

435:                                              ; preds = %430, %429, %411
  %436 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 87
  %437 = load ptr, ptr %436, align 64
  tail call void @netif_tx_wake_queue(ptr noundef %437) #18
  br label %438

438:                                              ; preds = %435, %390, %299, %48, %32
  %439 = phi i32 [ 1, %48 ], [ 1, %299 ], [ 0, %32 ], [ 1, %390 ], [ 1, %435 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !22
  %440 = load i16, ptr %6, align 4
  %441 = add i16 %440, 1
  store i16 %441, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !25
  ret i32 %439
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sh_eth_ring_init(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr i8, ptr %0, i32 1408
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 20
  %4 = load i32, ptr %3, align 4
  %5 = icmp ult i32 %4, 1493
  %6 = add i32 %4, 33
  %7 = and i32 %6, -8
  %8 = add i32 %7, 18
  %9 = select i1 %5, i32 1538, i32 %8
  %10 = getelementptr i8, ptr %0, i32 1484
  store i32 %9, ptr %10, align 4
  %11 = getelementptr i8, ptr %0, i32 1412
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.sh_eth_cpu_data, ptr %12, i32 0, i32 15
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 512
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %1
  %18 = add nuw nsw i32 %9, 2
  store i32 %18, ptr %10, align 4
  br label %19

19:                                               ; preds = %17, %1
  %20 = getelementptr i8, ptr %0, i32 1432
  %21 = load i32, ptr %20, align 8
  %22 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %21, i32 4) #18
  %23 = extractvalue { i32, i1 } %22, 1
  br i1 %23, label %24, label %26, !prof !9

24:                                               ; preds = %19
  %25 = getelementptr i8, ptr %0, i32 1456
  store ptr null, ptr %25, align 8
  br label %63

26:                                               ; preds = %19
  %27 = extractvalue { i32, i1 } %22, 0
  %28 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %27, i32 noundef 3520) #21
  %29 = getelementptr i8, ptr %0, i32 1456
  store ptr %28, ptr %29, align 8
  %30 = icmp eq ptr %28, null
  br i1 %30, label %63, label %31

31:                                               ; preds = %26
  %32 = getelementptr i8, ptr %0, i32 1436
  %33 = load i32, ptr %32, align 4
  %34 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %33, i32 4) #18
  %35 = extractvalue { i32, i1 } %34, 1
  br i1 %35, label %36, label %38, !prof !9

36:                                               ; preds = %31
  %37 = getelementptr i8, ptr %0, i32 1460
  store ptr null, ptr %37, align 4
  br label %62

38:                                               ; preds = %31
  %39 = extractvalue { i32, i1 } %34, 0
  %40 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %39, i32 noundef 3520) #21
  %41 = getelementptr i8, ptr %0, i32 1460
  store ptr %40, ptr %41, align 4
  %42 = icmp eq ptr %40, null
  br i1 %42, label %62, label %43

43:                                               ; preds = %38
  %44 = load i32, ptr %20, align 8
  %45 = shl i32 %44, 4
  %46 = load ptr, ptr %2, align 8
  %47 = getelementptr inbounds %struct.platform_device, ptr %46, i32 0, i32 3
  %48 = getelementptr i8, ptr %0, i32 1440
  %49 = tail call ptr @dma_alloc_attrs(ptr noundef %47, i32 noundef %45, ptr noundef %48, i32 noundef 3264, i32 noundef 0) #18
  %50 = getelementptr i8, ptr %0, i32 1448
  store ptr %49, ptr %50, align 8
  %51 = icmp eq ptr %49, null
  br i1 %51, label %62, label %52

52:                                               ; preds = %43
  %53 = getelementptr i8, ptr %0, i32 1472
  store i32 0, ptr %53, align 8
  %54 = load i32, ptr %32, align 4
  %55 = shl i32 %54, 4
  %56 = load ptr, ptr %2, align 8
  %57 = getelementptr inbounds %struct.platform_device, ptr %56, i32 0, i32 3
  %58 = getelementptr i8, ptr %0, i32 1444
  %59 = tail call ptr @dma_alloc_attrs(ptr noundef %57, i32 noundef %55, ptr noundef %58, i32 noundef 3264, i32 noundef 0) #18
  %60 = getelementptr i8, ptr %0, i32 1452
  store ptr %59, ptr %60, align 4
  %61 = icmp eq ptr %59, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %52, %43, %38, %36
  tail call fastcc void @sh_eth_ring_free(ptr noundef %0)
  br label %63

63:                                               ; preds = %62, %52, %26, %24
  %64 = phi i32 [ -12, %62 ], [ -12, %26 ], [ 0, %52 ], [ -12, %24 ]
  ret i32 %64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sh_eth_dev_init(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr i8, ptr %0, i32 1408
  %3 = getelementptr i8, ptr %0, i32 1412
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 %5(ptr noundef %0) #18
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %557

8:                                                ; preds = %1
  %9 = load ptr, ptr %3, align 4
  %10 = getelementptr inbounds %struct.sh_eth_cpu_data, ptr %9, i32 0, i32 15
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 131072
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %26, label %14

14:                                               ; preds = %8
  %15 = getelementptr i8, ptr %0, i32 1416
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr i16, ptr %16, i32 22
  %18 = load i16, ptr %17, align 2
  %19 = icmp eq i16 %18, -1
  br i1 %19, label %20, label %21, !prof !9

20:                                               ; preds = %14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 354, i32 noundef 9, ptr noundef null) #18
  br label %26

21:                                               ; preds = %14
  %22 = zext i16 %18 to i32
  %23 = getelementptr i8, ptr %0, i32 1420
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %24, i32 %22
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 1) #18, !srcloc !11
  br label %26

26:                                               ; preds = %21, %20, %8
  %27 = getelementptr i8, ptr %0, i32 1432
  %28 = load i32, ptr %27, align 8
  %29 = shl i32 %28, 4
  %30 = getelementptr i8, ptr %0, i32 1436
  %31 = load i32, ptr %30, align 4
  %32 = shl i32 %31, 4
  %33 = getelementptr i8, ptr %0, i32 1484
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %34, 63
  %36 = getelementptr i8, ptr %0, i32 1468
  %37 = getelementptr i8, ptr %0, i32 1472
  %38 = getelementptr i8, ptr %0, i32 1448
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %36, i8 0, i64 16, i1 false) #18
  %39 = load ptr, ptr %38, align 8
  tail call void @llvm.memset.p0.i32(ptr align 2 %39, i8 0, i32 %29, i1 false) #18
  %40 = load i32, ptr %27, align 8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %26
  store i32 0, ptr %37, align 8
  br label %148

43:                                               ; preds = %26
  %44 = getelementptr i8, ptr %0, i32 1456
  %45 = getelementptr i8, ptr %0, i32 1440
  %46 = getelementptr i8, ptr %0, i32 1416
  %47 = getelementptr i8, ptr %0, i32 1420
  br label %48

48:                                               ; preds = %135, %43
  %49 = phi ptr [ null, %43 ], [ %102, %135 ]
  %50 = phi i32 [ 0, %43 ], [ %136, %135 ]
  %51 = load ptr, ptr %44, align 8
  %52 = getelementptr ptr, ptr %51, i32 %50
  store ptr null, ptr %52, align 4
  %53 = tail call ptr @__netdev_alloc_skb(ptr noundef %0, i32 noundef %35, i32 noundef 2592) #18
  %54 = icmp eq ptr %53, null
  br i1 %54, label %139, label %55

55:                                               ; preds = %48
  %56 = getelementptr inbounds %struct.sk_buff, ptr %53, i32 0, i32 17
  %57 = load ptr, ptr %56, align 4
  %58 = ptrtoint ptr %57 to i32
  %59 = and i32 %58, 31
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %55
  %62 = sub nuw nsw i32 32, %59
  %63 = getelementptr i8, ptr %57, i32 %62
  store ptr %63, ptr %56, align 4
  %64 = getelementptr inbounds %struct.sk_buff, ptr %53, i32 0, i32 14
  %65 = load ptr, ptr %64, align 8
  %66 = getelementptr i8, ptr %65, i32 %62
  store ptr %66, ptr %64, align 8
  br label %67

67:                                               ; preds = %61, %55
  %68 = phi ptr [ %57, %55 ], [ %63, %61 ]
  %69 = load i32, ptr %33, align 4
  %70 = add i32 %69, 31
  %71 = and i32 %70, -32
  %72 = load ptr, ptr %2, align 8
  %73 = getelementptr inbounds %struct.platform_device, ptr %72, i32 0, i32 3
  %74 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %68) #18
  %75 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %76 = xor i1 %75, true
  %77 = select i1 %74, i1 %76, i1 false
  br i1 %77, label %78, label %87, !prof !9

78:                                               ; preds = %67
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %79 = tail call ptr @dev_driver_string(ptr noundef %73) #18
  %80 = getelementptr inbounds %struct.platform_device, ptr %72, i32 0, i32 3, i32 3
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = load ptr, ptr %73, align 4
  br label %85

85:                                               ; preds = %83, %78
  %86 = phi ptr [ %84, %83 ], [ %81, %78 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.21, ptr noundef %79, ptr noundef %86) #18
  br label %87

87:                                               ; preds = %85, %67
  br i1 %74, label %97, label %88

88:                                               ; preds = %87
  %89 = load ptr, ptr @mem_map, align 4
  %90 = ptrtoint ptr %68 to i32
  %91 = add i32 %90, 1073741824
  %92 = lshr i32 %91, 12
  %93 = getelementptr %struct.page, ptr %89, i32 %92
  %94 = and i32 %90, 4095
  %95 = tail call i32 @dma_map_page_attrs(ptr noundef %73, ptr noundef %93, i32 noundef %94, i32 noundef %71, i32 noundef 2, i32 noundef 0) #18
  %96 = icmp eq i32 %95, -1
  br i1 %96, label %97, label %98

97:                                               ; preds = %88, %87
  tail call void @kfree_skb_reason(ptr noundef nonnull %53, i32 noundef 0) #18
  br label %139

98:                                               ; preds = %88
  %99 = load ptr, ptr %44, align 8
  %100 = getelementptr ptr, ptr %99, i32 %50
  store ptr %53, ptr %100, align 4
  %101 = load ptr, ptr %38, align 8
  %102 = getelementptr %struct.sh_eth_rxdesc, ptr %101, i32 %50
  %103 = shl i32 %71, 16
  %104 = getelementptr %struct.sh_eth_rxdesc, ptr %101, i32 %50, i32 1
  store i32 %103, ptr %104, align 2
  %105 = getelementptr %struct.sh_eth_rxdesc, ptr %101, i32 %50, i32 2
  store i32 %95, ptr %105, align 2
  store i32 -1342177280, ptr %102, align 2
  %106 = icmp eq i32 %50, 0
  br i1 %106, label %107, label %135

107:                                              ; preds = %98
  %108 = load ptr, ptr %46, align 8
  %109 = getelementptr i16, ptr %108, i32 10
  %110 = load i16, ptr %109, align 2
  %111 = icmp eq i16 %110, -1
  br i1 %111, label %112, label %113, !prof !9

112:                                              ; preds = %107
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 354, i32 noundef 9, ptr noundef null) #18
  br label %118

113:                                              ; preds = %107
  %114 = load i32, ptr %45, align 8
  %115 = zext i16 %110 to i32
  %116 = load ptr, ptr %47, align 4
  %117 = getelementptr i8, ptr %116, i32 %115
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %117, i32 %114) #18, !srcloc !11
  br label %118

118:                                              ; preds = %113, %112
  %119 = load ptr, ptr %3, align 4
  %120 = getelementptr inbounds %struct.sh_eth_cpu_data, ptr %119, i32 0, i32 15
  %121 = load i32, ptr %120, align 4
  %122 = and i32 %121, 8192
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %135, label %124

124:                                              ; preds = %118
  %125 = load ptr, ptr %46, align 8
  %126 = getelementptr i16, ptr %125, i32 11
  %127 = load i16, ptr %126, align 2
  %128 = icmp eq i16 %127, -1
  br i1 %128, label %129, label %130, !prof !9

129:                                              ; preds = %124
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 354, i32 noundef 9, ptr noundef null) #18
  br label %135

130:                                              ; preds = %124
  %131 = load i32, ptr %45, align 8
  %132 = zext i16 %127 to i32
  %133 = load ptr, ptr %47, align 4
  %134 = getelementptr i8, ptr %133, i32 %132
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %134, i32 %131) #18, !srcloc !11
  br label %135

135:                                              ; preds = %130, %129, %118, %98
  %136 = add nuw i32 %50, 1
  %137 = load i32, ptr %27, align 8
  %138 = icmp ult i32 %136, %137
  br i1 %138, label %48, label %139

139:                                              ; preds = %135, %97, %48
  %140 = phi i32 [ %50, %97 ], [ %50, %48 ], [ %136, %135 ]
  %141 = phi ptr [ %49, %97 ], [ %49, %48 ], [ %102, %135 ]
  %142 = load i32, ptr %27, align 8
  %143 = sub i32 %140, %142
  store i32 %143, ptr %37, align 8
  %144 = icmp eq ptr %141, null
  br i1 %144, label %148, label %145

145:                                              ; preds = %139
  %146 = load i32, ptr %141, align 2
  %147 = or i32 %146, 1073741824
  store i32 %147, ptr %141, align 2
  br label %148

148:                                              ; preds = %145, %139, %42
  %149 = getelementptr i8, ptr %0, i32 1452
  %150 = load ptr, ptr %149, align 4
  tail call void @llvm.memset.p0.i32(ptr align 2 %150, i8 0, i32 %32, i1 false) #18
  %151 = load i32, ptr %30, align 4
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %201, label %153

153:                                              ; preds = %148
  %154 = getelementptr i8, ptr %0, i32 1460
  %155 = getelementptr i8, ptr %0, i32 1444
  %156 = getelementptr i8, ptr %0, i32 1416
  %157 = getelementptr i8, ptr %0, i32 1420
  %158 = load ptr, ptr %154, align 4
  store ptr null, ptr %158, align 4
  %159 = load ptr, ptr %149, align 4
  store i32 805306368, ptr %159, align 2
  %160 = getelementptr %struct.sh_eth_txdesc, ptr %159, i32 0, i32 1
  store i32 0, ptr %160, align 2
  %161 = load ptr, ptr %156, align 8
  %162 = getelementptr i16, ptr %161, i32 6
  %163 = load i16, ptr %162, align 2
  %164 = icmp eq i16 %163, -1
  br i1 %164, label %170, label %165, !prof !9

165:                                              ; preds = %153
  %166 = load i32, ptr %155, align 4
  %167 = zext i16 %163 to i32
  %168 = load ptr, ptr %157, align 4
  %169 = getelementptr i8, ptr %168, i32 %167
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %169, i32 %166) #18, !srcloc !11
  br label %171

170:                                              ; preds = %153
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 354, i32 noundef 9, ptr noundef null) #18
  br label %171

171:                                              ; preds = %170, %165
  %172 = load ptr, ptr %3, align 4
  %173 = getelementptr inbounds %struct.sh_eth_cpu_data, ptr %172, i32 0, i32 15
  %174 = load i32, ptr %173, align 4
  %175 = and i32 %174, 8192
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %188, label %177

177:                                              ; preds = %171
  %178 = load ptr, ptr %156, align 8
  %179 = getelementptr i16, ptr %178, i32 7
  %180 = load i16, ptr %179, align 2
  %181 = icmp eq i16 %180, -1
  br i1 %181, label %187, label %182, !prof !9

182:                                              ; preds = %177
  %183 = load i32, ptr %155, align 4
  %184 = zext i16 %180 to i32
  %185 = load ptr, ptr %157, align 4
  %186 = getelementptr i8, ptr %185, i32 %184
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %186, i32 %183) #18, !srcloc !11
  br label %188

187:                                              ; preds = %177
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 354, i32 noundef 9, ptr noundef null) #18
  br label %188

188:                                              ; preds = %187, %182, %171
  %189 = load i32, ptr %30, align 4
  %190 = icmp ugt i32 %189, 1
  br i1 %190, label %191, label %201

191:                                              ; preds = %191, %188
  %192 = phi i32 [ %199, %191 ], [ 1, %188 ]
  %193 = load ptr, ptr %154, align 4
  %194 = getelementptr ptr, ptr %193, i32 %192
  store ptr null, ptr %194, align 4
  %195 = load ptr, ptr %149, align 4
  %196 = getelementptr %struct.sh_eth_txdesc, ptr %195, i32 %192
  store i32 805306368, ptr %196, align 2
  %197 = getelementptr %struct.sh_eth_txdesc, ptr %195, i32 %192, i32 1
  store i32 0, ptr %197, align 2
  %198 = load i32, ptr %30, align 4
  %199 = add nuw i32 %192, 1
  %200 = icmp ult i32 %199, %198
  br i1 %200, label %191, label %201, !llvm.loop !26

201:                                              ; preds = %191, %188, %148
  %202 = phi ptr [ null, %148 ], [ %159, %188 ], [ %196, %191 ]
  %203 = load i32, ptr %202, align 2
  %204 = or i32 %203, 1073741824
  store i32 %204, ptr %202, align 2
  %205 = load ptr, ptr %3, align 4
  %206 = getelementptr inbounds %struct.sh_eth_cpu_data, ptr %205, i32 0, i32 15
  %207 = load i32, ptr %206, align 4
  %208 = and i32 %207, 512
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %222, label %210

210:                                              ; preds = %201
  %211 = getelementptr i8, ptr %0, i32 1416
  %212 = load ptr, ptr %211, align 8
  %213 = getelementptr i16, ptr %212, i32 24
  %214 = load i16, ptr %213, align 2
  %215 = icmp eq i16 %214, -1
  br i1 %215, label %216, label %217, !prof !9

216:                                              ; preds = %210
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 354, i32 noundef 9, ptr noundef null) #18
  br label %222

217:                                              ; preds = %210
  %218 = zext i16 %214 to i32
  %219 = getelementptr i8, ptr %0, i32 1420
  %220 = load ptr, ptr %219, align 4
  %221 = getelementptr i8, ptr %220, i32 %218
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %221, i32 131072) #18, !srcloc !11
  br label %222

222:                                              ; preds = %217, %216, %201
  %223 = getelementptr i8, ptr %0, i32 1416
  %224 = load ptr, ptr %223, align 8
  %225 = getelementptr i16, ptr %224, i32 5
  %226 = load i16, ptr %225, align 2
  %227 = icmp eq i16 %226, -1
  br i1 %227, label %228, label %229, !prof !9

228:                                              ; preds = %222
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 354, i32 noundef 9, ptr noundef null) #18
  br label %234

229:                                              ; preds = %222
  %230 = zext i16 %226 to i32
  %231 = getelementptr i8, ptr %0, i32 1420
  %232 = load ptr, ptr %231, align 4
  %233 = getelementptr i8, ptr %232, i32 %230
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %233, i32 0) #18, !srcloc !11
  br label %234

234:                                              ; preds = %229, %228
  %235 = load ptr, ptr %3, align 4
  %236 = getelementptr inbounds %struct.sh_eth_cpu_data, ptr %235, i32 0, i32 15
  %237 = load i32, ptr %236, align 4
  %238 = and i32 %237, 128
  %239 = icmp eq i32 %238, 0
  %240 = load ptr, ptr %223, align 8
  %241 = getelementptr i16, ptr %240, i32 1
  %242 = load i16, ptr %241, align 2
  %243 = icmp eq i16 %242, -1
  br i1 %239, label %251, label %244

244:                                              ; preds = %234
  br i1 %243, label %245, label %246, !prof !9

245:                                              ; preds = %244
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 354, i32 noundef 9, ptr noundef null) #18
  br label %258

246:                                              ; preds = %244
  %247 = zext i16 %242 to i32
  %248 = getelementptr i8, ptr %0, i32 1420
  %249 = load ptr, ptr %248, align 4
  %250 = getelementptr i8, ptr %249, i32 %247
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %250, i32 64) #18, !srcloc !11
  br label %258

251:                                              ; preds = %234
  br i1 %243, label %252, label %253, !prof !9

252:                                              ; preds = %251
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 354, i32 noundef 9, ptr noundef null) #18
  br label %258

253:                                              ; preds = %251
  %254 = zext i16 %242 to i32
  %255 = getelementptr i8, ptr %0, i32 1420
  %256 = load ptr, ptr %255, align 4
  %257 = getelementptr i8, ptr %256, i32 %254
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %257, i32 0) #18, !srcloc !11
  br label %258

258:                                              ; preds = %253, %252, %246, %245
  %259 = load ptr, ptr %223, align 8
  %260 = getelementptr i16, ptr %259, i32 17
  %261 = load i16, ptr %260, align 2
  %262 = icmp eq i16 %261, -1
  br i1 %262, label %263, label %264, !prof !9

263:                                              ; preds = %258
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 354, i32 noundef 9, ptr noundef null) #18
  br label %272

264:                                              ; preds = %258
  %265 = load ptr, ptr %3, align 4
  %266 = getelementptr inbounds %struct.sh_eth_cpu_data, ptr %265, i32 0, i32 9
  %267 = load i32, ptr %266, align 4
  %268 = zext i16 %261 to i32
  %269 = getelementptr i8, ptr %0, i32 1420
  %270 = load ptr, ptr %269, align 4
  %271 = getelementptr i8, ptr %270, i32 %268
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %271, i32 %267) #18, !srcloc !11
  br label %272

272:                                              ; preds = %264, %263
  %273 = load ptr, ptr %223, align 8
  %274 = getelementptr i16, ptr %273, i32 16
  %275 = load i16, ptr %274, align 2
  %276 = icmp eq i16 %275, -1
  br i1 %276, label %277, label %278, !prof !9

277:                                              ; preds = %272
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 354, i32 noundef 9, ptr noundef null) #18
  br label %283

278:                                              ; preds = %272
  %279 = zext i16 %275 to i32
  %280 = getelementptr i8, ptr %0, i32 1420
  %281 = load ptr, ptr %280, align 4
  %282 = getelementptr i8, ptr %281, i32 %279
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %282, i32 0) #18, !srcloc !11
  br label %283

283:                                              ; preds = %278, %277
  %284 = load ptr, ptr %223, align 8
  %285 = getelementptr i16, ptr %284, i32 18
  %286 = load i16, ptr %285, align 2
  %287 = icmp eq i16 %286, -1
  br i1 %287, label %288, label %289, !prof !9

288:                                              ; preds = %283
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 354, i32 noundef 9, ptr noundef null) #18
  br label %294

289:                                              ; preds = %283
  %290 = zext i16 %286 to i32
  %291 = getelementptr i8, ptr %0, i32 1420
  %292 = load ptr, ptr %291, align 4
  %293 = getelementptr i8, ptr %292, i32 %290
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %293, i32 1) #18, !srcloc !11
  br label %294

294:                                              ; preds = %289, %288
  %295 = load ptr, ptr %223, align 8
  %296 = getelementptr i16, ptr %295, i32 14
  %297 = load i16, ptr %296, align 2
  %298 = icmp eq i16 %297, -1
  br i1 %298, label %299, label %300, !prof !9

299:                                              ; preds = %294
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 354, i32 noundef 9, ptr noundef null) #18
  br label %308

300:                                              ; preds = %294
  %301 = load ptr, ptr %3, align 4
  %302 = getelementptr inbounds %struct.sh_eth_cpu_data, ptr %301, i32 0, i32 13
  %303 = load i32, ptr %302, align 4
  %304 = zext i16 %297 to i32
  %305 = getelementptr i8, ptr %0, i32 1420
  %306 = load ptr, ptr %305, align 4
  %307 = getelementptr i8, ptr %306, i32 %304
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %307, i32 %303) #18, !srcloc !11
  br label %308

308:                                              ; preds = %300, %299
  %309 = load ptr, ptr %3, align 4
  %310 = getelementptr inbounds %struct.sh_eth_cpu_data, ptr %309, i32 0, i32 15
  %311 = load i32, ptr %310, align 4
  %312 = and i32 %311, 256
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %339, label %314

314:                                              ; preds = %308
  %315 = load ptr, ptr %223, align 8
  %316 = getelementptr i16, ptr %315, i32 1
  %317 = load i16, ptr %316, align 2
  %318 = icmp eq i16 %317, -1
  br i1 %318, label %319, label %320, !prof !9

319:                                              ; preds = %314
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %326

320:                                              ; preds = %314
  %321 = zext i16 %317 to i32
  %322 = getelementptr i8, ptr %0, i32 1420
  %323 = load ptr, ptr %322, align 4
  %324 = getelementptr i8, ptr %323, i32 %321
  %325 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %324) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %326

326:                                              ; preds = %320, %319
  %327 = phi i32 [ -1, %319 ], [ %325, %320 ]
  %328 = load ptr, ptr %223, align 8
  %329 = getelementptr i16, ptr %328, i32 1
  %330 = load i16, ptr %329, align 2
  %331 = icmp eq i16 %330, -1
  br i1 %331, label %332, label %333, !prof !9

332:                                              ; preds = %326
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 354, i32 noundef 9, ptr noundef null) #18
  br label %339

333:                                              ; preds = %326
  %334 = or i32 %327, 128
  %335 = zext i16 %330 to i32
  %336 = getelementptr i8, ptr %0, i32 1420
  %337 = load ptr, ptr %336, align 4
  %338 = getelementptr i8, ptr %337, i32 %335
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %338, i32 %334) #18, !srcloc !11
  br label %339

339:                                              ; preds = %333, %332, %308
  %340 = load ptr, ptr %3, align 4
  %341 = getelementptr inbounds %struct.sh_eth_cpu_data, ptr %340, i32 0, i32 15
  %342 = load i32, ptr %341, align 4
  %343 = and i32 %342, 32
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %356, label %345

345:                                              ; preds = %339
  %346 = load ptr, ptr %223, align 8
  %347 = getelementptr i16, ptr %346, i32 48
  %348 = load i16, ptr %347, align 2
  %349 = icmp eq i16 %348, -1
  br i1 %349, label %350, label %351, !prof !9

350:                                              ; preds = %345
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 354, i32 noundef 9, ptr noundef null) #18
  br label %356

351:                                              ; preds = %345
  %352 = zext i16 %348 to i32
  %353 = getelementptr i8, ptr %0, i32 1420
  %354 = load ptr, ptr %353, align 4
  %355 = getelementptr i8, ptr %354, i32 %352
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %355, i32 2048) #18, !srcloc !11
  br label %356

356:                                              ; preds = %351, %350, %339
  %357 = load ptr, ptr %223, align 8
  %358 = getelementptr i16, ptr %357, i32 23
  %359 = load i16, ptr %358, align 2
  %360 = icmp eq i16 %359, -1
  br i1 %360, label %361, label %362, !prof !9

361:                                              ; preds = %356
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 354, i32 noundef 9, ptr noundef null) #18
  br label %370

362:                                              ; preds = %356
  %363 = load ptr, ptr %3, align 4
  %364 = getelementptr inbounds %struct.sh_eth_cpu_data, ptr %363, i32 0, i32 10
  %365 = load i32, ptr %364, align 4
  %366 = zext i16 %359 to i32
  %367 = getelementptr i8, ptr %0, i32 1420
  %368 = load ptr, ptr %367, align 4
  %369 = getelementptr i8, ptr %368, i32 %366
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %369, i32 %365) #18, !srcloc !11
  br label %370

370:                                              ; preds = %362, %361
  %371 = load ptr, ptr %3, align 4
  %372 = getelementptr inbounds %struct.sh_eth_cpu_data, ptr %371, i32 0, i32 15
  %373 = load i32, ptr %372, align 4
  %374 = and i32 %373, 1024
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %376, label %387

376:                                              ; preds = %370
  %377 = load ptr, ptr %223, align 8
  %378 = getelementptr i16, ptr %377, i32 25
  %379 = load i16, ptr %378, align 2
  %380 = icmp eq i16 %379, -1
  br i1 %380, label %381, label %382, !prof !9

381:                                              ; preds = %376
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 354, i32 noundef 9, ptr noundef null) #18
  br label %387

382:                                              ; preds = %376
  %383 = zext i16 %379 to i32
  %384 = getelementptr i8, ptr %0, i32 1420
  %385 = load ptr, ptr %384, align 4
  %386 = getelementptr i8, ptr %385, i32 %383
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %386, i32 0) #18, !srcloc !11
  br label %387

387:                                              ; preds = %382, %381, %370
  %388 = load ptr, ptr %223, align 8
  %389 = getelementptr i16, ptr %388, i32 35
  %390 = load i16, ptr %389, align 2
  %391 = icmp eq i16 %390, -1
  br i1 %391, label %392, label %393, !prof !9

392:                                              ; preds = %387
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 354, i32 noundef 9, ptr noundef null) #18
  br label %401

393:                                              ; preds = %387
  %394 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 20
  %395 = load i32, ptr %394, align 4
  %396 = add i32 %395, 22
  %397 = zext i16 %390 to i32
  %398 = getelementptr i8, ptr %0, i32 1420
  %399 = load ptr, ptr %398, align 4
  %400 = getelementptr i8, ptr %399, i32 %397
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %400, i32 %396) #18, !srcloc !11
  br label %401

401:                                              ; preds = %393, %392
  %402 = load ptr, ptr %223, align 8
  %403 = getelementptr i16, ptr %402, i32 4
  %404 = load i16, ptr %403, align 2
  %405 = icmp eq i16 %404, -1
  br i1 %405, label %406, label %407, !prof !9

406:                                              ; preds = %401
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %413

407:                                              ; preds = %401
  %408 = zext i16 %404 to i32
  %409 = getelementptr i8, ptr %0, i32 1420
  %410 = load ptr, ptr %409, align 4
  %411 = getelementptr i8, ptr %410, i32 %408
  %412 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %411) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %413

413:                                              ; preds = %407, %406
  %414 = phi i32 [ -1, %406 ], [ %412, %407 ]
  %415 = load ptr, ptr %223, align 8
  %416 = getelementptr i16, ptr %415, i32 4
  %417 = load i16, ptr %416, align 2
  %418 = icmp eq i16 %417, -1
  br i1 %418, label %419, label %420, !prof !9

419:                                              ; preds = %413
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 354, i32 noundef 9, ptr noundef null) #18
  br label %425

420:                                              ; preds = %413
  %421 = zext i16 %417 to i32
  %422 = getelementptr i8, ptr %0, i32 1420
  %423 = load ptr, ptr %422, align 4
  %424 = getelementptr i8, ptr %423, i32 %421
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %424, i32 %414) #18, !srcloc !11
  br label %425

425:                                              ; preds = %420, %419
  %426 = getelementptr i8, ptr %0, i32 1704
  store i8 1, ptr %426, align 8
  %427 = load ptr, ptr %223, align 8
  %428 = getelementptr i16, ptr %427, i32 5
  %429 = load i16, ptr %428, align 2
  %430 = icmp eq i16 %429, -1
  br i1 %430, label %431, label %432, !prof !9

431:                                              ; preds = %425
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 354, i32 noundef 9, ptr noundef null) #18
  br label %440

432:                                              ; preds = %425
  %433 = load ptr, ptr %3, align 4
  %434 = getelementptr inbounds %struct.sh_eth_cpu_data, ptr %433, i32 0, i32 6
  %435 = load i32, ptr %434, align 4
  %436 = zext i16 %429 to i32
  %437 = getelementptr i8, ptr %0, i32 1420
  %438 = load ptr, ptr %437, align 4
  %439 = getelementptr i8, ptr %438, i32 %436
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %439, i32 %435) #18, !srcloc !11
  br label %440

440:                                              ; preds = %432, %431
  %441 = load ptr, ptr %223, align 8
  %442 = getelementptr i16, ptr %441, i32 28
  %443 = load i16, ptr %442, align 2
  %444 = icmp eq i16 %443, -1
  br i1 %444, label %445, label %446, !prof !9

445:                                              ; preds = %440
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 354, i32 noundef 9, ptr noundef null) #18
  br label %461

446:                                              ; preds = %440
  %447 = getelementptr i8, ptr %0, i32 1732
  %448 = load i32, ptr %447, align 4
  %449 = icmp eq i32 %448, 0
  %450 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 23
  %451 = load i64, ptr %450, align 16
  %452 = lshr i64 %451, 17
  %453 = trunc i64 %452 to i32
  %454 = and i32 %453, 8388608
  %455 = select i1 %449, i32 524384, i32 524386
  %456 = or i32 %455, %454
  %457 = zext i16 %443 to i32
  %458 = getelementptr i8, ptr %0, i32 1420
  %459 = load ptr, ptr %458, align 4
  %460 = getelementptr i8, ptr %459, i32 %457
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %460, i32 %456) #18, !srcloc !11
  br label %461

461:                                              ; preds = %446, %445
  %462 = load ptr, ptr %3, align 4
  %463 = getelementptr inbounds %struct.sh_eth_cpu_data, ptr %462, i32 0, i32 3
  %464 = load ptr, ptr %463, align 4
  %465 = icmp eq ptr %464, null
  br i1 %465, label %467, label %466

466:                                              ; preds = %461
  tail call void %464(ptr noundef %0) #18
  br label %467

467:                                              ; preds = %466, %461
  %468 = load ptr, ptr %223, align 8
  %469 = getelementptr i16, ptr %468, i32 29
  %470 = load i16, ptr %469, align 2
  %471 = icmp eq i16 %470, -1
  br i1 %471, label %472, label %473, !prof !9

472:                                              ; preds = %467
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 354, i32 noundef 9, ptr noundef null) #18
  br label %481

473:                                              ; preds = %467
  %474 = load ptr, ptr %3, align 4
  %475 = getelementptr inbounds %struct.sh_eth_cpu_data, ptr %474, i32 0, i32 7
  %476 = load i32, ptr %475, align 4
  %477 = zext i16 %470 to i32
  %478 = getelementptr i8, ptr %0, i32 1420
  %479 = load ptr, ptr %478, align 4
  %480 = getelementptr i8, ptr %479, i32 %477
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %480, i32 %476) #18, !srcloc !11
  br label %481

481:                                              ; preds = %473, %472
  %482 = load ptr, ptr %223, align 8
  %483 = getelementptr i16, ptr %482, i32 30
  %484 = load i16, ptr %483, align 2
  %485 = icmp eq i16 %484, -1
  br i1 %485, label %486, label %487, !prof !9

486:                                              ; preds = %481
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 354, i32 noundef 9, ptr noundef null) #18
  br label %495

487:                                              ; preds = %481
  %488 = load ptr, ptr %3, align 4
  %489 = getelementptr inbounds %struct.sh_eth_cpu_data, ptr %488, i32 0, i32 8
  %490 = load i32, ptr %489, align 4
  %491 = zext i16 %484 to i32
  %492 = getelementptr i8, ptr %0, i32 1420
  %493 = load ptr, ptr %492, align 4
  %494 = getelementptr i8, ptr %493, i32 %491
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %494, i32 %490) #18, !srcloc !11
  br label %495

495:                                              ; preds = %487, %486
  tail call fastcc void @update_mac_address(ptr noundef %0)
  %496 = load ptr, ptr %3, align 4
  %497 = getelementptr inbounds %struct.sh_eth_cpu_data, ptr %496, i32 0, i32 15
  %498 = load i32, ptr %497, align 4
  %499 = and i32 %498, 2
  %500 = icmp eq i32 %499, 0
  br i1 %500, label %512, label %501

501:                                              ; preds = %495
  %502 = load ptr, ptr %223, align 8
  %503 = getelementptr i16, ptr %502, i32 37
  %504 = load i16, ptr %503, align 2
  %505 = icmp eq i16 %504, -1
  br i1 %505, label %506, label %507, !prof !9

506:                                              ; preds = %501
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 354, i32 noundef 9, ptr noundef null) #18
  br label %512

507:                                              ; preds = %501
  %508 = zext i16 %504 to i32
  %509 = getelementptr i8, ptr %0, i32 1420
  %510 = load ptr, ptr %509, align 4
  %511 = getelementptr i8, ptr %510, i32 %508
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %511, i32 1) #18, !srcloc !11
  br label %512

512:                                              ; preds = %507, %506, %495
  %513 = load ptr, ptr %3, align 4
  %514 = getelementptr inbounds %struct.sh_eth_cpu_data, ptr %513, i32 0, i32 15
  %515 = load i32, ptr %514, align 4
  %516 = and i32 %515, 4
  %517 = icmp eq i32 %516, 0
  br i1 %517, label %529, label %518

518:                                              ; preds = %512
  %519 = load ptr, ptr %223, align 8
  %520 = getelementptr i16, ptr %519, i32 38
  %521 = load i16, ptr %520, align 2
  %522 = icmp eq i16 %521, -1
  br i1 %522, label %523, label %524, !prof !9

523:                                              ; preds = %518
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 354, i32 noundef 9, ptr noundef null) #18
  br label %529

524:                                              ; preds = %518
  %525 = zext i16 %521 to i32
  %526 = getelementptr i8, ptr %0, i32 1420
  %527 = load ptr, ptr %526, align 4
  %528 = getelementptr i8, ptr %527, i32 %525
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %528, i32 1) #18, !srcloc !11
  br label %529

529:                                              ; preds = %524, %523, %512
  %530 = load ptr, ptr %3, align 4
  %531 = getelementptr inbounds %struct.sh_eth_cpu_data, ptr %530, i32 0, i32 15
  %532 = load i32, ptr %531, align 4
  %533 = and i32 %532, 8
  %534 = icmp eq i32 %533, 0
  br i1 %534, label %546, label %535

535:                                              ; preds = %529
  %536 = load ptr, ptr %223, align 8
  %537 = getelementptr i16, ptr %536, i32 43
  %538 = load i16, ptr %537, align 2
  %539 = icmp eq i16 %538, -1
  br i1 %539, label %540, label %541, !prof !9

540:                                              ; preds = %535
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 354, i32 noundef 9, ptr noundef null) #18
  br label %546

541:                                              ; preds = %535
  %542 = zext i16 %538 to i32
  %543 = getelementptr i8, ptr %0, i32 1420
  %544 = load ptr, ptr %543, align 4
  %545 = getelementptr i8, ptr %544, i32 %542
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %545, i32 0) #18, !srcloc !11
  br label %546

546:                                              ; preds = %541, %540, %529
  %547 = load ptr, ptr %223, align 8
  %548 = getelementptr i16, ptr %547, i32 3
  %549 = load i16, ptr %548, align 2
  %550 = icmp eq i16 %549, -1
  br i1 %550, label %551, label %552, !prof !9

551:                                              ; preds = %546
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 354, i32 noundef 9, ptr noundef null) #18
  br label %557

552:                                              ; preds = %546
  %553 = zext i16 %549 to i32
  %554 = getelementptr i8, ptr %0, i32 1420
  %555 = load ptr, ptr %554, align 4
  %556 = getelementptr i8, ptr %555, i32 %553
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %556, i32 1) #18, !srcloc !11
  br label %557

557:                                              ; preds = %552, %551, %1
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sh_eth_read(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 {
  %3 = getelementptr i8, ptr %0, i32 1416
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i16, ptr %4, i32 %1
  %6 = load i16, ptr %5, align 2
  %7 = icmp eq i16 %6, -1
  br i1 %7, label %8, label %9, !prof !9

8:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %15

9:                                                ; preds = %2
  %10 = zext i16 %6 to i32
  %11 = getelementptr i8, ptr %0, i32 1420
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 %10
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %15

15:                                               ; preds = %9, %8
  %16 = phi i32 [ -1, %8 ], [ %14, %9 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sh_eth_tx_free(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #2 {
  %3 = getelementptr i8, ptr %0, i32 1408
  %4 = getelementptr i8, ptr %0, i32 1476
  %5 = getelementptr i8, ptr %0, i32 1480
  %6 = load i32, ptr %4, align 4
  %7 = load i32, ptr %5, align 8
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %71, label %9

9:                                                ; preds = %2
  %10 = getelementptr i8, ptr %0, i32 1436
  %11 = getelementptr i8, ptr %0, i32 1452
  %12 = xor i1 %1, true
  %13 = getelementptr i8, ptr %0, i32 1724
  %14 = getelementptr i8, ptr %0, i32 1460
  %15 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 36, i32 1
  %16 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 36, i32 3
  br label %17

17:                                               ; preds = %66, %9
  %18 = phi i32 [ %7, %9 ], [ %68, %66 ]
  %19 = phi i32 [ 0, %9 ], [ %53, %66 ]
  %20 = load i32, ptr %10, align 4
  %21 = urem i32 %18, %20
  %22 = load ptr, ptr %11, align 4
  %23 = getelementptr %struct.sh_eth_txdesc, ptr %22, i32 %21
  %24 = load i32, ptr %23, align 2
  %25 = icmp sgt i32 %24, -1
  %26 = select i1 %12, i1 true, i1 %25
  br i1 %26, label %27, label %71

27:                                               ; preds = %17
  tail call void asm sideeffect "dmb osh", "~{memory}"() #18, !srcloc !28
  %28 = load i32, ptr %13, align 4
  %29 = and i32 %28, 1024
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = load i32, ptr %23, align 2
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %21, i32 noundef %32) #19
  br label %33

33:                                               ; preds = %31, %27
  %34 = load ptr, ptr %14, align 4
  %35 = getelementptr ptr, ptr %34, i32 %21
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %52, label %38

38:                                               ; preds = %33
  %39 = load ptr, ptr %3, align 8
  %40 = getelementptr inbounds %struct.platform_device, ptr %39, i32 0, i32 3
  %41 = getelementptr %struct.sh_eth_txdesc, ptr %22, i32 %21, i32 2
  %42 = load i32, ptr %41, align 2
  %43 = getelementptr %struct.sh_eth_txdesc, ptr %22, i32 %21, i32 1
  %44 = load i32, ptr %43, align 2
  %45 = lshr i32 %44, 16
  tail call void @dma_unmap_page_attrs(ptr noundef %40, i32 noundef %42, i32 noundef %45, i32 noundef 1, i32 noundef 0) #18
  %46 = load ptr, ptr %14, align 4
  %47 = getelementptr ptr, ptr %46, i32 %21
  %48 = load ptr, ptr %47, align 4
  tail call void @__dev_kfree_skb_irq(ptr noundef %48, i32 noundef 1) #18
  %49 = load ptr, ptr %14, align 4
  %50 = getelementptr ptr, ptr %49, i32 %21
  store ptr null, ptr %50, align 4
  %51 = add i32 %19, 1
  br label %52

52:                                               ; preds = %38, %33
  %53 = phi i32 [ %51, %38 ], [ %19, %33 ]
  store i32 805306368, ptr %23, align 2
  %54 = load i32, ptr %10, align 4
  %55 = add i32 %54, -1
  %56 = icmp ult i32 %21, %55
  %57 = select i1 %56, i32 805306368, i32 1879048192
  store i32 %57, ptr %23, align 2
  br i1 %25, label %58, label %66

58:                                               ; preds = %52
  %59 = load i32, ptr %15, align 4
  %60 = add i32 %59, 1
  store i32 %60, ptr %15, align 4
  %61 = getelementptr %struct.sh_eth_txdesc, ptr %22, i32 %21, i32 1
  %62 = load i32, ptr %61, align 2
  %63 = lshr i32 %62, 16
  %64 = load i32, ptr %16, align 4
  %65 = add i32 %64, %63
  store i32 %65, ptr %16, align 4
  br label %66

66:                                               ; preds = %58, %52
  %67 = load i32, ptr %5, align 8
  %68 = add i32 %67, 1
  store i32 %68, ptr %5, align 8
  %69 = load i32, ptr %4, align 4
  %70 = icmp eq i32 %69, %68
  br i1 %70, label %71, label %17

71:                                               ; preds = %66, %17, %2
  %72 = phi i32 [ 0, %2 ], [ %19, %17 ], [ %53, %66 ]
  ret i32 %72
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_wakeup_dev_event(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sh_eth_ring_free(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr i8, ptr %0, i32 1408
  %3 = getelementptr i8, ptr %0, i32 1448
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %44, label %6

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 1432
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %36, label %10

10:                                               ; preds = %6
  %11 = getelementptr i8, ptr %0, i32 1456
  %12 = getelementptr i8, ptr %0, i32 1484
  br label %13

13:                                               ; preds = %30, %10
  %14 = phi i32 [ %8, %10 ], [ %31, %30 ]
  %15 = phi i32 [ 0, %10 ], [ %32, %30 ]
  %16 = load ptr, ptr %11, align 8
  %17 = getelementptr ptr, ptr %16, i32 %15
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %30, label %20

20:                                               ; preds = %13
  %21 = load ptr, ptr %3, align 8
  %22 = load ptr, ptr %2, align 8
  %23 = getelementptr inbounds %struct.platform_device, ptr %22, i32 0, i32 3
  %24 = getelementptr %struct.sh_eth_rxdesc, ptr %21, i32 %15, i32 2
  %25 = load i32, ptr %24, align 2
  %26 = load i32, ptr %12, align 4
  %27 = add i32 %26, 31
  %28 = and i32 %27, -32
  tail call void @dma_unmap_page_attrs(ptr noundef %23, i32 noundef %25, i32 noundef %28, i32 noundef 2, i32 noundef 0) #18
  %29 = load i32, ptr %7, align 8
  br label %30

30:                                               ; preds = %20, %13
  %31 = phi i32 [ %14, %13 ], [ %29, %20 ]
  %32 = add nuw i32 %15, 1
  %33 = icmp ult i32 %32, %31
  br i1 %33, label %13, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr %3, align 8
  br label %36

36:                                               ; preds = %34, %6
  %37 = phi ptr [ %4, %6 ], [ %35, %34 ]
  %38 = phi i32 [ 0, %6 ], [ %31, %34 ]
  %39 = shl i32 %38, 4
  %40 = load ptr, ptr %2, align 8
  %41 = getelementptr inbounds %struct.platform_device, ptr %40, i32 0, i32 3
  %42 = getelementptr i8, ptr %0, i32 1440
  %43 = load i32, ptr %42, align 8
  tail call void @dma_free_attrs(ptr noundef %41, i32 noundef %39, ptr noundef %37, i32 noundef %43, i32 noundef 0) #18
  store ptr null, ptr %3, align 8
  br label %44

44:                                               ; preds = %36, %1
  %45 = getelementptr i8, ptr %0, i32 1456
  %46 = load ptr, ptr %45, align 8
  %47 = icmp eq ptr %46, null
  br i1 %47, label %61, label %48

48:                                               ; preds = %44
  %49 = getelementptr i8, ptr %0, i32 1432
  %50 = load i32, ptr %49, align 8
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %61, label %52

52:                                               ; preds = %52, %48
  %53 = phi ptr [ %60, %52 ], [ %46, %48 ]
  %54 = phi i32 [ %57, %52 ], [ 0, %48 ]
  %55 = getelementptr ptr, ptr %53, i32 %54
  %56 = load ptr, ptr %55, align 4
  tail call void @consume_skb(ptr noundef %56) #18
  %57 = add nuw i32 %54, 1
  %58 = load i32, ptr %49, align 8
  %59 = icmp ult i32 %57, %58
  %60 = load ptr, ptr %45, align 8
  br i1 %59, label %52, label %61

61:                                               ; preds = %52, %48, %44
  %62 = phi ptr [ %46, %48 ], [ null, %44 ], [ %60, %52 ]
  tail call void @kfree(ptr noundef %62) #18
  store ptr null, ptr %45, align 8
  %63 = getelementptr i8, ptr %0, i32 1452
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %76, label %66

66:                                               ; preds = %61
  %67 = tail call fastcc i32 @sh_eth_tx_free(ptr noundef %0, i1 noundef zeroext false)
  %68 = getelementptr i8, ptr %0, i32 1436
  %69 = load i32, ptr %68, align 4
  %70 = shl i32 %69, 4
  %71 = load ptr, ptr %2, align 8
  %72 = getelementptr inbounds %struct.platform_device, ptr %71, i32 0, i32 3
  %73 = load ptr, ptr %63, align 4
  %74 = getelementptr i8, ptr %0, i32 1444
  %75 = load i32, ptr %74, align 4
  tail call void @dma_free_attrs(ptr noundef %72, i32 noundef %70, ptr noundef %73, i32 noundef %75, i32 noundef 0) #18
  store ptr null, ptr %63, align 4
  br label %76

76:                                               ; preds = %66, %61
  %77 = getelementptr i8, ptr %0, i32 1460
  %78 = load ptr, ptr %77, align 4
  tail call void @kfree(ptr noundef %78) #18
  store ptr null, ptr %77, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @update_mac_address(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 72
  %3 = getelementptr i8, ptr %0, i32 1416
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i16, ptr %4, i32 49
  %6 = load i16, ptr %5, align 2
  %7 = icmp eq i16 %6, -1
  br i1 %7, label %8, label %9, !prof !9

8:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 354, i32 noundef 9, ptr noundef null) #18
  br label %32

9:                                                ; preds = %1
  %10 = load ptr, ptr %2, align 32
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i32
  %13 = shl nuw i32 %12, 24
  %14 = getelementptr i8, ptr %10, i32 1
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  %17 = shl nuw nsw i32 %16, 16
  %18 = or i32 %17, %13
  %19 = getelementptr i8, ptr %10, i32 2
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i32
  %22 = shl nuw nsw i32 %21, 8
  %23 = or i32 %18, %22
  %24 = getelementptr i8, ptr %10, i32 3
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i32
  %27 = or i32 %23, %26
  %28 = zext i16 %6 to i32
  %29 = getelementptr i8, ptr %0, i32 1420
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr i8, ptr %30, i32 %28
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %27) #18, !srcloc !11
  br label %32

32:                                               ; preds = %9, %8
  %33 = load ptr, ptr %3, align 8
  %34 = getelementptr i16, ptr %33, i32 50
  %35 = load i16, ptr %34, align 2
  %36 = icmp eq i16 %35, -1
  br i1 %36, label %37, label %38, !prof !9

37:                                               ; preds = %32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 354, i32 noundef 9, ptr noundef null) #18
  br label %52

38:                                               ; preds = %32
  %39 = load ptr, ptr %2, align 32
  %40 = getelementptr i8, ptr %39, i32 4
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i32
  %43 = shl nuw nsw i32 %42, 8
  %44 = getelementptr i8, ptr %39, i32 5
  %45 = load i8, ptr %44, align 1
  %46 = zext i8 %45 to i32
  %47 = or i32 %43, %46
  %48 = zext i16 %35 to i32
  %49 = getelementptr i8, ptr %0, i32 1420
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr i8, ptr %50, i32 %48
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %47) #18, !srcloc !11
  br label %52

52:                                               ; preds = %38, %37
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_connect(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sh_eth_adjust_link(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %0, i32 1464
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #18
  %6 = getelementptr i8, ptr %0, i32 1412
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.sh_eth_cpu_data, ptr %7, i32 0, i32 15
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = getelementptr i8, ptr %0, i32 1744
  %14 = load i8, ptr %13, align 8
  %15 = and i8 %14, 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %43, label %17

17:                                               ; preds = %12, %1
  %18 = getelementptr i8, ptr %0, i32 1416
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr i16, ptr %19, i32 28
  %21 = load i16, ptr %20, align 2
  %22 = icmp eq i16 %21, -1
  br i1 %22, label %23, label %24, !prof !9

23:                                               ; preds = %17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %31

24:                                               ; preds = %17
  %25 = zext i16 %21 to i32
  %26 = getelementptr i8, ptr %0, i32 1420
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr i8, ptr %27, i32 %25
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  %30 = and i32 %29, -97
  br label %31

31:                                               ; preds = %24, %23
  %32 = phi i32 [ -97, %23 ], [ %30, %24 ]
  %33 = load ptr, ptr %18, align 8
  %34 = getelementptr i16, ptr %33, i32 28
  %35 = load i16, ptr %34, align 2
  %36 = icmp eq i16 %35, -1
  br i1 %36, label %37, label %38, !prof !9

37:                                               ; preds = %31
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 354, i32 noundef 9, ptr noundef null) #18
  br label %43

38:                                               ; preds = %31
  %39 = zext i16 %35 to i32
  %40 = getelementptr i8, ptr %0, i32 1420
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr i8, ptr %41, i32 %39
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %32) #18, !srcloc !11
  br label %43

43:                                               ; preds = %38, %37, %12
  %44 = getelementptr inbounds %struct.phy_device, ptr %3, i32 0, i32 4
  %45 = load i16, ptr %44, align 8
  %46 = and i16 %45, 8192
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %109, label %48

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.phy_device, ptr %3, i32 0, i32 9
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr i8, ptr %0, i32 1732
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %60, label %54

54:                                               ; preds = %48
  store i32 %50, ptr %51, align 4
  %55 = load ptr, ptr %6, align 4
  %56 = getelementptr inbounds %struct.sh_eth_cpu_data, ptr %55, i32 0, i32 2
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %54
  tail call void %57(ptr noundef %0) #18
  br label %60

60:                                               ; preds = %59, %54, %48
  %61 = phi i32 [ 1, %59 ], [ 1, %54 ], [ 0, %48 ]
  %62 = getelementptr inbounds %struct.phy_device, ptr %3, i32 0, i32 8
  %63 = load i32, ptr %62, align 8
  %64 = getelementptr i8, ptr %0, i32 1728
  %65 = load i32, ptr %64, align 8
  %66 = icmp eq i32 %63, %65
  br i1 %66, label %73, label %67

67:                                               ; preds = %60
  store i32 %63, ptr %64, align 8
  %68 = load ptr, ptr %6, align 4
  %69 = getelementptr inbounds %struct.sh_eth_cpu_data, ptr %68, i32 0, i32 3
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %67
  tail call void %70(ptr noundef %0) #18
  br label %73

73:                                               ; preds = %72, %67, %60
  %74 = phi i32 [ 1, %72 ], [ 1, %67 ], [ %61, %60 ]
  %75 = getelementptr i8, ptr %0, i32 1716
  %76 = load i32, ptr %75, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %116

78:                                               ; preds = %73
  %79 = getelementptr i8, ptr %0, i32 1416
  %80 = load ptr, ptr %79, align 8
  %81 = getelementptr i16, ptr %80, i32 28
  %82 = load i16, ptr %81, align 2
  %83 = icmp eq i16 %82, -1
  br i1 %83, label %84, label %85, !prof !9

84:                                               ; preds = %78
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %92

85:                                               ; preds = %78
  %86 = zext i16 %82 to i32
  %87 = getelementptr i8, ptr %0, i32 1420
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr i8, ptr %88, i32 %86
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %89) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  %91 = and i32 %90, -65537
  br label %92

92:                                               ; preds = %85, %84
  %93 = phi i32 [ -65537, %84 ], [ %91, %85 ]
  %94 = load ptr, ptr %79, align 8
  %95 = getelementptr i16, ptr %94, i32 28
  %96 = load i16, ptr %95, align 2
  %97 = icmp eq i16 %96, -1
  br i1 %97, label %98, label %99, !prof !9

98:                                               ; preds = %92
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 354, i32 noundef 9, ptr noundef null) #18
  br label %104

99:                                               ; preds = %92
  %100 = zext i16 %96 to i32
  %101 = getelementptr i8, ptr %0, i32 1420
  %102 = load ptr, ptr %101, align 4
  %103 = getelementptr i8, ptr %102, i32 %100
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %103, i32 %93) #18, !srcloc !11
  br label %104

104:                                              ; preds = %99, %98
  %105 = load i16, ptr %44, align 8
  %106 = lshr i16 %105, 13
  %107 = and i16 %106, 1
  %108 = zext i16 %107 to i32
  store i32 %108, ptr %75, align 4
  br label %116

109:                                              ; preds = %43
  %110 = getelementptr i8, ptr %0, i32 1716
  %111 = load i32, ptr %110, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %109
  store i32 0, ptr %110, align 4
  %114 = getelementptr i8, ptr %0, i32 1728
  store i32 0, ptr %114, align 8
  %115 = getelementptr i8, ptr %0, i32 1732
  store i32 -1, ptr %115, align 4
  br label %116

116:                                              ; preds = %113, %109, %104, %73
  %117 = phi i32 [ %74, %73 ], [ 1, %104 ], [ 1, %113 ], [ 0, %109 ]
  %118 = load ptr, ptr %6, align 4
  %119 = getelementptr inbounds %struct.sh_eth_cpu_data, ptr %118, i32 0, i32 15
  %120 = load i32, ptr %119, align 4
  %121 = and i32 %120, 1
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %116
  %124 = getelementptr i8, ptr %0, i32 1744
  %125 = load i8, ptr %124, align 8
  %126 = and i8 %125, 1
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %158, label %128

128:                                              ; preds = %123, %116
  %129 = load i16, ptr %44, align 8
  %130 = and i16 %129, 8192
  %131 = icmp eq i16 %130, 0
  br i1 %131, label %158, label %132

132:                                              ; preds = %128
  %133 = getelementptr i8, ptr %0, i32 1416
  %134 = load ptr, ptr %133, align 8
  %135 = getelementptr i16, ptr %134, i32 28
  %136 = load i16, ptr %135, align 2
  %137 = icmp eq i16 %136, -1
  br i1 %137, label %138, label %139, !prof !9

138:                                              ; preds = %132
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %146

139:                                              ; preds = %132
  %140 = zext i16 %136 to i32
  %141 = getelementptr i8, ptr %0, i32 1420
  %142 = load ptr, ptr %141, align 4
  %143 = getelementptr i8, ptr %142, i32 %140
  %144 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %143) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  %145 = or i32 %144, 96
  br label %146

146:                                              ; preds = %139, %138
  %147 = phi i32 [ -1, %138 ], [ %145, %139 ]
  %148 = load ptr, ptr %133, align 8
  %149 = getelementptr i16, ptr %148, i32 28
  %150 = load i16, ptr %149, align 2
  %151 = icmp eq i16 %150, -1
  br i1 %151, label %152, label %153, !prof !9

152:                                              ; preds = %146
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 354, i32 noundef 9, ptr noundef null) #18
  br label %158

153:                                              ; preds = %146
  %154 = zext i16 %150 to i32
  %155 = getelementptr i8, ptr %0, i32 1420
  %156 = load ptr, ptr %155, align 4
  %157 = getelementptr i8, ptr %156, i32 %154
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %157, i32 %147) #18, !srcloc !11
  br label %158

158:                                              ; preds = %153, %152, %128, %123
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #18
  %159 = icmp eq i32 %117, 0
  br i1 %159, label %166, label %160

160:                                              ; preds = %158
  %161 = getelementptr i8, ptr %0, i32 1724
  %162 = load i32, ptr %161, align 4
  %163 = and i32 %162, 4
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %166, label %165

165:                                              ; preds = %160
  tail call void @phy_print_status(ptr noundef %3) #18
  br label %166

166:                                              ; preds = %165, %160, %158
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @phy_connect(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_set_max_speed(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_attached_info(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_print_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sh_eth_dev_exit(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr i8, ptr %0, i32 1436
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %16, label %5

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %0, i32 1452
  br label %7

7:                                                ; preds = %7, %5
  %8 = phi i32 [ 0, %5 ], [ %13, %7 ]
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr %struct.sh_eth_txdesc, ptr %9, i32 %8
  %11 = load i32, ptr %10, align 2
  %12 = and i32 %11, 2147483647
  store i32 %12, ptr %10, align 2
  %13 = add nuw i32 %8, 1
  %14 = load i32, ptr %2, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %7, label %16

16:                                               ; preds = %7, %1
  %17 = getelementptr i8, ptr %0, i32 1416
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr i16, ptr %18, i32 28
  %20 = load i16, ptr %19, align 2
  %21 = icmp eq i16 %20, -1
  br i1 %21, label %22, label %23, !prof !9

22:                                               ; preds = %16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %30

23:                                               ; preds = %16
  %24 = zext i16 %20 to i32
  %25 = getelementptr i8, ptr %0, i32 1420
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr i8, ptr %26, i32 %24
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  %29 = and i32 %28, -97
  br label %30

30:                                               ; preds = %23, %22
  %31 = phi i32 [ -97, %22 ], [ %29, %23 ]
  %32 = load ptr, ptr %17, align 8
  %33 = getelementptr i16, ptr %32, i32 28
  %34 = load i16, ptr %33, align 2
  %35 = icmp eq i16 %34, -1
  br i1 %35, label %36, label %37, !prof !9

36:                                               ; preds = %30
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 354, i32 noundef 9, ptr noundef null) #18
  br label %42

37:                                               ; preds = %30
  %38 = zext i16 %34 to i32
  %39 = getelementptr i8, ptr %0, i32 1420
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr i8, ptr %40, i32 %38
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %31) #18, !srcloc !11
  br label %42

42:                                               ; preds = %37, %36
  %43 = load ptr, ptr %17, align 8
  %44 = getelementptr i16, ptr %43, i32 3
  %45 = load i16, ptr %44, align 2
  %46 = icmp eq i16 %45, -1
  br i1 %46, label %47, label %48, !prof !9

47:                                               ; preds = %42
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 354, i32 noundef 9, ptr noundef null) #18
  br label %53

48:                                               ; preds = %42
  %49 = zext i16 %45 to i32
  %50 = getelementptr i8, ptr %0, i32 1420
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr i8, ptr %51, i32 %49
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 0) #18, !srcloc !11
  br label %53

53:                                               ; preds = %48, %47
  tail call void @msleep(i32 noundef 2) #18
  %54 = tail call ptr @sh_eth_get_stats(ptr noundef %0)
  %55 = getelementptr i8, ptr %0, i32 1412
  %56 = load ptr, ptr %55, align 4
  %57 = load ptr, ptr %56, align 4
  %58 = tail call i32 %57(ptr noundef %0) #18
  %59 = load ptr, ptr %55, align 4
  %60 = getelementptr inbounds %struct.sh_eth_cpu_data, ptr %59, i32 0, i32 15
  %61 = load i32, ptr %60, align 4
  %62 = and i32 %61, 131072
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %75, label %64

64:                                               ; preds = %53
  %65 = load ptr, ptr %17, align 8
  %66 = getelementptr i16, ptr %65, i32 22
  %67 = load i16, ptr %66, align 2
  %68 = icmp eq i16 %67, -1
  br i1 %68, label %69, label %70, !prof !9

69:                                               ; preds = %64
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 354, i32 noundef 9, ptr noundef null) #18
  br label %75

70:                                               ; preds = %64
  %71 = zext i16 %67 to i32
  %72 = getelementptr i8, ptr %0, i32 1420
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr i8, ptr %73, i32 %71
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 1) #18, !srcloc !11
  br label %75

75:                                               ; preds = %70, %69, %53
  tail call fastcc void @update_mac_address(ptr noundef %0)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__skb_pad(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sh_eth_tsu_purge_mcast(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr i8, ptr %0, i32 1412
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.sh_eth_cpu_data, ptr %3, i32 0, i32 15
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 64
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %71, label %8

8:                                                ; preds = %1
  %9 = getelementptr i8, ptr %0, i32 1416
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr i16, ptr %10, i32 93
  %12 = load i16, ptr %11, align 2
  %13 = getelementptr i8, ptr %0, i32 1424
  br label %14

14:                                               ; preds = %67, %8
  %15 = phi i32 [ 0, %8 ], [ %68, %67 ]
  %16 = phi i16 [ %12, %8 ], [ %69, %67 ]
  %17 = load ptr, ptr %13, align 8
  %18 = zext i16 %16 to i32
  %19 = getelementptr i8, ptr %17, i32 %18
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  %21 = load ptr, ptr %13, align 8
  %22 = getelementptr i8, ptr %21, i32 4
  %23 = getelementptr i8, ptr %22, i32 %18
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  %25 = and i32 %20, 16777216
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %67, label %27

27:                                               ; preds = %14
  %28 = load ptr, ptr %2, align 4
  %29 = getelementptr inbounds %struct.sh_eth_cpu_data, ptr %28, i32 0, i32 15
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, 64
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %67, label %33

33:                                               ; preds = %27
  %34 = load ptr, ptr %9, align 8
  %35 = getelementptr i16, ptr %34, i32 93
  %36 = load i16, ptr %35, align 2
  br label %37

37:                                               ; preds = %56, %33
  %38 = phi i32 [ 0, %33 ], [ %57, %56 ]
  %39 = phi i16 [ %36, %33 ], [ %58, %56 ]
  %40 = load ptr, ptr %13, align 8
  %41 = zext i16 %39 to i32
  %42 = getelementptr i8, ptr %40, i32 %41
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  %44 = load ptr, ptr %13, align 8
  %45 = getelementptr i8, ptr %44, i32 4
  %46 = getelementptr i8, ptr %45, i32 %41
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  %48 = xor i32 %43, %20
  %49 = tail call i32 @llvm.bswap.i32(i32 %48)
  %50 = xor i32 %47, %24
  %51 = trunc i32 %50 to i16
  %52 = tail call i16 @llvm.bswap.i16(i16 %51)
  %53 = zext i16 %52 to i32
  %54 = or i32 %49, %53
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %37
  %57 = add nuw nsw i32 %38, 1
  %58 = add i16 %39, 8
  %59 = icmp eq i32 %57, 32
  br i1 %59, label %62, label %37

60:                                               ; preds = %37
  %61 = icmp eq i32 %38, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %60, %56
  %63 = phi i32 [ %38, %60 ], [ -2, %56 ]
  %64 = tail call fastcc zeroext i1 @sh_eth_tsu_disable_cam_entry_post(ptr noundef %0, i32 noundef %63) #18
  br i1 %64, label %67, label %65

65:                                               ; preds = %62
  %66 = tail call fastcc i32 @sh_eth_tsu_disable_cam_entry_table(ptr noundef %0, i32 noundef %63) #18
  br label %67

67:                                               ; preds = %65, %62, %60, %27, %14
  %68 = add nuw nsw i32 %15, 1
  %69 = add i16 %16, 8
  %70 = icmp eq i32 %68, 32
  br i1 %70, label %71, label %14

71:                                               ; preds = %67, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @sh_eth_tsu_disable_cam_entry_post(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 {
  %3 = sdiv i32 %1, 8
  %4 = add nsw i32 %3, 89
  %5 = mul i32 %3, 8
  %6 = sub i32 %1, %5
  %7 = mul nsw i32 %6, -4
  %8 = add nsw i32 %7, 28
  %9 = shl i32 15, %8
  %10 = getelementptr i8, ptr %0, i32 1736
  %11 = load i32, ptr %10, align 8
  %12 = xor i32 %9, -1
  %13 = getelementptr i8, ptr %0, i32 1416
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr i16, ptr %14, i32 %4
  %16 = load i16, ptr %15, align 2
  %17 = icmp eq i16 %16, -1
  br i1 %17, label %18, label %19, !prof !9

18:                                               ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 398, i32 noundef 9, ptr noundef null) #18
  br label %25

19:                                               ; preds = %2
  %20 = zext i16 %16 to i32
  %21 = getelementptr i8, ptr %0, i32 1424
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr i8, ptr %22, i32 %20
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %25

25:                                               ; preds = %19, %18
  %26 = phi i32 [ -1, %18 ], [ %24, %19 ]
  %27 = load ptr, ptr %13, align 8
  %28 = getelementptr i16, ptr %27, i32 %4
  %29 = load i16, ptr %28, align 2
  %30 = icmp eq i16 %29, -1
  br i1 %30, label %31, label %33, !prof !9

31:                                               ; preds = %25
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 388, i32 noundef 9, ptr noundef null) #18
  %32 = and i32 %26, %12
  br label %39

33:                                               ; preds = %25
  %34 = and i32 %26, %12
  %35 = zext i16 %29 to i32
  %36 = getelementptr i8, ptr %0, i32 1424
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr i8, ptr %37, i32 %35
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %34) #18, !srcloc !11
  br label %39

39:                                               ; preds = %33, %31
  %40 = phi i32 [ %32, %31 ], [ %34, %33 ]
  %41 = shl i32 %11, 1
  %42 = lshr i32 8, %41
  %43 = shl i32 %42, %8
  %44 = and i32 %40, %43
  %45 = icmp ne i32 %44, 0
  ret i1 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sh_eth_tsu_disable_cam_entry_table(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = alloca [6 x i8], align 1
  %4 = getelementptr i8, ptr %0, i32 1416
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i16, ptr %5, i32 93
  %7 = load i16, ptr %6, align 2
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #18
  %8 = getelementptr i16, ptr %5, i32 88
  %9 = load i16, ptr %8, align 2
  %10 = icmp eq i16 %9, -1
  br i1 %10, label %11, label %12, !prof !9

11:                                               ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 398, i32 noundef 9, ptr noundef null) #18
  br label %18

12:                                               ; preds = %2
  %13 = zext i16 %9 to i32
  %14 = getelementptr i8, ptr %0, i32 1424
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr i8, ptr %15, i32 %13
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %18

18:                                               ; preds = %12, %11
  %19 = phi i32 [ -1, %11 ], [ %17, %12 ]
  %20 = load ptr, ptr %4, align 8
  %21 = getelementptr i16, ptr %20, i32 88
  %22 = load i16, ptr %21, align 2
  %23 = icmp eq i16 %22, -1
  br i1 %23, label %24, label %25, !prof !9

24:                                               ; preds = %18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 388, i32 noundef 9, ptr noundef null) #18
  br label %33

25:                                               ; preds = %18
  %26 = lshr i32 -2147483648, %1
  %27 = xor i32 %26, -1
  %28 = and i32 %19, %27
  %29 = zext i16 %22 to i32
  %30 = getelementptr i8, ptr %0, i32 1424
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr i8, ptr %31, i32 %29
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %28) #18, !srcloc !11
  br label %33

33:                                               ; preds = %25, %24
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %3, i8 0, i32 6, i1 false)
  %34 = trunc i32 %1 to i16
  %35 = shl i16 %34, 3
  %36 = add i16 %7, %35
  %37 = call fastcc i32 @sh_eth_tsu_write_entry(ptr noundef %0, i16 noundef zeroext %36, ptr noundef nonnull %3)
  %38 = tail call i32 @llvm.smin.i32(i32 %37, i32 0)
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #18
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sh_eth_tsu_write_entry(ptr noundef %0, i16 noundef zeroext %1, ptr nocapture noundef readonly %2) unnamed_addr #2 {
  %4 = load i8, ptr %2, align 1
  %5 = zext i8 %4 to i32
  %6 = shl nuw i32 %5, 24
  %7 = getelementptr i8, ptr %2, i32 1
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = shl nuw nsw i32 %9, 16
  %11 = or i32 %10, %6
  %12 = getelementptr i8, ptr %2, i32 2
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = shl nuw nsw i32 %14, 8
  %16 = or i32 %11, %15
  %17 = getelementptr i8, ptr %2, i32 3
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = or i32 %16, %19
  %21 = getelementptr i8, ptr %0, i32 1424
  %22 = load ptr, ptr %21, align 8
  %23 = zext i16 %1 to i32
  %24 = getelementptr i8, ptr %22, i32 %23
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %20) #18, !srcloc !11
  %25 = getelementptr i8, ptr %0, i32 1416
  br label %26

26:                                               ; preds = %40, %3
  %27 = phi i32 [ 50000, %3 ], [ %42, %40 ]
  %28 = load ptr, ptr %25, align 8
  %29 = getelementptr i16, ptr %28, i32 87
  %30 = load i16, ptr %29, align 2
  %31 = icmp eq i16 %30, -1
  br i1 %31, label %32, label %33, !prof !9

32:                                               ; preds = %26
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 398, i32 noundef 9, ptr noundef null) #18
  br label %40

33:                                               ; preds = %26
  %34 = zext i16 %30 to i32
  %35 = load ptr, ptr %21, align 8
  %36 = getelementptr i8, ptr %35, i32 %34
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %33, %32
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 2147480) #18
  %42 = add nsw i32 %27, -1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %74, label %26

44:                                               ; preds = %33
  %45 = getelementptr i8, ptr %2, i32 4
  %46 = load i8, ptr %45, align 1
  %47 = zext i8 %46 to i32
  %48 = shl nuw nsw i32 %47, 8
  %49 = getelementptr i8, ptr %2, i32 5
  %50 = load i8, ptr %49, align 1
  %51 = zext i8 %50 to i32
  %52 = or i32 %48, %51
  %53 = load ptr, ptr %21, align 8
  %54 = getelementptr i8, ptr %53, i32 %23
  %55 = getelementptr i8, ptr %54, i32 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %52) #18, !srcloc !11
  br label %56

56:                                               ; preds = %70, %44
  %57 = phi i32 [ 50000, %44 ], [ %72, %70 ]
  %58 = load ptr, ptr %25, align 8
  %59 = getelementptr i16, ptr %58, i32 87
  %60 = load i16, ptr %59, align 2
  %61 = icmp eq i16 %60, -1
  br i1 %61, label %62, label %63, !prof !9

62:                                               ; preds = %56
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 398, i32 noundef 9, ptr noundef null) #18
  br label %70

63:                                               ; preds = %56
  %64 = zext i16 %60 to i32
  %65 = load ptr, ptr %21, align 8
  %66 = getelementptr i8, ptr %65, i32 %64
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %66) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  %68 = and i32 %67, 1
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %63, %62
  %71 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %71(i32 noundef 2147480) #18
  %72 = add nsw i32 %57, -1
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %56

74:                                               ; preds = %70, %40
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.sh_eth_tsu_busy) #19
  br label %75

75:                                               ; preds = %74, %63
  %76 = phi i32 [ -16, %74 ], [ 0, %63 ]
  ret i32 %76
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_update_features(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_eth_get_regs_len(ptr noundef %0) #2 {
  %2 = tail call fastcc i32 @__sh_eth_get_regs(ptr noundef %0, ptr noundef null)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sh_eth_get_regs(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 1408
  %5 = getelementptr inbounds %struct.ethtool_regs, ptr %1, i32 0, i32 1
  store i32 1, ptr %5, align 4
  %6 = load ptr, ptr %4, align 8
  %7 = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3
  %8 = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #18
  %9 = tail call fastcc i32 @__sh_eth_get_regs(ptr noundef %0, ptr noundef %2)
  %10 = load ptr, ptr %4, align 8
  %11 = getelementptr inbounds %struct.platform_device, ptr %10, i32 0, i32 3
  %12 = tail call i32 @__pm_runtime_idle(ptr noundef %11, i32 noundef 4) #18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @sh_eth_get_wol(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #11 {
  %3 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %1, i32 0, i32 1
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %1, i32 0, i32 2
  store i32 0, ptr %4, align 4
  %5 = getelementptr i8, ptr %0, i32 1412
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.sh_eth_cpu_data, ptr %6, i32 0, i32 15
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 524288
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  store i32 32, ptr %3, align 4
  %12 = getelementptr i8, ptr %0, i32 1744
  %13 = load i8, ptr %12, align 8
  %14 = shl i8 %13, 2
  %15 = and i8 %14, 32
  %16 = zext i8 %15 to i32
  store i32 %16, ptr %4, align 4
  br label %17

17:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_eth_set_wol(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 1408
  %4 = getelementptr i8, ptr %0, i32 1412
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.sh_eth_cpu_data, ptr %5, i32 0, i32 15
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 524288
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %27, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %1, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, -33
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %10
  %16 = getelementptr i8, ptr %0, i32 1744
  %17 = trunc i32 %12 to i8
  %18 = load i8, ptr %16, align 8
  %19 = lshr i8 %17, 2
  %20 = and i8 %19, 8
  %21 = and i8 %18, -9
  %22 = or i8 %21, %20
  store i8 %22, ptr %16, align 8
  %23 = load ptr, ptr %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, ptr %23, i32 0, i32 3
  %25 = icmp ne i8 %20, 0
  %26 = tail call i32 @device_set_wakeup_enable(ptr noundef %24, i1 noundef zeroext %25) #18
  br label %27

27:                                               ; preds = %15, %10, %2
  %28 = phi i32 [ 0, %15 ], [ -95, %10 ], [ -95, %2 ]
  ret i32 %28
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @sh_eth_get_msglevel(ptr nocapture noundef readonly %0) #12 {
  %2 = getelementptr i8, ptr %0, i32 1724
  %3 = load i32, ptr %2, align 4
  ret i32 %3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @sh_eth_set_msglevel(ptr nocapture noundef writeonly %0, i32 noundef %1) #13 {
  %3 = getelementptr i8, ptr %0, i32 1724
  store i32 %1, ptr %3, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_nway_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @sh_eth_get_ringparam(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) #14 {
  %5 = getelementptr inbounds %struct.ethtool_ringparam, ptr %1, i32 0, i32 1
  store i32 1024, ptr %5, align 4
  %6 = getelementptr inbounds %struct.ethtool_ringparam, ptr %1, i32 0, i32 4
  store i32 1024, ptr %6, align 4
  %7 = getelementptr i8, ptr %0, i32 1432
  %8 = load i32, ptr %7, align 8
  %9 = getelementptr inbounds %struct.ethtool_ringparam, ptr %1, i32 0, i32 5
  store i32 %8, ptr %9, align 4
  %10 = getelementptr i8, ptr %0, i32 1436
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.ethtool_ringparam, ptr %1, i32 0, i32 8
  store i32 %11, ptr %12, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_eth_set_ringparam(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) #2 {
  %5 = getelementptr inbounds %struct.ethtool_ringparam, ptr %1, i32 0, i32 8
  %6 = load i32, ptr %5, align 4
  %7 = icmp ugt i32 %6, 1024
  br i1 %7, label %60, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ethtool_ringparam, ptr %1, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = icmp ugt i32 %10, 1024
  %12 = icmp ult i32 %6, 64
  %13 = select i1 %11, i1 true, i1 %12
  %14 = icmp ult i32 %10, 64
  %15 = or i1 %14, %13
  br i1 %15, label %60, label %16

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.ethtool_ringparam, ptr %1, i32 0, i32 6
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %60

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.ethtool_ringparam, ptr %1, i32 0, i32 7
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %60

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %26 = load volatile i32, ptr %25, align 4
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %43, label %29

29:                                               ; preds = %24
  tail call void @netif_device_detach(ptr noundef %0) #18
  tail call fastcc void @netif_tx_disable(ptr noundef %0)
  %30 = getelementptr i8, ptr %0, i32 1704
  store i8 0, ptr %30, align 8
  %31 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 59
  %32 = load i32, ptr %31, align 8
  tail call void @synchronize_irq(i32 noundef %32) #18
  %33 = getelementptr i8, ptr %0, i32 1496
  %34 = load volatile i32, ptr %33, align 4
  %35 = and i32 %34, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %37, %29
  tail call void @msleep(i32 noundef 1) #18
  %38 = load volatile i32, ptr %33, align 4
  %39 = and i32 %38, 1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %37

41:                                               ; preds = %37, %29
  tail call fastcc void @sh_eth_write(ptr noundef %0, i32 noundef 0, i32 noundef 5)
  tail call fastcc void @sh_eth_dev_exit(ptr noundef %0)
  tail call fastcc void @sh_eth_ring_free(ptr noundef %0)
  %42 = load i32, ptr %9, align 4
  br label %43

43:                                               ; preds = %41, %24
  %44 = phi i32 [ %42, %41 ], [ %10, %24 ]
  %45 = getelementptr i8, ptr %0, i32 1432
  store i32 %44, ptr %45, align 8
  %46 = load i32, ptr %5, align 4
  %47 = getelementptr i8, ptr %0, i32 1436
  store i32 %46, ptr %47, align 4
  %48 = load volatile i32, ptr %25, align 4
  %49 = and i32 %48, 1
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %60, label %51

51:                                               ; preds = %43
  %52 = tail call fastcc i32 @sh_eth_ring_init(ptr noundef %0)
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.sh_eth_set_ringparam) #19
  br label %60

55:                                               ; preds = %51
  %56 = tail call fastcc i32 @sh_eth_dev_init(ptr noundef %0)
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.sh_eth_set_ringparam) #19
  br label %60

59:                                               ; preds = %55
  tail call void @netif_device_attach(ptr noundef %0) #18
  br label %60

60:                                               ; preds = %59, %58, %54, %43, %20, %16, %8, %4
  %61 = phi i32 [ %52, %54 ], [ %56, %58 ], [ -22, %8 ], [ -22, %4 ], [ -22, %20 ], [ -22, %16 ], [ 0, %59 ], [ 0, %43 ]
  ret i32 %61
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @sh_eth_get_strings(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #15 {
  %4 = icmp eq i32 %1, 1
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(128) %2, ptr noundef nonnull align 1 dereferenceable(128) @sh_eth_gstrings_stats, i32 128, i1 false)
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @sh_eth_get_ethtool_stats(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #14 {
  %4 = getelementptr i8, ptr %0, i32 1468
  %5 = load i32, ptr %4, align 4
  %6 = zext i32 %5 to i64
  store i64 %6, ptr %2, align 8
  %7 = getelementptr i8, ptr %0, i32 1476
  %8 = load i32, ptr %7, align 4
  %9 = zext i32 %8 to i64
  %10 = getelementptr i64, ptr %2, i32 1
  store i64 %9, ptr %10, align 8
  %11 = getelementptr i8, ptr %0, i32 1472
  %12 = load i32, ptr %11, align 8
  %13 = zext i32 %12 to i64
  %14 = getelementptr i64, ptr %2, i32 2
  store i64 %13, ptr %14, align 8
  %15 = getelementptr i8, ptr %0, i32 1480
  %16 = load i32, ptr %15, align 8
  %17 = zext i32 %16 to i64
  %18 = getelementptr i64, ptr %2, i32 3
  store i64 %17, ptr %18, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @sh_eth_get_sset_count(ptr nocapture noundef readnone %0, i32 noundef %1) #16 {
  %3 = icmp eq i32 %1, 1
  %4 = select i1 %3, i32 4, i32 -95
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_get_link_ksettings(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_set_link_ksettings(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__sh_eth_get_regs(ptr noundef readonly %0, ptr noundef %1) unnamed_addr #2 {
  %3 = getelementptr i8, ptr %0, i32 1412
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %1, null
  %6 = getelementptr i32, ptr %1, i32 8
  %7 = select i1 %5, ptr null, ptr %6
  %8 = getelementptr i8, ptr %0, i32 1416
  %9 = load ptr, ptr %8, align 8
  %10 = load i16, ptr %9, align 2
  %11 = icmp eq i16 %10, -1
  br i1 %11, label %31, label %12

12:                                               ; preds = %2
  %13 = icmp eq ptr %7, null
  br i1 %13, label %38, label %14

14:                                               ; preds = %12
  %15 = load i32, ptr %1, align 4
  %16 = or i32 %15, 1
  store i32 %16, ptr %1, align 4
  %17 = load ptr, ptr %8, align 8
  %18 = load i16, ptr %17, align 2
  %19 = icmp eq i16 %18, -1
  br i1 %19, label %20, label %21, !prof !9

20:                                               ; preds = %14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %27

21:                                               ; preds = %14
  %22 = zext i16 %18 to i32
  %23 = getelementptr i8, ptr %0, i32 1420
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %24, i32 %22
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %27

27:                                               ; preds = %21, %20
  %28 = phi i32 [ -1, %20 ], [ %26, %21 ]
  %29 = getelementptr i32, ptr %7, i32 1
  store i32 %28, ptr %7, align 4
  %30 = load ptr, ptr %8, align 8
  br label %31

31:                                               ; preds = %27, %2
  %32 = phi ptr [ %9, %2 ], [ %30, %27 ]
  %33 = phi ptr [ %7, %2 ], [ %29, %27 ]
  %34 = phi i32 [ 8, %2 ], [ 9, %27 ]
  %35 = getelementptr i16, ptr %32, i32 1
  %36 = load i16, ptr %35, align 2
  %37 = icmp eq i16 %36, -1
  br i1 %37, label %67, label %42

38:                                               ; preds = %12
  %39 = getelementptr i16, ptr %9, i32 1
  %40 = load i16, ptr %39, align 2
  %41 = icmp eq i16 %40, -1
  br i1 %41, label %74, label %62

42:                                               ; preds = %31
  %43 = icmp eq ptr %33, null
  br i1 %43, label %62, label %44

44:                                               ; preds = %42
  %45 = load i32, ptr %1, align 4
  %46 = or i32 %45, 2
  store i32 %46, ptr %1, align 4
  %47 = load ptr, ptr %8, align 8
  %48 = getelementptr i16, ptr %47, i32 1
  %49 = load i16, ptr %48, align 2
  %50 = icmp eq i16 %49, -1
  br i1 %50, label %51, label %52, !prof !9

51:                                               ; preds = %44
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %58

52:                                               ; preds = %44
  %53 = zext i16 %49 to i32
  %54 = getelementptr i8, ptr %0, i32 1420
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr i8, ptr %55, i32 %53
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %58

58:                                               ; preds = %52, %51
  %59 = phi i32 [ -1, %51 ], [ %57, %52 ]
  %60 = getelementptr i32, ptr %33, i32 1
  store i32 %59, ptr %33, align 4
  %61 = load ptr, ptr %8, align 8
  br label %62

62:                                               ; preds = %58, %42, %38
  %63 = phi ptr [ %61, %58 ], [ %32, %42 ], [ %9, %38 ]
  %64 = phi i32 [ %34, %58 ], [ %34, %42 ], [ 9, %38 ]
  %65 = phi ptr [ %60, %58 ], [ null, %42 ], [ null, %38 ]
  %66 = add nuw nsw i32 %64, 1
  br label %67

67:                                               ; preds = %62, %31
  %68 = phi ptr [ %63, %62 ], [ %32, %31 ]
  %69 = phi ptr [ %65, %62 ], [ %33, %31 ]
  %70 = phi i32 [ %66, %62 ], [ %34, %31 ]
  %71 = getelementptr i16, ptr %68, i32 2
  %72 = load i16, ptr %71, align 2
  %73 = icmp eq i16 %72, -1
  br i1 %73, label %103, label %78

74:                                               ; preds = %38
  %75 = getelementptr i16, ptr %9, i32 2
  %76 = load i16, ptr %75, align 2
  %77 = icmp eq i16 %76, -1
  br i1 %77, label %110, label %98

78:                                               ; preds = %67
  %79 = icmp eq ptr %69, null
  br i1 %79, label %98, label %80

80:                                               ; preds = %78
  %81 = load i32, ptr %1, align 4
  %82 = or i32 %81, 4
  store i32 %82, ptr %1, align 4
  %83 = load ptr, ptr %8, align 8
  %84 = getelementptr i16, ptr %83, i32 2
  %85 = load i16, ptr %84, align 2
  %86 = icmp eq i16 %85, -1
  br i1 %86, label %87, label %88, !prof !9

87:                                               ; preds = %80
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %94

88:                                               ; preds = %80
  %89 = zext i16 %85 to i32
  %90 = getelementptr i8, ptr %0, i32 1420
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr i8, ptr %91, i32 %89
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %92) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %94

94:                                               ; preds = %88, %87
  %95 = phi i32 [ -1, %87 ], [ %93, %88 ]
  %96 = getelementptr i32, ptr %69, i32 1
  store i32 %95, ptr %69, align 4
  %97 = load ptr, ptr %8, align 8
  br label %98

98:                                               ; preds = %94, %78, %74
  %99 = phi ptr [ %97, %94 ], [ %68, %78 ], [ %9, %74 ]
  %100 = phi i32 [ %70, %94 ], [ %70, %78 ], [ 9, %74 ]
  %101 = phi ptr [ %96, %94 ], [ null, %78 ], [ null, %74 ]
  %102 = add nuw nsw i32 %100, 1
  br label %103

103:                                              ; preds = %98, %67
  %104 = phi ptr [ %99, %98 ], [ %68, %67 ]
  %105 = phi ptr [ %101, %98 ], [ %69, %67 ]
  %106 = phi i32 [ %102, %98 ], [ %70, %67 ]
  %107 = getelementptr i16, ptr %104, i32 3
  %108 = load i16, ptr %107, align 2
  %109 = icmp eq i16 %108, -1
  br i1 %109, label %139, label %114

110:                                              ; preds = %74
  %111 = getelementptr i16, ptr %9, i32 3
  %112 = load i16, ptr %111, align 2
  %113 = icmp eq i16 %112, -1
  br i1 %113, label %146, label %134

114:                                              ; preds = %103
  %115 = icmp eq ptr %105, null
  br i1 %115, label %134, label %116

116:                                              ; preds = %114
  %117 = load i32, ptr %1, align 4
  %118 = or i32 %117, 8
  store i32 %118, ptr %1, align 4
  %119 = load ptr, ptr %8, align 8
  %120 = getelementptr i16, ptr %119, i32 3
  %121 = load i16, ptr %120, align 2
  %122 = icmp eq i16 %121, -1
  br i1 %122, label %123, label %124, !prof !9

123:                                              ; preds = %116
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %130

124:                                              ; preds = %116
  %125 = zext i16 %121 to i32
  %126 = getelementptr i8, ptr %0, i32 1420
  %127 = load ptr, ptr %126, align 4
  %128 = getelementptr i8, ptr %127, i32 %125
  %129 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %128) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %130

130:                                              ; preds = %124, %123
  %131 = phi i32 [ -1, %123 ], [ %129, %124 ]
  %132 = getelementptr i32, ptr %105, i32 1
  store i32 %131, ptr %105, align 4
  %133 = load ptr, ptr %8, align 8
  br label %134

134:                                              ; preds = %130, %114, %110
  %135 = phi ptr [ %133, %130 ], [ %104, %114 ], [ %9, %110 ]
  %136 = phi i32 [ %106, %130 ], [ %106, %114 ], [ 9, %110 ]
  %137 = phi ptr [ %132, %130 ], [ null, %114 ], [ null, %110 ]
  %138 = add nuw nsw i32 %136, 1
  br label %139

139:                                              ; preds = %134, %103
  %140 = phi ptr [ %135, %134 ], [ %104, %103 ]
  %141 = phi ptr [ %137, %134 ], [ %105, %103 ]
  %142 = phi i32 [ %138, %134 ], [ %106, %103 ]
  %143 = getelementptr i16, ptr %140, i32 4
  %144 = load i16, ptr %143, align 2
  %145 = icmp eq i16 %144, -1
  br i1 %145, label %175, label %150

146:                                              ; preds = %110
  %147 = getelementptr i16, ptr %9, i32 4
  %148 = load i16, ptr %147, align 2
  %149 = icmp eq i16 %148, -1
  br i1 %149, label %182, label %170

150:                                              ; preds = %139
  %151 = icmp eq ptr %141, null
  br i1 %151, label %170, label %152

152:                                              ; preds = %150
  %153 = load i32, ptr %1, align 4
  %154 = or i32 %153, 16
  store i32 %154, ptr %1, align 4
  %155 = load ptr, ptr %8, align 8
  %156 = getelementptr i16, ptr %155, i32 4
  %157 = load i16, ptr %156, align 2
  %158 = icmp eq i16 %157, -1
  br i1 %158, label %159, label %160, !prof !9

159:                                              ; preds = %152
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %166

160:                                              ; preds = %152
  %161 = zext i16 %157 to i32
  %162 = getelementptr i8, ptr %0, i32 1420
  %163 = load ptr, ptr %162, align 4
  %164 = getelementptr i8, ptr %163, i32 %161
  %165 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %164) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %166

166:                                              ; preds = %160, %159
  %167 = phi i32 [ -1, %159 ], [ %165, %160 ]
  %168 = getelementptr i32, ptr %141, i32 1
  store i32 %167, ptr %141, align 4
  %169 = load ptr, ptr %8, align 8
  br label %170

170:                                              ; preds = %166, %150, %146
  %171 = phi ptr [ %169, %166 ], [ %140, %150 ], [ %9, %146 ]
  %172 = phi i32 [ %142, %166 ], [ %142, %150 ], [ 9, %146 ]
  %173 = phi ptr [ %168, %166 ], [ null, %150 ], [ null, %146 ]
  %174 = add nuw nsw i32 %172, 1
  br label %175

175:                                              ; preds = %170, %139
  %176 = phi ptr [ %171, %170 ], [ %140, %139 ]
  %177 = phi ptr [ %173, %170 ], [ %141, %139 ]
  %178 = phi i32 [ %174, %170 ], [ %142, %139 ]
  %179 = getelementptr i16, ptr %176, i32 5
  %180 = load i16, ptr %179, align 2
  %181 = icmp eq i16 %180, -1
  br i1 %181, label %211, label %186

182:                                              ; preds = %146
  %183 = getelementptr i16, ptr %9, i32 5
  %184 = load i16, ptr %183, align 2
  %185 = icmp eq i16 %184, -1
  br i1 %185, label %218, label %206

186:                                              ; preds = %175
  %187 = icmp eq ptr %177, null
  br i1 %187, label %206, label %188

188:                                              ; preds = %186
  %189 = load i32, ptr %1, align 4
  %190 = or i32 %189, 32
  store i32 %190, ptr %1, align 4
  %191 = load ptr, ptr %8, align 8
  %192 = getelementptr i16, ptr %191, i32 5
  %193 = load i16, ptr %192, align 2
  %194 = icmp eq i16 %193, -1
  br i1 %194, label %195, label %196, !prof !9

195:                                              ; preds = %188
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %202

196:                                              ; preds = %188
  %197 = zext i16 %193 to i32
  %198 = getelementptr i8, ptr %0, i32 1420
  %199 = load ptr, ptr %198, align 4
  %200 = getelementptr i8, ptr %199, i32 %197
  %201 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %200) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %202

202:                                              ; preds = %196, %195
  %203 = phi i32 [ -1, %195 ], [ %201, %196 ]
  %204 = getelementptr i32, ptr %177, i32 1
  store i32 %203, ptr %177, align 4
  %205 = load ptr, ptr %8, align 8
  br label %206

206:                                              ; preds = %202, %186, %182
  %207 = phi ptr [ %205, %202 ], [ %176, %186 ], [ %9, %182 ]
  %208 = phi i32 [ %178, %202 ], [ %178, %186 ], [ 9, %182 ]
  %209 = phi ptr [ %204, %202 ], [ null, %186 ], [ null, %182 ]
  %210 = add nuw nsw i32 %208, 1
  br label %211

211:                                              ; preds = %206, %175
  %212 = phi ptr [ %207, %206 ], [ %176, %175 ]
  %213 = phi ptr [ %209, %206 ], [ %177, %175 ]
  %214 = phi i32 [ %210, %206 ], [ %178, %175 ]
  %215 = getelementptr i16, ptr %212, i32 6
  %216 = load i16, ptr %215, align 2
  %217 = icmp eq i16 %216, -1
  br i1 %217, label %245, label %222

218:                                              ; preds = %182
  %219 = getelementptr i16, ptr %9, i32 6
  %220 = load i16, ptr %219, align 2
  %221 = icmp eq i16 %220, -1
  br i1 %221, label %245, label %241

222:                                              ; preds = %211
  %223 = icmp eq ptr %213, null
  br i1 %223, label %241, label %224

224:                                              ; preds = %222
  %225 = load i32, ptr %1, align 4
  %226 = or i32 %225, 64
  store i32 %226, ptr %1, align 4
  %227 = load ptr, ptr %8, align 8
  %228 = getelementptr i16, ptr %227, i32 6
  %229 = load i16, ptr %228, align 2
  %230 = icmp eq i16 %229, -1
  br i1 %230, label %231, label %232, !prof !9

231:                                              ; preds = %224
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %238

232:                                              ; preds = %224
  %233 = zext i16 %229 to i32
  %234 = getelementptr i8, ptr %0, i32 1420
  %235 = load ptr, ptr %234, align 4
  %236 = getelementptr i8, ptr %235, i32 %233
  %237 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %236) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %238

238:                                              ; preds = %232, %231
  %239 = phi i32 [ -1, %231 ], [ %237, %232 ]
  %240 = getelementptr i32, ptr %213, i32 1
  store i32 %239, ptr %213, align 4
  br label %241

241:                                              ; preds = %238, %222, %218
  %242 = phi i32 [ %214, %238 ], [ %214, %222 ], [ 9, %218 ]
  %243 = phi ptr [ %240, %238 ], [ null, %222 ], [ null, %218 ]
  %244 = add nuw nsw i32 %242, 1
  br label %245

245:                                              ; preds = %241, %218, %211
  %246 = phi ptr [ %243, %241 ], [ %213, %211 ], [ null, %218 ]
  %247 = phi i32 [ %244, %241 ], [ %214, %211 ], [ 9, %218 ]
  %248 = getelementptr inbounds %struct.sh_eth_cpu_data, ptr %4, i32 0, i32 15
  %249 = load i32, ptr %248, align 4
  %250 = and i32 %249, 4096
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %279

252:                                              ; preds = %245
  %253 = load ptr, ptr %8, align 8
  %254 = getelementptr i16, ptr %253, i32 7
  %255 = load i16, ptr %254, align 2
  %256 = icmp eq i16 %255, -1
  br i1 %256, label %279, label %257

257:                                              ; preds = %252
  %258 = icmp eq ptr %246, null
  br i1 %258, label %276, label %259

259:                                              ; preds = %257
  %260 = load i32, ptr %1, align 4
  %261 = or i32 %260, 128
  store i32 %261, ptr %1, align 4
  %262 = load ptr, ptr %8, align 8
  %263 = getelementptr i16, ptr %262, i32 7
  %264 = load i16, ptr %263, align 2
  %265 = icmp eq i16 %264, -1
  br i1 %265, label %266, label %267, !prof !9

266:                                              ; preds = %259
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %273

267:                                              ; preds = %259
  %268 = zext i16 %264 to i32
  %269 = getelementptr i8, ptr %0, i32 1420
  %270 = load ptr, ptr %269, align 4
  %271 = getelementptr i8, ptr %270, i32 %268
  %272 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %271) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %273

273:                                              ; preds = %267, %266
  %274 = phi i32 [ -1, %266 ], [ %272, %267 ]
  %275 = getelementptr i32, ptr %246, i32 1
  store i32 %274, ptr %246, align 4
  br label %276

276:                                              ; preds = %273, %257
  %277 = phi ptr [ %275, %273 ], [ null, %257 ]
  %278 = add nuw nsw i32 %247, 1
  br label %279

279:                                              ; preds = %276, %252, %245
  %280 = phi ptr [ %246, %245 ], [ %277, %276 ], [ %246, %252 ]
  %281 = phi i32 [ %247, %245 ], [ %278, %276 ], [ %247, %252 ]
  %282 = load ptr, ptr %8, align 8
  %283 = getelementptr i16, ptr %282, i32 8
  %284 = load i16, ptr %283, align 2
  %285 = icmp eq i16 %284, -1
  br i1 %285, label %310, label %286

286:                                              ; preds = %279
  %287 = icmp eq ptr %280, null
  br i1 %287, label %306, label %288

288:                                              ; preds = %286
  %289 = load i32, ptr %1, align 4
  %290 = or i32 %289, 256
  store i32 %290, ptr %1, align 4
  %291 = load ptr, ptr %8, align 8
  %292 = getelementptr i16, ptr %291, i32 8
  %293 = load i16, ptr %292, align 2
  %294 = icmp eq i16 %293, -1
  br i1 %294, label %295, label %296, !prof !9

295:                                              ; preds = %288
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %302

296:                                              ; preds = %288
  %297 = zext i16 %293 to i32
  %298 = getelementptr i8, ptr %0, i32 1420
  %299 = load ptr, ptr %298, align 4
  %300 = getelementptr i8, ptr %299, i32 %297
  %301 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %300) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %302

302:                                              ; preds = %296, %295
  %303 = phi i32 [ -1, %295 ], [ %301, %296 ]
  %304 = getelementptr i32, ptr %280, i32 1
  store i32 %303, ptr %280, align 4
  %305 = load ptr, ptr %8, align 8
  br label %306

306:                                              ; preds = %302, %286
  %307 = phi ptr [ %305, %302 ], [ %282, %286 ]
  %308 = phi ptr [ %304, %302 ], [ null, %286 ]
  %309 = add nuw nsw i32 %281, 1
  br label %310

310:                                              ; preds = %306, %279
  %311 = phi ptr [ %307, %306 ], [ %282, %279 ]
  %312 = phi ptr [ %308, %306 ], [ %280, %279 ]
  %313 = phi i32 [ %309, %306 ], [ %281, %279 ]
  %314 = getelementptr i16, ptr %311, i32 9
  %315 = load i16, ptr %314, align 2
  %316 = icmp eq i16 %315, -1
  br i1 %316, label %341, label %317

317:                                              ; preds = %310
  %318 = icmp eq ptr %312, null
  br i1 %318, label %337, label %319

319:                                              ; preds = %317
  %320 = load i32, ptr %1, align 4
  %321 = or i32 %320, 512
  store i32 %321, ptr %1, align 4
  %322 = load ptr, ptr %8, align 8
  %323 = getelementptr i16, ptr %322, i32 9
  %324 = load i16, ptr %323, align 2
  %325 = icmp eq i16 %324, -1
  br i1 %325, label %326, label %327, !prof !9

326:                                              ; preds = %319
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %333

327:                                              ; preds = %319
  %328 = zext i16 %324 to i32
  %329 = getelementptr i8, ptr %0, i32 1420
  %330 = load ptr, ptr %329, align 4
  %331 = getelementptr i8, ptr %330, i32 %328
  %332 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %331) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %333

333:                                              ; preds = %327, %326
  %334 = phi i32 [ -1, %326 ], [ %332, %327 ]
  %335 = getelementptr i32, ptr %312, i32 1
  store i32 %334, ptr %312, align 4
  %336 = load ptr, ptr %8, align 8
  br label %337

337:                                              ; preds = %333, %317
  %338 = phi ptr [ %336, %333 ], [ %311, %317 ]
  %339 = phi ptr [ %335, %333 ], [ null, %317 ]
  %340 = add nuw nsw i32 %313, 1
  br label %341

341:                                              ; preds = %337, %310
  %342 = phi ptr [ %338, %337 ], [ %311, %310 ]
  %343 = phi ptr [ %339, %337 ], [ %312, %310 ]
  %344 = phi i32 [ %340, %337 ], [ %313, %310 ]
  %345 = getelementptr i16, ptr %342, i32 10
  %346 = load i16, ptr %345, align 2
  %347 = icmp eq i16 %346, -1
  br i1 %347, label %370, label %348

348:                                              ; preds = %341
  %349 = icmp eq ptr %343, null
  br i1 %349, label %367, label %350

350:                                              ; preds = %348
  %351 = load i32, ptr %1, align 4
  %352 = or i32 %351, 1024
  store i32 %352, ptr %1, align 4
  %353 = load ptr, ptr %8, align 8
  %354 = getelementptr i16, ptr %353, i32 10
  %355 = load i16, ptr %354, align 2
  %356 = icmp eq i16 %355, -1
  br i1 %356, label %357, label %358, !prof !9

357:                                              ; preds = %350
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %364

358:                                              ; preds = %350
  %359 = zext i16 %355 to i32
  %360 = getelementptr i8, ptr %0, i32 1420
  %361 = load ptr, ptr %360, align 4
  %362 = getelementptr i8, ptr %361, i32 %359
  %363 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %362) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %364

364:                                              ; preds = %358, %357
  %365 = phi i32 [ -1, %357 ], [ %363, %358 ]
  %366 = getelementptr i32, ptr %343, i32 1
  store i32 %365, ptr %343, align 4
  br label %367

367:                                              ; preds = %364, %348
  %368 = phi ptr [ %366, %364 ], [ null, %348 ]
  %369 = add nuw nsw i32 %344, 1
  br label %370

370:                                              ; preds = %367, %341
  %371 = phi ptr [ %368, %367 ], [ %343, %341 ]
  %372 = phi i32 [ %369, %367 ], [ %344, %341 ]
  %373 = load i32, ptr %248, align 4
  %374 = and i32 %373, 4096
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %376, label %403

376:                                              ; preds = %370
  %377 = load ptr, ptr %8, align 8
  %378 = getelementptr i16, ptr %377, i32 11
  %379 = load i16, ptr %378, align 2
  %380 = icmp eq i16 %379, -1
  br i1 %380, label %403, label %381

381:                                              ; preds = %376
  %382 = icmp eq ptr %371, null
  br i1 %382, label %400, label %383

383:                                              ; preds = %381
  %384 = load i32, ptr %1, align 4
  %385 = or i32 %384, 2048
  store i32 %385, ptr %1, align 4
  %386 = load ptr, ptr %8, align 8
  %387 = getelementptr i16, ptr %386, i32 11
  %388 = load i16, ptr %387, align 2
  %389 = icmp eq i16 %388, -1
  br i1 %389, label %390, label %391, !prof !9

390:                                              ; preds = %383
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %397

391:                                              ; preds = %383
  %392 = zext i16 %388 to i32
  %393 = getelementptr i8, ptr %0, i32 1420
  %394 = load ptr, ptr %393, align 4
  %395 = getelementptr i8, ptr %394, i32 %392
  %396 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %395) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %397

397:                                              ; preds = %391, %390
  %398 = phi i32 [ -1, %390 ], [ %396, %391 ]
  %399 = getelementptr i32, ptr %371, i32 1
  store i32 %398, ptr %371, align 4
  br label %400

400:                                              ; preds = %397, %381
  %401 = phi ptr [ %399, %397 ], [ null, %381 ]
  %402 = add nuw nsw i32 %372, 1
  br label %403

403:                                              ; preds = %400, %376, %370
  %404 = phi ptr [ %371, %370 ], [ %401, %400 ], [ %371, %376 ]
  %405 = phi i32 [ %372, %370 ], [ %402, %400 ], [ %372, %376 ]
  %406 = load ptr, ptr %8, align 8
  %407 = getelementptr i16, ptr %406, i32 12
  %408 = load i16, ptr %407, align 2
  %409 = icmp eq i16 %408, -1
  br i1 %409, label %434, label %410

410:                                              ; preds = %403
  %411 = icmp eq ptr %404, null
  br i1 %411, label %430, label %412

412:                                              ; preds = %410
  %413 = load i32, ptr %1, align 4
  %414 = or i32 %413, 4096
  store i32 %414, ptr %1, align 4
  %415 = load ptr, ptr %8, align 8
  %416 = getelementptr i16, ptr %415, i32 12
  %417 = load i16, ptr %416, align 2
  %418 = icmp eq i16 %417, -1
  br i1 %418, label %419, label %420, !prof !9

419:                                              ; preds = %412
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %426

420:                                              ; preds = %412
  %421 = zext i16 %417 to i32
  %422 = getelementptr i8, ptr %0, i32 1420
  %423 = load ptr, ptr %422, align 4
  %424 = getelementptr i8, ptr %423, i32 %421
  %425 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %424) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %426

426:                                              ; preds = %420, %419
  %427 = phi i32 [ -1, %419 ], [ %425, %420 ]
  %428 = getelementptr i32, ptr %404, i32 1
  store i32 %427, ptr %404, align 4
  %429 = load ptr, ptr %8, align 8
  br label %430

430:                                              ; preds = %426, %410
  %431 = phi ptr [ %429, %426 ], [ %406, %410 ]
  %432 = phi ptr [ %428, %426 ], [ null, %410 ]
  %433 = add nuw nsw i32 %405, 1
  br label %434

434:                                              ; preds = %430, %403
  %435 = phi ptr [ %431, %430 ], [ %406, %403 ]
  %436 = phi ptr [ %432, %430 ], [ %404, %403 ]
  %437 = phi i32 [ %433, %430 ], [ %405, %403 ]
  %438 = getelementptr i16, ptr %435, i32 13
  %439 = load i16, ptr %438, align 2
  %440 = icmp eq i16 %439, -1
  br i1 %440, label %465, label %441

441:                                              ; preds = %434
  %442 = icmp eq ptr %436, null
  br i1 %442, label %461, label %443

443:                                              ; preds = %441
  %444 = load i32, ptr %1, align 4
  %445 = or i32 %444, 8192
  store i32 %445, ptr %1, align 4
  %446 = load ptr, ptr %8, align 8
  %447 = getelementptr i16, ptr %446, i32 13
  %448 = load i16, ptr %447, align 2
  %449 = icmp eq i16 %448, -1
  br i1 %449, label %450, label %451, !prof !9

450:                                              ; preds = %443
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %457

451:                                              ; preds = %443
  %452 = zext i16 %448 to i32
  %453 = getelementptr i8, ptr %0, i32 1420
  %454 = load ptr, ptr %453, align 4
  %455 = getelementptr i8, ptr %454, i32 %452
  %456 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %455) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %457

457:                                              ; preds = %451, %450
  %458 = phi i32 [ -1, %450 ], [ %456, %451 ]
  %459 = getelementptr i32, ptr %436, i32 1
  store i32 %458, ptr %436, align 4
  %460 = load ptr, ptr %8, align 8
  br label %461

461:                                              ; preds = %457, %441
  %462 = phi ptr [ %460, %457 ], [ %435, %441 ]
  %463 = phi ptr [ %459, %457 ], [ null, %441 ]
  %464 = add nuw nsw i32 %437, 1
  br label %465

465:                                              ; preds = %461, %434
  %466 = phi ptr [ %462, %461 ], [ %435, %434 ]
  %467 = phi ptr [ %463, %461 ], [ %436, %434 ]
  %468 = phi i32 [ %464, %461 ], [ %437, %434 ]
  %469 = getelementptr i16, ptr %466, i32 14
  %470 = load i16, ptr %469, align 2
  %471 = icmp eq i16 %470, -1
  br i1 %471, label %496, label %472

472:                                              ; preds = %465
  %473 = icmp eq ptr %467, null
  br i1 %473, label %492, label %474

474:                                              ; preds = %472
  %475 = load i32, ptr %1, align 4
  %476 = or i32 %475, 16384
  store i32 %476, ptr %1, align 4
  %477 = load ptr, ptr %8, align 8
  %478 = getelementptr i16, ptr %477, i32 14
  %479 = load i16, ptr %478, align 2
  %480 = icmp eq i16 %479, -1
  br i1 %480, label %481, label %482, !prof !9

481:                                              ; preds = %474
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %488

482:                                              ; preds = %474
  %483 = zext i16 %479 to i32
  %484 = getelementptr i8, ptr %0, i32 1420
  %485 = load ptr, ptr %484, align 4
  %486 = getelementptr i8, ptr %485, i32 %483
  %487 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %486) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %488

488:                                              ; preds = %482, %481
  %489 = phi i32 [ -1, %481 ], [ %487, %482 ]
  %490 = getelementptr i32, ptr %467, i32 1
  store i32 %489, ptr %467, align 4
  %491 = load ptr, ptr %8, align 8
  br label %492

492:                                              ; preds = %488, %472
  %493 = phi ptr [ %491, %488 ], [ %466, %472 ]
  %494 = phi ptr [ %490, %488 ], [ null, %472 ]
  %495 = add nuw nsw i32 %468, 1
  br label %496

496:                                              ; preds = %492, %465
  %497 = phi ptr [ %493, %492 ], [ %466, %465 ]
  %498 = phi ptr [ %494, %492 ], [ %467, %465 ]
  %499 = phi i32 [ %495, %492 ], [ %468, %465 ]
  %500 = getelementptr i16, ptr %497, i32 15
  %501 = load i16, ptr %500, align 2
  %502 = icmp eq i16 %501, -1
  br i1 %502, label %527, label %503

503:                                              ; preds = %496
  %504 = icmp eq ptr %498, null
  br i1 %504, label %523, label %505

505:                                              ; preds = %503
  %506 = load i32, ptr %1, align 4
  %507 = or i32 %506, 32768
  store i32 %507, ptr %1, align 4
  %508 = load ptr, ptr %8, align 8
  %509 = getelementptr i16, ptr %508, i32 15
  %510 = load i16, ptr %509, align 2
  %511 = icmp eq i16 %510, -1
  br i1 %511, label %512, label %513, !prof !9

512:                                              ; preds = %505
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %519

513:                                              ; preds = %505
  %514 = zext i16 %510 to i32
  %515 = getelementptr i8, ptr %0, i32 1420
  %516 = load ptr, ptr %515, align 4
  %517 = getelementptr i8, ptr %516, i32 %514
  %518 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %517) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %519

519:                                              ; preds = %513, %512
  %520 = phi i32 [ -1, %512 ], [ %518, %513 ]
  %521 = getelementptr i32, ptr %498, i32 1
  store i32 %520, ptr %498, align 4
  %522 = load ptr, ptr %8, align 8
  br label %523

523:                                              ; preds = %519, %503
  %524 = phi ptr [ %522, %519 ], [ %497, %503 ]
  %525 = phi ptr [ %521, %519 ], [ null, %503 ]
  %526 = add nuw nsw i32 %499, 1
  br label %527

527:                                              ; preds = %523, %496
  %528 = phi ptr [ %524, %523 ], [ %497, %496 ]
  %529 = phi ptr [ %525, %523 ], [ %498, %496 ]
  %530 = phi i32 [ %526, %523 ], [ %499, %496 ]
  %531 = getelementptr i16, ptr %528, i32 16
  %532 = load i16, ptr %531, align 2
  %533 = icmp eq i16 %532, -1
  br i1 %533, label %558, label %534

534:                                              ; preds = %527
  %535 = icmp eq ptr %529, null
  br i1 %535, label %554, label %536

536:                                              ; preds = %534
  %537 = load i32, ptr %1, align 4
  %538 = or i32 %537, 65536
  store i32 %538, ptr %1, align 4
  %539 = load ptr, ptr %8, align 8
  %540 = getelementptr i16, ptr %539, i32 16
  %541 = load i16, ptr %540, align 2
  %542 = icmp eq i16 %541, -1
  br i1 %542, label %543, label %544, !prof !9

543:                                              ; preds = %536
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %550

544:                                              ; preds = %536
  %545 = zext i16 %541 to i32
  %546 = getelementptr i8, ptr %0, i32 1420
  %547 = load ptr, ptr %546, align 4
  %548 = getelementptr i8, ptr %547, i32 %545
  %549 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %548) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %550

550:                                              ; preds = %544, %543
  %551 = phi i32 [ -1, %543 ], [ %549, %544 ]
  %552 = getelementptr i32, ptr %529, i32 1
  store i32 %551, ptr %529, align 4
  %553 = load ptr, ptr %8, align 8
  br label %554

554:                                              ; preds = %550, %534
  %555 = phi ptr [ %553, %550 ], [ %528, %534 ]
  %556 = phi ptr [ %552, %550 ], [ null, %534 ]
  %557 = add nuw nsw i32 %530, 1
  br label %558

558:                                              ; preds = %554, %527
  %559 = phi ptr [ %555, %554 ], [ %528, %527 ]
  %560 = phi ptr [ %556, %554 ], [ %529, %527 ]
  %561 = phi i32 [ %557, %554 ], [ %530, %527 ]
  %562 = getelementptr i16, ptr %559, i32 17
  %563 = load i16, ptr %562, align 2
  %564 = icmp eq i16 %563, -1
  br i1 %564, label %589, label %565

565:                                              ; preds = %558
  %566 = icmp eq ptr %560, null
  br i1 %566, label %585, label %567

567:                                              ; preds = %565
  %568 = load i32, ptr %1, align 4
  %569 = or i32 %568, 131072
  store i32 %569, ptr %1, align 4
  %570 = load ptr, ptr %8, align 8
  %571 = getelementptr i16, ptr %570, i32 17
  %572 = load i16, ptr %571, align 2
  %573 = icmp eq i16 %572, -1
  br i1 %573, label %574, label %575, !prof !9

574:                                              ; preds = %567
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %581

575:                                              ; preds = %567
  %576 = zext i16 %572 to i32
  %577 = getelementptr i8, ptr %0, i32 1420
  %578 = load ptr, ptr %577, align 4
  %579 = getelementptr i8, ptr %578, i32 %576
  %580 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %579) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %581

581:                                              ; preds = %575, %574
  %582 = phi i32 [ -1, %574 ], [ %580, %575 ]
  %583 = getelementptr i32, ptr %560, i32 1
  store i32 %582, ptr %560, align 4
  %584 = load ptr, ptr %8, align 8
  br label %585

585:                                              ; preds = %581, %565
  %586 = phi ptr [ %584, %581 ], [ %559, %565 ]
  %587 = phi ptr [ %583, %581 ], [ null, %565 ]
  %588 = add nuw nsw i32 %561, 1
  br label %589

589:                                              ; preds = %585, %558
  %590 = phi ptr [ %586, %585 ], [ %559, %558 ]
  %591 = phi ptr [ %587, %585 ], [ %560, %558 ]
  %592 = phi i32 [ %588, %585 ], [ %561, %558 ]
  %593 = getelementptr i16, ptr %590, i32 18
  %594 = load i16, ptr %593, align 2
  %595 = icmp eq i16 %594, -1
  br i1 %595, label %620, label %596

596:                                              ; preds = %589
  %597 = icmp eq ptr %591, null
  br i1 %597, label %616, label %598

598:                                              ; preds = %596
  %599 = load i32, ptr %1, align 4
  %600 = or i32 %599, 262144
  store i32 %600, ptr %1, align 4
  %601 = load ptr, ptr %8, align 8
  %602 = getelementptr i16, ptr %601, i32 18
  %603 = load i16, ptr %602, align 2
  %604 = icmp eq i16 %603, -1
  br i1 %604, label %605, label %606, !prof !9

605:                                              ; preds = %598
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %612

606:                                              ; preds = %598
  %607 = zext i16 %603 to i32
  %608 = getelementptr i8, ptr %0, i32 1420
  %609 = load ptr, ptr %608, align 4
  %610 = getelementptr i8, ptr %609, i32 %607
  %611 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %610) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %612

612:                                              ; preds = %606, %605
  %613 = phi i32 [ -1, %605 ], [ %611, %606 ]
  %614 = getelementptr i32, ptr %591, i32 1
  store i32 %613, ptr %591, align 4
  %615 = load ptr, ptr %8, align 8
  br label %616

616:                                              ; preds = %612, %596
  %617 = phi ptr [ %615, %612 ], [ %590, %596 ]
  %618 = phi ptr [ %614, %612 ], [ null, %596 ]
  %619 = add nuw nsw i32 %592, 1
  br label %620

620:                                              ; preds = %616, %589
  %621 = phi ptr [ %617, %616 ], [ %590, %589 ]
  %622 = phi ptr [ %618, %616 ], [ %591, %589 ]
  %623 = phi i32 [ %619, %616 ], [ %592, %589 ]
  %624 = getelementptr i16, ptr %621, i32 20
  %625 = load i16, ptr %624, align 2
  %626 = icmp eq i16 %625, -1
  br i1 %626, label %651, label %627

627:                                              ; preds = %620
  %628 = icmp eq ptr %622, null
  br i1 %628, label %647, label %629

629:                                              ; preds = %627
  %630 = load i32, ptr %1, align 4
  %631 = or i32 %630, 1048576
  store i32 %631, ptr %1, align 4
  %632 = load ptr, ptr %8, align 8
  %633 = getelementptr i16, ptr %632, i32 20
  %634 = load i16, ptr %633, align 2
  %635 = icmp eq i16 %634, -1
  br i1 %635, label %636, label %637, !prof !9

636:                                              ; preds = %629
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %643

637:                                              ; preds = %629
  %638 = zext i16 %634 to i32
  %639 = getelementptr i8, ptr %0, i32 1420
  %640 = load ptr, ptr %639, align 4
  %641 = getelementptr i8, ptr %640, i32 %638
  %642 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %641) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %643

643:                                              ; preds = %637, %636
  %644 = phi i32 [ -1, %636 ], [ %642, %637 ]
  %645 = getelementptr i32, ptr %622, i32 1
  store i32 %644, ptr %622, align 4
  %646 = load ptr, ptr %8, align 8
  br label %647

647:                                              ; preds = %643, %627
  %648 = phi ptr [ %646, %643 ], [ %621, %627 ]
  %649 = phi ptr [ %645, %643 ], [ null, %627 ]
  %650 = add nuw nsw i32 %623, 1
  br label %651

651:                                              ; preds = %647, %620
  %652 = phi ptr [ %648, %647 ], [ %621, %620 ]
  %653 = phi ptr [ %649, %647 ], [ %622, %620 ]
  %654 = phi i32 [ %650, %647 ], [ %623, %620 ]
  %655 = getelementptr i16, ptr %652, i32 21
  %656 = load i16, ptr %655, align 2
  %657 = icmp eq i16 %656, -1
  br i1 %657, label %680, label %658

658:                                              ; preds = %651
  %659 = icmp eq ptr %653, null
  br i1 %659, label %677, label %660

660:                                              ; preds = %658
  %661 = load i32, ptr %1, align 4
  %662 = or i32 %661, 2097152
  store i32 %662, ptr %1, align 4
  %663 = load ptr, ptr %8, align 8
  %664 = getelementptr i16, ptr %663, i32 21
  %665 = load i16, ptr %664, align 2
  %666 = icmp eq i16 %665, -1
  br i1 %666, label %667, label %668, !prof !9

667:                                              ; preds = %660
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %674

668:                                              ; preds = %660
  %669 = zext i16 %665 to i32
  %670 = getelementptr i8, ptr %0, i32 1420
  %671 = load ptr, ptr %670, align 4
  %672 = getelementptr i8, ptr %671, i32 %669
  %673 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %672) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %674

674:                                              ; preds = %668, %667
  %675 = phi i32 [ -1, %667 ], [ %673, %668 ]
  %676 = getelementptr i32, ptr %653, i32 1
  store i32 %675, ptr %653, align 4
  br label %677

677:                                              ; preds = %674, %658
  %678 = phi ptr [ %676, %674 ], [ null, %658 ]
  %679 = add nuw nsw i32 %654, 1
  br label %680

680:                                              ; preds = %677, %651
  %681 = phi ptr [ %678, %677 ], [ %653, %651 ]
  %682 = phi i32 [ %679, %677 ], [ %654, %651 ]
  %683 = load i32, ptr %248, align 4
  %684 = and i32 %683, 131072
  %685 = icmp eq i32 %684, 0
  br i1 %685, label %713, label %686

686:                                              ; preds = %680
  %687 = load ptr, ptr %8, align 8
  %688 = getelementptr i16, ptr %687, i32 22
  %689 = load i16, ptr %688, align 2
  %690 = icmp eq i16 %689, -1
  br i1 %690, label %713, label %691

691:                                              ; preds = %686
  %692 = icmp eq ptr %681, null
  br i1 %692, label %710, label %693

693:                                              ; preds = %691
  %694 = load i32, ptr %1, align 4
  %695 = or i32 %694, 4194304
  store i32 %695, ptr %1, align 4
  %696 = load ptr, ptr %8, align 8
  %697 = getelementptr i16, ptr %696, i32 22
  %698 = load i16, ptr %697, align 2
  %699 = icmp eq i16 %698, -1
  br i1 %699, label %700, label %701, !prof !9

700:                                              ; preds = %693
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %707

701:                                              ; preds = %693
  %702 = zext i16 %698 to i32
  %703 = getelementptr i8, ptr %0, i32 1420
  %704 = load ptr, ptr %703, align 4
  %705 = getelementptr i8, ptr %704, i32 %702
  %706 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %705) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %707

707:                                              ; preds = %701, %700
  %708 = phi i32 [ -1, %700 ], [ %706, %701 ]
  %709 = getelementptr i32, ptr %681, i32 1
  store i32 %708, ptr %681, align 4
  br label %710

710:                                              ; preds = %707, %691
  %711 = phi ptr [ %709, %707 ], [ null, %691 ]
  %712 = add nuw nsw i32 %682, 1
  br label %713

713:                                              ; preds = %710, %686, %680
  %714 = phi ptr [ %711, %710 ], [ %681, %686 ], [ %681, %680 ]
  %715 = phi i32 [ %712, %710 ], [ %682, %686 ], [ %682, %680 ]
  %716 = load ptr, ptr %8, align 8
  %717 = getelementptr i16, ptr %716, i32 23
  %718 = load i16, ptr %717, align 2
  %719 = icmp eq i16 %718, -1
  br i1 %719, label %742, label %720

720:                                              ; preds = %713
  %721 = icmp eq ptr %714, null
  br i1 %721, label %739, label %722

722:                                              ; preds = %720
  %723 = load i32, ptr %1, align 4
  %724 = or i32 %723, 8388608
  store i32 %724, ptr %1, align 4
  %725 = load ptr, ptr %8, align 8
  %726 = getelementptr i16, ptr %725, i32 23
  %727 = load i16, ptr %726, align 2
  %728 = icmp eq i16 %727, -1
  br i1 %728, label %729, label %730, !prof !9

729:                                              ; preds = %722
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %736

730:                                              ; preds = %722
  %731 = zext i16 %727 to i32
  %732 = getelementptr i8, ptr %0, i32 1420
  %733 = load ptr, ptr %732, align 4
  %734 = getelementptr i8, ptr %733, i32 %731
  %735 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %734) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %736

736:                                              ; preds = %730, %729
  %737 = phi i32 [ -1, %729 ], [ %735, %730 ]
  %738 = getelementptr i32, ptr %714, i32 1
  store i32 %737, ptr %714, align 4
  br label %739

739:                                              ; preds = %736, %720
  %740 = phi ptr [ %738, %736 ], [ null, %720 ]
  %741 = add nuw nsw i32 %715, 1
  br label %742

742:                                              ; preds = %739, %713
  %743 = phi ptr [ %740, %739 ], [ %714, %713 ]
  %744 = phi i32 [ %741, %739 ], [ %715, %713 ]
  %745 = load i32, ptr %248, align 4
  %746 = and i32 %745, 512
  %747 = icmp eq i32 %746, 0
  br i1 %747, label %777, label %748

748:                                              ; preds = %742
  %749 = load ptr, ptr %8, align 8
  %750 = getelementptr i16, ptr %749, i32 24
  %751 = load i16, ptr %750, align 2
  %752 = icmp eq i16 %751, -1
  br i1 %752, label %777, label %753

753:                                              ; preds = %748
  %754 = icmp eq ptr %743, null
  br i1 %754, label %773, label %755

755:                                              ; preds = %753
  %756 = load i32, ptr %1, align 4
  %757 = or i32 %756, 16777216
  store i32 %757, ptr %1, align 4
  %758 = load ptr, ptr %8, align 8
  %759 = getelementptr i16, ptr %758, i32 24
  %760 = load i16, ptr %759, align 2
  %761 = icmp eq i16 %760, -1
  br i1 %761, label %762, label %763, !prof !9

762:                                              ; preds = %755
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %769

763:                                              ; preds = %755
  %764 = zext i16 %760 to i32
  %765 = getelementptr i8, ptr %0, i32 1420
  %766 = load ptr, ptr %765, align 4
  %767 = getelementptr i8, ptr %766, i32 %764
  %768 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %767) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %769

769:                                              ; preds = %763, %762
  %770 = phi i32 [ -1, %762 ], [ %768, %763 ]
  %771 = getelementptr i32, ptr %743, i32 1
  store i32 %770, ptr %743, align 4
  %772 = load i32, ptr %248, align 4
  br label %773

773:                                              ; preds = %769, %753
  %774 = phi i32 [ %772, %769 ], [ %745, %753 ]
  %775 = phi ptr [ %771, %769 ], [ null, %753 ]
  %776 = add nuw nsw i32 %744, 1
  br label %777

777:                                              ; preds = %773, %748, %742
  %778 = phi i32 [ %774, %773 ], [ %745, %748 ], [ %745, %742 ]
  %779 = phi ptr [ %775, %773 ], [ %743, %748 ], [ %743, %742 ]
  %780 = phi i32 [ %776, %773 ], [ %744, %748 ], [ %744, %742 ]
  %781 = and i32 %778, 1024
  %782 = icmp eq i32 %781, 0
  br i1 %782, label %783, label %810

783:                                              ; preds = %777
  %784 = load ptr, ptr %8, align 8
  %785 = getelementptr i16, ptr %784, i32 25
  %786 = load i16, ptr %785, align 2
  %787 = icmp eq i16 %786, -1
  br i1 %787, label %810, label %788

788:                                              ; preds = %783
  %789 = icmp eq ptr %779, null
  br i1 %789, label %807, label %790

790:                                              ; preds = %788
  %791 = load i32, ptr %1, align 4
  %792 = or i32 %791, 33554432
  store i32 %792, ptr %1, align 4
  %793 = load ptr, ptr %8, align 8
  %794 = getelementptr i16, ptr %793, i32 25
  %795 = load i16, ptr %794, align 2
  %796 = icmp eq i16 %795, -1
  br i1 %796, label %797, label %798, !prof !9

797:                                              ; preds = %790
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %804

798:                                              ; preds = %790
  %799 = zext i16 %795 to i32
  %800 = getelementptr i8, ptr %0, i32 1420
  %801 = load ptr, ptr %800, align 4
  %802 = getelementptr i8, ptr %801, i32 %799
  %803 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %802) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %804

804:                                              ; preds = %798, %797
  %805 = phi i32 [ -1, %797 ], [ %803, %798 ]
  %806 = getelementptr i32, ptr %779, i32 1
  store i32 %805, ptr %779, align 4
  br label %807

807:                                              ; preds = %804, %788
  %808 = phi ptr [ %806, %804 ], [ null, %788 ]
  %809 = add nuw nsw i32 %780, 1
  br label %810

810:                                              ; preds = %807, %783, %777
  %811 = phi ptr [ %779, %777 ], [ %808, %807 ], [ %779, %783 ]
  %812 = phi i32 [ %780, %777 ], [ %809, %807 ], [ %780, %783 ]
  %813 = load ptr, ptr %8, align 8
  %814 = getelementptr i16, ptr %813, i32 28
  %815 = load i16, ptr %814, align 2
  %816 = icmp eq i16 %815, -1
  br i1 %816, label %841, label %817

817:                                              ; preds = %810
  %818 = icmp eq ptr %811, null
  br i1 %818, label %837, label %819

819:                                              ; preds = %817
  %820 = load i32, ptr %1, align 4
  %821 = or i32 %820, 268435456
  store i32 %821, ptr %1, align 4
  %822 = load ptr, ptr %8, align 8
  %823 = getelementptr i16, ptr %822, i32 28
  %824 = load i16, ptr %823, align 2
  %825 = icmp eq i16 %824, -1
  br i1 %825, label %826, label %827, !prof !9

826:                                              ; preds = %819
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %833

827:                                              ; preds = %819
  %828 = zext i16 %824 to i32
  %829 = getelementptr i8, ptr %0, i32 1420
  %830 = load ptr, ptr %829, align 4
  %831 = getelementptr i8, ptr %830, i32 %828
  %832 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %831) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %833

833:                                              ; preds = %827, %826
  %834 = phi i32 [ -1, %826 ], [ %832, %827 ]
  %835 = getelementptr i32, ptr %811, i32 1
  store i32 %834, ptr %811, align 4
  %836 = load ptr, ptr %8, align 8
  br label %837

837:                                              ; preds = %833, %817
  %838 = phi ptr [ %836, %833 ], [ %813, %817 ]
  %839 = phi ptr [ %835, %833 ], [ null, %817 ]
  %840 = add nuw nsw i32 %812, 1
  br label %841

841:                                              ; preds = %837, %810
  %842 = phi ptr [ %838, %837 ], [ %813, %810 ]
  %843 = phi ptr [ %839, %837 ], [ %811, %810 ]
  %844 = phi i32 [ %840, %837 ], [ %812, %810 ]
  %845 = getelementptr i16, ptr %842, i32 29
  %846 = load i16, ptr %845, align 2
  %847 = icmp eq i16 %846, -1
  br i1 %847, label %872, label %848

848:                                              ; preds = %841
  %849 = icmp eq ptr %843, null
  br i1 %849, label %868, label %850

850:                                              ; preds = %848
  %851 = load i32, ptr %1, align 4
  %852 = or i32 %851, 536870912
  store i32 %852, ptr %1, align 4
  %853 = load ptr, ptr %8, align 8
  %854 = getelementptr i16, ptr %853, i32 29
  %855 = load i16, ptr %854, align 2
  %856 = icmp eq i16 %855, -1
  br i1 %856, label %857, label %858, !prof !9

857:                                              ; preds = %850
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %864

858:                                              ; preds = %850
  %859 = zext i16 %855 to i32
  %860 = getelementptr i8, ptr %0, i32 1420
  %861 = load ptr, ptr %860, align 4
  %862 = getelementptr i8, ptr %861, i32 %859
  %863 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %862) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %864

864:                                              ; preds = %858, %857
  %865 = phi i32 [ -1, %857 ], [ %863, %858 ]
  %866 = getelementptr i32, ptr %843, i32 1
  store i32 %865, ptr %843, align 4
  %867 = load ptr, ptr %8, align 8
  br label %868

868:                                              ; preds = %864, %848
  %869 = phi ptr [ %867, %864 ], [ %842, %848 ]
  %870 = phi ptr [ %866, %864 ], [ null, %848 ]
  %871 = add nuw nsw i32 %844, 1
  br label %872

872:                                              ; preds = %868, %841
  %873 = phi ptr [ %869, %868 ], [ %842, %841 ]
  %874 = phi ptr [ %870, %868 ], [ %843, %841 ]
  %875 = phi i32 [ %871, %868 ], [ %844, %841 ]
  %876 = getelementptr i16, ptr %873, i32 30
  %877 = load i16, ptr %876, align 2
  %878 = icmp eq i16 %877, -1
  br i1 %878, label %903, label %879

879:                                              ; preds = %872
  %880 = icmp eq ptr %874, null
  br i1 %880, label %899, label %881

881:                                              ; preds = %879
  %882 = load i32, ptr %1, align 4
  %883 = or i32 %882, 1073741824
  store i32 %883, ptr %1, align 4
  %884 = load ptr, ptr %8, align 8
  %885 = getelementptr i16, ptr %884, i32 30
  %886 = load i16, ptr %885, align 2
  %887 = icmp eq i16 %886, -1
  br i1 %887, label %888, label %889, !prof !9

888:                                              ; preds = %881
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %895

889:                                              ; preds = %881
  %890 = zext i16 %886 to i32
  %891 = getelementptr i8, ptr %0, i32 1420
  %892 = load ptr, ptr %891, align 4
  %893 = getelementptr i8, ptr %892, i32 %890
  %894 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %893) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %895

895:                                              ; preds = %889, %888
  %896 = phi i32 [ -1, %888 ], [ %894, %889 ]
  %897 = getelementptr i32, ptr %874, i32 1
  store i32 %896, ptr %874, align 4
  %898 = load ptr, ptr %8, align 8
  br label %899

899:                                              ; preds = %895, %879
  %900 = phi ptr [ %898, %895 ], [ %873, %879 ]
  %901 = phi ptr [ %897, %895 ], [ null, %879 ]
  %902 = add nuw nsw i32 %875, 1
  br label %903

903:                                              ; preds = %899, %872
  %904 = phi ptr [ %900, %899 ], [ %873, %872 ]
  %905 = phi ptr [ %901, %899 ], [ %874, %872 ]
  %906 = phi i32 [ %902, %899 ], [ %875, %872 ]
  %907 = getelementptr i16, ptr %904, i32 31
  %908 = load i16, ptr %907, align 2
  %909 = icmp eq i16 %908, -1
  br i1 %909, label %932, label %910

910:                                              ; preds = %903
  %911 = icmp eq ptr %905, null
  br i1 %911, label %929, label %912

912:                                              ; preds = %910
  %913 = load i32, ptr %1, align 4
  %914 = or i32 %913, -2147483648
  store i32 %914, ptr %1, align 4
  %915 = load ptr, ptr %8, align 8
  %916 = getelementptr i16, ptr %915, i32 31
  %917 = load i16, ptr %916, align 2
  %918 = icmp eq i16 %917, -1
  br i1 %918, label %919, label %920, !prof !9

919:                                              ; preds = %912
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %926

920:                                              ; preds = %912
  %921 = zext i16 %917 to i32
  %922 = getelementptr i8, ptr %0, i32 1420
  %923 = load ptr, ptr %922, align 4
  %924 = getelementptr i8, ptr %923, i32 %921
  %925 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %924) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %926

926:                                              ; preds = %920, %919
  %927 = phi i32 [ -1, %919 ], [ %925, %920 ]
  %928 = getelementptr i32, ptr %905, i32 1
  store i32 %927, ptr %905, align 4
  br label %929

929:                                              ; preds = %926, %910
  %930 = phi ptr [ %928, %926 ], [ null, %910 ]
  %931 = add nuw nsw i32 %906, 1
  br label %932

932:                                              ; preds = %929, %903
  %933 = phi ptr [ %930, %929 ], [ %905, %903 ]
  %934 = phi i32 [ %931, %929 ], [ %906, %903 ]
  %935 = load i32, ptr %248, align 4
  %936 = and i32 %935, 1
  %937 = icmp eq i32 %936, 0
  br i1 %937, label %938, label %966

938:                                              ; preds = %932
  %939 = load ptr, ptr %8, align 8
  %940 = getelementptr i16, ptr %939, i32 32
  %941 = load i16, ptr %940, align 2
  %942 = icmp eq i16 %941, -1
  br i1 %942, label %966, label %943

943:                                              ; preds = %938
  %944 = icmp eq ptr %933, null
  br i1 %944, label %963, label %945

945:                                              ; preds = %943
  %946 = getelementptr i32, ptr %1, i32 1
  %947 = load i32, ptr %946, align 4
  %948 = or i32 %947, 1
  store i32 %948, ptr %946, align 4
  %949 = load ptr, ptr %8, align 8
  %950 = getelementptr i16, ptr %949, i32 32
  %951 = load i16, ptr %950, align 2
  %952 = icmp eq i16 %951, -1
  br i1 %952, label %953, label %954, !prof !9

953:                                              ; preds = %945
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %960

954:                                              ; preds = %945
  %955 = zext i16 %951 to i32
  %956 = getelementptr i8, ptr %0, i32 1420
  %957 = load ptr, ptr %956, align 4
  %958 = getelementptr i8, ptr %957, i32 %955
  %959 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %958) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %960

960:                                              ; preds = %954, %953
  %961 = phi i32 [ -1, %953 ], [ %959, %954 ]
  %962 = getelementptr i32, ptr %933, i32 1
  store i32 %961, ptr %933, align 4
  br label %963

963:                                              ; preds = %960, %943
  %964 = phi ptr [ %962, %960 ], [ null, %943 ]
  %965 = add nuw nsw i32 %934, 1
  br label %966

966:                                              ; preds = %963, %938, %932
  %967 = phi ptr [ %933, %932 ], [ %964, %963 ], [ %933, %938 ]
  %968 = phi i32 [ %934, %932 ], [ %965, %963 ], [ %934, %938 ]
  %969 = load ptr, ptr %8, align 8
  %970 = getelementptr i16, ptr %969, i32 33
  %971 = load i16, ptr %970, align 2
  %972 = icmp eq i16 %971, -1
  br i1 %972, label %998, label %973

973:                                              ; preds = %966
  %974 = icmp eq ptr %967, null
  br i1 %974, label %994, label %975

975:                                              ; preds = %973
  %976 = getelementptr i32, ptr %1, i32 1
  %977 = load i32, ptr %976, align 4
  %978 = or i32 %977, 2
  store i32 %978, ptr %976, align 4
  %979 = load ptr, ptr %8, align 8
  %980 = getelementptr i16, ptr %979, i32 33
  %981 = load i16, ptr %980, align 2
  %982 = icmp eq i16 %981, -1
  br i1 %982, label %983, label %984, !prof !9

983:                                              ; preds = %975
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %990

984:                                              ; preds = %975
  %985 = zext i16 %981 to i32
  %986 = getelementptr i8, ptr %0, i32 1420
  %987 = load ptr, ptr %986, align 4
  %988 = getelementptr i8, ptr %987, i32 %985
  %989 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %988) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %990

990:                                              ; preds = %984, %983
  %991 = phi i32 [ -1, %983 ], [ %989, %984 ]
  %992 = getelementptr i32, ptr %967, i32 1
  store i32 %991, ptr %967, align 4
  %993 = load ptr, ptr %8, align 8
  br label %994

994:                                              ; preds = %990, %973
  %995 = phi ptr [ %993, %990 ], [ %969, %973 ]
  %996 = phi ptr [ %992, %990 ], [ null, %973 ]
  %997 = add nuw nsw i32 %968, 1
  br label %998

998:                                              ; preds = %994, %966
  %999 = phi ptr [ %995, %994 ], [ %969, %966 ]
  %1000 = phi ptr [ %996, %994 ], [ %967, %966 ]
  %1001 = phi i32 [ %997, %994 ], [ %968, %966 ]
  %1002 = getelementptr i16, ptr %999, i32 35
  %1003 = load i16, ptr %1002, align 2
  %1004 = icmp eq i16 %1003, -1
  br i1 %1004, label %1030, label %1005

1005:                                             ; preds = %998
  %1006 = icmp eq ptr %1000, null
  br i1 %1006, label %1026, label %1007

1007:                                             ; preds = %1005
  %1008 = getelementptr i32, ptr %1, i32 1
  %1009 = load i32, ptr %1008, align 4
  %1010 = or i32 %1009, 8
  store i32 %1010, ptr %1008, align 4
  %1011 = load ptr, ptr %8, align 8
  %1012 = getelementptr i16, ptr %1011, i32 35
  %1013 = load i16, ptr %1012, align 2
  %1014 = icmp eq i16 %1013, -1
  br i1 %1014, label %1015, label %1016, !prof !9

1015:                                             ; preds = %1007
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %1022

1016:                                             ; preds = %1007
  %1017 = zext i16 %1013 to i32
  %1018 = getelementptr i8, ptr %0, i32 1420
  %1019 = load ptr, ptr %1018, align 4
  %1020 = getelementptr i8, ptr %1019, i32 %1017
  %1021 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1020) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %1022

1022:                                             ; preds = %1016, %1015
  %1023 = phi i32 [ -1, %1015 ], [ %1021, %1016 ]
  %1024 = getelementptr i32, ptr %1000, i32 1
  store i32 %1023, ptr %1000, align 4
  %1025 = load ptr, ptr %8, align 8
  br label %1026

1026:                                             ; preds = %1022, %1005
  %1027 = phi ptr [ %1025, %1022 ], [ %999, %1005 ]
  %1028 = phi ptr [ %1024, %1022 ], [ null, %1005 ]
  %1029 = add nuw nsw i32 %1001, 1
  br label %1030

1030:                                             ; preds = %1026, %998
  %1031 = phi ptr [ %1027, %1026 ], [ %999, %998 ]
  %1032 = phi ptr [ %1028, %1026 ], [ %1000, %998 ]
  %1033 = phi i32 [ %1029, %1026 ], [ %1001, %998 ]
  %1034 = getelementptr i16, ptr %1031, i32 36
  %1035 = load i16, ptr %1034, align 2
  %1036 = icmp eq i16 %1035, -1
  br i1 %1036, label %1060, label %1037

1037:                                             ; preds = %1030
  %1038 = icmp eq ptr %1032, null
  br i1 %1038, label %1057, label %1039

1039:                                             ; preds = %1037
  %1040 = getelementptr i32, ptr %1, i32 1
  %1041 = load i32, ptr %1040, align 4
  %1042 = or i32 %1041, 16
  store i32 %1042, ptr %1040, align 4
  %1043 = load ptr, ptr %8, align 8
  %1044 = getelementptr i16, ptr %1043, i32 36
  %1045 = load i16, ptr %1044, align 2
  %1046 = icmp eq i16 %1045, -1
  br i1 %1046, label %1047, label %1048, !prof !9

1047:                                             ; preds = %1039
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %1054

1048:                                             ; preds = %1039
  %1049 = zext i16 %1045 to i32
  %1050 = getelementptr i8, ptr %0, i32 1420
  %1051 = load ptr, ptr %1050, align 4
  %1052 = getelementptr i8, ptr %1051, i32 %1049
  %1053 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1052) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %1054

1054:                                             ; preds = %1048, %1047
  %1055 = phi i32 [ -1, %1047 ], [ %1053, %1048 ]
  %1056 = getelementptr i32, ptr %1032, i32 1
  store i32 %1055, ptr %1032, align 4
  br label %1057

1057:                                             ; preds = %1054, %1037
  %1058 = phi ptr [ %1056, %1054 ], [ null, %1037 ]
  %1059 = add nuw nsw i32 %1033, 1
  br label %1060

1060:                                             ; preds = %1057, %1030
  %1061 = phi ptr [ %1058, %1057 ], [ %1032, %1030 ]
  %1062 = phi i32 [ %1059, %1057 ], [ %1033, %1030 ]
  %1063 = load i32, ptr %248, align 4
  %1064 = and i32 %1063, 2
  %1065 = icmp eq i32 %1064, 0
  br i1 %1065, label %1096, label %1066

1066:                                             ; preds = %1060
  %1067 = load ptr, ptr %8, align 8
  %1068 = getelementptr i16, ptr %1067, i32 37
  %1069 = load i16, ptr %1068, align 2
  %1070 = icmp eq i16 %1069, -1
  br i1 %1070, label %1096, label %1071

1071:                                             ; preds = %1066
  %1072 = icmp eq ptr %1061, null
  br i1 %1072, label %1092, label %1073

1073:                                             ; preds = %1071
  %1074 = getelementptr i32, ptr %1, i32 1
  %1075 = load i32, ptr %1074, align 4
  %1076 = or i32 %1075, 32
  store i32 %1076, ptr %1074, align 4
  %1077 = load ptr, ptr %8, align 8
  %1078 = getelementptr i16, ptr %1077, i32 37
  %1079 = load i16, ptr %1078, align 2
  %1080 = icmp eq i16 %1079, -1
  br i1 %1080, label %1081, label %1082, !prof !9

1081:                                             ; preds = %1073
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %1088

1082:                                             ; preds = %1073
  %1083 = zext i16 %1079 to i32
  %1084 = getelementptr i8, ptr %0, i32 1420
  %1085 = load ptr, ptr %1084, align 4
  %1086 = getelementptr i8, ptr %1085, i32 %1083
  %1087 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1086) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %1088

1088:                                             ; preds = %1082, %1081
  %1089 = phi i32 [ -1, %1081 ], [ %1087, %1082 ]
  %1090 = getelementptr i32, ptr %1061, i32 1
  store i32 %1089, ptr %1061, align 4
  %1091 = load i32, ptr %248, align 4
  br label %1092

1092:                                             ; preds = %1088, %1071
  %1093 = phi i32 [ %1091, %1088 ], [ %1063, %1071 ]
  %1094 = phi ptr [ %1090, %1088 ], [ null, %1071 ]
  %1095 = add nuw nsw i32 %1062, 1
  br label %1096

1096:                                             ; preds = %1092, %1066, %1060
  %1097 = phi i32 [ %1093, %1092 ], [ %1063, %1066 ], [ %1063, %1060 ]
  %1098 = phi ptr [ %1094, %1092 ], [ %1061, %1066 ], [ %1061, %1060 ]
  %1099 = phi i32 [ %1095, %1092 ], [ %1062, %1066 ], [ %1062, %1060 ]
  %1100 = and i32 %1097, 4
  %1101 = icmp eq i32 %1100, 0
  br i1 %1101, label %1130, label %1102

1102:                                             ; preds = %1096
  %1103 = load ptr, ptr %8, align 8
  %1104 = getelementptr i16, ptr %1103, i32 38
  %1105 = load i16, ptr %1104, align 2
  %1106 = icmp eq i16 %1105, -1
  br i1 %1106, label %1130, label %1107

1107:                                             ; preds = %1102
  %1108 = icmp eq ptr %1098, null
  br i1 %1108, label %1127, label %1109

1109:                                             ; preds = %1107
  %1110 = getelementptr i32, ptr %1, i32 1
  %1111 = load i32, ptr %1110, align 4
  %1112 = or i32 %1111, 64
  store i32 %1112, ptr %1110, align 4
  %1113 = load ptr, ptr %8, align 8
  %1114 = getelementptr i16, ptr %1113, i32 38
  %1115 = load i16, ptr %1114, align 2
  %1116 = icmp eq i16 %1115, -1
  br i1 %1116, label %1117, label %1118, !prof !9

1117:                                             ; preds = %1109
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %1124

1118:                                             ; preds = %1109
  %1119 = zext i16 %1115 to i32
  %1120 = getelementptr i8, ptr %0, i32 1420
  %1121 = load ptr, ptr %1120, align 4
  %1122 = getelementptr i8, ptr %1121, i32 %1119
  %1123 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1122) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %1124

1124:                                             ; preds = %1118, %1117
  %1125 = phi i32 [ -1, %1117 ], [ %1123, %1118 ]
  %1126 = getelementptr i32, ptr %1098, i32 1
  store i32 %1125, ptr %1098, align 4
  br label %1127

1127:                                             ; preds = %1124, %1107
  %1128 = phi ptr [ %1126, %1124 ], [ null, %1107 ]
  %1129 = add nuw nsw i32 %1099, 1
  br label %1130

1130:                                             ; preds = %1127, %1102, %1096
  %1131 = phi ptr [ %1128, %1127 ], [ %1098, %1102 ], [ %1098, %1096 ]
  %1132 = phi i32 [ %1129, %1127 ], [ %1099, %1102 ], [ %1099, %1096 ]
  %1133 = load ptr, ptr %8, align 8
  %1134 = getelementptr i16, ptr %1133, i32 41
  %1135 = load i16, ptr %1134, align 2
  %1136 = icmp eq i16 %1135, -1
  br i1 %1136, label %1162, label %1137

1137:                                             ; preds = %1130
  %1138 = icmp eq ptr %1131, null
  br i1 %1138, label %1158, label %1139

1139:                                             ; preds = %1137
  %1140 = getelementptr i32, ptr %1, i32 1
  %1141 = load i32, ptr %1140, align 4
  %1142 = or i32 %1141, 512
  store i32 %1142, ptr %1140, align 4
  %1143 = load ptr, ptr %8, align 8
  %1144 = getelementptr i16, ptr %1143, i32 41
  %1145 = load i16, ptr %1144, align 2
  %1146 = icmp eq i16 %1145, -1
  br i1 %1146, label %1147, label %1148, !prof !9

1147:                                             ; preds = %1139
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %1154

1148:                                             ; preds = %1139
  %1149 = zext i16 %1145 to i32
  %1150 = getelementptr i8, ptr %0, i32 1420
  %1151 = load ptr, ptr %1150, align 4
  %1152 = getelementptr i8, ptr %1151, i32 %1149
  %1153 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1152) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %1154

1154:                                             ; preds = %1148, %1147
  %1155 = phi i32 [ -1, %1147 ], [ %1153, %1148 ]
  %1156 = getelementptr i32, ptr %1131, i32 1
  store i32 %1155, ptr %1131, align 4
  %1157 = load ptr, ptr %8, align 8
  br label %1158

1158:                                             ; preds = %1154, %1137
  %1159 = phi ptr [ %1157, %1154 ], [ %1133, %1137 ]
  %1160 = phi ptr [ %1156, %1154 ], [ null, %1137 ]
  %1161 = add nuw nsw i32 %1132, 1
  br label %1162

1162:                                             ; preds = %1158, %1130
  %1163 = phi ptr [ %1159, %1158 ], [ %1133, %1130 ]
  %1164 = phi ptr [ %1160, %1158 ], [ %1131, %1130 ]
  %1165 = phi i32 [ %1161, %1158 ], [ %1132, %1130 ]
  %1166 = getelementptr i16, ptr %1163, i32 42
  %1167 = load i16, ptr %1166, align 2
  %1168 = icmp eq i16 %1167, -1
  br i1 %1168, label %1192, label %1169

1169:                                             ; preds = %1162
  %1170 = icmp eq ptr %1164, null
  br i1 %1170, label %1189, label %1171

1171:                                             ; preds = %1169
  %1172 = getelementptr i32, ptr %1, i32 1
  %1173 = load i32, ptr %1172, align 4
  %1174 = or i32 %1173, 1024
  store i32 %1174, ptr %1172, align 4
  %1175 = load ptr, ptr %8, align 8
  %1176 = getelementptr i16, ptr %1175, i32 42
  %1177 = load i16, ptr %1176, align 2
  %1178 = icmp eq i16 %1177, -1
  br i1 %1178, label %1179, label %1180, !prof !9

1179:                                             ; preds = %1171
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %1186

1180:                                             ; preds = %1171
  %1181 = zext i16 %1177 to i32
  %1182 = getelementptr i8, ptr %0, i32 1420
  %1183 = load ptr, ptr %1182, align 4
  %1184 = getelementptr i8, ptr %1183, i32 %1181
  %1185 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1184) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %1186

1186:                                             ; preds = %1180, %1179
  %1187 = phi i32 [ -1, %1179 ], [ %1185, %1180 ]
  %1188 = getelementptr i32, ptr %1164, i32 1
  store i32 %1187, ptr %1164, align 4
  br label %1189

1189:                                             ; preds = %1186, %1169
  %1190 = phi ptr [ %1188, %1186 ], [ null, %1169 ]
  %1191 = add nuw nsw i32 %1165, 1
  br label %1192

1192:                                             ; preds = %1189, %1162
  %1193 = phi ptr [ %1190, %1189 ], [ %1164, %1162 ]
  %1194 = phi i32 [ %1191, %1189 ], [ %1165, %1162 ]
  %1195 = load i32, ptr %248, align 4
  %1196 = and i32 %1195, 8
  %1197 = icmp eq i32 %1196, 0
  br i1 %1197, label %1226, label %1198

1198:                                             ; preds = %1192
  %1199 = load ptr, ptr %8, align 8
  %1200 = getelementptr i16, ptr %1199, i32 43
  %1201 = load i16, ptr %1200, align 2
  %1202 = icmp eq i16 %1201, -1
  br i1 %1202, label %1226, label %1203

1203:                                             ; preds = %1198
  %1204 = icmp eq ptr %1193, null
  br i1 %1204, label %1223, label %1205

1205:                                             ; preds = %1203
  %1206 = getelementptr i32, ptr %1, i32 1
  %1207 = load i32, ptr %1206, align 4
  %1208 = or i32 %1207, 2048
  store i32 %1208, ptr %1206, align 4
  %1209 = load ptr, ptr %8, align 8
  %1210 = getelementptr i16, ptr %1209, i32 43
  %1211 = load i16, ptr %1210, align 2
  %1212 = icmp eq i16 %1211, -1
  br i1 %1212, label %1213, label %1214, !prof !9

1213:                                             ; preds = %1205
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %1220

1214:                                             ; preds = %1205
  %1215 = zext i16 %1211 to i32
  %1216 = getelementptr i8, ptr %0, i32 1420
  %1217 = load ptr, ptr %1216, align 4
  %1218 = getelementptr i8, ptr %1217, i32 %1215
  %1219 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1218) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %1220

1220:                                             ; preds = %1214, %1213
  %1221 = phi i32 [ -1, %1213 ], [ %1219, %1214 ]
  %1222 = getelementptr i32, ptr %1193, i32 1
  store i32 %1221, ptr %1193, align 4
  br label %1223

1223:                                             ; preds = %1220, %1203
  %1224 = phi ptr [ %1222, %1220 ], [ null, %1203 ]
  %1225 = add nuw nsw i32 %1194, 1
  br label %1226

1226:                                             ; preds = %1223, %1198, %1192
  %1227 = phi ptr [ %1224, %1223 ], [ %1193, %1198 ], [ %1193, %1192 ]
  %1228 = phi i32 [ %1225, %1223 ], [ %1194, %1198 ], [ %1194, %1192 ]
  %1229 = load ptr, ptr %8, align 8
  %1230 = getelementptr i16, ptr %1229, i32 44
  %1231 = load i16, ptr %1230, align 2
  %1232 = icmp eq i16 %1231, -1
  br i1 %1232, label %1256, label %1233

1233:                                             ; preds = %1226
  %1234 = icmp eq ptr %1227, null
  br i1 %1234, label %1253, label %1235

1235:                                             ; preds = %1233
  %1236 = getelementptr i32, ptr %1, i32 1
  %1237 = load i32, ptr %1236, align 4
  %1238 = or i32 %1237, 4096
  store i32 %1238, ptr %1236, align 4
  %1239 = load ptr, ptr %8, align 8
  %1240 = getelementptr i16, ptr %1239, i32 44
  %1241 = load i16, ptr %1240, align 2
  %1242 = icmp eq i16 %1241, -1
  br i1 %1242, label %1243, label %1244, !prof !9

1243:                                             ; preds = %1235
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %1250

1244:                                             ; preds = %1235
  %1245 = zext i16 %1241 to i32
  %1246 = getelementptr i8, ptr %0, i32 1420
  %1247 = load ptr, ptr %1246, align 4
  %1248 = getelementptr i8, ptr %1247, i32 %1245
  %1249 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1248) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %1250

1250:                                             ; preds = %1244, %1243
  %1251 = phi i32 [ -1, %1243 ], [ %1249, %1244 ]
  %1252 = getelementptr i32, ptr %1227, i32 1
  store i32 %1251, ptr %1227, align 4
  br label %1253

1253:                                             ; preds = %1250, %1233
  %1254 = phi ptr [ %1252, %1250 ], [ null, %1233 ]
  %1255 = add nuw nsw i32 %1228, 1
  br label %1256

1256:                                             ; preds = %1253, %1226
  %1257 = phi ptr [ %1254, %1253 ], [ %1227, %1226 ]
  %1258 = phi i32 [ %1255, %1253 ], [ %1228, %1226 ]
  %1259 = load i32, ptr %248, align 4
  %1260 = and i32 %1259, 16
  %1261 = icmp eq i32 %1260, 0
  br i1 %1261, label %1292, label %1262

1262:                                             ; preds = %1256
  %1263 = load ptr, ptr %8, align 8
  %1264 = getelementptr i16, ptr %1263, i32 47
  %1265 = load i16, ptr %1264, align 2
  %1266 = icmp eq i16 %1265, -1
  br i1 %1266, label %1292, label %1267

1267:                                             ; preds = %1262
  %1268 = icmp eq ptr %1257, null
  br i1 %1268, label %1288, label %1269

1269:                                             ; preds = %1267
  %1270 = getelementptr i32, ptr %1, i32 1
  %1271 = load i32, ptr %1270, align 4
  %1272 = or i32 %1271, 32768
  store i32 %1272, ptr %1270, align 4
  %1273 = load ptr, ptr %8, align 8
  %1274 = getelementptr i16, ptr %1273, i32 47
  %1275 = load i16, ptr %1274, align 2
  %1276 = icmp eq i16 %1275, -1
  br i1 %1276, label %1277, label %1278, !prof !9

1277:                                             ; preds = %1269
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %1284

1278:                                             ; preds = %1269
  %1279 = zext i16 %1275 to i32
  %1280 = getelementptr i8, ptr %0, i32 1420
  %1281 = load ptr, ptr %1280, align 4
  %1282 = getelementptr i8, ptr %1281, i32 %1279
  %1283 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1282) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %1284

1284:                                             ; preds = %1278, %1277
  %1285 = phi i32 [ -1, %1277 ], [ %1283, %1278 ]
  %1286 = getelementptr i32, ptr %1257, i32 1
  store i32 %1285, ptr %1257, align 4
  %1287 = load i32, ptr %248, align 4
  br label %1288

1288:                                             ; preds = %1284, %1267
  %1289 = phi i32 [ %1287, %1284 ], [ %1259, %1267 ]
  %1290 = phi ptr [ %1286, %1284 ], [ null, %1267 ]
  %1291 = add nuw nsw i32 %1258, 1
  br label %1292

1292:                                             ; preds = %1288, %1262, %1256
  %1293 = phi i32 [ %1289, %1288 ], [ %1259, %1262 ], [ %1259, %1256 ]
  %1294 = phi ptr [ %1290, %1288 ], [ %1257, %1262 ], [ %1257, %1256 ]
  %1295 = phi i32 [ %1291, %1288 ], [ %1258, %1262 ], [ %1258, %1256 ]
  %1296 = and i32 %1293, 32
  %1297 = icmp eq i32 %1296, 0
  br i1 %1297, label %1326, label %1298

1298:                                             ; preds = %1292
  %1299 = load ptr, ptr %8, align 8
  %1300 = getelementptr i16, ptr %1299, i32 48
  %1301 = load i16, ptr %1300, align 2
  %1302 = icmp eq i16 %1301, -1
  br i1 %1302, label %1326, label %1303

1303:                                             ; preds = %1298
  %1304 = icmp eq ptr %1294, null
  br i1 %1304, label %1323, label %1305

1305:                                             ; preds = %1303
  %1306 = getelementptr i32, ptr %1, i32 1
  %1307 = load i32, ptr %1306, align 4
  %1308 = or i32 %1307, 65536
  store i32 %1308, ptr %1306, align 4
  %1309 = load ptr, ptr %8, align 8
  %1310 = getelementptr i16, ptr %1309, i32 48
  %1311 = load i16, ptr %1310, align 2
  %1312 = icmp eq i16 %1311, -1
  br i1 %1312, label %1313, label %1314, !prof !9

1313:                                             ; preds = %1305
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %1320

1314:                                             ; preds = %1305
  %1315 = zext i16 %1311 to i32
  %1316 = getelementptr i8, ptr %0, i32 1420
  %1317 = load ptr, ptr %1316, align 4
  %1318 = getelementptr i8, ptr %1317, i32 %1315
  %1319 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1318) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %1320

1320:                                             ; preds = %1314, %1313
  %1321 = phi i32 [ -1, %1313 ], [ %1319, %1314 ]
  %1322 = getelementptr i32, ptr %1294, i32 1
  store i32 %1321, ptr %1294, align 4
  br label %1323

1323:                                             ; preds = %1320, %1303
  %1324 = phi ptr [ %1322, %1320 ], [ null, %1303 ]
  %1325 = add nuw nsw i32 %1295, 1
  br label %1326

1326:                                             ; preds = %1323, %1298, %1292
  %1327 = phi ptr [ %1324, %1323 ], [ %1294, %1298 ], [ %1294, %1292 ]
  %1328 = phi i32 [ %1325, %1323 ], [ %1295, %1298 ], [ %1295, %1292 ]
  %1329 = load ptr, ptr %8, align 8
  %1330 = getelementptr i16, ptr %1329, i32 49
  %1331 = load i16, ptr %1330, align 2
  %1332 = icmp eq i16 %1331, -1
  br i1 %1332, label %1358, label %1333

1333:                                             ; preds = %1326
  %1334 = icmp eq ptr %1327, null
  br i1 %1334, label %1354, label %1335

1335:                                             ; preds = %1333
  %1336 = getelementptr i32, ptr %1, i32 1
  %1337 = load i32, ptr %1336, align 4
  %1338 = or i32 %1337, 131072
  store i32 %1338, ptr %1336, align 4
  %1339 = load ptr, ptr %8, align 8
  %1340 = getelementptr i16, ptr %1339, i32 49
  %1341 = load i16, ptr %1340, align 2
  %1342 = icmp eq i16 %1341, -1
  br i1 %1342, label %1343, label %1344, !prof !9

1343:                                             ; preds = %1335
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %1350

1344:                                             ; preds = %1335
  %1345 = zext i16 %1341 to i32
  %1346 = getelementptr i8, ptr %0, i32 1420
  %1347 = load ptr, ptr %1346, align 4
  %1348 = getelementptr i8, ptr %1347, i32 %1345
  %1349 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1348) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %1350

1350:                                             ; preds = %1344, %1343
  %1351 = phi i32 [ -1, %1343 ], [ %1349, %1344 ]
  %1352 = getelementptr i32, ptr %1327, i32 1
  store i32 %1351, ptr %1327, align 4
  %1353 = load ptr, ptr %8, align 8
  br label %1354

1354:                                             ; preds = %1350, %1333
  %1355 = phi ptr [ %1353, %1350 ], [ %1329, %1333 ]
  %1356 = phi ptr [ %1352, %1350 ], [ null, %1333 ]
  %1357 = add nuw nsw i32 %1328, 1
  br label %1358

1358:                                             ; preds = %1354, %1326
  %1359 = phi ptr [ %1355, %1354 ], [ %1329, %1326 ]
  %1360 = phi ptr [ %1356, %1354 ], [ %1327, %1326 ]
  %1361 = phi i32 [ %1357, %1354 ], [ %1328, %1326 ]
  %1362 = getelementptr i16, ptr %1359, i32 50
  %1363 = load i16, ptr %1362, align 2
  %1364 = icmp eq i16 %1363, -1
  br i1 %1364, label %1388, label %1365

1365:                                             ; preds = %1358
  %1366 = icmp eq ptr %1360, null
  br i1 %1366, label %1385, label %1367

1367:                                             ; preds = %1365
  %1368 = getelementptr i32, ptr %1, i32 1
  %1369 = load i32, ptr %1368, align 4
  %1370 = or i32 %1369, 262144
  store i32 %1370, ptr %1368, align 4
  %1371 = load ptr, ptr %8, align 8
  %1372 = getelementptr i16, ptr %1371, i32 50
  %1373 = load i16, ptr %1372, align 2
  %1374 = icmp eq i16 %1373, -1
  br i1 %1374, label %1375, label %1376, !prof !9

1375:                                             ; preds = %1367
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %1382

1376:                                             ; preds = %1367
  %1377 = zext i16 %1373 to i32
  %1378 = getelementptr i8, ptr %0, i32 1420
  %1379 = load ptr, ptr %1378, align 4
  %1380 = getelementptr i8, ptr %1379, i32 %1377
  %1381 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1380) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %1382

1382:                                             ; preds = %1376, %1375
  %1383 = phi i32 [ -1, %1375 ], [ %1381, %1376 ]
  %1384 = getelementptr i32, ptr %1360, i32 1
  store i32 %1383, ptr %1360, align 4
  br label %1385

1385:                                             ; preds = %1382, %1365
  %1386 = phi ptr [ %1384, %1382 ], [ null, %1365 ]
  %1387 = add nuw nsw i32 %1361, 1
  br label %1388

1388:                                             ; preds = %1385, %1358
  %1389 = phi ptr [ %1386, %1385 ], [ %1360, %1358 ]
  %1390 = phi i32 [ %1387, %1385 ], [ %1361, %1358 ]
  %1391 = load i32, ptr %248, align 4
  %1392 = and i32 %1391, 1048576
  %1393 = icmp eq i32 %1392, 0
  br i1 %1393, label %1394, label %1518

1394:                                             ; preds = %1388
  %1395 = load ptr, ptr %8, align 8
  %1396 = getelementptr i16, ptr %1395, i32 51
  %1397 = load i16, ptr %1396, align 2
  %1398 = icmp eq i16 %1397, -1
  br i1 %1398, label %1424, label %1399

1399:                                             ; preds = %1394
  %1400 = icmp eq ptr %1389, null
  br i1 %1400, label %1420, label %1401

1401:                                             ; preds = %1399
  %1402 = getelementptr i32, ptr %1, i32 1
  %1403 = load i32, ptr %1402, align 4
  %1404 = or i32 %1403, 524288
  store i32 %1404, ptr %1402, align 4
  %1405 = load ptr, ptr %8, align 8
  %1406 = getelementptr i16, ptr %1405, i32 51
  %1407 = load i16, ptr %1406, align 2
  %1408 = icmp eq i16 %1407, -1
  br i1 %1408, label %1409, label %1410, !prof !9

1409:                                             ; preds = %1401
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %1416

1410:                                             ; preds = %1401
  %1411 = zext i16 %1407 to i32
  %1412 = getelementptr i8, ptr %0, i32 1420
  %1413 = load ptr, ptr %1412, align 4
  %1414 = getelementptr i8, ptr %1413, i32 %1411
  %1415 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1414) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %1416

1416:                                             ; preds = %1410, %1409
  %1417 = phi i32 [ -1, %1409 ], [ %1415, %1410 ]
  %1418 = getelementptr i32, ptr %1389, i32 1
  store i32 %1417, ptr %1389, align 4
  %1419 = load ptr, ptr %8, align 8
  br label %1420

1420:                                             ; preds = %1416, %1399
  %1421 = phi ptr [ %1419, %1416 ], [ %1395, %1399 ]
  %1422 = phi ptr [ %1418, %1416 ], [ null, %1399 ]
  %1423 = add nuw nsw i32 %1390, 1
  br label %1424

1424:                                             ; preds = %1420, %1394
  %1425 = phi ptr [ %1421, %1420 ], [ %1395, %1394 ]
  %1426 = phi ptr [ %1422, %1420 ], [ %1389, %1394 ]
  %1427 = phi i32 [ %1423, %1420 ], [ %1390, %1394 ]
  %1428 = getelementptr i16, ptr %1425, i32 52
  %1429 = load i16, ptr %1428, align 2
  %1430 = icmp eq i16 %1429, -1
  br i1 %1430, label %1456, label %1431

1431:                                             ; preds = %1424
  %1432 = icmp eq ptr %1426, null
  br i1 %1432, label %1452, label %1433

1433:                                             ; preds = %1431
  %1434 = getelementptr i32, ptr %1, i32 1
  %1435 = load i32, ptr %1434, align 4
  %1436 = or i32 %1435, 1048576
  store i32 %1436, ptr %1434, align 4
  %1437 = load ptr, ptr %8, align 8
  %1438 = getelementptr i16, ptr %1437, i32 52
  %1439 = load i16, ptr %1438, align 2
  %1440 = icmp eq i16 %1439, -1
  br i1 %1440, label %1441, label %1442, !prof !9

1441:                                             ; preds = %1433
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %1448

1442:                                             ; preds = %1433
  %1443 = zext i16 %1439 to i32
  %1444 = getelementptr i8, ptr %0, i32 1420
  %1445 = load ptr, ptr %1444, align 4
  %1446 = getelementptr i8, ptr %1445, i32 %1443
  %1447 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1446) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %1448

1448:                                             ; preds = %1442, %1441
  %1449 = phi i32 [ -1, %1441 ], [ %1447, %1442 ]
  %1450 = getelementptr i32, ptr %1426, i32 1
  store i32 %1449, ptr %1426, align 4
  %1451 = load ptr, ptr %8, align 8
  br label %1452

1452:                                             ; preds = %1448, %1431
  %1453 = phi ptr [ %1451, %1448 ], [ %1425, %1431 ]
  %1454 = phi ptr [ %1450, %1448 ], [ null, %1431 ]
  %1455 = add nuw nsw i32 %1427, 1
  br label %1456

1456:                                             ; preds = %1452, %1424
  %1457 = phi ptr [ %1453, %1452 ], [ %1425, %1424 ]
  %1458 = phi ptr [ %1454, %1452 ], [ %1426, %1424 ]
  %1459 = phi i32 [ %1455, %1452 ], [ %1427, %1424 ]
  %1460 = getelementptr i16, ptr %1457, i32 53
  %1461 = load i16, ptr %1460, align 2
  %1462 = icmp eq i16 %1461, -1
  br i1 %1462, label %1488, label %1463

1463:                                             ; preds = %1456
  %1464 = icmp eq ptr %1458, null
  br i1 %1464, label %1484, label %1465

1465:                                             ; preds = %1463
  %1466 = getelementptr i32, ptr %1, i32 1
  %1467 = load i32, ptr %1466, align 4
  %1468 = or i32 %1467, 2097152
  store i32 %1468, ptr %1466, align 4
  %1469 = load ptr, ptr %8, align 8
  %1470 = getelementptr i16, ptr %1469, i32 53
  %1471 = load i16, ptr %1470, align 2
  %1472 = icmp eq i16 %1471, -1
  br i1 %1472, label %1473, label %1474, !prof !9

1473:                                             ; preds = %1465
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %1480

1474:                                             ; preds = %1465
  %1475 = zext i16 %1471 to i32
  %1476 = getelementptr i8, ptr %0, i32 1420
  %1477 = load ptr, ptr %1476, align 4
  %1478 = getelementptr i8, ptr %1477, i32 %1475
  %1479 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1478) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %1480

1480:                                             ; preds = %1474, %1473
  %1481 = phi i32 [ -1, %1473 ], [ %1479, %1474 ]
  %1482 = getelementptr i32, ptr %1458, i32 1
  store i32 %1481, ptr %1458, align 4
  %1483 = load ptr, ptr %8, align 8
  br label %1484

1484:                                             ; preds = %1480, %1463
  %1485 = phi ptr [ %1483, %1480 ], [ %1457, %1463 ]
  %1486 = phi ptr [ %1482, %1480 ], [ null, %1463 ]
  %1487 = add nuw nsw i32 %1459, 1
  br label %1488

1488:                                             ; preds = %1484, %1456
  %1489 = phi ptr [ %1485, %1484 ], [ %1457, %1456 ]
  %1490 = phi ptr [ %1486, %1484 ], [ %1458, %1456 ]
  %1491 = phi i32 [ %1487, %1484 ], [ %1459, %1456 ]
  %1492 = getelementptr i16, ptr %1489, i32 54
  %1493 = load i16, ptr %1492, align 2
  %1494 = icmp eq i16 %1493, -1
  br i1 %1494, label %1518, label %1495

1495:                                             ; preds = %1488
  %1496 = icmp eq ptr %1490, null
  br i1 %1496, label %1515, label %1497

1497:                                             ; preds = %1495
  %1498 = getelementptr i32, ptr %1, i32 1
  %1499 = load i32, ptr %1498, align 4
  %1500 = or i32 %1499, 4194304
  store i32 %1500, ptr %1498, align 4
  %1501 = load ptr, ptr %8, align 8
  %1502 = getelementptr i16, ptr %1501, i32 54
  %1503 = load i16, ptr %1502, align 2
  %1504 = icmp eq i16 %1503, -1
  br i1 %1504, label %1505, label %1506, !prof !9

1505:                                             ; preds = %1497
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %1512

1506:                                             ; preds = %1497
  %1507 = zext i16 %1503 to i32
  %1508 = getelementptr i8, ptr %0, i32 1420
  %1509 = load ptr, ptr %1508, align 4
  %1510 = getelementptr i8, ptr %1509, i32 %1507
  %1511 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1510) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %1512

1512:                                             ; preds = %1506, %1505
  %1513 = phi i32 [ -1, %1505 ], [ %1511, %1506 ]
  %1514 = getelementptr i32, ptr %1490, i32 1
  store i32 %1513, ptr %1490, align 4
  br label %1515

1515:                                             ; preds = %1512, %1495
  %1516 = phi ptr [ %1514, %1512 ], [ null, %1495 ]
  %1517 = add nuw nsw i32 %1491, 1
  br label %1518

1518:                                             ; preds = %1515, %1488, %1388
  %1519 = phi ptr [ %1389, %1388 ], [ %1516, %1515 ], [ %1490, %1488 ]
  %1520 = phi i32 [ %1390, %1388 ], [ %1517, %1515 ], [ %1491, %1488 ]
  %1521 = load ptr, ptr %8, align 8
  %1522 = getelementptr i16, ptr %1521, i32 55
  %1523 = load i16, ptr %1522, align 2
  %1524 = icmp eq i16 %1523, -1
  br i1 %1524, label %1550, label %1525

1525:                                             ; preds = %1518
  %1526 = icmp eq ptr %1519, null
  br i1 %1526, label %1546, label %1527

1527:                                             ; preds = %1525
  %1528 = getelementptr i32, ptr %1, i32 1
  %1529 = load i32, ptr %1528, align 4
  %1530 = or i32 %1529, 8388608
  store i32 %1530, ptr %1528, align 4
  %1531 = load ptr, ptr %8, align 8
  %1532 = getelementptr i16, ptr %1531, i32 55
  %1533 = load i16, ptr %1532, align 2
  %1534 = icmp eq i16 %1533, -1
  br i1 %1534, label %1535, label %1536, !prof !9

1535:                                             ; preds = %1527
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %1542

1536:                                             ; preds = %1527
  %1537 = zext i16 %1533 to i32
  %1538 = getelementptr i8, ptr %0, i32 1420
  %1539 = load ptr, ptr %1538, align 4
  %1540 = getelementptr i8, ptr %1539, i32 %1537
  %1541 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1540) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %1542

1542:                                             ; preds = %1536, %1535
  %1543 = phi i32 [ -1, %1535 ], [ %1541, %1536 ]
  %1544 = getelementptr i32, ptr %1519, i32 1
  store i32 %1543, ptr %1519, align 4
  %1545 = load ptr, ptr %8, align 8
  br label %1546

1546:                                             ; preds = %1542, %1525
  %1547 = phi ptr [ %1545, %1542 ], [ %1521, %1525 ]
  %1548 = phi ptr [ %1544, %1542 ], [ null, %1525 ]
  %1549 = add nuw nsw i32 %1520, 1
  br label %1550

1550:                                             ; preds = %1546, %1518
  %1551 = phi ptr [ %1547, %1546 ], [ %1521, %1518 ]
  %1552 = phi ptr [ %1548, %1546 ], [ %1519, %1518 ]
  %1553 = phi i32 [ %1549, %1546 ], [ %1520, %1518 ]
  %1554 = getelementptr i16, ptr %1551, i32 56
  %1555 = load i16, ptr %1554, align 2
  %1556 = icmp eq i16 %1555, -1
  br i1 %1556, label %1582, label %1557

1557:                                             ; preds = %1550
  %1558 = icmp eq ptr %1552, null
  br i1 %1558, label %1578, label %1559

1559:                                             ; preds = %1557
  %1560 = getelementptr i32, ptr %1, i32 1
  %1561 = load i32, ptr %1560, align 4
  %1562 = or i32 %1561, 16777216
  store i32 %1562, ptr %1560, align 4
  %1563 = load ptr, ptr %8, align 8
  %1564 = getelementptr i16, ptr %1563, i32 56
  %1565 = load i16, ptr %1564, align 2
  %1566 = icmp eq i16 %1565, -1
  br i1 %1566, label %1567, label %1568, !prof !9

1567:                                             ; preds = %1559
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %1574

1568:                                             ; preds = %1559
  %1569 = zext i16 %1565 to i32
  %1570 = getelementptr i8, ptr %0, i32 1420
  %1571 = load ptr, ptr %1570, align 4
  %1572 = getelementptr i8, ptr %1571, i32 %1569
  %1573 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1572) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %1574

1574:                                             ; preds = %1568, %1567
  %1575 = phi i32 [ -1, %1567 ], [ %1573, %1568 ]
  %1576 = getelementptr i32, ptr %1552, i32 1
  store i32 %1575, ptr %1552, align 4
  %1577 = load ptr, ptr %8, align 8
  br label %1578

1578:                                             ; preds = %1574, %1557
  %1579 = phi ptr [ %1577, %1574 ], [ %1551, %1557 ]
  %1580 = phi ptr [ %1576, %1574 ], [ null, %1557 ]
  %1581 = add nuw nsw i32 %1553, 1
  br label %1582

1582:                                             ; preds = %1578, %1550
  %1583 = phi ptr [ %1579, %1578 ], [ %1551, %1550 ]
  %1584 = phi ptr [ %1580, %1578 ], [ %1552, %1550 ]
  %1585 = phi i32 [ %1581, %1578 ], [ %1553, %1550 ]
  %1586 = getelementptr i16, ptr %1583, i32 57
  %1587 = load i16, ptr %1586, align 2
  %1588 = icmp eq i16 %1587, -1
  br i1 %1588, label %1614, label %1589

1589:                                             ; preds = %1582
  %1590 = icmp eq ptr %1584, null
  br i1 %1590, label %1610, label %1591

1591:                                             ; preds = %1589
  %1592 = getelementptr i32, ptr %1, i32 1
  %1593 = load i32, ptr %1592, align 4
  %1594 = or i32 %1593, 33554432
  store i32 %1594, ptr %1592, align 4
  %1595 = load ptr, ptr %8, align 8
  %1596 = getelementptr i16, ptr %1595, i32 57
  %1597 = load i16, ptr %1596, align 2
  %1598 = icmp eq i16 %1597, -1
  br i1 %1598, label %1599, label %1600, !prof !9

1599:                                             ; preds = %1591
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %1606

1600:                                             ; preds = %1591
  %1601 = zext i16 %1597 to i32
  %1602 = getelementptr i8, ptr %0, i32 1420
  %1603 = load ptr, ptr %1602, align 4
  %1604 = getelementptr i8, ptr %1603, i32 %1601
  %1605 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1604) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %1606

1606:                                             ; preds = %1600, %1599
  %1607 = phi i32 [ -1, %1599 ], [ %1605, %1600 ]
  %1608 = getelementptr i32, ptr %1584, i32 1
  store i32 %1607, ptr %1584, align 4
  %1609 = load ptr, ptr %8, align 8
  br label %1610

1610:                                             ; preds = %1606, %1589
  %1611 = phi ptr [ %1609, %1606 ], [ %1583, %1589 ]
  %1612 = phi ptr [ %1608, %1606 ], [ null, %1589 ]
  %1613 = add nuw nsw i32 %1585, 1
  br label %1614

1614:                                             ; preds = %1610, %1582
  %1615 = phi ptr [ %1611, %1610 ], [ %1583, %1582 ]
  %1616 = phi ptr [ %1612, %1610 ], [ %1584, %1582 ]
  %1617 = phi i32 [ %1613, %1610 ], [ %1585, %1582 ]
  %1618 = getelementptr i16, ptr %1615, i32 58
  %1619 = load i16, ptr %1618, align 2
  %1620 = icmp eq i16 %1619, -1
  br i1 %1620, label %1644, label %1621

1621:                                             ; preds = %1614
  %1622 = icmp eq ptr %1616, null
  br i1 %1622, label %1641, label %1623

1623:                                             ; preds = %1621
  %1624 = getelementptr i32, ptr %1, i32 1
  %1625 = load i32, ptr %1624, align 4
  %1626 = or i32 %1625, 67108864
  store i32 %1626, ptr %1624, align 4
  %1627 = load ptr, ptr %8, align 8
  %1628 = getelementptr i16, ptr %1627, i32 58
  %1629 = load i16, ptr %1628, align 2
  %1630 = icmp eq i16 %1629, -1
  br i1 %1630, label %1631, label %1632, !prof !9

1631:                                             ; preds = %1623
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %1638

1632:                                             ; preds = %1623
  %1633 = zext i16 %1629 to i32
  %1634 = getelementptr i8, ptr %0, i32 1420
  %1635 = load ptr, ptr %1634, align 4
  %1636 = getelementptr i8, ptr %1635, i32 %1633
  %1637 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1636) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %1638

1638:                                             ; preds = %1632, %1631
  %1639 = phi i32 [ -1, %1631 ], [ %1637, %1632 ]
  %1640 = getelementptr i32, ptr %1616, i32 1
  store i32 %1639, ptr %1616, align 4
  br label %1641

1641:                                             ; preds = %1638, %1621
  %1642 = phi ptr [ %1640, %1638 ], [ null, %1621 ]
  %1643 = add nuw nsw i32 %1617, 1
  br label %1644

1644:                                             ; preds = %1641, %1614
  %1645 = phi ptr [ %1642, %1641 ], [ %1616, %1614 ]
  %1646 = phi i32 [ %1643, %1641 ], [ %1617, %1614 ]
  %1647 = load i32, ptr %248, align 4
  %1648 = and i32 %1647, 2097152
  %1649 = icmp eq i32 %1648, 0
  br i1 %1649, label %1710, label %1650

1650:                                             ; preds = %1644
  %1651 = load ptr, ptr %8, align 8
  %1652 = getelementptr i16, ptr %1651, i32 59
  %1653 = load i16, ptr %1652, align 2
  %1654 = icmp eq i16 %1653, -1
  br i1 %1654, label %1680, label %1655

1655:                                             ; preds = %1650
  %1656 = icmp eq ptr %1645, null
  br i1 %1656, label %1676, label %1657

1657:                                             ; preds = %1655
  %1658 = getelementptr i32, ptr %1, i32 1
  %1659 = load i32, ptr %1658, align 4
  %1660 = or i32 %1659, 134217728
  store i32 %1660, ptr %1658, align 4
  %1661 = load ptr, ptr %8, align 8
  %1662 = getelementptr i16, ptr %1661, i32 59
  %1663 = load i16, ptr %1662, align 2
  %1664 = icmp eq i16 %1663, -1
  br i1 %1664, label %1665, label %1666, !prof !9

1665:                                             ; preds = %1657
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %1672

1666:                                             ; preds = %1657
  %1667 = zext i16 %1663 to i32
  %1668 = getelementptr i8, ptr %0, i32 1420
  %1669 = load ptr, ptr %1668, align 4
  %1670 = getelementptr i8, ptr %1669, i32 %1667
  %1671 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1670) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %1672

1672:                                             ; preds = %1666, %1665
  %1673 = phi i32 [ -1, %1665 ], [ %1671, %1666 ]
  %1674 = getelementptr i32, ptr %1645, i32 1
  store i32 %1673, ptr %1645, align 4
  %1675 = load ptr, ptr %8, align 8
  br label %1676

1676:                                             ; preds = %1672, %1655
  %1677 = phi ptr [ %1675, %1672 ], [ %1651, %1655 ]
  %1678 = phi ptr [ %1674, %1672 ], [ null, %1655 ]
  %1679 = add nuw nsw i32 %1646, 1
  br label %1680

1680:                                             ; preds = %1676, %1650
  %1681 = phi ptr [ %1677, %1676 ], [ %1651, %1650 ]
  %1682 = phi ptr [ %1678, %1676 ], [ %1645, %1650 ]
  %1683 = phi i32 [ %1679, %1676 ], [ %1646, %1650 ]
  %1684 = getelementptr i16, ptr %1681, i32 60
  %1685 = load i16, ptr %1684, align 2
  %1686 = icmp eq i16 %1685, -1
  br i1 %1686, label %1710, label %1687

1687:                                             ; preds = %1680
  %1688 = icmp eq ptr %1682, null
  br i1 %1688, label %1707, label %1689

1689:                                             ; preds = %1687
  %1690 = getelementptr i32, ptr %1, i32 1
  %1691 = load i32, ptr %1690, align 4
  %1692 = or i32 %1691, 268435456
  store i32 %1692, ptr %1690, align 4
  %1693 = load ptr, ptr %8, align 8
  %1694 = getelementptr i16, ptr %1693, i32 60
  %1695 = load i16, ptr %1694, align 2
  %1696 = icmp eq i16 %1695, -1
  br i1 %1696, label %1697, label %1698, !prof !9

1697:                                             ; preds = %1689
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %1704

1698:                                             ; preds = %1689
  %1699 = zext i16 %1695 to i32
  %1700 = getelementptr i8, ptr %0, i32 1420
  %1701 = load ptr, ptr %1700, align 4
  %1702 = getelementptr i8, ptr %1701, i32 %1699
  %1703 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1702) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %1704

1704:                                             ; preds = %1698, %1697
  %1705 = phi i32 [ -1, %1697 ], [ %1703, %1698 ]
  %1706 = getelementptr i32, ptr %1682, i32 1
  store i32 %1705, ptr %1682, align 4
  br label %1707

1707:                                             ; preds = %1704, %1687
  %1708 = phi ptr [ %1706, %1704 ], [ null, %1687 ]
  %1709 = add nuw nsw i32 %1683, 1
  br label %1710

1710:                                             ; preds = %1707, %1680, %1644
  %1711 = phi ptr [ %1708, %1707 ], [ %1682, %1680 ], [ %1645, %1644 ]
  %1712 = phi i32 [ %1709, %1707 ], [ %1683, %1680 ], [ %1646, %1644 ]
  %1713 = load ptr, ptr %8, align 8
  %1714 = getelementptr i16, ptr %1713, i32 61
  %1715 = load i16, ptr %1714, align 2
  %1716 = icmp eq i16 %1715, -1
  br i1 %1716, label %1740, label %1717

1717:                                             ; preds = %1710
  %1718 = icmp eq ptr %1711, null
  br i1 %1718, label %1737, label %1719

1719:                                             ; preds = %1717
  %1720 = getelementptr i32, ptr %1, i32 1
  %1721 = load i32, ptr %1720, align 4
  %1722 = or i32 %1721, 536870912
  store i32 %1722, ptr %1720, align 4
  %1723 = load ptr, ptr %8, align 8
  %1724 = getelementptr i16, ptr %1723, i32 61
  %1725 = load i16, ptr %1724, align 2
  %1726 = icmp eq i16 %1725, -1
  br i1 %1726, label %1727, label %1728, !prof !9

1727:                                             ; preds = %1719
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %1734

1728:                                             ; preds = %1719
  %1729 = zext i16 %1725 to i32
  %1730 = getelementptr i8, ptr %0, i32 1420
  %1731 = load ptr, ptr %1730, align 4
  %1732 = getelementptr i8, ptr %1731, i32 %1729
  %1733 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1732) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %1734

1734:                                             ; preds = %1728, %1727
  %1735 = phi i32 [ -1, %1727 ], [ %1733, %1728 ]
  %1736 = getelementptr i32, ptr %1711, i32 1
  store i32 %1735, ptr %1711, align 4
  br label %1737

1737:                                             ; preds = %1734, %1717
  %1738 = phi ptr [ %1736, %1734 ], [ null, %1717 ]
  %1739 = add nuw nsw i32 %1712, 1
  br label %1740

1740:                                             ; preds = %1737, %1710
  %1741 = phi ptr [ %1738, %1737 ], [ %1711, %1710 ]
  %1742 = phi i32 [ %1739, %1737 ], [ %1712, %1710 ]
  %1743 = load i32, ptr %248, align 4
  %1744 = and i32 %1743, 262144
  %1745 = icmp eq i32 %1744, 0
  br i1 %1745, label %1776, label %1746

1746:                                             ; preds = %1740
  %1747 = load ptr, ptr %8, align 8
  %1748 = getelementptr i16, ptr %1747, i32 62
  %1749 = load i16, ptr %1748, align 2
  %1750 = icmp eq i16 %1749, -1
  br i1 %1750, label %1776, label %1751

1751:                                             ; preds = %1746
  %1752 = icmp eq ptr %1741, null
  br i1 %1752, label %1772, label %1753

1753:                                             ; preds = %1751
  %1754 = getelementptr i32, ptr %1, i32 1
  %1755 = load i32, ptr %1754, align 4
  %1756 = or i32 %1755, 1073741824
  store i32 %1756, ptr %1754, align 4
  %1757 = load ptr, ptr %8, align 8
  %1758 = getelementptr i16, ptr %1757, i32 62
  %1759 = load i16, ptr %1758, align 2
  %1760 = icmp eq i16 %1759, -1
  br i1 %1760, label %1761, label %1762, !prof !9

1761:                                             ; preds = %1753
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %1768

1762:                                             ; preds = %1753
  %1763 = zext i16 %1759 to i32
  %1764 = getelementptr i8, ptr %0, i32 1420
  %1765 = load ptr, ptr %1764, align 4
  %1766 = getelementptr i8, ptr %1765, i32 %1763
  %1767 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1766) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %1768

1768:                                             ; preds = %1762, %1761
  %1769 = phi i32 [ -1, %1761 ], [ %1767, %1762 ]
  %1770 = getelementptr i32, ptr %1741, i32 1
  store i32 %1769, ptr %1741, align 4
  %1771 = load i32, ptr %248, align 4
  br label %1772

1772:                                             ; preds = %1768, %1751
  %1773 = phi i32 [ %1771, %1768 ], [ %1743, %1751 ]
  %1774 = phi ptr [ %1770, %1768 ], [ null, %1751 ]
  %1775 = add nuw nsw i32 %1742, 1
  br label %1776

1776:                                             ; preds = %1772, %1746, %1740
  %1777 = phi i32 [ %1773, %1772 ], [ %1743, %1746 ], [ %1743, %1740 ]
  %1778 = phi ptr [ %1774, %1772 ], [ %1741, %1746 ], [ %1741, %1740 ]
  %1779 = phi i32 [ %1775, %1772 ], [ %1742, %1746 ], [ %1742, %1740 ]
  %1780 = and i32 %1777, 16384
  %1781 = icmp eq i32 %1780, 0
  br i1 %1781, label %1812, label %1782

1782:                                             ; preds = %1776
  %1783 = load ptr, ptr %8, align 8
  %1784 = getelementptr i16, ptr %1783, i32 63
  %1785 = load i16, ptr %1784, align 2
  %1786 = icmp eq i16 %1785, -1
  br i1 %1786, label %1812, label %1787

1787:                                             ; preds = %1782
  %1788 = icmp eq ptr %1778, null
  br i1 %1788, label %1808, label %1789

1789:                                             ; preds = %1787
  %1790 = getelementptr i32, ptr %1, i32 1
  %1791 = load i32, ptr %1790, align 4
  %1792 = or i32 %1791, -2147483648
  store i32 %1792, ptr %1790, align 4
  %1793 = load ptr, ptr %8, align 8
  %1794 = getelementptr i16, ptr %1793, i32 63
  %1795 = load i16, ptr %1794, align 2
  %1796 = icmp eq i16 %1795, -1
  br i1 %1796, label %1797, label %1798, !prof !9

1797:                                             ; preds = %1789
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %1804

1798:                                             ; preds = %1789
  %1799 = zext i16 %1795 to i32
  %1800 = getelementptr i8, ptr %0, i32 1420
  %1801 = load ptr, ptr %1800, align 4
  %1802 = getelementptr i8, ptr %1801, i32 %1799
  %1803 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1802) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %1804

1804:                                             ; preds = %1798, %1797
  %1805 = phi i32 [ -1, %1797 ], [ %1803, %1798 ]
  %1806 = getelementptr i32, ptr %1778, i32 1
  store i32 %1805, ptr %1778, align 4
  %1807 = load i32, ptr %248, align 4
  br label %1808

1808:                                             ; preds = %1804, %1787
  %1809 = phi i32 [ %1807, %1804 ], [ %1777, %1787 ]
  %1810 = phi ptr [ %1806, %1804 ], [ null, %1787 ]
  %1811 = add nuw nsw i32 %1779, 1
  br label %1812

1812:                                             ; preds = %1808, %1782, %1776
  %1813 = phi i32 [ %1809, %1808 ], [ %1777, %1782 ], [ %1777, %1776 ]
  %1814 = phi ptr [ %1810, %1808 ], [ %1778, %1782 ], [ %1778, %1776 ]
  %1815 = phi i32 [ %1811, %1808 ], [ %1779, %1782 ], [ %1779, %1776 ]
  %1816 = and i32 %1813, 65536
  %1817 = icmp eq i32 %1816, 0
  br i1 %1817, label %1848, label %1818

1818:                                             ; preds = %1812
  %1819 = load ptr, ptr %8, align 8
  %1820 = getelementptr i16, ptr %1819, i32 64
  %1821 = load i16, ptr %1820, align 2
  %1822 = icmp eq i16 %1821, -1
  br i1 %1822, label %1848, label %1823

1823:                                             ; preds = %1818
  %1824 = icmp eq ptr %1814, null
  br i1 %1824, label %1844, label %1825

1825:                                             ; preds = %1823
  %1826 = getelementptr i32, ptr %1, i32 2
  %1827 = load i32, ptr %1826, align 4
  %1828 = or i32 %1827, 1
  store i32 %1828, ptr %1826, align 4
  %1829 = load ptr, ptr %8, align 8
  %1830 = getelementptr i16, ptr %1829, i32 64
  %1831 = load i16, ptr %1830, align 2
  %1832 = icmp eq i16 %1831, -1
  br i1 %1832, label %1833, label %1834, !prof !9

1833:                                             ; preds = %1825
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %1840

1834:                                             ; preds = %1825
  %1835 = zext i16 %1831 to i32
  %1836 = getelementptr i8, ptr %0, i32 1420
  %1837 = load ptr, ptr %1836, align 4
  %1838 = getelementptr i8, ptr %1837, i32 %1835
  %1839 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1838) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %1840

1840:                                             ; preds = %1834, %1833
  %1841 = phi i32 [ -1, %1833 ], [ %1839, %1834 ]
  %1842 = getelementptr i32, ptr %1814, i32 1
  store i32 %1841, ptr %1814, align 4
  %1843 = load i32, ptr %248, align 4
  br label %1844

1844:                                             ; preds = %1840, %1823
  %1845 = phi i32 [ %1843, %1840 ], [ %1813, %1823 ]
  %1846 = phi ptr [ %1842, %1840 ], [ null, %1823 ]
  %1847 = add nuw nsw i32 %1815, 1
  br label %1848

1848:                                             ; preds = %1844, %1818, %1812
  %1849 = phi i32 [ %1845, %1844 ], [ %1813, %1818 ], [ %1813, %1812 ]
  %1850 = phi ptr [ %1846, %1844 ], [ %1814, %1818 ], [ %1814, %1812 ]
  %1851 = phi i32 [ %1847, %1844 ], [ %1815, %1818 ], [ %1815, %1812 ]
  %1852 = and i32 %1849, 64
  %1853 = icmp eq i32 %1852, 0
  br i1 %1853, label %2708, label %1854

1854:                                             ; preds = %1848
  %1855 = load ptr, ptr %8, align 8
  %1856 = getelementptr i16, ptr %1855, i32 65
  %1857 = load i16, ptr %1856, align 2
  %1858 = icmp eq i16 %1857, -1
  br i1 %1858, label %1884, label %1859

1859:                                             ; preds = %1854
  %1860 = icmp eq ptr %1850, null
  br i1 %1860, label %1880, label %1861

1861:                                             ; preds = %1859
  %1862 = getelementptr i32, ptr %1, i32 2
  %1863 = load i32, ptr %1862, align 4
  %1864 = or i32 %1863, 2
  store i32 %1864, ptr %1862, align 4
  %1865 = load ptr, ptr %8, align 8
  %1866 = getelementptr i16, ptr %1865, i32 65
  %1867 = load i16, ptr %1866, align 2
  %1868 = icmp eq i16 %1867, -1
  br i1 %1868, label %1869, label %1870, !prof !9

1869:                                             ; preds = %1861
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 398, i32 noundef 9, ptr noundef null) #18
  br label %1876

1870:                                             ; preds = %1861
  %1871 = zext i16 %1867 to i32
  %1872 = getelementptr i8, ptr %0, i32 1424
  %1873 = load ptr, ptr %1872, align 8
  %1874 = getelementptr i8, ptr %1873, i32 %1871
  %1875 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1874) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %1876

1876:                                             ; preds = %1870, %1869
  %1877 = phi i32 [ -1, %1869 ], [ %1875, %1870 ]
  %1878 = getelementptr i32, ptr %1850, i32 1
  store i32 %1877, ptr %1850, align 4
  %1879 = load ptr, ptr %8, align 8
  br label %1880

1880:                                             ; preds = %1876, %1859
  %1881 = phi ptr [ %1879, %1876 ], [ %1855, %1859 ]
  %1882 = phi ptr [ %1878, %1876 ], [ null, %1859 ]
  %1883 = add nuw nsw i32 %1851, 1
  br label %1884

1884:                                             ; preds = %1880, %1854
  %1885 = phi ptr [ %1881, %1880 ], [ %1855, %1854 ]
  %1886 = phi ptr [ %1882, %1880 ], [ %1850, %1854 ]
  %1887 = phi i32 [ %1883, %1880 ], [ %1851, %1854 ]
  %1888 = getelementptr i16, ptr %1885, i32 66
  %1889 = load i16, ptr %1888, align 2
  %1890 = icmp eq i16 %1889, -1
  br i1 %1890, label %1914, label %1891

1891:                                             ; preds = %1884
  %1892 = icmp eq ptr %1886, null
  br i1 %1892, label %1911, label %1893

1893:                                             ; preds = %1891
  %1894 = getelementptr i32, ptr %1, i32 2
  %1895 = load i32, ptr %1894, align 4
  %1896 = or i32 %1895, 4
  store i32 %1896, ptr %1894, align 4
  %1897 = load ptr, ptr %8, align 8
  %1898 = getelementptr i16, ptr %1897, i32 66
  %1899 = load i16, ptr %1898, align 2
  %1900 = icmp eq i16 %1899, -1
  br i1 %1900, label %1901, label %1902, !prof !9

1901:                                             ; preds = %1893
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 398, i32 noundef 9, ptr noundef null) #18
  br label %1908

1902:                                             ; preds = %1893
  %1903 = zext i16 %1899 to i32
  %1904 = getelementptr i8, ptr %0, i32 1424
  %1905 = load ptr, ptr %1904, align 8
  %1906 = getelementptr i8, ptr %1905, i32 %1903
  %1907 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1906) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %1908

1908:                                             ; preds = %1902, %1901
  %1909 = phi i32 [ -1, %1901 ], [ %1907, %1902 ]
  %1910 = getelementptr i32, ptr %1886, i32 1
  store i32 %1909, ptr %1886, align 4
  br label %1911

1911:                                             ; preds = %1908, %1891
  %1912 = phi ptr [ %1910, %1908 ], [ null, %1891 ]
  %1913 = add nuw nsw i32 %1887, 1
  br label %1914

1914:                                             ; preds = %1911, %1884
  %1915 = phi ptr [ %1912, %1911 ], [ %1886, %1884 ]
  %1916 = phi i32 [ %1913, %1911 ], [ %1887, %1884 ]
  %1917 = load i32, ptr %248, align 4
  %1918 = and i32 %1917, 4194304
  %1919 = icmp eq i32 %1918, 0
  br i1 %1919, label %2204, label %1920

1920:                                             ; preds = %1914
  %1921 = load ptr, ptr %8, align 8
  %1922 = getelementptr i16, ptr %1921, i32 67
  %1923 = load i16, ptr %1922, align 2
  %1924 = icmp eq i16 %1923, -1
  br i1 %1924, label %1950, label %1925

1925:                                             ; preds = %1920
  %1926 = icmp eq ptr %1915, null
  br i1 %1926, label %1946, label %1927

1927:                                             ; preds = %1925
  %1928 = getelementptr i32, ptr %1, i32 2
  %1929 = load i32, ptr %1928, align 4
  %1930 = or i32 %1929, 8
  store i32 %1930, ptr %1928, align 4
  %1931 = load ptr, ptr %8, align 8
  %1932 = getelementptr i16, ptr %1931, i32 67
  %1933 = load i16, ptr %1932, align 2
  %1934 = icmp eq i16 %1933, -1
  br i1 %1934, label %1935, label %1936, !prof !9

1935:                                             ; preds = %1927
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 398, i32 noundef 9, ptr noundef null) #18
  br label %1942

1936:                                             ; preds = %1927
  %1937 = zext i16 %1933 to i32
  %1938 = getelementptr i8, ptr %0, i32 1424
  %1939 = load ptr, ptr %1938, align 8
  %1940 = getelementptr i8, ptr %1939, i32 %1937
  %1941 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1940) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %1942

1942:                                             ; preds = %1936, %1935
  %1943 = phi i32 [ -1, %1935 ], [ %1941, %1936 ]
  %1944 = getelementptr i32, ptr %1915, i32 1
  store i32 %1943, ptr %1915, align 4
  %1945 = load ptr, ptr %8, align 8
  br label %1946

1946:                                             ; preds = %1942, %1925
  %1947 = phi ptr [ %1945, %1942 ], [ %1921, %1925 ]
  %1948 = phi ptr [ %1944, %1942 ], [ null, %1925 ]
  %1949 = add nuw nsw i32 %1916, 1
  br label %1950

1950:                                             ; preds = %1946, %1920
  %1951 = phi ptr [ %1947, %1946 ], [ %1921, %1920 ]
  %1952 = phi ptr [ %1948, %1946 ], [ %1915, %1920 ]
  %1953 = phi i32 [ %1949, %1946 ], [ %1916, %1920 ]
  %1954 = getelementptr i16, ptr %1951, i32 68
  %1955 = load i16, ptr %1954, align 2
  %1956 = icmp eq i16 %1955, -1
  br i1 %1956, label %1982, label %1957

1957:                                             ; preds = %1950
  %1958 = icmp eq ptr %1952, null
  br i1 %1958, label %1978, label %1959

1959:                                             ; preds = %1957
  %1960 = getelementptr i32, ptr %1, i32 2
  %1961 = load i32, ptr %1960, align 4
  %1962 = or i32 %1961, 16
  store i32 %1962, ptr %1960, align 4
  %1963 = load ptr, ptr %8, align 8
  %1964 = getelementptr i16, ptr %1963, i32 68
  %1965 = load i16, ptr %1964, align 2
  %1966 = icmp eq i16 %1965, -1
  br i1 %1966, label %1967, label %1968, !prof !9

1967:                                             ; preds = %1959
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 398, i32 noundef 9, ptr noundef null) #18
  br label %1974

1968:                                             ; preds = %1959
  %1969 = zext i16 %1965 to i32
  %1970 = getelementptr i8, ptr %0, i32 1424
  %1971 = load ptr, ptr %1970, align 8
  %1972 = getelementptr i8, ptr %1971, i32 %1969
  %1973 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1972) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %1974

1974:                                             ; preds = %1968, %1967
  %1975 = phi i32 [ -1, %1967 ], [ %1973, %1968 ]
  %1976 = getelementptr i32, ptr %1952, i32 1
  store i32 %1975, ptr %1952, align 4
  %1977 = load ptr, ptr %8, align 8
  br label %1978

1978:                                             ; preds = %1974, %1957
  %1979 = phi ptr [ %1977, %1974 ], [ %1951, %1957 ]
  %1980 = phi ptr [ %1976, %1974 ], [ null, %1957 ]
  %1981 = add nuw nsw i32 %1953, 1
  br label %1982

1982:                                             ; preds = %1978, %1950
  %1983 = phi ptr [ %1979, %1978 ], [ %1951, %1950 ]
  %1984 = phi ptr [ %1980, %1978 ], [ %1952, %1950 ]
  %1985 = phi i32 [ %1981, %1978 ], [ %1953, %1950 ]
  %1986 = getelementptr i16, ptr %1983, i32 69
  %1987 = load i16, ptr %1986, align 2
  %1988 = icmp eq i16 %1987, -1
  br i1 %1988, label %2014, label %1989

1989:                                             ; preds = %1982
  %1990 = icmp eq ptr %1984, null
  br i1 %1990, label %2010, label %1991

1991:                                             ; preds = %1989
  %1992 = getelementptr i32, ptr %1, i32 2
  %1993 = load i32, ptr %1992, align 4
  %1994 = or i32 %1993, 32
  store i32 %1994, ptr %1992, align 4
  %1995 = load ptr, ptr %8, align 8
  %1996 = getelementptr i16, ptr %1995, i32 69
  %1997 = load i16, ptr %1996, align 2
  %1998 = icmp eq i16 %1997, -1
  br i1 %1998, label %1999, label %2000, !prof !9

1999:                                             ; preds = %1991
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 398, i32 noundef 9, ptr noundef null) #18
  br label %2006

2000:                                             ; preds = %1991
  %2001 = zext i16 %1997 to i32
  %2002 = getelementptr i8, ptr %0, i32 1424
  %2003 = load ptr, ptr %2002, align 8
  %2004 = getelementptr i8, ptr %2003, i32 %2001
  %2005 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2004) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %2006

2006:                                             ; preds = %2000, %1999
  %2007 = phi i32 [ -1, %1999 ], [ %2005, %2000 ]
  %2008 = getelementptr i32, ptr %1984, i32 1
  store i32 %2007, ptr %1984, align 4
  %2009 = load ptr, ptr %8, align 8
  br label %2010

2010:                                             ; preds = %2006, %1989
  %2011 = phi ptr [ %2009, %2006 ], [ %1983, %1989 ]
  %2012 = phi ptr [ %2008, %2006 ], [ null, %1989 ]
  %2013 = add nuw nsw i32 %1985, 1
  br label %2014

2014:                                             ; preds = %2010, %1982
  %2015 = phi ptr [ %2011, %2010 ], [ %1983, %1982 ]
  %2016 = phi ptr [ %2012, %2010 ], [ %1984, %1982 ]
  %2017 = phi i32 [ %2013, %2010 ], [ %1985, %1982 ]
  %2018 = getelementptr i16, ptr %2015, i32 70
  %2019 = load i16, ptr %2018, align 2
  %2020 = icmp eq i16 %2019, -1
  br i1 %2020, label %2046, label %2021

2021:                                             ; preds = %2014
  %2022 = icmp eq ptr %2016, null
  br i1 %2022, label %2042, label %2023

2023:                                             ; preds = %2021
  %2024 = getelementptr i32, ptr %1, i32 2
  %2025 = load i32, ptr %2024, align 4
  %2026 = or i32 %2025, 64
  store i32 %2026, ptr %2024, align 4
  %2027 = load ptr, ptr %8, align 8
  %2028 = getelementptr i16, ptr %2027, i32 70
  %2029 = load i16, ptr %2028, align 2
  %2030 = icmp eq i16 %2029, -1
  br i1 %2030, label %2031, label %2032, !prof !9

2031:                                             ; preds = %2023
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 398, i32 noundef 9, ptr noundef null) #18
  br label %2038

2032:                                             ; preds = %2023
  %2033 = zext i16 %2029 to i32
  %2034 = getelementptr i8, ptr %0, i32 1424
  %2035 = load ptr, ptr %2034, align 8
  %2036 = getelementptr i8, ptr %2035, i32 %2033
  %2037 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2036) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %2038

2038:                                             ; preds = %2032, %2031
  %2039 = phi i32 [ -1, %2031 ], [ %2037, %2032 ]
  %2040 = getelementptr i32, ptr %2016, i32 1
  store i32 %2039, ptr %2016, align 4
  %2041 = load ptr, ptr %8, align 8
  br label %2042

2042:                                             ; preds = %2038, %2021
  %2043 = phi ptr [ %2041, %2038 ], [ %2015, %2021 ]
  %2044 = phi ptr [ %2040, %2038 ], [ null, %2021 ]
  %2045 = add nuw nsw i32 %2017, 1
  br label %2046

2046:                                             ; preds = %2042, %2014
  %2047 = phi ptr [ %2043, %2042 ], [ %2015, %2014 ]
  %2048 = phi ptr [ %2044, %2042 ], [ %2016, %2014 ]
  %2049 = phi i32 [ %2045, %2042 ], [ %2017, %2014 ]
  %2050 = getelementptr i16, ptr %2047, i32 71
  %2051 = load i16, ptr %2050, align 2
  %2052 = icmp eq i16 %2051, -1
  br i1 %2052, label %2078, label %2053

2053:                                             ; preds = %2046
  %2054 = icmp eq ptr %2048, null
  br i1 %2054, label %2074, label %2055

2055:                                             ; preds = %2053
  %2056 = getelementptr i32, ptr %1, i32 2
  %2057 = load i32, ptr %2056, align 4
  %2058 = or i32 %2057, 128
  store i32 %2058, ptr %2056, align 4
  %2059 = load ptr, ptr %8, align 8
  %2060 = getelementptr i16, ptr %2059, i32 71
  %2061 = load i16, ptr %2060, align 2
  %2062 = icmp eq i16 %2061, -1
  br i1 %2062, label %2063, label %2064, !prof !9

2063:                                             ; preds = %2055
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 398, i32 noundef 9, ptr noundef null) #18
  br label %2070

2064:                                             ; preds = %2055
  %2065 = zext i16 %2061 to i32
  %2066 = getelementptr i8, ptr %0, i32 1424
  %2067 = load ptr, ptr %2066, align 8
  %2068 = getelementptr i8, ptr %2067, i32 %2065
  %2069 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2068) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %2070

2070:                                             ; preds = %2064, %2063
  %2071 = phi i32 [ -1, %2063 ], [ %2069, %2064 ]
  %2072 = getelementptr i32, ptr %2048, i32 1
  store i32 %2071, ptr %2048, align 4
  %2073 = load ptr, ptr %8, align 8
  br label %2074

2074:                                             ; preds = %2070, %2053
  %2075 = phi ptr [ %2073, %2070 ], [ %2047, %2053 ]
  %2076 = phi ptr [ %2072, %2070 ], [ null, %2053 ]
  %2077 = add nuw nsw i32 %2049, 1
  br label %2078

2078:                                             ; preds = %2074, %2046
  %2079 = phi ptr [ %2075, %2074 ], [ %2047, %2046 ]
  %2080 = phi ptr [ %2076, %2074 ], [ %2048, %2046 ]
  %2081 = phi i32 [ %2077, %2074 ], [ %2049, %2046 ]
  %2082 = getelementptr i16, ptr %2079, i32 72
  %2083 = load i16, ptr %2082, align 2
  %2084 = icmp eq i16 %2083, -1
  br i1 %2084, label %2110, label %2085

2085:                                             ; preds = %2078
  %2086 = icmp eq ptr %2080, null
  br i1 %2086, label %2106, label %2087

2087:                                             ; preds = %2085
  %2088 = getelementptr i32, ptr %1, i32 2
  %2089 = load i32, ptr %2088, align 4
  %2090 = or i32 %2089, 256
  store i32 %2090, ptr %2088, align 4
  %2091 = load ptr, ptr %8, align 8
  %2092 = getelementptr i16, ptr %2091, i32 72
  %2093 = load i16, ptr %2092, align 2
  %2094 = icmp eq i16 %2093, -1
  br i1 %2094, label %2095, label %2096, !prof !9

2095:                                             ; preds = %2087
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 398, i32 noundef 9, ptr noundef null) #18
  br label %2102

2096:                                             ; preds = %2087
  %2097 = zext i16 %2093 to i32
  %2098 = getelementptr i8, ptr %0, i32 1424
  %2099 = load ptr, ptr %2098, align 8
  %2100 = getelementptr i8, ptr %2099, i32 %2097
  %2101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2100) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %2102

2102:                                             ; preds = %2096, %2095
  %2103 = phi i32 [ -1, %2095 ], [ %2101, %2096 ]
  %2104 = getelementptr i32, ptr %2080, i32 1
  store i32 %2103, ptr %2080, align 4
  %2105 = load ptr, ptr %8, align 8
  br label %2106

2106:                                             ; preds = %2102, %2085
  %2107 = phi ptr [ %2105, %2102 ], [ %2079, %2085 ]
  %2108 = phi ptr [ %2104, %2102 ], [ null, %2085 ]
  %2109 = add nuw nsw i32 %2081, 1
  br label %2110

2110:                                             ; preds = %2106, %2078
  %2111 = phi ptr [ %2107, %2106 ], [ %2079, %2078 ]
  %2112 = phi ptr [ %2108, %2106 ], [ %2080, %2078 ]
  %2113 = phi i32 [ %2109, %2106 ], [ %2081, %2078 ]
  %2114 = getelementptr i16, ptr %2111, i32 73
  %2115 = load i16, ptr %2114, align 2
  %2116 = icmp eq i16 %2115, -1
  br i1 %2116, label %2142, label %2117

2117:                                             ; preds = %2110
  %2118 = icmp eq ptr %2112, null
  br i1 %2118, label %2138, label %2119

2119:                                             ; preds = %2117
  %2120 = getelementptr i32, ptr %1, i32 2
  %2121 = load i32, ptr %2120, align 4
  %2122 = or i32 %2121, 512
  store i32 %2122, ptr %2120, align 4
  %2123 = load ptr, ptr %8, align 8
  %2124 = getelementptr i16, ptr %2123, i32 73
  %2125 = load i16, ptr %2124, align 2
  %2126 = icmp eq i16 %2125, -1
  br i1 %2126, label %2127, label %2128, !prof !9

2127:                                             ; preds = %2119
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 398, i32 noundef 9, ptr noundef null) #18
  br label %2134

2128:                                             ; preds = %2119
  %2129 = zext i16 %2125 to i32
  %2130 = getelementptr i8, ptr %0, i32 1424
  %2131 = load ptr, ptr %2130, align 8
  %2132 = getelementptr i8, ptr %2131, i32 %2129
  %2133 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2132) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %2134

2134:                                             ; preds = %2128, %2127
  %2135 = phi i32 [ -1, %2127 ], [ %2133, %2128 ]
  %2136 = getelementptr i32, ptr %2112, i32 1
  store i32 %2135, ptr %2112, align 4
  %2137 = load ptr, ptr %8, align 8
  br label %2138

2138:                                             ; preds = %2134, %2117
  %2139 = phi ptr [ %2137, %2134 ], [ %2111, %2117 ]
  %2140 = phi ptr [ %2136, %2134 ], [ null, %2117 ]
  %2141 = add nuw nsw i32 %2113, 1
  br label %2142

2142:                                             ; preds = %2138, %2110
  %2143 = phi ptr [ %2139, %2138 ], [ %2111, %2110 ]
  %2144 = phi ptr [ %2140, %2138 ], [ %2112, %2110 ]
  %2145 = phi i32 [ %2141, %2138 ], [ %2113, %2110 ]
  %2146 = getelementptr i16, ptr %2143, i32 74
  %2147 = load i16, ptr %2146, align 2
  %2148 = icmp eq i16 %2147, -1
  br i1 %2148, label %2174, label %2149

2149:                                             ; preds = %2142
  %2150 = icmp eq ptr %2144, null
  br i1 %2150, label %2170, label %2151

2151:                                             ; preds = %2149
  %2152 = getelementptr i32, ptr %1, i32 2
  %2153 = load i32, ptr %2152, align 4
  %2154 = or i32 %2153, 1024
  store i32 %2154, ptr %2152, align 4
  %2155 = load ptr, ptr %8, align 8
  %2156 = getelementptr i16, ptr %2155, i32 74
  %2157 = load i16, ptr %2156, align 2
  %2158 = icmp eq i16 %2157, -1
  br i1 %2158, label %2159, label %2160, !prof !9

2159:                                             ; preds = %2151
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 398, i32 noundef 9, ptr noundef null) #18
  br label %2166

2160:                                             ; preds = %2151
  %2161 = zext i16 %2157 to i32
  %2162 = getelementptr i8, ptr %0, i32 1424
  %2163 = load ptr, ptr %2162, align 8
  %2164 = getelementptr i8, ptr %2163, i32 %2161
  %2165 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2164) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %2166

2166:                                             ; preds = %2160, %2159
  %2167 = phi i32 [ -1, %2159 ], [ %2165, %2160 ]
  %2168 = getelementptr i32, ptr %2144, i32 1
  store i32 %2167, ptr %2144, align 4
  %2169 = load ptr, ptr %8, align 8
  br label %2170

2170:                                             ; preds = %2166, %2149
  %2171 = phi ptr [ %2169, %2166 ], [ %2143, %2149 ]
  %2172 = phi ptr [ %2168, %2166 ], [ null, %2149 ]
  %2173 = add nuw nsw i32 %2145, 1
  br label %2174

2174:                                             ; preds = %2170, %2142
  %2175 = phi ptr [ %2171, %2170 ], [ %2143, %2142 ]
  %2176 = phi ptr [ %2172, %2170 ], [ %2144, %2142 ]
  %2177 = phi i32 [ %2173, %2170 ], [ %2145, %2142 ]
  %2178 = getelementptr i16, ptr %2175, i32 75
  %2179 = load i16, ptr %2178, align 2
  %2180 = icmp eq i16 %2179, -1
  br i1 %2180, label %2204, label %2181

2181:                                             ; preds = %2174
  %2182 = icmp eq ptr %2176, null
  br i1 %2182, label %2201, label %2183

2183:                                             ; preds = %2181
  %2184 = getelementptr i32, ptr %1, i32 2
  %2185 = load i32, ptr %2184, align 4
  %2186 = or i32 %2185, 2048
  store i32 %2186, ptr %2184, align 4
  %2187 = load ptr, ptr %8, align 8
  %2188 = getelementptr i16, ptr %2187, i32 75
  %2189 = load i16, ptr %2188, align 2
  %2190 = icmp eq i16 %2189, -1
  br i1 %2190, label %2191, label %2192, !prof !9

2191:                                             ; preds = %2183
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 398, i32 noundef 9, ptr noundef null) #18
  br label %2198

2192:                                             ; preds = %2183
  %2193 = zext i16 %2189 to i32
  %2194 = getelementptr i8, ptr %0, i32 1424
  %2195 = load ptr, ptr %2194, align 8
  %2196 = getelementptr i8, ptr %2195, i32 %2193
  %2197 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2196) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %2198

2198:                                             ; preds = %2192, %2191
  %2199 = phi i32 [ -1, %2191 ], [ %2197, %2192 ]
  %2200 = getelementptr i32, ptr %2176, i32 1
  store i32 %2199, ptr %2176, align 4
  br label %2201

2201:                                             ; preds = %2198, %2181
  %2202 = phi ptr [ %2200, %2198 ], [ null, %2181 ]
  %2203 = add nuw nsw i32 %2177, 1
  br label %2204

2204:                                             ; preds = %2201, %2174, %1914
  %2205 = phi ptr [ %2202, %2201 ], [ %2176, %2174 ], [ %1915, %1914 ]
  %2206 = phi i32 [ %2203, %2201 ], [ %2177, %2174 ], [ %1916, %1914 ]
  %2207 = load ptr, ptr %8, align 8
  %2208 = getelementptr i16, ptr %2207, i32 76
  %2209 = load i16, ptr %2208, align 2
  %2210 = icmp eq i16 %2209, -1
  br i1 %2210, label %2234, label %2211

2211:                                             ; preds = %2204
  %2212 = icmp eq ptr %2205, null
  br i1 %2212, label %2231, label %2213

2213:                                             ; preds = %2211
  %2214 = getelementptr i32, ptr %1, i32 2
  %2215 = load i32, ptr %2214, align 4
  %2216 = or i32 %2215, 4096
  store i32 %2216, ptr %2214, align 4
  %2217 = load ptr, ptr %8, align 8
  %2218 = getelementptr i16, ptr %2217, i32 76
  %2219 = load i16, ptr %2218, align 2
  %2220 = icmp eq i16 %2219, -1
  br i1 %2220, label %2221, label %2222, !prof !9

2221:                                             ; preds = %2213
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 398, i32 noundef 9, ptr noundef null) #18
  br label %2228

2222:                                             ; preds = %2213
  %2223 = zext i16 %2219 to i32
  %2224 = getelementptr i8, ptr %0, i32 1424
  %2225 = load ptr, ptr %2224, align 8
  %2226 = getelementptr i8, ptr %2225, i32 %2223
  %2227 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2226) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %2228

2228:                                             ; preds = %2222, %2221
  %2229 = phi i32 [ -1, %2221 ], [ %2227, %2222 ]
  %2230 = getelementptr i32, ptr %2205, i32 1
  store i32 %2229, ptr %2205, align 4
  br label %2231

2231:                                             ; preds = %2228, %2211
  %2232 = phi ptr [ %2230, %2228 ], [ null, %2211 ]
  %2233 = add nuw nsw i32 %2206, 1
  br label %2234

2234:                                             ; preds = %2231, %2204
  %2235 = phi ptr [ %2232, %2231 ], [ %2205, %2204 ]
  %2236 = phi i32 [ %2233, %2231 ], [ %2206, %2204 ]
  %2237 = load i32, ptr %248, align 4
  %2238 = and i32 %2237, 4194304
  %2239 = icmp eq i32 %2238, 0
  br i1 %2239, label %2492, label %2240

2240:                                             ; preds = %2234
  %2241 = load ptr, ptr %8, align 8
  %2242 = getelementptr i16, ptr %2241, i32 79
  %2243 = load i16, ptr %2242, align 2
  %2244 = icmp eq i16 %2243, -1
  br i1 %2244, label %2270, label %2245

2245:                                             ; preds = %2240
  %2246 = icmp eq ptr %2235, null
  br i1 %2246, label %2266, label %2247

2247:                                             ; preds = %2245
  %2248 = getelementptr i32, ptr %1, i32 2
  %2249 = load i32, ptr %2248, align 4
  %2250 = or i32 %2249, 32768
  store i32 %2250, ptr %2248, align 4
  %2251 = load ptr, ptr %8, align 8
  %2252 = getelementptr i16, ptr %2251, i32 79
  %2253 = load i16, ptr %2252, align 2
  %2254 = icmp eq i16 %2253, -1
  br i1 %2254, label %2255, label %2256, !prof !9

2255:                                             ; preds = %2247
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 398, i32 noundef 9, ptr noundef null) #18
  br label %2262

2256:                                             ; preds = %2247
  %2257 = zext i16 %2253 to i32
  %2258 = getelementptr i8, ptr %0, i32 1424
  %2259 = load ptr, ptr %2258, align 8
  %2260 = getelementptr i8, ptr %2259, i32 %2257
  %2261 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2260) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %2262

2262:                                             ; preds = %2256, %2255
  %2263 = phi i32 [ -1, %2255 ], [ %2261, %2256 ]
  %2264 = getelementptr i32, ptr %2235, i32 1
  store i32 %2263, ptr %2235, align 4
  %2265 = load ptr, ptr %8, align 8
  br label %2266

2266:                                             ; preds = %2262, %2245
  %2267 = phi ptr [ %2265, %2262 ], [ %2241, %2245 ]
  %2268 = phi ptr [ %2264, %2262 ], [ null, %2245 ]
  %2269 = add nuw nsw i32 %2236, 1
  br label %2270

2270:                                             ; preds = %2266, %2240
  %2271 = phi ptr [ %2267, %2266 ], [ %2241, %2240 ]
  %2272 = phi ptr [ %2268, %2266 ], [ %2235, %2240 ]
  %2273 = phi i32 [ %2269, %2266 ], [ %2236, %2240 ]
  %2274 = getelementptr i16, ptr %2271, i32 80
  %2275 = load i16, ptr %2274, align 2
  %2276 = icmp eq i16 %2275, -1
  br i1 %2276, label %2302, label %2277

2277:                                             ; preds = %2270
  %2278 = icmp eq ptr %2272, null
  br i1 %2278, label %2298, label %2279

2279:                                             ; preds = %2277
  %2280 = getelementptr i32, ptr %1, i32 2
  %2281 = load i32, ptr %2280, align 4
  %2282 = or i32 %2281, 65536
  store i32 %2282, ptr %2280, align 4
  %2283 = load ptr, ptr %8, align 8
  %2284 = getelementptr i16, ptr %2283, i32 80
  %2285 = load i16, ptr %2284, align 2
  %2286 = icmp eq i16 %2285, -1
  br i1 %2286, label %2287, label %2288, !prof !9

2287:                                             ; preds = %2279
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 398, i32 noundef 9, ptr noundef null) #18
  br label %2294

2288:                                             ; preds = %2279
  %2289 = zext i16 %2285 to i32
  %2290 = getelementptr i8, ptr %0, i32 1424
  %2291 = load ptr, ptr %2290, align 8
  %2292 = getelementptr i8, ptr %2291, i32 %2289
  %2293 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2292) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %2294

2294:                                             ; preds = %2288, %2287
  %2295 = phi i32 [ -1, %2287 ], [ %2293, %2288 ]
  %2296 = getelementptr i32, ptr %2272, i32 1
  store i32 %2295, ptr %2272, align 4
  %2297 = load ptr, ptr %8, align 8
  br label %2298

2298:                                             ; preds = %2294, %2277
  %2299 = phi ptr [ %2297, %2294 ], [ %2271, %2277 ]
  %2300 = phi ptr [ %2296, %2294 ], [ null, %2277 ]
  %2301 = add nuw nsw i32 %2273, 1
  br label %2302

2302:                                             ; preds = %2298, %2270
  %2303 = phi ptr [ %2299, %2298 ], [ %2271, %2270 ]
  %2304 = phi ptr [ %2300, %2298 ], [ %2272, %2270 ]
  %2305 = phi i32 [ %2301, %2298 ], [ %2273, %2270 ]
  %2306 = getelementptr i16, ptr %2303, i32 81
  %2307 = load i16, ptr %2306, align 2
  %2308 = icmp eq i16 %2307, -1
  br i1 %2308, label %2334, label %2309

2309:                                             ; preds = %2302
  %2310 = icmp eq ptr %2304, null
  br i1 %2310, label %2330, label %2311

2311:                                             ; preds = %2309
  %2312 = getelementptr i32, ptr %1, i32 2
  %2313 = load i32, ptr %2312, align 4
  %2314 = or i32 %2313, 131072
  store i32 %2314, ptr %2312, align 4
  %2315 = load ptr, ptr %8, align 8
  %2316 = getelementptr i16, ptr %2315, i32 81
  %2317 = load i16, ptr %2316, align 2
  %2318 = icmp eq i16 %2317, -1
  br i1 %2318, label %2319, label %2320, !prof !9

2319:                                             ; preds = %2311
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 398, i32 noundef 9, ptr noundef null) #18
  br label %2326

2320:                                             ; preds = %2311
  %2321 = zext i16 %2317 to i32
  %2322 = getelementptr i8, ptr %0, i32 1424
  %2323 = load ptr, ptr %2322, align 8
  %2324 = getelementptr i8, ptr %2323, i32 %2321
  %2325 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2324) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %2326

2326:                                             ; preds = %2320, %2319
  %2327 = phi i32 [ -1, %2319 ], [ %2325, %2320 ]
  %2328 = getelementptr i32, ptr %2304, i32 1
  store i32 %2327, ptr %2304, align 4
  %2329 = load ptr, ptr %8, align 8
  br label %2330

2330:                                             ; preds = %2326, %2309
  %2331 = phi ptr [ %2329, %2326 ], [ %2303, %2309 ]
  %2332 = phi ptr [ %2328, %2326 ], [ null, %2309 ]
  %2333 = add nuw nsw i32 %2305, 1
  br label %2334

2334:                                             ; preds = %2330, %2302
  %2335 = phi ptr [ %2331, %2330 ], [ %2303, %2302 ]
  %2336 = phi ptr [ %2332, %2330 ], [ %2304, %2302 ]
  %2337 = phi i32 [ %2333, %2330 ], [ %2305, %2302 ]
  %2338 = getelementptr i16, ptr %2335, i32 82
  %2339 = load i16, ptr %2338, align 2
  %2340 = icmp eq i16 %2339, -1
  br i1 %2340, label %2366, label %2341

2341:                                             ; preds = %2334
  %2342 = icmp eq ptr %2336, null
  br i1 %2342, label %2362, label %2343

2343:                                             ; preds = %2341
  %2344 = getelementptr i32, ptr %1, i32 2
  %2345 = load i32, ptr %2344, align 4
  %2346 = or i32 %2345, 262144
  store i32 %2346, ptr %2344, align 4
  %2347 = load ptr, ptr %8, align 8
  %2348 = getelementptr i16, ptr %2347, i32 82
  %2349 = load i16, ptr %2348, align 2
  %2350 = icmp eq i16 %2349, -1
  br i1 %2350, label %2351, label %2352, !prof !9

2351:                                             ; preds = %2343
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 398, i32 noundef 9, ptr noundef null) #18
  br label %2358

2352:                                             ; preds = %2343
  %2353 = zext i16 %2349 to i32
  %2354 = getelementptr i8, ptr %0, i32 1424
  %2355 = load ptr, ptr %2354, align 8
  %2356 = getelementptr i8, ptr %2355, i32 %2353
  %2357 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2356) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %2358

2358:                                             ; preds = %2352, %2351
  %2359 = phi i32 [ -1, %2351 ], [ %2357, %2352 ]
  %2360 = getelementptr i32, ptr %2336, i32 1
  store i32 %2359, ptr %2336, align 4
  %2361 = load ptr, ptr %8, align 8
  br label %2362

2362:                                             ; preds = %2358, %2341
  %2363 = phi ptr [ %2361, %2358 ], [ %2335, %2341 ]
  %2364 = phi ptr [ %2360, %2358 ], [ null, %2341 ]
  %2365 = add nuw nsw i32 %2337, 1
  br label %2366

2366:                                             ; preds = %2362, %2334
  %2367 = phi ptr [ %2363, %2362 ], [ %2335, %2334 ]
  %2368 = phi ptr [ %2364, %2362 ], [ %2336, %2334 ]
  %2369 = phi i32 [ %2365, %2362 ], [ %2337, %2334 ]
  %2370 = getelementptr i16, ptr %2367, i32 83
  %2371 = load i16, ptr %2370, align 2
  %2372 = icmp eq i16 %2371, -1
  br i1 %2372, label %2398, label %2373

2373:                                             ; preds = %2366
  %2374 = icmp eq ptr %2368, null
  br i1 %2374, label %2394, label %2375

2375:                                             ; preds = %2373
  %2376 = getelementptr i32, ptr %1, i32 2
  %2377 = load i32, ptr %2376, align 4
  %2378 = or i32 %2377, 524288
  store i32 %2378, ptr %2376, align 4
  %2379 = load ptr, ptr %8, align 8
  %2380 = getelementptr i16, ptr %2379, i32 83
  %2381 = load i16, ptr %2380, align 2
  %2382 = icmp eq i16 %2381, -1
  br i1 %2382, label %2383, label %2384, !prof !9

2383:                                             ; preds = %2375
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 398, i32 noundef 9, ptr noundef null) #18
  br label %2390

2384:                                             ; preds = %2375
  %2385 = zext i16 %2381 to i32
  %2386 = getelementptr i8, ptr %0, i32 1424
  %2387 = load ptr, ptr %2386, align 8
  %2388 = getelementptr i8, ptr %2387, i32 %2385
  %2389 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2388) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %2390

2390:                                             ; preds = %2384, %2383
  %2391 = phi i32 [ -1, %2383 ], [ %2389, %2384 ]
  %2392 = getelementptr i32, ptr %2368, i32 1
  store i32 %2391, ptr %2368, align 4
  %2393 = load ptr, ptr %8, align 8
  br label %2394

2394:                                             ; preds = %2390, %2373
  %2395 = phi ptr [ %2393, %2390 ], [ %2367, %2373 ]
  %2396 = phi ptr [ %2392, %2390 ], [ null, %2373 ]
  %2397 = add nuw nsw i32 %2369, 1
  br label %2398

2398:                                             ; preds = %2394, %2366
  %2399 = phi ptr [ %2395, %2394 ], [ %2367, %2366 ]
  %2400 = phi ptr [ %2396, %2394 ], [ %2368, %2366 ]
  %2401 = phi i32 [ %2397, %2394 ], [ %2369, %2366 ]
  %2402 = getelementptr i16, ptr %2399, i32 84
  %2403 = load i16, ptr %2402, align 2
  %2404 = icmp eq i16 %2403, -1
  br i1 %2404, label %2430, label %2405

2405:                                             ; preds = %2398
  %2406 = icmp eq ptr %2400, null
  br i1 %2406, label %2426, label %2407

2407:                                             ; preds = %2405
  %2408 = getelementptr i32, ptr %1, i32 2
  %2409 = load i32, ptr %2408, align 4
  %2410 = or i32 %2409, 1048576
  store i32 %2410, ptr %2408, align 4
  %2411 = load ptr, ptr %8, align 8
  %2412 = getelementptr i16, ptr %2411, i32 84
  %2413 = load i16, ptr %2412, align 2
  %2414 = icmp eq i16 %2413, -1
  br i1 %2414, label %2415, label %2416, !prof !9

2415:                                             ; preds = %2407
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 398, i32 noundef 9, ptr noundef null) #18
  br label %2422

2416:                                             ; preds = %2407
  %2417 = zext i16 %2413 to i32
  %2418 = getelementptr i8, ptr %0, i32 1424
  %2419 = load ptr, ptr %2418, align 8
  %2420 = getelementptr i8, ptr %2419, i32 %2417
  %2421 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2420) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %2422

2422:                                             ; preds = %2416, %2415
  %2423 = phi i32 [ -1, %2415 ], [ %2421, %2416 ]
  %2424 = getelementptr i32, ptr %2400, i32 1
  store i32 %2423, ptr %2400, align 4
  %2425 = load ptr, ptr %8, align 8
  br label %2426

2426:                                             ; preds = %2422, %2405
  %2427 = phi ptr [ %2425, %2422 ], [ %2399, %2405 ]
  %2428 = phi ptr [ %2424, %2422 ], [ null, %2405 ]
  %2429 = add nuw nsw i32 %2401, 1
  br label %2430

2430:                                             ; preds = %2426, %2398
  %2431 = phi ptr [ %2427, %2426 ], [ %2399, %2398 ]
  %2432 = phi ptr [ %2428, %2426 ], [ %2400, %2398 ]
  %2433 = phi i32 [ %2429, %2426 ], [ %2401, %2398 ]
  %2434 = getelementptr i16, ptr %2431, i32 85
  %2435 = load i16, ptr %2434, align 2
  %2436 = icmp eq i16 %2435, -1
  br i1 %2436, label %2462, label %2437

2437:                                             ; preds = %2430
  %2438 = icmp eq ptr %2432, null
  br i1 %2438, label %2458, label %2439

2439:                                             ; preds = %2437
  %2440 = getelementptr i32, ptr %1, i32 2
  %2441 = load i32, ptr %2440, align 4
  %2442 = or i32 %2441, 2097152
  store i32 %2442, ptr %2440, align 4
  %2443 = load ptr, ptr %8, align 8
  %2444 = getelementptr i16, ptr %2443, i32 85
  %2445 = load i16, ptr %2444, align 2
  %2446 = icmp eq i16 %2445, -1
  br i1 %2446, label %2447, label %2448, !prof !9

2447:                                             ; preds = %2439
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 398, i32 noundef 9, ptr noundef null) #18
  br label %2454

2448:                                             ; preds = %2439
  %2449 = zext i16 %2445 to i32
  %2450 = getelementptr i8, ptr %0, i32 1424
  %2451 = load ptr, ptr %2450, align 8
  %2452 = getelementptr i8, ptr %2451, i32 %2449
  %2453 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2452) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %2454

2454:                                             ; preds = %2448, %2447
  %2455 = phi i32 [ -1, %2447 ], [ %2453, %2448 ]
  %2456 = getelementptr i32, ptr %2432, i32 1
  store i32 %2455, ptr %2432, align 4
  %2457 = load ptr, ptr %8, align 8
  br label %2458

2458:                                             ; preds = %2454, %2437
  %2459 = phi ptr [ %2457, %2454 ], [ %2431, %2437 ]
  %2460 = phi ptr [ %2456, %2454 ], [ null, %2437 ]
  %2461 = add nuw nsw i32 %2433, 1
  br label %2462

2462:                                             ; preds = %2458, %2430
  %2463 = phi ptr [ %2459, %2458 ], [ %2431, %2430 ]
  %2464 = phi ptr [ %2460, %2458 ], [ %2432, %2430 ]
  %2465 = phi i32 [ %2461, %2458 ], [ %2433, %2430 ]
  %2466 = getelementptr i16, ptr %2463, i32 86
  %2467 = load i16, ptr %2466, align 2
  %2468 = icmp eq i16 %2467, -1
  br i1 %2468, label %2492, label %2469

2469:                                             ; preds = %2462
  %2470 = icmp eq ptr %2464, null
  br i1 %2470, label %2489, label %2471

2471:                                             ; preds = %2469
  %2472 = getelementptr i32, ptr %1, i32 2
  %2473 = load i32, ptr %2472, align 4
  %2474 = or i32 %2473, 4194304
  store i32 %2474, ptr %2472, align 4
  %2475 = load ptr, ptr %8, align 8
  %2476 = getelementptr i16, ptr %2475, i32 86
  %2477 = load i16, ptr %2476, align 2
  %2478 = icmp eq i16 %2477, -1
  br i1 %2478, label %2479, label %2480, !prof !9

2479:                                             ; preds = %2471
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 398, i32 noundef 9, ptr noundef null) #18
  br label %2486

2480:                                             ; preds = %2471
  %2481 = zext i16 %2477 to i32
  %2482 = getelementptr i8, ptr %0, i32 1424
  %2483 = load ptr, ptr %2482, align 8
  %2484 = getelementptr i8, ptr %2483, i32 %2481
  %2485 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2484) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %2486

2486:                                             ; preds = %2480, %2479
  %2487 = phi i32 [ -1, %2479 ], [ %2485, %2480 ]
  %2488 = getelementptr i32, ptr %2464, i32 1
  store i32 %2487, ptr %2464, align 4
  br label %2489

2489:                                             ; preds = %2486, %2469
  %2490 = phi ptr [ %2488, %2486 ], [ null, %2469 ]
  %2491 = add nuw nsw i32 %2465, 1
  br label %2492

2492:                                             ; preds = %2489, %2462, %2234
  %2493 = phi ptr [ %2490, %2489 ], [ %2464, %2462 ], [ %2235, %2234 ]
  %2494 = phi i32 [ %2491, %2489 ], [ %2465, %2462 ], [ %2236, %2234 ]
  %2495 = load ptr, ptr %8, align 8
  %2496 = getelementptr i16, ptr %2495, i32 87
  %2497 = load i16, ptr %2496, align 2
  %2498 = icmp eq i16 %2497, -1
  br i1 %2498, label %2524, label %2499

2499:                                             ; preds = %2492
  %2500 = icmp eq ptr %2493, null
  br i1 %2500, label %2520, label %2501

2501:                                             ; preds = %2499
  %2502 = getelementptr i32, ptr %1, i32 2
  %2503 = load i32, ptr %2502, align 4
  %2504 = or i32 %2503, 8388608
  store i32 %2504, ptr %2502, align 4
  %2505 = load ptr, ptr %8, align 8
  %2506 = getelementptr i16, ptr %2505, i32 87
  %2507 = load i16, ptr %2506, align 2
  %2508 = icmp eq i16 %2507, -1
  br i1 %2508, label %2509, label %2510, !prof !9

2509:                                             ; preds = %2501
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 398, i32 noundef 9, ptr noundef null) #18
  br label %2516

2510:                                             ; preds = %2501
  %2511 = zext i16 %2507 to i32
  %2512 = getelementptr i8, ptr %0, i32 1424
  %2513 = load ptr, ptr %2512, align 8
  %2514 = getelementptr i8, ptr %2513, i32 %2511
  %2515 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2514) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %2516

2516:                                             ; preds = %2510, %2509
  %2517 = phi i32 [ -1, %2509 ], [ %2515, %2510 ]
  %2518 = getelementptr i32, ptr %2493, i32 1
  store i32 %2517, ptr %2493, align 4
  %2519 = load ptr, ptr %8, align 8
  br label %2520

2520:                                             ; preds = %2516, %2499
  %2521 = phi ptr [ %2519, %2516 ], [ %2495, %2499 ]
  %2522 = phi ptr [ %2518, %2516 ], [ null, %2499 ]
  %2523 = add nuw nsw i32 %2494, 1
  br label %2524

2524:                                             ; preds = %2520, %2492
  %2525 = phi ptr [ %2521, %2520 ], [ %2495, %2492 ]
  %2526 = phi ptr [ %2522, %2520 ], [ %2493, %2492 ]
  %2527 = phi i32 [ %2523, %2520 ], [ %2494, %2492 ]
  %2528 = getelementptr i16, ptr %2525, i32 88
  %2529 = load i16, ptr %2528, align 2
  %2530 = icmp eq i16 %2529, -1
  br i1 %2530, label %2556, label %2531

2531:                                             ; preds = %2524
  %2532 = icmp eq ptr %2526, null
  br i1 %2532, label %2552, label %2533

2533:                                             ; preds = %2531
  %2534 = getelementptr i32, ptr %1, i32 2
  %2535 = load i32, ptr %2534, align 4
  %2536 = or i32 %2535, 16777216
  store i32 %2536, ptr %2534, align 4
  %2537 = load ptr, ptr %8, align 8
  %2538 = getelementptr i16, ptr %2537, i32 88
  %2539 = load i16, ptr %2538, align 2
  %2540 = icmp eq i16 %2539, -1
  br i1 %2540, label %2541, label %2542, !prof !9

2541:                                             ; preds = %2533
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 398, i32 noundef 9, ptr noundef null) #18
  br label %2548

2542:                                             ; preds = %2533
  %2543 = zext i16 %2539 to i32
  %2544 = getelementptr i8, ptr %0, i32 1424
  %2545 = load ptr, ptr %2544, align 8
  %2546 = getelementptr i8, ptr %2545, i32 %2543
  %2547 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2546) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %2548

2548:                                             ; preds = %2542, %2541
  %2549 = phi i32 [ -1, %2541 ], [ %2547, %2542 ]
  %2550 = getelementptr i32, ptr %2526, i32 1
  store i32 %2549, ptr %2526, align 4
  %2551 = load ptr, ptr %8, align 8
  br label %2552

2552:                                             ; preds = %2548, %2531
  %2553 = phi ptr [ %2551, %2548 ], [ %2525, %2531 ]
  %2554 = phi ptr [ %2550, %2548 ], [ null, %2531 ]
  %2555 = add nuw nsw i32 %2527, 1
  br label %2556

2556:                                             ; preds = %2552, %2524
  %2557 = phi ptr [ %2553, %2552 ], [ %2525, %2524 ]
  %2558 = phi ptr [ %2554, %2552 ], [ %2526, %2524 ]
  %2559 = phi i32 [ %2555, %2552 ], [ %2527, %2524 ]
  %2560 = getelementptr i16, ptr %2557, i32 89
  %2561 = load i16, ptr %2560, align 2
  %2562 = icmp eq i16 %2561, -1
  br i1 %2562, label %2588, label %2563

2563:                                             ; preds = %2556
  %2564 = icmp eq ptr %2558, null
  br i1 %2564, label %2584, label %2565

2565:                                             ; preds = %2563
  %2566 = getelementptr i32, ptr %1, i32 2
  %2567 = load i32, ptr %2566, align 4
  %2568 = or i32 %2567, 33554432
  store i32 %2568, ptr %2566, align 4
  %2569 = load ptr, ptr %8, align 8
  %2570 = getelementptr i16, ptr %2569, i32 89
  %2571 = load i16, ptr %2570, align 2
  %2572 = icmp eq i16 %2571, -1
  br i1 %2572, label %2573, label %2574, !prof !9

2573:                                             ; preds = %2565
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 398, i32 noundef 9, ptr noundef null) #18
  br label %2580

2574:                                             ; preds = %2565
  %2575 = zext i16 %2571 to i32
  %2576 = getelementptr i8, ptr %0, i32 1424
  %2577 = load ptr, ptr %2576, align 8
  %2578 = getelementptr i8, ptr %2577, i32 %2575
  %2579 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2578) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %2580

2580:                                             ; preds = %2574, %2573
  %2581 = phi i32 [ -1, %2573 ], [ %2579, %2574 ]
  %2582 = getelementptr i32, ptr %2558, i32 1
  store i32 %2581, ptr %2558, align 4
  %2583 = load ptr, ptr %8, align 8
  br label %2584

2584:                                             ; preds = %2580, %2563
  %2585 = phi ptr [ %2583, %2580 ], [ %2557, %2563 ]
  %2586 = phi ptr [ %2582, %2580 ], [ null, %2563 ]
  %2587 = add nuw nsw i32 %2559, 1
  br label %2588

2588:                                             ; preds = %2584, %2556
  %2589 = phi ptr [ %2585, %2584 ], [ %2557, %2556 ]
  %2590 = phi ptr [ %2586, %2584 ], [ %2558, %2556 ]
  %2591 = phi i32 [ %2587, %2584 ], [ %2559, %2556 ]
  %2592 = getelementptr i16, ptr %2589, i32 90
  %2593 = load i16, ptr %2592, align 2
  %2594 = icmp eq i16 %2593, -1
  br i1 %2594, label %2620, label %2595

2595:                                             ; preds = %2588
  %2596 = icmp eq ptr %2590, null
  br i1 %2596, label %2616, label %2597

2597:                                             ; preds = %2595
  %2598 = getelementptr i32, ptr %1, i32 2
  %2599 = load i32, ptr %2598, align 4
  %2600 = or i32 %2599, 67108864
  store i32 %2600, ptr %2598, align 4
  %2601 = load ptr, ptr %8, align 8
  %2602 = getelementptr i16, ptr %2601, i32 90
  %2603 = load i16, ptr %2602, align 2
  %2604 = icmp eq i16 %2603, -1
  br i1 %2604, label %2605, label %2606, !prof !9

2605:                                             ; preds = %2597
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 398, i32 noundef 9, ptr noundef null) #18
  br label %2612

2606:                                             ; preds = %2597
  %2607 = zext i16 %2603 to i32
  %2608 = getelementptr i8, ptr %0, i32 1424
  %2609 = load ptr, ptr %2608, align 8
  %2610 = getelementptr i8, ptr %2609, i32 %2607
  %2611 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2610) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %2612

2612:                                             ; preds = %2606, %2605
  %2613 = phi i32 [ -1, %2605 ], [ %2611, %2606 ]
  %2614 = getelementptr i32, ptr %2590, i32 1
  store i32 %2613, ptr %2590, align 4
  %2615 = load ptr, ptr %8, align 8
  br label %2616

2616:                                             ; preds = %2612, %2595
  %2617 = phi ptr [ %2615, %2612 ], [ %2589, %2595 ]
  %2618 = phi ptr [ %2614, %2612 ], [ null, %2595 ]
  %2619 = add nuw nsw i32 %2591, 1
  br label %2620

2620:                                             ; preds = %2616, %2588
  %2621 = phi ptr [ %2617, %2616 ], [ %2589, %2588 ]
  %2622 = phi ptr [ %2618, %2616 ], [ %2590, %2588 ]
  %2623 = phi i32 [ %2619, %2616 ], [ %2591, %2588 ]
  %2624 = getelementptr i16, ptr %2621, i32 91
  %2625 = load i16, ptr %2624, align 2
  %2626 = icmp eq i16 %2625, -1
  br i1 %2626, label %2652, label %2627

2627:                                             ; preds = %2620
  %2628 = icmp eq ptr %2622, null
  br i1 %2628, label %2648, label %2629

2629:                                             ; preds = %2627
  %2630 = getelementptr i32, ptr %1, i32 2
  %2631 = load i32, ptr %2630, align 4
  %2632 = or i32 %2631, 134217728
  store i32 %2632, ptr %2630, align 4
  %2633 = load ptr, ptr %8, align 8
  %2634 = getelementptr i16, ptr %2633, i32 91
  %2635 = load i16, ptr %2634, align 2
  %2636 = icmp eq i16 %2635, -1
  br i1 %2636, label %2637, label %2638, !prof !9

2637:                                             ; preds = %2629
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 398, i32 noundef 9, ptr noundef null) #18
  br label %2644

2638:                                             ; preds = %2629
  %2639 = zext i16 %2635 to i32
  %2640 = getelementptr i8, ptr %0, i32 1424
  %2641 = load ptr, ptr %2640, align 8
  %2642 = getelementptr i8, ptr %2641, i32 %2639
  %2643 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2642) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %2644

2644:                                             ; preds = %2638, %2637
  %2645 = phi i32 [ -1, %2637 ], [ %2643, %2638 ]
  %2646 = getelementptr i32, ptr %2622, i32 1
  store i32 %2645, ptr %2622, align 4
  %2647 = load ptr, ptr %8, align 8
  br label %2648

2648:                                             ; preds = %2644, %2627
  %2649 = phi ptr [ %2647, %2644 ], [ %2621, %2627 ]
  %2650 = phi ptr [ %2646, %2644 ], [ null, %2627 ]
  %2651 = add nuw nsw i32 %2623, 1
  br label %2652

2652:                                             ; preds = %2648, %2620
  %2653 = phi ptr [ %2649, %2648 ], [ %2621, %2620 ]
  %2654 = phi ptr [ %2650, %2648 ], [ %2622, %2620 ]
  %2655 = phi i32 [ %2651, %2648 ], [ %2623, %2620 ]
  %2656 = getelementptr i16, ptr %2653, i32 92
  %2657 = load i16, ptr %2656, align 2
  %2658 = icmp eq i16 %2657, -1
  br i1 %2658, label %2682, label %2659

2659:                                             ; preds = %2652
  %2660 = icmp eq ptr %2654, null
  br i1 %2660, label %2679, label %2661

2661:                                             ; preds = %2659
  %2662 = getelementptr i32, ptr %1, i32 2
  %2663 = load i32, ptr %2662, align 4
  %2664 = or i32 %2663, 268435456
  store i32 %2664, ptr %2662, align 4
  %2665 = load ptr, ptr %8, align 8
  %2666 = getelementptr i16, ptr %2665, i32 92
  %2667 = load i16, ptr %2666, align 2
  %2668 = icmp eq i16 %2667, -1
  br i1 %2668, label %2669, label %2670, !prof !9

2669:                                             ; preds = %2661
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 398, i32 noundef 9, ptr noundef null) #18
  br label %2676

2670:                                             ; preds = %2661
  %2671 = zext i16 %2667 to i32
  %2672 = getelementptr i8, ptr %0, i32 1424
  %2673 = load ptr, ptr %2672, align 8
  %2674 = getelementptr i8, ptr %2673, i32 %2671
  %2675 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2674) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %2676

2676:                                             ; preds = %2670, %2669
  %2677 = phi i32 [ -1, %2669 ], [ %2675, %2670 ]
  %2678 = getelementptr i32, ptr %2654, i32 1
  store i32 %2677, ptr %2654, align 4
  br label %2679

2679:                                             ; preds = %2676, %2659
  %2680 = phi ptr [ %2678, %2676 ], [ null, %2659 ]
  %2681 = add nuw nsw i32 %2655, 1
  br label %2682

2682:                                             ; preds = %2679, %2652
  %2683 = phi ptr [ %2680, %2679 ], [ %2654, %2652 ]
  %2684 = phi i32 [ %2681, %2679 ], [ %2655, %2652 ]
  %2685 = icmp eq ptr %2683, null
  br i1 %2685, label %2706, label %2686

2686:                                             ; preds = %2682
  %2687 = getelementptr i32, ptr %1, i32 2
  %2688 = load i32, ptr %2687, align 4
  %2689 = or i32 %2688, 536870912
  store i32 %2689, ptr %2687, align 4
  %2690 = getelementptr i8, ptr %0, i32 1424
  br label %2691

2691:                                             ; preds = %2691, %2686
  %2692 = phi i32 [ 0, %2686 ], [ %2704, %2691 ]
  %2693 = phi ptr [ %2683, %2686 ], [ %2703, %2691 ]
  %2694 = load ptr, ptr %2690, align 8
  %2695 = load ptr, ptr %8, align 8
  %2696 = getelementptr i16, ptr %2695, i32 93
  %2697 = load i16, ptr %2696, align 2
  %2698 = zext i16 %2697 to i32
  %2699 = getelementptr i8, ptr %2694, i32 %2698
  %2700 = shl nuw nsw i32 %2692, 2
  %2701 = getelementptr i8, ptr %2699, i32 %2700
  %2702 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2701) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  %2703 = getelementptr i32, ptr %2693, i32 1
  store i32 %2702, ptr %2693, align 4
  %2704 = add nuw nsw i32 %2692, 1
  %2705 = icmp eq i32 %2704, 64
  br i1 %2705, label %2706, label %2691

2706:                                             ; preds = %2691, %2682
  %2707 = add i32 %2684, 64
  br label %2708

2708:                                             ; preds = %2706, %1848
  %2709 = phi i32 [ %2707, %2706 ], [ %1851, %1848 ]
  %2710 = shl i32 %2709, 2
  ret i32 %2710
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_set_wakeup_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @netif_tx_disable(ptr noundef %0) unnamed_addr #6 {
  %2 = tail call ptr @llvm.thread.pointer() #18
  %3 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %4 = load volatile i32, ptr %3, align 4
  %5 = add i32 %4, 512
  store volatile i32 %5, ptr %3, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !29
  %6 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 92
  tail call void @_raw_spin_lock(ptr noundef %8) #18
  %9 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 88
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %25, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  br label %14

14:                                               ; preds = %14, %12
  %15 = phi i32 [ 0, %12 ], [ %22, %14 ]
  %16 = load ptr, ptr %13, align 64
  %17 = getelementptr %struct.netdev_queue, ptr %16, i32 %15, i32 9
  tail call void @_raw_spin_lock(ptr noundef %17) #18
  %18 = getelementptr %struct.netdev_queue, ptr %16, i32 %15, i32 10
  store volatile i32 %7, ptr %18, align 4
  %19 = getelementptr %struct.netdev_queue, ptr %16, i32 %15, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %19) #18
  store volatile i32 -1, ptr %18, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !22
  %20 = load i16, ptr %17, align 4
  %21 = add i16 %20, 1
  store i16 %21, ptr %17, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !25
  %22 = add nuw i32 %15, 1
  %23 = load i32, ptr %9, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %14, label %25

25:                                               ; preds = %14, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !22
  %26 = load i16, ptr %8, align 4
  %27 = add i16 %26, 1
  store i16 %27, ptr %8, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !25
  tail call fastcc void @local_bh_enable()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #6 {
  br label %1

1:                                                ; preds = %0
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %1) to i32), i32 noundef 512) #18
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #17

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_mdio_bitbang(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_mdiobb_read(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.mii_bus, ptr %0, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #18
  %7 = tail call i32 @mdiobb_read(ptr noundef %0, i32 noundef %1, i32 noundef %2) #18
  %8 = load ptr, ptr %4, align 4
  %9 = tail call i32 @__pm_runtime_idle(ptr noundef %8, i32 noundef 5) #18
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_mdiobb_write(ptr noundef %0, i32 noundef %1, i32 noundef %2, i16 noundef zeroext %3) #2 {
  %5 = getelementptr inbounds %struct.mii_bus, ptr %0, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @__pm_runtime_resume(ptr noundef %6, i32 noundef 4) #18
  %8 = tail call i32 @mdiobb_write(ptr noundef %0, i32 noundef %1, i32 noundef %2, i16 noundef zeroext %3) #18
  %9 = load ptr, ptr %5, align 4
  %10 = tail call i32 @__pm_runtime_idle(ptr noundef %9, i32 noundef 5) #18
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_mdiobus_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_mdio_bitbang(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sh_mdc_ctrl(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 -4
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %0, i32 12
  %8 = load ptr, ptr %7, align 4
  tail call void %4(ptr noundef %8) #18
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr i8, ptr %0, i32 12
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  %13 = icmp ne i32 %1, 0
  %14 = and i32 %12, -2
  %15 = zext i1 %13 to i32
  %16 = or i32 %14, %15
  %17 = load ptr, ptr %10, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %16) #18, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sh_mmd_ctrl(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 -4
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %0, i32 12
  %8 = load ptr, ptr %7, align 4
  tail call void %4(ptr noundef %8) #18
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr i8, ptr %0, i32 12
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  %13 = icmp eq i32 %1, 0
  %14 = and i32 %12, -3
  %15 = select i1 %13, i32 0, i32 2
  %16 = or i32 %14, %15
  %17 = load ptr, ptr %10, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %16) #18, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sh_set_mdio(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 -4
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %0, i32 12
  %8 = load ptr, ptr %7, align 4
  tail call void %4(ptr noundef %8) #18
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr i8, ptr %0, i32 12
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  %13 = icmp eq i32 %1, 0
  %14 = and i32 %12, -5
  %15 = select i1 %13, i32 0, i32 4
  %16 = or i32 %14, %15
  %17 = load ptr, ptr %10, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %16) #18, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_get_mdio(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %0, i32 12
  %7 = load ptr, ptr %6, align 4
  tail call void %3(ptr noundef %7) #18
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr i8, ptr %0, i32 12
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  %12 = lshr i32 %11, 3
  %13 = and i32 %12, 1
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobb_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobb_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_receive_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netif_napi_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_eth_soft_reset_gether(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 1416
  %3 = load ptr, ptr %2, align 8
  %4 = load i16, ptr %3, align 2
  %5 = icmp eq i16 %4, -1
  br i1 %5, label %6, label %7, !prof !9

6:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 354, i32 noundef 9, ptr noundef null) #18
  br label %12

7:                                                ; preds = %1
  %8 = zext i16 %4 to i32
  %9 = getelementptr i8, ptr %0, i32 1420
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 3) #18, !srcloc !11
  br label %12

12:                                               ; preds = %7, %6
  %13 = load ptr, ptr %2, align 8
  %14 = getelementptr i16, ptr %13, i32 1
  %15 = load i16, ptr %14, align 2
  %16 = icmp eq i16 %15, -1
  br i1 %16, label %17, label %18, !prof !9

17:                                               ; preds = %12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %24

18:                                               ; preds = %12
  %19 = zext i16 %15 to i32
  %20 = getelementptr i8, ptr %0, i32 1420
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr i8, ptr %21, i32 %19
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  br label %24

24:                                               ; preds = %18, %17
  %25 = phi i32 [ -1, %17 ], [ %23, %18 ]
  %26 = load ptr, ptr %2, align 8
  %27 = getelementptr i16, ptr %26, i32 1
  %28 = load i16, ptr %27, align 2
  %29 = icmp eq i16 %28, -1
  br i1 %29, label %30, label %31, !prof !9

30:                                               ; preds = %24
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 354, i32 noundef 9, ptr noundef null) #18
  br label %37

31:                                               ; preds = %24
  %32 = or i32 %25, 3
  %33 = zext i16 %28 to i32
  %34 = getelementptr i8, ptr %0, i32 1420
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr i8, ptr %35, i32 %33
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %32) #18, !srcloc !11
  br label %37

37:                                               ; preds = %31, %30
  %38 = getelementptr i8, ptr %0, i32 1420
  br label %39

39:                                               ; preds = %53, %37
  %40 = phi i32 [ 100, %37 ], [ %55, %53 ]
  %41 = load ptr, ptr %2, align 8
  %42 = getelementptr i16, ptr %41, i32 1
  %43 = load i16, ptr %42, align 2
  %44 = icmp eq i16 %43, -1
  br i1 %44, label %45, label %46, !prof !9

45:                                               ; preds = %39
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %53

46:                                               ; preds = %39
  %47 = zext i16 %43 to i32
  %48 = load ptr, ptr %38, align 4
  %49 = getelementptr i8, ptr %48, i32 %47
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  %51 = and i32 %50, 3
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %46, %45
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %54(i32 noundef 214748000) #18
  %55 = add nsw i32 %40, -1
  %56 = icmp ugt i32 %40, 1
  br i1 %56, label %39, label %57

57:                                               ; preds = %53
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.35) #19
  br label %186

58:                                               ; preds = %46
  %59 = load ptr, ptr %2, align 8
  %60 = getelementptr i16, ptr %59, i32 6
  %61 = load i16, ptr %60, align 2
  %62 = icmp eq i16 %61, -1
  br i1 %62, label %63, label %64, !prof !9

63:                                               ; preds = %58
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 354, i32 noundef 9, ptr noundef null) #18
  br label %68

64:                                               ; preds = %58
  %65 = zext i16 %61 to i32
  %66 = load ptr, ptr %38, align 4
  %67 = getelementptr i8, ptr %66, i32 %65
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 0) #18, !srcloc !11
  br label %68

68:                                               ; preds = %64, %63
  %69 = load ptr, ptr %2, align 8
  %70 = getelementptr i16, ptr %69, i32 7
  %71 = load i16, ptr %70, align 2
  %72 = icmp eq i16 %71, -1
  br i1 %72, label %73, label %74, !prof !9

73:                                               ; preds = %68
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 354, i32 noundef 9, ptr noundef null) #18
  br label %78

74:                                               ; preds = %68
  %75 = zext i16 %71 to i32
  %76 = load ptr, ptr %38, align 4
  %77 = getelementptr i8, ptr %76, i32 %75
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 0) #18, !srcloc !11
  br label %78

78:                                               ; preds = %74, %73
  %79 = load ptr, ptr %2, align 8
  %80 = getelementptr i16, ptr %79, i32 8
  %81 = load i16, ptr %80, align 2
  %82 = icmp eq i16 %81, -1
  br i1 %82, label %83, label %84, !prof !9

83:                                               ; preds = %78
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 354, i32 noundef 9, ptr noundef null) #18
  br label %88

84:                                               ; preds = %78
  %85 = zext i16 %81 to i32
  %86 = load ptr, ptr %38, align 4
  %87 = getelementptr i8, ptr %86, i32 %85
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 0) #18, !srcloc !11
  br label %88

88:                                               ; preds = %84, %83
  %89 = load ptr, ptr %2, align 8
  %90 = getelementptr i16, ptr %89, i32 9
  %91 = load i16, ptr %90, align 2
  %92 = icmp eq i16 %91, -1
  br i1 %92, label %93, label %94, !prof !9

93:                                               ; preds = %88
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 354, i32 noundef 9, ptr noundef null) #18
  br label %98

94:                                               ; preds = %88
  %95 = zext i16 %91 to i32
  %96 = load ptr, ptr %38, align 4
  %97 = getelementptr i8, ptr %96, i32 %95
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %97, i32 0) #18, !srcloc !11
  br label %98

98:                                               ; preds = %94, %93
  %99 = load ptr, ptr %2, align 8
  %100 = getelementptr i16, ptr %99, i32 10
  %101 = load i16, ptr %100, align 2
  %102 = icmp eq i16 %101, -1
  br i1 %102, label %103, label %104, !prof !9

103:                                              ; preds = %98
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 354, i32 noundef 9, ptr noundef null) #18
  br label %108

104:                                              ; preds = %98
  %105 = zext i16 %101 to i32
  %106 = load ptr, ptr %38, align 4
  %107 = getelementptr i8, ptr %106, i32 %105
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %107, i32 0) #18, !srcloc !11
  br label %108

108:                                              ; preds = %104, %103
  %109 = load ptr, ptr %2, align 8
  %110 = getelementptr i16, ptr %109, i32 11
  %111 = load i16, ptr %110, align 2
  %112 = icmp eq i16 %111, -1
  br i1 %112, label %113, label %114, !prof !9

113:                                              ; preds = %108
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 354, i32 noundef 9, ptr noundef null) #18
  br label %118

114:                                              ; preds = %108
  %115 = zext i16 %111 to i32
  %116 = load ptr, ptr %38, align 4
  %117 = getelementptr i8, ptr %116, i32 %115
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %117, i32 0) #18, !srcloc !11
  br label %118

118:                                              ; preds = %114, %113
  %119 = load ptr, ptr %2, align 8
  %120 = getelementptr i16, ptr %119, i32 12
  %121 = load i16, ptr %120, align 2
  %122 = icmp eq i16 %121, -1
  br i1 %122, label %123, label %124, !prof !9

123:                                              ; preds = %118
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 354, i32 noundef 9, ptr noundef null) #18
  br label %128

124:                                              ; preds = %118
  %125 = zext i16 %121 to i32
  %126 = load ptr, ptr %38, align 4
  %127 = getelementptr i8, ptr %126, i32 %125
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %127, i32 0) #18, !srcloc !11
  br label %128

128:                                              ; preds = %124, %123
  %129 = load ptr, ptr %2, align 8
  %130 = getelementptr i16, ptr %129, i32 13
  %131 = load i16, ptr %130, align 2
  %132 = icmp eq i16 %131, -1
  br i1 %132, label %133, label %134, !prof !9

133:                                              ; preds = %128
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 354, i32 noundef 9, ptr noundef null) #18
  br label %138

134:                                              ; preds = %128
  %135 = zext i16 %131 to i32
  %136 = load ptr, ptr %38, align 4
  %137 = getelementptr i8, ptr %136, i32 %135
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %137, i32 0) #18, !srcloc !11
  br label %138

138:                                              ; preds = %134, %133
  %139 = getelementptr i8, ptr %0, i32 1412
  %140 = load ptr, ptr %139, align 4
  %141 = getelementptr inbounds %struct.sh_eth_cpu_data, ptr %140, i32 0, i32 15
  %142 = load i32, ptr %141, align 4
  %143 = and i32 %142, 16384
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %155, label %145

145:                                              ; preds = %138
  %146 = load ptr, ptr %2, align 8
  %147 = getelementptr i16, ptr %146, i32 63
  %148 = load i16, ptr %147, align 2
  %149 = icmp eq i16 %148, -1
  br i1 %149, label %150, label %151, !prof !9

150:                                              ; preds = %145
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 354, i32 noundef 9, ptr noundef null) #18
  br label %155

151:                                              ; preds = %145
  %152 = zext i16 %148 to i32
  %153 = load ptr, ptr %38, align 4
  %154 = getelementptr i8, ptr %153, i32 %152
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %154, i32 0) #18, !srcloc !11
  br label %155

155:                                              ; preds = %151, %150, %138
  %156 = load ptr, ptr %139, align 4
  %157 = getelementptr inbounds %struct.sh_eth_cpu_data, ptr %156, i32 0, i32 15
  %158 = load i32, ptr %157, align 4
  %159 = and i32 %158, 65536
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %186, label %161

161:                                              ; preds = %155
  %162 = getelementptr i8, ptr %0, i32 1720
  %163 = load i32, ptr %162, align 8
  %164 = add i32 %163, -2
  %165 = icmp ult i32 %164, 11
  br i1 %165, label %167, label %166

166:                                              ; preds = %167, %161
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %0, ptr noundef nonnull @.str.36) #19
  br label %175

167:                                              ; preds = %161
  %168 = trunc i32 %164 to i16
  %169 = lshr i16 1955, %168
  %170 = and i16 %169, 1
  %171 = icmp eq i16 %170, 0
  br i1 %171, label %166, label %172

172:                                              ; preds = %167
  %173 = getelementptr inbounds [11 x i32], ptr @switch.table.sh_eth_chip_reset_r8a7740, i32 0, i32 %164
  %174 = load i32, ptr %173, align 4
  br label %175

175:                                              ; preds = %172, %166
  %176 = phi i32 [ 1, %166 ], [ %174, %172 ]
  %177 = load ptr, ptr %2, align 8
  %178 = getelementptr i16, ptr %177, i32 64
  %179 = load i16, ptr %178, align 2
  %180 = icmp eq i16 %179, -1
  br i1 %180, label %181, label %182, !prof !9

181:                                              ; preds = %175
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 354, i32 noundef 9, ptr noundef null) #18
  br label %186

182:                                              ; preds = %175
  %183 = zext i16 %179 to i32
  %184 = load ptr, ptr %38, align 4
  %185 = getelementptr i8, ptr %184, i32 %183
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %185, i32 %176) #18, !srcloc !11
  br label %186

186:                                              ; preds = %182, %181, %155, %57
  %187 = phi i32 [ 0, %155 ], [ -110, %57 ], [ 0, %181 ], [ 0, %182 ]
  ret i32 %187
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sh_eth_chip_reset_r8a7740(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 1416
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i16, ptr %3, i32 65
  %5 = load i16, ptr %4, align 2
  %6 = icmp eq i16 %5, -1
  br i1 %6, label %7, label %8, !prof !9

7:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 388, i32 noundef 9, ptr noundef null) #18
  br label %13

8:                                                ; preds = %1
  %9 = zext i16 %5 to i32
  %10 = getelementptr i8, ptr %0, i32 1424
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr i8, ptr %11, i32 %9
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 1) #18, !srcloc !11
  br label %13

13:                                               ; preds = %8, %7
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748000) #18
  %15 = getelementptr i8, ptr %0, i32 1720
  %16 = load i32, ptr %15, align 8
  %17 = add i32 %16, -2
  %18 = icmp ult i32 %17, 11
  br i1 %18, label %20, label %19

19:                                               ; preds = %20, %13
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %0, ptr noundef nonnull @.str.36) #19
  br label %28

20:                                               ; preds = %13
  %21 = trunc i32 %17 to i16
  %22 = lshr i16 1955, %21
  %23 = and i16 %22, 1
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %19, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds [11 x i32], ptr @switch.table.sh_eth_chip_reset_r8a7740, i32 0, i32 %17
  %27 = load i32, ptr %26, align 4
  br label %28

28:                                               ; preds = %25, %19
  %29 = phi i32 [ 1, %19 ], [ %27, %25 ]
  %30 = load ptr, ptr %2, align 8
  %31 = getelementptr i16, ptr %30, i32 64
  %32 = load i16, ptr %31, align 2
  %33 = icmp eq i16 %32, -1
  br i1 %33, label %34, label %35, !prof !9

34:                                               ; preds = %28
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 354, i32 noundef 9, ptr noundef null) #18
  br label %40

35:                                               ; preds = %28
  %36 = zext i16 %32 to i32
  %37 = getelementptr i8, ptr %0, i32 1420
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr i8, ptr %38, i32 %36
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %29) #18, !srcloc !11
  br label %40

40:                                               ; preds = %35, %34
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sh_eth_set_duplex(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 1732
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  %5 = select i1 %4, i32 0, i32 2
  %6 = getelementptr i8, ptr %0, i32 1416
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr i16, ptr %7, i32 28
  %9 = load i16, ptr %8, align 2
  %10 = icmp eq i16 %9, -1
  br i1 %10, label %11, label %12, !prof !9

11:                                               ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %19

12:                                               ; preds = %1
  %13 = zext i16 %9 to i32
  %14 = getelementptr i8, ptr %0, i32 1420
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 %13
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  %18 = and i32 %17, -3
  br label %19

19:                                               ; preds = %12, %11
  %20 = phi i32 [ -3, %11 ], [ %18, %12 ]
  %21 = load ptr, ptr %6, align 8
  %22 = getelementptr i16, ptr %21, i32 28
  %23 = load i16, ptr %22, align 2
  %24 = icmp eq i16 %23, -1
  br i1 %24, label %25, label %26, !prof !9

25:                                               ; preds = %19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 354, i32 noundef 9, ptr noundef null) #18
  br label %32

26:                                               ; preds = %19
  %27 = or i32 %20, %5
  %28 = zext i16 %23 to i32
  %29 = getelementptr i8, ptr %0, i32 1420
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr i8, ptr %30, i32 %28
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %27) #18, !srcloc !11
  br label %32

32:                                               ; preds = %26, %25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sh_eth_set_rate_gether(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 1412
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.sh_eth_cpu_data, ptr %3, i32 0, i32 15
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 16
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9, !prof !9

8:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 519, i32 noundef 9, ptr noundef null) #18
  br label %48

9:                                                ; preds = %1
  %10 = getelementptr i8, ptr %0, i32 1728
  %11 = load i32, ptr %10, align 8
  switch i32 %11, label %48 [
    i32 10, label %12
    i32 100, label %24
    i32 1000, label %36
  ]

12:                                               ; preds = %9
  %13 = getelementptr i8, ptr %0, i32 1416
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr i16, ptr %14, i32 47
  %16 = load i16, ptr %15, align 2
  %17 = icmp eq i16 %16, -1
  br i1 %17, label %18, label %19, !prof !9

18:                                               ; preds = %12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 354, i32 noundef 9, ptr noundef null) #18
  br label %48

19:                                               ; preds = %12
  %20 = zext i16 %16 to i32
  %21 = getelementptr i8, ptr %0, i32 1420
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr i8, ptr %22, i32 %20
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 0) #18, !srcloc !11
  br label %48

24:                                               ; preds = %9
  %25 = getelementptr i8, ptr %0, i32 1416
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr i16, ptr %26, i32 47
  %28 = load i16, ptr %27, align 2
  %29 = icmp eq i16 %28, -1
  br i1 %29, label %30, label %31, !prof !9

30:                                               ; preds = %24
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 354, i32 noundef 9, ptr noundef null) #18
  br label %48

31:                                               ; preds = %24
  %32 = zext i16 %28 to i32
  %33 = getelementptr i8, ptr %0, i32 1420
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr i8, ptr %34, i32 %32
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 4) #18, !srcloc !11
  br label %48

36:                                               ; preds = %9
  %37 = getelementptr i8, ptr %0, i32 1416
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr i16, ptr %38, i32 47
  %40 = load i16, ptr %39, align 2
  %41 = icmp eq i16 %40, -1
  br i1 %41, label %42, label %43, !prof !9

42:                                               ; preds = %36
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 354, i32 noundef 9, ptr noundef null) #18
  br label %48

43:                                               ; preds = %36
  %44 = zext i16 %40 to i32
  %45 = getelementptr i8, ptr %0, i32 1420
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr i8, ptr %46, i32 %44
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 1) #18, !srcloc !11
  br label %48

48:                                               ; preds = %43, %42, %31, %30, %19, %18, %9, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sh_eth_chip_reset(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 1416
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i16, ptr %3, i32 65
  %5 = load i16, ptr %4, align 2
  %6 = icmp eq i16 %5, -1
  br i1 %6, label %7, label %8, !prof !9

7:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 388, i32 noundef 9, ptr noundef null) #18
  br label %13

8:                                                ; preds = %1
  %9 = zext i16 %5 to i32
  %10 = getelementptr i8, ptr %0, i32 1424
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr i8, ptr %11, i32 %9
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 1) #18, !srcloc !11
  br label %13

13:                                               ; preds = %8, %7
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748000) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_eth_soft_reset(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 1416
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i16, ptr %3, i32 1
  %5 = load i16, ptr %4, align 2
  %6 = icmp eq i16 %5, -1
  br i1 %6, label %7, label %8, !prof !9

7:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %15

8:                                                ; preds = %1
  %9 = zext i16 %5 to i32
  %10 = getelementptr i8, ptr %0, i32 1420
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 %9
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  %14 = or i32 %13, 1
  br label %15

15:                                               ; preds = %8, %7
  %16 = phi i32 [ -1, %7 ], [ %14, %8 ]
  %17 = load ptr, ptr %2, align 8
  %18 = getelementptr i16, ptr %17, i32 1
  %19 = load i16, ptr %18, align 2
  %20 = icmp eq i16 %19, -1
  br i1 %20, label %21, label %22, !prof !9

21:                                               ; preds = %15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 354, i32 noundef 9, ptr noundef null) #18
  br label %27

22:                                               ; preds = %15
  %23 = zext i16 %19 to i32
  %24 = getelementptr i8, ptr %0, i32 1420
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr i8, ptr %25, i32 %23
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %16) #18, !srcloc !11
  br label %27

27:                                               ; preds = %22, %21
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748000) #18
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748000) #18
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748000) #18
  %31 = load ptr, ptr %2, align 8
  %32 = getelementptr i16, ptr %31, i32 1
  %33 = load i16, ptr %32, align 2
  %34 = icmp eq i16 %33, -1
  br i1 %34, label %35, label %36, !prof !9

35:                                               ; preds = %27
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %43

36:                                               ; preds = %27
  %37 = zext i16 %33 to i32
  %38 = getelementptr i8, ptr %0, i32 1420
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr i8, ptr %39, i32 %37
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  %42 = and i32 %41, -2
  br label %43

43:                                               ; preds = %36, %35
  %44 = phi i32 [ -2, %35 ], [ %42, %36 ]
  %45 = load ptr, ptr %2, align 8
  %46 = getelementptr i16, ptr %45, i32 1
  %47 = load i16, ptr %46, align 2
  %48 = icmp eq i16 %47, -1
  br i1 %48, label %49, label %50, !prof !9

49:                                               ; preds = %43
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 354, i32 noundef 9, ptr noundef null) #18
  br label %55

50:                                               ; preds = %43
  %51 = zext i16 %47 to i32
  %52 = getelementptr i8, ptr %0, i32 1420
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr i8, ptr %53, i32 %51
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %44) #18, !srcloc !11
  br label %55

55:                                               ; preds = %50, %49
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sh_eth_set_rate_rcar(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 1728
  %3 = load i32, ptr %2, align 8
  switch i32 %3, label %56 [
    i32 10, label %4
    i32 100, label %30
  ]

4:                                                ; preds = %1
  %5 = getelementptr i8, ptr %0, i32 1416
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr i16, ptr %6, i32 28
  %8 = load i16, ptr %7, align 2
  %9 = icmp eq i16 %8, -1
  br i1 %9, label %10, label %11, !prof !9

10:                                               ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %18

11:                                               ; preds = %4
  %12 = zext i16 %8 to i32
  %13 = getelementptr i8, ptr %0, i32 1420
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 %12
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  %17 = and i32 %16, -5
  br label %18

18:                                               ; preds = %11, %10
  %19 = phi i32 [ -5, %10 ], [ %17, %11 ]
  %20 = load ptr, ptr %5, align 8
  %21 = getelementptr i16, ptr %20, i32 28
  %22 = load i16, ptr %21, align 2
  %23 = icmp eq i16 %22, -1
  br i1 %23, label %24, label %25, !prof !9

24:                                               ; preds = %18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 354, i32 noundef 9, ptr noundef null) #18
  br label %56

25:                                               ; preds = %18
  %26 = zext i16 %22 to i32
  %27 = getelementptr i8, ptr %0, i32 1420
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i8, ptr %28, i32 %26
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %19) #18, !srcloc !11
  br label %56

30:                                               ; preds = %1
  %31 = getelementptr i8, ptr %0, i32 1416
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr i16, ptr %32, i32 28
  %34 = load i16, ptr %33, align 2
  %35 = icmp eq i16 %34, -1
  br i1 %35, label %36, label %37, !prof !9

36:                                               ; preds = %30
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %44

37:                                               ; preds = %30
  %38 = zext i16 %34 to i32
  %39 = getelementptr i8, ptr %0, i32 1420
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr i8, ptr %40, i32 %38
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  %43 = or i32 %42, 4
  br label %44

44:                                               ; preds = %37, %36
  %45 = phi i32 [ -1, %36 ], [ %43, %37 ]
  %46 = load ptr, ptr %31, align 8
  %47 = getelementptr i16, ptr %46, i32 28
  %48 = load i16, ptr %47, align 2
  %49 = icmp eq i16 %48, -1
  br i1 %49, label %50, label %51, !prof !9

50:                                               ; preds = %44
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 354, i32 noundef 9, ptr noundef null) #18
  br label %56

51:                                               ; preds = %44
  %52 = zext i16 %48 to i32
  %53 = getelementptr i8, ptr %0, i32 1420
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr i8, ptr %54, i32 %52
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %45) #18, !srcloc !11
  br label %56

56:                                               ; preds = %51, %50, %25, %24, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_eth_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %58, label %8

8:                                                ; preds = %1
  tail call void @netif_device_detach(ptr noundef %3) #18
  %9 = getelementptr i8, ptr %3, i32 1744
  %10 = load i8, ptr %9, align 8
  %11 = and i8 %10, 8
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %56, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 59
  %15 = load i32, ptr %14, align 8
  tail call void @synchronize_irq(i32 noundef %15) #18
  %16 = getelementptr i8, ptr %3, i32 1488
  tail call void @napi_disable(ptr noundef %16) #18
  %17 = getelementptr i8, ptr %3, i32 1416
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr i16, ptr %18, i32 5
  %20 = load i16, ptr %19, align 2
  %21 = icmp eq i16 %20, -1
  br i1 %21, label %22, label %23, !prof !9

22:                                               ; preds = %13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 354, i32 noundef 9, ptr noundef null) #18
  br label %28

23:                                               ; preds = %13
  %24 = zext i16 %20 to i32
  %25 = getelementptr i8, ptr %3, i32 1420
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr i8, ptr %26, i32 %24
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 4194304) #18, !srcloc !11
  br label %28

28:                                               ; preds = %23, %22
  %29 = load ptr, ptr %17, align 8
  %30 = getelementptr i16, ptr %29, i32 28
  %31 = load i16, ptr %30, align 2
  %32 = icmp eq i16 %31, -1
  br i1 %32, label %33, label %34, !prof !9

33:                                               ; preds = %28
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %41

34:                                               ; preds = %28
  %35 = zext i16 %31 to i32
  %36 = getelementptr i8, ptr %3, i32 1420
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr i8, ptr %37, i32 %35
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  %40 = or i32 %39, 512
  br label %41

41:                                               ; preds = %34, %33
  %42 = phi i32 [ -1, %33 ], [ %40, %34 ]
  %43 = load ptr, ptr %17, align 8
  %44 = getelementptr i16, ptr %43, i32 28
  %45 = load i16, ptr %44, align 2
  %46 = icmp eq i16 %45, -1
  br i1 %46, label %47, label %48, !prof !9

47:                                               ; preds = %41
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 354, i32 noundef 9, ptr noundef null) #18
  br label %53

48:                                               ; preds = %41
  %49 = zext i16 %45 to i32
  %50 = getelementptr i8, ptr %3, i32 1420
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr i8, ptr %51, i32 %49
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %42) #18, !srcloc !11
  br label %53

53:                                               ; preds = %48, %47
  %54 = load i32, ptr %14, align 8
  %55 = tail call i32 @irq_set_irq_wake(i32 noundef %54, i32 noundef 1) #18
  br label %58

56:                                               ; preds = %8
  %57 = tail call i32 @sh_eth_close(ptr noundef %3)
  br label %58

58:                                               ; preds = %56, %53, %1
  %59 = phi i32 [ 0, %1 ], [ %55, %53 ], [ 0, %56 ]
  ret i32 %59
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_eth_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %54, label %8

8:                                                ; preds = %1
  %9 = getelementptr i8, ptr %3, i32 1744
  %10 = load i8, ptr %9, align 8
  %11 = and i8 %10, 8
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %48, label %13

13:                                               ; preds = %8
  %14 = getelementptr i8, ptr %3, i32 1488
  tail call void @napi_enable(ptr noundef %14) #18
  %15 = getelementptr i8, ptr %3, i32 1416
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr i16, ptr %16, i32 28
  %18 = load i16, ptr %17, align 2
  %19 = icmp eq i16 %18, -1
  br i1 %19, label %20, label %21, !prof !9

20:                                               ; preds = %13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %28

21:                                               ; preds = %13
  %22 = zext i16 %18 to i32
  %23 = getelementptr i8, ptr %3, i32 1420
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %24, i32 %22
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  %27 = and i32 %26, -513
  br label %28

28:                                               ; preds = %21, %20
  %29 = phi i32 [ -513, %20 ], [ %27, %21 ]
  %30 = load ptr, ptr %15, align 8
  %31 = getelementptr i16, ptr %30, i32 28
  %32 = load i16, ptr %31, align 2
  %33 = icmp eq i16 %32, -1
  br i1 %33, label %34, label %35, !prof !9

34:                                               ; preds = %28
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 354, i32 noundef 9, ptr noundef null) #18
  br label %40

35:                                               ; preds = %28
  %36 = zext i16 %32 to i32
  %37 = getelementptr i8, ptr %3, i32 1420
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr i8, ptr %38, i32 %36
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %29) #18, !srcloc !11
  br label %40

40:                                               ; preds = %35, %34
  %41 = tail call i32 @sh_eth_close(ptr noundef %3) #18
  %42 = tail call i32 @sh_eth_open(ptr noundef %3) #18
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %54, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 59
  %46 = load i32, ptr %45, align 8
  %47 = tail call i32 @irq_set_irq_wake(i32 noundef %46, i32 noundef 0) #18
  br label %50

48:                                               ; preds = %8
  %49 = tail call i32 @sh_eth_open(ptr noundef %3)
  br label %50

50:                                               ; preds = %48, %44
  %51 = phi i32 [ %49, %48 ], [ %47, %44 ]
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %50
  tail call void @netif_device_attach(ptr noundef %3) #18
  br label %54

54:                                               ; preds = %53, %50, %40, %1
  %55 = phi i32 [ %51, %53 ], [ 0, %1 ], [ %51, %50 ], [ %42, %40 ]
  ret i32 %55
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @sh_eth_runtime_nop(ptr nocapture noundef readnone %0) #16 {
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sh_eth_set_rate_sh7724(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 1728
  %3 = load i32, ptr %2, align 8
  switch i32 %3, label %56 [
    i32 10, label %4
    i32 100, label %30
  ]

4:                                                ; preds = %1
  %5 = getelementptr i8, ptr %0, i32 1416
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr i16, ptr %6, i32 28
  %8 = load i16, ptr %7, align 2
  %9 = icmp eq i16 %8, -1
  br i1 %9, label %10, label %11, !prof !9

10:                                               ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %18

11:                                               ; preds = %4
  %12 = zext i16 %8 to i32
  %13 = getelementptr i8, ptr %0, i32 1420
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 %12
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  %17 = and i32 %16, -17
  br label %18

18:                                               ; preds = %11, %10
  %19 = phi i32 [ -17, %10 ], [ %17, %11 ]
  %20 = load ptr, ptr %5, align 8
  %21 = getelementptr i16, ptr %20, i32 28
  %22 = load i16, ptr %21, align 2
  %23 = icmp eq i16 %22, -1
  br i1 %23, label %24, label %25, !prof !9

24:                                               ; preds = %18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 354, i32 noundef 9, ptr noundef null) #18
  br label %56

25:                                               ; preds = %18
  %26 = zext i16 %22 to i32
  %27 = getelementptr i8, ptr %0, i32 1420
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i8, ptr %28, i32 %26
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %19) #18, !srcloc !11
  br label %56

30:                                               ; preds = %1
  %31 = getelementptr i8, ptr %0, i32 1416
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr i16, ptr %32, i32 28
  %34 = load i16, ptr %33, align 2
  %35 = icmp eq i16 %34, -1
  br i1 %35, label %36, label %37, !prof !9

36:                                               ; preds = %30
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 365, i32 noundef 9, ptr noundef null) #18
  br label %44

37:                                               ; preds = %30
  %38 = zext i16 %34 to i32
  %39 = getelementptr i8, ptr %0, i32 1420
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr i8, ptr %40, i32 %38
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  %43 = or i32 %42, 16
  br label %44

44:                                               ; preds = %37, %36
  %45 = phi i32 [ -1, %36 ], [ %43, %37 ]
  %46 = load ptr, ptr %31, align 8
  %47 = getelementptr i16, ptr %46, i32 28
  %48 = load i16, ptr %47, align 2
  %49 = icmp eq i16 %48, -1
  br i1 %49, label %50, label %51, !prof !9

50:                                               ; preds = %44
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 354, i32 noundef 9, ptr noundef null) #18
  br label %56

51:                                               ; preds = %44
  %52 = zext i16 %48 to i32
  %53 = getelementptr i8, ptr %0, i32 1420
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr i8, ptr %54, i32 %52
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %45) #18, !srcloc !11
  br label %56

56:                                               ; preds = %51, %50, %25, %24, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sh_eth_set_rate_sh7757(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 1728
  %3 = load i32, ptr %2, align 8
  switch i32 %3, label %28 [
    i32 10, label %4
    i32 100, label %16
  ]

4:                                                ; preds = %1
  %5 = getelementptr i8, ptr %0, i32 1416
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr i16, ptr %6, i32 62
  %8 = load i16, ptr %7, align 2
  %9 = icmp eq i16 %8, -1
  br i1 %9, label %10, label %11, !prof !9

10:                                               ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 354, i32 noundef 9, ptr noundef null) #18
  br label %28

11:                                               ; preds = %4
  %12 = zext i16 %8 to i32
  %13 = getelementptr i8, ptr %0, i32 1420
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 %12
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 0) #18, !srcloc !11
  br label %28

16:                                               ; preds = %1
  %17 = getelementptr i8, ptr %0, i32 1416
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr i16, ptr %18, i32 62
  %20 = load i16, ptr %19, align 2
  %21 = icmp eq i16 %20, -1
  br i1 %21, label %22, label %23, !prof !9

22:                                               ; preds = %16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 354, i32 noundef 9, ptr noundef null) #18
  br label %28

23:                                               ; preds = %16
  %24 = zext i16 %20 to i32
  %25 = getelementptr i8, ptr %0, i32 1420
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr i8, ptr %26, i32 %24
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 1) #18, !srcloc !11
  br label %28

28:                                               ; preds = %23, %22, %11, %10, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sh_eth_chip_reset_giga(ptr nocapture noundef readonly %0) #2 {
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) inttoptr (i32 -18872888 to ptr)) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) inttoptr (i32 -18872896 to ptr)) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) inttoptr (i32 -18870840 to ptr)) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) inttoptr (i32 -18870848 to ptr)) #18, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !13
  %6 = getelementptr i8, ptr %0, i32 1416
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr i16, ptr %7, i32 65
  %9 = load i16, ptr %8, align 2
  %10 = icmp eq i16 %9, -1
  br i1 %10, label %11, label %12, !prof !9

11:                                               ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 388, i32 noundef 9, ptr noundef null) #18
  br label %17

12:                                               ; preds = %1
  %13 = zext i16 %9 to i32
  %14 = getelementptr i8, ptr %0, i32 1424
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr i8, ptr %15, i32 %13
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 1) #18, !srcloc !11
  br label %17

17:                                               ; preds = %12, %11
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748000) #18
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -18872888 to ptr), i32 %2) #18, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -18872896 to ptr), i32 %3) #18, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -18870840 to ptr), i32 %4) #18, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -18870848 to ptr), i32 %5) #18, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sh_eth_set_rate_giga(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 1412
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.sh_eth_cpu_data, ptr %3, i32 0, i32 15
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 16
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9, !prof !9

8:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 916, i32 noundef 9, ptr noundef null) #18
  br label %48

9:                                                ; preds = %1
  %10 = getelementptr i8, ptr %0, i32 1728
  %11 = load i32, ptr %10, align 8
  switch i32 %11, label %48 [
    i32 10, label %12
    i32 100, label %24
    i32 1000, label %36
  ]

12:                                               ; preds = %9
  %13 = getelementptr i8, ptr %0, i32 1416
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr i16, ptr %14, i32 47
  %16 = load i16, ptr %15, align 2
  %17 = icmp eq i16 %16, -1
  br i1 %17, label %18, label %19, !prof !9

18:                                               ; preds = %12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 354, i32 noundef 9, ptr noundef null) #18
  br label %48

19:                                               ; preds = %12
  %20 = zext i16 %16 to i32
  %21 = getelementptr i8, ptr %0, i32 1420
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr i8, ptr %22, i32 %20
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 0) #18, !srcloc !11
  br label %48

24:                                               ; preds = %9
  %25 = getelementptr i8, ptr %0, i32 1416
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr i16, ptr %26, i32 47
  %28 = load i16, ptr %27, align 2
  %29 = icmp eq i16 %28, -1
  br i1 %29, label %30, label %31, !prof !9

30:                                               ; preds = %24
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 354, i32 noundef 9, ptr noundef null) #18
  br label %48

31:                                               ; preds = %24
  %32 = zext i16 %28 to i32
  %33 = getelementptr i8, ptr %0, i32 1420
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr i8, ptr %34, i32 %32
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 16) #18, !srcloc !11
  br label %48

36:                                               ; preds = %9
  %37 = getelementptr i8, ptr %0, i32 1416
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr i16, ptr %38, i32 47
  %40 = load i16, ptr %39, align 2
  %41 = icmp eq i16 %40, -1
  br i1 %41, label %42, label %43, !prof !9

42:                                               ; preds = %36
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 354, i32 noundef 9, ptr noundef null) #18
  br label %48

43:                                               ; preds = %36
  %44 = zext i16 %40 to i32
  %45 = getelementptr i8, ptr %0, i32 1420
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr i8, ptr %46, i32 %44
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 32) #18, !srcloc !11
  br label %48

48:                                               ; preds = %43, %42, %31, %30, %19, %18, %9, %8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #18 = { nounwind }
attributes #19 = { cold nounwind }
attributes #20 = { nounwind readnone }
attributes #21 = { nounwind allocsize(0) }

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
!10 = !{i64 2151085996}
!11 = !{i64 3544903}
!12 = !{i64 3545321}
!13 = !{i64 2151084774}
!14 = !{i64 2155484554}
!15 = !{i64 2148869471, i64 2148869494, i64 2148869526, i64 2148869558, i64 2148869596, i64 2148869626}
!16 = !{i64 2155486689}
!17 = !{i8 0, i8 2}
!18 = !{!"branch_weights", i32 2000, i32 1}
!19 = !{i64 2153482704, i64 2153483192, i64 2153482741, i64 2153482797, i64 2153482831, i64 2153482855, i64 2153482896, i64 2153482917, i64 2153482945, i64 2153482979}
!20 = !{i64 2155526112}
!21 = !{i64 2155526348}
!22 = !{i64 2149012615}
!23 = !{i64 2149008439}
!24 = !{i64 2149008514, i64 2149008541, i64 2149008588, i64 2149008610, i64 2149008638, i64 2149008658}
!25 = !{i64 2149035618}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.peeled.count", i32 1}
!28 = !{i64 2155479544}
!29 = !{i64 2148944740}
