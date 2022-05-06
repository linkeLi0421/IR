; ModuleID = '/llk/IR/drivers/net/ethernet/ti/cpsw.c_pt.bc'
source_filename = "../drivers/net/ethernet/ti/cpsw.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.129 }
%union.anon.129 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.soc_device_attribute = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.cpsw_common = type { ptr, %struct.cpsw_platform_data, %struct.napi_struct, %struct.napi_struct, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, [8 x %struct.cpsw_vector], [8 x %struct.cpsw_vector], ptr, i8, i8, i8, [2 x i32], i32, ptr, ptr, i32, i32, i32, i32, [8 x ptr], i8, ptr, i8, [6 x i8] }
%struct.cpsw_platform_data = type { ptr, i32, i32, i32, i32, i32, i32, i16, i8 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.cpsw_vector = type { ptr, i32 }
%struct.cpsw_slave_data = type { ptr, ptr, [61 x i8], i32, [6 x i8], i16, ptr, i8 }
%struct.cpsw_slave = type { ptr, i32, i32, ptr, ptr, ptr, i32, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.136, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.161, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.136 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.ref_tracker_dir = type {}
%struct.possible_net_t = type {}
%union.anon.161 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.cpts = type { ptr, ptr, i32, i32, %struct.ptp_clock_info, ptr, %struct.spinlock, i32, %struct.cyclecounter, %struct.timecounter, i32, ptr, %struct.list_head, %struct.list_head, [32 x %struct.cpts_event], i32, %struct.sk_buff_head, i64, i32, %struct.mutex, i8, %struct.completion, i32 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.cpts_event = type { %struct.list_head, i32, i32, i32, i64 }
%struct.sk_buff_head = type { %union.anon.159, i32, %struct.spinlock }
%union.anon.159 = type { %struct.anon.160 }
%struct.anon.160 = type { ptr, ptr }
%struct.cpsw_priv = type { ptr, ptr, i32, [6 x i8], i8, i8, i8, [4 x i32], i32, i32, i32, ptr, [8 x i8], [8 x %struct.xdp_rxq_info], %struct.xdp_attachment_info, i32, ptr, i32, i32, [40 x i8] }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [40 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.xdp_attachment_info = type { ptr, i32 }
%struct.xdp_buff = type { ptr, ptr, ptr, ptr, ptr, ptr, i32 }
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
%struct.page = type { i32, %union.anon.1, %union.anon.128, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.128 = type { %struct.atomic_t }
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cpsw_ss_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cpsw_wr_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, [8 x i32], i32, i32 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.netdev_queue = type { ptr, %struct.netdevice_tracker, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, [4 x i8], %struct.spinlock, i32, i32, i32, [48 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [52 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [24 x i8] }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.xdp_frame = type { ptr, i16, i16, i32, %struct.xdp_mem_info, ptr }
%struct.cpsw_host_regs = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_pauseparam = type { i32, i32, i32, i32 }

@__param_str_debug_level = internal constant [20 x i8] c"ti_cpsw.debug_level\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug_level = internal global i32 0, align 4
@__param_debug_level = internal constant %struct.kernel_param { ptr @__param_str_debug_level, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.129 { ptr @debug_level } }, section "__param", align 4
@__UNIQUE_ID_debug_leveltype461 = internal constant [33 x i8] c"ti_cpsw.parmtype=debug_level:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug_level462 = internal constant [59 x i8] c"ti_cpsw.parm=debug_level:cpsw debug level (NETIF_MSG bits)\00", section ".modinfo", align 1
@__param_str_ale_ageout = internal constant [19 x i8] c"ti_cpsw.ale_ageout\00", align 1
@ale_ageout = internal global i32 10, align 4
@__param_ale_ageout = internal constant %struct.kernel_param { ptr @__param_str_ale_ageout, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.129 { ptr @ale_ageout } }, section "__param", align 4
@__UNIQUE_ID_ale_ageouttype463 = internal constant [32 x i8] c"ti_cpsw.parmtype=ale_ageout:int\00", section ".modinfo", align 1
@__UNIQUE_ID_ale_ageout464 = internal constant [59 x i8] c"ti_cpsw.parm=ale_ageout:cpsw ale ageout interval (seconds)\00", section ".modinfo", align 1
@__param_str_rx_packet_max = internal constant [22 x i8] c"ti_cpsw.rx_packet_max\00", align 1
@rx_packet_max = internal global i32 1526, align 4
@__param_rx_packet_max = internal constant %struct.kernel_param { ptr @__param_str_rx_packet_max, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.129 { ptr @rx_packet_max } }, section "__param", align 4
@__UNIQUE_ID_rx_packet_maxtype465 = internal constant [35 x i8] c"ti_cpsw.parmtype=rx_packet_max:int\00", section ".modinfo", align 1
@__UNIQUE_ID_rx_packet_max466 = internal constant [63 x i8] c"ti_cpsw.parm=rx_packet_max:maximum receive packet size (bytes)\00", section ".modinfo", align 1
@__param_str_descs_pool_size = internal constant [24 x i8] c"ti_cpsw.descs_pool_size\00", align 1
@descs_pool_size = internal global i32 256, align 4
@__param_descs_pool_size = internal constant %struct.kernel_param { ptr @__param_str_descs_pool_size, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.129 { ptr @descs_pool_size } }, section "__param", align 4
@__UNIQUE_ID_descs_pool_sizetype467 = internal constant [37 x i8] c"ti_cpsw.parmtype=descs_pool_size:int\00", section ".modinfo", align 1
@__UNIQUE_ID_descs_pool_size468 = internal constant [70 x i8] c"ti_cpsw.parm=descs_pool_size:Number of CPDMA CPPI descriptors in pool\00", section ".modinfo", align 1
@__initcall__kmod_ti_cpsw__483_1810_cpsw_driver_init6 = internal global ptr @cpsw_driver_init, section ".initcall6.init", align 4
@cpsw_driver = internal global %struct.platform_driver { ptr @cpsw_probe, ptr @cpsw_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cpsw_of_mtable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cpsw_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_cpsw_driver_exit = internal global ptr @cpsw_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file484 = internal constant [45 x i8] c"ti_cpsw.file=drivers/net/ethernet/ti/ti_cpsw\00", section ".modinfo", align 1
@__UNIQUE_ID_license485 = internal constant [20 x i8] c"ti_cpsw.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author486 = internal constant [48 x i8] c"ti_cpsw.author=Cyril Chemparathy <cyril@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author487 = internal constant [51 x i8] c"ti_cpsw.author=Mugunthan V N <mugunthanvnm@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description488 = internal constant [44 x i8] c"ti_cpsw.description=TI CPSW Ethernet driver\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [5 x i8] c"cpsw\00", align 1
@cpsw_of_mtable = internal constant [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,cpsw\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am335x-cpsw\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am4372-cpsw\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dra7-cpsw\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@cpsw_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @cpsw_suspend, ptr @cpsw_resume, ptr @cpsw_suspend, ptr @cpsw_resume, ptr @cpsw_suspend, ptr @cpsw_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@cpsw_slave_index = external dso_local local_unnamed_addr global ptr, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"gpio request failed, ret %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"fck\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"fck is not found %d\0A\00", align 1
@cpsw_soc_devices = internal constant [2 x %struct.soc_device_attribute] [%struct.soc_device_attribute { ptr null, ptr @.str.40, ptr @.str.41, ptr null, ptr null, ptr null, ptr null }, %struct.soc_device_attribute zeroinitializer], align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"error initializing tx dma channel\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"error initializing rx dma channel\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"error allocating net_device\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"Detected MACID = %pM\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"Random MACID = %pM\0A\00", align 1
@cpsw_netdev_ops = internal constant %struct.net_device_ops { ptr null, ptr null, ptr @cpsw_ndo_open, ptr @cpsw_ndo_stop, ptr @cpsw_ndo_start_xmit, ptr null, ptr null, ptr null, ptr @cpsw_ndo_set_rx_mode, ptr @cpsw_ndo_set_mac_address, ptr @eth_validate_addr, ptr null, ptr @cpsw_ndo_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cpsw_ndo_tx_timeout, ptr null, ptr null, ptr null, ptr null, ptr @cpsw_ndo_vlan_rx_add_vid, ptr @cpsw_ndo_vlan_rx_kill_vid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cpsw_ndo_setup_tc, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cpsw_ndo_set_tx_maxrate, ptr null, ptr null, ptr null, ptr @cpsw_ndo_bpf, ptr @cpsw_ndo_xdp_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@cpsw_ethtool_ops = internal constant %struct.ethtool_ops { i8 0, i32 1, i32 0, ptr @cpsw_get_drvinfo, ptr @cpsw_get_regs_len, ptr @cpsw_get_regs, ptr @cpsw_get_wol, ptr @cpsw_set_wol, ptr @cpsw_get_msglevel, ptr @cpsw_set_msglevel, ptr @cpsw_nway_reset, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr @cpsw_get_coalesce, ptr @cpsw_set_coalesce, ptr @cpsw_get_ringparam, ptr @cpsw_set_ringparam, ptr null, ptr @cpsw_get_pauseparam, ptr @cpsw_set_pauseparam, ptr null, ptr @cpsw_get_strings, ptr null, ptr @cpsw_get_ethtool_stats, ptr @cpsw_ethtool_op_begin, ptr @cpsw_ethtool_op_complete, ptr null, ptr null, ptr @cpsw_get_sset_count, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cpsw_get_channels, ptr @cpsw_set_channels, ptr null, ptr null, ptr null, ptr @cpsw_get_ts_info, ptr null, ptr null, ptr @cpsw_get_eee, ptr @cpsw_set_eee, ptr null, ptr null, ptr null, ptr null, ptr @cpsw_get_link_ksettings, ptr @cpsw_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.10 = private unnamed_addr constant [30 x i8] c"error registering net device\0A\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"error probe slave 2 emac interface\0A\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"error attaching irq (%d)\0A\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"error attaching misc irq (%d)\0A\00", align 1
@.str.14 = private unnamed_addr constant [53 x i8] c"initialized device (regs %pa, irq %d, pool size %d)\0A\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"slaves\00", align 1
@.str.16 = private unnamed_addr constant [36 x i8] c"Missing slaves property in the DT.\0A\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"active_slave\00", align 1
@.str.18 = private unnamed_addr constant [42 x i8] c"Missing active_slave property in the DT.\0A\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"cpdma_channels\00", align 1
@.str.20 = private unnamed_addr constant [44 x i8] c"Missing cpdma_channels property in the DT.\0A\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"bd_ram_size\00", align 1
@.str.22 = private unnamed_addr constant [41 x i8] c"Missing bd_ram_size property in the DT.\0A\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"mac_control\00", align 1
@.str.24 = private unnamed_addr constant [41 x i8] c"Missing mac_control property in the DT.\0A\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"dual_emac\00", align 1
@.str.26 = private unnamed_addr constant [29 x i8] c"Doesn't have any child node\0A\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"slave\00", align 1
@.str.28 = private unnamed_addr constant [35 x i8] c"%d: Error retrieving port phy: %d\0A\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"phy-handle\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"phy_id\00", align 1
@.str.31 = private unnamed_addr constant [39 x i8] c"failed to register fixed-link phy: %d\0A\00", align 1
@.str.32 = private unnamed_addr constant [35 x i8] c"Invalid slave[%d] phy_id property\0A\00", align 1
@.str.33 = private unnamed_addr constant [30 x i8] c"Missing mdio platform device\0A\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"%s:%02x\00", align 1
@.str.35 = private unnamed_addr constant [57 x i8] c"No slave[%d] phy_id, phy-handle, or fixed-link property\0A\00", align 1
@.str.36 = private unnamed_addr constant [50 x i8] c"Missing or malformed slave[%d] phy-mode property\0A\00", align 1
@.str.37 = private unnamed_addr constant [19 x i8] c"dual_emac_res_vlan\00", align 1
@.str.38 = private unnamed_addr constant [35 x i8] c"Missing dual_emac_res_vlan in DT.\0A\00", align 1
@.str.39 = private unnamed_addr constant [40 x i8] c"Using %d as Reserved VLAN for %d slave\0A\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"AM33xx\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"ES1.0\00", align 1
@.str.42 = private unnamed_addr constant [31 x i8] c"drivers/net/ethernet/ti/cpsw.c\00", align 1
@.str.43 = private unnamed_addr constant [37 x i8] c"cannot set real number of tx queues\0A\00", align 1
@.str.44 = private unnamed_addr constant [37 x i8] c"cannot set real number of rx queues\0A\00", align 1
@.str.45 = private unnamed_addr constant [38 x i8] c"initializing cpsw version %d.%d (%d)\0A\00", align 1
@.str.46 = private unnamed_addr constant [31 x i8] c"error registering cpts device\0A\00", align 1
@.str.47 = private unnamed_addr constant [34 x i8] c"phy \22%pOF\22 not found on slave %d\0A\00", align 1
@.str.48 = private unnamed_addr constant [41 x i8] c"phy \22%s\22 not found on slave %d, err %ld\0A\00", align 1
@.str.49 = private unnamed_addr constant [50 x i8] c"Speed was changed, CBS shaper speeds are changed!\00", align 1
@.str.50 = private unnamed_addr constant [27 x i8] c"shutting down cpsw device\0A\00", align 1
@.str.51 = private unnamed_addr constant [19 x i8] c"packet pad failed\0A\00", align 1
@.str.52 = private unnamed_addr constant [20 x i8] c"desc submit failed\0A\00", align 1
@.str.53 = private unnamed_addr constant [78 x i8] c"promiscuity not disabled as the other interface is still in promiscuity mode\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.54 = private unnamed_addr constant [33 x i8] c"Adding vlanid %d to vlan filter\0A\00", align 1
@.str.55 = private unnamed_addr constant [37 x i8] c"removing vlanid %d from vlan filter\0A\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"1.0\00", align 1
@.str.57 = private unnamed_addr constant [35 x i8] c"cpsw: error allocating net_device\0A\00", align 1
@.str.58 = private unnamed_addr constant [28 x i8] c"cpsw: Detected MACID = %pM\0A\00", align 1
@.str.59 = private unnamed_addr constant [26 x i8] c"cpsw: Random MACID = %pM\0A\00", align 1
@.str.60 = private unnamed_addr constant [36 x i8] c"cpsw: error registering net device\0A\00", align 1
@llvm.compiler.used = appending global [20 x ptr] [ptr @__UNIQUE_ID_ale_ageout464, ptr @__UNIQUE_ID_ale_ageouttype463, ptr @__UNIQUE_ID_author486, ptr @__UNIQUE_ID_author487, ptr @__UNIQUE_ID_debug_level462, ptr @__UNIQUE_ID_debug_leveltype461, ptr @__UNIQUE_ID_description488, ptr @__UNIQUE_ID_descs_pool_size468, ptr @__UNIQUE_ID_descs_pool_sizetype467, ptr @__UNIQUE_ID_file484, ptr @__UNIQUE_ID_license485, ptr @__UNIQUE_ID_rx_packet_max466, ptr @__UNIQUE_ID_rx_packet_maxtype465, ptr @__exitcall_cpsw_driver_exit, ptr @__initcall__kmod_ti_cpsw__483_1810_cpsw_driver_init6, ptr @__param_ale_ageout, ptr @__param_debug_level, ptr @__param_descs_pool_size, ptr @__param_rx_packet_max, ptr @cpsw_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @cpsw_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @cpsw_driver, ptr noundef null) #13
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @cpsw_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @cpsw_driver) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpsw_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.of_phandle_args, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store ptr null, ptr %5, align 4, !annotation !8
  %7 = tail call noalias ptr @devm_kmalloc(ptr noundef %6, i32 noundef 736, i32 noundef 3520) #13
  %8 = icmp eq ptr %7, null
  br i1 %8, label %404, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %7, ptr %10, align 8
  store ptr @cpsw_slave_index_priv, ptr @cpsw_slave_index, align 4
  store ptr %6, ptr %7, align 8
  %11 = tail call ptr @devm_gpiod_get_array_optional(ptr noundef %6, ptr noundef nonnull @.str.1, i32 noundef 3) #13
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = ptrtoint ptr %11 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.2, i32 noundef %14) #14
  br label %404

15:                                               ; preds = %9
  %16 = tail call ptr @devm_clk_get(ptr noundef %6, ptr noundef nonnull @.str.3) #13
  %17 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = ptrtoint ptr %16 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.4, i32 noundef %19) #14
  br label %404

20:                                               ; preds = %15
  %21 = tail call i32 @clk_get_rate(ptr noundef %16) #13
  %22 = udiv i32 %21, 1000000
  %23 = getelementptr inbounds %struct.cpsw_common, ptr %7, i32 0, i32 10
  store i32 %22, ptr %23, align 8
  %24 = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %5) #13
  %25 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = ptrtoint ptr %24 to i32
  br label %404

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.cpsw_common, ptr %7, i32 0, i32 4
  store ptr %24, ptr %29, align 8
  %30 = call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 1) #13
  %31 = getelementptr inbounds %struct.cpsw_common, ptr %7, i32 0, i32 5
  store ptr %30, ptr %31, align 4
  %32 = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = ptrtoint ptr %30 to i32
  br label %404

35:                                               ; preds = %28
  %36 = call i32 @platform_get_irq(ptr noundef %0, i32 noundef 1) #13
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %404, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.cpsw_common, ptr %7, i32 0, i32 21
  store i32 %36, ptr %39, align 4
  %40 = call i32 @platform_get_irq(ptr noundef %0, i32 noundef 2) #13
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %404, label %42

42:                                               ; preds = %38
  %43 = getelementptr %struct.cpsw_common, ptr %7, i32 0, i32 21, i32 1
  store i32 %40, ptr %43, align 4
  %44 = call i32 @platform_get_irq(ptr noundef %0, i32 noundef 3) #13
  %45 = icmp slt i32 %44, 1
  br i1 %45, label %404, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.cpsw_common, ptr %7, i32 0, i32 22
  store i32 %44, ptr %47, align 4
  call void @pm_runtime_enable(ptr noundef %6) #13
  %48 = call i32 @__pm_runtime_resume(ptr noundef %6, i32 noundef 4) #13
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 13
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !9
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %51) #13, !srcloc !10
  %52 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %51, ptr %51, i32 0, i32 -1, ptr elementtype(i32) %51) #13, !srcloc !11
  %53 = extractvalue { i32, i32, i32 } %52, 0
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %402, label %55

55:                                               ; preds = %50
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !12
  br label %402

56:                                               ; preds = %46
  %57 = getelementptr inbounds %struct.cpsw_common, ptr %7, i32 0, i32 1
  %58 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %59 = load ptr, ptr %58, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  store i32 0, ptr %3, align 4, !annotation !8
  %60 = icmp eq ptr %59, null
  br i1 %60, label %200, label %61

61:                                               ; preds = %56
  %62 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %59, ptr noundef nonnull @.str.15, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #13
  %63 = icmp sgt i32 %62, -1
  br i1 %63, label %65, label %64

64:                                               ; preds = %61
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.16) #14
  br label %200

65:                                               ; preds = %61
  %66 = load i32, ptr %3, align 4
  %67 = getelementptr inbounds %struct.cpsw_common, ptr %7, i32 0, i32 1, i32 3
  store i32 %66, ptr %67, align 4
  %68 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %59, ptr noundef nonnull @.str.17, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #13
  %69 = icmp sgt i32 %68, -1
  br i1 %69, label %71, label %70

70:                                               ; preds = %65
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.18) #14
  br label %200

71:                                               ; preds = %65
  %72 = load i32, ptr %3, align 4
  %73 = getelementptr inbounds %struct.cpsw_common, ptr %7, i32 0, i32 1, i32 4
  store i32 %72, ptr %73, align 4
  %74 = load i32, ptr %67, align 4
  %75 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %74, i32 92) #13
  %76 = extractvalue { i32, i1 } %75, 1
  br i1 %76, label %77, label %78, !prof !13

77:                                               ; preds = %71
  store ptr null, ptr %57, align 4
  br label %200

78:                                               ; preds = %71
  %79 = extractvalue { i32, i1 } %75, 0
  %80 = call noalias ptr @devm_kmalloc(ptr noundef %6, i32 noundef %79, i32 noundef 3520) #13
  store ptr %80, ptr %57, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %200, label %82

82:                                               ; preds = %78
  %83 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %59, ptr noundef nonnull @.str.19, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #13
  %84 = icmp sgt i32 %83, -1
  br i1 %84, label %86, label %85

85:                                               ; preds = %82
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.20) #14
  br label %200

86:                                               ; preds = %82
  %87 = load i32, ptr %3, align 4
  %88 = getelementptr inbounds %struct.cpsw_common, ptr %7, i32 0, i32 1, i32 2
  store i32 %87, ptr %88, align 4
  %89 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %59, ptr noundef nonnull @.str.21, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #13
  %90 = icmp sgt i32 %89, -1
  br i1 %90, label %92, label %91

91:                                               ; preds = %86
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.22) #14
  br label %200

92:                                               ; preds = %86
  %93 = load i32, ptr %3, align 4
  %94 = getelementptr inbounds %struct.cpsw_common, ptr %7, i32 0, i32 1, i32 5
  store i32 %93, ptr %94, align 4
  %95 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %59, ptr noundef nonnull @.str.23, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #13
  %96 = icmp sgt i32 %95, -1
  br i1 %96, label %98, label %97

97:                                               ; preds = %92
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.24) #14
  br label %200

98:                                               ; preds = %92
  %99 = load i32, ptr %3, align 4
  %100 = getelementptr inbounds %struct.cpsw_common, ptr %7, i32 0, i32 1, i32 6
  store i32 %99, ptr %100, align 4
  %101 = call ptr @of_find_property(ptr noundef nonnull %59, ptr noundef nonnull @.str.25, ptr noundef null) #13
  %102 = icmp eq ptr %101, null
  br i1 %102, label %105, label %103

103:                                              ; preds = %98
  %104 = getelementptr inbounds %struct.cpsw_common, ptr %7, i32 0, i32 1, i32 8
  store i8 1, ptr %104, align 2
  br label %105

105:                                              ; preds = %103, %98
  %106 = call i32 @of_platform_populate(ptr noundef nonnull %59, ptr noundef null, ptr noundef null, ptr noundef %6) #13
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %105
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.26) #14
  br label %109

109:                                              ; preds = %108, %105
  %110 = call ptr @of_get_next_available_child(ptr noundef nonnull %59, ptr noundef null) #13
  %111 = icmp eq ptr %110, null
  br i1 %111, label %202, label %112

112:                                              ; preds = %109
  %113 = getelementptr inbounds %struct.cpsw_common, ptr %7, i32 0, i32 1, i32 8
  br label %114

114:                                              ; preds = %196, %112
  %115 = phi i32 [ 0, %112 ], [ %197, %196 ]
  %116 = phi ptr [ %110, %112 ], [ %198, %196 ]
  %117 = load ptr, ptr %57, align 4
  %118 = getelementptr %struct.cpsw_slave_data, ptr %117, i32 %115
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 0, ptr %4, align 4, !annotation !8
  %119 = call zeroext i1 @of_node_name_eq(ptr noundef nonnull %116, ptr noundef nonnull @.str.27) #13
  br i1 %119, label %120, label %196

120:                                              ; preds = %114
  %121 = call ptr @devm_of_phy_get(ptr noundef %6, ptr noundef nonnull %116, ptr noundef null) #13
  %122 = getelementptr %struct.cpsw_slave_data, ptr %117, i32 %115, i32 6
  store ptr %121, ptr %122, align 4
  %123 = icmp ugt ptr %121, inttoptr (i32 -4096 to ptr)
  br i1 %123, label %124, label %126

124:                                              ; preds = %120
  %125 = ptrtoint ptr %121 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.28, i32 noundef %115, i32 noundef %125) #14
  br label %205

126:                                              ; preds = %120
  store ptr %116, ptr %118, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false) #13, !annotation !8
  %127 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %116, ptr noundef nonnull @.str.29, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %2) #13
  %128 = icmp eq i32 %127, 0
  %129 = load ptr, ptr %2, align 4
  %130 = select i1 %128, ptr %129, ptr null
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #13
  %131 = getelementptr %struct.cpsw_slave_data, ptr %117, i32 %115, i32 1
  store ptr %130, ptr %131, align 4
  %132 = call ptr @of_get_property(ptr noundef nonnull %116, ptr noundef nonnull @.str.30, ptr noundef nonnull %4) #13
  %133 = load ptr, ptr %131, align 4
  %134 = icmp eq ptr %133, null
  br i1 %134, label %135, label %162

135:                                              ; preds = %126
  %136 = call zeroext i1 @of_phy_is_fixed_link(ptr noundef nonnull %116) #13
  br i1 %136, label %137, label %142

137:                                              ; preds = %135
  %138 = call i32 @of_phy_register_fixed_link(ptr noundef nonnull %116) #13
  switch i32 %138, label %139 [
    i32 0, label %140
    i32 -517, label %203
  ]

139:                                              ; preds = %137
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.31, i32 noundef %138) #14
  br label %205

140:                                              ; preds = %137
  %141 = call ptr @of_node_get(ptr noundef nonnull %116) #13
  store ptr %141, ptr %131, align 4
  br label %162

142:                                              ; preds = %135
  %143 = icmp eq ptr %132, null
  br i1 %143, label %167, label %144

144:                                              ; preds = %142
  %145 = load i32, ptr %4, align 4
  %146 = icmp eq i32 %145, 8
  br i1 %146, label %147, label %167

147:                                              ; preds = %144
  %148 = load i32, ptr %132, align 4
  %149 = call i32 @llvm.bswap.i32(i32 %148) #13
  %150 = call ptr @of_find_node_by_phandle(i32 noundef %149) #13
  %151 = getelementptr i32, ptr %132, i32 1
  %152 = load i32, ptr %151, align 4
  %153 = call ptr @of_find_device_by_node(ptr noundef %150) #13
  call void @of_node_put(ptr noundef %150) #13
  %154 = icmp eq ptr %153, null
  br i1 %154, label %155, label %156

155:                                              ; preds = %147
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.33) #14
  br label %203

156:                                              ; preds = %147
  %157 = call i32 @llvm.bswap.i32(i32 %152) #13
  %158 = getelementptr %struct.cpsw_slave_data, ptr %117, i32 %115, i32 2
  %159 = load ptr, ptr %153, align 8
  %160 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %158, i32 noundef 61, ptr noundef nonnull @.str.34, ptr noundef %159, i32 noundef %157) #13
  %161 = getelementptr inbounds %struct.platform_device, ptr %153, i32 0, i32 3
  call void @put_device(ptr noundef %161) #13
  br label %162

162:                                              ; preds = %156, %140, %126
  %163 = getelementptr %struct.cpsw_slave_data, ptr %117, i32 %115, i32 3
  %164 = call i32 @of_get_phy_mode(ptr noundef nonnull %116, ptr noundef %163) #13
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %169, label %166

166:                                              ; preds = %162
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.36, i32 noundef %115) #14
  br label %203

167:                                              ; preds = %144, %142
  %168 = phi ptr [ @.str.32, %144 ], [ @.str.35, %142 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull %168, i32 noundef %115) #14
  br label %169

169:                                              ; preds = %167, %162
  %170 = getelementptr %struct.cpsw_slave_data, ptr %117, i32 %115, i32 4
  %171 = call i32 @of_get_mac_address(ptr noundef nonnull %116, ptr noundef %170) #13
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %176, label %173

173:                                              ; preds = %169
  %174 = call i32 @ti_cm_get_macid(ptr noundef %6, i32 noundef %115, ptr noundef %170) #13
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %203

176:                                              ; preds = %173, %169
  %177 = load i8, ptr %113, align 2, !range !14
  %178 = icmp eq i8 %177, 0
  br i1 %178, label %191, label %179

179:                                              ; preds = %176
  %180 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %116, ptr noundef nonnull @.str.37, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #13
  %181 = icmp sgt i32 %180, -1
  br i1 %181, label %187, label %182

182:                                              ; preds = %179
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.38) #14
  %183 = trunc i32 %115 to i16
  %184 = add i16 %183, 1
  %185 = getelementptr %struct.cpsw_slave_data, ptr %117, i32 %115, i32 5
  store i16 %184, ptr %185, align 2
  %186 = zext i16 %184 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.39, i32 noundef %186, i32 noundef %115) #14
  br label %191

187:                                              ; preds = %179
  %188 = load i32, ptr %3, align 4
  %189 = trunc i32 %188 to i16
  %190 = getelementptr %struct.cpsw_slave_data, ptr %117, i32 %115, i32 5
  store i16 %189, ptr %190, align 2
  br label %191

191:                                              ; preds = %187, %182, %176
  %192 = add i32 %115, 1
  %193 = load i32, ptr %67, align 4
  %194 = icmp eq i32 %192, %193
  br i1 %194, label %195, label %196

195:                                              ; preds = %191
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  call void @of_node_put(ptr noundef nonnull %116) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  br label %208

196:                                              ; preds = %191, %114
  %197 = phi i32 [ %115, %114 ], [ %192, %191 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  %198 = call ptr @of_get_next_available_child(ptr noundef nonnull %59, ptr noundef nonnull %116) #13
  %199 = icmp eq ptr %198, null
  br i1 %199, label %202, label %114

200:                                              ; preds = %97, %91, %85, %78, %77, %70, %64, %56
  %201 = phi i32 [ -12, %77 ], [ -12, %78 ], [ -22, %56 ], [ -22, %97 ], [ -22, %91 ], [ -22, %85 ], [ -22, %70 ], [ -22, %64 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  br label %399

202:                                              ; preds = %196, %109
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  br label %208

203:                                              ; preds = %173, %166, %155, %137
  %204 = phi i32 [ %164, %166 ], [ -22, %155 ], [ %138, %137 ], [ %174, %173 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  call void @of_node_put(ptr noundef nonnull %116) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  br label %399

205:                                              ; preds = %139, %124
  %206 = phi i32 [ %138, %139 ], [ %125, %124 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  call void @of_node_put(ptr noundef nonnull %116) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %399

208:                                              ; preds = %205, %202, %195
  %209 = call ptr @soc_device_match(ptr noundef nonnull @cpsw_soc_devices) #13
  %210 = icmp eq ptr %209, null
  br i1 %210, label %213, label %211

211:                                              ; preds = %208
  %212 = getelementptr inbounds %struct.cpsw_common, ptr %7, i32 0, i32 18
  store i8 1, ptr %212, align 8
  br label %213

213:                                              ; preds = %211, %208
  %214 = load i32, ptr %67, align 4
  %215 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %214, i32 32) #13
  %216 = extractvalue { i32, i1 } %215, 1
  br i1 %216, label %217, label %219, !prof !13

217:                                              ; preds = %213
  %218 = getelementptr inbounds %struct.cpsw_common, ptr %7, i32 0, i32 13
  store ptr null, ptr %218, align 4
  br label %399

219:                                              ; preds = %213
  %220 = extractvalue { i32, i1 } %215, 0
  %221 = call noalias ptr @devm_kmalloc(ptr noundef %6, i32 noundef %220, i32 noundef 3520) #13
  %222 = getelementptr inbounds %struct.cpsw_common, ptr %7, i32 0, i32 13
  store ptr %221, ptr %222, align 4
  %223 = icmp eq ptr %221, null
  br i1 %223, label %399, label %224

224:                                              ; preds = %219
  %225 = load i32, ptr @rx_packet_max, align 4
  %226 = call i32 @llvm.smax.i32(i32 %225, i32 1526)
  %227 = getelementptr inbounds %struct.cpsw_common, ptr %7, i32 0, i32 11
  store i32 %226, ptr %227, align 4
  %228 = load i32, ptr @descs_pool_size, align 4
  %229 = getelementptr inbounds %struct.cpsw_common, ptr %7, i32 0, i32 12
  store i32 %228, ptr %229, align 8
  %230 = load i32, ptr @ale_ageout, align 4
  %231 = load ptr, ptr %5, align 4
  %232 = load i32, ptr %231, align 4
  %233 = add i32 %232, 8192
  %234 = call i32 @cpsw_init_common(ptr noundef nonnull %7, ptr noundef %24, i32 noundef %230, i32 noundef %233, i32 noundef %228) #13
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %236, label %399

236:                                              ; preds = %224
  %237 = getelementptr inbounds %struct.cpsw_common, ptr %7, i32 0, i32 18
  %238 = load i8, ptr %237, align 8, !range !14
  %239 = icmp eq i8 %238, 0
  %240 = select i1 %239, i32 7, i32 0
  %241 = getelementptr inbounds %struct.cpsw_common, ptr %7, i32 0, i32 14
  %242 = load ptr, ptr %241, align 8
  %243 = call ptr @cpdma_chan_create(ptr noundef %242, i32 noundef %240, ptr noundef nonnull @cpsw_tx_handler, i32 noundef 0) #13
  %244 = getelementptr inbounds %struct.cpsw_common, ptr %7, i32 0, i32 15
  store ptr %243, ptr %244, align 4
  %245 = icmp ugt ptr %243, inttoptr (i32 -4096 to ptr)
  br i1 %245, label %246, label %249

246:                                              ; preds = %236
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.5) #14
  %247 = load ptr, ptr %244, align 4
  %248 = ptrtoint ptr %247 to i32
  br label %393

249:                                              ; preds = %236
  %250 = load ptr, ptr %241, align 8
  %251 = call ptr @cpdma_chan_create(ptr noundef %250, i32 noundef 0, ptr noundef nonnull @cpsw_rx_handler, i32 noundef 1) #13
  %252 = getelementptr inbounds %struct.cpsw_common, ptr %7, i32 0, i32 16
  store ptr %251, ptr %252, align 4
  %253 = icmp ugt ptr %251, inttoptr (i32 -4096 to ptr)
  br i1 %253, label %254, label %257

254:                                              ; preds = %249
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.6) #14
  %255 = load ptr, ptr %252, align 4
  %256 = ptrtoint ptr %255 to i32
  br label %393

257:                                              ; preds = %249
  call void @cpsw_split_res(ptr noundef nonnull %7) #13
  %258 = call ptr @devm_alloc_etherdev_mqs(ptr noundef %6, i32 noundef 640, i32 noundef 8, i32 noundef 8) #13
  %259 = icmp eq ptr %258, null
  br i1 %259, label %260, label %261

260:                                              ; preds = %257
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.7) #14
  br label %393

261:                                              ; preds = %257
  %262 = getelementptr i8, ptr %258, i32 1408
  %263 = getelementptr i8, ptr %258, i32 1996
  store ptr %7, ptr %263, align 4
  store ptr %258, ptr %262, align 64
  %264 = getelementptr i8, ptr %258, i32 1412
  store ptr %6, ptr %264, align 4
  %265 = load i32, ptr @debug_level, align 4
  %266 = icmp ugt i32 %265, 31
  br i1 %266, label %272, label %267

267:                                              ; preds = %261
  %268 = icmp eq i32 %265, 0
  br i1 %268, label %272, label %269

269:                                              ; preds = %267
  %270 = shl nsw i32 -1, %265
  %271 = xor i32 %270, -1
  br label %272

272:                                              ; preds = %269, %267, %261
  %273 = phi i32 [ %271, %269 ], [ 32767, %261 ], [ 0, %267 ]
  %274 = getelementptr i8, ptr %258, i32 1416
  store i32 %273, ptr %274, align 8
  %275 = getelementptr i8, ptr %258, i32 1992
  store i32 0, ptr %275, align 8
  %276 = load ptr, ptr %57, align 4
  %277 = getelementptr inbounds %struct.cpsw_slave_data, ptr %276, i32 0, i32 4
  %278 = load i32, ptr %277, align 4
  %279 = and i32 %278, 1
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %281, label %289

281:                                              ; preds = %272
  %282 = getelementptr %struct.cpsw_slave_data, ptr %276, i32 0, i32 4, i32 4
  %283 = load i16, ptr %282, align 2
  %284 = zext i16 %283 to i32
  %285 = or i32 %278, %284
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %289, label %287

287:                                              ; preds = %281
  %288 = getelementptr i8, ptr %258, i32 1420
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(6) %288, ptr noundef align 4 dereferenceable(6) %277, i32 6, i1 false)
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %6, ptr noundef nonnull @.str.8, ptr noundef %288) #14
  br label %294

289:                                              ; preds = %281, %272
  %290 = getelementptr i8, ptr %258, i32 1420
  call void @get_random_bytes(ptr noundef %290, i32 noundef 6) #13
  %291 = load i8, ptr %290, align 1
  %292 = and i8 %291, -4
  %293 = or i8 %292, 2
  store i8 %293, ptr %290, align 1
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %6, ptr noundef nonnull @.str.9, ptr noundef %290) #14
  br label %294

294:                                              ; preds = %289, %287
  %295 = getelementptr i8, ptr %258, i32 1420
  call void @dev_addr_mod(ptr noundef nonnull %258, i32 noundef 0, ptr noundef %295, i32 noundef 6) #13
  %296 = load ptr, ptr %222, align 4
  %297 = getelementptr inbounds %struct.cpsw_slave, ptr %296, i32 0, i32 5
  store ptr %258, ptr %297, align 4
  %298 = getelementptr inbounds %struct.net_device, ptr %258, i32 0, i32 23
  %299 = load i64, ptr %298, align 16
  %300 = or i64 %299, 768
  store i64 %300, ptr %298, align 16
  %301 = getelementptr inbounds %struct.net_device, ptr %258, i32 0, i32 16
  store ptr @cpsw_netdev_ops, ptr %301, align 8
  %302 = getelementptr inbounds %struct.net_device, ptr %258, i32 0, i32 42
  store ptr @cpsw_ethtool_ops, ptr %302, align 8
  %303 = getelementptr inbounds %struct.cpsw_common, ptr %7, i32 0, i32 2
  %304 = load i8, ptr %237, align 8, !range !14
  %305 = icmp eq i8 %304, 0
  %306 = select i1 %305, ptr @cpsw_rx_mq_poll, ptr @cpsw_rx_poll
  call void @netif_napi_add(ptr noundef nonnull %258, ptr noundef %303, ptr noundef nonnull %306, i32 noundef 64) #13
  %307 = getelementptr inbounds %struct.cpsw_common, ptr %7, i32 0, i32 3
  %308 = load i8, ptr %237, align 8, !range !14
  %309 = icmp eq i8 %308, 0
  %310 = select i1 %309, ptr @cpsw_tx_mq_poll, ptr @cpsw_tx_poll
  call fastcc void @netif_tx_napi_add(ptr noundef nonnull %258, ptr noundef %307, ptr noundef nonnull %310)
  %311 = getelementptr inbounds %struct.net_device, ptr %258, i32 0, i32 111, i32 1
  store ptr %6, ptr %311, align 4
  %312 = load ptr, ptr %222, align 4
  %313 = getelementptr inbounds %struct.cpsw_slave, ptr %312, i32 0, i32 3
  %314 = load ptr, ptr %313, align 4
  %315 = load ptr, ptr %314, align 4
  %316 = getelementptr inbounds %struct.net_device, ptr %258, i32 0, i32 111, i32 25
  store ptr %315, ptr %316, align 16
  %317 = call i32 @register_netdev(ptr noundef nonnull %258) #13
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %320, label %319

319:                                              ; preds = %294
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.10) #14
  br label %393

320:                                              ; preds = %294
  %321 = getelementptr inbounds %struct.cpsw_common, ptr %7, i32 0, i32 1, i32 8
  %322 = load i8, ptr %321, align 2, !range !14
  %323 = icmp eq i8 %322, 0
  br i1 %323, label %336, label %324

324:                                              ; preds = %320
  %325 = call fastcc i32 @cpsw_probe_dual_emac(ptr noundef %262)
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %336, label %327

327:                                              ; preds = %324
  %328 = load i32, ptr %274, align 8
  %329 = and i32 %328, 2
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %391, label %331

331:                                              ; preds = %327
  %332 = call i32 @net_ratelimit() #13
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %391, label %334

334:                                              ; preds = %331
  %335 = load ptr, ptr %264, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %335, ptr noundef nonnull @.str.11) #14
  br label %391

336:                                              ; preds = %324, %320
  %337 = load i32, ptr %39, align 4
  %338 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %339 = load ptr, ptr %338, align 4
  %340 = icmp eq ptr %339, null
  br i1 %340, label %341, label %343

341:                                              ; preds = %336
  %342 = load ptr, ptr %6, align 4
  br label %343

343:                                              ; preds = %341, %336
  %344 = phi ptr [ %342, %341 ], [ %339, %336 ]
  %345 = call i32 @devm_request_threaded_irq(ptr noundef %6, i32 noundef %337, ptr noundef nonnull @cpsw_rx_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %344, ptr noundef %7) #13
  %346 = icmp slt i32 %345, 0
  br i1 %346, label %347, label %348

347:                                              ; preds = %343
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.12, i32 noundef %345) #14
  br label %391

348:                                              ; preds = %343
  %349 = load i32, ptr %43, align 4
  %350 = load ptr, ptr %338, align 4
  %351 = icmp eq ptr %350, null
  br i1 %351, label %352, label %354

352:                                              ; preds = %348
  %353 = load ptr, ptr %6, align 4
  br label %354

354:                                              ; preds = %352, %348
  %355 = phi ptr [ %353, %352 ], [ %350, %348 ]
  %356 = call i32 @devm_request_threaded_irq(ptr noundef %6, i32 noundef %349, ptr noundef nonnull @cpsw_tx_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %355, ptr noundef %7) #13
  %357 = icmp slt i32 %356, 0
  br i1 %357, label %358, label %359

358:                                              ; preds = %354
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.12, i32 noundef %356) #14
  br label %391

359:                                              ; preds = %354
  %360 = getelementptr inbounds %struct.cpsw_common, ptr %7, i32 0, i32 23
  %361 = load ptr, ptr %360, align 8
  %362 = icmp eq ptr %361, null
  br i1 %362, label %377, label %363

363:                                              ; preds = %359
  %364 = load i32, ptr %47, align 4
  %365 = load ptr, ptr %338, align 4
  %366 = icmp eq ptr %365, null
  br i1 %366, label %367, label %369

367:                                              ; preds = %363
  %368 = load ptr, ptr %6, align 4
  br label %369

369:                                              ; preds = %367, %363
  %370 = phi ptr [ %368, %367 ], [ %365, %363 ]
  %371 = call i32 @devm_request_threaded_irq(ptr noundef %6, i32 noundef %364, ptr noundef nonnull @cpsw_misc_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %370, ptr noundef %7) #13
  %372 = icmp slt i32 %371, 0
  br i1 %372, label %373, label %374

373:                                              ; preds = %369
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.13, i32 noundef %371) #14
  br label %391

374:                                              ; preds = %369
  %375 = load ptr, ptr %360, align 8
  %376 = getelementptr inbounds %struct.cpts, ptr %375, i32 0, i32 20
  store i8 0, ptr %376, align 8
  br label %377

377:                                              ; preds = %374, %359
  %378 = load i32, ptr %274, align 8
  %379 = and i32 %378, 2
  %380 = icmp eq i32 %379, 0
  br i1 %380, label %389, label %381

381:                                              ; preds = %377
  %382 = call i32 @net_ratelimit() #13
  %383 = icmp eq i32 %382, 0
  br i1 %383, label %389, label %384

384:                                              ; preds = %381
  %385 = load ptr, ptr %264, align 4
  %386 = load ptr, ptr %5, align 4
  %387 = load i32, ptr %39, align 4
  %388 = load i32, ptr @descs_pool_size, align 4
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %385, ptr noundef nonnull @.str.14, ptr noundef %386, i32 noundef %387, i32 noundef %388) #14
  br label %389

389:                                              ; preds = %384, %381, %377
  %390 = call i32 @__pm_runtime_idle(ptr noundef %6, i32 noundef 5) #13
  br label %404

391:                                              ; preds = %373, %358, %347, %334, %331, %327
  %392 = phi i32 [ %325, %334 ], [ %325, %331 ], [ %325, %327 ], [ %345, %347 ], [ %356, %358 ], [ %371, %373 ]
  call void @unregister_netdev(ptr noundef nonnull %258) #13
  br label %393

393:                                              ; preds = %391, %319, %260, %254, %246
  %394 = phi i32 [ %248, %246 ], [ %256, %254 ], [ -19, %319 ], [ %392, %391 ], [ -12, %260 ]
  %395 = getelementptr inbounds %struct.cpsw_common, ptr %7, i32 0, i32 23
  %396 = load ptr, ptr %395, align 8
  call void @cpts_release(ptr noundef %396) #13
  %397 = load ptr, ptr %241, align 8
  %398 = call i32 @cpdma_ctlr_destroy(ptr noundef %397) #13
  br label %399

399:                                              ; preds = %393, %224, %219, %217, %205, %203, %200
  %400 = phi i32 [ %206, %205 ], [ %234, %224 ], [ %394, %393 ], [ -12, %219 ], [ %201, %200 ], [ %204, %203 ], [ -12, %217 ]
  call fastcc void @cpsw_remove_dt(ptr noundef %0)
  %401 = call i32 @__pm_runtime_idle(ptr noundef %6, i32 noundef 4) #13
  br label %402

402:                                              ; preds = %399, %55, %50
  %403 = phi i32 [ %400, %399 ], [ %48, %50 ], [ %48, %55 ]
  call void @__pm_runtime_disable(ptr noundef %6, i1 noundef zeroext true) #13
  br label %404

404:                                              ; preds = %402, %389, %42, %38, %35, %33, %26, %18, %13, %1
  %405 = phi i32 [ %14, %13 ], [ %19, %18 ], [ %27, %26 ], [ %34, %33 ], [ %403, %402 ], [ 0, %389 ], [ -12, %1 ], [ %36, %35 ], [ %40, %38 ], [ %44, %42 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  ret i32 %405
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpsw_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = tail call i32 @__pm_runtime_resume(ptr noundef %4, i32 noundef 4) #13
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.cpsw_common, ptr %3, i32 0, i32 1, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %32, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.cpsw_common, ptr %3, i32 0, i32 13
  br label %19

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %14) #13, !srcloc !10
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %14, ptr %14, i32 0, i32 -1, ptr elementtype(i32) %14) #13, !srcloc !11
  %16 = extractvalue { i32, i32, i32 } %15, 0
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %39, label %18

18:                                               ; preds = %13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !12
  br label %39

19:                                               ; preds = %28, %11
  %20 = phi i32 [ %9, %11 ], [ %29, %28 ]
  %21 = phi i32 [ 0, %11 ], [ %30, %28 ]
  %22 = load ptr, ptr %12, align 4
  %23 = getelementptr %struct.cpsw_slave, ptr %22, i32 %21, i32 5
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %19
  tail call void @unregister_netdev(ptr noundef nonnull %24) #13
  %27 = load i32, ptr %8, align 4
  br label %28

28:                                               ; preds = %26, %19
  %29 = phi i32 [ %20, %19 ], [ %27, %26 ]
  %30 = add nuw i32 %21, 1
  %31 = icmp ult i32 %30, %29
  br i1 %31, label %19, label %32

32:                                               ; preds = %28, %7
  %33 = getelementptr inbounds %struct.cpsw_common, ptr %3, i32 0, i32 23
  %34 = load ptr, ptr %33, align 8
  tail call void @cpts_release(ptr noundef %34) #13
  %35 = getelementptr inbounds %struct.cpsw_common, ptr %3, i32 0, i32 14
  %36 = load ptr, ptr %35, align 8
  %37 = tail call i32 @cpdma_ctlr_destroy(ptr noundef %36) #13
  tail call fastcc void @cpsw_remove_dt(ptr noundef %0)
  %38 = tail call i32 @__pm_runtime_idle(ptr noundef %4, i32 noundef 4) #13
  tail call void @__pm_runtime_disable(ptr noundef %4, i1 noundef zeroext true) #13
  br label %39

39:                                               ; preds = %32, %18, %13
  %40 = phi i32 [ 0, %32 ], [ %5, %13 ], [ %5, %18 ]
  ret i32 %40
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @cpsw_slave_index_priv(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #4 {
  %3 = getelementptr inbounds %struct.cpsw_common, ptr %0, i32 0, i32 1, i32 8
  %4 = load i8, ptr %3, align 2, !range !14
  %5 = icmp eq i8 %4, 0
  %6 = getelementptr inbounds %struct.cpsw_priv, ptr %1, i32 0, i32 15
  %7 = getelementptr inbounds %struct.cpsw_common, ptr %0, i32 0, i32 1, i32 4
  %8 = select i1 %5, ptr %7, ptr %6
  %9 = load i32, ptr %8, align 4
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_array_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @soc_device_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_init_common(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cpdma_chan_create(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_tx_handler(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cpsw_rx_handler(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xdp_buff, align 4
  store i32 %1, ptr %4, align 4
  %6 = tail call ptr @page_address(ptr noundef %0) #13
  %7 = getelementptr i8, ptr %6, i32 24
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 1996
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.cpsw_common, ptr %10, i32 0, i32 11
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr i8, ptr %6, i32 28
  %14 = load i32, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %5, i8 0, i32 28, i1 false), !annotation !8
  %15 = getelementptr inbounds %struct.cpsw_common, ptr %10, i32 0, i32 1, i32 8
  %16 = load i8, ptr %15, align 2, !range !14
  %17 = icmp ne i8 %16, 0
  %18 = icmp sgt i32 %2, -1
  %19 = and i1 %18, %17
  br i1 %19, label %20, label %34

20:                                               ; preds = %3
  %21 = lshr i32 %2, 16
  %22 = and i32 %21, 7
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.cpsw_common, ptr %10, i32 0, i32 13
  %26 = load ptr, ptr %25, align 4
  %27 = add nsw i32 %22, -1
  %28 = getelementptr %struct.cpsw_slave, ptr %26, i32 %27, i32 5
  %29 = load ptr, ptr %28, align 4
  br label %30

30:                                               ; preds = %24, %20
  %31 = phi ptr [ %8, %20 ], [ %29, %24 ]
  %32 = getelementptr %struct.cpsw_common, ptr %10, i32 0, i32 29, i32 %14
  %33 = load ptr, ptr %32, align 4
  br label %38

34:                                               ; preds = %3
  %35 = getelementptr %struct.cpsw_common, ptr %10, i32 0, i32 29, i32 %14
  %36 = load ptr, ptr %35, align 4
  %37 = icmp slt i32 %2, 0
  br i1 %37, label %46, label %38, !prof !13

38:                                               ; preds = %34, %30
  %39 = phi ptr [ %33, %30 ], [ %36, %34 ]
  %40 = phi ptr [ %31, %30 ], [ %8, %34 ]
  %41 = getelementptr i8, ptr %40, i32 1408
  %42 = getelementptr inbounds %struct.net_device, ptr %40, i32 0, i32 6
  %43 = load volatile i32, ptr %42, align 4
  %44 = and i32 %43, 1
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %56, !prof !13

46:                                               ; preds = %38, %34
  %47 = phi ptr [ %39, %38 ], [ %36, %34 ]
  %48 = phi ptr [ %40, %38 ], [ %8, %34 ]
  %49 = icmp eq i8 %16, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.cpsw_common, ptr %10, i32 0, i32 28
  %52 = load i32, ptr %51, align 4
  %53 = icmp ne i32 %52, 0
  %54 = and i1 %18, %53
  br i1 %54, label %139, label %55

55:                                               ; preds = %50, %46
  tail call void @page_pool_put_page(ptr noundef %47, ptr noundef %0, i32 noundef -1, i1 noundef zeroext true) #13
  br label %157

56:                                               ; preds = %38
  %57 = tail call ptr @page_pool_alloc_pages(ptr noundef %39, i32 noundef 10784) #13
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %63, !prof !13

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.net_device, ptr %40, i32 0, i32 36, i32 6
  %61 = load i32, ptr %60, align 8
  %62 = add i32 %61, 1
  store i32 %62, ptr %60, align 8
  br label %139

63:                                               ; preds = %56
  %64 = getelementptr i8, ptr %40, i32 1460
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %94, label %67

67:                                               ; preds = %63
  %68 = getelementptr %struct.cpsw_priv, ptr %41, i32 0, i32 13, i32 %14
  %69 = getelementptr inbounds %struct.xdp_buff, ptr %5, i32 0, i32 6
  store i32 4096, ptr %69, align 4
  %70 = getelementptr inbounds %struct.xdp_buff, ptr %5, i32 0, i32 4
  store ptr %68, ptr %70, align 4
  %71 = and i32 %2, 524288
  %72 = icmp eq i32 %71, 0
  %73 = add i32 %1, -4
  %74 = select i1 %72, i32 258, i32 262
  %75 = select i1 %72, i32 %1, i32 %73
  %76 = getelementptr i8, ptr %6, i32 %74
  %77 = getelementptr inbounds %struct.xdp_buff, ptr %5, i32 0, i32 3
  store ptr %6, ptr %77, align 4
  store ptr %76, ptr %5, align 4
  %78 = getelementptr i8, ptr %76, i32 %75
  %79 = getelementptr inbounds %struct.xdp_buff, ptr %5, i32 0, i32 1
  store ptr %78, ptr %79, align 4
  %80 = getelementptr i8, ptr %76, i32 1
  %81 = getelementptr inbounds %struct.xdp_buff, ptr %5, i32 0, i32 2
  store ptr %80, ptr %81, align 4
  %82 = getelementptr i8, ptr %40, i32 1992
  %83 = load i32, ptr %82, align 8
  %84 = load i8, ptr %15, align 2, !range !14
  %85 = zext i8 %84 to i32
  %86 = add i32 %83, %85
  %87 = call i32 @cpsw_run_xdp(ptr noundef %41, i32 noundef %14, ptr noundef nonnull %5, ptr noundef %0, i32 noundef %86, ptr noundef nonnull %4) #13
  %88 = icmp eq i32 %87, 0
  %89 = load ptr, ptr %5, align 4
  %90 = load ptr, ptr %77, align 4
  %91 = ptrtoint ptr %89 to i32
  %92 = ptrtoint ptr %90 to i32
  %93 = sub i32 %91, %92
  br i1 %88, label %94, label %139

94:                                               ; preds = %67, %63
  %95 = phi i32 [ %93, %67 ], [ 258, %63 ]
  %96 = phi i32 [ 0, %67 ], [ %2, %63 ]
  %97 = add i32 %12, 579
  %98 = and i32 %97, -64
  %99 = call ptr @build_skb(ptr noundef %6, i32 noundef %98) #13
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %105

101:                                              ; preds = %94
  %102 = getelementptr inbounds %struct.net_device, ptr %40, i32 0, i32 36, i32 6
  %103 = load i32, ptr %102, align 8
  %104 = add i32 %103, 1
  store i32 %104, ptr %102, align 8
  call void @page_pool_put_page(ptr noundef %39, ptr noundef %0, i32 noundef -1, i1 noundef zeroext true) #13
  br label %139

105:                                              ; preds = %94
  %106 = getelementptr inbounds %struct.sk_buff, ptr %99, i32 0, i32 17
  %107 = load ptr, ptr %106, align 4
  %108 = getelementptr i8, ptr %107, i32 %95
  store ptr %108, ptr %106, align 4
  %109 = getelementptr inbounds %struct.sk_buff, ptr %99, i32 0, i32 14
  %110 = load ptr, ptr %109, align 8
  %111 = getelementptr i8, ptr %110, i32 %95
  store ptr %111, ptr %109, align 8
  %112 = load i32, ptr %4, align 4
  %113 = call ptr @skb_put(ptr noundef nonnull %99, i32 noundef %112) #13
  %114 = getelementptr inbounds %struct.anon.41, ptr %99, i32 0, i32 2
  store ptr %40, ptr %114, align 8
  %115 = and i32 %96, 524288
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %105
  call void @cpsw_rx_vlan_encap(ptr noundef nonnull %99) #13
  br label %118

118:                                              ; preds = %117, %105
  %119 = getelementptr i8, ptr %40, i32 1456
  %120 = load i32, ptr %119, align 16
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.cpsw_common, ptr %10, i32 0, i32 23
  %124 = load ptr, ptr %123, align 8
  call void @cpts_rx_timestamp(ptr noundef %124, ptr noundef nonnull %99) #13
  br label %125

125:                                              ; preds = %122, %118
  %126 = call zeroext i16 @eth_type_trans(ptr noundef nonnull %99, ptr noundef %40) #13
  %127 = getelementptr inbounds %struct.sk_buff, ptr %99, i32 0, i32 13, i32 0, i32 16
  store i16 %126, ptr %127, align 8
  %128 = getelementptr inbounds %struct.sk_buff, ptr %99, i32 0, i32 11
  %129 = load i8, ptr %128, align 2
  %130 = or i8 %129, -128
  store i8 %130, ptr %128, align 2
  %131 = call i32 @netif_receive_skb(ptr noundef nonnull %99) #13
  %132 = load i32, ptr %4, align 4
  %133 = getelementptr inbounds %struct.net_device, ptr %40, i32 0, i32 36
  %134 = getelementptr inbounds %struct.net_device, ptr %40, i32 0, i32 36, i32 2
  %135 = load i32, ptr %134, align 8
  %136 = add i32 %135, %132
  store i32 %136, ptr %134, align 8
  %137 = load i32, ptr %133, align 8
  %138 = add i32 %137, 1
  store i32 %138, ptr %133, align 8
  br label %139

139:                                              ; preds = %125, %101, %67, %59, %50
  %140 = phi ptr [ %39, %59 ], [ %39, %67 ], [ %39, %125 ], [ %39, %101 ], [ %47, %50 ]
  %141 = phi ptr [ %40, %59 ], [ %40, %67 ], [ %40, %125 ], [ %40, %101 ], [ %48, %50 ]
  %142 = phi ptr [ %0, %59 ], [ %57, %67 ], [ %57, %125 ], [ %57, %101 ], [ %0, %50 ]
  %143 = call ptr @page_address(ptr noundef %142) #13
  %144 = getelementptr i8, ptr %143, i32 24
  store ptr %141, ptr %144, align 4
  %145 = getelementptr i8, ptr %143, i32 28
  store i32 %14, ptr %145, align 4
  %146 = getelementptr inbounds %struct.page, ptr %142, i32 0, i32 1, i32 0, i32 2
  %147 = load i32, ptr %146, align 4
  %148 = add i32 %147, 258
  %149 = getelementptr %struct.cpsw_common, ptr %10, i32 0, i32 16, i32 %14
  %150 = load ptr, ptr %149, align 4
  %151 = call i32 @cpdma_chan_submit_mapped(ptr noundef %150, ptr noundef %142, i32 noundef %148, i32 noundef %12, i32 noundef 0) #13
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %139
  %154 = icmp eq i32 %151, -12
  br i1 %154, label %155, label %156, !prof !13

155:                                              ; preds = %153
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.42, i32 noundef 449, i32 noundef 9, ptr noundef null) #13
  br label %156

156:                                              ; preds = %155, %153
  call void @page_pool_put_page(ptr noundef %140, ptr noundef %142, i32 noundef -1, i1 noundef zeroext true) #13
  br label %157

157:                                              ; preds = %156, %139, %55
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_split_res(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_alloc_etherdev_mqs(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_rx_poll(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_rx_mq_poll(ptr noundef, i32 noundef) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @netif_tx_napi_add(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #7 {
  %4 = getelementptr inbounds %struct.napi_struct, ptr %1, i32 0, i32 1
  tail call void @_set_bit(i32 noundef 5, ptr noundef %4) #13
  tail call void @netif_napi_add(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 64) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_tx_poll(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_tx_mq_poll(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cpsw_probe_dual_emac(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.cpsw_priv, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.cpsw_common, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %3, align 8
  %6 = tail call ptr @devm_alloc_etherdev_mqs(ptr noundef %5, i32 noundef 640, i32 noundef 8, i32 noundef 8) #13
  %7 = icmp eq ptr %6, null
  br i1 %7, label %63, label %8

8:                                                ; preds = %1
  %9 = getelementptr i8, ptr %6, i32 1408
  %10 = getelementptr i8, ptr %6, i32 1996
  store ptr %3, ptr %10, align 4
  store ptr %6, ptr %9, align 64
  %11 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 111
  %12 = getelementptr i8, ptr %6, i32 1412
  store ptr %11, ptr %12, align 4
  %13 = load i32, ptr @debug_level, align 4
  %14 = icmp ugt i32 %13, 31
  br i1 %14, label %20, label %15

15:                                               ; preds = %8
  %16 = icmp eq i32 %13, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %15
  %18 = shl nsw i32 -1, %13
  %19 = xor i32 %18, -1
  br label %20

20:                                               ; preds = %17, %15, %8
  %21 = phi i32 [ %19, %17 ], [ 32767, %8 ], [ 0, %15 ]
  %22 = getelementptr i8, ptr %6, i32 1416
  store i32 %21, ptr %22, align 8
  %23 = load ptr, ptr %4, align 4
  %24 = getelementptr %struct.cpsw_slave_data, ptr %23, i32 1, i32 4
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %20
  %29 = getelementptr %struct.cpsw_slave_data, ptr %23, i32 1, i32 4, i32 4
  %30 = load i16, ptr %29, align 2
  %31 = zext i16 %30 to i32
  %32 = or i32 %25, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  %35 = getelementptr i8, ptr %6, i32 1420
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(6) %35, ptr noundef align 4 dereferenceable(6) %24, i32 6, i1 false)
  %36 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %36, ptr noundef nonnull @.str.58, ptr noundef %35) #14
  br label %43

37:                                               ; preds = %28, %20
  %38 = getelementptr i8, ptr %6, i32 1420
  tail call void @get_random_bytes(ptr noundef %38, i32 noundef 6) #13
  %39 = load i8, ptr %38, align 1
  %40 = and i8 %39, -4
  %41 = or i8 %40, 2
  store i8 %41, ptr %38, align 1
  %42 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %42, ptr noundef nonnull @.str.59, ptr noundef %38) #14
  br label %43

43:                                               ; preds = %37, %34
  %44 = getelementptr i8, ptr %6, i32 1420
  tail call void @dev_addr_mod(ptr noundef nonnull %6, i32 noundef 0, ptr noundef %44, i32 noundef 6) #13
  %45 = getelementptr i8, ptr %6, i32 1992
  store i32 1, ptr %45, align 8
  %46 = getelementptr inbounds %struct.cpsw_common, ptr %3, i32 0, i32 13
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr %struct.cpsw_slave, ptr %47, i32 1, i32 5
  store ptr %6, ptr %48, align 4
  %49 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 23
  %50 = load i64, ptr %49, align 16
  %51 = or i64 %50, 768
  store i64 %51, ptr %49, align 16
  %52 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 16
  store ptr @cpsw_netdev_ops, ptr %52, align 8
  %53 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 42
  store ptr @cpsw_ethtool_ops, ptr %53, align 8
  %54 = load ptr, ptr %3, align 8
  %55 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 111, i32 1
  store ptr %54, ptr %55, align 4
  %56 = load ptr, ptr %46, align 4
  %57 = getelementptr %struct.cpsw_slave, ptr %56, i32 1, i32 3
  %58 = load ptr, ptr %57, align 4
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 111, i32 25
  store ptr %59, ptr %60, align 16
  %61 = tail call i32 @register_netdev(ptr noundef nonnull %6) #13
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %43, %1
  %64 = phi ptr [ @.str.57, %1 ], [ @.str.60, %43 ]
  %65 = phi i32 [ -12, %1 ], [ %61, %43 ]
  %66 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull %64) #14
  br label %67

67:                                               ; preds = %63, %43
  %68 = phi i32 [ 0, %43 ], [ %65, %63 ]
  ret i32 %68
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_rx_interrupt(i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_tx_interrupt(i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_misc_interrupt(i32 noundef, ptr noundef) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpts_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpdma_ctlr_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @cpsw_remove_dt(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.cpsw_common, ptr %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = tail call ptr @of_get_next_available_child(ptr noundef %6, ptr noundef null) #13
  %8 = icmp eq ptr %7, null
  br i1 %8, label %30, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.cpsw_common, ptr %3, i32 0, i32 1, i32 3
  br label %11

11:                                               ; preds = %26, %9
  %12 = phi i32 [ 0, %9 ], [ %27, %26 ]
  %13 = phi ptr [ %7, %9 ], [ %28, %26 ]
  %14 = load ptr, ptr %4, align 4
  %15 = tail call zeroext i1 @of_node_name_eq(ptr noundef nonnull %13, ptr noundef nonnull @.str.27) #13
  br i1 %15, label %16, label %26

16:                                               ; preds = %11
  %17 = tail call zeroext i1 @of_phy_is_fixed_link(ptr noundef nonnull %13) #13
  br i1 %17, label %18, label %19

18:                                               ; preds = %16
  tail call void @of_phy_deregister_fixed_link(ptr noundef nonnull %13) #13
  br label %19

19:                                               ; preds = %18, %16
  %20 = getelementptr %struct.cpsw_slave_data, ptr %14, i32 %12, i32 1
  %21 = load ptr, ptr %20, align 4
  tail call void @of_node_put(ptr noundef %21) #13
  %22 = add i32 %12, 1
  %23 = load i32, ptr %10, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  tail call void @of_node_put(ptr noundef nonnull %13) #13
  br label %30

26:                                               ; preds = %19, %11
  %27 = phi i32 [ %22, %19 ], [ %12, %11 ]
  %28 = tail call ptr @of_get_next_available_child(ptr noundef %6, ptr noundef nonnull %13) #13
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %11

30:                                               ; preds = %26, %25, %1
  %31 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @of_platform_depopulate(ptr noundef %31) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_populate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_node_name_eq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_of_phy_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_phy_is_fixed_link(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_phy_register_fixed_link(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_by_phandle(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_phy_mode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_mac_address(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ti_cm_get_macid(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_run_xdp(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @build_skb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_rx_vlan_encap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpts_rx_timestamp(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_receive_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpdma_chan_submit_mapped(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_pool_put_page(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_pool_alloc_pages(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpsw_ndo_open(ptr noundef %0) #2 {
  %2 = alloca %struct.ethtool_coalesce, align 4
  %3 = getelementptr i8, ptr %0, i32 1408
  %4 = getelementptr i8, ptr %0, i32 1996
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @__pm_runtime_resume(ptr noundef %6, i32 noundef 4) #13
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load ptr, ptr %5, align 8
  %11 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %11) #13, !srcloc !10
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %11, ptr %11, i32 0, i32 -1, ptr elementtype(i32) %11) #13, !srcloc !11
  %13 = extractvalue { i32, i32, i32 } %12, 0
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %203, label %15

15:                                               ; preds = %9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !12
  br label %203

16:                                               ; preds = %1
  tail call void @netif_carrier_off(ptr noundef %0) #13
  %17 = getelementptr inbounds %struct.cpsw_common, ptr %5, i32 0, i32 26
  %18 = load i32, ptr %17, align 4
  %19 = tail call i32 @netif_set_real_num_tx_queues(ptr noundef %0, i32 noundef %18) #13
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %133

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.cpsw_common, ptr %5, i32 0, i32 25
  %23 = load i32, ptr %22, align 8
  %24 = tail call i32 @netif_set_real_num_rx_queues(ptr noundef %0, i32 noundef %23) #13
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %133

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.cpsw_common, ptr %5, i32 0, i32 8
  %28 = load i32, ptr %27, align 8
  %29 = getelementptr i8, ptr %0, i32 1412
  %30 = load ptr, ptr %29, align 4
  %31 = lshr i32 %28, 8
  %32 = and i32 %31, 7
  %33 = and i32 %28, 255
  %34 = lshr i32 %28, 11
  %35 = and i32 %34, 31
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %30, ptr noundef nonnull @.str.45, i32 noundef %32, i32 noundef %33, i32 noundef %35) #14
  %36 = getelementptr inbounds %struct.cpsw_common, ptr %5, i32 0, i32 28
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %26
  tail call fastcc void @cpsw_init_host_port(ptr noundef %3)
  br label %40

40:                                               ; preds = %39, %26
  %41 = load ptr, ptr %4, align 4
  %42 = getelementptr inbounds %struct.cpsw_common, ptr %41, i32 0, i32 1, i32 8
  %43 = load i8, ptr %42, align 2, !range !14
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.cpsw_common, ptr %41, i32 0, i32 13
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr i8, ptr %0, i32 1992
  %49 = load i32, ptr %48, align 8
  %50 = getelementptr %struct.cpsw_slave, ptr %47, i32 %49
  tail call fastcc void @cpsw_slave_open(ptr noundef %50, ptr noundef %3)
  br label %64

51:                                               ; preds = %40
  %52 = getelementptr inbounds %struct.cpsw_common, ptr %41, i32 0, i32 1, i32 3
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %64, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.cpsw_common, ptr %41, i32 0, i32 13
  %57 = load ptr, ptr %56, align 4
  br label %58

58:                                               ; preds = %58, %55
  %59 = phi i32 [ %62, %58 ], [ %53, %55 ]
  %60 = phi ptr [ %61, %58 ], [ %57, %55 ]
  %61 = getelementptr %struct.cpsw_slave, ptr %60, i32 1
  tail call fastcc void @cpsw_slave_open(ptr noundef %60, ptr noundef %3)
  %62 = add i32 %59, -1
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %58

64:                                               ; preds = %58, %51, %45
  %65 = getelementptr inbounds %struct.cpsw_common, ptr %5, i32 0, i32 1, i32 8
  %66 = load i8, ptr %65, align 2, !range !14
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  tail call fastcc void @cpsw_add_default_vlan(ptr noundef %3)
  br label %75

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.cpsw_common, ptr %5, i32 0, i32 17
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.cpsw_common, ptr %5, i32 0, i32 1, i32 7
  %73 = load i16, ptr %72, align 4
  %74 = tail call i32 @cpsw_ale_add_vlan(ptr noundef %71, i16 noundef zeroext %73, i32 noundef 7, i32 noundef 7, i32 noundef 0, i32 noundef 0) #13
  br label %75

75:                                               ; preds = %69, %68
  %76 = load i32, ptr %36, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %120

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.cpsw_common, ptr %5, i32 0, i32 4
  %80 = load ptr, ptr %79, align 8
  %81 = getelementptr inbounds %struct.cpsw_ss_regs, ptr %80, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 0) #13, !srcloc !15
  %82 = load ptr, ptr %79, align 8
  %83 = getelementptr inbounds %struct.cpsw_ss_regs, ptr %82, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %83, i32 7) #13, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !16
  tail call void @arm_heavy_mb() #13
  %84 = load ptr, ptr %79, align 8
  %85 = getelementptr inbounds %struct.cpsw_ss_regs, ptr %84, i32 0, i32 9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %85, i32 7) #13, !srcloc !15
  %86 = getelementptr inbounds %struct.cpsw_common, ptr %5, i32 0, i32 2
  tail call void @napi_enable(ptr noundef %86) #13
  %87 = getelementptr inbounds %struct.cpsw_common, ptr %5, i32 0, i32 3
  tail call void @napi_enable(ptr noundef %87) #13
  %88 = getelementptr inbounds %struct.cpsw_common, ptr %5, i32 0, i32 20
  %89 = load i8, ptr %88, align 2, !range !14
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %78
  store i8 0, ptr %88, align 2
  %92 = getelementptr %struct.cpsw_common, ptr %5, i32 0, i32 21, i32 1
  %93 = load i32, ptr %92, align 4
  tail call void @enable_irq(i32 noundef %93) #13
  br label %94

94:                                               ; preds = %91, %78
  %95 = getelementptr inbounds %struct.cpsw_common, ptr %5, i32 0, i32 19
  %96 = load i8, ptr %95, align 1, !range !14
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %94
  store i8 0, ptr %95, align 1
  %99 = getelementptr inbounds %struct.cpsw_common, ptr %5, i32 0, i32 21
  %100 = load i32, ptr %99, align 4
  tail call void @enable_irq(i32 noundef %100) #13
  br label %101

101:                                              ; preds = %98, %94
  %102 = tail call i32 @cpsw_create_xdp_rxqs(ptr noundef %5) #13
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %138, label %104

104:                                              ; preds = %101
  %105 = tail call i32 @cpsw_fill_rx_channels(ptr noundef %3) #13
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %138, label %107

107:                                              ; preds = %104
  %108 = getelementptr inbounds %struct.cpsw_common, ptr %5, i32 0, i32 23
  %109 = load ptr, ptr %108, align 8
  %110 = icmp eq ptr %109, null
  br i1 %110, label %120, label %111

111:                                              ; preds = %107
  %112 = tail call i32 @cpts_register(ptr noundef nonnull %109) #13
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %116, label %114

114:                                              ; preds = %111
  %115 = load ptr, ptr %29, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %115, ptr noundef nonnull @.str.46) #14
  br label %120

116:                                              ; preds = %111
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !17
  tail call void @arm_heavy_mb() #13
  %117 = getelementptr inbounds %struct.cpsw_common, ptr %5, i32 0, i32 5
  %118 = load ptr, ptr %117, align 4
  %119 = getelementptr inbounds %struct.cpsw_wr_regs, ptr %118, i32 0, i32 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %119, i32 16) #13, !srcloc !15
  br label %120

120:                                              ; preds = %116, %114, %107, %75
  tail call fastcc void @cpsw_restore(ptr noundef %3)
  %121 = getelementptr inbounds %struct.cpsw_common, ptr %5, i32 0, i32 9
  %122 = load i32, ptr %121, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %127, label %124

124:                                              ; preds = %120
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %2) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(92) %2, i8 0, i32 92, i1 false), !annotation !8
  %125 = getelementptr inbounds %struct.ethtool_coalesce, ptr %2, i32 0, i32 1
  store i32 %122, ptr %125, align 4
  %126 = call i32 @cpsw_set_coalesce(ptr noundef %0, ptr noundef nonnull %2, ptr noundef null, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %2) #13
  br label %127

127:                                              ; preds = %124, %120
  %128 = getelementptr inbounds %struct.cpsw_common, ptr %5, i32 0, i32 14
  %129 = load ptr, ptr %128, align 8
  %130 = call i32 @cpdma_ctlr_start(ptr noundef %129) #13
  call void @cpsw_intr_enable(ptr noundef %5) #13
  %131 = load i32, ptr %36, align 4
  %132 = add i32 %131, 1
  store i32 %132, ptr %36, align 4
  br label %203

133:                                              ; preds = %21, %16
  %134 = phi ptr [ @.str.43, %16 ], [ @.str.44, %21 ]
  %135 = phi i32 [ %19, %16 ], [ %24, %21 ]
  %136 = getelementptr i8, ptr %0, i32 1412
  %137 = load ptr, ptr %136, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %137, ptr noundef nonnull %134) #14
  br label %138

138:                                              ; preds = %133, %104, %101
  %139 = phi i32 [ %102, %101 ], [ %105, %104 ], [ %135, %133 ]
  %140 = getelementptr inbounds %struct.cpsw_common, ptr %5, i32 0, i32 28
  %141 = load i32, ptr %140, align 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %138
  %144 = getelementptr inbounds %struct.cpsw_common, ptr %5, i32 0, i32 14
  %145 = load ptr, ptr %144, align 8
  %146 = tail call i32 @cpdma_ctlr_stop(ptr noundef %145) #13
  tail call void @cpsw_destroy_xdp_rxqs(ptr noundef %5) #13
  br label %147

147:                                              ; preds = %143, %138
  %148 = load ptr, ptr %4, align 4
  %149 = getelementptr inbounds %struct.cpsw_common, ptr %148, i32 0, i32 1, i32 8
  %150 = load i8, ptr %149, align 2, !range !14
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %171, label %152

152:                                              ; preds = %147
  %153 = getelementptr inbounds %struct.cpsw_common, ptr %148, i32 0, i32 13
  %154 = load ptr, ptr %153, align 4
  %155 = getelementptr i8, ptr %0, i32 1992
  %156 = load i32, ptr %155, align 8
  %157 = getelementptr %struct.cpsw_slave, ptr %154, i32 %156, i32 4
  %158 = load ptr, ptr %157, align 4
  %159 = icmp eq ptr %158, null
  br i1 %159, label %199, label %160

160:                                              ; preds = %152
  %161 = getelementptr %struct.cpsw_slave, ptr %154, i32 %156, i32 1
  %162 = load i32, ptr %161, align 4
  %163 = add i32 %162, 1
  tail call void @phy_stop(ptr noundef nonnull %158) #13
  %164 = load ptr, ptr %157, align 4
  tail call void @phy_disconnect(ptr noundef %164) #13
  store ptr null, ptr %157, align 4
  %165 = getelementptr inbounds %struct.cpsw_common, ptr %148, i32 0, i32 17
  %166 = load ptr, ptr %165, align 4
  %167 = tail call i32 @cpsw_ale_control_set(ptr noundef %166, i32 noundef %163, i32 noundef 12, i32 noundef 0) #13
  %168 = getelementptr %struct.cpsw_slave, ptr %154, i32 %156, i32 7
  %169 = load ptr, ptr %168, align 4
  tail call void @cpsw_sl_reset(ptr noundef %169, i32 noundef 100) #13
  %170 = load ptr, ptr %168, align 4
  tail call void @cpsw_sl_ctl_reset(ptr noundef %170) #13
  br label %199

171:                                              ; preds = %147
  %172 = getelementptr inbounds %struct.cpsw_common, ptr %148, i32 0, i32 1, i32 3
  %173 = load i32, ptr %172, align 4
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %199, label %175

175:                                              ; preds = %171
  %176 = getelementptr inbounds %struct.cpsw_common, ptr %148, i32 0, i32 13
  %177 = load ptr, ptr %176, align 4
  %178 = getelementptr inbounds %struct.cpsw_common, ptr %148, i32 0, i32 17
  br label %179

179:                                              ; preds = %196, %175
  %180 = phi i32 [ %173, %175 ], [ %197, %196 ]
  %181 = phi ptr [ %177, %175 ], [ %182, %196 ]
  %182 = getelementptr %struct.cpsw_slave, ptr %181, i32 1
  %183 = getelementptr inbounds %struct.cpsw_slave, ptr %181, i32 0, i32 4
  %184 = load ptr, ptr %183, align 4
  %185 = icmp eq ptr %184, null
  br i1 %185, label %196, label %186

186:                                              ; preds = %179
  %187 = getelementptr inbounds %struct.cpsw_slave, ptr %181, i32 0, i32 1
  %188 = load i32, ptr %187, align 4
  %189 = add i32 %188, 1
  tail call void @phy_stop(ptr noundef nonnull %184) #13
  %190 = load ptr, ptr %183, align 4
  tail call void @phy_disconnect(ptr noundef %190) #13
  store ptr null, ptr %183, align 4
  %191 = load ptr, ptr %178, align 4
  %192 = tail call i32 @cpsw_ale_control_set(ptr noundef %191, i32 noundef %189, i32 noundef 12, i32 noundef 0) #13
  %193 = getelementptr inbounds %struct.cpsw_slave, ptr %181, i32 0, i32 7
  %194 = load ptr, ptr %193, align 4
  tail call void @cpsw_sl_reset(ptr noundef %194, i32 noundef 100) #13
  %195 = load ptr, ptr %193, align 4
  tail call void @cpsw_sl_ctl_reset(ptr noundef %195) #13
  br label %196

196:                                              ; preds = %186, %179
  %197 = add i32 %180, -1
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %179

199:                                              ; preds = %196, %171, %160, %152
  %200 = load ptr, ptr %5, align 8
  %201 = tail call i32 @__pm_runtime_idle(ptr noundef %200, i32 noundef 4) #13
  %202 = load ptr, ptr %3, align 64
  tail call void @netif_carrier_off(ptr noundef %202) #13
  br label %203

203:                                              ; preds = %199, %127, %15, %9
  %204 = phi i32 [ %139, %199 ], [ 0, %127 ], [ %7, %9 ], [ %7, %15 ]
  ret i32 %204
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpsw_ndo_stop(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 1408
  %3 = getelementptr i8, ptr %0, i32 1996
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 1416
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = tail call i32 @net_ratelimit() #13
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = getelementptr i8, ptr %0, i32 1412
  %14 = load ptr, ptr %13, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %14, ptr noundef nonnull @.str.50) #14
  br label %15

15:                                               ; preds = %12, %9, %1
  %16 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 61
  tail call void @__hw_addr_ref_unsync_dev(ptr noundef %16, ptr noundef %0, ptr noundef nonnull @cpsw_purge_all_mc) #13
  %17 = load ptr, ptr %2, align 64
  tail call void @netif_tx_stop_all_queues(ptr noundef %17) #13
  %18 = load ptr, ptr %2, align 64
  tail call void @netif_carrier_off(ptr noundef %18) #13
  %19 = getelementptr inbounds %struct.cpsw_common, ptr %4, i32 0, i32 28
  %20 = load i32, ptr %19, align 4
  %21 = icmp slt i32 %20, 2
  br i1 %21, label %22, label %32

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.cpsw_common, ptr %4, i32 0, i32 2
  tail call void @napi_disable(ptr noundef %23) #13
  %24 = getelementptr inbounds %struct.cpsw_common, ptr %4, i32 0, i32 3
  tail call void @napi_disable(ptr noundef %24) #13
  %25 = getelementptr inbounds %struct.cpsw_common, ptr %4, i32 0, i32 23
  %26 = load ptr, ptr %25, align 8
  tail call void @cpts_unregister(ptr noundef %26) #13
  tail call void @cpsw_intr_disable(ptr noundef %4) #13
  %27 = getelementptr inbounds %struct.cpsw_common, ptr %4, i32 0, i32 14
  %28 = load ptr, ptr %27, align 8
  %29 = tail call i32 @cpdma_ctlr_stop(ptr noundef %28) #13
  %30 = getelementptr inbounds %struct.cpsw_common, ptr %4, i32 0, i32 17
  %31 = load ptr, ptr %30, align 4
  tail call void @cpsw_ale_stop(ptr noundef %31) #13
  tail call void @cpsw_destroy_xdp_rxqs(ptr noundef %4) #13
  br label %32

32:                                               ; preds = %22, %15
  %33 = load ptr, ptr %3, align 4
  %34 = getelementptr inbounds %struct.cpsw_common, ptr %33, i32 0, i32 1, i32 8
  %35 = load i8, ptr %34, align 2, !range !14
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %56, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.cpsw_common, ptr %33, i32 0, i32 13
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr i8, ptr %0, i32 1992
  %41 = load i32, ptr %40, align 8
  %42 = getelementptr %struct.cpsw_slave, ptr %39, i32 %41, i32 4
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %84, label %45

45:                                               ; preds = %37
  %46 = getelementptr %struct.cpsw_slave, ptr %39, i32 %41, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = add i32 %47, 1
  tail call void @phy_stop(ptr noundef nonnull %43) #13
  %49 = load ptr, ptr %42, align 4
  tail call void @phy_disconnect(ptr noundef %49) #13
  store ptr null, ptr %42, align 4
  %50 = getelementptr inbounds %struct.cpsw_common, ptr %33, i32 0, i32 17
  %51 = load ptr, ptr %50, align 4
  %52 = tail call i32 @cpsw_ale_control_set(ptr noundef %51, i32 noundef %48, i32 noundef 12, i32 noundef 0) #13
  %53 = getelementptr %struct.cpsw_slave, ptr %39, i32 %41, i32 7
  %54 = load ptr, ptr %53, align 4
  tail call void @cpsw_sl_reset(ptr noundef %54, i32 noundef 100) #13
  %55 = load ptr, ptr %53, align 4
  tail call void @cpsw_sl_ctl_reset(ptr noundef %55) #13
  br label %84

56:                                               ; preds = %32
  %57 = getelementptr inbounds %struct.cpsw_common, ptr %33, i32 0, i32 1, i32 3
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %84, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.cpsw_common, ptr %33, i32 0, i32 13
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.cpsw_common, ptr %33, i32 0, i32 17
  br label %64

64:                                               ; preds = %81, %60
  %65 = phi i32 [ %58, %60 ], [ %82, %81 ]
  %66 = phi ptr [ %62, %60 ], [ %67, %81 ]
  %67 = getelementptr %struct.cpsw_slave, ptr %66, i32 1
  %68 = getelementptr inbounds %struct.cpsw_slave, ptr %66, i32 0, i32 4
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %81, label %71

71:                                               ; preds = %64
  %72 = getelementptr inbounds %struct.cpsw_slave, ptr %66, i32 0, i32 1
  %73 = load i32, ptr %72, align 4
  %74 = add i32 %73, 1
  tail call void @phy_stop(ptr noundef nonnull %69) #13
  %75 = load ptr, ptr %68, align 4
  tail call void @phy_disconnect(ptr noundef %75) #13
  store ptr null, ptr %68, align 4
  %76 = load ptr, ptr %63, align 4
  %77 = tail call i32 @cpsw_ale_control_set(ptr noundef %76, i32 noundef %74, i32 noundef 12, i32 noundef 0) #13
  %78 = getelementptr inbounds %struct.cpsw_slave, ptr %66, i32 0, i32 7
  %79 = load ptr, ptr %78, align 4
  tail call void @cpsw_sl_reset(ptr noundef %79, i32 noundef 100) #13
  %80 = load ptr, ptr %78, align 4
  tail call void @cpsw_sl_ctl_reset(ptr noundef %80) #13
  br label %81

81:                                               ; preds = %71, %64
  %82 = add i32 %65, -1
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %64

84:                                               ; preds = %81, %56, %45, %37
  %85 = tail call i32 @cpsw_need_resplit(ptr noundef %4) #13
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %84
  tail call void @cpsw_split_res(ptr noundef %4) #13
  br label %88

88:                                               ; preds = %87, %84
  %89 = load i32, ptr %19, align 4
  %90 = add i32 %89, -1
  store i32 %90, ptr %19, align 4
  %91 = load ptr, ptr %4, align 8
  %92 = tail call i32 @__pm_runtime_idle(ptr noundef %91, i32 noundef 4) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpsw_ndo_start_xmit(ptr noundef %0, ptr nocapture noundef %1) #2 {
  %3 = getelementptr i8, ptr %1, i32 1996
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %6 = load i32, ptr %5, align 8
  %7 = icmp ult i32 %6, 60
  br i1 %7, label %8, label %38, !prof !13

8:                                                ; preds = %2
  %9 = sub nuw nsw i32 60, %6
  %10 = tail call i32 @__skb_pad(ptr noundef %0, i32 noundef %9, i1 noundef zeroext true) #13
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16, !prof !18

16:                                               ; preds = %12
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #13, !srcloc !19
  unreachable

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr i8, ptr %19, i32 %9
  store ptr %20, ptr %18, align 8
  %21 = load i32, ptr %5, align 8
  %22 = add i32 %21, %9
  store i32 %22, ptr %5, align 8
  br label %38

23:                                               ; preds = %8
  %24 = getelementptr i8, ptr %1, i32 1416
  %25 = load i32, ptr %24, align 8
  %26 = and i32 %25, 128
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %23
  %29 = tail call i32 @net_ratelimit() #13
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = getelementptr i8, ptr %1, i32 1412
  %33 = load ptr, ptr %32, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.51) #14
  br label %34

34:                                               ; preds = %31, %28, %23
  %35 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 7
  %36 = load i32, ptr %35, align 4
  %37 = add i32 %36, 1
  store i32 %37, ptr %35, align 4
  br label %115

38:                                               ; preds = %17, %2
  %39 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.skb_shared_info, ptr %40, i32 0, i32 3
  %42 = load i8, ptr %41, align 1
  %43 = and i8 %42, 1
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %57, label %45

45:                                               ; preds = %38
  %46 = getelementptr i8, ptr %1, i32 1452
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %45
  %50 = tail call i32 @ptp_classify_raw(ptr noundef %0) #13
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %49
  %53 = load ptr, ptr %39, align 4
  %54 = getelementptr inbounds %struct.skb_shared_info, ptr %53, i32 0, i32 3
  %55 = load i8, ptr %54, align 1
  %56 = or i8 %55, 4
  store i8 %56, ptr %54, align 1
  br label %57

57:                                               ; preds = %52, %49, %45, %38
  %58 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 9
  %59 = load i16, ptr %58, align 4
  %60 = zext i16 %59 to i32
  %61 = getelementptr inbounds %struct.cpsw_common, ptr %4, i32 0, i32 26
  %62 = load i32, ptr %61, align 4
  %63 = icmp sgt i32 %62, %60
  br i1 %63, label %66, label %64

64:                                               ; preds = %57
  %65 = srem i32 %60, %62
  br label %66

66:                                               ; preds = %64, %57
  %67 = phi i32 [ %65, %64 ], [ %60, %57 ]
  %68 = getelementptr %struct.cpsw_common, ptr %4, i32 0, i32 15, i32 %67
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 87
  %71 = load ptr, ptr %70, align 64
  %72 = getelementptr %struct.netdev_queue, ptr %71, i32 %67
  %73 = load ptr, ptr %39, align 4
  %74 = getelementptr inbounds %struct.skb_shared_info, ptr %73, i32 0, i32 3
  %75 = load i8, ptr %74, align 1
  %76 = and i8 %75, 2
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %66
  tail call void @skb_tstamp_tx(ptr noundef %0, ptr noundef null) #13
  br label %79

79:                                               ; preds = %78, %66
  %80 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %81 = load ptr, ptr %80, align 4
  %82 = load i32, ptr %5, align 8
  %83 = getelementptr i8, ptr %1, i32 1992
  %84 = load i32, ptr %83, align 8
  %85 = getelementptr inbounds %struct.cpsw_common, ptr %4, i32 0, i32 1, i32 8
  %86 = load i8, ptr %85, align 2, !range !14
  %87 = zext i8 %86 to i32
  %88 = add i32 %84, %87
  %89 = tail call i32 @cpdma_chan_submit(ptr noundef %69, ptr noundef %0, ptr noundef %81, i32 noundef %82, i32 noundef %88) #13
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %102, label %91, !prof !18

91:                                               ; preds = %79
  %92 = getelementptr i8, ptr %1, i32 1416
  %93 = load i32, ptr %92, align 8
  %94 = and i32 %93, 128
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %108, label %96

96:                                               ; preds = %91
  %97 = tail call i32 @net_ratelimit() #13
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %108, label %99

99:                                               ; preds = %96
  %100 = getelementptr i8, ptr %1, i32 1412
  %101 = load ptr, ptr %100, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %101, ptr noundef nonnull @.str.52) #14
  br label %108

102:                                              ; preds = %79
  %103 = tail call zeroext i1 @cpdma_check_free_tx_desc(ptr noundef %69) #13
  br i1 %103, label %115, label %104, !prof !18

104:                                              ; preds = %102
  %105 = getelementptr %struct.netdev_queue, ptr %71, i32 %67, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %105) #13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !20
  %106 = tail call zeroext i1 @cpdma_check_free_tx_desc(ptr noundef %69) #13
  br i1 %106, label %107, label %115

107:                                              ; preds = %104
  tail call void @netif_tx_wake_queue(ptr noundef %72) #13
  br label %115

108:                                              ; preds = %99, %96, %91
  %109 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 7
  %110 = load i32, ptr %109, align 4
  %111 = add i32 %110, 1
  store i32 %111, ptr %109, align 4
  %112 = getelementptr %struct.netdev_queue, ptr %71, i32 %67, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %112) #13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !21
  %113 = tail call zeroext i1 @cpdma_check_free_tx_desc(ptr noundef %69) #13
  br i1 %113, label %114, label %115

114:                                              ; preds = %108
  tail call void @netif_tx_wake_queue(ptr noundef %72) #13
  br label %115

115:                                              ; preds = %114, %108, %107, %104, %102, %34
  %116 = phi i32 [ 1, %34 ], [ 0, %104 ], [ 0, %107 ], [ 0, %102 ], [ 16, %114 ], [ 16, %108 ]
  ret i32 %116
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cpsw_ndo_set_rx_mode(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 1996
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.cpsw_common, ptr %3, i32 0, i32 1, i32 8
  %5 = load i8, ptr %4, align 2, !range !14
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %0, i32 1992
  %9 = load i32, ptr %8, align 8
  %10 = add i32 %9, 1
  br label %11

11:                                               ; preds = %7, %1
  %12 = phi i32 [ %10, %7 ], [ -1, %1 ]
  %13 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 14
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 256
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %11
  tail call fastcc void @cpsw_set_promiscious(ptr noundef %0, i1 noundef zeroext true)
  %18 = getelementptr inbounds %struct.cpsw_common, ptr %3, i32 0, i32 17
  %19 = load ptr, ptr %18, align 4
  tail call void @cpsw_ale_set_allmulti(ptr noundef %19, i32 noundef 512, i32 noundef %12) #13
  br label %27

20:                                               ; preds = %11
  tail call fastcc void @cpsw_set_promiscious(ptr noundef %0, i1 noundef zeroext false)
  %21 = getelementptr inbounds %struct.cpsw_common, ptr %3, i32 0, i32 17
  %22 = load ptr, ptr %21, align 4
  %23 = load i32, ptr %13, align 8
  %24 = and i32 %23, 512
  tail call void @cpsw_ale_set_allmulti(ptr noundef %22, i32 noundef %24, i32 noundef %12) #13
  %25 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 61
  %26 = tail call i32 @__hw_addr_ref_sync_dev(ptr noundef %25, ptr noundef %0, ptr noundef nonnull @cpsw_add_mc_addr, ptr noundef nonnull @cpsw_del_mc_addr) #13
  br label %27

27:                                               ; preds = %20, %17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpsw_ndo_set_mac_address(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 1408
  %4 = getelementptr i8, ptr %0, i32 1996
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.sockaddr, ptr %1, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %74

10:                                               ; preds = %2
  %11 = getelementptr %struct.sockaddr, ptr %1, i32 0, i32 1, i32 4
  %12 = load i16, ptr %11, align 2
  %13 = zext i16 %12 to i32
  %14 = or i32 %7, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %74, label %16

16:                                               ; preds = %10
  %17 = load ptr, ptr %5, align 8
  %18 = tail call i32 @__pm_runtime_resume(ptr noundef %17, i32 noundef 4) #13
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %16
  %21 = load ptr, ptr %5, align 8
  %22 = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %22) #13, !srcloc !10
  %23 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %22, ptr %22, i32 0, i32 -1, ptr elementtype(i32) %22) #13, !srcloc !11
  %24 = extractvalue { i32, i32, i32 } %23, 0
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %74, label %26

26:                                               ; preds = %20
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !12
  br label %74

27:                                               ; preds = %16
  %28 = getelementptr inbounds %struct.cpsw_common, ptr %5, i32 0, i32 1, i32 8
  %29 = load i8, ptr %28, align 2, !range !14
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.cpsw_common, ptr %5, i32 0, i32 13
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr i8, ptr %0, i32 1992
  %35 = load i32, ptr %34, align 8
  %36 = getelementptr %struct.cpsw_slave, ptr %33, i32 %35, i32 6
  %37 = load i32, ptr %36, align 4
  %38 = trunc i32 %37 to i16
  br label %39

39:                                               ; preds = %31, %27
  %40 = phi i32 [ 8, %31 ], [ 0, %27 ]
  %41 = phi i16 [ %38, %31 ], [ 0, %27 ]
  %42 = getelementptr inbounds %struct.cpsw_common, ptr %5, i32 0, i32 17
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr i8, ptr %0, i32 1420
  %45 = tail call i32 @cpsw_ale_del_ucast(ptr noundef %43, ptr noundef %44, i32 noundef 0, i32 noundef %40, i16 noundef zeroext %41) #13
  %46 = load ptr, ptr %42, align 4
  %47 = tail call i32 @cpsw_ale_add_ucast(ptr noundef %46, ptr noundef %6, i32 noundef 0, i32 noundef %40, i16 noundef zeroext %41) #13
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(6) %44, ptr noundef align 2 dereferenceable(6) %6, i32 6, i1 false)
  tail call void @dev_addr_mod(ptr noundef %0, i32 noundef 0, ptr noundef %44, i32 noundef 6) #13
  %48 = load ptr, ptr %4, align 4
  %49 = getelementptr inbounds %struct.cpsw_common, ptr %48, i32 0, i32 1, i32 8
  %50 = load i8, ptr %49, align 2, !range !14
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %39
  %53 = getelementptr inbounds %struct.cpsw_common, ptr %48, i32 0, i32 13
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr i8, ptr %0, i32 1992
  %56 = load i32, ptr %55, align 8
  %57 = getelementptr %struct.cpsw_slave, ptr %54, i32 %56
  tail call void @cpsw_set_slave_mac(ptr noundef %57, ptr noundef %3) #13
  br label %71

58:                                               ; preds = %39
  %59 = getelementptr inbounds %struct.cpsw_common, ptr %48, i32 0, i32 1, i32 3
  %60 = load i32, ptr %59, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %71, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.cpsw_common, ptr %48, i32 0, i32 13
  %64 = load ptr, ptr %63, align 4
  br label %65

65:                                               ; preds = %65, %62
  %66 = phi i32 [ %69, %65 ], [ %60, %62 ]
  %67 = phi ptr [ %68, %65 ], [ %64, %62 ]
  %68 = getelementptr %struct.cpsw_slave, ptr %67, i32 1
  tail call void @cpsw_set_slave_mac(ptr noundef %67, ptr noundef %3) #13
  %69 = add i32 %66, -1
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %65

71:                                               ; preds = %65, %58, %52
  %72 = load ptr, ptr %5, align 8
  %73 = tail call i32 @__pm_runtime_idle(ptr noundef %72, i32 noundef 5) #13
  br label %74

74:                                               ; preds = %71, %26, %20, %10, %2
  %75 = phi i32 [ 0, %71 ], [ -99, %10 ], [ %18, %20 ], [ %18, %26 ], [ -99, %2 ]
  ret i32 %75
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_ndo_ioctl(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_ndo_tx_timeout(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpsw_ndo_vlan_rx_add_vid(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 1408
  %5 = getelementptr i8, ptr %0, i32 1996
  %6 = load ptr, ptr %5, align 4
  %7 = zext i16 %2 to i32
  %8 = getelementptr inbounds %struct.cpsw_common, ptr %6, i32 0, i32 1, i32 7
  %9 = load i16, ptr %8, align 4
  %10 = icmp eq i16 %9, %2
  br i1 %10, label %96, label %11

11:                                               ; preds = %3
  %12 = load ptr, ptr %6, align 8
  %13 = tail call i32 @__pm_runtime_resume(ptr noundef %12, i32 noundef 4) #13
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %11
  %16 = load ptr, ptr %6, align 8
  %17 = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %17) #13, !srcloc !10
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %17, ptr %17, i32 0, i32 -1, ptr elementtype(i32) %17) #13, !srcloc !11
  %19 = extractvalue { i32, i32, i32 } %18, 0
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %96, label %21

21:                                               ; preds = %15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !12
  br label %96

22:                                               ; preds = %11
  %23 = getelementptr inbounds %struct.cpsw_common, ptr %6, i32 0, i32 1, i32 8
  %24 = load i8, ptr %23, align 2, !range !14
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %41, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.cpsw_common, ptr %6, i32 0, i32 1, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %41, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.cpsw_common, ptr %6, i32 0, i32 13
  %32 = load ptr, ptr %31, align 4
  br label %36

33:                                               ; preds = %36
  %34 = add nuw i32 %37, 1
  %35 = icmp eq i32 %34, %28
  br i1 %35, label %41, label %36

36:                                               ; preds = %33, %30
  %37 = phi i32 [ 0, %30 ], [ %34, %33 ]
  %38 = getelementptr %struct.cpsw_slave, ptr %32, i32 %37, i32 6
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, %7
  br i1 %40, label %92, label %33

41:                                               ; preds = %33, %26, %22
  %42 = getelementptr i8, ptr %0, i32 1412
  %43 = load ptr, ptr %42, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %43, ptr noundef nonnull @.str.54, i32 noundef %7) #14
  %44 = load ptr, ptr %5, align 4
  %45 = getelementptr inbounds %struct.cpsw_common, ptr %44, i32 0, i32 1, i32 8
  %46 = load i8, ptr %45, align 2, !range !14
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %59, label %48

48:                                               ; preds = %41
  %49 = getelementptr i8, ptr %0, i32 1992
  %50 = load i32, ptr %49, align 8
  %51 = add i32 %50, 1
  %52 = shl nuw i32 1, %51
  %53 = or i32 %52, 1
  %54 = load ptr, ptr %4, align 64
  %55 = getelementptr inbounds %struct.net_device, ptr %54, i32 0, i32 14
  %56 = load i32, ptr %55, align 8
  %57 = lshr i32 %56, 9
  %58 = and i32 %57, 1
  br label %66

59:                                               ; preds = %41
  %60 = load ptr, ptr %4, align 64
  %61 = getelementptr inbounds %struct.net_device, ptr %60, i32 0, i32 14
  %62 = load i32, ptr %61, align 8
  %63 = and i32 %62, 512
  %64 = icmp eq i32 %63, 0
  %65 = select i1 %64, i32 6, i32 7
  br label %66

66:                                               ; preds = %59, %48
  %67 = phi i32 [ %58, %48 ], [ %65, %59 ]
  %68 = phi i32 [ 1, %48 ], [ 7, %59 ]
  %69 = phi i32 [ %53, %48 ], [ 7, %59 ]
  %70 = getelementptr inbounds %struct.cpsw_common, ptr %44, i32 0, i32 17
  %71 = load ptr, ptr %70, align 4
  %72 = tail call i32 @cpsw_ale_add_vlan(ptr noundef %71, i16 noundef zeroext %2, i32 noundef %69, i32 noundef 0, i32 noundef %69, i32 noundef %67) #13
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %92

74:                                               ; preds = %66
  %75 = load ptr, ptr %70, align 4
  %76 = getelementptr i8, ptr %0, i32 1420
  %77 = tail call i32 @cpsw_ale_add_ucast(ptr noundef %75, ptr noundef %76, i32 noundef 0, i32 noundef 8, i16 noundef zeroext %2) #13
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %74
  %80 = load ptr, ptr %70, align 4
  %81 = load ptr, ptr %4, align 64
  %82 = getelementptr inbounds %struct.net_device, ptr %81, i32 0, i32 83
  %83 = tail call i32 @cpsw_ale_add_mcast(ptr noundef %80, ptr noundef %82, i32 noundef %68, i32 noundef 8, i16 noundef zeroext %2, i32 noundef 0) #13
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %92, label %85

85:                                               ; preds = %79
  %86 = load ptr, ptr %70, align 4
  %87 = tail call i32 @cpsw_ale_del_ucast(ptr noundef %86, ptr noundef %76, i32 noundef 0, i32 noundef 8, i16 noundef zeroext %2) #13
  br label %88

88:                                               ; preds = %85, %74
  %89 = phi i32 [ %77, %74 ], [ %83, %85 ]
  %90 = load ptr, ptr %70, align 4
  %91 = tail call i32 @cpsw_ale_del_vlan(ptr noundef %90, i16 noundef zeroext %2, i32 noundef 0) #13
  br label %92

92:                                               ; preds = %88, %79, %66, %36
  %93 = phi i32 [ %89, %88 ], [ %72, %66 ], [ 0, %79 ], [ -22, %36 ]
  %94 = load ptr, ptr %6, align 8
  %95 = tail call i32 @__pm_runtime_idle(ptr noundef %94, i32 noundef 5) #13
  br label %96

96:                                               ; preds = %92, %21, %15, %3
  %97 = phi i32 [ %93, %92 ], [ 0, %3 ], [ %13, %15 ], [ %13, %21 ]
  ret i32 %97
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpsw_ndo_vlan_rx_kill_vid(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 1408
  %5 = getelementptr i8, ptr %0, i32 1996
  %6 = load ptr, ptr %5, align 4
  %7 = zext i16 %2 to i32
  %8 = getelementptr inbounds %struct.cpsw_common, ptr %6, i32 0, i32 1, i32 7
  %9 = load i16, ptr %8, align 4
  %10 = icmp eq i16 %9, %2
  br i1 %10, label %63, label %11

11:                                               ; preds = %3
  %12 = load ptr, ptr %6, align 8
  %13 = tail call i32 @__pm_runtime_resume(ptr noundef %12, i32 noundef 4) #13
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %11
  %16 = load ptr, ptr %6, align 8
  %17 = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %17) #13, !srcloc !10
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %17, ptr %17, i32 0, i32 -1, ptr elementtype(i32) %17) #13, !srcloc !11
  %19 = extractvalue { i32, i32, i32 } %18, 0
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %63, label %21

21:                                               ; preds = %15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !12
  br label %63

22:                                               ; preds = %11
  %23 = getelementptr inbounds %struct.cpsw_common, ptr %6, i32 0, i32 1, i32 8
  %24 = load i8, ptr %23, align 2, !range !14
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %41, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.cpsw_common, ptr %6, i32 0, i32 1, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %41, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.cpsw_common, ptr %6, i32 0, i32 13
  %32 = load ptr, ptr %31, align 4
  br label %36

33:                                               ; preds = %36
  %34 = add nuw i32 %37, 1
  %35 = icmp eq i32 %34, %28
  br i1 %35, label %41, label %36

36:                                               ; preds = %33, %30
  %37 = phi i32 [ 0, %30 ], [ %34, %33 ]
  %38 = getelementptr %struct.cpsw_slave, ptr %32, i32 %37, i32 6
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, %7
  br i1 %40, label %59, label %33

41:                                               ; preds = %33, %26, %22
  %42 = getelementptr i8, ptr %0, i32 1412
  %43 = load ptr, ptr %42, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %43, ptr noundef nonnull @.str.55, i32 noundef %7) #14
  %44 = getelementptr inbounds %struct.cpsw_common, ptr %6, i32 0, i32 17
  %45 = load ptr, ptr %44, align 4
  %46 = tail call i32 @cpsw_ale_del_vlan(ptr noundef %45, i16 noundef zeroext %2, i32 noundef 0) #13
  %47 = load ptr, ptr %44, align 4
  %48 = getelementptr i8, ptr %0, i32 1420
  %49 = tail call i32 @cpsw_ale_del_ucast(ptr noundef %47, ptr noundef %48, i32 noundef 0, i32 noundef 8, i16 noundef zeroext %2) #13
  %50 = or i32 %49, %46
  %51 = load ptr, ptr %44, align 4
  %52 = load ptr, ptr %4, align 64
  %53 = getelementptr inbounds %struct.net_device, ptr %52, i32 0, i32 83
  %54 = tail call i32 @cpsw_ale_del_mcast(ptr noundef %51, ptr noundef %53, i32 noundef 0, i32 noundef 8, i16 noundef zeroext %2) #13
  %55 = or i32 %50, %54
  %56 = load ptr, ptr %44, align 4
  %57 = tail call i32 @cpsw_ale_flush_multicast(ptr noundef %56, i32 noundef 1, i32 noundef %7) #13
  %58 = or i32 %55, %57
  br label %59

59:                                               ; preds = %41, %36
  %60 = phi i32 [ %58, %41 ], [ %13, %36 ]
  %61 = load ptr, ptr %6, align 8
  %62 = tail call i32 @__pm_runtime_idle(ptr noundef %61, i32 noundef 5) #13
  br label %63

63:                                               ; preds = %59, %21, %15, %3
  %64 = phi i32 [ %60, %59 ], [ 0, %3 ], [ %13, %15 ], [ %13, %21 ]
  ret i32 %64
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_ndo_setup_tc(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_ndo_set_tx_maxrate(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_ndo_bpf(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpsw_ndo_xdp_xmit(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #2 {
  %5 = getelementptr i8, ptr %0, i32 1408
  %6 = getelementptr i8, ptr %0, i32 1996
  %7 = load ptr, ptr %6, align 4
  %8 = icmp ult i32 %3, 2
  br i1 %8, label %9, label %31, !prof !18

9:                                                ; preds = %4
  %10 = getelementptr i8, ptr %0, i32 1992
  %11 = icmp sgt i32 %1, 0
  br i1 %11, label %12, label %31

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.cpsw_common, ptr %7, i32 0, i32 1, i32 8
  br label %14

14:                                               ; preds = %28, %12
  %15 = phi i32 [ 0, %12 ], [ %29, %28 ]
  %16 = getelementptr ptr, ptr %2, i32 %15
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.xdp_frame, ptr %17, i32 0, i32 1
  %19 = load i16, ptr %18, align 4
  %20 = icmp ult i16 %19, 60
  br i1 %20, label %31, label %21

21:                                               ; preds = %14
  %22 = load i32, ptr %10, align 8
  %23 = load i8, ptr %13, align 2, !range !14
  %24 = zext i8 %23 to i32
  %25 = add i32 %22, %24
  %26 = tail call i32 @cpsw_xdp_tx_frame(ptr noundef %5, ptr noundef %17, ptr noundef null, i32 noundef %25) #13
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = add nuw nsw i32 %15, 1
  %30 = icmp eq i32 %29, %1
  br i1 %30, label %31, label %14

31:                                               ; preds = %28, %21, %14, %9, %4
  %32 = phi i32 [ -22, %4 ], [ 0, %9 ], [ %15, %21 ], [ %15, %14 ], [ %1, %28 ]
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_set_real_num_tx_queues(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_set_real_num_rx_queues(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @cpsw_init_host_port(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.cpsw_priv, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.cpsw_common, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.cpsw_ss_regs, ptr %5, i32 0, i32 2
  tail call void @soft_reset(ptr noundef nonnull @.str, ptr noundef %6) #13
  %7 = getelementptr inbounds %struct.cpsw_common, ptr %3, i32 0, i32 17
  %8 = load ptr, ptr %7, align 4
  tail call void @cpsw_ale_start(ptr noundef %8) #13
  %9 = load ptr, ptr %7, align 4
  %10 = tail call i32 @cpsw_ale_control_set(ptr noundef %9, i32 noundef 0, i32 noundef 9, i32 noundef 1) #13
  %11 = load ptr, ptr %4, align 8
  %12 = getelementptr inbounds %struct.cpsw_ss_regs, ptr %11, i32 0, i32 1
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #13, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !23
  %14 = or i32 %13, 6
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !24
  tail call void @arm_heavy_mb() #13
  %15 = load ptr, ptr %4, align 8
  %16 = getelementptr inbounds %struct.cpsw_ss_regs, ptr %15, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #13, !srcloc !15
  %17 = getelementptr inbounds %struct.cpsw_common, ptr %3, i32 0, i32 1, i32 8
  %18 = load i8, ptr %17, align 2, !range !14
  %19 = icmp eq i8 %18, 0
  %20 = select i1 %19, i32 0, i32 65536
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !25
  tail call void @arm_heavy_mb() #13
  %21 = getelementptr inbounds %struct.cpsw_common, ptr %3, i32 0, i32 7
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.cpsw_host_regs, ptr %22, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %20) #13, !srcloc !15
  %24 = load ptr, ptr %21, align 4
  %25 = getelementptr inbounds %struct.cpsw_host_regs, ptr %24, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 1985229328) #13, !srcloc !15
  %26 = load ptr, ptr %21, align 4
  %27 = getelementptr inbounds %struct.cpsw_host_regs, ptr %26, i32 0, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 0) #13, !srcloc !15
  %28 = load ptr, ptr %7, align 4
  %29 = tail call i32 @cpsw_ale_control_set(ptr noundef %28, i32 noundef 0, i32 noundef 12, i32 noundef 3) #13
  %30 = load i8, ptr %17, align 2, !range !14
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %1
  %33 = load ptr, ptr %7, align 4
  %34 = getelementptr inbounds %struct.cpsw_priv, ptr %0, i32 0, i32 3
  %35 = tail call i32 @cpsw_ale_add_ucast(ptr noundef %33, ptr noundef %34, i32 noundef 0, i32 noundef 0, i16 noundef zeroext 0) #13
  %36 = load ptr, ptr %7, align 4
  %37 = load ptr, ptr %0, align 64
  %38 = getelementptr inbounds %struct.net_device, ptr %37, i32 0, i32 83
  %39 = tail call i32 @cpsw_ale_add_mcast(ptr noundef %36, ptr noundef %38, i32 noundef 1, i32 noundef 0, i16 noundef zeroext 0, i32 noundef 3) #13
  br label %40

40:                                               ; preds = %32, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @cpsw_slave_open(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.cpsw_priv, ptr %1, i32 0, i32 16
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.cpsw_slave, ptr %0, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  tail call void @cpsw_sl_reset(ptr noundef %6, i32 noundef 100) #13
  %7 = load ptr, ptr %5, align 4
  tail call void @cpsw_sl_ctl_reset(ptr noundef %7) #13
  %8 = load ptr, ptr %5, align 4
  tail call void @cpsw_sl_reg_write(ptr noundef %8, i32 noundef 9, i32 noundef 1985229328) #13
  %9 = getelementptr inbounds %struct.cpsw_common, ptr %4, i32 0, i32 8
  %10 = load i32, ptr %9, align 8
  switch i32 %10, label %20 [
    i32 1638666, label %11
    i32 1638668, label %15
    i32 1638671, label %15
    i32 1638674, label %15
  ]

11:                                               ; preds = %2
  %12 = load ptr, ptr %0, align 4
  %13 = getelementptr i8, ptr %12, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 857870592) #13, !srcloc !15
  %14 = load ptr, ptr %0, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 245) #13, !srcloc !15
  br label %20

15:                                               ; preds = %2, %2, %2
  %16 = load ptr, ptr %0, align 4
  %17 = getelementptr i8, ptr %16, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 857870592) #13, !srcloc !15
  %18 = load ptr, ptr %0, align 4
  %19 = getelementptr i8, ptr %18, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 245) #13, !srcloc !15
  br label %20

20:                                               ; preds = %15, %11, %2
  %21 = load ptr, ptr %5, align 4
  %22 = getelementptr inbounds %struct.cpsw_common, ptr %4, i32 0, i32 11
  %23 = load i32, ptr %22, align 4
  tail call void @cpsw_sl_reg_write(ptr noundef %21, i32 noundef 4, i32 noundef %23) #13
  tail call void @cpsw_set_slave_mac(ptr noundef %0, ptr noundef %1) #13
  %24 = getelementptr inbounds %struct.cpsw_slave, ptr %0, i32 0, i32 2
  store i32 0, ptr %24, align 4
  %25 = getelementptr inbounds %struct.cpsw_slave, ptr %0, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, 1
  %28 = getelementptr inbounds %struct.cpsw_common, ptr %4, i32 0, i32 1, i32 8
  %29 = load i8, ptr %28, align 2, !range !14
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %64, label %31

31:                                               ; preds = %20
  %32 = load ptr, ptr %3, align 4
  %33 = getelementptr inbounds %struct.cpsw_common, ptr %32, i32 0, i32 8
  %34 = load i32, ptr %33, align 8
  %35 = icmp eq i32 %34, 1638666
  %36 = getelementptr inbounds %struct.cpsw_slave, ptr %0, i32 0, i32 6
  %37 = load i32, ptr %36, align 4
  %38 = load ptr, ptr %0, align 4
  br i1 %35, label %39, label %41

39:                                               ; preds = %31
  %40 = getelementptr i8, ptr %38, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %37) #13, !srcloc !15
  br label %43

41:                                               ; preds = %31
  %42 = getelementptr i8, ptr %38, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %37) #13, !srcloc !15
  br label %43

43:                                               ; preds = %41, %39
  %44 = shl nuw i32 1, %27
  %45 = or i32 %44, 1
  %46 = getelementptr inbounds %struct.cpsw_common, ptr %32, i32 0, i32 17
  %47 = load ptr, ptr %46, align 4
  %48 = load i32, ptr %36, align 4
  %49 = trunc i32 %48 to i16
  %50 = tail call i32 @cpsw_ale_add_vlan(ptr noundef %47, i16 noundef zeroext %49, i32 noundef %45, i32 noundef %45, i32 noundef %45, i32 noundef 0) #13
  %51 = load ptr, ptr %46, align 4
  %52 = load ptr, ptr %1, align 64
  %53 = getelementptr inbounds %struct.net_device, ptr %52, i32 0, i32 83
  %54 = load i32, ptr %36, align 4
  %55 = trunc i32 %54 to i16
  %56 = tail call i32 @cpsw_ale_add_mcast(ptr noundef %51, ptr noundef %53, i32 noundef 1, i32 noundef 8, i16 noundef zeroext %55, i32 noundef 0) #13
  %57 = load ptr, ptr %46, align 4
  %58 = getelementptr inbounds %struct.cpsw_priv, ptr %1, i32 0, i32 3
  %59 = load i32, ptr %36, align 4
  %60 = trunc i32 %59 to i16
  %61 = tail call i32 @cpsw_ale_add_ucast(ptr noundef %57, ptr noundef %58, i32 noundef 0, i32 noundef 9, i16 noundef zeroext %60) #13
  %62 = load ptr, ptr %46, align 4
  %63 = tail call i32 @cpsw_ale_control_set(ptr noundef %62, i32 noundef %27, i32 noundef 14, i32 noundef 1) #13
  br label %71

64:                                               ; preds = %20
  %65 = getelementptr inbounds %struct.cpsw_common, ptr %4, i32 0, i32 17
  %66 = load ptr, ptr %65, align 4
  %67 = load ptr, ptr %1, align 64
  %68 = getelementptr inbounds %struct.net_device, ptr %67, i32 0, i32 83
  %69 = shl nuw i32 1, %27
  %70 = tail call i32 @cpsw_ale_add_mcast(ptr noundef %66, ptr noundef %68, i32 noundef %69, i32 noundef 0, i16 noundef zeroext 0, i32 noundef 3) #13
  br label %71

71:                                               ; preds = %64, %43
  %72 = getelementptr inbounds %struct.cpsw_slave, ptr %0, i32 0, i32 3
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.cpsw_slave_data, ptr %73, i32 0, i32 1
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  %77 = load ptr, ptr %1, align 64
  br i1 %76, label %90, label %78

78:                                               ; preds = %71
  %79 = getelementptr inbounds %struct.cpsw_slave_data, ptr %73, i32 0, i32 3
  %80 = load i32, ptr %79, align 4
  %81 = tail call ptr @of_phy_connect(ptr noundef %77, ptr noundef nonnull %75, ptr noundef nonnull @cpsw_adjust_link, i32 noundef 0, i32 noundef %80) #13
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %103

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.cpsw_priv, ptr %1, i32 0, i32 1
  %85 = load ptr, ptr %84, align 4
  %86 = load ptr, ptr %72, align 4
  %87 = getelementptr inbounds %struct.cpsw_slave_data, ptr %86, i32 0, i32 1
  %88 = load ptr, ptr %87, align 4
  %89 = load i32, ptr %25, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %85, ptr noundef nonnull @.str.47, ptr noundef %88, i32 noundef %89) #14
  br label %115

90:                                               ; preds = %71
  %91 = getelementptr inbounds %struct.cpsw_slave_data, ptr %73, i32 0, i32 2
  %92 = getelementptr inbounds %struct.cpsw_slave_data, ptr %73, i32 0, i32 3
  %93 = load i32, ptr %92, align 4
  %94 = tail call ptr @phy_connect(ptr noundef %77, ptr noundef %91, ptr noundef nonnull @cpsw_adjust_link, i32 noundef %93) #13
  %95 = icmp ugt ptr %94, inttoptr (i32 -4096 to ptr)
  br i1 %95, label %96, label %103

96:                                               ; preds = %90
  %97 = getelementptr inbounds %struct.cpsw_priv, ptr %1, i32 0, i32 1
  %98 = load ptr, ptr %97, align 4
  %99 = load ptr, ptr %72, align 4
  %100 = getelementptr inbounds %struct.cpsw_slave_data, ptr %99, i32 0, i32 2
  %101 = load i32, ptr %25, align 4
  %102 = ptrtoint ptr %94 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %98, ptr noundef nonnull @.str.48, ptr noundef %100, i32 noundef %101, i32 noundef %102) #14
  br label %115

103:                                              ; preds = %90, %78
  %104 = phi ptr [ %81, %78 ], [ %94, %90 ]
  %105 = getelementptr inbounds %struct.cpsw_slave, ptr %0, i32 0, i32 4
  store ptr %104, ptr %105, align 4
  tail call void @phy_attached_info(ptr noundef %104) #13
  %106 = load ptr, ptr %105, align 4
  tail call void @phy_start(ptr noundef %106) #13
  %107 = load ptr, ptr %72, align 4
  %108 = getelementptr inbounds %struct.cpsw_slave_data, ptr %107, i32 0, i32 6
  %109 = load ptr, ptr %108, align 4
  %110 = icmp ugt ptr %109, inttoptr (i32 -4096 to ptr)
  br i1 %110, label %115, label %111

111:                                              ; preds = %103
  %112 = getelementptr inbounds %struct.cpsw_slave_data, ptr %107, i32 0, i32 3
  %113 = load i32, ptr %112, align 4
  %114 = tail call i32 @phy_set_mode_ext(ptr noundef %109, i32 noundef 15, i32 noundef %113) #13
  br label %115

115:                                              ; preds = %111, %103, %96, %83
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @cpsw_add_default_vlan(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.cpsw_priv, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.cpsw_common, ptr %3, i32 0, i32 1, i32 7
  %5 = load i16, ptr %4, align 4
  %6 = zext i16 %5 to i32
  %7 = getelementptr inbounds %struct.cpsw_common, ptr %3, i32 0, i32 8
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %8, 1638666
  %10 = select i1 %9, i32 12, i32 20
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !26
  tail call void @arm_heavy_mb() #13
  %11 = getelementptr inbounds %struct.cpsw_common, ptr %3, i32 0, i32 7
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.cpsw_host_regs, ptr %12, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %6) #13, !srcloc !15
  %14 = getelementptr inbounds %struct.cpsw_common, ptr %3, i32 0, i32 1, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.cpsw_common, ptr %3, i32 0, i32 13
  br label %19

19:                                               ; preds = %19, %17
  %20 = phi i32 [ 0, %17 ], [ %25, %19 ]
  %21 = load ptr, ptr %18, align 4
  %22 = getelementptr %struct.cpsw_slave, ptr %21, i32 %20
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr i8, ptr %23, i32 %10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %6) #13, !srcloc !15
  %25 = add nuw i32 %20, 1
  %26 = load i32, ptr %14, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %19, label %28

28:                                               ; preds = %19, %1
  %29 = load ptr, ptr %0, align 64
  %30 = getelementptr inbounds %struct.net_device, ptr %29, i32 0, i32 14
  %31 = load i32, ptr %30, align 8
  %32 = and i32 %31, 512
  %33 = icmp eq i32 %32, 0
  %34 = select i1 %33, i32 6, i32 7
  %35 = getelementptr inbounds %struct.cpsw_common, ptr %3, i32 0, i32 17
  %36 = load ptr, ptr %35, align 4
  %37 = tail call i32 @cpsw_ale_add_vlan(ptr noundef %36, i16 noundef zeroext %5, i32 noundef 7, i32 noundef 7, i32 noundef 7, i32 noundef %34) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_ale_add_vlan(ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_create_xdp_rxqs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_fill_rx_channels(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpts_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @cpsw_restore(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.cpsw_priv, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.cpsw_common, ptr %3, i32 0, i32 1, i32 8
  %5 = load i8, ptr %4, align 2, !range !14
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.cpsw_common, ptr %3, i32 0, i32 13
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.cpsw_priv, ptr %0, i32 0, i32 15
  %11 = load i32, ptr %10, align 8
  %12 = getelementptr %struct.cpsw_slave, ptr %9, i32 %11
  tail call void @cpsw_mqprio_resume(ptr noundef %12, ptr noundef %0) #13
  br label %26

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.cpsw_common, ptr %3, i32 0, i32 1, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.cpsw_common, ptr %3, i32 0, i32 13
  %19 = load ptr, ptr %18, align 4
  br label %20

20:                                               ; preds = %20, %17
  %21 = phi i32 [ %24, %20 ], [ %15, %17 ]
  %22 = phi ptr [ %23, %20 ], [ %19, %17 ]
  %23 = getelementptr %struct.cpsw_slave, ptr %22, i32 1
  tail call void @cpsw_mqprio_resume(ptr noundef %22, ptr noundef %0) #13
  %24 = add i32 %21, -1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %20

26:                                               ; preds = %20, %13, %7
  %27 = load ptr, ptr %2, align 4
  %28 = getelementptr inbounds %struct.cpsw_common, ptr %27, i32 0, i32 1, i32 8
  %29 = load i8, ptr %28, align 2, !range !14
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.cpsw_common, ptr %27, i32 0, i32 13
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.cpsw_priv, ptr %0, i32 0, i32 15
  %35 = load i32, ptr %34, align 8
  %36 = getelementptr %struct.cpsw_slave, ptr %33, i32 %35
  tail call void @cpsw_cbs_resume(ptr noundef %36, ptr noundef %0) #13
  br label %50

37:                                               ; preds = %26
  %38 = getelementptr inbounds %struct.cpsw_common, ptr %27, i32 0, i32 1, i32 3
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %50, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.cpsw_common, ptr %27, i32 0, i32 13
  %43 = load ptr, ptr %42, align 4
  br label %44

44:                                               ; preds = %44, %41
  %45 = phi i32 [ %48, %44 ], [ %39, %41 ]
  %46 = phi ptr [ %47, %44 ], [ %43, %41 ]
  %47 = getelementptr %struct.cpsw_slave, ptr %46, i32 1
  tail call void @cpsw_cbs_resume(ptr noundef %46, ptr noundef %0) #13
  %48 = add i32 %45, -1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %44

50:                                               ; preds = %44, %37, %31
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_set_coalesce(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpdma_ctlr_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_intr_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpdma_ctlr_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_destroy_xdp_rxqs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @soft_reset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_ale_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_ale_control_set(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_ale_add_ucast(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_ale_add_mcast(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_sl_reset(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_sl_ctl_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_sl_reg_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_set_slave_mac(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_connect(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cpsw_adjust_link(ptr noundef %0) #2 {
  %2 = alloca i8, align 1
  %3 = getelementptr i8, ptr %0, i32 1408
  %4 = getelementptr i8, ptr %0, i32 1996
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #13
  store i8 0, ptr %2, align 1
  %6 = getelementptr inbounds %struct.cpsw_common, ptr %5, i32 0, i32 1, i32 8
  %7 = load i8, ptr %6, align 2, !range !14
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.cpsw_common, ptr %5, i32 0, i32 13
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %0, i32 1992
  %13 = load i32, ptr %12, align 8
  %14 = getelementptr %struct.cpsw_slave, ptr %11, i32 %13
  call fastcc void @_cpsw_adjust_link(ptr noundef %14, ptr noundef %3, ptr noundef nonnull %2)
  br label %28

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.cpsw_common, ptr %5, i32 0, i32 1, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.cpsw_common, ptr %5, i32 0, i32 13
  %21 = load ptr, ptr %20, align 4
  br label %22

22:                                               ; preds = %22, %19
  %23 = phi i32 [ %26, %22 ], [ %17, %19 ]
  %24 = phi ptr [ %25, %22 ], [ %21, %19 ]
  %25 = getelementptr %struct.cpsw_slave, ptr %24, i32 1
  call fastcc void @_cpsw_adjust_link(ptr noundef %24, ptr noundef %3, ptr noundef nonnull %2)
  %26 = add i32 %23, -1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %22

28:                                               ; preds = %22, %15, %9
  %29 = load i8, ptr %2, align 1, !range !14
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %53, label %31

31:                                               ; preds = %28
  %32 = tail call i32 @cpsw_need_resplit(ptr noundef %5) #13
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  tail call void @cpsw_split_res(ptr noundef %5) #13
  br label %35

35:                                               ; preds = %34, %31
  tail call void @netif_carrier_on(ptr noundef %0) #13
  %36 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %37 = load volatile i32, ptr %36, align 4
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %54, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 88
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %54, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  br label %46

46:                                               ; preds = %46, %44
  %47 = phi i32 [ 0, %44 ], [ %50, %46 ]
  %48 = load ptr, ptr %45, align 64
  %49 = getelementptr %struct.netdev_queue, ptr %48, i32 %47
  tail call void @netif_tx_wake_queue(ptr noundef %49) #13
  %50 = add nuw i32 %47, 1
  %51 = load i32, ptr %41, align 4
  %52 = icmp ult i32 %50, %51
  br i1 %52, label %46, label %54

53:                                               ; preds = %28
  tail call void @netif_carrier_off(ptr noundef %0) #13
  tail call void @netif_tx_stop_all_queues(ptr noundef %0) #13
  br label %54

54:                                               ; preds = %53, %46, %40, %35
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @phy_connect(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_attached_info(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_set_mode_ext(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @_cpsw_adjust_link(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.cpsw_slave, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.cpsw_priv, ptr %1, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %5, null
  br i1 %8, label %87, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.cpsw_slave, ptr %0, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, 1
  %13 = getelementptr inbounds %struct.phy_device, ptr %5, i32 0, i32 4
  %14 = load i16, ptr %13, align 8
  %15 = and i16 %14, 8192
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %72, label %17

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.phy_device, ptr %5, i32 0, i32 8
  %19 = load i32, ptr %18, align 8
  %20 = icmp eq i32 %19, 1000
  %21 = select i1 %20, i32 160, i32 32
  %22 = getelementptr inbounds %struct.phy_device, ptr %5, i32 0, i32 9
  %23 = load i32, ptr %22, align 4
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i32
  %26 = or i32 %21, %25
  switch i32 %19, label %36 [
    i32 100, label %27
    i32 10, label %29
  ]

27:                                               ; preds = %17
  %28 = or i32 %26, 32768
  br label %36

29:                                               ; preds = %17
  %30 = getelementptr inbounds %struct.phy_device, ptr %5, i32 0, i32 7
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, -9
  %33 = icmp ult i32 %32, 4
  %34 = or i32 %26, 262144
  %35 = select i1 %33, i32 %34, i32 %26
  br label %36

36:                                               ; preds = %29, %27, %17
  %37 = phi i32 [ %28, %27 ], [ %26, %17 ], [ %35, %29 ]
  %38 = getelementptr inbounds %struct.cpsw_priv, ptr %1, i32 0, i32 4
  %39 = load i8, ptr %38, align 2, !range !14
  %40 = icmp eq i8 %39, 0
  %41 = or i32 %37, 8
  %42 = select i1 %40, i32 %37, i32 %41
  %43 = getelementptr inbounds %struct.cpsw_priv, ptr %1, i32 0, i32 5
  %44 = load i8, ptr %43, align 1, !range !14
  %45 = icmp eq i8 %44, 0
  %46 = or i32 %42, 16
  %47 = select i1 %45, i32 %42, i32 %46
  %48 = getelementptr inbounds %struct.cpsw_slave, ptr %0, i32 0, i32 2
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %55, label %51

51:                                               ; preds = %36
  %52 = getelementptr inbounds %struct.cpsw_slave, ptr %0, i32 0, i32 7
  %53 = load ptr, ptr %52, align 4
  %54 = tail call i32 @cpsw_sl_ctl_set(ptr noundef %53, i32 noundef %47) #13
  br label %55

55:                                               ; preds = %51, %36
  %56 = getelementptr inbounds %struct.cpsw_common, ptr %7, i32 0, i32 17
  %57 = load ptr, ptr %56, align 4
  %58 = tail call i32 @cpsw_ale_control_set(ptr noundef %57, i32 noundef %12, i32 noundef 12, i32 noundef 3) #13
  store i8 1, ptr %2, align 1
  %59 = getelementptr inbounds %struct.cpsw_priv, ptr %1, i32 0, i32 8
  %60 = load i32, ptr %59, align 8
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %80, label %62

62:                                               ; preds = %55
  %63 = load ptr, ptr %4, align 4
  %64 = getelementptr inbounds %struct.phy_device, ptr %63, i32 0, i32 8
  %65 = load i32, ptr %64, align 8
  %66 = icmp eq i32 %60, %65
  br i1 %66, label %80, label %67

67:                                               ; preds = %62
  %68 = tail call zeroext i1 @cpsw_shp_is_off(ptr noundef %1) #13
  br i1 %68, label %80, label %69

69:                                               ; preds = %67
  %70 = getelementptr inbounds %struct.cpsw_priv, ptr %1, i32 0, i32 1
  %71 = load ptr, ptr %70, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %71, ptr noundef nonnull @.str.49) #14
  br label %80

72:                                               ; preds = %9
  %73 = getelementptr inbounds %struct.cpsw_common, ptr %7, i32 0, i32 17
  %74 = load ptr, ptr %73, align 4
  %75 = tail call i32 @cpsw_ale_control_set(ptr noundef %74, i32 noundef %12, i32 noundef 12, i32 noundef 0) #13
  %76 = getelementptr inbounds %struct.cpsw_slave, ptr %0, i32 0, i32 7
  %77 = load ptr, ptr %76, align 4
  %78 = tail call i32 @cpsw_sl_wait_for_idle(ptr noundef %77, i32 noundef 100) #13
  %79 = load ptr, ptr %76, align 4
  tail call void @cpsw_sl_ctl_reset(ptr noundef %79) #13
  br label %80

80:                                               ; preds = %72, %69, %67, %62, %55
  %81 = phi i32 [ %47, %67 ], [ %47, %69 ], [ %47, %62 ], [ %47, %55 ], [ 0, %72 ]
  %82 = getelementptr inbounds %struct.cpsw_slave, ptr %0, i32 0, i32 2
  %83 = load i32, ptr %82, align 4
  %84 = icmp eq i32 %81, %83
  br i1 %84, label %86, label %85

85:                                               ; preds = %80
  tail call void @phy_print_status(ptr noundef nonnull %5) #13
  br label %86

86:                                               ; preds = %85, %80
  store i32 %81, ptr %82, align 4
  br label %87

87:                                               ; preds = %86, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_need_resplit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_stop_all_queues(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_sl_ctl_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cpsw_shp_is_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_sl_wait_for_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_print_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_mqprio_resume(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_cbs_resume(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__hw_addr_ref_unsync_dev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpsw_purge_all_mc(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %27

5:                                                ; preds = %3
  %6 = getelementptr i8, ptr %0, i32 1996
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.cpsw_common, ptr %7, i32 0, i32 1, i32 8
  %9 = load i8, ptr %8, align 2, !range !14
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.cpsw_common, ptr %7, i32 0, i32 13
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %0, i32 1992
  %15 = load i32, ptr %14, align 8
  %16 = getelementptr %struct.cpsw_slave, ptr %13, i32 %15, i32 6
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %11, %5
  br label %20

20:                                               ; preds = %19, %11
  %21 = phi i32 [ 0, %19 ], [ %17, %11 ]
  %22 = phi i32 [ 0, %19 ], [ 8, %11 ]
  %23 = getelementptr inbounds %struct.cpsw_common, ptr %7, i32 0, i32 17
  %24 = load ptr, ptr %23, align 4
  %25 = trunc i32 %21 to i16
  %26 = tail call i32 @cpsw_ale_del_mcast(ptr noundef %24, ptr noundef %1, i32 noundef 0, i32 noundef %22, i16 noundef zeroext %25) #13
  br label %27

27:                                               ; preds = %20, %3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpts_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_intr_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_ale_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_ale_del_mcast(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpdma_chan_submit(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cpdma_check_free_tx_desc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__skb_pad(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_classify_raw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_tstamp_tx(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @cpsw_set_promiscious(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #2 {
  %3 = getelementptr i8, ptr %0, i32 1996
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.cpsw_common, ptr %4, i32 0, i32 17
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.cpsw_common, ptr %4, i32 0, i32 1, i32 8
  %8 = load i8, ptr %7, align 2, !range !14
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %39, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.cpsw_common, ptr %4, i32 0, i32 1, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %34, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.cpsw_common, ptr %4, i32 0, i32 13
  %16 = load ptr, ptr %15, align 4
  br label %17

17:                                               ; preds = %17, %14
  %18 = phi i1 [ false, %14 ], [ %26, %17 ]
  %19 = phi i32 [ 0, %14 ], [ %27, %17 ]
  %20 = getelementptr %struct.cpsw_slave, ptr %16, i32 %19, i32 5
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.net_device, ptr %21, i32 0, i32 14
  %23 = load i32, ptr %22, align 8
  %24 = and i32 %23, 256
  %25 = icmp ne i32 %24, 0
  %26 = select i1 %25, i1 true, i1 %18
  %27 = add nuw i32 %19, 1
  %28 = icmp eq i32 %27, %12
  br i1 %28, label %29, label %17

29:                                               ; preds = %17
  %30 = xor i1 %26, true
  %31 = select i1 %1, i1 true, i1 %30
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 111
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.53) #14
  br label %35

34:                                               ; preds = %29, %10
  br i1 %1, label %35, label %37

35:                                               ; preds = %34, %32
  %36 = tail call i32 @cpsw_ale_control_set(ptr noundef %6, i32 noundef 0, i32 noundef 7, i32 noundef 1) #13
  br label %75

37:                                               ; preds = %34
  %38 = tail call i32 @cpsw_ale_control_set(ptr noundef %6, i32 noundef 0, i32 noundef 7, i32 noundef 0) #13
  br label %75

39:                                               ; preds = %2
  br i1 %1, label %40, label %65

40:                                               ; preds = %39
  %41 = load volatile i32, ptr @jiffies, align 64
  %42 = getelementptr inbounds %struct.cpsw_common, ptr %4, i32 0, i32 1, i32 3
  br label %43

43:                                               ; preds = %43, %40
  %44 = phi i32 [ 0, %40 ], [ %47, %43 ]
  %45 = tail call i32 @cpsw_ale_control_set(ptr noundef %6, i32 noundef %44, i32 noundef 15, i32 noundef 1) #13
  %46 = tail call i32 @cpsw_ale_control_set(ptr noundef %6, i32 noundef %44, i32 noundef 16, i32 noundef 1) #13
  %47 = add i32 %44, 1
  %48 = load i32, ptr %42, align 4
  %49 = icmp ugt i32 %47, %48
  br i1 %49, label %50, label %43

50:                                               ; preds = %43
  %51 = tail call i32 @cpsw_ale_control_set(ptr noundef %6, i32 noundef 0, i32 noundef 2, i32 noundef 1) #13
  %52 = sub i32 -100, %41
  br label %53

53:                                               ; preds = %56, %50
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !27
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !28
  %54 = tail call i32 @cpsw_ale_control_get(ptr noundef %6, i32 noundef 0, i32 noundef 2) #13
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load volatile i32, ptr @jiffies, align 64
  %58 = add i32 %52, %57
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %53, label %60

60:                                               ; preds = %56, %53
  %61 = tail call i32 @cpsw_ale_control_set(ptr noundef %6, i32 noundef 0, i32 noundef 2, i32 noundef 1) #13
  %62 = tail call i32 @cpsw_ale_flush_multicast(ptr noundef %6, i32 noundef 7, i32 noundef -1) #13
  %63 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 61
  tail call void @__hw_addr_ref_unsync_dev(ptr noundef %63, ptr noundef %0, ptr noundef null) #13
  %64 = tail call i32 @cpsw_ale_control_set(ptr noundef %6, i32 noundef 0, i32 noundef 3, i32 noundef 1) #13
  br label %75

65:                                               ; preds = %39
  %66 = tail call i32 @cpsw_ale_control_set(ptr noundef %6, i32 noundef 0, i32 noundef 3, i32 noundef 0) #13
  %67 = getelementptr inbounds %struct.cpsw_common, ptr %4, i32 0, i32 1, i32 3
  br label %68

68:                                               ; preds = %68, %65
  %69 = phi i32 [ 0, %65 ], [ %72, %68 ]
  %70 = tail call i32 @cpsw_ale_control_set(ptr noundef %6, i32 noundef %69, i32 noundef 15, i32 noundef 0) #13
  %71 = tail call i32 @cpsw_ale_control_set(ptr noundef %6, i32 noundef %69, i32 noundef 16, i32 noundef 0) #13
  %72 = add i32 %69, 1
  %73 = load i32, ptr %67, align 4
  %74 = icmp ugt i32 %72, %73
  br i1 %74, label %75, label %68

75:                                               ; preds = %68, %60, %37, %35
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_ale_set_allmulti(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hw_addr_ref_sync_dev(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpsw_add_mc_addr(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %28

5:                                                ; preds = %3
  %6 = getelementptr i8, ptr %0, i32 1996
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.cpsw_common, ptr %7, i32 0, i32 1, i32 8
  %9 = load i8, ptr %8, align 2, !range !14
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.cpsw_common, ptr %7, i32 0, i32 13
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %0, i32 1992
  %15 = load i32, ptr %14, align 8
  %16 = getelementptr %struct.cpsw_slave, ptr %13, i32 %15, i32 6
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %11, %5
  br label %20

20:                                               ; preds = %19, %11
  %21 = phi i32 [ 0, %19 ], [ %17, %11 ]
  %22 = phi i32 [ 0, %19 ], [ 8, %11 ]
  %23 = select i1 %10, i32 7, i32 1
  %24 = getelementptr inbounds %struct.cpsw_common, ptr %7, i32 0, i32 17
  %25 = load ptr, ptr %24, align 4
  %26 = trunc i32 %21 to i16
  %27 = tail call i32 @cpsw_ale_add_mcast(ptr noundef %25, ptr noundef %1, i32 noundef %23, i32 noundef %22, i16 noundef zeroext %26, i32 noundef 0) #13
  br label %28

28:                                               ; preds = %20, %3
  %29 = phi i32 [ 0, %3 ], [ %27, %20 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpsw_del_mc_addr(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %27

5:                                                ; preds = %3
  %6 = getelementptr i8, ptr %0, i32 1996
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.cpsw_common, ptr %7, i32 0, i32 1, i32 8
  %9 = load i8, ptr %8, align 2, !range !14
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.cpsw_common, ptr %7, i32 0, i32 13
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %0, i32 1992
  %15 = load i32, ptr %14, align 8
  %16 = getelementptr %struct.cpsw_slave, ptr %13, i32 %15, i32 6
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %11, %5
  br label %20

20:                                               ; preds = %19, %11
  %21 = phi i32 [ 0, %19 ], [ %17, %11 ]
  %22 = phi i32 [ 0, %19 ], [ 8, %11 ]
  %23 = getelementptr inbounds %struct.cpsw_common, ptr %7, i32 0, i32 17
  %24 = load ptr, ptr %23, align 4
  %25 = trunc i32 %21 to i16
  %26 = tail call i32 @cpsw_ale_del_mcast(ptr noundef %24, ptr noundef %1, i32 noundef 0, i32 noundef %22, i16 noundef zeroext %25) #13
  br label %27

27:                                               ; preds = %20, %3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_ale_control_get(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_ale_flush_multicast(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_ale_del_ucast(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_ale_del_vlan(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_xdp_tx_frame(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cpsw_get_drvinfo(ptr nocapture noundef readonly %0, ptr noundef %1) #11 {
  %3 = getelementptr i8, ptr %0, i32 1996
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %5, i32 -16
  %7 = getelementptr inbounds %struct.ethtool_drvinfo, ptr %1, i32 0, i32 1
  %8 = tail call i32 @strlcpy(ptr noundef %7, ptr noundef nonnull @.str, i32 noundef 32) #13
  %9 = getelementptr inbounds %struct.ethtool_drvinfo, ptr %1, i32 0, i32 2
  %10 = tail call i32 @strlcpy(ptr noundef %9, ptr noundef nonnull @.str.56, i32 noundef 32) #13
  %11 = getelementptr inbounds %struct.ethtool_drvinfo, ptr %1, i32 0, i32 4
  %12 = load ptr, ptr %6, align 8
  %13 = tail call i32 @strlcpy(ptr noundef %11, ptr noundef %12, i32 noundef 32) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_get_regs_len(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_get_regs(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_get_wol(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_set_wol(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_get_msglevel(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_set_msglevel(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_nway_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_get_coalesce(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_get_ringparam(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_set_ringparam(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_get_pauseparam(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpsw_set_pauseparam(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca i8, align 1
  %4 = getelementptr i8, ptr %0, i32 1408
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #13
  %5 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %1, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = icmp ne i32 %6, 0
  %8 = getelementptr i8, ptr %0, i32 1426
  %9 = zext i1 %7 to i8
  store i8 %9, ptr %8, align 2
  %10 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %1, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = icmp ne i32 %11, 0
  %13 = getelementptr i8, ptr %0, i32 1427
  %14 = zext i1 %12 to i8
  store i8 %14, ptr %13, align 1
  %15 = getelementptr i8, ptr %0, i32 1996
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.cpsw_common, ptr %16, i32 0, i32 1, i32 8
  %18 = load i8, ptr %17, align 2, !range !14
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.cpsw_common, ptr %16, i32 0, i32 13
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr i8, ptr %0, i32 1992
  %24 = load i32, ptr %23, align 8
  %25 = getelementptr %struct.cpsw_slave, ptr %22, i32 %24
  call fastcc void @_cpsw_adjust_link(ptr noundef %25, ptr noundef %4, ptr noundef nonnull %3)
  br label %39

26:                                               ; preds = %2
  %27 = getelementptr inbounds %struct.cpsw_common, ptr %16, i32 0, i32 1, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.cpsw_common, ptr %16, i32 0, i32 13
  %32 = load ptr, ptr %31, align 4
  br label %33

33:                                               ; preds = %33, %30
  %34 = phi i32 [ %37, %33 ], [ %28, %30 ]
  %35 = phi ptr [ %36, %33 ], [ %32, %30 ]
  %36 = getelementptr %struct.cpsw_slave, ptr %35, i32 1
  call fastcc void @_cpsw_adjust_link(ptr noundef %35, ptr noundef %4, ptr noundef nonnull %3)
  %37 = add i32 %34, -1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %33

39:                                               ; preds = %33, %26, %20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_get_strings(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_get_ethtool_stats(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_ethtool_op_begin(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_ethtool_op_complete(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_get_sset_count(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_get_channels(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpsw_set_channels(ptr noundef %0, ptr noundef %1) #2 {
  %3 = tail call i32 @cpsw_set_channels_common(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @cpsw_rx_handler) #13
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_get_ts_info(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_get_eee(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_set_eee(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_get_link_ksettings(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_set_link_ksettings(ptr noundef, ptr noundef) #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_set_channels_common(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_phy_deregister_fixed_link(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_platform_depopulate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpsw_suspend(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @rtnl_lock() #13
  %4 = getelementptr inbounds %struct.cpsw_common, ptr %3, i32 0, i32 1, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %28, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.cpsw_common, ptr %3, i32 0, i32 13
  br label %9

9:                                                ; preds = %24, %7
  %10 = phi i32 [ %5, %7 ], [ %25, %24 ]
  %11 = phi i32 [ 0, %7 ], [ %26, %24 ]
  %12 = load ptr, ptr %8, align 4
  %13 = getelementptr %struct.cpsw_slave, ptr %12, i32 %11, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 6
  %18 = load volatile i32, ptr %17, align 4
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = tail call i32 @cpsw_ndo_stop(ptr noundef nonnull %14)
  %23 = load i32, ptr %4, align 4
  br label %24

24:                                               ; preds = %21, %16, %9
  %25 = phi i32 [ %10, %9 ], [ %23, %21 ], [ %10, %16 ]
  %26 = add nuw i32 %11, 1
  %27 = icmp ult i32 %26, %25
  br i1 %27, label %9, label %28

28:                                               ; preds = %24, %1
  tail call void @rtnl_unlock() #13
  %29 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %0) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpsw_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %0) #13
  tail call void @rtnl_lock() #13
  %5 = getelementptr inbounds %struct.cpsw_common, ptr %3, i32 0, i32 1, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %29, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.cpsw_common, ptr %3, i32 0, i32 13
  br label %10

10:                                               ; preds = %25, %8
  %11 = phi i32 [ %6, %8 ], [ %26, %25 ]
  %12 = phi i32 [ 0, %8 ], [ %27, %25 ]
  %13 = load ptr, ptr %9, align 4
  %14 = getelementptr %struct.cpsw_slave, ptr %13, i32 %12, i32 5
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %25, label %17

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 6
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = tail call i32 @cpsw_ndo_open(ptr noundef nonnull %15)
  %24 = load i32, ptr %5, align 4
  br label %25

25:                                               ; preds = %22, %17, %10
  %26 = phi i32 [ %11, %10 ], [ %24, %22 ], [ %11, %17 ]
  %27 = add nuw i32 %12, 1
  %28 = icmp ult i32 %27, %26
  br i1 %28, label %10, label %29

29:                                               ; preds = %25, %1
  tail call void @rtnl_unlock() #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #10

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind }
attributes #14 = { cold nounwind }

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
!9 = !{i64 2147957109}
!10 = !{i64 455419, i64 2147945390, i64 2147945416, i64 2147945463, i64 2147945485, i64 2147945513, i64 2147945533}
!11 = !{i64 441988, i64 442013, i64 442035, i64 442051, i64 442063, i64 442083, i64 442107, i64 442123, i64 442135}
!12 = !{i64 2147957235}
!13 = !{!"branch_weights", i32 1, i32 2000}
!14 = !{i8 0, i8 2}
!15 = !{i64 990370}
!16 = !{i64 2157282908}
!17 = !{i64 2157283825}
!18 = !{!"branch_weights", i32 2000, i32 1}
!19 = !{i64 2153468737, i64 2153469225, i64 2153468774, i64 2153468830, i64 2153468864, i64 2153468888, i64 2153468929, i64 2153468950, i64 2153468978, i64 2153469012}
!20 = !{i64 2157291890}
!21 = !{i64 2157292041}
!22 = !{i64 990788}
!23 = !{i64 2157277865}
!24 = !{i64 2157278225}
!25 = !{i64 2157278599}
!26 = !{i64 2157277179}
!27 = !{i64 2157212037}
!28 = !{i64 2157211879}
