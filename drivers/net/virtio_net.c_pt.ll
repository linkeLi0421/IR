; ModuleID = '/llk/IR/drivers/net/virtio_net.c_pt.bc'
source_filename = "../drivers/net/virtio_net.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.152 }
%union.anon.152 = type { ptr }
%struct.virtio_driver = type { %struct.device_driver, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.atomic_t = type { i32 }
%struct.virtio_device_id = type { i32, i32 }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.softnet_data = type { %struct.list_head, %struct.sk_buff_head, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.anon.181, [4 x i8], i32, [60 x i8], %struct.__call_single_data, ptr, i32, i32, i32, %struct.sk_buff_head, %struct.napi_struct, [56 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.anon.181 = type { i16, i8 }
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
%struct.virtnet_stat_desc = type { [32 x i8], i32 }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.flow_dissector = type { i32, [28 x i16] }
%struct.rx_queue_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.virtnet_info = type { ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i8, i8, i8, i8, i8, i8, %struct.delayed_work, %struct.work_struct, i8, %struct.hlist_node, %struct.hlist_node, ptr, i8, i32, i32, i32, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.receive_queue = type { ptr, %struct.napi_struct, ptr, %struct.virtnet_rq_stats, ptr, %struct.ewma_pkt_len, %struct.page_frag, [19 x %struct.scatterlist], i32, [40 x i8], [24 x i8], %struct.xdp_rxq_info }
%struct.virtnet_rq_stats = type { %struct.u64_stats_sync, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.ewma_pkt_len = type { i32 }
%struct.page_frag = type { ptr, i16, i16 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [40 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.virtqueue = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr }
%struct.virtio_device = type { i32, i8, i8, i8, %struct.spinlock, %struct.spinlock, %struct.device, %struct.virtio_device_id, ptr, ptr, %struct.list_head, i64, ptr }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.virtio_config_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.send_queue = type { ptr, [19 x %struct.scatterlist], [40 x i8], %struct.virtnet_sq_stats, %struct.napi_struct }
%struct.virtnet_sq_stats = type { %struct.u64_stats_sync, i64, i64, i64, i64, i64, i64 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.157, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.178, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.157 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type {}
%struct.possible_net_t = type {}
%union.anon.178 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.page = type { i32, %union.anon.1, %union.anon.151, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.151 = type { %struct.atomic_t }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
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
%struct.virtio_net_hdr = type { i8, i8, i16, i16, i16, i16 }
%struct.anon.58 = type { i16, i16 }
%struct.virtio_net_hdr_mrg_rxbuf = type { %struct.virtio_net_hdr, i16 }
%struct.control_buf = type { %struct.virtio_net_ctrl_hdr, i8, %struct.virtio_net_ctrl_mq, i8, i8, i16, i64 }
%struct.virtio_net_ctrl_hdr = type { i8, i8 }
%struct.virtio_net_ctrl_mq = type { i16 }
%struct.virtio_net_ctrl_mac = type { i32, [0 x [6 x i8]] }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.netdev_bpf = type { i32, %union.anon.162 }
%union.anon.162 = type { %struct.anon.163 }
%struct.anon.163 = type { i32, ptr, ptr }
%struct.xdp_frame = type { ptr, i16, i16, i32, %struct.xdp_mem_info, ptr }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_ringparam = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_channels = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.flow_keys_basic = type { %struct.flow_dissector_key_control, %struct.flow_dissector_key_basic }
%struct.flow_dissector_key_control = type { i16, i16, i32 }
%struct.flow_dissector_key_basic = type { i16, i8, i8 }
%struct.xdp_buff = type { ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.bpf_prog = type { i16, i16, i32, i32, i32, i32, [8 x i8], ptr, ptr, ptr, ptr, ptr, %union.anon.110 }
%union.anon.110 = type { %struct.anon.111 }
%struct.anon.111 = type { %struct.anon.112, [0 x %struct.sock_filter] }
%struct.anon.112 = type {}
%struct.sock_filter = type { i16, i8, i8, i32 }
%struct.bpf_prog_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.header_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netdev_rx_queue = type { %struct.xdp_rxq_info, ptr, ptr, %struct.kobject, ptr, %struct.netdevice_tracker, [16 x i8] }

@__param_str_napi_weight = internal constant [23 x i8] c"virtio_net.napi_weight\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@napi_weight = internal global i32 64, align 4
@__param_napi_weight = internal constant %struct.kernel_param { ptr @__param_str_napi_weight, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.152 { ptr @napi_weight } }, section "__param", align 4
@__UNIQUE_ID_napi_weighttype560 = internal constant [36 x i8] c"virtio_net.parmtype=napi_weight:int\00", section ".modinfo", align 1
@__param_str_csum = internal constant [16 x i8] c"virtio_net.csum\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@csum = internal global i8 1, align 1
@__param_csum = internal constant %struct.kernel_param { ptr @__param_str_csum, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.152 { ptr @csum } }, section "__param", align 4
@__UNIQUE_ID_csumtype561 = internal constant [30 x i8] c"virtio_net.parmtype=csum:bool\00", section ".modinfo", align 1
@__param_str_gso = internal constant [15 x i8] c"virtio_net.gso\00", align 1
@gso = internal global i8 1, align 1
@__param_gso = internal constant %struct.kernel_param { ptr @__param_str_gso, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.152 { ptr @gso } }, section "__param", align 4
@__UNIQUE_ID_gsotype562 = internal constant [29 x i8] c"virtio_net.parmtype=gso:bool\00", section ".modinfo", align 1
@__param_str_napi_tx = internal constant [19 x i8] c"virtio_net.napi_tx\00", align 1
@napi_tx = internal global i8 1, align 1
@__param_napi_tx = internal constant %struct.kernel_param { ptr @__param_str_napi_tx, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.152 { ptr @napi_tx } }, section "__param", align 4
@__UNIQUE_ID_napi_txtype563 = internal constant [33 x i8] c"virtio_net.parmtype=napi_tx:bool\00", section ".modinfo", align 1
@__initcall__kmod_virtio_net__619_3464_virtio_net_driver_init6 = internal global ptr @virtio_net_driver_init, section ".initcall6.init", align 4
@virtio_net_driver = internal global %struct.virtio_driver { %struct.device_driver { ptr @.str.2, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @id_table, ptr @features, i32 23, ptr @features_legacy, i32 25, ptr @virtnet_validate, ptr @virtnet_probe, ptr null, ptr @virtnet_remove, ptr @virtnet_config_changed, ptr @virtnet_freeze, ptr @virtnet_restore }, align 4
@virtionet_online = internal unnamed_addr global i32 0, align 4
@__exitcall_virtio_net_driver_exit = internal global ptr @virtio_net_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description620 = internal constant [45 x i8] c"virtio_net.description=Virtio network driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file621 = internal constant [39 x i8] c"virtio_net.file=drivers/net/virtio_net\00", section ".modinfo", align 1
@__UNIQUE_ID_license622 = internal constant [23 x i8] c"virtio_net.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [18 x i8] c"virtio/net:online\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"virtio/net:dead\00", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"virtio_net\00", align 1
@id_table = internal global [2 x %struct.virtio_device_id] [%struct.virtio_device_id { i32 1, i32 -1 }, %struct.virtio_device_id zeroinitializer], align 4
@features = internal global [23 x i32] [i32 0, i32 1, i32 5, i32 11, i32 14, i32 12, i32 13, i32 7, i32 8, i32 9, i32 10, i32 15, i32 16, i32 17, i32 18, i32 19, i32 21, i32 22, i32 23, i32 3, i32 2, i32 63, i32 62], align 4
@features_legacy = internal global [25 x i32] [i32 0, i32 1, i32 5, i32 11, i32 14, i32 12, i32 13, i32 7, i32 8, i32 9, i32 10, i32 15, i32 16, i32 17, i32 18, i32 19, i32 21, i32 22, i32 23, i32 3, i32 2, i32 63, i32 62, i32 6, i32 27], align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"%s failure: config access disabled\0A\00", align 1
@__func__.virtnet_validate = private unnamed_addr constant [17 x i8] c"virtnet_validate\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"VIRTIO_NET_F_CTRL_RX\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"VIRTIO_NET_F_CTRL_VQ\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"VIRTIO_NET_F_CTRL_VLAN\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"VIRTIO_NET_F_GUEST_ANNOUNCE\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"VIRTIO_NET_F_MQ\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"VIRTIO_NET_F_CTRL_MAC_ADDR\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"device advertises feature %s but not %s\00", align 1
@virtnet_netdev = internal constant %struct.net_device_ops { ptr null, ptr null, ptr @virtnet_open, ptr @virtnet_close, ptr @start_xmit, ptr @passthru_features_check, ptr null, ptr null, ptr @virtnet_set_rx_mode, ptr @virtnet_set_mac_address, ptr @eth_validate_addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @virtnet_tx_timeout, ptr @virtnet_stats, ptr null, ptr null, ptr null, ptr @virtnet_vlan_rx_add_vid, ptr @virtnet_vlan_rx_kill_vid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @virtnet_set_features, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @virtnet_get_phys_port_name, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @virtnet_xdp, ptr @virtnet_xdp_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@virtnet_ethtool_ops = internal constant %struct.ethtool_ops { i8 0, i32 34, i32 0, ptr @virtnet_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr @virtnet_get_coalesce, ptr @virtnet_set_coalesce, ptr @virtnet_get_ringparam, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @virtnet_get_strings, ptr null, ptr @virtnet_get_ethtool_stats, ptr null, ptr null, ptr null, ptr null, ptr @virtnet_get_sset_count, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @virtnet_get_channels, ptr @virtnet_set_channels, ptr null, ptr null, ptr null, ptr @ethtool_op_get_ts_info, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @virtnet_get_link_ksettings, ptr @virtnet_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.11 = private unnamed_addr constant [53 x i8] c"device MTU appears to have changed it is now %d < %d\00", align 1
@virtio_net_mrg_rx_group = internal constant %struct.attribute_group { ptr @.str.2, ptr null, ptr null, ptr @virtio_net_mrg_rx_attrs, ptr null }, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.12 = private unnamed_addr constant [39 x i8] c"Unexpected TXQ (%d) queue failure: %d\0A\00", align 1
@softnet_data = external dso_local global %struct.softnet_data, section ".data..percpu..shared_aligned", align 64
@.str.14 = private unnamed_addr constant [32 x i8] c"Failed to %sable promisc mode.\0A\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"en\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"dis\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"Failed to %sable allmulti mode.\0A\00", align 1
@.str.18 = private unnamed_addr constant [33 x i8] c"Failed to set MAC filter table.\0A\00", align 1
@.str.19 = private unnamed_addr constant [39 x i8] c"Failed to add sgs for command vq: %d\0A.\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.20 = private unnamed_addr constant [42 x i8] c"Failed to set mac address by vq command.\0A\00", align 1
@.str.21 = private unnamed_addr constant [67 x i8] c"TX timeout on queue: %u, sq: %s, vq: 0x%x, name: %s, %u usecs ago\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.22 = private unnamed_addr constant [27 x i8] c"Failed to add VLAN ID %d.\0A\00", align 1
@.str.23 = private unnamed_addr constant [28 x i8] c"Failed to kill VLAN ID %d.\0A\00", align 1
@.str.24 = private unnamed_addr constant [28 x i8] c"Fail to set guest offload.\0A\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"sby\00", align 1
@virtnet_xdp_set.__msg = internal constant [92 x i8] c"virtio_net: Can't set XDP while host is implementing GRO_HW/CSUM, disable GRO_HW/CSUM first\00", align 1
@virtnet_xdp_set.__msg.26 = internal constant [75 x i8] c"virtio_net: XDP expects header/data in single page, any_header_sg required\00", align 1
@virtnet_xdp_set.__msg.27 = internal constant [40 x i8] c"virtio_net: MTU too large to enable XDP\00", align 1
@.str.28 = private unnamed_addr constant [32 x i8] c"XDP requires MTU less than %lu\0A\00", align 1
@virtnet_xdp_set.__print_once = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"\014\00", align 1
@.str.30 = private unnamed_addr constant [103 x i8] c"XDP request %i queues but max is %i. XDP_TX and XDP_REDIRECT will operate in a slower locked tx mode.\0A\00", align 1
@.str.31 = private unnamed_addr constant [38 x i8] c"Fail to set num of queue pairs to %d\0A\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"1.0.0\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"virtio\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"rx_queue_%u_%s\00", align 1
@virtnet_rq_stats_desc = internal constant [8 x %struct.virtnet_stat_desc] [%struct.virtnet_stat_desc { [32 x i8] c"packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8 }, %struct.virtnet_stat_desc { [32 x i8] c"bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 16 }, %struct.virtnet_stat_desc { [32 x i8] c"drops\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 24 }, %struct.virtnet_stat_desc { [32 x i8] c"xdp_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 32 }, %struct.virtnet_stat_desc { [32 x i8] c"xdp_tx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 40 }, %struct.virtnet_stat_desc { [32 x i8] c"xdp_redirects\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 48 }, %struct.virtnet_stat_desc { [32 x i8] c"xdp_drops\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 56 }, %struct.virtnet_stat_desc { [32 x i8] c"kicks\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 64 }], align 4
@.str.35 = private unnamed_addr constant [15 x i8] c"tx_queue_%u_%s\00", align 1
@virtnet_sq_stats_desc = internal constant [6 x %struct.virtnet_stat_desc] [%struct.virtnet_stat_desc { [32 x i8] c"packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8 }, %struct.virtnet_stat_desc { [32 x i8] c"bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 16 }, %struct.virtnet_stat_desc { [32 x i8] c"xdp_tx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 24 }, %struct.virtnet_stat_desc { [32 x i8] c"xdp_tx_drops\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 32 }, %struct.virtnet_stat_desc { [32 x i8] c"kicks\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 40 }, %struct.virtnet_stat_desc { [32 x i8] c"tx_timeouts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 48 }], align 4
@.str.36 = private unnamed_addr constant [30 x i8] c"Failed to ack link announce.\0A\00", align 1
@.str.37 = private unnamed_addr constant [35 x i8] c"\014%s: bad gso: type: %u, size: %u\0A\00", align 1
@bpf_master_redirect_enabled_key = external dso_local global %struct.static_key_false, align 4
@bpf_stats_enabled_key = external dso_local global %struct.static_key_false, align 4
@.str.38 = private unnamed_addr constant [38 x i8] c"Driver BUG: missing reserved tailroom\00", align 1
@__func__.xdp_update_frame_from_buff = private unnamed_addr constant [27 x i8] c"xdp_update_frame_from_buff\00", align 1
@__tracepoint_xdp_exception = external dso_local global %struct.tracepoint, align 4
@flow_keys_basic_dissector = external dso_local global %struct.flow_dissector, align 4
@.str.40 = private unnamed_addr constant [8 x i8] c"control\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"input.%d\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"output.%d\00", align 1
@virtio_net_mrg_rx_attrs = internal global [2 x ptr] [ptr @mergeable_rx_buffer_size_attribute, ptr null], align 4
@mergeable_rx_buffer_size_attribute = internal global %struct.rx_queue_attribute { %struct.attribute { ptr @.str.43, i16 292 }, ptr @mergeable_rx_buffer_size_show, ptr null }, align 4
@.str.43 = private unnamed_addr constant [25 x i8] c"mergeable_rx_buffer_size\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@llvm.compiler.used = appending global [14 x ptr] [ptr @__UNIQUE_ID_csumtype561, ptr @__UNIQUE_ID_description620, ptr @__UNIQUE_ID_file621, ptr @__UNIQUE_ID_gsotype562, ptr @__UNIQUE_ID_license622, ptr @__UNIQUE_ID_napi_txtype563, ptr @__UNIQUE_ID_napi_weighttype560, ptr @__exitcall_virtio_net_driver_exit, ptr @__initcall__kmod_virtio_net__619_3464_virtio_net_driver_init6, ptr @__param_csum, ptr @__param_gso, ptr @__param_napi_tx, ptr @__param_napi_weight, ptr @virtio_net_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @virtio_net_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__cpuhp_setup_state(i32 noundef 194, ptr noundef nonnull @.str, i1 noundef zeroext false, ptr noundef nonnull @virtnet_cpu_online, ptr noundef nonnull @virtnet_cpu_down_prep, i1 noundef zeroext true) #20
  %2 = icmp slt i32 %1, 0
  br i1 %2, label %13, label %3

3:                                                ; preds = %0
  store i32 %1, ptr @virtionet_online, align 4
  %4 = tail call i32 @__cpuhp_setup_state(i32 noundef 10, ptr noundef nonnull @.str.1, i1 noundef zeroext false, ptr noundef null, ptr noundef nonnull @virtnet_cpu_dead, i1 noundef zeroext true) #20
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  %7 = tail call i32 @register_virtio_driver(ptr noundef nonnull @virtio_net_driver) #20
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %6
  tail call void @__cpuhp_remove_state(i32 noundef 10, i1 noundef zeroext false) #20
  br label %10

10:                                               ; preds = %9, %3
  %11 = phi i32 [ %4, %3 ], [ %7, %9 ]
  %12 = load i32, ptr @virtionet_online, align 4
  tail call void @__cpuhp_remove_state(i32 noundef %12, i1 noundef zeroext false) #20
  br label %13

13:                                               ; preds = %10, %6, %0
  %14 = phi i32 [ 0, %6 ], [ %1, %0 ], [ %11, %10 ]
  ret i32 %14
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @virtio_net_driver_exit() #0 section ".exit.text" {
  tail call void @unregister_virtio_driver(ptr noundef nonnull @virtio_net_driver) #20
  tail call void @__cpuhp_remove_state(i32 noundef 10, i1 noundef zeroext false) #20
  %1 = load i32, ptr @virtionet_online, align 4
  tail call void @__cpuhp_remove_state(i32 noundef %1, i1 noundef zeroext false) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_virtio_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @virtnet_cpu_online(i32 noundef %0, ptr noundef %1) #3 {
  %3 = icmp eq ptr %1, null
  %4 = getelementptr i8, ptr %1, i32 -100
  %5 = select i1 %3, ptr null, ptr %4
  tail call fastcc void @virtnet_set_affinity(ptr noundef %5)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @virtnet_cpu_down_prep(i32 noundef %0, ptr noundef %1) #3 {
  %3 = icmp eq ptr %1, null
  %4 = getelementptr i8, ptr %1, i32 -100
  %5 = select i1 %3, ptr null, ptr %4
  %6 = getelementptr inbounds %struct.virtnet_info, ptr %5, i32 0, i32 17
  %7 = load i8, ptr %6, align 4, !range !9
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %49, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.virtnet_info, ptr %5, i32 0, i32 6
  %11 = load i16, ptr %10, align 4
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %48, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.virtnet_info, ptr %5, i32 0, i32 4
  %15 = getelementptr inbounds %struct.virtnet_info, ptr %5, i32 0, i32 3
  br label %16

16:                                               ; preds = %43, %13
  %17 = phi i32 [ 0, %13 ], [ %44, %43 ]
  %18 = load ptr, ptr %14, align 4
  %19 = getelementptr %struct.receive_queue, ptr %18, i32 %17
  %20 = load ptr, ptr %19, align 64
  %21 = getelementptr inbounds %struct.virtqueue, ptr %20, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.virtio_device, ptr %22, i32 0, i32 8
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.virtio_config_ops, ptr %24, i32 0, i32 12
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %16
  %29 = tail call i32 %26(ptr noundef %20, ptr noundef null) #20
  br label %30

30:                                               ; preds = %28, %16
  %31 = load ptr, ptr %15, align 4
  %32 = getelementptr %struct.send_queue, ptr %31, i32 %17
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr inbounds %struct.virtqueue, ptr %33, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.virtio_device, ptr %35, i32 0, i32 8
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr inbounds %struct.virtio_config_ops, ptr %37, i32 0, i32 12
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %30
  %42 = tail call i32 %39(ptr noundef %33, ptr noundef null) #20
  br label %43

43:                                               ; preds = %41, %30
  %44 = add nuw nsw i32 %17, 1
  %45 = load i16, ptr %10, align 4
  %46 = zext i16 %45 to i32
  %47 = icmp ult i32 %44, %46
  br i1 %47, label %16, label %48

48:                                               ; preds = %43, %9
  store i8 0, ptr %6, align 4
  br label %49

49:                                               ; preds = %48, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @virtnet_cpu_dead(i32 noundef %0, ptr noundef %1) #3 {
  %3 = icmp eq ptr %1, null
  %4 = getelementptr i8, ptr %1, i32 -108
  %5 = select i1 %3, ptr null, ptr %4
  tail call fastcc void @virtnet_set_affinity(ptr noundef %5)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_virtio_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @virtnet_set_affinity(ptr nocapture noundef %0) unnamed_addr #3 {
  %2 = alloca [1 x %struct.cpumask], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #20
  store i32 0, ptr %2, align 4
  %3 = load volatile i32, ptr @__num_online_cpus, align 4
  %4 = getelementptr inbounds %struct.virtnet_info, ptr %0, i32 0, i32 7
  %5 = load i16, ptr %4, align 2
  %6 = zext i16 %5 to i32
  %7 = freeze i32 %3
  %8 = freeze i32 %6
  %9 = sdiv i32 %7, %8
  %10 = tail call i32 @llvm.smax.i32(i32 %9, i32 1)
  %11 = icmp slt i32 %3, %6
  %12 = mul i32 %9, %8
  %13 = sub i32 %7, %12
  %14 = select i1 %11, i32 0, i32 %13
  %15 = tail call i32 @_find_first_bit_le(ptr noundef nonnull @__cpu_online_mask, i32 noundef 16) #20
  %16 = load i16, ptr %4, align 2
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %71, label %18

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.virtnet_info, ptr %0, i32 0, i32 4
  %20 = getelementptr inbounds %struct.virtnet_info, ptr %0, i32 0, i32 3
  %21 = getelementptr inbounds %struct.virtnet_info, ptr %0, i32 0, i32 2
  br label %22

22:                                               ; preds = %63, %18
  %23 = phi i32 [ 0, %18 ], [ %67, %63 ]
  %24 = phi i32 [ %15, %18 ], [ %37, %63 ]
  %25 = icmp slt i32 %23, %14
  %26 = zext i1 %25 to i32
  %27 = add nuw i32 %10, %26
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %29, %22
  %30 = phi i32 [ %33, %29 ], [ %24, %22 ]
  %31 = phi i32 [ %34, %29 ], [ 0, %22 ]
  call void @_set_bit(i32 noundef %30, ptr noundef nonnull %2) #20
  %32 = load i32, ptr @nr_cpu_ids, align 4
  %33 = call i32 @cpumask_next_wrap(i32 noundef %30, ptr noundef nonnull @__cpu_online_mask, i32 noundef %32, i1 noundef zeroext false) #20
  %34 = add nuw nsw i32 %31, 1
  %35 = icmp eq i32 %34, %27
  br i1 %35, label %36, label %29

36:                                               ; preds = %29, %22
  %37 = phi i32 [ %24, %22 ], [ %33, %29 ]
  %38 = load ptr, ptr %19, align 4
  %39 = getelementptr %struct.receive_queue, ptr %38, i32 %23
  %40 = load ptr, ptr %39, align 64
  %41 = getelementptr inbounds %struct.virtqueue, ptr %40, i32 0, i32 3
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.virtio_device, ptr %42, i32 0, i32 8
  %44 = load ptr, ptr %43, align 8
  %45 = getelementptr inbounds %struct.virtio_config_ops, ptr %44, i32 0, i32 12
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %36
  %49 = call i32 %46(ptr noundef %40, ptr noundef nonnull %2) #20
  br label %50

50:                                               ; preds = %48, %36
  %51 = load ptr, ptr %20, align 4
  %52 = getelementptr %struct.send_queue, ptr %51, i32 %23
  %53 = load ptr, ptr %52, align 8
  %54 = getelementptr inbounds %struct.virtqueue, ptr %53, i32 0, i32 3
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.virtio_device, ptr %55, i32 0, i32 8
  %57 = load ptr, ptr %56, align 8
  %58 = getelementptr inbounds %struct.virtio_config_ops, ptr %57, i32 0, i32 12
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %50
  %62 = call i32 %59(ptr noundef %53, ptr noundef nonnull %2) #20
  br label %63

63:                                               ; preds = %61, %50
  %64 = load ptr, ptr %21, align 4
  %65 = trunc i32 %23 to i16
  %66 = call i32 @__netif_set_xps_queue(ptr noundef %64, ptr noundef nonnull %2, i16 noundef zeroext %65, i32 noundef 0) #20
  store i32 0, ptr %2, align 4
  %67 = add nuw nsw i32 %23, 1
  %68 = load i16, ptr %4, align 2
  %69 = zext i16 %68 to i32
  %70 = icmp ult i32 %67, %69
  br i1 %70, label %22, label %71

71:                                               ; preds = %63, %1
  %72 = getelementptr inbounds %struct.virtnet_info, ptr %0, i32 0, i32 17
  store i8 1, ptr %72, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #20
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpumask_next_wrap(i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__netif_set_xps_queue(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_le(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @virtnet_validate(ptr noundef %0) #3 {
  %2 = alloca i16, align 2
  %3 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.virtio_config_ops, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.virtnet_validate) #21
  br label %51

10:                                               ; preds = %1
  tail call void @virtio_check_driver_offered_feature(ptr noundef %0, i32 noundef 17) #20
  %11 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 11
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 131072
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %38

15:                                               ; preds = %10
  tail call void @virtio_check_driver_offered_feature(ptr noundef %0, i32 noundef 18) #20
  %16 = load i64, ptr %11, align 8
  %17 = and i64 %16, 262144
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %15
  tail call void @virtio_check_driver_offered_feature(ptr noundef %0, i32 noundef 19) #20
  %20 = load i64, ptr %11, align 8
  %21 = and i64 %20, 524288
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %19
  tail call void @virtio_check_driver_offered_feature(ptr noundef %0, i32 noundef 21) #20
  %24 = load i64, ptr %11, align 8
  %25 = and i64 %24, 2097152
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %23
  tail call void @virtio_check_driver_offered_feature(ptr noundef %0, i32 noundef 22) #20
  %28 = load i64, ptr %11, align 8
  %29 = and i64 %28, 4194304
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  tail call void @virtio_check_driver_offered_feature(ptr noundef %0, i32 noundef 23) #20
  %32 = load i64, ptr %11, align 8
  %33 = and i64 %32, 8388608
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %31, %27, %23, %19, %15
  %36 = phi ptr [ @.str.4, %15 ], [ @.str.6, %19 ], [ @.str.7, %23 ], [ @.str.8, %27 ], [ @.str.9, %31 ]
  %37 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.10, ptr noundef nonnull %36, ptr noundef nonnull @.str.5) #21
  br label %51

38:                                               ; preds = %31, %10
  tail call void @virtio_check_driver_offered_feature(ptr noundef %0, i32 noundef 3) #20
  %39 = load i64, ptr %11, align 8
  %40 = and i64 %39, 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #20
  store i16 0, ptr %2, align 2, !annotation !10
  %43 = load ptr, ptr %3, align 8
  %44 = getelementptr inbounds %struct.virtio_config_ops, ptr %43, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  call void %45(ptr noundef %0, i32 noundef 10, ptr noundef nonnull %2, i32 noundef 2) #20
  %46 = load i16, ptr %2, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #20
  %47 = icmp ult i16 %46, 68
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i64, ptr %11, align 8
  %50 = and i64 %49, -9
  store i64 %50, ptr %11, align 8
  br label %51

51:                                               ; preds = %48, %42, %38, %35, %8
  %52 = phi i32 [ -22, %8 ], [ -22, %35 ], [ 0, %42 ], [ 0, %48 ], [ 0, %38 ]
  ret i32 %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @virtnet_probe(ptr noundef %0) #3 {
  %2 = alloca i16, align 2
  %3 = alloca [6 x i8], align 1
  %4 = alloca i16, align 2
  %5 = alloca [6 x i8], align 1
  tail call void @virtio_check_driver_offered_feature(ptr noundef %0, i32 noundef 22) #20
  %6 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 11
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 4194304
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %22, label %10

10:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #20
  store i16 0, ptr %4, align 2, !annotation !10
  %11 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 8
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.virtio_config_ops, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  call void %14(ptr noundef %0, i32 noundef 8, ptr noundef nonnull %4, i32 noundef 2) #20
  %15 = load i16, ptr %4, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #20
  %16 = add i16 %15, -1
  %17 = icmp slt i16 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %10
  call void @virtio_check_driver_offered_feature(ptr noundef %0, i32 noundef 17) #20
  %19 = load i64, ptr %6, align 8
  %20 = and i64 %19, 131072
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18, %10, %1
  br label %23

23:                                               ; preds = %22, %18
  %24 = phi i16 [ 1, %22 ], [ %15, %18 ]
  %25 = zext i16 %24 to i32
  %26 = call ptr @alloc_etherdev_mqs(i32 noundef 140, i32 noundef %25, i32 noundef %25) #20
  %27 = icmp eq ptr %26, null
  br i1 %27, label %467, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 15
  %30 = load i64, ptr %29, align 16
  %31 = or i64 %30, -2147446784
  store i64 %31, ptr %29, align 16
  %32 = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 16
  store ptr @virtnet_netdev, ptr %32, align 8
  %33 = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 23
  store i64 32, ptr %33, align 16
  %34 = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 42
  store ptr @virtnet_ethtool_ops, ptr %34, align 8
  %35 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 6
  %36 = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 111, i32 1
  store ptr %35, ptr %36, align 4
  call void @virtio_check_driver_offered_feature(ptr noundef %0, i32 noundef 0) #20
  %37 = load i64, ptr %6, align 8
  %38 = and i64 %37, 1
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %86, label %40

40:                                               ; preds = %28
  %41 = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 24
  %42 = load i64, ptr %41, align 8
  %43 = or i64 %42, 9
  store i64 %43, ptr %41, align 8
  %44 = load i8, ptr @csum, align 1, !range !9
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %40
  %47 = load i64, ptr %33, align 16
  %48 = or i64 %47, 9
  store i64 %48, ptr %33, align 16
  br label %49

49:                                               ; preds = %46, %40
  call void @virtio_check_driver_offered_feature(ptr noundef %0, i32 noundef 6) #20
  %50 = load i64, ptr %6, align 8
  %51 = and i64 %50, 64
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %49
  %54 = load i64, ptr %41, align 8
  %55 = or i64 %54, 1376256
  store i64 %55, ptr %41, align 8
  br label %56

56:                                               ; preds = %53, %49
  call void @virtio_check_driver_offered_feature(ptr noundef %0, i32 noundef 11) #20
  %57 = load i64, ptr %6, align 8
  %58 = and i64 %57, 2048
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %56
  %61 = load i64, ptr %41, align 8
  %62 = or i64 %61, 65536
  store i64 %62, ptr %41, align 8
  br label %63

63:                                               ; preds = %60, %56
  call void @virtio_check_driver_offered_feature(ptr noundef %0, i32 noundef 12) #20
  %64 = load i64, ptr %6, align 8
  %65 = and i64 %64, 4096
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %63
  %68 = load i64, ptr %41, align 8
  %69 = or i64 %68, 1048576
  store i64 %69, ptr %41, align 8
  br label %70

70:                                               ; preds = %67, %63
  call void @virtio_check_driver_offered_feature(ptr noundef %0, i32 noundef 13) #20
  %71 = load i64, ptr %6, align 8
  %72 = and i64 %71, 8192
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %70
  %75 = load i64, ptr %41, align 8
  %76 = or i64 %75, 262144
  store i64 %76, ptr %41, align 8
  br label %77

77:                                               ; preds = %74, %70
  %78 = load i64, ptr %33, align 16
  %79 = or i64 %78, 131072
  store i64 %79, ptr %33, align 16
  %80 = load i8, ptr @gso, align 1, !range !9
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %77
  %83 = load i64, ptr %41, align 8
  %84 = and i64 %83, 1900544
  %85 = or i64 %84, %79
  store i64 %85, ptr %33, align 16
  br label %86

86:                                               ; preds = %82, %77, %28
  call void @virtio_check_driver_offered_feature(ptr noundef %0, i32 noundef 1) #20
  %87 = load i64, ptr %6, align 8
  %88 = and i64 %87, 2
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %86
  %91 = load i64, ptr %33, align 16
  %92 = or i64 %91, 1099511627776
  store i64 %92, ptr %33, align 16
  br label %93

93:                                               ; preds = %90, %86
  call void @virtio_check_driver_offered_feature(ptr noundef %0, i32 noundef 7) #20
  %94 = load i64, ptr %6, align 8
  %95 = and i64 %94, 128
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %93
  call void @virtio_check_driver_offered_feature(ptr noundef %0, i32 noundef 8) #20
  %98 = load i64, ptr %6, align 8
  %99 = and i64 %98, 256
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %97, %93
  %102 = load i64, ptr %33, align 16
  %103 = or i64 %102, 36028797018963968
  store i64 %103, ptr %33, align 16
  br label %104

104:                                              ; preds = %101, %97
  call void @virtio_check_driver_offered_feature(ptr noundef %0, i32 noundef 2) #20
  %105 = load i64, ptr %6, align 8
  %106 = and i64 %105, 4
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 24
  %110 = load i64, ptr %109, align 8
  %111 = or i64 %110, 36028797018963968
  store i64 %111, ptr %109, align 8
  br label %112

112:                                              ; preds = %108, %104
  %113 = load i64, ptr %33, align 16
  %114 = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 26
  store i64 %113, ptr %114, align 8
  %115 = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 30
  store i32 68, ptr %115, align 8
  %116 = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 31
  store i32 65535, ptr %116, align 4
  call void @virtio_check_driver_offered_feature(ptr noundef %0, i32 noundef 5) #20
  %117 = load i64, ptr %6, align 8
  %118 = and i64 %117, 32
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %165, label %120

120:                                              ; preds = %112
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %5) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %5, i8 0, i32 6, i1 false), !annotation !10
  %121 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 8
  %122 = load ptr, ptr %121, align 8
  %123 = getelementptr inbounds %struct.virtio_config_ops, ptr %122, i32 0, i32 3
  %124 = load ptr, ptr %123, align 4
  %125 = icmp eq ptr %124, null
  br i1 %125, label %128, label %126

126:                                              ; preds = %120
  %127 = call i32 %124(ptr noundef %0) #20
  br label %128

128:                                              ; preds = %126, %120
  %129 = phi i32 [ %127, %126 ], [ 0, %120 ]
  %130 = getelementptr inbounds i8, ptr %5, i32 1
  %131 = getelementptr inbounds i8, ptr %5, i32 2
  %132 = getelementptr inbounds i8, ptr %5, i32 3
  %133 = getelementptr inbounds i8, ptr %5, i32 4
  %134 = getelementptr inbounds i8, ptr %5, i32 5
  br label %135

135:                                              ; preds = %161, %128
  %136 = phi i32 [ %129, %128 ], [ %162, %161 ]
  %137 = load ptr, ptr %121, align 8
  %138 = getelementptr inbounds %struct.virtio_config_ops, ptr %137, i32 0, i32 1
  %139 = load ptr, ptr %138, align 4
  call void %139(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %5, i32 noundef 1) #20
  %140 = load ptr, ptr %121, align 8
  %141 = getelementptr inbounds %struct.virtio_config_ops, ptr %140, i32 0, i32 1
  %142 = load ptr, ptr %141, align 4
  call void %142(ptr noundef %0, i32 noundef 1, ptr noundef %130, i32 noundef 1) #20
  %143 = load ptr, ptr %121, align 8
  %144 = getelementptr inbounds %struct.virtio_config_ops, ptr %143, i32 0, i32 1
  %145 = load ptr, ptr %144, align 4
  call void %145(ptr noundef %0, i32 noundef 2, ptr noundef %131, i32 noundef 1) #20
  %146 = load ptr, ptr %121, align 8
  %147 = getelementptr inbounds %struct.virtio_config_ops, ptr %146, i32 0, i32 1
  %148 = load ptr, ptr %147, align 4
  call void %148(ptr noundef %0, i32 noundef 3, ptr noundef %132, i32 noundef 1) #20
  %149 = load ptr, ptr %121, align 8
  %150 = getelementptr inbounds %struct.virtio_config_ops, ptr %149, i32 0, i32 1
  %151 = load ptr, ptr %150, align 4
  call void %151(ptr noundef %0, i32 noundef 4, ptr noundef %133, i32 noundef 1) #20
  %152 = load ptr, ptr %121, align 8
  %153 = getelementptr inbounds %struct.virtio_config_ops, ptr %152, i32 0, i32 1
  %154 = load ptr, ptr %153, align 4
  call void %154(ptr noundef %0, i32 noundef 5, ptr noundef %134, i32 noundef 1) #20
  %155 = load ptr, ptr %121, align 8
  %156 = getelementptr inbounds %struct.virtio_config_ops, ptr %155, i32 0, i32 3
  %157 = load ptr, ptr %156, align 4
  %158 = icmp eq ptr %157, null
  br i1 %158, label %161, label %159

159:                                              ; preds = %135
  %160 = call i32 %157(ptr noundef %0) #20
  br label %161

161:                                              ; preds = %159, %135
  %162 = phi i32 [ %160, %159 ], [ 0, %135 ]
  %163 = icmp eq i32 %162, %136
  br i1 %163, label %164, label %135

164:                                              ; preds = %161
  call void @dev_addr_mod(ptr noundef %26, i32 noundef 0, ptr noundef nonnull %5, i32 noundef 6) #20
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %5) #20
  br label %170

165:                                              ; preds = %112
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %3, i8 0, i32 6, i1 false) #20, !annotation !10
  call void @get_random_bytes(ptr noundef nonnull %3, i32 noundef 6) #20
  %166 = load i8, ptr %3, align 1
  %167 = and i8 %166, -4
  %168 = or i8 %167, 2
  store i8 %168, ptr %3, align 1
  call void @dev_addr_mod(ptr noundef nonnull %26, i32 noundef 0, ptr noundef nonnull %3, i32 noundef 6) #20
  %169 = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 50
  store i8 1, ptr %169, align 8
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #20
  br label %170

170:                                              ; preds = %165, %164
  %171 = getelementptr i8, ptr %26, i32 1408
  %172 = getelementptr i8, ptr %26, i32 1416
  store ptr %26, ptr %172, align 4
  store ptr %0, ptr %171, align 4
  %173 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 12
  store ptr %171, ptr %173, align 8
  %174 = getelementptr i8, ptr %26, i32 1488
  store i32 -32, ptr %174, align 4
  %175 = getelementptr i8, ptr %26, i32 1492
  store volatile ptr %175, ptr %175, align 4
  %176 = getelementptr i8, ptr %26, i32 1496
  store ptr %175, ptr %176, align 4
  %177 = getelementptr i8, ptr %26, i32 1500
  store ptr @virtnet_config_changed_work, ptr %177, align 4
  call void @virtio_check_driver_offered_feature(ptr noundef %0, i32 noundef 7) #20
  %178 = load i64, ptr %6, align 8
  %179 = and i64 %178, 128
  %180 = icmp eq i64 %179, 0
  br i1 %180, label %181, label %193

181:                                              ; preds = %170
  call void @virtio_check_driver_offered_feature(ptr noundef %0, i32 noundef 8) #20
  %182 = load i64, ptr %6, align 8
  %183 = and i64 %182, 256
  %184 = icmp eq i64 %183, 0
  br i1 %184, label %185, label %193

185:                                              ; preds = %181
  call void @virtio_check_driver_offered_feature(ptr noundef %0, i32 noundef 9) #20
  %186 = load i64, ptr %6, align 8
  %187 = and i64 %186, 512
  %188 = icmp eq i64 %187, 0
  br i1 %188, label %189, label %193

189:                                              ; preds = %185
  call void @virtio_check_driver_offered_feature(ptr noundef %0, i32 noundef 10) #20
  %190 = load i64, ptr %6, align 8
  %191 = and i64 %190, 1024
  %192 = icmp eq i64 %191, 0
  br i1 %192, label %195, label %193

193:                                              ; preds = %189, %185, %181, %170
  %194 = getelementptr i8, ptr %26, i32 1439
  store i8 1, ptr %194, align 1
  br label %195

195:                                              ; preds = %193, %189
  call void @virtio_check_driver_offered_feature(ptr noundef %0, i32 noundef 15) #20
  %196 = load i64, ptr %6, align 8
  %197 = and i64 %196, 32768
  %198 = icmp eq i64 %197, 0
  br i1 %198, label %201, label %199

199:                                              ; preds = %195
  %200 = getelementptr i8, ptr %26, i32 1440
  store i8 1, ptr %200, align 4
  br label %201

201:                                              ; preds = %199, %195
  call void @virtio_check_driver_offered_feature(ptr noundef %0, i32 noundef 15) #20
  %202 = load i64, ptr %6, align 8
  %203 = and i64 %202, 4295000064
  %204 = icmp eq i64 %203, 0
  %205 = select i1 %204, i8 10, i8 12
  %206 = getelementptr i8, ptr %26, i32 1443
  store i8 %205, ptr %206, align 1
  call void @virtio_check_driver_offered_feature(ptr noundef %0, i32 noundef 27) #20
  %207 = load i64, ptr %6, align 8
  %208 = and i64 %207, 4429185024
  %209 = icmp eq i64 %208, 0
  br i1 %209, label %212, label %210

210:                                              ; preds = %201
  %211 = getelementptr i8, ptr %26, i32 1442
  store i8 1, ptr %211, align 2
  br label %212

212:                                              ; preds = %210, %201
  call void @virtio_check_driver_offered_feature(ptr noundef %0, i32 noundef 17) #20
  %213 = load i64, ptr %6, align 8
  %214 = and i64 %213, 131072
  %215 = icmp eq i64 %214, 0
  br i1 %215, label %218, label %216

216:                                              ; preds = %212
  %217 = getelementptr i8, ptr %26, i32 1441
  store i8 1, ptr %217, align 1
  br label %218

218:                                              ; preds = %216, %212
  call void @virtio_check_driver_offered_feature(ptr noundef %0, i32 noundef 3) #20
  %219 = load i64, ptr %6, align 8
  %220 = and i64 %219, 8
  %221 = icmp eq i64 %220, 0
  br i1 %221, label %237, label %222

222:                                              ; preds = %218
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #20
  store i16 0, ptr %2, align 2, !annotation !10
  %223 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 8
  %224 = load ptr, ptr %223, align 8
  %225 = getelementptr inbounds %struct.virtio_config_ops, ptr %224, i32 0, i32 1
  %226 = load ptr, ptr %225, align 4
  call void %226(ptr noundef %0, i32 noundef 10, ptr noundef nonnull %2, i32 noundef 2) #20
  %227 = load i16, ptr %2, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #20
  %228 = zext i16 %227 to i32
  %229 = load i32, ptr %115, align 8
  %230 = icmp ugt i32 %229, %228
  br i1 %230, label %231, label %232

231:                                              ; preds = %222
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.11, i32 noundef %228, i32 noundef %229) #21
  br label %465

232:                                              ; preds = %222
  %233 = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 20
  store i32 %228, ptr %233, align 4
  store i32 %228, ptr %116, align 4
  %234 = icmp ugt i16 %227, 1500
  br i1 %234, label %235, label %237

235:                                              ; preds = %232
  %236 = getelementptr i8, ptr %26, i32 1439
  store i8 1, ptr %236, align 1
  br label %237

237:                                              ; preds = %235, %232, %218
  %238 = getelementptr i8, ptr %26, i32 1442
  %239 = load i8, ptr %238, align 2, !range !9
  %240 = icmp eq i8 %239, 0
  br i1 %240, label %245, label %241

241:                                              ; preds = %237
  %242 = load i8, ptr %206, align 1
  %243 = zext i8 %242 to i16
  %244 = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 21
  store i16 %243, ptr %244, align 8
  br label %245

245:                                              ; preds = %241, %237
  %246 = load volatile i32, ptr @__num_online_cpus, align 4
  %247 = icmp ult i32 %246, %25
  br i1 %247, label %248, label %251

248:                                              ; preds = %245
  %249 = load volatile i32, ptr @__num_online_cpus, align 4
  %250 = trunc i32 %249 to i16
  br label %251

251:                                              ; preds = %248, %245
  %252 = phi i16 [ %250, %248 ], [ %24, %245 ]
  %253 = getelementptr i8, ptr %26, i32 1434
  store i16 %252, ptr %253, align 2
  %254 = getelementptr i8, ptr %26, i32 1432
  store i16 %24, ptr %254, align 4
  %255 = call fastcc i32 @init_vqs(ptr noundef %171)
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %257, label %465

257:                                              ; preds = %251
  %258 = getelementptr i8, ptr %26, i32 1440
  %259 = load i8, ptr %258, align 4, !range !9
  %260 = icmp eq i8 %259, 0
  br i1 %260, label %263, label %261

261:                                              ; preds = %257
  %262 = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 113
  store ptr @virtio_net_mrg_rx_group, ptr %262, align 8
  br label %263

263:                                              ; preds = %261, %257
  %264 = load i16, ptr %253, align 2
  %265 = zext i16 %264 to i32
  %266 = call i32 @netif_set_real_num_tx_queues(ptr noundef %26, i32 noundef %265) #20
  %267 = load i16, ptr %253, align 2
  %268 = zext i16 %267 to i32
  %269 = call i32 @netif_set_real_num_rx_queues(ptr noundef %26, i32 noundef %268) #20
  %270 = getelementptr i8, ptr %26, i32 1532
  store i32 -1, ptr %270, align 4
  %271 = getelementptr i8, ptr %26, i32 1528
  store i8 -1, ptr %271, align 4
  %272 = load i64, ptr %6, align 8
  %273 = and i64 %272, 4611686018427387904
  %274 = icmp eq i64 %273, 0
  br i1 %274, label %282, label %275

275:                                              ; preds = %263
  %276 = load ptr, ptr %172, align 4
  %277 = call ptr @net_failover_create(ptr noundef %276) #20
  %278 = getelementptr i8, ptr %26, i32 1544
  store ptr %277, ptr %278, align 4
  %279 = icmp ugt ptr %277, inttoptr (i32 -4096 to ptr)
  br i1 %279, label %280, label %282

280:                                              ; preds = %275
  %281 = ptrtoint ptr %277 to i32
  br label %373

282:                                              ; preds = %275, %263
  %283 = call i32 @register_netdev(ptr noundef %26) #20
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %285, label %369

285:                                              ; preds = %282
  %286 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 8
  %287 = load ptr, ptr %286, align 8
  %288 = getelementptr inbounds %struct.virtio_config_ops, ptr %287, i32 0, i32 4
  %289 = load ptr, ptr %288, align 4
  %290 = call zeroext i8 %289(ptr noundef %0) #20
  %291 = load ptr, ptr %286, align 8
  %292 = load ptr, ptr %291, align 4
  %293 = icmp eq ptr %292, null
  br i1 %293, label %295, label %294

294:                                              ; preds = %285
  call void %292(ptr noundef %0) #20
  br label %295

295:                                              ; preds = %294, %285
  %296 = and i8 %290, 4
  %297 = icmp eq i8 %296, 0
  br i1 %297, label %299, label %298, !prof !11

298:                                              ; preds = %295
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/virtio_config.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 239, 0\0A.popsection", ""() #20, !srcloc !12
  unreachable

299:                                              ; preds = %295
  %300 = load ptr, ptr %286, align 8
  %301 = getelementptr inbounds %struct.virtio_config_ops, ptr %300, i32 0, i32 5
  %302 = load ptr, ptr %301, align 4
  %303 = or i8 %290, 4
  call void %302(ptr noundef %0, i8 noundef zeroext %303) #20
  %304 = load i32, ptr @virtionet_online, align 4
  %305 = getelementptr i8, ptr %26, i32 1508
  %306 = call i32 @__cpuhp_state_add_instance(i32 noundef %304, ptr noundef %305, i1 noundef zeroext false) #20
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %308, label %315

308:                                              ; preds = %299
  %309 = getelementptr i8, ptr %26, i32 1516
  %310 = call i32 @__cpuhp_state_add_instance(i32 noundef 10, ptr noundef %309, i1 noundef zeroext false) #20
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %317, label %312

312:                                              ; preds = %308
  %313 = load i32, ptr @virtionet_online, align 4
  %314 = call i32 @__cpuhp_state_remove_instance(i32 noundef %313, ptr noundef %305, i1 noundef zeroext false) #20
  br label %315

315:                                              ; preds = %312, %299
  %316 = phi i32 [ %306, %299 ], [ %310, %312 ]
  call void @virtio_reset_device(ptr noundef %0) #20
  call void @unregister_netdev(ptr noundef %26) #20
  br label %369

317:                                              ; preds = %308
  %318 = load i16, ptr %253, align 2
  call void @rtnl_lock() #20
  %319 = call fastcc i32 @_virtnet_set_queues(ptr noundef %171, i16 noundef zeroext %318) #20
  call void @rtnl_unlock() #20
  call void @netif_carrier_off(ptr noundef %26) #20
  %320 = load ptr, ptr %171, align 4
  call void @virtio_check_driver_offered_feature(ptr noundef %320, i32 noundef 16) #20
  %321 = getelementptr inbounds %struct.virtio_device, ptr %320, i32 0, i32 11
  %322 = load i64, ptr %321, align 8
  %323 = and i64 %322, 65536
  %324 = icmp eq i64 %323, 0
  br i1 %324, label %328, label %325

325:                                              ; preds = %317
  %326 = load ptr, ptr @system_wq, align 4
  %327 = call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %326, ptr noundef %174) #20
  br label %330

328:                                              ; preds = %317
  %329 = getelementptr i8, ptr %26, i32 1428
  store i32 1, ptr %329, align 4
  call fastcc void @virtnet_update_settings(ptr noundef %171)
  call void @netif_carrier_on(ptr noundef %26) #20
  br label %330

330:                                              ; preds = %328, %325
  %331 = getelementptr i8, ptr %26, i32 1536
  %332 = load ptr, ptr %171, align 4
  call void @virtio_check_driver_offered_feature(ptr noundef %332, i32 noundef 7) #20
  %333 = getelementptr inbounds %struct.virtio_device, ptr %332, i32 0, i32 11
  %334 = load i64, ptr %333, align 8
  %335 = and i64 %334, 128
  %336 = icmp eq i64 %335, 0
  br i1 %336, label %338, label %337

337:                                              ; preds = %330
  call void @_set_bit(i32 noundef 7, ptr noundef %331) #20
  br label %338

338:                                              ; preds = %337, %330
  %339 = load ptr, ptr %171, align 4
  call void @virtio_check_driver_offered_feature(ptr noundef %339, i32 noundef 8) #20
  %340 = getelementptr inbounds %struct.virtio_device, ptr %339, i32 0, i32 11
  %341 = load i64, ptr %340, align 8
  %342 = and i64 %341, 256
  %343 = icmp eq i64 %342, 0
  br i1 %343, label %345, label %344

344:                                              ; preds = %338
  call void @_set_bit(i32 noundef 8, ptr noundef %331) #20
  br label %345

345:                                              ; preds = %344, %338
  %346 = load ptr, ptr %171, align 4
  call void @virtio_check_driver_offered_feature(ptr noundef %346, i32 noundef 9) #20
  %347 = getelementptr inbounds %struct.virtio_device, ptr %346, i32 0, i32 11
  %348 = load i64, ptr %347, align 8
  %349 = and i64 %348, 512
  %350 = icmp eq i64 %349, 0
  br i1 %350, label %352, label %351

351:                                              ; preds = %345
  call void @_set_bit(i32 noundef 9, ptr noundef %331) #20
  br label %352

352:                                              ; preds = %351, %345
  %353 = load ptr, ptr %171, align 4
  call void @virtio_check_driver_offered_feature(ptr noundef %353, i32 noundef 10) #20
  %354 = getelementptr inbounds %struct.virtio_device, ptr %353, i32 0, i32 11
  %355 = load i64, ptr %354, align 8
  %356 = and i64 %355, 1024
  %357 = icmp eq i64 %356, 0
  br i1 %357, label %359, label %358

358:                                              ; preds = %352
  call void @_set_bit(i32 noundef 10, ptr noundef %331) #20
  br label %359

359:                                              ; preds = %358, %352
  %360 = load ptr, ptr %171, align 4
  call void @virtio_check_driver_offered_feature(ptr noundef %360, i32 noundef 1) #20
  %361 = getelementptr inbounds %struct.virtio_device, ptr %360, i32 0, i32 11
  %362 = load i64, ptr %361, align 8
  %363 = and i64 %362, 2
  %364 = icmp eq i64 %363, 0
  br i1 %364, label %366, label %365

365:                                              ; preds = %359
  call void @_set_bit(i32 noundef 1, ptr noundef %331) #20
  br label %366

366:                                              ; preds = %365, %359
  %367 = load i32, ptr %331, align 4
  %368 = getelementptr i8, ptr %26, i32 1540
  store i32 %367, ptr %368, align 4
  br label %467

369:                                              ; preds = %315, %282
  %370 = phi i32 [ %316, %315 ], [ %283, %282 ]
  %371 = getelementptr i8, ptr %26, i32 1544
  %372 = load ptr, ptr %371, align 4
  call void @net_failover_destroy(ptr noundef %372) #20
  br label %373

373:                                              ; preds = %369, %280
  %374 = phi i32 [ %281, %280 ], [ %370, %369 ]
  %375 = getelementptr i8, ptr %26, i32 1444
  %376 = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %375) #20
  %377 = load i16, ptr %254, align 4
  %378 = icmp eq i16 %377, 0
  br i1 %378, label %414, label %379

379:                                              ; preds = %373
  %380 = getelementptr i8, ptr %26, i32 1424
  br label %381

381:                                              ; preds = %404, %379
  %382 = phi i32 [ 0, %379 ], [ %405, %404 ]
  %383 = load ptr, ptr %380, align 4
  %384 = getelementptr %struct.receive_queue, ptr %383, i32 %382, i32 6
  %385 = load ptr, ptr %384, align 8
  %386 = icmp eq ptr %385, null
  br i1 %386, label %404, label %387

387:                                              ; preds = %381
  %388 = getelementptr inbounds %struct.page, ptr %385, i32 0, i32 1
  %389 = load volatile i32, ptr %388, align 4
  %390 = and i32 %389, 1
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %394, label %392, !prof !11

392:                                              ; preds = %387
  %393 = add i32 %389, -1
  br label %396

394:                                              ; preds = %387
  %395 = ptrtoint ptr %385 to i32
  br label %396

396:                                              ; preds = %394, %392
  %397 = phi i32 [ %393, %392 ], [ %395, %394 ]
  %398 = inttoptr i32 %397 to ptr
  %399 = getelementptr inbounds %struct.page, ptr %398, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !13
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %399) #20, !srcloc !14
  %400 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %399, ptr %399, i32 1, ptr elementtype(i32) %399) #20, !srcloc !15
  %401 = extractvalue { i32, i32 } %400, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !16
  %402 = icmp eq i32 %401, 0
  br i1 %402, label %403, label %404

403:                                              ; preds = %396
  call void @__put_page(ptr noundef %398) #20
  br label %404

404:                                              ; preds = %403, %396, %381
  %405 = add nuw nsw i32 %382, 1
  %406 = load i16, ptr %254, align 4
  %407 = zext i16 %406 to i32
  %408 = icmp ult i32 %405, %407
  br i1 %408, label %381, label %409

409:                                              ; preds = %404
  %410 = load ptr, ptr %171, align 4
  %411 = getelementptr i8, ptr %26, i32 1504
  %412 = load i8, ptr %411, align 4, !range !9
  %413 = icmp eq i8 %412, 0
  br i1 %413, label %459, label %419

414:                                              ; preds = %373
  %415 = load ptr, ptr %171, align 4
  %416 = getelementptr i8, ptr %26, i32 1504
  %417 = load i8, ptr %416, align 4, !range !9
  %418 = icmp eq i8 %417, 0
  br i1 %418, label %459, label %456

419:                                              ; preds = %409
  %420 = icmp eq i16 %406, 0
  br i1 %420, label %456, label %421

421:                                              ; preds = %419
  %422 = getelementptr i8, ptr %26, i32 1424
  %423 = getelementptr i8, ptr %26, i32 1420
  br label %424

424:                                              ; preds = %451, %421
  %425 = phi i32 [ 0, %421 ], [ %452, %451 ]
  %426 = load ptr, ptr %422, align 4
  %427 = getelementptr %struct.receive_queue, ptr %426, i32 %425
  %428 = load ptr, ptr %427, align 64
  %429 = getelementptr inbounds %struct.virtqueue, ptr %428, i32 0, i32 3
  %430 = load ptr, ptr %429, align 4
  %431 = getelementptr inbounds %struct.virtio_device, ptr %430, i32 0, i32 8
  %432 = load ptr, ptr %431, align 8
  %433 = getelementptr inbounds %struct.virtio_config_ops, ptr %432, i32 0, i32 12
  %434 = load ptr, ptr %433, align 4
  %435 = icmp eq ptr %434, null
  br i1 %435, label %438, label %436

436:                                              ; preds = %424
  %437 = call i32 %434(ptr noundef %428, ptr noundef null) #20
  br label %438

438:                                              ; preds = %436, %424
  %439 = load ptr, ptr %423, align 4
  %440 = getelementptr %struct.send_queue, ptr %439, i32 %425
  %441 = load ptr, ptr %440, align 8
  %442 = getelementptr inbounds %struct.virtqueue, ptr %441, i32 0, i32 3
  %443 = load ptr, ptr %442, align 4
  %444 = getelementptr inbounds %struct.virtio_device, ptr %443, i32 0, i32 8
  %445 = load ptr, ptr %444, align 8
  %446 = getelementptr inbounds %struct.virtio_config_ops, ptr %445, i32 0, i32 12
  %447 = load ptr, ptr %446, align 4
  %448 = icmp eq ptr %447, null
  br i1 %448, label %451, label %449

449:                                              ; preds = %438
  %450 = call i32 %447(ptr noundef %441, ptr noundef null) #20
  br label %451

451:                                              ; preds = %449, %438
  %452 = add nuw nsw i32 %425, 1
  %453 = load i16, ptr %254, align 4
  %454 = zext i16 %453 to i32
  %455 = icmp ult i32 %452, %454
  br i1 %455, label %424, label %456

456:                                              ; preds = %451, %419, %414
  %457 = phi ptr [ %410, %419 ], [ %415, %414 ], [ %410, %451 ]
  %458 = phi ptr [ %411, %419 ], [ %416, %414 ], [ %411, %451 ]
  store i8 0, ptr %458, align 4
  br label %459

459:                                              ; preds = %456, %414, %409
  %460 = phi ptr [ %415, %414 ], [ %410, %409 ], [ %457, %456 ]
  %461 = getelementptr inbounds %struct.virtio_device, ptr %460, i32 0, i32 8
  %462 = load ptr, ptr %461, align 8
  %463 = getelementptr inbounds %struct.virtio_config_ops, ptr %462, i32 0, i32 8
  %464 = load ptr, ptr %463, align 4
  call void %464(ptr noundef %460) #20
  call fastcc void @virtnet_free_queues(ptr noundef %171) #20
  br label %465

465:                                              ; preds = %459, %251, %231
  %466 = phi i32 [ -22, %231 ], [ %255, %251 ], [ %374, %459 ]
  call void @free_netdev(ptr noundef %26) #20
  br label %467

467:                                              ; preds = %465, %366, %23
  %468 = phi i32 [ %466, %465 ], [ 0, %366 ], [ -12, %23 ]
  ret i32 %468
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @virtnet_remove(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 12
  %3 = load ptr, ptr %2, align 8
  %4 = load i32, ptr @virtionet_online, align 4
  %5 = getelementptr inbounds %struct.virtnet_info, ptr %3, i32 0, i32 18
  %6 = tail call i32 @__cpuhp_state_remove_instance(i32 noundef %4, ptr noundef %5, i1 noundef zeroext false) #20
  %7 = getelementptr inbounds %struct.virtnet_info, ptr %3, i32 0, i32 19
  %8 = tail call i32 @__cpuhp_state_remove_instance(i32 noundef 10, ptr noundef %7, i1 noundef zeroext false) #20
  %9 = getelementptr inbounds %struct.virtnet_info, ptr %3, i32 0, i32 16
  %10 = tail call zeroext i1 @flush_work(ptr noundef %9) #20
  %11 = getelementptr inbounds %struct.virtnet_info, ptr %3, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  tail call void @unregister_netdev(ptr noundef %12) #20
  %13 = getelementptr inbounds %struct.virtnet_info, ptr %3, i32 0, i32 25
  %14 = load ptr, ptr %13, align 4
  tail call void @net_failover_destroy(ptr noundef %14) #20
  tail call fastcc void @remove_vq_common(ptr noundef %3)
  %15 = load ptr, ptr %11, align 4
  tail call void @free_netdev(ptr noundef %15) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @virtnet_config_changed(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 12
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.virtnet_info, ptr %3, i32 0, i32 16
  %5 = load ptr, ptr @system_wq, align 4
  %6 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %5, ptr noundef %4) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @virtnet_freeze(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 12
  %3 = load ptr, ptr %2, align 8
  %4 = load i32, ptr @virtionet_online, align 4
  %5 = getelementptr inbounds %struct.virtnet_info, ptr %3, i32 0, i32 18
  %6 = tail call i32 @__cpuhp_state_remove_instance(i32 noundef %4, ptr noundef %5, i1 noundef zeroext false) #20
  %7 = getelementptr inbounds %struct.virtnet_info, ptr %3, i32 0, i32 19
  %8 = tail call i32 @__cpuhp_state_remove_instance(i32 noundef 10, ptr noundef %7, i1 noundef zeroext false) #20
  tail call fastcc void @virtnet_freeze_down(ptr noundef %0)
  tail call fastcc void @remove_vq_common(ptr noundef %3)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @virtnet_restore(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 12
  %3 = load ptr, ptr %2, align 8
  %4 = tail call fastcc i32 @init_vqs(ptr noundef %3) #20
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %118

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.virtio_config_ops, ptr %8, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = tail call zeroext i8 %10(ptr noundef %0) #20
  %12 = load ptr, ptr %7, align 8
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %6
  tail call void %13(ptr noundef %0) #20
  br label %16

16:                                               ; preds = %15, %6
  %17 = and i8 %11, 4
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %20, label %19, !prof !11

19:                                               ; preds = %16
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/virtio_config.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 239, 0\0A.popsection", ""() #20, !srcloc !12
  unreachable

20:                                               ; preds = %16
  %21 = load ptr, ptr %7, align 8
  %22 = getelementptr inbounds %struct.virtio_config_ops, ptr %21, i32 0, i32 5
  %23 = load ptr, ptr %22, align 4
  %24 = or i8 %11, 4
  tail call void %23(ptr noundef %0, i8 noundef zeroext %24) #20
  %25 = getelementptr inbounds %struct.virtnet_info, ptr %3, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 6
  %28 = load volatile i32, ptr %27, align 4
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %94, label %31

31:                                               ; preds = %20
  %32 = getelementptr inbounds %struct.virtnet_info, ptr %3, i32 0, i32 7
  %33 = load i16, ptr %32, align 2
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.virtnet_info, ptr %3, i32 0, i32 4
  %37 = getelementptr inbounds %struct.virtnet_info, ptr %3, i32 0, i32 15
  br label %46

38:                                               ; preds = %54, %31
  %39 = getelementptr inbounds %struct.virtnet_info, ptr %3, i32 0, i32 6
  %40 = load i16, ptr %39, align 4
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %94, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.virtnet_info, ptr %3, i32 0, i32 4
  %44 = getelementptr inbounds %struct.virtnet_info, ptr %3, i32 0, i32 3
  %45 = getelementptr inbounds %struct.virtnet_info, ptr %3, i32 0, i32 17
  br label %59

46:                                               ; preds = %54, %35
  %47 = phi i32 [ 0, %35 ], [ %55, %54 ]
  %48 = load ptr, ptr %36, align 4
  %49 = getelementptr %struct.receive_queue, ptr %48, i32 %47
  %50 = tail call fastcc zeroext i1 @try_fill_recv(ptr noundef %3, ptr noundef %49, i32 noundef 3264) #20
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  %52 = load ptr, ptr @system_wq, align 4
  %53 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %52, ptr noundef %37, i32 noundef 0) #20
  br label %54

54:                                               ; preds = %51, %46
  %55 = add nuw nsw i32 %47, 1
  %56 = load i16, ptr %32, align 2
  %57 = zext i16 %56 to i32
  %58 = icmp ult i32 %55, %57
  br i1 %58, label %46, label %38

59:                                               ; preds = %89, %42
  %60 = phi i32 [ 0, %42 ], [ %90, %89 ]
  %61 = load ptr, ptr %43, align 4
  %62 = getelementptr %struct.receive_queue, ptr %61, i32 %60
  %63 = load ptr, ptr %62, align 64
  %64 = getelementptr %struct.receive_queue, ptr %61, i32 %60, i32 1
  tail call void @napi_enable(ptr noundef %64) #20
  %65 = tail call ptr @llvm.thread.pointer() #20
  %66 = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 1
  %67 = load volatile i32, ptr %66, align 4
  %68 = add i32 %67, 512
  store volatile i32 %68, ptr %66, align 4
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !17
  %69 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %64) #20
  br i1 %69, label %70, label %71

70:                                               ; preds = %59
  tail call void @virtqueue_disable_cb(ptr noundef %63) #20
  tail call void @__napi_schedule(ptr noundef %64) #20
  br label %71

71:                                               ; preds = %70, %59
  tail call fastcc void @local_bh_enable() #20
  %72 = load ptr, ptr %44, align 4
  %73 = getelementptr %struct.send_queue, ptr %72, i32 %60
  %74 = load ptr, ptr %73, align 8
  %75 = getelementptr %struct.send_queue, ptr %72, i32 %60, i32 4
  %76 = getelementptr %struct.send_queue, ptr %72, i32 %60, i32 4, i32 2
  %77 = load i32, ptr %76, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %89, label %79

79:                                               ; preds = %71
  %80 = load i8, ptr %45, align 4, !range !9
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  store i32 0, ptr %76, align 4
  br label %89

83:                                               ; preds = %79
  tail call void @napi_enable(ptr noundef %75) #20
  %84 = load volatile i32, ptr %66, align 4
  %85 = add i32 %84, 512
  store volatile i32 %85, ptr %66, align 4
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !17
  %86 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %75) #20
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  tail call void @virtqueue_disable_cb(ptr noundef %74) #20
  tail call void @__napi_schedule(ptr noundef %75) #20
  br label %88

88:                                               ; preds = %87, %83
  tail call fastcc void @local_bh_enable() #20
  br label %89

89:                                               ; preds = %88, %82, %71
  %90 = add nuw nsw i32 %60, 1
  %91 = load i16, ptr %39, align 4
  %92 = zext i16 %91 to i32
  %93 = icmp ult i32 %90, %92
  br i1 %93, label %59, label %94

94:                                               ; preds = %89, %38, %20
  %95 = load ptr, ptr %25, align 4
  %96 = tail call ptr @llvm.thread.pointer() #20
  %97 = getelementptr inbounds %struct.thread_info, ptr %96, i32 0, i32 1
  %98 = load volatile i32, ptr %97, align 4
  %99 = add i32 %98, 512
  store volatile i32 %99, ptr %97, align 4
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !17
  tail call void @netif_tx_lock(ptr noundef %95) #20
  %100 = load ptr, ptr %25, align 4
  tail call void @netif_device_attach(ptr noundef %100) #20
  %101 = load ptr, ptr %25, align 4
  tail call void @netif_tx_unlock(ptr noundef %101) #20
  tail call fastcc void @local_bh_enable() #20
  %102 = getelementptr inbounds %struct.virtnet_info, ptr %3, i32 0, i32 7
  %103 = load i16, ptr %102, align 2
  tail call void @rtnl_lock() #20
  %104 = tail call fastcc i32 @_virtnet_set_queues(ptr noundef %3, i16 noundef zeroext %103) #20
  tail call void @rtnl_unlock() #20
  %105 = load i32, ptr @virtionet_online, align 4
  %106 = getelementptr inbounds %struct.virtnet_info, ptr %3, i32 0, i32 18
  %107 = tail call i32 @__cpuhp_state_add_instance(i32 noundef %105, ptr noundef %106, i1 noundef zeroext false) #20
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %94
  %110 = getelementptr inbounds %struct.virtnet_info, ptr %3, i32 0, i32 19
  %111 = tail call i32 @__cpuhp_state_add_instance(i32 noundef 10, ptr noundef %110, i1 noundef zeroext false) #20
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %118, label %113

113:                                              ; preds = %109
  %114 = load i32, ptr @virtionet_online, align 4
  %115 = tail call i32 @__cpuhp_state_remove_instance(i32 noundef %114, ptr noundef %106, i1 noundef zeroext false) #20
  br label %116

116:                                              ; preds = %113, %94
  %117 = phi i32 [ %107, %94 ], [ %111, %113 ]
  tail call fastcc void @virtnet_freeze_down(ptr noundef %0)
  tail call fastcc void @remove_vq_common(ptr noundef %3)
  br label %118

118:                                              ; preds = %116, %109, %1
  %119 = phi i32 [ %117, %116 ], [ 0, %109 ], [ %4, %1 ]
  ret i32 %119
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_check_driver_offered_feature(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @virtnet_config_changed_work(ptr noundef %0) #3 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %4 = alloca i16, align 2
  %5 = getelementptr i8, ptr %0, i32 -80
  %6 = load ptr, ptr %5, align 4
  tail call void @virtio_check_driver_offered_feature(ptr noundef %6, i32 noundef 16) #20
  %7 = getelementptr inbounds %struct.virtio_device, ptr %6, i32 0, i32 11
  %8 = load i64, ptr %7, align 8
  %9 = and i64 %8, 65536
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %79, label %11

11:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #20
  store i16 0, ptr %4, align 2, !annotation !10
  %12 = load ptr, ptr %5, align 4
  %13 = getelementptr inbounds %struct.virtio_device, ptr %12, i32 0, i32 8
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.virtio_config_ops, ptr %14, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  call void %16(ptr noundef %12, i32 noundef 6, ptr noundef nonnull %4, i32 noundef 2) #20
  %17 = load i16, ptr %4, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #20
  %18 = zext i16 %17 to i32
  %19 = and i32 %18, 2
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %11
  %22 = getelementptr i8, ptr %0, i32 -72
  %23 = load ptr, ptr %22, align 4
  call void @netdev_notify_peers(ptr noundef %23) #20
  call void @rtnl_lock() #20
  %24 = call fastcc zeroext i1 @virtnet_send_command(ptr noundef %5, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null) #20
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr %22, align 4
  %27 = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 111
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %27, ptr noundef nonnull @.str.36) #21
  br label %28

28:                                               ; preds = %25, %21
  call void @rtnl_unlock() #20
  br label %29

29:                                               ; preds = %28, %11
  %30 = and i32 %18, 1
  %31 = getelementptr i8, ptr %0, i32 -60
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, %30
  br i1 %33, label %79, label %34

34:                                               ; preds = %29
  store i32 %30, ptr %31, align 4
  %35 = icmp eq i32 %30, 0
  br i1 %35, label %75, label %36

36:                                               ; preds = %34
  %37 = load ptr, ptr %5, align 4
  %38 = getelementptr inbounds %struct.virtio_device, ptr %37, i32 0, i32 11
  %39 = load i64, ptr %38, align 8
  %40 = icmp sgt i64 %39, -1
  br i1 %40, label %59, label %41

41:                                               ; preds = %36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #20
  store i32 0, ptr %2, align 4, !annotation !10
  %42 = getelementptr inbounds %struct.virtio_device, ptr %37, i32 0, i32 8
  %43 = load ptr, ptr %42, align 8
  %44 = getelementptr inbounds %struct.virtio_config_ops, ptr %43, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  call void %45(ptr noundef %37, i32 noundef 12, ptr noundef nonnull %2, i32 noundef 4) #20
  %46 = load i32, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #20
  %47 = icmp slt i32 %46, -1
  br i1 %47, label %50, label %48

48:                                               ; preds = %41
  %49 = getelementptr i8, ptr %0, i32 44
  store i32 %46, ptr %49, align 4
  br label %50

50:                                               ; preds = %48, %41
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #20
  store i8 0, ptr %3, align 1, !annotation !10
  %51 = load ptr, ptr %5, align 4
  %52 = getelementptr inbounds %struct.virtio_device, ptr %51, i32 0, i32 8
  %53 = load ptr, ptr %52, align 8
  %54 = getelementptr inbounds %struct.virtio_config_ops, ptr %53, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  call void %55(ptr noundef %51, i32 noundef 16, ptr noundef nonnull %3, i32 noundef 1) #20
  %56 = load i8, ptr %3, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #20
  switch i8 %56, label %59 [
    i8 0, label %57
    i8 1, label %57
    i8 -1, label %57
  ]

57:                                               ; preds = %50, %50, %50
  %58 = getelementptr i8, ptr %0, i32 40
  store i8 %56, ptr %58, align 4
  br label %59

59:                                               ; preds = %57, %50, %36
  %60 = getelementptr i8, ptr %0, i32 -72
  %61 = load ptr, ptr %60, align 4
  call void @netif_carrier_on(ptr noundef %61) #20
  %62 = load ptr, ptr %60, align 4
  %63 = getelementptr inbounds %struct.net_device, ptr %62, i32 0, i32 88
  %64 = load i32, ptr %63, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %79, label %66

66:                                               ; preds = %59
  %67 = getelementptr inbounds %struct.net_device, ptr %62, i32 0, i32 87
  br label %68

68:                                               ; preds = %68, %66
  %69 = phi i32 [ 0, %66 ], [ %72, %68 ]
  %70 = load ptr, ptr %67, align 64
  %71 = getelementptr %struct.netdev_queue, ptr %70, i32 %69
  call void @netif_tx_wake_queue(ptr noundef %71) #20
  %72 = add nuw i32 %69, 1
  %73 = load i32, ptr %63, align 4
  %74 = icmp ult i32 %72, %73
  br i1 %74, label %68, label %79

75:                                               ; preds = %34
  %76 = getelementptr i8, ptr %0, i32 -72
  %77 = load ptr, ptr %76, align 4
  call void @netif_carrier_off(ptr noundef %77) #20
  %78 = load ptr, ptr %76, align 4
  call void @netif_tx_stop_all_queues(ptr noundef %78) #20
  br label %79

79:                                               ; preds = %75, %68, %59, %29, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @init_vqs(ptr noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.virtnet_info, ptr %0, i32 0, i32 12
  %3 = load i8, ptr %2, align 1, !range !9
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 24) #22
  %8 = getelementptr inbounds %struct.virtnet_info, ptr %0, i32 0, i32 20
  store ptr %7, ptr %8, align 4
  %9 = icmp eq ptr %7, null
  br i1 %9, label %225, label %12

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.virtnet_info, ptr %0, i32 0, i32 20
  store ptr null, ptr %11, align 4
  br label %12

12:                                               ; preds = %10, %5
  %13 = getelementptr inbounds %struct.virtnet_info, ptr %0, i32 0, i32 6
  %14 = load i16, ptr %13, align 4
  %15 = zext i16 %14 to i32
  %16 = mul nuw nsw i32 %15, 696
  %17 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %16, i32 noundef 3520) #23
  %18 = getelementptr inbounds %struct.virtnet_info, ptr %0, i32 0, i32 3
  store ptr %17, ptr %18, align 4
  %19 = icmp eq ptr %17, null
  br i1 %19, label %69, label %20

20:                                               ; preds = %12
  %21 = load i16, ptr %13, align 4
  %22 = zext i16 %21 to i32
  %23 = mul nuw nsw i32 %22, 832
  %24 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %23, i32 noundef 3520) #23
  %25 = getelementptr inbounds %struct.virtnet_info, ptr %0, i32 0, i32 4
  store ptr %24, ptr %25, align 4
  %26 = icmp eq ptr %24, null
  br i1 %26, label %67, label %27

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.virtnet_info, ptr %0, i32 0, i32 15
  store i32 -32, ptr %28, align 4
  %29 = getelementptr inbounds %struct.virtnet_info, ptr %0, i32 0, i32 15, i32 0, i32 1
  store volatile ptr %29, ptr %29, align 4
  %30 = getelementptr inbounds %struct.virtnet_info, ptr %0, i32 0, i32 15, i32 0, i32 1, i32 1
  store ptr %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.virtnet_info, ptr %0, i32 0, i32 15, i32 0, i32 2
  store ptr @refill_work, ptr %31, align 4
  %32 = getelementptr inbounds %struct.virtnet_info, ptr %0, i32 0, i32 15, i32 1
  tail call void @init_timer_key(ptr noundef %32, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #20
  %33 = load i16, ptr %13, align 4
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %75, label %35

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.virtnet_info, ptr %0, i32 0, i32 2
  br label %37

37:                                               ; preds = %37, %35
  %38 = phi i32 [ 0, %35 ], [ %63, %37 ]
  %39 = load ptr, ptr %25, align 4
  %40 = getelementptr %struct.receive_queue, ptr %39, i32 %38, i32 4
  store ptr null, ptr %40, align 16
  %41 = load ptr, ptr %36, align 4
  %42 = load ptr, ptr %25, align 4
  %43 = getelementptr %struct.receive_queue, ptr %42, i32 %38, i32 1
  %44 = load i32, ptr @napi_weight, align 4
  tail call void @netif_napi_add(ptr noundef %41, ptr noundef %43, ptr noundef nonnull @virtnet_poll, i32 noundef %44) #20
  %45 = load ptr, ptr %36, align 4
  %46 = load ptr, ptr %18, align 4
  %47 = getelementptr %struct.send_queue, ptr %46, i32 %38, i32 4
  %48 = load i8, ptr @napi_tx, align 1, !range !9
  %49 = icmp eq i8 %48, 0
  %50 = load i32, ptr @napi_weight, align 4
  %51 = select i1 %49, i32 0, i32 %50
  %52 = getelementptr %struct.send_queue, ptr %46, i32 %38, i32 4, i32 1
  tail call void @_set_bit(i32 noundef 5, ptr noundef %52) #20
  tail call void @netif_napi_add(ptr noundef %45, ptr noundef %47, ptr noundef nonnull @virtnet_poll_tx, i32 noundef %51) #20
  %53 = load ptr, ptr %25, align 4
  %54 = getelementptr %struct.receive_queue, ptr %53, i32 %38, i32 7
  tail call void @sg_init_table(ptr noundef %54, i32 noundef 19) #20
  %55 = load ptr, ptr %25, align 4
  %56 = getelementptr %struct.receive_queue, ptr %55, i32 %38, i32 5
  store i32 0, ptr %56, align 4
  %57 = load ptr, ptr %18, align 4
  %58 = getelementptr %struct.send_queue, ptr %57, i32 %38, i32 1
  tail call void @sg_init_table(ptr noundef %58, i32 noundef 19) #20
  %59 = load ptr, ptr %25, align 4
  %60 = getelementptr %struct.receive_queue, ptr %59, i32 %38, i32 3
  store i32 0, ptr %60, align 4
  %61 = load ptr, ptr %18, align 4
  %62 = getelementptr %struct.send_queue, ptr %61, i32 %38, i32 3
  store i32 0, ptr %62, align 4
  %63 = add nuw nsw i32 %38, 1
  %64 = load i16, ptr %13, align 4
  %65 = zext i16 %64 to i32
  %66 = icmp ult i32 %63, %65
  br i1 %66, label %37, label %72

67:                                               ; preds = %20
  %68 = load ptr, ptr %18, align 4
  tail call void @kfree(ptr noundef %68) #20
  br label %69

69:                                               ; preds = %67, %12
  %70 = getelementptr inbounds %struct.virtnet_info, ptr %0, i32 0, i32 20
  %71 = load ptr, ptr %70, align 4
  tail call void @kfree(ptr noundef %71) #20
  br label %225

72:                                               ; preds = %37
  %73 = zext i16 %64 to i32
  %74 = shl nuw nsw i32 %73, 1
  br label %75

75:                                               ; preds = %72, %27
  %76 = phi i32 [ 0, %27 ], [ %74, %72 ]
  %77 = load ptr, ptr %0, align 4
  tail call void @virtio_check_driver_offered_feature(ptr noundef %77, i32 noundef 17) #20
  %78 = getelementptr inbounds %struct.virtio_device, ptr %77, i32 0, i32 11
  %79 = load i64, ptr %78, align 8
  %80 = trunc i64 %79 to i32
  %81 = lshr i32 %80, 17
  %82 = and i32 %81, 1
  %83 = or i32 %82, %76
  %84 = shl nuw nsw i32 %83, 2
  %85 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %84, i32 noundef 3520) #23
  %86 = icmp eq ptr %85, null
  br i1 %86, label %223, label %87

87:                                               ; preds = %75
  %88 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %84, i32 noundef 3264) #23
  %89 = icmp eq ptr %88, null
  br i1 %89, label %218, label %90

90:                                               ; preds = %87
  %91 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %84, i32 noundef 3264) #23
  %92 = icmp eq ptr %91, null
  br i1 %92, label %219, label %93

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.virtnet_info, ptr %0, i32 0, i32 10
  %95 = load i8, ptr %94, align 1, !range !9
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.virtnet_info, ptr %0, i32 0, i32 11
  %99 = load i8, ptr %98, align 4, !range !9
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %97, %93
  %102 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %83, i32 noundef 3520) #23
  %103 = icmp eq ptr %102, null
  br i1 %103, label %216, label %104

104:                                              ; preds = %101, %97
  %105 = phi ptr [ %102, %101 ], [ null, %97 ]
  %106 = load i8, ptr %2, align 1, !range !9
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %104
  %109 = add nsw i32 %83, -1
  %110 = getelementptr ptr, ptr %88, i32 %109
  store ptr null, ptr %110, align 4
  %111 = getelementptr ptr, ptr %91, i32 %109
  store ptr @.str.40, ptr %111, align 4
  br label %112

112:                                              ; preds = %108, %104
  %113 = load i16, ptr %13, align 4
  %114 = icmp eq i16 %113, 0
  br i1 %114, label %144, label %115

115:                                              ; preds = %112
  %116 = getelementptr inbounds %struct.virtnet_info, ptr %0, i32 0, i32 4
  %117 = getelementptr inbounds %struct.virtnet_info, ptr %0, i32 0, i32 3
  %118 = icmp eq ptr %105, null
  br label %119

119:                                              ; preds = %139, %115
  %120 = phi i32 [ 0, %115 ], [ %140, %139 ]
  %121 = shl nuw i32 %120, 1
  %122 = getelementptr ptr, ptr %88, i32 %121
  store ptr @skb_recv_done, ptr %122, align 8
  %123 = or i32 %121, 1
  %124 = getelementptr ptr, ptr %88, i32 %123
  store ptr @skb_xmit_done, ptr %124, align 4
  %125 = load ptr, ptr %116, align 4
  %126 = getelementptr %struct.receive_queue, ptr %125, i32 %120, i32 9
  %127 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %126, ptr noundef nonnull @.str.41, i32 noundef %120) #20
  %128 = load ptr, ptr %117, align 4
  %129 = getelementptr %struct.send_queue, ptr %128, i32 %120, i32 2
  %130 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %129, ptr noundef nonnull @.str.42, i32 noundef %120) #20
  %131 = load ptr, ptr %116, align 4
  %132 = getelementptr %struct.receive_queue, ptr %131, i32 %120, i32 9
  %133 = getelementptr ptr, ptr %91, i32 %121
  store ptr %132, ptr %133, align 8
  %134 = load ptr, ptr %117, align 4
  %135 = getelementptr %struct.send_queue, ptr %134, i32 %120, i32 2
  %136 = getelementptr ptr, ptr %91, i32 %123
  store ptr %135, ptr %136, align 4
  br i1 %118, label %139, label %137

137:                                              ; preds = %119
  %138 = getelementptr i8, ptr %105, i32 %121
  store i8 1, ptr %138, align 2
  br label %139

139:                                              ; preds = %137, %119
  %140 = add nuw nsw i32 %120, 1
  %141 = load i16, ptr %13, align 4
  %142 = zext i16 %141 to i32
  %143 = icmp ult i32 %140, %142
  br i1 %143, label %119, label %144

144:                                              ; preds = %139, %112
  %145 = load ptr, ptr %0, align 4
  %146 = getelementptr inbounds %struct.virtio_device, ptr %145, i32 0, i32 8
  %147 = load ptr, ptr %146, align 8
  %148 = getelementptr inbounds %struct.virtio_config_ops, ptr %147, i32 0, i32 7
  %149 = load ptr, ptr %148, align 4
  %150 = tail call i32 %149(ptr noundef %145, i32 noundef %83, ptr noundef nonnull %85, ptr noundef nonnull %88, ptr noundef nonnull %91, ptr noundef %105, ptr noundef null) #20
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %215

152:                                              ; preds = %144
  %153 = load i8, ptr %2, align 1, !range !9
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %171, label %155

155:                                              ; preds = %152
  %156 = add nsw i32 %83, -1
  %157 = getelementptr ptr, ptr %85, i32 %156
  %158 = load ptr, ptr %157, align 4
  %159 = getelementptr inbounds %struct.virtnet_info, ptr %0, i32 0, i32 1
  store ptr %158, ptr %159, align 4
  %160 = load ptr, ptr %0, align 4
  tail call void @virtio_check_driver_offered_feature(ptr noundef %160, i32 noundef 19) #20
  %161 = getelementptr inbounds %struct.virtio_device, ptr %160, i32 0, i32 11
  %162 = load i64, ptr %161, align 8
  %163 = and i64 %162, 524288
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %171, label %165

165:                                              ; preds = %155
  %166 = getelementptr inbounds %struct.virtnet_info, ptr %0, i32 0, i32 2
  %167 = load ptr, ptr %166, align 4
  %168 = getelementptr inbounds %struct.net_device, ptr %167, i32 0, i32 23
  %169 = load i64, ptr %168, align 16
  %170 = or i64 %169, 512
  store i64 %170, ptr %168, align 16
  br label %171

171:                                              ; preds = %165, %155, %152
  %172 = load i16, ptr %13, align 4
  %173 = icmp eq i16 %172, 0
  br i1 %173, label %215, label %174

174:                                              ; preds = %171
  %175 = getelementptr inbounds %struct.virtnet_info, ptr %0, i32 0, i32 4
  %176 = getelementptr inbounds %struct.virtnet_info, ptr %0, i32 0, i32 2
  %177 = getelementptr inbounds %struct.virtnet_info, ptr %0, i32 0, i32 3
  br label %178

178:                                              ; preds = %196, %174
  %179 = phi i32 [ 0, %174 ], [ %211, %196 ]
  %180 = shl nuw i32 %179, 1
  %181 = getelementptr ptr, ptr %85, i32 %180
  %182 = load ptr, ptr %181, align 8
  %183 = load ptr, ptr %175, align 4
  %184 = getelementptr %struct.receive_queue, ptr %183, i32 %179
  store ptr %182, ptr %184, align 64
  %185 = load ptr, ptr %175, align 4
  %186 = getelementptr %struct.receive_queue, ptr %185, i32 %179
  %187 = load ptr, ptr %186, align 64
  %188 = tail call i32 @virtqueue_get_vring_size(ptr noundef %187) #20
  %189 = load i8, ptr %94, align 1, !range !9
  %190 = icmp eq i8 %189, 0
  br i1 %190, label %191, label %196

191:                                              ; preds = %178
  %192 = load ptr, ptr %176, align 4
  %193 = getelementptr inbounds %struct.net_device, ptr %192, i32 0, i32 31
  %194 = load i32, ptr %193, align 4
  %195 = add i32 %194, 30
  br label %196

196:                                              ; preds = %191, %178
  %197 = phi i32 [ %195, %191 ], [ 65565, %178 ]
  %198 = add i32 %188, -1
  %199 = add i32 %198, %197
  %200 = udiv i32 %199, %188
  %201 = tail call i32 @llvm.umax.i32(i32 %200, i32 12) #20
  %202 = add i32 %201, -12
  %203 = tail call i32 @llvm.umax.i32(i32 %202, i32 1518) #20
  %204 = load ptr, ptr %175, align 4
  %205 = getelementptr %struct.receive_queue, ptr %204, i32 %179, i32 8
  store i32 %203, ptr %205, align 4
  %206 = or i32 %180, 1
  %207 = getelementptr ptr, ptr %85, i32 %206
  %208 = load ptr, ptr %207, align 4
  %209 = load ptr, ptr %177, align 4
  %210 = getelementptr %struct.send_queue, ptr %209, i32 %179
  store ptr %208, ptr %210, align 8
  %211 = add nuw nsw i32 %179, 1
  %212 = load i16, ptr %13, align 4
  %213 = zext i16 %212 to i32
  %214 = icmp ult i32 %211, %213
  br i1 %214, label %178, label %215

215:                                              ; preds = %196, %171, %144
  tail call void @kfree(ptr noundef %105) #20
  br label %216

216:                                              ; preds = %215, %101
  %217 = phi i32 [ %150, %215 ], [ -12, %101 ]
  tail call void @kfree(ptr noundef nonnull %91) #20
  br label %219

218:                                              ; preds = %87
  tail call void @kfree(ptr noundef nonnull %85) #20
  br label %223

219:                                              ; preds = %216, %90
  %220 = phi i32 [ %217, %216 ], [ -12, %90 ]
  tail call void @kfree(ptr noundef nonnull %88) #20
  tail call void @kfree(ptr noundef nonnull %85) #20
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %219
  tail call void @cpus_read_lock() #20
  tail call fastcc void @virtnet_set_affinity(ptr noundef %0)
  tail call void @cpus_read_unlock() #20
  br label %225

223:                                              ; preds = %219, %218, %75
  %224 = phi i32 [ %220, %219 ], [ -12, %218 ], [ -12, %75 ]
  tail call fastcc void @virtnet_free_queues(ptr noundef %0)
  br label %225

225:                                              ; preds = %223, %222, %69, %5
  %226 = phi i32 [ 0, %222 ], [ %224, %223 ], [ -12, %5 ], [ -12, %69 ]
  ret i32 %226
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_set_real_num_tx_queues(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_set_real_num_rx_queues(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @net_failover_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @virtnet_update_settings(ptr nocapture noundef %0) unnamed_addr #3 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.virtio_device, ptr %4, i32 0, i32 11
  %6 = load i64, ptr %5, align 8
  %7 = icmp sgt i64 %6, -1
  br i1 %7, label %26, label %8

8:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #20
  store i32 0, ptr %2, align 4, !annotation !10
  %9 = getelementptr inbounds %struct.virtio_device, ptr %4, i32 0, i32 8
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.virtio_config_ops, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  call void %12(ptr noundef %4, i32 noundef 12, ptr noundef nonnull %2, i32 noundef 4) #20
  %13 = load i32, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #20
  %14 = icmp slt i32 %13, -1
  br i1 %14, label %17, label %15

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.virtnet_info, ptr %0, i32 0, i32 22
  store i32 %13, ptr %16, align 4
  br label %17

17:                                               ; preds = %15, %8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #20
  store i8 0, ptr %3, align 1, !annotation !10
  %18 = load ptr, ptr %0, align 4
  %19 = getelementptr inbounds %struct.virtio_device, ptr %18, i32 0, i32 8
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.virtio_config_ops, ptr %20, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  call void %22(ptr noundef %18, i32 noundef 16, ptr noundef nonnull %3, i32 noundef 1) #20
  %23 = load i8, ptr %3, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #20
  switch i8 %23, label %26 [
    i8 0, label %24
    i8 1, label %24
    i8 -1, label %24
  ]

24:                                               ; preds = %17, %17, %17
  %25 = getelementptr inbounds %struct.virtnet_info, ptr %0, i32 0, i32 21
  store i8 %23, ptr %25, align 4
  br label %26

26:                                               ; preds = %24, %17, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_reset_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @net_failover_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @virtnet_open(ptr noundef %0) #3 {
  %2 = getelementptr i8, ptr %0, i32 1408
  %3 = getelementptr i8, ptr %0, i32 1432
  %4 = load i16, ptr %3, align 4
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %72, label %6

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 1434
  %8 = getelementptr i8, ptr %0, i32 1424
  %9 = getelementptr i8, ptr %0, i32 1444
  %10 = getelementptr i8, ptr %0, i32 1420
  %11 = getelementptr i8, ptr %0, i32 1504
  br label %12

12:                                               ; preds = %67, %6
  %13 = phi i32 [ 0, %6 ], [ %68, %67 ]
  %14 = load i16, ptr %7, align 2
  %15 = zext i16 %14 to i32
  %16 = icmp ult i32 %13, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %12
  %18 = load ptr, ptr %8, align 4
  %19 = getelementptr %struct.receive_queue, ptr %18, i32 %13
  %20 = tail call fastcc zeroext i1 @try_fill_recv(ptr noundef %2, ptr noundef %19, i32 noundef 3264)
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr @system_wq, align 4
  %23 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %22, ptr noundef %9, i32 noundef 0) #20
  br label %24

24:                                               ; preds = %21, %17, %12
  %25 = load ptr, ptr %8, align 4
  %26 = getelementptr %struct.receive_queue, ptr %25, i32 %13, i32 11
  %27 = getelementptr %struct.receive_queue, ptr %25, i32 %13, i32 1, i32 14
  %28 = load i32, ptr %27, align 8
  %29 = tail call i32 @xdp_rxq_info_reg(ptr noundef %26, ptr noundef %0, i32 noundef %13, i32 noundef %28) #20
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %72, label %31

31:                                               ; preds = %24
  %32 = load ptr, ptr %8, align 4
  %33 = getelementptr %struct.receive_queue, ptr %32, i32 %13, i32 11
  %34 = tail call i32 @xdp_rxq_info_reg_mem_model(ptr noundef %33, i32 noundef 0, ptr noundef null) #20
  %35 = icmp slt i32 %34, 0
  %36 = load ptr, ptr %8, align 4
  br i1 %35, label %37, label %39

37:                                               ; preds = %31
  %38 = getelementptr %struct.receive_queue, ptr %36, i32 %13, i32 11
  tail call void @xdp_rxq_info_unreg(ptr noundef %38) #20
  br label %72

39:                                               ; preds = %31
  %40 = getelementptr %struct.receive_queue, ptr %36, i32 %13
  %41 = load ptr, ptr %40, align 64
  %42 = getelementptr %struct.receive_queue, ptr %36, i32 %13, i32 1
  tail call void @napi_enable(ptr noundef %42) #20
  %43 = tail call ptr @llvm.thread.pointer() #20
  %44 = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 1
  %45 = load volatile i32, ptr %44, align 4
  %46 = add i32 %45, 512
  store volatile i32 %46, ptr %44, align 4
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !17
  %47 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %42) #20
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  tail call void @virtqueue_disable_cb(ptr noundef %41) #20
  tail call void @__napi_schedule(ptr noundef %42) #20
  br label %49

49:                                               ; preds = %48, %39
  tail call fastcc void @local_bh_enable() #20
  %50 = load ptr, ptr %10, align 4
  %51 = getelementptr %struct.send_queue, ptr %50, i32 %13
  %52 = load ptr, ptr %51, align 8
  %53 = getelementptr %struct.send_queue, ptr %50, i32 %13, i32 4
  %54 = getelementptr %struct.send_queue, ptr %50, i32 %13, i32 4, i32 2
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %67, label %57

57:                                               ; preds = %49
  %58 = load i8, ptr %11, align 4, !range !9
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  store i32 0, ptr %54, align 4
  br label %67

61:                                               ; preds = %57
  tail call void @napi_enable(ptr noundef %53) #20
  %62 = load volatile i32, ptr %44, align 4
  %63 = add i32 %62, 512
  store volatile i32 %63, ptr %44, align 4
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !17
  %64 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %53) #20
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  tail call void @virtqueue_disable_cb(ptr noundef %52) #20
  tail call void @__napi_schedule(ptr noundef %53) #20
  br label %66

66:                                               ; preds = %65, %61
  tail call fastcc void @local_bh_enable() #20
  br label %67

67:                                               ; preds = %66, %60, %49
  %68 = add nuw nsw i32 %13, 1
  %69 = load i16, ptr %3, align 4
  %70 = zext i16 %69 to i32
  %71 = icmp ult i32 %68, %70
  br i1 %71, label %12, label %72

72:                                               ; preds = %67, %37, %24, %1
  %73 = phi i32 [ %34, %37 ], [ 0, %1 ], [ %29, %24 ], [ 0, %67 ]
  ret i32 %73
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @virtnet_close(ptr noundef %0) #3 {
  %2 = getelementptr i8, ptr %0, i32 1444
  %3 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %2) #20
  %4 = getelementptr i8, ptr %0, i32 1432
  %5 = load i16, ptr %4, align 4
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %27, label %7

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %0, i32 1424
  %9 = getelementptr i8, ptr %0, i32 1420
  br label %10

10:                                               ; preds = %22, %7
  %11 = phi i32 [ 0, %7 ], [ %23, %22 ]
  %12 = load ptr, ptr %8, align 4
  %13 = getelementptr %struct.receive_queue, ptr %12, i32 %11, i32 11
  tail call void @xdp_rxq_info_unreg(ptr noundef %13) #20
  %14 = load ptr, ptr %8, align 4
  %15 = getelementptr %struct.receive_queue, ptr %14, i32 %11, i32 1
  tail call void @napi_disable(ptr noundef %15) #20
  %16 = load ptr, ptr %9, align 4
  %17 = getelementptr %struct.send_queue, ptr %16, i32 %11, i32 4, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %10
  %21 = getelementptr %struct.send_queue, ptr %16, i32 %11, i32 4
  tail call void @napi_disable(ptr noundef %21) #20
  br label %22

22:                                               ; preds = %20, %10
  %23 = add nuw nsw i32 %11, 1
  %24 = load i16, ptr %4, align 4
  %25 = zext i16 %24 to i32
  %26 = icmp ult i32 %23, %25
  br i1 %26, label %10, label %27

27:                                               ; preds = %22, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @start_xmit(ptr noundef %0, ptr noundef %1) #3 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 9
  %4 = load i16, ptr %3, align 4
  %5 = zext i16 %4 to i32
  %6 = getelementptr i8, ptr %1, i32 1420
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.send_queue, ptr %7, i32 %5
  %9 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 87
  %10 = load ptr, ptr %9, align 64
  %11 = tail call i32 @llvm.read_register.i32(metadata !0) #20
  %12 = inttoptr i32 %11 to ptr
  %13 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %12) #10, !srcloc !18
  %14 = add i32 %13, ptrtoint (ptr getelementptr inbounds (%struct.softnet_data, ptr @softnet_data, i32 0, i32 10, i32 1) to i32)
  %15 = inttoptr i32 %14 to ptr
  %16 = load i8, ptr %15, align 1
  %17 = icmp eq i8 %16, 0
  %18 = getelementptr %struct.send_queue, ptr %7, i32 %5, i32 4, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %2
  %22 = load ptr, ptr %8, align 8
  tail call void @virtqueue_disable_cb(ptr noundef %22) #20
  tail call fastcc void @free_old_xmit_skbs(ptr noundef %8, i1 noundef zeroext false)
  br i1 %17, label %23, label %31

23:                                               ; preds = %21
  %24 = load ptr, ptr %8, align 8
  %25 = tail call zeroext i1 @virtqueue_enable_cb_delayed(ptr noundef %24) #20
  br i1 %25, label %31, label %26

26:                                               ; preds = %26, %23
  %27 = load ptr, ptr %8, align 8
  tail call void @virtqueue_disable_cb(ptr noundef %27) #20
  tail call fastcc void @free_old_xmit_skbs(ptr noundef %8, i1 noundef zeroext false)
  %28 = load ptr, ptr %8, align 8
  %29 = tail call zeroext i1 @virtqueue_enable_cb_delayed(ptr noundef %28) #20
  br i1 %29, label %31, label %26

30:                                               ; preds = %2
  tail call fastcc void @free_old_xmit_skbs(ptr noundef %8, i1 noundef zeroext false)
  br label %31

31:                                               ; preds = %30, %26, %23, %21
  %32 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.skb_shared_info, ptr %33, i32 0, i32 3
  %35 = load i8, ptr %34, align 1
  %36 = and i8 %35, 2
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %31
  tail call void @skb_tstamp_tx(ptr noundef %0, ptr noundef null) #20
  br label %39

39:                                               ; preds = %38, %31
  %40 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %41 = load ptr, ptr %8, align 8
  %42 = getelementptr inbounds %struct.virtqueue, ptr %41, i32 0, i32 3
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.virtio_device, ptr %43, i32 0, i32 12
  %45 = load ptr, ptr %44, align 8
  %46 = getelementptr inbounds %struct.virtnet_info, ptr %45, i32 0, i32 14
  %47 = load i8, ptr %46, align 1
  %48 = zext i8 %47 to i32
  %49 = getelementptr inbounds %struct.virtnet_info, ptr %45, i32 0, i32 13
  %50 = load i8, ptr %49, align 2, !range !9
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %79, label %52

52:                                               ; preds = %39
  %53 = load ptr, ptr %40, align 4
  %54 = ptrtoint ptr %53 to i32
  %55 = and i32 %54, 1
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %79

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 11
  %59 = load i8, ptr %58, align 2
  %60 = and i8 %59, 1
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %70, label %62

62:                                               ; preds = %57
  %63 = load ptr, ptr %32, align 4
  %64 = getelementptr inbounds %struct.skb_shared_info, ptr %63, i32 0, i32 10
  %65 = load volatile i32, ptr %64, align 4
  %66 = and i32 %65, 65535
  %67 = ashr i32 %65, 16
  %68 = sub nsw i32 %66, %67
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %70, label %79

70:                                               ; preds = %62, %57
  %71 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %72 = load ptr, ptr %71, align 8
  %73 = ptrtoint ptr %72 to i32
  %74 = sub i32 %54, %73
  %75 = icmp ult i32 %74, %48
  br i1 %75, label %79, label %76

76:                                               ; preds = %70
  %77 = sub nsw i32 0, %48
  %78 = getelementptr i8, ptr %53, i32 %77
  br label %81

79:                                               ; preds = %70, %62, %52, %39
  %80 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3
  br label %81

81:                                               ; preds = %79, %76
  %82 = phi i1 [ true, %76 ], [ false, %79 ]
  %83 = phi ptr [ %78, %76 ], [ %80, %79 ]
  tail call void @llvm.memset.p0.i32(ptr noundef align 2 dereferenceable(10) %83, i8 0, i32 10, i1 false) #20
  %84 = load ptr, ptr %32, align 4
  %85 = getelementptr inbounds %struct.skb_shared_info, ptr %84, i32 0, i32 4
  %86 = load i16, ptr %85, align 4
  %87 = icmp eq i16 %86, 0
  br i1 %87, label %113, label %88

88:                                               ; preds = %81
  %89 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %90 = load i32, ptr %89, align 8
  %91 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %92 = load i32, ptr %91, align 4
  %93 = sub i32 %90, %92
  %94 = trunc i32 %93 to i16
  %95 = getelementptr inbounds %struct.virtio_net_hdr, ptr %83, i32 0, i32 2
  store i16 %94, ptr %95, align 2
  %96 = load i16, ptr %85, align 4
  %97 = getelementptr inbounds %struct.virtio_net_hdr, ptr %83, i32 0, i32 3
  store i16 %96, ptr %97, align 2
  %98 = getelementptr inbounds %struct.skb_shared_info, ptr %84, i32 0, i32 8
  %99 = load i32, ptr %98, align 8
  %100 = and i32 %99, 1
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %88
  %103 = and i32 %99, 16
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %196, label %105

105:                                              ; preds = %102, %88
  %106 = phi i8 [ 1, %88 ], [ 4, %102 ]
  %107 = phi i8 [ -127, %88 ], [ -124, %102 ]
  %108 = getelementptr inbounds %struct.virtio_net_hdr, ptr %83, i32 0, i32 1
  store i8 %106, ptr %108, align 1
  %109 = load i32, ptr %98, align 8
  %110 = and i32 %109, 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %105
  store i8 %107, ptr %108, align 1
  br label %113

113:                                              ; preds = %112, %105, %81
  %114 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %115 = load i16, ptr %114, align 8
  %116 = and i16 %115, 96
  %117 = icmp eq i16 %116, 96
  br i1 %117, label %118, label %134

118:                                              ; preds = %113
  store i8 1, ptr %83, align 2
  %119 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  %120 = load i16, ptr %119, align 4
  %121 = zext i16 %120 to i32
  %122 = load ptr, ptr %40, align 4
  %123 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %124 = load ptr, ptr %123, align 8
  %125 = ptrtoint ptr %122 to i32
  %126 = ptrtoint ptr %124 to i32
  %127 = sub i32 %121, %125
  %128 = add i32 %127, %126
  %129 = trunc i32 %128 to i16
  %130 = getelementptr inbounds %struct.virtio_net_hdr, ptr %83, i32 0, i32 4
  store i16 %129, ptr %130, align 2
  %131 = getelementptr inbounds %struct.anon.58, ptr %119, i32 0, i32 1
  %132 = load i16, ptr %131, align 2
  %133 = getelementptr inbounds %struct.virtio_net_hdr, ptr %83, i32 0, i32 5
  store i16 %132, ptr %133, align 2
  br label %134

134:                                              ; preds = %118, %113
  %135 = getelementptr inbounds %struct.virtnet_info, ptr %45, i32 0, i32 11
  %136 = load i8, ptr %135, align 4, !range !9
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %140, label %138

138:                                              ; preds = %134
  %139 = getelementptr inbounds %struct.virtio_net_hdr_mrg_rxbuf, ptr %83, i32 0, i32 1
  store i16 0, ptr %139, align 2
  br label %140

140:                                              ; preds = %138, %134
  %141 = getelementptr %struct.send_queue, ptr %7, i32 %5, i32 1
  %142 = load ptr, ptr %32, align 4
  %143 = getelementptr inbounds %struct.skb_shared_info, ptr %142, i32 0, i32 2
  %144 = load i8, ptr %143, align 2
  %145 = zext i8 %144 to i32
  %146 = select i1 %82, i32 1, i32 2
  %147 = add nuw nsw i32 %146, %145
  tail call void @sg_init_table(ptr noundef %141, i32 noundef %147) #20
  br i1 %82, label %148, label %167

148:                                              ; preds = %140
  %149 = load ptr, ptr %40, align 4
  %150 = sub nsw i32 0, %48
  %151 = getelementptr i8, ptr %149, i32 %150
  store ptr %151, ptr %40, align 4
  %152 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %153 = load i32, ptr %152, align 8
  %154 = add i32 %153, %48
  store i32 %154, ptr %152, align 8
  %155 = tail call i32 @skb_to_sgvec(ptr noundef %0, ptr noundef %141, i32 noundef 0, i32 noundef %154) #20
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %196, label %157, !prof !19

157:                                              ; preds = %148
  %158 = load i32, ptr %152, align 8
  %159 = sub i32 %158, %48
  store i32 %159, ptr %152, align 8
  %160 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %161 = load i32, ptr %160, align 4
  %162 = icmp ult i32 %159, %161
  br i1 %162, label %163, label %164, !prof !19

163:                                              ; preds = %157
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #20, !srcloc !20
  unreachable

164:                                              ; preds = %157
  %165 = load ptr, ptr %40, align 4
  %166 = getelementptr i8, ptr %165, i32 %48
  store ptr %166, ptr %40, align 4
  br label %191

167:                                              ; preds = %140
  %168 = load ptr, ptr @mem_map, align 4
  %169 = ptrtoint ptr %83 to i32
  %170 = add i32 %169, 1073741824
  %171 = lshr i32 %170, 12
  %172 = getelementptr %struct.page, ptr %168, i32 %171
  %173 = ptrtoint ptr %172 to i32
  %174 = and i32 %173, 3
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %177, label %176, !prof !11

176:                                              ; preds = %167
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #20, !srcloc !21
  unreachable

177:                                              ; preds = %167
  %178 = and i32 %169, 4095
  %179 = load i32, ptr %141, align 4
  %180 = and i32 %179, 3
  %181 = or i32 %180, %173
  store i32 %181, ptr %141, align 4
  %182 = getelementptr %struct.send_queue, ptr %7, i32 %5, i32 1, i32 0, i32 1
  store i32 %178, ptr %182, align 4
  %183 = getelementptr %struct.send_queue, ptr %7, i32 %5, i32 1, i32 0, i32 2
  store i32 %48, ptr %183, align 4
  %184 = getelementptr %struct.send_queue, ptr %7, i32 %5, i32 1, i32 1
  %185 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %186 = load i32, ptr %185, align 8
  %187 = tail call i32 @skb_to_sgvec(ptr noundef %0, ptr noundef %184, i32 noundef 0, i32 noundef %186) #20
  %188 = icmp slt i32 %187, 0
  br i1 %188, label %196, label %189, !prof !19

189:                                              ; preds = %177
  %190 = add nuw i32 %187, 1
  br label %191

191:                                              ; preds = %189, %164
  %192 = phi i32 [ %155, %164 ], [ %190, %189 ]
  %193 = load ptr, ptr %8, align 8
  %194 = tail call i32 @virtqueue_add_outbuf(ptr noundef %193, ptr noundef %141, i32 noundef %192, ptr noundef %0, i32 noundef 2592) #20
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %209, label %196, !prof !11

196:                                              ; preds = %191, %177, %148, %102
  %197 = phi i32 [ %194, %191 ], [ -71, %102 ], [ %187, %177 ], [ %155, %148 ]
  %198 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 18
  %199 = load i32, ptr %198, align 8
  %200 = add i32 %199, 1
  store i32 %200, ptr %198, align 8
  %201 = tail call i32 @net_ratelimit() #20
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %205, label %203

203:                                              ; preds = %196
  %204 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 111
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %204, ptr noundef nonnull @.str.12, i32 noundef %5, i32 noundef %197) #21
  br label %205

205:                                              ; preds = %203, %196
  %206 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 7
  %207 = load i32, ptr %206, align 4
  %208 = add i32 %207, 1
  store i32 %208, ptr %206, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %0, i32 noundef 1) #20
  br label %262

209:                                              ; preds = %191
  br i1 %20, label %210, label %221

210:                                              ; preds = %209
  %211 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4, i32 0, i32 1
  %212 = load ptr, ptr %211, align 4
  %213 = icmp eq ptr %212, null
  br i1 %213, label %216, label %214

214:                                              ; preds = %210
  tail call void %212(ptr noundef %0) #20
  store ptr null, ptr %211, align 4
  %215 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 1
  store ptr null, ptr %215, align 4
  br label %221

216:                                              ; preds = %210
  %217 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 1
  %218 = load ptr, ptr %217, align 4
  %219 = icmp eq ptr %218, null
  br i1 %219, label %221, label %220, !prof !11

220:                                              ; preds = %216
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #20, !srcloc !22
  unreachable

221:                                              ; preds = %216, %214, %209
  %222 = load ptr, ptr %8, align 8
  %223 = getelementptr inbounds %struct.virtqueue, ptr %222, i32 0, i32 5
  %224 = load i32, ptr %223, align 4
  %225 = icmp ult i32 %224, 19
  br i1 %225, label %226, label %241

226:                                              ; preds = %221
  %227 = load ptr, ptr %9, align 64
  %228 = getelementptr %struct.netdev_queue, ptr %227, i32 %5, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %228) #20
  br i1 %20, label %229, label %241

229:                                              ; preds = %226
  %230 = load ptr, ptr %8, align 8
  %231 = tail call zeroext i1 @virtqueue_enable_cb_delayed(ptr noundef %230) #20
  br i1 %231, label %241, label %232, !prof !11

232:                                              ; preds = %229
  tail call fastcc void @free_old_xmit_skbs(ptr noundef %8, i1 noundef zeroext false)
  %233 = load ptr, ptr %8, align 8
  %234 = getelementptr inbounds %struct.virtqueue, ptr %233, i32 0, i32 5
  %235 = load i32, ptr %234, align 4
  %236 = icmp ugt i32 %235, 18
  br i1 %236, label %237, label %241

237:                                              ; preds = %232
  %238 = load ptr, ptr %9, align 64
  %239 = getelementptr %struct.netdev_queue, ptr %238, i32 %5, i32 12
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %239) #20
  %240 = load ptr, ptr %8, align 8
  tail call void @virtqueue_disable_cb(ptr noundef %240) #20
  br label %241

241:                                              ; preds = %237, %232, %229, %226, %221
  br i1 %17, label %247, label %242

242:                                              ; preds = %241
  %243 = getelementptr %struct.netdev_queue, ptr %10, i32 %5, i32 12
  %244 = load i32, ptr %243, align 4
  %245 = and i32 %244, 3
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %262, label %247

247:                                              ; preds = %242, %241
  %248 = load ptr, ptr %8, align 8
  %249 = tail call zeroext i1 @virtqueue_kick_prepare(ptr noundef %248) #20
  br i1 %249, label %250, label %262

250:                                              ; preds = %247
  %251 = load ptr, ptr %8, align 8
  %252 = tail call zeroext i1 @virtqueue_notify(ptr noundef %251) #20
  br i1 %252, label %253, label %262

253:                                              ; preds = %250
  %254 = getelementptr %struct.send_queue, ptr %7, i32 %5, i32 3
  %255 = load i32, ptr %254, align 4
  %256 = add i32 %255, 1
  store i32 %256, ptr %254, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #20, !srcloc !23
  %257 = getelementptr %struct.send_queue, ptr %7, i32 %5, i32 3, i32 5
  %258 = load i64, ptr %257, align 8
  %259 = add i64 %258, 1
  store i64 %259, ptr %257, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #20, !srcloc !24
  %260 = load i32, ptr %254, align 4
  %261 = add i32 %260, 1
  store i32 %261, ptr %254, align 4
  br label %262

262:                                              ; preds = %253, %250, %247, %242, %205
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @passthru_features_check(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @virtnet_set_rx_mode(ptr noundef %0) #3 {
  %2 = alloca [2 x %struct.scatterlist], align 4
  %3 = getelementptr i8, ptr %0, i32 1408
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %2, i8 0, i32 40, i1 false), !annotation !10
  %4 = load ptr, ptr %3, align 4
  tail call void @virtio_check_driver_offered_feature(ptr noundef %4, i32 noundef 18) #20
  %5 = getelementptr inbounds %struct.virtio_device, ptr %4, i32 0, i32 11
  %6 = load i64, ptr %5, align 8
  %7 = and i64 %6, 262144
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %122, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 14
  %11 = load i32, ptr %10, align 8
  %12 = lshr i32 %11, 8
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = getelementptr i8, ptr %0, i32 1524
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.control_buf, ptr %16, i32 0, i32 3
  store i8 %14, ptr %17, align 2
  %18 = load i32, ptr %10, align 8
  %19 = lshr i32 %18, 9
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = load ptr, ptr %15, align 4
  %23 = getelementptr inbounds %struct.control_buf, ptr %22, i32 0, i32 4
  store i8 %21, ptr %23, align 1
  %24 = load ptr, ptr %15, align 4
  %25 = getelementptr inbounds %struct.control_buf, ptr %24, i32 0, i32 3
  call void @sg_init_one(ptr noundef nonnull %2, ptr noundef %25, i32 noundef 1) #20
  %26 = call fastcc zeroext i1 @virtnet_send_command(ptr noundef %3, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull %2)
  br i1 %26, label %34, label %27

27:                                               ; preds = %9
  %28 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 111
  %29 = load ptr, ptr %15, align 4
  %30 = getelementptr inbounds %struct.control_buf, ptr %29, i32 0, i32 3
  %31 = load i8, ptr %30, align 2
  %32 = icmp eq i8 %31, 0
  %33 = select i1 %32, ptr @.str.16, ptr @.str.15
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %28, ptr noundef nonnull @.str.14, ptr noundef nonnull %33) #21
  br label %34

34:                                               ; preds = %27, %9
  %35 = load ptr, ptr %15, align 4
  %36 = getelementptr inbounds %struct.control_buf, ptr %35, i32 0, i32 4
  call void @sg_init_one(ptr noundef nonnull %2, ptr noundef %36, i32 noundef 1) #20
  %37 = call fastcc zeroext i1 @virtnet_send_command(ptr noundef %3, i8 noundef zeroext 0, i8 noundef zeroext 1, ptr noundef nonnull %2)
  br i1 %37, label %45, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 111
  %40 = load ptr, ptr %15, align 4
  %41 = getelementptr inbounds %struct.control_buf, ptr %40, i32 0, i32 4
  %42 = load i8, ptr %41, align 1
  %43 = icmp eq i8 %42, 0
  %44 = select i1 %43, ptr @.str.16, ptr @.str.15
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %39, ptr noundef nonnull @.str.17, ptr noundef nonnull %44) #21
  br label %45

45:                                               ; preds = %38, %34
  %46 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 60
  %47 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 60, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 61
  %50 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 61, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = add i32 %51, %48
  %53 = mul i32 %52, 6
  %54 = add i32 %53, 8
  %55 = call noalias align 64 ptr @__kmalloc(i32 noundef %54, i32 noundef 2848) #23
  %56 = icmp eq ptr %55, null
  br i1 %56, label %122, label %57

57:                                               ; preds = %45
  call void @sg_init_table(ptr noundef nonnull %2, i32 noundef 2) #20
  store i32 %48, ptr %55, align 64
  %58 = load ptr, ptr %46, align 4
  %59 = icmp eq ptr %58, %46
  br i1 %59, label %68, label %60

60:                                               ; preds = %60, %57
  %61 = phi ptr [ %66, %60 ], [ %58, %57 ]
  %62 = phi i32 [ %63, %60 ], [ 0, %57 ]
  %63 = add i32 %62, 1
  %64 = getelementptr %struct.virtio_net_ctrl_mac, ptr %55, i32 0, i32 1, i32 %62
  %65 = getelementptr inbounds %struct.netdev_hw_addr, ptr %61, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %64, ptr noundef align 4 dereferenceable(6) %65, i32 6, i1 false)
  %66 = load ptr, ptr %61, align 4
  %67 = icmp eq ptr %66, %46
  br i1 %67, label %68, label %60

68:                                               ; preds = %60, %57
  %69 = load ptr, ptr @mem_map, align 4
  %70 = ptrtoint ptr %55 to i32
  %71 = add i32 %70, 1073741824
  %72 = lshr i32 %71, 12
  %73 = getelementptr %struct.page, ptr %69, i32 %72
  %74 = ptrtoint ptr %73 to i32
  %75 = and i32 %74, 3
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %78, label %77, !prof !11

77:                                               ; preds = %68
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #20, !srcloc !21
  unreachable

78:                                               ; preds = %68
  %79 = mul i32 %48, 6
  %80 = add i32 %79, 4
  %81 = and i32 %70, 4032
  %82 = load i32, ptr %2, align 4
  %83 = and i32 %82, 3
  %84 = or i32 %83, %74
  store i32 %84, ptr %2, align 4
  %85 = getelementptr inbounds %struct.scatterlist, ptr %2, i32 0, i32 1
  store i32 %81, ptr %85, align 4
  %86 = getelementptr inbounds %struct.scatterlist, ptr %2, i32 0, i32 2
  store i32 %80, ptr %86, align 4
  %87 = getelementptr %struct.virtio_net_ctrl_mac, ptr %55, i32 0, i32 1, i32 %48
  store i32 %51, ptr %87, align 2
  %88 = load ptr, ptr %49, align 4
  %89 = icmp eq ptr %88, %49
  br i1 %89, label %98, label %90

90:                                               ; preds = %90, %78
  %91 = phi ptr [ %96, %90 ], [ %88, %78 ]
  %92 = phi i32 [ %93, %90 ], [ 0, %78 ]
  %93 = add i32 %92, 1
  %94 = getelementptr %struct.virtio_net_ctrl_mac, ptr %87, i32 0, i32 1, i32 %92
  %95 = getelementptr inbounds %struct.netdev_hw_addr, ptr %91, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %94, ptr noundef align 4 dereferenceable(6) %95, i32 6, i1 false)
  %96 = load ptr, ptr %91, align 4
  %97 = icmp eq ptr %96, %49
  br i1 %97, label %98, label %90

98:                                               ; preds = %90, %78
  %99 = load ptr, ptr @mem_map, align 4
  %100 = ptrtoint ptr %87 to i32
  %101 = add i32 %100, 1073741824
  %102 = lshr i32 %101, 12
  %103 = getelementptr %struct.page, ptr %99, i32 %102
  %104 = ptrtoint ptr %103 to i32
  %105 = and i32 %104, 3
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %108, label %107, !prof !11

107:                                              ; preds = %98
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #20, !srcloc !21
  unreachable

108:                                              ; preds = %98
  %109 = mul i32 %51, 6
  %110 = add i32 %109, 4
  %111 = getelementptr inbounds [2 x %struct.scatterlist], ptr %2, i32 0, i32 1
  %112 = and i32 %100, 4094
  %113 = load i32, ptr %111, align 4
  %114 = and i32 %113, 3
  %115 = or i32 %114, %104
  store i32 %115, ptr %111, align 4
  %116 = getelementptr inbounds [2 x %struct.scatterlist], ptr %2, i32 0, i32 1, i32 1
  store i32 %112, ptr %116, align 4
  %117 = getelementptr inbounds [2 x %struct.scatterlist], ptr %2, i32 0, i32 1, i32 2
  store i32 %110, ptr %117, align 4
  %118 = call fastcc zeroext i1 @virtnet_send_command(ptr noundef %3, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef nonnull %2)
  br i1 %118, label %121, label %119

119:                                              ; preds = %108
  %120 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 111
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %120, ptr noundef nonnull @.str.18) #21
  br label %121

121:                                              ; preds = %119, %108
  call void @kfree(ptr noundef nonnull %55) #20
  br label %122

122:                                              ; preds = %121, %45, %1
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @virtnet_set_mac_address(ptr noundef %0, ptr noundef %1) #3 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.scatterlist, align 4
  %5 = getelementptr i8, ptr %0, i32 1408
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i32 20, i1 false), !annotation !10
  %7 = getelementptr inbounds %struct.virtio_device, ptr %6, i32 0, i32 11
  %8 = load i64, ptr %7, align 8
  %9 = and i64 %8, 4611686018427387904
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %53

11:                                               ; preds = %2
  %12 = tail call ptr @kmemdup(ptr noundef %1, i32 noundef 16, i32 noundef 3264) #20
  %13 = icmp eq ptr %12, null
  br i1 %13, label %53, label %14

14:                                               ; preds = %11
  %15 = tail call i32 @eth_prepare_mac_addr_change(ptr noundef %0, ptr noundef nonnull %12) #20
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %51

17:                                               ; preds = %14
  tail call void @virtio_check_driver_offered_feature(ptr noundef %6, i32 noundef 23) #20
  %18 = load i64, ptr %7, align 8
  %19 = and i64 %18, 8388608
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.sockaddr, ptr %12, i32 0, i32 1
  %23 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 51
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  call void @sg_init_one(ptr noundef nonnull %4, ptr noundef %22, i32 noundef %25) #20
  %26 = call fastcc zeroext i1 @virtnet_send_command(ptr noundef %5, i8 noundef zeroext 1, i8 noundef zeroext 1, ptr noundef nonnull %4)
  br i1 %26, label %50, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.virtio_device, ptr %6, i32 0, i32 6
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %28, ptr noundef nonnull @.str.20) #21
  br label %51

29:                                               ; preds = %17
  tail call void @virtio_check_driver_offered_feature(ptr noundef %6, i32 noundef 5) #20
  %30 = load i64, ptr %7, align 8
  %31 = and i64 %30, 4294967328
  %32 = icmp eq i64 %31, 32
  br i1 %32, label %33, label %50

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 51
  %35 = load i8, ptr %34, align 1
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %50, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.virtio_device, ptr %6, i32 0, i32 8
  br label %39

39:                                               ; preds = %39, %37
  %40 = phi i32 [ 0, %37 ], [ %46, %39 ]
  %41 = getelementptr %struct.sockaddr, ptr %12, i32 0, i32 1, i32 %40
  %42 = load i8, ptr %41, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3)
  store i8 %42, ptr %3, align 1
  %43 = load ptr, ptr %38, align 8
  %44 = getelementptr inbounds %struct.virtio_config_ops, ptr %43, i32 0, i32 2
  %45 = load ptr, ptr %44, align 4
  call void %45(ptr noundef %6, i32 noundef %40, ptr noundef nonnull %3, i32 noundef 1) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  %46 = add nuw nsw i32 %40, 1
  %47 = load i8, ptr %34, align 1
  %48 = zext i8 %47 to i32
  %49 = icmp ult i32 %46, %48
  br i1 %49, label %39, label %50

50:                                               ; preds = %39, %33, %29, %21
  call void @eth_commit_mac_addr_change(ptr noundef %0, ptr noundef %1) #20
  br label %51

51:                                               ; preds = %50, %27, %14
  %52 = phi i32 [ %15, %14 ], [ 0, %50 ], [ -22, %27 ]
  call void @kfree(ptr noundef nonnull %12) #20
  br label %53

53:                                               ; preds = %51, %11, %2
  %54 = phi i32 [ %52, %51 ], [ -95, %2 ], [ -12, %11 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #20
  ret i32 %54
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @virtnet_tx_timeout(ptr noundef %0, i32 noundef %1) #3 {
  %3 = getelementptr i8, ptr %0, i32 1420
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr %struct.send_queue, ptr %4, i32 %1
  %6 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  %7 = load ptr, ptr %6, align 64
  %8 = getelementptr %struct.send_queue, ptr %4, i32 %1, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, 1
  store i32 %10, ptr %8, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #20, !srcloc !23
  %11 = getelementptr %struct.send_queue, ptr %4, i32 %1, i32 3, i32 6
  %12 = load i64, ptr %11, align 8
  %13 = add i64 %12, 1
  store i64 %13, ptr %11, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #20, !srcloc !24
  %14 = load i32, ptr %8, align 4
  %15 = add i32 %14, 1
  store i32 %15, ptr %8, align 4
  %16 = getelementptr %struct.send_queue, ptr %4, i32 %1, i32 2
  %17 = load ptr, ptr %5, align 8
  %18 = getelementptr inbounds %struct.virtqueue, ptr %17, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.virtqueue, ptr %17, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = load volatile i32, ptr @jiffies, align 64
  %23 = getelementptr %struct.netdev_queue, ptr %7, i32 %1, i32 11
  %24 = load volatile i32, ptr %23, align 8
  %25 = sub i32 %22, %24
  %26 = tail call i32 @jiffies_to_usecs(i32 noundef %25) #20
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.21, i32 noundef %1, ptr noundef %16, i32 noundef %19, ptr noundef %21, i32 noundef %26) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @virtnet_stats(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #3 {
  %3 = getelementptr i8, ptr %0, i32 1432
  %4 = load i16, ptr %3, align 4
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %74, label %6

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %0, i32 1424
  %8 = getelementptr i8, ptr %0, i32 1420
  %9 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %1, i32 0, i32 1
  %10 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %1, i32 0, i32 2
  %11 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %1, i32 0, i32 3
  %12 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %1, i32 0, i32 6
  %13 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %1, i32 0, i32 5
  br label %14

14:                                               ; preds = %57, %6
  %15 = phi i32 [ 0, %6 ], [ %70, %57 ]
  %16 = load ptr, ptr %7, align 4
  %17 = load ptr, ptr %8, align 4
  %18 = getelementptr %struct.send_queue, ptr %17, i32 %15, i32 3
  %19 = getelementptr %struct.send_queue, ptr %17, i32 %15, i32 3, i32 1
  %20 = getelementptr %struct.send_queue, ptr %17, i32 %15, i32 3, i32 2
  %21 = getelementptr %struct.send_queue, ptr %17, i32 %15, i32 3, i32 6
  br label %22

22:                                               ; preds = %30, %14
  %23 = load volatile i32, ptr %18, align 4
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %26, %22
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !25
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #20, !srcloc !26
  %27 = load volatile i32, ptr %18, align 4
  %28 = and i32 %27, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %26

30:                                               ; preds = %26, %22
  %31 = phi i32 [ %23, %22 ], [ %27, %26 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !27
  %32 = load i64, ptr %19, align 8
  %33 = load i64, ptr %20, align 8
  %34 = load i64, ptr %21, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !28
  %35 = load volatile i32, ptr %18, align 4
  %36 = icmp eq i32 %35, %31
  br i1 %36, label %37, label %22

37:                                               ; preds = %30
  %38 = getelementptr %struct.receive_queue, ptr %16, i32 %15, i32 3
  %39 = getelementptr %struct.receive_queue, ptr %16, i32 %15, i32 3, i32 1
  %40 = getelementptr %struct.receive_queue, ptr %16, i32 %15, i32 3, i32 2
  %41 = getelementptr %struct.receive_queue, ptr %16, i32 %15, i32 3, i32 3
  br label %42

42:                                               ; preds = %50, %37
  %43 = load volatile i32, ptr %38, align 4
  %44 = and i32 %43, 1
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %46, %42
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !25
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #20, !srcloc !26
  %47 = load volatile i32, ptr %38, align 4
  %48 = and i32 %47, 1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %46

50:                                               ; preds = %46, %42
  %51 = phi i32 [ %43, %42 ], [ %47, %46 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !27
  %52 = load i64, ptr %39, align 8
  %53 = load i64, ptr %40, align 8
  %54 = load i64, ptr %41, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !28
  %55 = load volatile i32, ptr %38, align 4
  %56 = icmp eq i32 %55, %51
  br i1 %56, label %57, label %42

57:                                               ; preds = %50
  %58 = load i64, ptr %1, align 8
  %59 = add i64 %58, %52
  store i64 %59, ptr %1, align 8
  %60 = load i64, ptr %9, align 8
  %61 = add i64 %60, %32
  store i64 %61, ptr %9, align 8
  %62 = load i64, ptr %10, align 8
  %63 = add i64 %62, %53
  store i64 %63, ptr %10, align 8
  %64 = load i64, ptr %11, align 8
  %65 = add i64 %64, %33
  store i64 %65, ptr %11, align 8
  %66 = load i64, ptr %12, align 8
  %67 = add i64 %66, %54
  store i64 %67, ptr %12, align 8
  %68 = load i64, ptr %13, align 8
  %69 = add i64 %68, %34
  store i64 %69, ptr %13, align 8
  %70 = add nuw nsw i32 %15, 1
  %71 = load i16, ptr %3, align 4
  %72 = zext i16 %71 to i32
  %73 = icmp ult i32 %70, %72
  br i1 %73, label %14, label %74

74:                                               ; preds = %57, %2
  %75 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 36, i32 7
  %76 = load i32, ptr %75, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %1, i32 0, i32 7
  store i64 %77, ptr %78, align 8
  %79 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 36, i32 18
  %80 = load i32, ptr %79, align 8
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %1, i32 0, i32 18
  store i64 %81, ptr %82, align 8
  %83 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 36, i32 10
  %84 = load i32, ptr %83, align 8
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %1, i32 0, i32 10
  store i64 %85, ptr %86, align 8
  %87 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 36, i32 13
  %88 = load i32, ptr %87, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %1, i32 0, i32 13
  store i64 %89, ptr %90, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @virtnet_vlan_rx_add_vid(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2) #3 {
  %4 = alloca %struct.scatterlist, align 4
  %5 = getelementptr i8, ptr %0, i32 1408
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i32 20, i1 false), !annotation !10
  %6 = getelementptr i8, ptr %0, i32 1524
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.control_buf, ptr %7, i32 0, i32 5
  store i16 %2, ptr %8, align 8
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr inbounds %struct.control_buf, ptr %9, i32 0, i32 5
  call void @sg_init_one(ptr noundef nonnull %4, ptr noundef %10, i32 noundef 2) #20
  %11 = call fastcc zeroext i1 @virtnet_send_command(ptr noundef %5, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull %4)
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 111
  %14 = zext i16 %2 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.22, i32 noundef %14) #21
  br label %15

15:                                               ; preds = %12, %3
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #20
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @virtnet_vlan_rx_kill_vid(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2) #3 {
  %4 = alloca %struct.scatterlist, align 4
  %5 = getelementptr i8, ptr %0, i32 1408
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i32 20, i1 false), !annotation !10
  %6 = getelementptr i8, ptr %0, i32 1524
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.control_buf, ptr %7, i32 0, i32 5
  store i16 %2, ptr %8, align 8
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr inbounds %struct.control_buf, ptr %9, i32 0, i32 5
  call void @sg_init_one(ptr noundef nonnull %4, ptr noundef %10, i32 noundef 2) #20
  %11 = call fastcc zeroext i1 @virtnet_send_command(ptr noundef %5, i8 noundef zeroext 2, i8 noundef zeroext 1, ptr noundef nonnull %4)
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 111
  %14 = zext i16 %2 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.23, i32 noundef %14) #21
  br label %15

15:                                               ; preds = %12, %3
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #20
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @virtnet_set_features(ptr noundef %0, i64 noundef %1) #3 {
  %3 = alloca %struct.scatterlist, align 4
  %4 = getelementptr i8, ptr %0, i32 1408
  %5 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 23
  %6 = load i64, ptr %5, align 16
  %7 = xor i64 %6, %1
  %8 = and i64 %7, 36028797018963968
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %34, label %10

10:                                               ; preds = %2
  %11 = getelementptr i8, ptr %0, i32 1438
  %12 = load i8, ptr %11, align 2, !range !9
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %34

14:                                               ; preds = %10
  %15 = and i64 %1, 36028797018963968
  %16 = icmp eq i64 %15, 0
  %17 = getelementptr i8, ptr %0, i32 1540
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, -1921
  %20 = select i1 %16, i32 %19, i32 %18
  %21 = zext i32 %20 to i64
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, i8 0, i32 20, i1 false) #20, !annotation !10
  %22 = getelementptr i8, ptr %0, i32 1524
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.control_buf, ptr %23, i32 0, i32 6
  store i64 %21, ptr %24, align 8
  %25 = load ptr, ptr %22, align 4
  %26 = getelementptr inbounds %struct.control_buf, ptr %25, i32 0, i32 6
  call void @sg_init_one(ptr noundef nonnull %3, ptr noundef %26, i32 noundef 8) #20
  %27 = call fastcc zeroext i1 @virtnet_send_command(ptr noundef %4, i8 noundef zeroext 5, i8 noundef zeroext 0, ptr noundef nonnull %3) #20
  br i1 %27, label %32, label %28

28:                                               ; preds = %14
  %29 = getelementptr i8, ptr %0, i32 1416
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.net_device, ptr %30, i32 0, i32 111
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %31, ptr noundef nonnull @.str.24) #21
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #20
  br label %34

32:                                               ; preds = %14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #20
  %33 = getelementptr i8, ptr %0, i32 1536
  store i32 %20, ptr %33, align 4
  br label %34

34:                                               ; preds = %32, %28, %10, %2
  %35 = phi i32 [ -16, %10 ], [ -22, %28 ], [ 0, %32 ], [ 0, %2 ]
  ret i32 %35
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @virtnet_get_phys_port_name(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) #7 {
  %4 = getelementptr i8, ptr %0, i32 1408
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.virtio_device, ptr %5, i32 0, i32 11
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 4611686018427387904
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %3
  %11 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %1, i32 noundef %2, ptr noundef nonnull @.str.25)
  %12 = icmp ult i32 %11, %2
  %13 = select i1 %12, i32 0, i32 -95
  br label %14

14:                                               ; preds = %10, %3
  %15 = phi i32 [ -95, %3 ], [ %13, %10 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @virtnet_xdp(ptr noundef %0, ptr nocapture noundef readonly %1) #3 {
  %3 = alloca %struct.scatterlist, align 4
  %4 = alloca %struct.scatterlist, align 4
  %5 = alloca %struct.scatterlist, align 4
  %6 = load i32, ptr %1, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %321

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.netdev_bpf, ptr %1, i32 0, i32 1, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.netdev_bpf, ptr %1, i32 0, i32 1, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %0, i32 1408
  %14 = load ptr, ptr %13, align 4
  tail call void @virtio_check_driver_offered_feature(ptr noundef %14, i32 noundef 2) #20
  %15 = getelementptr inbounds %struct.virtio_device, ptr %14, i32 0, i32 11
  %16 = load i64, ptr %15, align 8
  %17 = and i64 %16, 4
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %52

19:                                               ; preds = %8
  %20 = load ptr, ptr %13, align 4
  tail call void @virtio_check_driver_offered_feature(ptr noundef %20, i32 noundef 7) #20
  %21 = getelementptr inbounds %struct.virtio_device, ptr %20, i32 0, i32 11
  %22 = load i64, ptr %21, align 8
  %23 = and i64 %22, 128
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %49

25:                                               ; preds = %19
  %26 = load ptr, ptr %13, align 4
  tail call void @virtio_check_driver_offered_feature(ptr noundef %26, i32 noundef 8) #20
  %27 = getelementptr inbounds %struct.virtio_device, ptr %26, i32 0, i32 11
  %28 = load i64, ptr %27, align 8
  %29 = and i64 %28, 256
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %49

31:                                               ; preds = %25
  %32 = load ptr, ptr %13, align 4
  tail call void @virtio_check_driver_offered_feature(ptr noundef %32, i32 noundef 9) #20
  %33 = getelementptr inbounds %struct.virtio_device, ptr %32, i32 0, i32 11
  %34 = load i64, ptr %33, align 8
  %35 = and i64 %34, 512
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %31
  %38 = load ptr, ptr %13, align 4
  tail call void @virtio_check_driver_offered_feature(ptr noundef %38, i32 noundef 10) #20
  %39 = getelementptr inbounds %struct.virtio_device, ptr %38, i32 0, i32 11
  %40 = load i64, ptr %39, align 8
  %41 = and i64 %40, 1024
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load ptr, ptr %13, align 4
  tail call void @virtio_check_driver_offered_feature(ptr noundef %44, i32 noundef 1) #20
  %45 = getelementptr inbounds %struct.virtio_device, ptr %44, i32 0, i32 11
  %46 = load i64, ptr %45, align 8
  %47 = and i64 %46, 2
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %43, %37, %31, %25, %19
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @virtnet_xdp_set.__msg) #20
  %50 = icmp eq ptr %12, null
  br i1 %50, label %321, label %51

51:                                               ; preds = %49
  store ptr @virtnet_xdp_set.__msg, ptr %12, align 4
  br label %321

52:                                               ; preds = %43, %8
  %53 = getelementptr i8, ptr %0, i32 1440
  %54 = load i8, ptr %53, align 4, !range !9
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %52
  %57 = getelementptr i8, ptr %0, i32 1442
  %58 = load i8, ptr %57, align 2, !range !9
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @virtnet_xdp_set.__msg.26) #20
  %61 = icmp eq ptr %12, null
  br i1 %61, label %321, label %62

62:                                               ; preds = %60
  store ptr @virtnet_xdp_set.__msg.26, ptr %12, align 4
  br label %321

63:                                               ; preds = %56, %52
  %64 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 20
  %65 = load i32, ptr %64, align 4
  %66 = icmp ugt i32 %65, 4080
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @virtnet_xdp_set.__msg.27) #20
  %68 = icmp eq ptr %12, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %67
  store ptr @virtnet_xdp_set.__msg.27, ptr %12, align 4
  br label %70

70:                                               ; preds = %69, %67
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %0, ptr noundef nonnull @.str.28, i32 noundef 4080) #21
  br label %321

71:                                               ; preds = %63
  %72 = getelementptr i8, ptr %0, i32 1434
  %73 = load i16, ptr %72, align 2
  %74 = getelementptr i8, ptr %0, i32 1436
  %75 = load i16, ptr %74, align 4
  %76 = sub i16 %73, %75
  %77 = icmp ne ptr %10, null
  %78 = load i32, ptr @nr_cpu_ids, align 4
  %79 = trunc i32 %78 to i16
  %80 = select i1 %77, i16 %79, i16 0
  %81 = zext i16 %76 to i32
  %82 = zext i16 %80 to i32
  %83 = add nuw nsw i32 %82, %81
  %84 = getelementptr i8, ptr %0, i32 1432
  %85 = load i16, ptr %84, align 4
  %86 = zext i16 %85 to i32
  %87 = icmp ugt i32 %83, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %71
  %89 = load i1, ptr @virtnet_xdp_set.__print_once, align 1
  br i1 %89, label %91, label %90

90:                                               ; preds = %88
  store i1 true, ptr @virtnet_xdp_set.__print_once, align 1
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.29, ptr noundef %0, ptr noundef nonnull @.str.30, i32 noundef %83, i32 noundef %86) #21
  br label %91

91:                                               ; preds = %90, %88, %71
  %92 = phi i16 [ %80, %71 ], [ 0, %90 ], [ 0, %88 ]
  %93 = getelementptr i8, ptr %0, i32 1424
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr inbounds %struct.receive_queue, ptr %94, i32 0, i32 2
  %96 = load ptr, ptr %95, align 32
  %97 = icmp ne ptr %96, null
  %98 = select i1 %77, i1 true, i1 %97
  br i1 %98, label %99, label %321

99:                                               ; preds = %91
  %100 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %101 = load volatile i32, ptr %100, align 4
  %102 = and i32 %101, 1
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %126, label %104

104:                                              ; preds = %99
  %105 = load i16, ptr %84, align 4
  %106 = icmp eq i16 %105, 0
  br i1 %106, label %126, label %107

107:                                              ; preds = %104
  %108 = getelementptr i8, ptr %0, i32 1420
  br label %109

109:                                              ; preds = %124, %107
  %110 = phi ptr [ %94, %107 ], [ %125, %124 ]
  %111 = phi i32 [ 0, %107 ], [ %120, %124 ]
  %112 = getelementptr %struct.receive_queue, ptr %110, i32 %111, i32 1
  tail call void @napi_disable(ptr noundef %112) #20
  %113 = load ptr, ptr %108, align 4
  %114 = getelementptr %struct.send_queue, ptr %113, i32 %111, i32 4, i32 2
  %115 = load i32, ptr %114, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %119, label %117

117:                                              ; preds = %109
  %118 = getelementptr %struct.send_queue, ptr %113, i32 %111, i32 4
  tail call void @napi_disable(ptr noundef %118) #20
  br label %119

119:                                              ; preds = %117, %109
  %120 = add nuw nsw i32 %111, 1
  %121 = load i16, ptr %84, align 4
  %122 = zext i16 %121 to i32
  %123 = icmp ult i32 %120, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %119
  %125 = load ptr, ptr %93, align 4
  br label %109

126:                                              ; preds = %119, %104, %99
  br i1 %77, label %161, label %127

127:                                              ; preds = %126
  %128 = load i16, ptr %84, align 4
  %129 = icmp eq i16 %128, 0
  br i1 %129, label %160, label %130

130:                                              ; preds = %127
  %131 = getelementptr i8, ptr %0, i32 1416
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !29
  %132 = load ptr, ptr %93, align 4
  %133 = getelementptr %struct.receive_queue, ptr %132, i32 0, i32 2
  store volatile ptr null, ptr %133, align 32
  %134 = getelementptr i8, ptr %0, i32 1536
  %135 = load i32, ptr %134, align 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %149, label %137

137:                                              ; preds = %130
  %138 = getelementptr i8, ptr %0, i32 1524
  %139 = zext i32 %135 to i64
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i32 20, i1 false) #20, !annotation !10
  %140 = load ptr, ptr %138, align 4
  %141 = getelementptr inbounds %struct.control_buf, ptr %140, i32 0, i32 6
  store i64 %139, ptr %141, align 8
  %142 = load ptr, ptr %138, align 4
  %143 = getelementptr inbounds %struct.control_buf, ptr %142, i32 0, i32 6
  call void @sg_init_one(ptr noundef nonnull %5, ptr noundef %143, i32 noundef 8) #20
  %144 = call fastcc zeroext i1 @virtnet_send_command(ptr noundef %13, i8 noundef zeroext 5, i8 noundef zeroext 0, ptr noundef nonnull %5) #20
  br i1 %144, label %148, label %145

145:                                              ; preds = %137
  %146 = load ptr, ptr %131, align 4
  %147 = getelementptr inbounds %struct.net_device, ptr %146, i32 0, i32 111
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %147, ptr noundef nonnull @.str.24) #21
  br label %148

148:                                              ; preds = %145, %137
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #20
  br label %149

149:                                              ; preds = %148, %130
  %150 = load i16, ptr %84, align 4
  %151 = icmp ugt i16 %150, 1
  br i1 %151, label %152, label %160

152:                                              ; preds = %152, %149
  %153 = phi i32 [ %156, %152 ], [ 1, %149 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !29
  %154 = load ptr, ptr %93, align 4
  %155 = getelementptr %struct.receive_queue, ptr %154, i32 %153, i32 2
  store volatile ptr null, ptr %155, align 32
  %156 = add nuw nsw i32 %153, 1
  %157 = load i16, ptr %84, align 4
  %158 = zext i16 %157 to i32
  %159 = icmp ult i32 %156, %158
  br i1 %159, label %152, label %160, !llvm.loop !30

160:                                              ; preds = %152, %149, %127
  call void @synchronize_net() #20
  br label %161

161:                                              ; preds = %160, %126
  %162 = zext i16 %92 to i32
  %163 = add nuw nsw i32 %162, %81
  %164 = trunc i32 %163 to i16
  %165 = call fastcc i32 @_virtnet_set_queues(ptr noundef %13, i16 noundef zeroext %164) #20
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %248

167:                                              ; preds = %161
  %168 = call i32 @netif_set_real_num_rx_queues(ptr noundef %0, i32 noundef %163) #20
  store i16 %92, ptr %74, align 4
  %169 = getelementptr i8, ptr %0, i32 1438
  br i1 %77, label %170, label %201

170:                                              ; preds = %167
  store i8 1, ptr %169, align 2
  %171 = load i16, ptr %84, align 4
  %172 = icmp eq i16 %171, 0
  br i1 %172, label %321, label %173

173:                                              ; preds = %170
  %174 = getelementptr i8, ptr %0, i32 1536
  %175 = getelementptr i8, ptr %0, i32 1524
  %176 = getelementptr i8, ptr %0, i32 1416
  br label %177

177:                                              ; preds = %196, %173
  %178 = phi i32 [ 0, %173 ], [ %197, %196 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !32
  %179 = load ptr, ptr %93, align 4
  %180 = getelementptr %struct.receive_queue, ptr %179, i32 %178, i32 2
  store volatile ptr %10, ptr %180, align 32
  %181 = icmp ne i32 %178, 0
  %182 = select i1 %181, i1 true, i1 %97
  br i1 %182, label %196, label %183

183:                                              ; preds = %177
  %184 = load i32, ptr %174, align 4
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %196, label %186

186:                                              ; preds = %183
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i32 20, i1 false) #20, !annotation !10
  %187 = load ptr, ptr %175, align 4
  %188 = getelementptr inbounds %struct.control_buf, ptr %187, i32 0, i32 6
  store i64 0, ptr %188, align 8
  %189 = load ptr, ptr %175, align 4
  %190 = getelementptr inbounds %struct.control_buf, ptr %189, i32 0, i32 6
  call void @sg_init_one(ptr noundef nonnull %4, ptr noundef %190, i32 noundef 8) #20
  %191 = call fastcc zeroext i1 @virtnet_send_command(ptr noundef %13, i8 noundef zeroext 5, i8 noundef zeroext 0, ptr noundef nonnull %4) #20
  br i1 %191, label %195, label %192

192:                                              ; preds = %186
  %193 = load ptr, ptr %176, align 4
  %194 = getelementptr inbounds %struct.net_device, ptr %193, i32 0, i32 111
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %194, ptr noundef nonnull @.str.24) #21
  br label %195

195:                                              ; preds = %192, %186
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #20
  br label %196

196:                                              ; preds = %195, %183, %177
  %197 = add nuw nsw i32 %178, 1
  %198 = load i16, ptr %84, align 4
  %199 = zext i16 %198 to i32
  %200 = icmp ult i32 %197, %199
  br i1 %200, label %177, label %203

201:                                              ; preds = %167
  store i8 0, ptr %169, align 2
  %202 = load i16, ptr %84, align 4
  br label %203

203:                                              ; preds = %201, %196
  %204 = phi i16 [ %202, %201 ], [ %198, %196 ]
  %205 = icmp eq i16 %204, 0
  br i1 %205, label %321, label %206

206:                                              ; preds = %203
  %207 = getelementptr i8, ptr %0, i32 1420
  %208 = getelementptr i8, ptr %0, i32 1504
  br label %209

209:                                              ; preds = %243, %206
  %210 = phi i32 [ 0, %206 ], [ %244, %243 ]
  %211 = load volatile i32, ptr %100, align 4
  %212 = and i32 %211, 1
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %243, label %214

214:                                              ; preds = %209
  %215 = load ptr, ptr %93, align 4
  %216 = getelementptr %struct.receive_queue, ptr %215, i32 %210
  %217 = load ptr, ptr %216, align 64
  %218 = getelementptr %struct.receive_queue, ptr %215, i32 %210, i32 1
  call void @napi_enable(ptr noundef %218) #20
  %219 = tail call ptr @llvm.thread.pointer() #20
  %220 = getelementptr inbounds %struct.thread_info, ptr %219, i32 0, i32 1
  %221 = load volatile i32, ptr %220, align 4
  %222 = add i32 %221, 512
  store volatile i32 %222, ptr %220, align 4
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !17
  %223 = call zeroext i1 @napi_schedule_prep(ptr noundef %218) #20
  br i1 %223, label %224, label %225

224:                                              ; preds = %214
  call void @virtqueue_disable_cb(ptr noundef %217) #20
  call void @__napi_schedule(ptr noundef %218) #20
  br label %225

225:                                              ; preds = %224, %214
  call fastcc void @local_bh_enable() #20
  %226 = load ptr, ptr %207, align 4
  %227 = getelementptr %struct.send_queue, ptr %226, i32 %210
  %228 = load ptr, ptr %227, align 8
  %229 = getelementptr %struct.send_queue, ptr %226, i32 %210, i32 4
  %230 = getelementptr %struct.send_queue, ptr %226, i32 %210, i32 4, i32 2
  %231 = load i32, ptr %230, align 4
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %243, label %233

233:                                              ; preds = %225
  %234 = load i8, ptr %208, align 4, !range !9
  %235 = icmp eq i8 %234, 0
  br i1 %235, label %236, label %237

236:                                              ; preds = %233
  store i32 0, ptr %230, align 4
  br label %243

237:                                              ; preds = %233
  call void @napi_enable(ptr noundef %229) #20
  %238 = load volatile i32, ptr %220, align 4
  %239 = add i32 %238, 512
  store volatile i32 %239, ptr %220, align 4
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !17
  %240 = call zeroext i1 @napi_schedule_prep(ptr noundef %229) #20
  br i1 %240, label %241, label %242

241:                                              ; preds = %237
  call void @virtqueue_disable_cb(ptr noundef %228) #20
  call void @__napi_schedule(ptr noundef %229) #20
  br label %242

242:                                              ; preds = %241, %237
  call fastcc void @local_bh_enable() #20
  br label %243

243:                                              ; preds = %242, %236, %225, %209
  %244 = add nuw nsw i32 %210, 1
  %245 = load i16, ptr %84, align 4
  %246 = zext i16 %245 to i32
  %247 = icmp ult i32 %244, %246
  br i1 %247, label %209, label %321

248:                                              ; preds = %161
  br i1 %77, label %276, label %249

249:                                              ; preds = %248
  %250 = getelementptr i8, ptr %0, i32 1536
  %251 = load i32, ptr %250, align 4
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %265, label %253

253:                                              ; preds = %249
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, i8 0, i32 20, i1 false) #20, !annotation !10
  %254 = getelementptr i8, ptr %0, i32 1524
  %255 = load ptr, ptr %254, align 4
  %256 = getelementptr inbounds %struct.control_buf, ptr %255, i32 0, i32 6
  store i64 0, ptr %256, align 8
  %257 = load ptr, ptr %254, align 4
  %258 = getelementptr inbounds %struct.control_buf, ptr %257, i32 0, i32 6
  call void @sg_init_one(ptr noundef nonnull %3, ptr noundef %258, i32 noundef 8) #20
  %259 = call fastcc zeroext i1 @virtnet_send_command(ptr noundef %13, i8 noundef zeroext 5, i8 noundef zeroext 0, ptr noundef nonnull %3) #20
  br i1 %259, label %264, label %260

260:                                              ; preds = %253
  %261 = getelementptr i8, ptr %0, i32 1416
  %262 = load ptr, ptr %261, align 4
  %263 = getelementptr inbounds %struct.net_device, ptr %262, i32 0, i32 111
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %263, ptr noundef nonnull @.str.24) #21
  br label %264

264:                                              ; preds = %260, %253
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #20
  br label %265

265:                                              ; preds = %264, %249
  %266 = load i16, ptr %84, align 4
  %267 = icmp eq i16 %266, 0
  br i1 %267, label %276, label %268

268:                                              ; preds = %268, %265
  %269 = phi i32 [ %272, %268 ], [ 0, %265 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !33
  %270 = load ptr, ptr %93, align 4
  %271 = getelementptr %struct.receive_queue, ptr %270, i32 %269, i32 2
  store volatile ptr %96, ptr %271, align 32
  %272 = add nuw nsw i32 %269, 1
  %273 = load i16, ptr %84, align 4
  %274 = zext i16 %273 to i32
  %275 = icmp ult i32 %272, %274
  br i1 %275, label %268, label %276

276:                                              ; preds = %268, %265, %248
  %277 = load volatile i32, ptr %100, align 4
  %278 = and i32 %277, 1
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %321, label %280

280:                                              ; preds = %276
  %281 = load i16, ptr %84, align 4
  %282 = icmp eq i16 %281, 0
  br i1 %282, label %321, label %283

283:                                              ; preds = %280
  %284 = getelementptr i8, ptr %0, i32 1420
  %285 = getelementptr i8, ptr %0, i32 1504
  br label %286

286:                                              ; preds = %316, %283
  %287 = phi i32 [ 0, %283 ], [ %317, %316 ]
  %288 = load ptr, ptr %93, align 4
  %289 = getelementptr %struct.receive_queue, ptr %288, i32 %287
  %290 = load ptr, ptr %289, align 64
  %291 = getelementptr %struct.receive_queue, ptr %288, i32 %287, i32 1
  call void @napi_enable(ptr noundef %291) #20
  %292 = tail call ptr @llvm.thread.pointer() #20
  %293 = getelementptr inbounds %struct.thread_info, ptr %292, i32 0, i32 1
  %294 = load volatile i32, ptr %293, align 4
  %295 = add i32 %294, 512
  store volatile i32 %295, ptr %293, align 4
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !17
  %296 = call zeroext i1 @napi_schedule_prep(ptr noundef %291) #20
  br i1 %296, label %297, label %298

297:                                              ; preds = %286
  call void @virtqueue_disable_cb(ptr noundef %290) #20
  call void @__napi_schedule(ptr noundef %291) #20
  br label %298

298:                                              ; preds = %297, %286
  call fastcc void @local_bh_enable() #20
  %299 = load ptr, ptr %284, align 4
  %300 = getelementptr %struct.send_queue, ptr %299, i32 %287
  %301 = load ptr, ptr %300, align 8
  %302 = getelementptr %struct.send_queue, ptr %299, i32 %287, i32 4
  %303 = getelementptr %struct.send_queue, ptr %299, i32 %287, i32 4, i32 2
  %304 = load i32, ptr %303, align 4
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %316, label %306

306:                                              ; preds = %298
  %307 = load i8, ptr %285, align 4, !range !9
  %308 = icmp eq i8 %307, 0
  br i1 %308, label %309, label %310

309:                                              ; preds = %306
  store i32 0, ptr %303, align 4
  br label %316

310:                                              ; preds = %306
  call void @napi_enable(ptr noundef %302) #20
  %311 = load volatile i32, ptr %293, align 4
  %312 = add i32 %311, 512
  store volatile i32 %312, ptr %293, align 4
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !17
  %313 = call zeroext i1 @napi_schedule_prep(ptr noundef %302) #20
  br i1 %313, label %314, label %315

314:                                              ; preds = %310
  call void @virtqueue_disable_cb(ptr noundef %301) #20
  call void @__napi_schedule(ptr noundef %302) #20
  br label %315

315:                                              ; preds = %314, %310
  call fastcc void @local_bh_enable() #20
  br label %316

316:                                              ; preds = %315, %309, %298
  %317 = add nuw nsw i32 %287, 1
  %318 = load i16, ptr %84, align 4
  %319 = zext i16 %318 to i32
  %320 = icmp ult i32 %317, %319
  br i1 %320, label %286, label %321

321:                                              ; preds = %316, %280, %276, %243, %203, %170, %91, %70, %62, %60, %51, %49, %2
  %322 = phi i32 [ -22, %2 ], [ -22, %70 ], [ -95, %51 ], [ -95, %49 ], [ -22, %62 ], [ -22, %60 ], [ 0, %91 ], [ %165, %276 ], [ 0, %203 ], [ %165, %280 ], [ 0, %170 ], [ 0, %243 ], [ %165, %316 ]
  ret i32 %322
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @virtnet_xdp_xmit(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #3 {
  %5 = alloca i32, align 4
  %6 = getelementptr i8, ptr %0, i32 1424
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  store i32 0, ptr %5, align 4, !annotation !10
  %8 = getelementptr inbounds %struct.receive_queue, ptr %7, i32 0, i32 2
  %9 = load volatile ptr, ptr %8, align 32
  %10 = icmp eq ptr %9, null
  br i1 %10, label %167, label %11

11:                                               ; preds = %4
  %12 = tail call ptr @llvm.thread.pointer() #20
  %13 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %14 = load i32, ptr %13, align 8
  %15 = getelementptr i8, ptr %0, i32 1434
  %16 = load i16, ptr %15, align 2
  %17 = zext i16 %16 to i32
  %18 = load i32, ptr @nr_cpu_ids, align 4
  %19 = icmp ult i32 %18, %17
  br i1 %19, label %20, label %26

20:                                               ; preds = %11
  %21 = getelementptr i8, ptr %0, i32 1436
  %22 = load i16, ptr %21, align 4
  %23 = zext i16 %22 to i32
  %24 = add i32 %14, %17
  %25 = sub i32 %24, %23
  br label %34

26:                                               ; preds = %11
  %27 = srem i32 %14, %17
  %28 = getelementptr i8, ptr %0, i32 1416
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.net_device, ptr %29, i32 0, i32 87
  %31 = load ptr, ptr %30, align 64
  %32 = getelementptr %struct.netdev_queue, ptr %31, i32 %27, i32 9
  tail call void @_raw_spin_lock(ptr noundef %32) #20
  %33 = getelementptr %struct.netdev_queue, ptr %31, i32 %27, i32 10
  store volatile i32 %14, ptr %33, align 4
  br label %34

34:                                               ; preds = %26, %20
  %35 = phi i32 [ %25, %20 ], [ %27, %26 ]
  %36 = getelementptr i8, ptr %0, i32 1420
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr %struct.send_queue, ptr %37, i32 %35
  %39 = icmp ult i32 %3, 2
  br i1 %39, label %40, label %117, !prof !11

40:                                               ; preds = %34
  %41 = load ptr, ptr %38, align 8
  %42 = call ptr @virtqueue_get_buf(ptr noundef %41, ptr noundef nonnull %5) #20
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %51

44:                                               ; preds = %67, %40
  %45 = phi i32 [ 0, %40 ], [ %69, %67 ]
  %46 = phi i32 [ 0, %40 ], [ %70, %67 ]
  %47 = icmp sgt i32 %1, 0
  br i1 %47, label %48, label %106

48:                                               ; preds = %44
  %49 = getelementptr i8, ptr %0, i32 1443
  %50 = getelementptr %struct.send_queue, ptr %37, i32 %35, i32 1
  br label %74

51:                                               ; preds = %67, %40
  %52 = phi ptr [ %72, %67 ], [ %42, %40 ]
  %53 = phi i32 [ %70, %67 ], [ 0, %40 ]
  %54 = phi i32 [ %69, %67 ], [ 0, %40 ]
  %55 = ptrtoint ptr %52 to i32
  %56 = and i32 %55, 1
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %64, label %58, !prof !19

58:                                               ; preds = %51
  %59 = and i32 %55, -2
  %60 = inttoptr i32 %59 to ptr
  %61 = getelementptr inbounds %struct.xdp_frame, ptr %60, i32 0, i32 1
  %62 = load i16, ptr %61, align 4
  %63 = zext i16 %62 to i32
  call void @xdp_return_frame(ptr noundef %60) #20
  br label %67

64:                                               ; preds = %51
  %65 = getelementptr inbounds %struct.sk_buff, ptr %52, i32 0, i32 5
  %66 = load i32, ptr %65, align 8
  call void @napi_consume_skb(ptr noundef nonnull %52, i32 noundef 0) #20
  br label %67

67:                                               ; preds = %64, %58
  %68 = phi i32 [ %63, %58 ], [ %66, %64 ]
  %69 = add i32 %68, %54
  %70 = add i32 %53, 1
  %71 = load ptr, ptr %38, align 8
  %72 = call ptr @virtqueue_get_buf(ptr noundef %71, ptr noundef nonnull %5) #20
  %73 = icmp eq ptr %72, null
  br i1 %73, label %44, label %51

74:                                               ; preds = %103, %48
  %75 = phi i32 [ 0, %48 ], [ %104, %103 ]
  %76 = getelementptr ptr, ptr %2, i32 %75
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.xdp_frame, ptr %77, i32 0, i32 2
  %79 = load i16, ptr %78, align 2
  %80 = load i8, ptr %49, align 1
  %81 = zext i8 %80 to i16
  %82 = icmp ult i16 %79, %81
  br i1 %82, label %106, label %83, !prof !19

83:                                               ; preds = %74
  %84 = zext i8 %80 to i32
  %85 = load ptr, ptr %77, align 4
  %86 = sub nsw i32 0, %84
  %87 = getelementptr i8, ptr %85, i32 %86
  store ptr %87, ptr %77, align 4
  %88 = load i8, ptr %49, align 1
  %89 = zext i8 %88 to i32
  call void @llvm.memset.p0.i32(ptr align 2 %87, i8 0, i32 %89, i1 false) #20
  %90 = load i8, ptr %49, align 1
  %91 = zext i8 %90 to i16
  %92 = getelementptr inbounds %struct.xdp_frame, ptr %77, i32 0, i32 1
  %93 = load i16, ptr %92, align 4
  %94 = add i16 %93, %91
  store i16 %94, ptr %92, align 4
  %95 = load ptr, ptr %77, align 4
  %96 = zext i16 %94 to i32
  call void @sg_init_one(ptr noundef %50, ptr noundef %95, i32 noundef %96) #20
  %97 = load ptr, ptr %38, align 8
  %98 = ptrtoint ptr %77 to i32
  %99 = or i32 %98, 1
  %100 = inttoptr i32 %99 to ptr
  %101 = call i32 @virtqueue_add_outbuf(ptr noundef %97, ptr noundef %50, i32 noundef 1, ptr noundef nonnull %100, i32 noundef 2592) #20
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %83
  %104 = add nuw nsw i32 %75, 1
  %105 = icmp eq i32 %104, %1
  br i1 %105, label %106, label %74

106:                                              ; preds = %103, %83, %74, %44
  %107 = phi i32 [ 0, %44 ], [ %75, %83 ], [ %75, %74 ], [ %1, %103 ]
  %108 = and i32 %3, 1
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %117, label %110

110:                                              ; preds = %106
  %111 = load ptr, ptr %38, align 8
  %112 = call zeroext i1 @virtqueue_kick_prepare(ptr noundef %111) #20
  br i1 %112, label %113, label %117

113:                                              ; preds = %110
  %114 = load ptr, ptr %38, align 8
  %115 = call zeroext i1 @virtqueue_notify(ptr noundef %114) #20
  %116 = zext i1 %115 to i32
  br label %117

117:                                              ; preds = %113, %110, %106, %34
  %118 = phi i32 [ %107, %110 ], [ %107, %106 ], [ -22, %34 ], [ %107, %113 ]
  %119 = phi i32 [ 0, %110 ], [ 0, %106 ], [ 0, %34 ], [ %116, %113 ]
  %120 = phi i32 [ %107, %110 ], [ %107, %106 ], [ 0, %34 ], [ %107, %113 ]
  %121 = phi i32 [ %45, %110 ], [ %45, %106 ], [ 0, %34 ], [ %45, %113 ]
  %122 = phi i32 [ %46, %110 ], [ %46, %106 ], [ 0, %34 ], [ %46, %113 ]
  %123 = getelementptr %struct.send_queue, ptr %37, i32 %35, i32 3
  %124 = load i32, ptr %123, align 4
  %125 = add i32 %124, 1
  store i32 %125, ptr %123, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #20, !srcloc !23
  %126 = sext i32 %121 to i64
  %127 = getelementptr %struct.send_queue, ptr %37, i32 %35, i32 3, i32 2
  %128 = load i64, ptr %127, align 8
  %129 = add i64 %128, %126
  store i64 %129, ptr %127, align 8
  %130 = sext i32 %122 to i64
  %131 = getelementptr %struct.send_queue, ptr %37, i32 %35, i32 3, i32 1
  %132 = load i64, ptr %131, align 8
  %133 = add i64 %132, %130
  store i64 %133, ptr %131, align 8
  %134 = sext i32 %1 to i64
  %135 = getelementptr %struct.send_queue, ptr %37, i32 %35, i32 3, i32 3
  %136 = load i64, ptr %135, align 8
  %137 = add i64 %136, %134
  store i64 %137, ptr %135, align 8
  %138 = sub i32 %1, %120
  %139 = sext i32 %138 to i64
  %140 = getelementptr %struct.send_queue, ptr %37, i32 %35, i32 3, i32 4
  %141 = load i64, ptr %140, align 8
  %142 = add i64 %141, %139
  store i64 %142, ptr %140, align 8
  %143 = zext i32 %119 to i64
  %144 = getelementptr %struct.send_queue, ptr %37, i32 %35, i32 3, i32 5
  %145 = load i64, ptr %144, align 8
  %146 = add i64 %145, %143
  store i64 %146, ptr %144, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #20, !srcloc !24
  %147 = load i32, ptr %123, align 4
  %148 = add i32 %147, 1
  store i32 %148, ptr %123, align 4
  %149 = load i16, ptr %15, align 2
  %150 = zext i16 %149 to i32
  %151 = load i32, ptr @nr_cpu_ids, align 4
  %152 = icmp ult i32 %151, %150
  br i1 %152, label %167, label %153

153:                                              ; preds = %117
  %154 = getelementptr i8, ptr %0, i32 1416
  %155 = load ptr, ptr %154, align 4
  %156 = getelementptr inbounds %struct.net_device, ptr %155, i32 0, i32 87
  %157 = load ptr, ptr %156, align 64
  %158 = ptrtoint ptr %38 to i32
  %159 = load ptr, ptr %36, align 4
  %160 = ptrtoint ptr %159 to i32
  %161 = sub i32 %158, %160
  %162 = sdiv exact i32 %161, 696
  %163 = getelementptr %struct.netdev_queue, ptr %157, i32 %162, i32 10
  store volatile i32 -1, ptr %163, align 4
  %164 = getelementptr %struct.netdev_queue, ptr %157, i32 %162, i32 9
  call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !34
  %165 = load i16, ptr %164, align 4
  %166 = add i16 %165, 1
  store i16 %166, ptr %164, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #20, !srcloc !35
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #20, !srcloc !36
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !37
  br label %167

167:                                              ; preds = %153, %117, %4
  %168 = phi i32 [ -6, %4 ], [ %118, %153 ], [ %118, %117 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  ret i32 %168
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @try_fill_recv(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.virtnet_info, ptr %0, i32 0, i32 11
  %5 = getelementptr inbounds %struct.receive_queue, ptr %1, i32 0, i32 6
  %6 = getelementptr inbounds %struct.virtnet_info, ptr %0, i32 0, i32 9
  %7 = getelementptr inbounds %struct.receive_queue, ptr %1, i32 0, i32 5
  %8 = getelementptr inbounds %struct.receive_queue, ptr %1, i32 0, i32 8
  %9 = getelementptr inbounds %struct.receive_queue, ptr %1, i32 0, i32 6, i32 1
  %10 = getelementptr inbounds %struct.receive_queue, ptr %1, i32 0, i32 6, i32 2
  %11 = getelementptr inbounds %struct.receive_queue, ptr %1, i32 0, i32 7
  %12 = getelementptr inbounds %struct.virtnet_info, ptr %0, i32 0, i32 10
  %13 = getelementptr inbounds %struct.receive_queue, ptr %1, i32 0, i32 4
  %14 = getelementptr inbounds %struct.virtnet_info, ptr %0, i32 0, i32 14
  %15 = getelementptr inbounds %struct.receive_queue, ptr %1, i32 0, i32 7, i32 0, i32 1
  %16 = getelementptr inbounds %struct.receive_queue, ptr %1, i32 0, i32 7, i32 0, i32 2
  %17 = getelementptr %struct.receive_queue, ptr %1, i32 0, i32 7, i32 1
  %18 = getelementptr %struct.receive_queue, ptr %1, i32 0, i32 7, i32 1, i32 1
  %19 = getelementptr %struct.receive_queue, ptr %1, i32 0, i32 7, i32 1, i32 2
  br label %20

20:                                               ; preds = %317, %3
  %21 = load i8, ptr %4, align 4, !range !9
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %110, label %23

23:                                               ; preds = %20
  %24 = load i8, ptr %6, align 2, !range !9
  %25 = icmp eq i8 %24, 0
  %26 = select i1 %25, i32 0, i32 256
  %27 = select i1 %25, i32 0, i32 512
  br i1 %25, label %30, label %28

28:                                               ; preds = %23
  %29 = sub nuw nsw i32 4096, %27
  br label %37

30:                                               ; preds = %23
  %31 = load i32, ptr %7, align 4
  %32 = load i32, ptr %8, align 4
  %33 = tail call i32 @llvm.umax.i32(i32 %31, i32 %32) #20
  %34 = tail call i32 @llvm.umin.i32(i32 %33, i32 4084) #20
  %35 = add nuw nsw i32 %34, 75
  %36 = and i32 %35, 8128
  br label %37

37:                                               ; preds = %30, %28
  %38 = phi i32 [ %29, %28 ], [ %36, %30 ]
  %39 = add nuw nsw i32 %38, %27
  %40 = tail call zeroext i1 @skb_page_frag_refill(i32 noundef %39, ptr noundef %5, i32 noundef %2) #20
  br i1 %40, label %41, label %325, !prof !11

41:                                               ; preds = %37
  %42 = load ptr, ptr %5, align 4
  %43 = tail call ptr @page_address(ptr noundef %42) #20
  %44 = load i16, ptr %9, align 4
  %45 = zext i16 %44 to i32
  %46 = getelementptr i8, ptr %43, i32 %45
  %47 = getelementptr i8, ptr %46, i32 %26
  %48 = load ptr, ptr %5, align 4
  %49 = getelementptr inbounds %struct.page, ptr %48, i32 0, i32 1
  %50 = load volatile i32, ptr %49, align 4
  %51 = and i32 %50, 1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53, !prof !11

53:                                               ; preds = %41
  %54 = add i32 %50, -1
  br label %57

55:                                               ; preds = %41
  %56 = ptrtoint ptr %48 to i32
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i32 [ %54, %53 ], [ %56, %55 ]
  %59 = inttoptr i32 %58 to ptr
  %60 = getelementptr inbounds %struct.page, ptr %59, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %60) #20, !srcloc !14
  %61 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %60, ptr %60, i32 1, ptr elementtype(i32) %60) #20, !srcloc !38
  %62 = load i16, ptr %9, align 4
  %63 = trunc i32 %39 to i16
  %64 = add i16 %62, %63
  store i16 %64, ptr %9, align 4
  %65 = load i16, ptr %10, align 2
  %66 = zext i16 %65 to i32
  %67 = zext i16 %64 to i32
  %68 = sub nsw i32 %66, %67
  %69 = icmp ult i32 %68, %39
  br i1 %69, label %70, label %72

70:                                               ; preds = %57
  %71 = add nsw i32 %68, %38
  store i16 %65, ptr %9, align 4
  br label %72

72:                                               ; preds = %70, %57
  %73 = phi i32 [ %71, %70 ], [ %38, %57 ]
  tail call void @sg_init_one(ptr noundef %11, ptr noundef %47, i32 noundef %73) #20
  %74 = shl nuw nsw i32 %26, 22
  %75 = or i32 %73, %74
  %76 = inttoptr i32 %75 to ptr
  %77 = load ptr, ptr %1, align 64
  %78 = tail call i32 @virtqueue_add_inbuf_ctx(ptr noundef %77, ptr noundef %11, i32 noundef 1, ptr noundef %47, ptr noundef %76, i32 noundef %2) #20
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %314

80:                                               ; preds = %72
  %81 = load ptr, ptr @mem_map, align 4
  %82 = ptrtoint ptr %47 to i32
  %83 = add i32 %82, 1073741824
  %84 = lshr i32 %83, 12
  %85 = getelementptr %struct.page, ptr %81, i32 %84, i32 1
  %86 = load volatile i32, ptr %85, align 4
  %87 = and i32 %86, 1
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %91, label %89, !prof !11

89:                                               ; preds = %80
  %90 = add i32 %86, -1
  br label %94

91:                                               ; preds = %80
  %92 = getelementptr %struct.page, ptr %81, i32 %84
  %93 = ptrtoint ptr %92 to i32
  br label %94

94:                                               ; preds = %91, %89
  %95 = phi i32 [ %90, %89 ], [ %93, %91 ]
  %96 = inttoptr i32 %95 to ptr
  %97 = getelementptr inbounds %struct.page, ptr %96, i32 0, i32 1
  %98 = load volatile i32, ptr %97, align 4
  %99 = and i32 %98, 1
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %104, label %101, !prof !11

101:                                              ; preds = %94
  %102 = add i32 %98, -1
  %103 = inttoptr i32 %102 to ptr
  br label %104

104:                                              ; preds = %101, %94
  %105 = phi ptr [ %96, %94 ], [ %103, %101 ]
  %106 = getelementptr inbounds %struct.page, ptr %105, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %106) #20, !srcloc !14
  %107 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %106, ptr %106, i32 1, ptr elementtype(i32) %106) #20, !srcloc !15
  %108 = extractvalue { i32, i32 } %107, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !16
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %322, label %325

110:                                              ; preds = %20
  %111 = load i8, ptr %12, align 1, !range !9
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %242, label %113

113:                                              ; preds = %110
  tail call void @sg_init_table(ptr noundef %11, i32 noundef 19) #20
  br label %114

114:                                              ; preds = %150, %113
  %115 = phi i32 [ 18, %113 ], [ %160, %150 ]
  %116 = phi ptr [ null, %113 ], [ %139, %150 ]
  %117 = load ptr, ptr %13, align 16
  %118 = icmp eq ptr %117, null
  br i1 %118, label %123, label %119

119:                                              ; preds = %114
  %120 = getelementptr inbounds %struct.page, ptr %117, i32 0, i32 1, i32 0, i32 3
  %121 = load i32, ptr %120, align 4
  %122 = inttoptr i32 %121 to ptr
  store ptr %122, ptr %13, align 16
  store i32 0, ptr %120, align 4
  br label %138

123:                                              ; preds = %114
  %124 = tail call ptr @__alloc_pages(i32 noundef %2, i32 noundef 0, i32 noundef 0, ptr noundef null) #20
  %125 = icmp eq ptr %124, null
  br i1 %125, label %126, label %138

126:                                              ; preds = %123
  %127 = icmp eq ptr %116, null
  br i1 %127, label %325, label %128

128:                                              ; preds = %126
  %129 = getelementptr inbounds %struct.page, ptr %116, i32 0, i32 1, i32 0, i32 3
  %130 = load i32, ptr %129, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %235, label %132

132:                                              ; preds = %132, %128
  %133 = phi i32 [ %136, %132 ], [ %130, %128 ]
  %134 = inttoptr i32 %133 to ptr
  %135 = getelementptr inbounds %struct.page, ptr %134, i32 0, i32 1, i32 0, i32 3
  %136 = load i32, ptr %135, align 4
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %229, label %132

138:                                              ; preds = %123, %119
  %139 = phi ptr [ %117, %119 ], [ %124, %123 ]
  %140 = tail call ptr @page_address(ptr noundef nonnull %139) #20
  %141 = load ptr, ptr @mem_map, align 4
  %142 = ptrtoint ptr %140 to i32
  %143 = add i32 %142, 1073741824
  %144 = lshr i32 %143, 12
  %145 = getelementptr %struct.page, ptr %141, i32 %144
  %146 = ptrtoint ptr %145 to i32
  %147 = and i32 %146, 3
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %150, label %149, !prof !11

149:                                              ; preds = %138
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #20, !srcloc !21
  unreachable

150:                                              ; preds = %138
  %151 = getelementptr %struct.receive_queue, ptr %1, i32 0, i32 7, i32 %115
  %152 = and i32 %142, 4095
  %153 = load i32, ptr %151, align 4
  %154 = and i32 %153, 3
  %155 = or i32 %154, %146
  store i32 %155, ptr %151, align 4
  %156 = getelementptr %struct.receive_queue, ptr %1, i32 0, i32 7, i32 %115, i32 1
  store i32 %152, ptr %156, align 4
  %157 = getelementptr %struct.receive_queue, ptr %1, i32 0, i32 7, i32 %115, i32 2
  store i32 4096, ptr %157, align 4
  %158 = ptrtoint ptr %116 to i32
  %159 = getelementptr inbounds %struct.page, ptr %139, i32 0, i32 1, i32 0, i32 3
  store i32 %158, ptr %159, align 4
  %160 = add nsw i32 %115, -1
  %161 = icmp ugt i32 %115, 2
  br i1 %161, label %114, label %162

162:                                              ; preds = %150
  %163 = getelementptr inbounds %struct.page, ptr %139, i32 0, i32 1, i32 0, i32 3
  %164 = load ptr, ptr %13, align 16
  %165 = icmp eq ptr %164, null
  br i1 %165, label %170, label %166

166:                                              ; preds = %162
  %167 = getelementptr inbounds %struct.page, ptr %164, i32 0, i32 1, i32 0, i32 3
  %168 = load i32, ptr %167, align 4
  %169 = inttoptr i32 %168 to ptr
  store ptr %169, ptr %13, align 16
  store i32 0, ptr %167, align 4
  br label %182

170:                                              ; preds = %162
  %171 = tail call ptr @__alloc_pages(i32 noundef %2, i32 noundef 0, i32 noundef 0, ptr noundef null) #20
  %172 = icmp eq ptr %171, null
  br i1 %172, label %173, label %182

173:                                              ; preds = %170
  %174 = load i32, ptr %163, align 4
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %235, label %176

176:                                              ; preds = %176, %173
  %177 = phi i32 [ %180, %176 ], [ %174, %173 ]
  %178 = inttoptr i32 %177 to ptr
  %179 = getelementptr inbounds %struct.page, ptr %178, i32 0, i32 1, i32 0, i32 3
  %180 = load i32, ptr %179, align 4
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %231, label %176

182:                                              ; preds = %170, %166
  %183 = phi ptr [ %164, %166 ], [ %171, %170 ]
  %184 = tail call ptr @page_address(ptr noundef nonnull %183) #20
  %185 = load ptr, ptr @mem_map, align 4
  %186 = ptrtoint ptr %184 to i32
  %187 = add i32 %186, 1073741824
  %188 = lshr i32 %187, 12
  %189 = getelementptr %struct.page, ptr %185, i32 %188
  %190 = ptrtoint ptr %189 to i32
  %191 = and i32 %190, 3
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %194, label %193, !prof !11

193:                                              ; preds = %182
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #20, !srcloc !21
  unreachable

194:                                              ; preds = %182
  %195 = load i8, ptr %14, align 1
  %196 = zext i8 %195 to i32
  %197 = and i32 %186, 4095
  %198 = load i32, ptr %11, align 4
  %199 = and i32 %198, 3
  %200 = or i32 %199, %190
  store i32 %200, ptr %11, align 4
  store i32 %197, ptr %15, align 4
  store i32 %196, ptr %16, align 4
  %201 = getelementptr i8, ptr %184, i32 16
  %202 = ptrtoint ptr %201 to i32
  %203 = add i32 %202, 1073741824
  %204 = lshr i32 %203, 12
  %205 = getelementptr %struct.page, ptr %185, i32 %204
  %206 = ptrtoint ptr %205 to i32
  %207 = and i32 %206, 3
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %210, label %209, !prof !11

209:                                              ; preds = %194
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #20, !srcloc !21
  unreachable

210:                                              ; preds = %194
  %211 = and i32 %202, 4095
  %212 = load i32, ptr %17, align 4
  %213 = and i32 %212, 3
  %214 = or i32 %213, %206
  store i32 %214, ptr %17, align 4
  store i32 %211, ptr %18, align 4
  store i32 4080, ptr %19, align 4
  %215 = ptrtoint ptr %139 to i32
  %216 = getelementptr inbounds %struct.page, ptr %183, i32 0, i32 1, i32 0, i32 3
  store i32 %215, ptr %216, align 4
  %217 = load ptr, ptr %1, align 64
  %218 = tail call i32 @virtqueue_add_inbuf(ptr noundef %217, ptr noundef %11, i32 noundef 19, ptr noundef nonnull %183, i32 noundef %2) #20
  %219 = icmp slt i32 %218, 0
  br i1 %219, label %220, label %314

220:                                              ; preds = %210
  %221 = load i32, ptr %216, align 4
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %235, label %223

223:                                              ; preds = %223, %220
  %224 = phi i32 [ %227, %223 ], [ %221, %220 ]
  %225 = inttoptr i32 %224 to ptr
  %226 = getelementptr inbounds %struct.page, ptr %225, i32 0, i32 1, i32 0, i32 3
  %227 = load i32, ptr %226, align 4
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %233, label %223

229:                                              ; preds = %132
  %230 = inttoptr i32 %133 to ptr
  br label %235

231:                                              ; preds = %176
  %232 = inttoptr i32 %177 to ptr
  br label %235

233:                                              ; preds = %223
  %234 = inttoptr i32 %224 to ptr
  br label %235

235:                                              ; preds = %233, %231, %229, %220, %173, %128
  %236 = phi ptr [ %116, %128 ], [ %139, %173 ], [ %183, %220 ], [ %230, %229 ], [ %232, %231 ], [ %234, %233 ]
  %237 = phi ptr [ %116, %128 ], [ %139, %173 ], [ %183, %220 ], [ %116, %229 ], [ %139, %231 ], [ %183, %233 ]
  %238 = phi i32 [ -12, %128 ], [ -12, %173 ], [ %218, %220 ], [ -12, %229 ], [ -12, %231 ], [ %218, %233 ]
  %239 = getelementptr inbounds %struct.page, ptr %236, i32 0, i32 1, i32 0, i32 3
  %240 = load ptr, ptr %13, align 16
  %241 = ptrtoint ptr %240 to i32
  store i32 %241, ptr %239, align 4
  store ptr %237, ptr %13, align 16
  br label %314

242:                                              ; preds = %110
  %243 = load i8, ptr %6, align 2, !range !9
  %244 = icmp eq i8 %243, 0
  %245 = select i1 %244, i32 0, i32 256
  %246 = load i8, ptr %14, align 1
  %247 = zext i8 %246 to i32
  %248 = add nuw nsw i32 %247, 1903
  %249 = add nuw nsw i32 %248, %245
  %250 = and i32 %249, 8128
  %251 = tail call zeroext i1 @skb_page_frag_refill(i32 noundef %250, ptr noundef %5, i32 noundef %2) #20
  br i1 %251, label %252, label %325, !prof !11

252:                                              ; preds = %242
  %253 = inttoptr i32 %245 to ptr
  %254 = load ptr, ptr %5, align 4
  %255 = tail call ptr @page_address(ptr noundef %254) #20
  %256 = load i16, ptr %9, align 4
  %257 = zext i16 %256 to i32
  %258 = getelementptr i8, ptr %255, i32 %257
  %259 = load ptr, ptr %5, align 4
  %260 = getelementptr inbounds %struct.page, ptr %259, i32 0, i32 1
  %261 = load volatile i32, ptr %260, align 4
  %262 = and i32 %261, 1
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %266, label %264, !prof !11

264:                                              ; preds = %252
  %265 = add i32 %261, -1
  br label %268

266:                                              ; preds = %252
  %267 = ptrtoint ptr %259 to i32
  br label %268

268:                                              ; preds = %266, %264
  %269 = phi i32 [ %265, %264 ], [ %267, %266 ]
  %270 = inttoptr i32 %269 to ptr
  %271 = getelementptr inbounds %struct.page, ptr %270, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %271) #20, !srcloc !14
  %272 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %271, ptr %271, i32 1, ptr elementtype(i32) %271) #20, !srcloc !38
  %273 = load i16, ptr %9, align 4
  %274 = trunc i32 %250 to i16
  %275 = add i16 %273, %274
  store i16 %275, ptr %9, align 4
  %276 = getelementptr i8, ptr %258, i32 66
  %277 = getelementptr i8, ptr %276, i32 %245
  %278 = load i8, ptr %14, align 1
  %279 = zext i8 %278 to i32
  %280 = add nuw nsw i32 %279, 1518
  tail call void @sg_init_one(ptr noundef %11, ptr noundef %277, i32 noundef %280) #20
  %281 = load ptr, ptr %1, align 64
  %282 = tail call i32 @virtqueue_add_inbuf_ctx(ptr noundef %281, ptr noundef %11, i32 noundef 1, ptr noundef %258, ptr noundef %253, i32 noundef %2) #20
  %283 = icmp slt i32 %282, 0
  br i1 %283, label %284, label %314

284:                                              ; preds = %268
  %285 = load ptr, ptr @mem_map, align 4
  %286 = ptrtoint ptr %258 to i32
  %287 = add i32 %286, 1073741824
  %288 = lshr i32 %287, 12
  %289 = getelementptr %struct.page, ptr %285, i32 %288, i32 1
  %290 = load volatile i32, ptr %289, align 4
  %291 = and i32 %290, 1
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %295, label %293, !prof !11

293:                                              ; preds = %284
  %294 = add i32 %290, -1
  br label %298

295:                                              ; preds = %284
  %296 = getelementptr %struct.page, ptr %285, i32 %288
  %297 = ptrtoint ptr %296 to i32
  br label %298

298:                                              ; preds = %295, %293
  %299 = phi i32 [ %294, %293 ], [ %297, %295 ]
  %300 = inttoptr i32 %299 to ptr
  %301 = getelementptr inbounds %struct.page, ptr %300, i32 0, i32 1
  %302 = load volatile i32, ptr %301, align 4
  %303 = and i32 %302, 1
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %308, label %305, !prof !11

305:                                              ; preds = %298
  %306 = add i32 %302, -1
  %307 = inttoptr i32 %306 to ptr
  br label %308

308:                                              ; preds = %305, %298
  %309 = phi ptr [ %300, %298 ], [ %307, %305 ]
  %310 = getelementptr inbounds %struct.page, ptr %309, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %310) #20, !srcloc !14
  %311 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %310, ptr %310, i32 1, ptr elementtype(i32) %310) #20, !srcloc !15
  %312 = extractvalue { i32, i32 } %311, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !16
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %322, label %325

314:                                              ; preds = %268, %235, %210, %72
  %315 = phi i32 [ %78, %72 ], [ %218, %210 ], [ %238, %235 ], [ %282, %268 ]
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %317, label %325

317:                                              ; preds = %314
  %318 = load ptr, ptr %1, align 64
  %319 = getelementptr inbounds %struct.virtqueue, ptr %318, i32 0, i32 5
  %320 = load i32, ptr %319, align 4
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %325, label %20

322:                                              ; preds = %308, %104
  %323 = phi ptr [ %105, %104 ], [ %309, %308 ]
  %324 = phi i32 [ %78, %104 ], [ %282, %308 ]
  tail call void @__put_page(ptr noundef %323) #20
  br label %325

325:                                              ; preds = %322, %317, %314, %308, %242, %126, %104, %37
  %326 = phi i32 [ %282, %308 ], [ %78, %104 ], [ %324, %322 ], [ -12, %37 ], [ -12, %126 ], [ -12, %242 ], [ 0, %317 ], [ %315, %314 ]
  %327 = load ptr, ptr %1, align 64
  %328 = tail call zeroext i1 @virtqueue_kick_prepare(ptr noundef %327) #20
  br i1 %328, label %329, label %342

329:                                              ; preds = %325
  %330 = load ptr, ptr %1, align 64
  %331 = tail call zeroext i1 @virtqueue_notify(ptr noundef %330) #20
  br i1 %331, label %332, label %342

332:                                              ; preds = %329
  %333 = getelementptr inbounds %struct.receive_queue, ptr %1, i32 0, i32 3
  %334 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #20, !srcloc !39
  %335 = load i32, ptr %333, align 4
  %336 = add i32 %335, 1
  store i32 %336, ptr %333, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #20, !srcloc !23
  %337 = getelementptr inbounds %struct.receive_queue, ptr %1, i32 0, i32 3, i32 8
  %338 = load i64, ptr %337, align 8
  %339 = add i64 %338, 1
  store i64 %339, ptr %337, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #20, !srcloc !24
  %340 = load i32, ptr %333, align 4
  %341 = add i32 %340, 1
  store i32 %341, ptr %333, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %334) #20, !srcloc !40
  br label %342

342:                                              ; preds = %332, %329, %325
  %343 = icmp ne i32 %326, -12
  ret i1 %343
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdp_rxq_info_reg(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdp_rxq_info_reg_mem_model(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdp_rxq_info_unreg(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @virtqueue_kick_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @virtqueue_notify(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @skb_page_frag_refill(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtqueue_add_inbuf_ctx(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @put_page(ptr noundef %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6, !prof !11

6:                                                ; preds = %1
  %7 = add i32 %3, -1
  br label %10

8:                                                ; preds = %1
  %9 = ptrtoint ptr %0 to i32
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi i32 [ %7, %6 ], [ %9, %8 ]
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.page, ptr %12, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #20, !srcloc !14
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 1, ptr elementtype(i32) %13) #20, !srcloc !15
  %15 = extractvalue { i32, i32 } %14, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !16
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  tail call void @__put_page(ptr noundef %12) #20
  br label %18

18:                                               ; preds = %17, %10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtqueue_add_inbuf(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @virtqueue_napi_schedule(ptr noundef %0, ptr noundef %1) unnamed_addr #3 {
  %3 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %0) #20
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void @virtqueue_disable_cb(ptr noundef %1) #20
  tail call void @__napi_schedule(ptr noundef %0) #20
  br label %5

5:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #8 {
  br label %1

1:                                                ; preds = %0
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %1) to i32), i32 noundef 512) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtqueue_disable_cb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @free_old_xmit_skbs(ptr nocapture noundef %0, i1 noundef zeroext %1) unnamed_addr #3 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #20
  store i32 0, ptr %3, align 4, !annotation !10
  %4 = load ptr, ptr %0, align 8
  %5 = call ptr @virtqueue_get_buf(ptr noundef %4, ptr noundef nonnull %3) #20
  %6 = icmp eq ptr %5, null
  br i1 %6, label %48, label %7

7:                                                ; preds = %2
  %8 = zext i1 %1 to i32
  br label %9

9:                                                ; preds = %25, %7
  %10 = phi ptr [ %5, %7 ], [ %30, %25 ]
  %11 = phi i32 [ 0, %7 ], [ %28, %25 ]
  %12 = phi i32 [ 0, %7 ], [ %27, %25 ]
  %13 = ptrtoint ptr %10 to i32
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19, !prof !11

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 5
  %18 = load i32, ptr %17, align 8
  call void @napi_consume_skb(ptr noundef nonnull %10, i32 noundef %8) #20
  br label %25

19:                                               ; preds = %9
  %20 = and i32 %13, -2
  %21 = inttoptr i32 %20 to ptr
  %22 = getelementptr inbounds %struct.xdp_frame, ptr %21, i32 0, i32 1
  %23 = load i16, ptr %22, align 4
  %24 = zext i16 %23 to i32
  call void @xdp_return_frame(ptr noundef %21) #20
  br label %25

25:                                               ; preds = %19, %16
  %26 = phi i32 [ %18, %16 ], [ %24, %19 ]
  %27 = add i32 %26, %12
  %28 = add i32 %11, 1
  %29 = load ptr, ptr %0, align 8
  %30 = call ptr @virtqueue_get_buf(ptr noundef %29, ptr noundef nonnull %3) #20
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %9

32:                                               ; preds = %25
  %33 = icmp eq i32 %28, 0
  br i1 %33, label %48, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.send_queue, ptr %0, i32 0, i32 3
  %36 = load i32, ptr %35, align 4
  %37 = add i32 %36, 1
  store i32 %37, ptr %35, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #20, !srcloc !23
  %38 = zext i32 %27 to i64
  %39 = getelementptr inbounds %struct.send_queue, ptr %0, i32 0, i32 3, i32 2
  %40 = load i64, ptr %39, align 8
  %41 = add i64 %40, %38
  store i64 %41, ptr %39, align 8
  %42 = zext i32 %28 to i64
  %43 = getelementptr inbounds %struct.send_queue, ptr %0, i32 0, i32 3, i32 1
  %44 = load i64, ptr %43, align 8
  %45 = add i64 %44, %42
  store i64 %45, ptr %43, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #20, !srcloc !24
  %46 = load i32, ptr %35, align 4
  %47 = add i32 %46, 1
  store i32 %47, ptr %35, align 4
  br label %48

48:                                               ; preds = %34, %32, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @virtqueue_enable_cb_delayed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @virtqueue_get_buf(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_consume_skb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdp_return_frame(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_tstamp_tx(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_to_sgvec(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtqueue_add_outbuf(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @virtnet_send_command(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #3 {
  %5 = alloca [4 x ptr], align 4
  %6 = alloca %struct.scatterlist, align 4
  %7 = alloca %struct.scatterlist, align 4
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #20
  %9 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %9, i8 0, i32 12, i1 false), !annotation !10
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %6, i8 0, i32 20, i1 false), !annotation !10
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %7) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %7, i8 0, i32 20, i1 false), !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #20
  store i32 0, ptr %8, align 4, !annotation !10
  %10 = load ptr, ptr %0, align 4
  tail call void @virtio_check_driver_offered_feature(ptr noundef %10, i32 noundef 17) #20
  %11 = getelementptr inbounds %struct.virtio_device, ptr %10, i32 0, i32 11
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 131072
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16, !prof !19

15:                                               ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/virtio_net.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1785, 0\0A.popsection", ""() #20, !srcloc !41
  unreachable

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.virtnet_info, ptr %0, i32 0, i32 20
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.control_buf, ptr %18, i32 0, i32 1
  store i8 -1, ptr %19, align 2
  %20 = load ptr, ptr %17, align 4
  store i8 %1, ptr %20, align 8
  %21 = load ptr, ptr %17, align 4
  %22 = getelementptr inbounds %struct.virtio_net_ctrl_hdr, ptr %21, i32 0, i32 1
  store i8 %2, ptr %22, align 1
  %23 = load ptr, ptr %17, align 4
  call void @sg_init_one(ptr noundef nonnull %6, ptr noundef %23, i32 noundef 2) #20
  store ptr %6, ptr %5, align 4
  %24 = icmp eq ptr %3, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %16
  %26 = getelementptr inbounds [4 x ptr], ptr %5, i32 0, i32 1
  store ptr %3, ptr %26, align 4
  br label %27

27:                                               ; preds = %25, %16
  %28 = phi i32 [ 2, %25 ], [ 1, %16 ]
  %29 = load ptr, ptr %17, align 4
  %30 = getelementptr inbounds %struct.control_buf, ptr %29, i32 0, i32 1
  call void @sg_init_one(ptr noundef nonnull %7, ptr noundef %30, i32 noundef 1) #20
  %31 = getelementptr [4 x ptr], ptr %5, i32 0, i32 %28
  store ptr %7, ptr %31, align 4
  %32 = getelementptr inbounds %struct.virtnet_info, ptr %0, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = call i32 @virtqueue_add_sgs(ptr noundef %33, ptr noundef nonnull %5, i32 noundef %28, i32 noundef 1, ptr noundef %0, i32 noundef 2592) #20
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = load ptr, ptr %0, align 4
  %38 = getelementptr inbounds %struct.virtio_device, ptr %37, i32 0, i32 6
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %38, ptr noundef nonnull @.str.19, i32 noundef %34) #21
  br label %63

39:                                               ; preds = %27
  %40 = load ptr, ptr %32, align 4
  %41 = call zeroext i1 @virtqueue_kick(ptr noundef %40) #20
  br i1 %41, label %42, label %46, !prof !11

42:                                               ; preds = %39
  %43 = load ptr, ptr %32, align 4
  %44 = call ptr @virtqueue_get_buf(ptr noundef %43, ptr noundef nonnull %8) #20
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %58

46:                                               ; preds = %39
  %47 = load ptr, ptr %17, align 4
  %48 = getelementptr inbounds %struct.control_buf, ptr %47, i32 0, i32 1
  %49 = load i8, ptr %48, align 2
  %50 = icmp eq i8 %49, 0
  br label %63

51:                                               ; preds = %54, %42
  %52 = load ptr, ptr %32, align 4
  %53 = call zeroext i1 @virtqueue_is_broken(ptr noundef %52) #20
  br i1 %53, label %58, label %54

54:                                               ; preds = %51
  call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !42
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #20, !srcloc !43
  %55 = load ptr, ptr %32, align 4
  %56 = call ptr @virtqueue_get_buf(ptr noundef %55, ptr noundef nonnull %8) #20
  %57 = icmp eq ptr %56, null
  br i1 %57, label %51, label %58

58:                                               ; preds = %54, %51, %42
  %59 = load ptr, ptr %17, align 4
  %60 = getelementptr inbounds %struct.control_buf, ptr %59, i32 0, i32 1
  %61 = load i8, ptr %60, align 2
  %62 = icmp eq i8 %61, 0
  br label %63

63:                                               ; preds = %58, %46, %36
  %64 = phi i1 [ false, %36 ], [ %50, %46 ], [ %62, %58 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #20
  ret i1 %64
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtqueue_add_sgs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @virtqueue_kick(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @virtqueue_is_broken(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_prepare_mac_addr_change(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @eth_commit_mac_addr_change(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @_virtnet_set_queues(ptr noundef %0, i16 noundef zeroext %1) unnamed_addr #3 {
  %3 = alloca %struct.scatterlist, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, i8 0, i32 20, i1 false), !annotation !10
  %4 = getelementptr inbounds %struct.virtnet_info, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.virtnet_info, ptr %0, i32 0, i32 12
  %7 = load i8, ptr %6, align 1, !range !9
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %35, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr %0, align 4
  tail call void @virtio_check_driver_offered_feature(ptr noundef %10, i32 noundef 22) #20
  %11 = getelementptr inbounds %struct.virtio_device, ptr %10, i32 0, i32 11
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 4194304
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %35, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.virtnet_info, ptr %0, i32 0, i32 20
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.control_buf, ptr %17, i32 0, i32 2
  store i16 %1, ptr %18, align 4
  %19 = load ptr, ptr %16, align 4
  %20 = getelementptr inbounds %struct.control_buf, ptr %19, i32 0, i32 2
  call void @sg_init_one(ptr noundef nonnull %3, ptr noundef %20, i32 noundef 2) #20
  %21 = call fastcc zeroext i1 @virtnet_send_command(ptr noundef %0, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef nonnull %3)
  br i1 %21, label %25, label %22

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 111
  %24 = zext i16 %1 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %23, ptr noundef nonnull @.str.31, i32 noundef %24) #21
  br label %35

25:                                               ; preds = %15
  %26 = getelementptr inbounds %struct.virtnet_info, ptr %0, i32 0, i32 7
  store i16 %1, ptr %26, align 2
  %27 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 14
  %28 = load i32, ptr %27, align 8
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.virtnet_info, ptr %0, i32 0, i32 15
  %33 = load ptr, ptr @system_wq, align 4
  %34 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %33, ptr noundef %32, i32 noundef 0) #20
  br label %35

35:                                               ; preds = %31, %25, %22, %9, %2
  %36 = phi i32 [ -22, %22 ], [ 0, %9 ], [ 0, %2 ], [ 0, %25 ], [ 0, %31 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #20
  ret i32 %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @virtnet_get_drvinfo(ptr nocapture noundef readonly %0, ptr noundef %1) #3 {
  %3 = getelementptr i8, ptr %0, i32 1408
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ethtool_drvinfo, ptr %1, i32 0, i32 1
  %6 = tail call i32 @strlcpy(ptr noundef %5, ptr noundef nonnull @.str.2, i32 noundef 32) #20
  %7 = getelementptr inbounds %struct.ethtool_drvinfo, ptr %1, i32 0, i32 2
  %8 = tail call i32 @strlcpy(ptr noundef %7, ptr noundef nonnull @.str.32, i32 noundef 32) #20
  %9 = getelementptr inbounds %struct.virtio_device, ptr %4, i32 0, i32 8
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.virtio_config_ops, ptr %10, i32 0, i32 11
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = tail call ptr %12(ptr noundef %4) #20
  br label %16

16:                                               ; preds = %14, %2
  %17 = phi ptr [ %15, %14 ], [ @.str.33, %2 ]
  %18 = getelementptr inbounds %struct.ethtool_drvinfo, ptr %1, i32 0, i32 4
  %19 = tail call i32 @strlcpy(ptr noundef %18, ptr noundef %17, i32 noundef 32) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @virtnet_get_coalesce(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) #14 {
  store i32 14, ptr %1, align 4
  %5 = getelementptr inbounds i8, ptr %1, i32 4
  store i32 0, ptr %5, align 4
  %6 = getelementptr inbounds i8, ptr %1, i32 8
  store i32 1, ptr %6, align 4
  %7 = getelementptr inbounds i8, ptr %1, i32 12
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(80) %7, i8 0, i32 80, i1 false)
  %8 = getelementptr i8, ptr %0, i32 1420
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.send_queue, ptr %9, i32 0, i32 4, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.ethtool_coalesce, ptr %1, i32 0, i32 6
  store i32 1, ptr %14, align 4
  br label %15

15:                                               ; preds = %13, %4
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @virtnet_set_coalesce(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) #15 {
  %5 = getelementptr inbounds %struct.ethtool_coalesce, ptr %1, i32 0, i32 6
  %6 = load i32, ptr %5, align 4
  %7 = icmp ugt i32 %6, 1
  br i1 %7, label %41, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ethtool_coalesce, ptr %1, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %41

12:                                               ; preds = %8
  %13 = icmp eq i32 %6, 0
  %14 = select i1 %13, i32 0, i32 64
  %15 = getelementptr i8, ptr %0, i32 1420
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.send_queue, ptr %16, i32 0, i32 4, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %14, %18
  br i1 %19, label %41, label %20

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 14
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %41

25:                                               ; preds = %20
  %26 = getelementptr i8, ptr %0, i32 1432
  %27 = load i16, ptr %26, align 4
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %41, label %29

29:                                               ; preds = %25
  %30 = getelementptr %struct.send_queue, ptr %16, i32 0, i32 4, i32 2
  store i32 %14, ptr %30, align 4
  %31 = load i16, ptr %26, align 4
  %32 = icmp ugt i16 %31, 1
  br i1 %32, label %33, label %41

33:                                               ; preds = %33, %29
  %34 = phi i32 [ %37, %33 ], [ 1, %29 ]
  %35 = load ptr, ptr %15, align 4
  %36 = getelementptr %struct.send_queue, ptr %35, i32 %34, i32 4, i32 2
  store i32 %14, ptr %36, align 4
  %37 = add nuw nsw i32 %34, 1
  %38 = load i16, ptr %26, align 4
  %39 = zext i16 %38 to i32
  %40 = icmp ult i32 %37, %39
  br i1 %40, label %33, label %41

41:                                               ; preds = %33, %29, %25, %20, %12, %8, %4
  %42 = phi i32 [ -22, %8 ], [ -22, %4 ], [ -16, %20 ], [ 0, %12 ], [ 0, %25 ], [ 0, %29 ], [ 0, %33 ]
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @virtnet_get_ringparam(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) #3 {
  %5 = getelementptr i8, ptr %0, i32 1424
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 64
  %8 = tail call i32 @virtqueue_get_vring_size(ptr noundef %7) #20
  %9 = getelementptr inbounds %struct.ethtool_ringparam, ptr %1, i32 0, i32 1
  store i32 %8, ptr %9, align 4
  %10 = getelementptr i8, ptr %0, i32 1420
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %11, align 8
  %13 = tail call i32 @virtqueue_get_vring_size(ptr noundef %12) #20
  %14 = getelementptr inbounds %struct.ethtool_ringparam, ptr %1, i32 0, i32 4
  store i32 %13, ptr %14, align 4
  %15 = load i32, ptr %9, align 4
  %16 = getelementptr inbounds %struct.ethtool_ringparam, ptr %1, i32 0, i32 5
  store i32 %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.ethtool_ringparam, ptr %1, i32 0, i32 8
  store i32 %13, ptr %17, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @virtnet_get_strings(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) #3 {
  %4 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #20
  store ptr %2, ptr %4, align 4
  %5 = icmp eq i32 %1, 1
  br i1 %5, label %6, label %24

6:                                                ; preds = %3
  %7 = getelementptr i8, ptr %0, i32 1434
  %8 = load i16, ptr %7, align 2
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %24, label %10

10:                                               ; preds = %10, %6
  %11 = phi i32 [ %12, %10 ], [ 0, %6 ]
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %4, ptr noundef nonnull @.str.34, i32 noundef %11, ptr noundef nonnull @virtnet_rq_stats_desc) #20
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %4, ptr noundef nonnull @.str.34, i32 noundef %11, ptr noundef getelementptr inbounds ([8 x %struct.virtnet_stat_desc], ptr @virtnet_rq_stats_desc, i32 0, i32 1)) #20
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %4, ptr noundef nonnull @.str.34, i32 noundef %11, ptr noundef getelementptr inbounds ([8 x %struct.virtnet_stat_desc], ptr @virtnet_rq_stats_desc, i32 0, i32 2)) #20
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %4, ptr noundef nonnull @.str.34, i32 noundef %11, ptr noundef getelementptr inbounds ([8 x %struct.virtnet_stat_desc], ptr @virtnet_rq_stats_desc, i32 0, i32 3)) #20
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %4, ptr noundef nonnull @.str.34, i32 noundef %11, ptr noundef getelementptr inbounds ([8 x %struct.virtnet_stat_desc], ptr @virtnet_rq_stats_desc, i32 0, i32 4)) #20
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %4, ptr noundef nonnull @.str.34, i32 noundef %11, ptr noundef getelementptr inbounds ([8 x %struct.virtnet_stat_desc], ptr @virtnet_rq_stats_desc, i32 0, i32 5)) #20
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %4, ptr noundef nonnull @.str.34, i32 noundef %11, ptr noundef getelementptr inbounds ([8 x %struct.virtnet_stat_desc], ptr @virtnet_rq_stats_desc, i32 0, i32 6)) #20
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %4, ptr noundef nonnull @.str.34, i32 noundef %11, ptr noundef getelementptr inbounds ([8 x %struct.virtnet_stat_desc], ptr @virtnet_rq_stats_desc, i32 0, i32 7)) #20
  %12 = add nuw nsw i32 %11, 1
  %13 = load i16, ptr %7, align 2
  %14 = zext i16 %13 to i32
  %15 = icmp ult i32 %12, %14
  br i1 %15, label %10, label %16

16:                                               ; preds = %10
  %17 = icmp eq i16 %13, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %18, %16
  %19 = phi i32 [ %20, %18 ], [ 0, %16 ]
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %4, ptr noundef nonnull @.str.35, i32 noundef %19, ptr noundef nonnull @virtnet_sq_stats_desc) #20
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %4, ptr noundef nonnull @.str.35, i32 noundef %19, ptr noundef getelementptr inbounds ([6 x %struct.virtnet_stat_desc], ptr @virtnet_sq_stats_desc, i32 0, i32 1)) #20
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %4, ptr noundef nonnull @.str.35, i32 noundef %19, ptr noundef getelementptr inbounds ([6 x %struct.virtnet_stat_desc], ptr @virtnet_sq_stats_desc, i32 0, i32 2)) #20
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %4, ptr noundef nonnull @.str.35, i32 noundef %19, ptr noundef getelementptr inbounds ([6 x %struct.virtnet_stat_desc], ptr @virtnet_sq_stats_desc, i32 0, i32 3)) #20
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %4, ptr noundef nonnull @.str.35, i32 noundef %19, ptr noundef getelementptr inbounds ([6 x %struct.virtnet_stat_desc], ptr @virtnet_sq_stats_desc, i32 0, i32 4)) #20
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %4, ptr noundef nonnull @.str.35, i32 noundef %19, ptr noundef getelementptr inbounds ([6 x %struct.virtnet_stat_desc], ptr @virtnet_sq_stats_desc, i32 0, i32 5)) #20
  %20 = add nuw nsw i32 %19, 1
  %21 = load i16, ptr %7, align 2
  %22 = zext i16 %21 to i32
  %23 = icmp ult i32 %20, %22
  br i1 %23, label %18, label %24

24:                                               ; preds = %18, %16, %6, %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @virtnet_get_ethtool_stats(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #3 {
  %4 = getelementptr i8, ptr %0, i32 1434
  %5 = load i16, ptr %4, align 2
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %113, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %0, i32 1424
  br label %13

9:                                                ; preds = %61
  %10 = icmp eq i16 %64, 0
  br i1 %10, label %113, label %11

11:                                               ; preds = %9
  %12 = getelementptr i8, ptr %0, i32 1420
  br label %67

13:                                               ; preds = %61, %7
  %14 = phi i32 [ 0, %7 ], [ %63, %61 ]
  %15 = phi i32 [ 0, %7 ], [ %62, %61 ]
  %16 = load ptr, ptr %8, align 4
  %17 = getelementptr %struct.receive_queue, ptr %16, i32 %14, i32 3
  %18 = getelementptr i8, ptr %17, i32 8
  %19 = getelementptr i64, ptr %2, i32 %15
  %20 = getelementptr i8, ptr %17, i32 16
  %21 = or i32 %15, 1
  %22 = getelementptr i64, ptr %2, i32 %21
  %23 = getelementptr i8, ptr %17, i32 24
  %24 = or i32 %15, 2
  %25 = getelementptr i64, ptr %2, i32 %24
  %26 = getelementptr i8, ptr %17, i32 32
  %27 = or i32 %15, 3
  %28 = getelementptr i64, ptr %2, i32 %27
  %29 = getelementptr i8, ptr %17, i32 40
  %30 = or i32 %15, 4
  %31 = getelementptr i64, ptr %2, i32 %30
  %32 = getelementptr i8, ptr %17, i32 48
  %33 = or i32 %15, 5
  %34 = getelementptr i64, ptr %2, i32 %33
  %35 = getelementptr i8, ptr %17, i32 56
  %36 = or i32 %15, 6
  %37 = getelementptr i64, ptr %2, i32 %36
  %38 = getelementptr i8, ptr %17, i32 64
  %39 = or i32 %15, 7
  %40 = getelementptr i64, ptr %2, i32 %39
  br label %41

41:                                               ; preds = %49, %13
  %42 = load volatile i32, ptr %17, align 4
  %43 = and i32 %42, 1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %45, %41
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !25
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #20, !srcloc !26
  %46 = load volatile i32, ptr %17, align 4
  %47 = and i32 %46, 1
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %45

49:                                               ; preds = %45, %41
  %50 = phi i32 [ %42, %41 ], [ %46, %45 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !27
  %51 = load i64, ptr %18, align 8
  store i64 %51, ptr %19, align 8
  %52 = load i64, ptr %20, align 8
  store i64 %52, ptr %22, align 8
  %53 = load i64, ptr %23, align 8
  store i64 %53, ptr %25, align 8
  %54 = load i64, ptr %26, align 8
  store i64 %54, ptr %28, align 8
  %55 = load i64, ptr %29, align 8
  store i64 %55, ptr %31, align 8
  %56 = load i64, ptr %32, align 8
  store i64 %56, ptr %34, align 8
  %57 = load i64, ptr %35, align 8
  store i64 %57, ptr %37, align 8
  %58 = load i64, ptr %38, align 8
  store i64 %58, ptr %40, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !28
  %59 = load volatile i32, ptr %17, align 4
  %60 = icmp eq i32 %59, %50
  br i1 %60, label %61, label %41

61:                                               ; preds = %49
  %62 = add nuw nsw i32 %15, 8
  %63 = add nuw nsw i32 %14, 1
  %64 = load i16, ptr %4, align 2
  %65 = zext i16 %64 to i32
  %66 = icmp ult i32 %63, %65
  br i1 %66, label %13, label %9

67:                                               ; preds = %107, %11
  %68 = phi i32 [ 0, %11 ], [ %109, %107 ]
  %69 = phi i32 [ %62, %11 ], [ %108, %107 ]
  %70 = load ptr, ptr %12, align 4
  %71 = getelementptr %struct.send_queue, ptr %70, i32 %68, i32 3
  %72 = getelementptr i8, ptr %71, i32 8
  %73 = getelementptr i64, ptr %2, i32 %69
  %74 = getelementptr i8, ptr %71, i32 16
  %75 = or i32 %69, 1
  %76 = getelementptr i64, ptr %2, i32 %75
  %77 = getelementptr i8, ptr %71, i32 24
  %78 = add nuw nsw i32 %69, 2
  %79 = getelementptr i64, ptr %2, i32 %78
  %80 = getelementptr i8, ptr %71, i32 32
  %81 = add nuw nsw i32 %69, 3
  %82 = getelementptr i64, ptr %2, i32 %81
  %83 = getelementptr i8, ptr %71, i32 40
  %84 = add nuw nsw i32 %69, 4
  %85 = getelementptr i64, ptr %2, i32 %84
  %86 = getelementptr i8, ptr %71, i32 48
  %87 = add nuw nsw i32 %69, 5
  %88 = getelementptr i64, ptr %2, i32 %87
  br label %89

89:                                               ; preds = %97, %67
  %90 = load volatile i32, ptr %71, align 4
  %91 = and i32 %90, 1
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %93, %89
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !25
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #20, !srcloc !26
  %94 = load volatile i32, ptr %71, align 4
  %95 = and i32 %94, 1
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %93

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %90, %89 ], [ %94, %93 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !27
  %99 = load i64, ptr %72, align 8
  store i64 %99, ptr %73, align 8
  %100 = load i64, ptr %74, align 8
  store i64 %100, ptr %76, align 8
  %101 = load i64, ptr %77, align 8
  store i64 %101, ptr %79, align 8
  %102 = load i64, ptr %80, align 8
  store i64 %102, ptr %82, align 8
  %103 = load i64, ptr %83, align 8
  store i64 %103, ptr %85, align 8
  %104 = load i64, ptr %86, align 8
  store i64 %104, ptr %88, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !28
  %105 = load volatile i32, ptr %71, align 4
  %106 = icmp eq i32 %105, %98
  br i1 %106, label %107, label %89

107:                                              ; preds = %97
  %108 = add nuw nsw i32 %69, 6
  %109 = add nuw nsw i32 %68, 1
  %110 = load i16, ptr %4, align 2
  %111 = zext i16 %110 to i32
  %112 = icmp ult i32 %109, %111
  br i1 %112, label %67, label %113

113:                                              ; preds = %107, %9, %3
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @virtnet_get_sset_count(ptr nocapture noundef readonly %0, i32 noundef %1) #16 {
  %3 = icmp eq i32 %1, 1
  br i1 %3, label %4, label %9

4:                                                ; preds = %2
  %5 = getelementptr i8, ptr %0, i32 1434
  %6 = load i16, ptr %5, align 2
  %7 = zext i16 %6 to i32
  %8 = mul nuw nsw i32 %7, 14
  br label %9

9:                                                ; preds = %4, %2
  %10 = phi i32 [ %8, %4 ], [ -95, %2 ]
  ret i32 %10
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @virtnet_get_channels(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #17 {
  %3 = getelementptr i8, ptr %0, i32 1434
  %4 = load i16, ptr %3, align 2
  %5 = zext i16 %4 to i32
  %6 = getelementptr inbounds %struct.ethtool_channels, ptr %1, i32 0, i32 8
  store i32 %5, ptr %6, align 4
  %7 = getelementptr i8, ptr %0, i32 1432
  %8 = load i16, ptr %7, align 4
  %9 = zext i16 %8 to i32
  %10 = getelementptr inbounds %struct.ethtool_channels, ptr %1, i32 0, i32 4
  store i32 %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.ethtool_channels, ptr %1, i32 0, i32 3
  store i32 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.ethtool_channels, ptr %1, i32 0, i32 5
  store i32 0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.ethtool_channels, ptr %1, i32 0, i32 6
  store i32 0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.ethtool_channels, ptr %1, i32 0, i32 7
  store i32 0, ptr %14, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @virtnet_set_channels(ptr noundef %0, ptr nocapture noundef readonly %1) #3 {
  %3 = getelementptr i8, ptr %0, i32 1408
  %4 = getelementptr inbounds %struct.ethtool_channels, ptr %1, i32 0, i32 8
  %5 = load i32, ptr %4, align 4
  %6 = trunc i32 %5 to i16
  %7 = getelementptr inbounds %struct.ethtool_channels, ptr %1, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %38

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.ethtool_channels, ptr %1, i32 0, i32 6
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %38

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.ethtool_channels, ptr %1, i32 0, i32 7
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %38

18:                                               ; preds = %14
  %19 = and i32 %5, 65535
  %20 = getelementptr i8, ptr %0, i32 1432
  %21 = load i16, ptr %20, align 4
  %22 = zext i16 %21 to i32
  %23 = add nsw i32 %19, -1
  %24 = icmp ult i32 %23, %22
  br i1 %24, label %25, label %38

25:                                               ; preds = %18
  %26 = getelementptr i8, ptr %0, i32 1424
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.receive_queue, ptr %27, i32 0, i32 2
  %29 = load ptr, ptr %28, align 32
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  tail call void @cpus_read_lock() #20
  %32 = tail call fastcc i32 @_virtnet_set_queues(ptr noundef %3, i16 noundef zeroext %6)
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  tail call void @cpus_read_unlock() #20
  br label %38

35:                                               ; preds = %31
  tail call fastcc void @virtnet_set_affinity(ptr noundef %3)
  tail call void @cpus_read_unlock() #20
  %36 = tail call i32 @netif_set_real_num_tx_queues(ptr noundef %0, i32 noundef %19) #20
  %37 = tail call i32 @netif_set_real_num_rx_queues(ptr noundef %0, i32 noundef %19) #20
  br label %38

38:                                               ; preds = %35, %34, %25, %18, %14, %10, %2
  %39 = phi i32 [ -22, %14 ], [ -22, %10 ], [ -22, %2 ], [ -22, %18 ], [ -22, %25 ], [ 0, %35 ], [ %32, %34 ]
  ret i32 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_ts_info(ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @virtnet_get_link_ksettings(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #17 {
  %3 = getelementptr i8, ptr %0, i32 1532
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ethtool_link_settings, ptr %1, i32 0, i32 1
  store i32 %4, ptr %5, align 4
  %6 = getelementptr i8, ptr %0, i32 1528
  %7 = load i8, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ethtool_link_settings, ptr %1, i32 0, i32 2
  store i8 %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.ethtool_link_settings, ptr %1, i32 0, i32 3
  store i8 -1, ptr %9, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @virtnet_set_link_ksettings(ptr noundef %0, ptr noundef %1) #3 {
  %3 = getelementptr i8, ptr %0, i32 1532
  %4 = getelementptr i8, ptr %0, i32 1528
  %5 = tail call i32 @ethtool_virtdev_set_link_ksettings(ptr noundef %0, ptr noundef %1, ptr noundef %3, ptr noundef %4) #20
  ret i32 %5
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #18

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtqueue_get_vring_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethtool_sprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_unlock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_virtdev_set_link_ksettings(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_notify_peers(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_stop_all_queues(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @virtnet_free_queues(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.virtnet_info, ptr %0, i32 0, i32 6
  %3 = load i16, ptr %2, align 4
  %4 = icmp eq i16 %3, 0
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.virtnet_info, ptr %0, i32 0, i32 4
  %7 = getelementptr inbounds %struct.virtnet_info, ptr %0, i32 0, i32 3
  br label %8

8:                                                ; preds = %8, %5
  %9 = phi i32 [ 0, %5 ], [ %14, %8 ]
  %10 = load ptr, ptr %6, align 4
  %11 = getelementptr %struct.receive_queue, ptr %10, i32 %9, i32 1
  tail call void @__netif_napi_del(ptr noundef %11) #20
  %12 = load ptr, ptr %7, align 4
  %13 = getelementptr %struct.send_queue, ptr %12, i32 %9, i32 4
  tail call void @__netif_napi_del(ptr noundef %13) #20
  %14 = add nuw nsw i32 %9, 1
  %15 = load i16, ptr %2, align 4
  %16 = zext i16 %15 to i32
  %17 = icmp ult i32 %14, %16
  br i1 %17, label %8, label %18

18:                                               ; preds = %8, %1
  tail call void @synchronize_net() #20
  %19 = getelementptr inbounds %struct.virtnet_info, ptr %0, i32 0, i32 4
  %20 = load ptr, ptr %19, align 4
  tail call void @kfree(ptr noundef %20) #20
  %21 = getelementptr inbounds %struct.virtnet_info, ptr %0, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  tail call void @kfree(ptr noundef %22) #20
  %23 = getelementptr inbounds %struct.virtnet_info, ptr %0, i32 0, i32 20
  %24 = load ptr, ptr %23, align 4
  tail call void @kfree(ptr noundef %24) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @refill_work(ptr noundef %0) #3 {
  %2 = getelementptr i8, ptr %0, i32 -36
  %3 = getelementptr i8, ptr %0, i32 -10
  %4 = load i16, ptr %3, align 2
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %30, label %6

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 -20
  br label %8

8:                                                ; preds = %25, %6
  %9 = phi i32 [ 0, %6 ], [ %26, %25 ]
  %10 = load ptr, ptr %7, align 4
  %11 = getelementptr %struct.receive_queue, ptr %10, i32 %9
  %12 = getelementptr %struct.receive_queue, ptr %10, i32 %9, i32 1
  tail call void @napi_disable(ptr noundef %12) #20
  %13 = tail call fastcc zeroext i1 @try_fill_recv(ptr noundef %2, ptr noundef %11, i32 noundef 3264)
  %14 = load ptr, ptr %11, align 64
  tail call void @napi_enable(ptr noundef %12) #20
  %15 = tail call ptr @llvm.thread.pointer() #20
  %16 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %17 = load volatile i32, ptr %16, align 4
  %18 = add i32 %17, 512
  store volatile i32 %18, ptr %16, align 4
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !17
  %19 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %12) #20
  br i1 %19, label %20, label %21

20:                                               ; preds = %8
  tail call void @virtqueue_disable_cb(ptr noundef %14) #20
  tail call void @__napi_schedule(ptr noundef %12) #20
  br label %21

21:                                               ; preds = %20, %8
  tail call fastcc void @local_bh_enable() #20
  br i1 %13, label %25, label %22

22:                                               ; preds = %21
  %23 = load ptr, ptr @system_wq, align 4
  %24 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %23, ptr noundef %0, i32 noundef 50) #20
  br label %25

25:                                               ; preds = %22, %21
  %26 = add nuw nsw i32 %9, 1
  %27 = load i16, ptr %3, align 2
  %28 = zext i16 %27 to i32
  %29 = icmp ult i32 %26, %28
  br i1 %29, label %8, label %30

30:                                               ; preds = %25, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @virtnet_poll(ptr noundef %0, i32 noundef %1) #3 {
  %3 = alloca %struct.virtnet_rq_stats, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr i8, ptr %0, i32 -8
  %8 = load ptr, ptr %7, align 64
  %9 = getelementptr inbounds %struct.virtqueue, ptr %8, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.virtio_device, ptr %10, i32 0, i32 12
  %12 = load ptr, ptr %11, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #20
  store i32 0, ptr %6, align 4
  %13 = getelementptr inbounds %struct.virtqueue, ptr %8, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = lshr i32 %14, 1
  %16 = getelementptr inbounds %struct.virtnet_info, ptr %12, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr %struct.send_queue, ptr %17, i32 %15
  %19 = getelementptr inbounds %struct.virtnet_info, ptr %12, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 87
  %22 = load ptr, ptr %21, align 64
  %23 = getelementptr %struct.netdev_queue, ptr %22, i32 %15
  %24 = getelementptr %struct.send_queue, ptr %17, i32 %15, i32 4, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %60, label %27

27:                                               ; preds = %2
  %28 = getelementptr inbounds %struct.virtnet_info, ptr %12, i32 0, i32 7
  %29 = load i16, ptr %28, align 2
  %30 = zext i16 %29 to i32
  %31 = getelementptr inbounds %struct.virtnet_info, ptr %12, i32 0, i32 8
  %32 = load i16, ptr %31, align 4
  %33 = zext i16 %32 to i32
  %34 = sub nsw i32 %30, %33
  %35 = icmp sle i32 %34, %15
  %36 = icmp ult i32 %15, %30
  %37 = and i1 %36, %35
  br i1 %37, label %60, label %38

38:                                               ; preds = %27
  %39 = getelementptr %struct.netdev_queue, ptr %22, i32 %15, i32 9
  %40 = tail call i32 @_raw_spin_trylock(ptr noundef %39) #20
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %60, label %42, !prof !19

42:                                               ; preds = %38
  %43 = tail call ptr @llvm.thread.pointer() #20
  %44 = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 2
  %45 = load i32, ptr %44, align 8
  %46 = getelementptr %struct.netdev_queue, ptr %22, i32 %15, i32 10
  store volatile i32 %45, ptr %46, align 4
  br label %47

47:                                               ; preds = %47, %42
  %48 = load ptr, ptr %18, align 8
  tail call void @virtqueue_disable_cb(ptr noundef %48) #20
  tail call fastcc void @free_old_xmit_skbs(ptr noundef %18, i1 noundef zeroext true) #20
  %49 = load ptr, ptr %18, align 8
  %50 = tail call zeroext i1 @virtqueue_enable_cb_delayed(ptr noundef %49) #20
  br i1 %50, label %51, label %47, !prof !11

51:                                               ; preds = %47
  %52 = load ptr, ptr %18, align 8
  %53 = getelementptr inbounds %struct.virtqueue, ptr %52, i32 0, i32 5
  %54 = load i32, ptr %53, align 4
  %55 = icmp ugt i32 %54, 18
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  tail call void @netif_tx_wake_queue(ptr noundef %23) #20
  br label %57

57:                                               ; preds = %56, %51
  store volatile i32 -1, ptr %46, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !34
  %58 = load i16, ptr %39, align 4
  %59 = add i16 %58, 1
  store i16 %59, ptr %39, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #20, !srcloc !35
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #20, !srcloc !36
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !37
  br label %60

60:                                               ; preds = %57, %38, %27, %2
  %61 = load ptr, ptr %7, align 64
  %62 = getelementptr inbounds %struct.virtqueue, ptr %61, i32 0, i32 3
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.virtio_device, ptr %63, i32 0, i32 12
  %65 = load ptr, ptr %64, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(72) %3, i8 0, i32 72, i1 false) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #20
  store i32 0, ptr %4, align 4, !annotation !10
  %66 = getelementptr inbounds %struct.virtnet_info, ptr %65, i32 0, i32 10
  %67 = load i8, ptr %66, align 1, !range !9
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %80, label %69

69:                                               ; preds = %60
  %70 = getelementptr inbounds %struct.virtnet_info, ptr %65, i32 0, i32 11
  %71 = load i8, ptr %70, align 4, !range !9
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.virtnet_rq_stats, ptr %3, i32 0, i32 1
  %75 = sext i32 %1 to i64
  %76 = icmp eq i32 %1, 0
  br i1 %76, label %110, label %77

77:                                               ; preds = %73
  %78 = call ptr @virtqueue_get_buf(ptr noundef %61, ptr noundef nonnull %4) #20
  %79 = icmp eq ptr %78, null
  br i1 %79, label %110, label %100

80:                                               ; preds = %69, %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  store ptr null, ptr %5, align 4, !annotation !10
  %81 = getelementptr inbounds %struct.virtnet_rq_stats, ptr %3, i32 0, i32 1
  %82 = sext i32 %1 to i64
  %83 = icmp eq i32 %1, 0
  br i1 %83, label %98, label %84

84:                                               ; preds = %80
  %85 = call ptr @virtqueue_get_buf_ctx(ptr noundef %61, ptr noundef nonnull %4, ptr noundef nonnull %5) #20
  %86 = icmp eq ptr %85, null
  br i1 %86, label %98, label %87

87:                                               ; preds = %94, %84
  %88 = phi ptr [ %96, %94 ], [ %85, %84 ]
  %89 = load i32, ptr %4, align 4
  %90 = load ptr, ptr %5, align 4
  call fastcc void @receive_buf(ptr noundef %65, ptr noundef %7, ptr noundef nonnull %88, i32 noundef %89, ptr noundef %90, ptr noundef nonnull %6, ptr noundef nonnull %3) #20
  %91 = load i64, ptr %81, align 8
  %92 = add i64 %91, 1
  store i64 %92, ptr %81, align 8
  %93 = icmp ult i64 %92, %82
  br i1 %93, label %94, label %98

94:                                               ; preds = %87
  %95 = load ptr, ptr %7, align 64
  %96 = call ptr @virtqueue_get_buf_ctx(ptr noundef %95, ptr noundef nonnull %4, ptr noundef nonnull %5) #20
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %87

98:                                               ; preds = %94, %87, %84, %80
  %99 = phi i64 [ 0, %80 ], [ 0, %84 ], [ %92, %87 ], [ %92, %94 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  br label %110

100:                                              ; preds = %106, %77
  %101 = phi ptr [ %108, %106 ], [ %78, %77 ]
  %102 = load i32, ptr %4, align 4
  call fastcc void @receive_buf(ptr noundef %65, ptr noundef %7, ptr noundef nonnull %101, i32 noundef %102, ptr noundef null, ptr noundef nonnull %6, ptr noundef nonnull %3) #20
  %103 = load i64, ptr %74, align 8
  %104 = add i64 %103, 1
  store i64 %104, ptr %74, align 8
  %105 = icmp ult i64 %104, %75
  br i1 %105, label %106, label %110

106:                                              ; preds = %100
  %107 = load ptr, ptr %7, align 64
  %108 = call ptr @virtqueue_get_buf(ptr noundef %107, ptr noundef nonnull %4) #20
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %100

110:                                              ; preds = %106, %100, %98, %77, %73
  %111 = phi i64 [ 0, %73 ], [ %99, %98 ], [ 0, %77 ], [ %104, %100 ], [ %104, %106 ]
  %112 = load ptr, ptr %7, align 64
  %113 = getelementptr inbounds %struct.virtqueue, ptr %112, i32 0, i32 5
  %114 = load i32, ptr %113, align 4
  %115 = call i32 @virtqueue_get_vring_size(ptr noundef %112) #20
  %116 = call i32 @llvm.umin.i32(i32 %115, i32 %1) #20
  %117 = lshr i32 %116, 1
  %118 = icmp ugt i32 %114, %117
  br i1 %118, label %119, label %125

119:                                              ; preds = %110
  %120 = call fastcc zeroext i1 @try_fill_recv(ptr noundef %65, ptr noundef %7, i32 noundef 2592) #20
  br i1 %120, label %125, label %121

121:                                              ; preds = %119
  %122 = getelementptr inbounds %struct.virtnet_info, ptr %65, i32 0, i32 15
  %123 = load ptr, ptr @system_wq, align 4
  %124 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %123, ptr noundef %122, i32 noundef 0) #20
  br label %125

125:                                              ; preds = %121, %119, %110
  %126 = getelementptr i8, ptr %0, i32 224
  %127 = load i32, ptr %126, align 4
  %128 = add i32 %127, 1
  store i32 %128, ptr %126, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #20, !srcloc !23
  %129 = getelementptr i8, ptr %0, i32 232
  %130 = load i64, ptr %129, align 8
  %131 = add i64 %130, %111
  store i64 %131, ptr %129, align 8
  %132 = getelementptr i8, ptr %0, i32 240
  %133 = getelementptr inbounds i8, ptr %3, i32 16
  %134 = load i64, ptr %133, align 8
  %135 = load i64, ptr %132, align 8
  %136 = add i64 %135, %134
  store i64 %136, ptr %132, align 8
  %137 = getelementptr i8, ptr %0, i32 248
  %138 = getelementptr inbounds i8, ptr %3, i32 24
  %139 = load i64, ptr %138, align 8
  %140 = load i64, ptr %137, align 8
  %141 = add i64 %140, %139
  store i64 %141, ptr %137, align 8
  %142 = getelementptr i8, ptr %0, i32 256
  %143 = getelementptr inbounds i8, ptr %3, i32 32
  %144 = load i64, ptr %143, align 8
  %145 = load i64, ptr %142, align 8
  %146 = add i64 %145, %144
  store i64 %146, ptr %142, align 8
  %147 = getelementptr i8, ptr %0, i32 264
  %148 = getelementptr inbounds i8, ptr %3, i32 40
  %149 = load i64, ptr %148, align 8
  %150 = load i64, ptr %147, align 8
  %151 = add i64 %150, %149
  store i64 %151, ptr %147, align 8
  %152 = getelementptr i8, ptr %0, i32 272
  %153 = getelementptr inbounds i8, ptr %3, i32 48
  %154 = load i64, ptr %153, align 8
  %155 = load i64, ptr %152, align 8
  %156 = add i64 %155, %154
  store i64 %156, ptr %152, align 8
  %157 = getelementptr i8, ptr %0, i32 280
  %158 = getelementptr inbounds i8, ptr %3, i32 56
  %159 = load i64, ptr %158, align 8
  %160 = load i64, ptr %157, align 8
  %161 = add i64 %160, %159
  store i64 %161, ptr %157, align 8
  %162 = getelementptr i8, ptr %0, i32 288
  %163 = getelementptr inbounds i8, ptr %3, i32 64
  %164 = load i64, ptr %163, align 8
  %165 = load i64, ptr %162, align 8
  %166 = add i64 %165, %164
  store i64 %166, ptr %162, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #20, !srcloc !24
  %167 = load i32, ptr %126, align 4
  %168 = add i32 %167, 1
  store i32 %168, ptr %126, align 4
  %169 = trunc i64 %111 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #20
  %170 = icmp ult i32 %169, %1
  br i1 %170, label %171, label %179

171:                                              ; preds = %125
  %172 = load ptr, ptr %7, align 64
  %173 = call i32 @virtqueue_enable_cb_prepare(ptr noundef %172) #20
  %174 = call zeroext i1 @napi_complete_done(ptr noundef %0, i32 noundef %169) #20
  br i1 %174, label %175, label %178

175:                                              ; preds = %171
  %176 = call zeroext i1 @virtqueue_poll(ptr noundef %172, i32 noundef %173) #20
  br i1 %176, label %177, label %179, !prof !19

177:                                              ; preds = %175
  call fastcc void @virtqueue_napi_schedule(ptr noundef %0, ptr noundef %172) #20
  br label %179

178:                                              ; preds = %171
  call void @virtqueue_disable_cb(ptr noundef %172) #20
  br label %179

179:                                              ; preds = %178, %177, %175, %125
  %180 = load i32, ptr %6, align 4
  %181 = and i32 %180, 2
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %184, label %183

183:                                              ; preds = %179
  call void @xdp_do_flush() #20
  br label %184

184:                                              ; preds = %183, %179
  %185 = and i32 %180, 1
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %245, label %187

187:                                              ; preds = %184
  %188 = tail call ptr @llvm.thread.pointer() #20
  %189 = getelementptr inbounds %struct.thread_info, ptr %188, i32 0, i32 2
  %190 = load i32, ptr %189, align 8
  %191 = getelementptr inbounds %struct.virtnet_info, ptr %12, i32 0, i32 7
  %192 = load i16, ptr %191, align 2
  %193 = zext i16 %192 to i32
  %194 = load i32, ptr @nr_cpu_ids, align 4
  %195 = icmp ult i32 %194, %193
  br i1 %195, label %196, label %202

196:                                              ; preds = %187
  %197 = getelementptr inbounds %struct.virtnet_info, ptr %12, i32 0, i32 8
  %198 = load i16, ptr %197, align 4
  %199 = zext i16 %198 to i32
  %200 = add i32 %190, %193
  %201 = sub i32 %200, %199
  br label %209

202:                                              ; preds = %187
  %203 = srem i32 %190, %193
  %204 = load ptr, ptr %19, align 4
  %205 = getelementptr inbounds %struct.net_device, ptr %204, i32 0, i32 87
  %206 = load ptr, ptr %205, align 64
  %207 = getelementptr %struct.netdev_queue, ptr %206, i32 %203, i32 9
  call void @_raw_spin_lock(ptr noundef %207) #20
  %208 = getelementptr %struct.netdev_queue, ptr %206, i32 %203, i32 10
  store volatile i32 %190, ptr %208, align 4
  br label %209

209:                                              ; preds = %202, %196
  %210 = phi i32 [ %201, %196 ], [ %203, %202 ]
  %211 = load ptr, ptr %16, align 4
  %212 = getelementptr %struct.send_queue, ptr %211, i32 %210
  %213 = load ptr, ptr %212, align 8
  %214 = call zeroext i1 @virtqueue_kick_prepare(ptr noundef %213) #20
  br i1 %214, label %215, label %227

215:                                              ; preds = %209
  %216 = load ptr, ptr %212, align 8
  %217 = call zeroext i1 @virtqueue_notify(ptr noundef %216) #20
  br i1 %217, label %218, label %227

218:                                              ; preds = %215
  %219 = getelementptr %struct.send_queue, ptr %211, i32 %210, i32 3
  %220 = load i32, ptr %219, align 4
  %221 = add i32 %220, 1
  store i32 %221, ptr %219, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #20, !srcloc !23
  %222 = getelementptr %struct.send_queue, ptr %211, i32 %210, i32 3, i32 5
  %223 = load i64, ptr %222, align 8
  %224 = add i64 %223, 1
  store i64 %224, ptr %222, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #20, !srcloc !24
  %225 = load i32, ptr %219, align 4
  %226 = add i32 %225, 1
  store i32 %226, ptr %219, align 4
  br label %227

227:                                              ; preds = %218, %215, %209
  %228 = load i16, ptr %191, align 2
  %229 = zext i16 %228 to i32
  %230 = load i32, ptr @nr_cpu_ids, align 4
  %231 = icmp ult i32 %230, %229
  br i1 %231, label %245, label %232

232:                                              ; preds = %227
  %233 = load ptr, ptr %19, align 4
  %234 = getelementptr inbounds %struct.net_device, ptr %233, i32 0, i32 87
  %235 = load ptr, ptr %234, align 64
  %236 = ptrtoint ptr %212 to i32
  %237 = load ptr, ptr %16, align 4
  %238 = ptrtoint ptr %237 to i32
  %239 = sub i32 %236, %238
  %240 = sdiv exact i32 %239, 696
  %241 = getelementptr %struct.netdev_queue, ptr %235, i32 %240, i32 10
  store volatile i32 -1, ptr %241, align 4
  %242 = getelementptr %struct.netdev_queue, ptr %235, i32 %240, i32 9
  call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !34
  %243 = load i16, ptr %242, align 4
  %244 = add i16 %243, 1
  store i16 %244, ptr %242, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #20, !srcloc !35
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #20, !srcloc !36
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !37
  br label %245

245:                                              ; preds = %232, %227, %184
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #20
  ret i32 %169
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @virtnet_poll_tx(ptr noundef %0, i32 noundef %1) #3 {
  %3 = getelementptr i8, ptr %0, i32 -480
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.virtqueue, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.virtio_device, ptr %6, i32 0, i32 12
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.virtqueue, ptr %4, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, -1
  %12 = lshr i32 %11, 1
  %13 = getelementptr inbounds %struct.virtnet_info, ptr %8, i32 0, i32 7
  %14 = load i16, ptr %13, align 2
  %15 = zext i16 %14 to i32
  %16 = getelementptr inbounds %struct.virtnet_info, ptr %8, i32 0, i32 8
  %17 = load i16, ptr %16, align 4
  %18 = zext i16 %17 to i32
  %19 = sub nsw i32 %15, %18
  %20 = icmp sle i32 %19, %12
  %21 = icmp ult i32 %12, %15
  %22 = and i1 %21, %20
  br i1 %22, label %23, label %25, !prof !19

23:                                               ; preds = %2
  %24 = tail call zeroext i1 @napi_complete_done(ptr noundef %0, i32 noundef 0) #20
  br label %63

25:                                               ; preds = %2
  %26 = getelementptr inbounds %struct.virtnet_info, ptr %8, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.net_device, ptr %27, i32 0, i32 87
  %29 = load ptr, ptr %28, align 64
  %30 = tail call ptr @llvm.thread.pointer() #20
  %31 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 2
  %32 = load i32, ptr %31, align 8
  %33 = getelementptr %struct.netdev_queue, ptr %29, i32 %12, i32 9
  tail call void @_raw_spin_lock(ptr noundef %33) #20
  %34 = getelementptr %struct.netdev_queue, ptr %29, i32 %12, i32 10
  store volatile i32 %32, ptr %34, align 4
  %35 = load ptr, ptr %3, align 8
  tail call void @virtqueue_disable_cb(ptr noundef %35) #20
  tail call fastcc void @free_old_xmit_skbs(ptr noundef %3, i1 noundef zeroext true)
  %36 = load ptr, ptr %3, align 8
  %37 = getelementptr inbounds %struct.virtqueue, ptr %36, i32 0, i32 5
  %38 = load i32, ptr %37, align 4
  %39 = icmp ugt i32 %38, 18
  br i1 %39, label %40, label %43

40:                                               ; preds = %25
  %41 = getelementptr %struct.netdev_queue, ptr %29, i32 %12
  tail call void @netif_tx_wake_queue(ptr noundef %41) #20
  %42 = load ptr, ptr %3, align 8
  br label %43

43:                                               ; preds = %40, %25
  %44 = phi ptr [ %42, %40 ], [ %36, %25 ]
  %45 = tail call i32 @virtqueue_enable_cb_prepare(ptr noundef %44) #20
  %46 = tail call zeroext i1 @napi_complete_done(ptr noundef %0, i32 noundef 0) #20
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = load ptr, ptr %3, align 8
  tail call void @virtqueue_disable_cb(ptr noundef %48) #20
  store volatile i32 -1, ptr %34, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !34
  %49 = load i16, ptr %33, align 4
  %50 = add i16 %49, 1
  store i16 %50, ptr %33, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #20, !srcloc !35
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #20, !srcloc !36
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !37
  br label %63

51:                                               ; preds = %43
  store volatile i32 -1, ptr %34, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !34
  %52 = load i16, ptr %33, align 4
  %53 = add i16 %52, 1
  store i16 %53, ptr %33, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #20, !srcloc !35
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #20, !srcloc !36
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !37
  %54 = load ptr, ptr %3, align 8
  %55 = tail call zeroext i1 @virtqueue_poll(ptr noundef %54, i32 noundef %45) #20
  br i1 %55, label %56, label %63, !prof !19

56:                                               ; preds = %51
  %57 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %0) #20
  br i1 %57, label %58, label %63

58:                                               ; preds = %56
  %59 = load i32, ptr %31, align 8
  tail call void @_raw_spin_lock(ptr noundef %33) #20
  store volatile i32 %59, ptr %34, align 4
  %60 = load ptr, ptr %3, align 8
  tail call void @virtqueue_disable_cb(ptr noundef %60) #20
  store volatile i32 -1, ptr %34, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !34
  %61 = load i16, ptr %33, align 4
  %62 = add i16 %61, 1
  store i16 %62, ptr %33, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #20, !srcloc !35
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #20, !srcloc !36
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !37
  tail call void @__napi_schedule(ptr noundef %0) #20
  br label %63

63:                                               ; preds = %58, %56, %51, %47, %23
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdp_do_flush() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @virtqueue_get_buf_ctx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @receive_buf(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef %5, ptr nocapture noundef %6) unnamed_addr #3 {
  %8 = alloca %struct.flow_keys_basic, align 4
  %9 = alloca ptr, align 4
  %10 = alloca %struct.xdp_buff, align 4
  %11 = alloca i32, align 4
  %12 = alloca i16, align 2
  %13 = alloca ptr, align 4
  %14 = alloca i32, align 4
  %15 = alloca i16, align 2
  %16 = alloca ptr, align 4
  %17 = alloca %struct.xdp_buff, align 4
  %18 = getelementptr inbounds %struct.virtnet_info, ptr %0, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.virtnet_info, ptr %0, i32 0, i32 14
  %21 = load i8, ptr %20, align 1
  %22 = zext i8 %21 to i32
  %23 = add nuw nsw i32 %22, 14
  %24 = icmp ugt i32 %23, %3
  br i1 %24, label %25, label %88, !prof !19

25:                                               ; preds = %7
  %26 = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 36, i32 10
  %27 = load i32, ptr %26, align 8
  %28 = add i32 %27, 1
  store i32 %28, ptr %26, align 8
  %29 = getelementptr inbounds %struct.virtnet_info, ptr %0, i32 0, i32 11
  %30 = load i8, ptr %29, align 4, !range !9
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %49, label %32

32:                                               ; preds = %25
  %33 = load ptr, ptr @mem_map, align 4
  %34 = ptrtoint ptr %2 to i32
  %35 = add i32 %34, 1073741824
  %36 = lshr i32 %35, 12
  %37 = getelementptr %struct.page, ptr %33, i32 %36, i32 1
  %38 = load volatile i32, ptr %37, align 4
  %39 = and i32 %38, 1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41, !prof !11

41:                                               ; preds = %32
  %42 = add i32 %38, -1
  br label %46

43:                                               ; preds = %32
  %44 = getelementptr %struct.page, ptr %33, i32 %36
  %45 = ptrtoint ptr %44 to i32
  br label %46

46:                                               ; preds = %43, %41
  %47 = phi i32 [ %42, %41 ], [ %45, %43 ]
  %48 = inttoptr i32 %47 to ptr
  tail call fastcc void @put_page(ptr noundef %48)
  br label %1087

49:                                               ; preds = %25
  %50 = getelementptr inbounds %struct.virtnet_info, ptr %0, i32 0, i32 10
  %51 = load i8, ptr %50, align 1, !range !9
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %71, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.page, ptr %2, i32 0, i32 1, i32 0, i32 3
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %65, label %57

57:                                               ; preds = %57, %53
  %58 = phi i32 [ %61, %57 ], [ %55, %53 ]
  %59 = inttoptr i32 %58 to ptr
  %60 = getelementptr inbounds %struct.page, ptr %59, i32 0, i32 1, i32 0, i32 3
  %61 = load i32, ptr %60, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %57

63:                                               ; preds = %57
  %64 = inttoptr i32 %58 to ptr
  br label %65

65:                                               ; preds = %63, %53
  %66 = phi ptr [ %2, %53 ], [ %64, %63 ]
  %67 = getelementptr inbounds %struct.page, ptr %66, i32 0, i32 1, i32 0, i32 3
  %68 = getelementptr inbounds %struct.receive_queue, ptr %1, i32 0, i32 4
  %69 = load ptr, ptr %68, align 16
  %70 = ptrtoint ptr %69 to i32
  store i32 %70, ptr %67, align 4
  store ptr %2, ptr %68, align 16
  br label %1087

71:                                               ; preds = %49
  %72 = load ptr, ptr @mem_map, align 4
  %73 = ptrtoint ptr %2 to i32
  %74 = add i32 %73, 1073741824
  %75 = lshr i32 %74, 12
  %76 = getelementptr %struct.page, ptr %72, i32 %75, i32 1
  %77 = load volatile i32, ptr %76, align 4
  %78 = and i32 %77, 1
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %82, label %80, !prof !11

80:                                               ; preds = %71
  %81 = add i32 %77, -1
  br label %85

82:                                               ; preds = %71
  %83 = getelementptr %struct.page, ptr %72, i32 %75
  %84 = ptrtoint ptr %83 to i32
  br label %85

85:                                               ; preds = %82, %80
  %86 = phi i32 [ %81, %80 ], [ %84, %82 ]
  %87 = inttoptr i32 %86 to ptr
  tail call fastcc void @put_page(ptr noundef %87)
  br label %1087

88:                                               ; preds = %7
  %89 = getelementptr inbounds %struct.virtnet_info, ptr %0, i32 0, i32 11
  %90 = load i8, ptr %89, align 4, !range !9
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %544, label %92

92:                                               ; preds = %88
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14)
  store ptr %4, ptr %13, align 4
  store i32 %3, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %15) #20
  %93 = getelementptr inbounds %struct.virtio_net_hdr_mrg_rxbuf, ptr %2, i32 0, i32 1
  %94 = load i16, ptr %93, align 2
  store i16 %94, ptr %15, align 2
  %95 = load ptr, ptr @mem_map, align 4
  %96 = ptrtoint ptr %2 to i32
  %97 = add i32 %96, 1073741824
  %98 = lshr i32 %97, 12
  %99 = getelementptr %struct.page, ptr %95, i32 %98, i32 1
  %100 = load volatile i32, ptr %99, align 4
  %101 = and i32 %100, 1
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %105, label %103, !prof !11

103:                                              ; preds = %92
  %104 = add i32 %100, -1
  br label %108

105:                                              ; preds = %92
  %106 = getelementptr %struct.page, ptr %95, i32 %98
  %107 = ptrtoint ptr %106 to i32
  br label %108

108:                                              ; preds = %105, %103
  %109 = phi i32 [ %104, %103 ], [ %107, %105 ]
  %110 = inttoptr i32 %109 to ptr
  %111 = tail call ptr @page_address(ptr noundef %110) #20
  %112 = ptrtoint ptr %111 to i32
  %113 = sub i32 %96, %112
  %114 = ptrtoint ptr %4 to i32
  %115 = and i32 %114, 4194303
  %116 = lshr i32 %114, 22
  %117 = load i8, ptr %20, align 1
  %118 = zext i8 %117 to i32
  %119 = sub i32 %3, %118
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds %struct.virtnet_rq_stats, ptr %6, i32 0, i32 2
  %122 = load i64, ptr %121, align 8
  %123 = add i64 %122, %120
  store i64 %123, ptr %121, align 8
  %124 = icmp ult i32 %115, %3
  br i1 %124, label %125, label %129, !prof !19

125:                                              ; preds = %108
  %126 = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 36, i32 10
  %127 = load i32, ptr %126, align 8
  %128 = add i32 %127, 1
  store i32 %128, ptr %126, align 8
  br label %469

129:                                              ; preds = %108
  %130 = getelementptr inbounds %struct.virtnet_info, ptr %0, i32 0, i32 9
  %131 = load i8, ptr %130, align 2, !range !9
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %314, label %133, !prof !11

133:                                              ; preds = %129
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !44
  %134 = getelementptr inbounds %struct.receive_queue, ptr %1, i32 0, i32 2
  %135 = load volatile ptr, ptr %134, align 32
  %136 = icmp eq ptr %135, null
  br i1 %136, label %310, label %137

137:                                              ; preds = %133
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #20
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %17) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %17, i8 0, i32 28, i1 false) #20, !annotation !10
  %138 = getelementptr inbounds %struct.virtio_net_hdr, ptr %2, i32 0, i32 1
  %139 = load i8, ptr %138, align 1
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %141, label %463, !prof !11

141:                                              ; preds = %137
  %142 = icmp ugt i16 %94, 1
  br i1 %142, label %150, label %143, !prof !19

143:                                              ; preds = %141
  %144 = icmp ult ptr %4, inttoptr (i32 4194304 to ptr)
  %145 = select i1 %144, i32 %115, i32 4096
  %146 = load i8, ptr %130, align 2, !range !9
  %147 = icmp eq i8 %146, 0
  %148 = select i1 %147, i32 0, i32 256
  %149 = icmp ult i32 %116, %148
  br i1 %149, label %150, label %155, !prof !19

150:                                              ; preds = %143, %141
  %151 = call fastcc ptr @xdp_linearize_page(ptr noundef %1, ptr noundef nonnull %15, ptr noundef %110, i32 noundef %113, i32 noundef 256, ptr noundef nonnull %14) #20
  %152 = icmp eq ptr %151, null
  br i1 %152, label %463, label %153

153:                                              ; preds = %150
  %154 = load i32, ptr %14, align 4
  br label %155

155:                                              ; preds = %153, %143
  %156 = phi i32 [ %154, %153 ], [ %3, %143 ]
  %157 = phi i32 [ 4096, %153 ], [ %145, %143 ]
  %158 = phi i32 [ 256, %153 ], [ %113, %143 ]
  %159 = phi ptr [ %151, %153 ], [ %110, %143 ]
  %160 = tail call ptr @page_address(ptr noundef %159) #20
  %161 = getelementptr i8, ptr %160, i32 %158
  %162 = load i8, ptr %20, align 1
  %163 = zext i8 %162 to i32
  %164 = sub nsw i32 %157, %163
  %165 = getelementptr inbounds %struct.receive_queue, ptr %1, i32 0, i32 11
  %166 = getelementptr inbounds %struct.xdp_buff, ptr %17, i32 0, i32 6
  store i32 %164, ptr %166, align 4
  %167 = getelementptr inbounds %struct.xdp_buff, ptr %17, i32 0, i32 4
  store ptr %165, ptr %167, align 4
  %168 = getelementptr i8, ptr %161, i32 -256
  %169 = getelementptr i8, ptr %168, i32 %163
  %170 = sub i32 %156, %163
  %171 = getelementptr i8, ptr %169, i32 256
  %172 = getelementptr inbounds %struct.xdp_buff, ptr %17, i32 0, i32 3
  store ptr %169, ptr %172, align 4
  store ptr %171, ptr %17, align 4
  %173 = getelementptr i8, ptr %171, i32 %170
  %174 = getelementptr inbounds %struct.xdp_buff, ptr %17, i32 0, i32 1
  store ptr %173, ptr %174, align 4
  %175 = getelementptr inbounds %struct.xdp_buff, ptr %17, i32 0, i32 2
  store ptr %171, ptr %175, align 4
  %176 = load volatile i32, ptr @bpf_stats_enabled_key, align 4
  %177 = icmp sgt i32 %176, 0
  br i1 %177, label %178, label %206, !prof !19

178:                                              ; preds = %155
  %179 = tail call i64 @sched_clock() #20
  %180 = getelementptr inbounds %struct.bpf_prog, ptr %135, i32 1
  %181 = getelementptr inbounds %struct.bpf_prog, ptr %135, i32 0, i32 9
  %182 = load ptr, ptr %181, align 4
  %183 = call i32 %182(ptr noundef nonnull %17, ptr noundef %180) #20
  %184 = getelementptr inbounds %struct.bpf_prog, ptr %135, i32 0, i32 7
  %185 = load ptr, ptr %184, align 4
  %186 = ptrtoint ptr %185 to i32
  %187 = call i32 @llvm.read_register.i32(metadata !0) #20
  %188 = inttoptr i32 %187 to ptr
  %189 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %188) #10, !srcloc !18
  %190 = add i32 %189, %186
  %191 = inttoptr i32 %190 to ptr
  %192 = getelementptr inbounds %struct.bpf_prog_stats, ptr %191, i32 0, i32 3
  %193 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #20, !srcloc !39
  %194 = load i32, ptr %192, align 4
  %195 = add i32 %194, 1
  store i32 %195, ptr %192, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #20, !srcloc !23
  %196 = load i64, ptr %191, align 8
  %197 = add i64 %196, 1
  store i64 %197, ptr %191, align 8
  %198 = getelementptr inbounds %struct.bpf_prog_stats, ptr %191, i32 0, i32 1
  %199 = call i64 @sched_clock() #20
  %200 = sub i64 %199, %179
  %201 = and i64 %200, 4294967295
  %202 = load i64, ptr %198, align 8
  %203 = add i64 %201, %202
  store i64 %203, ptr %198, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #20, !srcloc !24
  %204 = load i32, ptr %192, align 4
  %205 = add i32 %204, 1
  store i32 %205, ptr %192, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %193) #20, !srcloc !40
  br label %211

206:                                              ; preds = %155
  %207 = getelementptr inbounds %struct.bpf_prog, ptr %135, i32 1
  %208 = getelementptr inbounds %struct.bpf_prog, ptr %135, i32 0, i32 9
  %209 = load ptr, ptr %208, align 4
  %210 = call i32 %209(ptr noundef nonnull %17, ptr noundef %207) #20
  br label %211

211:                                              ; preds = %206, %178
  %212 = phi i32 [ %183, %178 ], [ %210, %206 ]
  %213 = load volatile i32, ptr @bpf_master_redirect_enabled_key, align 4
  %214 = icmp sgt i32 %213, 0
  br i1 %214, label %215, label %235, !prof !19

215:                                              ; preds = %211
  %216 = icmp eq i32 %212, 3
  br i1 %216, label %217, label %235

217:                                              ; preds = %215
  %218 = load ptr, ptr %167, align 4
  %219 = load ptr, ptr %218, align 64
  %220 = getelementptr inbounds %struct.net_device, ptr %219, i32 0, i32 14
  %221 = load i32, ptr %220, align 8
  %222 = and i32 %221, 2048
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %231, label %224

224:                                              ; preds = %217
  %225 = getelementptr inbounds %struct.net_device, ptr %219, i32 0, i32 15
  %226 = load i64, ptr %225, align 16
  %227 = and i64 %226, 4
  %228 = icmp eq i64 %227, 0
  br i1 %228, label %231, label %229

229:                                              ; preds = %224
  %230 = call i32 @xdp_master_redirect(ptr noundef nonnull %17) #20
  br label %235

231:                                              ; preds = %224, %217
  %232 = getelementptr inbounds %struct.virtnet_rq_stats, ptr %6, i32 0, i32 4
  %233 = load i64, ptr %232, align 8
  %234 = add i64 %233, 1
  store i64 %234, ptr %232, align 8
  br label %264

235:                                              ; preds = %229, %215, %211
  %236 = phi i32 [ %230, %229 ], [ %212, %215 ], [ %212, %211 ]
  %237 = getelementptr inbounds %struct.virtnet_rq_stats, ptr %6, i32 0, i32 4
  %238 = load i64, ptr %237, align 8
  %239 = add i64 %238, 1
  store i64 %239, ptr %237, align 8
  switch i32 %236, label %301 [
    i32 2, label %240
    i32 3, label %264
    i32 4, label %286
    i32 0, label %303
    i32 1, label %305
  ]

240:                                              ; preds = %235
  %241 = load ptr, ptr %17, align 4
  %242 = load ptr, ptr %175, align 4
  %243 = ptrtoint ptr %241 to i32
  %244 = ptrtoint ptr %242 to i32
  %245 = sub i32 %243, %244
  %246 = call ptr @page_address(ptr noundef %159) #20
  %247 = ptrtoint ptr %246 to i32
  %248 = load i8, ptr %20, align 1
  %249 = zext i8 %248 to i32
  %250 = add i32 %245, %247
  %251 = add i32 %250, %249
  %252 = sub i32 %243, %251
  %253 = load ptr, ptr %174, align 4
  %254 = load ptr, ptr %17, align 4
  %255 = ptrtoint ptr %253 to i32
  %256 = ptrtoint ptr %254 to i32
  %257 = add i32 %245, %249
  %258 = add i32 %257, %255
  %259 = sub i32 %258, %256
  store i32 %259, ptr %14, align 4
  %260 = icmp eq ptr %159, %110
  br i1 %260, label %309, label %261, !prof !11

261:                                              ; preds = %240
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !45
  call fastcc void @put_page(ptr noundef %110) #20
  %262 = load i32, ptr %14, align 4
  %263 = call fastcc ptr @page_to_skb(ptr noundef %0, ptr noundef %1, ptr noundef %159, i32 noundef %252, i32 noundef %262, i32 noundef 4096, i1 noundef zeroext false, i32 noundef %245, i32 noundef 256) #20
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %17) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #20
  br label %844

264:                                              ; preds = %235, %231
  %265 = getelementptr inbounds %struct.virtnet_rq_stats, ptr %6, i32 0, i32 5
  %266 = load i64, ptr %265, align 8
  %267 = add i64 %266, 1
  store i64 %267, ptr %265, align 8
  %268 = call fastcc ptr @xdp_convert_buff_to_frame(ptr noundef nonnull %17) #20
  store ptr %268, ptr %16, align 4
  %269 = icmp eq ptr %268, null
  br i1 %269, label %463, label %270, !prof !19

270:                                              ; preds = %264
  %271 = call i32 @virtnet_xdp_xmit(ptr noundef %19, i32 noundef 1, ptr noundef nonnull %16, i32 noundef 0) #20
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %273, label %274, !prof !19

273:                                              ; preds = %270
  call void @xdp_return_frame_rx_napi(ptr noundef nonnull %268) #20
  br label %280

274:                                              ; preds = %270
  %275 = icmp slt i32 %271, 0
  br i1 %275, label %276, label %280, !prof !19

276:                                              ; preds = %274
  %277 = load ptr, ptr %18, align 4
  call fastcc void @trace_xdp_exception(ptr noundef %277, ptr noundef nonnull %135, i32 noundef 3) #20
  %278 = icmp eq ptr %159, %110
  br i1 %278, label %463, label %279, !prof !11

279:                                              ; preds = %276
  call fastcc void @put_page(ptr noundef %159) #20
  br label %463

280:                                              ; preds = %274, %273
  %281 = load i32, ptr %5, align 4
  %282 = or i32 %281, 1
  store i32 %282, ptr %5, align 4
  %283 = icmp eq ptr %159, %110
  br i1 %283, label %285, label %284, !prof !11

284:                                              ; preds = %280
  call fastcc void @put_page(ptr noundef %110) #20
  br label %285

285:                                              ; preds = %284, %280
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !45
  br label %308

286:                                              ; preds = %235
  %287 = getelementptr inbounds %struct.virtnet_rq_stats, ptr %6, i32 0, i32 6
  %288 = load i64, ptr %287, align 8
  %289 = add i64 %288, 1
  store i64 %289, ptr %287, align 8
  %290 = call i32 @xdp_do_redirect(ptr noundef %19, ptr noundef nonnull %17, ptr noundef nonnull %135) #20
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %295, label %292

292:                                              ; preds = %286
  %293 = icmp eq ptr %159, %110
  br i1 %293, label %463, label %294, !prof !11

294:                                              ; preds = %292
  call fastcc void @put_page(ptr noundef %159) #20
  br label %463

295:                                              ; preds = %286
  %296 = load i32, ptr %5, align 4
  %297 = or i32 %296, 2
  store i32 %297, ptr %5, align 4
  %298 = icmp eq ptr %159, %110
  br i1 %298, label %300, label %299, !prof !11

299:                                              ; preds = %295
  call fastcc void @put_page(ptr noundef %110) #20
  br label %300

300:                                              ; preds = %299, %295
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !45
  br label %308

301:                                              ; preds = %235
  %302 = load ptr, ptr %18, align 4
  call void @bpf_warn_invalid_xdp_action(ptr noundef %302, ptr noundef nonnull %135, i32 noundef %236) #20
  br label %303

303:                                              ; preds = %301, %235
  %304 = load ptr, ptr %18, align 4
  call fastcc void @trace_xdp_exception(ptr noundef %304, ptr noundef nonnull %135, i32 noundef %236) #20
  br label %305

305:                                              ; preds = %303, %235
  %306 = icmp eq ptr %159, %110
  br i1 %306, label %463, label %307, !prof !11

307:                                              ; preds = %305
  call void @__free_pages(ptr noundef %159, i32 noundef 0) #20
  br label %463

308:                                              ; preds = %300, %285
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %17) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #20
  br label %843

309:                                              ; preds = %240
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %17) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #20
  br label %310

310:                                              ; preds = %309, %133
  %311 = phi i32 [ %245, %309 ], [ 0, %133 ]
  %312 = phi i32 [ %252, %309 ], [ %113, %133 ]
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !45
  %313 = load i32, ptr %14, align 4
  br label %314

314:                                              ; preds = %310, %129
  %315 = phi i32 [ %313, %310 ], [ %3, %129 ]
  %316 = phi i1 [ %136, %310 ], [ true, %129 ]
  %317 = phi i32 [ %311, %310 ], [ 0, %129 ]
  %318 = phi i32 [ %312, %310 ], [ %113, %129 ]
  %319 = call fastcc ptr @page_to_skb(ptr noundef %0, ptr noundef %1, ptr noundef %110, i32 noundef %318, i32 noundef %315, i32 noundef %115, i1 noundef zeroext %316, i32 noundef %317, i32 noundef %116) #20
  %320 = icmp eq ptr %319, null
  br i1 %320, label %469, label %321, !prof !19

321:                                              ; preds = %314
  %322 = load i16, ptr %15, align 2
  %323 = add i16 %322, -1
  %324 = icmp eq i16 %323, 0
  br i1 %324, label %453, label %325

325:                                              ; preds = %321
  %326 = getelementptr inbounds %struct.sk_buff, ptr %319, i32 0, i32 18
  %327 = getelementptr inbounds %struct.sk_buff, ptr %319, i32 0, i32 6
  %328 = getelementptr inbounds %struct.sk_buff, ptr %319, i32 0, i32 5
  br label %329

329:                                              ; preds = %450, %325
  %330 = phi i16 [ %323, %325 ], [ %451, %450 ]
  %331 = phi ptr [ %319, %325 ], [ %387, %450 ]
  %332 = load ptr, ptr %1, align 64
  %333 = call ptr @virtqueue_get_buf_ctx(ptr noundef %332, ptr noundef nonnull %14, ptr noundef nonnull %13) #20
  %334 = icmp eq ptr %333, null
  br i1 %334, label %534, label %335, !prof !19

335:                                              ; preds = %329
  %336 = load i32, ptr %14, align 4
  %337 = zext i32 %336 to i64
  %338 = load i64, ptr %121, align 8
  %339 = add i64 %338, %337
  store i64 %339, ptr %121, align 8
  %340 = load ptr, ptr @mem_map, align 4
  %341 = ptrtoint ptr %333 to i32
  %342 = add i32 %341, 1073741824
  %343 = lshr i32 %342, 12
  %344 = getelementptr %struct.page, ptr %340, i32 %343, i32 1
  %345 = load volatile i32, ptr %344, align 4
  %346 = and i32 %345, 1
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %350, label %348, !prof !11

348:                                              ; preds = %335
  %349 = add i32 %345, -1
  br label %353

350:                                              ; preds = %335
  %351 = getelementptr %struct.page, ptr %340, i32 %343
  %352 = ptrtoint ptr %351 to i32
  br label %353

353:                                              ; preds = %350, %348
  %354 = phi i32 [ %349, %348 ], [ %352, %350 ]
  %355 = inttoptr i32 %354 to ptr
  %356 = load ptr, ptr %13, align 4
  %357 = ptrtoint ptr %356 to i32
  %358 = and i32 %357, 4194303
  %359 = icmp ugt i32 %336, %358
  br i1 %359, label %360, label %365, !prof !19

360:                                              ; preds = %353
  %361 = inttoptr i32 %354 to ptr
  store i16 %330, ptr %15, align 2
  %362 = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 36, i32 10
  %363 = load i32, ptr %362, align 8
  %364 = add i32 %363, 1
  store i32 %364, ptr %362, align 8
  br label %469

365:                                              ; preds = %353
  %366 = getelementptr inbounds %struct.sk_buff, ptr %331, i32 0, i32 15
  %367 = load ptr, ptr %366, align 4
  %368 = getelementptr inbounds %struct.skb_shared_info, ptr %367, i32 0, i32 2
  %369 = load i8, ptr %368, align 2
  %370 = zext i8 %369 to i32
  %371 = icmp eq i8 %369, 17
  br i1 %371, label %372, label %386, !prof !19

372:                                              ; preds = %365
  %373 = call ptr @__alloc_skb(i32 noundef 0, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #20
  %374 = icmp eq ptr %373, null
  br i1 %374, label %467, label %375, !prof !19

375:                                              ; preds = %372
  %376 = icmp eq ptr %331, %319
  br i1 %376, label %377, label %380

377:                                              ; preds = %375
  %378 = load ptr, ptr %366, align 4
  %379 = getelementptr inbounds %struct.skb_shared_info, ptr %378, i32 0, i32 6
  br label %380

380:                                              ; preds = %377, %375
  %381 = phi ptr [ %379, %377 ], [ %331, %375 ]
  store ptr %373, ptr %381, align 8
  %382 = getelementptr inbounds %struct.sk_buff, ptr %373, i32 0, i32 18
  %383 = load i32, ptr %382, align 8
  %384 = load i32, ptr %326, align 8
  %385 = add i32 %384, %383
  store i32 %385, ptr %326, align 8
  br label %386

386:                                              ; preds = %380, %365
  %387 = phi ptr [ %373, %380 ], [ %331, %365 ]
  %388 = phi i32 [ 0, %380 ], [ %370, %365 ]
  %389 = icmp eq ptr %387, %319
  br i1 %389, label %398, label %390

390:                                              ; preds = %386
  %391 = load i32, ptr %14, align 4
  %392 = load i32, ptr %327, align 4
  %393 = add i32 %392, %391
  store i32 %393, ptr %327, align 4
  %394 = load i32, ptr %328, align 8
  %395 = add i32 %394, %391
  store i32 %395, ptr %328, align 8
  %396 = load i32, ptr %326, align 8
  %397 = add i32 %396, %358
  store i32 %397, ptr %326, align 8
  br label %398

398:                                              ; preds = %390, %386
  %399 = call ptr @page_address(ptr noundef %355) #20
  %400 = ptrtoint ptr %399 to i32
  %401 = sub i32 %341, %400
  %402 = icmp eq ptr %387, null
  br i1 %402, label %413, label %403

403:                                              ; preds = %398
  %404 = getelementptr inbounds %struct.sk_buff, ptr %387, i32 0, i32 15
  %405 = load ptr, ptr %404, align 4
  %406 = load i8, ptr %405, align 8
  %407 = and i8 %406, 1
  %408 = icmp eq i8 %407, 0
  br i1 %408, label %413, label %409

409:                                              ; preds = %403
  %410 = getelementptr inbounds %struct.skb_shared_info, ptr %405, i32 0, i32 11
  %411 = load ptr, ptr %410, align 4
  %412 = icmp ne ptr %411, null
  br label %413

413:                                              ; preds = %409, %403, %398
  %414 = phi i1 [ %412, %409 ], [ false, %403 ], [ false, %398 ]
  %415 = icmp eq i32 %388, 0
  %416 = or i1 %415, %414
  br i1 %416, label %448, label %417

417:                                              ; preds = %413
  %418 = getelementptr inbounds %struct.sk_buff, ptr %387, i32 0, i32 15
  %419 = load ptr, ptr %418, align 4
  %420 = add nsw i32 %388, -1
  %421 = getelementptr %struct.skb_shared_info, ptr %419, i32 0, i32 12, i32 %420
  %422 = load ptr, ptr %421, align 4
  %423 = icmp eq ptr %422, %355
  br i1 %423, label %424, label %448

424:                                              ; preds = %417
  %425 = getelementptr %struct.skb_shared_info, ptr %419, i32 0, i32 12, i32 %420, i32 2
  %426 = load i32, ptr %425, align 4
  %427 = getelementptr %struct.skb_shared_info, ptr %419, i32 0, i32 12, i32 %420, i32 1
  %428 = load i32, ptr %427, align 4
  %429 = add i32 %428, %426
  %430 = icmp eq i32 %429, %401
  br i1 %430, label %431, label %448

431:                                              ; preds = %424
  %432 = getelementptr inbounds %struct.page, ptr %355, i32 0, i32 1
  %433 = load volatile i32, ptr %432, align 4
  %434 = and i32 %433, 1
  %435 = icmp eq i32 %434, 0
  br i1 %435, label %439, label %436, !prof !11

436:                                              ; preds = %431
  %437 = add i32 %433, -1
  %438 = inttoptr i32 %437 to ptr
  br label %439

439:                                              ; preds = %436, %431
  %440 = phi ptr [ %355, %431 ], [ %438, %436 ]
  %441 = getelementptr inbounds %struct.page, ptr %440, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !13
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %441) #20, !srcloc !14
  %442 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %441, ptr %441, i32 1, ptr elementtype(i32) %441) #20, !srcloc !15
  %443 = extractvalue { i32, i32 } %442, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !16
  %444 = icmp eq i32 %443, 0
  br i1 %444, label %445, label %446

445:                                              ; preds = %439
  call void @__put_page(ptr noundef %440) #20
  br label %446

446:                                              ; preds = %445, %439
  %447 = load i32, ptr %14, align 4
  call void @skb_coalesce_rx_frag(ptr noundef %387, i32 noundef %420, i32 noundef %447, i32 noundef %358) #20
  br label %450

448:                                              ; preds = %424, %417, %413
  %449 = load i32, ptr %14, align 4
  call void @skb_add_rx_frag(ptr noundef %387, i32 noundef %388, ptr noundef %355, i32 noundef %401, i32 noundef %449, i32 noundef %358) #20
  br label %450

450:                                              ; preds = %448, %446
  %451 = add i16 %330, -1
  %452 = icmp eq i16 %451, 0
  br i1 %452, label %453, label %329

453:                                              ; preds = %450, %321
  %454 = getelementptr inbounds %struct.receive_queue, ptr %1, i32 0, i32 5
  %455 = getelementptr inbounds %struct.sk_buff, ptr %319, i32 0, i32 5
  %456 = load i32, ptr %455, align 8
  %457 = load volatile i32, ptr %454, align 4
  %458 = icmp eq i32 %457, 0
  %459 = mul i32 %457, 63
  %460 = add i32 %459, %456
  %461 = lshr i32 %460, 6
  %462 = select i1 %458, i32 %456, i32 %461
  store volatile i32 %462, ptr %454, align 4
  br label %844

463:                                              ; preds = %307, %305, %294, %292, %279, %276, %264, %150, %137
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %17) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #20
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !45
  %464 = getelementptr inbounds %struct.virtnet_rq_stats, ptr %6, i32 0, i32 7
  %465 = load i64, ptr %464, align 8
  %466 = add i64 %465, 1
  store i64 %466, ptr %464, align 8
  br label %469

467:                                              ; preds = %372
  %468 = inttoptr i32 %354 to ptr
  store i16 %330, ptr %15, align 2
  br label %469

469:                                              ; preds = %467, %463, %360, %314, %125
  %470 = phi ptr [ null, %125 ], [ null, %314 ], [ null, %463 ], [ %319, %360 ], [ %319, %467 ]
  %471 = phi ptr [ %110, %125 ], [ %110, %314 ], [ %110, %463 ], [ %361, %360 ], [ %468, %467 ]
  %472 = getelementptr inbounds %struct.page, ptr %471, i32 0, i32 1
  %473 = load volatile i32, ptr %472, align 4
  %474 = and i32 %473, 1
  %475 = icmp eq i32 %474, 0
  br i1 %475, label %478, label %476, !prof !11

476:                                              ; preds = %469
  %477 = add i32 %473, -1
  br label %480

478:                                              ; preds = %469
  %479 = ptrtoint ptr %471 to i32
  br label %480

480:                                              ; preds = %478, %476
  %481 = phi i32 [ %477, %476 ], [ %479, %478 ]
  %482 = inttoptr i32 %481 to ptr
  %483 = getelementptr inbounds %struct.page, ptr %482, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !13
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %483) #20, !srcloc !14
  %484 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %483, ptr %483, i32 1, ptr elementtype(i32) %483) #20, !srcloc !15
  %485 = extractvalue { i32, i32 } %484, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !16
  %486 = icmp eq i32 %485, 0
  br i1 %486, label %487, label %488

487:                                              ; preds = %480
  call void @__put_page(ptr noundef %482) #20
  br label %488

488:                                              ; preds = %487, %480
  %489 = load i16, ptr %15, align 2
  %490 = icmp ugt i16 %489, 1
  br i1 %490, label %491, label %539

491:                                              ; preds = %532, %488
  %492 = phi i16 [ %493, %532 ], [ %489, %488 ]
  %493 = add i16 %492, -1
  %494 = load ptr, ptr %1, align 64
  %495 = call ptr @virtqueue_get_buf(ptr noundef %494, ptr noundef nonnull %14) #20
  %496 = icmp eq ptr %495, null
  br i1 %496, label %534, label %497, !prof !19

497:                                              ; preds = %491
  %498 = load i32, ptr %14, align 4
  %499 = zext i32 %498 to i64
  %500 = load i64, ptr %121, align 8
  %501 = add i64 %500, %499
  store i64 %501, ptr %121, align 8
  %502 = load ptr, ptr @mem_map, align 4
  %503 = ptrtoint ptr %495 to i32
  %504 = add i32 %503, 1073741824
  %505 = lshr i32 %504, 12
  %506 = getelementptr %struct.page, ptr %502, i32 %505, i32 1
  %507 = load volatile i32, ptr %506, align 4
  %508 = and i32 %507, 1
  %509 = icmp eq i32 %508, 0
  br i1 %509, label %512, label %510, !prof !11

510:                                              ; preds = %497
  %511 = add i32 %507, -1
  br label %515

512:                                              ; preds = %497
  %513 = getelementptr %struct.page, ptr %502, i32 %505
  %514 = ptrtoint ptr %513 to i32
  br label %515

515:                                              ; preds = %512, %510
  %516 = phi i32 [ %511, %510 ], [ %514, %512 ]
  %517 = inttoptr i32 %516 to ptr
  %518 = getelementptr inbounds %struct.page, ptr %517, i32 0, i32 1
  %519 = load volatile i32, ptr %518, align 4
  %520 = and i32 %519, 1
  %521 = icmp eq i32 %520, 0
  br i1 %521, label %525, label %522, !prof !11

522:                                              ; preds = %515
  %523 = add i32 %519, -1
  %524 = inttoptr i32 %523 to ptr
  br label %525

525:                                              ; preds = %522, %515
  %526 = phi ptr [ %517, %515 ], [ %524, %522 ]
  %527 = getelementptr inbounds %struct.page, ptr %526, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !13
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %527) #20, !srcloc !14
  %528 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %527, ptr %527, i32 1, ptr elementtype(i32) %527) #20, !srcloc !15
  %529 = extractvalue { i32, i32 } %528, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !16
  %530 = icmp eq i32 %529, 0
  br i1 %530, label %531, label %532

531:                                              ; preds = %525
  call void @__put_page(ptr noundef %526) #20
  br label %532

532:                                              ; preds = %531, %525
  %533 = icmp ugt i16 %493, 1
  br i1 %533, label %491, label %539

534:                                              ; preds = %491, %329
  %535 = phi ptr [ %470, %491 ], [ %319, %329 ]
  %536 = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 36, i32 10
  %537 = load i32, ptr %536, align 8
  %538 = add i32 %537, 1
  store i32 %538, ptr %536, align 8
  br label %539

539:                                              ; preds = %534, %532, %488
  %540 = phi ptr [ %470, %488 ], [ %535, %534 ], [ %470, %532 ]
  %541 = getelementptr inbounds %struct.virtnet_rq_stats, ptr %6, i32 0, i32 3
  %542 = load i64, ptr %541, align 8
  %543 = add i64 %542, 1
  store i64 %543, ptr %541, align 8
  call void @consume_skb(ptr noundef %540) #20
  br label %843

544:                                              ; preds = %88
  %545 = getelementptr inbounds %struct.virtnet_info, ptr %0, i32 0, i32 10
  %546 = load i8, ptr %545, align 1, !range !9
  %547 = icmp eq i8 %546, 0
  br i1 %547, label %579, label %548

548:                                              ; preds = %544
  %549 = tail call fastcc ptr @page_to_skb(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 0, i32 noundef %3, i32 noundef 4096, i1 noundef zeroext true, i32 noundef 0, i32 noundef 0) #20
  %550 = load i8, ptr %20, align 1
  %551 = zext i8 %550 to i32
  %552 = sub i32 %3, %551
  %553 = zext i32 %552 to i64
  %554 = getelementptr inbounds %struct.virtnet_rq_stats, ptr %6, i32 0, i32 2
  %555 = load i64, ptr %554, align 8
  %556 = add i64 %555, %553
  store i64 %556, ptr %554, align 8
  %557 = icmp eq ptr %549, null
  br i1 %557, label %558, label %847, !prof !19

558:                                              ; preds = %548
  %559 = getelementptr inbounds %struct.virtnet_rq_stats, ptr %6, i32 0, i32 3
  %560 = load i64, ptr %559, align 8
  %561 = add i64 %560, 1
  store i64 %561, ptr %559, align 8
  %562 = getelementptr inbounds %struct.page, ptr %2, i32 0, i32 1, i32 0, i32 3
  %563 = load i32, ptr %562, align 4
  %564 = icmp eq i32 %563, 0
  br i1 %564, label %573, label %565

565:                                              ; preds = %565, %558
  %566 = phi i32 [ %569, %565 ], [ %563, %558 ]
  %567 = inttoptr i32 %566 to ptr
  %568 = getelementptr inbounds %struct.page, ptr %567, i32 0, i32 1, i32 0, i32 3
  %569 = load i32, ptr %568, align 4
  %570 = icmp eq i32 %569, 0
  br i1 %570, label %571, label %565

571:                                              ; preds = %565
  %572 = inttoptr i32 %566 to ptr
  br label %573

573:                                              ; preds = %571, %558
  %574 = phi ptr [ %2, %558 ], [ %572, %571 ]
  %575 = getelementptr inbounds %struct.page, ptr %574, i32 0, i32 1, i32 0, i32 3
  %576 = getelementptr inbounds %struct.receive_queue, ptr %1, i32 0, i32 4
  %577 = load ptr, ptr %576, align 16
  %578 = ptrtoint ptr %577 to i32
  store i32 %578, ptr %575, align 4
  store ptr %2, ptr %576, align 16
  br label %1087

579:                                              ; preds = %544
  %580 = ptrtoint ptr %4 to i32
  %581 = add i32 %580, 66
  %582 = add i32 %581, %22
  %583 = add i32 %582, 1837
  %584 = and i32 %583, -64
  %585 = load ptr, ptr @mem_map, align 4
  %586 = ptrtoint ptr %2 to i32
  %587 = add i32 %586, 1073741824
  %588 = lshr i32 %587, 12
  %589 = getelementptr %struct.page, ptr %585, i32 %588, i32 1
  %590 = load volatile i32, ptr %589, align 4
  %591 = and i32 %590, 1
  %592 = icmp eq i32 %591, 0
  br i1 %592, label %595, label %593, !prof !11

593:                                              ; preds = %579
  %594 = add i32 %590, -1
  br label %598

595:                                              ; preds = %579
  %596 = getelementptr %struct.page, ptr %585, i32 %588
  %597 = ptrtoint ptr %596 to i32
  br label %598

598:                                              ; preds = %595, %593
  %599 = phi i32 [ %594, %593 ], [ %597, %595 ]
  %600 = inttoptr i32 %599 to ptr
  %601 = sub i32 %3, %22
  %602 = zext i32 %601 to i64
  %603 = getelementptr inbounds %struct.virtnet_rq_stats, ptr %6, i32 0, i32 2
  %604 = load i64, ptr %603, align 8
  %605 = add i64 %604, %602
  store i64 %605, ptr %603, align 8
  %606 = icmp ugt i32 %601, 1518
  br i1 %606, label %607, label %611, !prof !19

607:                                              ; preds = %598
  %608 = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 36, i32 10
  %609 = load i32, ptr %608, align 8
  %610 = add i32 %609, 1
  store i32 %610, ptr %608, align 8
  br label %822

611:                                              ; preds = %598
  %612 = getelementptr inbounds %struct.virtnet_info, ptr %0, i32 0, i32 9
  %613 = load i8, ptr %612, align 2, !range !9
  %614 = icmp eq i8 %613, 0
  br i1 %614, label %783, label %615, !prof !11

615:                                              ; preds = %611
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !44
  %616 = getelementptr inbounds %struct.receive_queue, ptr %1, i32 0, i32 2
  %617 = load volatile ptr, ptr %616, align 32
  %618 = icmp eq ptr %617, null
  br i1 %618, label %774, label %619

619:                                              ; preds = %615
  %620 = getelementptr i8, ptr %2, i32 %581
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %10) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %10, i8 0, i32 28, i1 false) #20, !annotation !10
  %621 = getelementptr inbounds %struct.virtio_net_hdr, ptr %620, i32 0, i32 1
  %622 = load i8, ptr %621, align 1
  %623 = icmp eq i8 %622, 0
  br i1 %623, label %624, label %817, !prof !11

624:                                              ; preds = %619
  %625 = load i8, ptr %612, align 2, !range !9
  %626 = icmp eq i8 %625, 0
  %627 = select i1 %626, i32 0, i32 256
  %628 = icmp ugt i32 %627, %580
  br i1 %628, label %629, label %649, !prof !19

629:                                              ; preds = %624
  %630 = tail call ptr @page_address(ptr noundef %600) #20
  %631 = ptrtoint ptr %630 to i32
  %632 = add i32 %581, %586
  %633 = sub i32 %632, %631
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #20
  %634 = load i8, ptr %20, align 1
  %635 = zext i8 %634 to i32
  %636 = add nuw nsw i32 %601, %635
  store i32 %636, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #20
  store i16 1, ptr %12, align 2
  %637 = load i8, ptr %612, align 2, !range !9
  %638 = icmp eq i8 %637, 0
  %639 = select i1 %638, i32 0, i32 256
  %640 = or i32 %639, 66
  %641 = call fastcc ptr @xdp_linearize_page(ptr noundef %1, ptr noundef nonnull %12, ptr noundef %600, i32 noundef %633, i32 noundef %640, ptr noundef nonnull %11) #20
  %642 = icmp eq ptr %641, null
  br i1 %642, label %643, label %644

643:                                              ; preds = %629
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #20
  br label %817

644:                                              ; preds = %629
  %645 = add nuw nsw i32 %640, %635
  %646 = add nuw nsw i32 %645, 1837
  %647 = and i32 %646, 4032
  %648 = tail call ptr @page_address(ptr noundef nonnull %641) #20
  tail call fastcc void @put_page(ptr noundef %600) #20
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #20
  br label %649

649:                                              ; preds = %644, %624
  %650 = phi i32 [ %640, %644 ], [ %581, %624 ]
  %651 = phi i32 [ %645, %644 ], [ %582, %624 ]
  %652 = phi i32 [ %647, %644 ], [ %584, %624 ]
  %653 = phi ptr [ %641, %644 ], [ %600, %624 ]
  %654 = phi i32 [ %639, %644 ], [ %580, %624 ]
  %655 = phi ptr [ %648, %644 ], [ %2, %624 ]
  %656 = getelementptr inbounds %struct.receive_queue, ptr %1, i32 0, i32 11
  %657 = getelementptr inbounds %struct.xdp_buff, ptr %10, i32 0, i32 6
  store i32 %652, ptr %657, align 4
  %658 = getelementptr inbounds %struct.xdp_buff, ptr %10, i32 0, i32 4
  store ptr %656, ptr %658, align 4
  %659 = getelementptr i8, ptr %655, i32 66
  %660 = load i8, ptr %20, align 1
  %661 = zext i8 %660 to i32
  %662 = getelementptr i8, ptr %659, i32 %661
  %663 = getelementptr i8, ptr %662, i32 %654
  %664 = getelementptr inbounds %struct.xdp_buff, ptr %10, i32 0, i32 3
  store ptr %662, ptr %664, align 4
  store ptr %663, ptr %10, align 4
  %665 = getelementptr i8, ptr %663, i32 %601
  %666 = getelementptr inbounds %struct.xdp_buff, ptr %10, i32 0, i32 1
  store ptr %665, ptr %666, align 4
  %667 = getelementptr inbounds %struct.xdp_buff, ptr %10, i32 0, i32 2
  store ptr %663, ptr %667, align 4
  %668 = load volatile i32, ptr @bpf_stats_enabled_key, align 4
  %669 = icmp sgt i32 %668, 0
  br i1 %669, label %670, label %698, !prof !19

670:                                              ; preds = %649
  %671 = tail call i64 @sched_clock() #20
  %672 = getelementptr inbounds %struct.bpf_prog, ptr %617, i32 1
  %673 = getelementptr inbounds %struct.bpf_prog, ptr %617, i32 0, i32 9
  %674 = load ptr, ptr %673, align 4
  %675 = call i32 %674(ptr noundef nonnull %10, ptr noundef %672) #20
  %676 = getelementptr inbounds %struct.bpf_prog, ptr %617, i32 0, i32 7
  %677 = load ptr, ptr %676, align 4
  %678 = ptrtoint ptr %677 to i32
  %679 = call i32 @llvm.read_register.i32(metadata !0) #20
  %680 = inttoptr i32 %679 to ptr
  %681 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %680) #10, !srcloc !18
  %682 = add i32 %681, %678
  %683 = inttoptr i32 %682 to ptr
  %684 = getelementptr inbounds %struct.bpf_prog_stats, ptr %683, i32 0, i32 3
  %685 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #20, !srcloc !39
  %686 = load i32, ptr %684, align 4
  %687 = add i32 %686, 1
  store i32 %687, ptr %684, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #20, !srcloc !23
  %688 = load i64, ptr %683, align 8
  %689 = add i64 %688, 1
  store i64 %689, ptr %683, align 8
  %690 = getelementptr inbounds %struct.bpf_prog_stats, ptr %683, i32 0, i32 1
  %691 = call i64 @sched_clock() #20
  %692 = sub i64 %691, %671
  %693 = and i64 %692, 4294967295
  %694 = load i64, ptr %690, align 8
  %695 = add i64 %693, %694
  store i64 %695, ptr %690, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #20, !srcloc !24
  %696 = load i32, ptr %684, align 4
  %697 = add i32 %696, 1
  store i32 %697, ptr %684, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %685) #20, !srcloc !40
  br label %703

698:                                              ; preds = %649
  %699 = getelementptr inbounds %struct.bpf_prog, ptr %617, i32 1
  %700 = getelementptr inbounds %struct.bpf_prog, ptr %617, i32 0, i32 9
  %701 = load ptr, ptr %700, align 4
  %702 = call i32 %701(ptr noundef nonnull %10, ptr noundef %699) #20
  br label %703

703:                                              ; preds = %698, %670
  %704 = phi i32 [ %675, %670 ], [ %702, %698 ]
  %705 = load volatile i32, ptr @bpf_master_redirect_enabled_key, align 4
  %706 = icmp sgt i32 %705, 0
  br i1 %706, label %707, label %727, !prof !19

707:                                              ; preds = %703
  %708 = icmp eq i32 %704, 3
  br i1 %708, label %709, label %727

709:                                              ; preds = %707
  %710 = load ptr, ptr %658, align 4
  %711 = load ptr, ptr %710, align 64
  %712 = getelementptr inbounds %struct.net_device, ptr %711, i32 0, i32 14
  %713 = load i32, ptr %712, align 8
  %714 = and i32 %713, 2048
  %715 = icmp eq i32 %714, 0
  br i1 %715, label %723, label %716

716:                                              ; preds = %709
  %717 = getelementptr inbounds %struct.net_device, ptr %711, i32 0, i32 15
  %718 = load i64, ptr %717, align 16
  %719 = and i64 %718, 4
  %720 = icmp eq i64 %719, 0
  br i1 %720, label %723, label %721

721:                                              ; preds = %716
  %722 = call i32 @xdp_master_redirect(ptr noundef nonnull %10) #20
  br label %727

723:                                              ; preds = %716, %709
  %724 = getelementptr inbounds %struct.virtnet_rq_stats, ptr %6, i32 0, i32 4
  %725 = load i64, ptr %724, align 8
  %726 = add i64 %725, 1
  store i64 %726, ptr %724, align 8
  br label %732

727:                                              ; preds = %721, %707, %703
  %728 = phi i32 [ %722, %721 ], [ %704, %707 ], [ %704, %703 ]
  %729 = getelementptr inbounds %struct.virtnet_rq_stats, ptr %6, i32 0, i32 4
  %730 = load i64, ptr %729, align 8
  %731 = add i64 %730, 1
  store i64 %731, ptr %729, align 8
  switch i32 %728, label %758 [
    i32 2, label %763
    i32 3, label %732
    i32 4, label %749
    i32 0, label %760
    i32 1, label %817
  ]

732:                                              ; preds = %727, %723
  %733 = getelementptr inbounds %struct.virtnet_rq_stats, ptr %6, i32 0, i32 5
  %734 = load i64, ptr %733, align 8
  %735 = add i64 %734, 1
  store i64 %735, ptr %733, align 8
  %736 = call fastcc ptr @xdp_convert_buff_to_frame(ptr noundef nonnull %10) #20
  store ptr %736, ptr %9, align 4
  %737 = icmp eq ptr %736, null
  br i1 %737, label %817, label %738, !prof !19

738:                                              ; preds = %732
  %739 = call i32 @virtnet_xdp_xmit(ptr noundef %19, i32 noundef 1, ptr noundef nonnull %9, i32 noundef 0) #20
  %740 = icmp eq i32 %739, 0
  br i1 %740, label %741, label %742, !prof !19

741:                                              ; preds = %738
  call void @xdp_return_frame_rx_napi(ptr noundef nonnull %736) #20
  br label %746

742:                                              ; preds = %738
  %743 = icmp slt i32 %739, 0
  br i1 %743, label %744, label %746, !prof !19

744:                                              ; preds = %742
  %745 = load ptr, ptr %18, align 4
  call fastcc void @trace_xdp_exception(ptr noundef %745, ptr noundef nonnull %617, i32 noundef 3) #20
  br label %817

746:                                              ; preds = %742, %741
  %747 = load i32, ptr %5, align 4
  %748 = or i32 %747, 1
  store i32 %748, ptr %5, align 4
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !45
  br label %762

749:                                              ; preds = %727
  %750 = getelementptr inbounds %struct.virtnet_rq_stats, ptr %6, i32 0, i32 6
  %751 = load i64, ptr %750, align 8
  %752 = add i64 %751, 1
  store i64 %752, ptr %750, align 8
  %753 = call i32 @xdp_do_redirect(ptr noundef %19, ptr noundef nonnull %10, ptr noundef nonnull %617) #20
  %754 = icmp eq i32 %753, 0
  br i1 %754, label %755, label %817

755:                                              ; preds = %749
  %756 = load i32, ptr %5, align 4
  %757 = or i32 %756, 2
  store i32 %757, ptr %5, align 4
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !45
  br label %762

758:                                              ; preds = %727
  %759 = load ptr, ptr %18, align 4
  call void @bpf_warn_invalid_xdp_action(ptr noundef %759, ptr noundef nonnull %617, i32 noundef %728) #20
  br label %760

760:                                              ; preds = %758, %727
  %761 = load ptr, ptr %18, align 4
  call fastcc void @trace_xdp_exception(ptr noundef %761, ptr noundef nonnull %617, i32 noundef %728) #20
  br label %817

762:                                              ; preds = %755, %746
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #20
  br label %1087

763:                                              ; preds = %727
  %764 = load ptr, ptr %10, align 4
  %765 = ptrtoint ptr %663 to i32
  %766 = ptrtoint ptr %764 to i32
  %767 = sub i32 %766, %765
  %768 = load ptr, ptr %666, align 4
  %769 = ptrtoint ptr %768 to i32
  %770 = sub i32 %769, %766
  %771 = load ptr, ptr %667, align 4
  %772 = ptrtoint ptr %771 to i32
  %773 = sub i32 %766, %772
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #20
  br label %774

774:                                              ; preds = %763, %615
  %775 = phi i32 [ %650, %763 ], [ %581, %615 ]
  %776 = phi i32 [ %651, %763 ], [ %582, %615 ]
  %777 = phi i32 [ %652, %763 ], [ %584, %615 ]
  %778 = phi ptr [ %653, %763 ], [ %600, %615 ]
  %779 = phi i32 [ %767, %763 ], [ 0, %615 ]
  %780 = phi i32 [ %773, %763 ], [ 0, %615 ]
  %781 = phi i32 [ %770, %763 ], [ %601, %615 ]
  %782 = phi ptr [ %655, %763 ], [ %2, %615 ]
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !45
  br label %783

783:                                              ; preds = %774, %611
  %784 = phi i32 [ %775, %774 ], [ %581, %611 ]
  %785 = phi i32 [ %776, %774 ], [ %582, %611 ]
  %786 = phi i32 [ %777, %774 ], [ %584, %611 ]
  %787 = phi ptr [ %778, %774 ], [ %600, %611 ]
  %788 = phi i32 [ %779, %774 ], [ 0, %611 ]
  %789 = phi i32 [ %780, %774 ], [ 0, %611 ]
  %790 = phi ptr [ %617, %774 ], [ null, %611 ]
  %791 = phi i32 [ %781, %774 ], [ %601, %611 ]
  %792 = phi ptr [ %782, %774 ], [ %2, %611 ]
  %793 = call ptr @build_skb(ptr noundef %792, i32 noundef %786) #20
  %794 = icmp eq ptr %793, null
  br i1 %794, label %822, label %795

795:                                              ; preds = %783
  %796 = add i32 %788, %785
  %797 = getelementptr inbounds %struct.sk_buff, ptr %793, i32 0, i32 17
  %798 = load ptr, ptr %797, align 4
  %799 = getelementptr i8, ptr %798, i32 %796
  store ptr %799, ptr %797, align 4
  %800 = getelementptr inbounds %struct.sk_buff, ptr %793, i32 0, i32 14
  %801 = load ptr, ptr %800, align 8
  %802 = getelementptr i8, ptr %801, i32 %796
  store ptr %802, ptr %800, align 8
  %803 = call ptr @skb_put(ptr noundef nonnull %793, i32 noundef %791) #20
  %804 = icmp eq ptr %790, null
  br i1 %804, label %805, label %810

805:                                              ; preds = %795
  %806 = getelementptr i8, ptr %792, i32 %784
  %807 = getelementptr inbounds %struct.sk_buff, ptr %793, i32 0, i32 3
  %808 = load i8, ptr %20, align 1
  %809 = zext i8 %808 to i32
  call void @llvm.memcpy.p0.p0.i32(ptr align 2 %807, ptr align 1 %806, i32 %809, i1 false) #20
  br label %810

810:                                              ; preds = %805, %795
  %811 = icmp eq i32 %789, 0
  br i1 %811, label %847, label %812

812:                                              ; preds = %810
  %813 = trunc i32 %789 to i8
  %814 = getelementptr inbounds %struct.sk_buff, ptr %793, i32 0, i32 15
  %815 = load ptr, ptr %814, align 4
  %816 = getelementptr inbounds %struct.skb_shared_info, ptr %815, i32 0, i32 1
  store i8 %813, ptr %816, align 1
  br label %847

817:                                              ; preds = %760, %749, %744, %732, %727, %643, %619
  %818 = phi ptr [ %600, %643 ], [ %653, %727 ], [ %653, %749 ], [ %653, %732 ], [ %600, %619 ], [ %653, %744 ], [ %653, %760 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #20
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !45
  %819 = getelementptr inbounds %struct.virtnet_rq_stats, ptr %6, i32 0, i32 7
  %820 = load i64, ptr %819, align 8
  %821 = add i64 %820, 1
  store i64 %821, ptr %819, align 8
  br label %822

822:                                              ; preds = %817, %783, %607
  %823 = phi ptr [ %600, %607 ], [ %787, %783 ], [ %818, %817 ]
  %824 = getelementptr inbounds %struct.virtnet_rq_stats, ptr %6, i32 0, i32 3
  %825 = load i64, ptr %824, align 8
  %826 = add i64 %825, 1
  store i64 %826, ptr %824, align 8
  %827 = getelementptr inbounds %struct.page, ptr %823, i32 0, i32 1
  %828 = load volatile i32, ptr %827, align 4
  %829 = and i32 %828, 1
  %830 = icmp eq i32 %829, 0
  br i1 %830, label %833, label %831, !prof !11

831:                                              ; preds = %822
  %832 = add i32 %828, -1
  br label %835

833:                                              ; preds = %822
  %834 = ptrtoint ptr %823 to i32
  br label %835

835:                                              ; preds = %833, %831
  %836 = phi i32 [ %832, %831 ], [ %834, %833 ]
  %837 = inttoptr i32 %836 to ptr
  %838 = getelementptr inbounds %struct.page, ptr %837, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !13
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %838) #20, !srcloc !14
  %839 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %838, ptr %838, i32 1, ptr elementtype(i32) %838) #20, !srcloc !15
  %840 = extractvalue { i32, i32 } %839, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !16
  %841 = icmp eq i32 %840, 0
  br i1 %841, label %842, label %1087

842:                                              ; preds = %835
  call void @__put_page(ptr noundef %837) #20
  br label %1087

843:                                              ; preds = %539, %308
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %15) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14)
  br label %1087

844:                                              ; preds = %453, %261
  %845 = phi ptr [ %319, %453 ], [ %263, %261 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %15) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14)
  %846 = icmp eq ptr %845, null
  br i1 %846, label %1087, label %847, !prof !19

847:                                              ; preds = %844, %812, %810, %548
  %848 = phi ptr [ %845, %844 ], [ %793, %810 ], [ %793, %812 ], [ %549, %548 ]
  %849 = getelementptr inbounds %struct.sk_buff, ptr %848, i32 0, i32 3
  %850 = load i8, ptr %849, align 2
  %851 = and i8 %850, 2
  %852 = icmp eq i8 %851, 0
  br i1 %852, label %858, label %853

853:                                              ; preds = %847
  %854 = getelementptr inbounds %struct.sk_buff, ptr %848, i32 0, i32 13
  %855 = load i16, ptr %854, align 8
  %856 = and i16 %855, -97
  %857 = or i16 %856, 32
  store i16 %857, ptr %854, align 8
  br label %858

858:                                              ; preds = %853, %847
  %859 = getelementptr inbounds %struct.sk_buff, ptr %848, i32 0, i32 3, i32 1
  %860 = load i8, ptr %859, align 1
  %861 = icmp eq i8 %860, 0
  br i1 %861, label %877, label %862

862:                                              ; preds = %858
  %863 = and i8 %860, 127
  %864 = zext i8 %863 to i32
  switch i32 %864, label %1061 [
    i32 1, label %867
    i32 4, label %865
    i32 3, label %866
  ]

865:                                              ; preds = %862
  br label %867

866:                                              ; preds = %862
  br label %867

867:                                              ; preds = %866, %865, %862
  %868 = phi i32 [ 17, %866 ], [ 6, %865 ], [ 6, %862 ]
  %869 = phi i32 [ 8, %866 ], [ 20, %865 ], [ 20, %862 ]
  %870 = phi i32 [ 65536, %866 ], [ 16, %865 ], [ %864, %862 ]
  %871 = or i32 %870, 4
  %872 = icmp slt i8 %860, 0
  %873 = select i1 %872, i32 %871, i32 %870
  %874 = getelementptr inbounds %struct.sk_buff, ptr %848, i32 0, i32 3, i32 4
  %875 = load i16, ptr %874, align 2
  %876 = icmp eq i16 %875, 0
  br i1 %876, label %1061, label %877

877:                                              ; preds = %867, %858
  %878 = phi i32 [ %868, %867 ], [ 0, %858 ]
  %879 = phi i32 [ %869, %867 ], [ 0, %858 ]
  %880 = phi i32 [ %873, %867 ], [ 0, %858 ]
  %881 = getelementptr inbounds %struct.sk_buff, ptr %848, i32 0, i32 17
  %882 = load ptr, ptr %881, align 4
  %883 = getelementptr inbounds %struct.sk_buff, ptr %848, i32 0, i32 16
  %884 = load ptr, ptr %883, align 8
  %885 = ptrtoint ptr %882 to i32
  %886 = ptrtoint ptr %884 to i32
  %887 = sub i32 %885, %886
  %888 = trunc i32 %887 to i16
  %889 = getelementptr inbounds %struct.sk_buff, ptr %848, i32 0, i32 13, i32 0, i32 19
  store i16 %888, ptr %889, align 2
  %890 = and i8 %850, 1
  %891 = icmp eq i8 %890, 0
  br i1 %891, label %937, label %892

892:                                              ; preds = %877
  %893 = getelementptr inbounds %struct.sk_buff, ptr %848, i32 0, i32 3, i32 6
  %894 = load i16, ptr %893, align 2
  %895 = zext i16 %894 to i32
  %896 = getelementptr inbounds %struct.sk_buff, ptr %848, i32 0, i32 3, i32 8
  %897 = load i16, ptr %896, align 2
  %898 = zext i16 %897 to i32
  %899 = add nuw nsw i32 %898, 2
  %900 = call i32 @llvm.umax.i32(i32 %879, i32 %899) #20
  %901 = add nuw nsw i32 %900, %895
  %902 = getelementptr inbounds %struct.sk_buff, ptr %848, i32 0, i32 5
  %903 = load i32, ptr %902, align 8
  %904 = getelementptr inbounds %struct.sk_buff, ptr %848, i32 0, i32 6
  %905 = load i32, ptr %904, align 4
  %906 = sub i32 %903, %905
  %907 = icmp ugt i32 %901, %906
  br i1 %907, label %908, label %914, !prof !19

908:                                              ; preds = %892
  %909 = icmp ult i32 %903, %901
  br i1 %909, label %1061, label %910, !prof !19

910:                                              ; preds = %908
  %911 = sub i32 %901, %906
  %912 = call ptr @__pskb_pull_tail(ptr noundef nonnull %848, i32 noundef %911) #20
  %913 = icmp eq ptr %912, null
  br i1 %913, label %1061, label %914

914:                                              ; preds = %910, %892
  %915 = call zeroext i1 @skb_partial_csum_set(ptr noundef nonnull %848, i16 noundef zeroext %894, i16 noundef zeroext %897) #20
  br i1 %915, label %916, label %1061

916:                                              ; preds = %914
  %917 = load ptr, ptr %883, align 8
  %918 = getelementptr inbounds %struct.sk_buff, ptr %848, i32 0, i32 13, i32 0, i32 17
  %919 = load i16, ptr %918, align 2
  %920 = zext i16 %919 to i32
  %921 = getelementptr i8, ptr %917, i32 %920
  %922 = load ptr, ptr %881, align 4
  %923 = ptrtoint ptr %921 to i32
  %924 = ptrtoint ptr %922 to i32
  %925 = sub i32 %923, %924
  %926 = add i32 %925, %879
  %927 = load i32, ptr %902, align 8
  %928 = load i32, ptr %904, align 4
  %929 = sub i32 %927, %928
  %930 = icmp ugt i32 %926, %929
  br i1 %930, label %931, label %1038, !prof !19

931:                                              ; preds = %916
  %932 = icmp ult i32 %927, %926
  br i1 %932, label %1061, label %933, !prof !19

933:                                              ; preds = %931
  %934 = sub i32 %926, %929
  %935 = call ptr @__pskb_pull_tail(ptr noundef nonnull %848, i32 noundef %934) #20
  %936 = icmp eq ptr %935, null
  br i1 %936, label %1061, label %1038

937:                                              ; preds = %877
  %938 = icmp eq i32 %880, 0
  br i1 %938, label %1038, label %939

939:                                              ; preds = %937
  %940 = getelementptr inbounds %struct.sk_buff, ptr %848, i32 0, i32 13, i32 0, i32 18
  %941 = load i16, ptr %940, align 4
  %942 = icmp eq i16 %941, 0
  br i1 %942, label %1025, label %943

943:                                              ; preds = %939
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #20
  %944 = getelementptr inbounds %struct.sk_buff, ptr %848, i32 0, i32 13, i32 0, i32 16
  %945 = load i16, ptr %944, align 8
  %946 = icmp eq i16 %945, 0
  br i1 %946, label %947, label %981

947:                                              ; preds = %943
  %948 = getelementptr inbounds %struct.anon.49, ptr %848, i32 0, i32 2
  %949 = load ptr, ptr %948, align 8
  %950 = getelementptr inbounds %struct.net_device, ptr %949, i32 0, i32 44
  %951 = load ptr, ptr %950, align 16
  %952 = icmp eq ptr %951, null
  br i1 %952, label %965, label %953

953:                                              ; preds = %947
  %954 = getelementptr inbounds %struct.header_ops, ptr %951, i32 0, i32 5
  %955 = load ptr, ptr %954, align 4
  %956 = icmp eq ptr %955, null
  br i1 %956, label %965, label %957

957:                                              ; preds = %953
  %958 = call zeroext i16 %955(ptr noundef nonnull %848) #20
  %959 = icmp eq i16 %958, 0
  br i1 %959, label %960, label %970

960:                                              ; preds = %957
  %961 = load i16, ptr %944, align 8
  %962 = icmp eq i16 %961, 0
  br i1 %962, label %963, label %981

963:                                              ; preds = %960
  %964 = load i8, ptr %859, align 1
  br label %965

965:                                              ; preds = %963, %953, %947
  %966 = phi i8 [ %964, %963 ], [ %860, %953 ], [ %860, %947 ]
  %967 = and i8 %966, 127
  %968 = zext i8 %967 to i32
  switch i32 %968, label %981 [
    i32 1, label %979
    i32 3, label %979
    i32 4, label %969
  ]

969:                                              ; preds = %965
  br label %979

970:                                              ; preds = %957
  %971 = load i8, ptr %859, align 1
  %972 = and i8 %971, 127
  %973 = zext i8 %972 to i32
  switch i32 %973, label %1014 [
    i32 1, label %977
    i32 4, label %974
    i32 3, label %976
  ]

974:                                              ; preds = %970
  %975 = icmp eq i16 %958, -8826
  br i1 %975, label %979, label %1014

976:                                              ; preds = %970
  switch i16 %958, label %1014 [
    i16 -8826, label %979
    i16 8, label %979
  ]

977:                                              ; preds = %970
  %978 = icmp eq i16 %958, 8
  br i1 %978, label %979, label %1014

979:                                              ; preds = %977, %976, %976, %974, %969, %965, %965
  %980 = phi i16 [ -8826, %969 ], [ 8, %965 ], [ 8, %965 ], [ %958, %976 ], [ %958, %976 ], [ -8826, %974 ], [ 8, %977 ]
  store i16 %980, ptr %944, align 8
  br label %981

981:                                              ; preds = %979, %965, %960, %943
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %8, i8 0, i32 12, i1 false) #20
  %982 = call zeroext i1 @__skb_flow_dissect(ptr noundef null, ptr noundef nonnull %848, ptr noundef nonnull @flow_keys_basic_dissector, ptr noundef nonnull %8, ptr noundef null, i16 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #20
  br i1 %982, label %991, label %983

983:                                              ; preds = %981
  %984 = and i32 %880, 65536
  %985 = icmp eq i32 %984, 0
  br i1 %985, label %1014, label %986

986:                                              ; preds = %989, %983
  %987 = load i16, ptr %944, align 8
  %988 = icmp eq i16 %987, 8
  br i1 %988, label %989, label %1014

989:                                              ; preds = %986
  store i16 -8826, ptr %944, align 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %8, i8 0, i32 12, i1 false) #20
  %990 = call zeroext i1 @__skb_flow_dissect(ptr noundef null, ptr noundef %848, ptr noundef nonnull @flow_keys_basic_dissector, ptr noundef nonnull %8, ptr noundef null, i16 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #20
  br i1 %990, label %991, label %986

991:                                              ; preds = %989, %981
  %992 = load i16, ptr %8, align 4
  %993 = zext i16 %992 to i32
  %994 = add nsw i32 %879, %993
  %995 = getelementptr inbounds %struct.sk_buff, ptr %848, i32 0, i32 5
  %996 = load i32, ptr %995, align 8
  %997 = getelementptr inbounds %struct.sk_buff, ptr %848, i32 0, i32 6
  %998 = load i32, ptr %997, align 4
  %999 = sub i32 %996, %998
  %1000 = icmp ugt i32 %994, %999
  br i1 %1000, label %1001, label %1007, !prof !19

1001:                                             ; preds = %991
  %1002 = icmp ult i32 %996, %994
  br i1 %1002, label %1014, label %1003, !prof !19

1003:                                             ; preds = %1001
  %1004 = sub i32 %994, %999
  %1005 = call ptr @__pskb_pull_tail(ptr noundef %848, i32 noundef %1004) #20
  %1006 = icmp ne ptr %1005, null
  br label %1007

1007:                                             ; preds = %1003, %991
  %1008 = phi i1 [ %1006, %1003 ], [ true, %991 ]
  %1009 = getelementptr inbounds %struct.flow_keys_basic, ptr %8, i32 0, i32 1, i32 1
  %1010 = load i8, ptr %1009, align 2
  %1011 = zext i8 %1010 to i32
  %1012 = icmp eq i32 %878, %1011
  %1013 = select i1 %1008, i1 %1012, i1 false
  br i1 %1013, label %1015, label %1014

1014:                                             ; preds = %1007, %1001, %986, %983, %977, %976, %974, %970
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #20
  br label %1061

1015:                                             ; preds = %1007
  %1016 = load i16, ptr %8, align 4
  %1017 = load ptr, ptr %881, align 4
  %1018 = load ptr, ptr %883, align 8
  %1019 = ptrtoint ptr %1017 to i32
  %1020 = ptrtoint ptr %1018 to i32
  %1021 = sub i32 %1019, %1020
  %1022 = trunc i32 %1021 to i16
  %1023 = getelementptr inbounds %struct.sk_buff, ptr %848, i32 0, i32 13, i32 0, i32 17
  %1024 = add i16 %1016, %1022
  store i16 %1024, ptr %1023, align 2
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #20
  br label %1038

1025:                                             ; preds = %939
  %1026 = getelementptr inbounds %struct.sk_buff, ptr %848, i32 0, i32 5
  %1027 = load i32, ptr %1026, align 8
  %1028 = getelementptr inbounds %struct.sk_buff, ptr %848, i32 0, i32 6
  %1029 = load i32, ptr %1028, align 4
  %1030 = sub i32 %1027, %1029
  %1031 = icmp ugt i32 %879, %1030
  br i1 %1031, label %1032, label %1038, !prof !19

1032:                                             ; preds = %1025
  %1033 = icmp ult i32 %1027, %879
  br i1 %1033, label %1061, label %1034, !prof !19

1034:                                             ; preds = %1032
  %1035 = sub i32 %879, %1030
  %1036 = call ptr @__pskb_pull_tail(ptr noundef nonnull %848, i32 noundef %1035) #20
  %1037 = icmp eq ptr %1036, null
  br i1 %1037, label %1061, label %1038

1038:                                             ; preds = %1034, %1025, %1015, %937, %933, %916
  %1039 = phi i32 [ %926, %933 ], [ %994, %1015 ], [ %879, %1034 ], [ 0, %937 ], [ %926, %916 ], [ %879, %1025 ]
  %1040 = load i8, ptr %859, align 1
  %1041 = icmp eq i8 %1040, 0
  br i1 %1041, label %1071, label %1042

1042:                                             ; preds = %1038
  %1043 = getelementptr inbounds %struct.sk_buff, ptr %848, i32 0, i32 3, i32 4
  %1044 = load i16, ptr %1043, align 2
  %1045 = and i32 %880, 65536
  %1046 = icmp eq i32 %1045, 0
  %1047 = select i1 %1046, i32 0, i32 %879
  %1048 = sub i32 %1047, %1039
  %1049 = getelementptr inbounds %struct.sk_buff, ptr %848, i32 0, i32 5
  %1050 = load i32, ptr %1049, align 8
  %1051 = add i32 %1048, %1050
  %1052 = zext i16 %1044 to i32
  %1053 = icmp ugt i32 %1051, %1052
  br i1 %1053, label %1054, label %1071

1054:                                             ; preds = %1042
  %1055 = getelementptr inbounds %struct.sk_buff, ptr %848, i32 0, i32 15
  %1056 = load ptr, ptr %1055, align 4
  %1057 = getelementptr inbounds %struct.skb_shared_info, ptr %1056, i32 0, i32 4
  store i16 %1044, ptr %1057, align 4
  %1058 = getelementptr inbounds %struct.skb_shared_info, ptr %1056, i32 0, i32 8
  %1059 = or i32 %880, 2
  store i32 %1059, ptr %1058, align 8
  %1060 = getelementptr inbounds %struct.skb_shared_info, ptr %1056, i32 0, i32 5
  store i16 0, ptr %1060, align 2
  br label %1071

1061:                                             ; preds = %1034, %1032, %1014, %933, %931, %914, %910, %908, %867, %862
  %1062 = call i32 @net_ratelimit() #20
  %1063 = icmp eq i32 %1062, 0
  br i1 %1063, label %1083, label %1064

1064:                                             ; preds = %1061
  %1065 = load i8, ptr %859, align 1
  %1066 = zext i8 %1065 to i32
  %1067 = getelementptr inbounds %struct.sk_buff, ptr %848, i32 0, i32 3, i32 4
  %1068 = load i16, ptr %1067, align 2
  %1069 = zext i16 %1068 to i32
  %1070 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %19, i32 noundef %1066, i32 noundef %1069) #21
  br label %1083

1071:                                             ; preds = %1054, %1042, %1038
  %1072 = load ptr, ptr %1, align 64
  %1073 = getelementptr inbounds %struct.virtqueue, ptr %1072, i32 0, i32 4
  %1074 = load i32, ptr %1073, align 4
  %1075 = lshr i32 %1074, 1
  %1076 = trunc i32 %1075 to i16
  %1077 = add i16 %1076, 1
  %1078 = getelementptr inbounds %struct.sk_buff, ptr %848, i32 0, i32 9
  store i16 %1077, ptr %1078, align 4
  %1079 = call zeroext i16 @eth_type_trans(ptr noundef nonnull %848, ptr noundef %19) #20
  %1080 = getelementptr inbounds %struct.sk_buff, ptr %848, i32 0, i32 13, i32 0, i32 16
  store i16 %1079, ptr %1080, align 8
  %1081 = getelementptr inbounds %struct.receive_queue, ptr %1, i32 0, i32 1
  %1082 = call i32 @napi_gro_receive(ptr noundef %1081, ptr noundef nonnull %848) #20
  br label %1087

1083:                                             ; preds = %1064, %1061
  %1084 = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 36, i32 13
  %1085 = load i32, ptr %1084, align 4
  %1086 = add i32 %1085, 1
  store i32 %1086, ptr %1084, align 4
  call void @consume_skb(ptr noundef nonnull %848) #20
  br label %1087

1087:                                             ; preds = %1083, %1071, %844, %843, %842, %835, %762, %573, %85, %65, %46
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @napi_gro_receive(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @xdp_linearize_page(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef %5) unnamed_addr #3 {
  %7 = alloca i32, align 4
  %8 = tail call ptr @__alloc_pages(i32 noundef 2592, i32 noundef 0, i32 noundef 0, ptr noundef null) #20
  %9 = icmp eq ptr %8, null
  br i1 %9, label %96, label %10

10:                                               ; preds = %6
  %11 = tail call ptr @page_address(ptr noundef nonnull %8) #20
  %12 = getelementptr i8, ptr %11, i32 %4
  %13 = tail call ptr @page_address(ptr noundef %2) #20
  %14 = getelementptr i8, ptr %13, i32 %3
  %15 = load i32, ptr %5, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %12, ptr align 1 %14, i32 %15, i1 false)
  %16 = load i32, ptr %5, align 4
  %17 = add i32 %16, %4
  %18 = load i16, ptr %1, align 2
  %19 = add i16 %18, -1
  store i16 %19, ptr %1, align 2
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %92, label %21

21:                                               ; preds = %88, %10
  %22 = phi i32 [ %73, %88 ], [ %17, %10 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #20
  store i32 0, ptr %7, align 4, !annotation !10
  %23 = load ptr, ptr %0, align 64
  %24 = call ptr @virtqueue_get_buf(ptr noundef %23, ptr noundef nonnull %7) #20
  %25 = icmp eq ptr %24, null
  br i1 %25, label %95, label %26, !prof !19

26:                                               ; preds = %21
  %27 = load ptr, ptr @mem_map, align 4
  %28 = ptrtoint ptr %24 to i32
  %29 = add i32 %28, 1073741824
  %30 = lshr i32 %29, 12
  %31 = getelementptr %struct.page, ptr %27, i32 %30, i32 1
  %32 = load volatile i32, ptr %31, align 4
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35, !prof !11

35:                                               ; preds = %26
  %36 = add i32 %32, -1
  br label %40

37:                                               ; preds = %26
  %38 = getelementptr %struct.page, ptr %27, i32 %30
  %39 = ptrtoint ptr %38 to i32
  br label %40

40:                                               ; preds = %37, %35
  %41 = phi i32 [ %36, %35 ], [ %39, %37 ]
  %42 = inttoptr i32 %41 to ptr
  %43 = call ptr @page_address(ptr noundef %42) #20
  %44 = load i32, ptr %7, align 4
  %45 = add i32 %22, -3841
  %46 = add i32 %45, %44
  %47 = icmp ult i32 %46, -4097
  br i1 %47, label %48, label %64

48:                                               ; preds = %40
  %49 = inttoptr i32 %41 to ptr
  %50 = getelementptr inbounds %struct.page, ptr %49, i32 0, i32 1
  %51 = load volatile i32, ptr %50, align 4
  %52 = and i32 %51, 1
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %57, label %54, !prof !11

54:                                               ; preds = %48
  %55 = add i32 %51, -1
  %56 = inttoptr i32 %55 to ptr
  br label %57

57:                                               ; preds = %54, %48
  %58 = phi ptr [ %49, %48 ], [ %56, %54 ]
  %59 = getelementptr inbounds %struct.page, ptr %58, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !13
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %59) #20, !srcloc !14
  %60 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %59, ptr %59, i32 1, ptr elementtype(i32) %59) #20, !srcloc !15
  %61 = extractvalue { i32, i32 } %60, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !16
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %95

63:                                               ; preds = %57
  call void @__put_page(ptr noundef %58) #20
  br label %95

64:                                               ; preds = %40
  %65 = ptrtoint ptr %43 to i32
  %66 = sub i32 %28, %65
  %67 = call ptr @page_address(ptr noundef nonnull %8) #20
  %68 = getelementptr i8, ptr %67, i32 %22
  %69 = call ptr @page_address(ptr noundef %42) #20
  %70 = getelementptr i8, ptr %69, i32 %66
  %71 = load i32, ptr %7, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %68, ptr align 1 %70, i32 %71, i1 false)
  %72 = load i32, ptr %7, align 4
  %73 = add i32 %72, %22
  %74 = getelementptr inbounds %struct.page, ptr %42, i32 0, i32 1
  %75 = load volatile i32, ptr %74, align 4
  %76 = and i32 %75, 1
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %81, label %78, !prof !11

78:                                               ; preds = %64
  %79 = add i32 %75, -1
  %80 = inttoptr i32 %79 to ptr
  br label %81

81:                                               ; preds = %78, %64
  %82 = phi ptr [ %42, %64 ], [ %80, %78 ]
  %83 = getelementptr inbounds %struct.page, ptr %82, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !13
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %83) #20, !srcloc !14
  %84 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %83, ptr %83, i32 1, ptr elementtype(i32) %83) #20, !srcloc !15
  %85 = extractvalue { i32, i32 } %84, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !16
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  call void @__put_page(ptr noundef %82) #20
  br label %88

88:                                               ; preds = %87, %81
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #20
  %89 = load i16, ptr %1, align 2
  %90 = add i16 %89, -1
  store i16 %90, ptr %1, align 2
  %91 = icmp eq i16 %90, 0
  br i1 %91, label %92, label %21

92:                                               ; preds = %88, %10
  %93 = phi i32 [ %17, %10 ], [ %73, %88 ]
  %94 = add i32 %93, -256
  store i32 %94, ptr %5, align 4
  br label %96

95:                                               ; preds = %63, %57, %21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #20
  call void @__free_pages(ptr noundef nonnull %8, i32 noundef 0) #20
  br label %96

96:                                               ; preds = %95, %92, %6
  %97 = phi ptr [ null, %95 ], [ %8, %92 ], [ null, %6 ]
  ret ptr %97
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @page_to_skb(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i1 noundef zeroext %6, i32 noundef %7, i32 noundef %8) unnamed_addr #3 {
  %10 = tail call ptr @page_address(ptr noundef %2) #20
  %11 = getelementptr i8, ptr %10, i32 %3
  %12 = getelementptr inbounds %struct.virtnet_info, ptr %0, i32 0, i32 14
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = getelementptr inbounds %struct.virtnet_info, ptr %0, i32 0, i32 11
  %16 = load i8, ptr %15, align 4, !range !9
  %17 = icmp eq i8 %16, 0
  %18 = select i1 %17, i32 16, i32 12
  %19 = icmp eq i32 %8, 0
  %20 = select i1 %19, i32 %5, i32 4096
  %21 = sub i32 %4, %14
  %22 = add i32 %18, %3
  %23 = getelementptr i8, ptr %11, i32 %18
  %24 = getelementptr inbounds %struct.receive_queue, ptr %1, i32 0, i32 1
  %25 = tail call ptr @__napi_alloc_skb(ptr noundef %24, i32 noundef 128, i32 noundef 2592) #20
  %26 = icmp eq ptr %25, null
  br i1 %26, label %149, label %27, !prof !19

27:                                               ; preds = %9
  %28 = getelementptr inbounds %struct.sk_buff, ptr %25, i32 0, i32 6
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.sk_buff, ptr %25, i32 0, i32 15
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.sk_buff, ptr %25, i32 0, i32 14
  %35 = load ptr, ptr %34, align 8
  %36 = ptrtoint ptr %33 to i32
  %37 = ptrtoint ptr %35 to i32
  %38 = sub i32 %36, %37
  br label %39

39:                                               ; preds = %31, %27
  %40 = phi i32 [ %38, %31 ], [ 0, %27 ]
  %41 = icmp ugt i32 %21, %40
  %42 = add i32 %7, 14
  %43 = select i1 %41, i32 %42, i32 %21
  %44 = tail call ptr @skb_put(ptr noundef nonnull %25, i32 noundef %43) #20
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %44, ptr align 1 %23, i32 %43, i1 false) #20
  %45 = sub i32 %21, %43
  %46 = add i32 %22, %43
  %47 = load i8, ptr %15, align 4, !range !9
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %39
  %50 = icmp eq i32 %21, %43
  br i1 %50, label %109, label %51

51:                                               ; preds = %49
  tail call void @skb_add_rx_frag(ptr noundef nonnull %25, i32 noundef 0, ptr noundef %2, i32 noundef %46, i32 noundef %45, i32 noundef %20) #20
  br label %109

52:                                               ; preds = %39
  %53 = icmp ugt i32 %45, 69632
  br i1 %53, label %54, label %55, !prof !19

54:                                               ; preds = %52
  tail call void @consume_skb(ptr noundef nonnull %25) #20
  br label %149

55:                                               ; preds = %52
  %56 = icmp ugt i32 %46, 4095
  br i1 %56, label %72, label %57, !prof !19

57:                                               ; preds = %55
  %58 = icmp eq i32 %21, %43
  br i1 %58, label %88, label %59

59:                                               ; preds = %57
  %60 = getelementptr inbounds %struct.sk_buff, ptr %25, i32 0, i32 15
  %61 = sub nuw nsw i32 4096, %46
  %62 = tail call i32 @llvm.umin.i32(i32 %61, i32 %45)
  %63 = load ptr, ptr %60, align 4
  %64 = getelementptr inbounds %struct.skb_shared_info, ptr %63, i32 0, i32 2
  %65 = load i8, ptr %64, align 2
  %66 = zext i8 %65 to i32
  tail call void @skb_add_rx_frag(ptr noundef nonnull %25, i32 noundef %66, ptr noundef %2, i32 noundef %46, i32 noundef %62, i32 noundef %20) #20
  %67 = sub nsw i32 %45, %62
  %68 = getelementptr inbounds %struct.page, ptr %2, i32 0, i32 1, i32 0, i32 3
  %69 = load i32, ptr %68, align 4
  %70 = inttoptr i32 %69 to ptr
  %71 = icmp eq i32 %67, 0
  br i1 %71, label %88, label %73

72:                                               ; preds = %55
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/virtio_net.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 472, 0\0A.popsection", ""() #20, !srcloc !46
  unreachable

73:                                               ; preds = %73, %59
  %74 = phi ptr [ %84, %73 ], [ %70, %59 ]
  %75 = phi i32 [ %81, %73 ], [ %67, %59 ]
  %76 = tail call i32 @llvm.umin.i32(i32 %75, i32 4096)
  %77 = load ptr, ptr %60, align 4
  %78 = getelementptr inbounds %struct.skb_shared_info, ptr %77, i32 0, i32 2
  %79 = load i8, ptr %78, align 2
  %80 = zext i8 %79 to i32
  tail call void @skb_add_rx_frag(ptr noundef nonnull %25, i32 noundef %80, ptr noundef %74, i32 noundef 0, i32 noundef %76, i32 noundef %20) #20
  %81 = sub i32 %75, %76
  %82 = getelementptr inbounds %struct.page, ptr %74, i32 0, i32 1, i32 0, i32 3
  %83 = load i32, ptr %82, align 4
  %84 = inttoptr i32 %83 to ptr
  %85 = icmp eq i32 %81, 0
  br i1 %85, label %86, label %73, !llvm.loop !47

86:                                               ; preds = %73
  %87 = inttoptr i32 %83 to ptr
  br label %88

88:                                               ; preds = %86, %59, %57
  %89 = phi ptr [ %2, %57 ], [ %70, %59 ], [ %87, %86 ]
  %90 = icmp eq ptr %89, null
  br i1 %90, label %109, label %91

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.page, ptr %89, i32 0, i32 1, i32 0, i32 3
  %93 = load i32, ptr %92, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %103, label %95

95:                                               ; preds = %95, %91
  %96 = phi i32 [ %99, %95 ], [ %93, %91 ]
  %97 = inttoptr i32 %96 to ptr
  %98 = getelementptr inbounds %struct.page, ptr %97, i32 0, i32 1, i32 0, i32 3
  %99 = load i32, ptr %98, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %95

101:                                              ; preds = %95
  %102 = inttoptr i32 %96 to ptr
  br label %103

103:                                              ; preds = %101, %91
  %104 = phi ptr [ %89, %91 ], [ %102, %101 ]
  %105 = getelementptr inbounds %struct.page, ptr %104, i32 0, i32 1, i32 0, i32 3
  %106 = getelementptr inbounds %struct.receive_queue, ptr %1, i32 0, i32 4
  %107 = load ptr, ptr %106, align 16
  %108 = ptrtoint ptr %107 to i32
  store i32 %108, ptr %105, align 4
  store ptr %89, ptr %106, align 16
  br label %109

109:                                              ; preds = %103, %88, %51, %49
  %110 = phi ptr [ null, %51 ], [ null, %103 ], [ null, %88 ], [ %2, %49 ]
  br i1 %6, label %111, label %113

111:                                              ; preds = %109
  %112 = getelementptr inbounds %struct.sk_buff, ptr %25, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 2 %112, ptr align 1 %11, i32 %14, i1 false)
  br label %113

113:                                              ; preds = %111, %109
  %114 = icmp eq ptr %110, null
  br i1 %114, label %132, label %115

115:                                              ; preds = %113
  %116 = getelementptr inbounds %struct.page, ptr %110, i32 0, i32 1
  %117 = load volatile i32, ptr %116, align 4
  %118 = and i32 %117, 1
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %122, label %120, !prof !11

120:                                              ; preds = %115
  %121 = add i32 %117, -1
  br label %124

122:                                              ; preds = %115
  %123 = ptrtoint ptr %110 to i32
  br label %124

124:                                              ; preds = %122, %120
  %125 = phi i32 [ %121, %120 ], [ %123, %122 ]
  %126 = inttoptr i32 %125 to ptr
  %127 = getelementptr inbounds %struct.page, ptr %126, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %127) #20, !srcloc !14
  %128 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %127, ptr %127, i32 1, ptr elementtype(i32) %127) #20, !srcloc !15
  %129 = extractvalue { i32, i32 } %128, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !16
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %124
  tail call void @__put_page(ptr noundef %126) #20
  br label %132

132:                                              ; preds = %131, %124, %113
  %133 = icmp eq i32 %7, 0
  br i1 %133, label %149, label %134

134:                                              ; preds = %132
  %135 = getelementptr inbounds %struct.sk_buff, ptr %25, i32 0, i32 5
  %136 = load i32, ptr %135, align 8
  %137 = sub i32 %136, %7
  store i32 %137, ptr %135, align 8
  %138 = load i32, ptr %28, align 4
  %139 = icmp ult i32 %137, %138
  br i1 %139, label %140, label %141, !prof !19

140:                                              ; preds = %134
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #20, !srcloc !20
  unreachable

141:                                              ; preds = %134
  %142 = getelementptr inbounds %struct.sk_buff, ptr %25, i32 0, i32 17
  %143 = load ptr, ptr %142, align 4
  %144 = getelementptr i8, ptr %143, i32 %7
  store ptr %144, ptr %142, align 4
  %145 = trunc i32 %7 to i8
  %146 = getelementptr inbounds %struct.sk_buff, ptr %25, i32 0, i32 15
  %147 = load ptr, ptr %146, align 4
  %148 = getelementptr inbounds %struct.skb_shared_info, ptr %147, i32 0, i32 1
  store i8 %145, ptr %148, align 1
  br label %149

149:                                              ; preds = %141, %132, %54, %9
  %150 = phi ptr [ null, %54 ], [ null, %9 ], [ %25, %141 ], [ %25, %132 ]
  ret ptr %150
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @xdp_convert_buff_to_frame(ptr noundef %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.xdp_buff, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.xdp_rxq_info, ptr %3, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 3
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = tail call ptr @xdp_convert_zc_to_xdp_frame(ptr noundef %0) #20
  br label %55

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.xdp_buff, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %0, align 4
  %13 = ptrtoint ptr %12 to i32
  %14 = ptrtoint ptr %11 to i32
  %15 = sub i32 %13, %14
  %16 = getelementptr inbounds %struct.xdp_buff, ptr %0, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = ptrtoint ptr %17 to i32
  %19 = sub i32 %13, %18
  %20 = tail call i32 @llvm.smax.i32(i32 %19, i32 0) #20
  %21 = sub i32 %15, %20
  %22 = icmp ult i32 %21, 24
  br i1 %22, label %55, label %23, !prof !19

23:                                               ; preds = %9
  %24 = getelementptr inbounds %struct.xdp_buff, ptr %0, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.xdp_buff, ptr %0, i32 0, i32 6
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr i8, ptr %11, i32 %27
  %29 = getelementptr i8, ptr %28, i32 -256
  %30 = icmp ugt ptr %25, %29
  br i1 %30, label %31, label %32, !prof !19

31:                                               ; preds = %23
  tail call void @xdp_warn(ptr noundef nonnull @.str.38, ptr noundef nonnull @__func__.xdp_update_frame_from_buff, i32 noundef 200) #20
  br label %55

32:                                               ; preds = %23
  store ptr %12, ptr %11, align 4
  %33 = load ptr, ptr %24, align 4
  %34 = load ptr, ptr %0, align 4
  %35 = ptrtoint ptr %33 to i32
  %36 = ptrtoint ptr %34 to i32
  %37 = sub i32 %35, %36
  %38 = trunc i32 %37 to i16
  %39 = getelementptr inbounds %struct.xdp_frame, ptr %11, i32 0, i32 1
  store i16 %38, ptr %39, align 4
  %40 = trunc i32 %15 to i16
  %41 = add i16 %40, -24
  %42 = getelementptr inbounds %struct.xdp_frame, ptr %11, i32 0, i32 2
  store i16 %41, ptr %42, align 2
  %43 = getelementptr inbounds %struct.xdp_frame, ptr %11, i32 0, i32 3
  %44 = load i32, ptr %43, align 4
  %45 = and i32 %20, 255
  %46 = and i32 %44, -256
  %47 = or i32 %46, %45
  store i32 %47, ptr %43, align 4
  %48 = load i32, ptr %26, align 4
  %49 = shl i32 %48, 8
  %50 = or i32 %49, %45
  store i32 %50, ptr %43, align 4
  %51 = getelementptr inbounds %struct.xdp_frame, ptr %11, i32 0, i32 4
  %52 = load ptr, ptr %2, align 4
  %53 = getelementptr inbounds %struct.xdp_rxq_info, ptr %52, i32 0, i32 3
  %54 = load i64, ptr %53, align 4
  store i64 %54, ptr %51, align 4
  br label %55

55:                                               ; preds = %32, %31, %9, %7
  %56 = phi ptr [ %8, %7 ], [ %11, %32 ], [ null, %31 ], [ null, %9 ]
  ret ptr %56
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdp_return_frame_rx_napi(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @trace_xdp_exception(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #8 {
  %4 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xdp_exception, i32 0, i32 1), align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %3
  %7 = tail call ptr @llvm.thread.pointer() #20
  %8 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 8
  %10 = lshr i32 %9, 5
  %11 = getelementptr i32, ptr @__cpu_online_mask, i32 %10
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %9, 31
  %14 = shl nuw i32 1, %13
  %15 = and i32 %14, %12
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %6
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !48
  %18 = tail call i32 @__traceiter_xdp_exception(ptr noundef null, ptr noundef %0, ptr noundef %1, i32 noundef %2) #20
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !49
  br label %19

19:                                               ; preds = %17, %6, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdp_do_redirect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_warn_invalid_xdp_action(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_coalesce_rx_frag(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_add_rx_frag(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdp_master_redirect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__napi_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdp_convert_zc_to_xdp_frame(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdp_warn(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xdp_exception(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @build_skb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @skb_partial_csum_set(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__skb_flow_dissect(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtqueue_enable_cb_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @virtqueue_poll(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @skb_recv_done(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.virtqueue, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.virtio_device, ptr %3, i32 0, i32 12
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.virtnet_info, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.virtqueue, ptr %0, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = lshr i32 %9, 1
  %11 = getelementptr %struct.receive_queue, ptr %7, i32 %10, i32 1
  %12 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %11) #20
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  tail call void @virtqueue_disable_cb(ptr noundef %0) #20
  tail call void @__napi_schedule(ptr noundef %11) #20
  br label %14

14:                                               ; preds = %13, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @skb_xmit_done(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.virtqueue, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.virtio_device, ptr %3, i32 0, i32 12
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.virtnet_info, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.virtqueue, ptr %0, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, -1
  %11 = lshr i32 %10, 1
  tail call void @virtqueue_disable_cb(ptr noundef %0) #20
  %12 = getelementptr %struct.send_queue, ptr %7, i32 %11, i32 4, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %1
  %16 = getelementptr %struct.send_queue, ptr %7, i32 %11, i32 4
  %17 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %16) #20
  br i1 %17, label %18, label %29

18:                                               ; preds = %15
  tail call void @virtqueue_disable_cb(ptr noundef %0) #20
  tail call void @__napi_schedule(ptr noundef %16) #20
  br label %29

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.virtnet_info, ptr %5, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = load i32, ptr %8, align 4
  %23 = add i32 %22, 131071
  %24 = lshr i32 %23, 1
  %25 = and i32 %24, 65535
  %26 = getelementptr inbounds %struct.net_device, ptr %21, i32 0, i32 87
  %27 = load ptr, ptr %26, align 64
  %28 = getelementptr %struct.netdev_queue, ptr %27, i32 %25
  tail call void @netif_tx_wake_queue(ptr noundef %28) #20
  br label %29

29:                                               ; preds = %19, %18, %15
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netif_napi_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mergeable_rx_buffer_size_show(ptr noundef %0, ptr nocapture noundef writeonly %1) #3 {
  %3 = getelementptr inbounds %struct.netdev_rx_queue, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 73
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %0 to i32
  %8 = ptrtoint ptr %6 to i32
  %9 = sub i32 %7, %8
  %10 = ashr exact i32 %9, 7
  %11 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 74
  %12 = load i32, ptr %11, align 8
  %13 = icmp ult i32 %10, %12
  br i1 %13, label %15, label %14, !prof !11

14:                                               ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/netdevice.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3612, 0\0A.popsection", ""() #20, !srcloc !50
  unreachable

15:                                               ; preds = %2
  %16 = getelementptr i8, ptr %4, i32 1432
  %17 = load i16, ptr %16, align 4
  %18 = zext i16 %17 to i32
  %19 = icmp ult i32 %10, %18
  br i1 %19, label %21, label %20, !prof !11

20:                                               ; preds = %15
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/virtio_net.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3027, 0\0A.popsection", ""() #20, !srcloc !51
  unreachable

21:                                               ; preds = %15
  %22 = getelementptr i8, ptr %4, i32 1438
  %23 = load i8, ptr %22, align 2, !range !9
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %21
  %26 = getelementptr i8, ptr %4, i32 1424
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr %struct.receive_queue, ptr %27, i32 %10, i32 5
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr %struct.receive_queue, ptr %27, i32 %10, i32 8
  %31 = load i32, ptr %30, align 4
  %32 = tail call i32 @llvm.umax.i32(i32 %29, i32 %31) #20
  %33 = tail call i32 @llvm.umin.i32(i32 %32, i32 4084) #20
  %34 = add nuw nsw i32 %33, 75
  %35 = and i32 %34, 8128
  br label %36

36:                                               ; preds = %25, %21
  %37 = phi i32 [ %35, %25 ], [ 3584, %21 ]
  %38 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.44, i32 noundef %37)
  ret i32 %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_state_add_instance(i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_state_remove_instance(i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @remove_vq_common(ptr nocapture noundef %0) unnamed_addr #3 {
  %2 = load ptr, ptr %0, align 4
  tail call void @virtio_reset_device(ptr noundef %2) #20
  %3 = getelementptr inbounds %struct.virtnet_info, ptr %0, i32 0, i32 6
  %4 = load i16, ptr %3, align 4
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %141, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.virtnet_info, ptr %0, i32 0, i32 3
  br label %14

8:                                                ; preds = %33
  %9 = icmp eq i16 %35, 0
  br i1 %9, label %141, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.virtnet_info, ptr %0, i32 0, i32 4
  %12 = getelementptr inbounds %struct.virtnet_info, ptr %0, i32 0, i32 11
  %13 = getelementptr inbounds %struct.virtnet_info, ptr %0, i32 0, i32 10
  br label %38

14:                                               ; preds = %33, %6
  %15 = phi i32 [ 0, %6 ], [ %34, %33 ]
  %16 = load ptr, ptr %7, align 4
  %17 = getelementptr %struct.send_queue, ptr %16, i32 %15
  %18 = load ptr, ptr %17, align 8
  %19 = tail call ptr @virtqueue_detach_unused_buf(ptr noundef %18) #20
  %20 = icmp eq ptr %19, null
  br i1 %20, label %33, label %21

21:                                               ; preds = %30, %14
  %22 = phi ptr [ %31, %30 ], [ %19, %14 ]
  %23 = ptrtoint ptr %22 to i32
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  tail call void @consume_skb(ptr noundef nonnull %22) #20
  br label %30

27:                                               ; preds = %21
  %28 = and i32 %23, -2
  %29 = inttoptr i32 %28 to ptr
  tail call void @xdp_return_frame(ptr noundef %29) #20
  br label %30

30:                                               ; preds = %27, %26
  %31 = tail call ptr @virtqueue_detach_unused_buf(ptr noundef %18) #20
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %21

33:                                               ; preds = %30, %14
  %34 = add nuw nsw i32 %15, 1
  %35 = load i16, ptr %3, align 4
  %36 = zext i16 %35 to i32
  %37 = icmp ult i32 %34, %36
  br i1 %37, label %14, label %8

38:                                               ; preds = %136, %10
  %39 = phi i32 [ 0, %10 ], [ %137, %136 ]
  %40 = load ptr, ptr %11, align 4
  %41 = getelementptr %struct.receive_queue, ptr %40, i32 %39
  %42 = load ptr, ptr %41, align 64
  %43 = tail call ptr @virtqueue_detach_unused_buf(ptr noundef %42) #20
  %44 = icmp eq ptr %43, null
  br i1 %44, label %136, label %45

45:                                               ; preds = %133, %38
  %46 = phi ptr [ %134, %133 ], [ %43, %38 ]
  %47 = load i8, ptr %12, align 4, !range !9
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %80, label %49

49:                                               ; preds = %45
  %50 = load ptr, ptr @mem_map, align 4
  %51 = ptrtoint ptr %46 to i32
  %52 = add i32 %51, 1073741824
  %53 = lshr i32 %52, 12
  %54 = getelementptr %struct.page, ptr %50, i32 %53, i32 1
  %55 = load volatile i32, ptr %54, align 4
  %56 = and i32 %55, 1
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %60, label %58, !prof !11

58:                                               ; preds = %49
  %59 = add i32 %55, -1
  br label %63

60:                                               ; preds = %49
  %61 = getelementptr %struct.page, ptr %50, i32 %53
  %62 = ptrtoint ptr %61 to i32
  br label %63

63:                                               ; preds = %60, %58
  %64 = phi i32 [ %59, %58 ], [ %62, %60 ]
  %65 = inttoptr i32 %64 to ptr
  %66 = getelementptr inbounds %struct.page, ptr %65, i32 0, i32 1
  %67 = load volatile i32, ptr %66, align 4
  %68 = and i32 %67, 1
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %73, label %70, !prof !11

70:                                               ; preds = %63
  %71 = add i32 %67, -1
  %72 = inttoptr i32 %71 to ptr
  br label %73

73:                                               ; preds = %70, %63
  %74 = phi ptr [ %65, %63 ], [ %72, %70 ]
  %75 = getelementptr inbounds %struct.page, ptr %74, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %75) #20, !srcloc !14
  %76 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %75, ptr %75, i32 1, ptr elementtype(i32) %75) #20, !srcloc !15
  %77 = extractvalue { i32, i32 } %76, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !16
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %133

79:                                               ; preds = %73
  tail call void @__put_page(ptr noundef %74) #20
  br label %133

80:                                               ; preds = %45
  %81 = load i8, ptr %13, align 1, !range !9
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %102, label %83

83:                                               ; preds = %80
  %84 = load ptr, ptr %11, align 4
  %85 = getelementptr inbounds %struct.page, ptr %46, i32 0, i32 1, i32 0, i32 3
  %86 = load i32, ptr %85, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %96, label %88

88:                                               ; preds = %88, %83
  %89 = phi i32 [ %92, %88 ], [ %86, %83 ]
  %90 = inttoptr i32 %89 to ptr
  %91 = getelementptr inbounds %struct.page, ptr %90, i32 0, i32 1, i32 0, i32 3
  %92 = load i32, ptr %91, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %88

94:                                               ; preds = %88
  %95 = inttoptr i32 %89 to ptr
  br label %96

96:                                               ; preds = %94, %83
  %97 = phi ptr [ %46, %83 ], [ %95, %94 ]
  %98 = getelementptr inbounds %struct.page, ptr %97, i32 0, i32 1, i32 0, i32 3
  %99 = getelementptr %struct.receive_queue, ptr %84, i32 %39, i32 4
  %100 = load ptr, ptr %99, align 16
  %101 = ptrtoint ptr %100 to i32
  store i32 %101, ptr %98, align 4
  store ptr %46, ptr %99, align 16
  br label %133

102:                                              ; preds = %80
  %103 = load ptr, ptr @mem_map, align 4
  %104 = ptrtoint ptr %46 to i32
  %105 = add i32 %104, 1073741824
  %106 = lshr i32 %105, 12
  %107 = getelementptr %struct.page, ptr %103, i32 %106, i32 1
  %108 = load volatile i32, ptr %107, align 4
  %109 = and i32 %108, 1
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %113, label %111, !prof !11

111:                                              ; preds = %102
  %112 = add i32 %108, -1
  br label %116

113:                                              ; preds = %102
  %114 = getelementptr %struct.page, ptr %103, i32 %106
  %115 = ptrtoint ptr %114 to i32
  br label %116

116:                                              ; preds = %113, %111
  %117 = phi i32 [ %112, %111 ], [ %115, %113 ]
  %118 = inttoptr i32 %117 to ptr
  %119 = getelementptr inbounds %struct.page, ptr %118, i32 0, i32 1
  %120 = load volatile i32, ptr %119, align 4
  %121 = and i32 %120, 1
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %126, label %123, !prof !11

123:                                              ; preds = %116
  %124 = add i32 %120, -1
  %125 = inttoptr i32 %124 to ptr
  br label %126

126:                                              ; preds = %123, %116
  %127 = phi ptr [ %118, %116 ], [ %125, %123 ]
  %128 = getelementptr inbounds %struct.page, ptr %127, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %128) #20, !srcloc !14
  %129 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %128, ptr %128, i32 1, ptr elementtype(i32) %128) #20, !srcloc !15
  %130 = extractvalue { i32, i32 } %129, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !16
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %126
  tail call void @__put_page(ptr noundef %127) #20
  br label %133

133:                                              ; preds = %132, %126, %96, %79, %73
  %134 = tail call ptr @virtqueue_detach_unused_buf(ptr noundef %42) #20
  %135 = icmp eq ptr %134, null
  br i1 %135, label %136, label %45

136:                                              ; preds = %133, %38
  %137 = add nuw nsw i32 %39, 1
  %138 = load i16, ptr %3, align 4
  %139 = zext i16 %138 to i32
  %140 = icmp ult i32 %137, %139
  br i1 %140, label %38, label %141

141:                                              ; preds = %136, %8, %1
  tail call void @rtnl_lock() #20
  %142 = load i16, ptr %3, align 4
  %143 = icmp eq i16 %142, 0
  br i1 %143, label %170, label %144

144:                                              ; preds = %141
  %145 = getelementptr inbounds %struct.virtnet_info, ptr %0, i32 0, i32 4
  br label %146

146:                                              ; preds = %163, %144
  %147 = phi i32 [ 0, %144 ], [ %166, %163 ]
  %148 = load ptr, ptr %145, align 4
  %149 = getelementptr %struct.receive_queue, ptr %148, i32 %147, i32 4
  %150 = load ptr, ptr %149, align 16
  %151 = icmp eq ptr %150, null
  br i1 %151, label %163, label %152

152:                                              ; preds = %152, %146
  %153 = phi ptr [ %161, %152 ], [ %150, %146 ]
  %154 = phi ptr [ %159, %152 ], [ %148, %146 ]
  %155 = getelementptr %struct.receive_queue, ptr %154, i32 %147, i32 4
  %156 = getelementptr inbounds %struct.page, ptr %153, i32 0, i32 1, i32 0, i32 3
  %157 = load i32, ptr %156, align 4
  %158 = inttoptr i32 %157 to ptr
  store ptr %158, ptr %155, align 16
  store i32 0, ptr %156, align 4
  tail call void @__free_pages(ptr noundef nonnull %153, i32 noundef 0) #20
  %159 = load ptr, ptr %145, align 4
  %160 = getelementptr %struct.receive_queue, ptr %159, i32 %147, i32 4
  %161 = load ptr, ptr %160, align 16
  %162 = icmp eq ptr %161, null
  br i1 %162, label %163, label %152

163:                                              ; preds = %152, %146
  %164 = phi ptr [ %148, %146 ], [ %159, %152 ]
  %165 = getelementptr %struct.receive_queue, ptr %164, i32 %147, i32 2
  store volatile ptr null, ptr %165, align 32
  %166 = add nuw nsw i32 %147, 1
  %167 = load i16, ptr %3, align 4
  %168 = zext i16 %167 to i32
  %169 = icmp ult i32 %166, %168
  br i1 %169, label %146, label %170

170:                                              ; preds = %163, %141
  tail call void @rtnl_unlock() #20
  %171 = load i16, ptr %3, align 4
  %172 = icmp eq i16 %171, 0
  br i1 %172, label %208, label %173

173:                                              ; preds = %170
  %174 = getelementptr inbounds %struct.virtnet_info, ptr %0, i32 0, i32 4
  br label %175

175:                                              ; preds = %198, %173
  %176 = phi i32 [ 0, %173 ], [ %199, %198 ]
  %177 = load ptr, ptr %174, align 4
  %178 = getelementptr %struct.receive_queue, ptr %177, i32 %176, i32 6
  %179 = load ptr, ptr %178, align 8
  %180 = icmp eq ptr %179, null
  br i1 %180, label %198, label %181

181:                                              ; preds = %175
  %182 = getelementptr inbounds %struct.page, ptr %179, i32 0, i32 1
  %183 = load volatile i32, ptr %182, align 4
  %184 = and i32 %183, 1
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %188, label %186, !prof !11

186:                                              ; preds = %181
  %187 = add i32 %183, -1
  br label %190

188:                                              ; preds = %181
  %189 = ptrtoint ptr %179 to i32
  br label %190

190:                                              ; preds = %188, %186
  %191 = phi i32 [ %187, %186 ], [ %189, %188 ]
  %192 = inttoptr i32 %191 to ptr
  %193 = getelementptr inbounds %struct.page, ptr %192, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %193) #20, !srcloc !14
  %194 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %193, ptr %193, i32 1, ptr elementtype(i32) %193) #20, !srcloc !15
  %195 = extractvalue { i32, i32 } %194, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !16
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %190
  tail call void @__put_page(ptr noundef %192) #20
  br label %198

198:                                              ; preds = %197, %190, %175
  %199 = add nuw nsw i32 %176, 1
  %200 = load i16, ptr %3, align 4
  %201 = zext i16 %200 to i32
  %202 = icmp ult i32 %199, %201
  br i1 %202, label %175, label %203

203:                                              ; preds = %198
  %204 = load ptr, ptr %0, align 4
  %205 = getelementptr inbounds %struct.virtnet_info, ptr %0, i32 0, i32 17
  %206 = load i8, ptr %205, align 4, !range !9
  %207 = icmp eq i8 %206, 0
  br i1 %207, label %253, label %213

208:                                              ; preds = %170
  %209 = load ptr, ptr %0, align 4
  %210 = getelementptr inbounds %struct.virtnet_info, ptr %0, i32 0, i32 17
  %211 = load i8, ptr %210, align 4, !range !9
  %212 = icmp eq i8 %211, 0
  br i1 %212, label %253, label %250

213:                                              ; preds = %203
  %214 = icmp eq i16 %200, 0
  br i1 %214, label %250, label %215

215:                                              ; preds = %213
  %216 = getelementptr inbounds %struct.virtnet_info, ptr %0, i32 0, i32 4
  %217 = getelementptr inbounds %struct.virtnet_info, ptr %0, i32 0, i32 3
  br label %218

218:                                              ; preds = %245, %215
  %219 = phi i32 [ 0, %215 ], [ %246, %245 ]
  %220 = load ptr, ptr %216, align 4
  %221 = getelementptr %struct.receive_queue, ptr %220, i32 %219
  %222 = load ptr, ptr %221, align 64
  %223 = getelementptr inbounds %struct.virtqueue, ptr %222, i32 0, i32 3
  %224 = load ptr, ptr %223, align 4
  %225 = getelementptr inbounds %struct.virtio_device, ptr %224, i32 0, i32 8
  %226 = load ptr, ptr %225, align 8
  %227 = getelementptr inbounds %struct.virtio_config_ops, ptr %226, i32 0, i32 12
  %228 = load ptr, ptr %227, align 4
  %229 = icmp eq ptr %228, null
  br i1 %229, label %232, label %230

230:                                              ; preds = %218
  %231 = tail call i32 %228(ptr noundef %222, ptr noundef null) #20
  br label %232

232:                                              ; preds = %230, %218
  %233 = load ptr, ptr %217, align 4
  %234 = getelementptr %struct.send_queue, ptr %233, i32 %219
  %235 = load ptr, ptr %234, align 8
  %236 = getelementptr inbounds %struct.virtqueue, ptr %235, i32 0, i32 3
  %237 = load ptr, ptr %236, align 4
  %238 = getelementptr inbounds %struct.virtio_device, ptr %237, i32 0, i32 8
  %239 = load ptr, ptr %238, align 8
  %240 = getelementptr inbounds %struct.virtio_config_ops, ptr %239, i32 0, i32 12
  %241 = load ptr, ptr %240, align 4
  %242 = icmp eq ptr %241, null
  br i1 %242, label %245, label %243

243:                                              ; preds = %232
  %244 = tail call i32 %241(ptr noundef %235, ptr noundef null) #20
  br label %245

245:                                              ; preds = %243, %232
  %246 = add nuw nsw i32 %219, 1
  %247 = load i16, ptr %3, align 4
  %248 = zext i16 %247 to i32
  %249 = icmp ult i32 %246, %248
  br i1 %249, label %218, label %250

250:                                              ; preds = %245, %213, %208
  %251 = phi ptr [ %204, %213 ], [ %209, %208 ], [ %204, %245 ]
  %252 = phi ptr [ %205, %213 ], [ %210, %208 ], [ %205, %245 ]
  store i8 0, ptr %252, align 4
  br label %253

253:                                              ; preds = %250, %208, %203
  %254 = phi ptr [ %209, %208 ], [ %204, %203 ], [ %251, %250 ]
  %255 = getelementptr inbounds %struct.virtio_device, ptr %254, i32 0, i32 8
  %256 = load ptr, ptr %255, align 8
  %257 = getelementptr inbounds %struct.virtio_config_ops, ptr %256, i32 0, i32 8
  %258 = load ptr, ptr %257, align 4
  tail call void %258(ptr noundef %254) #20
  tail call fastcc void @virtnet_free_queues(ptr noundef %0) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @virtqueue_detach_unused_buf(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @virtnet_freeze_down(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 12
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.virtnet_info, ptr %3, i32 0, i32 16
  %5 = tail call zeroext i1 @flush_work(ptr noundef %4) #20
  %6 = getelementptr inbounds %struct.virtnet_info, ptr %3, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = tail call ptr @llvm.thread.pointer() #20
  %9 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %10 = load volatile i32, ptr %9, align 4
  %11 = add i32 %10, 512
  store volatile i32 %11, ptr %9, align 4
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !17
  tail call void @netif_tx_lock(ptr noundef %7) #20
  %12 = load ptr, ptr %6, align 4
  tail call void @netif_device_detach(ptr noundef %12) #20
  %13 = load ptr, ptr %6, align 4
  tail call void @netif_tx_unlock(ptr noundef %13) #20
  tail call fastcc void @local_bh_enable() #20
  %14 = getelementptr inbounds %struct.virtnet_info, ptr %3, i32 0, i32 15
  %15 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %14) #20
  %16 = load ptr, ptr %6, align 4
  %17 = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 6
  %18 = load volatile i32, ptr %17, align 4
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %43, label %21

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.virtnet_info, ptr %3, i32 0, i32 6
  %23 = load i16, ptr %22, align 4
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %43, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.virtnet_info, ptr %3, i32 0, i32 4
  %27 = getelementptr inbounds %struct.virtnet_info, ptr %3, i32 0, i32 3
  br label %28

28:                                               ; preds = %38, %25
  %29 = phi i32 [ 0, %25 ], [ %39, %38 ]
  %30 = load ptr, ptr %26, align 4
  %31 = getelementptr %struct.receive_queue, ptr %30, i32 %29, i32 1
  tail call void @napi_disable(ptr noundef %31) #20
  %32 = load ptr, ptr %27, align 4
  %33 = getelementptr %struct.send_queue, ptr %32, i32 %29, i32 4, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %28
  %37 = getelementptr %struct.send_queue, ptr %32, i32 %29, i32 4
  tail call void @napi_disable(ptr noundef %37) #20
  br label %38

38:                                               ; preds = %36, %28
  %39 = add nuw nsw i32 %29, 1
  %40 = load i16, ptr %22, align 4
  %41 = zext i16 %40 to i32
  %42 = icmp ult i32 %39, %41
  br i1 %42, label %28, label %43

43:                                               ; preds = %38, %21, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cpuhp_remove_state(i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #19

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #19

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #19

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { nounwind readonly }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #18 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #19 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #20 = { nounwind }
attributes #21 = { cold nounwind }
attributes #22 = { nounwind allocsize(2) }
attributes #23 = { nounwind allocsize(0) }

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
!10 = !{!"auto-init"}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2155046640, i64 2155047134, i64 2155046677, i64 2155046733, i64 2155046767, i64 2155046791, i64 2155046832, i64 2155046853, i64 2155046881, i64 2155046915}
!13 = !{i64 2148375301}
!14 = !{i64 773236, i64 2148263207, i64 2148263233, i64 2148263280, i64 2148263302, i64 2148263330, i64 2148263350}
!15 = !{i64 2148277663, i64 2148277695, i64 2148277724, i64 2148277758, i64 2148277789, i64 2148277812}
!16 = !{i64 2148375504}
!17 = !{i64 2148956796}
!18 = !{i64 697614}
!19 = !{!"branch_weights", i32 1, i32 2000}
!20 = !{i64 2153700803, i64 2153701291, i64 2153700840, i64 2153700896, i64 2153700930, i64 2153700954, i64 2153700995, i64 2153701016, i64 2153701044, i64 2153701078}
!21 = !{i64 2153522321, i64 2153522813, i64 2153522358, i64 2153522414, i64 2153522448, i64 2153522472, i64 2153522513, i64 2153522534, i64 2153522562, i64 2153522596}
!22 = !{i64 2153714161, i64 2153714649, i64 2153714198, i64 2153714254, i64 2153714288, i64 2153714312, i64 2153714353, i64 2153714374, i64 2153714402, i64 2153714436}
!23 = !{i64 2149839618}
!24 = !{i64 2149839919}
!25 = !{i64 2150406883}
!26 = !{i64 2150406725}
!27 = !{i64 2150407027}
!28 = !{i64 2149839319}
!29 = !{i64 2157453646}
!30 = distinct !{!30, !31}
!31 = !{!"llvm.loop.peeled.count", i32 1}
!32 = !{i64 2157461622}
!33 = !{i64 2157469606}
!34 = !{i64 2149158457}
!35 = !{i64 2149154281}
!36 = !{i64 2149154356, i64 2149154383, i64 2149154430, i64 2149154452, i64 2149154480, i64 2149154500}
!37 = !{i64 2149181460}
!38 = !{i64 2148274622, i64 2148274648, i64 2148274677, i64 2148274711, i64 2148274742, i64 2148274765}
!39 = !{i64 678914, i64 678975}
!40 = !{i64 681931}
!41 = !{i64 2157413467, i64 2157413957, i64 2157413504, i64 2157413560, i64 2157413594, i64 2157413618, i64 2157413659, i64 2157413680, i64 2157413708, i64 2157413742}
!42 = !{i64 2157416955}
!43 = !{i64 2157416797}
!44 = !{i64 2149363571}
!45 = !{i64 2149363788}
!46 = !{i64 2157347891, i64 2157348380, i64 2157347928, i64 2157347984, i64 2157348018, i64 2157348042, i64 2157348083, i64 2157348104, i64 2157348132, i64 2157348166}
!47 = distinct !{!47, !31}
!48 = !{i64 2155939029}
!49 = !{i64 2155939193}
!50 = !{i64 2154516015, i64 2154516506, i64 2154516052, i64 2154516108, i64 2154516142, i64 2154516166, i64 2154516207, i64 2154516228, i64 2154516256, i64 2154516290}
!51 = !{i64 2157501024, i64 2157501514, i64 2157501061, i64 2157501117, i64 2157501151, i64 2157501175, i64 2157501216, i64 2157501237, i64 2157501265, i64 2157501299}
