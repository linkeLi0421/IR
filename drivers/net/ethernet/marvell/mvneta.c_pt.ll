; ModuleID = '/llk/IR/drivers/net/ethernet/marvell/mvneta.c_pt.bc'
source_filename = "../drivers/net/ethernet/marvell/mvneta.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.155 }
%union.anon.155 = type { ptr }
%struct.cpumask = type { [1 x i32] }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.phylink_mac_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.phylink_pcs_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.softnet_data = type { %struct.list_head, %struct.sk_buff_head, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.anon.185, [4 x i8], i32, [60 x i8], %struct.__call_single_data, ptr, i32, i32, i32, %struct.sk_buff_head, %struct.napi_struct, [56 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.anon.185 = type { i16, i8 }
%struct.__call_single_data = type { %struct.__call_single_node, ptr, ptr }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.19 }
%struct.llist_node = type { ptr }
%union.anon.19 = type { i32 }
%struct.sk_buff_head = type { %union.anon.76, i32, %struct.spinlock }
%union.anon.76 = type { %struct.anon.77 }
%struct.anon.77 = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.mvneta_statistic = type { i16, i16, [32 x i8] }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mvneta_port = type { i8, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, %struct.hlist_node, %struct.hlist_node, i32, %struct.spinlock, i8, i32, %struct.napi_struct, ptr, ptr, ptr, [256 x i8], i16, i16, i32, ptr, i32, ptr, %struct.phylink_config, %struct.phylink_pcs, ptr, ptr, ptr, ptr, i32, i8, i8, i8, [42 x i64], [1 x i32], i8, i16, ptr }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }
%struct.phylink_pcs = type { ptr, i8 }
%struct.mvneta_pcpu_port = type { ptr, %struct.napi_struct, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.160, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.181, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.160 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.ref_tracker_dir = type {}
%struct.possible_net_t = type {}
%union.anon.181 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.netdev_queue = type { ptr, %struct.netdevice_tracker, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, [4 x i8], %struct.spinlock, i32, i32, i32, [48 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [52 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [24 x i8] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.mbus_dram_target_info = type { i8, i32, [4 x %struct.mbus_dram_window] }
%struct.mbus_dram_window = type { i8, i8, i64, i64 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.mvneta_tx_queue = type { i8, i32, i32, i32, i32, i32, ptr, i32, i32, i32, ptr, i32, i32, i32, ptr, i32, %struct.cpumask }
%struct.mvneta_rx_queue = type { i8, i32, i32, i32, ptr, [44 x i8], %struct.xdp_rxq_info, ptr, ptr, i32, i32, i32, i32, i32, [36 x i8] }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [40 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.xdp_buff = type { ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.mvneta_rx_desc = type { i32, i16, i16, i32, i32, i32, i16, i16, i32, i32 }
%struct.mvneta_bm = type { ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.mvneta_pcpu_stats = type { %struct.u64_stats_sync, %struct.mvneta_ethtool_stats, i64, i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.mvneta_ethtool_stats = type { %struct.mvneta_stats, i64, i64 }
%struct.mvneta_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
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
%struct.mvneta_bm_pool = type { %struct.hwbm_pool, i8, i32, i32, i32, ptr, i32, i8, ptr }
%struct.hwbm_pool = type { i32, i32, i32, ptr, %struct.mutex, ptr }
%struct.bpf_prog = type { i16, i16, i32, i32, i32, i32, [8 x i8], ptr, ptr, ptr, ptr, ptr, %union.anon.110 }
%union.anon.110 = type { %struct.anon.111 }
%struct.anon.111 = type { %struct.anon.112, [0 x %struct.sock_filter] }
%struct.anon.112 = type {}
%struct.sock_filter = type { i16, i8, i8, i32 }
%struct.page_pool_params = type { i32, i32, i32, i32, ptr, i32, i32, i32, ptr, ptr }
%struct.page = type { i32, %union.anon.1, %union.anon.154, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.154 = type { %struct.atomic_t }
%struct.bpf_prog_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.xdp_frame = type { ptr, i16, i16, i32, %struct.xdp_mem_info, ptr }
%struct.phylink_link_state = type { [3 x i32], [3 x i32], i32, i32, i32, i32, i8 }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.tso_t = type { i32, i32, ptr, i16, i8, i8, i32 }
%struct.mvneta_tx_buf = type { i32, %union.anon.184 }
%union.anon.184 = type { ptr }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.mvneta_tx_desc = type { i32, i16, i16, i32, i32, [4 x i32] }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.tc_mqprio_qopt = type { i8, [16 x i8], i8, [16 x i16], [16 x i16] }
%struct.tc_mqprio_qopt_offload = type { %struct.tc_mqprio_qopt, i16, i16, i32, [16 x i64], [16 x i64] }
%struct.netdev_bpf = type { i32, %union.anon.165 }
%union.anon.165 = type { %struct.anon.166 }
%struct.anon.166 = type { i32, ptr, ptr }
%struct.xdp_frame_bulk = type { i32, ptr, [16 x ptr] }
%struct.vlan_hdr = type { i16, i16 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.69 }
%union.anon.69 = type { [4 x i32] }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_ringparam = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_rxnfc = type { i32, i32, i64, %struct.ethtool_rx_flow_spec, %union.anon.175, [0 x i32] }
%struct.ethtool_rx_flow_spec = type { i32, %union.ethtool_flow_union, %struct.ethtool_flow_ext, %union.ethtool_flow_union, %struct.ethtool_flow_ext, i64, i32 }
%union.ethtool_flow_union = type { %struct.ethtool_tcpip6_spec, [12 x i8] }
%struct.ethtool_tcpip6_spec = type { [4 x i32], [4 x i32], i16, i16, i8 }
%struct.ethtool_flow_ext = type { [2 x i8], [6 x i8], i16, i16, [2 x i32] }
%union.anon.175 = type { i32 }
%struct.ethtool_eee = type { i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }

@__initcall__kmod_mvneta__661_5764_mvneta_driver_init6 = internal global ptr @mvneta_driver_init, section ".initcall6.init", align 4
@mvneta_driver = internal global %struct.platform_driver { ptr @mvneta_probe, ptr @mvneta_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.2, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mvneta_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mvneta_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@online_hpstate = internal unnamed_addr global i32 0, align 4
@__exitcall_mvneta_driver_exit = internal global ptr @mvneta_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description662 = internal constant [66 x i8] c"mvneta.description=Marvell NETA Ethernet Driver - www.marvell.com\00", section ".modinfo", align 1
@__UNIQUE_ID_author663 = internal constant [102 x i8] c"mvneta.author=Rami Rosen <rosenr@marvell.com>, Thomas Petazzoni <thomas.petazzoni@free-electrons.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file664 = internal constant [48 x i8] c"mvneta.file=drivers/net/ethernet/marvell/mvneta\00", section ".modinfo", align 1
@__UNIQUE_ID_license665 = internal constant [19 x i8] c"mvneta.license=GPL\00", section ".modinfo", align 1
@__param_str_rxq_number = internal constant [18 x i8] c"mvneta.rxq_number\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@rxq_number = internal global i32 8, align 4
@__param_rxq_number = internal constant %struct.kernel_param { ptr @__param_str_rxq_number, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.155 { ptr @rxq_number } }, section "__param", align 4
@__UNIQUE_ID_rxq_numbertype666 = internal constant [31 x i8] c"mvneta.parmtype=rxq_number:int\00", section ".modinfo", align 1
@__param_str_txq_number = internal constant [18 x i8] c"mvneta.txq_number\00", align 1
@txq_number = internal global i32 8, align 4
@__param_txq_number = internal constant %struct.kernel_param { ptr @__param_str_txq_number, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.155 { ptr @txq_number } }, section "__param", align 4
@__UNIQUE_ID_txq_numbertype667 = internal constant [31 x i8] c"mvneta.parmtype=txq_number:int\00", section ".modinfo", align 1
@__param_str_rxq_def = internal constant [15 x i8] c"mvneta.rxq_def\00", align 1
@rxq_def = internal global i32 0, align 4
@__param_rxq_def = internal constant %struct.kernel_param { ptr @__param_str_rxq_def, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.155 { ptr @rxq_def } }, section "__param", align 4
@__UNIQUE_ID_rxq_deftype668 = internal constant [28 x i8] c"mvneta.parmtype=rxq_def:int\00", section ".modinfo", align 1
@__param_str_rx_copybreak = internal constant [20 x i8] c"mvneta.rx_copybreak\00", align 1
@rx_copybreak = internal global i32 256, section ".data..read_mostly", align 4
@__param_rx_copybreak = internal constant %struct.kernel_param { ptr @__param_str_rx_copybreak, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.155 { ptr @rx_copybreak } }, section "__param", align 4
@__UNIQUE_ID_rx_copybreaktype669 = internal constant [33 x i8] c"mvneta.parmtype=rx_copybreak:int\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [18 x i8] c"net/mvneta:online\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"net/mvneta:dead\00", align 1
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__cpu_present_mask = external dso_local global %struct.cpumask, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"mvneta\00", align 1
@mvneta_match = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-370-neta\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-xp-neta\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-3700-neta\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@mvneta_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @mvneta_suspend, ptr @mvneta_resume, ptr @mvneta_suspend, ptr @mvneta_resume, ptr @mvneta_suspend, ptr @mvneta_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"incorrect phy-mode\0A\00", align 1
@mvneta_phylink_ops = internal constant %struct.phylink_mac_ops { ptr @phylink_generic_validate, ptr null, ptr null, ptr @mvneta_mac_prepare, ptr @mvneta_mac_config, ptr @mvneta_mac_finish, ptr null, ptr @mvneta_mac_link_down, ptr @mvneta_mac_link_up }, align 4
@mvneta_netdev_ops = internal constant %struct.net_device_ops { ptr null, ptr null, ptr @mvneta_open, ptr @mvneta_stop, ptr @mvneta_tx, ptr null, ptr null, ptr null, ptr @mvneta_set_rx_mode, ptr @mvneta_set_mac_addr, ptr null, ptr null, ptr @mvneta_ioctl, ptr null, ptr null, ptr null, ptr null, ptr @mvneta_change_mtu, ptr null, ptr null, ptr @mvneta_get_stats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mvneta_setup_tc, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mvneta_fix_features, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mvneta_xdp, ptr @mvneta_xdp_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@mvneta_eth_tool_ops = internal constant %struct.ethtool_ops { i8 0, i32 35, i32 0, ptr @mvneta_ethtool_get_drvinfo, ptr null, ptr null, ptr @mvneta_ethtool_get_wol, ptr @mvneta_ethtool_set_wol, ptr null, ptr null, ptr @mvneta_ethtool_nway_reset, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr @mvneta_ethtool_get_coalesce, ptr @mvneta_ethtool_set_coalesce, ptr @mvneta_ethtool_get_ringparam, ptr @mvneta_ethtool_set_ringparam, ptr null, ptr @mvneta_ethtool_get_pauseparam, ptr @mvneta_ethtool_set_pauseparam, ptr null, ptr @mvneta_ethtool_get_strings, ptr null, ptr @mvneta_ethtool_get_stats, ptr null, ptr null, ptr null, ptr null, ptr @mvneta_ethtool_get_sset_count, ptr @mvneta_ethtool_get_rxnfc, ptr null, ptr null, ptr null, ptr null, ptr @mvneta_ethtool_get_rxfh_indir_size, ptr @mvneta_ethtool_get_rxfh, ptr @mvneta_ethtool_set_rxfh, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mvneta_ethtool_get_eee, ptr @mvneta_ethtool_set_eee, ptr null, ptr null, ptr null, ptr null, ptr @mvneta_ethtool_get_link_ksettings, ptr @mvneta_ethtool_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"marvell,armada-3700-neta\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"bus\00", align 1
@mvneta_phylink_pcs_ops = internal constant %struct.phylink_pcs_ops { ptr @mvneta_pcs_validate, ptr @mvneta_pcs_get_state, ptr @mvneta_pcs_config, ptr @mvneta_pcs_an_restart, ptr null }, align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"device tree\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"hardware\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"random\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"tx-csum-limit\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"Wrong TX csum limit in DT, set to %dB\0A\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"marvell,armada-370-neta\00", align 1
@global_port_id = internal unnamed_addr global i32 0, align 4
@.str.13 = private unnamed_addr constant [15 x i8] c"buffer-manager\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"use SW buffer management\0A\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"can't power up port\0A\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"failed to register\0A\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"Using %s mac address %pM\0A\00", align 1
@.str.18 = private unnamed_addr constant [38 x i8] c"drivers/net/ethernet/marvell/mvneta.c\00", align 1
@.str.19 = private unnamed_addr constant [47 x i8] c"TIMEOUT for RX stopped ! rx_queue_cmd: 0x%08x\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.20 = private unnamed_addr constant [38 x i8] c"TIMEOUT for TX stopped status=0x%08x\0A\00", align 1
@.str.21 = private unnamed_addr constant [37 x i8] c"TX FIFO empty timeout status=0x%08x\0A\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"cannot request irq %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"cannot probe MDIO bus\0A\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"%s: can't create rxq=%d\0A\00", align 1
@__func__.mvneta_setup_rxqs = private unnamed_addr constant [18 x i8] c"mvneta_setup_rxqs\00", align 1
@.str.25 = private unnamed_addr constant [35 x i8] c"%s:rxq %d, %d of %d buffs  filled\0A\00", align 1
@__func__.mvneta_rxq_fill = private unnamed_addr constant [16 x i8] c"mvneta_rxq_fill\00", align 1
@.str.26 = private unnamed_addr constant [25 x i8] c"%s: can't create txq=%d\0A\00", align 1
@__func__.mvneta_setup_txqs = private unnamed_addr constant [18 x i8] c"mvneta_setup_txqs\00", align 1
@__const.mvneta_mdio_probe.wol = private unnamed_addr constant { i32, i32, i32, [6 x i8], [2 x i8] } { i32 5, i32 0, i32 0, [6 x i8] zeroinitializer, [2 x i8] zeroinitializer }, align 4
@.str.27 = private unnamed_addr constant [26 x i8] c"could not attach PHY: %d\0A\00", align 1
@.str.28 = private unnamed_addr constant [30 x i8] c"\016*** Is this even possible?\0A\00", align 1
@.str.29 = private unnamed_addr constant [24 x i8] c"include/linux/if_vlan.h\00", align 1
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.30 = private unnamed_addr constant [28 x i8] c"include/linux/dma-mapping.h\00", align 1
@.str.31 = private unnamed_addr constant [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@softnet_data = external dso_local global %struct.softnet_data, section ".data..percpu..shared_aligned", align 64
@.str.33 = private unnamed_addr constant [6 x i8] c"\01\00^\00\00\00", align 1
@.str.34 = private unnamed_addr constant [32 x i8] c"No valid Mcast for crc8=0x%02x\0A\00", align 1
@.str.35 = private unnamed_addr constant [55 x i8] c"After delete there are %d valid Mcast for crc8=0x%02x\0A\00", align 1
@.str.37 = private unnamed_addr constant [35 x i8] c"Illegal MTU value %d for XDP mode\0A\00", align 1
@.str.38 = private unnamed_addr constant [39 x i8] c"unable to setup rxqs after MTU change\0A\00", align 1
@.str.39 = private unnamed_addr constant [39 x i8] c"unable to setup txqs after MTU change\0A\00", align 1
@.str.40 = private unnamed_addr constant [36 x i8] c"cannot free all buffers in pool %d\0A\00", align 1
@.str.41 = private unnamed_addr constant [29 x i8] c"pool %d: %d of %d allocated\0A\00", align 1
@.str.42 = private unnamed_addr constant [46 x i8] c"fail to update MTU, fall back to software BM\0A\00", align 1
@.str.44 = private unnamed_addr constant [46 x i8] c"Disable IP checksum for MTU greater than %dB\0A\00", align 1
@mvneta_xdp_setup.__msg = internal constant [30 x i8] c"mvneta: MTU too large for XDP\00", align 1
@mvneta_xdp_setup.__msg.45 = internal constant [56 x i8] c"mvneta: Hardware Buffer Management not supported on XDP\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"1.0\00", align 1
@.str.47 = private unnamed_addr constant [40 x i8] c"TX queue size set to %u (requested %u)\0A\00", align 1
@.str.48 = private unnamed_addr constant [49 x i8] c"error on opening device after ring param change\0A\00", align 1
@mvneta_statistics = internal unnamed_addr constant [42 x %struct.mvneta_statistic] [%struct.mvneta_statistic { i16 12288, i16 64, [32 x i8] c"good_octets_received\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mvneta_statistic { i16 12304, i16 32, [32 x i8] c"good_frames_received\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mvneta_statistic { i16 12296, i16 32, [32 x i8] c"bad_octets_received\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mvneta_statistic { i16 12308, i16 32, [32 x i8] c"bad_frames_received\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mvneta_statistic { i16 12312, i16 32, [32 x i8] c"broadcast_frames_received\00\00\00\00\00\00\00" }, %struct.mvneta_statistic { i16 12316, i16 32, [32 x i8] c"multicast_frames_received\00\00\00\00\00\00\00" }, %struct.mvneta_statistic { i16 12368, i16 32, [32 x i8] c"unrec_mac_control_received\00\00\00\00\00\00" }, %struct.mvneta_statistic { i16 12376, i16 32, [32 x i8] c"good_fc_received\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mvneta_statistic { i16 12380, i16 32, [32 x i8] c"bad_fc_received\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mvneta_statistic { i16 12384, i16 32, [32 x i8] c"undersize_received\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mvneta_statistic { i16 12388, i16 32, [32 x i8] c"fragments_received\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mvneta_statistic { i16 12392, i16 32, [32 x i8] c"oversize_received\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mvneta_statistic { i16 12396, i16 32, [32 x i8] c"jabber_received\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mvneta_statistic { i16 12400, i16 32, [32 x i8] c"mac_receive_error\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mvneta_statistic { i16 12404, i16 32, [32 x i8] c"bad_crc_event\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mvneta_statistic { i16 12408, i16 32, [32 x i8] c"collision\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mvneta_statistic { i16 12412, i16 32, [32 x i8] c"late_collision\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mvneta_statistic { i16 9348, i16 32, [32 x i8] c"rx_discard\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mvneta_statistic { i16 9352, i16 32, [32 x i8] c"rx_overrun\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mvneta_statistic { i16 12320, i16 32, [32 x i8] c"frames_64_octets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mvneta_statistic { i16 12324, i16 32, [32 x i8] c"frames_65_to_127_octets\00\00\00\00\00\00\00\00\00" }, %struct.mvneta_statistic { i16 12328, i16 32, [32 x i8] c"frames_128_to_255_octets\00\00\00\00\00\00\00\00" }, %struct.mvneta_statistic { i16 12332, i16 32, [32 x i8] c"frames_256_to_511_octets\00\00\00\00\00\00\00\00" }, %struct.mvneta_statistic { i16 12336, i16 32, [32 x i8] c"frames_512_to_1023_octets\00\00\00\00\00\00\00" }, %struct.mvneta_statistic { i16 12340, i16 32, [32 x i8] c"frames_1024_to_max_octets\00\00\00\00\00\00\00" }, %struct.mvneta_statistic { i16 12344, i16 64, [32 x i8] c"good_octets_sent\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mvneta_statistic { i16 12352, i16 32, [32 x i8] c"good_frames_sent\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mvneta_statistic { i16 12356, i16 32, [32 x i8] c"excessive_collision\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mvneta_statistic { i16 12360, i16 32, [32 x i8] c"multicast_frames_sent\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mvneta_statistic { i16 12364, i16 32, [32 x i8] c"broadcast_frames_sent\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mvneta_statistic { i16 12372, i16 32, [32 x i8] c"fc_sent\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mvneta_statistic { i16 12300, i16 32, [32 x i8] c"internal_mac_transmit_err\00\00\00\00\00\00\00" }, %struct.mvneta_statistic { i16 0, i16 1, [32 x i8] c"eee_wakeup_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mvneta_statistic { i16 1, i16 1, [32 x i8] c"skb_alloc_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mvneta_statistic { i16 2, i16 1, [32 x i8] c"refill_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mvneta_statistic { i16 3, i16 1, [32 x i8] c"rx_xdp_redirect\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mvneta_statistic { i16 4, i16 1, [32 x i8] c"rx_xdp_pass\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mvneta_statistic { i16 5, i16 1, [32 x i8] c"rx_xdp_drop\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mvneta_statistic { i16 6, i16 1, [32 x i8] c"rx_xdp_tx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mvneta_statistic { i16 7, i16 1, [32 x i8] c"rx_xdp_tx_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mvneta_statistic { i16 8, i16 1, [32 x i8] c"tx_xdp_xmit\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.mvneta_statistic { i16 9, i16 1, [32 x i8] c"tx_xdp_xmit_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }], align 2
@.str.49 = private unnamed_addr constant [13 x i8] c"bm,pool-long\00", align 1
@.str.50 = private unnamed_addr constant [22 x i8] c"missing long pool id\0A\00", align 1
@.str.51 = private unnamed_addr constant [35 x i8] c"fail to obtain long pool for port\0A\00", align 1
@.str.54 = private unnamed_addr constant [37 x i8] c"fail to configure mbus window to BM\0A\00", align 1
@.str.56 = private unnamed_addr constant [41 x i8] c"bad rx status %08x (crc error), size=%d\0A\00", align 1
@.str.57 = private unnamed_addr constant [45 x i8] c"bad rx status %08x (overrun error), size=%d\0A\00", align 1
@.str.58 = private unnamed_addr constant [54 x i8] c"bad rx status %08x (max frame length error), size=%d\0A\00", align 1
@.str.59 = private unnamed_addr constant [46 x i8] c"bad rx status %08x (resource error), size=%d\0A\00", align 1
@bpf_master_redirect_enabled_key = external dso_local global %struct.static_key_false, align 4
@bpf_stats_enabled_key = external dso_local global %struct.static_key_false, align 4
@.str.60 = private unnamed_addr constant [38 x i8] c"Driver BUG: missing reserved tailroom\00", align 1
@__func__.xdp_update_frame_from_buff = private unnamed_addr constant [27 x i8] c"xdp_update_frame_from_buff\00", align 1
@__tracepoint_xdp_exception = external dso_local global %struct.tracepoint, align 4
@.str.62 = private unnamed_addr constant [42 x i8] c"\013Can't refill queue %d. Done %d from %d\0A\00", align 1
@llvm.compiler.used = appending global [15 x ptr] [ptr @__UNIQUE_ID_author663, ptr @__UNIQUE_ID_description662, ptr @__UNIQUE_ID_file664, ptr @__UNIQUE_ID_license665, ptr @__UNIQUE_ID_rx_copybreaktype669, ptr @__UNIQUE_ID_rxq_deftype668, ptr @__UNIQUE_ID_rxq_numbertype666, ptr @__UNIQUE_ID_txq_numbertype667, ptr @__exitcall_mvneta_driver_exit, ptr @__initcall__kmod_mvneta__661_5764_mvneta_driver_init6, ptr @__param_rx_copybreak, ptr @__param_rxq_def, ptr @__param_rxq_number, ptr @__param_txq_number, ptr @mvneta_driver_exit], section "llvm.metadata"
@switch.table.mvneta_poll.63 = private unnamed_addr constant [4 x ptr] [ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @mvneta_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__cpuhp_setup_state(i32 noundef 194, ptr noundef nonnull @.str, i1 noundef zeroext false, ptr noundef nonnull @mvneta_cpu_online, ptr noundef nonnull @mvneta_cpu_down_prepare, i1 noundef zeroext true) #21
  %2 = icmp slt i32 %1, 0
  br i1 %2, label %13, label %3

3:                                                ; preds = %0
  store i32 %1, ptr @online_hpstate, align 4
  %4 = tail call i32 @__cpuhp_setup_state(i32 noundef 17, ptr noundef nonnull @.str.1, i1 noundef zeroext false, ptr noundef null, ptr noundef nonnull @mvneta_cpu_dead, i1 noundef zeroext true) #21
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  %7 = tail call i32 @__platform_driver_register(ptr noundef nonnull @mvneta_driver, ptr noundef null) #21
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %6
  tail call void @__cpuhp_remove_state(i32 noundef 17, i1 noundef zeroext false) #21
  br label %10

10:                                               ; preds = %9, %3
  %11 = phi i32 [ %4, %3 ], [ %7, %9 ]
  %12 = load i32, ptr @online_hpstate, align 4
  tail call void @__cpuhp_remove_state(i32 noundef %12, i1 noundef zeroext false) #21
  br label %13

13:                                               ; preds = %10, %6, %0
  %14 = phi i32 [ 0, %6 ], [ %1, %0 ], [ %11, %10 ]
  ret i32 %14
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @mvneta_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @mvneta_driver) #21
  tail call void @__cpuhp_remove_state(i32 noundef 17, i1 noundef zeroext false) #21
  %1 = load i32, ptr @online_hpstate, align 4
  tail call void @__cpuhp_remove_state(i32 noundef %1, i1 noundef zeroext false) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mvneta_cpu_online(i32 noundef %0, ptr noundef %1) #3 {
  %3 = icmp eq ptr %1, null
  %4 = getelementptr i8, ptr %1, i32 -36
  %5 = select i1 %3, ptr null, ptr %4
  %6 = getelementptr inbounds %struct.mvneta_port, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, %8
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.mvneta_port, ptr %5, i32 0, i32 38
  %14 = load i8, ptr %13, align 4, !range !9
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %79

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.mvneta_port, ptr %5, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %17) #21
  %18 = getelementptr inbounds %struct.mvneta_port, ptr %5, i32 0, i32 13
  %19 = load i8, ptr %18, align 4, !range !9
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !10
  %22 = load i16, ptr %17, align 4
  %23 = add i16 %22, 1
  store i16 %23, ptr %17, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !13
  br label %79

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.mvneta_port, ptr %5, i32 0, i32 8
  %26 = load ptr, ptr %25, align 8
  tail call void @netif_tx_stop_all_queues(ptr noundef %26) #21
  %27 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #22
  %28 = load i32, ptr @nr_cpu_ids, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %55

30:                                               ; preds = %51, %24
  %31 = phi i32 [ %52, %51 ], [ %28, %24 ]
  %32 = phi i32 [ %53, %51 ], [ %27, %24 ]
  %33 = icmp eq i32 %32, %0
  br i1 %33, label %51, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr %6, align 4
  %36 = ptrtoint ptr %35 to i32
  %37 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %32
  %38 = load i32, ptr %37, align 4
  %39 = add i32 %38, %36
  %40 = inttoptr i32 %39 to ptr
  %41 = getelementptr inbounds %struct.mvneta_pcpu_port, ptr %40, i32 0, i32 1, i32 1
  %42 = load volatile i32, ptr %41, align 4
  %43 = and i32 %42, 1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %45, %34
  tail call void @msleep(i32 noundef 1) #21
  %46 = load volatile i32, ptr %41, align 4
  %47 = and i32 %46, 1
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %45

49:                                               ; preds = %45
  %50 = load i32, ptr @nr_cpu_ids, align 4
  br label %51

51:                                               ; preds = %49, %34, %30
  %52 = phi i32 [ %50, %49 ], [ %31, %34 ], [ %31, %30 ]
  %53 = tail call i32 @cpumask_next(i32 noundef %32, ptr noundef nonnull @__cpu_online_mask) #22
  %54 = icmp ult i32 %53, %52
  br i1 %54, label %30, label %55

55:                                               ; preds = %51, %24
  tail call void @on_each_cpu_cond_mask(ptr noundef null, ptr noundef nonnull @mvneta_percpu_mask_interrupt, ptr noundef %5, i1 noundef zeroext true, ptr noundef nonnull @__cpu_online_mask) #21
  %56 = getelementptr inbounds %struct.mvneta_pcpu_port, ptr %12, i32 0, i32 1
  tail call void @napi_enable(ptr noundef %56) #21
  %57 = load ptr, ptr %25, align 8
  %58 = getelementptr inbounds %struct.net_device, ptr %57, i32 0, i32 59
  %59 = load i32, ptr %58, align 8
  tail call void @enable_percpu_irq(i32 noundef %59, i32 noundef 0) #21
  tail call fastcc void @mvneta_percpu_elect(ptr noundef %5)
  tail call void @on_each_cpu_cond_mask(ptr noundef null, ptr noundef nonnull @mvneta_percpu_unmask_interrupt, ptr noundef %5, i1 noundef zeroext true, ptr noundef nonnull @__cpu_online_mask) #21
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %60 = getelementptr inbounds %struct.mvneta_port, ptr %5, i32 0, i32 5
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr i8, ptr %61, i32 9652
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 3) #21, !srcloc !15
  %63 = load ptr, ptr %25, align 8
  %64 = getelementptr inbounds %struct.net_device, ptr %63, i32 0, i32 88
  %65 = load i32, ptr %64, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %76, label %67

67:                                               ; preds = %55
  %68 = getelementptr inbounds %struct.net_device, ptr %63, i32 0, i32 87
  br label %69

69:                                               ; preds = %69, %67
  %70 = phi i32 [ 0, %67 ], [ %73, %69 ]
  %71 = load ptr, ptr %68, align 64
  %72 = getelementptr %struct.netdev_queue, ptr %71, i32 %70, i32 12
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %72) #21
  %73 = add nuw i32 %70, 1
  %74 = load i32, ptr %64, align 4
  %75 = icmp ult i32 %73, %74
  br i1 %75, label %69, label %76

76:                                               ; preds = %69, %55
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !10
  %77 = load i16, ptr %17, align 4
  %78 = add i16 %77, 1
  store i16 %78, ptr %17, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !13
  br label %79

79:                                               ; preds = %76, %21, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mvneta_cpu_down_prepare(i32 noundef %0, ptr noundef %1) #3 {
  %3 = icmp eq ptr %1, null
  %4 = getelementptr i8, ptr %1, i32 -36
  %5 = select i1 %3, ptr null, ptr %4
  %6 = getelementptr inbounds %struct.mvneta_port, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, %8
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.mvneta_port, ptr %5, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %13) #21
  tail call void @on_each_cpu_cond_mask(ptr noundef null, ptr noundef nonnull @mvneta_percpu_mask_interrupt, ptr noundef %5, i1 noundef zeroext true, ptr noundef nonnull @__cpu_online_mask) #21
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !10
  %14 = load i16, ptr %13, align 4
  %15 = add i16 %14, 1
  store i16 %15, ptr %13, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !13
  %16 = getelementptr inbounds %struct.mvneta_pcpu_port, ptr %12, i32 0, i32 1, i32 1
  %17 = load volatile i32, ptr %16, align 4
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %20, %2
  tail call void @msleep(i32 noundef 1) #21
  %21 = load volatile i32, ptr %16, align 4
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %20

24:                                               ; preds = %20, %2
  %25 = getelementptr inbounds %struct.mvneta_pcpu_port, ptr %12, i32 0, i32 1
  tail call void @napi_disable(ptr noundef %25) #21
  %26 = getelementptr inbounds %struct.mvneta_port, ptr %5, i32 0, i32 8
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.net_device, ptr %27, i32 0, i32 59
  %29 = load i32, ptr %28, align 8
  tail call void @disable_percpu_irq(i32 noundef %29) #21
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mvneta_cpu_dead(i32 noundef %0, ptr noundef %1) #3 {
  %3 = icmp eq ptr %1, null
  %4 = getelementptr i8, ptr %1, i32 -44
  %5 = select i1 %3, ptr null, ptr %4
  %6 = getelementptr inbounds %struct.mvneta_port, ptr %5, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %6) #21
  tail call fastcc void @mvneta_percpu_elect(ptr noundef %5)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !10
  %7 = load i16, ptr %6, align 4
  %8 = add i16 %7, 1
  store i16 %8, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !13
  tail call void @on_each_cpu_cond_mask(ptr noundef null, ptr noundef nonnull @mvneta_percpu_unmask_interrupt, ptr noundef %5, i1 noundef zeroext true, ptr noundef nonnull @__cpu_online_mask) #21
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %9 = getelementptr inbounds %struct.mvneta_port, ptr %5, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 9652
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 3) #21, !srcloc !15
  %12 = getelementptr inbounds %struct.mvneta_port, ptr %5, i32 0, i32 8
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 88
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 87
  br label %19

19:                                               ; preds = %19, %17
  %20 = phi i32 [ 0, %17 ], [ %23, %19 ]
  %21 = load ptr, ptr %18, align 64
  %22 = getelementptr %struct.netdev_queue, ptr %21, i32 %20, i32 12
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %22) #21
  %23 = add nuw i32 %20, 1
  %24 = load i32, ptr %14, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %19, label %26

26:                                               ; preds = %19, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_stop_all_queues(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mvneta_percpu_mask_interrupt(ptr nocapture noundef readonly %0) #3 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %2 = getelementptr inbounds %struct.mvneta_port, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 9636
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 0) #21, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr i8, ptr %5, i32 9644
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 0) #21, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr i8, ptr %7, i32 9652
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 0) #21, !srcloc !15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mvneta_percpu_enable(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.mvneta_port, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 59
  %5 = load i32, ptr %4, align 8
  tail call void @enable_percpu_irq(i32 noundef %5, i32 noundef 0) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mvneta_percpu_elect(ptr noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.mvneta_port, ptr %0, i32 0, i32 11
  %3 = load i32, ptr %2, align 4
  %4 = lshr i32 %3, 5
  %5 = getelementptr i32, ptr @__cpu_online_mask, i32 %4
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %3, 31
  %8 = shl nuw i32 1, %7
  %9 = and i32 %8, %6
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, i32 0, i32 %3
  %12 = load i32, ptr @__cpu_present_mask, align 4
  %13 = and i32 %12, 65535
  %14 = tail call i32 @__sw_hweight32(i32 noundef %13) #21
  %15 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #22
  %16 = load i32, ptr @nr_cpu_ids, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %66

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.mvneta_port, ptr %0, i32 0, i32 5
  br label %20

20:                                               ; preds = %56, %18
  %21 = phi i32 [ %15, %18 ], [ %63, %56 ]
  %22 = load i32, ptr @rxq_number, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %24, %20
  %25 = phi i32 [ %32, %24 ], [ 0, %20 ]
  %26 = phi i32 [ %31, %24 ], [ 0, %20 ]
  %27 = srem i32 %25, %14
  %28 = icmp eq i32 %27, %21
  %29 = shl nuw i32 1, %25
  %30 = select i1 %28, i32 %29, i32 0
  %31 = or i32 %30, %26
  %32 = add nuw nsw i32 %25, 1
  %33 = icmp eq i32 %32, %22
  br i1 %33, label %34, label %24

34:                                               ; preds = %24, %20
  %35 = phi i32 [ 0, %20 ], [ %31, %24 ]
  %36 = icmp eq i32 %21, %11
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i32, ptr %2, align 4
  %39 = shl nuw i32 1, %38
  %40 = or i32 %39, %35
  br label %41

41:                                               ; preds = %37, %34
  %42 = phi i32 [ %40, %37 ], [ %35, %34 ]
  %43 = load i32, ptr @txq_number, align 4
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = select i1 %36, i32 512, i32 0
  %47 = shl i32 %21, 2
  %48 = add i32 %47, 9536
  br label %56

49:                                               ; preds = %41
  %50 = shl i32 %21, 2
  %51 = add i32 %50, 9536
  %52 = load ptr, ptr %19, align 4
  %53 = getelementptr i8, ptr %52, i32 %51
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #21, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !17
  %55 = and i32 %54, 65280
  br label %56

56:                                               ; preds = %49, %45
  %57 = phi i32 [ %51, %49 ], [ %48, %45 ]
  %58 = phi i32 [ %55, %49 ], [ %46, %45 ]
  %59 = or i32 %58, %42
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %60 = load ptr, ptr %19, align 4
  %61 = getelementptr i8, ptr %60, i32 %57
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 %59) #21, !srcloc !15
  %62 = tail call i32 @smp_call_function_single(i32 noundef %21, ptr noundef nonnull @mvneta_percpu_unmask_interrupt, ptr noundef %0, i32 noundef 1) #21
  %63 = tail call i32 @cpumask_next(i32 noundef %21, ptr noundef nonnull @__cpu_online_mask) #22
  %64 = load i32, ptr @nr_cpu_ids, align 4
  %65 = icmp ult i32 %63, %64
  br i1 %65, label %20, label %66

66:                                               ; preds = %56, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mvneta_percpu_unmask_interrupt(ptr nocapture noundef readonly %0) #3 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %2 = getelementptr inbounds %struct.mvneta_port, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 9636
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 -2147418113) #21, !srcloc !15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @on_each_cpu_cond_mask(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_percpu_irq(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smp_call_function_single(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mvneta_percpu_disable(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.mvneta_port, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 59
  %5 = load i32, ptr %4, align 8
  tail call void @disable_percpu_irq(i32 noundef %5) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_percpu_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mvneta_probe(ptr noundef %0) #3 {
  %2 = alloca [6 x i8], align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #21
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(6) %2, i8 0, i32 6, i1 false), !annotation !18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #21
  store i32 0, ptr %3, align 4, !annotation !18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #21
  store i32 0, ptr %4, align 4, !annotation !18
  %8 = load i32, ptr @txq_number, align 4
  %9 = load i32, ptr @rxq_number, align 4
  %10 = tail call ptr @devm_alloc_etherdev_mqs(ptr noundef %5, i32 noundef 984, i32 noundef %8, i32 noundef %9) #21
  %11 = icmp eq ptr %10, null
  br i1 %11, label %278, label %12

12:                                               ; preds = %1
  %13 = tail call i32 @irq_of_parse_and_map(ptr noundef %7, i32 noundef 0) #21
  %14 = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 59
  store i32 %13, ptr %14, align 8
  %15 = icmp eq i32 %13, 0
  br i1 %15, label %278, label %16

16:                                               ; preds = %12
  %17 = call i32 @of_get_phy_mode(ptr noundef %7, ptr noundef nonnull %3) #21
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.3) #23
  br label %275

20:                                               ; preds = %16
  %21 = call ptr @devm_of_phy_get(ptr noundef %5, ptr noundef %7, ptr noundef null) #21
  %22 = icmp eq ptr %21, inttoptr (i32 -517 to ptr)
  br i1 %22, label %275, label %23

23:                                               ; preds = %20
  %24 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  %25 = select i1 %24, ptr null, ptr %21
  %26 = getelementptr i8, ptr %10, i32 1408
  %27 = getelementptr i8, ptr %10, i32 1464
  store i32 0, ptr %27, align 8
  %28 = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 111
  %29 = getelementptr i8, ptr %10, i32 1984
  store ptr %28, ptr %29, align 8
  %30 = getelementptr i8, ptr %10, i32 1988
  store i32 0, ptr %30, align 4
  %31 = getelementptr i8, ptr %10, i32 2004
  store i32 445, ptr %31, align 4
  %32 = getelementptr i8, ptr %10, i32 2000
  %33 = load i32, ptr %32, align 4
  %34 = or i32 %33, 269824
  store i32 %34, ptr %32, align 4
  %35 = icmp eq ptr %25, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %23
  %37 = load i32, ptr %3, align 4
  switch i32 %37, label %42 [
    i32 22, label %39
    i32 21, label %38
    i32 4, label %38
  ]

38:                                               ; preds = %36, %36
  br label %39

39:                                               ; preds = %38, %36, %23
  %40 = phi i32 [ 2366992, %38 ], [ 6561296, %23 ], [ 4464128, %36 ]
  %41 = or i32 %33, %40
  store i32 %41, ptr %32, align 4
  br label %42

42:                                               ; preds = %39, %36
  %43 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 26
  %44 = load ptr, ptr %43, align 4
  %45 = load i32, ptr %3, align 4
  %46 = call ptr @phylink_create(ptr noundef %29, ptr noundef %44, i32 noundef %45, ptr noundef nonnull @mvneta_phylink_ops) #21
  %47 = icmp ugt ptr %46, inttoptr (i32 -4096 to ptr)
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = ptrtoint ptr %46 to i32
  br label %275

50:                                               ; preds = %42
  %51 = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 91
  store i32 1024, ptr %51, align 16
  %52 = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 96
  store i32 500, ptr %52, align 8
  %53 = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 16
  store ptr @mvneta_netdev_ops, ptr %53, align 8
  %54 = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 42
  store ptr @mvneta_eth_tool_ops, ptr %54, align 8
  %55 = getelementptr i8, ptr %10, i32 1980
  store ptr %46, ptr %55, align 4
  %56 = getelementptr i8, ptr %10, i32 2016
  store ptr %25, ptr %56, align 8
  %57 = load i32, ptr %3, align 4
  %58 = getelementptr i8, ptr %10, i32 1968
  store i32 %57, ptr %58, align 8
  %59 = getelementptr i8, ptr %10, i32 1972
  store ptr %7, ptr %59, align 4
  %60 = load i32, ptr @rxq_def, align 4
  %61 = getelementptr i8, ptr %10, i32 1460
  store i32 %60, ptr %61, align 4
  %62 = getelementptr i8, ptr %10, i32 2376
  store i32 %60, ptr %62, align 8
  %63 = call i32 @of_device_is_compatible(ptr noundef %7, ptr noundef nonnull @.str.4) #21
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %50
  %66 = getelementptr i8, ptr %10, i32 2380
  store i8 1, ptr %66, align 4
  br label %67

67:                                               ; preds = %65, %50
  %68 = call ptr @devm_clk_get(ptr noundef %5, ptr noundef nonnull @.str.5) #21
  %69 = getelementptr i8, ptr %10, i32 1700
  store ptr %68, ptr %69, align 4
  %70 = icmp ugt ptr %68, inttoptr (i32 -4096 to ptr)
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = call ptr @devm_clk_get(ptr noundef %5, ptr noundef null) #21
  store ptr %72, ptr %69, align 4
  br label %73

73:                                               ; preds = %71, %67
  %74 = phi ptr [ %72, %71 ], [ %68, %67 ]
  %75 = icmp ugt ptr %74, inttoptr (i32 -4096 to ptr)
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = ptrtoint ptr %74 to i32
  br label %270

78:                                               ; preds = %73
  %79 = call i32 @clk_prepare(ptr noundef %74) #21
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = call i32 @clk_enable(ptr noundef %74) #21
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %81
  call void @clk_unprepare(ptr noundef %74) #21
  br label %85

85:                                               ; preds = %84, %81, %78
  %86 = call ptr @devm_clk_get(ptr noundef %5, ptr noundef nonnull @.str.6) #21
  %87 = getelementptr i8, ptr %10, i32 1704
  store ptr %86, ptr %87, align 8
  %88 = icmp ugt ptr %86, inttoptr (i32 -4096 to ptr)
  br i1 %88, label %96, label %89

89:                                               ; preds = %85
  %90 = call i32 @clk_prepare(ptr noundef %86) #21
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %89
  %93 = call i32 @clk_enable(ptr noundef %86) #21
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %92
  call void @clk_unprepare(ptr noundef %86) #21
  br label %96

96:                                               ; preds = %95, %92, %89, %85
  %97 = call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #21
  %98 = getelementptr i8, ptr %10, i32 1428
  store ptr %97, ptr %98, align 4
  %99 = icmp ugt ptr %97, inttoptr (i32 -4096 to ptr)
  br i1 %99, label %100, label %102

100:                                              ; preds = %96
  %101 = ptrtoint ptr %97 to i32
  br label %266

102:                                              ; preds = %96
  %103 = getelementptr i8, ptr %10, i32 2008
  store ptr @mvneta_phylink_pcs_ops, ptr %103, align 8
  call void @phylink_set_pcs(ptr noundef %46, ptr noundef %103) #21
  %104 = call noalias ptr @__alloc_percpu(i32 noundef 232, i32 noundef 8) #24
  %105 = getelementptr i8, ptr %10, i32 1412
  store ptr %104, ptr %105, align 4
  %106 = icmp eq ptr %104, null
  br i1 %106, label %266, label %107

107:                                              ; preds = %102
  %108 = call noalias ptr @__alloc_percpu_gfp(i32 noundef 128, i32 noundef 8, i32 noundef 3264) #24
  %109 = icmp eq ptr %108, null
  br i1 %109, label %116, label %110

110:                                              ; preds = %107
  %111 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #22
  %112 = load i32, ptr @nr_cpu_ids, align 4
  %113 = icmp ult i32 %111, %112
  br i1 %113, label %114, label %127

114:                                              ; preds = %110
  %115 = ptrtoint ptr %108 to i32
  br label %118

116:                                              ; preds = %107
  %117 = getelementptr i8, ptr %10, i32 1416
  store ptr null, ptr %117, align 8
  br label %263

118:                                              ; preds = %118, %114
  %119 = phi i32 [ %111, %114 ], [ %124, %118 ]
  %120 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %119
  %121 = load i32, ptr %120, align 4
  %122 = add i32 %121, %115
  %123 = inttoptr i32 %122 to ptr
  store i32 0, ptr %123, align 4
  %124 = call i32 @cpumask_next(i32 noundef %119, ptr noundef nonnull @__cpu_possible_mask) #22
  %125 = load i32, ptr @nr_cpu_ids, align 4
  %126 = icmp ult i32 %124, %125
  br i1 %126, label %118, label %127

127:                                              ; preds = %118, %110
  %128 = getelementptr i8, ptr %10, i32 1416
  store ptr %108, ptr %128, align 8
  %129 = call i32 @of_get_ethdev_address(ptr noundef %7, ptr noundef %10) #21
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %163, label %131

131:                                              ; preds = %127
  %132 = load ptr, ptr %98, align 4
  %133 = getelementptr i8, ptr %132, i32 9236
  %134 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %133) #21, !srcloc !16
  call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !17
  %135 = load ptr, ptr %98, align 4
  %136 = getelementptr i8, ptr %135, i32 9240
  %137 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %136) #21, !srcloc !16
  call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !17
  %138 = lshr i32 %137, 24
  %139 = trunc i32 %138 to i8
  store i8 %139, ptr %2, align 4
  %140 = lshr i32 %137, 16
  %141 = trunc i32 %140 to i8
  %142 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 %141, ptr %142, align 1
  %143 = lshr i32 %137, 8
  %144 = trunc i32 %143 to i8
  %145 = getelementptr inbounds i8, ptr %2, i32 2
  store i8 %144, ptr %145, align 2
  %146 = trunc i32 %137 to i8
  %147 = getelementptr inbounds i8, ptr %2, i32 3
  store i8 %146, ptr %147, align 1
  %148 = lshr i32 %134, 8
  %149 = trunc i32 %148 to i8
  %150 = getelementptr inbounds i8, ptr %2, i32 4
  store i8 %149, ptr %150, align 4
  %151 = trunc i32 %134 to i8
  %152 = getelementptr inbounds i8, ptr %2, i32 5
  store i8 %151, ptr %152, align 1
  %153 = load i32, ptr %2, align 4
  %154 = and i32 %153, 1
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %162

156:                                              ; preds = %131
  %157 = load i16, ptr %150, align 4
  %158 = zext i16 %157 to i32
  %159 = or i32 %153, %158
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %162, label %161

161:                                              ; preds = %156
  call void @dev_addr_mod(ptr noundef %10, i32 noundef 0, ptr noundef nonnull %2, i32 noundef 6) #21
  br label %163

162:                                              ; preds = %156, %131
  call fastcc void @eth_hw_addr_random(ptr noundef %10)
  br label %163

163:                                              ; preds = %162, %161, %127
  %164 = phi ptr [ @.str.8, %161 ], [ @.str.9, %162 ], [ @.str.7, %127 ]
  %165 = call i32 @of_property_read_variable_u32_array(ptr noundef %7, ptr noundef nonnull @.str.10, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #21
  %166 = icmp sgt i32 %165, -1
  br i1 %166, label %167, label %172

167:                                              ; preds = %163
  %168 = load i32, ptr %4, align 4
  %169 = icmp ugt i32 %168, 9800
  br i1 %169, label %170, label %177

170:                                              ; preds = %167
  store i32 1600, ptr %4, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.11, i32 noundef 1600) #23
  %171 = load i32, ptr %4, align 4
  br label %177

172:                                              ; preds = %163
  %173 = call i32 @of_device_is_compatible(ptr noundef %7, ptr noundef nonnull @.str.12) #21
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %176, label %175

175:                                              ; preds = %172
  store i32 1600, ptr %4, align 4
  br label %177

176:                                              ; preds = %172
  store i32 9800, ptr %4, align 4
  br label %177

177:                                              ; preds = %176, %175, %170, %167
  %178 = phi i32 [ 1600, %175 ], [ 9800, %176 ], [ %171, %170 ], [ %168, %167 ]
  %179 = getelementptr i8, ptr %10, i32 1976
  store i32 %178, ptr %179, align 8
  %180 = call ptr @mv_mbus_dram_info() #21
  %181 = getelementptr i8, ptr %10, i32 2384
  store ptr %180, ptr %181, align 8
  %182 = icmp eq ptr %180, null
  br i1 %182, label %183, label %187

183:                                              ; preds = %177
  %184 = getelementptr i8, ptr %10, i32 2380
  %185 = load i8, ptr %184, align 4, !range !9
  %186 = icmp eq i8 %185, 0
  br i1 %186, label %188, label %187

187:                                              ; preds = %183, %177
  call fastcc void @mvneta_conf_mbus_windows(ptr noundef %26, ptr noundef %180)
  br label %188

188:                                              ; preds = %187, %183
  %189 = getelementptr i8, ptr %10, i32 1964
  store i16 1024, ptr %189, align 4
  %190 = getelementptr i8, ptr %10, i32 1966
  store i16 512, ptr %190, align 2
  %191 = getelementptr i8, ptr %10, i32 1440
  store ptr %10, ptr %191, align 8
  %192 = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 111, i32 1
  store ptr %5, ptr %192, align 4
  %193 = load i32, ptr @global_port_id, align 4
  %194 = add i32 %193, 1
  store i32 %194, ptr @global_port_id, align 4
  %195 = trunc i32 %193 to i8
  store i8 %195, ptr %26, align 8
  %196 = call fastcc ptr @of_parse_phandle(ptr noundef %7)
  %197 = icmp eq ptr %196, null
  br i1 %197, label %201, label %198

198:                                              ; preds = %188
  %199 = getelementptr i8, ptr %10, i32 2020
  store ptr null, ptr %199, align 4
  %200 = getelementptr i8, ptr %10, i32 2382
  store i16 0, ptr %200, align 2
  br label %201

201:                                              ; preds = %198, %188
  call void @of_node_put(ptr noundef %196) #21
  %202 = getelementptr i8, ptr %10, i32 2020
  %203 = load ptr, ptr %202, align 4
  %204 = icmp eq ptr %203, null
  br i1 %204, label %205, label %207

205:                                              ; preds = %201
  %206 = getelementptr i8, ptr %10, i32 2382
  store i16 256, ptr %206, align 2
  br label %207

207:                                              ; preds = %205, %201
  %208 = call fastcc i32 @mvneta_init(ptr noundef %5, ptr noundef %26)
  %209 = icmp slt i32 %208, 0
  br i1 %209, label %260, label %210

210:                                              ; preds = %207
  %211 = load i32, ptr %58, align 8
  call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  call void @arm_heavy_mb() #21
  %212 = load ptr, ptr %98, align 4
  %213 = getelementptr i8, ptr %212, i32 8320
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %213, i32 0) #21, !srcloc !15
  switch i32 %211, label %257 [
    i32 18, label %214
    i32 4, label %214
    i32 22, label %214
    i32 21, label %214
    i32 12, label %214
    i32 11, label %214
    i32 10, label %214
    i32 9, label %214
  ]

214:                                              ; preds = %210, %210, %210, %210, %210, %210, %210, %210
  %215 = getelementptr i8, ptr %10, i32 2380
  %216 = load i8, ptr %215, align 4, !range !9
  %217 = icmp eq i8 %216, 0
  br i1 %217, label %218, label %222

218:                                              ; preds = %214
  %219 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_present_mask) #22
  %220 = load i32, ptr @nr_cpu_ids, align 4
  %221 = icmp ult i32 %219, %220
  br i1 %221, label %224, label %236

222:                                              ; preds = %214
  %223 = getelementptr i8, ptr %10, i32 1480
  call void @netif_napi_add(ptr noundef %10, ptr noundef %223, ptr noundef nonnull @mvneta_poll, i32 noundef 64) #21
  br label %236

224:                                              ; preds = %224, %218
  %225 = phi i32 [ %233, %224 ], [ %219, %218 ]
  %226 = load ptr, ptr %105, align 4
  %227 = ptrtoint ptr %226 to i32
  %228 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %225
  %229 = load i32, ptr %228, align 4
  %230 = add i32 %229, %227
  %231 = inttoptr i32 %230 to ptr
  %232 = getelementptr inbounds %struct.mvneta_pcpu_port, ptr %231, i32 0, i32 1
  call void @netif_napi_add(ptr noundef %10, ptr noundef %232, ptr noundef nonnull @mvneta_poll, i32 noundef 64) #21
  store ptr %26, ptr %231, align 8
  %233 = call i32 @cpumask_next(i32 noundef %225, ptr noundef nonnull @__cpu_present_mask) #22
  %234 = load i32, ptr @nr_cpu_ids, align 4
  %235 = icmp ult i32 %233, %234
  br i1 %235, label %224, label %236

236:                                              ; preds = %224, %222, %218
  %237 = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 23
  store i64 1099511693331, ptr %237, align 16
  %238 = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 24
  %239 = load i64, ptr %238, align 8
  %240 = or i64 %239, 1099511693331
  store i64 %240, ptr %238, align 8
  %241 = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 26
  %242 = load i64, ptr %241, align 8
  %243 = or i64 %242, 1099511693331
  store i64 %243, ptr %241, align 8
  %244 = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 15
  %245 = load i64, ptr %244, align 16
  %246 = or i64 %245, 32768
  store i64 %246, ptr %244, align 16
  %247 = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 116
  store volatile i16 100, ptr %247, align 4
  %248 = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 30
  store i32 68, ptr %248, align 8
  %249 = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 31
  store i32 9676, ptr %249, align 4
  %250 = call i32 @register_netdev(ptr noundef %10) #21
  %251 = icmp slt i32 %250, 0
  br i1 %251, label %257, label %252

252:                                              ; preds = %236
  %253 = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 72
  %254 = load ptr, ptr %253, align 32
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %10, ptr noundef nonnull @.str.17, ptr noundef nonnull %164, ptr noundef %254) #23
  %255 = load ptr, ptr %191, align 8
  %256 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %255, ptr %256, align 8
  br label %278

257:                                              ; preds = %236, %210
  %258 = phi ptr [ @.str.15, %210 ], [ @.str.16, %236 ]
  %259 = phi i32 [ -22, %210 ], [ %250, %236 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull %258) #23
  br label %260

260:                                              ; preds = %257, %207
  %261 = phi i32 [ %208, %207 ], [ %259, %257 ]
  %262 = load ptr, ptr %128, align 8
  call void @free_percpu(ptr noundef %262) #21
  br label %263

263:                                              ; preds = %260, %116
  %264 = phi i32 [ %261, %260 ], [ -12, %116 ]
  %265 = load ptr, ptr %105, align 4
  call void @free_percpu(ptr noundef %265) #21
  br label %266

266:                                              ; preds = %263, %102, %100
  %267 = phi i32 [ %101, %100 ], [ %264, %263 ], [ -12, %102 ]
  %268 = load ptr, ptr %87, align 8
  call void @clk_disable(ptr noundef %268) #21
  call void @clk_unprepare(ptr noundef %268) #21
  %269 = load ptr, ptr %69, align 4
  call void @clk_disable(ptr noundef %269) #21
  call void @clk_unprepare(ptr noundef %269) #21
  br label %270

270:                                              ; preds = %266, %76
  %271 = phi i32 [ %77, %76 ], [ %267, %266 ]
  %272 = load ptr, ptr %55, align 4
  %273 = icmp eq ptr %272, null
  br i1 %273, label %275, label %274

274:                                              ; preds = %270
  call void @phylink_destroy(ptr noundef nonnull %272) #21
  br label %275

275:                                              ; preds = %274, %270, %48, %20, %19
  %276 = phi i32 [ %17, %19 ], [ %49, %48 ], [ %271, %274 ], [ %271, %270 ], [ -517, %20 ]
  %277 = load i32, ptr %14, align 8
  call void @irq_dispose_mapping(i32 noundef %277) #21
  br label %278

278:                                              ; preds = %275, %252, %12, %1
  %279 = phi i32 [ %276, %275 ], [ 0, %252 ], [ -12, %1 ], [ -22, %12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #21
  ret i32 %279
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mvneta_remove(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @unregister_netdev(ptr noundef %3) #21
  %4 = getelementptr i8, ptr %3, i32 1704
  %5 = load ptr, ptr %4, align 8
  tail call void @clk_disable(ptr noundef %5) #21
  tail call void @clk_unprepare(ptr noundef %5) #21
  %6 = getelementptr i8, ptr %3, i32 1700
  %7 = load ptr, ptr %6, align 4
  tail call void @clk_disable(ptr noundef %7) #21
  tail call void @clk_unprepare(ptr noundef %7) #21
  %8 = getelementptr i8, ptr %3, i32 1412
  %9 = load ptr, ptr %8, align 4
  tail call void @free_percpu(ptr noundef %9) #21
  %10 = getelementptr i8, ptr %3, i32 1416
  %11 = load ptr, ptr %10, align 8
  tail call void @free_percpu(ptr noundef %11) #21
  %12 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 59
  %13 = load i32, ptr %12, align 8
  tail call void @irq_dispose_mapping(i32 noundef %13) #21
  %14 = getelementptr i8, ptr %3, i32 1980
  %15 = load ptr, ptr %14, align 4
  tail call void @phylink_destroy(ptr noundef %15) #21
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_alloc_etherdev_mqs(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_phy_mode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_of_phy_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @phylink_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_set_pcs(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu_gfp(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_ethdev_address(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @eth_hw_addr_random(ptr noundef %0) unnamed_addr #9 {
  %2 = alloca [6 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #21
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %2, i8 0, i32 6, i1 false), !annotation !18
  call void @get_random_bytes(ptr noundef nonnull %2, i32 noundef 6) #21
  %3 = load i8, ptr %2, align 1
  %4 = and i8 %3, -4
  %5 = or i8 %4, 2
  store i8 %5, ptr %2, align 1
  call void @dev_addr_mod(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2, i32 noundef 6) #21
  %6 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 50
  store i8 1, ptr %6, align 8
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #21
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mv_mbus_dram_info() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mvneta_conf_mbus_windows(ptr nocapture noundef readonly %0, ptr noundef readonly %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.mvneta_port, ptr %0, i32 0, i32 5
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 8704
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 0) #21, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %6 = load ptr, ptr %3, align 4
  %7 = getelementptr i8, ptr %6, i32 8708
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 0) #21, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %8 = load ptr, ptr %3, align 4
  %9 = getelementptr i8, ptr %8, i32 8832
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 0) #21, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %10 = load ptr, ptr %3, align 4
  %11 = getelementptr i8, ptr %10, i32 8712
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 0) #21, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %12 = load ptr, ptr %3, align 4
  %13 = getelementptr i8, ptr %12, i32 8716
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 0) #21, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %14 = load ptr, ptr %3, align 4
  %15 = getelementptr i8, ptr %14, i32 8836
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 0) #21, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %16 = load ptr, ptr %3, align 4
  %17 = getelementptr i8, ptr %16, i32 8720
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 0) #21, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %18 = load ptr, ptr %3, align 4
  %19 = getelementptr i8, ptr %18, i32 8724
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 0) #21, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %20 = load ptr, ptr %3, align 4
  %21 = getelementptr i8, ptr %20, i32 8840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 0) #21, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %22 = load ptr, ptr %3, align 4
  %23 = getelementptr i8, ptr %22, i32 8728
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 0) #21, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %24 = load ptr, ptr %3, align 4
  %25 = getelementptr i8, ptr %24, i32 8732
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 0) #21, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %26 = load ptr, ptr %3, align 4
  %27 = getelementptr i8, ptr %26, i32 8844
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 0) #21, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %28 = load ptr, ptr %3, align 4
  %29 = getelementptr i8, ptr %28, i32 8736
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 0) #21, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %30 = load ptr, ptr %3, align 4
  %31 = getelementptr i8, ptr %30, i32 8740
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 0) #21, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %32 = load ptr, ptr %3, align 4
  %33 = getelementptr i8, ptr %32, i32 8744
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 0) #21, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %34 = load ptr, ptr %3, align 4
  %35 = getelementptr i8, ptr %34, i32 8748
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 0) #21, !srcloc !15
  %36 = icmp eq ptr %1, null
  br i1 %36, label %80, label %37

37:                                               ; preds = %2
  %38 = getelementptr inbounds %struct.mbus_dram_target_info, ptr %1, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %83

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.mbus_dram_target_info, ptr %1, i32 0, i32 2
  br label %43

43:                                               ; preds = %43, %41
  %44 = phi i32 [ 63, %41 ], [ %73, %43 ]
  %45 = phi i32 [ 0, %41 ], [ %77, %43 ]
  %46 = phi i32 [ 0, %41 ], [ %76, %43 ]
  %47 = shl i32 %45, 3
  %48 = add i32 %47, 8704
  %49 = getelementptr %struct.mbus_dram_window, ptr %42, i32 %45, i32 2
  %50 = load i64, ptr %49, align 8
  %51 = and i64 %50, 4294901760
  %52 = getelementptr %struct.mbus_dram_window, ptr %42, i32 %45, i32 1
  %53 = load i8, ptr %52, align 1
  %54 = zext i8 %53 to i32
  %55 = shl nuw nsw i32 %54, 8
  %56 = load i8, ptr %1, align 8
  %57 = zext i8 %56 to i64
  %58 = or i64 %51, %57
  %59 = trunc i64 %58 to i32
  %60 = or i32 %55, %59
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %61 = load ptr, ptr %3, align 4
  %62 = getelementptr i8, ptr %61, i32 %48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 %60) #21, !srcloc !15
  %63 = add i32 %47, 8708
  %64 = getelementptr %struct.mbus_dram_window, ptr %42, i32 %45, i32 3
  %65 = load i64, ptr %64, align 8
  %66 = trunc i64 %65 to i32
  %67 = add i32 %66, -1
  %68 = and i32 %67, -65536
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %69 = load ptr, ptr %3, align 4
  %70 = getelementptr i8, ptr %69, i32 %63
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 %68) #21, !srcloc !15
  %71 = shl nuw i32 1, %45
  %72 = xor i32 %71, -1
  %73 = and i32 %44, %72
  %74 = shl nuw i32 %45, 1
  %75 = shl i32 3, %74
  %76 = or i32 %75, %46
  %77 = add nuw nsw i32 %45, 1
  %78 = load i32, ptr %38, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %43, label %83

80:                                               ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %81 = load ptr, ptr %3, align 4
  %82 = getelementptr i8, ptr %81, i32 8708
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %82, i32 -65536) #21, !srcloc !15
  br label %83

83:                                               ; preds = %80, %43, %37
  %84 = phi i32 [ 3, %80 ], [ 0, %37 ], [ %76, %43 ]
  %85 = phi i32 [ 62, %80 ], [ 63, %37 ], [ %73, %43 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %86 = load ptr, ptr %3, align 4
  %87 = getelementptr i8, ptr %86, i32 8848
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 %85) #21, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %88 = load ptr, ptr %3, align 4
  %89 = getelementptr i8, ptr %88, i32 8852
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %89, i32 %84) #21, !srcloc !15
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @of_parse_phandle(ptr noundef %0) unnamed_addr #9 {
  %2 = alloca %struct.of_phandle_args, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #21
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false), !annotation !18
  %3 = call i32 @__of_parse_phandle_with_args(ptr noundef %0, ptr noundef nonnull @.str.13, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %2) #21
  %4 = icmp eq i32 %3, 0
  %5 = load ptr, ptr %2, align 4
  %6 = select i1 %4, ptr %5, ptr null
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #21
  ret ptr %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mvneta_init(ptr noundef %0, ptr noundef %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.mvneta_port, ptr %1, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 11264
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #21, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !17
  %7 = and i32 %6, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %8 = load ptr, ptr %3, align 4
  %9 = getelementptr i8, ptr %8, i32 11264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #21, !srcloc !15
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 42949600) #21
  tail call fastcc void @mvneta_defaults_set(ptr noundef %1)
  %11 = load i32, ptr @txq_number, align 4
  %12 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %11, i32 68) #21
  %13 = extractvalue { i32, i1 } %12, 1
  br i1 %13, label %14, label %16, !prof !19

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.mvneta_port, ptr %1, i32 0, i32 7
  store ptr null, ptr %15, align 4
  br label %84

16:                                               ; preds = %2
  %17 = extractvalue { i32, i1 } %12, 0
  %18 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef %17, i32 noundef 3520) #21
  %19 = getelementptr inbounds %struct.mvneta_port, ptr %1, i32 0, i32 7
  store ptr %18, ptr %19, align 4
  %20 = icmp eq ptr %18, null
  br i1 %20, label %84, label %21

21:                                               ; preds = %16
  %22 = load i32, ptr @txq_number, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %44

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.mvneta_port, ptr %1, i32 0, i32 20
  store i8 0, ptr %18, align 4
  %26 = load i16, ptr %25, align 4
  %27 = zext i16 %26 to i32
  %28 = getelementptr %struct.mvneta_tx_queue, ptr %18, i32 0, i32 1
  store i32 %27, ptr %28, align 4
  %29 = getelementptr %struct.mvneta_tx_queue, ptr %18, i32 0, i32 9
  store i32 0, ptr %29, align 4
  %30 = load i32, ptr @txq_number, align 4
  %31 = icmp sgt i32 %30, 1
  br i1 %31, label %32, label %44

32:                                               ; preds = %32, %24
  %33 = phi i32 [ %41, %32 ], [ 1, %24 ]
  %34 = load ptr, ptr %19, align 4
  %35 = getelementptr %struct.mvneta_tx_queue, ptr %34, i32 %33
  %36 = trunc i32 %33 to i8
  store i8 %36, ptr %35, align 4
  %37 = load i16, ptr %25, align 4
  %38 = zext i16 %37 to i32
  %39 = getelementptr %struct.mvneta_tx_queue, ptr %34, i32 %33, i32 1
  store i32 %38, ptr %39, align 4
  %40 = getelementptr %struct.mvneta_tx_queue, ptr %34, i32 %33, i32 9
  store i32 0, ptr %40, align 4
  %41 = add nuw nsw i32 %33, 1
  %42 = load i32, ptr @txq_number, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %32, label %44

44:                                               ; preds = %32, %24, %21
  %45 = load i32, ptr @rxq_number, align 4
  %46 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %45, i32 192) #21
  %47 = extractvalue { i32, i1 } %46, 1
  br i1 %47, label %48, label %50, !prof !19

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.mvneta_port, ptr %1, i32 0, i32 6
  store ptr null, ptr %49, align 8
  br label %84

50:                                               ; preds = %44
  %51 = extractvalue { i32, i1 } %46, 0
  %52 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef %51, i32 noundef 3520) #21
  %53 = getelementptr inbounds %struct.mvneta_port, ptr %1, i32 0, i32 6
  store ptr %52, ptr %53, align 8
  %54 = icmp eq ptr %52, null
  br i1 %54, label %84, label %55

55:                                               ; preds = %50
  %56 = load i32, ptr @rxq_number, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %84

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.mvneta_port, ptr %1, i32 0, i32 21
  %60 = getelementptr inbounds %struct.mvneta_port, ptr %1, i32 0, i32 8
  br label %67

61:                                               ; preds = %67
  %62 = add nuw nsw i32 %69, 1
  %63 = load i32, ptr @rxq_number, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %84

65:                                               ; preds = %61
  %66 = load ptr, ptr %53, align 8
  br label %67

67:                                               ; preds = %65, %58
  %68 = phi ptr [ %52, %58 ], [ %66, %65 ]
  %69 = phi i32 [ 0, %58 ], [ %62, %65 ]
  %70 = getelementptr %struct.mvneta_rx_queue, ptr %68, i32 %69
  %71 = trunc i32 %69 to i8
  store i8 %71, ptr %70, align 64
  %72 = load i16, ptr %59, align 2
  %73 = zext i16 %72 to i32
  %74 = getelementptr %struct.mvneta_rx_queue, ptr %68, i32 %69, i32 1
  store i32 %73, ptr %74, align 4
  %75 = getelementptr %struct.mvneta_rx_queue, ptr %68, i32 %69, i32 2
  store i32 32, ptr %75, align 8
  %76 = getelementptr %struct.mvneta_rx_queue, ptr %68, i32 %69, i32 3
  store i32 100, ptr %76, align 4
  %77 = shl nuw nsw i32 %73, 2
  %78 = load ptr, ptr %60, align 8
  %79 = getelementptr inbounds %struct.net_device, ptr %78, i32 0, i32 111, i32 1
  %80 = load ptr, ptr %79, align 4
  %81 = tail call noalias ptr @devm_kmalloc(ptr noundef %80, i32 noundef %77, i32 noundef 3264) #21
  %82 = getelementptr %struct.mvneta_rx_queue, ptr %68, i32 %69, i32 7
  store ptr %81, ptr %82, align 64
  %83 = icmp eq ptr %81, null
  br i1 %83, label %84, label %61

84:                                               ; preds = %67, %61, %55, %50, %48, %16, %14
  %85 = phi i32 [ -12, %16 ], [ -12, %50 ], [ -12, %14 ], [ -12, %48 ], [ 0, %55 ], [ -12, %67 ], [ 0, %61 ]
  ret i32 %85
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mvneta_poll(ptr noundef %0, i32 noundef %1) #3 {
  %3 = alloca %struct.skb_shared_info, align 8
  %4 = alloca %struct.xdp_buff, align 4
  %5 = getelementptr inbounds %struct.napi_struct, ptr %0, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 1408
  %8 = getelementptr i8, ptr %6, i32 1412
  %9 = load ptr, ptr %8, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = tail call i32 @llvm.read_register.i32(metadata !0) #21
  %12 = inttoptr i32 %11 to ptr
  %13 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %12) #11, !srcloc !20
  %14 = add i32 %13, %10
  %15 = inttoptr i32 %14 to ptr
  %16 = getelementptr i8, ptr %6, i32 1440
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 6
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = tail call zeroext i1 @napi_complete_done(ptr noundef %0, i32 noundef 0) #21
  br label %1253

24:                                               ; preds = %2
  %25 = getelementptr i8, ptr %6, i32 1428
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr i8, ptr %26, i32 9632
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #21, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !17
  %29 = icmp sgt i32 %28, -1
  br i1 %29, label %46, label %30

30:                                               ; preds = %24
  %31 = load ptr, ptr %25, align 4
  %32 = getelementptr i8, ptr %31, i32 9648
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #21, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !17
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %34 = load ptr, ptr %25, align 4
  %35 = getelementptr i8, ptr %34, i32 9648
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 0) #21, !srcloc !15
  %36 = and i32 %33, 3
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %30
  %39 = load ptr, ptr %25, align 4
  %40 = getelementptr i8, ptr %39, i32 11280
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #21, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !17
  %42 = getelementptr i8, ptr %6, i32 1980
  %43 = load ptr, ptr %42, align 4
  %44 = and i32 %41, 1
  %45 = icmp ne i32 %44, 0
  tail call void @phylink_mac_change(ptr noundef %43, i1 noundef zeroext %45) #21
  br label %46

46:                                               ; preds = %38, %30, %24
  %47 = and i32 %28, 255
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %136, label %49

49:                                               ; preds = %46
  %50 = tail call ptr @llvm.thread.pointer() #21
  %51 = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 2
  %52 = load i32, ptr %51, align 8
  %53 = getelementptr i8, ptr %6, i32 1436
  br label %54

54:                                               ; preds = %125, %49
  %55 = phi i32 [ %47, %49 ], [ %132, %125 ]
  %56 = tail call i32 @llvm.ctlz.i32(i32 %55, i1 true) #21, !range !21
  %57 = xor i32 %56, 31
  %58 = load ptr, ptr %53, align 4
  %59 = getelementptr %struct.mvneta_tx_queue, ptr %58, i32 %57
  %60 = load ptr, ptr %16, align 8
  %61 = load i8, ptr %59, align 4
  %62 = zext i8 %61 to i32
  %63 = getelementptr inbounds %struct.net_device, ptr %60, i32 0, i32 87
  %64 = load ptr, ptr %63, align 64
  %65 = getelementptr %struct.netdev_queue, ptr %64, i32 %62, i32 9
  tail call void @_raw_spin_lock(ptr noundef %65) #21
  %66 = getelementptr %struct.netdev_queue, ptr %64, i32 %62, i32 10
  store volatile i32 %52, ptr %66, align 4
  %67 = getelementptr %struct.mvneta_tx_queue, ptr %58, i32 %57, i32 2
  %68 = load i32, ptr %67, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %125, label %70

70:                                               ; preds = %54
  %71 = load ptr, ptr %16, align 8
  %72 = load i8, ptr %59, align 4
  %73 = zext i8 %72 to i32
  %74 = getelementptr inbounds %struct.net_device, ptr %71, i32 0, i32 87
  %75 = load ptr, ptr %74, align 64
  %76 = getelementptr %struct.netdev_queue, ptr %75, i32 %73
  %77 = shl nuw nsw i32 %73, 2
  %78 = add nuw nsw i32 %77, 15424
  %79 = load ptr, ptr %25, align 4
  %80 = getelementptr i8, ptr %79, i32 %78
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %80) #21, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !17
  %82 = lshr i32 %81, 16
  %83 = and i32 %82, 16383
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %125, label %85

85:                                               ; preds = %70
  %86 = icmp ugt i32 %83, 255
  br i1 %86, label %87, label %105

87:                                               ; preds = %87, %85
  %88 = phi i32 [ %95, %87 ], [ %83, %85 ]
  %89 = load i8, ptr %59, align 4
  %90 = zext i8 %89 to i32
  %91 = shl nuw nsw i32 %90, 2
  %92 = add nuw nsw i32 %91, 15456
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %93 = load ptr, ptr %25, align 4
  %94 = getelementptr i8, ptr %93, i32 %92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %94, i32 16711680) #21, !srcloc !15
  %95 = add nsw i32 %88, -255
  %96 = icmp ugt i32 %88, 510
  br i1 %96, label %87, label %97

97:                                               ; preds = %87
  %98 = shl nuw nsw i32 %95, 16
  %99 = load i8, ptr %59, align 4
  %100 = zext i8 %99 to i32
  %101 = shl nuw nsw i32 %100, 2
  %102 = add nuw nsw i32 %101, 15456
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %103 = load ptr, ptr %25, align 4
  %104 = getelementptr i8, ptr %103, i32 %102
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %104, i32 %98) #21, !srcloc !15
  br label %113

105:                                              ; preds = %85
  %106 = shl nuw nsw i32 %83, 16
  %107 = load i8, ptr %59, align 4
  %108 = zext i8 %107 to i32
  %109 = shl nuw nsw i32 %108, 2
  %110 = add nuw nsw i32 %109, 15456
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %111 = load ptr, ptr %25, align 4
  %112 = getelementptr i8, ptr %111, i32 %110
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %112, i32 %106) #21, !srcloc !15
  br label %113

113:                                              ; preds = %105, %97
  tail call fastcc void @mvneta_txq_bufs_free(ptr noundef %7, ptr noundef %59, i32 noundef %83, ptr noundef %76, i1 noundef zeroext true) #21
  %114 = load i32, ptr %67, align 4
  %115 = sub i32 %114, %83
  store i32 %115, ptr %67, align 4
  %116 = getelementptr %struct.netdev_queue, ptr %75, i32 %73, i32 12
  %117 = load volatile i32, ptr %116, align 4
  %118 = and i32 %117, 1
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %125, label %120

120:                                              ; preds = %113
  %121 = getelementptr %struct.mvneta_tx_queue, ptr %58, i32 %57, i32 5
  %122 = load i32, ptr %121, align 4
  %123 = icmp sgt i32 %115, %122
  br i1 %123, label %125, label %124

124:                                              ; preds = %120
  tail call void @netif_tx_wake_queue(ptr noundef %76) #21
  br label %125

125:                                              ; preds = %124, %120, %113, %70, %54
  store volatile i32 -1, ptr %66, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !10
  %126 = load i16, ptr %65, align 4
  %127 = add i16 %126, 1
  store i16 %127, ptr %65, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !13
  %128 = load i8, ptr %59, align 4
  %129 = zext i8 %128 to i32
  %130 = shl nuw i32 1, %129
  %131 = xor i32 %130, -1
  %132 = and i32 %55, %131
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %54

134:                                              ; preds = %125
  %135 = and i32 %28, -256
  br label %136

136:                                              ; preds = %134, %46
  %137 = phi i32 [ %135, %134 ], [ %28, %46 ]
  %138 = getelementptr i8, ptr %6, i32 2380
  %139 = load i8, ptr %138, align 4, !range !9
  %140 = icmp eq i8 %139, 0
  %141 = getelementptr i8, ptr %6, i32 1472
  %142 = getelementptr inbounds %struct.mvneta_pcpu_port, ptr %15, i32 0, i32 2
  %143 = select i1 %140, ptr %142, ptr %141
  %144 = load i32, ptr %143, align 8
  %145 = or i32 %144, %137
  %146 = lshr i32 %145, 8
  %147 = and i32 %146, 255
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %1223, label %149

149:                                              ; preds = %136
  %150 = tail call i32 @llvm.ctlz.i32(i32 %147, i1 true) #21, !range !21
  %151 = xor i32 %150, 31
  %152 = getelementptr i8, ptr %6, i32 2020
  %153 = load ptr, ptr %152, align 4
  %154 = icmp eq ptr %153, null
  %155 = getelementptr i8, ptr %6, i32 1432
  %156 = load ptr, ptr %155, align 8
  %157 = getelementptr %struct.mvneta_rx_queue, ptr %156, i32 %151
  %158 = load ptr, ptr %16, align 8
  br i1 %154, label %368, label %159

159:                                              ; preds = %149
  %160 = load i8, ptr %157, align 64
  %161 = zext i8 %160 to i32
  %162 = shl nuw nsw i32 %161, 2
  %163 = add nuw nsw i32 %162, 5344
  %164 = load ptr, ptr %25, align 4
  %165 = getelementptr i8, ptr %164, i32 %163
  %166 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %165) #21, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !17
  %167 = and i32 %166, 16383
  %168 = tail call i32 @llvm.smin.i32(i32 %167, i32 %1) #21
  %169 = icmp sgt i32 %168, 0
  br i1 %169, label %170, label %336

170:                                              ; preds = %159
  %171 = getelementptr %struct.mvneta_rx_queue, ptr %156, i32 %151, i32 11
  %172 = getelementptr %struct.mvneta_rx_queue, ptr %156, i32 %151, i32 10
  %173 = getelementptr %struct.mvneta_rx_queue, ptr %156, i32 %151, i32 8
  %174 = getelementptr i8, ptr %6, i32 1416
  br label %175

175:                                              ; preds = %308, %170
  %176 = phi i32 [ 0, %170 ], [ %188, %308 ]
  %177 = phi i32 [ 0, %170 ], [ %310, %308 ]
  %178 = phi i32 [ 0, %170 ], [ %309, %308 ]
  %179 = load i32, ptr %171, align 16
  %180 = load i32, ptr %172, align 4
  %181 = icmp slt i32 %179, %180
  %182 = add i32 %179, 1
  %183 = select i1 %181, i32 %182, i32 0
  store i32 %183, ptr %171, align 16
  %184 = load ptr, ptr %173, align 4
  %185 = getelementptr %struct.mvneta_rx_desc, ptr %184, i32 %183
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %185) #21, !srcloc !22
  %186 = load ptr, ptr %173, align 4
  %187 = getelementptr %struct.mvneta_rx_desc, ptr %186, i32 %179
  %188 = add nuw nsw i32 %176, 1
  %189 = load i32, ptr %187, align 4
  %190 = getelementptr %struct.mvneta_rx_desc, ptr %186, i32 %179, i32 2
  %191 = load i16, ptr %190, align 2
  %192 = zext i16 %191 to i32
  %193 = add nsw i32 %192, -6
  %194 = getelementptr %struct.mvneta_rx_desc, ptr %186, i32 %179, i32 5
  %195 = load i32, ptr %194, align 4
  %196 = inttoptr i32 %195 to ptr
  %197 = getelementptr %struct.mvneta_rx_desc, ptr %186, i32 %179, i32 3
  %198 = load i32, ptr %197, align 4
  %199 = lshr i32 %189, 13
  %200 = and i32 %199, 3
  %201 = load ptr, ptr %152, align 4
  %202 = getelementptr inbounds %struct.mvneta_bm, ptr %201, i32 0, i32 6
  %203 = load ptr, ptr %202, align 4
  %204 = and i32 %189, 201392128
  %205 = icmp eq i32 %204, 201326592
  br i1 %205, label %229, label %206

206:                                              ; preds = %269, %232, %175
  %207 = load ptr, ptr %174, align 8
  %208 = ptrtoint ptr %207 to i32
  %209 = tail call i32 @llvm.read_register.i32(metadata !0) #21
  %210 = inttoptr i32 %209 to ptr
  %211 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %210) #11, !srcloc !20
  %212 = add i32 %211, %208
  %213 = inttoptr i32 %212 to ptr
  %214 = load i32, ptr %187, align 4
  %215 = load i32, ptr %213, align 4
  %216 = add i32 %215, 1
  store i32 %216, ptr %213, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !23
  %217 = getelementptr inbounds %struct.mvneta_pcpu_stats, ptr %213, i32 0, i32 3
  %218 = load i64, ptr %217, align 8
  %219 = add i64 %218, 1
  store i64 %219, ptr %217, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !24
  %220 = load i32, ptr %213, align 4
  %221 = add i32 %220, 1
  store i32 %221, ptr %213, align 4
  %222 = lshr i32 %214, 17
  %223 = and i32 %222, 3
  %224 = getelementptr inbounds [4 x ptr], ptr @switch.table.mvneta_poll.63, i32 0, i32 %223
  %225 = load ptr, ptr %224, align 4
  %226 = load ptr, ptr %16, align 8
  %227 = load i16, ptr %190, align 2
  %228 = zext i16 %227 to i32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %226, ptr noundef nonnull %225, i32 noundef %214, i32 noundef %228) #23
  br label %308

229:                                              ; preds = %175
  %230 = load i32, ptr @rx_copybreak, align 4
  %231 = icmp sgt i32 %193, %230
  br i1 %231, label %269, label %232

232:                                              ; preds = %229
  %233 = add nsw i32 %192, -4
  %234 = tail call ptr @__netdev_alloc_skb(ptr noundef %158, i32 noundef %233, i32 noundef 2592) #21
  %235 = icmp eq ptr %234, null
  br i1 %235, label %206, label %236

236:                                              ; preds = %232
  %237 = getelementptr inbounds %struct.sk_buff, ptr %234, i32 0, i32 17
  %238 = load ptr, ptr %237, align 4
  %239 = getelementptr i8, ptr %238, i32 2
  store ptr %239, ptr %237, align 4
  %240 = getelementptr inbounds %struct.sk_buff, ptr %234, i32 0, i32 14
  %241 = load ptr, ptr %240, align 8
  %242 = getelementptr i8, ptr %241, i32 2
  store ptr %242, ptr %240, align 8
  %243 = load ptr, ptr %152, align 4
  %244 = getelementptr inbounds %struct.mvneta_bm, ptr %243, i32 0, i32 2
  %245 = load ptr, ptr %244, align 4
  %246 = getelementptr inbounds %struct.platform_device, ptr %245, i32 0, i32 3
  %247 = load i32, ptr %197, align 4
  %248 = add i32 %247, 66
  tail call void @dma_sync_single_for_cpu(ptr noundef %246, i32 noundef %248, i32 noundef %193, i32 noundef 2) #21
  %249 = getelementptr i8, ptr %196, i32 66
  %250 = tail call ptr @skb_put(ptr noundef nonnull %234, i32 noundef %193) #21
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %250, ptr align 1 %249, i32 %193, i1 false) #21
  %251 = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %234, ptr noundef %158) #21
  %252 = getelementptr inbounds %struct.sk_buff, ptr %234, i32 0, i32 13, i32 0, i32 16
  store i16 %251, ptr %252, align 8
  %253 = load ptr, ptr %16, align 8
  %254 = getelementptr inbounds %struct.net_device, ptr %253, i32 0, i32 23
  %255 = load i64, ptr %254, align 16
  %256 = and i64 %255, 1099511627776
  %257 = icmp ne i64 %256, 0
  %258 = and i32 %189, 1107296256
  %259 = icmp eq i32 %258, 1107296256
  %260 = and i1 %259, %257
  %261 = getelementptr inbounds %struct.sk_buff, ptr %234, i32 0, i32 13
  %262 = load i16, ptr %261, align 8
  %263 = select i1 %260, i16 32, i16 0
  %264 = and i16 %262, -97
  %265 = or i16 %263, %264
  store i16 %265, ptr %261, align 8
  %266 = tail call i32 @napi_gro_receive(ptr noundef %0, ptr noundef nonnull %234) #21
  %267 = add i32 %177, 1
  %268 = add i32 %193, %178
  br label %308

269:                                              ; preds = %229
  %270 = getelementptr %struct.mvneta_bm_pool, ptr %203, i32 %200, i32 0, i32 1
  %271 = load i32, ptr %270, align 4
  %272 = icmp ugt i32 %271, 4096
  %273 = select i1 %272, i32 0, i32 %271
  %274 = tail call ptr @build_skb(ptr noundef %196, i32 noundef %273) #21
  %275 = load ptr, ptr %152, align 4
  %276 = getelementptr inbounds %struct.mvneta_bm, ptr %275, i32 0, i32 2
  %277 = load ptr, ptr %276, align 4
  %278 = getelementptr inbounds %struct.platform_device, ptr %277, i32 0, i32 3
  %279 = getelementptr %struct.mvneta_bm_pool, ptr %203, i32 %200, i32 4
  %280 = load i32, ptr %279, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %278, i32 noundef %198, i32 noundef %280, i32 noundef 2, i32 noundef 0) #21
  %281 = icmp eq ptr %274, null
  br i1 %281, label %206, label %282

282:                                              ; preds = %269
  %283 = add i32 %177, 1
  %284 = add i32 %193, %178
  %285 = getelementptr inbounds %struct.sk_buff, ptr %274, i32 0, i32 17
  %286 = load ptr, ptr %285, align 4
  %287 = getelementptr i8, ptr %286, i32 66
  store ptr %287, ptr %285, align 4
  %288 = getelementptr inbounds %struct.sk_buff, ptr %274, i32 0, i32 14
  %289 = load ptr, ptr %288, align 8
  %290 = getelementptr i8, ptr %289, i32 66
  store ptr %290, ptr %288, align 8
  %291 = tail call ptr @skb_put(ptr noundef nonnull %274, i32 noundef %193) #21
  %292 = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %274, ptr noundef %158) #21
  %293 = getelementptr inbounds %struct.sk_buff, ptr %274, i32 0, i32 13, i32 0, i32 16
  store i16 %292, ptr %293, align 8
  %294 = load ptr, ptr %16, align 8
  %295 = getelementptr inbounds %struct.net_device, ptr %294, i32 0, i32 23
  %296 = load i64, ptr %295, align 16
  %297 = and i64 %296, 1099511627776
  %298 = icmp ne i64 %297, 0
  %299 = and i32 %189, 1107296256
  %300 = icmp eq i32 %299, 1107296256
  %301 = and i1 %300, %298
  %302 = getelementptr inbounds %struct.sk_buff, ptr %274, i32 0, i32 13
  %303 = load i16, ptr %302, align 8
  %304 = select i1 %301, i16 32, i16 0
  %305 = and i16 %303, -97
  %306 = or i16 %304, %305
  store i16 %306, ptr %302, align 8
  %307 = tail call i32 @napi_gro_receive(ptr noundef %0, ptr noundef nonnull %274) #21
  br label %308

308:                                              ; preds = %282, %236, %206
  %309 = phi i32 [ %178, %206 ], [ %268, %236 ], [ %284, %282 ]
  %310 = phi i32 [ %177, %206 ], [ %267, %236 ], [ %283, %282 ]
  %311 = icmp eq i32 %188, %168
  br i1 %311, label %312, label %175

312:                                              ; preds = %308
  %313 = icmp eq i32 %310, 0
  br i1 %313, label %334, label %314

314:                                              ; preds = %312
  %315 = load ptr, ptr %174, align 8
  %316 = ptrtoint ptr %315 to i32
  %317 = tail call i32 @llvm.read_register.i32(metadata !0) #21
  %318 = inttoptr i32 %317 to ptr
  %319 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %318) #11, !srcloc !20
  %320 = add i32 %319, %316
  %321 = inttoptr i32 %320 to ptr
  %322 = load i32, ptr %321, align 4
  %323 = add i32 %322, 1
  store i32 %323, ptr %321, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !23
  %324 = zext i32 %310 to i64
  %325 = getelementptr inbounds %struct.mvneta_pcpu_stats, ptr %321, i32 0, i32 1
  %326 = load i64, ptr %325, align 8
  %327 = add i64 %326, %324
  store i64 %327, ptr %325, align 8
  %328 = zext i32 %309 to i64
  %329 = getelementptr inbounds %struct.mvneta_pcpu_stats, ptr %321, i32 0, i32 1, i32 0, i32 1
  %330 = load i64, ptr %329, align 8
  %331 = add i64 %330, %328
  store i64 %331, ptr %329, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !24
  %332 = load i32, ptr %321, align 4
  %333 = add i32 %332, 1
  store i32 %333, ptr %321, align 4
  br label %334

334:                                              ; preds = %314, %312
  %335 = icmp ult i32 %168, 256
  br i1 %335, label %336, label %346

336:                                              ; preds = %334, %159
  %337 = phi i32 [ %168, %334 ], [ 0, %159 ]
  %338 = shl nuw nsw i32 %337, 16
  %339 = or i32 %338, %337
  %340 = load i8, ptr %157, align 64
  %341 = zext i8 %340 to i32
  %342 = shl nuw nsw i32 %341, 2
  %343 = add nuw nsw i32 %342, 5376
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %344 = load ptr, ptr %25, align 4
  %345 = getelementptr i8, ptr %344, i32 %343
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %345, i32 %339) #21, !srcloc !15
  br label %1223

346:                                              ; preds = %346, %334
  %347 = phi i32 [ %356, %346 ], [ %168, %334 ]
  %348 = phi i32 [ %351, %346 ], [ %168, %334 ]
  %349 = icmp slt i32 %348, 256
  %350 = add i32 %348, -255
  %351 = select i1 %349, i32 0, i32 %350
  %352 = select i1 %349, i32 %348, i32 255
  %353 = icmp slt i32 %347, 256
  %354 = shl i32 %347, 16
  %355 = add i32 %347, -255
  %356 = select i1 %353, i32 0, i32 %355
  %357 = select i1 %353, i32 %354, i32 16711680
  %358 = or i32 %352, %357
  %359 = load i8, ptr %157, align 64
  %360 = zext i8 %359 to i32
  %361 = shl nuw nsw i32 %360, 2
  %362 = add nuw nsw i32 %361, 5376
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %363 = load ptr, ptr %25, align 4
  %364 = getelementptr i8, ptr %363, i32 %362
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %364, i32 %358) #21, !srcloc !15
  %365 = icmp ne i32 %351, 0
  %366 = icmp ne i32 %356, 0
  %367 = select i1 %365, i1 true, i1 %366
  br i1 %367, label %346, label %1223

368:                                              ; preds = %149
  call void @llvm.lifetime.start.p0(i64 248, ptr nonnull %3) #21
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(248) %3, i8 0, i32 248, i1 false) #21, !annotation !18
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #21
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 24, i1 false) #21, !annotation !18
  %369 = getelementptr %struct.mvneta_rx_queue, ptr %156, i32 %151, i32 6
  %370 = getelementptr inbounds %struct.xdp_buff, ptr %4, i32 0, i32 6
  store i32 4096, ptr %370, align 4
  %371 = getelementptr inbounds %struct.xdp_buff, ptr %4, i32 0, i32 4
  store ptr %369, ptr %371, align 4
  %372 = getelementptr inbounds %struct.xdp_buff, ptr %4, i32 0, i32 3
  %373 = getelementptr inbounds %struct.skb_shared_info, ptr %3, i32 0, i32 2
  store i8 0, ptr %373, align 2
  %374 = load i8, ptr %157, align 64
  %375 = zext i8 %374 to i32
  %376 = shl nuw nsw i32 %375, 2
  %377 = add nuw nsw i32 %376, 5344
  %378 = load ptr, ptr %25, align 4
  %379 = getelementptr i8, ptr %378, i32 %377
  %380 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %379) #21, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !17
  %381 = and i32 %380, 16383
  %382 = getelementptr i8, ptr %6, i32 1696
  %383 = load volatile ptr, ptr %382, align 8
  %384 = icmp sgt i32 %1, 0
  %385 = icmp ne i32 %381, 0
  %386 = select i1 %384, i1 %385, i1 false
  br i1 %386, label %387, label %1107

387:                                              ; preds = %368
  %388 = getelementptr %struct.mvneta_rx_queue, ptr %156, i32 %151, i32 11
  %389 = getelementptr %struct.mvneta_rx_queue, ptr %156, i32 %151, i32 10
  %390 = getelementptr %struct.mvneta_rx_queue, ptr %156, i32 %151, i32 8
  %391 = getelementptr %struct.mvneta_rx_queue, ptr %156, i32 %151, i32 7
  %392 = getelementptr %struct.mvneta_rx_queue, ptr %156, i32 %151, i32 13
  %393 = getelementptr i8, ptr %6, i32 1416
  %394 = getelementptr %struct.mvneta_rx_queue, ptr %156, i32 %151, i32 4
  %395 = getelementptr i8, ptr %6, i32 2382
  %396 = getelementptr inbounds %struct.xdp_buff, ptr %4, i32 0, i32 1
  %397 = getelementptr inbounds %struct.xdp_buff, ptr %4, i32 0, i32 2
  %398 = getelementptr inbounds %struct.skb_shared_info, ptr %3, i32 0, i32 12
  %399 = icmp eq ptr %383, null
  %400 = getelementptr inbounds %struct.bpf_prog, ptr %383, i32 1
  %401 = getelementptr inbounds %struct.bpf_prog, ptr %383, i32 0, i32 9
  %402 = getelementptr inbounds %struct.bpf_prog, ptr %383, i32 0, i32 7
  %403 = getelementptr i8, ptr %6, i32 1436
  br label %404

404:                                              ; preds = %1027, %387
  %405 = phi i8 [ 0, %387 ], [ %1028, %1027 ]
  %406 = phi i8 [ 0, %387 ], [ %1029, %1027 ]
  %407 = phi i64 [ 0, %387 ], [ %1030, %1027 ]
  %408 = phi i64 [ 0, %387 ], [ %1031, %1027 ]
  %409 = phi i32 [ 0, %387 ], [ %431, %1027 ]
  %410 = phi i32 [ 0, %387 ], [ %1037, %1027 ]
  %411 = phi i32 [ 0, %387 ], [ %1036, %1027 ]
  %412 = phi i64 [ 0, %387 ], [ %1035, %1027 ]
  %413 = phi i64 [ 0, %387 ], [ %1034, %1027 ]
  %414 = phi i64 [ 0, %387 ], [ %1033, %1027 ]
  %415 = phi i32 [ 0, %387 ], [ %1032, %1027 ]
  %416 = load i32, ptr %388, align 16
  %417 = load i32, ptr %389, align 4
  %418 = icmp slt i32 %416, %417
  %419 = add i32 %416, 1
  %420 = select i1 %418, i32 %419, i32 0
  store i32 %420, ptr %388, align 16
  %421 = load ptr, ptr %390, align 4
  %422 = getelementptr %struct.mvneta_rx_desc, ptr %421, i32 %420
  call void asm sideeffect "pld\09${0:a}", "r"(ptr %422) #21, !srcloc !22
  %423 = load ptr, ptr %390, align 4
  %424 = getelementptr %struct.mvneta_rx_desc, ptr %423, i32 %416
  %425 = shl i32 %416, 5
  %426 = ashr exact i32 %425, 5
  %427 = load ptr, ptr %391, align 64
  %428 = getelementptr ptr, ptr %427, i32 %426
  %429 = load ptr, ptr %428, align 4
  %430 = load i32, ptr %424, align 4
  %431 = add nuw nsw i32 %409, 1
  %432 = load i32, ptr %392, align 8
  %433 = add i32 %432, 1
  store i32 %433, ptr %392, align 8
  %434 = and i32 %430, 134217728
  %435 = icmp eq i32 %434, 0
  br i1 %435, label %492, label %436

436:                                              ; preds = %404
  %437 = and i32 %430, 65536
  %438 = icmp eq i32 %437, 0
  br i1 %438, label %463, label %439

439:                                              ; preds = %436
  %440 = load ptr, ptr %393, align 8
  %441 = ptrtoint ptr %440 to i32
  %442 = call i32 @llvm.read_register.i32(metadata !0) #21
  %443 = inttoptr i32 %442 to ptr
  %444 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %443) #11, !srcloc !20
  %445 = add i32 %444, %441
  %446 = inttoptr i32 %445 to ptr
  %447 = load i32, ptr %424, align 4
  %448 = load i32, ptr %446, align 4
  %449 = add i32 %448, 1
  store i32 %449, ptr %446, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !23
  %450 = getelementptr inbounds %struct.mvneta_pcpu_stats, ptr %446, i32 0, i32 3
  %451 = load i64, ptr %450, align 8
  %452 = add i64 %451, 1
  store i64 %452, ptr %450, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !24
  %453 = load i32, ptr %446, align 4
  %454 = add i32 %453, 1
  store i32 %454, ptr %446, align 4
  %455 = lshr i32 %447, 17
  %456 = and i32 %455, 3
  %457 = getelementptr inbounds [4 x ptr], ptr @switch.table.mvneta_poll.63, i32 0, i32 %456
  %458 = load ptr, ptr %457, align 4
  %459 = load ptr, ptr %16, align 8
  %460 = getelementptr %struct.mvneta_rx_desc, ptr %423, i32 %416, i32 2
  %461 = load i16, ptr %460, align 2
  %462 = zext i16 %461 to i32
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %459, ptr noundef nonnull %458, i32 noundef %447, i32 noundef %462) #23
  br label %1018

463:                                              ; preds = %436
  %464 = getelementptr %struct.mvneta_rx_desc, ptr %423, i32 %416, i32 2
  %465 = load i16, ptr %464, align 2
  %466 = zext i16 %465 to i32
  %467 = add nsw i32 %466, -4
  %468 = call ptr @page_address(ptr noundef %429) #21
  %469 = load ptr, ptr %16, align 8
  %470 = icmp ugt i16 %465, 3584
  %471 = add nsw i32 %466, -6
  %472 = select i1 %470, i32 3582, i32 %471
  %473 = call i32 @llvm.umin.i32(i32 %466, i32 3584) #21
  %474 = sub nsw i32 %466, %473
  %475 = load ptr, ptr %394, align 16
  %476 = getelementptr inbounds %struct.page_pool_params, ptr %475, i32 0, i32 5
  %477 = load i32, ptr %476, align 4
  %478 = getelementptr inbounds %struct.net_device, ptr %469, i32 0, i32 111, i32 1
  %479 = load ptr, ptr %478, align 4
  %480 = getelementptr %struct.mvneta_rx_desc, ptr %423, i32 %416, i32 3
  %481 = load i32, ptr %480, align 4
  call void @dma_sync_single_for_cpu(ptr noundef %479, i32 noundef %481, i32 noundef %473, i32 noundef %477) #21
  store i32 0, ptr %480, align 4
  call void asm sideeffect "pld\09${0:a}", "r"(ptr %468) #21, !srcloc !22
  %482 = load i16, ptr %395, align 2
  %483 = zext i16 %482 to i32
  %484 = add nuw nsw i32 %483, 2
  %485 = getelementptr i8, ptr %468, i32 %484
  store ptr %468, ptr %372, align 4
  store ptr %485, ptr %4, align 4
  %486 = getelementptr i8, ptr %485, i32 %472
  store ptr %486, ptr %396, align 4
  %487 = getelementptr i8, ptr %485, i32 1
  store ptr %487, ptr %397, align 4
  %488 = load i32, ptr %370, align 4
  %489 = getelementptr i8, ptr %468, i32 -256
  %490 = getelementptr i8, ptr %489, i32 %488
  %491 = getelementptr inbounds %struct.skb_shared_info, ptr %490, i32 0, i32 2
  store i8 0, ptr %491, align 2
  br label %540

492:                                              ; preds = %404
  %493 = load ptr, ptr %372, align 4
  %494 = icmp eq ptr %493, null
  br i1 %494, label %495, label %498, !prof !19

495:                                              ; preds = %492
  %496 = getelementptr %struct.mvneta_rx_desc, ptr %423, i32 %416, i32 3
  store i32 0, ptr %496, align 4
  %497 = load ptr, ptr %394, align 16
  call void @page_pool_put_page(ptr noundef %497, ptr noundef %429, i32 noundef -1, i1 noundef zeroext true) #21
  br label %1018

498:                                              ; preds = %492
  %499 = load ptr, ptr %16, align 8
  %500 = icmp ugt i32 %415, 3584
  %501 = add i32 %415, -4
  %502 = select i1 %500, i32 3584, i32 %501
  %503 = call i32 @llvm.umin.i32(i32 %415, i32 3584) #21
  %504 = load ptr, ptr %394, align 16
  %505 = getelementptr inbounds %struct.page_pool_params, ptr %504, i32 0, i32 5
  %506 = load i32, ptr %505, align 4
  %507 = getelementptr inbounds %struct.net_device, ptr %499, i32 0, i32 111, i32 1
  %508 = load ptr, ptr %507, align 4
  %509 = getelementptr %struct.mvneta_rx_desc, ptr %423, i32 %416, i32 3
  %510 = load i32, ptr %509, align 4
  call void @dma_sync_single_for_cpu(ptr noundef %508, i32 noundef %510, i32 noundef %503, i32 noundef %506) #21
  store i32 0, ptr %509, align 4
  %511 = icmp sgt i32 %502, 0
  %512 = icmp ult i8 %406, 17
  %513 = select i1 %511, i1 %512, i1 false
  br i1 %513, label %514, label %522

514:                                              ; preds = %498
  %515 = zext i8 %406 to i32
  %516 = add nuw nsw i8 %406, 1
  store i8 %516, ptr %373, align 2
  %517 = getelementptr %struct.skb_shared_info, ptr %3, i32 0, i32 12, i32 %515
  %518 = load i16, ptr %395, align 2
  %519 = zext i16 %518 to i32
  %520 = getelementptr %struct.skb_shared_info, ptr %3, i32 0, i32 12, i32 %515, i32 2
  store i32 %519, ptr %520, align 4
  %521 = getelementptr %struct.skb_shared_info, ptr %3, i32 0, i32 12, i32 %515, i32 1
  store i32 %502, ptr %521, align 4
  store ptr %429, ptr %517, align 4
  br label %524

522:                                              ; preds = %498
  %523 = load ptr, ptr %394, align 16
  call void @page_pool_put_page(ptr noundef %523, ptr noundef %429, i32 noundef -1, i1 noundef zeroext true) #21
  br label %524

524:                                              ; preds = %522, %514
  %525 = phi i8 [ %405, %522 ], [ %516, %514 ]
  %526 = phi i8 [ %406, %522 ], [ %516, %514 ]
  %527 = icmp ult i32 %415, 3585
  br i1 %527, label %528, label %537

528:                                              ; preds = %524
  %529 = load ptr, ptr %372, align 4
  %530 = load i32, ptr %370, align 4
  %531 = getelementptr i8, ptr %529, i32 -256
  %532 = getelementptr i8, ptr %531, i32 %530
  %533 = getelementptr inbounds %struct.skb_shared_info, ptr %532, i32 0, i32 2
  store i8 %525, ptr %533, align 2
  %534 = getelementptr inbounds %struct.skb_shared_info, ptr %532, i32 0, i32 12
  %535 = zext i8 %525 to i32
  %536 = mul nuw nsw i32 %535, 12
  call void @llvm.memcpy.p0.p0.i32(ptr align 8 %534, ptr align 8 %398, i32 %536, i1 false) #21
  br label %537

537:                                              ; preds = %528, %524
  %538 = phi i8 [ %526, %524 ], [ %525, %528 ]
  %539 = sub i32 %415, %503
  br label %540

540:                                              ; preds = %537, %463
  %541 = phi i8 [ %525, %537 ], [ %405, %463 ]
  %542 = phi i8 [ %538, %537 ], [ %406, %463 ]
  %543 = phi i32 [ %539, %537 ], [ %474, %463 ]
  %544 = phi i32 [ %411, %537 ], [ %467, %463 ]
  %545 = phi i32 [ %410, %537 ], [ %430, %463 ]
  %546 = and i32 %430, 67108864
  %547 = icmp eq i32 %546, 0
  br i1 %547, label %1027, label %548

548:                                              ; preds = %540
  %549 = icmp eq i32 %543, 0
  br i1 %549, label %580, label %550

550:                                              ; preds = %548
  %551 = icmp eq i8 %541, 0
  br i1 %551, label %561, label %552

552:                                              ; preds = %550
  %553 = zext i8 %541 to i32
  br label %554

554:                                              ; preds = %554, %552
  %555 = phi i32 [ 0, %552 ], [ %559, %554 ]
  %556 = load ptr, ptr %394, align 16
  %557 = getelementptr %struct.skb_shared_info, ptr %3, i32 0, i32 12, i32 %555
  %558 = load ptr, ptr %557, align 4
  call void @page_pool_put_page(ptr noundef %556, ptr noundef %558, i32 noundef -1, i1 noundef zeroext true) #21
  %559 = add nuw nsw i32 %555, 1
  %560 = icmp eq i32 %559, %553
  br i1 %560, label %561, label %554

561:                                              ; preds = %554, %550
  %562 = load ptr, ptr %394, align 16
  %563 = load ptr, ptr %4, align 4
  %564 = load ptr, ptr @mem_map, align 4
  %565 = ptrtoint ptr %563 to i32
  %566 = add i32 %565, 1073741824
  %567 = lshr i32 %566, 12
  %568 = getelementptr %struct.page, ptr %564, i32 %567, i32 1
  %569 = load volatile i32, ptr %568, align 4
  %570 = and i32 %569, 1
  %571 = icmp eq i32 %570, 0
  br i1 %571, label %574, label %572, !prof !25

572:                                              ; preds = %561
  %573 = add i32 %569, -1
  br label %577

574:                                              ; preds = %561
  %575 = getelementptr %struct.page, ptr %564, i32 %567
  %576 = ptrtoint ptr %575 to i32
  br label %577

577:                                              ; preds = %574, %572
  %578 = phi i32 [ %573, %572 ], [ %576, %574 ]
  %579 = inttoptr i32 %578 to ptr
  call void @page_pool_put_page(ptr noundef %562, ptr noundef %579, i32 noundef -1, i1 noundef zeroext true) #21
  br label %1018

580:                                              ; preds = %548
  br i1 %399, label %896, label %581

581:                                              ; preds = %580
  %582 = load ptr, ptr %372, align 4
  %583 = load i32, ptr %370, align 4
  %584 = getelementptr i8, ptr %582, i32 -256
  %585 = getelementptr i8, ptr %584, i32 %583
  %586 = load ptr, ptr %396, align 4
  %587 = ptrtoint ptr %586 to i32
  %588 = ptrtoint ptr %582 to i32
  %589 = load i16, ptr %395, align 2
  %590 = zext i16 %589 to i32
  %591 = add i32 %588, %590
  %592 = sub i32 %587, %591
  %593 = load ptr, ptr %4, align 4
  %594 = ptrtoint ptr %593 to i32
  %595 = load volatile i32, ptr @bpf_stats_enabled_key, align 4
  %596 = icmp sgt i32 %595, 0
  br i1 %596, label %597, label %622, !prof !19

597:                                              ; preds = %581
  %598 = call i64 @sched_clock() #21
  %599 = load ptr, ptr %401, align 4
  %600 = call i32 %599(ptr noundef nonnull %4, ptr noundef %400) #21
  %601 = load ptr, ptr %402, align 4
  %602 = ptrtoint ptr %601 to i32
  %603 = call i32 @llvm.read_register.i32(metadata !0) #21
  %604 = inttoptr i32 %603 to ptr
  %605 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %604) #11, !srcloc !20
  %606 = add i32 %605, %602
  %607 = inttoptr i32 %606 to ptr
  %608 = getelementptr inbounds %struct.bpf_prog_stats, ptr %607, i32 0, i32 3
  %609 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #21, !srcloc !26
  %610 = load i32, ptr %608, align 4
  %611 = add i32 %610, 1
  store i32 %611, ptr %608, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !23
  %612 = load i64, ptr %607, align 8
  %613 = add i64 %612, 1
  store i64 %613, ptr %607, align 8
  %614 = getelementptr inbounds %struct.bpf_prog_stats, ptr %607, i32 0, i32 1
  %615 = call i64 @sched_clock() #21
  %616 = sub i64 %615, %598
  %617 = and i64 %616, 4294967295
  %618 = load i64, ptr %614, align 8
  %619 = add i64 %617, %618
  store i64 %619, ptr %614, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !24
  %620 = load i32, ptr %608, align 4
  %621 = add i32 %620, 1
  store i32 %621, ptr %608, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %609) #21, !srcloc !27
  br label %625

622:                                              ; preds = %581
  %623 = load ptr, ptr %401, align 4
  %624 = call i32 %623(ptr noundef nonnull %4, ptr noundef %400) #21
  br label %625

625:                                              ; preds = %622, %597
  %626 = phi i32 [ %600, %597 ], [ %624, %622 ]
  %627 = load volatile i32, ptr @bpf_master_redirect_enabled_key, align 4
  %628 = icmp sgt i32 %627, 0
  br i1 %628, label %629, label %655, !prof !19

629:                                              ; preds = %625
  %630 = icmp eq i32 %626, 3
  br i1 %630, label %631, label %655

631:                                              ; preds = %629
  %632 = load ptr, ptr %371, align 4
  %633 = load ptr, ptr %632, align 64
  %634 = getelementptr inbounds %struct.net_device, ptr %633, i32 0, i32 14
  %635 = load i32, ptr %634, align 8
  %636 = and i32 %635, 2048
  %637 = icmp eq i32 %636, 0
  br i1 %637, label %645, label %638

638:                                              ; preds = %631
  %639 = getelementptr inbounds %struct.net_device, ptr %633, i32 0, i32 15
  %640 = load i64, ptr %639, align 16
  %641 = and i64 %640, 4
  %642 = icmp eq i64 %641, 0
  br i1 %642, label %645, label %643

643:                                              ; preds = %638
  %644 = call i32 @xdp_master_redirect(ptr noundef nonnull %4) #21
  br label %655

645:                                              ; preds = %638, %631
  %646 = load ptr, ptr %396, align 4
  %647 = load ptr, ptr %372, align 4
  %648 = ptrtoint ptr %646 to i32
  %649 = ptrtoint ptr %647 to i32
  %650 = load i16, ptr %395, align 2
  %651 = zext i16 %650 to i32
  %652 = add i32 %649, %651
  %653 = sub i32 %648, %652
  %654 = call i32 @llvm.umax.i32(i32 %653, i32 %592) #21
  br label %677

655:                                              ; preds = %643, %629, %625
  %656 = phi i32 [ %644, %643 ], [ %626, %629 ], [ %626, %625 ]
  %657 = load ptr, ptr %396, align 4
  %658 = load ptr, ptr %372, align 4
  %659 = ptrtoint ptr %657 to i32
  %660 = ptrtoint ptr %658 to i32
  %661 = load i16, ptr %395, align 2
  %662 = zext i16 %661 to i32
  %663 = add i32 %660, %662
  %664 = sub i32 %659, %663
  %665 = call i32 @llvm.umax.i32(i32 %664, i32 %592) #21
  switch i32 %656, label %828 [
    i32 2, label %668
    i32 4, label %670
    i32 3, label %666
    i32 0, label %830
    i32 1, label %847
  ]

666:                                              ; preds = %655
  %667 = load ptr, ptr %371, align 4
  br label %677

668:                                              ; preds = %655
  %669 = add i64 %408, 1
  br label %896

670:                                              ; preds = %655
  %671 = load ptr, ptr %16, align 8
  %672 = call i32 @xdp_do_redirect(ptr noundef %671, ptr noundef nonnull %4, ptr noundef nonnull %383) #21
  %673 = icmp eq i32 %672, 0
  br i1 %673, label %675, label %674, !prof !25

674:                                              ; preds = %670
  call fastcc void @mvneta_xdp_put_buff(ptr noundef %157, ptr noundef nonnull %4, ptr noundef %585, i32 noundef %665) #21
  br label %880

675:                                              ; preds = %670
  %676 = add i64 %413, 1
  br label %880

677:                                              ; preds = %666, %645
  %678 = phi ptr [ %632, %645 ], [ %667, %666 ]
  %679 = phi i32 [ %654, %645 ], [ %665, %666 ]
  %680 = phi i32 [ %649, %645 ], [ %660, %666 ]
  %681 = phi ptr [ %647, %645 ], [ %658, %666 ]
  %682 = phi ptr [ %646, %645 ], [ %657, %666 ]
  %683 = load ptr, ptr %393, align 8
  %684 = ptrtoint ptr %683 to i32
  %685 = call i32 @llvm.read_register.i32(metadata !0) #21
  %686 = inttoptr i32 %685 to ptr
  %687 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %686) #11, !srcloc !20
  %688 = add i32 %687, %684
  %689 = inttoptr i32 %688 to ptr
  %690 = getelementptr inbounds %struct.xdp_rxq_info, ptr %678, i32 0, i32 3
  %691 = load i32, ptr %690, align 4
  %692 = icmp eq i32 %691, 3
  br i1 %692, label %693, label %695

693:                                              ; preds = %677
  %694 = call ptr @xdp_convert_zc_to_xdp_frame(ptr noundef nonnull %4) #21
  br label %734

695:                                              ; preds = %677
  %696 = load ptr, ptr %4, align 4
  %697 = ptrtoint ptr %696 to i32
  %698 = sub i32 %697, %680
  %699 = load ptr, ptr %397, align 4
  %700 = ptrtoint ptr %699 to i32
  %701 = sub i32 %697, %700
  %702 = call i32 @llvm.smax.i32(i32 %701, i32 0) #21
  %703 = sub i32 %698, %702
  %704 = icmp ult i32 %703, 24
  br i1 %704, label %795, label %705, !prof !19

705:                                              ; preds = %695
  %706 = load i32, ptr %370, align 4
  %707 = getelementptr i8, ptr %681, i32 -256
  %708 = getelementptr i8, ptr %707, i32 %706
  %709 = icmp ugt ptr %682, %708
  br i1 %709, label %710, label %711, !prof !19

710:                                              ; preds = %705
  call void @xdp_warn(ptr noundef nonnull @.str.60, ptr noundef nonnull @__func__.xdp_update_frame_from_buff, i32 noundef 200) #21
  br label %795

711:                                              ; preds = %705
  store ptr %696, ptr %681, align 4
  %712 = load ptr, ptr %396, align 4
  %713 = load ptr, ptr %4, align 4
  %714 = ptrtoint ptr %712 to i32
  %715 = ptrtoint ptr %713 to i32
  %716 = sub i32 %714, %715
  %717 = trunc i32 %716 to i16
  %718 = getelementptr inbounds %struct.xdp_frame, ptr %681, i32 0, i32 1
  store i16 %717, ptr %718, align 4
  %719 = trunc i32 %698 to i16
  %720 = add i16 %719, -24
  %721 = getelementptr inbounds %struct.xdp_frame, ptr %681, i32 0, i32 2
  store i16 %720, ptr %721, align 2
  %722 = getelementptr inbounds %struct.xdp_frame, ptr %681, i32 0, i32 3
  %723 = load i32, ptr %722, align 4
  %724 = and i32 %702, 255
  %725 = and i32 %723, -256
  %726 = or i32 %725, %724
  store i32 %726, ptr %722, align 4
  %727 = load i32, ptr %370, align 4
  %728 = shl i32 %727, 8
  %729 = or i32 %728, %724
  store i32 %729, ptr %722, align 4
  %730 = getelementptr inbounds %struct.xdp_frame, ptr %681, i32 0, i32 4
  %731 = load ptr, ptr %371, align 4
  %732 = getelementptr inbounds %struct.xdp_rxq_info, ptr %731, i32 0, i32 3
  %733 = load i64, ptr %732, align 4
  store i64 %733, ptr %730, align 4
  br label %734

734:                                              ; preds = %711, %693
  %735 = phi ptr [ %694, %693 ], [ %681, %711 ]
  %736 = icmp eq ptr %735, null
  br i1 %736, label %795, label %737, !prof !19

737:                                              ; preds = %734
  %738 = tail call ptr @llvm.thread.pointer() #21
  %739 = getelementptr inbounds %struct.thread_info, ptr %738, i32 0, i32 2
  %740 = load i32, ptr %739, align 8
  %741 = load ptr, ptr %403, align 4
  %742 = load i32, ptr @txq_number, align 4
  %743 = srem i32 %740, %742
  %744 = getelementptr %struct.mvneta_tx_queue, ptr %741, i32 %743
  %745 = load ptr, ptr %16, align 8
  %746 = load i8, ptr %744, align 4
  %747 = zext i8 %746 to i32
  %748 = getelementptr inbounds %struct.net_device, ptr %745, i32 0, i32 87
  %749 = load ptr, ptr %748, align 64
  %750 = getelementptr %struct.netdev_queue, ptr %749, i32 %747, i32 9
  call void @_raw_spin_lock(ptr noundef %750) #21
  %751 = getelementptr %struct.netdev_queue, ptr %749, i32 %747, i32 10
  store volatile i32 %740, ptr %751, align 4
  %752 = call fastcc i32 @mvneta_xdp_submit_frame(ptr noundef %7, ptr noundef %744, ptr noundef nonnull %735, i1 noundef zeroext false) #21
  %753 = icmp eq i32 %752, 2
  %754 = load i32, ptr %689, align 4
  %755 = add i32 %754, 1
  store i32 %755, ptr %689, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #21
  br i1 %753, label %756, label %787

756:                                              ; preds = %737
  %757 = getelementptr inbounds %struct.xdp_frame, ptr %735, i32 0, i32 1
  %758 = load i16, ptr %757, align 4
  %759 = zext i16 %758 to i64
  %760 = getelementptr inbounds %struct.mvneta_pcpu_stats, ptr %689, i32 0, i32 1, i32 0, i32 3
  %761 = load i64, ptr %760, align 8
  %762 = add i64 %761, %759
  store i64 %762, ptr %760, align 8
  %763 = getelementptr inbounds %struct.mvneta_pcpu_stats, ptr %689, i32 0, i32 1, i32 0, i32 2
  %764 = load i64, ptr %763, align 8
  %765 = add i64 %764, 1
  store i64 %765, ptr %763, align 8
  %766 = getelementptr inbounds %struct.mvneta_pcpu_stats, ptr %689, i32 0, i32 1, i32 0, i32 9
  %767 = load i64, ptr %766, align 8
  %768 = add i64 %767, 1
  store i64 %768, ptr %766, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !24
  %769 = load i32, ptr %689, align 4
  %770 = add i32 %769, 1
  store i32 %770, ptr %689, align 4
  %771 = getelementptr %struct.mvneta_tx_queue, ptr %741, i32 %743, i32 3
  %772 = load i32, ptr %771, align 4
  br label %773

773:                                              ; preds = %773, %756
  %774 = phi i32 [ %772, %756 ], [ %782, %773 ]
  %775 = call i32 @llvm.smin.i32(i32 %774, i32 255) #21
  %776 = load i8, ptr %744, align 4
  %777 = zext i8 %776 to i32
  %778 = shl nuw nsw i32 %777, 2
  %779 = add nuw nsw i32 %778, 15456
  call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  call void @arm_heavy_mb() #21
  %780 = load ptr, ptr %25, align 4
  %781 = getelementptr i8, ptr %780, i32 %779
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %781, i32 %775) #21, !srcloc !15
  %782 = sub i32 %774, %775
  %783 = icmp sgt i32 %782, 0
  br i1 %783, label %773, label %784

784:                                              ; preds = %773
  store i32 0, ptr %771, align 4
  store volatile i32 -1, ptr %751, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !10
  %785 = load i16, ptr %750, align 4
  %786 = add i16 %785, 1
  store i16 %786, ptr %750, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !13
  br label %880

787:                                              ; preds = %737
  %788 = getelementptr inbounds %struct.mvneta_pcpu_stats, ptr %689, i32 0, i32 1, i32 0, i32 10
  %789 = load i64, ptr %788, align 8
  %790 = add i64 %789, 1
  store i64 %790, ptr %788, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !24
  %791 = load i32, ptr %689, align 4
  %792 = add i32 %791, 1
  store i32 %792, ptr %689, align 4
  store volatile i32 -1, ptr %751, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !10
  %793 = load i16, ptr %750, align 4
  %794 = add i16 %793, 1
  store i16 %794, ptr %750, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !13
  br label %795

795:                                              ; preds = %787, %734, %710, %695
  %796 = phi i32 [ 1, %734 ], [ 1, %710 ], [ 1, %695 ], [ %752, %787 ]
  %797 = getelementptr inbounds %struct.skb_shared_info, ptr %585, i32 0, i32 2
  %798 = load i8, ptr %797, align 2
  %799 = icmp eq i8 %798, 0
  br i1 %799, label %809, label %800

800:                                              ; preds = %800, %795
  %801 = phi i32 [ %805, %800 ], [ 0, %795 ]
  %802 = load ptr, ptr %394, align 16
  %803 = getelementptr %struct.skb_shared_info, ptr %585, i32 0, i32 12, i32 %801
  %804 = load ptr, ptr %803, align 4
  call void @page_pool_put_page(ptr noundef %802, ptr noundef %804, i32 noundef -1, i1 noundef zeroext true) #21
  %805 = add nuw nsw i32 %801, 1
  %806 = load i8, ptr %797, align 2
  %807 = zext i8 %806 to i32
  %808 = icmp ult i32 %805, %807
  br i1 %808, label %800, label %809

809:                                              ; preds = %800, %795
  %810 = load ptr, ptr %394, align 16
  %811 = load ptr, ptr %4, align 4
  %812 = load ptr, ptr @mem_map, align 4
  %813 = ptrtoint ptr %811 to i32
  %814 = add i32 %813, 1073741824
  %815 = lshr i32 %814, 12
  %816 = getelementptr %struct.page, ptr %812, i32 %815, i32 1
  %817 = load volatile i32, ptr %816, align 4
  %818 = and i32 %817, 1
  %819 = icmp eq i32 %818, 0
  br i1 %819, label %822, label %820, !prof !25

820:                                              ; preds = %809
  %821 = add i32 %817, -1
  br label %825

822:                                              ; preds = %809
  %823 = getelementptr %struct.page, ptr %812, i32 %815
  %824 = ptrtoint ptr %823 to i32
  br label %825

825:                                              ; preds = %822, %820
  %826 = phi i32 [ %821, %820 ], [ %824, %822 ]
  %827 = inttoptr i32 %826 to ptr
  call void @page_pool_put_page(ptr noundef %810, ptr noundef %827, i32 noundef %679, i1 noundef zeroext true) #21
  br label %880

828:                                              ; preds = %655
  %829 = load ptr, ptr %16, align 8
  call void @bpf_warn_invalid_xdp_action(ptr noundef %829, ptr noundef nonnull %383, i32 noundef %656) #21
  br label %830

830:                                              ; preds = %828, %655
  %831 = load ptr, ptr %16, align 8
  %832 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xdp_exception, i32 0, i32 1), align 4
  %833 = icmp sgt i32 %832, 0
  br i1 %833, label %834, label %847

834:                                              ; preds = %830
  %835 = tail call ptr @llvm.thread.pointer() #21
  %836 = getelementptr inbounds %struct.thread_info, ptr %835, i32 0, i32 2
  %837 = load i32, ptr %836, align 8
  %838 = lshr i32 %837, 5
  %839 = getelementptr i32, ptr @__cpu_online_mask, i32 %838
  %840 = load volatile i32, ptr %839, align 4
  %841 = and i32 %837, 31
  %842 = shl nuw i32 1, %841
  %843 = and i32 %842, %840
  %844 = icmp eq i32 %843, 0
  br i1 %844, label %847, label %845

845:                                              ; preds = %834
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !28
  %846 = call i32 @__traceiter_xdp_exception(ptr noundef null, ptr noundef %831, ptr noundef nonnull %383, i32 noundef %656) #21
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !29
  br label %847

847:                                              ; preds = %845, %834, %830, %655
  %848 = getelementptr inbounds %struct.skb_shared_info, ptr %585, i32 0, i32 2
  %849 = load i8, ptr %848, align 2
  %850 = icmp eq i8 %849, 0
  br i1 %850, label %860, label %851

851:                                              ; preds = %851, %847
  %852 = phi i32 [ %856, %851 ], [ 0, %847 ]
  %853 = load ptr, ptr %394, align 16
  %854 = getelementptr %struct.skb_shared_info, ptr %585, i32 0, i32 12, i32 %852
  %855 = load ptr, ptr %854, align 4
  call void @page_pool_put_page(ptr noundef %853, ptr noundef %855, i32 noundef -1, i1 noundef zeroext true) #21
  %856 = add nuw nsw i32 %852, 1
  %857 = load i8, ptr %848, align 2
  %858 = zext i8 %857 to i32
  %859 = icmp ult i32 %856, %858
  br i1 %859, label %851, label %860

860:                                              ; preds = %851, %847
  %861 = load ptr, ptr %394, align 16
  %862 = load ptr, ptr %4, align 4
  %863 = load ptr, ptr @mem_map, align 4
  %864 = ptrtoint ptr %862 to i32
  %865 = add i32 %864, 1073741824
  %866 = lshr i32 %865, 12
  %867 = getelementptr %struct.page, ptr %863, i32 %866, i32 1
  %868 = load volatile i32, ptr %867, align 4
  %869 = and i32 %868, 1
  %870 = icmp eq i32 %869, 0
  br i1 %870, label %873, label %871, !prof !25

871:                                              ; preds = %860
  %872 = add i32 %868, -1
  br label %876

873:                                              ; preds = %860
  %874 = getelementptr %struct.page, ptr %863, i32 %866
  %875 = ptrtoint ptr %874 to i32
  br label %876

876:                                              ; preds = %873, %871
  %877 = phi i32 [ %872, %871 ], [ %875, %873 ]
  %878 = inttoptr i32 %877 to ptr
  call void @page_pool_put_page(ptr noundef %861, ptr noundef %878, i32 noundef %665, i1 noundef zeroext true) #21
  %879 = add i64 %412, 1
  br label %880

880:                                              ; preds = %876, %825, %784, %675, %674
  %881 = phi i64 [ %413, %825 ], [ %413, %784 ], [ %413, %876 ], [ %676, %675 ], [ %413, %674 ]
  %882 = phi i64 [ %412, %825 ], [ %412, %784 ], [ %879, %876 ], [ %412, %675 ], [ %412, %674 ]
  %883 = phi i32 [ %796, %825 ], [ 1, %784 ], [ 1, %876 ], [ 1, %675 ], [ 1, %674 ]
  %884 = load ptr, ptr %396, align 4
  %885 = getelementptr i8, ptr %884, i32 %544
  %886 = load ptr, ptr %4, align 4
  %887 = ptrtoint ptr %885 to i32
  %888 = ptrtoint ptr %886 to i32
  %889 = add i32 %587, %888
  %890 = sub i32 %594, %889
  %891 = add i32 %890, %887
  %892 = zext i32 %891 to i64
  %893 = add i64 %414, %892
  %894 = add i64 %407, 1
  %895 = icmp eq i32 %883, 0
  br i1 %895, label %896, label %1018

896:                                              ; preds = %880, %668, %580
  %897 = phi i64 [ %407, %580 ], [ %894, %880 ], [ %407, %668 ]
  %898 = phi i64 [ %408, %580 ], [ %408, %880 ], [ %669, %668 ]
  %899 = phi i64 [ %414, %580 ], [ %893, %880 ], [ %414, %668 ]
  %900 = phi i64 [ %413, %580 ], [ %881, %880 ], [ %413, %668 ]
  %901 = phi i64 [ %412, %580 ], [ %882, %880 ], [ %412, %668 ]
  %902 = load ptr, ptr %372, align 4
  %903 = load i32, ptr %370, align 4
  %904 = getelementptr i8, ptr %902, i32 -256
  %905 = getelementptr i8, ptr %904, i32 %903
  %906 = getelementptr inbounds %struct.skb_shared_info, ptr %905, i32 0, i32 2
  %907 = load i8, ptr %906, align 2
  %908 = zext i8 %907 to i32
  %909 = call ptr @build_skb(ptr noundef %902, i32 noundef 4096) #21
  %910 = icmp eq ptr %909, null
  br i1 %910, label %962, label %911

911:                                              ; preds = %896
  %912 = getelementptr inbounds %struct.sk_buff, ptr %909, i32 0, i32 11
  %913 = load i8, ptr %912, align 2
  %914 = or i8 %913, -128
  store i8 %914, ptr %912, align 2
  %915 = load ptr, ptr %4, align 4
  %916 = load ptr, ptr %372, align 4
  %917 = ptrtoint ptr %915 to i32
  %918 = ptrtoint ptr %916 to i32
  %919 = sub i32 %917, %918
  %920 = getelementptr inbounds %struct.sk_buff, ptr %909, i32 0, i32 17
  %921 = load ptr, ptr %920, align 4
  %922 = getelementptr i8, ptr %921, i32 %919
  store ptr %922, ptr %920, align 4
  %923 = getelementptr inbounds %struct.sk_buff, ptr %909, i32 0, i32 14
  %924 = load ptr, ptr %923, align 8
  %925 = getelementptr i8, ptr %924, i32 %919
  store ptr %925, ptr %923, align 8
  %926 = load ptr, ptr %396, align 4
  %927 = ptrtoint ptr %926 to i32
  %928 = sub i32 %927, %917
  %929 = call ptr @skb_put(ptr noundef nonnull %909, i32 noundef %928) #21
  %930 = load ptr, ptr %16, align 8
  %931 = getelementptr inbounds %struct.net_device, ptr %930, i32 0, i32 23
  %932 = load i64, ptr %931, align 16
  %933 = and i64 %932, 1099511627776
  %934 = icmp ne i64 %933, 0
  %935 = and i32 %545, 1107296256
  %936 = icmp eq i32 %935, 1107296256
  %937 = and i1 %936, %934
  %938 = getelementptr inbounds %struct.sk_buff, ptr %909, i32 0, i32 13
  %939 = load i16, ptr %938, align 8
  %940 = select i1 %937, i16 32, i16 0
  %941 = and i16 %939, -97
  %942 = or i16 %940, %941
  store i16 %942, ptr %938, align 8
  %943 = icmp eq i8 %907, 0
  br i1 %943, label %960, label %944

944:                                              ; preds = %911
  %945 = getelementptr inbounds %struct.sk_buff, ptr %909, i32 0, i32 15
  br label %946

946:                                              ; preds = %946, %944
  %947 = phi i32 [ 0, %944 ], [ %958, %946 ]
  %948 = getelementptr %struct.skb_shared_info, ptr %905, i32 0, i32 12, i32 %947
  %949 = load ptr, ptr %945, align 4
  %950 = getelementptr inbounds %struct.skb_shared_info, ptr %949, i32 0, i32 2
  %951 = load i8, ptr %950, align 2
  %952 = zext i8 %951 to i32
  %953 = load ptr, ptr %948, align 4
  %954 = getelementptr inbounds %struct.bio_vec, ptr %948, i32 0, i32 2
  %955 = load i32, ptr %954, align 4
  %956 = getelementptr inbounds %struct.bio_vec, ptr %948, i32 0, i32 1
  %957 = load i32, ptr %956, align 4
  call void @skb_add_rx_frag(ptr noundef nonnull %909, i32 noundef %952, ptr noundef %953, i32 noundef %955, i32 noundef %957, i32 noundef 4096) #21
  %958 = add nuw nsw i32 %947, 1
  %959 = icmp eq i32 %958, %908
  br i1 %959, label %960, label %946

960:                                              ; preds = %946, %911
  %961 = icmp ugt ptr %909, inttoptr (i32 -4096 to ptr)
  br i1 %961, label %962, label %1009

962:                                              ; preds = %960, %896
  %963 = load ptr, ptr %393, align 8
  %964 = ptrtoint ptr %963 to i32
  %965 = call i32 @llvm.read_register.i32(metadata !0) #21
  %966 = inttoptr i32 %965 to ptr
  %967 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %966) #11, !srcloc !20
  %968 = add i32 %967, %964
  %969 = inttoptr i32 %968 to ptr
  %970 = icmp eq i8 %541, 0
  br i1 %970, label %980, label %971

971:                                              ; preds = %962
  %972 = zext i8 %541 to i32
  br label %973

973:                                              ; preds = %973, %971
  %974 = phi i32 [ 0, %971 ], [ %978, %973 ]
  %975 = load ptr, ptr %394, align 16
  %976 = getelementptr %struct.skb_shared_info, ptr %3, i32 0, i32 12, i32 %974
  %977 = load ptr, ptr %976, align 4
  call void @page_pool_put_page(ptr noundef %975, ptr noundef %977, i32 noundef -1, i1 noundef zeroext true) #21
  %978 = add nuw nsw i32 %974, 1
  %979 = icmp eq i32 %978, %972
  br i1 %979, label %980, label %973

980:                                              ; preds = %973, %962
  %981 = load ptr, ptr %394, align 16
  %982 = load ptr, ptr %4, align 4
  %983 = load ptr, ptr @mem_map, align 4
  %984 = ptrtoint ptr %982 to i32
  %985 = add i32 %984, 1073741824
  %986 = lshr i32 %985, 12
  %987 = getelementptr %struct.page, ptr %983, i32 %986, i32 1
  %988 = load volatile i32, ptr %987, align 4
  %989 = and i32 %988, 1
  %990 = icmp eq i32 %989, 0
  br i1 %990, label %993, label %991, !prof !25

991:                                              ; preds = %980
  %992 = add i32 %988, -1
  br label %996

993:                                              ; preds = %980
  %994 = getelementptr %struct.page, ptr %983, i32 %986
  %995 = ptrtoint ptr %994 to i32
  br label %996

996:                                              ; preds = %993, %991
  %997 = phi i32 [ %992, %991 ], [ %995, %993 ]
  %998 = inttoptr i32 %997 to ptr
  call void @page_pool_put_page(ptr noundef %981, ptr noundef %998, i32 noundef -1, i1 noundef zeroext true) #21
  %999 = load i32, ptr %969, align 4
  %1000 = add i32 %999, 1
  store i32 %1000, ptr %969, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !23
  %1001 = getelementptr inbounds %struct.mvneta_pcpu_stats, ptr %969, i32 0, i32 1, i32 1
  %1002 = load i64, ptr %1001, align 8
  %1003 = add i64 %1002, 1
  store i64 %1003, ptr %1001, align 8
  %1004 = getelementptr inbounds %struct.mvneta_pcpu_stats, ptr %969, i32 0, i32 2
  %1005 = load i64, ptr %1004, align 8
  %1006 = add i64 %1005, 1
  store i64 %1006, ptr %1004, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !24
  %1007 = load i32, ptr %969, align 4
  %1008 = add i32 %1007, 1
  store i32 %1008, ptr %969, align 4
  br label %1018

1009:                                             ; preds = %960
  %1010 = getelementptr inbounds %struct.sk_buff, ptr %909, i32 0, i32 5
  %1011 = load i32, ptr %1010, align 8
  %1012 = zext i32 %1011 to i64
  %1013 = add i64 %899, %1012
  %1014 = add i64 %897, 1
  %1015 = call zeroext i16 @eth_type_trans(ptr noundef nonnull %909, ptr noundef %158) #21
  %1016 = getelementptr inbounds %struct.sk_buff, ptr %909, i32 0, i32 13, i32 0, i32 16
  store i16 %1015, ptr %1016, align 8
  %1017 = call i32 @napi_gro_receive(ptr noundef %0, ptr noundef nonnull %909) #21
  br label %1018

1018:                                             ; preds = %1009, %996, %880, %577, %495, %439
  %1019 = phi i64 [ %407, %495 ], [ %897, %996 ], [ %1014, %1009 ], [ %894, %880 ], [ %407, %577 ], [ %407, %439 ]
  %1020 = phi i64 [ %408, %495 ], [ %898, %996 ], [ %898, %1009 ], [ %408, %880 ], [ %408, %577 ], [ %408, %439 ]
  %1021 = phi i32 [ %415, %495 ], [ 0, %996 ], [ 0, %1009 ], [ 0, %880 ], [ %543, %577 ], [ %415, %439 ]
  %1022 = phi i64 [ %414, %495 ], [ %899, %996 ], [ %1013, %1009 ], [ %893, %880 ], [ %414, %577 ], [ %414, %439 ]
  %1023 = phi i64 [ %413, %495 ], [ %900, %996 ], [ %900, %1009 ], [ %881, %880 ], [ %413, %577 ], [ %413, %439 ]
  %1024 = phi i64 [ %412, %495 ], [ %901, %996 ], [ %901, %1009 ], [ %882, %880 ], [ %412, %577 ], [ %412, %439 ]
  %1025 = phi i32 [ %411, %495 ], [ %544, %996 ], [ %544, %1009 ], [ %544, %880 ], [ %544, %577 ], [ %411, %439 ]
  %1026 = phi i32 [ %410, %495 ], [ %545, %996 ], [ %545, %1009 ], [ %545, %880 ], [ %545, %577 ], [ %410, %439 ]
  store ptr null, ptr %372, align 4
  store i8 0, ptr %373, align 2
  br label %1027

1027:                                             ; preds = %1018, %540
  %1028 = phi i8 [ 0, %1018 ], [ %541, %540 ]
  %1029 = phi i8 [ 0, %1018 ], [ %542, %540 ]
  %1030 = phi i64 [ %1019, %1018 ], [ %407, %540 ]
  %1031 = phi i64 [ %1020, %1018 ], [ %408, %540 ]
  %1032 = phi i32 [ %1021, %1018 ], [ %543, %540 ]
  %1033 = phi i64 [ %1022, %1018 ], [ %414, %540 ]
  %1034 = phi i64 [ %1023, %1018 ], [ %413, %540 ]
  %1035 = phi i64 [ %1024, %1018 ], [ %412, %540 ]
  %1036 = phi i32 [ %1025, %1018 ], [ %544, %540 ]
  %1037 = phi i32 [ %1026, %1018 ], [ %545, %540 ]
  %1038 = icmp slt i32 %431, %1
  %1039 = icmp ult i32 %431, %381
  %1040 = select i1 %1038, i1 %1039, i1 false
  br i1 %1040, label %404, label %1041

1041:                                             ; preds = %1027
  %1042 = load ptr, ptr %372, align 4
  %1043 = icmp eq ptr %1042, null
  br i1 %1043, label %1074, label %1044

1044:                                             ; preds = %1041
  %1045 = icmp eq i8 %1028, 0
  br i1 %1045, label %1055, label %1046

1046:                                             ; preds = %1044
  %1047 = zext i8 %1028 to i32
  br label %1048

1048:                                             ; preds = %1048, %1046
  %1049 = phi i32 [ 0, %1046 ], [ %1053, %1048 ]
  %1050 = load ptr, ptr %394, align 16
  %1051 = getelementptr %struct.skb_shared_info, ptr %3, i32 0, i32 12, i32 %1049
  %1052 = load ptr, ptr %1051, align 4
  call void @page_pool_put_page(ptr noundef %1050, ptr noundef %1052, i32 noundef -1, i1 noundef zeroext true) #21
  %1053 = add nuw nsw i32 %1049, 1
  %1054 = icmp eq i32 %1053, %1047
  br i1 %1054, label %1055, label %1048

1055:                                             ; preds = %1048, %1044
  %1056 = load ptr, ptr %394, align 16
  %1057 = load ptr, ptr %4, align 4
  %1058 = load ptr, ptr @mem_map, align 4
  %1059 = ptrtoint ptr %1057 to i32
  %1060 = add i32 %1059, 1073741824
  %1061 = lshr i32 %1060, 12
  %1062 = getelementptr %struct.page, ptr %1058, i32 %1061, i32 1
  %1063 = load volatile i32, ptr %1062, align 4
  %1064 = and i32 %1063, 1
  %1065 = icmp eq i32 %1064, 0
  br i1 %1065, label %1068, label %1066, !prof !25

1066:                                             ; preds = %1055
  %1067 = add i32 %1063, -1
  br label %1071

1068:                                             ; preds = %1055
  %1069 = getelementptr %struct.page, ptr %1058, i32 %1061
  %1070 = ptrtoint ptr %1069 to i32
  br label %1071

1071:                                             ; preds = %1068, %1066
  %1072 = phi i32 [ %1067, %1066 ], [ %1070, %1068 ]
  %1073 = inttoptr i32 %1072 to ptr
  call void @page_pool_put_page(ptr noundef %1056, ptr noundef %1073, i32 noundef -1, i1 noundef zeroext true) #21
  br label %1074

1074:                                             ; preds = %1071, %1041
  %1075 = icmp eq i64 %1034, 0
  br i1 %1075, label %1077, label %1076

1076:                                             ; preds = %1074
  call void @xdp_do_flush() #21
  br label %1077

1077:                                             ; preds = %1076, %1074
  %1078 = icmp eq i64 %1030, 0
  br i1 %1078, label %1107, label %1079

1079:                                             ; preds = %1077
  %1080 = load ptr, ptr %393, align 8
  %1081 = ptrtoint ptr %1080 to i32
  %1082 = call i32 @llvm.read_register.i32(metadata !0) #21
  %1083 = inttoptr i32 %1082 to ptr
  %1084 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %1083) #11, !srcloc !20
  %1085 = add i32 %1084, %1081
  %1086 = inttoptr i32 %1085 to ptr
  %1087 = load i32, ptr %1086, align 4
  %1088 = add i32 %1087, 1
  store i32 %1088, ptr %1086, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !23
  %1089 = getelementptr inbounds %struct.mvneta_pcpu_stats, ptr %1086, i32 0, i32 1
  %1090 = load i64, ptr %1089, align 8
  %1091 = add i64 %1090, %1030
  store i64 %1091, ptr %1089, align 8
  %1092 = getelementptr inbounds %struct.mvneta_pcpu_stats, ptr %1086, i32 0, i32 1, i32 0, i32 1
  %1093 = load i64, ptr %1092, align 8
  %1094 = add i64 %1093, %1033
  store i64 %1094, ptr %1092, align 8
  %1095 = getelementptr inbounds %struct.mvneta_pcpu_stats, ptr %1086, i32 0, i32 1, i32 0, i32 4
  %1096 = load i64, ptr %1095, align 8
  %1097 = add i64 %1096, %1034
  store i64 %1097, ptr %1095, align 8
  %1098 = getelementptr inbounds %struct.mvneta_pcpu_stats, ptr %1086, i32 0, i32 1, i32 0, i32 5
  %1099 = load i64, ptr %1098, align 8
  %1100 = add i64 %1099, %1031
  store i64 %1100, ptr %1098, align 8
  %1101 = getelementptr inbounds %struct.mvneta_pcpu_stats, ptr %1086, i32 0, i32 1, i32 0, i32 6
  %1102 = load i64, ptr %1101, align 8
  %1103 = add i64 %1102, %1035
  store i64 %1103, ptr %1101, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !24
  %1104 = load i32, ptr %1086, align 4
  %1105 = add i32 %1104, 1
  store i32 %1105, ptr %1086, align 4
  %1106 = trunc i64 %1030 to i32
  br label %1107

1107:                                             ; preds = %1079, %1077, %368
  %1108 = phi i32 [ %431, %1079 ], [ %431, %1077 ], [ 0, %368 ]
  %1109 = phi i32 [ %1106, %1079 ], [ 0, %1077 ], [ 0, %368 ]
  %1110 = getelementptr %struct.mvneta_rx_queue, ptr %156, i32 %151, i32 12
  %1111 = load i32, ptr %1110, align 4
  %1112 = getelementptr %struct.mvneta_rx_queue, ptr %156, i32 %151, i32 13
  %1113 = load i32, ptr %1112, align 8
  %1114 = icmp eq i32 %1113, 0
  br i1 %1114, label %1179, label %1115

1115:                                             ; preds = %1107
  %1116 = getelementptr %struct.mvneta_rx_queue, ptr %156, i32 %151, i32 8
  %1117 = getelementptr %struct.mvneta_rx_queue, ptr %156, i32 %151, i32 4
  %1118 = getelementptr i8, ptr %6, i32 2382
  %1119 = getelementptr %struct.mvneta_rx_queue, ptr %156, i32 %151, i32 7
  %1120 = getelementptr %struct.mvneta_rx_queue, ptr %156, i32 %151, i32 10
  br label %1121

1121:                                             ; preds = %1169, %1115
  %1122 = phi i32 [ %1113, %1115 ], [ %1170, %1169 ]
  %1123 = phi i32 [ %1111, %1115 ], [ %1174, %1169 ]
  %1124 = phi i32 [ 0, %1115 ], [ %1175, %1169 ]
  %1125 = load ptr, ptr %1116, align 4
  %1126 = getelementptr %struct.mvneta_rx_desc, ptr %1125, i32 %1123, i32 3
  %1127 = load i32, ptr %1126, align 4
  %1128 = icmp eq i32 %1127, 0
  br i1 %1128, label %1129, label %1169

1129:                                             ; preds = %1121
  %1130 = load ptr, ptr %1117, align 16
  %1131 = call ptr @page_pool_alloc_pages(ptr noundef %1130, i32 noundef 10784) #21
  %1132 = icmp eq ptr %1131, null
  br i1 %1132, label %1148, label %1133

1133:                                             ; preds = %1129
  %1134 = getelementptr %struct.mvneta_rx_desc, ptr %1125, i32 %1123
  %1135 = getelementptr inbounds %struct.page, ptr %1131, i32 0, i32 1, i32 0, i32 2
  %1136 = load i32, ptr %1135, align 4
  %1137 = load i16, ptr %1118, align 2
  %1138 = zext i16 %1137 to i32
  %1139 = add i32 %1136, %1138
  store i32 %1139, ptr %1126, align 4
  %1140 = load ptr, ptr %1116, align 4
  %1141 = ptrtoint ptr %1134 to i32
  %1142 = ptrtoint ptr %1140 to i32
  %1143 = sub i32 %1141, %1142
  %1144 = ashr exact i32 %1143, 5
  %1145 = load ptr, ptr %1119, align 64
  %1146 = getelementptr ptr, ptr %1145, i32 %1144
  store ptr %1131, ptr %1146, align 4
  %1147 = load i32, ptr %1112, align 8
  br label %1169

1148:                                             ; preds = %1129
  %1149 = load i8, ptr %157, align 64
  %1150 = zext i8 %1149 to i32
  %1151 = load i32, ptr %1112, align 8
  %1152 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, i32 noundef %1150, i32 noundef %1124, i32 noundef %1151) #23
  %1153 = getelementptr i8, ptr %6, i32 1416
  %1154 = load ptr, ptr %1153, align 8
  %1155 = ptrtoint ptr %1154 to i32
  %1156 = call i32 @llvm.read_register.i32(metadata !0) #21
  %1157 = inttoptr i32 %1156 to ptr
  %1158 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %1157) #11, !srcloc !20
  %1159 = add i32 %1158, %1155
  %1160 = inttoptr i32 %1159 to ptr
  %1161 = load i32, ptr %1160, align 4
  %1162 = add i32 %1161, 1
  store i32 %1162, ptr %1160, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !23
  %1163 = getelementptr inbounds %struct.mvneta_pcpu_stats, ptr %1160, i32 0, i32 1, i32 2
  %1164 = load i64, ptr %1163, align 8
  %1165 = add i64 %1164, 1
  store i64 %1165, ptr %1163, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !24
  %1166 = load i32, ptr %1160, align 4
  %1167 = add i32 %1166, 1
  store i32 %1167, ptr %1160, align 4
  %1168 = load i32, ptr %1112, align 8
  br label %1179

1169:                                             ; preds = %1133, %1121
  %1170 = phi i32 [ %1147, %1133 ], [ %1122, %1121 ]
  %1171 = load i32, ptr %1120, align 4
  %1172 = icmp slt i32 %1123, %1171
  %1173 = add i32 %1123, 1
  %1174 = select i1 %1172, i32 %1173, i32 0
  %1175 = add nuw nsw i32 %1124, 1
  %1176 = icmp ult i32 %1175, %1170
  %1177 = icmp ult i32 %1124, 63
  %1178 = and i1 %1177, %1176
  br i1 %1178, label %1121, label %1179

1179:                                             ; preds = %1169, %1148, %1107
  %1180 = phi i32 [ %1168, %1148 ], [ 0, %1107 ], [ %1170, %1169 ]
  %1181 = phi i32 [ %1124, %1148 ], [ 0, %1107 ], [ %1175, %1169 ]
  %1182 = phi i32 [ %1123, %1148 ], [ %1111, %1107 ], [ %1174, %1169 ]
  %1183 = sub i32 %1180, %1181
  store i32 %1183, ptr %1112, align 8
  store i32 %1182, ptr %1110, align 4
  %1184 = icmp ult i32 %1108, 256
  %1185 = icmp slt i32 %1181, 256
  %1186 = and i1 %1184, %1185
  br i1 %1186, label %1191, label %1187

1187:                                             ; preds = %1179
  %1188 = icmp ne i32 %1108, 0
  %1189 = icmp sgt i32 %1181, 0
  %1190 = or i1 %1188, %1189
  br i1 %1190, label %1200, label %1222

1191:                                             ; preds = %1179
  %1192 = shl i32 %1181, 16
  %1193 = or i32 %1192, %1108
  %1194 = load i8, ptr %157, align 64
  %1195 = zext i8 %1194 to i32
  %1196 = shl nuw nsw i32 %1195, 2
  %1197 = add nuw nsw i32 %1196, 5376
  call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  call void @arm_heavy_mb() #21
  %1198 = load ptr, ptr %25, align 4
  %1199 = getelementptr i8, ptr %1198, i32 %1197
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1199, i32 %1193) #21, !srcloc !15
  br label %1222

1200:                                             ; preds = %1200, %1187
  %1201 = phi i32 [ %1210, %1200 ], [ %1181, %1187 ]
  %1202 = phi i32 [ %1205, %1200 ], [ %1108, %1187 ]
  %1203 = icmp slt i32 %1202, 256
  %1204 = add i32 %1202, -255
  %1205 = select i1 %1203, i32 0, i32 %1204
  %1206 = select i1 %1203, i32 %1202, i32 255
  %1207 = icmp slt i32 %1201, 256
  %1208 = shl i32 %1201, 16
  %1209 = add i32 %1201, -255
  %1210 = select i1 %1207, i32 0, i32 %1209
  %1211 = select i1 %1207, i32 %1208, i32 16711680
  %1212 = or i32 %1206, %1211
  %1213 = load i8, ptr %157, align 64
  %1214 = zext i8 %1213 to i32
  %1215 = shl nuw nsw i32 %1214, 2
  %1216 = add nuw nsw i32 %1215, 5376
  call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  call void @arm_heavy_mb() #21
  %1217 = load ptr, ptr %25, align 4
  %1218 = getelementptr i8, ptr %1217, i32 %1216
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1218, i32 %1212) #21, !srcloc !15
  %1219 = icmp ne i32 %1205, 0
  %1220 = icmp ne i32 %1210, 0
  %1221 = select i1 %1219, i1 true, i1 %1220
  br i1 %1221, label %1200, label %1222

1222:                                             ; preds = %1200, %1191, %1187
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 248, ptr nonnull %3) #21
  br label %1223

1223:                                             ; preds = %1222, %346, %336, %136
  %1224 = phi i32 [ %1109, %1222 ], [ 0, %136 ], [ %337, %336 ], [ %168, %346 ]
  %1225 = icmp slt i32 %1224, %1
  br i1 %1225, label %1226, label %1247

1226:                                             ; preds = %1223
  %1227 = call zeroext i1 @napi_complete_done(ptr noundef %0, i32 noundef %1224) #21
  %1228 = load i8, ptr %138, align 4, !range !9
  %1229 = icmp eq i8 %1228, 0
  br i1 %1229, label %1243, label %1230

1230:                                             ; preds = %1226
  %1231 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #21, !srcloc !26
  %1232 = load i32, ptr @rxq_number, align 4
  %1233 = shl nsw i32 -1, %1232
  %1234 = xor i32 %1233, -1
  %1235 = shl i32 %1234, 8
  %1236 = load i32, ptr @txq_number, align 4
  %1237 = shl nsw i32 -1, %1236
  %1238 = xor i32 %1237, -1
  %1239 = or i32 %1235, %1238
  %1240 = or i32 %1239, -2147483648
  call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  call void @arm_heavy_mb() #21
  %1241 = load ptr, ptr %25, align 4
  %1242 = getelementptr i8, ptr %1241, i32 9636
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1242, i32 %1240) #21, !srcloc !15
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %1231) #21, !srcloc !27
  br label %1247

1243:                                             ; preds = %1226
  %1244 = load ptr, ptr %16, align 8
  %1245 = getelementptr inbounds %struct.net_device, ptr %1244, i32 0, i32 59
  %1246 = load i32, ptr %1245, align 8
  call void @enable_percpu_irq(i32 noundef %1246, i32 noundef 0) #21
  br label %1247

1247:                                             ; preds = %1243, %1230, %1223
  %1248 = phi i32 [ 0, %1230 ], [ 0, %1243 ], [ %145, %1223 ]
  %1249 = load i8, ptr %138, align 4, !range !9
  %1250 = icmp eq i8 %1249, 0
  br i1 %1250, label %1252, label %1251

1251:                                             ; preds = %1247
  store i32 %1248, ptr %141, align 8
  br label %1253

1252:                                             ; preds = %1247
  store i32 %1248, ptr %142, align 8
  br label %1253

1253:                                             ; preds = %1252, %1251, %22
  %1254 = phi i32 [ 0, %22 ], [ %1224, %1252 ], [ %1224, %1251 ]
  ret i32 %1254
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_dispose_mapping(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_generic_validate(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mvneta_mac_prepare(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #3 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr i8, ptr %4, i32 1280
  %6 = load i32, ptr %5, align 8
  %7 = icmp ne i32 %6, %2
  %8 = icmp eq i32 %1, 2
  %9 = or i1 %8, %7
  br i1 %9, label %10, label %27

10:                                               ; preds = %3
  %11 = getelementptr i8, ptr %4, i32 740
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 11276
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #21, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !17
  %15 = and i32 %14, -4
  %16 = or i32 %15, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %17 = load ptr, ptr %11, align 4
  %18 = getelementptr i8, ptr %17, i32 11276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #21, !srcloc !15
  %19 = load i32, ptr %5, align 8
  %20 = icmp eq i32 %19, %2
  br i1 %20, label %27, label %21

21:                                               ; preds = %10
  %22 = getelementptr i8, ptr %4, i32 1328
  %23 = load ptr, ptr %22, align 8
  %24 = tail call i32 @phy_power_off(ptr noundef %23) #21
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26, !prof !25

26:                                               ; preds = %21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 3993, i32 noundef 9, ptr noundef null) #21
  br label %27

27:                                               ; preds = %26, %21, %10, %3
  br i1 %8, label %28, label %37

28:                                               ; preds = %27
  %29 = getelementptr i8, ptr %4, i32 1012
  %30 = load ptr, ptr %29, align 4
  %31 = tail call i32 @clk_get_rate(ptr noundef %30) #21
  %32 = udiv i32 %31, 1000
  %33 = or i32 %32, -2147483648
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %34 = getelementptr i8, ptr %4, i32 740
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr i8, ptr %35, i32 9460
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %33) #21, !srcloc !15
  br label %37

37:                                               ; preds = %28, %27
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mvneta_mac_config(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) #3 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr i8, ptr %4, i32 740
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 11264
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #21, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !17
  %9 = load ptr, ptr %5, align 4
  %10 = getelementptr i8, ptr %9, i32 11272
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #21, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !17
  %12 = load ptr, ptr %5, align 4
  %13 = getelementptr i8, ptr %12, i32 11408
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #21, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !17
  %15 = and i32 %8, -3
  %16 = and i32 %11, -82
  %17 = and i32 %14, -3
  %18 = getelementptr inbounds %struct.phylink_link_state, ptr %2, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  switch i32 %19, label %20 [
    i32 18, label %24
    i32 4, label %24
  ]

20:                                               ; preds = %3
  %21 = or i32 %16, 16
  %22 = add i32 %19, -21
  %23 = icmp ult i32 %22, 2
  br i1 %23, label %24, label %26

24:                                               ; preds = %20, %3, %3
  %25 = or i32 %16, 24
  br label %26

26:                                               ; preds = %24, %20
  %27 = phi i32 [ %25, %24 ], [ %21, %20 ]
  %28 = icmp eq i32 %1, 2
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = icmp eq i32 %19, 4
  br i1 %30, label %31, label %33

31:                                               ; preds = %29
  %32 = or i32 %27, 1
  br label %35

33:                                               ; preds = %29
  %34 = or i32 %8, 2
  br label %35

35:                                               ; preds = %33, %31, %26
  %36 = phi i32 [ %15, %31 ], [ %34, %33 ], [ %15, %26 ]
  %37 = phi i32 [ %32, %31 ], [ %27, %33 ], [ %27, %26 ]
  %38 = icmp eq i32 %19, 22
  %39 = select i1 %38, i32 2, i32 0
  %40 = or i32 %39, %17
  %41 = icmp eq i32 %36, %8
  br i1 %41, label %45, label %42

42:                                               ; preds = %35
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %43 = load ptr, ptr %5, align 4
  %44 = getelementptr i8, ptr %43, i32 11264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %36) #21, !srcloc !15
  br label %45

45:                                               ; preds = %42, %35
  %46 = icmp eq i32 %37, %11
  br i1 %46, label %50, label %47

47:                                               ; preds = %45
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %48 = load ptr, ptr %5, align 4
  %49 = getelementptr i8, ptr %48, i32 11272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %37) #21, !srcloc !15
  br label %50

50:                                               ; preds = %47, %45
  %51 = icmp eq i32 %40, %14
  br i1 %51, label %55, label %52

52:                                               ; preds = %50
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %53 = load ptr, ptr %5, align 4
  %54 = getelementptr i8, ptr %53, i32 11408
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %40) #21, !srcloc !15
  br label %55

55:                                               ; preds = %52, %50
  %56 = and i32 %11, 64
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %58, %55
  %59 = load ptr, ptr %5, align 4
  %60 = getelementptr i8, ptr %59, i32 11272
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %60) #21, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !17
  %62 = and i32 %61, 64
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %58

64:                                               ; preds = %58, %55
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mvneta_mac_finish(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #3 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr i8, ptr %4, i32 720
  %6 = icmp eq i32 %1, 2
  br i1 %6, label %15, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %4, i32 740
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 9460
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #21, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !17
  %12 = and i32 %11, 2147483647
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %13 = load ptr, ptr %8, align 4
  %14 = getelementptr i8, ptr %13, i32 9460
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #21, !srcloc !15
  br label %15

15:                                               ; preds = %7, %3
  %16 = getelementptr i8, ptr %4, i32 1280
  %17 = load i32, ptr %16, align 8
  %18 = icmp eq i32 %17, %2
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = tail call fastcc i32 @mvneta_config_interface(ptr noundef %5, i32 noundef %2)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22, !prof !25

22:                                               ; preds = %19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 4078, i32 noundef 9, ptr noundef null) #21
  br label %23

23:                                               ; preds = %22, %19, %15
  br i1 %6, label %24, label %32

24:                                               ; preds = %23
  %25 = getelementptr i8, ptr %4, i32 740
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr i8, ptr %26, i32 11276
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #21, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !17
  %29 = and i32 %28, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %30 = load ptr, ptr %25, align 4
  %31 = getelementptr i8, ptr %30, i32 11276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %29) #21, !srcloc !15
  br label %32

32:                                               ; preds = %24, %23
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mvneta_mac_link_down(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #3 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr i8, ptr %4, i32 720
  tail call fastcc void @mvneta_port_down(ptr noundef %5)
  %6 = icmp eq i32 %1, 2
  br i1 %6, label %16, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %4, i32 740
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 11276
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #21, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !17
  %12 = and i32 %11, -4
  %13 = or i32 %12, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %14 = load ptr, ptr %8, align 4
  %15 = getelementptr i8, ptr %14, i32 11276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #21, !srcloc !15
  br label %16

16:                                               ; preds = %7, %3
  %17 = getelementptr i8, ptr %4, i32 1349
  store i8 0, ptr %17, align 1
  %18 = getelementptr i8, ptr %4, i32 740
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %19, i32 11460
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #21, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !17
  %22 = and i32 %21, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %23 = load ptr, ptr %18, align 4
  %24 = getelementptr i8, ptr %23, i32 11460
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #21, !srcloc !15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mvneta_mac_link_up(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i1 noundef zeroext %6, i1 noundef zeroext %7) #3 {
  %9 = load ptr, ptr %0, align 4
  %10 = icmp eq i32 %2, 2
  %11 = getelementptr i8, ptr %9, i32 740
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 11276
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #21
  tail call void asm sideeffect "dsb ", "~{memory}"() #21
  br i1 %10, label %31, label %15

15:                                               ; preds = %8
  %16 = and i32 %14, -4452
  switch i32 %4, label %17 [
    i32 2500, label %20
    i32 1000, label %20
  ]

17:                                               ; preds = %15
  %18 = icmp eq i32 %4, 100
  %19 = select i1 %18, i32 34, i32 2
  br label %20

20:                                               ; preds = %17, %15, %15
  %21 = phi i32 [ %19, %17 ], [ 66, %15 ], [ 66, %15 ]
  %22 = or i32 %16, %21
  %23 = icmp eq i32 %5, 1
  %24 = or i32 %22, 4096
  %25 = select i1 %23, i32 %24, i32 %22
  %26 = or i1 %6, %7
  %27 = or i32 %25, 256
  %28 = select i1 %26, i32 %27, i32 %25
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %29 = load ptr, ptr %11, align 4
  %30 = getelementptr i8, ptr %29, i32 11276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #21, !srcloc !15
  br label %40

31:                                               ; preds = %8
  br i1 %6, label %34, label %32

32:                                               ; preds = %31
  %33 = and i32 %14, -257
  br i1 %7, label %34, label %36

34:                                               ; preds = %32, %31
  %35 = or i32 %14, 256
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %35, %34 ], [ %33, %32 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %38 = load ptr, ptr %11, align 4
  %39 = getelementptr i8, ptr %38, i32 11276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %37) #21, !srcloc !15
  br label %40

40:                                               ; preds = %36, %20
  %41 = load i32, ptr @txq_number, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %40
  %44 = getelementptr i8, ptr %9, i32 748
  %45 = load ptr, ptr %44, align 4
  br label %46

46:                                               ; preds = %46, %43
  %47 = phi i32 [ 0, %43 ], [ %55, %46 ]
  %48 = phi i32 [ 0, %43 ], [ %54, %46 ]
  %49 = getelementptr %struct.mvneta_tx_queue, ptr %45, i32 %47, i32 10
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  %52 = shl nuw i32 1, %47
  %53 = select i1 %51, i32 0, i32 %52
  %54 = or i32 %53, %48
  %55 = add nuw nsw i32 %47, 1
  %56 = icmp eq i32 %55, %41
  br i1 %56, label %57, label %46

57:                                               ; preds = %46, %40
  %58 = phi i32 [ 0, %40 ], [ %54, %46 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %59 = getelementptr i8, ptr %9, i32 740
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr i8, ptr %60, i32 9288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 %58) #21, !srcloc !15
  %62 = load i32, ptr @rxq_number, align 4
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %78

64:                                               ; preds = %57
  %65 = getelementptr i8, ptr %9, i32 744
  %66 = load ptr, ptr %65, align 8
  br label %67

67:                                               ; preds = %67, %64
  %68 = phi i32 [ 0, %64 ], [ %76, %67 ]
  %69 = phi i32 [ 0, %64 ], [ %75, %67 ]
  %70 = getelementptr %struct.mvneta_rx_queue, ptr %66, i32 %68, i32 8
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  %73 = shl nuw i32 1, %68
  %74 = select i1 %72, i32 0, i32 %73
  %75 = or i32 %74, %69
  %76 = add nuw nsw i32 %68, 1
  %77 = icmp eq i32 %76, %62
  br i1 %77, label %78, label %67

78:                                               ; preds = %67, %57
  %79 = phi i32 [ 0, %57 ], [ %75, %67 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %80 = load ptr, ptr %59, align 4
  %81 = getelementptr i8, ptr %80, i32 9856
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 %79) #21, !srcloc !15
  %82 = icmp eq ptr %1, null
  br i1 %82, label %107, label %83

83:                                               ; preds = %78
  %84 = getelementptr i8, ptr %9, i32 1348
  %85 = load i8, ptr %84, align 4, !range !9
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %107, label %87

87:                                               ; preds = %83
  %88 = tail call i32 @phy_init_eee(ptr noundef nonnull %1, i1 noundef zeroext false) #21
  %89 = icmp sgt i32 %88, -1
  %90 = getelementptr i8, ptr %9, i32 1349
  %91 = lshr i32 %88, 31
  %92 = trunc i32 %91 to i8
  %93 = xor i8 %92, 1
  store i8 %93, ptr %90, align 1
  br i1 %89, label %94, label %98

94:                                               ; preds = %87
  %95 = getelementptr i8, ptr %9, i32 1350
  %96 = load i8, ptr %95, align 2, !range !9
  %97 = zext i8 %96 to i32
  br label %98

98:                                               ; preds = %94, %87
  %99 = phi i32 [ 0, %87 ], [ %97, %94 ]
  %100 = load ptr, ptr %59, align 4
  %101 = getelementptr i8, ptr %100, i32 11460
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %101) #21, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !17
  %103 = and i32 %102, -2
  %104 = or i32 %103, %99
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %105 = load ptr, ptr %59, align 4
  %106 = getelementptr i8, ptr %105, i32 11460
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %106, i32 %104) #21, !srcloc !15
  br label %107

107:                                              ; preds = %98, %83, %78
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mvneta_config_interface(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.mvneta_port, ptr %0, i32 0, i32 28
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  switch i32 %1, label %26 [
    i32 22, label %7
    i32 21, label %7
    i32 4, label %7
  ]

7:                                                ; preds = %6, %6, %6
  %8 = tail call i32 @phy_set_mode_ext(ptr noundef nonnull %4, i32 noundef 15, i32 noundef %1) #21
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %26

10:                                               ; preds = %7
  %11 = load ptr, ptr %3, align 8
  %12 = tail call i32 @phy_power_on(ptr noundef %11) #21
  br label %26

13:                                               ; preds = %2
  switch i32 %1, label %26 [
    i32 18, label %14
    i32 4, label %18
    i32 21, label %18
    i32 22, label %22
  ]

14:                                               ; preds = %13
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %15 = getelementptr inbounds %struct.mvneta_port, ptr %0, i32 0, i32 5
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 9376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 1639) #21, !srcloc !15
  br label %26

18:                                               ; preds = %13, %13
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %19 = getelementptr inbounds %struct.mvneta_port, ptr %0, i32 0, i32 5
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %20, i32 9376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 3271) #21, !srcloc !15
  br label %26

22:                                               ; preds = %13
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %23 = getelementptr inbounds %struct.mvneta_port, ptr %0, i32 0, i32 5
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %24, i32 9376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 4359) #21, !srcloc !15
  br label %26

26:                                               ; preds = %22, %18, %14, %13, %10, %7, %6
  %27 = phi i32 [ 0, %6 ], [ 0, %13 ], [ 0, %22 ], [ 0, %18 ], [ 0, %14 ], [ %12, %10 ], [ %8, %7 ]
  %28 = getelementptr inbounds %struct.mvneta_port, ptr %0, i32 0, i32 22
  store i32 %1, ptr %28, align 8
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_set_mode_ext(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mvneta_port_down(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.mvneta_port, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 9856
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #21, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !17
  %6 = and i32 %5, 255
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = shl nuw nsw i32 %6, 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %10 = load ptr, ptr %2, align 4
  %11 = getelementptr i8, ptr %10, i32 9856
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #21, !srcloc !15
  br label %12

12:                                               ; preds = %8, %1
  br label %19

13:                                               ; preds = %19
  %14 = add nuw nsw i32 %20, 1
  %15 = icmp eq i32 %14, 1000
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.mvneta_port, ptr %0, i32 0, i32 8
  %18 = load ptr, ptr %17, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %18, ptr noundef nonnull @.str.19, i32 noundef %24) #23
  br label %27

19:                                               ; preds = %13, %12
  %20 = phi i32 [ %14, %13 ], [ 0, %12 ]
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748000) #21
  %22 = load ptr, ptr %2, align 4
  %23 = getelementptr i8, ptr %22, i32 9856
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #21, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !17
  %25 = and i32 %24, 255
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %13

27:                                               ; preds = %19, %16
  %28 = load ptr, ptr %2, align 4
  %29 = getelementptr i8, ptr %28, i32 9288
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #21, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !17
  %31 = and i32 %30, 255
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %27
  %34 = shl nuw nsw i32 %31, 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %35 = load ptr, ptr %2, align 4
  %36 = getelementptr i8, ptr %35, i32 9288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %34) #21, !srcloc !15
  br label %37

37:                                               ; preds = %33, %27
  br label %44

38:                                               ; preds = %44
  %39 = add nuw nsw i32 %45, 1
  %40 = icmp eq i32 %39, 1000
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.mvneta_port, ptr %0, i32 0, i32 8
  %43 = load ptr, ptr %42, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %43, ptr noundef nonnull @.str.20, i32 noundef %49) #23
  br label %52

44:                                               ; preds = %38, %37
  %45 = phi i32 [ %39, %38 ], [ 0, %37 ]
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 214748000) #21
  %47 = load ptr, ptr %2, align 4
  %48 = getelementptr i8, ptr %47, i32 9288
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #21, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !17
  %50 = and i32 %49, 255
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %38

52:                                               ; preds = %44, %41
  br label %59

53:                                               ; preds = %59
  %54 = add nuw nsw i32 %60, 1
  %55 = icmp eq i32 %54, 10000
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.mvneta_port, ptr %0, i32 0, i32 8
  %58 = load ptr, ptr %57, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %58, ptr noundef nonnull @.str.21, i32 noundef %64) #23
  br label %67

59:                                               ; preds = %53, %52
  %60 = phi i32 [ %54, %53 ], [ 0, %52 ]
  %61 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %61(i32 noundef 214748000) #21
  %62 = load ptr, ptr %2, align 4
  %63 = getelementptr i8, ptr %62, i32 9284
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #21, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !17
  %65 = and i32 %64, 257
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %53, label %67

67:                                               ; preds = %59, %56
  %68 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %68(i32 noundef 42949600) #21
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init_eee(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mvneta_open(ptr noundef %0) #3 {
  %2 = alloca %struct.ethtool_wolinfo, align 4
  %3 = getelementptr i8, ptr %0, i32 1408
  %4 = getelementptr i8, ptr %0, i32 1440
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 20
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, 87
  %9 = and i32 %8, -64
  %10 = getelementptr i8, ptr %0, i32 1424
  store i32 %9, ptr %10, align 8
  %11 = tail call fastcc i32 @mvneta_setup_rxqs(ptr noundef %3)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %135

13:                                               ; preds = %1
  %14 = tail call fastcc i32 @mvneta_setup_txqs(ptr noundef %3)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %109

16:                                               ; preds = %13
  %17 = getelementptr i8, ptr %0, i32 2380
  %18 = load i8, ptr %17, align 4, !range !9
  %19 = icmp eq i8 %18, 0
  %20 = load ptr, ptr %4, align 8
  %21 = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 59
  %22 = load i32, ptr %21, align 8
  br i1 %19, label %25, label %23

23:                                               ; preds = %16
  %24 = tail call i32 @request_threaded_irq(i32 noundef %22, ptr noundef nonnull @mvneta_isr, ptr noundef null, i32 noundef 0, ptr noundef %0, ptr noundef %3) #21
  br label %29

25:                                               ; preds = %16
  %26 = getelementptr i8, ptr %0, i32 1412
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i32 @__request_percpu_irq(i32 noundef %22, ptr noundef nonnull @mvneta_percpu_isr, i32 noundef 0, ptr noundef %0, ptr noundef %27) #21
  br label %29

29:                                               ; preds = %25, %23
  %30 = phi i32 [ %24, %23 ], [ %28, %25 ]
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  %33 = load ptr, ptr %4, align 8
  %34 = getelementptr inbounds %struct.net_device, ptr %33, i32 0, i32 59
  %35 = load i32, ptr %34, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %33, ptr noundef nonnull @.str.22, i32 noundef %35) #23
  br label %107

36:                                               ; preds = %29
  %37 = load i8, ptr %17, align 4, !range !9
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %36
  tail call void @on_each_cpu_cond_mask(ptr noundef null, ptr noundef nonnull @mvneta_percpu_enable, ptr noundef %3, i1 noundef zeroext true, ptr noundef nonnull @__cpu_online_mask) #21
  %40 = getelementptr i8, ptr %0, i32 1468
  store i8 0, ptr %40, align 4
  %41 = load i32, ptr @online_hpstate, align 4
  %42 = getelementptr i8, ptr %0, i32 1444
  %43 = tail call i32 @__cpuhp_state_add_instance(i32 noundef %41, ptr noundef %42, i1 noundef zeroext false) #21
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %91

45:                                               ; preds = %39
  %46 = getelementptr i8, ptr %0, i32 1452
  %47 = tail call i32 @__cpuhp_state_add_instance(i32 noundef 17, ptr noundef %46, i1 noundef zeroext false) #21
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %83

49:                                               ; preds = %45, %36
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #21
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) @__const.mvneta_mdio_probe.wol, i32 20, i1 false) #21
  %50 = getelementptr i8, ptr %0, i32 1980
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr i8, ptr %0, i32 1972
  %53 = load ptr, ptr %52, align 4
  %54 = tail call i32 @phylink_of_phy_connect(ptr noundef %51, ptr noundef %53, i32 noundef 0) #21
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %49
  %57 = load ptr, ptr %4, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %57, ptr noundef nonnull @.str.27, i32 noundef %54) #23
  br label %58

58:                                               ; preds = %56, %49
  %59 = load ptr, ptr %50, align 4
  call void @phylink_ethtool_get_wol(ptr noundef %59, ptr noundef nonnull %2) #21
  %60 = load ptr, ptr %4, align 8
  %61 = getelementptr inbounds %struct.net_device, ptr %60, i32 0, i32 111
  %62 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %2, i32 0, i32 1
  %63 = load i32, ptr %62, align 4
  %64 = icmp ne i32 %63, 0
  call void @device_set_wakeup_capable(ptr noundef %61, i1 noundef zeroext %64) #21
  %65 = load i32, ptr %62, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %74, label %67

67:                                               ; preds = %58
  %68 = load ptr, ptr %4, align 8
  %69 = getelementptr inbounds %struct.net_device, ptr %68, i32 0, i32 111
  %70 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %2, i32 0, i32 2
  %71 = load i32, ptr %70, align 4
  %72 = icmp ne i32 %71, 0
  %73 = call i32 @device_set_wakeup_enable(ptr noundef %69, i1 noundef zeroext %72) #21
  br label %74

74:                                               ; preds = %67, %58
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #21
  %75 = icmp slt i32 %54, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %74
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.23) #23
  %77 = load i8, ptr %17, align 4, !range !9
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %80, label %95

79:                                               ; preds = %74
  call fastcc void @mvneta_start_dev(ptr noundef %3)
  br label %135

80:                                               ; preds = %76
  %81 = getelementptr i8, ptr %0, i32 1452
  %82 = call i32 @__cpuhp_state_remove_instance(i32 noundef 17, ptr noundef %81, i1 noundef zeroext false) #21
  br label %83

83:                                               ; preds = %80, %45
  %84 = phi i32 [ %47, %45 ], [ %54, %80 ]
  %85 = load i8, ptr %17, align 4
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %83
  %88 = load i32, ptr @online_hpstate, align 4
  %89 = getelementptr i8, ptr %0, i32 1444
  %90 = call i32 @__cpuhp_state_remove_instance(i32 noundef %88, ptr noundef %89, i1 noundef zeroext false) #21
  br label %91

91:                                               ; preds = %87, %39
  %92 = phi i32 [ %43, %39 ], [ %84, %87 ]
  %93 = load i8, ptr %17, align 4
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %101, label %95

95:                                               ; preds = %91, %83, %76
  %96 = phi i32 [ %92, %91 ], [ %84, %83 ], [ %54, %76 ]
  %97 = load ptr, ptr %4, align 8
  %98 = getelementptr inbounds %struct.net_device, ptr %97, i32 0, i32 59
  %99 = load i32, ptr %98, align 8
  %100 = call ptr @free_irq(i32 noundef %99, ptr noundef %3) #21
  br label %107

101:                                              ; preds = %91
  call void @on_each_cpu_cond_mask(ptr noundef null, ptr noundef nonnull @mvneta_percpu_disable, ptr noundef %3, i1 noundef zeroext true, ptr noundef nonnull @__cpu_online_mask) #21
  %102 = load ptr, ptr %4, align 8
  %103 = getelementptr inbounds %struct.net_device, ptr %102, i32 0, i32 59
  %104 = load i32, ptr %103, align 8
  %105 = getelementptr i8, ptr %0, i32 1412
  %106 = load ptr, ptr %105, align 4
  call void @free_percpu_irq(i32 noundef %104, ptr noundef %106) #21
  br label %107

107:                                              ; preds = %101, %95, %32
  %108 = phi i32 [ %30, %32 ], [ %96, %95 ], [ %92, %101 ]
  call fastcc void @mvneta_cleanup_txqs(ptr noundef %3)
  br label %109

109:                                              ; preds = %107, %13
  %110 = phi i32 [ %14, %13 ], [ %108, %107 ]
  %111 = load i32, ptr @rxq_number, align 4
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %113, label %135

113:                                              ; preds = %109
  %114 = getelementptr i8, ptr %0, i32 1432
  br label %115

115:                                              ; preds = %131, %113
  %116 = phi i32 [ 0, %113 ], [ %132, %131 ]
  %117 = load ptr, ptr %114, align 8
  %118 = getelementptr %struct.mvneta_rx_queue, ptr %117, i32 %116
  call fastcc void @mvneta_rxq_drop_pkts(ptr noundef %3, ptr noundef %118) #21
  %119 = getelementptr %struct.mvneta_rx_queue, ptr %117, i32 %116, i32 8
  %120 = load ptr, ptr %119, align 4
  %121 = icmp eq ptr %120, null
  br i1 %121, label %131, label %122

122:                                              ; preds = %115
  %123 = load ptr, ptr %4, align 8
  %124 = getelementptr inbounds %struct.net_device, ptr %123, i32 0, i32 111, i32 1
  %125 = load ptr, ptr %124, align 4
  %126 = getelementptr %struct.mvneta_rx_queue, ptr %117, i32 %116, i32 1
  %127 = load i32, ptr %126, align 4
  %128 = shl i32 %127, 5
  %129 = getelementptr %struct.mvneta_rx_queue, ptr %117, i32 %116, i32 9
  %130 = load i32, ptr %129, align 8
  call void @dma_free_attrs(ptr noundef %125, i32 noundef %128, ptr noundef nonnull %120, i32 noundef %130, i32 noundef 0) #21
  br label %131

131:                                              ; preds = %122, %115
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(24) %119, i8 0, i64 24, i1 false) #21
  %132 = add nuw nsw i32 %116, 1
  %133 = load i32, ptr @rxq_number, align 4
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %115, label %135

135:                                              ; preds = %131, %109, %79, %1
  %136 = phi i32 [ 0, %79 ], [ %11, %1 ], [ %110, %109 ], [ %110, %131 ]
  ret i32 %136
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mvneta_stop(ptr noundef %0) #3 {
  %2 = getelementptr i8, ptr %0, i32 1408
  %3 = getelementptr i8, ptr %0, i32 2380
  %4 = load i8, ptr %3, align 4, !range !9
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %22

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 1464
  tail call void @_raw_spin_lock(ptr noundef %7) #21
  %8 = getelementptr i8, ptr %0, i32 1468
  store i8 1, ptr %8, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !10
  %9 = load i16, ptr %7, align 4
  %10 = add i16 %9, 1
  store i16 %10, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !13
  tail call fastcc void @mvneta_stop_dev(ptr noundef %2)
  %11 = getelementptr i8, ptr %0, i32 1980
  %12 = load ptr, ptr %11, align 4
  tail call void @phylink_disconnect_phy(ptr noundef %12) #21
  %13 = load i32, ptr @online_hpstate, align 4
  %14 = getelementptr i8, ptr %0, i32 1444
  %15 = tail call i32 @__cpuhp_state_remove_instance(i32 noundef %13, ptr noundef %14, i1 noundef zeroext false) #21
  %16 = getelementptr i8, ptr %0, i32 1452
  %17 = tail call i32 @__cpuhp_state_remove_instance(i32 noundef 17, ptr noundef %16, i1 noundef zeroext false) #21
  tail call void @on_each_cpu_cond_mask(ptr noundef null, ptr noundef nonnull @mvneta_percpu_disable, ptr noundef %2, i1 noundef zeroext true, ptr noundef nonnull @__cpu_online_mask) #21
  %18 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 59
  %19 = load i32, ptr %18, align 8
  %20 = getelementptr i8, ptr %0, i32 1412
  %21 = load ptr, ptr %20, align 4
  tail call void @free_percpu_irq(i32 noundef %19, ptr noundef %21) #21
  br label %28

22:                                               ; preds = %1
  tail call fastcc void @mvneta_stop_dev(ptr noundef %2)
  %23 = getelementptr i8, ptr %0, i32 1980
  %24 = load ptr, ptr %23, align 4
  tail call void @phylink_disconnect_phy(ptr noundef %24) #21
  %25 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 59
  %26 = load i32, ptr %25, align 8
  %27 = tail call ptr @free_irq(i32 noundef %26, ptr noundef %2) #21
  br label %28

28:                                               ; preds = %22, %6
  %29 = load i32, ptr @rxq_number, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %54

31:                                               ; preds = %28
  %32 = getelementptr i8, ptr %0, i32 1432
  %33 = getelementptr i8, ptr %0, i32 1440
  br label %34

34:                                               ; preds = %50, %31
  %35 = phi i32 [ 0, %31 ], [ %51, %50 ]
  %36 = load ptr, ptr %32, align 8
  %37 = getelementptr %struct.mvneta_rx_queue, ptr %36, i32 %35
  tail call fastcc void @mvneta_rxq_drop_pkts(ptr noundef %2, ptr noundef %37) #21
  %38 = getelementptr %struct.mvneta_rx_queue, ptr %36, i32 %35, i32 8
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %50, label %41

41:                                               ; preds = %34
  %42 = load ptr, ptr %33, align 8
  %43 = getelementptr inbounds %struct.net_device, ptr %42, i32 0, i32 111, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr %struct.mvneta_rx_queue, ptr %36, i32 %35, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = shl i32 %46, 5
  %48 = getelementptr %struct.mvneta_rx_queue, ptr %36, i32 %35, i32 9
  %49 = load i32, ptr %48, align 8
  tail call void @dma_free_attrs(ptr noundef %44, i32 noundef %47, ptr noundef nonnull %39, i32 noundef %49, i32 noundef 0) #21
  br label %50

50:                                               ; preds = %41, %34
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(24) %38, i8 0, i64 24, i1 false) #21
  %51 = add nuw nsw i32 %35, 1
  %52 = load i32, ptr @rxq_number, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %34, label %54

54:                                               ; preds = %50, %28
  tail call fastcc void @mvneta_cleanup_txqs(ptr noundef %2)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mvneta_tx(ptr noundef %0, ptr noundef %1) #3 {
  %3 = alloca %struct.tso_t, align 4
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 9
  %5 = load i16, ptr %4, align 4
  %6 = getelementptr i8, ptr %1, i32 1436
  %7 = load ptr, ptr %6, align 4
  %8 = zext i16 %5 to i32
  %9 = getelementptr %struct.mvneta_tx_queue, ptr %7, i32 %8
  %10 = getelementptr %struct.mvneta_tx_queue, ptr %7, i32 %8, i32 6
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr %struct.mvneta_tx_queue, ptr %7, i32 %8, i32 7
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr %struct.mvneta_tx_buf, ptr %11, i32 %13
  %15 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %16 = load i32, ptr %15, align 8
  %17 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %18 = load volatile i32, ptr %17, align 4
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %523, label %21

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.skb_shared_info, ptr %23, i32 0, i32 4
  %25 = load i16, ptr %24, align 4
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %234, label %27

27:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #21
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, i8 0, i32 20, i1 false) #21, !annotation !18
  %28 = getelementptr %struct.mvneta_tx_queue, ptr %7, i32 %8, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = tail call i32 @tso_count_descs(ptr noundef %0) #21
  %31 = add i32 %30, %29
  %32 = getelementptr %struct.mvneta_tx_queue, ptr %7, i32 %8, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = icmp slt i32 %31, %33
  br i1 %34, label %35, label %432

35:                                               ; preds = %27
  %36 = load i32, ptr %15, align 8
  %37 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %38 = load i32, ptr %37, align 4
  %39 = sub i32 %36, %38
  %40 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %43 = load i16, ptr %42, align 2
  %44 = zext i16 %43 to i32
  %45 = getelementptr i8, ptr %41, i32 %44
  %46 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %47 = load ptr, ptr %46, align 4
  %48 = ptrtoint ptr %45 to i32
  %49 = ptrtoint ptr %47 to i32
  %50 = sub i32 %48, %49
  %51 = getelementptr inbounds %struct.tcphdr, ptr %45, i32 0, i32 4
  %52 = load i16, ptr %51, align 4
  %53 = lshr i16 %52, 2
  %54 = and i16 %53, 60
  %55 = zext i16 %54 to i32
  %56 = add i32 %50, %55
  %57 = icmp ult i32 %39, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %35
  %59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #23
  br label %432

60:                                               ; preds = %35
  %61 = call i32 @tso_start(ptr noundef %0, ptr noundef nonnull %3) #21
  %62 = load i32, ptr %15, align 8
  %63 = sub i32 %62, %61
  %64 = getelementptr %struct.mvneta_tx_queue, ptr %7, i32 %8, i32 14
  %65 = getelementptr %struct.mvneta_tx_queue, ptr %7, i32 %8, i32 13
  %66 = getelementptr %struct.mvneta_tx_queue, ptr %7, i32 %8, i32 12
  %67 = getelementptr %struct.mvneta_tx_queue, ptr %7, i32 %8, i32 10
  %68 = getelementptr %struct.mvneta_tx_queue, ptr %7, i32 %8, i32 15
  %69 = getelementptr inbounds %struct.tso_t, ptr %3, i32 0, i32 1
  %70 = getelementptr inbounds %struct.tso_t, ptr %3, i32 0, i32 2
  %71 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 111, i32 1
  %72 = icmp sgt i32 %63, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %60
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #21
  br label %523

74:                                               ; preds = %194, %60
  %75 = phi i32 [ %82, %194 ], [ %63, %60 ]
  %76 = phi i32 [ %195, %194 ], [ 0, %60 ]
  %77 = load ptr, ptr %22, align 4
  %78 = getelementptr inbounds %struct.skb_shared_info, ptr %77, i32 0, i32 4
  %79 = load i16, ptr %78, align 4
  %80 = zext i16 %79 to i32
  %81 = call i32 @llvm.smin.i32(i32 %75, i32 %80) #21
  %82 = sub nsw i32 %75, %81
  %83 = add i32 %76, 1
  %84 = load ptr, ptr %64, align 4
  %85 = load i32, ptr %12, align 4
  %86 = shl i32 %85, 8
  %87 = getelementptr i8, ptr %84, i32 %86
  %88 = icmp eq i32 %82, 0
  call void @tso_build_hdr(ptr noundef %0, ptr noundef %87, ptr noundef nonnull %3, i32 noundef %81, i1 noundef zeroext %88) #21
  %89 = load ptr, ptr %40, align 8
  %90 = load i16, ptr %42, align 2
  %91 = zext i16 %90 to i32
  %92 = getelementptr i8, ptr %89, i32 %91
  %93 = load ptr, ptr %46, align 4
  %94 = ptrtoint ptr %92 to i32
  %95 = ptrtoint ptr %93 to i32
  %96 = sub i32 %94, %95
  %97 = getelementptr inbounds %struct.tcphdr, ptr %92, i32 0, i32 4
  %98 = load i16, ptr %97, align 4
  %99 = lshr i16 %98, 2
  %100 = and i16 %99, 60
  %101 = load ptr, ptr %10, align 4
  %102 = load i32, ptr %12, align 4
  %103 = getelementptr %struct.mvneta_tx_buf, ptr %101, i32 %102
  %104 = load i32, ptr %65, align 4
  %105 = load i32, ptr %66, align 4
  %106 = icmp slt i32 %104, %105
  %107 = add i32 %104, 1
  %108 = select i1 %106, i32 %107, i32 0
  store i32 %108, ptr %65, align 4
  %109 = load ptr, ptr %67, align 4
  %110 = getelementptr %struct.mvneta_tx_desc, ptr %109, i32 %104
  %111 = trunc i32 %96 to i16
  %112 = add i16 %100, %111
  %113 = getelementptr %struct.mvneta_tx_desc, ptr %109, i32 %104, i32 2
  store i16 %112, ptr %113, align 2
  %114 = call fastcc i32 @mvneta_skb_tx_csum(ptr noundef %0) #21
  %115 = or i32 %114, 2097152
  store i32 %115, ptr %110, align 4
  %116 = load i32, ptr %68, align 4
  %117 = load i32, ptr %12, align 4
  %118 = shl i32 %117, 8
  %119 = add i32 %118, %116
  %120 = getelementptr %struct.mvneta_tx_desc, ptr %109, i32 %104, i32 3
  store i32 %119, ptr %120, align 4
  store i32 0, ptr %103, align 4
  %121 = getelementptr %struct.mvneta_tx_buf, ptr %101, i32 %102, i32 1
  store ptr null, ptr %121, align 4
  %122 = load i32, ptr %12, align 4
  %123 = add i32 %122, 1
  %124 = load i32, ptr %32, align 4
  %125 = icmp eq i32 %123, %124
  %126 = select i1 %125, i32 0, i32 %123
  store i32 %126, ptr %12, align 4
  %127 = icmp eq i32 %81, 0
  br i1 %127, label %194, label %128

128:                                              ; preds = %192, %74
  %129 = phi i32 [ %193, %192 ], [ %126, %74 ]
  %130 = phi i32 [ %190, %192 ], [ %81, %74 ]
  %131 = phi i32 [ %132, %192 ], [ %83, %74 ]
  %132 = add i32 %131, 1
  %133 = load i32, ptr %69, align 4
  %134 = call i32 @llvm.smin.i32(i32 %133, i32 %130) #21
  %135 = load ptr, ptr %70, align 4
  %136 = icmp sgt i32 %130, %133
  %137 = load ptr, ptr %10, align 4
  %138 = load i32, ptr %65, align 4
  %139 = load i32, ptr %66, align 4
  %140 = icmp slt i32 %138, %139
  %141 = add i32 %138, 1
  %142 = select i1 %140, i32 %141, i32 0
  store i32 %142, ptr %65, align 4
  %143 = load ptr, ptr %67, align 4
  %144 = getelementptr %struct.mvneta_tx_desc, ptr %143, i32 %138
  %145 = trunc i32 %134 to i16
  %146 = getelementptr %struct.mvneta_tx_desc, ptr %143, i32 %138, i32 2
  store i16 %145, ptr %146, align 2
  %147 = load ptr, ptr %71, align 4
  %148 = call zeroext i1 @is_vmalloc_addr(ptr noundef %135) #21
  %149 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %150 = xor i1 %149, true
  %151 = select i1 %148, i1 %150, i1 false
  br i1 %151, label %152, label %161, !prof !19

152:                                              ; preds = %128
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %153 = call ptr @dev_driver_string(ptr noundef %147) #21
  %154 = getelementptr inbounds %struct.device, ptr %147, i32 0, i32 3
  %155 = load ptr, ptr %154, align 4
  %156 = icmp eq ptr %155, null
  br i1 %156, label %157, label %159

157:                                              ; preds = %152
  %158 = load ptr, ptr %147, align 4
  br label %159

159:                                              ; preds = %157, %152
  %160 = phi ptr [ %158, %157 ], [ %155, %152 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.31, ptr noundef %153, ptr noundef %160) #21
  br label %161

161:                                              ; preds = %159, %128
  br i1 %148, label %162, label %164

162:                                              ; preds = %161
  %163 = getelementptr %struct.mvneta_tx_desc, ptr %143, i32 %138, i32 3
  store i32 -1, ptr %163, align 4
  br label %174

164:                                              ; preds = %161
  %165 = load ptr, ptr @mem_map, align 4
  %166 = ptrtoint ptr %135 to i32
  %167 = add i32 %166, 1073741824
  %168 = lshr i32 %167, 12
  %169 = getelementptr %struct.page, ptr %165, i32 %168
  %170 = and i32 %166, 4095
  %171 = call i32 @dma_map_page_attrs(ptr noundef %147, ptr noundef %169, i32 noundef %170, i32 noundef %134, i32 noundef 1, i32 noundef 0) #21
  %172 = getelementptr %struct.mvneta_tx_desc, ptr %143, i32 %138, i32 3
  store i32 %171, ptr %172, align 4
  %173 = icmp eq i32 %171, -1
  br i1 %173, label %174, label %179

174:                                              ; preds = %164, %162
  %175 = load i32, ptr %65, align 4
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %197

177:                                              ; preds = %174
  %178 = load i32, ptr %66, align 4
  br label %197

179:                                              ; preds = %164
  %180 = getelementptr %struct.mvneta_tx_buf, ptr %137, i32 %129
  store i32 0, ptr %144, align 4
  store i32 0, ptr %180, align 4
  %181 = getelementptr %struct.mvneta_tx_buf, ptr %137, i32 %129, i32 1
  store ptr null, ptr %181, align 4
  br i1 %136, label %184, label %182

182:                                              ; preds = %179
  store i32 1048576, ptr %144, align 4
  br i1 %88, label %183, label %184

183:                                              ; preds = %182
  store ptr %0, ptr %181, align 4
  br label %184

184:                                              ; preds = %183, %182, %179
  %185 = load i32, ptr %12, align 4
  %186 = add i32 %185, 1
  %187 = load i32, ptr %32, align 4
  %188 = icmp eq i32 %186, %187
  %189 = select i1 %188, i32 0, i32 %186
  store i32 %189, ptr %12, align 4
  %190 = sub i32 %130, %134
  call void @tso_build_data(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %134) #21
  %191 = icmp sgt i32 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %184
  %193 = load i32, ptr %12, align 4
  br label %128

194:                                              ; preds = %184, %74
  %195 = phi i32 [ %83, %74 ], [ %132, %184 ]
  %196 = icmp sgt i32 %82, 0
  br i1 %196, label %74, label %433

197:                                              ; preds = %177, %174
  %198 = phi i32 [ %178, %177 ], [ %175, %174 ]
  %199 = add i32 %198, -1
  store i32 %199, ptr %65, align 4
  %200 = icmp sgt i32 %131, -1
  br i1 %200, label %201, label %432

201:                                              ; preds = %197
  %202 = getelementptr i8, ptr %1, i32 1440
  br label %203

203:                                              ; preds = %229, %201
  %204 = phi i32 [ %199, %201 ], [ %231, %229 ]
  %205 = phi i32 [ %131, %201 ], [ %232, %229 ]
  %206 = load ptr, ptr %67, align 4
  %207 = getelementptr %struct.mvneta_tx_desc, ptr %206, i32 %205, i32 3
  %208 = load i32, ptr %207, align 4
  %209 = load i32, ptr %68, align 4
  %210 = icmp ult i32 %208, %209
  br i1 %210, label %216, label %211

211:                                              ; preds = %203
  %212 = load i32, ptr %32, align 4
  %213 = shl i32 %212, 8
  %214 = add i32 %213, %209
  %215 = icmp ult i32 %208, %214
  br i1 %215, label %224, label %216

216:                                              ; preds = %211, %203
  %217 = load ptr, ptr %202, align 8
  %218 = getelementptr inbounds %struct.net_device, ptr %217, i32 0, i32 111, i32 1
  %219 = load ptr, ptr %218, align 4
  %220 = getelementptr %struct.mvneta_tx_desc, ptr %206, i32 %205, i32 2
  %221 = load i16, ptr %220, align 2
  %222 = zext i16 %221 to i32
  call void @dma_unmap_page_attrs(ptr noundef %219, i32 noundef %208, i32 noundef %222, i32 noundef 1, i32 noundef 0) #21
  %223 = load i32, ptr %65, align 4
  br label %224

224:                                              ; preds = %216, %211
  %225 = phi i32 [ %223, %216 ], [ %204, %211 ]
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %227, label %229

227:                                              ; preds = %224
  %228 = load i32, ptr %66, align 4
  br label %229

229:                                              ; preds = %227, %224
  %230 = phi i32 [ %228, %227 ], [ %225, %224 ]
  %231 = add i32 %230, -1
  store i32 %231, ptr %65, align 4
  %232 = add nsw i32 %205, -1
  %233 = icmp sgt i32 %205, 0
  br i1 %233, label %203, label %432

234:                                              ; preds = %21
  %235 = getelementptr inbounds %struct.skb_shared_info, ptr %23, i32 0, i32 2
  %236 = load i8, ptr %235, align 2
  %237 = zext i8 %236 to i32
  %238 = add nuw nsw i32 %237, 1
  %239 = getelementptr %struct.mvneta_tx_queue, ptr %7, i32 %8, i32 13
  %240 = load i32, ptr %239, align 4
  %241 = getelementptr %struct.mvneta_tx_queue, ptr %7, i32 %8, i32 12
  %242 = load i32, ptr %241, align 4
  %243 = icmp slt i32 %240, %242
  %244 = add i32 %240, 1
  %245 = select i1 %243, i32 %244, i32 0
  store i32 %245, ptr %239, align 4
  %246 = getelementptr %struct.mvneta_tx_queue, ptr %7, i32 %8, i32 10
  %247 = load ptr, ptr %246, align 4
  %248 = getelementptr %struct.mvneta_tx_desc, ptr %247, i32 %240
  %249 = tail call fastcc i32 @mvneta_skb_tx_csum(ptr noundef %0)
  %250 = load i32, ptr %15, align 8
  %251 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %252 = load i32, ptr %251, align 4
  %253 = sub i32 %250, %252
  %254 = trunc i32 %253 to i16
  %255 = getelementptr %struct.mvneta_tx_desc, ptr %247, i32 %240, i32 2
  store i16 %254, ptr %255, align 2
  %256 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 111, i32 1
  %257 = load ptr, ptr %256, align 4
  %258 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %259 = load ptr, ptr %258, align 4
  %260 = and i32 %253, 65535
  %261 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %259) #21
  %262 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %263 = xor i1 %262, true
  %264 = select i1 %261, i1 %263, i1 false
  br i1 %264, label %265, label %274, !prof !19

265:                                              ; preds = %234
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %266 = tail call ptr @dev_driver_string(ptr noundef %257) #21
  %267 = getelementptr inbounds %struct.device, ptr %257, i32 0, i32 3
  %268 = load ptr, ptr %267, align 4
  %269 = icmp eq ptr %268, null
  br i1 %269, label %270, label %272

270:                                              ; preds = %265
  %271 = load ptr, ptr %257, align 4
  br label %272

272:                                              ; preds = %270, %265
  %273 = phi ptr [ %271, %270 ], [ %268, %265 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.31, ptr noundef %266, ptr noundef %273) #21
  br label %274

274:                                              ; preds = %272, %234
  br i1 %261, label %275, label %277

275:                                              ; preds = %274
  %276 = getelementptr %struct.mvneta_tx_desc, ptr %247, i32 %240, i32 3
  store i32 -1, ptr %276, align 4
  br label %287

277:                                              ; preds = %274
  %278 = load ptr, ptr @mem_map, align 4
  %279 = ptrtoint ptr %259 to i32
  %280 = add i32 %279, 1073741824
  %281 = lshr i32 %280, 12
  %282 = getelementptr %struct.page, ptr %278, i32 %281
  %283 = and i32 %279, 4095
  %284 = tail call i32 @dma_map_page_attrs(ptr noundef %257, ptr noundef %282, i32 noundef %283, i32 noundef %260, i32 noundef 1, i32 noundef 0) #21
  %285 = getelementptr %struct.mvneta_tx_desc, ptr %247, i32 %240, i32 3
  store i32 %284, ptr %285, align 4
  %286 = icmp eq i32 %284, -1
  br i1 %286, label %287, label %295

287:                                              ; preds = %277, %275
  %288 = load i32, ptr %239, align 4
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %290, label %292

290:                                              ; preds = %287
  %291 = load i32, ptr %241, align 4
  br label %292

292:                                              ; preds = %290, %287
  %293 = phi i32 [ %291, %290 ], [ %288, %287 ]
  %294 = add i32 %293, -1
  store i32 %294, ptr %239, align 4
  br label %523

295:                                              ; preds = %277
  store i32 0, ptr %14, align 4
  %296 = icmp eq i8 %236, 0
  br i1 %296, label %297, label %306

297:                                              ; preds = %295
  %298 = or i32 %249, 3670016
  store i32 %298, ptr %248, align 4
  %299 = getelementptr %struct.mvneta_tx_buf, ptr %11, i32 %13, i32 1
  store ptr %0, ptr %299, align 4
  %300 = load i32, ptr %12, align 4
  %301 = add i32 %300, 1
  %302 = getelementptr %struct.mvneta_tx_queue, ptr %7, i32 %8, i32 1
  %303 = load i32, ptr %302, align 4
  %304 = icmp eq i32 %301, %303
  %305 = select i1 %304, i32 0, i32 %301
  store i32 %305, ptr %12, align 4
  br label %435

306:                                              ; preds = %295
  %307 = or i32 %249, 2097152
  %308 = getelementptr %struct.mvneta_tx_buf, ptr %11, i32 %13, i32 1
  store ptr null, ptr %308, align 4
  %309 = load i32, ptr %12, align 4
  %310 = add i32 %309, 1
  %311 = getelementptr %struct.mvneta_tx_queue, ptr %7, i32 %8, i32 1
  %312 = load i32, ptr %311, align 4
  %313 = icmp eq i32 %310, %312
  %314 = select i1 %313, i32 0, i32 %310
  store i32 %314, ptr %12, align 4
  store i32 %307, ptr %248, align 4
  %315 = load ptr, ptr %22, align 4
  %316 = getelementptr inbounds %struct.skb_shared_info, ptr %315, i32 0, i32 2
  %317 = load i8, ptr %316, align 2
  %318 = zext i8 %317 to i32
  %319 = icmp eq i8 %317, 0
  br i1 %319, label %435, label %320

320:                                              ; preds = %306
  %321 = getelementptr i8, ptr %1, i32 1440
  %322 = add nsw i32 %318, -1
  %323 = load i32, ptr %12, align 4
  br label %324

324:                                              ; preds = %398, %320
  %325 = phi ptr [ %315, %320 ], [ %399, %398 ]
  %326 = phi i32 [ %323, %320 ], [ %391, %398 ]
  %327 = phi i32 [ 0, %320 ], [ %392, %398 ]
  %328 = load ptr, ptr %10, align 4
  %329 = getelementptr %struct.mvneta_tx_buf, ptr %328, i32 %326
  %330 = getelementptr %struct.skb_shared_info, ptr %325, i32 0, i32 12, i32 %327
  %331 = load ptr, ptr %330, align 4
  %332 = tail call ptr @page_address(ptr noundef %331) #21
  %333 = getelementptr %struct.skb_shared_info, ptr %325, i32 0, i32 12, i32 %327, i32 2
  %334 = load i32, ptr %333, align 4
  %335 = getelementptr i8, ptr %332, i32 %334
  %336 = load i32, ptr %239, align 4
  %337 = load i32, ptr %241, align 4
  %338 = icmp slt i32 %336, %337
  %339 = add i32 %336, 1
  %340 = select i1 %338, i32 %339, i32 0
  store i32 %340, ptr %239, align 4
  %341 = load ptr, ptr %246, align 4
  %342 = getelementptr %struct.mvneta_tx_desc, ptr %341, i32 %336
  %343 = getelementptr %struct.skb_shared_info, ptr %325, i32 0, i32 12, i32 %327, i32 1
  %344 = load i32, ptr %343, align 4
  %345 = trunc i32 %344 to i16
  %346 = getelementptr %struct.mvneta_tx_desc, ptr %341, i32 %336, i32 2
  store i16 %345, ptr %346, align 2
  %347 = load ptr, ptr %321, align 8
  %348 = getelementptr inbounds %struct.net_device, ptr %347, i32 0, i32 111, i32 1
  %349 = load ptr, ptr %348, align 4
  %350 = and i32 %344, 65535
  %351 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %335) #21
  %352 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %353 = xor i1 %352, true
  %354 = select i1 %351, i1 %353, i1 false
  br i1 %354, label %355, label %364, !prof !19

355:                                              ; preds = %324
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %356 = tail call ptr @dev_driver_string(ptr noundef %349) #21
  %357 = getelementptr inbounds %struct.device, ptr %349, i32 0, i32 3
  %358 = load ptr, ptr %357, align 4
  %359 = icmp eq ptr %358, null
  br i1 %359, label %360, label %362

360:                                              ; preds = %355
  %361 = load ptr, ptr %349, align 4
  br label %362

362:                                              ; preds = %360, %355
  %363 = phi ptr [ %361, %360 ], [ %358, %355 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.31, ptr noundef %356, ptr noundef %363) #21
  br label %364

364:                                              ; preds = %362, %324
  br i1 %351, label %365, label %367

365:                                              ; preds = %364
  %366 = getelementptr %struct.mvneta_tx_desc, ptr %341, i32 %336, i32 3
  store i32 -1, ptr %366, align 4
  br label %377

367:                                              ; preds = %364
  %368 = load ptr, ptr @mem_map, align 4
  %369 = ptrtoint ptr %335 to i32
  %370 = add i32 %369, 1073741824
  %371 = lshr i32 %370, 12
  %372 = getelementptr %struct.page, ptr %368, i32 %371
  %373 = and i32 %369, 4095
  %374 = tail call i32 @dma_map_page_attrs(ptr noundef %349, ptr noundef %372, i32 noundef %373, i32 noundef %350, i32 noundef 1, i32 noundef 0) #21
  %375 = getelementptr %struct.mvneta_tx_desc, ptr %341, i32 %336, i32 3
  store i32 %374, ptr %375, align 4
  %376 = icmp eq i32 %374, -1
  br i1 %376, label %377, label %382

377:                                              ; preds = %367, %365
  %378 = load i32, ptr %239, align 4
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %380, label %394

380:                                              ; preds = %377
  %381 = load i32, ptr %241, align 4
  br label %394

382:                                              ; preds = %367
  %383 = icmp eq i32 %327, %322
  %384 = select i1 %383, i32 1572864, i32 0
  %385 = select i1 %383, ptr %0, ptr null
  store i32 %384, ptr %342, align 4
  %386 = getelementptr %struct.mvneta_tx_buf, ptr %328, i32 %326, i32 1
  store ptr %385, ptr %386, align 4
  store i32 0, ptr %329, align 4
  %387 = load i32, ptr %12, align 4
  %388 = add i32 %387, 1
  %389 = load i32, ptr %311, align 4
  %390 = icmp eq i32 %388, %389
  %391 = select i1 %390, i32 0, i32 %388
  store i32 %391, ptr %12, align 4
  %392 = add nuw nsw i32 %327, 1
  %393 = icmp eq i32 %392, %318
  br i1 %393, label %435, label %398

394:                                              ; preds = %380, %377
  %395 = phi i32 [ %381, %380 ], [ %378, %377 ]
  %396 = add i32 %395, -1
  store i32 %396, ptr %239, align 4
  %397 = icmp eq i32 %327, 0
  br i1 %397, label %420, label %400

398:                                              ; preds = %382
  %399 = load ptr, ptr %22, align 4
  br label %324

400:                                              ; preds = %416, %394
  %401 = phi i32 [ %402, %416 ], [ %327, %394 ]
  %402 = add nsw i32 %401, -1
  %403 = load ptr, ptr %246, align 4
  %404 = load ptr, ptr %321, align 8
  %405 = getelementptr inbounds %struct.net_device, ptr %404, i32 0, i32 111, i32 1
  %406 = load ptr, ptr %405, align 4
  %407 = getelementptr %struct.mvneta_tx_desc, ptr %403, i32 %402, i32 3
  %408 = load i32, ptr %407, align 4
  %409 = getelementptr %struct.mvneta_tx_desc, ptr %403, i32 %402, i32 2
  %410 = load i16, ptr %409, align 2
  %411 = zext i16 %410 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %406, i32 noundef %408, i32 noundef %411, i32 noundef 1, i32 noundef 0) #21
  %412 = load i32, ptr %239, align 4
  %413 = icmp eq i32 %412, 0
  br i1 %413, label %414, label %416

414:                                              ; preds = %400
  %415 = load i32, ptr %241, align 4
  br label %416

416:                                              ; preds = %414, %400
  %417 = phi i32 [ %415, %414 ], [ %412, %400 ]
  %418 = add i32 %417, -1
  store i32 %418, ptr %239, align 4
  %419 = icmp sgt i32 %401, 1
  br i1 %419, label %400, label %420

420:                                              ; preds = %416, %394
  %421 = load ptr, ptr %256, align 4
  %422 = load i32, ptr %285, align 4
  %423 = load i16, ptr %255, align 2
  %424 = zext i16 %423 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %421, i32 noundef %422, i32 noundef %424, i32 noundef 1, i32 noundef 0) #21
  %425 = load i32, ptr %239, align 4
  %426 = icmp eq i32 %425, 0
  br i1 %426, label %427, label %429

427:                                              ; preds = %420
  %428 = load i32, ptr %241, align 4
  br label %429

429:                                              ; preds = %427, %420
  %430 = phi i32 [ %428, %427 ], [ %425, %420 ]
  %431 = add i32 %430, -1
  store i32 %431, ptr %239, align 4
  br label %523

432:                                              ; preds = %229, %197, %58, %27
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #21
  br label %523

433:                                              ; preds = %194
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #21
  %434 = icmp sgt i32 %195, 0
  br i1 %434, label %435, label %523

435:                                              ; preds = %433, %382, %306, %297
  %436 = phi i32 [ %195, %433 ], [ 1, %297 ], [ %238, %306 ], [ %238, %382 ]
  %437 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 87
  %438 = load ptr, ptr %437, align 64
  %439 = getelementptr i8, ptr %1, i32 1416
  %440 = load ptr, ptr %439, align 8
  %441 = ptrtoint ptr %440 to i32
  %442 = call i32 @llvm.read_register.i32(metadata !0) #21
  %443 = inttoptr i32 %442 to ptr
  %444 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %443) #11, !srcloc !20
  %445 = add i32 %444, %441
  %446 = inttoptr i32 %445 to ptr
  %447 = getelementptr %struct.netdev_queue, ptr %438, i32 %8, i32 14
  %448 = icmp ugt i32 %16, 268435455
  br i1 %448, label %449, label %450, !prof !19

449:                                              ; preds = %435
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/dynamic_queue_limits.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #21, !srcloc !30
  unreachable

450:                                              ; preds = %435
  %451 = getelementptr %struct.netdev_queue, ptr %438, i32 %8, i32 14, i32 2
  store i32 %16, ptr %451, align 8
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !31
  %452 = load i32, ptr %447, align 64
  %453 = add i32 %452, %16
  store i32 %453, ptr %447, align 64
  %454 = getelementptr %struct.netdev_queue, ptr %438, i32 %8, i32 14, i32 1
  %455 = load volatile i32, ptr %454, align 4
  %456 = load volatile i32, ptr %447, align 64
  %457 = sub i32 %455, %456
  %458 = icmp sgt i32 %457, -1
  br i1 %458, label %466, label %459, !prof !25

459:                                              ; preds = %450
  %460 = getelementptr %struct.netdev_queue, ptr %438, i32 %8, i32 12
  call void @_set_bit(i32 noundef 1, ptr noundef %460) #21
  call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !32
  %461 = load volatile i32, ptr %454, align 4
  %462 = load volatile i32, ptr %447, align 64
  %463 = sub i32 %461, %462
  %464 = icmp sgt i32 %463, -1
  br i1 %464, label %465, label %466, !prof !19

465:                                              ; preds = %459
  call void @_clear_bit(i32 noundef 1, ptr noundef %460) #21
  br label %466

466:                                              ; preds = %465, %459, %450
  %467 = getelementptr %struct.mvneta_tx_queue, ptr %7, i32 %8, i32 2
  %468 = load i32, ptr %467, align 4
  %469 = add i32 %468, %436
  store i32 %469, ptr %467, align 4
  %470 = getelementptr %struct.mvneta_tx_queue, ptr %7, i32 %8, i32 4
  %471 = load i32, ptr %470, align 4
  %472 = icmp slt i32 %469, %471
  br i1 %472, label %475, label %473

473:                                              ; preds = %466
  %474 = getelementptr %struct.netdev_queue, ptr %438, i32 %8, i32 12
  call void @_set_bit(i32 noundef 0, ptr noundef %474) #21
  br label %475

475:                                              ; preds = %473, %466
  %476 = call i32 @llvm.read_register.i32(metadata !0) #21
  %477 = inttoptr i32 %476 to ptr
  %478 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %477) #11, !srcloc !20
  %479 = add i32 %478, ptrtoint (ptr getelementptr inbounds (%struct.softnet_data, ptr @softnet_data, i32 0, i32 10, i32 1) to i32)
  %480 = inttoptr i32 %479 to ptr
  %481 = load i8, ptr %480, align 1
  %482 = icmp eq i8 %481, 0
  br i1 %482, label %493, label %483

483:                                              ; preds = %475
  %484 = getelementptr %struct.netdev_queue, ptr %438, i32 %8, i32 12
  %485 = load i32, ptr %484, align 4
  %486 = and i32 %485, 3
  %487 = icmp eq i32 %486, 0
  br i1 %487, label %488, label %493

488:                                              ; preds = %483
  %489 = getelementptr %struct.mvneta_tx_queue, ptr %7, i32 %8, i32 3
  %490 = load i32, ptr %489, align 4
  %491 = add i32 %490, %436
  %492 = icmp sgt i32 %491, 255
  br i1 %492, label %493, label %510

493:                                              ; preds = %488, %483, %475
  %494 = getelementptr %struct.mvneta_tx_queue, ptr %7, i32 %8, i32 3
  %495 = load i32, ptr %494, align 4
  %496 = add i32 %495, %436
  %497 = getelementptr i8, ptr %1, i32 1428
  br label %498

498:                                              ; preds = %498, %493
  %499 = phi i32 [ %496, %493 ], [ %507, %498 ]
  %500 = call i32 @llvm.smin.i32(i32 %499, i32 255) #21
  %501 = load i8, ptr %9, align 4
  %502 = zext i8 %501 to i32
  %503 = shl nuw nsw i32 %502, 2
  %504 = add nuw nsw i32 %503, 15456
  call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  call void @arm_heavy_mb() #21
  %505 = load ptr, ptr %497, align 4
  %506 = getelementptr i8, ptr %505, i32 %504
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %506, i32 %500) #21, !srcloc !15
  %507 = sub i32 %499, %500
  %508 = icmp sgt i32 %507, 0
  br i1 %508, label %498, label %509

509:                                              ; preds = %498
  store i32 0, ptr %494, align 4
  br label %511

510:                                              ; preds = %488
  store i32 %491, ptr %489, align 4
  br label %511

511:                                              ; preds = %510, %509
  %512 = load i32, ptr %446, align 4
  %513 = add i32 %512, 1
  store i32 %513, ptr %446, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !23
  %514 = sext i32 %16 to i64
  %515 = getelementptr inbounds %struct.mvneta_pcpu_stats, ptr %446, i32 0, i32 1, i32 0, i32 3
  %516 = load i64, ptr %515, align 8
  %517 = add i64 %516, %514
  store i64 %517, ptr %515, align 8
  %518 = getelementptr inbounds %struct.mvneta_pcpu_stats, ptr %446, i32 0, i32 1, i32 0, i32 2
  %519 = load i64, ptr %518, align 8
  %520 = add i64 %519, 1
  store i64 %520, ptr %518, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !24
  %521 = load i32, ptr %446, align 4
  %522 = add i32 %521, 1
  store i32 %522, ptr %446, align 4
  br label %527

523:                                              ; preds = %433, %432, %429, %292, %73, %2
  %524 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 7
  %525 = load i32, ptr %524, align 4
  %526 = add i32 %525, 1
  store i32 %526, ptr %524, align 4
  call void @__dev_kfree_skb_any(ptr noundef %0, i32 noundef 1) #21
  br label %527

527:                                              ; preds = %523, %511
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mvneta_set_rx_mode(ptr noundef %0) #3 {
  %2 = getelementptr i8, ptr %0, i32 1408
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 14
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 256
  %6 = icmp eq i32 %5, 0
  %7 = getelementptr i8, ptr %0, i32 1428
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 9216
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #21
  tail call void asm sideeffect "dsb ", "~{memory}"() #21
  %11 = load ptr, ptr %7, align 4
  %12 = getelementptr i8, ptr %11, i32 9404
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #21
  tail call void asm sideeffect "dsb ", "~{memory}"() #21
  br i1 %6, label %86, label %14

14:                                               ; preds = %1
  %15 = or i32 %10, 1
  %16 = or i32 %13, 2097152
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %17 = load ptr, ptr %7, align 4
  %18 = getelementptr i8, ptr %17, i32 9236
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 65535) #21, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %19 = load ptr, ptr %7, align 4
  %20 = getelementptr i8, ptr %19, i32 9240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 -1) #21, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %21 = load ptr, ptr %7, align 4
  %22 = getelementptr i8, ptr %21, i32 9216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %15) #21, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %23 = load ptr, ptr %7, align 4
  %24 = getelementptr i8, ptr %23, i32 9404
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %16) #21, !srcloc !15
  %25 = getelementptr i8, ptr %0, i32 1460
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, -1
  %28 = shl i32 %26, 1
  %29 = or i32 %28, 1
  %30 = shl i32 %29, 24
  %31 = shl i32 %29, 16
  %32 = shl i32 %29, 8
  %33 = or i32 %31, %29
  %34 = or i32 %33, %30
  %35 = or i32 %34, %32
  %36 = select i1 %27, i32 0, i32 %35
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %37 = load ptr, ptr %7, align 4
  %38 = getelementptr i8, ptr %37, i32 13824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %36) #21, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %39 = load ptr, ptr %7, align 4
  %40 = getelementptr i8, ptr %39, i32 13828
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %36) #21, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %41 = load ptr, ptr %7, align 4
  %42 = getelementptr i8, ptr %41, i32 13832
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %36) #21, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %43 = load ptr, ptr %7, align 4
  %44 = getelementptr i8, ptr %43, i32 13836
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %36) #21, !srcloc !15
  %45 = load i32, ptr %25, align 4
  %46 = icmp eq i32 %45, -1
  %47 = shl i32 %45, 1
  %48 = or i32 %47, 1
  %49 = shl i32 %48, 24
  %50 = shl i32 %48, 16
  %51 = shl i32 %48, 8
  %52 = or i32 %50, %48
  %53 = or i32 %52, %49
  %54 = or i32 %53, %51
  %55 = select i1 %46, i32 0, i32 %54
  br label %56

56:                                               ; preds = %56, %14
  %57 = phi i32 [ 0, %14 ], [ %61, %56 ]
  %58 = add nuw nsw i32 %57, 13312
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %59 = load ptr, ptr %7, align 4
  %60 = getelementptr i8, ptr %59, i32 %58
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %55) #21, !srcloc !15
  %61 = add nuw nsw i32 %57, 4
  %62 = icmp ult i32 %57, 249
  br i1 %62, label %56, label %63

63:                                               ; preds = %56
  %64 = load i32, ptr %25, align 4
  %65 = icmp eq i32 %64, -1
  %66 = getelementptr i8, ptr %0, i32 1708
  br i1 %65, label %67, label %68

67:                                               ; preds = %63
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(256) %66, i8 0, i32 256, i1 false) #21
  br label %77

68:                                               ; preds = %63
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(256) %66, i8 1, i32 256, i1 false) #21
  %69 = shl i32 %64, 1
  %70 = or i32 %69, 1
  %71 = shl i32 %70, 24
  %72 = shl i32 %70, 16
  %73 = shl i32 %70, 8
  %74 = or i32 %72, %70
  %75 = or i32 %74, %71
  %76 = or i32 %75, %73
  br label %77

77:                                               ; preds = %68, %67
  %78 = phi i32 [ 0, %67 ], [ %76, %68 ]
  br label %79

79:                                               ; preds = %79, %77
  %80 = phi i32 [ 0, %77 ], [ %84, %79 ]
  %81 = add nuw nsw i32 %80, 13568
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %82 = load ptr, ptr %7, align 4
  %83 = getelementptr i8, ptr %82, i32 %81
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %83, i32 %78) #21, !srcloc !15
  %84 = add nuw nsw i32 %80, 4
  %85 = icmp ult i32 %80, 249
  br i1 %85, label %79, label %284

86:                                               ; preds = %1
  %87 = and i32 %10, -2
  %88 = and i32 %13, -2097153
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %89 = load ptr, ptr %7, align 4
  %90 = getelementptr i8, ptr %89, i32 9216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %90, i32 %87) #21, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %91 = load ptr, ptr %7, align 4
  %92 = getelementptr i8, ptr %91, i32 9404
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 %88) #21, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %93 = load ptr, ptr %7, align 4
  %94 = getelementptr i8, ptr %93, i32 13824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %94, i32 0) #21, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %95 = load ptr, ptr %7, align 4
  %96 = getelementptr i8, ptr %95, i32 13828
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %96, i32 0) #21, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %97 = load ptr, ptr %7, align 4
  %98 = getelementptr i8, ptr %97, i32 13832
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %98, i32 0) #21, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %99 = load ptr, ptr %7, align 4
  %100 = getelementptr i8, ptr %99, i32 13836
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %100, i32 0) #21, !srcloc !15
  %101 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 72
  %102 = load ptr, ptr %101, align 32
  %103 = getelementptr i8, ptr %0, i32 1460
  %104 = load i32, ptr %103, align 4
  tail call fastcc void @mvneta_mac_addr_set(ptr noundef %2, ptr noundef %102, i32 noundef %104)
  %105 = load i32, ptr %3, align 8
  %106 = and i32 %105, 512
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %150, label %108

108:                                              ; preds = %86
  %109 = load i32, ptr %103, align 4
  %110 = icmp eq i32 %109, -1
  %111 = shl i32 %109, 1
  %112 = or i32 %111, 1
  %113 = shl i32 %112, 24
  %114 = shl i32 %112, 16
  %115 = shl i32 %112, 8
  %116 = or i32 %114, %112
  %117 = or i32 %116, %113
  %118 = or i32 %117, %115
  %119 = select i1 %110, i32 0, i32 %118
  br label %120

120:                                              ; preds = %120, %108
  %121 = phi i32 [ 0, %108 ], [ %125, %120 ]
  %122 = add nuw nsw i32 %121, 13312
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %123 = load ptr, ptr %7, align 4
  %124 = getelementptr i8, ptr %123, i32 %122
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %124, i32 %119) #21, !srcloc !15
  %125 = add nuw nsw i32 %121, 4
  %126 = icmp ult i32 %121, 249
  br i1 %126, label %120, label %127

127:                                              ; preds = %120
  %128 = load i32, ptr %103, align 4
  %129 = icmp eq i32 %128, -1
  %130 = getelementptr i8, ptr %0, i32 1708
  br i1 %129, label %131, label %132

131:                                              ; preds = %127
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(256) %130, i8 0, i32 256, i1 false) #21
  br label %141

132:                                              ; preds = %127
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(256) %130, i8 1, i32 256, i1 false) #21
  %133 = shl i32 %128, 1
  %134 = or i32 %133, 1
  %135 = shl i32 %134, 24
  %136 = shl i32 %134, 16
  %137 = shl i32 %134, 8
  %138 = or i32 %136, %134
  %139 = or i32 %138, %135
  %140 = or i32 %139, %137
  br label %141

141:                                              ; preds = %132, %131
  %142 = phi i32 [ 0, %131 ], [ %140, %132 ]
  br label %143

143:                                              ; preds = %143, %141
  %144 = phi i32 [ 0, %141 ], [ %148, %143 ]
  %145 = add nuw nsw i32 %144, 13568
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %146 = load ptr, ptr %7, align 4
  %147 = getelementptr i8, ptr %146, i32 %145
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %147, i32 %142) #21, !srcloc !15
  %148 = add nuw nsw i32 %144, 4
  %149 = icmp ult i32 %144, 249
  br i1 %149, label %143, label %284

150:                                              ; preds = %150, %86
  %151 = phi i32 [ %155, %150 ], [ 0, %86 ]
  %152 = add nuw nsw i32 %151, 13312
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %153 = load ptr, ptr %7, align 4
  %154 = getelementptr i8, ptr %153, i32 %152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %154, i32 0) #21, !srcloc !15
  %155 = add nuw nsw i32 %151, 4
  %156 = icmp ult i32 %151, 249
  br i1 %156, label %150, label %157

157:                                              ; preds = %150
  %158 = getelementptr i8, ptr %0, i32 1708
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(256) %158, i8 0, i32 256, i1 false) #21
  br label %159

159:                                              ; preds = %159, %157
  %160 = phi i32 [ 0, %157 ], [ %164, %159 ]
  %161 = add nuw nsw i32 %160, 13568
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %162 = load ptr, ptr %7, align 4
  %163 = getelementptr i8, ptr %162, i32 %161
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %163, i32 0) #21, !srcloc !15
  %164 = add nuw nsw i32 %160, 4
  %165 = icmp ult i32 %160, 249
  br i1 %165, label %159, label %166

166:                                              ; preds = %159
  %167 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 61
  %168 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 61, i32 1
  %169 = load i32, ptr %168, align 4
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %284, label %171

171:                                              ; preds = %166
  %172 = load ptr, ptr %167, align 4
  %173 = icmp eq ptr %172, %167
  br i1 %173, label %284, label %174

174:                                              ; preds = %171
  %175 = getelementptr i8, ptr %0, i32 1440
  br label %176

176:                                              ; preds = %281, %174
  %177 = phi ptr [ %172, %174 ], [ %282, %281 ]
  %178 = getelementptr inbounds %struct.netdev_hw_addr, ptr %177, i32 0, i32 2
  %179 = load i32, ptr %103, align 4
  %180 = tail call i32 @bcmp(ptr noundef dereferenceable(5) %178, ptr noundef nonnull dereferenceable(5) @.str.33, i32 5) #21
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %204

182:                                              ; preds = %176
  %183 = getelementptr %struct.netdev_hw_addr, ptr %177, i32 0, i32 2, i32 5
  %184 = load i8, ptr %183, align 1
  %185 = zext i8 %184 to i32
  %186 = and i32 %185, 252
  %187 = or i32 %186, 13312
  %188 = load ptr, ptr %7, align 4
  %189 = getelementptr i8, ptr %188, i32 %187
  %190 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %189) #21, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !17
  %191 = icmp eq i32 %179, -1
  %192 = shl nuw nsw i32 %185, 3
  %193 = and i32 %192, 24
  %194 = shl nuw i32 255, %193
  %195 = xor i32 %194, -1
  %196 = and i32 %190, %195
  %197 = shl i32 %179, 1
  %198 = or i32 %197, 1
  %199 = shl i32 %198, %193
  %200 = select i1 %191, i32 0, i32 %199
  %201 = or i32 %196, %200
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %202 = load ptr, ptr %7, align 4
  %203 = getelementptr i8, ptr %202, i32 %187
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %203, i32 %201) #21, !srcloc !15
  br label %281

204:                                              ; preds = %204, %176
  %205 = phi i32 [ %244, %204 ], [ 0, %176 ]
  %206 = phi i32 [ %243, %204 ], [ 0, %176 ]
  %207 = getelementptr i8, ptr %178, i32 %205
  %208 = load i8, ptr %207, align 1
  %209 = zext i8 %208 to i32
  %210 = xor i32 %206, %209
  %211 = shl i32 %210, 8
  %212 = and i32 %210, 128
  %213 = icmp eq i32 %212, 0
  %214 = select i1 %213, i32 0, i32 33664
  %215 = xor i32 %214, %211
  %216 = and i32 %210, 64
  %217 = icmp eq i32 %216, 0
  %218 = select i1 %217, i32 0, i32 16832
  %219 = xor i32 %215, %218
  %220 = and i32 %210, 32
  %221 = icmp eq i32 %220, 0
  %222 = select i1 %221, i32 0, i32 8416
  %223 = and i32 %210, 16
  %224 = icmp eq i32 %223, 0
  %225 = select i1 %224, i32 0, i32 4208
  %226 = and i32 %210, 8
  %227 = icmp eq i32 %226, 0
  %228 = select i1 %227, i32 0, i32 2104
  %229 = and i32 %210, 4
  %230 = icmp eq i32 %229, 0
  %231 = select i1 %230, i32 0, i32 1052
  %232 = and i32 %215, 512
  %233 = icmp eq i32 %232, 0
  %234 = select i1 %233, i32 0, i32 526
  %235 = and i32 %219, 256
  %236 = icmp eq i32 %235, 0
  %237 = select i1 %236, i32 0, i32 263
  %238 = xor i32 %225, %222
  %239 = xor i32 %238, %228
  %240 = xor i32 %239, %231
  %241 = xor i32 %240, %219
  %242 = xor i32 %241, %234
  %243 = xor i32 %242, %237
  %244 = add nuw nsw i32 %205, 1
  %245 = icmp eq i32 %244, 6
  br i1 %245, label %246, label %204

246:                                              ; preds = %204
  %247 = icmp eq i32 %179, -1
  %248 = and i32 %243, 255
  %249 = getelementptr %struct.mvneta_port, ptr %2, i32 0, i32 19, i32 %248
  %250 = load i8, ptr %249, align 1
  br i1 %247, label %251, label %261

251:                                              ; preds = %246
  %252 = icmp eq i8 %250, 0
  br i1 %252, label %253, label %255

253:                                              ; preds = %251
  %254 = load ptr, ptr %175, align 8
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %254, ptr noundef nonnull @.str.34, i32 noundef %248) #23
  br label %281

255:                                              ; preds = %251
  %256 = add i8 %250, -1
  store i8 %256, ptr %249, align 1
  %257 = icmp eq i8 %256, 0
  br i1 %257, label %263, label %258

258:                                              ; preds = %255
  %259 = zext i8 %256 to i32
  %260 = load ptr, ptr %175, align 8
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %260, ptr noundef nonnull @.str.35, i32 noundef %259, i32 noundef %248) #23
  br label %281

261:                                              ; preds = %246
  %262 = add i8 %250, 1
  store i8 %262, ptr %249, align 1
  br label %263

263:                                              ; preds = %261, %255
  %264 = and i32 %243, 252
  %265 = or i32 %264, 13568
  %266 = load ptr, ptr %7, align 4
  %267 = getelementptr i8, ptr %266, i32 %265
  %268 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %267) #21, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !17
  %269 = shl i32 %243, 3
  %270 = and i32 %269, 24
  %271 = shl nuw i32 255, %270
  %272 = xor i32 %271, -1
  %273 = and i32 %268, %272
  %274 = shl i32 %179, 1
  %275 = or i32 %274, 1
  %276 = shl i32 %275, %270
  %277 = select i1 %247, i32 0, i32 %276
  %278 = or i32 %273, %277
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %279 = load ptr, ptr %7, align 4
  %280 = getelementptr i8, ptr %279, i32 %265
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %280, i32 %278) #21, !srcloc !15
  br label %281

281:                                              ; preds = %263, %258, %253, %182
  %282 = load ptr, ptr %177, align 4
  %283 = icmp eq ptr %282, %167
  br i1 %283, label %284, label %176

284:                                              ; preds = %281, %171, %166, %143, %79
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mvneta_set_mac_addr(ptr noundef %0, ptr noundef %1) #3 {
  %3 = tail call i32 @eth_prepare_mac_addr_change(ptr noundef %0, ptr noundef %1) #21
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %29, label %5

5:                                                ; preds = %2
  %6 = getelementptr i8, ptr %0, i32 1408
  %7 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 72
  %8 = load ptr, ptr %7, align 32
  %9 = getelementptr i8, ptr %8, i32 5
  %10 = load i8, ptr %9, align 1
  %11 = and i8 %10, 15
  %12 = zext i8 %11 to i32
  %13 = and i32 %12, 12
  %14 = or i32 %13, 13824
  %15 = getelementptr i8, ptr %0, i32 1428
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 %14
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #21, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !17
  %19 = shl nuw nsw i32 %12, 3
  %20 = and i32 %19, 24
  %21 = shl nuw i32 255, %20
  %22 = xor i32 %21, -1
  %23 = and i32 %18, %22
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %24 = load ptr, ptr %15, align 4
  %25 = getelementptr i8, ptr %24, i32 %14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #21, !srcloc !15
  %26 = getelementptr inbounds %struct.sockaddr, ptr %1, i32 0, i32 1
  %27 = getelementptr i8, ptr %0, i32 1460
  %28 = load i32, ptr %27, align 4
  tail call fastcc void @mvneta_mac_addr_set(ptr noundef %6, ptr noundef %26, i32 noundef %28)
  tail call void @eth_commit_mac_addr_change(ptr noundef %0, ptr noundef %1) #21
  br label %29

29:                                               ; preds = %5, %2
  %30 = phi i32 [ 0, %5 ], [ %3, %2 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mvneta_ioctl(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #3 {
  %4 = getelementptr i8, ptr %0, i32 1980
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @phylink_mii_ioctl(ptr noundef %5, ptr noundef %1, i32 noundef %2) #21
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mvneta_change_mtu(ptr noundef %0, i32 noundef %1) #3 {
  %3 = getelementptr i8, ptr %0, i32 1408
  %4 = getelementptr i8, ptr %0, i32 1696
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ne ptr %5, null
  %7 = icmp ugt i32 %1, 3584
  %8 = and i1 %7, %6
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %0, ptr noundef nonnull @.str.37, i32 noundef %1) #23
  br label %66

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 20
  store i32 %1, ptr %11, align 4
  %12 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %10
  %17 = getelementptr i8, ptr %0, i32 2020
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call fastcc void @mvneta_bm_update_mtu(ptr noundef %3, i32 noundef %1)
  br label %21

21:                                               ; preds = %20, %16
  tail call void @netdev_update_features(ptr noundef %0) #21
  br label %66

22:                                               ; preds = %10
  tail call fastcc void @mvneta_stop_dev(ptr noundef %3)
  tail call void @on_each_cpu_cond_mask(ptr noundef null, ptr noundef nonnull @mvneta_percpu_disable, ptr noundef %3, i1 noundef zeroext true, ptr noundef nonnull @__cpu_online_mask) #21
  tail call fastcc void @mvneta_cleanup_txqs(ptr noundef %3)
  %23 = load i32, ptr @rxq_number, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %48

25:                                               ; preds = %22
  %26 = getelementptr i8, ptr %0, i32 1432
  %27 = getelementptr i8, ptr %0, i32 1440
  br label %28

28:                                               ; preds = %44, %25
  %29 = phi i32 [ 0, %25 ], [ %45, %44 ]
  %30 = load ptr, ptr %26, align 8
  %31 = getelementptr %struct.mvneta_rx_queue, ptr %30, i32 %29
  tail call fastcc void @mvneta_rxq_drop_pkts(ptr noundef %3, ptr noundef %31) #21
  %32 = getelementptr %struct.mvneta_rx_queue, ptr %30, i32 %29, i32 8
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %44, label %35

35:                                               ; preds = %28
  %36 = load ptr, ptr %27, align 8
  %37 = getelementptr inbounds %struct.net_device, ptr %36, i32 0, i32 111, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr %struct.mvneta_rx_queue, ptr %30, i32 %29, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = shl i32 %40, 5
  %42 = getelementptr %struct.mvneta_rx_queue, ptr %30, i32 %29, i32 9
  %43 = load i32, ptr %42, align 8
  tail call void @dma_free_attrs(ptr noundef %38, i32 noundef %41, ptr noundef nonnull %33, i32 noundef %43, i32 noundef 0) #21
  br label %44

44:                                               ; preds = %35, %28
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(24) %32, i8 0, i64 24, i1 false) #21
  %45 = add nuw nsw i32 %29, 1
  %46 = load i32, ptr @rxq_number, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %28, label %48

48:                                               ; preds = %44, %22
  %49 = getelementptr i8, ptr %0, i32 2020
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %48
  tail call fastcc void @mvneta_bm_update_mtu(ptr noundef %3, i32 noundef %1)
  br label %53

53:                                               ; preds = %52, %48
  %54 = load i32, ptr %11, align 4
  %55 = add i32 %54, 87
  %56 = and i32 %55, -64
  %57 = getelementptr i8, ptr %0, i32 1424
  store i32 %56, ptr %57, align 8
  %58 = tail call fastcc i32 @mvneta_setup_rxqs(ptr noundef %3)
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %53
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.38) #23
  br label %66

61:                                               ; preds = %53
  %62 = tail call fastcc i32 @mvneta_setup_txqs(ptr noundef %3)
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %61
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.39) #23
  br label %66

65:                                               ; preds = %61
  tail call void @on_each_cpu_cond_mask(ptr noundef null, ptr noundef nonnull @mvneta_percpu_enable, ptr noundef %3, i1 noundef zeroext true, ptr noundef nonnull @__cpu_online_mask) #21
  tail call fastcc void @mvneta_start_dev(ptr noundef %3)
  tail call void @netdev_update_features(ptr noundef %0) #21
  br label %66

66:                                               ; preds = %65, %64, %60, %21, %9
  %67 = phi i32 [ -22, %9 ], [ %58, %60 ], [ %62, %64 ], [ 0, %65 ], [ 0, %21 ]
  ret i32 %67
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mvneta_get_stats64(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #3 {
  %3 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #22
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %5 = icmp ult i32 %3, %4
  br i1 %5, label %6, label %61

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %0, i32 1416
  %8 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %1, i32 0, i32 2
  %9 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %1, i32 0, i32 6
  %10 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %1, i32 0, i32 4
  %11 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %1, i32 0, i32 1
  %12 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %1, i32 0, i32 3
  br label %13

13:                                               ; preds = %45, %6
  %14 = phi i32 [ %3, %6 ], [ %58, %45 ]
  %15 = load ptr, ptr %7, align 8
  %16 = ptrtoint ptr %15 to i32
  %17 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %14
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, %16
  %20 = inttoptr i32 %19 to ptr
  %21 = getelementptr inbounds %struct.mvneta_pcpu_stats, ptr %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.mvneta_pcpu_stats, ptr %20, i32 0, i32 1, i32 0, i32 1
  %23 = getelementptr inbounds %struct.mvneta_pcpu_stats, ptr %20, i32 0, i32 2
  %24 = getelementptr inbounds %struct.mvneta_pcpu_stats, ptr %20, i32 0, i32 3
  %25 = getelementptr inbounds %struct.mvneta_pcpu_stats, ptr %20, i32 0, i32 1, i32 0, i32 2
  %26 = getelementptr inbounds %struct.mvneta_pcpu_stats, ptr %20, i32 0, i32 1, i32 0, i32 3
  br label %27

27:                                               ; preds = %35, %13
  %28 = load volatile i32, ptr %20, align 4
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %31, %27
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !33
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #21, !srcloc !34
  %32 = load volatile i32, ptr %20, align 4
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %31

35:                                               ; preds = %31, %27
  %36 = phi i32 [ %28, %27 ], [ %32, %31 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !35
  %37 = load i64, ptr %21, align 8
  %38 = load i64, ptr %22, align 8
  %39 = load i64, ptr %23, align 8
  %40 = load i64, ptr %24, align 8
  %41 = load i64, ptr %25, align 8
  %42 = load i64, ptr %26, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !36
  %43 = load volatile i32, ptr %20, align 4
  %44 = icmp eq i32 %43, %36
  br i1 %44, label %45, label %27

45:                                               ; preds = %35
  %46 = load i64, ptr %1, align 8
  %47 = add i64 %46, %37
  store i64 %47, ptr %1, align 8
  %48 = load i64, ptr %8, align 8
  %49 = add i64 %48, %38
  store i64 %49, ptr %8, align 8
  %50 = load i64, ptr %9, align 8
  %51 = add i64 %50, %39
  store i64 %51, ptr %9, align 8
  %52 = load i64, ptr %10, align 8
  %53 = add i64 %52, %40
  store i64 %53, ptr %10, align 8
  %54 = load i64, ptr %11, align 8
  %55 = add i64 %54, %41
  store i64 %55, ptr %11, align 8
  %56 = load i64, ptr %12, align 8
  %57 = add i64 %56, %42
  store i64 %57, ptr %12, align 8
  %58 = tail call i32 @cpumask_next(i32 noundef %14, ptr noundef nonnull @__cpu_possible_mask) #22
  %59 = load i32, ptr @nr_cpu_ids, align 4
  %60 = icmp ult i32 %58, %59
  br i1 %60, label %13, label %61

61:                                               ; preds = %45, %2
  %62 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 36, i32 7
  %63 = load i32, ptr %62, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %1, i32 0, i32 7
  store i64 %64, ptr %65, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mvneta_setup_tc(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) #3 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %5, label %161

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.tc_mqprio_qopt, ptr %2, i32 0, i32 2
  %7 = load i8, ptr %6, align 1
  %8 = icmp eq i8 %7, 1
  br i1 %8, label %9, label %161

9:                                                ; preds = %5
  %10 = load i8, ptr %2, align 8
  %11 = zext i8 %10 to i32
  %12 = load i32, ptr @rxq_number, align 4
  %13 = icmp slt i32 %12, %11
  br i1 %13, label %161, label %14

14:                                               ; preds = %9
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %15 = getelementptr i8, ptr %0, i32 1428
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 9280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 0) #21, !srcloc !15
  %18 = icmp eq i8 %10, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = load ptr, ptr %15, align 4
  %21 = getelementptr i8, ptr %20, i32 15872
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #21, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !17
  %23 = or i32 %22, 9
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %24 = load ptr, ptr %15, align 4
  %25 = getelementptr i8, ptr %24, i32 15872
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #21, !srcloc !15
  tail call void @netdev_reset_tc(ptr noundef %0) #21
  br label %161

26:                                               ; preds = %14
  %27 = load i8, ptr %2, align 8
  %28 = tail call i32 @netdev_set_num_tc(ptr noundef %0, i8 noundef zeroext %27) #21
  %29 = load i8, ptr %2, align 8
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %75, label %31

31:                                               ; preds = %68, %26
  %32 = phi i32 [ %69, %68 ], [ 0, %26 ]
  %33 = trunc i32 %32 to i8
  %34 = getelementptr %struct.tc_mqprio_qopt, ptr %2, i32 0, i32 3, i32 %32
  %35 = load i16, ptr %34, align 2
  %36 = getelementptr %struct.tc_mqprio_qopt, ptr %2, i32 0, i32 4, i32 %32
  %37 = load i16, ptr %36, align 2
  %38 = tail call i32 @netdev_set_tc_queue(ptr noundef %0, i8 noundef zeroext %33, i16 noundef zeroext %35, i16 noundef zeroext %37) #21
  %39 = load i16, ptr %34, align 2
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %68, label %41

41:                                               ; preds = %31
  %42 = load i16, ptr %36, align 2
  %43 = zext i16 %42 to i32
  %44 = mul nuw nsw i32 %32, 3
  %45 = shl i32 7, %44
  %46 = xor i32 %45, -1
  br label %47

47:                                               ; preds = %51, %41
  %48 = phi i32 [ %43, %41 ], [ %61, %51 ]
  %49 = load i32, ptr @rxq_number, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %161

51:                                               ; preds = %47
  %52 = load ptr, ptr %15, align 4
  %53 = getelementptr i8, ptr %52, i32 9280
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #21, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !17
  %55 = and i32 %54, %46
  %56 = and i32 %48, 255
  %57 = shl i32 %56, %44
  %58 = or i32 %55, %57
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %59 = load ptr, ptr %15, align 4
  %60 = getelementptr i8, ptr %59, i32 9280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %58) #21, !srcloc !15
  %61 = add nuw nsw i32 %48, 1
  %62 = load i16, ptr %34, align 2
  %63 = zext i16 %62 to i32
  %64 = load i16, ptr %36, align 2
  %65 = zext i16 %64 to i32
  %66 = add nuw nsw i32 %65, %63
  %67 = icmp ult i32 %61, %66
  br i1 %67, label %47, label %68

68:                                               ; preds = %51, %31
  %69 = add nuw nsw i32 %32, 1
  %70 = load i8, ptr %2, align 8
  %71 = zext i8 %70 to i32
  %72 = icmp ult i32 %69, %71
  br i1 %72, label %31, label %73

73:                                               ; preds = %68
  %74 = zext i8 %70 to i32
  br label %75

75:                                               ; preds = %73, %26
  %76 = phi i32 [ 0, %26 ], [ %74, %73 ]
  %77 = getelementptr inbounds %struct.tc_mqprio_qopt_offload, ptr %2, i32 0, i32 2
  %78 = load i16, ptr %77, align 4
  %79 = icmp eq i16 %78, 1
  br i1 %79, label %87, label %80

80:                                               ; preds = %75
  %81 = load ptr, ptr %15, align 4
  %82 = getelementptr i8, ptr %81, i32 15872
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %82) #21, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !17
  %84 = or i32 %83, 9
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %85 = load ptr, ptr %15, align 4
  %86 = getelementptr i8, ptr %85, i32 15872
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %86, i32 %84) #21, !srcloc !15
  br label %161

87:                                               ; preds = %75
  %88 = load i32, ptr @txq_number, align 4
  %89 = icmp slt i32 %88, %76
  br i1 %89, label %161, label %90

90:                                               ; preds = %87
  %91 = getelementptr i8, ptr %0, i32 1700
  %92 = load ptr, ptr %91, align 4
  %93 = tail call i32 @clk_get_rate(ptr noundef %92) #21
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %161, label %95

95:                                               ; preds = %90
  %96 = udiv i32 1000000000, %93
  %97 = udiv i32 100, %96
  %98 = load ptr, ptr %15, align 4
  %99 = getelementptr i8, ptr %98, i32 15872
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %99) #21, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !17
  %101 = and i32 %100, -10
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %102 = load ptr, ptr %15, align 4
  %103 = getelementptr i8, ptr %102, i32 15872
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %103, i32 %101) #21, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %104 = load ptr, ptr %15, align 4
  %105 = getelementptr i8, ptr %104, i32 15880
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %105, i32 %97) #21, !srcloc !15
  %106 = load i8, ptr %2, align 8
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %161, label %108

108:                                              ; preds = %156, %95
  %109 = phi i8 [ %157, %156 ], [ %106, %95 ]
  %110 = phi i32 [ %158, %156 ], [ 0, %95 ]
  %111 = getelementptr %struct.tc_mqprio_qopt, ptr %2, i32 0, i32 4, i32 %110
  %112 = getelementptr %struct.tc_mqprio_qopt, ptr %2, i32 0, i32 3, i32 %110
  %113 = load i16, ptr %112, align 2
  %114 = icmp eq i16 %113, 0
  br i1 %114, label %156, label %115

115:                                              ; preds = %108
  %116 = load i16, ptr %111, align 2
  %117 = zext i16 %116 to i32
  %118 = getelementptr %struct.tc_mqprio_qopt_offload, ptr %2, i32 0, i32 4, i32 %110
  %119 = getelementptr %struct.tc_mqprio_qopt_offload, ptr %2, i32 0, i32 5, i32 %110
  br label %133

120:                                              ; preds = %140
  %121 = or i32 %147, 1048576000
  %122 = shl i32 %134, 2
  %123 = add nuw nsw i32 %122, 15904
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %124 = load ptr, ptr %15, align 4
  %125 = getelementptr i8, ptr %124, i32 %123
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %125, i32 %121) #21, !srcloc !15
  %126 = add nuw nsw i32 %134, 1
  %127 = load i16, ptr %112, align 2
  %128 = zext i16 %127 to i32
  %129 = load i16, ptr %111, align 2
  %130 = zext i16 %129 to i32
  %131 = add nuw nsw i32 %130, %128
  %132 = icmp ult i32 %126, %131
  br i1 %132, label %133, label %154

133:                                              ; preds = %120, %115
  %134 = phi i32 [ %117, %115 ], [ %126, %120 ]
  %135 = load i32, ptr @txq_number, align 4
  %136 = icmp slt i32 %134, %135
  br i1 %136, label %137, label %161

137:                                              ; preds = %133
  %138 = load i64, ptr %118, align 8
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %161

140:                                              ; preds = %137
  %141 = load i64, ptr %119, align 8
  %142 = shl i64 %141, 3
  %143 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 3777893186295716171, i64 %142) #25, !srcloc !37
  %144 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3777893186295716171, i64 %142, i64 %143) #25, !srcloc !38
  %145 = trunc i64 %142 to i32
  %146 = lshr i64 %144, 11
  %147 = trunc i64 %146 to i32
  %148 = mul i32 %147, -10000
  %149 = sub i32 0, %145
  %150 = icmp ne i32 %148, %149
  %151 = add i32 %147, -524288
  %152 = icmp ult i32 %151, -524287
  %153 = or i1 %152, %150
  br i1 %153, label %161, label %120

154:                                              ; preds = %120
  %155 = load i8, ptr %2, align 8
  br label %156

156:                                              ; preds = %154, %108
  %157 = phi i8 [ %155, %154 ], [ %109, %108 ]
  %158 = add nuw nsw i32 %110, 1
  %159 = zext i8 %157 to i32
  %160 = icmp ult i32 %158, %159
  br i1 %160, label %108, label %161

161:                                              ; preds = %156, %140, %137, %133, %95, %90, %87, %80, %47, %19, %9, %5, %3
  %162 = phi i32 [ -95, %3 ], [ 0, %80 ], [ 0, %19 ], [ 0, %5 ], [ -22, %9 ], [ -22, %87 ], [ 0, %95 ], [ -22, %90 ], [ -22, %133 ], [ -22, %137 ], [ -22, %140 ], [ 0, %156 ], [ -22, %47 ]
  ret i32 %162
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @mvneta_fix_features(ptr noundef %0, i64 noundef %1) #3 {
  %3 = getelementptr i8, ptr %0, i32 1976
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 20
  %8 = load i32, ptr %7, align 4
  %9 = icmp ugt i32 %8, %4
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = and i64 %1, -65539
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %0, ptr noundef nonnull @.str.44, i32 noundef %4) #23
  br label %12

12:                                               ; preds = %10, %6, %2
  %13 = phi i64 [ %11, %10 ], [ %1, %6 ], [ %1, %2 ]
  ret i64 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mvneta_xdp(ptr noundef %0, ptr nocapture noundef readonly %1) #3 {
  %3 = load i32, ptr %1, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %43

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.netdev_bpf, ptr %1, i32 0, i32 1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.netdev_bpf, ptr %1, i32 0, i32 1, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  %14 = icmp ne ptr %7, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 20
  %17 = load i32, ptr %16, align 4
  %18 = icmp ugt i32 %17, 3584
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mvneta_xdp_setup.__msg) #21
  %20 = icmp eq ptr %9, null
  br i1 %20, label %43, label %21

21:                                               ; preds = %19
  store ptr @mvneta_xdp_setup.__msg, ptr %9, align 4
  br label %43

22:                                               ; preds = %15, %5
  %23 = getelementptr i8, ptr %0, i32 2020
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mvneta_xdp_setup.__msg.45) #21
  %27 = icmp eq ptr %9, null
  br i1 %27, label %43, label %28

28:                                               ; preds = %26
  store ptr @mvneta_xdp_setup.__msg.45, ptr %9, align 4
  br label %43

29:                                               ; preds = %22
  %30 = getelementptr i8, ptr %0, i32 1696
  %31 = load ptr, ptr %30, align 8
  %32 = icmp eq ptr %31, null
  %33 = xor i1 %14, %32
  %34 = select i1 %13, i1 true, i1 %33
  br i1 %34, label %40, label %35

35:                                               ; preds = %29
  %36 = tail call i32 @mvneta_stop(ptr noundef %0) #21
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !39
  %37 = ptrtoint ptr %7 to i32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %30) #21, !srcloc !40
  %38 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %37, ptr %30) #21, !srcloc !41
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !42
  %39 = tail call i32 @mvneta_open(ptr noundef %0) #21
  br label %43

40:                                               ; preds = %29
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !39
  %41 = ptrtoint ptr %7 to i32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %30) #21, !srcloc !40
  %42 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %41, ptr %30) #21, !srcloc !41
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !42
  br label %43

43:                                               ; preds = %40, %35, %28, %26, %21, %19, %2
  %44 = phi i32 [ -22, %2 ], [ %39, %35 ], [ -95, %21 ], [ -95, %19 ], [ -95, %28 ], [ -95, %26 ], [ 0, %40 ]
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mvneta_xdp_xmit(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #3 {
  %5 = getelementptr i8, ptr %0, i32 1408
  %6 = getelementptr i8, ptr %0, i32 1416
  %7 = load ptr, ptr %6, align 8
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #21
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #11, !srcloc !20
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = tail call ptr @llvm.thread.pointer() #21
  %15 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %16 = load i32, ptr %15, align 8
  %17 = getelementptr i8, ptr %0, i32 1420
  %18 = load volatile i32, ptr %17, align 4
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %82, !prof !25

21:                                               ; preds = %4
  %22 = icmp ult i32 %3, 2
  br i1 %22, label %23, label %82, !prof !25

23:                                               ; preds = %21
  %24 = getelementptr i8, ptr %0, i32 1436
  %25 = load ptr, ptr %24, align 4
  %26 = load i32, ptr @txq_number, align 4
  %27 = srem i32 %16, %26
  %28 = getelementptr %struct.mvneta_tx_queue, ptr %25, i32 %27
  %29 = getelementptr i8, ptr %0, i32 1440
  %30 = load ptr, ptr %29, align 8
  %31 = load i8, ptr %28, align 4
  %32 = zext i8 %31 to i32
  %33 = getelementptr inbounds %struct.net_device, ptr %30, i32 0, i32 87
  %34 = load ptr, ptr %33, align 64
  %35 = getelementptr %struct.netdev_queue, ptr %34, i32 %32, i32 9
  tail call void @_raw_spin_lock(ptr noundef %35) #21
  %36 = getelementptr %struct.netdev_queue, ptr %34, i32 %32, i32 10
  store volatile i32 %16, ptr %36, align 4
  %37 = icmp sgt i32 %1, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %45, %23
  %39 = phi i32 [ %51, %45 ], [ 0, %23 ]
  %40 = phi i32 [ %50, %45 ], [ 0, %23 ]
  %41 = getelementptr ptr, ptr %2, i32 %39
  %42 = load ptr, ptr %41, align 4
  %43 = tail call fastcc i32 @mvneta_xdp_submit_frame(ptr noundef %5, ptr noundef %28, ptr noundef %42, i1 noundef zeroext true)
  %44 = icmp eq i32 %43, 2
  br i1 %44, label %45, label %53

45:                                               ; preds = %38
  %46 = load ptr, ptr %41, align 4
  %47 = getelementptr inbounds %struct.xdp_frame, ptr %46, i32 0, i32 1
  %48 = load i16, ptr %47, align 4
  %49 = zext i16 %48 to i32
  %50 = add i32 %40, %49
  %51 = add nuw nsw i32 %39, 1
  %52 = icmp eq i32 %51, %1
  br i1 %52, label %53, label %38

53:                                               ; preds = %45, %38, %23
  %54 = phi i32 [ 0, %23 ], [ %40, %38 ], [ %50, %45 ]
  %55 = phi i32 [ 0, %23 ], [ %39, %38 ], [ %1, %45 ]
  %56 = and i32 %3, 1
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %59, label %58, !prof !25

58:                                               ; preds = %53
  tail call fastcc void @mvneta_txq_pend_desc_add(ptr noundef %5, ptr noundef %28, i32 noundef 0)
  br label %59

59:                                               ; preds = %58, %53
  store volatile i32 -1, ptr %36, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !10
  %60 = load i16, ptr %35, align 4
  %61 = add i16 %60, 1
  store i16 %61, ptr %35, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !13
  %62 = load i32, ptr %13, align 4
  %63 = add i32 %62, 1
  store i32 %63, ptr %13, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !23
  %64 = sext i32 %54 to i64
  %65 = getelementptr inbounds %struct.mvneta_pcpu_stats, ptr %13, i32 0, i32 1, i32 0, i32 3
  %66 = load i64, ptr %65, align 8
  %67 = add i64 %66, %64
  store i64 %67, ptr %65, align 8
  %68 = sext i32 %55 to i64
  %69 = getelementptr inbounds %struct.mvneta_pcpu_stats, ptr %13, i32 0, i32 1, i32 0, i32 2
  %70 = load i64, ptr %69, align 8
  %71 = add i64 %70, %68
  store i64 %71, ptr %69, align 8
  %72 = getelementptr inbounds %struct.mvneta_pcpu_stats, ptr %13, i32 0, i32 1, i32 0, i32 7
  %73 = load i64, ptr %72, align 8
  %74 = add i64 %73, %68
  store i64 %74, ptr %72, align 8
  %75 = sub i32 %1, %55
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.mvneta_pcpu_stats, ptr %13, i32 0, i32 1, i32 0, i32 8
  %78 = load i64, ptr %77, align 8
  %79 = add i64 %78, %76
  store i64 %79, ptr %77, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !24
  %80 = load i32, ptr %13, align 4
  %81 = add i32 %80, 1
  store i32 %81, ptr %13, align 4
  br label %82

82:                                               ; preds = %59, %21, %4
  %83 = phi i32 [ %55, %59 ], [ -100, %4 ], [ -22, %21 ]
  ret i32 %83
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mvneta_setup_rxqs(ptr noundef %0) unnamed_addr #3 {
  %2 = load i32, ptr @rxq_number, align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %54

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.mvneta_port, ptr %0, i32 0, i32 6
  %6 = getelementptr inbounds %struct.mvneta_port, ptr %0, i32 0, i32 21
  %7 = getelementptr inbounds %struct.mvneta_port, ptr %0, i32 0, i32 8
  br label %8

8:                                                ; preds = %46, %4
  %9 = phi i32 [ 0, %4 ], [ %51, %46 ]
  %10 = load ptr, ptr %5, align 8
  %11 = load i16, ptr %6, align 2
  %12 = zext i16 %11 to i32
  %13 = getelementptr %struct.mvneta_rx_queue, ptr %10, i32 %9, i32 1
  store i32 %12, ptr %13, align 4
  %14 = load ptr, ptr %7, align 8
  %15 = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 111, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = shl nuw nsw i32 %12, 5
  %18 = getelementptr %struct.mvneta_rx_queue, ptr %10, i32 %9, i32 9
  %19 = tail call ptr @dma_alloc_attrs(ptr noundef %16, i32 noundef %17, ptr noundef %18, i32 noundef 3264, i32 noundef 0) #21
  %20 = getelementptr %struct.mvneta_rx_queue, ptr %10, i32 %9, i32 8
  store ptr %19, ptr %20, align 4
  %21 = icmp eq ptr %19, null
  br i1 %21, label %22, label %46

22:                                               ; preds = %8
  %23 = load ptr, ptr %7, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %23, ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.mvneta_setup_rxqs, i32 noundef %9) #23
  %24 = load i32, ptr @rxq_number, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %54

26:                                               ; preds = %42, %22
  %27 = phi i32 [ %43, %42 ], [ 0, %22 ]
  %28 = load ptr, ptr %5, align 8
  %29 = getelementptr %struct.mvneta_rx_queue, ptr %28, i32 %27
  tail call fastcc void @mvneta_rxq_drop_pkts(ptr noundef %0, ptr noundef %29) #21
  %30 = getelementptr %struct.mvneta_rx_queue, ptr %28, i32 %27, i32 8
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %42, label %33

33:                                               ; preds = %26
  %34 = load ptr, ptr %7, align 8
  %35 = getelementptr inbounds %struct.net_device, ptr %34, i32 0, i32 111, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr %struct.mvneta_rx_queue, ptr %28, i32 %27, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = shl i32 %38, 5
  %40 = getelementptr %struct.mvneta_rx_queue, ptr %28, i32 %27, i32 9
  %41 = load i32, ptr %40, align 8
  tail call void @dma_free_attrs(ptr noundef %36, i32 noundef %39, ptr noundef nonnull %31, i32 noundef %41, i32 noundef 0) #21
  br label %42

42:                                               ; preds = %33, %26
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(24) %30, i8 0, i64 24, i1 false) #21
  %43 = add nuw nsw i32 %27, 1
  %44 = load i32, ptr @rxq_number, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %26, label %54

46:                                               ; preds = %8
  %47 = getelementptr %struct.mvneta_rx_queue, ptr %10, i32 %9
  %48 = load i32, ptr %13, align 4
  %49 = add i32 %48, -1
  %50 = getelementptr %struct.mvneta_rx_queue, ptr %10, i32 %9, i32 10
  store i32 %49, ptr %50, align 4
  tail call fastcc void @mvneta_rxq_hw_init(ptr noundef %0, ptr noundef %47) #21
  %51 = add nuw nsw i32 %9, 1
  %52 = load i32, ptr @rxq_number, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %8, label %54

54:                                               ; preds = %46, %42, %22, %1
  %55 = phi i32 [ -12, %22 ], [ 0, %1 ], [ -12, %42 ], [ 0, %46 ]
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mvneta_setup_txqs(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = load i32, ptr @txq_number, align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %81

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.mvneta_port, ptr %0, i32 0, i32 7
  %6 = getelementptr inbounds %struct.mvneta_port, ptr %0, i32 0, i32 20
  %7 = getelementptr inbounds %struct.mvneta_port, ptr %0, i32 0, i32 8
  %8 = getelementptr inbounds %struct.mvneta_port, ptr %0, i32 0, i32 38
  %9 = getelementptr inbounds %struct.mvneta_port, ptr %0, i32 0, i32 11
  br label %10

10:                                               ; preds = %71, %4
  %11 = phi i32 [ 0, %4 ], [ %78, %71 ]
  %12 = load ptr, ptr %5, align 4
  %13 = getelementptr %struct.mvneta_tx_queue, ptr %12, i32 %11
  %14 = load i16, ptr %6, align 4
  %15 = zext i16 %14 to i32
  %16 = getelementptr %struct.mvneta_tx_queue, ptr %12, i32 %11, i32 1
  store i32 %15, ptr %16, align 4
  %17 = add nsw i32 %15, -217
  %18 = getelementptr %struct.mvneta_tx_queue, ptr %12, i32 %11, i32 4
  store i32 %17, ptr %18, align 4
  %19 = sdiv i32 %17, 2
  %20 = getelementptr %struct.mvneta_tx_queue, ptr %12, i32 %11, i32 5
  store i32 %19, ptr %20, align 4
  %21 = load ptr, ptr %7, align 8
  %22 = getelementptr inbounds %struct.net_device, ptr %21, i32 0, i32 111, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = shl nuw nsw i32 %15, 5
  %25 = getelementptr %struct.mvneta_tx_queue, ptr %12, i32 %11, i32 11
  %26 = tail call ptr @dma_alloc_attrs(ptr noundef %23, i32 noundef %24, ptr noundef %25, i32 noundef 3264, i32 noundef 0) #21
  %27 = getelementptr %struct.mvneta_tx_queue, ptr %12, i32 %11, i32 10
  store ptr %26, ptr %27, align 4
  %28 = icmp eq ptr %26, null
  br i1 %28, label %63, label %29

29:                                               ; preds = %10
  %30 = load i32, ptr %16, align 4
  %31 = add i32 %30, -1
  %32 = getelementptr %struct.mvneta_tx_queue, ptr %12, i32 %11, i32 12
  store i32 %31, ptr %32, align 4
  %33 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %30, i32 8) #21
  %34 = extractvalue { i32, i1 } %33, 1
  br i1 %34, label %35, label %37, !prof !19

35:                                               ; preds = %29
  %36 = getelementptr %struct.mvneta_tx_queue, ptr %12, i32 %11, i32 6
  store ptr null, ptr %36, align 4
  br label %63

37:                                               ; preds = %29
  %38 = extractvalue { i32, i1 } %33, 0
  %39 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %38, i32 noundef 3264) #24
  %40 = getelementptr %struct.mvneta_tx_queue, ptr %12, i32 %11, i32 6
  store ptr %39, ptr %40, align 4
  %41 = icmp eq ptr %39, null
  br i1 %41, label %63, label %42

42:                                               ; preds = %37
  %43 = load i32, ptr %16, align 4
  %44 = load ptr, ptr %7, align 8
  %45 = getelementptr inbounds %struct.net_device, ptr %44, i32 0, i32 111, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = shl i32 %43, 8
  %48 = getelementptr %struct.mvneta_tx_queue, ptr %12, i32 %11, i32 15
  %49 = tail call ptr @dma_alloc_attrs(ptr noundef %46, i32 noundef %47, ptr noundef %48, i32 noundef 3264, i32 noundef 0) #21
  %50 = getelementptr %struct.mvneta_tx_queue, ptr %12, i32 %11, i32 14
  store ptr %49, ptr %50, align 4
  %51 = icmp eq ptr %49, null
  br i1 %51, label %63, label %52

52:                                               ; preds = %42
  %53 = load i8, ptr %8, align 4, !range !9
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %71

55:                                               ; preds = %52
  %56 = load i32, ptr @txq_number, align 4
  %57 = icmp sgt i32 %56, 1
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i8, ptr %13, align 4
  %60 = zext i8 %59 to i32
  br label %65

61:                                               ; preds = %55
  %62 = load i32, ptr %9, align 4
  br label %65

63:                                               ; preds = %42, %37, %35, %10
  %64 = load ptr, ptr %7, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %64, ptr noundef nonnull @.str.26, ptr noundef nonnull @__func__.mvneta_setup_txqs, i32 noundef %11) #23
  tail call fastcc void @mvneta_cleanup_txqs(ptr noundef %0)
  br label %81

65:                                               ; preds = %61, %58
  %66 = phi i32 [ %62, %61 ], [ %60, %58 ]
  %67 = load i32, ptr @__cpu_present_mask, align 4
  %68 = and i32 %67, 65535
  %69 = tail call i32 @__sw_hweight32(i32 noundef %68) #21
  %70 = urem i32 %66, %69
  br label %71

71:                                               ; preds = %65, %52
  %72 = phi i32 [ 0, %52 ], [ %70, %65 ]
  %73 = getelementptr %struct.mvneta_tx_queue, ptr %12, i32 %11, i32 16
  tail call void @_set_bit(i32 noundef %72, ptr noundef %73) #21
  %74 = load ptr, ptr %7, align 8
  %75 = load i8, ptr %13, align 4
  %76 = zext i8 %75 to i16
  %77 = tail call i32 @netif_set_xps_queue(ptr noundef %74, ptr noundef %73, i16 noundef zeroext %76) #21
  tail call fastcc void @mvneta_txq_hw_init(ptr noundef %0, ptr noundef %13) #21
  %78 = add nuw nsw i32 %11, 1
  %79 = load i32, ptr @txq_number, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %10, label %81

81:                                               ; preds = %71, %63, %1
  %82 = phi i32 [ -12, %63 ], [ 0, %1 ], [ 0, %71 ]
  ret i32 %82
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mvneta_isr(i32 noundef %0, ptr noundef %1) #3 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %3 = getelementptr inbounds %struct.mvneta_port, ptr %1, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 9636
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 0) #21, !srcloc !15
  %6 = getelementptr inbounds %struct.mvneta_port, ptr %1, i32 0, i32 15
  %7 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %6) #21
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  tail call void @__napi_schedule(ptr noundef %6) #21
  br label %9

9:                                                ; preds = %8, %2
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mvneta_percpu_isr(i32 noundef %0, ptr noundef %1) #3 {
  %3 = load ptr, ptr %1, align 8
  %4 = getelementptr inbounds %struct.mvneta_port, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 59
  %7 = load i32, ptr %6, align 8
  tail call void @disable_percpu_irq(i32 noundef %7) #21
  %8 = getelementptr inbounds %struct.mvneta_pcpu_port, ptr %1, i32 0, i32 1
  %9 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %8) #21
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  tail call void @__napi_schedule(ptr noundef %8) #21
  br label %11

11:                                               ; preds = %10, %2
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mvneta_start_dev(ptr noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.mvneta_port, ptr %0, i32 0, i32 22
  %3 = load i32, ptr %2, align 8
  %4 = tail call fastcc i32 @mvneta_config_interface(ptr noundef %0, i32 noundef %3)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6, !prof !25

6:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 3646, i32 noundef 9, ptr noundef null) #21
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr inbounds %struct.mvneta_port, ptr %0, i32 0, i32 4
  %9 = load i32, ptr %8, align 8
  %10 = getelementptr inbounds %struct.mvneta_port, ptr %0, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 11264
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #21, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !17
  %14 = and i32 %13, -32765
  %15 = add i32 %9, -2
  %16 = sdiv i32 %15, 2
  %17 = shl i32 %16, 2
  %18 = or i32 %14, %17
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %19 = load ptr, ptr %10, align 4
  %20 = getelementptr i8, ptr %19, i32 11264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #21, !srcloc !15
  %21 = load i32, ptr %8, align 8
  %22 = shl i32 %21, 3
  %23 = tail call i32 @llvm.umin.i32(i32 %22, i32 262143) #21
  %24 = load ptr, ptr %10, align 4
  %25 = getelementptr i8, ptr %24, i32 15884
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #21, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !17
  %27 = and i32 %26, -262144
  %28 = or i32 %27, %23
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %29 = load ptr, ptr %10, align 4
  %30 = getelementptr i8, ptr %29, i32 15884
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #21, !srcloc !15
  %31 = load ptr, ptr %10, align 4
  %32 = getelementptr i8, ptr %31, i32 15892
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #21, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !17
  %34 = icmp ult i32 %33, %23
  br i1 %34, label %35, label %38

35:                                               ; preds = %7
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %36 = load ptr, ptr %10, align 4
  %37 = getelementptr i8, ptr %36, i32 15892
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %23) #21, !srcloc !15
  br label %38

38:                                               ; preds = %35, %7
  %39 = load i32, ptr @txq_number, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %59

41:                                               ; preds = %55, %38
  %42 = phi i32 [ %56, %55 ], [ 0, %38 ]
  %43 = shl i32 %42, 2
  %44 = add i32 %43, 15936
  %45 = load ptr, ptr %10, align 4
  %46 = getelementptr i8, ptr %45, i32 %44
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #21, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !17
  %48 = and i32 %47, 2147483647
  %49 = icmp ult i32 %48, %23
  br i1 %49, label %50, label %55

50:                                               ; preds = %41
  %51 = and i32 %47, -2147483648
  %52 = or i32 %51, %23
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %53 = load ptr, ptr %10, align 4
  %54 = getelementptr i8, ptr %53, i32 %44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %52) #21, !srcloc !15
  br label %55

55:                                               ; preds = %50, %41
  %56 = add nuw nsw i32 %42, 1
  %57 = load i32, ptr @txq_number, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %41, label %59

59:                                               ; preds = %55, %38
  %60 = load ptr, ptr %10, align 4
  %61 = getelementptr i8, ptr %60, i32 11264
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #21, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !17
  %63 = or i32 %62, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %64 = load ptr, ptr %10, align 4
  %65 = getelementptr i8, ptr %64, i32 11264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %63) #21, !srcloc !15
  %66 = getelementptr inbounds %struct.mvneta_port, ptr %0, i32 0, i32 38
  %67 = load i8, ptr %66, align 4, !range !9
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %87

69:                                               ; preds = %59
  %70 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #22
  %71 = load i32, ptr @nr_cpu_ids, align 4
  %72 = icmp ult i32 %70, %71
  br i1 %72, label %73, label %89

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.mvneta_port, ptr %0, i32 0, i32 1
  br label %75

75:                                               ; preds = %75, %73
  %76 = phi i32 [ %70, %73 ], [ %84, %75 ]
  %77 = load ptr, ptr %74, align 4
  %78 = ptrtoint ptr %77 to i32
  %79 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %76
  %80 = load i32, ptr %79, align 4
  %81 = add i32 %80, %78
  %82 = inttoptr i32 %81 to ptr
  %83 = getelementptr inbounds %struct.mvneta_pcpu_port, ptr %82, i32 0, i32 1
  tail call void @napi_enable(ptr noundef %83) #21
  %84 = tail call i32 @cpumask_next(i32 noundef %76, ptr noundef nonnull @__cpu_online_mask) #22
  %85 = load i32, ptr @nr_cpu_ids, align 4
  %86 = icmp ult i32 %84, %85
  br i1 %86, label %75, label %89

87:                                               ; preds = %59
  %88 = getelementptr inbounds %struct.mvneta_port, ptr %0, i32 0, i32 15
  tail call void @napi_enable(ptr noundef %88) #21
  br label %89

89:                                               ; preds = %87, %75, %69
  tail call void @on_each_cpu_cond_mask(ptr noundef null, ptr noundef nonnull @mvneta_percpu_unmask_interrupt, ptr noundef %0, i1 noundef zeroext true, ptr noundef nonnull @__cpu_online_mask) #21
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %90 = load ptr, ptr %10, align 4
  %91 = getelementptr i8, ptr %90, i32 9652
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %91, i32 3) #21, !srcloc !15
  %92 = getelementptr inbounds %struct.mvneta_port, ptr %0, i32 0, i32 25
  %93 = load ptr, ptr %92, align 4
  tail call void @phylink_start(ptr noundef %93) #21
  %94 = load ptr, ptr %92, align 4
  %95 = tail call i32 @phylink_speed_up(ptr noundef %94) #21
  %96 = getelementptr inbounds %struct.mvneta_port, ptr %0, i32 0, i32 8
  %97 = load ptr, ptr %96, align 8
  %98 = getelementptr inbounds %struct.net_device, ptr %97, i32 0, i32 88
  %99 = load i32, ptr %98, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %110, label %101

101:                                              ; preds = %89
  %102 = getelementptr inbounds %struct.net_device, ptr %97, i32 0, i32 87
  br label %103

103:                                              ; preds = %103, %101
  %104 = phi i32 [ 0, %101 ], [ %107, %103 ]
  %105 = load ptr, ptr %102, align 64
  %106 = getelementptr %struct.netdev_queue, ptr %105, i32 %104, i32 12
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %106) #21
  %107 = add nuw i32 %104, 1
  %108 = load i32, ptr %98, align 4
  %109 = icmp ult i32 %107, %108
  br i1 %109, label %103, label %110

110:                                              ; preds = %103, %89
  %111 = getelementptr inbounds %struct.mvneta_port, ptr %0, i32 0, i32 3
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %111) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mvneta_cleanup_txqs(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = load i32, ptr @txq_number, align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %74

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.mvneta_port, ptr %0, i32 0, i32 7
  %6 = getelementptr inbounds %struct.mvneta_port, ptr %0, i32 0, i32 8
  %7 = getelementptr inbounds %struct.mvneta_port, ptr %0, i32 0, i32 5
  br label %8

8:                                                ; preds = %43, %4
  %9 = phi i32 [ 0, %4 ], [ %71, %43 ]
  %10 = load ptr, ptr %5, align 4
  %11 = getelementptr %struct.mvneta_tx_queue, ptr %10, i32 %9
  %12 = load ptr, ptr %6, align 8
  %13 = load i8, ptr %11, align 4
  %14 = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 87
  %15 = load ptr, ptr %14, align 64
  %16 = getelementptr %struct.mvneta_tx_queue, ptr %10, i32 %9, i32 6
  %17 = load ptr, ptr %16, align 4
  tail call void @kfree(ptr noundef %17) #21
  %18 = getelementptr %struct.mvneta_tx_queue, ptr %10, i32 %9, i32 14
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %30, label %21

21:                                               ; preds = %8
  %22 = load ptr, ptr %6, align 8
  %23 = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 111, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr %struct.mvneta_tx_queue, ptr %10, i32 %9, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = shl i32 %26, 8
  %28 = getelementptr %struct.mvneta_tx_queue, ptr %10, i32 %9, i32 15
  %29 = load i32, ptr %28, align 4
  tail call void @dma_free_attrs(ptr noundef %24, i32 noundef %27, ptr noundef nonnull %19, i32 noundef %29, i32 noundef 0) #21
  br label %30

30:                                               ; preds = %21, %8
  %31 = getelementptr %struct.mvneta_tx_queue, ptr %10, i32 %9, i32 10
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %43, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr %6, align 8
  %36 = getelementptr inbounds %struct.net_device, ptr %35, i32 0, i32 111, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr %struct.mvneta_tx_queue, ptr %10, i32 %9, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = shl i32 %39, 5
  %41 = getelementptr %struct.mvneta_tx_queue, ptr %10, i32 %9, i32 11
  %42 = load i32, ptr %41, align 4
  tail call void @dma_free_attrs(ptr noundef %37, i32 noundef %40, ptr noundef nonnull %32, i32 noundef %42, i32 noundef 0) #21
  br label %43

43:                                               ; preds = %34, %30
  %44 = zext i8 %13 to i32
  %45 = getelementptr %struct.netdev_queue, ptr %15, i32 %44, i32 12
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %45) #21
  %46 = getelementptr %struct.netdev_queue, ptr %15, i32 %44, i32 14
  tail call void @dql_reset(ptr noundef %46) #21
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %31, i8 0, i64 16, i1 false) #21
  %47 = load i8, ptr %11, align 4
  %48 = zext i8 %47 to i32
  %49 = shl nuw nsw i32 %48, 4
  %50 = add nuw nsw i32 %49, 9988
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %51 = load ptr, ptr %7, align 4
  %52 = getelementptr i8, ptr %51, i32 %50
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 0) #21, !srcloc !15
  %53 = load i8, ptr %11, align 4
  %54 = zext i8 %53 to i32
  %55 = shl nuw nsw i32 %54, 4
  %56 = add nuw nsw i32 %55, 9984
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %57 = load ptr, ptr %7, align 4
  %58 = getelementptr i8, ptr %57, i32 %56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 0) #21, !srcloc !15
  %59 = load i8, ptr %11, align 4
  %60 = zext i8 %59 to i32
  %61 = shl nuw nsw i32 %60, 2
  %62 = or i32 %61, 15360
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %63 = load ptr, ptr %7, align 4
  %64 = getelementptr i8, ptr %63, i32 %62
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 0) #21, !srcloc !15
  %65 = load i8, ptr %11, align 4
  %66 = zext i8 %65 to i32
  %67 = shl nuw nsw i32 %66, 2
  %68 = add nuw nsw i32 %67, 15392
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %69 = load ptr, ptr %7, align 4
  %70 = getelementptr i8, ptr %69, i32 %68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 0) #21, !srcloc !15
  %71 = add nuw nsw i32 %9, 1
  %72 = load i32, ptr @txq_number, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %8, label %74

74:                                               ; preds = %43, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mvneta_rxq_hw_init(ptr noundef %0, ptr noundef %1) unnamed_addr #3 {
  %3 = alloca %struct.page_pool_params, align 4
  %4 = load i8, ptr %1, align 64
  %5 = zext i8 %4 to i32
  %6 = shl nuw nsw i32 %5, 2
  %7 = add nuw nsw i32 %6, 5248
  %8 = getelementptr inbounds %struct.mvneta_rx_queue, ptr %1, i32 0, i32 9
  %9 = load i32, ptr %8, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %10 = getelementptr inbounds %struct.mvneta_port, ptr %0, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %9) #21, !srcloc !15
  %13 = load i8, ptr %1, align 64
  %14 = zext i8 %13 to i32
  %15 = shl nuw nsw i32 %14, 2
  %16 = add nuw nsw i32 %15, 5280
  %17 = getelementptr inbounds %struct.mvneta_rx_queue, ptr %1, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %19 = load ptr, ptr %10, align 4
  %20 = getelementptr i8, ptr %19, i32 %16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #21, !srcloc !15
  %21 = getelementptr inbounds %struct.mvneta_rx_queue, ptr %1, i32 0, i32 2
  %22 = load i32, ptr %21, align 8
  %23 = load i8, ptr %1, align 64
  %24 = zext i8 %23 to i32
  %25 = shl nuw nsw i32 %24, 2
  %26 = add nuw nsw i32 %25, 5312
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %27 = load ptr, ptr %10, align 4
  %28 = getelementptr i8, ptr %27, i32 %26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %22) #21, !srcloc !15
  %29 = getelementptr inbounds %struct.mvneta_rx_queue, ptr %1, i32 0, i32 3
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.mvneta_port, ptr %0, i32 0, i32 17
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 @clk_get_rate(ptr noundef %32) #21
  %34 = udiv i32 %33, 1000000
  %35 = mul i32 %34, %30
  %36 = load i8, ptr %1, align 64
  %37 = zext i8 %36 to i32
  %38 = shl nuw nsw i32 %37, 2
  %39 = add nuw nsw i32 %38, 9600
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %40 = load ptr, ptr %10, align 4
  %41 = getelementptr i8, ptr %40, i32 %39
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %35) #21, !srcloc !15
  %42 = getelementptr inbounds %struct.mvneta_port, ptr %0, i32 0, i32 29
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %190

45:                                               ; preds = %2
  %46 = load i8, ptr %1, align 64
  %47 = zext i8 %46 to i32
  %48 = shl nuw nsw i32 %47, 2
  %49 = or i32 %48, 5120
  %50 = load ptr, ptr %10, align 4
  %51 = getelementptr i8, ptr %50, i32 %49
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #21, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !17
  %53 = and i32 %52, -3841
  %54 = load i8, ptr %1, align 64
  %55 = zext i8 %54 to i32
  %56 = shl nuw nsw i32 %55, 2
  %57 = or i32 %56, 5120
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %58 = load ptr, ptr %10, align 4
  %59 = getelementptr i8, ptr %58, i32 %57
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %53) #21, !srcloc !15
  %60 = load i8, ptr %1, align 64
  %61 = zext i8 %60 to i32
  %62 = shl nuw nsw i32 %61, 2
  %63 = add nuw nsw i32 %62, 5280
  %64 = load ptr, ptr %10, align 4
  %65 = getelementptr i8, ptr %64, i32 %63
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #21, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !17
  %67 = and i32 %66, 524287
  %68 = or i32 %67, 234881024
  %69 = load i8, ptr %1, align 64
  %70 = zext i8 %69 to i32
  %71 = shl nuw nsw i32 %70, 2
  %72 = add nuw nsw i32 %71, 5280
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %73 = load ptr, ptr %10, align 4
  %74 = getelementptr i8, ptr %73, i32 %72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 %68) #21, !srcloc !15
  %75 = load i8, ptr %1, align 64
  %76 = zext i8 %75 to i32
  %77 = shl nuw nsw i32 %76, 2
  %78 = or i32 %77, 5120
  %79 = load ptr, ptr %10, align 4
  %80 = getelementptr i8, ptr %79, i32 %78
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %80) #21, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !17
  %82 = and i32 %81, -2
  %83 = load i8, ptr %1, align 64
  %84 = zext i8 %83 to i32
  %85 = shl nuw nsw i32 %84, 2
  %86 = or i32 %85, 5120
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %87 = load ptr, ptr %10, align 4
  %88 = getelementptr i8, ptr %87, i32 %86
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %88, i32 %82) #21, !srcloc !15
  %89 = load i32, ptr %17, align 4
  %90 = getelementptr inbounds %struct.mvneta_port, ptr %0, i32 0, i32 16
  %91 = load volatile ptr, ptr %90, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #21
  store i32 3, ptr %3, align 4
  %92 = getelementptr inbounds %struct.page_pool_params, ptr %3, i32 0, i32 1
  store i32 0, ptr %92, align 4
  %93 = getelementptr inbounds %struct.page_pool_params, ptr %3, i32 0, i32 2
  store i32 %89, ptr %93, align 4
  %94 = getelementptr inbounds %struct.page_pool_params, ptr %3, i32 0, i32 3
  store i32 -1, ptr %94, align 4
  %95 = getelementptr inbounds %struct.page_pool_params, ptr %3, i32 0, i32 4
  %96 = getelementptr inbounds %struct.mvneta_port, ptr %0, i32 0, i32 8
  %97 = load ptr, ptr %96, align 8
  %98 = getelementptr inbounds %struct.net_device, ptr %97, i32 0, i32 111, i32 1
  %99 = load ptr, ptr %98, align 4
  store ptr %99, ptr %95, align 4
  %100 = getelementptr inbounds %struct.page_pool_params, ptr %3, i32 0, i32 5
  %101 = icmp eq ptr %91, null
  %102 = select i1 %101, i32 2, i32 0
  store i32 %102, ptr %100, align 4
  %103 = getelementptr inbounds %struct.page_pool_params, ptr %3, i32 0, i32 6
  store i32 3584, ptr %103, align 4
  %104 = getelementptr inbounds %struct.page_pool_params, ptr %3, i32 0, i32 7
  %105 = getelementptr inbounds %struct.mvneta_port, ptr %0, i32 0, i32 39
  %106 = load i16, ptr %105, align 2
  %107 = zext i16 %106 to i32
  store i32 %107, ptr %104, align 4
  %108 = getelementptr inbounds %struct.page_pool_params, ptr %3, i32 0, i32 8
  store ptr null, ptr %108, align 4
  %109 = getelementptr inbounds %struct.page_pool_params, ptr %3, i32 0, i32 9
  store ptr null, ptr %109, align 4
  %110 = call ptr @page_pool_create(ptr noundef nonnull %3) #21
  %111 = getelementptr inbounds %struct.mvneta_rx_queue, ptr %1, i32 0, i32 4
  store ptr %110, ptr %111, align 16
  %112 = icmp ugt ptr %110, inttoptr (i32 -4096 to ptr)
  br i1 %112, label %113, label %115

113:                                              ; preds = %45
  %114 = ptrtoint ptr %110 to i32
  br label %131

115:                                              ; preds = %45
  %116 = getelementptr inbounds %struct.mvneta_rx_queue, ptr %1, i32 0, i32 6
  %117 = load ptr, ptr %96, align 8
  %118 = load i8, ptr %1, align 64
  %119 = zext i8 %118 to i32
  %120 = call i32 @xdp_rxq_info_reg(ptr noundef %116, ptr noundef %117, i32 noundef %119, i32 noundef 0) #21
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %128, label %122

122:                                              ; preds = %115
  %123 = load ptr, ptr %111, align 16
  %124 = call i32 @xdp_rxq_info_reg_mem_model(ptr noundef %116, i32 noundef 2, ptr noundef %123) #21
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %122
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #21
  br label %134

127:                                              ; preds = %122
  call void @xdp_rxq_info_unreg(ptr noundef %116) #21
  br label %128

128:                                              ; preds = %127, %115
  %129 = phi i32 [ %120, %115 ], [ %124, %127 ]
  %130 = load ptr, ptr %111, align 16
  call void @page_pool_destroy(ptr noundef %130) #21
  br label %131

131:                                              ; preds = %128, %113
  %132 = phi i32 [ %129, %128 ], [ %114, %113 ]
  store ptr null, ptr %111, align 16
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #21
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %289, label %134

134:                                              ; preds = %131, %126
  %135 = icmp sgt i32 %89, 0
  br i1 %135, label %136, label %181

136:                                              ; preds = %134
  %137 = getelementptr inbounds %struct.mvneta_rx_queue, ptr %1, i32 0, i32 8
  %138 = getelementptr inbounds %struct.mvneta_rx_queue, ptr %1, i32 0, i32 7
  br label %139

139:                                              ; preds = %151, %136
  %140 = phi i32 [ 0, %136 ], [ %166, %151 ]
  %141 = load ptr, ptr %137, align 4
  %142 = getelementptr %struct.mvneta_rx_desc, ptr %141, i32 %140
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(32) %142, i8 0, i32 32, i1 false) #21
  %143 = load ptr, ptr %137, align 4
  %144 = load ptr, ptr %111, align 16
  %145 = call ptr @page_pool_alloc_pages(ptr noundef %144, i32 noundef 11456) #21
  %146 = icmp eq ptr %145, null
  br i1 %146, label %147, label %151

147:                                              ; preds = %139
  %148 = load ptr, ptr %96, align 8
  %149 = load i8, ptr %1, align 64
  %150 = zext i8 %149 to i32
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %148, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.mvneta_rxq_fill, i32 noundef %150, i32 noundef %140, i32 noundef %89) #23
  br label %168

151:                                              ; preds = %139
  %152 = getelementptr %struct.mvneta_rx_desc, ptr %143, i32 %140
  %153 = getelementptr inbounds %struct.page, ptr %145, i32 0, i32 1, i32 0, i32 2
  %154 = load i32, ptr %153, align 4
  %155 = load i16, ptr %105, align 2
  %156 = zext i16 %155 to i32
  %157 = add i32 %154, %156
  %158 = getelementptr %struct.mvneta_rx_desc, ptr %143, i32 %140, i32 3
  store i32 %157, ptr %158, align 4
  %159 = load ptr, ptr %137, align 4
  %160 = ptrtoint ptr %152 to i32
  %161 = ptrtoint ptr %159 to i32
  %162 = sub i32 %160, %161
  %163 = ashr exact i32 %162, 5
  %164 = load ptr, ptr %138, align 64
  %165 = getelementptr ptr, ptr %164, i32 %163
  store ptr %145, ptr %165, align 4
  %166 = add nuw nsw i32 %140, 1
  %167 = icmp eq i32 %166, %89
  br i1 %167, label %168, label %139

168:                                              ; preds = %151, %147
  %169 = phi i32 [ %140, %147 ], [ %89, %151 ]
  %170 = icmp sgt i32 %169, 255
  br i1 %170, label %171, label %181

171:                                              ; preds = %171, %168
  %172 = phi i32 [ %179, %171 ], [ %169, %168 ]
  %173 = load i8, ptr %1, align 64
  %174 = zext i8 %173 to i32
  %175 = shl nuw nsw i32 %174, 2
  %176 = add nuw nsw i32 %175, 5376
  call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  call void @arm_heavy_mb() #21
  %177 = load ptr, ptr %10, align 4
  %178 = getelementptr i8, ptr %177, i32 %176
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %178, i32 16711680) #21, !srcloc !15
  %179 = add nsw i32 %172, -255
  %180 = icmp ugt i32 %172, 510
  br i1 %180, label %171, label %181

181:                                              ; preds = %171, %168, %134
  %182 = phi i32 [ %169, %168 ], [ 0, %134 ], [ %179, %171 ]
  %183 = load i8, ptr %1, align 64
  %184 = zext i8 %183 to i32
  %185 = shl nuw nsw i32 %184, 2
  %186 = add nuw nsw i32 %185, 5376
  %187 = shl i32 %182, 16
  call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  call void @arm_heavy_mb() #21
  %188 = load ptr, ptr %10, align 4
  %189 = getelementptr i8, ptr %188, i32 %186
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %189, i32 %187) #21, !srcloc !15
  br label %289

190:                                              ; preds = %2
  %191 = getelementptr inbounds %struct.mvneta_port, ptr %0, i32 0, i32 39
  %192 = load i16, ptr %191, align 2
  %193 = zext i16 %192 to i32
  %194 = load i8, ptr %1, align 64
  %195 = zext i8 %194 to i32
  %196 = shl nuw nsw i32 %195, 2
  %197 = or i32 %196, 5120
  %198 = load ptr, ptr %10, align 4
  %199 = getelementptr i8, ptr %198, i32 %197
  %200 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %199) #21, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !17
  %201 = and i32 %200, -3841
  %202 = mul nsw i32 %193, -32
  %203 = add nsw i32 %202, 2048
  %204 = and i32 %203, -256
  %205 = or i32 %201, %204
  %206 = load i8, ptr %1, align 64
  %207 = zext i8 %206 to i32
  %208 = shl nuw nsw i32 %207, 2
  %209 = or i32 %208, 5120
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %210 = load ptr, ptr %10, align 4
  %211 = getelementptr i8, ptr %210, i32 %209
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %211, i32 %205) #21, !srcloc !15
  %212 = load i8, ptr %1, align 64
  %213 = zext i8 %212 to i32
  %214 = shl nuw nsw i32 %213, 2
  %215 = or i32 %214, 5120
  %216 = load ptr, ptr %10, align 4
  %217 = getelementptr i8, ptr %216, i32 %215
  %218 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %217) #21, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !17
  %219 = or i32 %218, 1
  %220 = load i8, ptr %1, align 64
  %221 = zext i8 %220 to i32
  %222 = shl nuw nsw i32 %221, 2
  %223 = or i32 %222, 5120
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %224 = load ptr, ptr %10, align 4
  %225 = getelementptr i8, ptr %224, i32 %223
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %225, i32 %219) #21, !srcloc !15
  %226 = load i8, ptr %1, align 64
  %227 = zext i8 %226 to i32
  %228 = shl nuw nsw i32 %227, 2
  %229 = or i32 %228, 5120
  %230 = load ptr, ptr %10, align 4
  %231 = getelementptr i8, ptr %230, i32 %229
  %232 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %231) #21, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !17
  %233 = and i32 %232, -193
  %234 = getelementptr inbounds %struct.mvneta_port, ptr %0, i32 0, i32 30
  %235 = load ptr, ptr %234, align 8
  %236 = getelementptr inbounds %struct.mvneta_bm_pool, ptr %235, i32 0, i32 1
  %237 = load i8, ptr %236, align 4
  %238 = zext i8 %237 to i32
  %239 = shl nuw nsw i32 %238, 6
  %240 = or i32 %239, %233
  %241 = load i8, ptr %1, align 64
  %242 = zext i8 %241 to i32
  %243 = shl nuw nsw i32 %242, 2
  %244 = or i32 %243, 5120
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %245 = load ptr, ptr %10, align 4
  %246 = getelementptr i8, ptr %245, i32 %244
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %246, i32 %240) #21, !srcloc !15
  %247 = load i8, ptr %1, align 64
  %248 = zext i8 %247 to i32
  %249 = shl nuw nsw i32 %248, 2
  %250 = or i32 %249, 5120
  %251 = load ptr, ptr %10, align 4
  %252 = getelementptr i8, ptr %251, i32 %250
  %253 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %252) #21, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !17
  %254 = and i32 %253, -49
  %255 = getelementptr inbounds %struct.mvneta_port, ptr %0, i32 0, i32 31
  %256 = load ptr, ptr %255, align 4
  %257 = getelementptr inbounds %struct.mvneta_bm_pool, ptr %256, i32 0, i32 1
  %258 = load i8, ptr %257, align 4
  %259 = zext i8 %258 to i32
  %260 = shl nuw nsw i32 %259, 4
  %261 = or i32 %260, %254
  %262 = load i8, ptr %1, align 64
  %263 = zext i8 %262 to i32
  %264 = shl nuw nsw i32 %263, 2
  %265 = or i32 %264, 5120
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %266 = load ptr, ptr %10, align 4
  %267 = getelementptr i8, ptr %266, i32 %265
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %267, i32 %261) #21, !srcloc !15
  %268 = load i32, ptr %17, align 4
  %269 = icmp sgt i32 %268, 255
  br i1 %269, label %270, label %280

270:                                              ; preds = %270, %190
  %271 = phi i32 [ %278, %270 ], [ %268, %190 ]
  %272 = load i8, ptr %1, align 64
  %273 = zext i8 %272 to i32
  %274 = shl nuw nsw i32 %273, 2
  %275 = add nuw nsw i32 %274, 5376
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %276 = load ptr, ptr %10, align 4
  %277 = getelementptr i8, ptr %276, i32 %275
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %277, i32 16711680) #21, !srcloc !15
  %278 = add nsw i32 %271, -255
  %279 = icmp ugt i32 %271, 510
  br i1 %279, label %270, label %280

280:                                              ; preds = %270, %190
  %281 = phi i32 [ %268, %190 ], [ %278, %270 ]
  %282 = load i8, ptr %1, align 64
  %283 = zext i8 %282 to i32
  %284 = shl nuw nsw i32 %283, 2
  %285 = add nuw nsw i32 %284, 5376
  %286 = shl i32 %281, 16
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %287 = load ptr, ptr %10, align 4
  %288 = getelementptr i8, ptr %287, i32 %285
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %288, i32 %286) #21, !srcloc !15
  br label %289

289:                                              ; preds = %280, %181, %131
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_pool_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdp_rxq_info_reg(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdp_rxq_info_reg_mem_model(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdp_rxq_info_unreg(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_pool_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_pool_alloc_pages(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mvneta_txq_hw_init(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = load i8, ptr %1, align 4
  %4 = zext i8 %3 to i32
  %5 = shl nuw nsw i32 %4, 4
  %6 = add nuw nsw i32 %5, 9988
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %7 = getelementptr inbounds %struct.mvneta_port, ptr %0, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 %6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 67108863) #21, !srcloc !15
  %10 = load i8, ptr %1, align 4
  %11 = zext i8 %10 to i32
  %12 = shl nuw nsw i32 %11, 4
  %13 = add nuw nsw i32 %12, 9984
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %14 = load ptr, ptr %7, align 4
  %15 = getelementptr i8, ptr %14, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 1073741823) #21, !srcloc !15
  %16 = load i8, ptr %1, align 4
  %17 = zext i8 %16 to i32
  %18 = shl nuw nsw i32 %17, 2
  %19 = or i32 %18, 15360
  %20 = getelementptr inbounds %struct.mvneta_tx_queue, ptr %1, i32 0, i32 11
  %21 = load i32, ptr %20, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %22 = load ptr, ptr %7, align 4
  %23 = getelementptr i8, ptr %22, i32 %19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #21, !srcloc !15
  %24 = load i8, ptr %1, align 4
  %25 = zext i8 %24 to i32
  %26 = shl nuw nsw i32 %25, 2
  %27 = add nuw nsw i32 %26, 15392
  %28 = getelementptr inbounds %struct.mvneta_tx_queue, ptr %1, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %30 = load ptr, ptr %7, align 4
  %31 = getelementptr i8, ptr %30, i32 %27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %29) #21, !srcloc !15
  %32 = getelementptr inbounds %struct.mvneta_tx_queue, ptr %1, i32 0, i32 9
  %33 = load i32, ptr %32, align 4
  %34 = load i8, ptr %1, align 4
  %35 = zext i8 %34 to i32
  %36 = shl nuw nsw i32 %35, 2
  %37 = add nuw nsw i32 %36, 15392
  %38 = load ptr, ptr %7, align 4
  %39 = getelementptr i8, ptr %38, i32 %37
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #21, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !17
  %41 = and i32 %40, -1073676289
  %42 = shl i32 %33, 16
  %43 = or i32 %41, %42
  %44 = load i8, ptr %1, align 4
  %45 = zext i8 %44 to i32
  %46 = shl nuw nsw i32 %45, 2
  %47 = add nuw nsw i32 %46, 15392
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %48 = load ptr, ptr %7, align 4
  %49 = getelementptr i8, ptr %48, i32 %47
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %43) #21, !srcloc !15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_set_xps_queue(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_percpu_irq(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_state_add_instance(i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_of_phy_connect(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_ethtool_get_wol(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_wakeup_capable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_set_wakeup_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_speed_up(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_state_remove_instance(i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dql_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mvneta_rxq_drop_pkts(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #3 {
  %3 = load i8, ptr %1, align 64
  %4 = zext i8 %3 to i32
  %5 = shl nuw nsw i32 %4, 2
  %6 = add nuw nsw i32 %5, 5344
  %7 = getelementptr inbounds %struct.mvneta_port, ptr %0, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 %6
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #21, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !17
  %11 = and i32 %10, 16383
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %41, label %13

13:                                               ; preds = %2
  %14 = icmp ult i32 %11, 256
  br i1 %14, label %45, label %15

15:                                               ; preds = %15, %13
  %16 = phi i32 [ %25, %15 ], [ %11, %13 ]
  %17 = phi i32 [ %20, %15 ], [ %11, %13 ]
  %18 = icmp slt i32 %17, 256
  %19 = add i32 %17, -255
  %20 = select i1 %18, i32 0, i32 %19
  %21 = select i1 %18, i32 %17, i32 255
  %22 = icmp slt i32 %16, 256
  %23 = shl i32 %16, 16
  %24 = add i32 %16, -255
  %25 = select i1 %22, i32 0, i32 %24
  %26 = select i1 %22, i32 %23, i32 16711680
  %27 = or i32 %21, %26
  %28 = load i8, ptr %1, align 64
  %29 = zext i8 %28 to i32
  %30 = shl nuw nsw i32 %29, 2
  %31 = add nuw nsw i32 %30, 5376
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %32 = load ptr, ptr %7, align 4
  %33 = getelementptr i8, ptr %32, i32 %31
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %27) #21, !srcloc !15
  %34 = icmp ne i32 %20, 0
  %35 = icmp ne i32 %25, 0
  %36 = select i1 %34, i1 true, i1 %35
  br i1 %36, label %15, label %37

37:                                               ; preds = %15
  %38 = getelementptr inbounds %struct.mvneta_port, ptr %0, i32 0, i32 29
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %61, label %56

41:                                               ; preds = %2
  %42 = getelementptr inbounds %struct.mvneta_port, ptr %0, i32 0, i32 29
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %61, label %106

45:                                               ; preds = %13
  %46 = mul nuw nsw i32 %11, 65537
  %47 = load i8, ptr %1, align 64
  %48 = zext i8 %47 to i32
  %49 = shl nuw nsw i32 %48, 2
  %50 = add nuw nsw i32 %49, 5376
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %51 = load ptr, ptr %7, align 4
  %52 = getelementptr i8, ptr %51, i32 %50
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %46) #21, !srcloc !15
  %53 = getelementptr inbounds %struct.mvneta_port, ptr %0, i32 0, i32 29
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %61, label %57

56:                                               ; preds = %37
  br i1 %12, label %106, label %57

57:                                               ; preds = %56, %45
  %58 = getelementptr inbounds %struct.mvneta_rx_queue, ptr %1, i32 0, i32 11
  %59 = getelementptr inbounds %struct.mvneta_rx_queue, ptr %1, i32 0, i32 10
  %60 = getelementptr inbounds %struct.mvneta_rx_queue, ptr %1, i32 0, i32 8
  br label %69

61:                                               ; preds = %45, %41, %37
  %62 = getelementptr inbounds %struct.mvneta_rx_queue, ptr %1, i32 0, i32 1
  %63 = load i32, ptr %62, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %99

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.mvneta_rx_queue, ptr %1, i32 0, i32 7
  %67 = getelementptr inbounds %struct.mvneta_rx_queue, ptr %1, i32 0, i32 8
  %68 = getelementptr inbounds %struct.mvneta_rx_queue, ptr %1, i32 0, i32 4
  br label %80

69:                                               ; preds = %69, %57
  %70 = phi i32 [ 0, %57 ], [ %78, %69 ]
  %71 = load i32, ptr %58, align 16
  %72 = load i32, ptr %59, align 4
  %73 = icmp slt i32 %71, %72
  %74 = add i32 %71, 1
  %75 = select i1 %73, i32 %74, i32 0
  store i32 %75, ptr %58, align 16
  %76 = load ptr, ptr %60, align 4
  %77 = getelementptr %struct.mvneta_rx_desc, ptr %76, i32 %75
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %77) #21, !srcloc !22
  %78 = add nuw nsw i32 %70, 1
  %79 = icmp eq i32 %78, %11
  br i1 %79, label %106, label %69

80:                                               ; preds = %95, %65
  %81 = phi i32 [ %63, %65 ], [ %96, %95 ]
  %82 = phi i32 [ 0, %65 ], [ %97, %95 ]
  %83 = load ptr, ptr %66, align 64
  %84 = getelementptr ptr, ptr %83, i32 %82
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %95, label %87

87:                                               ; preds = %80
  %88 = load ptr, ptr %67, align 4
  %89 = getelementptr %struct.mvneta_rx_desc, ptr %88, i32 %82, i32 3
  %90 = load i32, ptr %89, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %87
  %93 = load ptr, ptr %68, align 16
  tail call void @page_pool_put_page(ptr noundef %93, ptr noundef nonnull %85, i32 noundef -1, i1 noundef zeroext false) #21
  %94 = load i32, ptr %62, align 4
  br label %95

95:                                               ; preds = %92, %87, %80
  %96 = phi i32 [ %81, %80 ], [ %81, %87 ], [ %94, %92 ]
  %97 = add nuw nsw i32 %82, 1
  %98 = icmp slt i32 %97, %96
  br i1 %98, label %80, label %99

99:                                               ; preds = %95, %61
  %100 = getelementptr inbounds %struct.mvneta_rx_queue, ptr %1, i32 0, i32 6
  %101 = tail call zeroext i1 @xdp_rxq_info_is_reg(ptr noundef %100) #21
  br i1 %101, label %102, label %103

102:                                              ; preds = %99
  tail call void @xdp_rxq_info_unreg(ptr noundef %100) #21
  br label %103

103:                                              ; preds = %102, %99
  %104 = getelementptr inbounds %struct.mvneta_rx_queue, ptr %1, i32 0, i32 4
  %105 = load ptr, ptr %104, align 16
  tail call void @page_pool_destroy(ptr noundef %105) #21
  store ptr null, ptr %104, align 16
  br label %106

106:                                              ; preds = %103, %69, %56, %41
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xdp_rxq_info_is_reg(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_pool_put_page(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mvneta_stop_dev(ptr noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.mvneta_port, ptr %0, i32 0, i32 3
  tail call void @_set_bit(i32 noundef 0, ptr noundef %2) #21
  %3 = getelementptr inbounds %struct.mvneta_port, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 111, i32 11, i32 1
  %6 = load i16, ptr %5, align 4
  %7 = and i16 %6, 1
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 111, i32 11, i32 6
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.mvneta_port, ptr %0, i32 0, i32 25
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @phylink_speed_down(ptr noundef %15, i1 noundef zeroext false) #21
  br label %17

17:                                               ; preds = %13, %9, %1
  %18 = getelementptr inbounds %struct.mvneta_port, ptr %0, i32 0, i32 25
  %19 = load ptr, ptr %18, align 4
  tail call void @phylink_stop(ptr noundef %19) #21
  %20 = getelementptr inbounds %struct.mvneta_port, ptr %0, i32 0, i32 38
  %21 = load i8, ptr %20, align 4, !range !9
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %17
  %24 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #22
  %25 = load i32, ptr @nr_cpu_ids, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %27, label %43

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.mvneta_port, ptr %0, i32 0, i32 1
  br label %29

29:                                               ; preds = %29, %27
  %30 = phi i32 [ %24, %27 ], [ %38, %29 ]
  %31 = load ptr, ptr %28, align 4
  %32 = ptrtoint ptr %31 to i32
  %33 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %30
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %34, %32
  %36 = inttoptr i32 %35 to ptr
  %37 = getelementptr inbounds %struct.mvneta_pcpu_port, ptr %36, i32 0, i32 1
  tail call void @napi_disable(ptr noundef %37) #21
  %38 = tail call i32 @cpumask_next(i32 noundef %30, ptr noundef nonnull @__cpu_online_mask) #22
  %39 = load i32, ptr @nr_cpu_ids, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %29, label %43

41:                                               ; preds = %17
  %42 = getelementptr inbounds %struct.mvneta_port, ptr %0, i32 0, i32 15
  tail call void @napi_disable(ptr noundef %42) #21
  br label %43

43:                                               ; preds = %41, %29, %23
  %44 = load ptr, ptr %3, align 8
  tail call void @netif_carrier_off(ptr noundef %44) #21
  tail call fastcc void @mvneta_port_down(ptr noundef %0)
  %45 = load ptr, ptr %3, align 8
  tail call void @netif_tx_stop_all_queues(ptr noundef %45) #21
  %46 = getelementptr inbounds %struct.mvneta_port, ptr %0, i32 0, i32 5
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr i8, ptr %47, i32 11264
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #21, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !17
  %50 = and i32 %49, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %51 = load ptr, ptr %46, align 4
  %52 = getelementptr i8, ptr %51, i32 11264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %50) #21, !srcloc !15
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 42949600) #21
  tail call void @on_each_cpu_cond_mask(ptr noundef null, ptr noundef nonnull @mvneta_percpu_clear_intr_cause, ptr noundef %0, i1 noundef zeroext true, ptr noundef nonnull @__cpu_online_mask) #21
  tail call void @on_each_cpu_cond_mask(ptr noundef null, ptr noundef nonnull @mvneta_percpu_mask_interrupt, ptr noundef %0, i1 noundef zeroext true, ptr noundef nonnull @__cpu_online_mask) #21
  %54 = load i32, ptr @txq_number, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %75

56:                                               ; preds = %43
  %57 = getelementptr inbounds %struct.mvneta_port, ptr %0, i32 0, i32 7
  br label %58

58:                                               ; preds = %58, %56
  %59 = phi i32 [ 0, %56 ], [ %72, %58 ]
  %60 = load ptr, ptr %57, align 4
  %61 = getelementptr %struct.mvneta_tx_queue, ptr %60, i32 %59
  %62 = load ptr, ptr %3, align 8
  %63 = load i8, ptr %61, align 4
  %64 = zext i8 %63 to i32
  %65 = getelementptr inbounds %struct.net_device, ptr %62, i32 0, i32 87
  %66 = load ptr, ptr %65, align 64
  %67 = getelementptr %struct.netdev_queue, ptr %66, i32 %64
  %68 = getelementptr %struct.mvneta_tx_queue, ptr %60, i32 %59, i32 2
  %69 = load i32, ptr %68, align 4
  tail call fastcc void @mvneta_txq_bufs_free(ptr noundef %0, ptr noundef %61, i32 noundef %69, ptr noundef %67, i1 noundef zeroext false) #21
  store i32 0, ptr %68, align 4
  %70 = getelementptr %struct.mvneta_tx_queue, ptr %60, i32 %59, i32 7
  store i32 0, ptr %70, align 4
  %71 = getelementptr %struct.mvneta_tx_queue, ptr %60, i32 %59, i32 8
  store i32 0, ptr %71, align 4
  %72 = add nuw nsw i32 %59, 1
  %73 = load i32, ptr @txq_number, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %58, label %75

75:                                               ; preds = %58, %43
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %76 = load ptr, ptr %46, align 4
  %77 = getelementptr i8, ptr %76, i32 15600
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 1) #21, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %78 = load ptr, ptr %46, align 4
  %79 = getelementptr i8, ptr %78, i32 15600
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %79, i32 0) #21, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %80 = load ptr, ptr %46, align 4
  %81 = getelementptr i8, ptr %80, i32 7360
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 1) #21, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %82 = load ptr, ptr %46, align 4
  %83 = getelementptr i8, ptr %82, i32 7360
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %83, i32 0) #21, !srcloc !15
  %84 = getelementptr inbounds %struct.mvneta_port, ptr %0, i32 0, i32 28
  %85 = load ptr, ptr %84, align 8
  %86 = tail call i32 @phy_power_off(ptr noundef %85) #21
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %89, label %88, !prof !25

88:                                               ; preds = %75
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 3722, i32 noundef 9, ptr noundef null) #21
  br label %89

89:                                               ; preds = %88, %75
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_speed_down(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mvneta_percpu_clear_intr_cause(ptr nocapture noundef readonly %0) #3 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %2 = getelementptr inbounds %struct.mvneta_port, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 9632
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 0) #21, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr i8, ptr %5, i32 9648
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 0) #21, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr i8, ptr %7, i32 9640
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 0) #21, !srcloc !15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mvneta_txq_bufs_free(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2, ptr noundef %3, i1 noundef zeroext %4) unnamed_addr #3 {
  %6 = alloca %struct.xdp_frame_bulk, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %6) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %6, i8 0, i64 72, i1 false)
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !43
  %7 = icmp sgt i32 %2, 0
  br i1 %7, label %8, label %70

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.mvneta_tx_queue, ptr %1, i32 0, i32 6
  %10 = getelementptr inbounds %struct.mvneta_tx_queue, ptr %1, i32 0, i32 8
  %11 = getelementptr inbounds %struct.mvneta_tx_queue, ptr %1, i32 0, i32 10
  %12 = getelementptr inbounds %struct.mvneta_tx_queue, ptr %1, i32 0, i32 1
  %13 = getelementptr inbounds %struct.mvneta_tx_queue, ptr %1, i32 0, i32 15
  %14 = getelementptr inbounds %struct.mvneta_port, ptr %0, i32 0, i32 8
  br label %15

15:                                               ; preds = %66, %8
  %16 = phi i32 [ 0, %8 ], [ %68, %66 ]
  %17 = phi i32 [ 0, %8 ], [ %67, %66 ]
  %18 = load ptr, ptr %9, align 4
  %19 = load i32, ptr %10, align 4
  %20 = getelementptr %struct.mvneta_tx_buf, ptr %18, i32 %19
  %21 = load ptr, ptr %11, align 4
  %22 = add i32 %19, 1
  %23 = load i32, ptr %12, align 4
  %24 = icmp eq i32 %22, %23
  %25 = select i1 %24, i32 0, i32 %22
  store i32 %25, ptr %10, align 4
  %26 = getelementptr %struct.mvneta_tx_desc, ptr %21, i32 %19, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = load i32, ptr %13, align 4
  %29 = icmp uge i32 %27, %28
  %30 = shl i32 %23, 8
  %31 = add i32 %28, %30
  %32 = icmp ult i32 %27, %31
  %33 = select i1 %29, i1 %32, i1 false
  br i1 %33, label %44, label %34

34:                                               ; preds = %15
  %35 = load i32, ptr %20, align 4
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %58, label %37

37:                                               ; preds = %34
  %38 = load ptr, ptr %14, align 8
  %39 = getelementptr inbounds %struct.net_device, ptr %38, i32 0, i32 111, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr %struct.mvneta_tx_desc, ptr %21, i32 %19, i32 2
  %42 = load i16, ptr %41, align 2
  %43 = zext i16 %42 to i32
  call void @dma_unmap_page_attrs(ptr noundef %40, i32 noundef %27, i32 noundef %43, i32 noundef 1, i32 noundef 0) #21
  br label %44

44:                                               ; preds = %37, %15
  %45 = load i32, ptr %20, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %44
  %48 = getelementptr %struct.mvneta_tx_buf, ptr %18, i32 %19, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %66, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.sk_buff, ptr %49, i32 0, i32 5
  %53 = load i32, ptr %52, align 8
  %54 = add i32 %53, %17
  call void @__dev_kfree_skb_any(ptr noundef nonnull %49, i32 noundef 1) #21
  br label %66

55:                                               ; preds = %44
  %56 = add i32 %45, -1
  %57 = icmp ult i32 %56, 2
  br i1 %57, label %58, label %66

58:                                               ; preds = %55, %34
  %59 = phi i32 [ %45, %55 ], [ 1, %34 ]
  %60 = icmp eq i32 %59, 1
  %61 = select i1 %4, i1 %60, i1 false
  %62 = getelementptr %struct.mvneta_tx_buf, ptr %18, i32 %19, i32 1
  %63 = load ptr, ptr %62, align 4
  br i1 %61, label %64, label %65

64:                                               ; preds = %58
  call void @xdp_return_frame_rx_napi(ptr noundef %63) #21
  br label %66

65:                                               ; preds = %58
  call void @xdp_return_frame_bulk(ptr noundef %63, ptr noundef nonnull %6) #21
  br label %66

66:                                               ; preds = %65, %64, %55, %51, %47
  %67 = phi i32 [ %54, %51 ], [ %17, %64 ], [ %17, %65 ], [ %17, %55 ], [ %17, %47 ]
  %68 = add nuw nsw i32 %16, 1
  %69 = icmp eq i32 %68, %2
  br i1 %69, label %70, label %15

70:                                               ; preds = %66, %5
  %71 = phi i32 [ 0, %5 ], [ %67, %66 ]
  call void @xdp_flush_frame_bulk(ptr noundef nonnull %6) #21
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !44
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %85, label %73, !prof !19

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 14
  call void @dql_completed(ptr noundef %74, i32 noundef %71) #21
  call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !45
  %75 = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 14, i32 1
  %76 = load volatile i32, ptr %75, align 4
  %77 = load volatile i32, ptr %74, align 64
  %78 = sub i32 %76, %77
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %85, label %80, !prof !19

80:                                               ; preds = %73
  %81 = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 12
  %82 = call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %81) #21
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %80
  call void @netif_schedule_queue(ptr noundef %3) #21
  br label %85

85:                                               ; preds = %84, %80, %73, %70
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %6) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdp_return_frame_rx_napi(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdp_return_frame_bulk(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdp_flush_frame_bulk(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dql_completed(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_schedule_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_disconnect_phy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mvneta_skb_tx_csum(ptr noundef %0) unnamed_addr #3 {
  %2 = alloca %struct.vlan_hdr, align 4
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %4 = load i16, ptr %3, align 8
  %5 = and i16 %4, 96
  %6 = icmp eq i16 %5, 96
  br i1 %6, label %7, label %104

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 16
  %9 = load i16, ptr %8, align 8
  %10 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 7
  %11 = load i16, ptr %10, align 8
  %12 = zext i16 %11 to i32
  switch i16 %9, label %54 [
    i16 -22392, label %13
    i16 129, label %13
  ]

13:                                               ; preds = %7, %7
  %14 = icmp eq i16 %11, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %13
  %16 = icmp ult i16 %11, 4
  br i1 %16, label %17, label %18, !prof !19

17:                                               ; preds = %15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 598, i32 noundef 9, ptr noundef null) #21
  br label %104

18:                                               ; preds = %15
  %19 = add nsw i32 %12, -4
  br label %20

20:                                               ; preds = %18, %13
  %21 = phi i32 [ %19, %18 ], [ 14, %13 ]
  %22 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %23 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %24 = icmp eq ptr %0, null
  %25 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  br label %26

26:                                               ; preds = %52, %20
  %27 = phi i32 [ %21, %20 ], [ %53, %52 ]
  %28 = phi i32 [ 8, %20 ], [ %45, %52 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #21
  store i32 0, ptr %2, align 4, !annotation !18
  %29 = load i32, ptr %22, align 8
  %30 = load i32, ptr %23, align 4
  %31 = add i32 %27, %30
  %32 = sub i32 %29, %31
  %33 = icmp sgt i32 %32, 3
  br i1 %33, label %34, label %37, !prof !25

34:                                               ; preds = %26
  %35 = load ptr, ptr %25, align 4
  %36 = getelementptr i8, ptr %35, i32 %27
  br label %42

37:                                               ; preds = %26
  br i1 %24, label %48, label %38

38:                                               ; preds = %37
  %39 = call i32 @skb_copy_bits(ptr noundef nonnull %0, i32 noundef %27, ptr noundef nonnull %2, i32 noundef 4) #21
  %40 = icmp slt i32 %39, 0
  %41 = select i1 %40, ptr null, ptr %2, !prof !19
  br label %42

42:                                               ; preds = %38, %34
  %43 = phi ptr [ %36, %34 ], [ %41, %38 ]
  %44 = icmp eq ptr %43, null
  %45 = add nsw i32 %28, -1
  %46 = icmp eq i32 %45, 0
  %47 = select i1 %44, i1 true, i1 %46, !prof !19
  br i1 %47, label %48, label %49, !prof !19

48:                                               ; preds = %42, %37
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #21
  br label %104

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.vlan_hdr, ptr %43, i32 0, i32 1
  %51 = load i16, ptr %50, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #21
  switch i16 %51, label %54 [
    i16 -22392, label %52
    i16 129, label %52
  ]

52:                                               ; preds = %49, %49
  %53 = add nsw i32 %27, 4
  br label %26

54:                                               ; preds = %49, %7
  %55 = phi i16 [ %9, %7 ], [ %51, %49 ]
  switch i16 %55, label %104 [
    i16 8, label %56
    i16 -8826, label %67
  ]

56:                                               ; preds = %54
  %57 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %58 = load ptr, ptr %57, align 8
  %59 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %60 = load i16, ptr %59, align 4
  %61 = zext i16 %60 to i32
  %62 = getelementptr i8, ptr %58, i32 %61
  %63 = load i8, ptr %62, align 4
  %64 = and i8 %63, 15
  %65 = zext i8 %64 to i32
  %66 = getelementptr inbounds %struct.iphdr, ptr %62, i32 0, i32 6
  br label %82

67:                                               ; preds = %54
  %68 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %69 = load ptr, ptr %68, align 8
  %70 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %71 = load i16, ptr %70, align 4
  %72 = zext i16 %71 to i32
  %73 = getelementptr i8, ptr %69, i32 %72
  %74 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %75 = load i16, ptr %74, align 2
  %76 = zext i16 %75 to i32
  %77 = sub nsw i32 %76, %72
  %78 = icmp eq i16 %75, %71
  %79 = lshr i32 %77, 2
  %80 = select i1 %78, i32 0, i32 %79
  %81 = getelementptr inbounds %struct.ipv6hdr, ptr %73, i32 0, i32 3
  br label %82

82:                                               ; preds = %67, %56
  %83 = phi i32 [ %72, %67 ], [ %61, %56 ]
  %84 = phi ptr [ %69, %67 ], [ %58, %56 ]
  %85 = phi i32 [ %80, %67 ], [ %65, %56 ]
  %86 = phi ptr [ %81, %67 ], [ %66, %56 ]
  %87 = load i8, ptr %86, align 1
  %88 = getelementptr i8, ptr %84, i32 %83
  %89 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %90 = load ptr, ptr %89, align 4
  %91 = ptrtoint ptr %88 to i32
  %92 = ptrtoint ptr %90 to i32
  %93 = sub i32 %91, %92
  %94 = shl i32 %85, 8
  %95 = icmp eq i16 %55, 8
  %96 = select i1 %95, i32 262144, i32 131072
  %97 = icmp eq i8 %87, 17
  %98 = select i1 %97, i32 1073807360, i32 -2147483648
  %99 = icmp eq i8 %87, 6
  %100 = select i1 %99, i32 1073741824, i32 %98
  %101 = or i32 %94, %96
  %102 = or i32 %101, %100
  %103 = or i32 %102, %93
  br label %104

104:                                              ; preds = %82, %54, %48, %17, %1
  %105 = phi i32 [ %103, %82 ], [ -2147483648, %54 ], [ -2147483648, %1 ], [ -2147483648, %17 ], [ -2147483648, %48 ]
  ret i32 %105
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mvneta_txq_pend_desc_add(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.mvneta_tx_queue, ptr %1, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, %2
  %7 = getelementptr inbounds %struct.mvneta_port, ptr %0, i32 0, i32 5
  br label %8

8:                                                ; preds = %8, %3
  %9 = phi i32 [ %6, %3 ], [ %17, %8 ]
  %10 = tail call i32 @llvm.smin.i32(i32 %9, i32 255)
  %11 = load i8, ptr %1, align 4
  %12 = zext i8 %11 to i32
  %13 = shl nuw nsw i32 %12, 2
  %14 = add nuw nsw i32 %13, 15456
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %15 = load ptr, ptr %7, align 4
  %16 = getelementptr i8, ptr %15, i32 %14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %10) #21, !srcloc !15
  %17 = sub i32 %9, %10
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %8, label %19

19:                                               ; preds = %8
  store i32 0, ptr %4, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tso_count_descs(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tso_start(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tso_build_hdr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tso_build_data(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mvneta_mac_addr_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #3 {
  %4 = icmp eq i32 %2, -1
  br i1 %4, label %36, label %5

5:                                                ; preds = %3
  %6 = getelementptr i8, ptr %1, i32 4
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  %9 = shl nuw nsw i32 %8, 8
  %10 = getelementptr i8, ptr %1, i32 5
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i32
  %13 = or i32 %9, %12
  %14 = load i8, ptr %1, align 1
  %15 = zext i8 %14 to i32
  %16 = shl nuw i32 %15, 24
  %17 = getelementptr i8, ptr %1, i32 1
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = shl nuw nsw i32 %19, 16
  %21 = or i32 %20, %16
  %22 = getelementptr i8, ptr %1, i32 2
  %23 = load i8, ptr %22, align 1
  %24 = zext i8 %23 to i32
  %25 = shl nuw nsw i32 %24, 8
  %26 = or i32 %21, %25
  %27 = getelementptr i8, ptr %1, i32 3
  %28 = load i8, ptr %27, align 1
  %29 = zext i8 %28 to i32
  %30 = or i32 %26, %29
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %31 = getelementptr inbounds %struct.mvneta_port, ptr %0, i32 0, i32 5
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr i8, ptr %32, i32 9236
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %13) #21, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %34 = load ptr, ptr %31, align 4
  %35 = getelementptr i8, ptr %34, i32 9240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %30) #21, !srcloc !15
  br label %36

36:                                               ; preds = %5, %3
  %37 = getelementptr i8, ptr %1, i32 5
  %38 = load i8, ptr %37, align 1
  %39 = and i8 %38, 15
  %40 = zext i8 %39 to i32
  %41 = and i32 %40, 12
  %42 = or i32 %41, 13824
  %43 = getelementptr inbounds %struct.mvneta_port, ptr %0, i32 0, i32 5
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr i8, ptr %44, i32 %42
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #21, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !17
  %47 = shl nuw nsw i32 %40, 3
  %48 = and i32 %47, 24
  %49 = shl nuw i32 255, %48
  %50 = xor i32 %49, -1
  %51 = and i32 %46, %50
  %52 = shl i32 %2, 1
  %53 = or i32 %52, 1
  %54 = shl i32 %53, %48
  %55 = select i1 %4, i32 0, i32 %54
  %56 = or i32 %51, %55
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %57 = load ptr, ptr %43, align 4
  %58 = getelementptr i8, ptr %57, i32 %42
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 %56) #21, !srcloc !15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_prepare_mac_addr_change(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @eth_commit_mac_addr_change(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_mii_ioctl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mvneta_bm_update_mtu(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.mvneta_port, ptr %0, i32 0, i32 30
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.mvneta_port, ptr %0, i32 0, i32 29
  %6 = getelementptr inbounds %struct.hwbm_pool, ptr %4, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.mvneta_bm_pool, ptr %4, i32 0, i32 1
  %11 = load i8, ptr %10, align 4
  %12 = zext i8 %11 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 1212, i32 noundef 9, ptr noundef nonnull @.str.40, i32 noundef %12) #21
  br label %39

13:                                               ; preds = %2
  %14 = add i32 %1, 87
  %15 = and i32 %14, -64
  %16 = getelementptr inbounds %struct.mvneta_bm_pool, ptr %4, i32 0, i32 3
  store i32 %15, ptr %16, align 4
  %17 = add i32 %15, 64
  %18 = getelementptr inbounds %struct.mvneta_bm_pool, ptr %4, i32 0, i32 4
  store i32 %17, ptr %18, align 4
  %19 = add i32 %15, 383
  %20 = and i32 %19, -64
  %21 = getelementptr inbounds %struct.hwbm_pool, ptr %4, i32 0, i32 1
  store i32 %20, ptr %21, align 4
  %22 = load i32, ptr %4, align 4
  %23 = icmp eq i32 %22, 0
  %24 = getelementptr inbounds %struct.mvneta_bm_pool, ptr %4, i32 0, i32 1
  %25 = load i8, ptr %24, align 4
  %26 = zext i8 %25 to i32
  br i1 %23, label %28, label %27

27:                                               ; preds = %13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 1225, i32 noundef 9, ptr noundef nonnull @.str.41, i32 noundef %26, i32 noundef 0, i32 noundef %22) #21
  br label %39

28:                                               ; preds = %13
  %29 = shl nuw nsw i32 %26, 2
  %30 = add nuw nsw i32 %29, 5888
  %31 = getelementptr inbounds %struct.mvneta_port, ptr %0, i32 0, i32 5
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr i8, ptr %32, i32 %30
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #21, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !17
  %35 = and i32 %17, 65472
  %36 = or i32 %34, %35
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %37 = load ptr, ptr %31, align 4
  %38 = getelementptr i8, ptr %37, i32 %30
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %36) #21, !srcloc !15
  br label %46

39:                                               ; preds = %27, %9
  store ptr null, ptr %5, align 4
  %40 = getelementptr inbounds %struct.mvneta_port, ptr %0, i32 0, i32 39
  store i16 256, ptr %40, align 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %41 = getelementptr inbounds %struct.mvneta_port, ptr %0, i32 0, i32 5
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr i8, ptr %42, i32 9472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 1) #21, !srcloc !15
  %44 = getelementptr inbounds %struct.mvneta_port, ptr %0, i32 0, i32 8
  %45 = load ptr, ptr %44, align 8
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %45, ptr noundef nonnull @.str.42) #23
  br label %46

46:                                               ; preds = %39, %28
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_update_features(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_reset_tc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netdev_set_num_tc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netdev_set_tc_queue(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mvneta_xdp_submit_frame(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #3 {
  %5 = getelementptr inbounds %struct.mvneta_tx_queue, ptr %1, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.mvneta_tx_queue, ptr %1, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %10, label %105

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.mvneta_tx_queue, ptr %1, i32 0, i32 13
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.mvneta_tx_queue, ptr %1, i32 0, i32 12
  %14 = load i32, ptr %13, align 4
  %15 = icmp slt i32 %12, %14
  %16 = add i32 %12, 1
  %17 = select i1 %15, i32 %16, i32 0
  store i32 %17, ptr %11, align 4
  %18 = getelementptr inbounds %struct.mvneta_tx_queue, ptr %1, i32 0, i32 10
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr %struct.mvneta_tx_desc, ptr %19, i32 %12
  %21 = getelementptr inbounds %struct.mvneta_tx_queue, ptr %1, i32 0, i32 6
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.mvneta_tx_queue, ptr %1, i32 0, i32 7
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr %struct.mvneta_tx_buf, ptr %22, i32 %24
  br i1 %3, label %26, label %66

26:                                               ; preds = %10
  %27 = getelementptr inbounds %struct.mvneta_port, ptr %0, i32 0, i32 8
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.net_device, ptr %28, i32 0, i32 111, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = load ptr, ptr %2, align 4
  %32 = getelementptr inbounds %struct.xdp_frame, ptr %2, i32 0, i32 1
  %33 = load i16, ptr %32, align 4
  %34 = zext i16 %33 to i32
  %35 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %31) #21
  %36 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %37 = xor i1 %36, true
  %38 = select i1 %35, i1 %37, i1 false
  br i1 %38, label %39, label %48, !prof !19

39:                                               ; preds = %26
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %40 = tail call ptr @dev_driver_string(ptr noundef %30) #21
  %41 = getelementptr inbounds %struct.device, ptr %30, i32 0, i32 3
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load ptr, ptr %30, align 4
  br label %46

46:                                               ; preds = %44, %39
  %47 = phi ptr [ %45, %44 ], [ %42, %39 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.31, ptr noundef %40, ptr noundef %47) #21
  br label %48

48:                                               ; preds = %46, %26
  br i1 %35, label %58, label %49

49:                                               ; preds = %48
  %50 = load ptr, ptr @mem_map, align 4
  %51 = ptrtoint ptr %31 to i32
  %52 = add i32 %51, 1073741824
  %53 = lshr i32 %52, 12
  %54 = getelementptr %struct.page, ptr %50, i32 %53
  %55 = and i32 %51, 4095
  %56 = tail call i32 @dma_map_page_attrs(ptr noundef %30, ptr noundef %54, i32 noundef %55, i32 noundef %34, i32 noundef 1, i32 noundef 0) #21
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %58, label %86

58:                                               ; preds = %49, %48
  %59 = load i32, ptr %11, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = load i32, ptr %13, align 4
  br label %63

63:                                               ; preds = %61, %58
  %64 = phi i32 [ %62, %61 ], [ %59, %58 ]
  %65 = add i32 %64, -1
  store i32 %65, ptr %11, align 4
  br label %105

66:                                               ; preds = %10
  %67 = load ptr, ptr @mem_map, align 4
  %68 = load ptr, ptr %2, align 4
  %69 = ptrtoint ptr %68 to i32
  %70 = add i32 %69, 1073741824
  %71 = lshr i32 %70, 12
  %72 = getelementptr %struct.page, ptr %67, i32 %71, i32 1, i32 0, i32 2
  %73 = load i32, ptr %72, align 4
  %74 = add i32 %73, 24
  %75 = getelementptr inbounds %struct.xdp_frame, ptr %2, i32 0, i32 2
  %76 = load i16, ptr %75, align 2
  %77 = zext i16 %76 to i32
  %78 = add i32 %74, %77
  %79 = getelementptr inbounds %struct.mvneta_port, ptr %0, i32 0, i32 8
  %80 = load ptr, ptr %79, align 8
  %81 = getelementptr inbounds %struct.net_device, ptr %80, i32 0, i32 111, i32 1
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr inbounds %struct.xdp_frame, ptr %2, i32 0, i32 1
  %84 = load i16, ptr %83, align 4
  %85 = zext i16 %84 to i32
  tail call void @dma_sync_single_for_device(ptr noundef %82, i32 noundef %78, i32 noundef %85, i32 noundef 0) #21
  br label %86

86:                                               ; preds = %66, %49
  %87 = phi i32 [ 1, %66 ], [ 2, %49 ]
  %88 = phi i32 [ %78, %66 ], [ %56, %49 ]
  store i32 %87, ptr %25, align 4
  %89 = getelementptr %struct.mvneta_tx_buf, ptr %22, i32 %24, i32 1
  store ptr %2, ptr %89, align 4
  store i32 3670016, ptr %20, align 4
  %90 = getelementptr %struct.mvneta_tx_desc, ptr %19, i32 %12, i32 3
  store i32 %88, ptr %90, align 4
  %91 = getelementptr inbounds %struct.xdp_frame, ptr %2, i32 0, i32 1
  %92 = load i16, ptr %91, align 4
  %93 = getelementptr %struct.mvneta_tx_desc, ptr %19, i32 %12, i32 2
  store i16 %92, ptr %93, align 2
  %94 = load i32, ptr %23, align 4
  %95 = add i32 %94, 1
  %96 = getelementptr inbounds %struct.mvneta_tx_queue, ptr %1, i32 0, i32 1
  %97 = load i32, ptr %96, align 4
  %98 = icmp eq i32 %95, %97
  %99 = select i1 %98, i32 0, i32 %95
  store i32 %99, ptr %23, align 4
  %100 = getelementptr inbounds %struct.mvneta_tx_queue, ptr %1, i32 0, i32 3
  %101 = load i32, ptr %100, align 4
  %102 = add i32 %101, 1
  store i32 %102, ptr %100, align 4
  %103 = load i32, ptr %5, align 4
  %104 = add i32 %103, 1
  store i32 %104, ptr %5, align 4
  br label %105

105:                                              ; preds = %86, %63, %4
  %106 = phi i32 [ 1, %63 ], [ 2, %86 ], [ 1, %4 ]
  ret i32 %106
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mvneta_ethtool_get_drvinfo(ptr nocapture noundef readonly %0, ptr noundef %1) #13 {
  %3 = getelementptr inbounds %struct.ethtool_drvinfo, ptr %1, i32 0, i32 1
  %4 = tail call i32 @strlcpy(ptr noundef %3, ptr noundef nonnull @.str.2, i32 noundef 32) #21
  %5 = getelementptr inbounds %struct.ethtool_drvinfo, ptr %1, i32 0, i32 2
  %6 = tail call i32 @strlcpy(ptr noundef %5, ptr noundef nonnull @.str.46, i32 noundef 32) #21
  %7 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 111, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 111
  %12 = load ptr, ptr %11, align 4
  br label %13

13:                                               ; preds = %10, %2
  %14 = phi ptr [ %12, %10 ], [ %8, %2 ]
  %15 = getelementptr inbounds %struct.ethtool_drvinfo, ptr %1, i32 0, i32 4
  %16 = tail call i32 @strlcpy(ptr noundef %15, ptr noundef %14, i32 noundef 32) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mvneta_ethtool_get_wol(ptr nocapture noundef readonly %0, ptr noundef %1) #3 {
  %3 = getelementptr i8, ptr %0, i32 1980
  %4 = load ptr, ptr %3, align 4
  tail call void @phylink_ethtool_get_wol(ptr noundef %4, ptr noundef %1) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mvneta_ethtool_set_wol(ptr noundef %0, ptr noundef %1) #3 {
  %3 = getelementptr i8, ptr %0, i32 1980
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @phylink_ethtool_set_wol(ptr noundef %4, ptr noundef %1) #21
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 111
  %9 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %1, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = icmp ne i32 %10, 0
  %12 = tail call i32 @device_set_wakeup_enable(ptr noundef %8, i1 noundef zeroext %11) #21
  br label %13

13:                                               ; preds = %7, %2
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mvneta_ethtool_nway_reset(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr i8, ptr %0, i32 1980
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @phylink_ethtool_nway_reset(ptr noundef %3) #21
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @mvneta_ethtool_get_coalesce(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) #14 {
  %5 = getelementptr i8, ptr %0, i32 1432
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.mvneta_rx_queue, ptr %6, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ethtool_coalesce, ptr %1, i32 0, i32 1
  store i32 %8, ptr %9, align 4
  %10 = load ptr, ptr %5, align 8
  %11 = getelementptr inbounds %struct.mvneta_rx_queue, ptr %10, i32 0, i32 2
  %12 = load i32, ptr %11, align 8
  %13 = getelementptr inbounds %struct.ethtool_coalesce, ptr %1, i32 0, i32 2
  store i32 %12, ptr %13, align 4
  %14 = getelementptr i8, ptr %0, i32 1436
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.mvneta_tx_queue, ptr %15, i32 0, i32 9
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.ethtool_coalesce, ptr %1, i32 0, i32 6
  store i32 %17, ptr %18, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mvneta_ethtool_set_coalesce(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) #3 {
  %5 = load i32, ptr @rxq_number, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %4
  %8 = getelementptr i8, ptr %0, i32 1432
  %9 = getelementptr inbounds %struct.ethtool_coalesce, ptr %1, i32 0, i32 1
  %10 = getelementptr inbounds %struct.ethtool_coalesce, ptr %1, i32 0, i32 2
  %11 = getelementptr i8, ptr %0, i32 1428
  %12 = getelementptr i8, ptr %0, i32 1700
  br label %20

13:                                               ; preds = %20, %4
  %14 = load i32, ptr @txq_number, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %73

16:                                               ; preds = %13
  %17 = getelementptr i8, ptr %0, i32 1436
  %18 = getelementptr inbounds %struct.ethtool_coalesce, ptr %1, i32 0, i32 6
  %19 = getelementptr i8, ptr %0, i32 1428
  br label %48

20:                                               ; preds = %20, %7
  %21 = phi i32 [ 0, %7 ], [ %45, %20 ]
  %22 = load ptr, ptr %8, align 8
  %23 = getelementptr %struct.mvneta_rx_queue, ptr %22, i32 %21
  %24 = load i32, ptr %9, align 4
  %25 = getelementptr %struct.mvneta_rx_queue, ptr %22, i32 %21, i32 3
  store i32 %24, ptr %25, align 4
  %26 = load i32, ptr %10, align 4
  %27 = getelementptr %struct.mvneta_rx_queue, ptr %22, i32 %21, i32 2
  store i32 %26, ptr %27, align 8
  %28 = load i8, ptr %23, align 64
  %29 = zext i8 %28 to i32
  %30 = shl nuw nsw i32 %29, 2
  %31 = add nuw nsw i32 %30, 5312
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %32 = load ptr, ptr %11, align 4
  %33 = getelementptr i8, ptr %32, i32 %31
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %26) #21, !srcloc !15
  %34 = load i32, ptr %25, align 4
  %35 = load ptr, ptr %12, align 4
  %36 = tail call i32 @clk_get_rate(ptr noundef %35) #21
  %37 = udiv i32 %36, 1000000
  %38 = mul i32 %37, %34
  %39 = load i8, ptr %23, align 64
  %40 = zext i8 %39 to i32
  %41 = shl nuw nsw i32 %40, 2
  %42 = add nuw nsw i32 %41, 9600
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %43 = load ptr, ptr %11, align 4
  %44 = getelementptr i8, ptr %43, i32 %42
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %38) #21, !srcloc !15
  %45 = add nuw nsw i32 %21, 1
  %46 = load i32, ptr @rxq_number, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %20, label %13

48:                                               ; preds = %48, %16
  %49 = phi i32 [ 0, %16 ], [ %70, %48 ]
  %50 = load ptr, ptr %17, align 4
  %51 = getelementptr %struct.mvneta_tx_queue, ptr %50, i32 %49
  %52 = load i32, ptr %18, align 4
  %53 = getelementptr %struct.mvneta_tx_queue, ptr %50, i32 %49, i32 9
  store i32 %52, ptr %53, align 4
  %54 = load i8, ptr %51, align 4
  %55 = zext i8 %54 to i32
  %56 = shl nuw nsw i32 %55, 2
  %57 = add nuw nsw i32 %56, 15392
  %58 = load ptr, ptr %19, align 4
  %59 = getelementptr i8, ptr %58, i32 %57
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #21, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !17
  %61 = and i32 %60, -1073676289
  %62 = shl i32 %52, 16
  %63 = or i32 %61, %62
  %64 = load i8, ptr %51, align 4
  %65 = zext i8 %64 to i32
  %66 = shl nuw nsw i32 %65, 2
  %67 = add nuw nsw i32 %66, 15392
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %68 = load ptr, ptr %19, align 4
  %69 = getelementptr i8, ptr %68, i32 %67
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %63) #21, !srcloc !15
  %70 = add nuw nsw i32 %49, 1
  %71 = load i32, ptr @txq_number, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %48, label %73

73:                                               ; preds = %48, %13
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @mvneta_ethtool_get_ringparam(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) #15 {
  %5 = getelementptr inbounds %struct.ethtool_ringparam, ptr %1, i32 0, i32 1
  store i32 512, ptr %5, align 4
  %6 = getelementptr inbounds %struct.ethtool_ringparam, ptr %1, i32 0, i32 4
  store i32 1024, ptr %6, align 4
  %7 = getelementptr i8, ptr %0, i32 1966
  %8 = load i16, ptr %7, align 2
  %9 = zext i16 %8 to i32
  %10 = getelementptr inbounds %struct.ethtool_ringparam, ptr %1, i32 0, i32 5
  store i32 %9, ptr %10, align 4
  %11 = getelementptr i8, ptr %0, i32 1964
  %12 = load i16, ptr %11, align 4
  %13 = zext i16 %12 to i32
  %14 = getelementptr inbounds %struct.ethtool_ringparam, ptr %1, i32 0, i32 8
  store i32 %13, ptr %14, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mvneta_ethtool_set_ringparam(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) #3 {
  %5 = getelementptr inbounds %struct.ethtool_ringparam, ptr %1, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %35, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ethtool_ringparam, ptr %1, i32 0, i32 8
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %35, label %12

12:                                               ; preds = %8
  %13 = tail call i32 @llvm.umin.i32(i32 %6, i32 512)
  %14 = trunc i32 %13 to i16
  %15 = getelementptr i8, ptr %0, i32 1966
  store i16 %14, ptr %15, align 2
  %16 = load i32, ptr %9, align 4
  %17 = and i32 %16, 65535
  %18 = tail call i32 @llvm.umax.i32(i32 %17, i32 434)
  %19 = tail call i32 @llvm.umin.i32(i32 %18, i32 1024)
  %20 = trunc i32 %19 to i16
  %21 = getelementptr i8, ptr %0, i32 1964
  store i16 %20, ptr %21, align 4
  %22 = load i32, ptr %9, align 4
  %23 = icmp eq i32 %19, %22
  br i1 %23, label %25, label %24

24:                                               ; preds = %12
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %0, ptr noundef nonnull @.str.47, i32 noundef %19, i32 noundef %22) #23
  br label %25

25:                                               ; preds = %24, %12
  %26 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %27 = load volatile i32, ptr %26, align 4
  %28 = and i32 %27, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = tail call i32 @mvneta_stop(ptr noundef %0)
  %32 = tail call i32 @mvneta_open(ptr noundef %0)
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.48) #23
  br label %35

35:                                               ; preds = %34, %30, %25, %8, %4
  %36 = phi i32 [ -12, %34 ], [ -22, %8 ], [ -22, %4 ], [ 0, %30 ], [ 0, %25 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mvneta_ethtool_get_pauseparam(ptr nocapture noundef readonly %0, ptr noundef %1) #3 {
  %3 = getelementptr i8, ptr %0, i32 1980
  %4 = load ptr, ptr %3, align 4
  tail call void @phylink_ethtool_get_pauseparam(ptr noundef %4, ptr noundef %1) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mvneta_ethtool_set_pauseparam(ptr nocapture noundef readonly %0, ptr noundef %1) #3 {
  %3 = getelementptr i8, ptr %0, i32 1980
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @phylink_ethtool_set_pauseparam(ptr noundef %4, ptr noundef %1) #21
  ret i32 %5
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mvneta_ethtool_get_strings(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #16 {
  %4 = icmp eq i32 %1, 1
  br i1 %4, label %5, label %12

5:                                                ; preds = %5, %3
  %6 = phi i32 [ %10, %5 ], [ 0, %3 ]
  %7 = shl nuw nsw i32 %6, 5
  %8 = getelementptr i8, ptr %2, i32 %7
  %9 = getelementptr [42 x %struct.mvneta_statistic], ptr @mvneta_statistics, i32 0, i32 %6, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(32) %8, ptr noundef align 2 dereferenceable(32) %9, i32 32, i1 false)
  %10 = add nuw nsw i32 %6, 1
  %11 = icmp eq i32 %10, 42
  br i1 %11, label %12, label %5

12:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mvneta_ethtool_get_stats(ptr nocapture noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #3 {
  %4 = getelementptr i8, ptr %0, i32 1408
  %5 = getelementptr i8, ptr %0, i32 1428
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #22
  %8 = load i32, ptr @nr_cpu_ids, align 4
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %72

10:                                               ; preds = %3
  %11 = getelementptr i8, ptr %0, i32 1416
  br label %12

12:                                               ; preds = %59, %10
  %13 = phi i64 [ 0, %10 ], [ %62, %59 ]
  %14 = phi i64 [ 0, %10 ], [ %63, %59 ]
  %15 = phi i64 [ 0, %10 ], [ %64, %59 ]
  %16 = phi i64 [ 0, %10 ], [ %65, %59 ]
  %17 = phi i64 [ 0, %10 ], [ %66, %59 ]
  %18 = phi i64 [ 0, %10 ], [ %67, %59 ]
  %19 = phi i64 [ 0, %10 ], [ %68, %59 ]
  %20 = phi i64 [ 0, %10 ], [ %60, %59 ]
  %21 = phi i64 [ 0, %10 ], [ %61, %59 ]
  %22 = phi i32 [ %7, %10 ], [ %69, %59 ]
  %23 = load ptr, ptr %11, align 8
  %24 = ptrtoint ptr %23 to i32
  %25 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %22
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, %24
  %28 = inttoptr i32 %27 to ptr
  %29 = getelementptr inbounds %struct.mvneta_pcpu_stats, ptr %28, i32 0, i32 1, i32 1
  %30 = getelementptr inbounds %struct.mvneta_pcpu_stats, ptr %28, i32 0, i32 1, i32 2
  %31 = getelementptr inbounds %struct.mvneta_pcpu_stats, ptr %28, i32 0, i32 1, i32 0, i32 4
  %32 = getelementptr inbounds %struct.mvneta_pcpu_stats, ptr %28, i32 0, i32 1, i32 0, i32 5
  %33 = getelementptr inbounds %struct.mvneta_pcpu_stats, ptr %28, i32 0, i32 1, i32 0, i32 6
  %34 = getelementptr inbounds %struct.mvneta_pcpu_stats, ptr %28, i32 0, i32 1, i32 0, i32 7
  %35 = getelementptr inbounds %struct.mvneta_pcpu_stats, ptr %28, i32 0, i32 1, i32 0, i32 8
  %36 = getelementptr inbounds %struct.mvneta_pcpu_stats, ptr %28, i32 0, i32 1, i32 0, i32 9
  %37 = getelementptr inbounds %struct.mvneta_pcpu_stats, ptr %28, i32 0, i32 1, i32 0, i32 10
  br label %38

38:                                               ; preds = %46, %12
  %39 = load volatile i32, ptr %28, align 4
  %40 = and i32 %39, 1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %42, %38
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !33
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #21, !srcloc !34
  %43 = load volatile i32, ptr %28, align 4
  %44 = and i32 %43, 1
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %42

46:                                               ; preds = %42, %38
  %47 = phi i32 [ %39, %38 ], [ %43, %42 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !35
  %48 = load i64, ptr %29, align 8
  %49 = load i64, ptr %30, align 8
  %50 = load i64, ptr %31, align 8
  %51 = load i64, ptr %32, align 8
  %52 = load i64, ptr %33, align 8
  %53 = load i64, ptr %34, align 8
  %54 = load i64, ptr %35, align 8
  %55 = load i64, ptr %36, align 8
  %56 = load i64, ptr %37, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !36
  %57 = load volatile i32, ptr %28, align 4
  %58 = icmp eq i32 %57, %47
  br i1 %58, label %59, label %38

59:                                               ; preds = %46
  %60 = add i64 %48, %20
  %61 = add i64 %49, %21
  %62 = add i64 %50, %13
  %63 = add i64 %51, %14
  %64 = add i64 %52, %15
  %65 = add i64 %53, %16
  %66 = add i64 %54, %17
  %67 = add i64 %55, %18
  %68 = add i64 %56, %19
  %69 = tail call i32 @cpumask_next(i32 noundef %22, ptr noundef nonnull @__cpu_possible_mask) #22
  %70 = load i32, ptr @nr_cpu_ids, align 4
  %71 = icmp ult i32 %69, %70
  br i1 %71, label %12, label %72

72:                                               ; preds = %59, %3
  %73 = phi i64 [ 0, %3 ], [ %62, %59 ]
  %74 = phi i64 [ 0, %3 ], [ %63, %59 ]
  %75 = phi i64 [ 0, %3 ], [ %64, %59 ]
  %76 = phi i64 [ 0, %3 ], [ %65, %59 ]
  %77 = phi i64 [ 0, %3 ], [ %66, %59 ]
  %78 = phi i64 [ 0, %3 ], [ %67, %59 ]
  %79 = phi i64 [ 0, %3 ], [ %68, %59 ]
  %80 = phi i64 [ 0, %3 ], [ %60, %59 ]
  %81 = phi i64 [ 0, %3 ], [ %61, %59 ]
  %82 = getelementptr i8, ptr %0, i32 1980
  %83 = getelementptr i8, ptr %6, i32 4
  br label %84

84:                                               ; preds = %141, %72
  %85 = phi ptr [ @mvneta_statistics, %72 ], [ %142, %141 ]
  %86 = phi i32 [ 0, %72 ], [ %143, %141 ]
  %87 = getelementptr inbounds %struct.mvneta_statistic, ptr %85, i32 0, i32 1
  %88 = load i16, ptr %87, align 2
  switch i16 %88, label %141 [
    i16 32, label %89
    i16 64, label %98
    i16 1, label %114
  ]

89:                                               ; preds = %84
  %90 = load i16, ptr %85, align 2
  %91 = zext i16 %90 to i32
  %92 = getelementptr i8, ptr %6, i32 %91
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %92) #21, !srcloc !16
  %94 = zext i32 %93 to i64
  %95 = getelementptr %struct.mvneta_port, ptr %4, i32 0, i32 36, i32 %86
  %96 = load i64, ptr %95, align 8
  %97 = add i64 %96, %94
  store i64 %97, ptr %95, align 8
  br label %141

98:                                               ; preds = %84
  %99 = load i16, ptr %85, align 2
  %100 = zext i16 %99 to i32
  %101 = getelementptr i8, ptr %6, i32 %100
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %101) #21, !srcloc !16
  %103 = load i16, ptr %85, align 2
  %104 = zext i16 %103 to i32
  %105 = getelementptr i8, ptr %83, i32 %104
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %105) #21, !srcloc !16
  %107 = zext i32 %106 to i64
  %108 = shl nuw i64 %107, 32
  %109 = zext i32 %102 to i64
  %110 = getelementptr %struct.mvneta_port, ptr %4, i32 0, i32 36, i32 %86
  %111 = load i64, ptr %110, align 8
  %112 = add i64 %111, %109
  %113 = add i64 %112, %108
  store i64 %113, ptr %110, align 8
  br label %141

114:                                              ; preds = %84
  %115 = load i16, ptr %85, align 2
  switch i16 %115, label %141 [
    i16 0, label %116
    i16 1, label %123
    i16 2, label %125
    i16 3, label %127
    i16 4, label %129
    i16 5, label %131
    i16 6, label %133
    i16 7, label %135
    i16 8, label %137
    i16 9, label %139
  ]

116:                                              ; preds = %114
  %117 = load ptr, ptr %82, align 4
  %118 = tail call i32 @phylink_get_eee_err(ptr noundef %117) #21
  %119 = sext i32 %118 to i64
  %120 = getelementptr %struct.mvneta_port, ptr %4, i32 0, i32 36, i32 %86
  %121 = load i64, ptr %120, align 8
  %122 = add i64 %121, %119
  store i64 %122, ptr %120, align 8
  br label %141

123:                                              ; preds = %114
  %124 = getelementptr %struct.mvneta_port, ptr %4, i32 0, i32 36, i32 %86
  store i64 %80, ptr %124, align 8
  br label %141

125:                                              ; preds = %114
  %126 = getelementptr %struct.mvneta_port, ptr %4, i32 0, i32 36, i32 %86
  store i64 %81, ptr %126, align 8
  br label %141

127:                                              ; preds = %114
  %128 = getelementptr %struct.mvneta_port, ptr %4, i32 0, i32 36, i32 %86
  store i64 %73, ptr %128, align 8
  br label %141

129:                                              ; preds = %114
  %130 = getelementptr %struct.mvneta_port, ptr %4, i32 0, i32 36, i32 %86
  store i64 %74, ptr %130, align 8
  br label %141

131:                                              ; preds = %114
  %132 = getelementptr %struct.mvneta_port, ptr %4, i32 0, i32 36, i32 %86
  store i64 %75, ptr %132, align 8
  br label %141

133:                                              ; preds = %114
  %134 = getelementptr %struct.mvneta_port, ptr %4, i32 0, i32 36, i32 %86
  store i64 %78, ptr %134, align 8
  br label %141

135:                                              ; preds = %114
  %136 = getelementptr %struct.mvneta_port, ptr %4, i32 0, i32 36, i32 %86
  store i64 %79, ptr %136, align 8
  br label %141

137:                                              ; preds = %114
  %138 = getelementptr %struct.mvneta_port, ptr %4, i32 0, i32 36, i32 %86
  store i64 %76, ptr %138, align 8
  br label %141

139:                                              ; preds = %114
  %140 = getelementptr %struct.mvneta_port, ptr %4, i32 0, i32 36, i32 %86
  store i64 %77, ptr %140, align 8
  br label %141

141:                                              ; preds = %139, %137, %135, %133, %131, %129, %127, %125, %123, %116, %114, %98, %89, %84
  %142 = getelementptr %struct.mvneta_statistic, ptr %85, i32 1
  %143 = add nuw nsw i32 %86, 1
  %144 = icmp eq i32 %143, 42
  br i1 %144, label %145, label %84

145:                                              ; preds = %145, %141
  %146 = phi i32 [ %151, %145 ], [ 0, %141 ]
  %147 = phi ptr [ %150, %145 ], [ %2, %141 ]
  %148 = getelementptr %struct.mvneta_port, ptr %4, i32 0, i32 36, i32 %146
  %149 = load i64, ptr %148, align 8
  %150 = getelementptr i64, ptr %147, i32 1
  store i64 %149, ptr %147, align 8
  %151 = add nuw nsw i32 %146, 1
  %152 = icmp eq i32 %151, 42
  br i1 %152, label %153, label %145

153:                                              ; preds = %145
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @mvneta_ethtool_get_sset_count(ptr nocapture noundef readnone %0, i32 noundef %1) #17 {
  %3 = icmp eq i32 %1, 1
  %4 = select i1 %3, i32 42, i32 -95
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @mvneta_ethtool_get_rxnfc(ptr nocapture noundef readnone %0, ptr nocapture noundef %1, ptr nocapture noundef readnone %2) #14 {
  %4 = load i32, ptr %1, align 8
  %5 = icmp eq i32 %4, 45
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  %7 = load i32, ptr @rxq_number, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %1, i32 0, i32 2
  store i64 %8, ptr %9, align 8
  br label %10

10:                                               ; preds = %6, %3
  %11 = phi i32 [ 0, %6 ], [ -95, %3 ]
  ret i32 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @mvneta_ethtool_get_rxfh_indir_size(ptr nocapture noundef readnone %0) #17 {
  ret i32 1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @mvneta_ethtool_get_rxfh(ptr nocapture noundef readonly %0, ptr noundef writeonly %1, ptr nocapture noundef readnone %2, ptr noundef writeonly %3) #15 {
  %5 = getelementptr i8, ptr %0, i32 2380
  %6 = load i8, ptr %5, align 4, !range !9
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %4
  %9 = icmp eq ptr %3, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %8
  store i8 1, ptr %3, align 1
  br label %11

11:                                               ; preds = %10, %8
  %12 = icmp eq ptr %1, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %11
  %14 = getelementptr i8, ptr %0, i32 2376
  %15 = load i8, ptr %14, align 8
  store i8 %15, ptr %1, align 4
  br label %16

16:                                               ; preds = %13, %11, %4
  %17 = phi i32 [ 0, %13 ], [ -95, %4 ], [ 0, %11 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mvneta_ethtool_set_rxfh(ptr noundef %0, ptr noundef readonly %1, ptr noundef readnone %2, i8 noundef zeroext %3) #3 {
  %5 = getelementptr i8, ptr %0, i32 1408
  %6 = getelementptr i8, ptr %0, i32 2380
  %7 = load i8, ptr %6, align 4, !range !9
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %117

9:                                                ; preds = %4
  %10 = icmp ne ptr %2, null
  %11 = icmp ugt i8 %3, 1
  %12 = or i1 %10, %11
  br i1 %12, label %117, label %13

13:                                               ; preds = %9
  %14 = icmp eq ptr %1, null
  br i1 %14, label %117, label %15

15:                                               ; preds = %13
  %16 = getelementptr i8, ptr %0, i32 2376
  %17 = load i8, ptr %1, align 4
  store i8 %17, ptr %16, align 8
  %18 = getelementptr i8, ptr %0, i32 1440
  %19 = load ptr, ptr %18, align 8
  tail call void @netif_tx_stop_all_queues(ptr noundef %19) #21
  tail call void @on_each_cpu_cond_mask(ptr noundef null, ptr noundef nonnull @mvneta_percpu_mask_interrupt, ptr noundef %5, i1 noundef zeroext true, ptr noundef nonnull @__cpu_online_mask) #21
  %20 = load i8, ptr %6, align 4, !range !9
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %49

22:                                               ; preds = %15
  %23 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #22
  %24 = load i32, ptr @nr_cpu_ids, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %60

26:                                               ; preds = %22
  %27 = getelementptr i8, ptr %0, i32 1412
  br label %28

28:                                               ; preds = %45, %26
  %29 = phi i32 [ %23, %26 ], [ %46, %45 ]
  %30 = load ptr, ptr %27, align 4
  %31 = ptrtoint ptr %30 to i32
  %32 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %29
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, %31
  %35 = inttoptr i32 %34 to ptr
  %36 = getelementptr inbounds %struct.mvneta_pcpu_port, ptr %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.mvneta_pcpu_port, ptr %35, i32 0, i32 1, i32 1
  %38 = load volatile i32, ptr %37, align 4
  %39 = and i32 %38, 1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %41, %28
  tail call void @msleep(i32 noundef 1) #21
  %42 = load volatile i32, ptr %37, align 4
  %43 = and i32 %42, 1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %41

45:                                               ; preds = %41, %28
  tail call void @napi_disable(ptr noundef %36) #21
  %46 = tail call i32 @cpumask_next(i32 noundef %29, ptr noundef nonnull @__cpu_online_mask) #22
  %47 = load i32, ptr @nr_cpu_ids, align 4
  %48 = icmp ult i32 %46, %47
  br i1 %48, label %28, label %60

49:                                               ; preds = %15
  %50 = getelementptr i8, ptr %0, i32 1480
  %51 = getelementptr i8, ptr %0, i32 1488
  %52 = load volatile i32, ptr %51, align 4
  %53 = and i32 %52, 1
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %55, %49
  tail call void @msleep(i32 noundef 1) #21
  %56 = load volatile i32, ptr %51, align 4
  %57 = and i32 %56, 1
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %55

59:                                               ; preds = %55, %49
  tail call void @napi_disable(ptr noundef %50) #21
  br label %60

60:                                               ; preds = %59, %45, %22
  %61 = load i32, ptr %16, align 8
  %62 = getelementptr i8, ptr %0, i32 1460
  store i32 %61, ptr %62, align 4
  %63 = load ptr, ptr %18, align 8
  tail call void @mvneta_set_rx_mode(ptr noundef %63) #21
  %64 = load i32, ptr %62, align 4
  %65 = shl i32 %64, 1
  %66 = shl i32 %64, 4
  %67 = shl i32 %64, 16
  %68 = shl i32 %64, 19
  %69 = shl i32 %64, 22
  %70 = or i32 %65, %66
  %71 = or i32 %70, %67
  %72 = or i32 %71, %68
  %73 = or i32 %72, %69
  %74 = or i32 %73, 33558528
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %75 = getelementptr i8, ptr %0, i32 1428
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr i8, ptr %76, i32 9216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 %74) #21, !srcloc !15
  %78 = getelementptr i8, ptr %0, i32 1464
  tail call void @_raw_spin_lock(ptr noundef %78) #21
  tail call fastcc void @mvneta_percpu_elect(ptr noundef %5) #21
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !10
  %79 = load i16, ptr %78, align 4
  %80 = add i16 %79, 1
  store i16 %80, ptr %78, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !13
  %81 = load i8, ptr %6, align 4, !range !9
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %83, label %101

83:                                               ; preds = %60
  %84 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #22
  %85 = load i32, ptr @nr_cpu_ids, align 4
  %86 = icmp ult i32 %84, %85
  br i1 %86, label %87, label %103

87:                                               ; preds = %83
  %88 = getelementptr i8, ptr %0, i32 1412
  br label %89

89:                                               ; preds = %89, %87
  %90 = phi i32 [ %84, %87 ], [ %98, %89 ]
  %91 = load ptr, ptr %88, align 4
  %92 = ptrtoint ptr %91 to i32
  %93 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %90
  %94 = load i32, ptr %93, align 4
  %95 = add i32 %94, %92
  %96 = inttoptr i32 %95 to ptr
  %97 = getelementptr inbounds %struct.mvneta_pcpu_port, ptr %96, i32 0, i32 1
  tail call void @napi_enable(ptr noundef %97) #21
  %98 = tail call i32 @cpumask_next(i32 noundef %90, ptr noundef nonnull @__cpu_online_mask) #22
  %99 = load i32, ptr @nr_cpu_ids, align 4
  %100 = icmp ult i32 %98, %99
  br i1 %100, label %89, label %103

101:                                              ; preds = %60
  %102 = getelementptr i8, ptr %0, i32 1480
  tail call void @napi_enable(ptr noundef %102) #21
  br label %103

103:                                              ; preds = %101, %89, %83
  %104 = load ptr, ptr %18, align 8
  %105 = getelementptr inbounds %struct.net_device, ptr %104, i32 0, i32 88
  %106 = load i32, ptr %105, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %117, label %108

108:                                              ; preds = %103
  %109 = getelementptr inbounds %struct.net_device, ptr %104, i32 0, i32 87
  br label %110

110:                                              ; preds = %110, %108
  %111 = phi i32 [ 0, %108 ], [ %114, %110 ]
  %112 = load ptr, ptr %109, align 64
  %113 = getelementptr %struct.netdev_queue, ptr %112, i32 %111, i32 12
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %113) #21
  %114 = add nuw i32 %111, 1
  %115 = load i32, ptr %105, align 4
  %116 = icmp ult i32 %114, %115
  br i1 %116, label %110, label %117

117:                                              ; preds = %110, %103, %13, %9, %4
  %118 = phi i32 [ -95, %4 ], [ -95, %9 ], [ 0, %13 ], [ 0, %103 ], [ 0, %110 ]
  ret i32 %118
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mvneta_ethtool_get_eee(ptr nocapture noundef readonly %0, ptr noundef %1) #3 {
  %3 = getelementptr i8, ptr %0, i32 1428
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 11456
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #21, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !17
  %7 = getelementptr i8, ptr %0, i32 2036
  %8 = load i8, ptr %7, align 4, !range !9
  %9 = zext i8 %8 to i32
  %10 = getelementptr inbounds %struct.ethtool_eee, ptr %1, i32 0, i32 5
  store i32 %9, ptr %10, align 4
  %11 = getelementptr i8, ptr %0, i32 2037
  %12 = load i8, ptr %11, align 1, !range !9
  %13 = zext i8 %12 to i32
  %14 = getelementptr inbounds %struct.ethtool_eee, ptr %1, i32 0, i32 4
  store i32 %13, ptr %14, align 4
  %15 = getelementptr i8, ptr %0, i32 2038
  %16 = load i8, ptr %15, align 2, !range !9
  %17 = zext i8 %16 to i32
  %18 = getelementptr inbounds %struct.ethtool_eee, ptr %1, i32 0, i32 6
  store i32 %17, ptr %18, align 4
  %19 = lshr i32 %6, 8
  %20 = getelementptr inbounds %struct.ethtool_eee, ptr %1, i32 0, i32 7
  store i32 %19, ptr %20, align 4
  %21 = getelementptr i8, ptr %0, i32 1980
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 @phylink_ethtool_get_eee(ptr noundef %22, ptr noundef %1) #21
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mvneta_ethtool_set_eee(ptr nocapture noundef %0, ptr noundef %1) #3 {
  %3 = getelementptr inbounds %struct.ethtool_eee, ptr %1, i32 0, i32 6
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ethtool_eee, ptr %1, i32 0, i32 7
  %8 = load i32, ptr %7, align 4
  %9 = icmp ugt i32 %8, 255
  br i1 %9, label %49, label %10

10:                                               ; preds = %6, %2
  %11 = getelementptr i8, ptr %0, i32 1428
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 11456
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #21, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !17
  %15 = and i32 %14, -65281
  %16 = getelementptr inbounds %struct.ethtool_eee, ptr %1, i32 0, i32 7
  %17 = load i32, ptr %16, align 4
  %18 = shl i32 %17, 8
  %19 = or i32 %18, %15
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %20 = load ptr, ptr %11, align 4
  %21 = getelementptr i8, ptr %20, i32 11456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #21, !srcloc !15
  %22 = getelementptr inbounds %struct.ethtool_eee, ptr %1, i32 0, i32 5
  %23 = load i32, ptr %22, align 4
  %24 = icmp ne i32 %23, 0
  %25 = getelementptr i8, ptr %0, i32 2036
  %26 = zext i1 %24 to i8
  store i8 %26, ptr %25, align 4
  %27 = load i32, ptr %3, align 4
  %28 = icmp ne i32 %27, 0
  %29 = getelementptr i8, ptr %0, i32 2038
  %30 = zext i1 %28 to i8
  store i8 %30, ptr %29, align 2
  %31 = load i32, ptr %3, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %10
  %34 = load i32, ptr %22, align 4
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i32
  br label %37

37:                                               ; preds = %33, %10
  %38 = phi i32 [ 0, %10 ], [ %36, %33 ]
  %39 = load ptr, ptr %11, align 4
  %40 = getelementptr i8, ptr %39, i32 11460
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #21, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !17
  %42 = and i32 %41, -2
  %43 = or i32 %42, %38
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %44 = load ptr, ptr %11, align 4
  %45 = getelementptr i8, ptr %44, i32 11460
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %43) #21, !srcloc !15
  %46 = getelementptr i8, ptr %0, i32 1980
  %47 = load ptr, ptr %46, align 4
  %48 = tail call i32 @phylink_ethtool_set_eee(ptr noundef %47, ptr noundef %1) #21
  br label %49

49:                                               ; preds = %37, %6
  %50 = phi i32 [ %48, %37 ], [ -22, %6 ]
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mvneta_ethtool_get_link_ksettings(ptr nocapture noundef readonly %0, ptr noundef %1) #3 {
  %3 = getelementptr i8, ptr %0, i32 1980
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @phylink_ethtool_ksettings_get(ptr noundef %4, ptr noundef %1) #21
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mvneta_ethtool_set_link_ksettings(ptr nocapture noundef readonly %0, ptr noundef %1) #3 {
  %3 = getelementptr i8, ptr %0, i32 1980
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @phylink_ethtool_ksettings_set(ptr noundef %4, ptr noundef %1) #21
  ret i32 %5
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #18

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_ethtool_set_wol(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_ethtool_nway_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_ethtool_get_pauseparam(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_ethtool_set_pauseparam(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_get_eee_err(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_ethtool_get_eee(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_ethtool_set_eee(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_ethtool_ksettings_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_ethtool_ksettings_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @mvneta_pcs_validate(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr noundef %2) #19 {
  %4 = getelementptr inbounds %struct.phylink_link_state, ptr %2, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, -21
  %7 = icmp ult i32 %6, 2
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  %9 = load volatile i32, ptr %2, align 4
  %10 = and i32 %9, 64
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %8, %3
  br label %13

13:                                               ; preds = %12, %8
  %14 = phi i32 [ 0, %12 ], [ -22, %8 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mvneta_pcs_get_state(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #3 {
  %3 = getelementptr i8, ptr %0, i32 -580
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 11280
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #21, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !17
  %7 = and i32 %6, 2
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.phylink_link_state, ptr %1, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 22
  %13 = select i1 %12, i32 2500, i32 1000
  %14 = getelementptr inbounds %struct.phylink_link_state, ptr %1, i32 0, i32 3
  store i32 %13, ptr %14, align 4
  br label %21

15:                                               ; preds = %2
  %16 = and i32 %6, 4
  %17 = icmp eq i32 %16, 0
  %18 = getelementptr inbounds %struct.phylink_link_state, ptr %1, i32 0, i32 3
  br i1 %17, label %20, label %19

19:                                               ; preds = %15
  store i32 100, ptr %18, align 4
  br label %21

20:                                               ; preds = %15
  store i32 10, ptr %18, align 4
  br label %21

21:                                               ; preds = %20, %19, %9
  %22 = getelementptr inbounds %struct.phylink_link_state, ptr %1, i32 0, i32 6
  %23 = load i8, ptr %22, align 4
  %24 = lshr i32 %6, 9
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 4
  %27 = and i8 %23, -6
  %28 = trunc i32 %6 to i8
  %29 = and i8 %28, 1
  %30 = or i8 %26, %29
  %31 = or i8 %30, %27
  store i8 %31, ptr %22, align 4
  %32 = lshr i32 %6, 3
  %33 = and i32 %32, 1
  %34 = getelementptr inbounds %struct.phylink_link_state, ptr %1, i32 0, i32 4
  store i32 %33, ptr %34, align 4
  %35 = and i32 %6, 16
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %21
  %38 = getelementptr inbounds %struct.phylink_link_state, ptr %1, i32 0, i32 5
  %39 = load i32, ptr %38, align 4
  %40 = or i32 %39, 1
  store i32 %40, ptr %38, align 4
  br label %41

41:                                               ; preds = %37, %21
  %42 = and i32 %6, 32
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.phylink_link_state, ptr %1, i32 0, i32 5
  %46 = load i32, ptr %45, align 4
  %47 = or i32 %46, 2
  store i32 %47, ptr %45, align 4
  br label %48

48:                                               ; preds = %44, %41
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mvneta_pcs_config(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i1 noundef zeroext %4) #3 {
  %6 = icmp eq i32 %1, 2
  br i1 %6, label %7, label %15

7:                                                ; preds = %5
  %8 = icmp eq i32 %2, 4
  br i1 %8, label %15, label %9

9:                                                ; preds = %7
  %10 = select i1 %4, i32 6212, i32 4164
  %11 = load volatile i32, ptr %3, align 4
  %12 = lshr i32 %11, 4
  %13 = and i32 %12, 512
  %14 = or i32 %13, %10
  br label %15

15:                                               ; preds = %9, %7, %5
  %16 = phi i32 [ -14581, %7 ], [ -10389, %5 ], [ -15093, %9 ]
  %17 = phi i32 [ 8324, %7 ], [ 0, %5 ], [ %14, %9 ]
  %18 = getelementptr i8, ptr %0, i32 -580
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %19, i32 11276
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #21, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !17
  %22 = and i32 %21, %16
  %23 = or i32 %22, %17
  %24 = xor i32 %23, %21
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %15
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %27 = load ptr, ptr %18, align 4
  %28 = getelementptr i8, ptr %27, i32 11276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %23) #21, !srcloc !15
  br label %29

29:                                               ; preds = %26, %15
  %30 = lshr i32 %24, 9
  %31 = and i32 %30, 1
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mvneta_pcs_an_restart(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr i8, ptr %0, i32 -580
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 11276
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #21, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !17
  %6 = or i32 %5, 16
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr i8, ptr %7, i32 11276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #21, !srcloc !15
  %9 = and i32 %5, -17
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %10 = load ptr, ptr %2, align 4
  %11 = getelementptr i8, ptr %10, i32 11276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #21, !srcloc !15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mvebu_mbus_get_io_win_info(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mvneta_defaults_set(ptr noundef %0) unnamed_addr #3 {
  %2 = load i32, ptr @__cpu_present_mask, align 4
  %3 = and i32 %2, 65535
  %4 = tail call i32 @__sw_hweight32(i32 noundef %3) #21
  tail call void @on_each_cpu_cond_mask(ptr noundef null, ptr noundef nonnull @mvneta_percpu_clear_intr_cause, ptr noundef %0, i1 noundef zeroext true, ptr noundef nonnull @__cpu_online_mask) #21
  tail call void @on_each_cpu_cond_mask(ptr noundef null, ptr noundef nonnull @mvneta_percpu_mask_interrupt, ptr noundef %0, i1 noundef zeroext true, ptr noundef nonnull @__cpu_online_mask) #21
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %5 = getelementptr inbounds %struct.mvneta_port, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 9656
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 0) #21, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %8 = load ptr, ptr %5, align 4
  %9 = getelementptr i8, ptr %8, i32 8208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 32) #21, !srcloc !15
  %10 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_present_mask) #22
  %11 = load i32, ptr @nr_cpu_ids, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %64

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.mvneta_port, ptr %0, i32 0, i32 38
  %15 = getelementptr inbounds %struct.mvneta_port, ptr %0, i32 0, i32 11
  br label %16

16:                                               ; preds = %53, %13
  %17 = phi i32 [ %10, %13 ], [ %61, %53 ]
  %18 = load i8, ptr %14, align 4, !range !9
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %53

20:                                               ; preds = %16
  %21 = load i32, ptr @rxq_number, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %27, %20
  %24 = phi i32 [ 0, %20 ], [ %34, %27 ]
  %25 = load i32, ptr @txq_number, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %37, label %53

27:                                               ; preds = %27, %20
  %28 = phi i32 [ %35, %27 ], [ 0, %20 ]
  %29 = phi i32 [ %34, %27 ], [ 0, %20 ]
  %30 = srem i32 %28, %4
  %31 = icmp eq i32 %30, %17
  %32 = shl nuw i32 1, %28
  %33 = select i1 %31, i32 %32, i32 0
  %34 = or i32 %33, %29
  %35 = add nuw nsw i32 %28, 1
  %36 = icmp eq i32 %35, %21
  br i1 %36, label %23, label %27

37:                                               ; preds = %37, %23
  %38 = phi i32 [ %45, %37 ], [ 0, %23 ]
  %39 = phi i32 [ %44, %37 ], [ 0, %23 ]
  %40 = srem i32 %38, %4
  %41 = icmp eq i32 %40, %17
  %42 = shl i32 256, %38
  %43 = select i1 %41, i32 %42, i32 0
  %44 = or i32 %43, %39
  %45 = add nuw nsw i32 %38, 1
  %46 = icmp eq i32 %45, %25
  br i1 %46, label %47, label %37

47:                                               ; preds = %37
  %48 = icmp eq i32 %25, 1
  br i1 %48, label %49, label %53

49:                                               ; preds = %47
  %50 = load i32, ptr %15, align 4
  %51 = icmp eq i32 %17, %50
  %52 = select i1 %51, i32 512, i32 0
  br label %53

53:                                               ; preds = %49, %47, %23, %16
  %54 = phi i32 [ %24, %49 ], [ %24, %47 ], [ 255, %16 ], [ %24, %23 ]
  %55 = phi i32 [ %52, %49 ], [ %44, %47 ], [ 65280, %16 ], [ 0, %23 ]
  %56 = shl i32 %17, 2
  %57 = add i32 %56, 9536
  %58 = or i32 %55, %54
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %59 = load ptr, ptr %5, align 4
  %60 = getelementptr i8, ptr %59, i32 %57
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %58) #21, !srcloc !15
  %61 = tail call i32 @cpumask_next(i32 noundef %17, ptr noundef nonnull @__cpu_present_mask) #22
  %62 = load i32, ptr @nr_cpu_ids, align 4
  %63 = icmp ult i32 %61, %62
  br i1 %63, label %16, label %64

64:                                               ; preds = %53, %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %65 = load ptr, ptr %5, align 4
  %66 = getelementptr i8, ptr %65, i32 7360
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 1) #21, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %67 = load ptr, ptr %5, align 4
  %68 = getelementptr i8, ptr %67, i32 15600
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 1) #21, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %69 = load ptr, ptr %5, align 4
  %70 = getelementptr i8, ptr %69, i32 9444
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 0) #21, !srcloc !15
  %71 = load i32, ptr @txq_number, align 4
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %85

73:                                               ; preds = %73, %64
  %74 = phi i32 [ %82, %73 ], [ 0, %64 ]
  %75 = shl i32 %74, 4
  %76 = add i32 %75, 9984
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %77 = load ptr, ptr %5, align 4
  %78 = getelementptr i8, ptr %77, i32 %76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 0) #21, !srcloc !15
  %79 = add i32 %75, 9988
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %80 = load ptr, ptr %5, align 4
  %81 = getelementptr i8, ptr %80, i32 %79
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 0) #21, !srcloc !15
  %82 = add nuw nsw i32 %74, 1
  %83 = load i32, ptr @txq_number, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %73, label %85

85:                                               ; preds = %73, %64
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %86 = load ptr, ptr %5, align 4
  %87 = getelementptr i8, ptr %86, i32 15600
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 0) #21, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %88 = load ptr, ptr %5, align 4
  %89 = getelementptr i8, ptr %88, i32 7360
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %89, i32 0) #21, !srcloc !15
  %90 = getelementptr inbounds %struct.mvneta_port, ptr %0, i32 0, i32 29
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, null
  %93 = select i1 %92, i32 1, i32 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %94 = load ptr, ptr %5, align 4
  %95 = getelementptr i8, ptr %94, i32 9472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %95, i32 %93) #21, !srcloc !15
  %96 = load ptr, ptr %90, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %103, label %98

98:                                               ; preds = %85
  %99 = getelementptr inbounds %struct.mvneta_bm, ptr %96, i32 0, i32 5
  %100 = load i32, ptr %99, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %101 = load ptr, ptr %5, align 4
  %102 = getelementptr i8, ptr %101, i32 9476
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %102, i32 %100) #21, !srcloc !15
  br label %103

103:                                              ; preds = %98, %85
  %104 = getelementptr inbounds %struct.mvneta_port, ptr %0, i32 0, i32 11
  %105 = load i32, ptr %104, align 4
  %106 = shl i32 %105, 1
  %107 = shl i32 %105, 4
  %108 = shl i32 %105, 16
  %109 = shl i32 %105, 19
  %110 = shl i32 %105, 22
  %111 = or i32 %107, %106
  %112 = or i32 %111, %108
  %113 = or i32 %112, %109
  %114 = or i32 %113, %110
  %115 = or i32 %114, 33558528
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %116 = load ptr, ptr %5, align 4
  %117 = getelementptr i8, ptr %116, i32 9216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %117, i32 %115) #21, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %118 = load ptr, ptr %5, align 4
  %119 = getelementptr i8, ptr %118, i32 9220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %119, i32 0) #21, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %120 = load ptr, ptr %5, align 4
  %121 = getelementptr i8, ptr %120, i32 9340
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %121, i32 64) #21, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %122 = load ptr, ptr %5, align 4
  %123 = getelementptr i8, ptr %122, i32 9244
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %123, i32 16777272) #21, !srcloc !15
  %124 = load ptr, ptr %5, align 4
  %125 = getelementptr i8, ptr %124, i32 8368
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %125) #21, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !17
  %127 = and i32 %126, -3
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %128 = load ptr, ptr %5, align 4
  %129 = getelementptr i8, ptr %128, i32 8368
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %129, i32 %127) #21, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %130 = load ptr, ptr %5, align 4
  %131 = getelementptr i8, ptr %130, i32 13824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %131, i32 0) #21, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %132 = load ptr, ptr %5, align 4
  %133 = getelementptr i8, ptr %132, i32 13828
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %133, i32 0) #21, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %134 = load ptr, ptr %5, align 4
  %135 = getelementptr i8, ptr %134, i32 13832
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %135, i32 0) #21, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %136 = load ptr, ptr %5, align 4
  %137 = getelementptr i8, ptr %136, i32 13836
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %137, i32 0) #21, !srcloc !15
  br label %138

138:                                              ; preds = %138, %103
  %139 = phi i32 [ 0, %103 ], [ %143, %138 ]
  %140 = add nuw nsw i32 %139, 13312
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %141 = load ptr, ptr %5, align 4
  %142 = getelementptr i8, ptr %141, i32 %140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %142, i32 0) #21, !srcloc !15
  %143 = add nuw nsw i32 %139, 4
  %144 = icmp ult i32 %139, 249
  br i1 %144, label %138, label %145

145:                                              ; preds = %138
  %146 = getelementptr inbounds %struct.mvneta_port, ptr %0, i32 0, i32 19
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(256) %146, i8 0, i32 256, i1 false) #21
  br label %147

147:                                              ; preds = %147, %145
  %148 = phi i32 [ 0, %145 ], [ %152, %147 ]
  %149 = add nuw nsw i32 %148, 13568
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %150 = load ptr, ptr %5, align 4
  %151 = getelementptr i8, ptr %150, i32 %149
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %151, i32 0) #21, !srcloc !15
  %152 = add nuw nsw i32 %148, 4
  %153 = icmp ult i32 %148, 249
  br i1 %153, label %147, label %154

154:                                              ; preds = %147
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %155 = load ptr, ptr %5, align 4
  %156 = getelementptr i8, ptr %155, i32 9656
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %156, i32 65535) #21, !srcloc !15
  br label %157

157:                                              ; preds = %157, %154
  %158 = phi i32 [ 0, %154 ], [ %163, %157 ]
  %159 = add nuw nsw i32 %158, 12288
  %160 = load ptr, ptr %5, align 4
  %161 = getelementptr i8, ptr %160, i32 %159
  %162 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %161) #21, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !17
  %163 = add nuw nsw i32 %158, 4
  %164 = icmp ult i32 %158, 120
  br i1 %164, label %157, label %165

165:                                              ; preds = %157
  %166 = load ptr, ptr %5, align 4
  %167 = getelementptr i8, ptr %166, i32 9348
  %168 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %167) #21, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !17
  %169 = load ptr, ptr %5, align 4
  %170 = getelementptr i8, ptr %169, i32 9352
  %171 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %170) #21, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_mac_change(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @napi_gro_receive(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @build_skb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mvneta_xdp_put_buff(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #3 {
  %5 = getelementptr inbounds %struct.skb_shared_info, ptr %2, i32 0, i32 2
  %6 = load i8, ptr %5, align 2
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.mvneta_rx_queue, ptr %0, i32 0, i32 4
  br label %10

10:                                               ; preds = %10, %8
  %11 = phi i32 [ 0, %8 ], [ %15, %10 ]
  %12 = load ptr, ptr %9, align 16
  %13 = getelementptr %struct.skb_shared_info, ptr %2, i32 0, i32 12, i32 %11
  %14 = load ptr, ptr %13, align 4
  tail call void @page_pool_put_page(ptr noundef %12, ptr noundef %14, i32 noundef -1, i1 noundef zeroext true) #21
  %15 = add nuw nsw i32 %11, 1
  %16 = load i8, ptr %5, align 2
  %17 = zext i8 %16 to i32
  %18 = icmp ult i32 %15, %17
  br i1 %18, label %10, label %19

19:                                               ; preds = %10, %4
  %20 = getelementptr inbounds %struct.mvneta_rx_queue, ptr %0, i32 0, i32 4
  %21 = load ptr, ptr %20, align 16
  %22 = load ptr, ptr %1, align 4
  %23 = load ptr, ptr @mem_map, align 4
  %24 = ptrtoint ptr %22 to i32
  %25 = add i32 %24, 1073741824
  %26 = lshr i32 %25, 12
  %27 = getelementptr %struct.page, ptr %23, i32 %26, i32 1
  %28 = load volatile i32, ptr %27, align 4
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31, !prof !25

31:                                               ; preds = %19
  %32 = add i32 %28, -1
  br label %36

33:                                               ; preds = %19
  %34 = getelementptr %struct.page, ptr %23, i32 %26
  %35 = ptrtoint ptr %34 to i32
  br label %36

36:                                               ; preds = %33, %31
  %37 = phi i32 [ %32, %31 ], [ %35, %33 ]
  %38 = inttoptr i32 %37 to ptr
  tail call void @page_pool_put_page(ptr noundef %21, ptr noundef %38, i32 noundef %3, i1 noundef zeroext true) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdp_do_flush() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdp_do_redirect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_warn_invalid_xdp_action(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdp_master_redirect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdp_convert_zc_to_xdp_frame(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdp_warn(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xdp_exception(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_add_rx_frag(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mvneta_suspend(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 1408
  %5 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %72, label %9

9:                                                ; preds = %1
  %10 = getelementptr i8, ptr %3, i32 2380
  %11 = load i8, ptr %10, align 4, !range !9
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %9
  %14 = getelementptr i8, ptr %3, i32 1464
  tail call void @_raw_spin_lock(ptr noundef %14) #21
  %15 = getelementptr i8, ptr %3, i32 1468
  store i8 1, ptr %15, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !10
  %16 = load i16, ptr %14, align 4
  %17 = add i16 %16, 1
  store i16 %17, ptr %14, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !13
  %18 = load i32, ptr @online_hpstate, align 4
  %19 = getelementptr i8, ptr %3, i32 1444
  %20 = tail call i32 @__cpuhp_state_remove_instance(i32 noundef %18, ptr noundef %19, i1 noundef zeroext false) #21
  %21 = getelementptr i8, ptr %3, i32 1452
  %22 = tail call i32 @__cpuhp_state_remove_instance(i32 noundef 17, ptr noundef %21, i1 noundef zeroext false) #21
  br label %23

23:                                               ; preds = %13, %9
  tail call void @rtnl_lock() #21
  tail call fastcc void @mvneta_stop_dev(ptr noundef %4)
  tail call void @rtnl_unlock() #21
  %24 = load i32, ptr @rxq_number, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = getelementptr i8, ptr %3, i32 1432
  br label %34

28:                                               ; preds = %34, %23
  %29 = load i32, ptr @txq_number, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %72

31:                                               ; preds = %28
  %32 = getelementptr i8, ptr %3, i32 1436
  %33 = getelementptr i8, ptr %3, i32 1428
  br label %41

34:                                               ; preds = %34, %26
  %35 = phi i32 [ 0, %26 ], [ %38, %34 ]
  %36 = load ptr, ptr %27, align 8
  %37 = getelementptr %struct.mvneta_rx_queue, ptr %36, i32 %35
  tail call fastcc void @mvneta_rxq_drop_pkts(ptr noundef %4, ptr noundef %37)
  %38 = add nuw nsw i32 %35, 1
  %39 = load i32, ptr @rxq_number, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %34, label %28

41:                                               ; preds = %41, %31
  %42 = phi i32 [ 0, %31 ], [ %69, %41 ]
  %43 = load ptr, ptr %32, align 4
  %44 = getelementptr %struct.mvneta_tx_queue, ptr %43, i32 %42
  %45 = load i8, ptr %44, align 4
  %46 = zext i8 %45 to i32
  %47 = shl nuw nsw i32 %46, 4
  %48 = add nuw nsw i32 %47, 9988
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %49 = load ptr, ptr %33, align 4
  %50 = getelementptr i8, ptr %49, i32 %48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 0) #21, !srcloc !15
  %51 = load i8, ptr %44, align 4
  %52 = zext i8 %51 to i32
  %53 = shl nuw nsw i32 %52, 4
  %54 = add nuw nsw i32 %53, 9984
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %55 = load ptr, ptr %33, align 4
  %56 = getelementptr i8, ptr %55, i32 %54
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 0) #21, !srcloc !15
  %57 = load i8, ptr %44, align 4
  %58 = zext i8 %57 to i32
  %59 = shl nuw nsw i32 %58, 2
  %60 = or i32 %59, 15360
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %61 = load ptr, ptr %33, align 4
  %62 = getelementptr i8, ptr %61, i32 %60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 0) #21, !srcloc !15
  %63 = load i8, ptr %44, align 4
  %64 = zext i8 %63 to i32
  %65 = shl nuw nsw i32 %64, 2
  %66 = add nuw nsw i32 %65, 15392
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  tail call void @arm_heavy_mb() #21
  %67 = load ptr, ptr %33, align 4
  %68 = getelementptr i8, ptr %67, i32 %66
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 0) #21, !srcloc !15
  %69 = add nuw nsw i32 %42, 1
  %70 = load i32, ptr @txq_number, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %41, label %72

72:                                               ; preds = %41, %28, %1
  tail call void @netif_device_detach(ptr noundef %3) #21
  %73 = getelementptr i8, ptr %3, i32 1704
  %74 = load ptr, ptr %73, align 8
  tail call void @clk_disable(ptr noundef %74) #21
  tail call void @clk_unprepare(ptr noundef %74) #21
  %75 = getelementptr i8, ptr %3, i32 1700
  %76 = load ptr, ptr %75, align 4
  tail call void @clk_disable(ptr noundef %76) #21
  tail call void @clk_unprepare(ptr noundef %76) #21
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mvneta_resume(ptr noundef %0) #3 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr i8, ptr %7, i32 1408
  %9 = getelementptr i8, ptr %7, i32 1700
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @clk_prepare(ptr noundef %10) #21
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = tail call i32 @clk_enable(ptr noundef %10) #21
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  tail call void @clk_unprepare(ptr noundef %10) #21
  br label %17

17:                                               ; preds = %16, %13, %1
  %18 = getelementptr i8, ptr %7, i32 1704
  %19 = load ptr, ptr %18, align 8
  %20 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %28, label %21

21:                                               ; preds = %17
  %22 = tail call i32 @clk_prepare(ptr noundef %19) #21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = tail call i32 @clk_enable(ptr noundef %19) #21
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  tail call void @clk_unprepare(ptr noundef %19) #21
  br label %28

28:                                               ; preds = %27, %24, %21, %17
  %29 = getelementptr i8, ptr %7, i32 2384
  %30 = load ptr, ptr %29, align 8
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = getelementptr i8, ptr %7, i32 2380
  %34 = load i8, ptr %33, align 4, !range !9
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %32, %28
  tail call fastcc void @mvneta_conf_mbus_windows(ptr noundef %8, ptr noundef %30)
  br label %37

37:                                               ; preds = %36, %32
  %38 = getelementptr i8, ptr %7, i32 2020
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %144, label %41

41:                                               ; preds = %37
  %42 = getelementptr i8, ptr %0, i32 416
  %43 = load ptr, ptr %42, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #21
  store i32 0, ptr %5, align 4, !annotation !18
  %44 = getelementptr i8, ptr %7, i32 2380
  %45 = load i8, ptr %44, align 4, !range !9
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %132

47:                                               ; preds = %41
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #21
  store i32 0, ptr %2, align 4, !annotation !18
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #21
  store i8 0, ptr %3, align 1, !annotation !18
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #21
  store i8 0, ptr %4, align 1, !annotation !18
  %48 = load ptr, ptr %38, align 4
  %49 = getelementptr inbounds %struct.mvneta_bm, ptr %48, i32 0, i32 5
  %50 = load i32, ptr %49, align 4
  %51 = call i32 @mvebu_mbus_get_io_win_info(i32 noundef %50, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4) #21
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %105, label %53

53:                                               ; preds = %47
  %54 = getelementptr i8, ptr %7, i32 2032
  store i32 -1, ptr %54, align 8
  %55 = load ptr, ptr %38, align 4
  %56 = getelementptr inbounds %struct.mvneta_bm, ptr %55, i32 0, i32 5
  %57 = load i32, ptr %56, align 4
  %58 = load i32, ptr %2, align 4
  %59 = load i8, ptr %3, align 1
  %60 = load i8, ptr %4, align 1
  %61 = getelementptr i8, ptr %7, i32 1428
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr i8, ptr %62, i32 8848
  %64 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #21, !srcloc !16
  call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !17
  %65 = load i32, ptr %54, align 8
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %87

67:                                               ; preds = %53
  %68 = and i32 %64, 1
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %84, %81, %78, %75, %72, %67
  %71 = phi i32 [ 0, %67 ], [ 1, %72 ], [ 2, %75 ], [ 3, %78 ], [ 4, %81 ], [ 5, %84 ]
  store i32 %71, ptr %54, align 8
  br label %87

72:                                               ; preds = %67
  %73 = and i32 %64, 2
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %70

75:                                               ; preds = %72
  %76 = and i32 %64, 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %70

78:                                               ; preds = %75
  %79 = and i32 %64, 8
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %70

81:                                               ; preds = %78
  %82 = and i32 %64, 16
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %70

84:                                               ; preds = %81
  %85 = and i32 %64, 32
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %102, label %70

87:                                               ; preds = %70, %53
  %88 = phi i32 [ %65, %53 ], [ %71, %70 ]
  %89 = shl i32 %88, 3
  %90 = add i32 %89, 8704
  call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  call void @arm_heavy_mb() #21
  %91 = load ptr, ptr %61, align 4
  %92 = getelementptr i8, ptr %91, i32 %90
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 0) #21, !srcloc !15
  %93 = add i32 %89, 8708
  call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  call void @arm_heavy_mb() #21
  %94 = load ptr, ptr %61, align 4
  %95 = getelementptr i8, ptr %94, i32 %93
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %95, i32 0) #21, !srcloc !15
  %96 = icmp ult i32 %88, 4
  br i1 %96, label %97, label %106

97:                                               ; preds = %87
  %98 = shl nuw nsw i32 %88, 2
  %99 = add nuw nsw i32 %98, 8832
  call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  call void @arm_heavy_mb() #21
  %100 = load ptr, ptr %61, align 4
  %101 = getelementptr i8, ptr %100, i32 %99
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %101, i32 0) #21, !srcloc !15
  br label %106

102:                                              ; preds = %84
  %103 = getelementptr i8, ptr %7, i32 1440
  %104 = load ptr, ptr %103, align 8
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %104, ptr noundef nonnull @.str.54) #23
  br label %105

105:                                              ; preds = %102, %47
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #21
  br label %142

106:                                              ; preds = %97, %87
  %107 = and i32 %57, -65536
  %108 = zext i8 %60 to i32
  %109 = shl nuw nsw i32 %108, 8
  %110 = or i32 %109, %107
  %111 = zext i8 %59 to i32
  %112 = or i32 %110, %111
  call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  call void @arm_heavy_mb() #21
  %113 = load ptr, ptr %61, align 4
  %114 = getelementptr i8, ptr %113, i32 %90
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %114, i32 %112) #21, !srcloc !15
  %115 = add i32 %58, -1
  %116 = and i32 %115, -65536
  call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  call void @arm_heavy_mb() #21
  %117 = load ptr, ptr %61, align 4
  %118 = getelementptr i8, ptr %117, i32 %93
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %118, i32 %116) #21, !srcloc !15
  %119 = load ptr, ptr %61, align 4
  %120 = getelementptr i8, ptr %119, i32 8852
  %121 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %120) #21, !srcloc !16
  call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !17
  %122 = shl nuw i32 %88, 1
  %123 = shl i32 3, %122
  %124 = or i32 %121, %123
  call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  call void @arm_heavy_mb() #21
  %125 = load ptr, ptr %61, align 4
  %126 = getelementptr i8, ptr %125, i32 8852
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %126, i32 %124) #21, !srcloc !15
  %127 = shl nuw i32 1, %88
  %128 = xor i32 %127, -1
  %129 = and i32 %64, %128
  call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  call void @arm_heavy_mb() #21
  %130 = load ptr, ptr %61, align 4
  %131 = getelementptr i8, ptr %130, i32 8848
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %131, i32 %129) #21, !srcloc !15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #21
  br label %132

132:                                              ; preds = %106, %41
  %133 = call i32 @of_property_read_variable_u32_array(ptr noundef %43, ptr noundef nonnull @.str.49, ptr noundef nonnull %5, i32 noundef 1, i32 noundef 0) #21
  %134 = icmp sgt i32 %133, -1
  br i1 %134, label %138, label %135

135:                                              ; preds = %132
  %136 = getelementptr i8, ptr %7, i32 1440
  %137 = load ptr, ptr %136, align 8
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %137, ptr noundef nonnull @.str.50) #23
  br label %142

138:                                              ; preds = %132
  %139 = getelementptr i8, ptr %7, i32 2024
  store ptr null, ptr %139, align 8
  %140 = getelementptr i8, ptr %7, i32 1440
  %141 = load ptr, ptr %140, align 8
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %141, ptr noundef nonnull @.str.51) #23
  br label %142

142:                                              ; preds = %138, %135, %105
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.14) #23
  %143 = getelementptr i8, ptr %7, i32 2382
  store i16 256, ptr %143, align 2
  store ptr null, ptr %38, align 4
  br label %144

144:                                              ; preds = %142, %37
  call fastcc void @mvneta_defaults_set(ptr noundef %8)
  %145 = getelementptr i8, ptr %7, i32 1968
  %146 = load i32, ptr %145, align 8
  call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !14
  call void @arm_heavy_mb() #21
  %147 = getelementptr i8, ptr %7, i32 1428
  %148 = load ptr, ptr %147, align 4
  %149 = getelementptr i8, ptr %148, i32 8320
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %149, i32 0) #21, !srcloc !15
  switch i32 %146, label %150 [
    i32 18, label %151
    i32 4, label %151
    i32 22, label %151
    i32 21, label %151
    i32 12, label %151
    i32 11, label %151
    i32 10, label %151
    i32 9, label %151
  ]

150:                                              ; preds = %144
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.15) #23
  br label %197

151:                                              ; preds = %144, %144, %144, %144, %144, %144, %144, %144
  call void @netif_device_attach(ptr noundef %7) #21
  %152 = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 6
  %153 = load volatile i32, ptr %152, align 4
  %154 = and i32 %153, 1
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %197, label %156

156:                                              ; preds = %151
  %157 = load i32, ptr @rxq_number, align 4
  %158 = icmp sgt i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %156
  %160 = getelementptr i8, ptr %7, i32 1432
  br label %166

161:                                              ; preds = %166, %156
  %162 = load i32, ptr @txq_number, align 4
  %163 = icmp sgt i32 %162, 0
  br i1 %163, label %164, label %182

164:                                              ; preds = %161
  %165 = getelementptr i8, ptr %7, i32 1436
  br label %174

166:                                              ; preds = %166, %159
  %167 = phi i32 [ 0, %159 ], [ %171, %166 ]
  %168 = load ptr, ptr %160, align 8
  %169 = getelementptr %struct.mvneta_rx_queue, ptr %168, i32 %167
  %170 = getelementptr %struct.mvneta_rx_queue, ptr %168, i32 %167, i32 11
  store i32 0, ptr %170, align 16
  call fastcc void @mvneta_rxq_hw_init(ptr noundef %8, ptr noundef %169)
  %171 = add nuw nsw i32 %167, 1
  %172 = load i32, ptr @rxq_number, align 4
  %173 = icmp slt i32 %171, %172
  br i1 %173, label %166, label %161

174:                                              ; preds = %174, %164
  %175 = phi i32 [ 0, %164 ], [ %179, %174 ]
  %176 = load ptr, ptr %165, align 4
  %177 = getelementptr %struct.mvneta_tx_queue, ptr %176, i32 %175
  %178 = getelementptr %struct.mvneta_tx_queue, ptr %176, i32 %175, i32 13
  store i32 0, ptr %178, align 4
  call fastcc void @mvneta_txq_hw_init(ptr noundef %8, ptr noundef %177)
  %179 = add nuw nsw i32 %175, 1
  %180 = load i32, ptr @txq_number, align 4
  %181 = icmp slt i32 %179, %180
  br i1 %181, label %174, label %182

182:                                              ; preds = %174, %161
  %183 = getelementptr i8, ptr %7, i32 2380
  %184 = load i8, ptr %183, align 4, !range !9
  %185 = icmp eq i8 %184, 0
  br i1 %185, label %186, label %196

186:                                              ; preds = %182
  %187 = getelementptr i8, ptr %7, i32 1464
  call void @_raw_spin_lock(ptr noundef %187) #21
  %188 = getelementptr i8, ptr %7, i32 1468
  store i8 0, ptr %188, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !10
  %189 = load i16, ptr %187, align 4
  %190 = add i16 %189, 1
  store i16 %190, ptr %187, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !13
  %191 = load i32, ptr @online_hpstate, align 4
  %192 = getelementptr i8, ptr %7, i32 1444
  %193 = call i32 @__cpuhp_state_add_instance(i32 noundef %191, ptr noundef %192, i1 noundef zeroext false) #21
  %194 = getelementptr i8, ptr %7, i32 1452
  %195 = call i32 @__cpuhp_state_add_instance(i32 noundef 17, ptr noundef %194, i1 noundef zeroext false) #21
  br label %196

196:                                              ; preds = %186, %182
  call void @rtnl_lock() #21
  call fastcc void @mvneta_start_dev(ptr noundef %8)
  call void @rtnl_unlock() #21
  call void @mvneta_set_rx_mode(ptr noundef %7)
  br label %197

197:                                              ; preds = %196, %151, %150
  %198 = phi i32 [ -22, %150 ], [ 0, %196 ], [ 0, %151 ]
  ret i32 %198
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cpuhp_remove_state(i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #20

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind readonly }
attributes #12 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #13 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #18 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #19 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #20 = { argmemonly nofree nounwind readonly willreturn }
attributes #21 = { nounwind }
attributes #22 = { nounwind readonly willreturn }
attributes #23 = { cold nounwind }
attributes #24 = { nounwind allocsize(0) }
attributes #25 = { nounwind readnone }

!llvm.named.register.sp = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{!"sp"}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{i32 8, !"branch-target-enforcement", i32 0}
!4 = !{i32 8, !"sign-return-address", i32 0}
!5 = !{i32 8, !"sign-return-address-all", i32 0}
!6 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!9 = !{i8 0, i8 2}
!10 = !{i64 2149035932}
!11 = !{i64 2149031756}
!12 = !{i64 2149031831, i64 2149031858, i64 2149031905, i64 2149031927, i64 2149031955, i64 2149031975}
!13 = !{i64 2149058935}
!14 = !{i64 2158160924}
!15 = !{i64 5418981}
!16 = !{i64 5419399}
!17 = !{i64 2158161389}
!18 = !{!"auto-init"}
!19 = !{!"branch_weights", i32 1, i32 2000}
!20 = !{i64 511319}
!21 = !{i32 0, i32 33}
!22 = !{i64 597198}
!23 = !{i64 2149891274}
!24 = !{i64 2149891575}
!25 = !{!"branch_weights", i32 2000, i32 1}
!26 = !{i64 492619, i64 492680}
!27 = !{i64 495636}
!28 = !{i64 2157778439}
!29 = !{i64 2157778603}
!30 = !{i64 2153755555, i64 2153756055, i64 2153755592, i64 2153755648, i64 2153755682, i64 2153755706, i64 2153755747, i64 2153755768, i64 2153755796, i64 2153755830}
!31 = !{i64 2153756335}
!32 = !{i64 2154662137}
!33 = !{i64 2153831708}
!34 = !{i64 2153831550}
!35 = !{i64 2153831852}
!36 = !{i64 2149890975}
!37 = !{i64 1026912, i64 1026939}
!38 = !{i64 1027422, i64 1027449, i64 1027483, i64 1027504}
!39 = !{i64 2159157791}
!40 = !{i64 597380, i64 2148087351, i64 2148087377, i64 2148087424, i64 2148087446, i64 2148087474, i64 2148087494}
!41 = !{i64 606827, i64 606844, i64 606868, i64 606894, i64 606912}
!42 = !{i64 2159158111}
!43 = !{i64 2149134566}
!44 = !{i64 2149134783}
!45 = !{i64 2154663182}
