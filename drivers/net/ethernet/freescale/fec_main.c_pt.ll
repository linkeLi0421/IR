; ModuleID = '/llk/IR/drivers/net/ethernet/freescale/fec_main.c_pt.bc'
source_filename = "../drivers/net/ethernet/freescale/fec_main.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.116 }
%union.anon.116 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type {}
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.fec_stat = type { [32 x i8], i16 }
%struct.fec_devinfo = type { i32 }
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
%struct.fec_enet_private = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.mutex, i32, i32, [3 x ptr], [3 x ptr], i32, i32, ptr, i32, ptr, i32, i32, ptr, i8, i8, i32, i32, i32, [3 x i32], i8, i32, i32, i32, i32, %struct.napi_struct, i32, %struct.work_struct, ptr, %struct.ptp_clock_info, i32, %struct.spinlock, %struct.cyclecounter, %struct.timecounter, i32, i32, i32, i32, i32, %struct.delayed_work, ptr, %struct.fec_stop_mode_gpr, i32, i32, i32, i32, i32, i32, i32, %struct.ethtool_eee, i32, i32, i32, i32, i32, i32, i32, [0 x i64] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.fec_stop_mode_gpr = type { ptr, i8, i8 }
%struct.ethtool_eee = type { i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%struct.bufdesc_prop = type { i32, ptr, ptr, ptr, ptr, i32, i16, i8, i8 }
%struct.fec_enet_priv_tx_q = type { %struct.bufdesc_prop, [512 x ptr], [512 x ptr], i16, i16, ptr, ptr, i32 }
%struct.fec_platform_data = type { i32, [6 x i8], ptr }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.netdev_queue = type { ptr, %struct.netdevice_tracker, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, [4 x i8], %struct.spinlock, i32, i32, i32, [48 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [52 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [24 x i8] }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bufdesc = type { i16, i16, i32 }
%struct.fec_enet_priv_rx_q = type { %struct.bufdesc_prop, [512 x ptr] }
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
%struct.bufdesc_ex = type { %struct.bufdesc, i32, i32, i32, i32, [4 x i16] }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.tso_t = type { i32, i32, ptr, i16, i8, i8, i32 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.anon.58 = type { i16, i16 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.page = type { i32, %union.anon.1, %union.anon.115, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.115 = type { %struct.atomic_t }
%struct.vlan_ethhdr = type { %union.anon.144, i16, i16, i16 }
%union.anon.144 = type { %struct.anon.145 }
%struct.anon.145 = type { [6 x i8], [6 x i8] }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.mii_timestamper = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.ethtool_regs = type { i32, i32, i32, [0 x i8] }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.ethtool_pauseparam = type { i32, i32, i32, i32 }
%struct.ethtool_ts_info = type { i32, i32, i32, i32, [3 x i32], i32, [3 x i32] }
%struct.ethtool_tunable = type { i32, i32, i32, i32, [0 x ptr] }

@__param_str_macaddr = internal constant [12 x i8] c"fec.macaddr\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_macaddr = internal constant %struct.kparam_array { i32 6, i32 1, ptr null, ptr @param_ops_byte, ptr @macaddr }, align 4
@__param_macaddr = internal constant %struct.kernel_param { ptr @__param_str_macaddr, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.116 { ptr @__param_arr_macaddr } }, section "__param", align 4
@__UNIQUE_ID_macaddrtype467 = internal constant [35 x i8] c"fec.parmtype=macaddr:array of byte\00", section ".modinfo", align 1
@__UNIQUE_ID_macaddr468 = internal constant [42 x i8] c"fec.parm=macaddr:FEC Ethernet MAC address\00", section ".modinfo", align 1
@__initcall__kmod_fec__475_4196_fec_driver_init6 = internal global ptr @fec_driver_init, section ".initcall6.init", align 4
@fec_driver = internal global %struct.platform_driver { ptr @fec_probe, ptr @fec_drv_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @fec_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fec_pm_ops, ptr null, ptr null }, ptr @fec_devtype, i8 0 }, align 4
@__exitcall_fec_driver_exit = internal global ptr @fec_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file476 = internal constant [44 x i8] c"fec.file=drivers/net/ethernet/freescale/fec\00", section ".modinfo", align 1
@__UNIQUE_ID_license477 = internal constant [16 x i8] c"fec.license=GPL\00", section ".modinfo", align 1
@param_ops_byte = external dso_local constant %struct.kernel_param_ops, align 4
@macaddr = internal global [6 x i8] zeroinitializer, align 4
@.str = private unnamed_addr constant [4 x i8] c"fec\00", align 1
@fec_dt_ids = internal constant [10 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx25-fec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @fec_devtype, i64 24) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx27-fec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @fec_devtype, i64 48) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx28-fec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @fec_devtype, i64 72) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6q-fec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @fec_devtype, i64 96) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,mvf600-fec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @fec_devtype, i64 120) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6sx-fec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @fec_devtype, i64 144) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6ul-fec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @fec_devtype, i64 168) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8mq-fec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @fec_devtype, i64 192) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8qm-fec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @fec_devtype, i64 216) }, %struct.of_device_id zeroinitializer], align 4
@fec_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @fec_suspend, ptr @fec_resume, ptr @fec_suspend, ptr @fec_resume, ptr @fec_suspend, ptr @fec_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fec_runtime_suspend, ptr @fec_runtime_resume, ptr null }, align 4
@fec_devtype = internal global [11 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"fec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id { [20 x i8] c"imx25-fec\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @fec_imx25_info to i32) }, %struct.platform_device_id { [20 x i8] c"imx27-fec\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @fec_imx27_info to i32) }, %struct.platform_device_id { [20 x i8] c"imx28-fec\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @fec_imx28_info to i32) }, %struct.platform_device_id { [20 x i8] c"imx6q-fec\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @fec_imx6q_info to i32) }, %struct.platform_device_id { [20 x i8] c"mvf600-fec\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @fec_mvf600_info to i32) }, %struct.platform_device_id { [20 x i8] c"imx6sx-fec\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @fec_imx6x_info to i32) }, %struct.platform_device_id { [20 x i8] c"imx6ul-fec\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @fec_imx6ul_info to i32) }, %struct.platform_device_id { [20 x i8] c"imx8mq-fec\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @fec_imx8mq_info to i32) }, %struct.platform_device_id { [20 x i8] c"imx8qm-fec\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @fec_imx8qm_info to i32) }, %struct.platform_device_id zeroinitializer], align 4
@fec_probe.dev_id = internal unnamed_addr global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"fsl,imx6q\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"fsl,imx6dl\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"fsl,err006687-workaround-present\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"fsl,magic-packet\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"phy-handle\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"broken fixed-link specification\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"ipg\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"ahb\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"enet_out\00", align 1
@fec_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"&fep->ptp_clk_mutex\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"enet_clk_ref\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"enet_2x_txclk\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"ptp\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"phy\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"Failed to enable phy regulator: %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"int%d\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"registered PHC device %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"fsl,num-tx-queues\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"fsl,num-rx-queues\00", align 1
@.str.20 = private unnamed_addr constant [37 x i8] c"Invalid num_tx(=%d), fall back to 1\0A\00", align 1
@.str.21 = private unnamed_addr constant [37 x i8] c"Invalid num_rx(=%d), fall back to 1\0A\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"fsl,stop-mode\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"could not find gpr regmap\0A\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"tx-internal-delay-ps\00", align 1
@.str.25 = private unnamed_addr constant [56 x i8] c"The only allowed RGMII TX delay values are: 0ps, 2000ps\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"rx-internal-delay-ps\00", align 1
@.str.27 = private unnamed_addr constant [56 x i8] c"The only allowed RGMII RX delay values are: 0ps, 2000ps\00", align 1
@.str.28 = private unnamed_addr constant [19 x i8] c"phy-reset-duration\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"phy-reset-gpios\00", align 1
@.str.30 = private unnamed_addr constant [21 x i8] c"phy-reset-post-delay\00", align 1
@.str.31 = private unnamed_addr constant [22 x i8] c"phy-reset-active-high\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"phy-reset\00", align 1
@.str.33 = private unnamed_addr constant [35 x i8] c"failed to get phy-reset-gpios: %d\0A\00", align 1
@.str.34 = private unnamed_addr constant [42 x i8] c"drivers/net/ethernet/freescale/fec_main.c\00", align 1
@.str.35 = private unnamed_addr constant [27 x i8] c"No suitable DMA available\0A\00", align 1
@offset_des_active_rxq = internal unnamed_addr constant [3 x i16] [i16 16, i16 480, i16 488], align 2
@offset_des_active_txq = internal unnamed_addr constant [3 x i16] [i16 20, i16 484, i16 492], align 2
@fec_netdev_ops = internal constant %struct.net_device_ops { ptr null, ptr null, ptr @fec_enet_open, ptr @fec_enet_close, ptr @fec_enet_start_xmit, ptr null, ptr @fec_enet_select_queue, ptr null, ptr @set_multicast_list, ptr @fec_set_mac_address, ptr @eth_validate_addr, ptr null, ptr @fec_enet_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fec_timeout, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fec_set_features, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@fec_enet_ethtool_ops = internal constant %struct.ethtool_ops { i8 0, i32 51, i32 0, ptr @fec_enet_get_drvinfo, ptr @fec_enet_get_regs_len, ptr @fec_enet_get_regs, ptr @fec_enet_get_wol, ptr @fec_enet_set_wol, ptr null, ptr null, ptr @phy_ethtool_nway_reset, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr @fec_enet_get_coalesce, ptr @fec_enet_set_coalesce, ptr null, ptr null, ptr null, ptr @fec_enet_get_pauseparam, ptr @fec_enet_set_pauseparam, ptr @net_selftest, ptr @fec_enet_get_strings, ptr null, ptr @fec_enet_get_ethtool_stats, ptr null, ptr null, ptr null, ptr null, ptr @fec_enet_get_sset_count, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fec_enet_get_ts_info, ptr null, ptr null, ptr @fec_enet_get_eee, ptr @fec_enet_set_eee, ptr @fec_enet_get_tunable, ptr @fec_enet_set_tunable, ptr null, ptr null, ptr @phy_ethtool_get_link_ksettings, ptr @phy_ethtool_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.36 = private unnamed_addr constant [26 x i8] c"Invalid MAC address: %pM\0A\00", align 1
@.str.37 = private unnamed_addr constant [31 x i8] c"Using random MAC address: %pM\0A\00", align 1
@.str.38 = private unnamed_addr constant [26 x i8] c"Rx DMA memory map failed\0A\00", align 1
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.39 = private unnamed_addr constant [28 x i8] c"include/linux/dma-mapping.h\00", align 1
@.str.40 = private unnamed_addr constant [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.41 = private unnamed_addr constant [26 x i8] c"Unable to connect to phy\0A\00", align 1
@.str.42 = private unnamed_addr constant [46 x i8] c"no PHY, assuming direct connection to switch\0A\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"fixed-0\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"%s:%02x\00", align 1
@.str.45 = private unnamed_addr constant [25 x i8] c"could not attach to PHY\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.46 = private unnamed_addr constant [42 x i8] c"Graceful transmit stop did not complete!\0A\00", align 1
@.str.47 = private unnamed_addr constant [24 x i8] c"NOT enough BD for TSO!\0A\00", align 1
@.str.48 = private unnamed_addr constant [26 x i8] c"Tx DMA memory map failed\0A\00", align 1
@.str.49 = private unnamed_addr constant [23 x i8] c"NOT enough BD for SG!\0A\00", align 1
@fec_enet_vlan_pri_to_queue = internal unnamed_addr constant [8 x i16] [i16 0, i16 0, i16 1, i16 1, i16 1, i16 2, i16 2, i16 2], align 2
@.str.50 = private unnamed_addr constant [14 x i8] c"TX ring dump\0A\00", align 1
@.str.51 = private unnamed_addr constant [37 x i8] c"\016Nr     SC     addr       len  SKB\0A\00", align 1
@.str.52 = private unnamed_addr constant [33 x i8] c"\016%3u %c%c 0x%04x 0x%08x %4u %p\0A\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@fec_enet_register_offset = internal unnamed_addr constant [103 x i32] [i32 4, i32 8, i32 16, i32 20, i32 36, i32 64, i32 68, i32 100, i32 132, i32 196, i32 228, i32 232, i32 236, i32 240, i32 244, i32 248, i32 256, i32 260, i32 264, i32 280, i32 284, i32 288, i32 292, i32 324, i32 332, i32 336, i32 352, i32 356, i32 360, i32 364, i32 368, i32 372, i32 384, i32 388, i32 392, i32 400, i32 404, i32 408, i32 412, i32 452, i32 456, i32 460, i32 472, i32 476, i32 480, i32 484, i32 488, i32 492, i32 496, i32 512, i32 516, i32 520, i32 524, i32 528, i32 532, i32 536, i32 540, i32 544, i32 548, i32 552, i32 556, i32 560, i32 564, i32 568, i32 572, i32 576, i32 580, i32 584, i32 588, i32 592, i32 596, i32 600, i32 604, i32 608, i32 612, i32 616, i32 620, i32 624, i32 628, i32 644, i32 648, i32 652, i32 656, i32 660, i32 664, i32 668, i32 672, i32 676, i32 680, i32 684, i32 688, i32 692, i32 696, i32 700, i32 704, i32 708, i32 712, i32 716, i32 720, i32 724, i32 728, i32 732, i32 736], align 4
@.str.53 = private unnamed_addr constant [48 x i8] c"Rx coalesced frames exceed hardware limitation\0A\00", align 1
@.str.54 = private unnamed_addr constant [47 x i8] c"Tx coalesced frame exceed hardware limitation\0A\00", align 1
@.str.55 = private unnamed_addr constant [46 x i8] c"Rx coalesced usec exceed hardware limitation\0A\00", align 1
@.str.56 = private unnamed_addr constant [46 x i8] c"Tx coalesced usec exceed hardware limitation\0A\00", align 1
@.str.57 = private unnamed_addr constant [52 x i8] c"hardware only support enable/disable both tx and rx\00", align 1
@fec_stats = internal unnamed_addr constant [53 x %struct.fec_stat] [%struct.fec_stat { [32 x i8] c"tx_dropped\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 512 }, %struct.fec_stat { [32 x i8] c"tx_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 516 }, %struct.fec_stat { [32 x i8] c"tx_broadcast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 520 }, %struct.fec_stat { [32 x i8] c"tx_multicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 524 }, %struct.fec_stat { [32 x i8] c"tx_crc_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 528 }, %struct.fec_stat { [32 x i8] c"tx_undersize\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 532 }, %struct.fec_stat { [32 x i8] c"tx_oversize\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 536 }, %struct.fec_stat { [32 x i8] c"tx_fragment\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 540 }, %struct.fec_stat { [32 x i8] c"tx_jabber\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 544 }, %struct.fec_stat { [32 x i8] c"tx_collision\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 548 }, %struct.fec_stat { [32 x i8] c"tx_64byte\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 552 }, %struct.fec_stat { [32 x i8] c"tx_65to127byte\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 556 }, %struct.fec_stat { [32 x i8] c"tx_128to255byte\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 560 }, %struct.fec_stat { [32 x i8] c"tx_256to511byte\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 564 }, %struct.fec_stat { [32 x i8] c"tx_512to1023byte\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 568 }, %struct.fec_stat { [32 x i8] c"tx_1024to2047byte\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 572 }, %struct.fec_stat { [32 x i8] c"tx_GTE2048byte\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 576 }, %struct.fec_stat { [32 x i8] c"tx_octets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 580 }, %struct.fec_stat { [32 x i8] c"IEEE_tx_drop\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 584 }, %struct.fec_stat { [32 x i8] c"IEEE_tx_frame_ok\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 588 }, %struct.fec_stat { [32 x i8] c"IEEE_tx_1col\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 592 }, %struct.fec_stat { [32 x i8] c"IEEE_tx_mcol\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 596 }, %struct.fec_stat { [32 x i8] c"IEEE_tx_def\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 600 }, %struct.fec_stat { [32 x i8] c"IEEE_tx_lcol\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 604 }, %struct.fec_stat { [32 x i8] c"IEEE_tx_excol\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 608 }, %struct.fec_stat { [32 x i8] c"IEEE_tx_macerr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 612 }, %struct.fec_stat { [32 x i8] c"IEEE_tx_cserr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 616 }, %struct.fec_stat { [32 x i8] c"IEEE_tx_sqe\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 620 }, %struct.fec_stat { [32 x i8] c"IEEE_tx_fdxfc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 624 }, %struct.fec_stat { [32 x i8] c"IEEE_tx_octets_ok\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 628 }, %struct.fec_stat { [32 x i8] c"rx_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 644 }, %struct.fec_stat { [32 x i8] c"rx_broadcast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 648 }, %struct.fec_stat { [32 x i8] c"rx_multicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 652 }, %struct.fec_stat { [32 x i8] c"rx_crc_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 656 }, %struct.fec_stat { [32 x i8] c"rx_undersize\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 660 }, %struct.fec_stat { [32 x i8] c"rx_oversize\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 664 }, %struct.fec_stat { [32 x i8] c"rx_fragment\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 668 }, %struct.fec_stat { [32 x i8] c"rx_jabber\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 672 }, %struct.fec_stat { [32 x i8] c"rx_64byte\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 680 }, %struct.fec_stat { [32 x i8] c"rx_65to127byte\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 684 }, %struct.fec_stat { [32 x i8] c"rx_128to255byte\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 688 }, %struct.fec_stat { [32 x i8] c"rx_256to511byte\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 692 }, %struct.fec_stat { [32 x i8] c"rx_512to1023byte\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 696 }, %struct.fec_stat { [32 x i8] c"rx_1024to2047byte\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 700 }, %struct.fec_stat { [32 x i8] c"rx_GTE2048byte\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 704 }, %struct.fec_stat { [32 x i8] c"rx_octets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 708 }, %struct.fec_stat { [32 x i8] c"IEEE_rx_drop\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 712 }, %struct.fec_stat { [32 x i8] c"IEEE_rx_frame_ok\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 716 }, %struct.fec_stat { [32 x i8] c"IEEE_rx_crc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 720 }, %struct.fec_stat { [32 x i8] c"IEEE_rx_align\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 724 }, %struct.fec_stat { [32 x i8] c"IEEE_rx_macerr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 728 }, %struct.fec_stat { [32 x i8] c"IEEE_rx_fdxfc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 732 }, %struct.fec_stat { [32 x i8] c"IEEE_rx_octets_ok\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 736 }], align 2
@.str.58 = private unnamed_addr constant [18 x i8] c"rcv is not +last\0A\00", align 1
@fec_enet_mii_init.fec0_mii_bus = internal unnamed_addr global ptr null, align 4
@mii_cnt = internal unnamed_addr global i32 0, align 4
@.str.59 = private unnamed_addr constant [5 x i8] c"mdio\00", align 1
@.str.60 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.61 = private unnamed_addr constant [18 x i8] c"suppress-preamble\00", align 1
@.str.62 = private unnamed_addr constant [49 x i8] c"fec clock (%lu) too fast to get right mii speed\0A\00", align 1
@.str.63 = private unnamed_addr constant [17 x i8] c"fec_enet_mii_bus\00", align 1
@.str.64 = private unnamed_addr constant [6 x i8] c"%s-%x\00", align 1
@.str.65 = private unnamed_addr constant [28 x i8] c"MDIO address write timeout\0A\00", align 1
@.str.66 = private unnamed_addr constant [19 x i8] c"MDIO read timeout\0A\00", align 1
@.str.67 = private unnamed_addr constant [20 x i8] c"MDIO write timeout\0A\00", align 1
@fec_imx25_info = internal constant %struct.fec_devinfo { i32 98308 }, align 4
@fec_imx27_info = internal constant %struct.fec_devinfo { i32 98304 }, align 4
@fec_imx28_info = internal constant %struct.fec_devinfo { i32 464899 }, align 4
@fec_imx6q_info = internal constant %struct.fec_devinfo { i32 135417 }, align 4
@fec_mvf600_info = internal constant %struct.fec_devinfo { i32 4097 }, align 4
@fec_imx6x_info = internal constant %struct.fec_devinfo { i32 669561 }, align 4
@fec_imx6ul_info = internal constant %struct.fec_devinfo { i32 145017 }, align 4
@fec_imx8mq_info = internal constant %struct.fec_devinfo { i32 5912441 }, align 4
@fec_imx8qm_info = internal constant %struct.fec_devinfo { i32 2766713 }, align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_file476, ptr @__UNIQUE_ID_license477, ptr @__UNIQUE_ID_macaddr468, ptr @__UNIQUE_ID_macaddrtype467, ptr @__exitcall_fec_driver_exit, ptr @__initcall__kmod_fec__475_4196_fec_driver_init6, ptr @__param_macaddr, ptr @fec_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @fec_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @fec_driver, ptr noundef null) #16
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @fec_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @fec_driver) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fec_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.of_phandle_args, align 4
  %5 = alloca %struct.of_phandle_args, align 4
  %6 = alloca [3 x i32], align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  store i32 0, ptr %7, align 4, !annotation !8
  %11 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %12 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %13 = load ptr, ptr %12, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #16
  store i64 0, ptr %10, align 8, !annotation !8
  store i32 1, ptr %9, align 4
  store i32 1, ptr %8, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %33, label %15

15:                                               ; preds = %1
  %16 = tail call zeroext i1 @of_device_is_available(ptr noundef nonnull %13) #16
  br i1 %16, label %17, label %33

17:                                               ; preds = %15
  %18 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %13, ptr noundef nonnull @.str.18, ptr noundef nonnull %8, i32 noundef 1, i32 noundef 0) #16
  %19 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %13, ptr noundef nonnull @.str.19, ptr noundef nonnull %9, i32 noundef 1, i32 noundef 0) #16
  %20 = load i32, ptr %8, align 4
  %21 = add i32 %20, -4
  %22 = icmp ult i32 %21, -3
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.20, i32 noundef %20) #17
  br label %29

24:                                               ; preds = %17
  %25 = load i32, ptr %9, align 4
  %26 = add i32 %25, -4
  %27 = icmp ult i32 %26, -3
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.21, i32 noundef %25) #17
  br label %29

29:                                               ; preds = %28, %23
  %30 = phi ptr [ %9, %28 ], [ %8, %23 ]
  store i32 1, ptr %30, align 4
  %31 = load i32, ptr %8, align 4
  %32 = load i32, ptr %9, align 4
  br label %33

33:                                               ; preds = %29, %24, %15, %1
  %34 = phi i32 [ 1, %1 ], [ 1, %15 ], [ %25, %24 ], [ %32, %29 ]
  %35 = phi i32 [ 1, %1 ], [ 1, %15 ], [ %20, %24 ], [ %31, %29 ]
  %36 = call ptr @alloc_etherdev_mqs(i32 noundef 1192, i32 noundef %35, i32 noundef %34) #16
  %37 = icmp eq ptr %36, null
  br i1 %37, label %371, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.net_device, ptr %36, i32 0, i32 111
  %40 = getelementptr inbounds %struct.net_device, ptr %36, i32 0, i32 111, i32 1
  store ptr %11, ptr %40, align 4
  %41 = getelementptr i8, ptr %36, i32 1408
  %42 = call ptr @of_match_device(ptr noundef nonnull @fec_dt_ids, ptr noundef %11) #16
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 8
  %46 = load ptr, ptr %45, align 4
  br label %51

47:                                               ; preds = %38
  %48 = getelementptr inbounds %struct.of_device_id, ptr %42, i32 0, i32 3
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 8
  store ptr %49, ptr %50, align 4
  br label %51

51:                                               ; preds = %47, %44
  %52 = phi ptr [ %46, %44 ], [ %49, %47 ]
  %53 = getelementptr inbounds %struct.platform_device_id, ptr %52, i32 0, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = getelementptr i8, ptr %36, i32 1572
  %58 = load i32, ptr %57, align 4
  br label %63

59:                                               ; preds = %51
  %60 = inttoptr i32 %54 to ptr
  %61 = load i32, ptr %60, align 4
  %62 = getelementptr i8, ptr %36, i32 1572
  store i32 %61, ptr %62, align 4
  br label %63

63:                                               ; preds = %59, %56
  %64 = phi i32 [ %58, %56 ], [ %61, %59 ]
  %65 = getelementptr i8, ptr %36, i32 1412
  store ptr %36, ptr %65, align 4
  %66 = load i32, ptr %9, align 4
  %67 = getelementptr i8, ptr %36, i32 1468
  store i32 %66, ptr %67, align 4
  %68 = load i32, ptr %8, align 4
  %69 = getelementptr i8, ptr %36, i32 1464
  store i32 %68, ptr %69, align 8
  %70 = getelementptr i8, ptr %36, i32 1572
  %71 = and i32 %64, 8
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %63
  %74 = getelementptr i8, ptr %36, i32 1560
  %75 = load i32, ptr %74, align 8
  %76 = or i32 %75, 1
  store i32 %76, ptr %74, align 8
  br label %77

77:                                               ; preds = %73, %63
  %78 = call i32 @pinctrl_pm_select_default_state(ptr noundef %11) #16
  %79 = call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #16
  store ptr %79, ptr %41, align 8
  %80 = icmp ugt ptr %79, inttoptr (i32 -4096 to ptr)
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = ptrtoint ptr %79 to i32
  br label %369

83:                                               ; preds = %77
  %84 = getelementptr i8, ptr %36, i32 1504
  store ptr %0, ptr %84, align 8
  %85 = load i32, ptr @fec_probe.dev_id, align 4
  %86 = add i32 %85, 1
  store i32 %86, ptr @fec_probe.dev_id, align 4
  %87 = getelementptr i8, ptr %36, i32 1508
  store i32 %85, ptr %87, align 4
  %88 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %36, ptr %88, align 8
  %89 = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.1) #16
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %83
  %92 = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.2) #16
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %100, label %94

94:                                               ; preds = %91, %83
  %95 = call ptr @of_find_property(ptr noundef %13, ptr noundef nonnull @.str.3, ptr noundef null) #16
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load i32, ptr %70, align 4
  %99 = or i32 %98, 16384
  store i32 %99, ptr %70, align 4
  br label %100

100:                                              ; preds = %97, %94, %91
  %101 = call ptr @of_get_property(ptr noundef %13, ptr noundef nonnull @.str.4, ptr noundef null) #16
  %102 = icmp eq ptr %101, null
  br i1 %102, label %107, label %103

103:                                              ; preds = %100
  %104 = getelementptr i8, ptr %36, i32 1564
  %105 = load i32, ptr %104, align 4
  %106 = or i32 %105, 1
  store i32 %106, ptr %104, align 4
  br label %107

107:                                              ; preds = %103, %100
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %6, i8 0, i32 12, i1 false) #16, !annotation !8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %5, i8 0, i32 72, i1 false) #16, !annotation !8
  %108 = call i32 @__of_parse_phandle_with_args(ptr noundef %13, ptr noundef nonnull @.str.22, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %5) #16
  %109 = icmp ne i32 %108, 0
  %110 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #16
  %111 = icmp eq ptr %110, null
  %112 = select i1 %109, i1 true, i1 %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %107
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #16
  br label %141

114:                                              ; preds = %107
  %115 = call i32 @of_property_read_variable_u32_array(ptr noundef %13, ptr noundef nonnull @.str.22, ptr noundef nonnull %6, i32 noundef 3, i32 noundef 0) #16
  %116 = call i32 @llvm.smin.i32(i32 %115, i32 0) #16
  %117 = icmp sgt i32 %115, -1
  br i1 %117, label %118, label %138

118:                                              ; preds = %114
  %119 = call ptr @syscon_node_to_regmap(ptr noundef nonnull %110) #16
  %120 = getelementptr i8, ptr %36, i32 2068
  store ptr %119, ptr %120, align 4
  %121 = icmp ugt ptr %119, inttoptr (i32 -4096 to ptr)
  br i1 %121, label %122, label %127

122:                                              ; preds = %118
  %123 = load ptr, ptr %84, align 8
  %124 = getelementptr inbounds %struct.platform_device, ptr %123, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %124, ptr noundef nonnull @.str.23) #17
  %125 = load ptr, ptr %120, align 4
  %126 = ptrtoint ptr %125 to i32
  store ptr null, ptr %120, align 4
  br label %136

127:                                              ; preds = %118
  %128 = getelementptr inbounds [3 x i32], ptr %6, i32 0, i32 1
  %129 = load i32, ptr %128, align 4
  %130 = trunc i32 %129 to i8
  %131 = getelementptr i8, ptr %36, i32 2072
  store i8 %130, ptr %131, align 4
  %132 = getelementptr inbounds [3 x i32], ptr %6, i32 0, i32 2
  %133 = load i32, ptr %132, align 4
  %134 = trunc i32 %133 to i8
  %135 = getelementptr i8, ptr %36, i32 2073
  store i8 %134, ptr %135, align 1
  br label %136

136:                                              ; preds = %127, %122
  %137 = phi i32 [ %126, %122 ], [ 0, %127 ]
  call void @of_node_put(ptr noundef nonnull %110) #16
  br label %138

138:                                              ; preds = %136, %114
  %139 = phi i32 [ %137, %136 ], [ %116, %114 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #16
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %365

141:                                              ; preds = %138, %113
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %4, i8 0, i32 72, i1 false) #16, !annotation !8
  %142 = call i32 @__of_parse_phandle_with_args(ptr noundef %13, ptr noundef nonnull @.str.5, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %4) #16
  %143 = icmp ne i32 %142, 0
  %144 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #16
  %145 = icmp eq ptr %144, null
  %146 = select i1 %143, i1 true, i1 %145
  br i1 %146, label %147, label %155

147:                                              ; preds = %141
  %148 = call zeroext i1 @of_phy_is_fixed_link(ptr noundef %13) #16
  br i1 %148, label %149, label %155

149:                                              ; preds = %147
  %150 = call i32 @of_phy_register_fixed_link(ptr noundef %13) #16
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %149
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.6) #17
  br label %365

153:                                              ; preds = %149
  %154 = call ptr @of_node_get(ptr noundef %13) #16
  br label %155

155:                                              ; preds = %153, %147, %141
  %156 = phi ptr [ %144, %141 ], [ %154, %153 ], [ null, %147 ]
  %157 = getelementptr i8, ptr %36, i32 1524
  store ptr %156, ptr %157, align 4
  %158 = load ptr, ptr %12, align 8
  %159 = call i32 @of_get_phy_mode(ptr noundef %158, ptr noundef nonnull %7) #16
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %167, label %161

161:                                              ; preds = %155
  %162 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %163 = load ptr, ptr %162, align 4
  %164 = icmp eq ptr %163, null
  br i1 %164, label %169, label %165

165:                                              ; preds = %161
  %166 = load i32, ptr %163, align 4
  br label %169

167:                                              ; preds = %155
  %168 = load i32, ptr %7, align 4
  br label %169

169:                                              ; preds = %167, %165, %161
  %170 = phi i32 [ %166, %165 ], [ %168, %167 ], [ 2, %161 ]
  %171 = getelementptr i8, ptr %36, i32 1520
  store i32 %170, ptr %171, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #16
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  store i32 0, ptr %3, align 4, !annotation !8
  %172 = call i32 @of_property_read_variable_u32_array(ptr noundef %13, ptr noundef nonnull @.str.24, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #16
  %173 = icmp sgt i32 %172, -1
  br i1 %173, label %174, label %178

174:                                              ; preds = %169
  %175 = load i32, ptr %2, align 4
  switch i32 %175, label %185 [
    i32 2000, label %176
    i32 0, label %178
  ]

176:                                              ; preds = %174
  %177 = getelementptr i8, ptr %36, i32 1528
  store i8 1, ptr %177, align 8
  br label %178

178:                                              ; preds = %176, %174, %169
  %179 = call i32 @of_property_read_variable_u32_array(ptr noundef %13, ptr noundef nonnull @.str.26, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #16
  %180 = icmp sgt i32 %179, -1
  br i1 %180, label %181, label %189

181:                                              ; preds = %178
  %182 = load i32, ptr %3, align 4
  switch i32 %182, label %185 [
    i32 2000, label %183
    i32 0, label %189
  ]

183:                                              ; preds = %181
  %184 = getelementptr i8, ptr %36, i32 1529
  store i8 1, ptr %184, align 1
  br label %189

185:                                              ; preds = %181, %174
  %186 = phi ptr [ @.str.25, %174 ], [ @.str.27, %181 ]
  %187 = load ptr, ptr %84, align 8
  %188 = getelementptr inbounds %struct.platform_device, ptr %187, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %188, ptr noundef nonnull %186) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #16
  br label %360

189:                                              ; preds = %183, %181, %178
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #16
  %190 = call ptr @devm_clk_get(ptr noundef %11, ptr noundef nonnull @.str.7) #16
  %191 = getelementptr i8, ptr %36, i32 1416
  store ptr %190, ptr %191, align 8
  %192 = icmp ugt ptr %190, inttoptr (i32 -4096 to ptr)
  br i1 %192, label %193, label %195

193:                                              ; preds = %189
  %194 = ptrtoint ptr %190 to i32
  br label %360

195:                                              ; preds = %189
  %196 = call ptr @devm_clk_get(ptr noundef %11, ptr noundef nonnull @.str.8) #16
  %197 = getelementptr i8, ptr %36, i32 1420
  store ptr %196, ptr %197, align 4
  %198 = icmp ugt ptr %196, inttoptr (i32 -4096 to ptr)
  br i1 %198, label %199, label %201

199:                                              ; preds = %195
  %200 = ptrtoint ptr %196 to i32
  br label %360

201:                                              ; preds = %195
  %202 = call i32 @clk_get_rate(ptr noundef %196) #16
  %203 = getelementptr i8, ptr %36, i32 2100
  store i32 %202, ptr %203, align 4
  %204 = call ptr @devm_clk_get(ptr noundef %11, ptr noundef nonnull @.str.9) #16
  %205 = getelementptr i8, ptr %36, i32 1428
  %206 = icmp ugt ptr %204, inttoptr (i32 -4096 to ptr)
  %207 = select i1 %206, ptr null, ptr %204
  store ptr %207, ptr %205, align 4
  %208 = getelementptr i8, ptr %36, i32 1440
  store i8 0, ptr %208, align 8
  %209 = getelementptr i8, ptr %36, i32 1444
  call void @__mutex_init(ptr noundef %209, ptr noundef nonnull @.str.10, ptr noundef nonnull @fec_probe.__key) #16
  %210 = call ptr @devm_clk_get(ptr noundef %11, ptr noundef nonnull @.str.11) #16
  %211 = getelementptr i8, ptr %36, i32 1424
  %212 = icmp ugt ptr %210, inttoptr (i32 -4096 to ptr)
  %213 = select i1 %212, ptr null, ptr %210
  store ptr %213, ptr %211, align 8
  %214 = call i32 @clk_get_rate(ptr noundef %213) #16
  %215 = getelementptr i8, ptr %36, i32 2144
  store i32 %214, ptr %215, align 8
  %216 = getelementptr i8, ptr %36, i32 1528
  %217 = load i8, ptr %216, align 8, !range !9
  %218 = icmp eq i8 %217, 0
  br i1 %218, label %219, label %223

219:                                              ; preds = %201
  %220 = getelementptr i8, ptr %36, i32 1529
  %221 = load i8, ptr %220, align 1, !range !9
  %222 = icmp eq i8 %221, 0
  br i1 %222, label %228, label %223

223:                                              ; preds = %219, %201
  %224 = call ptr @devm_clk_get(ptr noundef %11, ptr noundef nonnull @.str.12) #16
  %225 = getelementptr i8, ptr %36, i32 1436
  %226 = icmp ugt ptr %224, inttoptr (i32 -4096 to ptr)
  %227 = select i1 %226, ptr null, ptr %224
  store ptr %227, ptr %225, align 4
  br label %228

228:                                              ; preds = %223, %219
  %229 = load i32, ptr %70, align 4
  %230 = getelementptr i8, ptr %36, i32 1556
  %231 = trunc i32 %229 to i8
  %232 = lshr i8 %231, 4
  %233 = and i8 %232, 1
  store i8 %233, ptr %230, align 4
  %234 = call ptr @devm_clk_get(ptr noundef %11, ptr noundef nonnull @.str.13) #16
  %235 = getelementptr i8, ptr %36, i32 1432
  store ptr %234, ptr %235, align 8
  %236 = icmp ugt ptr %234, inttoptr (i32 -4096 to ptr)
  br i1 %236, label %237, label %238

237:                                              ; preds = %228
  store ptr null, ptr %235, align 8
  store i8 0, ptr %230, align 4
  br label %238

238:                                              ; preds = %237, %228
  %239 = call fastcc i32 @fec_enet_clk_enable(ptr noundef nonnull %36, i1 noundef zeroext true)
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %241, label %360

241:                                              ; preds = %238
  %242 = load ptr, ptr %191, align 8
  %243 = call fastcc i32 @clk_prepare_enable(ptr noundef %242)
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %357

245:                                              ; preds = %241
  %246 = load ptr, ptr %197, align 4
  %247 = call fastcc i32 @clk_prepare_enable(ptr noundef %246)
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %249, label %354

249:                                              ; preds = %245
  %250 = call ptr @devm_regulator_get_optional(ptr noundef %11, ptr noundef nonnull @.str.14) #16
  %251 = getelementptr i8, ptr %36, i32 2064
  store ptr %250, ptr %251, align 8
  %252 = icmp ugt ptr %250, inttoptr (i32 -4096 to ptr)
  br i1 %252, label %257, label %253

253:                                              ; preds = %249
  %254 = call i32 @regulator_enable(ptr noundef %250) #16
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %260, label %256

256:                                              ; preds = %253
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.15, i32 noundef %254) #17
  br label %351

257:                                              ; preds = %249
  %258 = icmp eq ptr %250, inttoptr (i32 -517 to ptr)
  br i1 %258, label %351, label %259

259:                                              ; preds = %257
  store ptr null, ptr %251, align 8
  br label %260

260:                                              ; preds = %259, %253
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %11, i32 noundef 100) #16
  call void @__pm_runtime_use_autosuspend(ptr noundef %11, i1 noundef zeroext true) #16
  %261 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 13
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %261) #16, !srcloc !10
  %262 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %261, ptr %261, i32 1, ptr elementtype(i32) %261) #16, !srcloc !11
  %263 = call i32 @__pm_runtime_set_status(ptr noundef %11, i32 noundef 0) #16
  call void @pm_runtime_enable(ptr noundef %11) #16
  %264 = call fastcc i32 @fec_reset_phy(ptr noundef %0)
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %266, label %340

266:                                              ; preds = %260
  %267 = call i32 @platform_irq_count(ptr noundef %0) #16
  %268 = icmp sgt i32 %267, 3
  %269 = icmp eq i32 %267, 2
  %270 = call i32 @llvm.smax.i32(i32 %267, i32 1) #16
  %271 = select i1 %269, i32 1, i32 %270
  %272 = select i1 %268, i32 3, i32 %271
  %273 = load i8, ptr %230, align 4, !range !9
  %274 = icmp eq i8 %273, 0
  br i1 %274, label %276, label %275

275:                                              ; preds = %266
  call void @fec_ptp_init(ptr noundef %0, i32 noundef %272) #16
  br label %276

276:                                              ; preds = %275, %266
  %277 = call fastcc i32 @fec_enet_init(ptr noundef nonnull %36)
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %279, label %338

279:                                              ; preds = %292, %276
  %280 = phi i32 [ %294, %292 ], [ 0, %276 ]
  %281 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %10, i32 noundef 8, ptr noundef nonnull @.str.16, i32 noundef %280)
  %282 = call i32 @platform_get_irq_byname_optional(ptr noundef %0, ptr noundef nonnull %10) #16
  %283 = icmp slt i32 %282, 0
  br i1 %283, label %284, label %287

284:                                              ; preds = %279
  %285 = call i32 @platform_get_irq(ptr noundef %0, i32 noundef %280) #16
  %286 = icmp slt i32 %285, 0
  br i1 %286, label %338, label %287

287:                                              ; preds = %284, %279
  %288 = phi i32 [ %285, %284 ], [ %282, %279 ]
  %289 = load ptr, ptr %0, align 8
  %290 = call i32 @devm_request_threaded_irq(ptr noundef %11, i32 noundef %288, ptr noundef nonnull @fec_enet_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %289, ptr noundef %36) #16
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %292, label %338

292:                                              ; preds = %287
  %293 = getelementptr %struct.fec_enet_private, ptr %41, i32 0, i32 27, i32 %280
  store i32 %288, ptr %293, align 4
  %294 = add nuw nsw i32 %280, 1
  %295 = icmp eq i32 %294, %272
  br i1 %295, label %296, label %279

296:                                              ; preds = %292
  %297 = load ptr, ptr %88, align 8
  %298 = getelementptr i8, ptr %297, i32 1572
  %299 = load i32, ptr %298, align 4
  %300 = and i32 %299, 4194304
  %301 = icmp eq i32 %300, 0
  %302 = select i1 %301, i32 1544, i32 1552
  %303 = getelementptr i8, ptr %297, i32 %302
  %304 = load i32, ptr %303, align 8
  %305 = getelementptr i8, ptr %297, i32 1568
  store i32 %304, ptr %305, align 8
  %306 = call fastcc i32 @fec_enet_mii_init(ptr noundef %0)
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %308, label %338

308:                                              ; preds = %296
  call void @netif_carrier_off(ptr noundef nonnull %36) #16
  %309 = call fastcc i32 @fec_enet_clk_enable(ptr noundef nonnull %36, i1 noundef zeroext false)
  %310 = call i32 @pinctrl_pm_select_sleep_state(ptr noundef %11) #16
  %311 = getelementptr inbounds %struct.net_device, ptr %36, i32 0, i32 31
  store i32 1966, ptr %311, align 4
  %312 = call i32 @register_netdev(ptr noundef nonnull %36) #16
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %314, label %337

314:                                              ; preds = %308
  %315 = getelementptr i8, ptr %36, i32 1564
  %316 = load i32, ptr %315, align 4
  %317 = and i32 %316, 1
  %318 = icmp ne i32 %317, 0
  %319 = call i32 @device_init_wakeup(ptr noundef %39, i1 noundef zeroext %318) #16
  %320 = load i8, ptr %230, align 4, !range !9
  %321 = icmp eq i8 %320, 0
  br i1 %321, label %328, label %322

322:                                              ; preds = %314
  %323 = getelementptr i8, ptr %36, i32 1812
  %324 = load ptr, ptr %323, align 4
  %325 = icmp eq ptr %324, null
  br i1 %325, label %328, label %326

326:                                              ; preds = %322
  %327 = load i32, ptr %87, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef nonnull %36, ptr noundef nonnull @.str.17, i32 noundef %327) #17
  br label %328

328:                                              ; preds = %326, %322, %314
  %329 = getelementptr i8, ptr %36, i32 2148
  store i32 256, ptr %329, align 4
  %330 = getelementptr i8, ptr %36, i32 1796
  store i32 -32, ptr %330, align 4
  %331 = getelementptr i8, ptr %36, i32 1800
  store volatile ptr %331, ptr %331, align 4
  %332 = getelementptr i8, ptr %36, i32 1804
  store ptr %331, ptr %332, align 4
  %333 = getelementptr i8, ptr %36, i32 1808
  store ptr @fec_enet_timeout_work, ptr %333, align 4
  %334 = call i64 @ktime_get_mono_fast_ns() #16
  %335 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 22
  store volatile i64 %334, ptr %335, align 8
  %336 = call i32 @__pm_runtime_suspend(ptr noundef %11, i32 noundef 13) #16
  br label %371

337:                                              ; preds = %308
  call fastcc void @fec_enet_mii_remove(ptr noundef %41)
  br label %338

338:                                              ; preds = %337, %296, %287, %284, %276
  %339 = phi i32 [ %277, %276 ], [ %306, %296 ], [ %312, %337 ], [ %285, %284 ], [ %290, %287 ]
  call void @fec_ptp_stop(ptr noundef %0) #16
  br label %340

340:                                              ; preds = %338, %260
  %341 = phi i32 [ %264, %260 ], [ %339, %338 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %261) #16, !srcloc !10
  %342 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %261, ptr %261, i32 0, i32 -1, ptr elementtype(i32) %261) #16, !srcloc !13
  %343 = extractvalue { i32, i32, i32 } %342, 0
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %346, label %345

345:                                              ; preds = %340
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !14
  br label %346

346:                                              ; preds = %345, %340
  call void @__pm_runtime_disable(ptr noundef %11, i1 noundef zeroext true) #16
  %347 = load ptr, ptr %251, align 8
  %348 = icmp eq ptr %347, null
  br i1 %348, label %351, label %349

349:                                              ; preds = %346
  %350 = call i32 @regulator_disable(ptr noundef nonnull %347) #16
  br label %351

351:                                              ; preds = %349, %346, %257, %256
  %352 = phi i32 [ %341, %349 ], [ %341, %346 ], [ %254, %256 ], [ -517, %257 ]
  %353 = load ptr, ptr %197, align 4
  call void @clk_disable(ptr noundef %353) #16
  call void @clk_unprepare(ptr noundef %353) #16
  br label %354

354:                                              ; preds = %351, %245
  %355 = phi i32 [ %247, %245 ], [ %352, %351 ]
  %356 = load ptr, ptr %191, align 8
  call void @clk_disable(ptr noundef %356) #16
  call void @clk_unprepare(ptr noundef %356) #16
  br label %357

357:                                              ; preds = %354, %241
  %358 = phi i32 [ %243, %241 ], [ %355, %354 ]
  %359 = call fastcc i32 @fec_enet_clk_enable(ptr noundef nonnull %36, i1 noundef zeroext false)
  br label %360

360:                                              ; preds = %357, %238, %199, %193, %185
  %361 = phi i32 [ -22, %185 ], [ %194, %193 ], [ %200, %199 ], [ %239, %238 ], [ %358, %357 ]
  %362 = call zeroext i1 @of_phy_is_fixed_link(ptr noundef %13) #16
  br i1 %362, label %363, label %364

363:                                              ; preds = %360
  call void @of_phy_deregister_fixed_link(ptr noundef %13) #16
  br label %364

364:                                              ; preds = %363, %360
  call void @of_node_put(ptr noundef %156) #16
  br label %365

365:                                              ; preds = %364, %152, %138
  %366 = phi i32 [ %139, %138 ], [ %361, %364 ], [ %150, %152 ]
  %367 = load i32, ptr @fec_probe.dev_id, align 4
  %368 = add i32 %367, -1
  store i32 %368, ptr @fec_probe.dev_id, align 4
  br label %369

369:                                              ; preds = %365, %81
  %370 = phi i32 [ %82, %81 ], [ %366, %365 ]
  call void @free_netdev(ptr noundef nonnull %36) #16
  br label %371

371:                                              ; preds = %369, %328, %33
  %372 = phi i32 [ %370, %369 ], [ 0, %328 ], [ -12, %33 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  ret i32 %372
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fec_drv_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @__pm_runtime_resume(ptr noundef %4, i32 noundef 4) #16
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #16, !srcloc !10
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 0, i32 -1, ptr elementtype(i32) %10) #16, !srcloc !13
  %12 = extractvalue { i32, i32, i32 } %11, 0
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %47, label %14

14:                                               ; preds = %9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !14
  br label %47

15:                                               ; preds = %1
  %16 = getelementptr i8, ptr %3, i32 1796
  %17 = tail call zeroext i1 @cancel_work_sync(ptr noundef %16) #16
  tail call void @fec_ptp_stop(ptr noundef %0) #16
  tail call void @unregister_netdev(ptr noundef %3) #16
  %18 = load i32, ptr @mii_cnt, align 4
  %19 = add i32 %18, -1
  store i32 %19, ptr @mii_cnt, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = getelementptr i8, ptr %3, i32 1512
  %23 = load ptr, ptr %22, align 8
  tail call void @mdiobus_unregister(ptr noundef %23) #16
  %24 = load ptr, ptr %22, align 8
  tail call void @mdiobus_free(ptr noundef %24) #16
  br label %25

25:                                               ; preds = %21, %15
  %26 = getelementptr i8, ptr %3, i32 2064
  %27 = load ptr, ptr %26, align 8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = tail call i32 @regulator_disable(ptr noundef nonnull %27) #16
  br label %31

31:                                               ; preds = %29, %25
  %32 = tail call zeroext i1 @of_phy_is_fixed_link(ptr noundef %6) #16
  br i1 %32, label %33, label %34

33:                                               ; preds = %31
  tail call void @of_phy_deregister_fixed_link(ptr noundef %6) #16
  br label %34

34:                                               ; preds = %33, %31
  %35 = getelementptr i8, ptr %3, i32 1524
  %36 = load ptr, ptr %35, align 4
  tail call void @of_node_put(ptr noundef %36) #16
  %37 = getelementptr i8, ptr %3, i32 1420
  %38 = load ptr, ptr %37, align 4
  tail call void @clk_disable(ptr noundef %38) #16
  tail call void @clk_unprepare(ptr noundef %38) #16
  %39 = getelementptr i8, ptr %3, i32 1416
  %40 = load ptr, ptr %39, align 8
  tail call void @clk_disable(ptr noundef %40) #16
  tail call void @clk_unprepare(ptr noundef %40) #16
  %41 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %41) #16, !srcloc !10
  %42 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %41, ptr %41, i32 0, i32 -1, ptr elementtype(i32) %41) #16, !srcloc !13
  %43 = extractvalue { i32, i32, i32 } %42, 0
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %34
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !14
  br label %46

46:                                               ; preds = %45, %34
  tail call void @__pm_runtime_disable(ptr noundef %4, i1 noundef zeroext true) #16
  tail call void @free_netdev(ptr noundef %3) #16
  br label %47

47:                                               ; preds = %46, %14, %9
  %48 = phi i32 [ 0, %46 ], [ %7, %9 ], [ %7, %14 ]
  ret i32 %48
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_phy_is_fixed_link(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_phy_register_fixed_link(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_phy_mode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @fec_enet_clk_enable(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #2 {
  %3 = getelementptr i8, ptr %0, i32 1428
  %4 = load ptr, ptr %3, align 4
  br i1 %1, label %5, label %46

5:                                                ; preds = %2
  %6 = tail call i32 @clk_prepare(ptr noundef %4) #16
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %78

8:                                                ; preds = %5
  %9 = tail call i32 @clk_enable(ptr noundef %4) #16
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @clk_unprepare(ptr noundef %4) #16
  br label %78

12:                                               ; preds = %8
  %13 = getelementptr i8, ptr %0, i32 1432
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %27, label %16

16:                                               ; preds = %12
  %17 = getelementptr i8, ptr %0, i32 1444
  tail call void @mutex_lock(ptr noundef %17) #16
  %18 = load ptr, ptr %13, align 8
  %19 = tail call i32 @clk_prepare(ptr noundef %18) #16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %72

21:                                               ; preds = %16
  %22 = tail call i32 @clk_enable(ptr noundef %18) #16
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  tail call void @clk_unprepare(ptr noundef %18) #16
  br label %72

25:                                               ; preds = %21
  %26 = getelementptr i8, ptr %0, i32 1440
  store i8 1, ptr %26, align 8
  tail call void @mutex_unlock(ptr noundef %17) #16
  br label %27

27:                                               ; preds = %25, %12
  %28 = getelementptr i8, ptr %0, i32 1424
  %29 = load ptr, ptr %28, align 8
  %30 = tail call i32 @clk_prepare(ptr noundef %29) #16
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %64

32:                                               ; preds = %27
  %33 = tail call i32 @clk_enable(ptr noundef %29) #16
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %32
  tail call void @clk_unprepare(ptr noundef %29) #16
  br label %64

36:                                               ; preds = %32
  %37 = getelementptr i8, ptr %0, i32 1436
  %38 = load ptr, ptr %37, align 4
  %39 = tail call i32 @clk_prepare(ptr noundef %38) #16
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %59

41:                                               ; preds = %36
  %42 = tail call i32 @clk_enable(ptr noundef %38) #16
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  tail call void @clk_unprepare(ptr noundef %38) #16
  br label %59

45:                                               ; preds = %41
  tail call fastcc void @fec_enet_phy_reset_after_clk_enable(ptr noundef %0)
  br label %78

46:                                               ; preds = %2
  tail call void @clk_disable(ptr noundef %4) #16
  tail call void @clk_unprepare(ptr noundef %4) #16
  %47 = getelementptr i8, ptr %0, i32 1432
  %48 = load ptr, ptr %47, align 8
  %49 = icmp eq ptr %48, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = getelementptr i8, ptr %0, i32 1444
  tail call void @mutex_lock(ptr noundef %51) #16
  %52 = load ptr, ptr %47, align 8
  tail call void @clk_disable(ptr noundef %52) #16
  tail call void @clk_unprepare(ptr noundef %52) #16
  %53 = getelementptr i8, ptr %0, i32 1440
  store i8 0, ptr %53, align 8
  tail call void @mutex_unlock(ptr noundef %51) #16
  br label %54

54:                                               ; preds = %50, %46
  %55 = getelementptr i8, ptr %0, i32 1424
  %56 = load ptr, ptr %55, align 8
  tail call void @clk_disable(ptr noundef %56) #16
  tail call void @clk_unprepare(ptr noundef %56) #16
  %57 = getelementptr i8, ptr %0, i32 1436
  %58 = load ptr, ptr %57, align 4
  tail call void @clk_disable(ptr noundef %58) #16
  tail call void @clk_unprepare(ptr noundef %58) #16
  br label %78

59:                                               ; preds = %44, %36
  %60 = phi i32 [ %42, %44 ], [ %39, %36 ]
  %61 = load ptr, ptr %28, align 8
  %62 = icmp eq ptr %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %59
  tail call void @clk_disable(ptr noundef nonnull %61) #16
  tail call void @clk_unprepare(ptr noundef nonnull %61) #16
  br label %64

64:                                               ; preds = %63, %59, %35, %27
  %65 = phi i32 [ %60, %63 ], [ %60, %59 ], [ %33, %35 ], [ %30, %27 ]
  %66 = load ptr, ptr %13, align 8
  %67 = icmp eq ptr %66, null
  br i1 %67, label %75, label %68

68:                                               ; preds = %64
  %69 = getelementptr i8, ptr %0, i32 1444
  tail call void @mutex_lock(ptr noundef %69) #16
  %70 = load ptr, ptr %13, align 8
  tail call void @clk_disable(ptr noundef %70) #16
  tail call void @clk_unprepare(ptr noundef %70) #16
  %71 = getelementptr i8, ptr %0, i32 1440
  store i8 0, ptr %71, align 8
  br label %72

72:                                               ; preds = %68, %24, %16
  %73 = phi ptr [ %69, %68 ], [ %17, %16 ], [ %17, %24 ]
  %74 = phi i32 [ %65, %68 ], [ %19, %16 ], [ %22, %24 ]
  tail call void @mutex_unlock(ptr noundef %73) #16
  br label %75

75:                                               ; preds = %72, %64
  %76 = phi i32 [ %65, %64 ], [ %74, %72 ]
  %77 = load ptr, ptr %3, align 4
  tail call void @clk_disable(ptr noundef %77) #16
  tail call void @clk_unprepare(ptr noundef %77) #16
  br label %78

78:                                               ; preds = %75, %54, %45, %11, %5
  %79 = phi i32 [ %76, %75 ], [ 0, %54 ], [ 0, %45 ], [ %9, %11 ], [ %6, %5 ]
  ret i32 %79
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %0) unnamed_addr #6 {
  %2 = tail call i32 @clk_prepare(ptr noundef %0) #16
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = tail call i32 @clk_enable(ptr noundef %0) #16
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @clk_unprepare(ptr noundef %0) #16
  br label %8

8:                                                ; preds = %7, %4, %1
  %9 = phi i32 [ %2, %1 ], [ %5, %7 ], [ 0, %4 ]
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @fec_reset_phy(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #16
  store i32 1, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %51, label %8

8:                                                ; preds = %1
  %9 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %6, ptr noundef nonnull @.str.28, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #16
  %10 = icmp sgt i32 %9, -1
  %11 = load i32, ptr %2, align 4
  %12 = icmp sgt i32 %11, 1000
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  store i32 1, ptr %2, align 4
  br label %15

15:                                               ; preds = %14, %8
  %16 = call i32 @of_get_named_gpio_flags(ptr noundef nonnull %6, ptr noundef nonnull @.str.29, i32 noundef 0, ptr noundef null) #16
  %17 = icmp eq i32 %16, -517
  br i1 %17, label %51, label %18

18:                                               ; preds = %15
  %19 = icmp ult i32 %16, 2048
  br i1 %19, label %20, label %51

20:                                               ; preds = %18
  %21 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %6, ptr noundef nonnull @.str.30, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #16
  %22 = icmp sgt i32 %21, -1
  %23 = load i32, ptr %3, align 4
  %24 = icmp sgt i32 %23, 1000
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %51, label %26

26:                                               ; preds = %20
  %27 = call ptr @of_find_property(ptr noundef nonnull %6, ptr noundef nonnull @.str.31, ptr noundef null) #16
  %28 = icmp eq ptr %27, null
  %29 = select i1 %28, i32 0, i32 2
  %30 = call i32 @devm_gpio_request_one(ptr noundef %4, i32 noundef %16, i32 noundef %29, ptr noundef nonnull @.str.32) #16
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.33, i32 noundef %30) #17
  br label %51

33:                                               ; preds = %26
  %34 = load i32, ptr %2, align 4
  %35 = icmp sgt i32 %34, 20
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  call void @msleep(i32 noundef %34) #16
  br label %40

37:                                               ; preds = %33
  %38 = mul i32 %34, 1000
  %39 = add i32 %38, 1000
  call void @usleep_range_state(i32 noundef %38, i32 noundef %39, i32 noundef 2) #16
  br label %40

40:                                               ; preds = %37, %36
  %41 = zext i1 %28 to i32
  %42 = call ptr @gpio_to_desc(i32 noundef %16) #16
  call void @gpiod_set_raw_value_cansleep(ptr noundef %42, i32 noundef %41) #16
  %43 = load i32, ptr %3, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %40
  %46 = icmp sgt i32 %43, 20
  br i1 %46, label %47, label %48

47:                                               ; preds = %45
  call void @msleep(i32 noundef %43) #16
  br label %51

48:                                               ; preds = %45
  %49 = mul i32 %43, 1000
  %50 = add i32 %49, 1000
  call void @usleep_range_state(i32 noundef %49, i32 noundef %50, i32 noundef 2) #16
  br label %51

51:                                               ; preds = %48, %47, %40, %32, %20, %18, %15, %1
  %52 = phi i32 [ %30, %32 ], [ 0, %1 ], [ -517, %15 ], [ 0, %18 ], [ -22, %20 ], [ 0, %40 ], [ 0, %48 ], [ 0, %47 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #16
  ret i32 %52
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fec_ptp_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @fec_enet_init(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca [6 x i8], align 1
  %3 = alloca [6 x i8], align 1
  %4 = alloca [6 x i8], align 4
  %5 = alloca i32, align 4
  %6 = getelementptr i8, ptr %0, i32 1408
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  store i32 0, ptr %5, align 4, !annotation !8
  %7 = getelementptr i8, ptr %0, i32 1556
  %8 = load i8, ptr %7, align 4, !range !9
  %9 = icmp eq i8 %8, 0
  %10 = select i1 %9, i32 -8, i32 -32
  %11 = select i1 %9, i32 8, i32 32
  %12 = tail call i32 @llvm.ctlz.i32(i32 %11, i1 true) #16, !range !15
  %13 = xor i32 %12, 31
  %14 = shl nuw i32 1, %13
  %15 = icmp eq i32 %11, %14
  br i1 %15, label %17, label %16, !prof !16

16:                                               ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.34, i32 noundef 3484, i32 noundef 9, ptr noundef null) #16
  br label %17

17:                                               ; preds = %16, %1
  %18 = getelementptr i8, ptr %0, i32 2080
  store i32 15, ptr %18, align 8
  %19 = getelementptr i8, ptr %0, i32 2076
  store i32 15, ptr %19, align 4
  %20 = getelementptr i8, ptr %0, i32 1504
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.platform_device, ptr %21, i32 0, i32 3
  %23 = tail call i32 @dma_set_mask(ptr noundef %22, i64 noundef 4294967295) #16
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = tail call i32 @dma_set_coherent_mask(ptr noundef %22, i64 noundef 4294967295) #16
  br label %32

27:                                               ; preds = %17
  %28 = icmp slt i32 %23, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %27
  %30 = load ptr, ptr %20, align 8
  %31 = getelementptr inbounds %struct.platform_device, ptr %30, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %31, ptr noundef nonnull @.str.35) #17
  br label %397

32:                                               ; preds = %27, %25
  %33 = getelementptr i8, ptr %0, i32 1464
  %34 = load i32, ptr %33, align 8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %32
  %37 = getelementptr i8, ptr %0, i32 1496
  br label %49

38:                                               ; preds = %54
  %39 = add nuw i32 %50, 1
  %40 = load i32, ptr %33, align 8
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %49, label %42

42:                                               ; preds = %38, %32
  %43 = getelementptr i8, ptr %0, i32 1468
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 0
  %46 = getelementptr i8, ptr %0, i32 1500
  br i1 %45, label %47, label %67

47:                                               ; preds = %42
  %48 = load i32, ptr %46, align 4
  br label %81

49:                                               ; preds = %38, %36
  %50 = phi i32 [ 0, %36 ], [ %39, %38 ]
  %51 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %52 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %51, i32 noundef 3520, i32 noundef 4140) #18
  %53 = icmp eq ptr %52, null
  br i1 %53, label %80, label %54

54:                                               ; preds = %49
  %55 = getelementptr %struct.fec_enet_private, ptr %6, i32 0, i32 12, i32 %50
  store ptr %52, ptr %55, align 4
  %56 = getelementptr inbounds %struct.bufdesc_prop, ptr %52, i32 0, i32 6
  store i16 512, ptr %56, align 8
  %57 = load i32, ptr %37, align 8
  %58 = add i32 %57, 512
  store i32 %58, ptr %37, align 8
  %59 = getelementptr inbounds %struct.fec_enet_priv_tx_q, ptr %52, i32 0, i32 3
  store i16 217, ptr %59, align 4
  %60 = getelementptr inbounds %struct.fec_enet_priv_tx_q, ptr %52, i32 0, i32 4
  store i16 147, ptr %60, align 2
  %61 = load ptr, ptr %20, align 8
  %62 = getelementptr inbounds %struct.platform_device, ptr %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.fec_enet_priv_tx_q, ptr %52, i32 0, i32 7
  %64 = tail call ptr @dma_alloc_attrs(ptr noundef %62, i32 noundef 131072, ptr noundef %63, i32 noundef 3264, i32 noundef 0) #16
  %65 = getelementptr inbounds %struct.fec_enet_priv_tx_q, ptr %52, i32 0, i32 6
  store ptr %64, ptr %65, align 4
  %66 = icmp eq ptr %64, null
  br i1 %66, label %80, label %38

67:                                               ; preds = %73, %42
  %68 = phi i32 [ %77, %73 ], [ 0, %42 ]
  %69 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %70 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %69, i32 noundef 3520, i32 noundef 2076) #18
  %71 = getelementptr %struct.fec_enet_private, ptr %6, i32 0, i32 13, i32 %68
  store ptr %70, ptr %71, align 4
  %72 = icmp eq ptr %70, null
  br i1 %72, label %80, label %73

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.bufdesc_prop, ptr %70, i32 0, i32 6
  store i16 512, ptr %74, align 8
  %75 = load i32, ptr %46, align 4
  %76 = add i32 %75, 512
  store i32 %76, ptr %46, align 4
  %77 = add nuw i32 %68, 1
  %78 = load i32, ptr %43, align 4
  %79 = icmp ult i32 %77, %78
  br i1 %79, label %67, label %81

80:                                               ; preds = %67, %54, %49
  tail call fastcc void @fec_enet_free_queue(ptr noundef %0) #16
  br label %397

81:                                               ; preds = %73, %47
  %82 = phi i32 [ %48, %47 ], [ %76, %73 ]
  %83 = getelementptr i8, ptr %0, i32 1496
  %84 = load i32, ptr %83, align 8
  %85 = add i32 %82, %84
  %86 = mul i32 %85, %11
  %87 = load ptr, ptr %20, align 8
  %88 = getelementptr inbounds %struct.platform_device, ptr %87, i32 0, i32 3
  %89 = call ptr @dmam_alloc_attrs(ptr noundef %88, i32 noundef %86, ptr noundef nonnull %5, i32 noundef 3264, i32 noundef 0) #16
  %90 = icmp eq ptr %89, null
  br i1 %90, label %395, label %91

91:                                               ; preds = %81
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %4) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(6) %4, i8 0, i32 6, i1 false) #16, !annotation !8
  %92 = load i32, ptr @macaddr, align 4
  %93 = and i32 %92, 1
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %91
  %96 = load i16, ptr getelementptr inbounds ([6 x i8], ptr @macaddr, i32 0, i32 4), align 4
  %97 = zext i16 %96 to i32
  %98 = or i32 %92, %97
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %95, %91
  %101 = load ptr, ptr %20, align 8
  %102 = getelementptr inbounds %struct.platform_device, ptr %101, i32 0, i32 3, i32 25
  %103 = load ptr, ptr %102, align 8
  %104 = icmp eq ptr %103, null
  br i1 %104, label %108, label %105

105:                                              ; preds = %100
  %106 = call i32 @of_get_mac_address(ptr noundef nonnull %103, ptr noundef nonnull %4) #16
  switch i32 %106, label %107 [
    i32 0, label %108
    i32 -517, label %222
  ]

107:                                              ; preds = %105
  br label %108

108:                                              ; preds = %107, %105, %100, %95
  %109 = phi ptr [ @macaddr, %95 ], [ @macaddr, %100 ], [ %4, %105 ], [ @macaddr, %107 ]
  %110 = load i32, ptr %109, align 4
  %111 = and i32 %110, 1
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %108
  %114 = getelementptr i8, ptr %109, i32 4
  %115 = load i16, ptr %114, align 4
  %116 = zext i16 %115 to i32
  %117 = or i32 %110, %116
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %127

119:                                              ; preds = %113, %108
  %120 = load ptr, ptr %20, align 8
  %121 = getelementptr inbounds %struct.platform_device, ptr %120, i32 0, i32 3, i32 7
  %122 = load ptr, ptr %121, align 4
  %123 = icmp eq ptr %122, null
  %124 = getelementptr inbounds %struct.fec_platform_data, ptr %122, i32 0, i32 1
  %125 = select i1 %123, ptr %109, ptr %124
  %126 = load i32, ptr %125, align 4
  br label %127

127:                                              ; preds = %119, %113
  %128 = phi i32 [ %110, %113 ], [ %126, %119 ]
  %129 = phi ptr [ %109, %113 ], [ %125, %119 ]
  %130 = and i32 %128, 1
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %127
  %133 = getelementptr i8, ptr %129, i32 4
  %134 = load i16, ptr %133, align 2
  %135 = zext i16 %134 to i32
  %136 = or i32 %128, %135
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %151

138:                                              ; preds = %132, %127
  %139 = load ptr, ptr %6, align 8
  %140 = getelementptr i8, ptr %139, i32 228
  %141 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %140) #16, !srcloc !17
  call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !18
  %142 = call i32 @llvm.bswap.i32(i32 %141) #16
  store i32 %142, ptr %4, align 4
  %143 = load ptr, ptr %6, align 8
  %144 = getelementptr i8, ptr %143, i32 232
  %145 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %144) #16, !srcloc !17
  call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !19
  %146 = lshr i32 %145, 16
  %147 = trunc i32 %146 to i16
  %148 = call i16 @llvm.bswap.i16(i16 %147) #16
  %149 = getelementptr inbounds [6 x i8], ptr %4, i32 0, i32 4
  store i16 %148, ptr %149, align 4
  %150 = load i32, ptr %4, align 4
  br label %151

151:                                              ; preds = %138, %132
  %152 = phi i32 [ %128, %132 ], [ %150, %138 ]
  %153 = phi ptr [ %129, %132 ], [ %4, %138 ]
  %154 = and i32 %152, 1
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %163

156:                                              ; preds = %151
  %157 = getelementptr i8, ptr %153, i32 4
  %158 = load i16, ptr %157, align 2
  %159 = zext i16 %158 to i32
  %160 = or i32 %152, %159
  %161 = icmp eq i32 %160, 0
  %162 = lshr i16 %158, 8
  br i1 %161, label %163, label %174

163:                                              ; preds = %156, %151
  %164 = load ptr, ptr %20, align 8
  %165 = getelementptr inbounds %struct.platform_device, ptr %164, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %165, ptr noundef nonnull @.str.36, ptr noundef %153) #17
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %3, i8 0, i32 6, i1 false) #16, !annotation !8
  call void @get_random_bytes(ptr noundef nonnull %3, i32 noundef 6) #16
  %166 = load i8, ptr %3, align 1
  %167 = and i8 %166, -4
  %168 = or i8 %167, 2
  store i8 %168, ptr %3, align 1
  call void @dev_addr_mod(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %3, i32 noundef 6) #16
  %169 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 50
  store i8 1, ptr %169, align 8
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #16
  %170 = load ptr, ptr %20, align 8
  %171 = getelementptr inbounds %struct.platform_device, ptr %170, i32 0, i32 3
  %172 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 72
  %173 = load ptr, ptr %172, align 32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %171, ptr noundef nonnull @.str.37, ptr noundef %173) #17
  br label %223

174:                                              ; preds = %156
  %175 = icmp eq ptr %153, @macaddr
  br i1 %175, label %176, label %179

176:                                              ; preds = %174
  %177 = getelementptr i8, ptr %0, i32 1508
  %178 = load i32, ptr %177, align 4
  br label %179

179:                                              ; preds = %176, %174
  %180 = phi i32 [ %178, %176 ], [ 0, %174 ]
  %181 = getelementptr i8, ptr %153, i32 1
  %182 = load i8, ptr %181, align 1
  %183 = zext i8 %182 to i64
  %184 = shl i32 %152, 16
  %185 = and i32 %184, 16711680
  %186 = zext i32 %185 to i64
  %187 = shl nuw nsw i64 %183, 8
  %188 = or i64 %187, %186
  %189 = getelementptr i8, ptr %153, i32 2
  %190 = load i8, ptr %189, align 1
  %191 = zext i8 %190 to i64
  %192 = or i64 %188, %191
  %193 = getelementptr i8, ptr %153, i32 3
  %194 = load i8, ptr %193, align 1
  %195 = zext i8 %194 to i64
  %196 = shl nuw nsw i64 %192, 24
  %197 = shl nuw nsw i64 %195, 16
  %198 = shl i16 %158, 8
  %199 = zext i16 %198 to i64
  %200 = or i64 %197, %199
  %201 = zext i16 %162 to i64
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #16
  %202 = zext i32 %180 to i64
  %203 = add nuw nsw i64 %202, %201
  %204 = add nuw nsw i64 %203, %196
  %205 = add nuw nsw i64 %204, %200
  %206 = trunc i64 %205 to i8
  %207 = getelementptr inbounds i8, ptr %2, i32 5
  store i8 %206, ptr %207, align 1
  %208 = lshr i64 %205, 8
  %209 = trunc i64 %208 to i8
  %210 = getelementptr inbounds i8, ptr %2, i32 4
  store i8 %209, ptr %210, align 1
  %211 = lshr i64 %205, 16
  %212 = trunc i64 %211 to i8
  %213 = getelementptr inbounds i8, ptr %2, i32 3
  store i8 %212, ptr %213, align 1
  %214 = lshr i64 %205, 24
  %215 = trunc i64 %214 to i8
  %216 = getelementptr inbounds i8, ptr %2, i32 2
  store i8 %215, ptr %216, align 1
  %217 = lshr i64 %205, 32
  %218 = trunc i64 %217 to i8
  %219 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 %218, ptr %219, align 1
  %220 = lshr i64 %205, 40
  %221 = trunc i64 %220 to i8
  store i8 %221, ptr %2, align 1
  call void @dev_addr_mod(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2, i32 noundef 6) #16
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #16
  br label %223

222:                                              ; preds = %105
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %4) #16
  br label %395

223:                                              ; preds = %179, %163
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %4) #16
  %224 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %225 = load volatile i32, ptr %224, align 4
  %226 = and i32 %225, 1
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %262, label %228

228:                                              ; preds = %223
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !20
  call void @arm_heavy_mb() #16
  %229 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 72
  %230 = load ptr, ptr %229, align 32
  %231 = getelementptr i8, ptr %230, i32 3
  %232 = load i8, ptr %231, align 1
  %233 = zext i8 %232 to i32
  %234 = getelementptr i8, ptr %230, i32 2
  %235 = load i8, ptr %234, align 1
  %236 = zext i8 %235 to i32
  %237 = shl nuw nsw i32 %236, 8
  %238 = or i32 %237, %233
  %239 = getelementptr i8, ptr %230, i32 1
  %240 = load i8, ptr %239, align 1
  %241 = zext i8 %240 to i32
  %242 = shl nuw nsw i32 %241, 16
  %243 = or i32 %238, %242
  %244 = load i8, ptr %230, align 1
  %245 = zext i8 %244 to i32
  %246 = shl nuw i32 %245, 24
  %247 = or i32 %243, %246
  %248 = load ptr, ptr %6, align 8
  %249 = getelementptr i8, ptr %248, i32 228
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %249, i32 %247) #16, !srcloc !21
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !22
  call void @arm_heavy_mb() #16
  %250 = load ptr, ptr %229, align 32
  %251 = getelementptr i8, ptr %250, i32 5
  %252 = load i8, ptr %251, align 1
  %253 = zext i8 %252 to i32
  %254 = shl nuw nsw i32 %253, 16
  %255 = getelementptr i8, ptr %250, i32 4
  %256 = load i8, ptr %255, align 1
  %257 = zext i8 %256 to i32
  %258 = shl nuw i32 %257, 24
  %259 = or i32 %258, %254
  %260 = load ptr, ptr %6, align 8
  %261 = getelementptr i8, ptr %260, i32 232
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %261, i32 %259) #16, !srcloc !21
  br label %262

262:                                              ; preds = %228, %223
  %263 = load i32, ptr %43, align 4
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %268, label %265

265:                                              ; preds = %262
  %266 = trunc i32 %11 to i8
  %267 = trunc i32 %13 to i8
  br label %275

268:                                              ; preds = %275, %262
  %269 = phi ptr [ %89, %262 ], [ %297, %275 ]
  %270 = load i32, ptr %33, align 8
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %331, label %272

272:                                              ; preds = %268
  %273 = trunc i32 %11 to i8
  %274 = trunc i32 %13 to i8
  br label %303

275:                                              ; preds = %275, %265
  %276 = phi ptr [ %89, %265 ], [ %297, %275 ]
  %277 = phi i32 [ 0, %265 ], [ %300, %275 ]
  %278 = getelementptr %struct.fec_enet_private, ptr %6, i32 0, i32 13, i32 %277
  %279 = load ptr, ptr %278, align 4
  %280 = getelementptr inbounds %struct.bufdesc_prop, ptr %279, i32 0, i32 6
  %281 = load i16, ptr %280, align 4
  %282 = zext i16 %281 to i32
  %283 = mul nuw nsw i32 %11, %282
  store i32 %277, ptr %279, align 4
  %284 = getelementptr inbounds %struct.bufdesc_prop, ptr %279, i32 0, i32 1
  store ptr %276, ptr %284, align 4
  %285 = getelementptr inbounds %struct.bufdesc_prop, ptr %279, i32 0, i32 3
  store ptr %276, ptr %285, align 4
  %286 = load i32, ptr %5, align 4
  %287 = getelementptr inbounds %struct.bufdesc_prop, ptr %279, i32 0, i32 5
  store i32 %286, ptr %287, align 4
  %288 = getelementptr inbounds %struct.bufdesc_prop, ptr %279, i32 0, i32 7
  store i8 %266, ptr %288, align 2
  %289 = getelementptr inbounds %struct.bufdesc_prop, ptr %279, i32 0, i32 8
  store i8 %267, ptr %289, align 1
  %290 = load ptr, ptr %6, align 8
  %291 = getelementptr [3 x i16], ptr @offset_des_active_rxq, i32 0, i32 %277
  %292 = load i16, ptr %291, align 2
  %293 = zext i16 %292 to i32
  %294 = getelementptr i8, ptr %290, i32 %293
  %295 = getelementptr inbounds %struct.bufdesc_prop, ptr %279, i32 0, i32 4
  store ptr %294, ptr %295, align 4
  %296 = add i32 %286, %283
  store i32 %296, ptr %5, align 4
  %297 = getelementptr i8, ptr %276, i32 %283
  %298 = getelementptr i8, ptr %297, i32 %10
  %299 = getelementptr inbounds %struct.bufdesc_prop, ptr %279, i32 0, i32 2
  store ptr %298, ptr %299, align 4
  %300 = add nuw i32 %277, 1
  %301 = load i32, ptr %43, align 4
  %302 = icmp ult i32 %300, %301
  br i1 %302, label %275, label %268

303:                                              ; preds = %303, %272
  %304 = phi ptr [ %269, %272 ], [ %325, %303 ]
  %305 = phi i32 [ 0, %272 ], [ %328, %303 ]
  %306 = getelementptr %struct.fec_enet_private, ptr %6, i32 0, i32 12, i32 %305
  %307 = load ptr, ptr %306, align 4
  %308 = getelementptr inbounds %struct.bufdesc_prop, ptr %307, i32 0, i32 6
  %309 = load i16, ptr %308, align 4
  %310 = zext i16 %309 to i32
  %311 = mul nuw nsw i32 %11, %310
  store i32 %305, ptr %307, align 4
  %312 = getelementptr inbounds %struct.bufdesc_prop, ptr %307, i32 0, i32 1
  store ptr %304, ptr %312, align 4
  %313 = getelementptr inbounds %struct.bufdesc_prop, ptr %307, i32 0, i32 3
  store ptr %304, ptr %313, align 4
  %314 = load i32, ptr %5, align 4
  %315 = getelementptr inbounds %struct.bufdesc_prop, ptr %307, i32 0, i32 5
  store i32 %314, ptr %315, align 4
  %316 = getelementptr inbounds %struct.bufdesc_prop, ptr %307, i32 0, i32 7
  store i8 %273, ptr %316, align 2
  %317 = getelementptr inbounds %struct.bufdesc_prop, ptr %307, i32 0, i32 8
  store i8 %274, ptr %317, align 1
  %318 = load ptr, ptr %6, align 8
  %319 = getelementptr [3 x i16], ptr @offset_des_active_txq, i32 0, i32 %305
  %320 = load i16, ptr %319, align 2
  %321 = zext i16 %320 to i32
  %322 = getelementptr i8, ptr %318, i32 %321
  %323 = getelementptr inbounds %struct.bufdesc_prop, ptr %307, i32 0, i32 4
  store ptr %322, ptr %323, align 4
  %324 = add i32 %314, %311
  store i32 %324, ptr %5, align 4
  %325 = getelementptr i8, ptr %304, i32 %311
  %326 = getelementptr i8, ptr %325, i32 %10
  %327 = getelementptr inbounds %struct.bufdesc_prop, ptr %307, i32 0, i32 2
  store ptr %326, ptr %327, align 4
  %328 = add nuw i32 %305, 1
  %329 = load i32, ptr %33, align 8
  %330 = icmp ult i32 %328, %329
  br i1 %330, label %303, label %331

331:                                              ; preds = %303, %268
  %332 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 96
  store i32 200, ptr %332, align 8
  %333 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 16
  store ptr @fec_netdev_ops, ptr %333, align 8
  %334 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 42
  store ptr @fec_enet_ethtool_ops, ptr %334, align 8
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !23
  call void @arm_heavy_mb() #16
  %335 = load ptr, ptr %6, align 8
  %336 = getelementptr i8, ptr %335, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %336, i32 134217864) #16, !srcloc !21
  %337 = getelementptr i8, ptr %0, i32 1576
  call void @netif_napi_add(ptr noundef %0, ptr noundef %337, ptr noundef nonnull @fec_enet_rx_napi, i32 noundef 64) #16
  %338 = getelementptr i8, ptr %0, i32 1572
  %339 = load i32, ptr %338, align 4
  %340 = and i32 %339, 64
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %346, label %342

342:                                              ; preds = %331
  %343 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 23
  %344 = load i64, ptr %343, align 16
  %345 = or i64 %344, 256
  store i64 %345, ptr %343, align 16
  br label %346

346:                                              ; preds = %342, %331
  %347 = and i32 %339, 32
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %357, label %349

349:                                              ; preds = %346
  %350 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 116
  store volatile i16 100, ptr %350, align 4
  %351 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 23
  %352 = load i64, ptr %351, align 16
  %353 = or i64 %352, 1099511693331
  store i64 %353, ptr %351, align 16
  %354 = getelementptr i8, ptr %0, i32 1792
  %355 = load i32, ptr %354, align 8
  %356 = or i32 %355, 48
  store i32 %356, ptr %354, align 8
  br label %357

357:                                              ; preds = %349, %346
  %358 = and i32 %339, 524288
  %359 = icmp eq i32 %358, 0
  br i1 %359, label %361, label %360

360:                                              ; preds = %357
  store i32 0, ptr %19, align 4
  store i32 63, ptr %18, align 8
  br label %361

361:                                              ; preds = %360, %357
  %362 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 23
  %363 = load i64, ptr %362, align 16
  %364 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 24
  store i64 %363, ptr %364, align 8
  call fastcc void @fec_restart(ptr noundef %0)
  %365 = load i32, ptr %338, align 4
  %366 = and i32 %365, 32768
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %383, label %368

368:                                              ; preds = %361
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !24
  call void @arm_heavy_mb() #16
  %369 = load ptr, ptr %6, align 8
  %370 = getelementptr i8, ptr %369, i32 100
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %370, i32 -2147483648) #16, !srcloc !21
  br label %371

371:                                              ; preds = %371, %368
  %372 = phi i32 [ 0, %368 ], [ %378, %371 ]
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !25
  call void @arm_heavy_mb() #16
  %373 = load ptr, ptr %6, align 8
  %374 = getelementptr [53 x %struct.fec_stat], ptr @fec_stats, i32 0, i32 %372, i32 1
  %375 = load i16, ptr %374, align 2
  %376 = zext i16 %375 to i32
  %377 = getelementptr i8, ptr %373, i32 %376
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %377, i32 0) #16, !srcloc !21
  %378 = add nuw nsw i32 %372, 1
  %379 = icmp eq i32 %378, 53
  br i1 %379, label %380, label %371

380:                                              ; preds = %371
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !26
  call void @arm_heavy_mb() #16
  %381 = load ptr, ptr %6, align 8
  %382 = getelementptr i8, ptr %381, i32 100
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %382, i32 0) #16, !srcloc !21
  br label %397

383:                                              ; preds = %383, %361
  %384 = phi i32 [ %393, %383 ], [ 0, %361 ]
  %385 = load ptr, ptr %6, align 8
  %386 = getelementptr [53 x %struct.fec_stat], ptr @fec_stats, i32 0, i32 %384, i32 1
  %387 = load i16, ptr %386, align 2
  %388 = zext i16 %387 to i32
  %389 = getelementptr i8, ptr %385, i32 %388
  %390 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %389) #16, !srcloc !17
  call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !27
  %391 = zext i32 %390 to i64
  %392 = getelementptr %struct.fec_enet_private, ptr %6, i32 0, i32 65, i32 %384
  store i64 %391, ptr %392, align 8
  %393 = add nuw nsw i32 %384, 1
  %394 = icmp eq i32 %393, 53
  br i1 %394, label %397, label %383

395:                                              ; preds = %222, %81
  %396 = phi i32 [ -517, %222 ], [ -12, %81 ]
  call fastcc void @fec_enet_free_queue(ptr noundef %0)
  br label %397

397:                                              ; preds = %395, %383, %380, %80, %29
  %398 = phi i32 [ %23, %29 ], [ %396, %395 ], [ -12, %80 ], [ 0, %380 ], [ 0, %383 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  ret i32 %398
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fec_enet_interrupt(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr i8, ptr %1, i32 1408
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #16, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !28
  %7 = and i32 %6, -8388609
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !29
  tail call void @arm_heavy_mb() #16
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr i8, ptr %8, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #16, !srcloc !21
  %10 = icmp eq i32 %7, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %2
  %12 = getelementptr i8, ptr %1, i32 1532
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %11
  %16 = getelementptr i8, ptr %1, i32 1576
  %17 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %16) #16
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !30
  tail call void @arm_heavy_mb() #16
  %19 = load ptr, ptr %3, align 8
  %20 = getelementptr i8, ptr %19, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 0) #16, !srcloc !21
  tail call void @__napi_schedule(ptr noundef %16) #16
  br label %21

21:                                               ; preds = %18, %15, %11, %2
  %22 = phi i32 [ 1, %18 ], [ 1, %15 ], [ 0, %11 ], [ 0, %2 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @fec_enet_mii_init(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 1408
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #16
  %6 = getelementptr i8, ptr %4, i32 1572
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 2048
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %23, label %10

10:                                               ; preds = %1
  %11 = getelementptr i8, ptr %4, i32 1508
  %12 = load i32, ptr %11, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %10
  %15 = load i32, ptr @mii_cnt, align 4
  %16 = icmp ne i32 %15, 0
  %17 = load ptr, ptr @fec_enet_mii_init.fec0_mii_bus, align 4
  %18 = icmp ne ptr %17, null
  %19 = select i1 %16, i1 %18, i1 false
  br i1 %19, label %20, label %107

20:                                               ; preds = %14
  %21 = getelementptr i8, ptr %4, i32 1512
  store ptr %17, ptr %21, align 8
  %22 = add i32 %15, 1
  store i32 %22, ptr @mii_cnt, align 4
  br label %107

23:                                               ; preds = %10, %1
  store i32 2500000, ptr %2, align 4
  %24 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %25 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %26 = load ptr, ptr %25, align 8
  %27 = tail call ptr @of_get_child_by_name(ptr noundef %26, ptr noundef nonnull @.str.59) #16
  %28 = icmp eq ptr %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %23
  %30 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %27, ptr noundef nonnull @.str.60, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #16
  %31 = call ptr @of_find_property(ptr noundef nonnull %27, ptr noundef nonnull @.str.61, ptr noundef null) #16
  %32 = icmp ne ptr %31, null
  br label %33

33:                                               ; preds = %29, %23
  %34 = phi i1 [ %32, %29 ], [ false, %23 ]
  %35 = getelementptr i8, ptr %4, i32 1416
  %36 = load ptr, ptr %35, align 8
  %37 = call i32 @clk_get_rate(ptr noundef %36) #16
  %38 = load i32, ptr %2, align 4
  %39 = shl i32 %38, 1
  %40 = add i32 %37, -1
  %41 = add i32 %40, %39
  %42 = udiv i32 %41, %39
  %43 = load i32, ptr %6, align 4
  %44 = and i32 %43, 1
  %45 = sub i32 %42, %44
  %46 = icmp ugt i32 %45, 63
  %47 = load ptr, ptr %35, align 8
  %48 = call i32 @clk_get_rate(ptr noundef %47) #16
  br i1 %46, label %49, label %50

49:                                               ; preds = %33
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.62, i32 noundef %48) #17
  br label %105

50:                                               ; preds = %33
  %51 = add i32 %48, 99999999
  %52 = udiv i32 %51, 100000000
  %53 = shl nuw nsw i32 %45, 1
  %54 = shl nuw nsw i32 %52, 8
  %55 = add nsw i32 %54, -256
  %56 = or i32 %55, %53
  %57 = getelementptr i8, ptr %4, i32 1516
  %58 = or i32 %56, 128
  %59 = select i1 %34, i32 %58, i32 %56
  store i32 %59, ptr %57, align 4
  %60 = load i32, ptr %6, align 4
  %61 = and i32 %60, 131072
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %50
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !31
  call void @arm_heavy_mb() #16
  %64 = load ptr, ptr %5, align 8
  %65 = getelementptr i8, ptr %64, i32 64
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 0) #16, !srcloc !21
  br label %66

66:                                               ; preds = %63, %50
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !32
  call void @arm_heavy_mb() #16
  %67 = load i32, ptr %57, align 4
  %68 = load ptr, ptr %5, align 8
  %69 = getelementptr i8, ptr %68, i32 68
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %67) #16, !srcloc !21
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !33
  call void @arm_heavy_mb() #16
  %70 = load ptr, ptr %5, align 8
  %71 = getelementptr i8, ptr %70, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 8388608) #16, !srcloc !21
  %72 = call ptr @mdiobus_alloc_size(i32 noundef 0) #16
  %73 = getelementptr i8, ptr %4, i32 1512
  store ptr %72, ptr %73, align 8
  %74 = icmp eq ptr %72, null
  br i1 %74, label %105, label %75

75:                                               ; preds = %66
  %76 = getelementptr inbounds %struct.mii_bus, ptr %72, i32 0, i32 1
  store ptr @.str.63, ptr %76, align 4
  %77 = load ptr, ptr %73, align 8
  %78 = getelementptr inbounds %struct.mii_bus, ptr %77, i32 0, i32 4
  store ptr @fec_enet_mdio_read, ptr %78, align 4
  %79 = load ptr, ptr %73, align 8
  %80 = getelementptr inbounds %struct.mii_bus, ptr %79, i32 0, i32 5
  store ptr @fec_enet_mdio_write, ptr %80, align 8
  %81 = load ptr, ptr %73, align 8
  %82 = getelementptr inbounds %struct.mii_bus, ptr %81, i32 0, i32 2
  %83 = load ptr, ptr %0, align 8
  %84 = getelementptr i8, ptr %4, i32 1508
  %85 = load i32, ptr %84, align 4
  %86 = add i32 %85, 1
  %87 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %82, i32 noundef 61, ptr noundef nonnull @.str.64, ptr noundef %83, i32 noundef %86)
  %88 = load ptr, ptr %73, align 8
  %89 = getelementptr inbounds %struct.mii_bus, ptr %88, i32 0, i32 3
  store ptr %5, ptr %89, align 8
  %90 = load ptr, ptr %73, align 8
  %91 = getelementptr inbounds %struct.mii_bus, ptr %90, i32 0, i32 9
  store ptr %24, ptr %91, align 4
  %92 = load ptr, ptr %73, align 8
  %93 = call i32 @of_mdiobus_register(ptr noundef %92, ptr noundef %27) #16
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %75
  call void @of_node_put(ptr noundef %27) #16
  %96 = load i32, ptr @mii_cnt, align 4
  %97 = add i32 %96, 1
  store i32 %97, ptr @mii_cnt, align 4
  %98 = load i32, ptr %6, align 4
  %99 = and i32 %98, 2048
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %107, label %101

101:                                              ; preds = %95
  %102 = load ptr, ptr %73, align 8
  store ptr %102, ptr @fec_enet_mii_init.fec0_mii_bus, align 4
  br label %107

103:                                              ; preds = %75
  %104 = load ptr, ptr %73, align 8
  call void @mdiobus_free(ptr noundef %104) #16
  br label %105

105:                                              ; preds = %103, %66, %49
  %106 = phi i32 [ -22, %49 ], [ %93, %103 ], [ -12, %66 ]
  call void @of_node_put(ptr noundef %27) #16
  br label %107

107:                                              ; preds = %105, %101, %95, %20, %14
  %108 = phi i32 [ 0, %20 ], [ %106, %105 ], [ -2, %14 ], [ 0, %101 ], [ 0, %95 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #16
  ret i32 %108
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fec_enet_timeout_work(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -384
  %3 = load ptr, ptr %2, align 4
  tail call void @rtnl_lock() #16
  %4 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 2
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load volatile i32, ptr %4, align 4
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %31, label %12

12:                                               ; preds = %8, %1
  %13 = getelementptr i8, ptr %0, i32 -220
  tail call void @napi_disable(ptr noundef %13) #16
  %14 = tail call ptr @llvm.thread.pointer() #16
  %15 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %16 = load volatile i32, ptr %15, align 4
  %17 = add i32 %16, 512
  store volatile i32 %17, ptr %15, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !34
  tail call void @netif_tx_lock(ptr noundef %3) #16
  tail call fastcc void @fec_restart(ptr noundef %3)
  %18 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 88
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 87
  br label %23

23:                                               ; preds = %23, %21
  %24 = phi i32 [ 0, %21 ], [ %27, %23 ]
  %25 = load ptr, ptr %22, align 64
  %26 = getelementptr %struct.netdev_queue, ptr %25, i32 %24
  tail call void @netif_tx_wake_queue(ptr noundef %26) #16
  %27 = add nuw i32 %24, 1
  %28 = load i32, ptr %18, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %23, label %30

30:                                               ; preds = %23, %12
  tail call void @netif_tx_unlock(ptr noundef %3) #16
  tail call fastcc void @local_bh_enable() #16
  tail call void @napi_enable(ptr noundef %13) #16
  br label %31

31:                                               ; preds = %30, %8
  tail call void @rtnl_unlock() #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @fec_enet_mii_remove(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = load i32, ptr @mii_cnt, align 4
  %3 = add i32 %2, -1
  store i32 %3, ptr @mii_cnt, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.fec_enet_private, ptr %0, i32 0, i32 18
  %7 = load ptr, ptr %6, align 8
  tail call void @mdiobus_unregister(ptr noundef %7) #16
  %8 = load ptr, ptr %6, align 8
  tail call void @mdiobus_free(ptr noundef %8) #16
  br label %9

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fec_ptp_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_phy_deregister_fixed_link(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @fec_enet_phy_reset_after_clk_enable(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @phy_reset_after_clk_enable(ptr noundef nonnull %3) #16
  br label %14

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %0, i32 1524
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = tail call ptr @of_phy_find_device(ptr noundef nonnull %9) #16
  %13 = tail call i32 @phy_reset_after_clk_enable(ptr noundef %12) #16
  tail call void @put_device(ptr noundef %12) #16
  br label %14

14:                                               ; preds = %11, %7, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_reset_after_clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_find_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpio_request_one(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_named_gpio_flags(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_raw_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_irq_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fec_set_mac_address(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 1408
  %4 = icmp eq ptr %1, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.sockaddr, ptr %1, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %56

10:                                               ; preds = %5
  %11 = getelementptr %struct.sockaddr, ptr %1, i32 0, i32 1, i32 4
  %12 = load i16, ptr %11, align 2
  %13 = zext i16 %12 to i32
  %14 = or i32 %7, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %56, label %16

16:                                               ; preds = %10
  tail call void @dev_addr_mod(ptr noundef %0, i32 noundef 0, ptr noundef %6, i32 noundef 6) #16
  br label %17

17:                                               ; preds = %16, %2
  %18 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %56, label %22

22:                                               ; preds = %17
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !20
  tail call void @arm_heavy_mb() #16
  %23 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 72
  %24 = load ptr, ptr %23, align 32
  %25 = getelementptr i8, ptr %24, i32 3
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i32
  %28 = getelementptr i8, ptr %24, i32 2
  %29 = load i8, ptr %28, align 1
  %30 = zext i8 %29 to i32
  %31 = shl nuw nsw i32 %30, 8
  %32 = or i32 %31, %27
  %33 = getelementptr i8, ptr %24, i32 1
  %34 = load i8, ptr %33, align 1
  %35 = zext i8 %34 to i32
  %36 = shl nuw nsw i32 %35, 16
  %37 = or i32 %32, %36
  %38 = load i8, ptr %24, align 1
  %39 = zext i8 %38 to i32
  %40 = shl nuw i32 %39, 24
  %41 = or i32 %37, %40
  %42 = load ptr, ptr %3, align 8
  %43 = getelementptr i8, ptr %42, i32 228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %41) #16, !srcloc !21
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !22
  tail call void @arm_heavy_mb() #16
  %44 = load ptr, ptr %23, align 32
  %45 = getelementptr i8, ptr %44, i32 5
  %46 = load i8, ptr %45, align 1
  %47 = zext i8 %46 to i32
  %48 = shl nuw nsw i32 %47, 16
  %49 = getelementptr i8, ptr %44, i32 4
  %50 = load i8, ptr %49, align 1
  %51 = zext i8 %50 to i32
  %52 = shl nuw i32 %51, 24
  %53 = or i32 %52, %48
  %54 = load ptr, ptr %3, align 8
  %55 = getelementptr i8, ptr %54, i32 232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %53) #16, !srcloc !21
  br label %56

56:                                               ; preds = %22, %17, %10, %5
  %57 = phi i32 [ 0, %22 ], [ -99, %10 ], [ 0, %17 ], [ -99, %5 ]
  ret i32 %57
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fec_enet_rx_napi(ptr noundef %0, i32 noundef %1) #2 {
  %3 = alloca %struct.skb_shared_hwtstamps, align 8
  %4 = getelementptr inbounds %struct.napi_struct, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 1408
  %7 = getelementptr i8, ptr %5, i32 1468
  %8 = getelementptr i8, ptr %5, i32 1572
  %9 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 36, i32 4
  %10 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 36, i32 14
  %11 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 36, i32 10
  %12 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 36, i32 12
  %13 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 36, i32 13
  %14 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 36
  %15 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 36, i32 2
  %16 = getelementptr i8, ptr %5, i32 2148
  %17 = getelementptr i8, ptr %5, i32 1504
  %18 = getelementptr i8, ptr %5, i32 2080
  %19 = getelementptr i8, ptr %5, i32 1556
  %20 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 23
  %21 = getelementptr i8, ptr %5, i32 2012
  %22 = getelementptr i8, ptr %5, i32 1928
  %23 = getelementptr i8, ptr %5, i32 1960
  %24 = getelementptr i8, ptr %5, i32 1792
  %25 = getelementptr i8, ptr %5, i32 1576
  %26 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 36, i32 6
  %27 = getelementptr i8, ptr %5, i32 1464
  %28 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 87
  %29 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 36, i32 5
  %30 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 36, i32 19
  %31 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 36, i32 20
  %32 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 36, i32 16
  %33 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 36, i32 18
  %34 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 36, i32 17
  %35 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 36, i32 1
  %36 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 36, i32 3
  %37 = getelementptr i8, ptr %5, i32 2016
  %38 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 36, i32 9
  br label %39

39:                                               ; preds = %521, %2
  %40 = phi i32 [ 0, %2 ], [ %331, %521 ]
  %41 = load i32, ptr %7, align 4
  %42 = add i32 %41, -1
  %43 = icmp sgt i32 %42, -1
  br i1 %43, label %44, label %329

44:                                               ; preds = %323, %39
  %45 = phi i32 [ %327, %323 ], [ %42, %39 ]
  %46 = phi i32 [ %326, %323 ], [ 0, %39 ]
  %47 = add i32 %40, %46
  %48 = sub i32 %1, %47
  %49 = load i32, ptr %8, align 4
  %50 = and i32 %49, 2
  %51 = icmp eq i32 %50, 0
  %52 = and i32 %45, 65535
  %53 = getelementptr %struct.fec_enet_private, ptr %6, i32 0, i32 13, i32 %52
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.bufdesc_prop, ptr %54, i32 0, i32 3
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.bufdesc, ptr %56, i32 0, i32 1
  %58 = load i16, ptr %57, align 2
  %59 = icmp sgt i16 %58, -1
  %60 = icmp sgt i32 %48, 0
  %61 = and i1 %60, %59
  br i1 %61, label %62, label %323

62:                                               ; preds = %44
  %63 = trunc i32 %45 to i16
  %64 = icmp eq i16 %63, 0
  %65 = icmp eq i16 %63, 1
  %66 = select i1 %65, i32 2, i32 32
  %67 = select i1 %64, i32 33554432, i32 %66
  %68 = getelementptr inbounds %struct.bufdesc_prop, ptr %54, i32 0, i32 1
  %69 = getelementptr inbounds %struct.bufdesc_prop, ptr %54, i32 0, i32 8
  %70 = add i16 %63, 1
  %71 = getelementptr inbounds %struct.bufdesc_prop, ptr %54, i32 0, i32 2
  %72 = getelementptr inbounds %struct.bufdesc_prop, ptr %54, i32 0, i32 7
  %73 = getelementptr inbounds %struct.bufdesc_prop, ptr %54, i32 0, i32 4
  br label %74

74:                                               ; preds = %315, %62
  %75 = phi i16 [ %58, %62 ], [ %319, %315 ]
  %76 = phi ptr [ %57, %62 ], [ %318, %315 ]
  %77 = phi i16 [ 0, %62 ], [ %297, %315 ]
  %78 = phi i32 [ 0, %62 ], [ %81, %315 ]
  %79 = phi ptr [ null, %62 ], [ %296, %315 ]
  %80 = phi ptr [ %56, %62 ], [ %316, %315 ]
  %81 = add nuw nsw i32 %78, 1
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !35
  call void @arm_heavy_mb() #16
  %82 = load ptr, ptr %6, align 8
  %83 = getelementptr i8, ptr %82, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %83, i32 %67) #16, !srcloc !21
  %84 = xor i16 %75, 2048
  %85 = zext i16 %84 to i32
  %86 = and i32 %85, 2111
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %117, label %88

88:                                               ; preds = %74
  %89 = load i32, ptr %9, align 8
  %90 = add i32 %89, 1
  store i32 %90, ptr %9, align 8
  %91 = and i32 %85, 2
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %88
  %94 = load i32, ptr %10, align 8
  %95 = add i32 %94, 1
  store i32 %95, ptr %10, align 8
  br label %295

96:                                               ; preds = %88
  %97 = and i32 %85, 2088
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %105, label %99

99:                                               ; preds = %96
  %100 = load i32, ptr %11, align 8
  %101 = add i32 %100, 1
  store i32 %101, ptr %11, align 8
  %102 = and i32 %85, 2048
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %99
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %5, ptr noundef nonnull @.str.58) #17
  br label %105

105:                                              ; preds = %104, %99, %96
  %106 = and i32 %85, 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %105
  %109 = load i32, ptr %12, align 8
  %110 = add i32 %109, 1
  store i32 %110, ptr %12, align 8
  br label %111

111:                                              ; preds = %108, %105
  %112 = and i32 %85, 17
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %295, label %114

114:                                              ; preds = %111
  %115 = load i32, ptr %13, align 4
  %116 = add i32 %115, 1
  store i32 %116, ptr %13, align 4
  br label %295

117:                                              ; preds = %74
  %118 = load i32, ptr %14, align 8
  %119 = add i32 %118, 1
  store i32 %119, ptr %14, align 8
  %120 = load i16, ptr %80, align 4
  %121 = zext i16 %120 to i32
  %122 = load i32, ptr %15, align 8
  %123 = add i32 %122, %121
  store i32 %123, ptr %15, align 8
  %124 = load ptr, ptr %68, align 4
  %125 = ptrtoint ptr %80 to i32
  %126 = ptrtoint ptr %124 to i32
  %127 = sub i32 %125, %126
  %128 = load i8, ptr %69, align 1
  %129 = zext i8 %128 to i32
  %130 = ashr i32 %127, %129
  %131 = getelementptr %struct.fec_enet_priv_rx_q, ptr %54, i32 0, i32 1, i32 %130
  %132 = load ptr, ptr %131, align 4
  %133 = add nsw i32 %121, -4
  %134 = load i32, ptr %16, align 4
  %135 = icmp ult i32 %134, %133
  br i1 %135, label %168, label %136

136:                                              ; preds = %117
  %137 = call ptr @__netdev_alloc_skb(ptr noundef %5, i32 noundef %133, i32 noundef 2592) #16
  %138 = icmp eq ptr %137, null
  br i1 %138, label %168, label %139

139:                                              ; preds = %136
  %140 = load ptr, ptr %17, align 8
  %141 = getelementptr inbounds %struct.platform_device, ptr %140, i32 0, i32 3
  %142 = getelementptr inbounds %struct.bufdesc, ptr %80, i32 0, i32 2
  %143 = load i32, ptr %142, align 4
  %144 = load i32, ptr %18, align 8
  %145 = sub i32 2048, %144
  call void @dma_sync_single_for_cpu(ptr noundef %141, i32 noundef %143, i32 noundef %145, i32 noundef 2) #16
  br i1 %51, label %146, label %151

146:                                              ; preds = %139
  %147 = getelementptr inbounds %struct.sk_buff, ptr %137, i32 0, i32 17
  %148 = load ptr, ptr %147, align 4
  %149 = getelementptr inbounds %struct.sk_buff, ptr %132, i32 0, i32 17
  %150 = load ptr, ptr %149, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %148, ptr align 1 %150, i32 %133, i1 false) #16
  br label %181

151:                                              ; preds = %139
  %152 = icmp ugt i16 %120, 4
  br i1 %152, label %153, label %181

153:                                              ; preds = %151
  %154 = getelementptr inbounds %struct.sk_buff, ptr %132, i32 0, i32 17
  %155 = load ptr, ptr %154, align 4
  %156 = getelementptr inbounds %struct.sk_buff, ptr %137, i32 0, i32 17
  %157 = load ptr, ptr %156, align 4
  br label %158

158:                                              ; preds = %158, %153
  %159 = phi ptr [ %166, %158 ], [ %157, %153 ]
  %160 = phi ptr [ %165, %158 ], [ %155, %153 ]
  %161 = phi i32 [ %164, %158 ], [ 0, %153 ]
  %162 = load i32, ptr %160, align 4
  %163 = call i32 @llvm.bswap.i32(i32 %162) #16
  store i32 %163, ptr %159, align 4
  %164 = add nuw nsw i32 %161, 4
  %165 = getelementptr i32, ptr %160, i32 1
  %166 = getelementptr i32, ptr %159, i32 1
  %167 = icmp slt i32 %164, %133
  br i1 %167, label %158, label %181

168:                                              ; preds = %136, %117
  %169 = call ptr @__netdev_alloc_skb(ptr noundef %5, i32 noundef 2048, i32 noundef 2592) #16
  %170 = icmp eq ptr %169, null
  br i1 %170, label %171, label %174, !prof !36

171:                                              ; preds = %168
  %172 = load i32, ptr %26, align 8
  %173 = add i32 %172, 1
  store i32 %173, ptr %26, align 8
  br label %295

174:                                              ; preds = %168
  %175 = load ptr, ptr %17, align 8
  %176 = getelementptr inbounds %struct.platform_device, ptr %175, i32 0, i32 3
  %177 = getelementptr inbounds %struct.bufdesc, ptr %80, i32 0, i32 2
  %178 = load i32, ptr %177, align 4
  %179 = load i32, ptr %18, align 8
  %180 = sub i32 2048, %179
  call void @dma_unmap_page_attrs(ptr noundef %176, i32 noundef %178, i32 noundef %180, i32 noundef 2, i32 noundef 0) #16
  br label %181

181:                                              ; preds = %174, %158, %151, %146
  %182 = phi i1 [ false, %174 ], [ true, %151 ], [ true, %146 ], [ true, %158 ]
  %183 = phi ptr [ %132, %174 ], [ %137, %151 ], [ %137, %146 ], [ %137, %158 ]
  %184 = phi ptr [ %169, %174 ], [ %79, %151 ], [ %79, %146 ], [ %79, %158 ]
  %185 = getelementptr inbounds %struct.sk_buff, ptr %183, i32 0, i32 17
  %186 = load ptr, ptr %185, align 4
  %187 = getelementptr i8, ptr %186, i32 -2
  call void asm sideeffect "pld\09${0:a}", "r"(ptr %187) #16, !srcloc !37
  %188 = call ptr @skb_put(ptr noundef %183, i32 noundef %133) #16
  %189 = load ptr, ptr %185, align 4
  %190 = select i1 %182, i1 true, i1 %51
  %191 = xor i1 %190, true
  %192 = icmp ne i16 %120, 0
  %193 = select i1 %191, i1 %192, i1 false
  br i1 %193, label %194, label %202

194:                                              ; preds = %194, %181
  %195 = phi ptr [ %200, %194 ], [ %189, %181 ]
  %196 = phi i32 [ %199, %194 ], [ 0, %181 ]
  %197 = load i32, ptr %195, align 4
  %198 = call i32 @llvm.bswap.i32(i32 %197) #16
  store i32 %198, ptr %195, align 4
  %199 = add nuw nsw i32 %196, 4
  %200 = getelementptr i32, ptr %195, i32 1
  %201 = icmp ult i32 %199, %121
  br i1 %201, label %194, label %202

202:                                              ; preds = %194, %181
  %203 = load i32, ptr %8, align 4
  %204 = and i32 %203, 4096
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %219, label %206

206:                                              ; preds = %202
  %207 = getelementptr inbounds %struct.sk_buff, ptr %183, i32 0, i32 5
  %208 = load i32, ptr %207, align 8
  %209 = icmp ult i32 %208, 2
  br i1 %209, label %219, label %210, !prof !36

210:                                              ; preds = %206
  %211 = add i32 %208, -2
  store i32 %211, ptr %207, align 8
  %212 = getelementptr inbounds %struct.sk_buff, ptr %183, i32 0, i32 6
  %213 = load i32, ptr %212, align 4
  %214 = icmp ult i32 %211, %213
  br i1 %214, label %215, label %216, !prof !36

215:                                              ; preds = %210
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #16, !srcloc !38
  unreachable

216:                                              ; preds = %210
  %217 = load ptr, ptr %185, align 4
  %218 = getelementptr i8, ptr %217, i32 2
  store ptr %218, ptr %185, align 4
  br label %219

219:                                              ; preds = %216, %206, %202
  %220 = phi ptr [ %189, %202 ], [ %218, %216 ], [ null, %206 ]
  %221 = load i8, ptr %19, align 4, !range !9
  %222 = icmp eq i8 %221, 0
  %223 = select i1 %222, ptr null, ptr %80
  %224 = load i64, ptr %20, align 16
  %225 = and i64 %224, 256
  %226 = icmp eq i64 %225, 0
  %227 = select i1 %226, i1 true, i1 %222
  br i1 %227, label %240, label %228

228:                                              ; preds = %219
  %229 = getelementptr inbounds %struct.bufdesc_ex, ptr %223, i32 0, i32 1
  %230 = load i32, ptr %229, align 4
  %231 = and i32 %230, 4
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %240, label %233

233:                                              ; preds = %228
  %234 = getelementptr i8, ptr %220, i32 14
  %235 = load i16, ptr %234, align 2
  %236 = call i16 @llvm.bswap.i16(i16 %235) #16
  %237 = load ptr, ptr %185, align 4
  %238 = getelementptr i8, ptr %237, i32 4
  call void @llvm.memmove.p0.p0.i32(ptr noundef align 1 dereferenceable(12) %238, ptr noundef align 1 dereferenceable(12) %220, i32 12, i1 false) #16
  %239 = call ptr @skb_pull(ptr noundef %183, i32 noundef 4) #16
  br label %240

240:                                              ; preds = %233, %228, %219
  %241 = phi i1 [ true, %233 ], [ false, %228 ], [ false, %219 ]
  %242 = phi i16 [ %236, %233 ], [ %77, %228 ], [ %77, %219 ]
  %243 = call zeroext i16 @eth_type_trans(ptr noundef %183, ptr noundef %5) #16
  %244 = getelementptr inbounds %struct.sk_buff, ptr %183, i32 0, i32 13, i32 0, i32 16
  store i16 %243, ptr %244, align 8
  %245 = load i32, ptr %21, align 4
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %259, label %247

247:                                              ; preds = %240
  %248 = load i8, ptr %19, align 4, !range !9
  %249 = icmp eq i8 %248, 0
  br i1 %249, label %276, label %250

250:                                              ; preds = %247
  %251 = getelementptr inbounds %struct.bufdesc_ex, ptr %223, i32 0, i32 4
  %252 = load i32, ptr %251, align 4
  %253 = getelementptr inbounds %struct.sk_buff, ptr %183, i32 0, i32 15
  %254 = load ptr, ptr %253, align 4
  %255 = getelementptr inbounds %struct.skb_shared_info, ptr %254, i32 0, i32 7
  %256 = call i32 @_raw_spin_lock_irqsave(ptr noundef %22) #16
  %257 = zext i32 %252 to i64
  %258 = call i64 @timecounter_cyc2time(ptr noundef %23, i64 noundef %257) #16
  call void @_raw_spin_unlock_irqrestore(ptr noundef %22, i32 noundef %256) #16
  store i64 %258, ptr %255, align 8
  br label %259

259:                                              ; preds = %250, %240
  %260 = load i8, ptr %19, align 4
  %261 = icmp eq i8 %260, 0
  br i1 %261, label %276, label %262

262:                                              ; preds = %259
  %263 = load i32, ptr %24, align 8
  %264 = and i32 %263, 48
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %276, label %266

266:                                              ; preds = %262
  %267 = getelementptr inbounds %struct.bufdesc_ex, ptr %223, i32 0, i32 1
  %268 = load i32, ptr %267, align 4
  %269 = and i32 %268, 48
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %271, label %276

271:                                              ; preds = %266
  %272 = getelementptr inbounds %struct.sk_buff, ptr %183, i32 0, i32 13
  %273 = load i16, ptr %272, align 8
  %274 = and i16 %273, -97
  %275 = or i16 %274, 32
  store i16 %275, ptr %272, align 8
  br label %276

276:                                              ; preds = %271, %266, %262, %259, %247
  br i1 %241, label %277, label %283

277:                                              ; preds = %276
  %278 = getelementptr inbounds %struct.sk_buff, ptr %183, i32 0, i32 13, i32 0, i32 8
  store i16 129, ptr %278, align 4
  %279 = getelementptr inbounds %struct.sk_buff, ptr %183, i32 0, i32 13, i32 0, i32 9
  store i16 %242, ptr %279, align 2
  %280 = getelementptr inbounds %struct.sk_buff, ptr %183, i32 0, i32 13, i32 0, i32 3
  %281 = load i16, ptr %280, align 2
  %282 = or i16 %281, 1
  store i16 %282, ptr %280, align 2
  br label %283

283:                                              ; preds = %277, %276
  %284 = getelementptr inbounds %struct.sk_buff, ptr %183, i32 0, i32 9
  store i16 %70, ptr %284, align 4
  %285 = call i32 @napi_gro_receive(ptr noundef %25, ptr noundef %183) #16
  br i1 %182, label %286, label %293

286:                                              ; preds = %283
  %287 = load ptr, ptr %17, align 8
  %288 = getelementptr inbounds %struct.platform_device, ptr %287, i32 0, i32 3
  %289 = getelementptr inbounds %struct.bufdesc, ptr %80, i32 0, i32 2
  %290 = load i32, ptr %289, align 4
  %291 = load i32, ptr %18, align 8
  %292 = sub i32 2048, %291
  call void @dma_sync_single_for_device(ptr noundef %288, i32 noundef %290, i32 noundef %292, i32 noundef 2) #16
  br label %295

293:                                              ; preds = %283
  store ptr %184, ptr %131, align 4
  %294 = call fastcc i32 @fec_enet_new_rxbdp(ptr noundef %5, ptr noundef %80, ptr noundef %184) #16
  br label %295

295:                                              ; preds = %293, %286, %171, %114, %111, %93
  %296 = phi ptr [ %79, %93 ], [ %79, %114 ], [ %79, %111 ], [ %184, %286 ], [ %184, %293 ], [ null, %171 ]
  %297 = phi i16 [ %77, %93 ], [ %77, %114 ], [ %77, %111 ], [ %242, %286 ], [ %242, %293 ], [ %77, %171 ]
  %298 = and i16 %84, 32448
  %299 = or i16 %298, -32768
  %300 = load i8, ptr %19, align 4, !range !9
  %301 = icmp eq i8 %300, 0
  br i1 %301, label %306, label %302

302:                                              ; preds = %295
  %303 = getelementptr inbounds %struct.bufdesc_ex, ptr %80, i32 0, i32 1
  store i32 8388608, ptr %303, align 4
  %304 = getelementptr inbounds %struct.bufdesc_ex, ptr %80, i32 0, i32 2
  store i32 0, ptr %304, align 4
  %305 = getelementptr inbounds %struct.bufdesc_ex, ptr %80, i32 0, i32 3
  store i32 0, ptr %305, align 4
  br label %306

306:                                              ; preds = %302, %295
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !39
  call void @arm_heavy_mb() #16
  store i16 %299, ptr %76, align 2
  %307 = load ptr, ptr %71, align 4
  %308 = icmp ugt ptr %307, %80
  br i1 %308, label %311, label %309

309:                                              ; preds = %306
  %310 = load ptr, ptr %68, align 4
  br label %315

311:                                              ; preds = %306
  %312 = load i8, ptr %72, align 2
  %313 = zext i8 %312 to i32
  %314 = getelementptr i8, ptr %80, i32 %313
  br label %315

315:                                              ; preds = %311, %309
  %316 = phi ptr [ %310, %309 ], [ %314, %311 ]
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !40
  call void @arm_heavy_mb() #16
  %317 = load ptr, ptr %73, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %317, i32 0) #16, !srcloc !21
  %318 = getelementptr inbounds %struct.bufdesc, ptr %316, i32 0, i32 1
  %319 = load i16, ptr %318, align 2
  %320 = icmp sgt i16 %319, -1
  %321 = icmp slt i32 %81, %48
  %322 = select i1 %320, i1 %321, i1 false
  br i1 %322, label %74, label %323

323:                                              ; preds = %315, %44
  %324 = phi ptr [ %56, %44 ], [ %316, %315 ]
  %325 = phi i32 [ 0, %44 ], [ %81, %315 ]
  store ptr %324, ptr %55, align 4
  %326 = add i32 %325, %46
  %327 = add i32 %45, -1
  %328 = icmp sgt i32 %327, -1
  br i1 %328, label %44, label %329

329:                                              ; preds = %323, %39
  %330 = phi i32 [ 0, %39 ], [ %326, %323 ]
  %331 = add i32 %330, %40
  %332 = load i32, ptr %27, align 8
  %333 = add i32 %332, -1
  %334 = icmp sgt i32 %333, -1
  br i1 %334, label %335, label %519

335:                                              ; preds = %516, %329
  %336 = phi i32 [ %517, %516 ], [ %333, %329 ]
  %337 = and i32 %336, 65535
  %338 = getelementptr %struct.fec_enet_private, ptr %6, i32 0, i32 12, i32 %337
  %339 = load ptr, ptr %338, align 4
  %340 = load ptr, ptr %28, align 64
  %341 = getelementptr %struct.netdev_queue, ptr %340, i32 %337
  %342 = getelementptr inbounds %struct.fec_enet_priv_tx_q, ptr %339, i32 0, i32 5
  %343 = load ptr, ptr %342, align 4
  %344 = getelementptr inbounds %struct.bufdesc_prop, ptr %339, i32 0, i32 2
  %345 = load ptr, ptr %344, align 4
  %346 = icmp ugt ptr %345, %343
  br i1 %346, label %350, label %347

347:                                              ; preds = %335
  %348 = getelementptr inbounds %struct.bufdesc_prop, ptr %339, i32 0, i32 1
  %349 = load ptr, ptr %348, align 4
  br label %355

350:                                              ; preds = %335
  %351 = getelementptr inbounds %struct.bufdesc_prop, ptr %339, i32 0, i32 7
  %352 = load i8, ptr %351, align 2
  %353 = zext i8 %352 to i32
  %354 = getelementptr i8, ptr %343, i32 %353
  br label %355

355:                                              ; preds = %350, %347
  %356 = phi ptr [ %349, %347 ], [ %354, %350 ]
  %357 = getelementptr inbounds %struct.bufdesc_prop, ptr %339, i32 0, i32 3
  %358 = load volatile ptr, ptr %357, align 4
  %359 = icmp eq ptr %356, %358
  br i1 %359, label %516, label %360

360:                                              ; preds = %355
  %361 = getelementptr inbounds %struct.bufdesc_prop, ptr %339, i32 0, i32 1
  %362 = getelementptr inbounds %struct.bufdesc_prop, ptr %339, i32 0, i32 8
  %363 = getelementptr inbounds %struct.fec_enet_priv_tx_q, ptr %339, i32 0, i32 7
  %364 = getelementptr inbounds %struct.bufdesc_prop, ptr %339, i32 0, i32 6
  %365 = getelementptr inbounds %struct.bufdesc_prop, ptr %339, i32 0, i32 7
  %366 = getelementptr %struct.netdev_queue, ptr %340, i32 %337, i32 12
  %367 = getelementptr inbounds %struct.fec_enet_priv_tx_q, ptr %339, i32 0, i32 4
  br label %368

368:                                              ; preds = %503, %360
  %369 = phi ptr [ %356, %360 ], [ %480, %503 ]
  call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !41
  %370 = getelementptr inbounds %struct.bufdesc, ptr %369, i32 0, i32 1
  %371 = load volatile i16, ptr %370, align 2
  %372 = zext i16 %371 to i32
  %373 = and i32 %372, 32768
  %374 = icmp eq i32 %373, 0
  br i1 %374, label %375, label %506

375:                                              ; preds = %368
  %376 = load ptr, ptr %361, align 4
  %377 = ptrtoint ptr %369 to i32
  %378 = ptrtoint ptr %376 to i32
  %379 = sub i32 %377, %378
  %380 = load i8, ptr %362, align 1
  %381 = zext i8 %380 to i32
  %382 = ashr i32 %379, %381
  %383 = getelementptr %struct.fec_enet_priv_tx_q, ptr %339, i32 0, i32 2, i32 %382
  %384 = load ptr, ptr %383, align 4
  store ptr null, ptr %383, align 4
  %385 = getelementptr inbounds %struct.bufdesc, ptr %369, i32 0, i32 2
  %386 = load i32, ptr %385, align 4
  %387 = load i32, ptr %363, align 4
  %388 = icmp ult i32 %386, %387
  br i1 %388, label %395, label %389

389:                                              ; preds = %375
  %390 = load i16, ptr %364, align 4
  %391 = zext i16 %390 to i32
  %392 = shl nuw nsw i32 %391, 8
  %393 = add i32 %392, %387
  %394 = icmp ult i32 %386, %393
  br i1 %394, label %400, label %395

395:                                              ; preds = %389, %375
  %396 = load ptr, ptr %17, align 8
  %397 = getelementptr inbounds %struct.platform_device, ptr %396, i32 0, i32 3
  %398 = load i16, ptr %369, align 4
  %399 = zext i16 %398 to i32
  call void @dma_unmap_page_attrs(ptr noundef %397, i32 noundef %386, i32 noundef %399, i32 noundef 1, i32 noundef 0) #16
  br label %400

400:                                              ; preds = %395, %389
  store i32 0, ptr %385, align 4
  %401 = icmp eq ptr %384, null
  br i1 %401, label %470, label %402

402:                                              ; preds = %400
  %403 = and i32 %372, 451
  %404 = icmp eq i32 %403, 0
  br i1 %404, label %434, label %405

405:                                              ; preds = %402
  %406 = load i32, ptr %29, align 4
  %407 = add i32 %406, 1
  store i32 %407, ptr %29, align 4
  %408 = and i32 %372, 256
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %413, label %410

410:                                              ; preds = %405
  %411 = load i32, ptr %30, align 4
  %412 = add i32 %411, 1
  store i32 %412, ptr %30, align 4
  br label %413

413:                                              ; preds = %410, %405
  %414 = and i32 %372, 128
  %415 = icmp eq i32 %414, 0
  br i1 %415, label %419, label %416

416:                                              ; preds = %413
  %417 = load i32, ptr %31, align 8
  %418 = add i32 %417, 1
  store i32 %418, ptr %31, align 8
  br label %419

419:                                              ; preds = %416, %413
  %420 = and i32 %372, 64
  %421 = icmp eq i32 %420, 0
  br i1 %421, label %425, label %422

422:                                              ; preds = %419
  %423 = load i32, ptr %32, align 8
  %424 = add i32 %423, 1
  store i32 %424, ptr %32, align 8
  br label %425

425:                                              ; preds = %422, %419
  %426 = and i32 %372, 2
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %431, label %428

428:                                              ; preds = %425
  %429 = load i32, ptr %33, align 8
  %430 = add i32 %429, 1
  store i32 %430, ptr %33, align 8
  br label %431

431:                                              ; preds = %428, %425
  %432 = and i32 %372, 1
  %433 = icmp eq i32 %432, 0
  br i1 %433, label %444, label %439

434:                                              ; preds = %402
  %435 = load i32, ptr %35, align 4
  %436 = add i32 %435, 1
  store i32 %436, ptr %35, align 4
  %437 = getelementptr inbounds %struct.sk_buff, ptr %384, i32 0, i32 5
  %438 = load i32, ptr %437, align 8
  br label %439

439:                                              ; preds = %434, %431
  %440 = phi ptr [ %36, %434 ], [ %34, %431 ]
  %441 = phi i32 [ %438, %434 ], [ 1, %431 ]
  %442 = load i32, ptr %440, align 4
  %443 = add i32 %442, %441
  store i32 %443, ptr %440, align 4
  br label %444

444:                                              ; preds = %439, %431
  %445 = getelementptr inbounds %struct.sk_buff, ptr %384, i32 0, i32 15
  %446 = load ptr, ptr %445, align 4
  %447 = getelementptr inbounds %struct.skb_shared_info, ptr %446, i32 0, i32 3
  %448 = load i8, ptr %447, align 1
  %449 = and i8 %448, 4
  %450 = icmp eq i8 %449, 0
  br i1 %450, label %463, label %451

451:                                              ; preds = %444
  %452 = load i32, ptr %37, align 8
  %453 = icmp eq i32 %452, 0
  br i1 %453, label %463, label %454, !prof !16

454:                                              ; preds = %451
  %455 = load i8, ptr %19, align 4, !range !9
  %456 = icmp eq i8 %455, 0
  br i1 %456, label %463, label %457

457:                                              ; preds = %454
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  store i64 0, ptr %3, align 8, !annotation !8
  %458 = getelementptr inbounds %struct.bufdesc_ex, ptr %369, i32 0, i32 4
  %459 = load i32, ptr %458, align 4
  %460 = call i32 @_raw_spin_lock_irqsave(ptr noundef %22) #16
  %461 = zext i32 %459 to i64
  %462 = call i64 @timecounter_cyc2time(ptr noundef %23, i64 noundef %461) #16
  call void @_raw_spin_unlock_irqrestore(ptr noundef %22, i32 noundef %460) #16
  store i64 %462, ptr %3, align 8
  call void @skb_tstamp_tx(ptr noundef nonnull %384, ptr noundef nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  br label %463

463:                                              ; preds = %457, %454, %451, %444
  %464 = and i32 %372, 512
  %465 = icmp eq i32 %464, 0
  br i1 %465, label %469, label %466

466:                                              ; preds = %463
  %467 = load i32, ptr %38, align 4
  %468 = add i32 %467, 1
  store i32 %468, ptr %38, align 4
  br label %469

469:                                              ; preds = %466, %463
  call void @__dev_kfree_skb_any(ptr noundef nonnull %384, i32 noundef 1) #16
  br label %470

470:                                              ; preds = %469, %400
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !42
  call void @arm_heavy_mb() #16
  store ptr %369, ptr %342, align 4
  %471 = load ptr, ptr %344, align 4
  %472 = icmp ugt ptr %471, %369
  br i1 %472, label %475, label %473

473:                                              ; preds = %470
  %474 = load ptr, ptr %361, align 4
  br label %479

475:                                              ; preds = %470
  %476 = load i8, ptr %365, align 2
  %477 = zext i8 %476 to i32
  %478 = getelementptr i8, ptr %369, i32 %477
  br label %479

479:                                              ; preds = %475, %473
  %480 = phi ptr [ %474, %473 ], [ %478, %475 ]
  %481 = load volatile i32, ptr %366, align 4
  %482 = and i32 %481, 1
  %483 = icmp eq i32 %482, 0
  br i1 %483, label %503, label %484

484:                                              ; preds = %479
  %485 = load ptr, ptr %357, align 4
  %486 = ptrtoint ptr %485 to i32
  %487 = sub i32 %377, %486
  %488 = load i8, ptr %362, align 1
  %489 = zext i8 %488 to i32
  %490 = ashr i32 %487, %489
  %491 = add i32 %490, -1
  %492 = icmp sgt i32 %491, -1
  br i1 %492, label %497, label %493

493:                                              ; preds = %484
  %494 = load i16, ptr %364, align 4
  %495 = zext i16 %494 to i32
  %496 = add nsw i32 %491, %495
  br label %497

497:                                              ; preds = %493, %484
  %498 = phi i32 [ %496, %493 ], [ %491, %484 ]
  %499 = load i16, ptr %367, align 2
  %500 = zext i16 %499 to i32
  %501 = icmp slt i32 %498, %500
  br i1 %501, label %503, label %502

502:                                              ; preds = %497
  call void @netif_tx_wake_queue(ptr noundef %341) #16
  br label %503

503:                                              ; preds = %502, %497, %479
  %504 = load volatile ptr, ptr %357, align 4
  %505 = icmp eq ptr %480, %504
  br i1 %505, label %516, label %368

506:                                              ; preds = %368
  %507 = load ptr, ptr %357, align 4
  %508 = icmp eq ptr %369, %507
  br i1 %508, label %516, label %509

509:                                              ; preds = %506
  %510 = getelementptr inbounds %struct.bufdesc_prop, ptr %339, i32 0, i32 4
  %511 = load ptr, ptr %510, align 4
  %512 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %511) #16, !srcloc !17
  call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !43
  %513 = icmp eq i32 %512, 0
  br i1 %513, label %514, label %516

514:                                              ; preds = %509
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !44
  call void @arm_heavy_mb() #16
  %515 = load ptr, ptr %510, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %515, i32 0) #16, !srcloc !21
  br label %516

516:                                              ; preds = %514, %509, %506, %503, %355
  %517 = add i32 %336, -1
  %518 = icmp sgt i32 %517, -1
  br i1 %518, label %335, label %519

519:                                              ; preds = %516, %329
  %520 = icmp slt i32 %331, %1
  br i1 %520, label %521, label %533

521:                                              ; preds = %519
  %522 = load ptr, ptr %6, align 8
  %523 = getelementptr i8, ptr %522, i32 4
  %524 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %523) #16, !srcloc !17
  call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !28
  %525 = and i32 %524, -8388609
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !29
  call void @arm_heavy_mb() #16
  %526 = load ptr, ptr %6, align 8
  %527 = getelementptr i8, ptr %526, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %527, i32 %525) #16, !srcloc !21
  %528 = icmp eq i32 %525, 0
  br i1 %528, label %529, label %39

529:                                              ; preds = %521
  %530 = call zeroext i1 @napi_complete_done(ptr noundef %0, i32 noundef %331) #16
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !45
  call void @arm_heavy_mb() #16
  %531 = load ptr, ptr %6, align 8
  %532 = getelementptr i8, ptr %531, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %532, i32 167772330) #16, !srcloc !21
  br label %533

533:                                              ; preds = %529, %519
  ret i32 %331
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @fec_restart(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca %struct.ethtool_coalesce, align 4
  %3 = getelementptr i8, ptr %0, i32 1408
  %4 = getelementptr i8, ptr %0, i32 1572
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 524288
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = and i32 %5, 262144
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %8
  %12 = getelementptr i8, ptr %0, i32 1532
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %11, %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !46
  tail call void @arm_heavy_mb() #16
  %16 = load ptr, ptr %3, align 8
  %17 = getelementptr i8, ptr %16, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 0) #16, !srcloc !21
  br label %22

18:                                               ; preds = %11, %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !47
  tail call void @arm_heavy_mb() #16
  %19 = load ptr, ptr %3, align 8
  %20 = getelementptr i8, ptr %19, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 1) #16, !srcloc !21
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 2147480) #16
  br label %22

22:                                               ; preds = %18, %15
  %23 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 72
  %24 = load ptr, ptr %23, align 32
  %25 = load i32, ptr %24, align 1
  %26 = getelementptr inbounds i8, ptr %24, i32 4
  %27 = load i16, ptr %26, align 1
  %28 = zext i16 %27 to i32
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !48
  tail call void @arm_heavy_mb() #16
  %29 = tail call i32 @llvm.bswap.i32(i32 %25)
  %30 = load ptr, ptr %3, align 8
  %31 = getelementptr i8, ptr %30, i32 228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %29) #16, !srcloc !21
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !49
  tail call void @arm_heavy_mb() #16
  %32 = tail call i32 @llvm.bswap.i32(i32 %28)
  %33 = load ptr, ptr %3, align 8
  %34 = getelementptr i8, ptr %33, i32 232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %32) #16, !srcloc !21
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !50
  tail call void @arm_heavy_mb() #16
  %35 = load ptr, ptr %3, align 8
  %36 = getelementptr i8, ptr %35, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 -8388609) #16, !srcloc !21
  %37 = getelementptr i8, ptr %0, i32 1468
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %92, %22
  %41 = phi i32 [ 0, %22 ], [ %100, %92 ]
  %42 = getelementptr i8, ptr %0, i32 1464
  %43 = load i32, ptr %42, align 8
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %179, label %45

45:                                               ; preds = %40
  %46 = getelementptr i8, ptr %0, i32 1504
  br label %102

47:                                               ; preds = %92, %22
  %48 = phi i32 [ %99, %92 ], [ 0, %22 ]
  %49 = getelementptr %struct.fec_enet_private, ptr %3, i32 0, i32 13, i32 %48
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.bufdesc_prop, ptr %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.bufdesc_prop, ptr %50, i32 0, i32 6
  %53 = load i16, ptr %52, align 4
  %54 = icmp eq i16 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %47
  %56 = getelementptr inbounds %struct.bufdesc_prop, ptr %50, i32 0, i32 2
  %57 = load ptr, ptr %56, align 4
  br label %92

58:                                               ; preds = %47
  %59 = load ptr, ptr %51, align 4
  %60 = getelementptr inbounds %struct.bufdesc_prop, ptr %50, i32 0, i32 2
  %61 = getelementptr inbounds %struct.bufdesc_prop, ptr %50, i32 0, i32 7
  br label %62

62:                                               ; preds = %78, %58
  %63 = phi i32 [ 0, %58 ], [ %80, %78 ]
  %64 = phi ptr [ %59, %58 ], [ %79, %78 ]
  %65 = getelementptr inbounds %struct.bufdesc, ptr %64, i32 0, i32 2
  %66 = load i32, ptr %65, align 4
  %67 = icmp eq i32 %66, 0
  %68 = select i1 %67, i16 0, i16 -32768
  %69 = getelementptr inbounds %struct.bufdesc, ptr %64, i32 0, i32 1
  store i16 %68, ptr %69, align 2
  %70 = load ptr, ptr %60, align 4
  %71 = icmp ugt ptr %70, %64
  br i1 %71, label %74, label %72

72:                                               ; preds = %62
  %73 = load ptr, ptr %51, align 4
  br label %78

74:                                               ; preds = %62
  %75 = load i8, ptr %61, align 2
  %76 = zext i8 %75 to i32
  %77 = getelementptr i8, ptr %64, i32 %76
  br label %78

78:                                               ; preds = %74, %72
  %79 = phi ptr [ %73, %72 ], [ %77, %74 ]
  %80 = add nuw nsw i32 %63, 1
  %81 = load i16, ptr %52, align 4
  %82 = zext i16 %81 to i32
  %83 = icmp ult i32 %80, %82
  br i1 %83, label %62, label %84

84:                                               ; preds = %78
  %85 = load ptr, ptr %51, align 4
  %86 = icmp ult ptr %85, %79
  br i1 %86, label %87, label %92

87:                                               ; preds = %84
  %88 = load i8, ptr %61, align 2
  %89 = zext i8 %88 to i32
  %90 = sub nsw i32 0, %89
  %91 = getelementptr i8, ptr %79, i32 %90
  br label %92

92:                                               ; preds = %87, %84, %55
  %93 = phi ptr [ %91, %87 ], [ %57, %55 ], [ %70, %84 ]
  %94 = getelementptr inbounds %struct.bufdesc, ptr %93, i32 0, i32 1
  %95 = load i16, ptr %94, align 2
  %96 = or i16 %95, 8192
  store i16 %96, ptr %94, align 2
  %97 = load ptr, ptr %51, align 4
  %98 = getelementptr inbounds %struct.bufdesc_prop, ptr %50, i32 0, i32 3
  store ptr %97, ptr %98, align 4
  %99 = add nuw i32 %48, 1
  %100 = load i32, ptr %37, align 4
  %101 = icmp ult i32 %99, %100
  br i1 %101, label %47, label %40

102:                                              ; preds = %168, %45
  %103 = phi i32 [ 0, %45 ], [ %174, %168 ]
  %104 = getelementptr %struct.fec_enet_private, ptr %3, i32 0, i32 12, i32 %103
  %105 = load ptr, ptr %104, align 4
  %106 = getelementptr inbounds %struct.bufdesc_prop, ptr %105, i32 0, i32 1
  %107 = load ptr, ptr %106, align 4
  %108 = getelementptr inbounds %struct.bufdesc_prop, ptr %105, i32 0, i32 3
  store ptr %107, ptr %108, align 4
  %109 = getelementptr inbounds %struct.bufdesc_prop, ptr %105, i32 0, i32 6
  %110 = load i16, ptr %109, align 4
  %111 = icmp eq i16 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %102
  %113 = getelementptr inbounds %struct.bufdesc_prop, ptr %105, i32 0, i32 2
  %114 = load ptr, ptr %113, align 4
  br label %168

115:                                              ; preds = %102
  %116 = getelementptr inbounds %struct.fec_enet_priv_tx_q, ptr %105, i32 0, i32 7
  %117 = getelementptr inbounds %struct.bufdesc_prop, ptr %105, i32 0, i32 2
  %118 = getelementptr inbounds %struct.bufdesc_prop, ptr %105, i32 0, i32 7
  br label %119

119:                                              ; preds = %154, %115
  %120 = phi i32 [ 0, %115 ], [ %156, %154 ]
  %121 = phi ptr [ %107, %115 ], [ %155, %154 ]
  %122 = getelementptr inbounds %struct.bufdesc, ptr %121, i32 0, i32 1
  store i16 0, ptr %122, align 2
  %123 = getelementptr inbounds %struct.bufdesc, ptr %121, i32 0, i32 2
  %124 = load i32, ptr %123, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %140, label %126

126:                                              ; preds = %119
  %127 = load i32, ptr %116, align 4
  %128 = icmp ult i32 %124, %127
  br i1 %128, label %135, label %129

129:                                              ; preds = %126
  %130 = load i16, ptr %109, align 4
  %131 = zext i16 %130 to i32
  %132 = shl nuw nsw i32 %131, 8
  %133 = add i32 %132, %127
  %134 = icmp ult i32 %124, %133
  br i1 %134, label %140, label %135

135:                                              ; preds = %129, %126
  %136 = load ptr, ptr %46, align 8
  %137 = getelementptr inbounds %struct.platform_device, ptr %136, i32 0, i32 3
  %138 = load i16, ptr %121, align 4
  %139 = zext i16 %138 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %137, i32 noundef %124, i32 noundef %139, i32 noundef 1, i32 noundef 0) #16
  br label %140

140:                                              ; preds = %135, %129, %119
  %141 = getelementptr %struct.fec_enet_priv_tx_q, ptr %105, i32 0, i32 2, i32 %120
  %142 = load ptr, ptr %141, align 4
  %143 = icmp eq ptr %142, null
  br i1 %143, label %145, label %144

144:                                              ; preds = %140
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %142, i32 noundef 1) #16
  store ptr null, ptr %141, align 4
  br label %145

145:                                              ; preds = %144, %140
  store i32 0, ptr %123, align 4
  %146 = load ptr, ptr %117, align 4
  %147 = icmp ugt ptr %146, %121
  br i1 %147, label %150, label %148

148:                                              ; preds = %145
  %149 = load ptr, ptr %106, align 4
  br label %154

150:                                              ; preds = %145
  %151 = load i8, ptr %118, align 2
  %152 = zext i8 %151 to i32
  %153 = getelementptr i8, ptr %121, i32 %152
  br label %154

154:                                              ; preds = %150, %148
  %155 = phi ptr [ %149, %148 ], [ %153, %150 ]
  %156 = add nuw nsw i32 %120, 1
  %157 = load i16, ptr %109, align 4
  %158 = zext i16 %157 to i32
  %159 = icmp ult i32 %156, %158
  br i1 %159, label %119, label %160

160:                                              ; preds = %154
  %161 = load ptr, ptr %106, align 4
  %162 = icmp ult ptr %161, %155
  br i1 %162, label %163, label %168

163:                                              ; preds = %160
  %164 = load i8, ptr %118, align 2
  %165 = zext i8 %164 to i32
  %166 = sub nsw i32 0, %165
  %167 = getelementptr i8, ptr %155, i32 %166
  br label %168

168:                                              ; preds = %163, %160, %112
  %169 = phi ptr [ %167, %163 ], [ %114, %112 ], [ %146, %160 ]
  %170 = getelementptr inbounds %struct.bufdesc, ptr %169, i32 0, i32 1
  %171 = load i16, ptr %170, align 2
  %172 = or i16 %171, 8192
  store i16 %172, ptr %170, align 2
  %173 = getelementptr inbounds %struct.fec_enet_priv_tx_q, ptr %105, i32 0, i32 5
  store ptr %169, ptr %173, align 4
  %174 = add nuw i32 %103, 1
  %175 = load i32, ptr %42, align 8
  %176 = icmp ult i32 %174, %175
  br i1 %176, label %102, label %177

177:                                              ; preds = %168
  %178 = load i32, ptr %37, align 4
  br label %179

179:                                              ; preds = %177, %40
  %180 = phi i32 [ %178, %177 ], [ %41, %40 ]
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %193, label %182

182:                                              ; preds = %179
  %183 = getelementptr i8, ptr %0, i32 1484
  %184 = load ptr, ptr %183, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !51
  tail call void @arm_heavy_mb() #16
  %185 = getelementptr inbounds %struct.bufdesc_prop, ptr %184, i32 0, i32 5
  %186 = load i32, ptr %185, align 4
  %187 = load ptr, ptr %3, align 8
  %188 = getelementptr i8, ptr %187, i32 384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %188, i32 %186) #16, !srcloc !21
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !52
  tail call void @arm_heavy_mb() #16
  %189 = load ptr, ptr %3, align 8
  %190 = getelementptr i8, ptr %189, i32 392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %190, i32 1984) #16, !srcloc !21
  %191 = load i32, ptr %37, align 4
  %192 = icmp ugt i32 %191, 1
  br i1 %192, label %205, label %193

193:                                              ; preds = %205, %182, %179
  %194 = load i32, ptr %42, align 8
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %276, label %196

196:                                              ; preds = %193
  %197 = getelementptr i8, ptr %0, i32 1472
  %198 = load ptr, ptr %197, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !53
  tail call void @arm_heavy_mb() #16
  %199 = getelementptr inbounds %struct.bufdesc_prop, ptr %198, i32 0, i32 5
  %200 = load i32, ptr %199, align 4
  %201 = load ptr, ptr %3, align 8
  %202 = getelementptr i8, ptr %201, i32 388
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %202, i32 %200) #16, !srcloc !21
  %203 = load i32, ptr %42, align 8
  %204 = icmp ugt i32 %203, 1
  br i1 %204, label %228, label %246

205:                                              ; preds = %205, %182
  %206 = phi i32 [ %225, %205 ], [ 1, %182 ]
  %207 = getelementptr %struct.fec_enet_private, ptr %3, i32 0, i32 13, i32 %206
  %208 = load ptr, ptr %207, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !51
  tail call void @arm_heavy_mb() #16
  %209 = getelementptr inbounds %struct.bufdesc_prop, ptr %208, i32 0, i32 5
  %210 = load i32, ptr %209, align 4
  %211 = load ptr, ptr %3, align 8
  %212 = icmp eq i32 %206, 1
  %213 = icmp eq i32 %206, 2
  %214 = select i1 %213, i32 364, i32 384
  %215 = select i1 %212, i32 352, i32 %214
  %216 = getelementptr i8, ptr %211, i32 %215
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %216, i32 %210) #16, !srcloc !21
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !52
  tail call void @arm_heavy_mb() #16
  %217 = load ptr, ptr %3, align 8
  %218 = select i1 %213, i32 372, i32 392
  %219 = select i1 %212, i32 360, i32 %218
  %220 = getelementptr i8, ptr %217, i32 %219
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %220, i32 1984) #16, !srcloc !21
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !54
  tail call void @arm_heavy_mb() #16
  %221 = select i1 %212, i32 78352, i32 95828
  %222 = load ptr, ptr %3, align 8
  %223 = select i1 %213, i32 460, i32 456
  %224 = getelementptr i8, ptr %222, i32 %223
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %224, i32 %221) #16, !srcloc !21
  %225 = add nuw i32 %206, 1
  %226 = load i32, ptr %37, align 4
  %227 = icmp ult i32 %225, %226
  br i1 %227, label %205, label %193, !llvm.loop !55

228:                                              ; preds = %228, %196
  %229 = phi i32 [ %243, %228 ], [ 1, %196 ]
  %230 = getelementptr %struct.fec_enet_private, ptr %3, i32 0, i32 12, i32 %229
  %231 = load ptr, ptr %230, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !53
  tail call void @arm_heavy_mb() #16
  %232 = getelementptr inbounds %struct.bufdesc_prop, ptr %231, i32 0, i32 5
  %233 = load i32, ptr %232, align 4
  %234 = load ptr, ptr %3, align 8
  %235 = icmp eq i32 %229, 1
  %236 = icmp eq i32 %229, 2
  %237 = select i1 %236, i32 368, i32 388
  %238 = select i1 %235, i32 356, i32 %237
  %239 = getelementptr i8, ptr %234, i32 %238
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %239, i32 %233) #16, !srcloc !21
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !57
  tail call void @arm_heavy_mb() #16
  %240 = load ptr, ptr %3, align 8
  %241 = select i1 %236, i32 476, i32 472
  %242 = getelementptr i8, ptr %240, i32 %241
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %242, i32 66048) #16, !srcloc !21
  %243 = add nuw i32 %229, 1
  %244 = load i32, ptr %42, align 8
  %245 = icmp ult i32 %243, %244
  br i1 %245, label %228, label %246, !llvm.loop !58

246:                                              ; preds = %228, %196
  %247 = phi i32 [ %203, %196 ], [ %244, %228 ]
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %276, label %249

249:                                              ; preds = %272, %246
  %250 = phi i32 [ %273, %272 ], [ %247, %246 ]
  %251 = phi i32 [ %274, %272 ], [ 0, %246 ]
  %252 = getelementptr %struct.fec_enet_private, ptr %3, i32 0, i32 12, i32 %251
  %253 = load ptr, ptr %252, align 4
  %254 = getelementptr inbounds %struct.bufdesc_prop, ptr %253, i32 0, i32 6
  %255 = load i16, ptr %254, align 4
  %256 = icmp eq i16 %255, 0
  br i1 %256, label %272, label %257

257:                                              ; preds = %265, %249
  %258 = phi i16 [ %266, %265 ], [ %255, %249 ]
  %259 = phi i32 [ %267, %265 ], [ 0, %249 ]
  %260 = getelementptr %struct.fec_enet_priv_tx_q, ptr %253, i32 0, i32 2, i32 %259
  %261 = load ptr, ptr %260, align 4
  %262 = icmp eq ptr %261, null
  br i1 %262, label %265, label %263

263:                                              ; preds = %257
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %261, i32 noundef 1) #16
  store ptr null, ptr %260, align 4
  %264 = load i16, ptr %254, align 4
  br label %265

265:                                              ; preds = %263, %257
  %266 = phi i16 [ %258, %257 ], [ %264, %263 ]
  %267 = add nuw nsw i32 %259, 1
  %268 = zext i16 %266 to i32
  %269 = icmp ult i32 %267, %268
  br i1 %269, label %257, label %270

270:                                              ; preds = %265
  %271 = load i32, ptr %42, align 8
  br label %272

272:                                              ; preds = %270, %249
  %273 = phi i32 [ %271, %270 ], [ %250, %249 ]
  %274 = add nuw i32 %251, 1
  %275 = icmp ult i32 %274, %273
  br i1 %275, label %249, label %276

276:                                              ; preds = %272, %246, %193
  %277 = getelementptr i8, ptr %0, i32 1536
  %278 = load i32, ptr %277, align 8
  %279 = icmp eq i32 %278, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #16
  tail call void @arm_heavy_mb() #16
  %280 = load ptr, ptr %3, align 8
  %281 = getelementptr i8, ptr %280, i32 196
  br i1 %279, label %282, label %283

282:                                              ; preds = %276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %281, i32 4) #16, !srcloc !21
  br label %284

283:                                              ; preds = %276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %281, i32 0) #16, !srcloc !21
  br label %284

284:                                              ; preds = %283, %282
  %285 = phi i32 [ 130023428, %282 ], [ 130023430, %283 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !59
  tail call void @arm_heavy_mb() #16
  %286 = getelementptr i8, ptr %0, i32 1516
  %287 = load i32, ptr %286, align 4
  %288 = load ptr, ptr %3, align 8
  %289 = getelementptr i8, ptr %288, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %289, i32 %287) #16, !srcloc !21
  %290 = load i32, ptr %4, align 4
  %291 = and i32 %290, 4096
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %310, label %293

293:                                              ; preds = %284
  %294 = load ptr, ptr %3, align 8
  %295 = getelementptr i8, ptr %294, i32 452
  %296 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %295) #16, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !60
  %297 = getelementptr i8, ptr %0, i32 1792
  %298 = load i32, ptr %297, align 8
  %299 = and i32 %298, 48
  %300 = icmp eq i32 %299, 0
  %301 = or i32 %296, 134
  %302 = and i32 %296, -135
  %303 = or i32 %302, 128
  %304 = select i1 %300, i32 %303, i32 %301
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !61
  tail call void @arm_heavy_mb() #16
  %305 = load ptr, ptr %3, align 8
  %306 = getelementptr i8, ptr %305, i32 452
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %306, i32 %304) #16, !srcloc !21
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !62
  tail call void @arm_heavy_mb() #16
  %307 = load ptr, ptr %3, align 8
  %308 = getelementptr i8, ptr %307, i32 432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %308, i32 1984) #16, !srcloc !21
  %309 = load i32, ptr %4, align 4
  br label %310

310:                                              ; preds = %293, %284
  %311 = phi i32 [ %309, %293 ], [ %290, %284 ]
  %312 = and i32 %311, 1
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %334, label %314

314:                                              ; preds = %310
  %315 = or i32 %285, 1073741856
  %316 = getelementptr i8, ptr %0, i32 1520
  %317 = load i32, ptr %316, align 8
  switch i32 %317, label %322 [
    i32 9, label %318
    i32 10, label %318
    i32 11, label %318
    i32 12, label %318
    i32 7, label %320
  ]

318:                                              ; preds = %314, %314, %314, %314
  %319 = or i32 %285, 1073741920
  br label %322

320:                                              ; preds = %314
  %321 = or i32 %285, 1073742112
  br label %322

322:                                              ; preds = %320, %318, %314
  %323 = phi i32 [ %319, %318 ], [ %321, %320 ], [ %315, %314 ]
  %324 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %325 = load ptr, ptr %324, align 8
  %326 = icmp eq ptr %325, null
  br i1 %326, label %372, label %327

327:                                              ; preds = %322
  %328 = getelementptr inbounds %struct.phy_device, ptr %325, i32 0, i32 8
  %329 = load i32, ptr %328, align 8
  switch i32 %329, label %332 [
    i32 1000, label %372
    i32 100, label %330
  ]

330:                                              ; preds = %327
  %331 = and i32 %323, -513
  br label %372

332:                                              ; preds = %327
  %333 = or i32 %323, 512
  br label %372

334:                                              ; preds = %310
  %335 = and i32 %311, 4
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %372, label %337

337:                                              ; preds = %334
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !63
  tail call void @arm_heavy_mb() #16
  %338 = load ptr, ptr %3, align 8
  %339 = getelementptr i8, ptr %338, i32 776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %339, i32 0) #16, !srcloc !21
  %340 = load ptr, ptr %3, align 8
  %341 = getelementptr i8, ptr %340, i32 776
  %342 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %341) #16, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !64
  %343 = and i32 %342, 4
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %352, label %345

345:                                              ; preds = %345, %337
  %346 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %346(i32 noundef 214748) #16
  %347 = load ptr, ptr %3, align 8
  %348 = getelementptr i8, ptr %347, i32 776
  %349 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %348) #16, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !64
  %350 = and i32 %349, 4
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %352, label %345

352:                                              ; preds = %345, %337
  %353 = getelementptr i8, ptr %0, i32 1520
  %354 = load i32, ptr %353, align 8
  %355 = icmp eq i32 %354, 7
  %356 = zext i1 %355 to i32
  %357 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %358 = load ptr, ptr %357, align 8
  %359 = icmp eq ptr %358, null
  br i1 %359, label %366, label %360

360:                                              ; preds = %352
  %361 = getelementptr inbounds %struct.phy_device, ptr %358, i32 0, i32 8
  %362 = load i32, ptr %361, align 8
  %363 = icmp eq i32 %362, 10
  %364 = or i32 %356, 64
  %365 = select i1 %363, i32 %364, i32 %356
  br label %366

366:                                              ; preds = %360, %352
  %367 = phi i32 [ %356, %352 ], [ %365, %360 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !65
  tail call void @arm_heavy_mb() #16
  %368 = load ptr, ptr %3, align 8
  %369 = getelementptr i8, ptr %368, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %369, i32 %367) #16, !srcloc !21
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !66
  tail call void @arm_heavy_mb() #16
  %370 = load ptr, ptr %3, align 8
  %371 = getelementptr i8, ptr %370, i32 776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %371, i32 2) #16, !srcloc !21
  br label %372

372:                                              ; preds = %366, %334, %332, %330, %327, %322
  %373 = phi i32 [ 2, %330 ], [ 2, %332 ], [ 2, %322 ], [ 2, %366 ], [ 2, %334 ], [ 34, %327 ]
  %374 = phi i32 [ %331, %330 ], [ %333, %332 ], [ %323, %322 ], [ %285, %366 ], [ %285, %334 ], [ %323, %327 ]
  %375 = getelementptr i8, ptr %0, i32 1560
  %376 = load i32, ptr %375, align 8
  %377 = and i32 %376, 2
  %378 = icmp eq i32 %377, 0
  br i1 %378, label %379, label %390

379:                                              ; preds = %372
  %380 = and i32 %376, 1
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %402, label %382

382:                                              ; preds = %379
  %383 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %384 = load ptr, ptr %383, align 8
  %385 = icmp eq ptr %384, null
  br i1 %385, label %402, label %386

386:                                              ; preds = %382
  %387 = getelementptr inbounds %struct.phy_device, ptr %384, i32 0, i32 11
  %388 = load i32, ptr %387, align 4
  %389 = icmp eq i32 %388, 0
  br i1 %389, label %402, label %390

390:                                              ; preds = %386, %372
  %391 = or i32 %374, 32
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !67
  tail call void @arm_heavy_mb() #16
  %392 = load ptr, ptr %3, align 8
  %393 = getelementptr i8, ptr %392, i32 404
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %393, i32 132) #16, !srcloc !21
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !68
  tail call void @arm_heavy_mb() #16
  %394 = load ptr, ptr %3, align 8
  %395 = getelementptr i8, ptr %394, i32 400
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %395, i32 16) #16, !srcloc !21
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !69
  tail call void @arm_heavy_mb() #16
  %396 = load ptr, ptr %3, align 8
  %397 = getelementptr i8, ptr %396, i32 408
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %397, i32 8) #16, !srcloc !21
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !70
  tail call void @arm_heavy_mb() #16
  %398 = load ptr, ptr %3, align 8
  %399 = getelementptr i8, ptr %398, i32 412
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %399, i32 8) #16, !srcloc !21
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !71
  tail call void @arm_heavy_mb() #16
  %400 = load ptr, ptr %3, align 8
  %401 = getelementptr i8, ptr %400, i32 236
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %401, i32 65520) #16, !srcloc !21
  br label %404

402:                                              ; preds = %386, %382, %379
  %403 = and i32 %374, -33
  br label %404

404:                                              ; preds = %402, %390
  %405 = phi i32 [ %391, %390 ], [ %403, %402 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !72
  tail call void @arm_heavy_mb() #16
  %406 = load ptr, ptr %3, align 8
  %407 = getelementptr i8, ptr %406, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %407, i32 %405) #16, !srcloc !21
  tail call void @set_multicast_list(ptr noundef %0)
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !73
  tail call void @arm_heavy_mb() #16
  %408 = load ptr, ptr %3, align 8
  %409 = getelementptr i8, ptr %408, i32 280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %409, i32 0) #16, !srcloc !21
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !74
  tail call void @arm_heavy_mb() #16
  %410 = load ptr, ptr %3, align 8
  %411 = getelementptr i8, ptr %410, i32 284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %411, i32 0) #16, !srcloc !21
  %412 = load i32, ptr %4, align 4
  %413 = and i32 %412, 1
  %414 = icmp eq i32 %413, 0
  br i1 %414, label %420, label %415

415:                                              ; preds = %404
  %416 = or i32 %373, 256
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !75
  tail call void @arm_heavy_mb() #16
  %417 = load ptr, ptr %3, align 8
  %418 = getelementptr i8, ptr %417, i32 324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %418, i32 256) #16, !srcloc !21
  %419 = load i32, ptr %4, align 4
  br label %420

420:                                              ; preds = %415, %404
  %421 = phi i32 [ %419, %415 ], [ %412, %404 ]
  %422 = phi i32 [ %416, %415 ], [ %373, %404 ]
  %423 = getelementptr i8, ptr %0, i32 1556
  %424 = load i8, ptr %423, align 4, !range !9
  %425 = icmp eq i8 %424, 0
  %426 = or i32 %422, 16
  %427 = select i1 %425, i32 %422, i32 %426
  %428 = and i32 %421, 2097152
  %429 = icmp eq i32 %428, 0
  br i1 %429, label %441, label %430

430:                                              ; preds = %420
  %431 = getelementptr i8, ptr %0, i32 1528
  %432 = load i8, ptr %431, align 8, !range !9
  %433 = icmp eq i8 %432, 0
  %434 = or i32 %427, 65536
  %435 = select i1 %433, i32 %427, i32 %434
  %436 = getelementptr i8, ptr %0, i32 1529
  %437 = load i8, ptr %436, align 1, !range !9
  %438 = icmp eq i8 %437, 0
  %439 = or i32 %435, 131072
  %440 = select i1 %438, i32 %435, i32 %439
  br label %441

441:                                              ; preds = %430, %420
  %442 = phi i32 [ %440, %430 ], [ %427, %420 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !76
  tail call void @arm_heavy_mb() #16
  %443 = load ptr, ptr %3, align 8
  %444 = getelementptr i8, ptr %443, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %444, i32 0) #16, !srcloc !21
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !77
  tail call void @arm_heavy_mb() #16
  %445 = load ptr, ptr %3, align 8
  %446 = getelementptr i8, ptr %445, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %446, i32 %442) #16, !srcloc !21
  %447 = load i32, ptr %37, align 4
  %448 = icmp eq i32 %447, 0
  br i1 %448, label %458, label %449

449:                                              ; preds = %449, %441
  %450 = phi i32 [ %455, %449 ], [ 0, %441 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !78
  tail call void @arm_heavy_mb() #16
  %451 = getelementptr %struct.fec_enet_private, ptr %3, i32 0, i32 13, i32 %450
  %452 = load ptr, ptr %451, align 4
  %453 = getelementptr inbounds %struct.bufdesc_prop, ptr %452, i32 0, i32 4
  %454 = load ptr, ptr %453, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %454, i32 0) #16, !srcloc !21
  %455 = add nuw i32 %450, 1
  %456 = load i32, ptr %37, align 4
  %457 = icmp ult i32 %455, %456
  br i1 %457, label %449, label %458

458:                                              ; preds = %449, %441
  %459 = load i8, ptr %423, align 4, !range !9
  %460 = icmp eq i8 %459, 0
  br i1 %460, label %462, label %461

461:                                              ; preds = %458
  tail call void @fec_ptp_start_cyclecounter(ptr noundef %0) #16
  br label %462

462:                                              ; preds = %461, %458
  %463 = getelementptr i8, ptr %0, i32 1532
  %464 = load i32, ptr %463, align 4
  %465 = icmp eq i32 %464, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #16
  tail call void @arm_heavy_mb() #16
  %466 = load ptr, ptr %3, align 8
  %467 = getelementptr i8, ptr %466, i32 8
  br i1 %465, label %469, label %468

468:                                              ; preds = %462
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %467, i32 167772330) #16, !srcloc !21
  br label %470

469:                                              ; preds = %462
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %467, i32 0) #16, !srcloc !21
  br label %470

470:                                              ; preds = %469, %468
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %2) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(92) %2, i8 0, i32 92, i1 false) #16, !annotation !8
  %471 = getelementptr inbounds %struct.ethtool_coalesce, ptr %2, i32 0, i32 1
  store i32 1000, ptr %471, align 4
  %472 = getelementptr inbounds %struct.ethtool_coalesce, ptr %2, i32 0, i32 2
  store i32 200, ptr %472, align 4
  %473 = getelementptr inbounds %struct.ethtool_coalesce, ptr %2, i32 0, i32 5
  store i32 1000, ptr %473, align 4
  %474 = getelementptr inbounds %struct.ethtool_coalesce, ptr %2, i32 0, i32 6
  store i32 200, ptr %474, align 4
  %475 = call i32 @fec_enet_set_coalesce(ptr noundef %0, ptr noundef nonnull %2, ptr noundef null, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %2) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @fec_enet_free_queue(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr i8, ptr %0, i32 1408
  %3 = getelementptr i8, ptr %0, i32 1464
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 1504
  br label %13

8:                                                ; preds = %33, %1
  %9 = phi i32 [ 0, %1 ], [ %34, %33 ]
  %10 = getelementptr i8, ptr %0, i32 1468
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %39, label %42

13:                                               ; preds = %33, %6
  %14 = phi i32 [ %4, %6 ], [ %34, %33 ]
  %15 = phi i32 [ 0, %6 ], [ %35, %33 ]
  %16 = getelementptr %struct.fec_enet_private, ptr %2, i32 0, i32 12, i32 %15
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %33, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.fec_enet_priv_tx_q, ptr %17, i32 0, i32 6
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %33, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr %7, align 8
  %25 = getelementptr inbounds %struct.platform_device, ptr %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.bufdesc_prop, ptr %17, i32 0, i32 6
  %27 = load i16, ptr %26, align 4
  %28 = zext i16 %27 to i32
  %29 = shl nuw nsw i32 %28, 8
  %30 = getelementptr inbounds %struct.fec_enet_priv_tx_q, ptr %17, i32 0, i32 7
  %31 = load i32, ptr %30, align 4
  tail call void @dma_free_attrs(ptr noundef %25, i32 noundef %29, ptr noundef nonnull %21, i32 noundef %31, i32 noundef 0) #16
  %32 = load i32, ptr %3, align 8
  br label %33

33:                                               ; preds = %23, %19, %13
  %34 = phi i32 [ %14, %13 ], [ %14, %19 ], [ %32, %23 ]
  %35 = add nuw i32 %15, 1
  %36 = icmp ult i32 %35, %34
  br i1 %36, label %13, label %8

37:                                               ; preds = %42
  %38 = load i32, ptr %3, align 8
  br label %39

39:                                               ; preds = %37, %8
  %40 = phi i32 [ %38, %37 ], [ %9, %8 ]
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %56, label %49

42:                                               ; preds = %42, %8
  %43 = phi i32 [ %46, %42 ], [ 0, %8 ]
  %44 = getelementptr %struct.fec_enet_private, ptr %2, i32 0, i32 13, i32 %43
  %45 = load ptr, ptr %44, align 4
  tail call void @kfree(ptr noundef %45) #16
  %46 = add nuw i32 %43, 1
  %47 = load i32, ptr %10, align 4
  %48 = icmp ult i32 %46, %47
  br i1 %48, label %42, label %37

49:                                               ; preds = %49, %39
  %50 = phi i32 [ %53, %49 ], [ 0, %39 ]
  %51 = getelementptr %struct.fec_enet_private, ptr %2, i32 0, i32 12, i32 %50
  %52 = load ptr, ptr %51, align 4
  tail call void @kfree(ptr noundef %52) #16
  %53 = add nuw i32 %50, 1
  %54 = load i32, ptr %3, align 8
  %55 = icmp ult i32 %53, %54
  br i1 %55, label %49, label %56

56:                                               ; preds = %49, %39
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmam_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_mac_address(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #9

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fec_enet_open(ptr noundef %0) #2 {
  %2 = alloca [61 x i8], align 1
  %3 = alloca [64 x i8], align 1
  %4 = getelementptr i8, ptr %0, i32 1408
  %5 = getelementptr i8, ptr %0, i32 1504
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3
  %8 = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #16
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %11) #16, !srcloc !10
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %11, ptr %11, i32 0, i32 -1, ptr elementtype(i32) %11) #16, !srcloc !13
  %13 = extractvalue { i32, i32, i32 } %12, 0
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %280, label %15

15:                                               ; preds = %10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !14
  br label %280

16:                                               ; preds = %1
  %17 = load ptr, ptr %5, align 8
  %18 = getelementptr inbounds %struct.platform_device, ptr %17, i32 0, i32 3
  %19 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %18) #16
  %20 = tail call fastcc i32 @fec_enet_clk_enable(ptr noundef %0, i1 noundef zeroext true)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %269

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %24 = load ptr, ptr %23, align 8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.phy_device, ptr %24, i32 0, i32 1
  %28 = load ptr, ptr %27, align 8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %26, %22
  br label %31

31:                                               ; preds = %30, %26
  %32 = phi i1 [ true, %30 ], [ false, %26 ]
  %33 = getelementptr i8, ptr %0, i32 1468
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %31
  %37 = getelementptr i8, ptr %0, i32 1556
  br label %44

38:                                               ; preds = %98, %31
  %39 = getelementptr i8, ptr %0, i32 1464
  %40 = load i32, ptr %39, align 8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %167, label %42

42:                                               ; preds = %38
  %43 = getelementptr i8, ptr %0, i32 1556
  br label %106

44:                                               ; preds = %98, %36
  %45 = phi i32 [ 0, %36 ], [ %103, %98 ]
  %46 = getelementptr %struct.fec_enet_private, ptr %4, i32 0, i32 13, i32 %45
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.bufdesc_prop, ptr %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.bufdesc_prop, ptr %47, i32 0, i32 6
  %50 = load i16, ptr %49, align 4
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %44
  %53 = getelementptr inbounds %struct.bufdesc_prop, ptr %47, i32 0, i32 2
  %54 = load ptr, ptr %53, align 4
  br label %98

55:                                               ; preds = %44
  %56 = load ptr, ptr %48, align 4
  %57 = getelementptr inbounds %struct.bufdesc_prop, ptr %47, i32 0, i32 2
  %58 = getelementptr inbounds %struct.bufdesc_prop, ptr %47, i32 0, i32 7
  br label %59

59:                                               ; preds = %84, %55
  %60 = phi ptr [ %56, %55 ], [ %85, %84 ]
  %61 = phi i32 [ 0, %55 ], [ %86, %84 ]
  %62 = tail call ptr @__netdev_alloc_skb(ptr noundef %0, i32 noundef 2048, i32 noundef 2592) #16
  %63 = icmp eq ptr %62, null
  br i1 %63, label %166, label %64

64:                                               ; preds = %59
  %65 = tail call fastcc i32 @fec_enet_new_rxbdp(ptr noundef %0, ptr noundef %60, ptr noundef nonnull %62) #16
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %64
  tail call void @consume_skb(ptr noundef nonnull %62) #16
  br label %166

68:                                               ; preds = %64
  %69 = getelementptr %struct.fec_enet_priv_rx_q, ptr %47, i32 0, i32 1, i32 %61
  store ptr %62, ptr %69, align 4
  %70 = getelementptr inbounds %struct.bufdesc, ptr %60, i32 0, i32 1
  store i16 -32768, ptr %70, align 2
  %71 = load i8, ptr %37, align 4, !range !9
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.bufdesc_ex, ptr %60, i32 0, i32 1
  store i32 8388608, ptr %74, align 4
  br label %75

75:                                               ; preds = %73, %68
  %76 = load ptr, ptr %57, align 4
  %77 = icmp ugt ptr %76, %60
  br i1 %77, label %80, label %78

78:                                               ; preds = %75
  %79 = load ptr, ptr %48, align 4
  br label %84

80:                                               ; preds = %75
  %81 = load i8, ptr %58, align 2
  %82 = zext i8 %81 to i32
  %83 = getelementptr i8, ptr %60, i32 %82
  br label %84

84:                                               ; preds = %80, %78
  %85 = phi ptr [ %79, %78 ], [ %83, %80 ]
  %86 = add nuw nsw i32 %61, 1
  %87 = load i16, ptr %49, align 4
  %88 = zext i16 %87 to i32
  %89 = icmp ult i32 %86, %88
  br i1 %89, label %59, label %90

90:                                               ; preds = %84
  %91 = load ptr, ptr %48, align 4
  %92 = icmp ult ptr %91, %85
  br i1 %92, label %93, label %98

93:                                               ; preds = %90
  %94 = load i8, ptr %58, align 2
  %95 = zext i8 %94 to i32
  %96 = sub nsw i32 0, %95
  %97 = getelementptr i8, ptr %85, i32 %96
  br label %98

98:                                               ; preds = %93, %90, %52
  %99 = phi ptr [ %97, %93 ], [ %54, %52 ], [ %76, %90 ]
  %100 = getelementptr inbounds %struct.bufdesc, ptr %99, i32 0, i32 1
  %101 = load i16, ptr %100, align 2
  %102 = or i16 %101, 8192
  store i16 %102, ptr %100, align 2
  %103 = add nuw i32 %45, 1
  %104 = load i32, ptr %33, align 4
  %105 = icmp ult i32 %103, %104
  br i1 %105, label %44, label %38

106:                                              ; preds = %158, %42
  %107 = phi i32 [ 0, %42 ], [ %163, %158 ]
  %108 = getelementptr %struct.fec_enet_private, ptr %4, i32 0, i32 12, i32 %107
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr inbounds %struct.bufdesc_prop, ptr %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.bufdesc_prop, ptr %109, i32 0, i32 6
  %112 = load i16, ptr %111, align 4
  %113 = icmp eq i16 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %106
  %115 = getelementptr inbounds %struct.bufdesc_prop, ptr %109, i32 0, i32 2
  %116 = load ptr, ptr %115, align 4
  br label %158

117:                                              ; preds = %106
  %118 = load ptr, ptr %110, align 4
  %119 = getelementptr inbounds %struct.bufdesc_prop, ptr %109, i32 0, i32 2
  %120 = getelementptr inbounds %struct.bufdesc_prop, ptr %109, i32 0, i32 7
  br label %121

121:                                              ; preds = %144, %117
  %122 = phi ptr [ %118, %117 ], [ %145, %144 ]
  %123 = phi i32 [ 0, %117 ], [ %146, %144 ]
  %124 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %125 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %124, i32 noundef 3264, i32 noundef 2048) #18
  %126 = getelementptr %struct.fec_enet_priv_tx_q, ptr %109, i32 0, i32 1, i32 %123
  store ptr %125, ptr %126, align 4
  %127 = icmp eq ptr %125, null
  br i1 %127, label %166, label %128

128:                                              ; preds = %121
  %129 = getelementptr inbounds %struct.bufdesc, ptr %122, i32 0, i32 1
  store i16 0, ptr %129, align 2
  %130 = getelementptr inbounds %struct.bufdesc, ptr %122, i32 0, i32 2
  store i32 0, ptr %130, align 4
  %131 = load i8, ptr %43, align 4, !range !9
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %135, label %133

133:                                              ; preds = %128
  %134 = getelementptr inbounds %struct.bufdesc_ex, ptr %122, i32 0, i32 1
  store i32 1073741824, ptr %134, align 4
  br label %135

135:                                              ; preds = %133, %128
  %136 = load ptr, ptr %119, align 4
  %137 = icmp ugt ptr %136, %122
  br i1 %137, label %140, label %138

138:                                              ; preds = %135
  %139 = load ptr, ptr %110, align 4
  br label %144

140:                                              ; preds = %135
  %141 = load i8, ptr %120, align 2
  %142 = zext i8 %141 to i32
  %143 = getelementptr i8, ptr %122, i32 %142
  br label %144

144:                                              ; preds = %140, %138
  %145 = phi ptr [ %139, %138 ], [ %143, %140 ]
  %146 = add nuw nsw i32 %123, 1
  %147 = load i16, ptr %111, align 4
  %148 = zext i16 %147 to i32
  %149 = icmp ult i32 %146, %148
  br i1 %149, label %121, label %150

150:                                              ; preds = %144
  %151 = load ptr, ptr %110, align 4
  %152 = icmp ult ptr %151, %145
  br i1 %152, label %153, label %158

153:                                              ; preds = %150
  %154 = load i8, ptr %120, align 2
  %155 = zext i8 %154 to i32
  %156 = sub nsw i32 0, %155
  %157 = getelementptr i8, ptr %145, i32 %156
  br label %158

158:                                              ; preds = %153, %150, %114
  %159 = phi ptr [ %157, %153 ], [ %116, %114 ], [ %136, %150 ]
  %160 = getelementptr inbounds %struct.bufdesc, ptr %159, i32 0, i32 1
  %161 = load i16, ptr %160, align 2
  %162 = or i16 %161, 8192
  store i16 %162, ptr %160, align 2
  %163 = add nuw i32 %107, 1
  %164 = load i32, ptr %39, align 8
  %165 = icmp ult i32 %163, %164
  br i1 %165, label %106, label %167

166:                                              ; preds = %121, %67, %59
  tail call fastcc void @fec_enet_free_buffers(ptr noundef %0) #16
  br label %266

167:                                              ; preds = %158, %38
  tail call fastcc void @fec_restart(ptr noundef %0)
  br i1 %32, label %168, label %180

168:                                              ; preds = %167
  %169 = load ptr, ptr %23, align 8
  %170 = icmp eq ptr %169, null
  br i1 %170, label %173, label %171

171:                                              ; preds = %168
  %172 = tail call i32 @phy_reset_after_clk_enable(ptr noundef nonnull %169) #16
  br label %180

173:                                              ; preds = %168
  %174 = getelementptr i8, ptr %0, i32 1524
  %175 = load ptr, ptr %174, align 4
  %176 = icmp eq ptr %175, null
  br i1 %176, label %180, label %177

177:                                              ; preds = %173
  %178 = tail call ptr @of_phy_find_device(ptr noundef nonnull %175) #16
  %179 = tail call i32 @phy_reset_after_clk_enable(ptr noundef %178) #16
  tail call void @put_device(ptr noundef %178) #16
  br label %180

180:                                              ; preds = %177, %173, %171, %167
  call void @llvm.lifetime.start.p0(i64 61, ptr nonnull %2) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(61) %2, i8 0, i32 61, i1 false) #16, !annotation !8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %3, i8 0, i32 64, i1 false) #16, !annotation !8
  %181 = getelementptr i8, ptr %0, i32 1524
  %182 = load ptr, ptr %181, align 4
  %183 = icmp eq ptr %182, null
  br i1 %183, label %190, label %184

184:                                              ; preds = %180
  %185 = getelementptr i8, ptr %0, i32 1520
  %186 = load i32, ptr %185, align 8
  %187 = tail call ptr @of_phy_connect(ptr noundef %0, ptr noundef nonnull %182, ptr noundef nonnull @fec_enet_adjust_link, i32 noundef 0, i32 noundef %186) #16
  %188 = icmp eq ptr %187, null
  br i1 %188, label %189, label %218

189:                                              ; preds = %184
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.41) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 61, ptr nonnull %2) #16
  br label %264

190:                                              ; preds = %180
  %191 = getelementptr i8, ptr %0, i32 1508
  %192 = load i32, ptr %191, align 4
  %193 = getelementptr i8, ptr %0, i32 1512
  br label %194

194:                                              ; preds = %202, %190
  %195 = phi i32 [ %192, %190 ], [ %203, %202 ]
  %196 = phi i32 [ 0, %190 ], [ %204, %202 ]
  %197 = load ptr, ptr %193, align 8
  %198 = tail call zeroext i1 @mdiobus_is_registered_device(ptr noundef %197, i32 noundef %196) #16
  br i1 %198, label %199, label %202

199:                                              ; preds = %194
  %200 = add i32 %195, -1
  %201 = icmp eq i32 %195, 0
  br i1 %201, label %206, label %202

202:                                              ; preds = %199, %194
  %203 = phi i32 [ %200, %199 ], [ %195, %194 ]
  %204 = add nuw nsw i32 %196, 1
  %205 = icmp eq i32 %204, 32
  br i1 %205, label %210, label %194

206:                                              ; preds = %199
  %207 = load ptr, ptr %193, align 8
  %208 = getelementptr inbounds %struct.mii_bus, ptr %207, i32 0, i32 2
  %209 = call i32 @strlcpy(ptr noundef nonnull %2, ptr noundef %208, i32 noundef 61) #16
  br label %212

210:                                              ; preds = %202
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %0, ptr noundef nonnull @.str.42) #17
  %211 = call i32 @strlcpy(ptr noundef nonnull %2, ptr noundef nonnull @.str.43, i32 noundef 61) #16
  br label %212

212:                                              ; preds = %210, %206
  %213 = phi i32 [ 0, %210 ], [ %196, %206 ]
  %214 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 64, ptr noundef nonnull @.str.44, ptr noundef nonnull %2, i32 noundef %213) #16
  %215 = getelementptr i8, ptr %0, i32 1520
  %216 = load i32, ptr %215, align 8
  %217 = call ptr @phy_connect(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull @fec_enet_adjust_link, i32 noundef %216) #16
  br label %218

218:                                              ; preds = %212, %184
  %219 = phi ptr [ %187, %184 ], [ %217, %212 ]
  %220 = icmp ugt ptr %219, inttoptr (i32 -4096 to ptr)
  br i1 %220, label %239, label %221

221:                                              ; preds = %218
  %222 = getelementptr i8, ptr %0, i32 1572
  %223 = load i32, ptr %222, align 4
  %224 = and i32 %223, 8
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %228, label %226

226:                                              ; preds = %221
  %227 = call i32 @phy_set_max_speed(ptr noundef %219, i32 noundef 1000) #16
  call void @phy_remove_link_mode(ptr noundef %219, i32 noundef 4) #16
  call void @phy_support_sym_pause(ptr noundef %219) #16
  br label %230

228:                                              ; preds = %221
  %229 = call i32 @phy_set_max_speed(ptr noundef %219, i32 noundef 100) #16
  br label %230

230:                                              ; preds = %228, %226
  %231 = getelementptr i8, ptr %0, i32 1532
  store i32 0, ptr %231, align 4
  %232 = getelementptr i8, ptr %0, i32 1536
  store i32 0, ptr %232, align 8
  %233 = getelementptr inbounds %struct.phy_device, ptr %219, i32 0, i32 4
  %234 = load i16, ptr %233, align 8
  %235 = or i16 %234, 2048
  store i16 %235, ptr %233, align 8
  call void @phy_attached_info(ptr noundef %219) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 61, ptr nonnull %2) #16
  %236 = load i32, ptr %222, align 4
  %237 = and i32 %236, 16384
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %242, label %241

239:                                              ; preds = %218
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.45) #17
  %240 = ptrtoint ptr %219 to i32
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 61, ptr nonnull %2) #16
  br label %264

241:                                              ; preds = %230
  call void @imx6q_cpuidle_fec_irqs_used() #16
  br label %242

242:                                              ; preds = %241, %230
  %243 = getelementptr i8, ptr %0, i32 1576
  call void @napi_enable(ptr noundef %243) #16
  %244 = load ptr, ptr %23, align 8
  call void @phy_start(ptr noundef %244) #16
  %245 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 88
  %246 = load i32, ptr %245, align 4
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %257, label %248

248:                                              ; preds = %242
  %249 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  br label %250

250:                                              ; preds = %250, %248
  %251 = phi i32 [ 0, %248 ], [ %254, %250 ]
  %252 = load ptr, ptr %249, align 64
  %253 = getelementptr %struct.netdev_queue, ptr %252, i32 %251, i32 12
  call void @_clear_bit(i32 noundef 0, ptr noundef %253) #16
  %254 = add nuw i32 %251, 1
  %255 = load i32, ptr %245, align 4
  %256 = icmp ult i32 %254, %255
  br i1 %256, label %250, label %257

257:                                              ; preds = %250, %242
  %258 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 111
  %259 = getelementptr i8, ptr %0, i32 1564
  %260 = load i32, ptr %259, align 4
  %261 = and i32 %260, 2
  %262 = icmp ne i32 %261, 0
  %263 = call i32 @device_set_wakeup_enable(ptr noundef %258, i1 noundef zeroext %262) #16
  br label %280

264:                                              ; preds = %239, %189
  %265 = phi i32 [ -19, %189 ], [ %240, %239 ]
  call fastcc void @fec_enet_free_buffers(ptr noundef %0)
  br label %266

266:                                              ; preds = %264, %166
  %267 = phi i32 [ -12, %166 ], [ %265, %264 ]
  %268 = call fastcc i32 @fec_enet_clk_enable(ptr noundef %0, i1 noundef zeroext false)
  br label %269

269:                                              ; preds = %266, %16
  %270 = phi i32 [ %20, %16 ], [ %267, %266 ]
  %271 = load ptr, ptr %5, align 8
  %272 = call i64 @ktime_get_mono_fast_ns() #16
  %273 = getelementptr inbounds %struct.platform_device, ptr %271, i32 0, i32 3, i32 11, i32 22
  store volatile i64 %272, ptr %273, align 8
  %274 = load ptr, ptr %5, align 8
  %275 = getelementptr inbounds %struct.platform_device, ptr %274, i32 0, i32 3
  %276 = call i32 @__pm_runtime_suspend(ptr noundef %275, i32 noundef 13) #16
  %277 = load ptr, ptr %5, align 8
  %278 = getelementptr inbounds %struct.platform_device, ptr %277, i32 0, i32 3
  %279 = call i32 @pinctrl_pm_select_sleep_state(ptr noundef %278) #16
  br label %280

280:                                              ; preds = %269, %257, %15, %10
  %281 = phi i32 [ %270, %269 ], [ 0, %257 ], [ %8, %10 ], [ %8, %15 ]
  ret i32 %281
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fec_enet_close(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 1408
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %4 = load ptr, ptr %3, align 8
  tail call void @phy_stop(ptr noundef %4) #16
  %5 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 2
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %37, label %9

9:                                                ; preds = %1
  %10 = getelementptr i8, ptr %0, i32 1576
  tail call void @napi_disable(ptr noundef %10) #16
  %11 = tail call ptr @llvm.thread.pointer() #16
  %12 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %13 = load volatile i32, ptr %12, align 4
  %14 = add i32 %13, 512
  store volatile i32 %14, ptr %12, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !34
  %15 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %16 = load i32, ptr %15, align 8
  %17 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 92
  tail call void @_raw_spin_lock(ptr noundef %17) #16
  %18 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 88
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %34, label %21

21:                                               ; preds = %9
  %22 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  br label %23

23:                                               ; preds = %23, %21
  %24 = phi i32 [ 0, %21 ], [ %31, %23 ]
  %25 = load ptr, ptr %22, align 64
  %26 = getelementptr %struct.netdev_queue, ptr %25, i32 %24, i32 9
  tail call void @_raw_spin_lock(ptr noundef %26) #16
  %27 = getelementptr %struct.netdev_queue, ptr %25, i32 %24, i32 10
  store volatile i32 %16, ptr %27, align 4
  %28 = getelementptr %struct.netdev_queue, ptr %25, i32 %24, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %28) #16
  store volatile i32 -1, ptr %27, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !79
  %29 = load i16, ptr %26, align 4
  %30 = add i16 %29, 1
  store i16 %30, ptr %26, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !80
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !81
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !82
  %31 = add nuw i32 %24, 1
  %32 = load i32, ptr %18, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %23, label %34

34:                                               ; preds = %23, %9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !79
  %35 = load i16, ptr %17, align 4
  %36 = add i16 %35, 1
  store i16 %36, ptr %17, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !80
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !81
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !82
  tail call fastcc void @local_bh_enable() #16
  tail call fastcc void @fec_stop(ptr noundef %0)
  br label %37

37:                                               ; preds = %34, %1
  %38 = load ptr, ptr %3, align 8
  tail call void @phy_disconnect(ptr noundef %38) #16
  %39 = getelementptr i8, ptr %0, i32 1572
  %40 = load i32, ptr %39, align 4
  %41 = and i32 %40, 16384
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %37
  tail call void @imx6q_cpuidle_fec_irqs_unused() #16
  br label %44

44:                                               ; preds = %43, %37
  br label %45

45:                                               ; preds = %45, %44
  %46 = phi i32 [ %55, %45 ], [ 0, %44 ]
  %47 = load ptr, ptr %2, align 8
  %48 = getelementptr [53 x %struct.fec_stat], ptr @fec_stats, i32 0, i32 %46, i32 1
  %49 = load i16, ptr %48, align 2
  %50 = zext i16 %49 to i32
  %51 = getelementptr i8, ptr %47, i32 %50
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #16, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !27
  %53 = zext i32 %52 to i64
  %54 = getelementptr %struct.fec_enet_private, ptr %2, i32 0, i32 65, i32 %46
  store i64 %53, ptr %54, align 8
  %55 = add nuw nsw i32 %46, 1
  %56 = icmp eq i32 %55, 53
  br i1 %56, label %57, label %45

57:                                               ; preds = %45
  %58 = tail call fastcc i32 @fec_enet_clk_enable(ptr noundef %0, i1 noundef zeroext false)
  %59 = getelementptr i8, ptr %0, i32 1504
  %60 = load ptr, ptr %59, align 8
  %61 = getelementptr inbounds %struct.platform_device, ptr %60, i32 0, i32 3
  %62 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %61) #16
  %63 = load ptr, ptr %59, align 8
  %64 = tail call i64 @ktime_get_mono_fast_ns() #16
  %65 = getelementptr inbounds %struct.platform_device, ptr %63, i32 0, i32 3, i32 11, i32 22
  store volatile i64 %64, ptr %65, align 8
  %66 = load ptr, ptr %59, align 8
  %67 = getelementptr inbounds %struct.platform_device, ptr %66, i32 0, i32 3
  %68 = tail call i32 @__pm_runtime_suspend(ptr noundef %67, i32 noundef 13) #16
  tail call fastcc void @fec_enet_free_buffers(ptr noundef %0)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fec_enet_start_xmit(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca %struct.tso_t, align 4
  %4 = getelementptr i8, ptr %1, i32 1408
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 9
  %6 = load i16, ptr %5, align 4
  %7 = zext i16 %6 to i32
  %8 = getelementptr %struct.fec_enet_private, ptr %4, i32 0, i32 12, i32 %7
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 87
  %11 = load ptr, ptr %10, align 64
  %12 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.skb_shared_info, ptr %13, i32 0, i32 4
  %15 = load i16, ptr %14, align 4
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %405, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.bufdesc_prop, ptr %9, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, i8 0, i32 20, i1 false) #16, !annotation !8
  %20 = tail call i32 @tso_count_descs(ptr noundef %0) #16
  %21 = getelementptr inbounds %struct.fec_enet_priv_tx_q, ptr %9, i32 0, i32 5
  %22 = load ptr, ptr %21, align 4
  %23 = load ptr, ptr %18, align 4
  %24 = ptrtoint ptr %22 to i32
  %25 = ptrtoint ptr %23 to i32
  %26 = sub i32 %24, %25
  %27 = getelementptr inbounds %struct.bufdesc_prop, ptr %9, i32 0, i32 8
  %28 = load i8, ptr %27, align 1
  %29 = zext i8 %28 to i32
  %30 = ashr i32 %26, %29
  %31 = add i32 %30, -1
  %32 = icmp sgt i32 %31, -1
  br i1 %32, label %38, label %33

33:                                               ; preds = %17
  %34 = getelementptr inbounds %struct.bufdesc_prop, ptr %9, i32 0, i32 6
  %35 = load i16, ptr %34, align 4
  %36 = zext i16 %35 to i32
  %37 = add nsw i32 %31, %36
  br label %38

38:                                               ; preds = %33, %17
  %39 = phi i32 [ %37, %33 ], [ %31, %17 ]
  %40 = icmp slt i32 %20, %39
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  tail call void @__dev_kfree_skb_any(ptr noundef %0, i32 noundef 1) #16
  %42 = tail call i32 @net_ratelimit() #16
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %841, label %44

44:                                               ; preds = %41
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.47) #17
  br label %841

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %47 = load i16, ptr %46, align 8
  %48 = and i16 %47, 96
  %49 = icmp eq i16 %48, 96
  br i1 %49, label %50, label %94

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 11
  %52 = load i8, ptr %51, align 2
  %53 = and i8 %52, 1
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %66, label %55

55:                                               ; preds = %50
  %56 = load ptr, ptr %12, align 4
  %57 = getelementptr inbounds %struct.skb_shared_info, ptr %56, i32 0, i32 10
  %58 = load volatile i32, ptr %57, align 4
  %59 = and i32 %58, 65535
  %60 = ashr i32 %58, 16
  %61 = sub nsw i32 %59, %60
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %66, label %63

63:                                               ; preds = %55
  %64 = tail call i32 @pskb_expand_head(ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 2592) #16
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %93, !prof !16

66:                                               ; preds = %63, %55, %50
  %67 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 16
  %68 = load i16, ptr %67, align 8
  %69 = icmp eq i16 %68, 8
  br i1 %69, label %70, label %82

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %72 = load ptr, ptr %71, align 8
  %73 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %74 = load i16, ptr %73, align 4
  %75 = zext i16 %74 to i32
  %76 = getelementptr i8, ptr %72, i32 %75
  %77 = load i8, ptr %76, align 4
  %78 = and i8 %77, -16
  %79 = icmp eq i8 %78, 64
  br i1 %79, label %80, label %82

80:                                               ; preds = %70
  %81 = getelementptr inbounds %struct.iphdr, ptr %76, i32 0, i32 7
  store i16 0, ptr %81, align 2
  br label %82

82:                                               ; preds = %80, %70, %66
  %83 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %84 = load ptr, ptr %83, align 8
  %85 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  %86 = load i16, ptr %85, align 4
  %87 = zext i16 %86 to i32
  %88 = getelementptr i8, ptr %84, i32 %87
  %89 = getelementptr inbounds %struct.anon.58, ptr %85, i32 0, i32 1
  %90 = load i16, ptr %89, align 2
  %91 = zext i16 %90 to i32
  %92 = getelementptr i8, ptr %88, i32 %91
  store i16 0, ptr %92, align 2
  br label %94

93:                                               ; preds = %63
  tail call void @__dev_kfree_skb_any(ptr noundef %0, i32 noundef 1) #16
  br label %841

94:                                               ; preds = %82, %45
  %95 = call i32 @tso_start(ptr noundef %0, ptr noundef nonnull %3) #16
  %96 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %97 = load i32, ptr %96, align 8
  %98 = sub i32 %97, %95
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %100, label %370

100:                                              ; preds = %94
  %101 = getelementptr inbounds %struct.bufdesc_prop, ptr %9, i32 0, i32 1
  %102 = getelementptr inbounds %struct.fec_enet_priv_tx_q, ptr %9, i32 0, i32 6
  %103 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %104 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %105 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %106 = getelementptr i8, ptr %1, i32 2076
  %107 = getelementptr inbounds %struct.fec_enet_priv_tx_q, ptr %9, i32 0, i32 7
  %108 = getelementptr i8, ptr %1, i32 1572
  %109 = getelementptr i8, ptr %1, i32 1504
  %110 = getelementptr i8, ptr %1, i32 1556
  %111 = getelementptr inbounds %struct.tso_t, ptr %3, i32 0, i32 1
  %112 = getelementptr inbounds %struct.bufdesc_prop, ptr %9, i32 0, i32 2
  %113 = getelementptr inbounds %struct.bufdesc_prop, ptr %9, i32 0, i32 7
  %114 = getelementptr inbounds %struct.tso_t, ptr %3, i32 0, i32 2
  br label %115

115:                                              ; preds = %367, %100
  %116 = phi i32 [ %98, %100 ], [ %130, %367 ]
  %117 = phi ptr [ %19, %100 ], [ %368, %367 ]
  %118 = load ptr, ptr %101, align 4
  %119 = ptrtoint ptr %117 to i32
  %120 = ptrtoint ptr %118 to i32
  %121 = sub i32 %119, %120
  %122 = load i8, ptr %27, align 1
  %123 = zext i8 %122 to i32
  %124 = ashr i32 %121, %123
  %125 = load ptr, ptr %12, align 4
  %126 = getelementptr inbounds %struct.skb_shared_info, ptr %125, i32 0, i32 4
  %127 = load i16, ptr %126, align 4
  %128 = zext i16 %127 to i32
  %129 = call i32 @llvm.smin.i32(i32 %116, i32 %128) #16
  %130 = sub nsw i32 %116, %129
  %131 = load ptr, ptr %102, align 4
  %132 = shl i32 %124, 8
  %133 = getelementptr i8, ptr %131, i32 %132
  %134 = icmp eq i32 %130, 0
  call void @tso_build_hdr(ptr noundef %0, ptr noundef %133, ptr noundef nonnull %3, i32 noundef %129, i1 noundef zeroext %134) #16
  %135 = load ptr, ptr %103, align 8
  %136 = load i16, ptr %104, align 2
  %137 = zext i16 %136 to i32
  %138 = getelementptr i8, ptr %135, i32 %137
  %139 = load ptr, ptr %105, align 4
  %140 = ptrtoint ptr %138 to i32
  %141 = ptrtoint ptr %139 to i32
  %142 = sub i32 %140, %141
  %143 = getelementptr inbounds %struct.tcphdr, ptr %138, i32 0, i32 4
  %144 = load i16, ptr %143, align 4
  %145 = lshr i16 %144, 2
  %146 = and i16 %145, 60
  %147 = zext i16 %146 to i32
  %148 = add i32 %142, %147
  %149 = getelementptr inbounds %struct.bufdesc, ptr %117, i32 0, i32 1
  %150 = load i16, ptr %149, align 2
  %151 = and i16 %150, 28672
  %152 = or i16 %151, -31744
  %153 = load ptr, ptr %102, align 4
  %154 = getelementptr i8, ptr %153, i32 %132
  %155 = ptrtoint ptr %154 to i32
  %156 = load i32, ptr %106, align 4
  %157 = and i32 %156, %155
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %165

159:                                              ; preds = %115
  %160 = load i32, ptr %107, align 4
  %161 = add i32 %160, %132
  %162 = load i32, ptr %108, align 4
  %163 = and i32 %162, 2
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %211, label %165

165:                                              ; preds = %159, %115
  %166 = getelementptr %struct.fec_enet_priv_tx_q, ptr %9, i32 0, i32 1, i32 %124
  %167 = load ptr, ptr %166, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %167, ptr align 1 %139, i32 %148, i1 false) #16
  %168 = load ptr, ptr %166, align 4
  %169 = load i32, ptr %108, align 4
  %170 = and i32 %169, 2
  %171 = icmp ne i32 %170, 0
  %172 = icmp sgt i32 %148, 0
  %173 = select i1 %171, i1 %172, i1 false
  br i1 %173, label %174, label %182

174:                                              ; preds = %174, %165
  %175 = phi ptr [ %180, %174 ], [ %168, %165 ]
  %176 = phi i32 [ %179, %174 ], [ 0, %165 ]
  %177 = load i32, ptr %175, align 4
  %178 = call i32 @llvm.bswap.i32(i32 %177) #16
  store i32 %178, ptr %175, align 4
  %179 = add i32 %176, 4
  %180 = getelementptr i32, ptr %175, i32 1
  %181 = icmp slt i32 %179, %148
  br i1 %181, label %174, label %182

182:                                              ; preds = %174, %165
  %183 = load ptr, ptr %109, align 8
  %184 = getelementptr inbounds %struct.platform_device, ptr %183, i32 0, i32 3
  %185 = call zeroext i1 @is_vmalloc_addr(ptr noundef %168) #16
  %186 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %187 = xor i1 %186, true
  %188 = select i1 %185, i1 %187, i1 false
  br i1 %188, label %189, label %198, !prof !36

189:                                              ; preds = %182
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %190 = call ptr @dev_driver_string(ptr noundef %184) #16
  %191 = getelementptr inbounds %struct.platform_device, ptr %183, i32 0, i32 3, i32 3
  %192 = load ptr, ptr %191, align 4
  %193 = icmp eq ptr %192, null
  br i1 %193, label %194, label %196

194:                                              ; preds = %189
  %195 = load ptr, ptr %184, align 4
  br label %196

196:                                              ; preds = %194, %189
  %197 = phi ptr [ %195, %194 ], [ %192, %189 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.39, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.40, ptr noundef %190, ptr noundef %197) #16
  br label %198

198:                                              ; preds = %196, %182
  br i1 %185, label %208, label %199

199:                                              ; preds = %198
  %200 = load ptr, ptr @mem_map, align 4
  %201 = ptrtoint ptr %168 to i32
  %202 = add i32 %201, 1073741824
  %203 = lshr i32 %202, 12
  %204 = getelementptr %struct.page, ptr %200, i32 %203
  %205 = and i32 %201, 4095
  %206 = call i32 @dma_map_page_attrs(ptr noundef %184, ptr noundef %204, i32 noundef %205, i32 noundef %148, i32 noundef 1, i32 noundef 0) #16
  %207 = icmp eq i32 %206, -1
  br i1 %207, label %208, label %211

208:                                              ; preds = %199, %198
  call void @__dev_kfree_skb_any(ptr noundef %0, i32 noundef 1) #16
  %209 = call i32 @net_ratelimit() #16
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %843, label %842

211:                                              ; preds = %199, %159
  %212 = phi i32 [ %161, %159 ], [ %206, %199 ]
  %213 = getelementptr inbounds %struct.bufdesc, ptr %117, i32 0, i32 2
  store i32 %212, ptr %213, align 4
  %214 = trunc i32 %148 to i16
  store i16 %214, ptr %117, align 4
  %215 = load i8, ptr %110, align 4, !range !9
  %216 = icmp eq i8 %215, 0
  br i1 %216, label %234, label %217

217:                                              ; preds = %211
  %218 = load i32, ptr %108, align 4
  %219 = and i32 %218, 256
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %225, label %221

221:                                              ; preds = %217
  %222 = load i32, ptr %9, align 4
  %223 = shl i32 %222, 20
  %224 = and i32 %223, 15728640
  br label %225

225:                                              ; preds = %221, %217
  %226 = phi i32 [ %224, %221 ], [ 0, %217 ]
  %227 = load i16, ptr %46, align 8
  %228 = and i16 %227, 96
  %229 = icmp eq i16 %228, 96
  %230 = or i32 %226, 402653184
  %231 = select i1 %229, i32 %230, i32 %226
  %232 = getelementptr inbounds %struct.bufdesc_ex, ptr %117, i32 0, i32 3
  store i32 0, ptr %232, align 4
  %233 = getelementptr inbounds %struct.bufdesc_ex, ptr %117, i32 0, i32 1
  store i32 %231, ptr %233, align 4
  br label %234

234:                                              ; preds = %225, %211
  store i16 %152, ptr %149, align 2
  %235 = icmp sgt i32 %129, 0
  br i1 %235, label %236, label %356

236:                                              ; preds = %352, %234
  %237 = phi i32 [ %354, %352 ], [ %129, %234 ]
  %238 = phi ptr [ %252, %352 ], [ %117, %234 ]
  %239 = load i32, ptr %111, align 4
  %240 = call i32 @llvm.smin.i32(i32 %239, i32 %237) #16
  %241 = load ptr, ptr %112, align 4
  %242 = icmp ugt ptr %241, %238
  br i1 %242, label %245, label %243

243:                                              ; preds = %236
  %244 = load ptr, ptr %101, align 4
  br label %250

245:                                              ; preds = %236
  %246 = load i8, ptr %113, align 2
  %247 = zext i8 %246 to i32
  %248 = getelementptr i8, ptr %238, i32 %247
  %249 = load ptr, ptr %101, align 4
  br label %250

250:                                              ; preds = %245, %243
  %251 = phi ptr [ %244, %243 ], [ %249, %245 ]
  %252 = phi ptr [ %244, %243 ], [ %248, %245 ]
  %253 = ptrtoint ptr %252 to i32
  %254 = ptrtoint ptr %251 to i32
  %255 = sub i32 %253, %254
  %256 = load i8, ptr %27, align 1
  %257 = zext i8 %256 to i32
  %258 = ashr i32 %255, %257
  %259 = load ptr, ptr %114, align 4
  %260 = icmp sgt i32 %237, %239
  %261 = getelementptr inbounds %struct.bufdesc, ptr %252, i32 0, i32 1
  %262 = load i16, ptr %261, align 2
  %263 = and i16 %262, 28672
  %264 = ptrtoint ptr %259 to i32
  %265 = load i32, ptr %106, align 4
  %266 = and i32 %265, %264
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %268, label %272

268:                                              ; preds = %250
  %269 = load i32, ptr %108, align 4
  %270 = and i32 %269, 2
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %289, label %272

272:                                              ; preds = %268, %250
  %273 = getelementptr %struct.fec_enet_priv_tx_q, ptr %9, i32 0, i32 1, i32 %258
  %274 = load ptr, ptr %273, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %274, ptr align 1 %259, i32 %240, i1 false) #16
  %275 = load ptr, ptr %273, align 4
  %276 = load i32, ptr %108, align 4
  %277 = and i32 %276, 2
  %278 = icmp ne i32 %277, 0
  %279 = icmp sgt i32 %240, 0
  %280 = and i1 %279, %278
  br i1 %280, label %281, label %289

281:                                              ; preds = %281, %272
  %282 = phi ptr [ %287, %281 ], [ %275, %272 ]
  %283 = phi i32 [ %286, %281 ], [ 0, %272 ]
  %284 = load i32, ptr %282, align 4
  %285 = call i32 @llvm.bswap.i32(i32 %284) #16
  store i32 %285, ptr %282, align 4
  %286 = add i32 %283, 4
  %287 = getelementptr i32, ptr %282, i32 1
  %288 = icmp slt i32 %286, %240
  br i1 %288, label %281, label %289

289:                                              ; preds = %281, %272, %268
  %290 = phi ptr [ %275, %272 ], [ %259, %268 ], [ %275, %281 ]
  %291 = load ptr, ptr %109, align 8
  %292 = getelementptr inbounds %struct.platform_device, ptr %291, i32 0, i32 3
  %293 = call zeroext i1 @is_vmalloc_addr(ptr noundef %290) #16
  %294 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %295 = xor i1 %294, true
  %296 = select i1 %293, i1 %295, i1 false
  br i1 %296, label %297, label %306, !prof !36

297:                                              ; preds = %289
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %298 = call ptr @dev_driver_string(ptr noundef %292) #16
  %299 = getelementptr inbounds %struct.platform_device, ptr %291, i32 0, i32 3, i32 3
  %300 = load ptr, ptr %299, align 4
  %301 = icmp eq ptr %300, null
  br i1 %301, label %302, label %304

302:                                              ; preds = %297
  %303 = load ptr, ptr %292, align 4
  br label %304

304:                                              ; preds = %302, %297
  %305 = phi ptr [ %303, %302 ], [ %300, %297 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.39, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.40, ptr noundef %298, ptr noundef %305) #16
  br label %306

306:                                              ; preds = %304, %289
  br i1 %293, label %316, label %307

307:                                              ; preds = %306
  %308 = load ptr, ptr @mem_map, align 4
  %309 = ptrtoint ptr %290 to i32
  %310 = add i32 %309, 1073741824
  %311 = lshr i32 %310, 12
  %312 = getelementptr %struct.page, ptr %308, i32 %311
  %313 = and i32 %309, 4095
  %314 = call i32 @dma_map_page_attrs(ptr noundef %292, ptr noundef %312, i32 noundef %313, i32 noundef %240, i32 noundef 1, i32 noundef 0) #16
  %315 = icmp eq i32 %314, -1
  br i1 %315, label %316, label %319

316:                                              ; preds = %307, %306
  call void @__dev_kfree_skb_any(ptr noundef %0, i32 noundef 1) #16
  %317 = call i32 @net_ratelimit() #16
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %843, label %842

319:                                              ; preds = %307
  %320 = trunc i32 %240 to i16
  store i16 %320, ptr %252, align 4
  %321 = getelementptr inbounds %struct.bufdesc, ptr %252, i32 0, i32 2
  store i32 %314, ptr %321, align 4
  %322 = load i8, ptr %110, align 4, !range !9
  %323 = icmp eq i8 %322, 0
  br i1 %323, label %341, label %324

324:                                              ; preds = %319
  %325 = load i32, ptr %108, align 4
  %326 = and i32 %325, 256
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %332, label %328

328:                                              ; preds = %324
  %329 = load i32, ptr %9, align 4
  %330 = shl i32 %329, 20
  %331 = and i32 %330, 15728640
  br label %332

332:                                              ; preds = %328, %324
  %333 = phi i32 [ %331, %328 ], [ 0, %324 ]
  %334 = load i16, ptr %46, align 8
  %335 = and i16 %334, 96
  %336 = icmp eq i16 %335, 96
  %337 = or i32 %333, 402653184
  %338 = select i1 %336, i32 %337, i32 %333
  %339 = getelementptr inbounds %struct.bufdesc_ex, ptr %252, i32 0, i32 3
  store i32 0, ptr %339, align 4
  %340 = getelementptr inbounds %struct.bufdesc_ex, ptr %252, i32 0, i32 1
  store i32 %338, ptr %340, align 4
  br label %341

341:                                              ; preds = %332, %319
  %342 = select i1 %260, i16 -31744, i16 -29696
  %343 = or i16 %263, %342
  br i1 %134, label %344, label %352

344:                                              ; preds = %341
  %345 = or i16 %343, 4096
  %346 = load i8, ptr %110, align 4, !range !9
  %347 = icmp eq i8 %346, 0
  br i1 %347, label %352, label %348

348:                                              ; preds = %344
  %349 = getelementptr inbounds %struct.bufdesc_ex, ptr %252, i32 0, i32 1
  %350 = load i32, ptr %349, align 4
  %351 = or i32 %350, 1073741824
  store i32 %351, ptr %349, align 4
  br label %352

352:                                              ; preds = %348, %344, %341
  %353 = phi i16 [ %345, %348 ], [ %345, %344 ], [ %343, %341 ]
  store i16 %353, ptr %261, align 2
  %354 = sub i32 %237, %240
  call void @tso_build_data(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %240) #16
  %355 = icmp sgt i32 %354, 0
  br i1 %355, label %236, label %356

356:                                              ; preds = %352, %234
  %357 = phi i32 [ %124, %234 ], [ %258, %352 ]
  %358 = phi ptr [ %117, %234 ], [ %252, %352 ]
  %359 = load ptr, ptr %112, align 4
  %360 = icmp ugt ptr %359, %358
  br i1 %360, label %363, label %361

361:                                              ; preds = %356
  %362 = load ptr, ptr %101, align 4
  br label %367

363:                                              ; preds = %356
  %364 = load i8, ptr %113, align 2
  %365 = zext i8 %364 to i32
  %366 = getelementptr i8, ptr %358, i32 %365
  br label %367

367:                                              ; preds = %363, %361
  %368 = phi ptr [ %362, %361 ], [ %366, %363 ]
  %369 = icmp sgt i32 %130, 0
  br i1 %369, label %115, label %370

370:                                              ; preds = %367, %94
  %371 = phi i32 [ 0, %94 ], [ %357, %367 ]
  %372 = phi ptr [ %19, %94 ], [ %368, %367 ]
  %373 = getelementptr %struct.fec_enet_priv_tx_q, ptr %9, i32 0, i32 2, i32 %371
  store ptr %0, ptr %373, align 4
  %374 = load ptr, ptr %12, align 4
  %375 = getelementptr inbounds %struct.skb_shared_info, ptr %374, i32 0, i32 3
  %376 = load i8, ptr %375, align 1
  %377 = and i8 %376, 2
  %378 = icmp eq i8 %377, 0
  br i1 %378, label %380, label %379

379:                                              ; preds = %370
  call void @skb_tstamp_tx(ptr noundef %0, ptr noundef null) #16
  br label %380

380:                                              ; preds = %379, %370
  store ptr %372, ptr %18, align 4
  %381 = getelementptr i8, ptr %1, i32 1572
  %382 = load i32, ptr %381, align 4
  %383 = and i32 %382, 512
  %384 = icmp eq i32 %383, 0
  br i1 %384, label %402, label %385

385:                                              ; preds = %380
  %386 = getelementptr inbounds %struct.bufdesc_prop, ptr %9, i32 0, i32 4
  %387 = load ptr, ptr %386, align 4
  %388 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %387) #16, !srcloc !17
  call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !83
  %389 = icmp eq i32 %388, 0
  br i1 %389, label %402, label %390

390:                                              ; preds = %385
  %391 = load ptr, ptr %386, align 4
  %392 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %391) #16, !srcloc !17
  call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !84
  %393 = icmp eq i32 %392, 0
  br i1 %393, label %402, label %394

394:                                              ; preds = %390
  %395 = load ptr, ptr %386, align 4
  %396 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %395) #16, !srcloc !17
  call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !85
  %397 = icmp eq i32 %396, 0
  br i1 %397, label %402, label %398

398:                                              ; preds = %394
  %399 = load ptr, ptr %386, align 4
  %400 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %399) #16, !srcloc !17
  call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !86
  %401 = icmp eq i32 %400, 0
  br i1 %401, label %402, label %841

402:                                              ; preds = %398, %394, %390, %385, %380
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !87
  call void @arm_heavy_mb() #16
  %403 = getelementptr inbounds %struct.bufdesc_prop, ptr %9, i32 0, i32 4
  %404 = load ptr, ptr %403, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %404, i32 0) #16, !srcloc !21
  br label %841

405:                                              ; preds = %2
  %406 = getelementptr inbounds %struct.skb_shared_info, ptr %13, i32 0, i32 2
  %407 = load i8, ptr %406, align 2
  %408 = getelementptr inbounds %struct.fec_enet_priv_tx_q, ptr %9, i32 0, i32 5
  %409 = load ptr, ptr %408, align 4
  %410 = getelementptr inbounds %struct.bufdesc_prop, ptr %9, i32 0, i32 3
  %411 = load ptr, ptr %410, align 4
  %412 = ptrtoint ptr %409 to i32
  %413 = ptrtoint ptr %411 to i32
  %414 = sub i32 %412, %413
  %415 = getelementptr inbounds %struct.bufdesc_prop, ptr %9, i32 0, i32 8
  %416 = load i8, ptr %415, align 1
  %417 = zext i8 %416 to i32
  %418 = ashr i32 %414, %417
  %419 = add i32 %418, -1
  %420 = icmp sgt i32 %419, -1
  br i1 %420, label %426, label %421

421:                                              ; preds = %405
  %422 = getelementptr inbounds %struct.bufdesc_prop, ptr %9, i32 0, i32 6
  %423 = load i16, ptr %422, align 4
  %424 = zext i16 %423 to i32
  %425 = add nsw i32 %419, %424
  br label %426

426:                                              ; preds = %421, %405
  %427 = phi i32 [ %425, %421 ], [ %419, %405 ]
  %428 = icmp ult i32 %427, 18
  br i1 %428, label %429, label %433

429:                                              ; preds = %426
  tail call void @__dev_kfree_skb_any(ptr noundef %0, i32 noundef 1) #16
  %430 = tail call i32 @net_ratelimit() #16
  %431 = icmp eq i32 %430, 0
  br i1 %431, label %844, label %432

432:                                              ; preds = %429
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.49) #17
  br label %844

433:                                              ; preds = %426
  %434 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %435 = load i16, ptr %434, align 8
  %436 = and i16 %435, 96
  %437 = icmp eq i16 %436, 96
  br i1 %437, label %438, label %485

438:                                              ; preds = %433
  %439 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 11
  %440 = load i8, ptr %439, align 2
  %441 = and i8 %440, 1
  %442 = icmp eq i8 %441, 0
  br i1 %442, label %453, label %443

443:                                              ; preds = %438
  %444 = getelementptr inbounds %struct.skb_shared_info, ptr %13, i32 0, i32 10
  %445 = load volatile i32, ptr %444, align 4
  %446 = and i32 %445, 65535
  %447 = ashr i32 %445, 16
  %448 = sub nsw i32 %446, %447
  %449 = icmp eq i32 %448, 1
  br i1 %449, label %453, label %450

450:                                              ; preds = %443
  %451 = tail call i32 @pskb_expand_head(ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 2592) #16
  %452 = icmp eq i32 %451, 0
  br i1 %452, label %453, label %484, !prof !16

453:                                              ; preds = %450, %443, %438
  %454 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 16
  %455 = load i16, ptr %454, align 8
  %456 = icmp eq i16 %455, 8
  br i1 %456, label %457, label %469

457:                                              ; preds = %453
  %458 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %459 = load ptr, ptr %458, align 8
  %460 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %461 = load i16, ptr %460, align 4
  %462 = zext i16 %461 to i32
  %463 = getelementptr i8, ptr %459, i32 %462
  %464 = load i8, ptr %463, align 4
  %465 = and i8 %464, -16
  %466 = icmp eq i8 %465, 64
  br i1 %466, label %467, label %469

467:                                              ; preds = %457
  %468 = getelementptr inbounds %struct.iphdr, ptr %463, i32 0, i32 7
  store i16 0, ptr %468, align 2
  br label %469

469:                                              ; preds = %467, %457, %453
  %470 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %471 = load ptr, ptr %470, align 8
  %472 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  %473 = load i16, ptr %472, align 4
  %474 = zext i16 %473 to i32
  %475 = getelementptr i8, ptr %471, i32 %474
  %476 = getelementptr inbounds %struct.anon.58, ptr %472, i32 0, i32 1
  %477 = load i16, ptr %476, align 2
  %478 = zext i16 %477 to i32
  %479 = getelementptr i8, ptr %475, i32 %478
  store i16 0, ptr %479, align 2
  %480 = load ptr, ptr %410, align 4
  %481 = load i8, ptr %415, align 1
  %482 = ptrtoint ptr %480 to i32
  %483 = zext i8 %481 to i32
  br label %485

484:                                              ; preds = %450
  tail call void @__dev_kfree_skb_any(ptr noundef %0, i32 noundef 1) #16
  br label %844

485:                                              ; preds = %469, %433
  %486 = phi i32 [ %483, %469 ], [ %417, %433 ]
  %487 = phi i32 [ %482, %469 ], [ %413, %433 ]
  %488 = phi ptr [ %480, %469 ], [ %411, %433 ]
  %489 = getelementptr inbounds %struct.bufdesc, ptr %488, i32 0, i32 1
  %490 = load i16, ptr %489, align 2
  %491 = and i16 %490, -4096
  %492 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %493 = load ptr, ptr %492, align 4
  %494 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %495 = load i32, ptr %494, align 8
  %496 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %497 = load i32, ptr %496, align 4
  %498 = sub i32 %495, %497
  %499 = trunc i32 %498 to i16
  %500 = getelementptr inbounds %struct.bufdesc_prop, ptr %9, i32 0, i32 1
  %501 = load ptr, ptr %500, align 4
  %502 = ptrtoint ptr %501 to i32
  %503 = sub i32 %487, %502
  %504 = ashr i32 %503, %486
  %505 = ptrtoint ptr %493 to i32
  %506 = getelementptr i8, ptr %1, i32 2076
  %507 = load i32, ptr %506, align 4
  %508 = and i32 %507, %505
  %509 = icmp eq i32 %508, 0
  br i1 %509, label %510, label %517

510:                                              ; preds = %485
  %511 = getelementptr i8, ptr %1, i32 1572
  %512 = load i32, ptr %511, align 4
  %513 = and i32 %512, 2
  %514 = icmp eq i32 %513, 0
  br i1 %514, label %515, label %517

515:                                              ; preds = %510
  %516 = and i32 %498, 65535
  br label %536

517:                                              ; preds = %510, %485
  %518 = getelementptr %struct.fec_enet_priv_tx_q, ptr %9, i32 0, i32 1, i32 %504
  %519 = load ptr, ptr %518, align 4
  %520 = and i32 %498, 65535
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %519, ptr align 1 %493, i32 %520, i1 false) #16
  %521 = load ptr, ptr %518, align 4
  %522 = getelementptr i8, ptr %1, i32 1572
  %523 = load i32, ptr %522, align 4
  %524 = and i32 %523, 2
  %525 = icmp ne i32 %524, 0
  %526 = icmp ne i32 %520, 0
  %527 = select i1 %525, i1 %526, i1 false
  br i1 %527, label %528, label %536

528:                                              ; preds = %528, %517
  %529 = phi ptr [ %534, %528 ], [ %521, %517 ]
  %530 = phi i32 [ %533, %528 ], [ 0, %517 ]
  %531 = load i32, ptr %529, align 4
  %532 = tail call i32 @llvm.bswap.i32(i32 %531) #16
  store i32 %532, ptr %529, align 4
  %533 = add nuw nsw i32 %530, 4
  %534 = getelementptr i32, ptr %529, i32 1
  %535 = icmp ult i32 %533, %520
  br i1 %535, label %528, label %536

536:                                              ; preds = %528, %517, %515
  %537 = phi i32 [ %516, %515 ], [ %520, %517 ], [ %520, %528 ]
  %538 = phi ptr [ %493, %515 ], [ %521, %517 ], [ %521, %528 ]
  %539 = getelementptr i8, ptr %1, i32 1504
  %540 = load ptr, ptr %539, align 8
  %541 = getelementptr inbounds %struct.platform_device, ptr %540, i32 0, i32 3
  %542 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %538) #16
  %543 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %544 = xor i1 %543, true
  %545 = select i1 %542, i1 %544, i1 false
  br i1 %545, label %546, label %555, !prof !36

546:                                              ; preds = %536
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %547 = tail call ptr @dev_driver_string(ptr noundef %541) #16
  %548 = getelementptr inbounds %struct.platform_device, ptr %540, i32 0, i32 3, i32 3
  %549 = load ptr, ptr %548, align 4
  %550 = icmp eq ptr %549, null
  br i1 %550, label %551, label %553

551:                                              ; preds = %546
  %552 = load ptr, ptr %541, align 4
  br label %553

553:                                              ; preds = %551, %546
  %554 = phi ptr [ %552, %551 ], [ %549, %546 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.39, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.40, ptr noundef %547, ptr noundef %554) #16
  br label %555

555:                                              ; preds = %553, %536
  br i1 %542, label %565, label %556

556:                                              ; preds = %555
  %557 = load ptr, ptr @mem_map, align 4
  %558 = ptrtoint ptr %538 to i32
  %559 = add i32 %558, 1073741824
  %560 = lshr i32 %559, 12
  %561 = getelementptr %struct.page, ptr %557, i32 %560
  %562 = and i32 %558, 4095
  %563 = tail call i32 @dma_map_page_attrs(ptr noundef %541, ptr noundef %561, i32 noundef %562, i32 noundef %537, i32 noundef 1, i32 noundef 0) #16
  %564 = icmp eq i32 %563, -1
  br i1 %564, label %565, label %569

565:                                              ; preds = %556, %555
  tail call void @__dev_kfree_skb_any(ptr noundef %0, i32 noundef 1) #16
  %566 = tail call i32 @net_ratelimit() #16
  %567 = icmp eq i32 %566, 0
  br i1 %567, label %844, label %568

568:                                              ; preds = %565
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.48) #17
  br label %844

569:                                              ; preds = %556
  %570 = icmp eq i8 %407, 0
  br i1 %570, label %755, label %571

571:                                              ; preds = %569
  %572 = load ptr, ptr %410, align 4
  %573 = load ptr, ptr %12, align 4
  %574 = getelementptr inbounds %struct.skb_shared_info, ptr %573, i32 0, i32 2
  %575 = load i8, ptr %574, align 2
  %576 = zext i8 %575 to i32
  %577 = icmp eq i8 %575, 0
  br i1 %577, label %749, label %578

578:                                              ; preds = %571
  %579 = getelementptr inbounds %struct.bufdesc_prop, ptr %9, i32 0, i32 2
  %580 = getelementptr inbounds %struct.bufdesc_prop, ptr %9, i32 0, i32 7
  %581 = add nsw i32 %576, -1
  %582 = getelementptr i8, ptr %1, i32 1556
  %583 = getelementptr i8, ptr %1, i32 2016
  %584 = getelementptr i8, ptr %1, i32 1572
  br label %585

585:                                              ; preds = %722, %578
  %586 = phi ptr [ %573, %578 ], [ %723, %722 ]
  %587 = phi i32 [ 0, %578 ], [ %648, %722 ]
  %588 = phi i32 [ 0, %578 ], [ %720, %722 ]
  %589 = phi ptr [ %572, %578 ], [ %600, %722 ]
  %590 = getelementptr %struct.skb_shared_info, ptr %586, i32 0, i32 12, i32 %588
  %591 = load ptr, ptr %579, align 4
  %592 = icmp ugt ptr %591, %589
  br i1 %592, label %595, label %593

593:                                              ; preds = %585
  %594 = load ptr, ptr %500, align 4
  br label %599

595:                                              ; preds = %585
  %596 = load i8, ptr %580, align 2
  %597 = zext i8 %596 to i32
  %598 = getelementptr i8, ptr %589, i32 %597
  br label %599

599:                                              ; preds = %595, %593
  %600 = phi ptr [ %594, %593 ], [ %598, %595 ]
  %601 = getelementptr inbounds %struct.bufdesc, ptr %600, i32 0, i32 1
  %602 = load i16, ptr %601, align 2
  %603 = and i16 %602, 28672
  %604 = getelementptr %struct.skb_shared_info, ptr %586, i32 0, i32 12, i32 %588, i32 1
  %605 = load i32, ptr %604, align 4
  %606 = icmp eq i32 %588, %581
  br i1 %606, label %607, label %622

607:                                              ; preds = %599
  %608 = or i16 %603, -25600
  %609 = load i8, ptr %582, align 4, !range !9
  %610 = icmp eq i8 %609, 0
  br i1 %610, label %646, label %611

611:                                              ; preds = %607
  %612 = or i32 %587, 1073741824
  %613 = getelementptr inbounds %struct.skb_shared_info, ptr %586, i32 0, i32 3
  %614 = load i8, ptr %613, align 1
  %615 = and i8 %614, 1
  %616 = icmp eq i8 %615, 0
  br i1 %616, label %626, label %617

617:                                              ; preds = %611
  %618 = load i32, ptr %583, align 8
  %619 = icmp eq i32 %618, 0
  br i1 %619, label %626, label %620, !prof !16

620:                                              ; preds = %617
  %621 = or i32 %587, 1610612736
  br label %626

622:                                              ; preds = %599
  %623 = or i16 %603, -31744
  %624 = load i8, ptr %582, align 4, !range !9
  %625 = icmp eq i8 %624, 0
  br i1 %625, label %646, label %626

626:                                              ; preds = %622, %620, %617, %611
  %627 = phi i32 [ %587, %622 ], [ %612, %611 ], [ %612, %617 ], [ %621, %620 ]
  %628 = phi i16 [ %623, %622 ], [ %608, %611 ], [ %608, %617 ], [ %608, %620 ]
  %629 = load i32, ptr %584, align 4
  %630 = and i32 %629, 256
  %631 = icmp eq i32 %630, 0
  br i1 %631, label %637, label %632

632:                                              ; preds = %626
  %633 = load i32, ptr %9, align 4
  %634 = shl i32 %633, 20
  %635 = and i32 %634, 15728640
  %636 = or i32 %635, %627
  br label %637

637:                                              ; preds = %632, %626
  %638 = phi i32 [ %636, %632 ], [ %627, %626 ]
  %639 = load i16, ptr %434, align 8
  %640 = and i16 %639, 96
  %641 = icmp eq i16 %640, 96
  %642 = or i32 %638, 402653184
  %643 = select i1 %641, i32 %642, i32 %638
  %644 = getelementptr inbounds %struct.bufdesc_ex, ptr %600, i32 0, i32 3
  store i32 0, ptr %644, align 4
  %645 = getelementptr inbounds %struct.bufdesc_ex, ptr %600, i32 0, i32 1
  store i32 %643, ptr %645, align 4
  br label %646

646:                                              ; preds = %637, %622, %607
  %647 = phi i16 [ %628, %637 ], [ %623, %622 ], [ %608, %607 ]
  %648 = phi i32 [ %643, %637 ], [ %587, %622 ], [ %587, %607 ]
  %649 = load ptr, ptr %590, align 4
  %650 = tail call ptr @page_address(ptr noundef %649) #16
  %651 = getelementptr %struct.skb_shared_info, ptr %586, i32 0, i32 12, i32 %588, i32 2
  %652 = load i32, ptr %651, align 4
  %653 = getelementptr i8, ptr %650, i32 %652
  %654 = load ptr, ptr %500, align 4
  %655 = ptrtoint ptr %600 to i32
  %656 = ptrtoint ptr %654 to i32
  %657 = sub i32 %655, %656
  %658 = load i8, ptr %415, align 1
  %659 = zext i8 %658 to i32
  %660 = ashr i32 %657, %659
  %661 = ptrtoint ptr %653 to i32
  %662 = load i32, ptr %506, align 4
  %663 = and i32 %662, %661
  %664 = icmp eq i32 %663, 0
  br i1 %664, label %665, label %669

665:                                              ; preds = %646
  %666 = load i32, ptr %584, align 4
  %667 = and i32 %666, 2
  %668 = icmp eq i32 %667, 0
  br i1 %668, label %686, label %669

669:                                              ; preds = %665, %646
  %670 = getelementptr %struct.fec_enet_priv_tx_q, ptr %9, i32 0, i32 1, i32 %660
  %671 = load ptr, ptr %670, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %671, ptr align 1 %653, i32 %605, i1 false) #16
  %672 = load ptr, ptr %670, align 4
  %673 = load i32, ptr %584, align 4
  %674 = and i32 %673, 2
  %675 = icmp ne i32 %674, 0
  %676 = icmp sgt i32 %605, 0
  %677 = select i1 %675, i1 %676, i1 false
  br i1 %677, label %678, label %686

678:                                              ; preds = %678, %669
  %679 = phi ptr [ %684, %678 ], [ %672, %669 ]
  %680 = phi i32 [ %683, %678 ], [ 0, %669 ]
  %681 = load i32, ptr %679, align 4
  %682 = tail call i32 @llvm.bswap.i32(i32 %681) #16
  store i32 %682, ptr %679, align 4
  %683 = add i32 %680, 4
  %684 = getelementptr i32, ptr %679, i32 1
  %685 = icmp slt i32 %683, %605
  br i1 %685, label %678, label %686

686:                                              ; preds = %678, %669, %665
  %687 = phi ptr [ %672, %669 ], [ %653, %665 ], [ %672, %678 ]
  %688 = load ptr, ptr %539, align 8
  %689 = getelementptr inbounds %struct.platform_device, ptr %688, i32 0, i32 3
  %690 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %687) #16
  %691 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %692 = xor i1 %691, true
  %693 = select i1 %690, i1 %692, i1 false
  br i1 %693, label %694, label %703, !prof !36

694:                                              ; preds = %686
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %695 = tail call ptr @dev_driver_string(ptr noundef %689) #16
  %696 = getelementptr inbounds %struct.platform_device, ptr %688, i32 0, i32 3, i32 3
  %697 = load ptr, ptr %696, align 4
  %698 = icmp eq ptr %697, null
  br i1 %698, label %699, label %701

699:                                              ; preds = %694
  %700 = load ptr, ptr %689, align 4
  br label %701

701:                                              ; preds = %699, %694
  %702 = phi ptr [ %700, %699 ], [ %697, %694 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.39, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.40, ptr noundef %695, ptr noundef %702) #16
  br label %703

703:                                              ; preds = %701, %686
  br i1 %690, label %713, label %704

704:                                              ; preds = %703
  %705 = load ptr, ptr @mem_map, align 4
  %706 = ptrtoint ptr %687 to i32
  %707 = add i32 %706, 1073741824
  %708 = lshr i32 %707, 12
  %709 = getelementptr %struct.page, ptr %705, i32 %708
  %710 = and i32 %706, 4095
  %711 = tail call i32 @dma_map_page_attrs(ptr noundef %689, ptr noundef %709, i32 noundef %710, i32 noundef %605, i32 noundef 1, i32 noundef 0) #16
  %712 = icmp eq i32 %711, -1
  br i1 %712, label %713, label %717

713:                                              ; preds = %704, %703
  %714 = tail call i32 @net_ratelimit() #16
  %715 = icmp eq i32 %714, 0
  br i1 %715, label %724, label %716

716:                                              ; preds = %713
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.48) #17
  br label %724

717:                                              ; preds = %704
  %718 = getelementptr inbounds %struct.bufdesc, ptr %600, i32 0, i32 2
  store i32 %711, ptr %718, align 4
  %719 = trunc i32 %605 to i16
  store i16 %719, ptr %600, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !88
  tail call void @arm_heavy_mb() #16
  store i16 %647, ptr %601, align 2
  %720 = add nuw nsw i32 %588, 1
  %721 = icmp eq i32 %720, %576
  br i1 %721, label %749, label %722

722:                                              ; preds = %717
  %723 = load ptr, ptr %12, align 4
  br label %585

724:                                              ; preds = %716, %713
  %725 = icmp eq i32 %588, 0
  br i1 %725, label %752, label %726

726:                                              ; preds = %724
  %727 = load ptr, ptr %410, align 4
  br label %728

728:                                              ; preds = %739, %726
  %729 = phi i32 [ 0, %726 ], [ %747, %739 ]
  %730 = phi ptr [ %727, %726 ], [ %740, %739 ]
  %731 = load ptr, ptr %579, align 4
  %732 = icmp ugt ptr %731, %730
  br i1 %732, label %735, label %733

733:                                              ; preds = %728
  %734 = load ptr, ptr %500, align 4
  br label %739

735:                                              ; preds = %728
  %736 = load i8, ptr %580, align 2
  %737 = zext i8 %736 to i32
  %738 = getelementptr i8, ptr %730, i32 %737
  br label %739

739:                                              ; preds = %735, %733
  %740 = phi ptr [ %734, %733 ], [ %738, %735 ]
  %741 = load ptr, ptr %539, align 8
  %742 = getelementptr inbounds %struct.platform_device, ptr %741, i32 0, i32 3
  %743 = getelementptr inbounds %struct.bufdesc, ptr %740, i32 0, i32 2
  %744 = load i32, ptr %743, align 4
  %745 = load i16, ptr %740, align 4
  %746 = zext i16 %745 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %742, i32 noundef %744, i32 noundef %746, i32 noundef 1, i32 noundef 0) #16
  %747 = add nuw nsw i32 %729, 1
  %748 = icmp eq i32 %747, %588
  br i1 %748, label %752, label %728

749:                                              ; preds = %717, %571
  %750 = phi ptr [ %572, %571 ], [ %600, %717 ]
  %751 = icmp ugt ptr %750, inttoptr (i32 -4096 to ptr)
  br i1 %751, label %752, label %771

752:                                              ; preds = %749, %739, %724
  %753 = load ptr, ptr %539, align 8
  %754 = getelementptr inbounds %struct.platform_device, ptr %753, i32 0, i32 3
  tail call void @dma_unmap_page_attrs(ptr noundef %754, i32 noundef %563, i32 noundef %537, i32 noundef 1, i32 noundef 0) #16
  tail call void @__dev_kfree_skb_any(ptr noundef %0, i32 noundef 1) #16
  br label %844

755:                                              ; preds = %569
  %756 = or i16 %491, 6144
  %757 = getelementptr i8, ptr %1, i32 1556
  %758 = load i8, ptr %757, align 4, !range !9
  %759 = icmp eq i8 %758, 0
  br i1 %759, label %771, label %760

760:                                              ; preds = %755
  %761 = load ptr, ptr %12, align 4
  %762 = getelementptr inbounds %struct.skb_shared_info, ptr %761, i32 0, i32 3
  %763 = load i8, ptr %762, align 1
  %764 = and i8 %763, 1
  %765 = icmp eq i8 %764, 0
  br i1 %765, label %771, label %766

766:                                              ; preds = %760
  %767 = getelementptr i8, ptr %1, i32 2016
  %768 = load i32, ptr %767, align 8
  %769 = icmp eq i32 %768, 0
  br i1 %769, label %771, label %770, !prof !16

770:                                              ; preds = %766
  br label %771

771:                                              ; preds = %770, %766, %760, %755, %749
  %772 = phi ptr [ %750, %749 ], [ %488, %770 ], [ %488, %766 ], [ %488, %755 ], [ %488, %760 ]
  %773 = phi i16 [ %491, %749 ], [ %756, %770 ], [ %756, %766 ], [ %756, %755 ], [ %756, %760 ]
  %774 = phi i32 [ 0, %749 ], [ 1610612736, %770 ], [ 1073741824, %766 ], [ 0, %755 ], [ 1073741824, %760 ]
  %775 = getelementptr inbounds %struct.bufdesc, ptr %488, i32 0, i32 2
  store i32 %563, ptr %775, align 4
  store i16 %499, ptr %488, align 4
  %776 = getelementptr i8, ptr %1, i32 1556
  %777 = load i8, ptr %776, align 4, !range !9
  %778 = icmp eq i8 %777, 0
  br i1 %778, label %810, label %779

779:                                              ; preds = %771
  %780 = load ptr, ptr %12, align 4
  %781 = getelementptr inbounds %struct.skb_shared_info, ptr %780, i32 0, i32 3
  %782 = load i8, ptr %781, align 1
  %783 = and i8 %782, 1
  %784 = icmp eq i8 %783, 0
  br i1 %784, label %791, label %785

785:                                              ; preds = %779
  %786 = getelementptr i8, ptr %1, i32 2016
  %787 = load i32, ptr %786, align 8
  %788 = icmp eq i32 %787, 0
  br i1 %788, label %791, label %789, !prof !16

789:                                              ; preds = %785
  %790 = or i8 %782, 4
  store i8 %790, ptr %781, align 1
  br label %791

791:                                              ; preds = %789, %785, %779
  %792 = getelementptr i8, ptr %1, i32 1572
  %793 = load i32, ptr %792, align 4
  %794 = and i32 %793, 256
  %795 = icmp eq i32 %794, 0
  br i1 %795, label %801, label %796

796:                                              ; preds = %791
  %797 = load i32, ptr %9, align 4
  %798 = shl i32 %797, 20
  %799 = and i32 %798, 15728640
  %800 = or i32 %799, %774
  br label %801

801:                                              ; preds = %796, %791
  %802 = phi i32 [ %800, %796 ], [ %774, %791 ]
  %803 = load i16, ptr %434, align 8
  %804 = and i16 %803, 96
  %805 = icmp eq i16 %804, 96
  %806 = or i32 %802, 402653184
  %807 = select i1 %805, i32 %806, i32 %802
  %808 = getelementptr inbounds %struct.bufdesc_ex, ptr %488, i32 0, i32 3
  store i32 0, ptr %808, align 4
  %809 = getelementptr inbounds %struct.bufdesc_ex, ptr %488, i32 0, i32 1
  store i32 %807, ptr %809, align 4
  br label %810

810:                                              ; preds = %801, %771
  %811 = load ptr, ptr %500, align 4
  %812 = ptrtoint ptr %772 to i32
  %813 = ptrtoint ptr %811 to i32
  %814 = sub i32 %812, %813
  %815 = load i8, ptr %415, align 1
  %816 = zext i8 %815 to i32
  %817 = ashr i32 %814, %816
  %818 = getelementptr %struct.fec_enet_priv_tx_q, ptr %9, i32 0, i32 2, i32 %817
  store ptr %0, ptr %818, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !89
  tail call void @arm_heavy_mb() #16
  %819 = or i16 %773, -31744
  store i16 %819, ptr %489, align 2
  %820 = getelementptr inbounds %struct.bufdesc_prop, ptr %9, i32 0, i32 2
  %821 = load ptr, ptr %820, align 4
  %822 = icmp ugt ptr %821, %772
  br i1 %822, label %825, label %823

823:                                              ; preds = %810
  %824 = load ptr, ptr %500, align 4
  br label %830

825:                                              ; preds = %810
  %826 = getelementptr inbounds %struct.bufdesc_prop, ptr %9, i32 0, i32 7
  %827 = load i8, ptr %826, align 2
  %828 = zext i8 %827 to i32
  %829 = getelementptr i8, ptr %772, i32 %828
  br label %830

830:                                              ; preds = %825, %823
  %831 = phi ptr [ %824, %823 ], [ %829, %825 ]
  %832 = load ptr, ptr %12, align 4
  %833 = getelementptr inbounds %struct.skb_shared_info, ptr %832, i32 0, i32 3
  %834 = load i8, ptr %833, align 1
  %835 = and i8 %834, 2
  %836 = icmp eq i8 %835, 0
  br i1 %836, label %838, label %837

837:                                              ; preds = %830
  tail call void @skb_tstamp_tx(ptr noundef %0, ptr noundef null) #16
  br label %838

838:                                              ; preds = %837, %830
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !90
  tail call void @arm_heavy_mb() #16
  store ptr %831, ptr %410, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !91
  tail call void @arm_heavy_mb() #16
  %839 = getelementptr inbounds %struct.bufdesc_prop, ptr %9, i32 0, i32 4
  %840 = load ptr, ptr %839, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %840, i32 0) #16, !srcloc !21
  br label %844

841:                                              ; preds = %402, %398, %93, %44, %41
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #16
  br label %844

842:                                              ; preds = %316, %208
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.48) #17
  br label %843

843:                                              ; preds = %842, %316, %208
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #16
  br label %871

844:                                              ; preds = %841, %838, %752, %568, %565, %484, %432, %429
  %845 = getelementptr inbounds %struct.fec_enet_priv_tx_q, ptr %9, i32 0, i32 5
  %846 = load ptr, ptr %845, align 4
  %847 = getelementptr inbounds %struct.bufdesc_prop, ptr %9, i32 0, i32 3
  %848 = load ptr, ptr %847, align 4
  %849 = ptrtoint ptr %846 to i32
  %850 = ptrtoint ptr %848 to i32
  %851 = sub i32 %849, %850
  %852 = getelementptr inbounds %struct.bufdesc_prop, ptr %9, i32 0, i32 8
  %853 = load i8, ptr %852, align 1
  %854 = zext i8 %853 to i32
  %855 = ashr i32 %851, %854
  %856 = add i32 %855, -1
  %857 = icmp sgt i32 %856, -1
  br i1 %857, label %863, label %858

858:                                              ; preds = %844
  %859 = getelementptr inbounds %struct.bufdesc_prop, ptr %9, i32 0, i32 6
  %860 = load i16, ptr %859, align 4
  %861 = zext i16 %860 to i32
  %862 = add nsw i32 %856, %861
  br label %863

863:                                              ; preds = %858, %844
  %864 = phi i32 [ %862, %858 ], [ %856, %844 ]
  %865 = getelementptr inbounds %struct.fec_enet_priv_tx_q, ptr %9, i32 0, i32 3
  %866 = load i16, ptr %865, align 4
  %867 = zext i16 %866 to i32
  %868 = icmp sgt i32 %864, %867
  br i1 %868, label %871, label %869

869:                                              ; preds = %863
  %870 = getelementptr %struct.netdev_queue, ptr %11, i32 %7, i32 12
  call void @_set_bit(i32 noundef 0, ptr noundef %870) #16
  br label %871

871:                                              ; preds = %869, %863, %843
  %872 = phi i32 [ 16, %843 ], [ 0, %869 ], [ 0, %863 ]
  ret i32 %872
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i16 @fec_enet_select_queue(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 1572
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 256
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call zeroext i16 @netdev_pick_tx(ptr noundef %0, ptr noundef %1, ptr noundef null) #16
  br label %26

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 16
  %12 = load i16, ptr %11, align 8
  %13 = icmp eq i16 %12, 768
  br i1 %13, label %14, label %26

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.vlan_ethhdr, ptr %16, i32 0, i32 2
  %18 = load i16, ptr %17, align 2
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %14
  %21 = lshr i16 %18, 5
  %22 = and i16 %21, 7
  %23 = zext i16 %22 to i32
  %24 = getelementptr [8 x i16], ptr @fec_enet_vlan_pri_to_queue, i32 0, i32 %23
  %25 = load i16, ptr %24, align 2
  br label %26

26:                                               ; preds = %20, %14, %10, %8
  %27 = phi i16 [ %25, %20 ], [ %9, %8 ], [ 0, %14 ], [ 0, %10 ]
  ret i16 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @set_multicast_list(ptr noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 1408
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 14
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 256
  %6 = icmp eq i32 %5, 0
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr i8, ptr %7, i32 132
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #16
  tail call void asm sideeffect "dsb ", "~{memory}"() #16
  br i1 %6, label %14, label %10

10:                                               ; preds = %1
  %11 = or i32 %9, 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !92
  tail call void @arm_heavy_mb() #16
  %12 = load ptr, ptr %2, align 8
  %13 = getelementptr i8, ptr %12, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #16, !srcloc !21
  br label %61

14:                                               ; preds = %1
  %15 = and i32 %9, -9
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !93
  tail call void @arm_heavy_mb() #16
  %16 = load ptr, ptr %2, align 8
  %17 = getelementptr i8, ptr %16, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #16, !srcloc !21
  %18 = load i32, ptr %3, align 8
  %19 = and i32 %18, 512
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %14
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !94
  tail call void @arm_heavy_mb() #16
  %22 = load ptr, ptr %2, align 8
  %23 = getelementptr i8, ptr %22, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 -1) #16, !srcloc !21
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !95
  tail call void @arm_heavy_mb() #16
  %24 = load ptr, ptr %2, align 8
  %25 = getelementptr i8, ptr %24, i32 292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 -1) #16, !srcloc !21
  br label %61

26:                                               ; preds = %14
  %27 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 61
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, %27
  br i1 %29, label %54, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 51
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  br label %34

34:                                               ; preds = %49, %30
  %35 = phi ptr [ %28, %30 ], [ %52, %49 ]
  %36 = phi i32 [ 0, %30 ], [ %51, %49 ]
  %37 = phi i32 [ 0, %30 ], [ %50, %49 ]
  %38 = getelementptr inbounds %struct.netdev_hw_addr, ptr %35, i32 0, i32 2
  %39 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %38, i32 noundef %33) #19
  %40 = lshr i32 %39, 26
  %41 = icmp slt i32 %39, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %34
  %43 = add nsw i32 %40, -32
  %44 = shl nuw i32 1, %43
  %45 = or i32 %44, %36
  br label %49

46:                                               ; preds = %34
  %47 = shl nuw i32 1, %40
  %48 = or i32 %47, %37
  br label %49

49:                                               ; preds = %46, %42
  %50 = phi i32 [ %37, %42 ], [ %48, %46 ]
  %51 = phi i32 [ %45, %42 ], [ %36, %46 ]
  %52 = load ptr, ptr %35, align 4
  %53 = icmp eq ptr %52, %27
  br i1 %53, label %54, label %34

54:                                               ; preds = %49, %26
  %55 = phi i32 [ 0, %26 ], [ %50, %49 ]
  %56 = phi i32 [ 0, %26 ], [ %51, %49 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !96
  tail call void @arm_heavy_mb() #16
  %57 = load ptr, ptr %2, align 8
  %58 = getelementptr i8, ptr %57, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 %56) #16, !srcloc !21
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !97
  tail call void @arm_heavy_mb() #16
  %59 = load ptr, ptr %2, align 8
  %60 = getelementptr i8, ptr %59, i32 292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %55) #16, !srcloc !21
  br label %61

61:                                               ; preds = %54, %21, %10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fec_enet_ioctl(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %35, label %10

10:                                               ; preds = %3
  %11 = icmp eq ptr %5, null
  br i1 %11, label %35, label %12

12:                                               ; preds = %10
  %13 = getelementptr i8, ptr %0, i32 1556
  %14 = load i8, ptr %13, align 4, !range !9
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %33, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.phy_device, ptr %5, i32 0, i32 33
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.mii_timestamper, ptr %18, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = icmp ne ptr %22, null
  br label %24

24:                                               ; preds = %20, %16
  %25 = phi i1 [ false, %16 ], [ %23, %20 ]
  switch i32 %2, label %33 [
    i32 35248, label %26
    i32 35249, label %30
  ]

26:                                               ; preds = %24
  br i1 %25, label %29, label %27

27:                                               ; preds = %26
  %28 = tail call i32 @fec_ptp_set(ptr noundef %0, ptr noundef %1) #16
  br label %35

29:                                               ; preds = %26
  tail call void @fec_ptp_disable_hwts(ptr noundef %0) #16
  br label %33

30:                                               ; preds = %24
  br i1 %25, label %33, label %31

31:                                               ; preds = %30
  %32 = tail call i32 @fec_ptp_get(ptr noundef %0, ptr noundef %1) #16
  br label %35

33:                                               ; preds = %30, %29, %24, %12
  %34 = tail call i32 @phy_mii_ioctl(ptr noundef nonnull %5, ptr noundef %1, i32 noundef %2) #16
  br label %35

35:                                               ; preds = %33, %31, %27, %10, %3
  %36 = phi i32 [ %34, %33 ], [ -22, %3 ], [ -19, %10 ], [ %28, %27 ], [ %32, %31 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fec_timeout(ptr noundef %0, i32 noundef %1) #2 {
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %0, ptr noundef nonnull @.str.50) #17
  %3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51) #17
  %4 = getelementptr i8, ptr %0, i32 1472
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.bufdesc_prop, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.bufdesc_prop, ptr %5, i32 0, i32 3
  %9 = getelementptr inbounds %struct.fec_enet_priv_tx_q, ptr %5, i32 0, i32 5
  %10 = getelementptr inbounds %struct.bufdesc_prop, ptr %5, i32 0, i32 2
  %11 = getelementptr inbounds %struct.bufdesc_prop, ptr %5, i32 0, i32 7
  br label %12

12:                                               ; preds = %33, %2
  %13 = phi i32 [ 0, %2 ], [ %38, %33 ]
  %14 = phi ptr [ %7, %2 ], [ %36, %33 ]
  %15 = load ptr, ptr %8, align 4
  %16 = icmp eq ptr %14, %15
  %17 = select i1 %16, i32 83, i32 32
  %18 = load ptr, ptr %9, align 4
  %19 = icmp eq ptr %14, %18
  %20 = select i1 %19, i32 72, i32 32
  %21 = getelementptr inbounds %struct.bufdesc, ptr %14, i32 0, i32 1
  %22 = load i16, ptr %21, align 2
  %23 = zext i16 %22 to i32
  %24 = getelementptr inbounds %struct.bufdesc, ptr %14, i32 0, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = load i16, ptr %14, align 4
  %27 = zext i16 %26 to i32
  %28 = getelementptr %struct.fec_enet_priv_tx_q, ptr %5, i32 0, i32 2, i32 %13
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, i32 noundef %13, i32 noundef %17, i32 noundef %20, i32 noundef %23, i32 noundef %25, i32 noundef %27, ptr noundef %29) #17
  %31 = load ptr, ptr %10, align 4
  %32 = icmp ugt ptr %31, %14
  br i1 %32, label %33, label %40

33:                                               ; preds = %12
  %34 = load i8, ptr %11, align 2
  %35 = zext i8 %34 to i32
  %36 = getelementptr i8, ptr %14, i32 %35
  %37 = load ptr, ptr %6, align 4
  %38 = add i32 %13, 1
  %39 = icmp eq ptr %36, %37
  br i1 %39, label %40, label %12

40:                                               ; preds = %33, %12
  %41 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 36, i32 5
  %42 = load i32, ptr %41, align 4
  %43 = add i32 %42, 1
  store i32 %43, ptr %41, align 4
  %44 = getelementptr i8, ptr %0, i32 1796
  %45 = load ptr, ptr @system_wq, align 4
  %46 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %45, ptr noundef %44) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fec_set_features(ptr noundef %0, i64 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 23
  %4 = load i64, ptr %3, align 16
  %5 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  %9 = xor i64 %4, %1
  %10 = and i64 %9, 1099511627776
  br i1 %8, label %46, label %11

11:                                               ; preds = %2
  %12 = icmp eq i64 %10, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %11
  store i64 %1, ptr %3, align 16
  br label %56

14:                                               ; preds = %11
  %15 = getelementptr i8, ptr %0, i32 1576
  tail call void @napi_disable(ptr noundef %15) #16
  %16 = tail call ptr @llvm.thread.pointer() #16
  %17 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %18 = load volatile i32, ptr %17, align 4
  %19 = add i32 %18, 512
  store volatile i32 %19, ptr %17, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !34
  tail call void @netif_tx_lock(ptr noundef %0) #16
  tail call fastcc void @fec_stop(ptr noundef %0)
  %20 = load i64, ptr %3, align 16
  %21 = xor i64 %20, %1
  store i64 %1, ptr %3, align 16
  %22 = and i64 %21, 1099511627776
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %14
  %25 = and i64 %1, 1099511627776
  %26 = icmp eq i64 %25, 0
  %27 = getelementptr i8, ptr %0, i32 1792
  %28 = load i32, ptr %27, align 8
  %29 = and i32 %28, -49
  %30 = select i1 %26, i32 0, i32 48
  %31 = or i32 %29, %30
  store i32 %31, ptr %27, align 8
  br label %32

32:                                               ; preds = %24, %14
  tail call fastcc void @fec_restart(ptr noundef %0)
  %33 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 88
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %45, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  br label %38

38:                                               ; preds = %38, %36
  %39 = phi i32 [ 0, %36 ], [ %42, %38 ]
  %40 = load ptr, ptr %37, align 64
  %41 = getelementptr %struct.netdev_queue, ptr %40, i32 %39
  tail call void @netif_tx_wake_queue(ptr noundef %41) #16
  %42 = add nuw i32 %39, 1
  %43 = load i32, ptr %33, align 4
  %44 = icmp ult i32 %42, %43
  br i1 %44, label %38, label %45

45:                                               ; preds = %38, %32
  tail call void @netif_tx_unlock(ptr noundef %0) #16
  tail call fastcc void @local_bh_enable() #16
  tail call void @napi_enable(ptr noundef %15) #16
  br label %56

46:                                               ; preds = %2
  store i64 %1, ptr %3, align 16
  %47 = icmp eq i64 %10, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %46
  %49 = and i64 %1, 1099511627776
  %50 = icmp eq i64 %49, 0
  %51 = getelementptr i8, ptr %0, i32 1792
  %52 = load i32, ptr %51, align 8
  %53 = and i32 %52, -49
  %54 = select i1 %50, i32 0, i32 48
  %55 = or i32 %53, %54
  store i32 %55, ptr %51, align 8
  br label %56

56:                                               ; preds = %48, %46, %45, %13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx6q_cpuidle_fec_irqs_used() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_set_wakeup_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @fec_enet_free_buffers(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr i8, ptr %0, i32 1408
  %3 = getelementptr i8, ptr %0, i32 1468
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 1504
  %8 = getelementptr i8, ptr %0, i32 2080
  br label %13

9:                                                ; preds = %56, %1
  %10 = getelementptr i8, ptr %0, i32 1464
  %11 = load i32, ptr %10, align 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %84, label %60

13:                                               ; preds = %56, %6
  %14 = phi i32 [ %4, %6 ], [ %57, %56 ]
  %15 = phi i32 [ 0, %6 ], [ %58, %56 ]
  %16 = getelementptr %struct.fec_enet_private, ptr %2, i32 0, i32 13, i32 %15
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.bufdesc_prop, ptr %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.bufdesc_prop, ptr %17, i32 0, i32 6
  %20 = load i16, ptr %19, align 4
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %56, label %22

22:                                               ; preds = %13
  %23 = load ptr, ptr %18, align 4
  %24 = getelementptr inbounds %struct.bufdesc_prop, ptr %17, i32 0, i32 2
  %25 = getelementptr inbounds %struct.bufdesc_prop, ptr %17, i32 0, i32 7
  br label %26

26:                                               ; preds = %48, %22
  %27 = phi ptr [ %23, %22 ], [ %49, %48 ]
  %28 = phi i32 [ 0, %22 ], [ %50, %48 ]
  %29 = getelementptr %struct.fec_enet_priv_rx_q, ptr %17, i32 0, i32 1, i32 %28
  %30 = load ptr, ptr %29, align 4
  store ptr null, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %39, label %32

32:                                               ; preds = %26
  %33 = load ptr, ptr %7, align 8
  %34 = getelementptr inbounds %struct.platform_device, ptr %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.bufdesc, ptr %27, i32 0, i32 2
  %36 = load i32, ptr %35, align 4
  %37 = load i32, ptr %8, align 8
  %38 = sub i32 2048, %37
  tail call void @dma_unmap_page_attrs(ptr noundef %34, i32 noundef %36, i32 noundef %38, i32 noundef 2, i32 noundef 0) #16
  tail call void @consume_skb(ptr noundef nonnull %30) #16
  br label %39

39:                                               ; preds = %32, %26
  %40 = load ptr, ptr %24, align 4
  %41 = icmp ugt ptr %40, %27
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = load ptr, ptr %18, align 4
  br label %48

44:                                               ; preds = %39
  %45 = load i8, ptr %25, align 2
  %46 = zext i8 %45 to i32
  %47 = getelementptr i8, ptr %27, i32 %46
  br label %48

48:                                               ; preds = %44, %42
  %49 = phi ptr [ %43, %42 ], [ %47, %44 ]
  %50 = add nuw nsw i32 %28, 1
  %51 = load i16, ptr %19, align 4
  %52 = zext i16 %51 to i32
  %53 = icmp ult i32 %50, %52
  br i1 %53, label %26, label %54

54:                                               ; preds = %48
  %55 = load i32, ptr %3, align 4
  br label %56

56:                                               ; preds = %54, %13
  %57 = phi i32 [ %55, %54 ], [ %14, %13 ]
  %58 = add nuw i32 %15, 1
  %59 = icmp ult i32 %58, %57
  br i1 %59, label %13, label %9

60:                                               ; preds = %80, %9
  %61 = phi i32 [ %81, %80 ], [ %11, %9 ]
  %62 = phi i32 [ %82, %80 ], [ 0, %9 ]
  %63 = getelementptr %struct.fec_enet_private, ptr %2, i32 0, i32 12, i32 %62
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.bufdesc_prop, ptr %64, i32 0, i32 6
  %66 = load i16, ptr %65, align 4
  %67 = icmp eq i16 %66, 0
  br i1 %67, label %80, label %68

68:                                               ; preds = %68, %60
  %69 = phi i32 [ %74, %68 ], [ 0, %60 ]
  %70 = getelementptr %struct.fec_enet_priv_tx_q, ptr %64, i32 0, i32 1, i32 %69
  %71 = load ptr, ptr %70, align 4
  tail call void @kfree(ptr noundef %71) #16
  store ptr null, ptr %70, align 4
  %72 = getelementptr %struct.fec_enet_priv_tx_q, ptr %64, i32 0, i32 2, i32 %69
  %73 = load ptr, ptr %72, align 4
  store ptr null, ptr %72, align 4
  tail call void @consume_skb(ptr noundef %73) #16
  %74 = add nuw nsw i32 %69, 1
  %75 = load i16, ptr %65, align 4
  %76 = zext i16 %75 to i32
  %77 = icmp ult i32 %74, %76
  br i1 %77, label %68, label %78

78:                                               ; preds = %68
  %79 = load i32, ptr %10, align 8
  br label %80

80:                                               ; preds = %78, %60
  %81 = phi i32 [ %79, %78 ], [ %61, %60 ]
  %82 = add nuw i32 %62, 1
  %83 = icmp ult i32 %82, %81
  br i1 %83, label %60, label %84

84:                                               ; preds = %80, %9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @fec_enet_new_rxbdp(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 17
  %5 = load ptr, ptr %4, align 4
  %6 = ptrtoint ptr %5 to i32
  %7 = getelementptr i8, ptr %0, i32 2080
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, %6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %3
  %12 = add i32 %8, 1
  %13 = sub i32 %12, %9
  %14 = getelementptr i8, ptr %5, i32 %13
  store ptr %14, ptr %4, align 4
  %15 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 14
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr i8, ptr %16, i32 %13
  store ptr %17, ptr %15, align 8
  %18 = load i32, ptr %7, align 8
  br label %19

19:                                               ; preds = %11, %3
  %20 = phi i32 [ %18, %11 ], [ %8, %3 ]
  %21 = phi ptr [ %14, %11 ], [ %5, %3 ]
  %22 = getelementptr i8, ptr %0, i32 1504
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.platform_device, ptr %23, i32 0, i32 3
  %25 = sub i32 2048, %20
  %26 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %21) #16
  %27 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %28 = xor i1 %27, true
  %29 = select i1 %26, i1 %28, i1 false
  br i1 %29, label %30, label %39, !prof !36

30:                                               ; preds = %19
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %31 = tail call ptr @dev_driver_string(ptr noundef %24) #16
  %32 = getelementptr inbounds %struct.platform_device, ptr %23, i32 0, i32 3, i32 3
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load ptr, ptr %24, align 4
  br label %37

37:                                               ; preds = %35, %30
  %38 = phi ptr [ %36, %35 ], [ %33, %30 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.39, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.40, ptr noundef %31, ptr noundef %38) #16
  br label %39

39:                                               ; preds = %37, %19
  br i1 %26, label %40, label %42

40:                                               ; preds = %39
  %41 = getelementptr inbounds %struct.bufdesc, ptr %1, i32 0, i32 2
  store i32 -1, ptr %41, align 4
  br label %52

42:                                               ; preds = %39
  %43 = load ptr, ptr @mem_map, align 4
  %44 = ptrtoint ptr %21 to i32
  %45 = add i32 %44, 1073741824
  %46 = lshr i32 %45, 12
  %47 = getelementptr %struct.page, ptr %43, i32 %46
  %48 = and i32 %44, 4095
  %49 = tail call i32 @dma_map_page_attrs(ptr noundef %24, ptr noundef %47, i32 noundef %48, i32 noundef %25, i32 noundef 2, i32 noundef 0) #16
  %50 = getelementptr inbounds %struct.bufdesc, ptr %1, i32 0, i32 2
  store i32 %49, ptr %50, align 4
  %51 = icmp eq i32 %49, -1
  br i1 %51, label %52, label %56

52:                                               ; preds = %42, %40
  %53 = tail call i32 @net_ratelimit() #16
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %52
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.38) #17
  br label %56

56:                                               ; preds = %55, %52, %42
  %57 = phi i32 [ -12, %55 ], [ -12, %52 ], [ 0, %42 ]
  ret i32 %57
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_connect(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fec_enet_adjust_link(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = load volatile i32, ptr %4, align 4
  %10 = and i32 %9, 2
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %8, %1
  %13 = getelementptr i8, ptr %0, i32 1532
  store i32 0, ptr %13, align 4
  br label %77

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.phy_device, ptr %3, i32 0, i32 4
  %16 = load i16, ptr %15, align 8
  %17 = and i16 %16, 8192
  %18 = icmp eq i16 %17, 0
  %19 = getelementptr i8, ptr %0, i32 1532
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %18, label %65, label %22

22:                                               ; preds = %14
  br i1 %21, label %23, label %24

23:                                               ; preds = %22
  store i32 1, ptr %19, align 4
  br label %24

24:                                               ; preds = %23, %22
  %25 = getelementptr i8, ptr %0, i32 1536
  %26 = load i32, ptr %25, align 8
  %27 = getelementptr inbounds %struct.phy_device, ptr %3, i32 0, i32 9
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.phy_device, ptr %3, i32 0, i32 8
  %32 = load i32, ptr %31, align 8
  %33 = getelementptr i8, ptr %0, i32 1540
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %45, label %42

36:                                               ; preds = %24
  store i32 %28, ptr %25, align 8
  %37 = getelementptr inbounds %struct.phy_device, ptr %3, i32 0, i32 8
  %38 = load i32, ptr %37, align 8
  %39 = getelementptr i8, ptr %0, i32 1540
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %46, label %42

42:                                               ; preds = %36, %30
  %43 = phi ptr [ %39, %36 ], [ %33, %30 ]
  %44 = phi i32 [ %38, %36 ], [ %32, %30 ]
  store i32 %44, ptr %43, align 4
  br label %46

45:                                               ; preds = %30
  br i1 %21, label %46, label %77

46:                                               ; preds = %45, %42, %36
  %47 = getelementptr i8, ptr %0, i32 1576
  tail call void @napi_disable(ptr noundef %47) #16
  %48 = tail call ptr @llvm.thread.pointer() #16
  %49 = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 1
  %50 = load volatile i32, ptr %49, align 4
  %51 = add i32 %50, 512
  store volatile i32 %51, ptr %49, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !34
  tail call void @netif_tx_lock(ptr noundef %0) #16
  tail call fastcc void @fec_restart(ptr noundef %0)
  %52 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 88
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %64, label %55

55:                                               ; preds = %46
  %56 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  br label %57

57:                                               ; preds = %57, %55
  %58 = phi i32 [ 0, %55 ], [ %61, %57 ]
  %59 = load ptr, ptr %56, align 64
  %60 = getelementptr %struct.netdev_queue, ptr %59, i32 %58
  tail call void @netif_tx_wake_queue(ptr noundef %60) #16
  %61 = add nuw i32 %58, 1
  %62 = load i32, ptr %52, align 4
  %63 = icmp ult i32 %61, %62
  br i1 %63, label %57, label %64

64:                                               ; preds = %57, %46
  tail call void @netif_tx_unlock(ptr noundef %0) #16
  tail call fastcc void @local_bh_enable() #16
  tail call void @napi_enable(ptr noundef %47) #16
  br label %76

65:                                               ; preds = %14
  br i1 %21, label %77, label %66

66:                                               ; preds = %65
  %67 = getelementptr i8, ptr %0, i32 1576
  tail call void @napi_disable(ptr noundef %67) #16
  %68 = tail call ptr @llvm.thread.pointer() #16
  %69 = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 1
  %70 = load volatile i32, ptr %69, align 4
  %71 = add i32 %70, 512
  store volatile i32 %71, ptr %69, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !34
  tail call void @netif_tx_lock(ptr noundef %0) #16
  tail call fastcc void @fec_stop(ptr noundef %0)
  tail call void @netif_tx_unlock(ptr noundef %0) #16
  tail call fastcc void @local_bh_enable() #16
  tail call void @napi_enable(ptr noundef %67) #16
  %72 = load i16, ptr %15, align 8
  %73 = lshr i16 %72, 13
  %74 = and i16 %73, 1
  %75 = zext i16 %74 to i32
  store i32 %75, ptr %19, align 4
  br label %76

76:                                               ; preds = %66, %64
  tail call void @phy_print_status(ptr noundef %3) #16
  br label %77

77:                                               ; preds = %76, %65, %45, %12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mdiobus_is_registered_device(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @phy_connect(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_set_max_speed(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_remove_link_mode(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_support_sym_pause(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_attached_info(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @fec_stop(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr i8, ptr %0, i32 1408
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 132
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #16, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !98
  %6 = and i32 %5, 256
  %7 = getelementptr i8, ptr %0, i32 1532
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %20, label %10

10:                                               ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !99
  tail call void @arm_heavy_mb() #16
  %11 = load ptr, ptr %2, align 8
  %12 = getelementptr i8, ptr %11, i32 196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 1) #16, !srcloc !21
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 2147480) #16
  %14 = load ptr, ptr %2, align 8
  %15 = getelementptr i8, ptr %14, i32 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #16, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !100
  %17 = and i32 %16, 268435456
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %10
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.46) #17
  br label %20

20:                                               ; preds = %19, %10, %1
  %21 = getelementptr i8, ptr %0, i32 1564
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %20
  %26 = getelementptr i8, ptr %0, i32 1572
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, 524288
  %29 = icmp eq i32 %28, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #16
  tail call void @arm_heavy_mb() #16
  %30 = load ptr, ptr %2, align 8
  %31 = getelementptr i8, ptr %30, i32 36
  br i1 %29, label %33, label %32

32:                                               ; preds = %25
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 0) #16, !srcloc !21
  br label %42

33:                                               ; preds = %25
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 1) #16, !srcloc !21
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 2147480) #16
  br label %42

35:                                               ; preds = %20
  %36 = load ptr, ptr %2, align 8
  %37 = getelementptr i8, ptr %36, i32 36
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #16, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !101
  %39 = or i32 %38, 12
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !102
  tail call void @arm_heavy_mb() #16
  %40 = load ptr, ptr %2, align 8
  %41 = getelementptr i8, ptr %40, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %39) #16, !srcloc !21
  br label %42

42:                                               ; preds = %35, %33, %32
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !103
  tail call void @arm_heavy_mb() #16
  %43 = getelementptr i8, ptr %0, i32 1516
  %44 = load i32, ptr %43, align 4
  %45 = load ptr, ptr %2, align 8
  %46 = getelementptr i8, ptr %45, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %44) #16, !srcloc !21
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !104
  tail call void @arm_heavy_mb() #16
  %47 = load ptr, ptr %2, align 8
  %48 = getelementptr i8, ptr %47, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 167772330) #16, !srcloc !21
  %49 = getelementptr i8, ptr %0, i32 1572
  %50 = load i32, ptr %49, align 4
  %51 = and i32 %50, 1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %62, label %53

53:                                               ; preds = %42
  %54 = load i32, ptr %21, align 4
  %55 = and i32 %54, 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %53
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !105
  tail call void @arm_heavy_mb() #16
  %58 = load ptr, ptr %2, align 8
  %59 = getelementptr i8, ptr %58, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 2) #16, !srcloc !21
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !106
  tail call void @arm_heavy_mb() #16
  %60 = load ptr, ptr %2, align 8
  %61 = getelementptr i8, ptr %60, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 %6) #16, !srcloc !21
  br label %62

62:                                               ; preds = %57, %53, %42
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_print_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #6 {
  br label %1

1:                                                ; preds = %0
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %1) to i32), i32 noundef 512) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx6q_cpuidle_fec_irqs_unused() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tso_count_descs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tso_start(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tso_build_hdr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tso_build_data(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_tstamp_tx(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @netdev_pick_tx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fec_ptp_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fec_ptp_disable_hwts(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fec_ptp_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_mii_ioctl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fec_enet_get_drvinfo(ptr nocapture noundef readonly %0, ptr noundef %1) #14 {
  %3 = getelementptr inbounds %struct.ethtool_drvinfo, ptr %1, i32 0, i32 1
  %4 = getelementptr i8, ptr %0, i32 1504
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3, i32 6
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @strlcpy(ptr noundef %3, ptr noundef %8, i32 noundef 32) #16
  %10 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 111, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 111
  %15 = load ptr, ptr %14, align 4
  br label %16

16:                                               ; preds = %13, %2
  %17 = phi ptr [ %15, %13 ], [ %11, %2 ]
  %18 = getelementptr inbounds %struct.ethtool_drvinfo, ptr %1, i32 0, i32 4
  %19 = tail call i32 @strlcpy(ptr noundef %18, ptr noundef %17, i32 noundef 32) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fec_enet_get_regs_len(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 1504
  %3 = load ptr, ptr %2, align 8
  %4 = tail call ptr @platform_get_resource(ptr noundef %3, i32 noundef 512, i32 noundef 0) #16
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.resource, ptr %4, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = load i32, ptr %4, align 4
  %10 = add i32 %8, 1
  %11 = sub i32 %10, %9
  br label %12

12:                                               ; preds = %6, %1
  %13 = phi i32 [ %11, %6 ], [ 0, %1 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fec_enet_get_regs(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 1408
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %0, i32 1504
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  %9 = tail call i32 @__pm_runtime_resume(ptr noundef %8, i32 noundef 4) #16
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #16, !srcloc !10
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 0, i32 -1, ptr elementtype(i32) %12) #16, !srcloc !13
  %14 = extractvalue { i32, i32, i32 } %13, 0
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %44, label %16

16:                                               ; preds = %11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !14
  br label %44

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.ethtool_regs, ptr %1, i32 0, i32 1
  store i32 2, ptr %18, align 4
  %19 = getelementptr inbounds %struct.ethtool_regs, ptr %1, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  tail call void @llvm.memset.p0.i32(ptr align 4 %2, i8 0, i32 %20, i1 false)
  %21 = getelementptr i8, ptr %0, i32 1572
  br label %22

22:                                               ; preds = %37, %17
  %23 = phi i32 [ 0, %17 ], [ %38, %37 ]
  %24 = getelementptr [103 x i32], ptr @fec_enet_register_offset, i32 0, i32 %23
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %23, 2147483646
  %27 = icmp eq i32 %26, 24
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load i32, ptr %21, align 4
  %30 = and i32 %29, 65536
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %28, %22
  %33 = lshr i32 %25, 2
  %34 = getelementptr i32, ptr %5, i32 %33
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #16, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !107
  %36 = getelementptr i32, ptr %2, i32 %33
  store i32 %35, ptr %36, align 4
  br label %37

37:                                               ; preds = %32, %28
  %38 = add nuw nsw i32 %23, 1
  %39 = icmp eq i32 %38, 103
  br i1 %39, label %40, label %22

40:                                               ; preds = %37
  %41 = tail call i64 @ktime_get_mono_fast_ns() #16
  %42 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3, i32 11, i32 22
  store volatile i64 %41, ptr %42, align 8
  %43 = tail call i32 @__pm_runtime_suspend(ptr noundef %8, i32 noundef 13) #16
  br label %44

44:                                               ; preds = %40, %16, %11
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @fec_enet_get_wol(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #15 {
  %3 = getelementptr i8, ptr %0, i32 1564
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  %7 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %1, i32 0, i32 1
  br i1 %6, label %12, label %8

8:                                                ; preds = %2
  store i32 32, ptr %7, align 4
  %9 = load i32, ptr %3, align 4
  %10 = shl i32 %9, 4
  %11 = and i32 %10, 32
  br label %13

12:                                               ; preds = %2
  store i32 0, ptr %7, align 4
  br label %13

13:                                               ; preds = %12, %8
  %14 = phi i32 [ 0, %12 ], [ %11, %8 ]
  %15 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %1, i32 0, i32 2
  store i32 %14, ptr %15, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fec_enet_set_wol(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 1564
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %33, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %1, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, -33
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %33

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 111
  %14 = and i32 %9, 32
  %15 = icmp ne i32 %14, 0
  %16 = tail call i32 @device_set_wakeup_enable(ptr noundef %13, i1 noundef zeroext %15) #16
  %17 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 111, i32 11, i32 1
  %18 = load i16, ptr %17, align 4
  %19 = and i16 %18, 1
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 111, i32 11, i32 6
  %23 = load ptr, ptr %22, align 8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = load i32, ptr %3, align 4
  %27 = or i32 %26, 2
  br label %31

28:                                               ; preds = %21, %12
  %29 = load i32, ptr %3, align 4
  %30 = and i32 %29, -3
  br label %31

31:                                               ; preds = %28, %25
  %32 = phi i32 [ %30, %28 ], [ %27, %25 ]
  store i32 %32, ptr %3, align 4
  br label %33

33:                                               ; preds = %31, %7, %2
  %34 = phi i32 [ 0, %31 ], [ -22, %2 ], [ -22, %7 ]
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_nway_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @fec_enet_get_coalesce(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) #15 {
  %5 = getelementptr i8, ptr %0, i32 1572
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 8192
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %22, label %9

9:                                                ; preds = %4
  %10 = getelementptr i8, ptr %0, i32 2088
  %11 = load i32, ptr %10, align 8
  %12 = getelementptr inbounds %struct.ethtool_coalesce, ptr %1, i32 0, i32 1
  store i32 %11, ptr %12, align 4
  %13 = getelementptr i8, ptr %0, i32 2084
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.ethtool_coalesce, ptr %1, i32 0, i32 2
  store i32 %14, ptr %15, align 4
  %16 = getelementptr i8, ptr %0, i32 2096
  %17 = load i32, ptr %16, align 8
  %18 = getelementptr inbounds %struct.ethtool_coalesce, ptr %1, i32 0, i32 5
  store i32 %17, ptr %18, align 4
  %19 = getelementptr i8, ptr %0, i32 2092
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.ethtool_coalesce, ptr %1, i32 0, i32 6
  store i32 %20, ptr %21, align 4
  br label %22

22:                                               ; preds = %9, %4
  %23 = phi i32 [ 0, %9 ], [ -95, %4 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fec_enet_set_coalesce(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) #2 {
  %5 = getelementptr i8, ptr %0, i32 1408
  %6 = getelementptr i8, ptr %0, i32 1504
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  %9 = getelementptr i8, ptr %0, i32 1572
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 8192
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %82, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.ethtool_coalesce, ptr %1, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = icmp ugt i32 %15, 255
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.53) #17
  br label %82

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.ethtool_coalesce, ptr %1, i32 0, i32 6
  %20 = load i32, ptr %19, align 4
  %21 = icmp ugt i32 %20, 255
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.54) #17
  br label %82

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.ethtool_coalesce, ptr %1, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr i8, ptr %0, i32 2100
  %27 = load i32, ptr %26, align 4
  %28 = udiv i32 %27, 64000
  %29 = mul i32 %28, %25
  %30 = icmp ugt i32 %29, 65535999
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.55) #17
  br label %82

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct.ethtool_coalesce, ptr %1, i32 0, i32 5
  %34 = load i32, ptr %33, align 4
  %35 = mul i32 %34, %28
  %36 = icmp ugt i32 %35, 65535999
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.56) #17
  br label %82

38:                                               ; preds = %32
  %39 = getelementptr i8, ptr %0, i32 2088
  store i32 %25, ptr %39, align 8
  %40 = load i32, ptr %14, align 4
  %41 = getelementptr i8, ptr %0, i32 2084
  store i32 %40, ptr %41, align 4
  %42 = load i32, ptr %33, align 4
  %43 = getelementptr i8, ptr %0, i32 2096
  store i32 %42, ptr %43, align 8
  %44 = load i32, ptr %19, align 4
  %45 = getelementptr i8, ptr %0, i32 2092
  store i32 %44, ptr %45, align 4
  %46 = icmp eq i32 %25, 0
  %47 = icmp eq i32 %40, 0
  %48 = select i1 %46, i1 true, i1 %47
  %49 = icmp eq i32 %42, 0
  %50 = select i1 %48, i1 true, i1 %49
  %51 = icmp eq i32 %44, 0
  %52 = select i1 %50, i1 true, i1 %51
  br i1 %52, label %82, label %53

53:                                               ; preds = %38
  %54 = shl i32 %40, 20
  %55 = and i32 %54, 267386880
  %56 = udiv i32 %29, 1000
  %57 = shl i32 %44, 20
  %58 = and i32 %57, 267386880
  %59 = mul i32 %42, %28
  %60 = udiv i32 %59, 1000
  %61 = and i32 %60, 65535
  %62 = or i32 %56, %55
  %63 = or i32 %62, -1073741824
  %64 = or i32 %61, %58
  %65 = or i32 %64, -1073741824
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !108
  tail call void @arm_heavy_mb() #16
  %66 = load ptr, ptr %5, align 8
  %67 = getelementptr i8, ptr %66, i32 240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 %65) #16, !srcloc !21
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !109
  tail call void @arm_heavy_mb() #16
  %68 = load ptr, ptr %5, align 8
  %69 = getelementptr i8, ptr %68, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %63) #16, !srcloc !21
  %70 = load i32, ptr %9, align 4
  %71 = and i32 %70, 524288
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %82, label %73

73:                                               ; preds = %53
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !110
  tail call void @arm_heavy_mb() #16
  %74 = load ptr, ptr %5, align 8
  %75 = getelementptr i8, ptr %74, i32 244
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 %65) #16, !srcloc !21
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !111
  tail call void @arm_heavy_mb() #16
  %76 = load ptr, ptr %5, align 8
  %77 = getelementptr i8, ptr %76, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 %63) #16, !srcloc !21
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !112
  tail call void @arm_heavy_mb() #16
  %78 = load ptr, ptr %5, align 8
  %79 = getelementptr i8, ptr %78, i32 248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %79, i32 %65) #16, !srcloc !21
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !113
  tail call void @arm_heavy_mb() #16
  %80 = load ptr, ptr %5, align 8
  %81 = getelementptr i8, ptr %80, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 %63) #16, !srcloc !21
  br label %82

82:                                               ; preds = %73, %53, %38, %37, %31, %22, %17, %4
  %83 = phi i32 [ -22, %17 ], [ -22, %22 ], [ -22, %31 ], [ -22, %37 ], [ -95, %4 ], [ 0, %38 ], [ 0, %53 ], [ 0, %73 ]
  ret i32 %83
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @fec_enet_get_pauseparam(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #15 {
  %3 = getelementptr i8, ptr %0, i32 1560
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 1
  %6 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %1, i32 0, i32 1
  store i32 %5, ptr %6, align 4
  %7 = load i32, ptr %3, align 8
  %8 = lshr i32 %7, 1
  %9 = and i32 %8, 1
  %10 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %1, i32 0, i32 3
  store i32 %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %1, i32 0, i32 2
  store i32 %9, ptr %11, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fec_enet_set_pauseparam(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %64, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %1, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %1, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %13, label %12

12:                                               ; preds = %6
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %0, ptr noundef nonnull @.str.57) #17
  br label %64

13:                                               ; preds = %6
  %14 = getelementptr i8, ptr %0, i32 1560
  store i32 0, ptr %14, align 8
  %15 = load i32, ptr %9, align 4
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %16, i32 0, i32 2
  store i32 %17, ptr %14, align 8
  %18 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %1, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i32
  %22 = or i32 %17, %21
  store i32 %22, ptr %14, align 8
  %23 = load i32, ptr %9, align 4
  %24 = icmp ne i32 %23, 0
  %25 = load i32, ptr %7, align 4
  %26 = icmp ne i32 %25, 0
  %27 = load i32, ptr %18, align 4
  %28 = icmp ne i32 %27, 0
  tail call void @phy_set_sym_pause(ptr noundef nonnull %4, i1 noundef zeroext %24, i1 noundef zeroext %26, i1 noundef zeroext %28) #16
  %29 = load i32, ptr %18, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %13
  %32 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %33 = load volatile i32, ptr %32, align 4
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  tail call fastcc void @fec_stop(ptr noundef %0)
  br label %37

37:                                               ; preds = %36, %31
  %38 = load ptr, ptr %3, align 8
  %39 = tail call i32 @phy_start_aneg(ptr noundef %38) #16
  br label %40

40:                                               ; preds = %37, %13
  %41 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %42 = load volatile i32, ptr %41, align 4
  %43 = and i32 %42, 1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %64, label %45

45:                                               ; preds = %40
  %46 = getelementptr i8, ptr %0, i32 1576
  tail call void @napi_disable(ptr noundef %46) #16
  %47 = tail call ptr @llvm.thread.pointer() #16
  %48 = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 1
  %49 = load volatile i32, ptr %48, align 4
  %50 = add i32 %49, 512
  store volatile i32 %50, ptr %48, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !34
  tail call void @netif_tx_lock(ptr noundef %0) #16
  tail call fastcc void @fec_restart(ptr noundef %0)
  %51 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 88
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %63, label %54

54:                                               ; preds = %45
  %55 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  br label %56

56:                                               ; preds = %56, %54
  %57 = phi i32 [ 0, %54 ], [ %60, %56 ]
  %58 = load ptr, ptr %55, align 64
  %59 = getelementptr %struct.netdev_queue, ptr %58, i32 %57
  tail call void @netif_tx_wake_queue(ptr noundef %59) #16
  %60 = add nuw i32 %57, 1
  %61 = load i32, ptr %51, align 4
  %62 = icmp ult i32 %60, %61
  br i1 %62, label %56, label %63

63:                                               ; preds = %56, %45
  tail call void @netif_tx_unlock(ptr noundef %0) #16
  tail call fastcc void @local_bh_enable() #16
  tail call void @napi_enable(ptr noundef %46) #16
  br label %64

64:                                               ; preds = %63, %40, %12, %2
  %65 = phi i32 [ -22, %12 ], [ -19, %2 ], [ 0, %63 ], [ 0, %40 ]
  ret i32 %65
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @net_selftest(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fec_enet_get_strings(ptr nocapture noundef readnone %0, i32 noundef %1, ptr noundef %2) #2 {
  switch i32 %1, label %12 [
    i32 1, label %4
    i32 0, label %11
  ]

4:                                                ; preds = %4, %3
  %5 = phi i32 [ %9, %4 ], [ 0, %3 ]
  %6 = shl nuw nsw i32 %5, 5
  %7 = getelementptr i8, ptr %2, i32 %6
  %8 = getelementptr [53 x %struct.fec_stat], ptr @fec_stats, i32 0, i32 %5
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(32) %7, ptr noundef align 2 dereferenceable(32) %8, i32 32, i1 false)
  %9 = add nuw nsw i32 %5, 1
  %10 = icmp eq i32 %9, 53
  br i1 %10, label %12, label %4

11:                                               ; preds = %3
  tail call void @net_selftest_get_strings(ptr noundef %2) #16
  br label %12

12:                                               ; preds = %11, %4, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fec_enet_get_ethtool_stats(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 1408
  %5 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %21, label %9

9:                                                ; preds = %9, %3
  %10 = phi i32 [ %19, %9 ], [ 0, %3 ]
  %11 = load ptr, ptr %4, align 8
  %12 = getelementptr [53 x %struct.fec_stat], ptr @fec_stats, i32 0, i32 %10, i32 1
  %13 = load i16, ptr %12, align 2
  %14 = zext i16 %13 to i32
  %15 = getelementptr i8, ptr %11, i32 %14
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #16, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !27
  %17 = zext i32 %16 to i64
  %18 = getelementptr %struct.fec_enet_private, ptr %4, i32 0, i32 65, i32 %10
  store i64 %17, ptr %18, align 8
  %19 = add nuw nsw i32 %10, 1
  %20 = icmp eq i32 %19, 53
  br i1 %20, label %21, label %9

21:                                               ; preds = %9, %3
  %22 = getelementptr i8, ptr %0, i32 2176
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(424) %2, ptr noundef align 8 dereferenceable(424) %22, i32 424, i1 false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fec_enet_get_sset_count(ptr nocapture noundef readnone %0, i32 noundef %1) #2 {
  switch i32 %1, label %5 [
    i32 1, label %6
    i32 0, label %3
  ]

3:                                                ; preds = %2
  %4 = tail call i32 @net_selftest_get_count() #16
  br label %6

5:                                                ; preds = %2
  br label %6

6:                                                ; preds = %5, %3, %2
  %7 = phi i32 [ -95, %5 ], [ %4, %3 ], [ 53, %2 ]
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fec_enet_get_ts_info(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 1556
  %4 = load i8, ptr %3, align 4, !range !9
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %18, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ethtool_ts_info, ptr %1, i32 0, i32 1
  store i32 95, ptr %7, align 4
  %8 = getelementptr i8, ptr %0, i32 1812
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %6
  %12 = tail call i32 @ptp_clock_index(ptr noundef nonnull %9) #16
  br label %13

13:                                               ; preds = %11, %6
  %14 = phi i32 [ %12, %11 ], [ -1, %6 ]
  %15 = getelementptr inbounds %struct.ethtool_ts_info, ptr %1, i32 0, i32 2
  store i32 %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.ethtool_ts_info, ptr %1, i32 0, i32 3
  store i32 3, ptr %16, align 4
  %17 = getelementptr inbounds %struct.ethtool_ts_info, ptr %1, i32 0, i32 5
  store i32 3, ptr %17, align 4
  br label %20

18:                                               ; preds = %2
  %19 = tail call i32 @ethtool_op_get_ts_info(ptr noundef %0, ptr noundef %1) #16
  br label %20

20:                                               ; preds = %18, %13
  %21 = phi i32 [ 0, %13 ], [ %19, %18 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fec_enet_get_eee(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 1572
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 1048576
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %28, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %28, label %12

12:                                               ; preds = %7
  %13 = getelementptr i8, ptr %0, i32 2124
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.ethtool_eee, ptr %1, i32 0, i32 5
  store i32 %14, ptr %15, align 4
  %16 = getelementptr i8, ptr %0, i32 2120
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.ethtool_eee, ptr %1, i32 0, i32 4
  store i32 %17, ptr %18, align 4
  %19 = getelementptr i8, ptr %0, i32 2132
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.ethtool_eee, ptr %1, i32 0, i32 7
  store i32 %20, ptr %21, align 4
  %22 = getelementptr i8, ptr %0, i32 2128
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.ethtool_eee, ptr %1, i32 0, i32 6
  store i32 %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %26 = load ptr, ptr %25, align 8
  %27 = tail call i32 @phy_ethtool_get_eee(ptr noundef %26, ptr noundef %1) #16
  br label %28

28:                                               ; preds = %12, %7, %2
  %29 = phi i32 [ %27, %12 ], [ -95, %2 ], [ -100, %7 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fec_enet_set_eee(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 1408
  %4 = getelementptr i8, ptr %0, i32 1572
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 1048576
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %58, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %58, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.ethtool_eee, ptr %1, i32 0, i32 7
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr i8, ptr %0, i32 2132
  store i32 %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.ethtool_eee, ptr %1, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.ethtool_eee, ptr %1, i32 0, i32 6
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = load i32, ptr %14, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %24, %20, %13
  %28 = getelementptr i8, ptr %0, i32 2128
  store i32 0, ptr %28, align 4
  %29 = getelementptr i8, ptr %0, i32 2124
  store i32 0, ptr %29, align 4
  %30 = getelementptr i8, ptr %0, i32 2120
  store i32 0, ptr %30, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !114
  tail call void @arm_heavy_mb() #16
  %31 = load ptr, ptr %3, align 8
  %32 = getelementptr i8, ptr %31, i32 500
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 0) #16, !srcloc !21
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !115
  tail call void @arm_heavy_mb() #16
  %33 = load ptr, ptr %3, align 8
  %34 = getelementptr i8, ptr %33, i32 504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 0) #16, !srcloc !21
  br label %54

35:                                               ; preds = %24
  %36 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %37 = load ptr, ptr %36, align 8
  %38 = tail call i32 @phy_init_eee(ptr noundef %37, i1 noundef zeroext false) #16
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %58

40:                                               ; preds = %35
  %41 = load i32, ptr %16, align 4
  %42 = getelementptr i8, ptr %0, i32 2144
  %43 = load i32, ptr %42, align 8
  %44 = udiv i32 %43, 1000
  %45 = mul i32 %44, %41
  %46 = udiv i32 %45, 1000
  %47 = getelementptr i8, ptr %0, i32 2128
  store i32 1, ptr %47, align 4
  %48 = getelementptr i8, ptr %0, i32 2124
  store i32 1, ptr %48, align 4
  %49 = getelementptr i8, ptr %0, i32 2120
  store i32 1, ptr %49, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !114
  tail call void @arm_heavy_mb() #16
  %50 = load ptr, ptr %3, align 8
  %51 = getelementptr i8, ptr %50, i32 500
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %46) #16, !srcloc !21
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !115
  tail call void @arm_heavy_mb() #16
  %52 = load ptr, ptr %3, align 8
  %53 = getelementptr i8, ptr %52, i32 504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %46) #16, !srcloc !21
  br label %54

54:                                               ; preds = %40, %27
  %55 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %56 = load ptr, ptr %55, align 8
  %57 = tail call i32 @phy_ethtool_set_eee(ptr noundef %56, ptr noundef %1) #16
  br label %58

58:                                               ; preds = %54, %35, %8, %2
  %59 = phi i32 [ %57, %54 ], [ -95, %2 ], [ -100, %8 ], [ %38, %35 ]
  ret i32 %59
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @fec_enet_get_tunable(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #15 {
  %4 = getelementptr inbounds %struct.ethtool_tunable, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %0, i32 2148
  %9 = load i32, ptr %8, align 4
  store i32 %9, ptr %2, align 4
  br label %10

10:                                               ; preds = %7, %3
  %11 = phi i32 [ 0, %7 ], [ -22, %3 ]
  ret i32 %11
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @fec_enet_set_tunable(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #15 {
  %4 = getelementptr inbounds %struct.ethtool_tunable, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = load i32, ptr %2, align 4
  %9 = getelementptr i8, ptr %0, i32 2148
  store i32 %8, ptr %9, align 4
  br label %10

10:                                               ; preds = %7, %3
  %11 = phi i32 [ 0, %7 ], [ -22, %3 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_get_link_ksettings(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_set_link_ksettings(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_set_sym_pause(ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_start_aneg(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @net_selftest_get_strings(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_selftest_get_count() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_clock_index(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_ts_info(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_get_eee(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_set_eee(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init_eee(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i32(ptr nocapture writeonly, ptr nocapture readonly, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @napi_gro_receive(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @timecounter_cyc2time(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @fec_ptp_start_cyclecounter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fec_enet_mdio_read(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.mii_bus, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.fec_enet_private, ptr %5, i32 0, i32 16
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  %9 = tail call i32 @__pm_runtime_resume(ptr noundef %8, i32 noundef 4) #16
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #16, !srcloc !10
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 0, i32 -1, ptr elementtype(i32) %12) #16, !srcloc !13
  %14 = extractvalue { i32, i32, i32 } %13, 0
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %115, label %16

16:                                               ; preds = %11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !14
  br label %115

17:                                               ; preds = %3
  %18 = and i32 %2, 1073741824
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = shl i32 %1, 23
  %22 = and i32 %21, 260046848
  br label %64

23:                                               ; preds = %17
  %24 = ashr i32 %2, 16
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !116
  tail call void @arm_heavy_mb() #16
  %25 = shl i32 %1, 23
  %26 = and i32 %25, 260046848
  %27 = shl i32 %24, 18
  %28 = and i32 %27, 8126464
  %29 = and i32 %2, 65535
  %30 = or i32 %26, %29
  %31 = or i32 %30, %28
  %32 = or i32 %31, 131072
  %33 = load ptr, ptr %5, align 8
  %34 = getelementptr i8, ptr %33, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %32) #16, !srcloc !21
  %35 = tail call i64 @ktime_get() #16
  %36 = add i64 %35, 30000000
  %37 = load ptr, ptr %5, align 8
  %38 = getelementptr i8, ptr %37, i32 4
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #16, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !117
  %40 = and i32 %39, 8388608
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %58

42:                                               ; preds = %45, %23
  %43 = tail call i64 @ktime_get() #16
  %44 = icmp sgt i64 %43, %36
  br i1 %44, label %52, label %45

45:                                               ; preds = %42
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 429496) #16
  %47 = load ptr, ptr %5, align 8
  %48 = getelementptr i8, ptr %47, i32 4
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #16, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !117
  %50 = and i32 %49, 8388608
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %42, label %58

52:                                               ; preds = %42
  %53 = load ptr, ptr %5, align 8
  %54 = getelementptr i8, ptr %53, i32 4
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #16, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !118
  %56 = and i32 %55, 8388608
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %52, %45, %23
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !119
  tail call void @arm_heavy_mb() #16
  %59 = load ptr, ptr %5, align 8
  %60 = getelementptr i8, ptr %59, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 8388608) #16, !srcloc !21
  br label %64

61:                                               ; preds = %52
  %62 = getelementptr inbounds %struct.fec_enet_private, ptr %5, i32 0, i32 1
  %63 = load ptr, ptr %62, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %63, ptr noundef nonnull @.str.65) #17
  br label %110

64:                                               ; preds = %58, %20
  %65 = phi i32 [ %22, %20 ], [ %26, %58 ]
  %66 = phi i32 [ 1073741824, %20 ], [ 0, %58 ]
  %67 = phi i32 [ %2, %20 ], [ %24, %58 ]
  %68 = phi i32 [ 536870912, %20 ], [ 805306368, %58 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !120
  tail call void @arm_heavy_mb() #16
  %69 = shl i32 %67, 18
  %70 = and i32 %69, 8126464
  %71 = or i32 %65, %66
  %72 = or i32 %71, %68
  %73 = or i32 %72, %70
  %74 = or i32 %73, 131072
  %75 = load ptr, ptr %5, align 8
  %76 = getelementptr i8, ptr %75, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 %74) #16, !srcloc !21
  %77 = tail call i64 @ktime_get() #16
  %78 = add i64 %77, 30000000
  %79 = load ptr, ptr %5, align 8
  %80 = getelementptr i8, ptr %79, i32 4
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %80) #16, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !117
  %82 = and i32 %81, 8388608
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %103

84:                                               ; preds = %87, %64
  %85 = tail call i64 @ktime_get() #16
  %86 = icmp sgt i64 %85, %78
  br i1 %86, label %94, label %87

87:                                               ; preds = %84
  %88 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %88(i32 noundef 429496) #16
  %89 = load ptr, ptr %5, align 8
  %90 = getelementptr i8, ptr %89, i32 4
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %90) #16, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !117
  %92 = and i32 %91, 8388608
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %84, label %103

94:                                               ; preds = %84
  %95 = load ptr, ptr %5, align 8
  %96 = getelementptr i8, ptr %95, i32 4
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %96) #16, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !118
  %98 = and i32 %97, 8388608
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %94
  %101 = getelementptr inbounds %struct.fec_enet_private, ptr %5, i32 0, i32 1
  %102 = load ptr, ptr %101, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %102, ptr noundef nonnull @.str.66) #17
  br label %110

103:                                              ; preds = %94, %87, %64
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !119
  tail call void @arm_heavy_mb() #16
  %104 = load ptr, ptr %5, align 8
  %105 = getelementptr i8, ptr %104, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %105, i32 8388608) #16, !srcloc !21
  %106 = load ptr, ptr %5, align 8
  %107 = getelementptr i8, ptr %106, i32 64
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %107) #16, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !121
  %109 = and i32 %108, 65535
  br label %110

110:                                              ; preds = %103, %100, %61
  %111 = phi i32 [ -110, %61 ], [ -110, %100 ], [ %109, %103 ]
  %112 = tail call i64 @ktime_get_mono_fast_ns() #16
  %113 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3, i32 11, i32 22
  store volatile i64 %112, ptr %113, align 8
  %114 = tail call i32 @__pm_runtime_suspend(ptr noundef %8, i32 noundef 13) #16
  br label %115

115:                                              ; preds = %110, %16, %11
  %116 = phi i32 [ %111, %110 ], [ %9, %11 ], [ %9, %16 ]
  ret i32 %116
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fec_enet_mdio_write(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i16 noundef zeroext %3) #2 {
  %5 = getelementptr inbounds %struct.mii_bus, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.fec_enet_private, ptr %6, i32 0, i32 16
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 3
  %10 = tail call i32 @__pm_runtime_resume(ptr noundef %9, i32 noundef 4) #16
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 3, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #16, !srcloc !10
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 0, i32 -1, ptr elementtype(i32) %13) #16, !srcloc !13
  %15 = extractvalue { i32, i32, i32 } %14, 0
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %112, label %17

17:                                               ; preds = %12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !14
  br label %112

18:                                               ; preds = %4
  %19 = and i32 %2, 1073741824
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = shl i32 %1, 23
  %23 = and i32 %22, 260046848
  br label %65

24:                                               ; preds = %18
  %25 = ashr i32 %2, 16
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !122
  tail call void @arm_heavy_mb() #16
  %26 = shl i32 %1, 23
  %27 = and i32 %26, 260046848
  %28 = shl i32 %25, 18
  %29 = and i32 %28, 8126464
  %30 = and i32 %2, 65535
  %31 = or i32 %27, %30
  %32 = or i32 %31, %29
  %33 = or i32 %32, 131072
  %34 = load ptr, ptr %6, align 8
  %35 = getelementptr i8, ptr %34, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %33) #16, !srcloc !21
  %36 = tail call i64 @ktime_get() #16
  %37 = add i64 %36, 30000000
  %38 = load ptr, ptr %6, align 8
  %39 = getelementptr i8, ptr %38, i32 4
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #16, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !117
  %41 = and i32 %40, 8388608
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %59

43:                                               ; preds = %46, %24
  %44 = tail call i64 @ktime_get() #16
  %45 = icmp sgt i64 %44, %37
  br i1 %45, label %53, label %46

46:                                               ; preds = %43
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 429496) #16
  %48 = load ptr, ptr %6, align 8
  %49 = getelementptr i8, ptr %48, i32 4
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #16, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !117
  %51 = and i32 %50, 8388608
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %43, label %59

53:                                               ; preds = %43
  %54 = load ptr, ptr %6, align 8
  %55 = getelementptr i8, ptr %54, i32 4
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #16, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !118
  %57 = and i32 %56, 8388608
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %53, %46, %24
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !119
  tail call void @arm_heavy_mb() #16
  %60 = load ptr, ptr %6, align 8
  %61 = getelementptr i8, ptr %60, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 8388608) #16, !srcloc !21
  br label %65

62:                                               ; preds = %53
  %63 = getelementptr inbounds %struct.fec_enet_private, ptr %6, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %64, ptr noundef nonnull @.str.65) #17
  br label %107

65:                                               ; preds = %59, %21
  %66 = phi i32 [ %23, %21 ], [ %27, %59 ]
  %67 = phi i32 [ 1342177280, %21 ], [ 268435456, %59 ]
  %68 = phi i32 [ %2, %21 ], [ %25, %59 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !123
  tail call void @arm_heavy_mb() #16
  %69 = shl i32 %68, 18
  %70 = and i32 %69, 8126464
  %71 = zext i16 %3 to i32
  %72 = or i32 %66, %71
  %73 = or i32 %72, %67
  %74 = or i32 %73, %70
  %75 = or i32 %74, 131072
  %76 = load ptr, ptr %6, align 8
  %77 = getelementptr i8, ptr %76, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 %75) #16, !srcloc !21
  %78 = tail call i64 @ktime_get() #16
  %79 = add i64 %78, 30000000
  %80 = load ptr, ptr %6, align 8
  %81 = getelementptr i8, ptr %80, i32 4
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %81) #16, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !117
  %83 = and i32 %82, 8388608
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %101

85:                                               ; preds = %88, %65
  %86 = tail call i64 @ktime_get() #16
  %87 = icmp sgt i64 %86, %79
  br i1 %87, label %95, label %88

88:                                               ; preds = %85
  %89 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %89(i32 noundef 429496) #16
  %90 = load ptr, ptr %6, align 8
  %91 = getelementptr i8, ptr %90, i32 4
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %91) #16, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !117
  %93 = and i32 %92, 8388608
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %85, label %101

95:                                               ; preds = %85
  %96 = load ptr, ptr %6, align 8
  %97 = getelementptr i8, ptr %96, i32 4
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %97) #16, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !118
  %99 = and i32 %98, 8388608
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %95, %88, %65
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !119
  tail call void @arm_heavy_mb() #16
  %102 = load ptr, ptr %6, align 8
  %103 = getelementptr i8, ptr %102, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %103, i32 8388608) #16, !srcloc !21
  br label %107

104:                                              ; preds = %95
  %105 = getelementptr inbounds %struct.fec_enet_private, ptr %6, i32 0, i32 1
  %106 = load ptr, ptr %105, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %106, ptr noundef nonnull @.str.67) #17
  br label %107

107:                                              ; preds = %104, %101, %62
  %108 = phi i32 [ -110, %62 ], [ -110, %104 ], [ 0, %101 ]
  %109 = tail call i64 @ktime_get_mono_fast_ns() #16
  %110 = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 3, i32 11, i32 22
  store volatile i64 %109, ptr %110, align 8
  %111 = tail call i32 @__pm_runtime_suspend(ptr noundef %9, i32 noundef 13) #16
  br label %112

112:                                              ; preds = %107, %17, %12
  %113 = phi i32 [ %108, %107 ], [ %10, %12 ], [ %10, %17 ]
  ret i32 %113
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_mdiobus_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdiobus_alloc_size(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fec_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 1408
  tail call void @rtnl_lock() #16
  %5 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %69, label %9

9:                                                ; preds = %1
  %10 = getelementptr i8, ptr %3, i32 1564
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = or i32 %11, 4
  store i32 %15, ptr %10, align 4
  br label %16

16:                                               ; preds = %14, %9
  %17 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 120
  %18 = load ptr, ptr %17, align 8
  tail call void @phy_stop(ptr noundef %18) #16
  %19 = getelementptr i8, ptr %3, i32 1576
  tail call void @napi_disable(ptr noundef %19) #16
  %20 = tail call ptr @llvm.thread.pointer() #16
  %21 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %22 = load volatile i32, ptr %21, align 4
  %23 = add i32 %22, 512
  store volatile i32 %23, ptr %21, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !34
  tail call void @netif_tx_lock(ptr noundef %3) #16
  tail call void @netif_device_detach(ptr noundef %3) #16
  tail call void @netif_tx_unlock(ptr noundef %3) #16
  tail call fastcc void @local_bh_enable() #16
  tail call fastcc void @fec_stop(ptr noundef %3)
  %24 = load i32, ptr %10, align 4
  %25 = and i32 %24, 2
  %26 = icmp eq i32 %25, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #16
  tail call void @arm_heavy_mb() #16
  %27 = load ptr, ptr %4, align 8
  %28 = getelementptr i8, ptr %27, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 0) #16
  br i1 %26, label %29, label %34

29:                                               ; preds = %16
  %30 = getelementptr i8, ptr %3, i32 1504
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.platform_device, ptr %31, i32 0, i32 3
  %33 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %32) #16
  br label %67

34:                                               ; preds = %16
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !124
  tail call void @arm_heavy_mb() #16
  %35 = load ptr, ptr %4, align 8
  %36 = getelementptr i8, ptr %35, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 131072) #16, !srcloc !21
  %37 = getelementptr i8, ptr %3, i32 1568
  %38 = load i32, ptr %37, align 8
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  tail call void @disable_irq(i32 noundef %38) #16
  %41 = load i32, ptr %37, align 8
  %42 = tail call i32 @irq_set_irq_wake(i32 noundef %41, i32 noundef 1) #16
  br label %43

43:                                               ; preds = %40, %34
  %44 = getelementptr i8, ptr %3, i32 1504
  %45 = load ptr, ptr %44, align 8
  %46 = getelementptr inbounds %struct.platform_device, ptr %45, i32 0, i32 3, i32 7
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr i8, ptr %3, i32 2068
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %60, label %51

51:                                               ; preds = %43
  %52 = getelementptr i8, ptr %3, i32 2072
  %53 = load i8, ptr %52, align 4
  %54 = zext i8 %53 to i32
  %55 = getelementptr i8, ptr %3, i32 2073
  %56 = load i8, ptr %55, align 1
  %57 = zext i8 %56 to i32
  %58 = shl nuw i32 1, %57
  %59 = tail call i32 @regmap_update_bits_base(ptr noundef nonnull %49, i32 noundef %54, i32 noundef %58, i32 noundef %58, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #16
  br label %67

60:                                               ; preds = %43
  %61 = icmp eq ptr %47, null
  br i1 %61, label %67, label %62

62:                                               ; preds = %60
  %63 = getelementptr inbounds %struct.fec_platform_data, ptr %47, i32 0, i32 2
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %62
  tail call void %64(i32 noundef 1) #16
  br label %67

67:                                               ; preds = %66, %62, %60, %51, %29
  %68 = tail call fastcc i32 @fec_enet_clk_enable(ptr noundef %3, i1 noundef zeroext false)
  br label %69

69:                                               ; preds = %67, %1
  tail call void @rtnl_unlock() #16
  %70 = getelementptr i8, ptr %3, i32 2064
  %71 = load ptr, ptr %70, align 8
  %72 = icmp eq ptr %71, null
  br i1 %72, label %80, label %73

73:                                               ; preds = %69
  %74 = getelementptr i8, ptr %3, i32 1564
  %75 = load i32, ptr %74, align 4
  %76 = and i32 %75, 2
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = tail call i32 @regulator_disable(ptr noundef nonnull %71) #16
  br label %80

80:                                               ; preds = %78, %73, %69
  %81 = getelementptr i8, ptr %3, i32 1428
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %80
  %85 = load ptr, ptr %70, align 8
  %86 = icmp eq ptr %85, null
  br i1 %86, label %89, label %87

87:                                               ; preds = %84, %80
  %88 = getelementptr i8, ptr %3, i32 1532
  store i32 0, ptr %88, align 4
  br label %89

89:                                               ; preds = %87, %84
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fec_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 1408
  %5 = getelementptr i8, ptr %3, i32 2064
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %1
  %9 = getelementptr i8, ptr %3, i32 1564
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 2
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = tail call i32 @regulator_enable(ptr noundef nonnull %6) #16
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %88

16:                                               ; preds = %13, %8, %1
  tail call void @rtnl_lock() #16
  %17 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %18 = load volatile i32, ptr %17, align 4
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %85, label %21

21:                                               ; preds = %16
  %22 = tail call fastcc i32 @fec_enet_clk_enable(ptr noundef %3, i1 noundef zeroext true)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  tail call void @rtnl_unlock() #16
  %25 = load ptr, ptr %5, align 8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %88, label %86

27:                                               ; preds = %21
  %28 = getelementptr i8, ptr %3, i32 1564
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, 2
  %31 = icmp eq i32 %30, 0
  %32 = getelementptr i8, ptr %3, i32 1504
  %33 = load ptr, ptr %32, align 8
  br i1 %31, label %72, label %34

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.platform_device, ptr %33, i32 0, i32 3, i32 7
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr i8, ptr %3, i32 2068
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %49, label %40

40:                                               ; preds = %34
  %41 = getelementptr i8, ptr %3, i32 2072
  %42 = load i8, ptr %41, align 4
  %43 = zext i8 %42 to i32
  %44 = getelementptr i8, ptr %3, i32 2073
  %45 = load i8, ptr %44, align 1
  %46 = zext i8 %45 to i32
  %47 = shl nuw i32 1, %46
  %48 = tail call i32 @regmap_update_bits_base(ptr noundef nonnull %38, i32 noundef %43, i32 noundef %47, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #16
  br label %56

49:                                               ; preds = %34
  %50 = icmp eq ptr %36, null
  br i1 %50, label %56, label %51

51:                                               ; preds = %49
  %52 = getelementptr inbounds %struct.fec_platform_data, ptr %36, i32 0, i32 2
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %51
  tail call void %53(i32 noundef 0) #16
  br label %56

56:                                               ; preds = %55, %51, %49, %40
  %57 = getelementptr i8, ptr %3, i32 1568
  %58 = load i32, ptr %57, align 8
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %56
  %61 = tail call i32 @irq_set_irq_wake(i32 noundef %58, i32 noundef 0) #16
  %62 = load i32, ptr %57, align 8
  tail call void @enable_irq(i32 noundef %62) #16
  br label %63

63:                                               ; preds = %60, %56
  %64 = load ptr, ptr %4, align 8
  %65 = getelementptr i8, ptr %64, i32 36
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #16, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !125
  %67 = and i32 %66, -13
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !126
  tail call void @arm_heavy_mb() #16
  %68 = load ptr, ptr %4, align 8
  %69 = getelementptr i8, ptr %68, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %67) #16, !srcloc !21
  %70 = load i32, ptr %28, align 4
  %71 = and i32 %70, -5
  store i32 %71, ptr %28, align 4
  br label %75

72:                                               ; preds = %27
  %73 = getelementptr inbounds %struct.platform_device, ptr %33, i32 0, i32 3
  %74 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %73) #16
  br label %75

75:                                               ; preds = %72, %63
  tail call fastcc void @fec_restart(ptr noundef %3)
  %76 = tail call ptr @llvm.thread.pointer() #16
  %77 = getelementptr inbounds %struct.thread_info, ptr %76, i32 0, i32 1
  %78 = load volatile i32, ptr %77, align 4
  %79 = add i32 %78, 512
  store volatile i32 %79, ptr %77, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !34
  tail call void @netif_tx_lock(ptr noundef %3) #16
  tail call void @netif_device_attach(ptr noundef %3) #16
  tail call void @netif_tx_unlock(ptr noundef %3) #16
  tail call fastcc void @local_bh_enable() #16
  %80 = getelementptr i8, ptr %3, i32 1576
  tail call void @napi_enable(ptr noundef %80) #16
  %81 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 120
  %82 = load ptr, ptr %81, align 8
  %83 = tail call i32 @phy_init_hw(ptr noundef %82) #16
  %84 = load ptr, ptr %81, align 8
  tail call void @phy_start(ptr noundef %84) #16
  br label %85

85:                                               ; preds = %75, %16
  tail call void @rtnl_unlock() #16
  br label %88

86:                                               ; preds = %24
  %87 = tail call i32 @regulator_disable(ptr noundef nonnull %25) #16
  br label %88

88:                                               ; preds = %86, %85, %24, %13
  %89 = phi i32 [ 0, %85 ], [ %14, %13 ], [ %22, %86 ], [ %22, %24 ]
  ret i32 %89
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fec_runtime_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 1420
  %5 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %5) #16
  tail call void @clk_unprepare(ptr noundef %5) #16
  %6 = getelementptr i8, ptr %3, i32 1416
  %7 = load ptr, ptr %6, align 8
  tail call void @clk_disable(ptr noundef %7) #16
  tail call void @clk_unprepare(ptr noundef %7) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fec_runtime_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 1420
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_prepare(ptr noundef %5) #16
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %26

8:                                                ; preds = %1
  %9 = tail call i32 @clk_enable(ptr noundef %5) #16
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %8
  %12 = getelementptr i8, ptr %3, i32 1416
  %13 = load ptr, ptr %12, align 8
  %14 = tail call i32 @clk_prepare(ptr noundef %13) #16
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = tail call i32 @clk_enable(ptr noundef %13) #16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %16
  tail call void @clk_unprepare(ptr noundef %13) #16
  br label %20

20:                                               ; preds = %19, %11
  %21 = phi i32 [ %17, %19 ], [ %14, %11 ]
  %22 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %22) #16
  br label %23

23:                                               ; preds = %20, %8
  %24 = phi ptr [ %22, %20 ], [ %5, %8 ]
  %25 = phi i32 [ %21, %20 ], [ %9, %8 ]
  tail call void @clk_unprepare(ptr noundef %24) #16
  br label %26

26:                                               ; preds = %23, %16, %1
  %27 = phi i32 [ 0, %16 ], [ %6, %1 ], [ %25, %23 ]
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #13 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { nounwind }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(2) }
attributes #19 = { nounwind readonly willreturn }

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
!10 = !{i64 650620, i64 2148140591, i64 2148140617, i64 2148140664, i64 2148140686, i64 2148140714, i64 2148140734}
!11 = !{i64 2148152006, i64 2148152032, i64 2148152061, i64 2148152095, i64 2148152126, i64 2148152149}
!12 = !{i64 2148151513}
!13 = !{i64 637189, i64 637214, i64 637236, i64 637252, i64 637264, i64 637284, i64 637308, i64 637324, i64 637336}
!14 = !{i64 2148151639}
!15 = !{i32 0, i32 33}
!16 = !{!"branch_weights", i32 2000, i32 1}
!17 = !{i64 5231714}
!18 = !{i64 2157188566}
!19 = !{i64 2157189346}
!20 = !{i64 2157220554}
!21 = !{i64 5231296}
!22 = !{i64 2157221120}
!23 = !{i64 2157228643}
!24 = !{i64 2157204719}
!25 = !{i64 2157205452}
!26 = !{i64 2157205778}
!27 = !{i64 2157203296}
!28 = !{i64 2157186160}
!29 = !{i64 2157186376}
!30 = !{i64 2157186706}
!31 = !{i64 2157199869}
!32 = !{i64 2157200194}
!33 = !{i64 2157200568}
!34 = !{i64 2148967270}
!35 = !{i64 2157183281}
!36 = !{!"branch_weights", i32 1, i32 2000}
!37 = !{i64 650438}
!38 = !{i64 2153903428, i64 2153903916, i64 2153903465, i64 2153903521, i64 2153903555, i64 2153903579, i64 2153903620, i64 2153903641, i64 2153903669, i64 2153903703}
!39 = !{i64 2157185439}
!40 = !{i64 2157185692}
!41 = !{i64 2157176552}
!42 = !{i64 2157181615}
!43 = !{i64 2157181969}
!44 = !{i64 2157182158}
!45 = !{i64 2157187398}
!46 = !{i64 2157153312}
!47 = !{i64 2157153624}
!48 = !{i64 2157154676}
!49 = !{i64 2157155354}
!50 = !{i64 2157155890}
!51 = !{i64 2157148767}
!52 = !{i64 2157149508}
!53 = !{i64 2157151951}
!54 = !{i64 2157150845}
!55 = distinct !{!55, !56}
!56 = !{!"llvm.loop.peeled.count", i32 1}
!57 = !{i64 2157152637}
!58 = distinct !{!58, !56}
!59 = !{i64 2157156929}
!60 = !{i64 2157157426}
!61 = !{i64 2157157860}
!62 = !{i64 2157158354}
!63 = !{i64 2157158815}
!64 = !{i64 2157159276}
!65 = !{i64 2157160021}
!66 = !{i64 2157160339}
!67 = !{i64 2157160676}
!68 = !{i64 2157160998}
!69 = !{i64 2157161318}
!70 = !{i64 2157161640}
!71 = !{i64 2157161968}
!72 = !{i64 2157162303}
!73 = !{i64 2157162623}
!74 = !{i64 2157162935}
!75 = !{i64 2157163261}
!76 = !{i64 2157163647}
!77 = !{i64 2157163975}
!78 = !{i64 2157148251}
!79 = !{i64 2149035145}
!80 = !{i64 2149030969}
!81 = !{i64 2149031044, i64 2149031071, i64 2149031118, i64 2149031140, i64 2149031168, i64 2149031188}
!82 = !{i64 2149058148}
!83 = !{i64 2157145640}
!84 = !{i64 2157145992}
!85 = !{i64 2157146344}
!86 = !{i64 2157146696}
!87 = !{i64 2157146885}
!88 = !{i64 2157135491}
!89 = !{i64 2157137113}
!90 = !{i64 2157137330}
!91 = !{i64 2157137521}
!92 = !{i64 2157214622}
!93 = !{i64 2157215277}
!94 = !{i64 2157215615}
!95 = !{i64 2157215954}
!96 = !{i64 2157219789}
!97 = !{i64 2157220124}
!98 = !{i64 2157166983}
!99 = !{i64 2157167171}
!100 = !{i64 2157168174}
!101 = !{i64 2157169717}
!102 = !{i64 2157169925}
!103 = !{i64 2157170254}
!104 = !{i64 2157170972}
!105 = !{i64 2157171572}
!106 = !{i64 2157171892}
!107 = !{i64 2157202221}
!108 = !{i64 2157206347}
!109 = !{i64 2157206674}
!110 = !{i64 2157207011}
!111 = !{i64 2157207338}
!112 = !{i64 2157207665}
!113 = !{i64 2157207992}
!114 = !{i64 2157211092}
!115 = !{i64 2157211433}
!116 = !{i64 2157194073}
!117 = !{i64 2157192390}
!118 = !{i64 2157192721}
!119 = !{i64 2157193539}
!120 = !{i64 2157194784}
!121 = !{i64 2157195613}
!122 = !{i64 2157195991}
!123 = !{i64 2157196732}
!124 = !{i64 2157166488}
!125 = !{i64 2157236769}
!126 = !{i64 2157236977}
