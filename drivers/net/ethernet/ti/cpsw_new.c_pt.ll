; ModuleID = '/llk/IR/drivers/net/ethernet/ti/cpsw_new.c_pt.bc'
source_filename = "../drivers/net/ethernet/ti/cpsw_new.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.soc_device_attribute = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.devlink_ops = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.devlink_param = type { i32, ptr, i8, i32, i32, ptr, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type {}
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.30, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.30 = type { %struct.anon.31 }
%struct.anon.31 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.raw_notifier_head = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.netns_core = type { ptr, i32, ptr }
%struct.netns_mib = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.netns_unix = type { i32, ptr }
%struct.netns_nexthop = type { %struct.rb_root, ptr, i32, i32, %struct.blocking_notifier_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.netns_ipv4 = type { %struct.inet_timewait_death_row, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i32, i32, i32, i32, %struct.local_ports, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, ptr, ptr, i32, %struct.atomic_t, i32, i32, i32, i8, i8, i32, i32, i32, %struct.ping_group_range, %struct.atomic_t, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, %struct.siphash_key_t, [40 x i8] }
%struct.inet_timewait_death_row = type { %struct.atomic_t, [60 x i8], ptr, i32 }
%struct.local_ports = type { %struct.seqlock_t, [2 x i32], i8 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.57, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.57 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.142, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type {}
%union.anon.142 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.cpsw_common = type { ptr, %struct.cpsw_platform_data, %struct.napi_struct, %struct.napi_struct, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, [8 x %struct.cpsw_vector], [8 x %struct.cpsw_vector], ptr, i8, i8, i8, [2 x i32], i32, ptr, ptr, i32, i32, i32, i32, [8 x ptr], i8, ptr, i8, [6 x i8] }
%struct.cpsw_platform_data = type { ptr, i32, i32, i32, i32, i32, i32, i16, i8 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.cpsw_vector = type { ptr, i32 }
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cpsw_ss_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cpsw_host_regs = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.cpsw_slave = type { ptr, i32, i32, ptr, ptr, ptr, i32, ptr }
%struct.cpsw_slave_data = type { ptr, ptr, [61 x i8], i32, [6 x i8], i16, ptr, i8 }
%struct.cpsw_wr_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, [8 x i32], i32, i32 }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.103, [48 x i8], %union.anon.104, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.106, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.103 = type { i64 }
%union.anon.104 = type { %struct.anon.105 }
%struct.anon.105 = type { i32, ptr }
%union.anon.106 = type { %struct.anon.107 }
%struct.anon.107 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.108, i32, i32, i32, i16, i16, %union.anon.110, %union.anon.111, %union.anon.112, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.108 = type { i32 }
%union.anon.110 = type { i32 }
%union.anon.111 = type { i32 }
%union.anon.112 = type { i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.netdev_queue = type { ptr, %struct.netdevice_tracker, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, [4 x i8], %struct.spinlock, i32, i32, i32, [48 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [52 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [24 x i8] }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%struct.xdp_frame = type { ptr, i16, i16, i32, %struct.xdp_mem_info, ptr }
%struct.xdp_mem_info = type { i32, i32 }
%struct.cpsw_priv = type { ptr, ptr, i32, [6 x i8], i8, i8, i8, [4 x i32], i32, i32, i32, ptr, [8 x i8], [8 x %struct.xdp_rxq_info], %struct.xdp_attachment_info, i32, ptr, i32, i32, [40 x i8] }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [40 x i8] }
%struct.xdp_attachment_info = type { ptr, i32 }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.cpts = type { ptr, ptr, i32, i32, %struct.ptp_clock_info, ptr, %struct.spinlock, i32, %struct.cyclecounter, %struct.timecounter, i32, ptr, %struct.list_head, %struct.list_head, [32 x %struct.cpts_event], i32, %struct.sk_buff_head, i64, i32, %struct.mutex, i8, %struct.completion, i32 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.cpts_event = type { %struct.list_head, i32, i32, i32, i64 }
%struct.sk_buff_head = type { %union.anon.50, i32, %struct.spinlock }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr }
%struct.xdp_buff = type { ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.page = type { i32, %union.anon.10, %union.anon.90, %struct.atomic_t }
%union.anon.10 = type { %struct.anon.11 }
%struct.anon.11 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.90 = type { %struct.atomic_t }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_pauseparam = type { i32, i32, i32, i32 }
%struct.netdev_notifier_info = type { ptr, ptr }
%struct.netdev_notifier_changeupper_info = type { %struct.netdev_notifier_info, ptr, i8, i8, ptr }

@cpsw_netdev_ops = internal constant %struct.net_device_ops { ptr null, ptr null, ptr @cpsw_ndo_open, ptr @cpsw_ndo_stop, ptr @cpsw_ndo_start_xmit, ptr null, ptr null, ptr null, ptr @cpsw_ndo_set_rx_mode, ptr @cpsw_ndo_set_mac_address, ptr @eth_validate_addr, ptr null, ptr @cpsw_ndo_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cpsw_ndo_tx_timeout, ptr null, ptr null, ptr null, ptr null, ptr @cpsw_ndo_vlan_rx_add_vid, ptr @cpsw_ndo_vlan_rx_kill_vid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cpsw_ndo_setup_tc, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cpsw_get_port_parent_id, ptr @cpsw_ndo_get_phys_port_name, ptr null, ptr null, ptr @cpsw_ndo_set_tx_maxrate, ptr null, ptr null, ptr null, ptr @cpsw_ndo_bpf, ptr @cpsw_ndo_xdp_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__initcall__kmod_ti_cpsw_new__493_2127_cpsw_driver_init6 = internal global ptr @cpsw_driver_init, section ".initcall6.init", align 4
@cpsw_driver = internal global %struct.platform_driver { ptr @cpsw_probe, ptr @cpsw_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.17, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cpsw_of_mtable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cpsw_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_cpsw_driver_exit = internal global ptr @cpsw_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file494 = internal constant [53 x i8] c"ti_cpsw_new.file=drivers/net/ethernet/ti/ti_cpsw_new\00", section ".modinfo", align 1
@__UNIQUE_ID_license495 = internal constant [24 x i8] c"ti_cpsw_new.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description496 = internal constant [58 x i8] c"ti_cpsw_new.description=TI CPSW switchdev Ethernet driver\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [25 x i8] c"starting ndev. mode: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"switch\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"dual_mac\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"cannot set real number of tx queues\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"cannot set real number of rx queues\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"error registering cpts device\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"cpsw\00", align 1
@cpsw_init_stp_ale_entry.stpa = internal constant [6 x i8] c"\01\80\C2\00\00\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"no phy found on slave %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"phy \22%pOF\22 not found on slave %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [50 x i8] c"Speed was changed, CBS shaper speeds are changed!\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"shutting down ndev\0A\00", align 1
@cpsw_slave_index = external dso_local local_unnamed_addr global ptr, align 4
@.str.11 = private unnamed_addr constant [19 x i8] c"packet pad failed\0A\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"desc submit failed\0A\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"cpsw_ale_del_vlan() failed: ret %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"cpsw_ale_del_ucast() failed: ret %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [35 x i8] c"cpsw_ale_del_mcast failed. ret %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"p%d\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"cpsw-switch\00", align 1
@cpsw_of_mtable = internal constant [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,cpsw-switch\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am335x-cpsw-switch\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am4372-cpsw-switch\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dra7-cpsw-switch\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@cpsw_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @cpsw_suspend, ptr @cpsw_resume, ptr @cpsw_suspend, ptr @cpsw_resume, ptr @cpsw_suspend, ptr @cpsw_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.18 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.19 = private unnamed_addr constant [29 x i8] c"gpio request failed, ret %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"fck\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"fck is not found %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"misc\00", align 1
@cpsw_soc_devices = internal constant [2 x %struct.soc_device_attribute] [%struct.soc_device_attribute { ptr null, ptr @.str.43, ptr @.str.44, ptr null, ptr null, ptr null, ptr null }, %struct.soc_device_attribute zeroinitializer], align 4
@.str.25 = private unnamed_addr constant [35 x i8] c"error initializing tx dma channel\0A\00", align 1
@.str.26 = private unnamed_addr constant [35 x i8] c"error initializing rx dma channel\0A\00", align 1
@.str.27 = private unnamed_addr constant [26 x i8] c"error attaching irq (%d)\0A\00", align 1
@.str.28 = private unnamed_addr constant [31 x i8] c"error attaching misc irq (%d)\0A\00", align 1
@.str.29 = private unnamed_addr constant [61 x i8] c"initialized (regs %pa, pool size %d) hw_ver:%08X %d.%d (%d)\0A\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"ethernet-ports\00", align 1
@.str.31 = private unnamed_addr constant [29 x i8] c"Doesn't have any child node\0A\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.33 = private unnamed_addr constant [31 x i8] c"%pOF error reading port_id %d\0A\00", align 1
@.str.34 = private unnamed_addr constant [29 x i8] c"%pOF has invalid port_id %u\0A\00", align 1
@.str.35 = private unnamed_addr constant [37 x i8] c"%pOF: Error retrieving port phy: %d\0A\00", align 1
@.str.36 = private unnamed_addr constant [44 x i8] c"%pOF failed to register fixed-link phy: %d\0A\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"phy-handle\00", align 1
@.str.38 = private unnamed_addr constant [19 x i8] c"%pOF no phy found\0A\00", align 1
@.str.39 = private unnamed_addr constant [27 x i8] c"%pOF read phy-mode err %d\0A\00", align 1
@.str.40 = private unnamed_addr constant [18 x i8] c"ti,dual-emac-pvid\00", align 1
@.str.41 = private unnamed_addr constant [40 x i8] c"%pOF Missing dual_emac_res_vlan in DT.\0A\00", align 1
@.str.42 = private unnamed_addr constant [32 x i8] c"%pOF Using %d as Reserved VLAN\0A\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"AM33xx\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"ES1.0\00", align 1
@.str.45 = private unnamed_addr constant [35 x i8] c"drivers/net/ethernet/ti/cpsw_new.c\00", align 1
@.str.46 = private unnamed_addr constant [29 x i8] c"error allocating net_device\0A\00", align 1
@.str.47 = private unnamed_addr constant [22 x i8] c"Detected MACID = %pM\0A\00", align 1
@.str.48 = private unnamed_addr constant [20 x i8] c"Random MACID = %pM\0A\00", align 1
@cpsw_ethtool_ops = internal constant %struct.ethtool_ops { i8 0, i32 1, i32 0, ptr @cpsw_get_drvinfo, ptr @cpsw_get_regs_len, ptr @cpsw_get_regs, ptr @cpsw_get_wol, ptr @cpsw_set_wol, ptr @cpsw_get_msglevel, ptr @cpsw_set_msglevel, ptr @cpsw_nway_reset, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr @cpsw_get_coalesce, ptr @cpsw_set_coalesce, ptr @cpsw_get_ringparam, ptr @cpsw_set_ringparam, ptr null, ptr @cpsw_get_pauseparam, ptr @cpsw_set_pauseparam, ptr null, ptr @cpsw_get_strings, ptr null, ptr @cpsw_get_ethtool_stats, ptr @cpsw_ethtool_op_begin, ptr @cpsw_ethtool_op_complete, ptr null, ptr null, ptr @cpsw_get_sset_count, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cpsw_get_channels, ptr @cpsw_set_channels, ptr null, ptr null, ptr null, ptr @cpsw_get_ts_info, ptr null, ptr null, ptr @cpsw_get_eee, ptr @cpsw_set_eee, ptr null, ptr null, ptr null, ptr null, ptr @cpsw_get_link_ksettings, ptr @cpsw_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.49 = private unnamed_addr constant [4 x i8] c"2.0\00", align 1
@cpsw_netdevice_nb = internal global %struct.notifier_block { ptr @cpsw_netdevice_event, ptr null, i32 0 }, section ".data..read_mostly", align 4
@.str.50 = private unnamed_addr constant [35 x i8] c"can't register netdevice notifier\0A\00", align 1
@cpsw_devlink_ops = internal constant %struct.devlink_ops zeroinitializer, align 4
@cpsw_devlink_params = internal constant [2 x %struct.devlink_param] [%struct.devlink_param { i32 17, ptr @.str.52, i8 0, i32 4, i32 1, ptr @cpsw_dl_switch_mode_get, ptr @cpsw_dl_switch_mode_set, ptr null }, %struct.devlink_param { i32 18, ptr @.str.53, i8 0, i32 4, i32 1, ptr @cpsw_dl_ale_ctrl_get, ptr @cpsw_dl_ale_ctrl_set, ptr null }], align 4
@.str.51 = private unnamed_addr constant [27 x i8] c"DL params reg fail ret:%d\0A\00", align 1
@init_net = external dso_local global %struct.net, align 64
@.str.52 = private unnamed_addr constant [12 x i8] c"switch_mode\00", align 1
@.str.53 = private unnamed_addr constant [11 x i8] c"ale_bypass\00", align 1
@.str.54 = private unnamed_addr constant [51 x i8] c"Remove ports from BR before disabling switch mode\0A\00", align 1
@.str.55 = private unnamed_addr constant [20 x i8] c"Enable switch mode\0A\00", align 1
@.str.56 = private unnamed_addr constant [21 x i8] c"Disable switch mode\0A\00", align 1
@.str.57 = private unnamed_addr constant [36 x i8] c"cpsw: err registering net device%d\0A\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_description496, ptr @__UNIQUE_ID_file494, ptr @__UNIQUE_ID_license495, ptr @__exitcall_cpsw_driver_exit, ptr @__initcall__kmod_ti_cpsw_new__493_2127_cpsw_driver_init6, ptr @cpsw_driver_exit], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @cpsw_port_dev_check(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, @cpsw_netdev_ops
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %0, i32 1996
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.cpsw_common, ptr %7, i32 0, i32 1, i32 8
  %9 = load i8, ptr %8, align 2, !range !8
  %10 = icmp eq i8 %9, 0
  br label %11

11:                                               ; preds = %5, %1
  %12 = phi i1 [ %10, %5 ], [ false, %1 ]
  ret i1 %12
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @cpsw_driver_init() #2 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @cpsw_driver, ptr noundef null) #13
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @cpsw_driver_exit() #2 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @cpsw_driver) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpsw_ndo_open(ptr noundef %0) #4 {
  %2 = alloca %struct.ethtool_coalesce, align 4
  %3 = getelementptr i8, ptr %0, i32 1408
  %4 = getelementptr i8, ptr %0, i32 1996
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %0, i32 1412
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.cpsw_common, ptr %5, i32 0, i32 1, i32 8
  %9 = load i8, ptr %8, align 2, !range !8
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %10, ptr @.str.1, ptr @.str.2
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str, ptr noundef nonnull %11) #14
  %12 = load ptr, ptr %5, align 8
  %13 = tail call i32 @__pm_runtime_resume(ptr noundef %12, i32 noundef 4) #13
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load ptr, ptr %5, align 8
  %17 = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %17) #13, !srcloc !10
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %17, ptr %17, i32 0, i32 -1, ptr elementtype(i32) %17) #13, !srcloc !11
  %19 = extractvalue { i32, i32, i32 } %18, 0
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %266, label %21

21:                                               ; preds = %15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !12
  br label %266

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.cpsw_common, ptr %5, i32 0, i32 26
  %24 = load i32, ptr %23, align 4
  %25 = tail call i32 @netif_set_real_num_tx_queues(ptr noundef %0, i32 noundef %24) #13
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.3) #14
  br label %262

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.cpsw_common, ptr %5, i32 0, i32 25
  %31 = load i32, ptr %30, align 8
  %32 = tail call i32 @netif_set_real_num_rx_queues(ptr noundef %0, i32 noundef %31) #13
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %29
  %35 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.4) #14
  br label %262

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.cpsw_common, ptr %5, i32 0, i32 28
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %96

40:                                               ; preds = %36
  %41 = load ptr, ptr %4, align 4
  %42 = getelementptr inbounds %struct.cpsw_common, ptr %41, i32 0, i32 4
  %43 = load ptr, ptr %42, align 8
  %44 = getelementptr inbounds %struct.cpsw_ss_regs, ptr %43, i32 0, i32 2
  tail call void @soft_reset(ptr noundef nonnull @.str.6, ptr noundef %44) #13
  %45 = getelementptr inbounds %struct.cpsw_common, ptr %41, i32 0, i32 17
  %46 = load ptr, ptr %45, align 4
  tail call void @cpsw_ale_start(ptr noundef %46) #13
  %47 = load ptr, ptr %45, align 4
  %48 = tail call i32 @cpsw_ale_control_set(ptr noundef %47, i32 noundef 0, i32 noundef 9, i32 noundef 1) #13
  %49 = load ptr, ptr %42, align 8
  %50 = getelementptr inbounds %struct.cpsw_ss_regs, ptr %49, i32 0, i32 1
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #13, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !14
  %52 = or i32 %51, 6
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !15
  tail call void @arm_heavy_mb() #13
  %53 = load ptr, ptr %42, align 8
  %54 = getelementptr inbounds %struct.cpsw_ss_regs, ptr %53, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %52) #13, !srcloc !16
  %55 = getelementptr inbounds %struct.cpsw_common, ptr %41, i32 0, i32 7
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.cpsw_host_regs, ptr %56, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 1985229328) #13, !srcloc !16
  %58 = load ptr, ptr %55, align 4
  %59 = getelementptr inbounds %struct.cpsw_host_regs, ptr %58, i32 0, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 0) #13, !srcloc !16
  %60 = load ptr, ptr %42, align 8
  %61 = getelementptr inbounds %struct.cpsw_ss_regs, ptr %60, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 0) #13, !srcloc !16
  %62 = load ptr, ptr %42, align 8
  %63 = getelementptr inbounds %struct.cpsw_ss_regs, ptr %62, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 7) #13, !srcloc !16
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !17
  tail call void @arm_heavy_mb() #13
  %64 = load ptr, ptr %42, align 8
  %65 = getelementptr inbounds %struct.cpsw_ss_regs, ptr %64, i32 0, i32 9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 7) #13, !srcloc !16
  %66 = getelementptr inbounds %struct.cpsw_common, ptr %41, i32 0, i32 1, i32 8
  %67 = load i8, ptr %66, align 2, !range !8
  %68 = icmp eq i8 %67, 0
  %69 = getelementptr inbounds %struct.cpsw_common, ptr %41, i32 0, i32 1, i32 7
  %70 = load i16, ptr %69, align 4
  %71 = zext i16 %70 to i32
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  %72 = load ptr, ptr %55, align 4
  %73 = getelementptr inbounds %struct.cpsw_host_regs, ptr %72, i32 0, i32 2
  br i1 %68, label %74, label %83

74:                                               ; preds = %40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 0) #13, !srcloc !16
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !18
  tail call void @arm_heavy_mb() #13
  %75 = load ptr, ptr %55, align 4
  %76 = getelementptr inbounds %struct.cpsw_host_regs, ptr %75, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 %71) #13, !srcloc !16
  %77 = load ptr, ptr %45, align 4
  %78 = tail call i32 @cpsw_ale_add_vlan(ptr noundef %77, i16 noundef zeroext %70, i32 noundef 7, i32 noundef 7, i32 noundef 7, i32 noundef 6) #13
  %79 = load ptr, ptr %45, align 4
  %80 = tail call i32 @cpsw_ale_add_mcast(ptr noundef %79, ptr noundef nonnull @cpsw_init_stp_ale_entry.stpa, i32 noundef 1, i32 noundef 4, i16 noundef zeroext 0, i32 noundef 1) #13
  %81 = load ptr, ptr %45, align 4
  %82 = tail call i32 @cpsw_ale_control_set(ptr noundef %81, i32 noundef 0, i32 noundef 3, i32 noundef 1) #13
  br label %90

83:                                               ; preds = %40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 65536) #13, !srcloc !16
  %84 = load ptr, ptr %45, align 4
  %85 = tail call i32 @cpsw_ale_control_set(ptr noundef %84, i32 noundef 0, i32 noundef 3, i32 noundef 0) #13
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !19
  tail call void @arm_heavy_mb() #13
  %86 = load ptr, ptr %55, align 4
  %87 = getelementptr inbounds %struct.cpsw_host_regs, ptr %86, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 %71) #13, !srcloc !16
  %88 = load ptr, ptr %45, align 4
  %89 = tail call i32 @cpsw_ale_add_vlan(ptr noundef %88, i16 noundef zeroext %70, i32 noundef 7, i32 noundef 7, i32 noundef 0, i32 noundef 0) #13
  br label %90

90:                                               ; preds = %83, %74
  %91 = phi i32 [ 1, %83 ], [ 0, %74 ]
  %92 = load ptr, ptr %45, align 4
  %93 = tail call i32 @cpsw_ale_control_set(ptr noundef %92, i32 noundef 0, i32 noundef 15, i32 noundef %91) #13
  %94 = load ptr, ptr %45, align 4
  %95 = tail call i32 @cpsw_ale_control_set(ptr noundef %94, i32 noundef 0, i32 noundef 12, i32 noundef 3) #13
  br label %96

96:                                               ; preds = %90, %36
  %97 = getelementptr inbounds %struct.cpsw_common, ptr %5, i32 0, i32 13
  %98 = load ptr, ptr %97, align 4
  %99 = getelementptr i8, ptr %0, i32 1992
  %100 = load i32, ptr %99, align 8
  %101 = add i32 %100, -1
  %102 = getelementptr %struct.cpsw_slave, ptr %98, i32 %101
  %103 = load ptr, ptr %4, align 4
  %104 = getelementptr %struct.cpsw_slave, ptr %98, i32 %101, i32 7
  %105 = load ptr, ptr %104, align 4
  tail call void @cpsw_sl_reset(ptr noundef %105, i32 noundef 100) #13
  %106 = load ptr, ptr %104, align 4
  tail call void @cpsw_sl_ctl_reset(ptr noundef %106) #13
  %107 = load ptr, ptr %104, align 4
  tail call void @cpsw_sl_reg_write(ptr noundef %107, i32 noundef 9, i32 noundef 1985229328) #13
  %108 = getelementptr inbounds %struct.cpsw_common, ptr %103, i32 0, i32 8
  %109 = load i32, ptr %108, align 8
  switch i32 %109, label %119 [
    i32 1638666, label %110
    i32 1638668, label %114
    i32 1638671, label %114
    i32 1638674, label %114
  ]

110:                                              ; preds = %96
  %111 = load ptr, ptr %102, align 4
  %112 = getelementptr i8, ptr %111, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %112, i32 857870592) #13, !srcloc !16
  %113 = load ptr, ptr %102, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %113, i32 245) #13, !srcloc !16
  br label %119

114:                                              ; preds = %96, %96, %96
  %115 = load ptr, ptr %102, align 4
  %116 = getelementptr i8, ptr %115, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %116, i32 857870592) #13, !srcloc !16
  %117 = load ptr, ptr %102, align 4
  %118 = getelementptr i8, ptr %117, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %118, i32 245) #13, !srcloc !16
  br label %119

119:                                              ; preds = %114, %110, %96
  %120 = load ptr, ptr %104, align 4
  %121 = getelementptr inbounds %struct.cpsw_common, ptr %103, i32 0, i32 11
  %122 = load i32, ptr %121, align 4
  tail call void @cpsw_sl_reg_write(ptr noundef %120, i32 noundef 4, i32 noundef %122) #13
  tail call void @cpsw_set_slave_mac(ptr noundef %102, ptr noundef %3) #13
  %123 = getelementptr %struct.cpsw_slave, ptr %98, i32 %101, i32 2
  store i32 0, ptr %123, align 4
  %124 = getelementptr inbounds %struct.cpsw_common, ptr %103, i32 0, i32 1, i32 8
  %125 = load i8, ptr %124, align 2, !range !8
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %127, label %160

127:                                              ; preds = %119
  %128 = load i32, ptr %99, align 8
  %129 = shl nuw i32 1, %128
  %130 = or i32 %129, 1
  %131 = load ptr, ptr %4, align 4
  %132 = getelementptr inbounds %struct.cpsw_common, ptr %131, i32 0, i32 17
  %133 = load ptr, ptr %132, align 4
  %134 = tail call i32 @cpsw_ale_control_set(ptr noundef %133, i32 noundef %128, i32 noundef 14, i32 noundef 0) #13
  %135 = load ptr, ptr %132, align 4
  %136 = load i32, ptr %99, align 8
  %137 = tail call i32 @cpsw_ale_control_set(ptr noundef %135, i32 noundef %136, i32 noundef 15, i32 noundef 0) #13
  %138 = load ptr, ptr %132, align 4
  %139 = load i32, ptr %99, align 8
  %140 = tail call i32 @cpsw_ale_control_set(ptr noundef %138, i32 noundef %139, i32 noundef 16, i32 noundef 1) #13
  %141 = load ptr, ptr %132, align 4
  %142 = load ptr, ptr %3, align 64
  %143 = getelementptr inbounds %struct.net_device, ptr %142, i32 0, i32 83
  %144 = getelementptr %struct.cpsw_slave, ptr %98, i32 %101, i32 6
  %145 = load i32, ptr %144, align 4
  %146 = trunc i32 %145 to i16
  %147 = tail call i32 @cpsw_ale_add_mcast(ptr noundef %141, ptr noundef %143, i32 noundef %130, i32 noundef 8, i16 noundef zeroext %146, i32 noundef 3) #13
  %148 = load ptr, ptr %132, align 4
  %149 = getelementptr i8, ptr %0, i32 1420
  %150 = load i32, ptr %144, align 4
  %151 = trunc i32 %150 to i16
  %152 = tail call i32 @cpsw_ale_add_ucast(ptr noundef %148, ptr noundef %149, i32 noundef 0, i32 noundef 8, i16 noundef zeroext %151) #13
  %153 = getelementptr inbounds %struct.cpsw_common, ptr %131, i32 0, i32 8
  %154 = load i32, ptr %153, align 8
  %155 = icmp eq i32 %154, 1638666
  %156 = select i1 %155, i32 12, i32 20
  %157 = load i32, ptr %144, align 4
  %158 = load ptr, ptr %102, align 4
  %159 = getelementptr i8, ptr %158, i32 %156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %159, i32 %157) #13, !srcloc !16
  br label %161

160:                                              ; preds = %119
  tail call fastcc void @cpsw_port_add_dual_emac_def_ale_entries(ptr noundef %3, ptr noundef %102) #13
  br label %161

161:                                              ; preds = %160, %127
  %162 = getelementptr %struct.cpsw_slave, ptr %98, i32 %101, i32 3
  %163 = load ptr, ptr %162, align 4
  %164 = getelementptr inbounds %struct.cpsw_slave_data, ptr %163, i32 0, i32 1
  %165 = load ptr, ptr %164, align 4
  %166 = icmp eq ptr %165, null
  br i1 %166, label %167, label %174

167:                                              ; preds = %161
  %168 = load ptr, ptr %6, align 4
  %169 = getelementptr %struct.cpsw_slave, ptr %98, i32 %101, i32 1
  %170 = load i32, ptr %169, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %168, ptr noundef nonnull @.str.7, i32 noundef %170) #14
  %171 = load ptr, ptr %162, align 4
  %172 = getelementptr inbounds %struct.cpsw_slave_data, ptr %171, i32 0, i32 1
  %173 = load ptr, ptr %172, align 4
  br label %174

174:                                              ; preds = %167, %161
  %175 = phi ptr [ %173, %167 ], [ %165, %161 ]
  %176 = phi ptr [ %171, %167 ], [ %163, %161 ]
  %177 = load ptr, ptr %3, align 64
  %178 = getelementptr inbounds %struct.cpsw_slave_data, ptr %176, i32 0, i32 3
  %179 = load i32, ptr %178, align 4
  %180 = tail call ptr @of_phy_connect(ptr noundef %177, ptr noundef %175, ptr noundef nonnull @cpsw_adjust_link, i32 noundef 0, i32 noundef %179) #13
  %181 = icmp eq ptr %180, null
  br i1 %181, label %182, label %189

182:                                              ; preds = %174
  %183 = load ptr, ptr %6, align 4
  %184 = load ptr, ptr %162, align 4
  %185 = getelementptr inbounds %struct.cpsw_slave_data, ptr %184, i32 0, i32 1
  %186 = load ptr, ptr %185, align 4
  %187 = getelementptr %struct.cpsw_slave, ptr %98, i32 %101, i32 1
  %188 = load i32, ptr %187, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %183, ptr noundef nonnull @.str.8, ptr noundef %186, i32 noundef %188) #14
  br label %198

189:                                              ; preds = %174
  %190 = getelementptr %struct.cpsw_slave, ptr %98, i32 %101, i32 4
  store ptr %180, ptr %190, align 4
  tail call void @phy_attached_info(ptr noundef nonnull %180) #13
  %191 = load ptr, ptr %190, align 4
  tail call void @phy_start(ptr noundef %191) #13
  %192 = load ptr, ptr %162, align 4
  %193 = getelementptr inbounds %struct.cpsw_slave_data, ptr %192, i32 0, i32 6
  %194 = load ptr, ptr %193, align 4
  %195 = getelementptr inbounds %struct.cpsw_slave_data, ptr %192, i32 0, i32 3
  %196 = load i32, ptr %195, align 4
  %197 = tail call i32 @phy_set_mode_ext(ptr noundef %194, i32 noundef 15, i32 noundef %196) #13
  br label %198

198:                                              ; preds = %189, %182
  %199 = load i32, ptr %37, align 4
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %236

201:                                              ; preds = %198
  %202 = tail call i32 @cpsw_create_xdp_rxqs(ptr noundef %5) #13
  %203 = icmp slt i32 %202, 0
  br i1 %203, label %259, label %204

204:                                              ; preds = %201
  %205 = tail call i32 @cpsw_fill_rx_channels(ptr noundef %3) #13
  %206 = icmp slt i32 %205, 0
  br i1 %206, label %259, label %207

207:                                              ; preds = %204
  %208 = getelementptr inbounds %struct.cpsw_common, ptr %5, i32 0, i32 23
  %209 = load ptr, ptr %208, align 8
  %210 = icmp eq ptr %209, null
  br i1 %210, label %220, label %211

211:                                              ; preds = %207
  %212 = tail call i32 @cpts_register(ptr noundef nonnull %209) #13
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %216, label %214

214:                                              ; preds = %211
  %215 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %215, ptr noundef nonnull @.str.5) #14
  br label %220

216:                                              ; preds = %211
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !20
  tail call void @arm_heavy_mb() #13
  %217 = getelementptr inbounds %struct.cpsw_common, ptr %5, i32 0, i32 5
  %218 = load ptr, ptr %217, align 4
  %219 = getelementptr inbounds %struct.cpsw_wr_regs, ptr %218, i32 0, i32 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %219, i32 16) #13, !srcloc !16
  br label %220

220:                                              ; preds = %216, %214, %207
  %221 = getelementptr inbounds %struct.cpsw_common, ptr %5, i32 0, i32 2
  tail call void @napi_enable(ptr noundef %221) #13
  %222 = getelementptr inbounds %struct.cpsw_common, ptr %5, i32 0, i32 3
  tail call void @napi_enable(ptr noundef %222) #13
  %223 = getelementptr inbounds %struct.cpsw_common, ptr %5, i32 0, i32 20
  %224 = load i8, ptr %223, align 2, !range !8
  %225 = icmp eq i8 %224, 0
  br i1 %225, label %229, label %226

226:                                              ; preds = %220
  store i8 0, ptr %223, align 2
  %227 = getelementptr %struct.cpsw_common, ptr %5, i32 0, i32 21, i32 1
  %228 = load i32, ptr %227, align 4
  tail call void @enable_irq(i32 noundef %228) #13
  br label %229

229:                                              ; preds = %226, %220
  %230 = getelementptr inbounds %struct.cpsw_common, ptr %5, i32 0, i32 19
  %231 = load i8, ptr %230, align 1, !range !8
  %232 = icmp eq i8 %231, 0
  br i1 %232, label %236, label %233

233:                                              ; preds = %229
  store i8 0, ptr %230, align 1
  %234 = getelementptr inbounds %struct.cpsw_common, ptr %5, i32 0, i32 21
  %235 = load i32, ptr %234, align 4
  tail call void @enable_irq(i32 noundef %235) #13
  br label %236

236:                                              ; preds = %233, %229, %198
  %237 = load ptr, ptr %4, align 4
  %238 = getelementptr inbounds %struct.cpsw_common, ptr %237, i32 0, i32 13
  %239 = load ptr, ptr %238, align 4
  %240 = load i32, ptr %99, align 8
  %241 = add i32 %240, -1
  %242 = getelementptr %struct.cpsw_slave, ptr %239, i32 %241
  tail call void @cpsw_mqprio_resume(ptr noundef %242, ptr noundef %3) #13
  %243 = load ptr, ptr %238, align 4
  %244 = load i32, ptr %99, align 8
  %245 = add i32 %244, -1
  %246 = getelementptr %struct.cpsw_slave, ptr %243, i32 %245
  tail call void @cpsw_cbs_resume(ptr noundef %246, ptr noundef %3) #13
  %247 = getelementptr inbounds %struct.cpsw_common, ptr %5, i32 0, i32 9
  %248 = load i32, ptr %247, align 4
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %253, label %250

250:                                              ; preds = %236
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %2) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(92) %2, i8 0, i32 92, i1 false), !annotation !21
  %251 = getelementptr inbounds %struct.ethtool_coalesce, ptr %2, i32 0, i32 1
  store i32 %248, ptr %251, align 4
  %252 = call i32 @cpsw_set_coalesce(ptr noundef %0, ptr noundef nonnull %2, ptr noundef null, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %2) #13
  br label %253

253:                                              ; preds = %250, %236
  %254 = getelementptr inbounds %struct.cpsw_common, ptr %5, i32 0, i32 14
  %255 = load ptr, ptr %254, align 8
  %256 = call i32 @cpdma_ctlr_start(ptr noundef %255) #13
  call void @cpsw_intr_enable(ptr noundef %5) #13
  %257 = load i32, ptr %37, align 4
  %258 = add i32 %257, 1
  store i32 %258, ptr %37, align 4
  br label %266

259:                                              ; preds = %204, %201
  %260 = phi i32 [ %202, %201 ], [ %205, %204 ]
  %261 = tail call i32 @cpsw_ndo_stop(ptr noundef %0)
  br label %262

262:                                              ; preds = %259, %34, %27
  %263 = phi i32 [ %25, %27 ], [ %32, %34 ], [ %260, %259 ]
  %264 = load ptr, ptr %5, align 8
  %265 = tail call i32 @__pm_runtime_idle(ptr noundef %264, i32 noundef 4) #13
  br label %266

266:                                              ; preds = %262, %253, %21, %15
  %267 = phi i32 [ %263, %262 ], [ 0, %253 ], [ %13, %15 ], [ %13, %21 ]
  ret i32 %267
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpsw_ndo_stop(ptr noundef %0) #4 {
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
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %14, ptr noundef nonnull @.str.10) #14
  br label %15

15:                                               ; preds = %12, %9, %1
  %16 = getelementptr inbounds %struct.cpsw_common, ptr %4, i32 0, i32 13
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %0, i32 1992
  %19 = load i32, ptr %18, align 8
  %20 = add i32 %19, -1
  %21 = getelementptr %struct.cpsw_slave, ptr %17, i32 %20, i32 4
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %15
  tail call void @phy_stop(ptr noundef nonnull %22) #13
  br label %25

25:                                               ; preds = %24, %15
  %26 = load ptr, ptr %2, align 64
  tail call void @netif_tx_stop_all_queues(ptr noundef %26) #13
  %27 = load ptr, ptr %21, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  tail call void @phy_disconnect(ptr noundef nonnull %27) #13
  store ptr null, ptr %21, align 4
  br label %30

30:                                               ; preds = %29, %25
  %31 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 61
  tail call void @__hw_addr_ref_unsync_dev(ptr noundef %31, ptr noundef %0, ptr noundef nonnull @cpsw_purge_all_mc) #13
  %32 = getelementptr inbounds %struct.cpsw_common, ptr %4, i32 0, i32 28
  %33 = load i32, ptr %32, align 4
  %34 = icmp slt i32 %33, 2
  br i1 %34, label %35, label %45

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.cpsw_common, ptr %4, i32 0, i32 2
  tail call void @napi_disable(ptr noundef %36) #13
  %37 = getelementptr inbounds %struct.cpsw_common, ptr %4, i32 0, i32 3
  tail call void @napi_disable(ptr noundef %37) #13
  %38 = getelementptr inbounds %struct.cpsw_common, ptr %4, i32 0, i32 23
  %39 = load ptr, ptr %38, align 8
  tail call void @cpts_unregister(ptr noundef %39) #13
  tail call void @cpsw_intr_disable(ptr noundef %4) #13
  %40 = getelementptr inbounds %struct.cpsw_common, ptr %4, i32 0, i32 14
  %41 = load ptr, ptr %40, align 8
  %42 = tail call i32 @cpdma_ctlr_stop(ptr noundef %41) #13
  %43 = getelementptr inbounds %struct.cpsw_common, ptr %4, i32 0, i32 17
  %44 = load ptr, ptr %43, align 4
  tail call void @cpsw_ale_stop(ptr noundef %44) #13
  tail call void @cpsw_destroy_xdp_rxqs(ptr noundef %4) #13
  br label %45

45:                                               ; preds = %35, %30
  %46 = tail call i32 @cpsw_need_resplit(ptr noundef %4) #13
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  tail call void @cpsw_split_res(ptr noundef %4) #13
  br label %49

49:                                               ; preds = %48, %45
  %50 = load i32, ptr %32, align 4
  %51 = add i32 %50, -1
  store i32 %51, ptr %32, align 4
  %52 = load ptr, ptr %4, align 8
  %53 = tail call i32 @__pm_runtime_idle(ptr noundef %52, i32 noundef 4) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpsw_ndo_start_xmit(ptr noundef %0, ptr noundef %1) #4 {
  %3 = getelementptr i8, ptr %1, i32 1996
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %1, i32 2004
  %6 = load volatile i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %8 = load i32, ptr %7, align 8
  %9 = icmp ugt i32 %6, %8
  br i1 %9, label %10, label %40, !prof !22

10:                                               ; preds = %2
  %11 = sub i32 %6, %8
  %12 = tail call i32 @__skb_pad(ptr noundef %0, i32 noundef %11, i1 noundef zeroext true) #13
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18, !prof !23

18:                                               ; preds = %14
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #13, !srcloc !24
  unreachable

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr i8, ptr %21, i32 %11
  store ptr %22, ptr %20, align 8
  %23 = load i32, ptr %7, align 8
  %24 = add i32 %23, %11
  store i32 %24, ptr %7, align 8
  br label %40

25:                                               ; preds = %10
  %26 = getelementptr i8, ptr %1, i32 1416
  %27 = load i32, ptr %26, align 8
  %28 = and i32 %27, 128
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %25
  %31 = tail call i32 @net_ratelimit() #13
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = getelementptr i8, ptr %1, i32 1412
  %35 = load ptr, ptr %34, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.11) #14
  br label %36

36:                                               ; preds = %33, %30, %25
  %37 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 7
  %38 = load i32, ptr %37, align 4
  %39 = add i32 %38, 1
  store i32 %39, ptr %37, align 4
  br label %113

40:                                               ; preds = %19, %2
  %41 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.skb_shared_info, ptr %42, i32 0, i32 3
  %44 = load i8, ptr %43, align 1
  %45 = and i8 %44, 1
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %59, label %47

47:                                               ; preds = %40
  %48 = getelementptr i8, ptr %1, i32 1452
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %47
  %52 = tail call i32 @ptp_classify_raw(ptr noundef %0) #13
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %51
  %55 = load ptr, ptr %41, align 4
  %56 = getelementptr inbounds %struct.skb_shared_info, ptr %55, i32 0, i32 3
  %57 = load i8, ptr %56, align 1
  %58 = or i8 %57, 4
  store i8 %58, ptr %56, align 1
  br label %59

59:                                               ; preds = %54, %51, %47, %40
  %60 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 9
  %61 = load i16, ptr %60, align 4
  %62 = zext i16 %61 to i32
  %63 = getelementptr inbounds %struct.cpsw_common, ptr %4, i32 0, i32 26
  %64 = load i32, ptr %63, align 4
  %65 = icmp sgt i32 %64, %62
  br i1 %65, label %68, label %66

66:                                               ; preds = %59
  %67 = srem i32 %62, %64
  br label %68

68:                                               ; preds = %66, %59
  %69 = phi i32 [ %67, %66 ], [ %62, %59 ]
  %70 = getelementptr %struct.cpsw_common, ptr %4, i32 0, i32 15, i32 %69
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 87
  %73 = load ptr, ptr %72, align 64
  %74 = getelementptr %struct.netdev_queue, ptr %73, i32 %69
  %75 = load ptr, ptr %41, align 4
  %76 = getelementptr inbounds %struct.skb_shared_info, ptr %75, i32 0, i32 3
  %77 = load i8, ptr %76, align 1
  %78 = and i8 %77, 2
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %68
  tail call void @skb_tstamp_tx(ptr noundef %0, ptr noundef null) #13
  br label %81

81:                                               ; preds = %80, %68
  %82 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %83 = load ptr, ptr %82, align 4
  %84 = load i32, ptr %7, align 8
  %85 = getelementptr i8, ptr %1, i32 1992
  %86 = load i32, ptr %85, align 8
  %87 = tail call i32 @cpdma_chan_submit(ptr noundef %71, ptr noundef %0, ptr noundef %83, i32 noundef %84, i32 noundef %86) #13
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %100, label %89, !prof !23

89:                                               ; preds = %81
  %90 = getelementptr i8, ptr %1, i32 1416
  %91 = load i32, ptr %90, align 8
  %92 = and i32 %91, 128
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %106, label %94

94:                                               ; preds = %89
  %95 = tail call i32 @net_ratelimit() #13
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %106, label %97

97:                                               ; preds = %94
  %98 = getelementptr i8, ptr %1, i32 1412
  %99 = load ptr, ptr %98, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %99, ptr noundef nonnull @.str.12) #14
  br label %106

100:                                              ; preds = %81
  %101 = tail call zeroext i1 @cpdma_check_free_tx_desc(ptr noundef %71) #13
  br i1 %101, label %113, label %102, !prof !23

102:                                              ; preds = %100
  %103 = getelementptr %struct.netdev_queue, ptr %73, i32 %69, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %103) #13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !25
  %104 = tail call zeroext i1 @cpdma_check_free_tx_desc(ptr noundef %71) #13
  br i1 %104, label %105, label %113

105:                                              ; preds = %102
  tail call void @netif_tx_wake_queue(ptr noundef %74) #13
  br label %113

106:                                              ; preds = %97, %94, %89
  %107 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 7
  %108 = load i32, ptr %107, align 4
  %109 = add i32 %108, 1
  store i32 %109, ptr %107, align 4
  %110 = getelementptr %struct.netdev_queue, ptr %73, i32 %69, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %110) #13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !26
  %111 = tail call zeroext i1 @cpdma_check_free_tx_desc(ptr noundef %71) #13
  br i1 %111, label %112, label %113

112:                                              ; preds = %106
  tail call void @netif_tx_wake_queue(ptr noundef %74) #13
  br label %113

113:                                              ; preds = %112, %106, %105, %102, %100, %36
  %114 = phi i32 [ 1, %36 ], [ 0, %102 ], [ 0, %105 ], [ 0, %100 ], [ 16, %112 ], [ 16, %106 ]
  ret i32 %114
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cpsw_ndo_set_rx_mode(ptr noundef %0) #4 {
  %2 = getelementptr i8, ptr %0, i32 1996
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 14
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 256
  %7 = icmp eq i32 %6, 0
  %8 = getelementptr inbounds %struct.cpsw_common, ptr %3, i32 0, i32 1, i32 8
  %9 = load i8, ptr %8, align 2, !range !8
  %10 = icmp eq i8 %9, 0
  br i1 %7, label %21, label %11

11:                                               ; preds = %1
  br i1 %10, label %16, label %12

12:                                               ; preds = %11
  %13 = getelementptr inbounds %struct.cpsw_common, ptr %3, i32 0, i32 17
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 @cpsw_ale_control_set(ptr noundef %14, i32 noundef 0, i32 noundef 3, i32 noundef 1) #13
  br label %16

16:                                               ; preds = %12, %11
  %17 = getelementptr inbounds %struct.cpsw_common, ptr %3, i32 0, i32 17
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %0, i32 1992
  %20 = load i32, ptr %19, align 8
  tail call void @cpsw_ale_set_allmulti(ptr noundef %18, i32 noundef 512, i32 noundef %20) #13
  br label %61

21:                                               ; preds = %1
  br i1 %10, label %52, label %22

22:                                               ; preds = %21
  %23 = getelementptr inbounds %struct.cpsw_common, ptr %3, i32 0, i32 1, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %45, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.cpsw_common, ptr %3, i32 0, i32 13
  %28 = load ptr, ptr %27, align 4
  br label %29

29:                                               ; preds = %41, %26
  %30 = phi i32 [ 0, %26 ], [ %43, %41 ]
  %31 = phi i1 [ false, %26 ], [ %42, %41 ]
  %32 = getelementptr %struct.cpsw_slave, ptr %28, i32 %30, i32 5
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.net_device, ptr %33, i32 0, i32 14
  %37 = load i32, ptr %36, align 8
  %38 = and i32 %37, 256
  %39 = icmp ne i32 %38, 0
  %40 = select i1 %39, i1 true, i1 %31
  br label %41

41:                                               ; preds = %35, %29
  %42 = phi i1 [ %31, %29 ], [ %40, %35 ]
  %43 = add nuw i32 %30, 1
  %44 = icmp eq i32 %43, %24
  br i1 %44, label %45, label %29

45:                                               ; preds = %41, %22
  %46 = phi i1 [ false, %22 ], [ %42, %41 ]
  %47 = getelementptr inbounds %struct.cpsw_common, ptr %3, i32 0, i32 17
  %48 = load ptr, ptr %47, align 4
  %49 = zext i1 %46 to i32
  %50 = tail call i32 @cpsw_ale_control_set(ptr noundef %48, i32 noundef 0, i32 noundef 3, i32 noundef %49) #13
  %51 = load i32, ptr %4, align 8
  br label %52

52:                                               ; preds = %45, %21
  %53 = phi i32 [ %5, %21 ], [ %51, %45 ]
  %54 = getelementptr inbounds %struct.cpsw_common, ptr %3, i32 0, i32 17
  %55 = load ptr, ptr %54, align 4
  %56 = and i32 %53, 512
  %57 = getelementptr i8, ptr %0, i32 1992
  %58 = load i32, ptr %57, align 8
  tail call void @cpsw_ale_set_allmulti(ptr noundef %55, i32 noundef %56, i32 noundef %58) #13
  %59 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 61
  %60 = tail call i32 @__hw_addr_ref_sync_dev(ptr noundef %59, ptr noundef %0, ptr noundef nonnull @cpsw_add_mc_addr, ptr noundef nonnull @cpsw_del_mc_addr) #13
  br label %61

61:                                               ; preds = %52, %16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpsw_ndo_set_mac_address(ptr noundef %0, ptr noundef %1) #4 {
  %3 = getelementptr i8, ptr %0, i32 1408
  %4 = getelementptr i8, ptr %0, i32 1996
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr @cpsw_slave_index, align 4
  %7 = tail call i32 %6(ptr noundef %5, ptr noundef %3) #13
  %8 = getelementptr inbounds %struct.sockaddr, ptr %1, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %48

12:                                               ; preds = %2
  %13 = getelementptr %struct.sockaddr, ptr %1, i32 0, i32 1, i32 4
  %14 = load i16, ptr %13, align 2
  %15 = zext i16 %14 to i32
  %16 = or i32 %9, %15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %48, label %18

18:                                               ; preds = %12
  %19 = load ptr, ptr %5, align 8
  %20 = tail call i32 @__pm_runtime_resume(ptr noundef %19, i32 noundef 4) #13
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = load ptr, ptr %5, align 8
  %24 = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %24) #13, !srcloc !10
  %25 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %24, ptr %24, i32 0, i32 -1, ptr elementtype(i32) %24) #13, !srcloc !11
  %26 = extractvalue { i32, i32, i32 } %25, 0
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %48, label %28

28:                                               ; preds = %22
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !12
  br label %48

29:                                               ; preds = %18
  %30 = getelementptr inbounds %struct.cpsw_common, ptr %5, i32 0, i32 13
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr %struct.cpsw_slave, ptr %31, i32 %7, i32 6
  %33 = load i32, ptr %32, align 4
  %34 = trunc i32 %33 to i16
  %35 = getelementptr inbounds %struct.cpsw_common, ptr %5, i32 0, i32 17
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr i8, ptr %0, i32 1420
  %38 = tail call i32 @cpsw_ale_del_ucast(ptr noundef %36, ptr noundef %37, i32 noundef 0, i32 noundef 9, i16 noundef zeroext %34) #13
  %39 = load ptr, ptr %35, align 4
  %40 = tail call i32 @cpsw_ale_add_ucast(ptr noundef %39, ptr noundef %8, i32 noundef 0, i32 noundef 9, i16 noundef zeroext %34) #13
  %41 = load i32, ptr %8, align 4
  store i32 %41, ptr %37, align 4
  %42 = load i16, ptr %13, align 2
  %43 = getelementptr i8, ptr %0, i32 1424
  store i16 %42, ptr %43, align 2
  tail call void @dev_addr_mod(ptr noundef %0, i32 noundef 0, ptr noundef %37, i32 noundef 6) #13
  %44 = load ptr, ptr %30, align 4
  %45 = getelementptr %struct.cpsw_slave, ptr %44, i32 %7
  tail call void @cpsw_set_slave_mac(ptr noundef %45, ptr noundef %3) #13
  %46 = load ptr, ptr %5, align 8
  %47 = tail call i32 @__pm_runtime_idle(ptr noundef %46, i32 noundef 5) #13
  br label %48

48:                                               ; preds = %29, %28, %22, %12, %2
  %49 = phi i32 [ 0, %29 ], [ -99, %12 ], [ %20, %22 ], [ %20, %28 ], [ -99, %2 ]
  ret i32 %49
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_ndo_ioctl(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_ndo_tx_timeout(ptr noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpsw_ndo_vlan_rx_add_vid(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2) #4 {
  %4 = getelementptr i8, ptr %0, i32 1408
  %5 = getelementptr i8, ptr %0, i32 1996
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.cpsw_common, ptr %6, i32 0, i32 1, i32 8
  %8 = load i8, ptr %7, align 2, !range !8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %82, label %10

10:                                               ; preds = %3
  %11 = zext i16 %2 to i32
  %12 = getelementptr inbounds %struct.cpsw_common, ptr %6, i32 0, i32 1, i32 7
  %13 = load i16, ptr %12, align 4
  %14 = icmp eq i16 %13, %2
  br i1 %14, label %82, label %15

15:                                               ; preds = %10
  %16 = load ptr, ptr %6, align 8
  %17 = tail call i32 @__pm_runtime_resume(ptr noundef %16, i32 noundef 4) #13
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.cpsw_common, ptr %6, i32 0, i32 1, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %45, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.cpsw_common, ptr %6, i32 0, i32 13
  %25 = load ptr, ptr %24, align 4
  br label %33

26:                                               ; preds = %15
  %27 = load ptr, ptr %6, align 8
  %28 = getelementptr inbounds %struct.device, ptr %27, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %28) #13, !srcloc !10
  %29 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %28, ptr %28, i32 0, i32 -1, ptr elementtype(i32) %28) #13, !srcloc !11
  %30 = extractvalue { i32, i32, i32 } %29, 0
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %82, label %32

32:                                               ; preds = %26
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !12
  br label %82

33:                                               ; preds = %42, %23
  %34 = phi i32 [ 0, %23 ], [ %43, %42 ]
  %35 = getelementptr %struct.cpsw_slave, ptr %25, i32 %34, i32 5
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %33
  %39 = getelementptr %struct.cpsw_slave, ptr %25, i32 %34, i32 6
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, %11
  br i1 %41, label %78, label %42

42:                                               ; preds = %38, %33
  %43 = add nuw i32 %34, 1
  %44 = icmp eq i32 %43, %21
  br i1 %44, label %45, label %33

45:                                               ; preds = %42, %19
  %46 = load ptr, ptr %5, align 4
  %47 = getelementptr i8, ptr %0, i32 1992
  %48 = load i32, ptr %47, align 8
  %49 = shl nuw i32 1, %48
  %50 = or i32 %49, 1
  %51 = load ptr, ptr %4, align 64
  %52 = getelementptr inbounds %struct.net_device, ptr %51, i32 0, i32 14
  %53 = load i32, ptr %52, align 8
  %54 = lshr i32 %53, 9
  %55 = and i32 %54, 1
  %56 = getelementptr inbounds %struct.cpsw_common, ptr %46, i32 0, i32 17
  %57 = load ptr, ptr %56, align 4
  %58 = tail call i32 @cpsw_ale_add_vlan(ptr noundef %57, i16 noundef zeroext %2, i32 noundef %50, i32 noundef 0, i32 noundef %50, i32 noundef %55) #13
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %78

60:                                               ; preds = %45
  %61 = load ptr, ptr %56, align 4
  %62 = getelementptr i8, ptr %0, i32 1420
  %63 = tail call i32 @cpsw_ale_add_ucast(ptr noundef %61, ptr noundef %62, i32 noundef 0, i32 noundef 8, i16 noundef zeroext %2) #13
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %60
  %66 = load ptr, ptr %56, align 4
  %67 = load ptr, ptr %4, align 64
  %68 = getelementptr inbounds %struct.net_device, ptr %67, i32 0, i32 83
  %69 = tail call i32 @cpsw_ale_add_mcast(ptr noundef %66, ptr noundef %68, i32 noundef 1, i32 noundef 8, i16 noundef zeroext %2, i32 noundef 0) #13
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %78, label %71

71:                                               ; preds = %65
  %72 = load ptr, ptr %56, align 4
  %73 = tail call i32 @cpsw_ale_del_ucast(ptr noundef %72, ptr noundef %62, i32 noundef 0, i32 noundef 8, i16 noundef zeroext %2) #13
  br label %74

74:                                               ; preds = %71, %60
  %75 = phi i32 [ %63, %60 ], [ %69, %71 ]
  %76 = load ptr, ptr %56, align 4
  %77 = tail call i32 @cpsw_ale_del_vlan(ptr noundef %76, i16 noundef zeroext %2, i32 noundef 0) #13
  br label %78

78:                                               ; preds = %74, %65, %45, %38
  %79 = phi i32 [ %75, %74 ], [ %58, %45 ], [ 0, %65 ], [ -22, %38 ]
  %80 = load ptr, ptr %6, align 8
  %81 = tail call i32 @__pm_runtime_idle(ptr noundef %80, i32 noundef 5) #13
  br label %82

82:                                               ; preds = %78, %32, %26, %10, %3
  %83 = phi i32 [ %79, %78 ], [ 0, %3 ], [ 0, %10 ], [ %17, %26 ], [ %17, %32 ]
  ret i32 %83
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpsw_ndo_vlan_rx_kill_vid(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2) #4 {
  %4 = getelementptr i8, ptr %0, i32 1408
  %5 = getelementptr i8, ptr %0, i32 1996
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.cpsw_common, ptr %6, i32 0, i32 1, i32 8
  %8 = load i8, ptr %7, align 2, !range !8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %77, label %10

10:                                               ; preds = %3
  %11 = zext i16 %2 to i32
  %12 = getelementptr inbounds %struct.cpsw_common, ptr %6, i32 0, i32 1, i32 7
  %13 = load i16, ptr %12, align 4
  %14 = icmp eq i16 %13, %2
  br i1 %14, label %77, label %15

15:                                               ; preds = %10
  %16 = load ptr, ptr %6, align 8
  %17 = tail call i32 @__pm_runtime_resume(ptr noundef %16, i32 noundef 4) #13
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.cpsw_common, ptr %6, i32 0, i32 1, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %45, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.cpsw_common, ptr %6, i32 0, i32 13
  %25 = load ptr, ptr %24, align 4
  br label %33

26:                                               ; preds = %15
  %27 = load ptr, ptr %6, align 8
  %28 = getelementptr inbounds %struct.device, ptr %27, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %28) #13, !srcloc !10
  %29 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %28, ptr %28, i32 0, i32 -1, ptr elementtype(i32) %28) #13, !srcloc !11
  %30 = extractvalue { i32, i32, i32 } %29, 0
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %77, label %32

32:                                               ; preds = %26
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !12
  br label %77

33:                                               ; preds = %42, %23
  %34 = phi i32 [ 0, %23 ], [ %43, %42 ]
  %35 = getelementptr %struct.cpsw_slave, ptr %25, i32 %34, i32 5
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %33
  %39 = getelementptr %struct.cpsw_slave, ptr %25, i32 %34, i32 6
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, %11
  br i1 %41, label %73, label %42

42:                                               ; preds = %38, %33
  %43 = add nuw i32 %34, 1
  %44 = icmp eq i32 %43, %21
  br i1 %44, label %45, label %33

45:                                               ; preds = %42, %19
  %46 = getelementptr inbounds %struct.cpsw_common, ptr %6, i32 0, i32 17
  %47 = load ptr, ptr %46, align 4
  %48 = tail call i32 @cpsw_ale_del_vlan(ptr noundef %47, i16 noundef zeroext %2, i32 noundef 0) #13
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %45
  %51 = getelementptr i8, ptr %0, i32 1412
  %52 = load ptr, ptr %51, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.13, i32 noundef %48) #14
  br label %53

53:                                               ; preds = %50, %45
  %54 = load ptr, ptr %46, align 4
  %55 = getelementptr i8, ptr %0, i32 1420
  %56 = tail call i32 @cpsw_ale_del_ucast(ptr noundef %54, ptr noundef %55, i32 noundef 0, i32 noundef 8, i16 noundef zeroext %2) #13
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %53
  %59 = getelementptr i8, ptr %0, i32 1412
  %60 = load ptr, ptr %59, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.14, i32 noundef %56) #14
  br label %61

61:                                               ; preds = %58, %53
  %62 = load ptr, ptr %46, align 4
  %63 = load ptr, ptr %4, align 64
  %64 = getelementptr inbounds %struct.net_device, ptr %63, i32 0, i32 83
  %65 = tail call i32 @cpsw_ale_del_mcast(ptr noundef %62, ptr noundef %64, i32 noundef 0, i32 noundef 8, i16 noundef zeroext %2) #13
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %61
  %68 = getelementptr i8, ptr %0, i32 1412
  %69 = load ptr, ptr %68, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.15, i32 noundef %65) #14
  br label %70

70:                                               ; preds = %67, %61
  %71 = load ptr, ptr %46, align 4
  %72 = tail call i32 @cpsw_ale_flush_multicast(ptr noundef %71, i32 noundef 1, i32 noundef %11) #13
  br label %73

73:                                               ; preds = %70, %38
  %74 = phi i32 [ 0, %70 ], [ -22, %38 ]
  %75 = load ptr, ptr %6, align 8
  %76 = tail call i32 @__pm_runtime_idle(ptr noundef %75, i32 noundef 5) #13
  br label %77

77:                                               ; preds = %73, %32, %26, %10, %3
  %78 = phi i32 [ %74, %73 ], [ 0, %3 ], [ 0, %10 ], [ %17, %26 ], [ %17, %32 ]
  ret i32 %78
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_ndo_setup_tc(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @cpsw_get_port_parent_id(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr i8, ptr %0, i32 1996
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.netdev_phys_item_id, ptr %1, i32 0, i32 1
  store i8 6, ptr %5, align 1
  %6 = getelementptr inbounds %struct.cpsw_common, ptr %4, i32 0, i32 33
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %1, ptr noundef align 1 dereferenceable(6) %6, i32 6, i1 false)
  ret i32 0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpsw_ndo_get_phys_port_name(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) #6 {
  %4 = getelementptr i8, ptr %0, i32 1992
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %1, i32 noundef %2, ptr noundef nonnull @.str.16, i32 noundef %5)
  %7 = icmp ult i32 %6, %2
  %8 = select i1 %7, i32 0, i32 -22
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_ndo_set_tx_maxrate(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_ndo_bpf(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpsw_ndo_xdp_xmit(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #4 {
  %5 = getelementptr i8, ptr %0, i32 1408
  %6 = icmp ult i32 %3, 2
  br i1 %6, label %7, label %28, !prof !23

7:                                                ; preds = %4
  %8 = getelementptr i8, ptr %0, i32 1992
  %9 = icmp sgt i32 %1, 0
  br i1 %9, label %10, label %28

10:                                               ; preds = %7
  %11 = getelementptr i8, ptr %0, i32 2004
  br label %12

12:                                               ; preds = %25, %10
  %13 = phi i32 [ 0, %10 ], [ %26, %25 ]
  %14 = getelementptr ptr, ptr %2, i32 %13
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.xdp_frame, ptr %15, i32 0, i32 1
  %17 = load i16, ptr %16, align 4
  %18 = zext i16 %17 to i32
  %19 = load volatile i32, ptr %11, align 4
  %20 = icmp ugt i32 %19, %18
  br i1 %20, label %28, label %21

21:                                               ; preds = %12
  %22 = load i32, ptr %8, align 8
  %23 = tail call i32 @cpsw_xdp_tx_frame(ptr noundef %5, ptr noundef %15, ptr noundef null, i32 noundef %22) #13
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = add nuw nsw i32 %13, 1
  %27 = icmp eq i32 %26, %1
  br i1 %27, label %28, label %12

28:                                               ; preds = %25, %21, %12, %7, %4
  %29 = phi i32 [ -22, %4 ], [ 0, %7 ], [ %13, %21 ], [ %13, %12 ], [ %1, %25 ]
  ret i32 %29
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_set_real_num_tx_queues(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_set_real_num_rx_queues(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_create_xdp_rxqs(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_fill_rx_channels(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpts_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_set_coalesce(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpdma_ctlr_start(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_intr_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @soft_reset(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_ale_start(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_ale_control_set(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @cpsw_init_host_port_switch(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.cpsw_common, ptr %0, i32 0, i32 1, i32 7
  %3 = load i16, ptr %2, align 4
  %4 = zext i16 %3 to i32
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !27
  tail call void @arm_heavy_mb() #13
  %5 = getelementptr inbounds %struct.cpsw_common, ptr %0, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.cpsw_host_regs, ptr %6, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 0) #13, !srcloc !16
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !18
  tail call void @arm_heavy_mb() #13
  %8 = load ptr, ptr %5, align 4
  %9 = getelementptr inbounds %struct.cpsw_host_regs, ptr %8, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %4) #13, !srcloc !16
  %10 = getelementptr inbounds %struct.cpsw_common, ptr %0, i32 0, i32 17
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @cpsw_ale_add_vlan(ptr noundef %11, i16 noundef zeroext %3, i32 noundef 7, i32 noundef 7, i32 noundef 7, i32 noundef 6) #13
  %13 = load ptr, ptr %10, align 4
  %14 = tail call i32 @cpsw_ale_add_mcast(ptr noundef %13, ptr noundef nonnull @cpsw_init_stp_ale_entry.stpa, i32 noundef 1, i32 noundef 4, i16 noundef zeroext 0, i32 noundef 1) #13
  %15 = load ptr, ptr %10, align 4
  %16 = tail call i32 @cpsw_ale_control_set(ptr noundef %15, i32 noundef 0, i32 noundef 3, i32 noundef 1) #13
  %17 = load ptr, ptr %10, align 4
  %18 = tail call i32 @cpsw_ale_control_set(ptr noundef %17, i32 noundef 0, i32 noundef 15, i32 noundef 0) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @cpsw_init_host_port_dual_mac(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.cpsw_common, ptr %0, i32 0, i32 1, i32 7
  %3 = load i16, ptr %2, align 4
  %4 = zext i16 %3 to i32
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !28
  tail call void @arm_heavy_mb() #13
  %5 = getelementptr inbounds %struct.cpsw_common, ptr %0, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.cpsw_host_regs, ptr %6, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 65536) #13, !srcloc !16
  %8 = getelementptr inbounds %struct.cpsw_common, ptr %0, i32 0, i32 17
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @cpsw_ale_control_set(ptr noundef %9, i32 noundef 0, i32 noundef 3, i32 noundef 0) #13
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !19
  tail call void @arm_heavy_mb() #13
  %11 = load ptr, ptr %5, align 4
  %12 = getelementptr inbounds %struct.cpsw_host_regs, ptr %11, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %4) #13, !srcloc !16
  %13 = load ptr, ptr %8, align 4
  %14 = tail call i32 @cpsw_ale_add_vlan(ptr noundef %13, i16 noundef zeroext %3, i32 noundef 7, i32 noundef 7, i32 noundef 0, i32 noundef 0) #13
  %15 = load ptr, ptr %8, align 4
  %16 = tail call i32 @cpsw_ale_control_set(ptr noundef %15, i32 noundef 0, i32 noundef 15, i32 noundef 1) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_ale_add_vlan(ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_ale_add_mcast(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_sl_reset(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_sl_ctl_reset(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_sl_reg_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_set_slave_mac(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @cpsw_port_add_dual_emac_def_ale_entries(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.cpsw_priv, ptr %0, i32 0, i32 15
  %4 = load i32, ptr %3, align 8
  %5 = shl nuw i32 1, %4
  %6 = or i32 %5, 1
  %7 = getelementptr inbounds %struct.cpsw_priv, ptr %0, i32 0, i32 16
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.cpsw_common, ptr %8, i32 0, i32 8
  %10 = load i32, ptr %9, align 8
  %11 = icmp eq i32 %10, 1638666
  %12 = select i1 %11, i32 12, i32 20
  %13 = getelementptr inbounds %struct.cpsw_slave, ptr %1, i32 0, i32 6
  %14 = load i32, ptr %13, align 4
  %15 = load ptr, ptr %1, align 4
  %16 = getelementptr i8, ptr %15, i32 %12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #13, !srcloc !16
  %17 = getelementptr inbounds %struct.cpsw_common, ptr %8, i32 0, i32 17
  %18 = load ptr, ptr %17, align 4
  %19 = load i32, ptr %13, align 4
  %20 = trunc i32 %19 to i16
  %21 = tail call i32 @cpsw_ale_add_vlan(ptr noundef %18, i16 noundef zeroext %20, i32 noundef %6, i32 noundef %6, i32 noundef %6, i32 noundef 0) #13
  %22 = load ptr, ptr %17, align 4
  %23 = load ptr, ptr %0, align 64
  %24 = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 83
  %25 = load i32, ptr %13, align 4
  %26 = trunc i32 %25 to i16
  %27 = tail call i32 @cpsw_ale_add_mcast(ptr noundef %22, ptr noundef %24, i32 noundef 1, i32 noundef 8, i16 noundef zeroext %26, i32 noundef 0) #13
  %28 = load ptr, ptr %17, align 4
  %29 = getelementptr inbounds %struct.cpsw_priv, ptr %0, i32 0, i32 3
  %30 = load i32, ptr %13, align 4
  %31 = trunc i32 %30 to i16
  %32 = tail call i32 @cpsw_ale_add_ucast(ptr noundef %28, ptr noundef %29, i32 noundef 0, i32 noundef 9, i16 noundef zeroext %31) #13
  %33 = load ptr, ptr %17, align 4
  %34 = load i32, ptr %3, align 8
  %35 = tail call i32 @cpsw_ale_control_set(ptr noundef %33, i32 noundef %34, i32 noundef 14, i32 noundef 1) #13
  %36 = load ptr, ptr %17, align 4
  %37 = load i32, ptr %3, align 8
  %38 = tail call i32 @cpsw_ale_control_set(ptr noundef %36, i32 noundef %37, i32 noundef 15, i32 noundef 1) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_connect(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cpsw_adjust_link(ptr noundef %0) #4 {
  %2 = getelementptr i8, ptr %0, i32 1408
  %3 = getelementptr i8, ptr %0, i32 1996
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.cpsw_common, ptr %4, i32 0, i32 13
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %0, i32 1992
  %8 = load i32, ptr %7, align 8
  %9 = add i32 %8, -1
  %10 = getelementptr %struct.cpsw_slave, ptr %6, i32 %9, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %111, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.phy_device, ptr %11, i32 0, i32 4
  %15 = load i16, ptr %14, align 8
  %16 = and i16 %15, 8192
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %88, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.phy_device, ptr %11, i32 0, i32 8
  %20 = load i32, ptr %19, align 8
  %21 = icmp eq i32 %20, 1000
  %22 = select i1 %21, i32 160, i32 32
  %23 = getelementptr inbounds %struct.phy_device, ptr %11, i32 0, i32 9
  %24 = load i32, ptr %23, align 4
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i32
  %27 = or i32 %22, %26
  switch i32 %20, label %37 [
    i32 100, label %28
    i32 10, label %30
  ]

28:                                               ; preds = %18
  %29 = or i32 %27, 32768
  br label %37

30:                                               ; preds = %18
  %31 = getelementptr inbounds %struct.phy_device, ptr %11, i32 0, i32 7
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, -9
  %34 = icmp ult i32 %33, 4
  %35 = or i32 %27, 262144
  %36 = select i1 %34, i32 %35, i32 %27
  br label %37

37:                                               ; preds = %30, %28, %18
  %38 = phi i32 [ %29, %28 ], [ %27, %18 ], [ %36, %30 ]
  %39 = getelementptr i8, ptr %0, i32 1426
  %40 = load i8, ptr %39, align 2, !range !8
  %41 = icmp eq i8 %40, 0
  %42 = or i32 %38, 8
  %43 = select i1 %41, i32 %38, i32 %42
  %44 = getelementptr i8, ptr %0, i32 1427
  %45 = load i8, ptr %44, align 1, !range !8
  %46 = icmp eq i8 %45, 0
  %47 = or i32 %43, 16
  %48 = select i1 %46, i32 %43, i32 %47
  %49 = getelementptr %struct.cpsw_slave, ptr %6, i32 %9, i32 2
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %48, %50
  br i1 %51, label %57, label %52

52:                                               ; preds = %37
  %53 = getelementptr %struct.cpsw_slave, ptr %6, i32 %9, i32 7
  %54 = load ptr, ptr %53, align 4
  %55 = tail call i32 @cpsw_sl_ctl_set(ptr noundef %54, i32 noundef %48) #13
  %56 = load i32, ptr %7, align 8
  br label %57

57:                                               ; preds = %52, %37
  %58 = phi i32 [ %56, %52 ], [ %8, %37 ]
  %59 = getelementptr inbounds %struct.cpsw_common, ptr %4, i32 0, i32 17
  %60 = load ptr, ptr %59, align 4
  %61 = tail call i32 @cpsw_ale_control_set(ptr noundef %60, i32 noundef %58, i32 noundef 12, i32 noundef 3) #13
  %62 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 88
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %74, label %65

65:                                               ; preds = %57
  %66 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  br label %67

67:                                               ; preds = %67, %65
  %68 = phi i32 [ 0, %65 ], [ %71, %67 ]
  %69 = load ptr, ptr %66, align 64
  %70 = getelementptr %struct.netdev_queue, ptr %69, i32 %68
  tail call void @netif_tx_wake_queue(ptr noundef %70) #13
  %71 = add nuw i32 %68, 1
  %72 = load i32, ptr %62, align 4
  %73 = icmp ult i32 %71, %72
  br i1 %73, label %67, label %74

74:                                               ; preds = %67, %57
  %75 = getelementptr i8, ptr %0, i32 1448
  %76 = load i32, ptr %75, align 8
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %97, label %78

78:                                               ; preds = %74
  %79 = load ptr, ptr %10, align 4
  %80 = getelementptr inbounds %struct.phy_device, ptr %79, i32 0, i32 8
  %81 = load i32, ptr %80, align 8
  %82 = icmp eq i32 %76, %81
  br i1 %82, label %97, label %83

83:                                               ; preds = %78
  %84 = tail call zeroext i1 @cpsw_shp_is_off(ptr noundef %2) #13
  br i1 %84, label %97, label %85

85:                                               ; preds = %83
  %86 = getelementptr i8, ptr %0, i32 1412
  %87 = load ptr, ptr %86, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %87, ptr noundef nonnull @.str.9) #14
  br label %97

88:                                               ; preds = %13
  tail call void @netif_tx_stop_all_queues(ptr noundef %0) #13
  %89 = getelementptr inbounds %struct.cpsw_common, ptr %4, i32 0, i32 17
  %90 = load ptr, ptr %89, align 4
  %91 = load i32, ptr %7, align 8
  %92 = tail call i32 @cpsw_ale_control_set(ptr noundef %90, i32 noundef %91, i32 noundef 12, i32 noundef 0) #13
  %93 = getelementptr %struct.cpsw_slave, ptr %6, i32 %9, i32 7
  %94 = load ptr, ptr %93, align 4
  %95 = tail call i32 @cpsw_sl_wait_for_idle(ptr noundef %94, i32 noundef 100) #13
  %96 = load ptr, ptr %93, align 4
  tail call void @cpsw_sl_ctl_reset(ptr noundef %96) #13
  br label %97

97:                                               ; preds = %88, %85, %83, %78, %74
  %98 = phi i32 [ %48, %83 ], [ %48, %85 ], [ %48, %78 ], [ %48, %74 ], [ 0, %88 ]
  %99 = getelementptr %struct.cpsw_slave, ptr %6, i32 %9, i32 2
  %100 = load i32, ptr %99, align 4
  %101 = icmp eq i32 %98, %100
  br i1 %101, label %103, label %102

102:                                              ; preds = %97
  tail call void @phy_print_status(ptr noundef nonnull %11) #13
  br label %103

103:                                              ; preds = %102, %97
  store i32 %98, ptr %99, align 4
  %104 = load i16, ptr %14, align 8
  %105 = and i16 %104, 8192
  %106 = icmp eq i16 %105, 0
  br i1 %106, label %111, label %107

107:                                              ; preds = %103
  %108 = tail call i32 @cpsw_need_resplit(ptr noundef %4) #13
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %107
  tail call void @cpsw_split_res(ptr noundef %4) #13
  br label %111

111:                                              ; preds = %110, %107, %103, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_attached_info(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_start(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_set_mode_ext(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_ale_add_ucast(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_sl_ctl_set(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cpsw_shp_is_off(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_stop_all_queues(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_sl_wait_for_idle(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_print_status(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_need_resplit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_split_res(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_mqprio_resume(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_cbs_resume(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_disconnect(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__hw_addr_ref_unsync_dev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpsw_purge_all_mc(ptr noundef %0, ptr noundef %1, i32 noundef %2) #4 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %21

5:                                                ; preds = %3
  %6 = getelementptr i8, ptr %0, i32 1408
  %7 = getelementptr i8, ptr %0, i32 1996
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr @cpsw_slave_index, align 4
  %10 = tail call i32 %9(ptr noundef %8, ptr noundef %6) #13
  %11 = getelementptr inbounds %struct.cpsw_common, ptr %8, i32 0, i32 13
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr %struct.cpsw_slave, ptr %12, i32 %10, i32 6
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %15, i32 0, i32 8
  %17 = getelementptr inbounds %struct.cpsw_common, ptr %8, i32 0, i32 17
  %18 = load ptr, ptr %17, align 4
  %19 = trunc i32 %14 to i16
  %20 = tail call i32 @cpsw_ale_del_mcast(ptr noundef %18, ptr noundef %1, i32 noundef 0, i32 noundef %16, i16 noundef zeroext %19) #13
  br label %21

21:                                               ; preds = %5, %3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpts_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_intr_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpdma_ctlr_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_ale_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_destroy_xdp_rxqs(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_ale_del_mcast(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpdma_chan_submit(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cpdma_check_free_tx_desc(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__skb_pad(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_classify_raw(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_tstamp_tx(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_ale_set_allmulti(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hw_addr_ref_sync_dev(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpsw_add_mc_addr(ptr noundef %0, ptr noundef %1, i32 noundef %2) #4 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %21

5:                                                ; preds = %3
  %6 = getelementptr i8, ptr %0, i32 1408
  %7 = getelementptr i8, ptr %0, i32 1996
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr @cpsw_slave_index, align 4
  %10 = tail call i32 %9(ptr noundef %8, ptr noundef %6) #13
  %11 = getelementptr inbounds %struct.cpsw_common, ptr %8, i32 0, i32 13
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr %struct.cpsw_slave, ptr %12, i32 %10, i32 6
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %15, i32 0, i32 8
  %17 = getelementptr inbounds %struct.cpsw_common, ptr %8, i32 0, i32 17
  %18 = load ptr, ptr %17, align 4
  %19 = trunc i32 %14 to i16
  %20 = tail call i32 @cpsw_ale_add_mcast(ptr noundef %18, ptr noundef %1, i32 noundef 1, i32 noundef %16, i16 noundef zeroext %19, i32 noundef 0) #13
  br label %21

21:                                               ; preds = %5, %3
  %22 = phi i32 [ 0, %3 ], [ %20, %5 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpsw_del_mc_addr(ptr noundef %0, ptr noundef %1, i32 noundef %2) #4 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %21

5:                                                ; preds = %3
  %6 = getelementptr i8, ptr %0, i32 1408
  %7 = getelementptr i8, ptr %0, i32 1996
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr @cpsw_slave_index, align 4
  %10 = tail call i32 %9(ptr noundef %8, ptr noundef %6) #13
  %11 = getelementptr inbounds %struct.cpsw_common, ptr %8, i32 0, i32 13
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr %struct.cpsw_slave, ptr %12, i32 %10, i32 6
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %15, i32 0, i32 8
  %17 = getelementptr inbounds %struct.cpsw_common, ptr %8, i32 0, i32 17
  %18 = load ptr, ptr %17, align 4
  %19 = trunc i32 %14 to i16
  %20 = tail call i32 @cpsw_ale_del_mcast(ptr noundef %18, ptr noundef %1, i32 noundef 0, i32 noundef %16, i16 noundef zeroext %19) #13
  br label %21

21:                                               ; preds = %5, %3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_ale_del_ucast(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_ale_del_vlan(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_ale_flush_multicast(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #9

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_xdp_tx_frame(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpsw_probe(ptr noundef %0) #4 {
  %2 = alloca %struct.of_phandle_args, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store ptr null, ptr %5, align 4, !annotation !21
  %7 = tail call noalias ptr @devm_kmalloc(ptr noundef %6, i32 noundef 736, i32 noundef 3520) #13
  %8 = icmp eq ptr %7, null
  br i1 %8, label %313, label %9

9:                                                ; preds = %1
  store ptr @cpsw_slave_index_priv, ptr @cpsw_slave_index, align 4
  store ptr %6, ptr %7, align 8
  %10 = tail call noalias ptr @devm_kmalloc(ptr noundef %6, i32 noundef 64, i32 noundef 3520) #13
  %11 = getelementptr inbounds %struct.cpsw_common, ptr %7, i32 0, i32 13
  store ptr %10, ptr %11, align 4
  %12 = icmp eq ptr %10, null
  br i1 %12, label %313, label %13

13:                                               ; preds = %9
  %14 = tail call ptr @devm_gpiod_get_array_optional(ptr noundef %6, ptr noundef nonnull @.str.18, i32 noundef 3) #13
  %15 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = ptrtoint ptr %14 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.19, i32 noundef %17) #14
  br label %313

18:                                               ; preds = %13
  %19 = tail call ptr @devm_clk_get(ptr noundef %6, ptr noundef nonnull @.str.20) #13
  %20 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = ptrtoint ptr %19 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.21, i32 noundef %22) #14
  br label %313

23:                                               ; preds = %18
  %24 = tail call i32 @clk_get_rate(ptr noundef %19) #13
  %25 = udiv i32 %24, 1000000
  %26 = getelementptr inbounds %struct.cpsw_common, ptr %7, i32 0, i32 10
  store i32 %25, ptr %26, align 8
  %27 = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %5) #13
  %28 = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = ptrtoint ptr %27 to i32
  br label %313

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.cpsw_common, ptr %7, i32 0, i32 4
  store ptr %27, ptr %32, align 8
  %33 = call i32 @platform_get_irq_byname(ptr noundef %0, ptr noundef nonnull @.str.22) #13
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %313, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.cpsw_common, ptr %7, i32 0, i32 21
  store i32 %33, ptr %36, align 4
  %37 = call i32 @platform_get_irq_byname(ptr noundef %0, ptr noundef nonnull @.str.23) #13
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %313, label %39

39:                                               ; preds = %35
  %40 = getelementptr %struct.cpsw_common, ptr %7, i32 0, i32 21, i32 1
  store i32 %37, ptr %40, align 4
  %41 = call i32 @platform_get_irq_byname(ptr noundef %0, ptr noundef nonnull @.str.24) #13
  %42 = icmp slt i32 %41, 1
  br i1 %42, label %313, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.cpsw_common, ptr %7, i32 0, i32 22
  store i32 %41, ptr %44, align 4
  %45 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %7, ptr %45, align 8
  call void @pm_runtime_enable(ptr noundef %6) #13
  %46 = call i32 @__pm_runtime_resume(ptr noundef %6, i32 noundef 4) #13
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 13
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !9
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %49) #13, !srcloc !10
  %50 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %49, ptr %49, i32 0, i32 -1, ptr elementtype(i32) %49) #13, !srcloc !11
  %51 = extractvalue { i32, i32, i32 } %50, 0
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %48
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !12
  br label %54

54:                                               ; preds = %53, %48
  call void @__pm_runtime_disable(ptr noundef %6, i1 noundef zeroext true) #13
  br label %313

55:                                               ; preds = %43
  %56 = load ptr, ptr %7, align 8
  %57 = getelementptr inbounds %struct.device, ptr %56, i32 0, i32 25
  %58 = load ptr, ptr %57, align 8
  %59 = getelementptr inbounds %struct.cpsw_common, ptr %7, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  store i32 0, ptr %3, align 4, !annotation !21
  %60 = icmp eq ptr %58, null
  br i1 %60, label %166, label %61

61:                                               ; preds = %55
  %62 = call ptr @of_get_child_by_name(ptr noundef nonnull %58, ptr noundef nonnull @.str.30) #13
  %63 = icmp eq ptr %62, null
  br i1 %63, label %166, label %64

64:                                               ; preds = %61
  %65 = call ptr @of_get_next_child(ptr noundef nonnull %62, ptr noundef null) #13
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.cpsw_common, ptr %7, i32 0, i32 1, i32 3
  store i32 0, ptr %68, align 4
  br label %78

69:                                               ; preds = %69, %64
  %70 = phi i32 [ %72, %69 ], [ 0, %64 ]
  %71 = phi ptr [ %73, %69 ], [ %65, %64 ]
  %72 = add i32 %70, 1
  %73 = call ptr @of_get_next_child(ptr noundef nonnull %62, ptr noundef nonnull %71) #13
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %69

75:                                               ; preds = %69
  %76 = getelementptr inbounds %struct.cpsw_common, ptr %7, i32 0, i32 1, i32 3
  store i32 %72, ptr %76, align 4
  %77 = icmp eq i32 %72, 2
  br i1 %77, label %79, label %78

78:                                               ; preds = %75, %67
  call void @of_node_put(ptr noundef nonnull %62) #13
  br label %166

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.cpsw_common, ptr %7, i32 0, i32 1, i32 4
  store i32 0, ptr %80, align 4
  %81 = getelementptr inbounds %struct.cpsw_common, ptr %7, i32 0, i32 1, i32 2
  store i32 8, ptr %81, align 4
  %82 = getelementptr inbounds %struct.cpsw_common, ptr %7, i32 0, i32 1, i32 8
  store i8 1, ptr %82, align 2
  %83 = getelementptr inbounds %struct.cpsw_common, ptr %7, i32 0, i32 1, i32 5
  store i32 8192, ptr %83, align 4
  %84 = getelementptr inbounds %struct.cpsw_common, ptr %7, i32 0, i32 1, i32 6
  store i32 0, ptr %84, align 4
  %85 = call noalias ptr @devm_kmalloc(ptr noundef %56, i32 noundef 184, i32 noundef 3520) #13
  store ptr %85, ptr %59, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %166, label %87

87:                                               ; preds = %79
  %88 = call i32 @devm_of_platform_populate(ptr noundef %56) #13
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %87
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %56, ptr noundef nonnull @.str.31) #14
  br label %91

91:                                               ; preds = %90, %87
  %92 = call ptr @of_get_next_child(ptr noundef nonnull %62, ptr noundef null) #13
  %93 = icmp eq ptr %92, null
  br i1 %93, label %165, label %94

94:                                               ; preds = %162, %91
  %95 = phi ptr [ %163, %162 ], [ %92, %91 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 0, ptr %4, align 4, !annotation !21
  %96 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %95, ptr noundef nonnull @.str.32, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #13
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.33, ptr noundef nonnull %95, i32 noundef %96) #14
  br label %168

99:                                               ; preds = %94
  %100 = load i32, ptr %4, align 4
  %101 = add i32 %100, -3
  %102 = icmp ult i32 %101, -2
  br i1 %102, label %103, label %104

103:                                              ; preds = %99
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.34, ptr noundef nonnull %95, i32 noundef %100) #14
  br label %168

104:                                              ; preds = %99
  %105 = load ptr, ptr %59, align 4
  %106 = add nsw i32 %100, -1
  %107 = call zeroext i1 @of_device_is_available(ptr noundef nonnull %95) #13
  %108 = xor i1 %107, true
  %109 = getelementptr %struct.cpsw_slave_data, ptr %105, i32 %106, i32 7
  %110 = zext i1 %108 to i8
  store i8 %110, ptr %109, align 4
  br i1 %107, label %111, label %162

111:                                              ; preds = %104
  %112 = getelementptr %struct.cpsw_slave_data, ptr %105, i32 %106
  store ptr %95, ptr %112, align 4
  %113 = call ptr @devm_of_phy_get(ptr noundef %56, ptr noundef nonnull %95, ptr noundef null) #13
  %114 = getelementptr %struct.cpsw_slave_data, ptr %105, i32 %106, i32 6
  store ptr %113, ptr %114, align 4
  %115 = icmp ugt ptr %113, inttoptr (i32 -4096 to ptr)
  br i1 %115, label %116, label %118

116:                                              ; preds = %111
  %117 = ptrtoint ptr %113 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.35, ptr noundef nonnull %95, i32 noundef %117) #14
  br label %170

118:                                              ; preds = %111
  %119 = call zeroext i1 @of_phy_is_fixed_link(ptr noundef nonnull %95) #13
  br i1 %119, label %120, label %125

120:                                              ; preds = %118
  %121 = call i32 @of_phy_register_fixed_link(ptr noundef nonnull %95) #13
  switch i32 %121, label %122 [
    i32 0, label %123
    i32 -517, label %168
  ]

122:                                              ; preds = %120
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.36, ptr noundef nonnull %95, i32 noundef %121) #14
  br label %170

123:                                              ; preds = %120
  %124 = call ptr @of_node_get(ptr noundef nonnull %95) #13
  br label %131

125:                                              ; preds = %118
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false) #13, !annotation !21
  %126 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %95, ptr noundef nonnull @.str.37, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %2) #13
  %127 = icmp eq i32 %126, 0
  %128 = load ptr, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #13
  br i1 %127, label %131, label %129

129:                                              ; preds = %125
  %130 = getelementptr %struct.cpsw_slave_data, ptr %105, i32 %106, i32 1
  store ptr null, ptr %130, align 4
  br label %135

131:                                              ; preds = %125, %123
  %132 = phi ptr [ %124, %123 ], [ %128, %125 ]
  %133 = getelementptr %struct.cpsw_slave_data, ptr %105, i32 %106, i32 1
  store ptr %132, ptr %133, align 4
  %134 = icmp eq ptr %132, null
  br i1 %134, label %135, label %136

135:                                              ; preds = %131, %129
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.38, ptr noundef nonnull %95) #14
  br label %168

136:                                              ; preds = %131
  %137 = getelementptr %struct.cpsw_slave_data, ptr %105, i32 %106, i32 3
  %138 = call i32 @of_get_phy_mode(ptr noundef nonnull %95, ptr noundef %137) #13
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %141, label %140

140:                                              ; preds = %136
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.39, ptr noundef nonnull %95, i32 noundef %138) #14
  br label %168

141:                                              ; preds = %136
  %142 = getelementptr %struct.cpsw_slave_data, ptr %105, i32 %106, i32 4
  %143 = call i32 @of_get_mac_address(ptr noundef nonnull %95, ptr noundef %142) #13
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %150, label %145

145:                                              ; preds = %141
  %146 = load i32, ptr %4, align 4
  %147 = add i32 %146, -1
  %148 = call i32 @ti_cm_get_macid(ptr noundef %56, i32 noundef %147, ptr noundef %142) #13
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %168

150:                                              ; preds = %145, %141
  %151 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %95, ptr noundef nonnull @.str.40, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #13
  %152 = icmp sgt i32 %151, -1
  br i1 %152, label %158, label %153

153:                                              ; preds = %150
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.41, ptr noundef nonnull %95) #14
  %154 = load i32, ptr %4, align 4
  %155 = trunc i32 %154 to i16
  %156 = getelementptr %struct.cpsw_slave_data, ptr %105, i32 %106, i32 5
  store i16 %155, ptr %156, align 2
  %157 = and i32 %154, 65535
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.42, ptr noundef nonnull %95, i32 noundef %157) #14
  br label %162

158:                                              ; preds = %150
  %159 = load i32, ptr %3, align 4
  %160 = trunc i32 %159 to i16
  %161 = getelementptr %struct.cpsw_slave_data, ptr %105, i32 %106, i32 5
  store i16 %160, ptr %161, align 2
  br label %162

162:                                              ; preds = %158, %153, %104
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  %163 = call ptr @of_get_next_child(ptr noundef nonnull %62, ptr noundef nonnull %95) #13
  %164 = icmp eq ptr %163, null
  br i1 %164, label %165, label %94

165:                                              ; preds = %162, %91
  call void @of_node_put(ptr noundef nonnull %62) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  br label %173

166:                                              ; preds = %79, %78, %61, %55
  %167 = phi i32 [ -12, %79 ], [ -2, %61 ], [ -22, %55 ], [ -2, %78 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  br label %290

168:                                              ; preds = %145, %140, %135, %120, %103, %98
  %169 = phi i32 [ %96, %98 ], [ -22, %103 ], [ %138, %140 ], [ -19, %135 ], [ %121, %120 ], [ %148, %145 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  call void @of_node_put(ptr noundef nonnull %95) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  br label %290

170:                                              ; preds = %122, %116
  %171 = phi i32 [ %121, %122 ], [ %117, %116 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  call void @of_node_put(ptr noundef nonnull %95) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %290

173:                                              ; preds = %170, %165
  %174 = call ptr @soc_device_match(ptr noundef nonnull @cpsw_soc_devices) #13
  %175 = icmp eq ptr %174, null
  br i1 %175, label %178, label %176

176:                                              ; preds = %173
  %177 = getelementptr inbounds %struct.cpsw_common, ptr %7, i32 0, i32 18
  store i8 1, ptr %177, align 8
  br label %178

178:                                              ; preds = %176, %173
  %179 = getelementptr inbounds %struct.cpsw_common, ptr %7, i32 0, i32 11
  store i32 1526, ptr %179, align 4
  %180 = getelementptr inbounds %struct.cpsw_common, ptr %7, i32 0, i32 12
  store i32 256, ptr %180, align 8
  %181 = getelementptr inbounds %struct.cpsw_common, ptr %7, i32 0, i32 33
  call void @get_random_bytes(ptr noundef %181, i32 noundef 6) #13
  %182 = load i8, ptr %181, align 1
  %183 = and i8 %182, -4
  %184 = or i8 %183, 2
  store i8 %184, ptr %181, align 1
  %185 = load ptr, ptr %5, align 4
  %186 = load i32, ptr %185, align 4
  %187 = add i32 %186, 8192
  %188 = call i32 @cpsw_init_common(ptr noundef nonnull %7, ptr noundef %27, i32 noundef 10, i32 noundef %187, i32 noundef 256) #13
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %290

190:                                              ; preds = %178
  %191 = getelementptr inbounds %struct.cpsw_common, ptr %7, i32 0, i32 8
  %192 = load i32, ptr %191, align 8
  %193 = icmp eq i32 %192, 1638666
  %194 = select i1 %193, i32 2304, i32 4608
  %195 = getelementptr i8, ptr %27, i32 %194
  %196 = getelementptr inbounds %struct.cpsw_common, ptr %7, i32 0, i32 5
  store ptr %195, ptr %196, align 4
  %197 = getelementptr inbounds %struct.cpsw_common, ptr %7, i32 0, i32 18
  %198 = load i8, ptr %197, align 8, !range !8
  %199 = icmp eq i8 %198, 0
  %200 = select i1 %199, i32 7, i32 0
  %201 = getelementptr inbounds %struct.cpsw_common, ptr %7, i32 0, i32 14
  %202 = load ptr, ptr %201, align 8
  %203 = call ptr @cpdma_chan_create(ptr noundef %202, i32 noundef %200, ptr noundef nonnull @cpsw_tx_handler, i32 noundef 0) #13
  %204 = getelementptr inbounds %struct.cpsw_common, ptr %7, i32 0, i32 15
  store ptr %203, ptr %204, align 4
  %205 = icmp ugt ptr %203, inttoptr (i32 -4096 to ptr)
  br i1 %205, label %206, label %209

206:                                              ; preds = %190
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.25) #14
  %207 = load ptr, ptr %204, align 4
  %208 = ptrtoint ptr %207 to i32
  br label %284

209:                                              ; preds = %190
  %210 = load ptr, ptr %201, align 8
  %211 = call ptr @cpdma_chan_create(ptr noundef %210, i32 noundef 0, ptr noundef nonnull @cpsw_rx_handler, i32 noundef 1) #13
  %212 = getelementptr inbounds %struct.cpsw_common, ptr %7, i32 0, i32 16
  store ptr %211, ptr %212, align 4
  %213 = icmp ugt ptr %211, inttoptr (i32 -4096 to ptr)
  br i1 %213, label %214, label %217

214:                                              ; preds = %209
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.26) #14
  %215 = load ptr, ptr %212, align 4
  %216 = ptrtoint ptr %215 to i32
  br label %284

217:                                              ; preds = %209
  call void @cpsw_split_res(ptr noundef nonnull %7) #13
  %218 = call fastcc i32 @cpsw_create_ports(ptr noundef nonnull %7)
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %282

220:                                              ; preds = %217
  %221 = load i32, ptr %36, align 4
  %222 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %223 = load ptr, ptr %222, align 4
  %224 = icmp eq ptr %223, null
  br i1 %224, label %225, label %227

225:                                              ; preds = %220
  %226 = load ptr, ptr %6, align 4
  br label %227

227:                                              ; preds = %225, %220
  %228 = phi ptr [ %226, %225 ], [ %223, %220 ]
  %229 = call i32 @devm_request_threaded_irq(ptr noundef %6, i32 noundef %221, ptr noundef nonnull @cpsw_rx_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %228, ptr noundef %7) #13
  %230 = icmp slt i32 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %227
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.27, i32 noundef %229) #14
  br label %282

232:                                              ; preds = %227
  %233 = load i32, ptr %40, align 4
  %234 = load ptr, ptr %222, align 4
  %235 = icmp eq ptr %234, null
  br i1 %235, label %236, label %238

236:                                              ; preds = %232
  %237 = load ptr, ptr %6, align 4
  br label %238

238:                                              ; preds = %236, %232
  %239 = phi ptr [ %237, %236 ], [ %234, %232 ]
  %240 = call i32 @devm_request_threaded_irq(ptr noundef %6, i32 noundef %233, ptr noundef nonnull @cpsw_tx_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %239, ptr noundef %7) #13
  %241 = icmp slt i32 %240, 0
  br i1 %241, label %242, label %243

242:                                              ; preds = %238
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.27, i32 noundef %240) #14
  br label %282

243:                                              ; preds = %238
  %244 = getelementptr inbounds %struct.cpsw_common, ptr %7, i32 0, i32 23
  %245 = load ptr, ptr %244, align 8
  %246 = icmp eq ptr %245, null
  br i1 %246, label %261, label %247

247:                                              ; preds = %243
  %248 = load i32, ptr %44, align 4
  %249 = load ptr, ptr %222, align 4
  %250 = icmp eq ptr %249, null
  br i1 %250, label %251, label %253

251:                                              ; preds = %247
  %252 = load ptr, ptr %6, align 4
  br label %253

253:                                              ; preds = %251, %247
  %254 = phi ptr [ %252, %251 ], [ %249, %247 ]
  %255 = call i32 @devm_request_threaded_irq(ptr noundef %6, i32 noundef %248, ptr noundef nonnull @cpsw_misc_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %254, ptr noundef %7) #13
  %256 = icmp slt i32 %255, 0
  br i1 %256, label %257, label %258

257:                                              ; preds = %253
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.28, i32 noundef %255) #14
  br label %282

258:                                              ; preds = %253
  %259 = load ptr, ptr %244, align 8
  %260 = getelementptr inbounds %struct.cpts, ptr %259, i32 0, i32 20
  store i8 0, ptr %260, align 8
  br label %261

261:                                              ; preds = %258, %243
  %262 = call fastcc i32 @cpsw_register_notifiers(ptr noundef nonnull %7)
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %264, label %282

264:                                              ; preds = %261
  %265 = call fastcc i32 @cpsw_register_devlink(ptr noundef nonnull %7)
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %267, label %279

267:                                              ; preds = %264
  %268 = call fastcc i32 @cpsw_register_ports(ptr noundef nonnull %7)
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %270, label %279

270:                                              ; preds = %267
  %271 = load ptr, ptr %5, align 4
  %272 = load i32, ptr %191, align 8
  %273 = lshr i32 %272, 8
  %274 = and i32 %273, 7
  %275 = and i32 %272, 255
  %276 = lshr i32 %272, 11
  %277 = and i32 %276, 31
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %6, ptr noundef nonnull @.str.29, ptr noundef %271, i32 noundef 256, i32 noundef %272, i32 noundef %274, i32 noundef %275, i32 noundef %277) #14
  %278 = call i32 @__pm_runtime_idle(ptr noundef %6, i32 noundef 5) #13
  br label %313

279:                                              ; preds = %267, %264
  %280 = phi i32 [ %265, %264 ], [ %268, %267 ]
  call void @cpsw_switchdev_unregister_notifiers(ptr noundef %7) #13
  %281 = call i32 @unregister_netdevice_notifier(ptr noundef nonnull @cpsw_netdevice_nb) #13
  br label %282

282:                                              ; preds = %279, %261, %257, %242, %231, %217
  %283 = phi i32 [ %218, %217 ], [ %229, %231 ], [ %240, %242 ], [ %255, %257 ], [ %262, %261 ], [ %280, %279 ]
  call fastcc void @cpsw_unregister_ports(ptr noundef nonnull %7)
  br label %284

284:                                              ; preds = %282, %214, %206
  %285 = phi i32 [ %208, %206 ], [ %216, %214 ], [ %283, %282 ]
  %286 = getelementptr inbounds %struct.cpsw_common, ptr %7, i32 0, i32 23
  %287 = load ptr, ptr %286, align 8
  call void @cpts_release(ptr noundef %287) #13
  %288 = load ptr, ptr %201, align 8
  %289 = call i32 @cpdma_ctlr_destroy(ptr noundef %288) #13
  br label %290

290:                                              ; preds = %284, %178, %170, %168, %166
  %291 = phi i32 [ %171, %170 ], [ %188, %178 ], [ %285, %284 ], [ %167, %166 ], [ %169, %168 ]
  %292 = getelementptr inbounds %struct.cpsw_common, ptr %7, i32 0, i32 1, i32 3
  %293 = load i32, ptr %292, align 4
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %311, label %295

295:                                              ; preds = %307, %290
  %296 = phi i32 [ %308, %307 ], [ %293, %290 ]
  %297 = phi i32 [ %309, %307 ], [ 0, %290 ]
  %298 = load ptr, ptr %59, align 4
  %299 = getelementptr %struct.cpsw_slave_data, ptr %298, i32 %297, i32 1
  %300 = load ptr, ptr %299, align 4
  %301 = icmp eq ptr %300, null
  br i1 %301, label %307, label %302

302:                                              ; preds = %295
  %303 = call zeroext i1 @of_phy_is_fixed_link(ptr noundef nonnull %300) #13
  br i1 %303, label %304, label %305

304:                                              ; preds = %302
  call void @of_phy_deregister_fixed_link(ptr noundef nonnull %300) #13
  br label %305

305:                                              ; preds = %304, %302
  call void @of_node_put(ptr noundef nonnull %300) #13
  %306 = load i32, ptr %292, align 4
  br label %307

307:                                              ; preds = %305, %295
  %308 = phi i32 [ %306, %305 ], [ %296, %295 ]
  %309 = add nuw i32 %297, 1
  %310 = icmp ult i32 %309, %308
  br i1 %310, label %295, label %311

311:                                              ; preds = %307, %290
  %312 = call i32 @__pm_runtime_idle(ptr noundef %6, i32 noundef 4) #13
  call void @__pm_runtime_disable(ptr noundef %6, i1 noundef zeroext true) #13
  br label %313

313:                                              ; preds = %311, %270, %54, %39, %35, %31, %29, %21, %16, %9, %1
  %314 = phi i32 [ %17, %16 ], [ %22, %21 ], [ %30, %29 ], [ %46, %54 ], [ %291, %311 ], [ 0, %270 ], [ -12, %1 ], [ -12, %9 ], [ %33, %31 ], [ %37, %35 ], [ %41, %39 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  ret i32 %314
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpsw_remove(ptr noundef %0) #4 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = tail call i32 @__pm_runtime_resume(ptr noundef %4, i32 noundef 4) #13
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %8) #13, !srcloc !10
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %8, ptr %8, i32 0, i32 -1, ptr elementtype(i32) %8) #13, !srcloc !11
  %10 = extractvalue { i32, i32, i32 } %9, 0
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %64, label %12

12:                                               ; preds = %7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !12
  br label %64

13:                                               ; preds = %1
  tail call void @cpsw_switchdev_unregister_notifiers(ptr noundef %3) #13
  %14 = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @cpsw_netdevice_nb) #13
  %15 = getelementptr inbounds %struct.cpsw_common, ptr %3, i32 0, i32 24
  %16 = load ptr, ptr %15, align 4
  tail call void @devlink_unregister(ptr noundef %16) #13
  %17 = load ptr, ptr %15, align 4
  tail call void @devlink_params_unregister(ptr noundef %17, ptr noundef nonnull @cpsw_devlink_params, i32 noundef 2) #13
  %18 = load ptr, ptr %15, align 4
  tail call void @devlink_free(ptr noundef %18) #13
  %19 = getelementptr inbounds %struct.cpsw_common, ptr %3, i32 0, i32 1, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %37, label %22

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.cpsw_common, ptr %3, i32 0, i32 13
  br label %24

24:                                               ; preds = %33, %22
  %25 = phi i32 [ %20, %22 ], [ %34, %33 ]
  %26 = phi i32 [ 0, %22 ], [ %35, %33 ]
  %27 = load ptr, ptr %23, align 4
  %28 = getelementptr %struct.cpsw_slave, ptr %27, i32 %26, i32 5
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %24
  tail call void @unregister_netdev(ptr noundef nonnull %29) #13
  %32 = load i32, ptr %19, align 4
  br label %33

33:                                               ; preds = %31, %24
  %34 = phi i32 [ %25, %24 ], [ %32, %31 ]
  %35 = add nuw i32 %26, 1
  %36 = icmp ult i32 %35, %34
  br i1 %36, label %24, label %37

37:                                               ; preds = %33, %13
  %38 = getelementptr inbounds %struct.cpsw_common, ptr %3, i32 0, i32 23
  %39 = load ptr, ptr %38, align 8
  tail call void @cpts_release(ptr noundef %39) #13
  %40 = getelementptr inbounds %struct.cpsw_common, ptr %3, i32 0, i32 14
  %41 = load ptr, ptr %40, align 8
  %42 = tail call i32 @cpdma_ctlr_destroy(ptr noundef %41) #13
  %43 = getelementptr inbounds %struct.cpsw_common, ptr %3, i32 0, i32 1
  %44 = load i32, ptr %19, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %62, label %46

46:                                               ; preds = %58, %37
  %47 = phi i32 [ %59, %58 ], [ %44, %37 ]
  %48 = phi i32 [ %60, %58 ], [ 0, %37 ]
  %49 = load ptr, ptr %43, align 4
  %50 = getelementptr %struct.cpsw_slave_data, ptr %49, i32 %48, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %58, label %53

53:                                               ; preds = %46
  %54 = tail call zeroext i1 @of_phy_is_fixed_link(ptr noundef nonnull %51) #13
  br i1 %54, label %55, label %56

55:                                               ; preds = %53
  tail call void @of_phy_deregister_fixed_link(ptr noundef nonnull %51) #13
  br label %56

56:                                               ; preds = %55, %53
  tail call void @of_node_put(ptr noundef nonnull %51) #13
  %57 = load i32, ptr %19, align 4
  br label %58

58:                                               ; preds = %56, %46
  %59 = phi i32 [ %57, %56 ], [ %47, %46 ]
  %60 = add nuw i32 %48, 1
  %61 = icmp ult i32 %60, %59
  br i1 %61, label %46, label %62

62:                                               ; preds = %58, %37
  %63 = tail call i32 @__pm_runtime_idle(ptr noundef %4, i32 noundef 4) #13
  tail call void @__pm_runtime_disable(ptr noundef %4, i1 noundef zeroext true) #13
  br label %64

64:                                               ; preds = %62, %12, %7
  %65 = phi i32 [ 0, %62 ], [ %5, %7 ], [ %5, %12 ]
  ret i32 %65
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @cpsw_slave_index_priv(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #11 {
  %3 = getelementptr inbounds %struct.cpsw_priv, ptr %1, i32 0, i32 15
  %4 = load i32, ptr %3, align 8
  %5 = add i32 %4, -1
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_array_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @soc_device_match(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_init_common(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cpdma_chan_create(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_tx_handler(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cpsw_rx_handler(ptr noundef %0, i32 noundef %1, i32 noundef %2) #4 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xdp_buff, align 4
  store i32 %1, ptr %4, align 4
  %6 = tail call ptr @page_address(ptr noundef %0) #13
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %5, i8 0, i32 28, i1 false), !annotation !21
  %7 = getelementptr i8, ptr %6, i32 24
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 1996
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.cpsw_common, ptr %10, i32 0, i32 11
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr i8, ptr %6, i32 28
  %14 = load i32, ptr %13, align 4
  %15 = icmp sgt i32 %2, -1
  br i1 %15, label %16, label %26

16:                                               ; preds = %3
  %17 = lshr i32 %2, 16
  %18 = and i32 %17, 7
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.cpsw_common, ptr %10, i32 0, i32 13
  %22 = load ptr, ptr %21, align 4
  %23 = add nsw i32 %18, -1
  %24 = getelementptr %struct.cpsw_slave, ptr %22, i32 %23, i32 5
  %25 = load ptr, ptr %24, align 4
  br label %29

26:                                               ; preds = %3
  %27 = getelementptr %struct.cpsw_common, ptr %10, i32 0, i32 29, i32 %14
  %28 = load ptr, ptr %27, align 4
  br label %42

29:                                               ; preds = %20, %16
  %30 = phi ptr [ %8, %16 ], [ %25, %20 ]
  %31 = getelementptr i8, ptr %30, i32 1408
  %32 = getelementptr %struct.cpsw_common, ptr %10, i32 0, i32 29, i32 %14
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.net_device, ptr %30, i32 0, i32 6
  %35 = load volatile i32, ptr %34, align 4
  %36 = and i32 %35, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %44, !prof !22

38:                                               ; preds = %29
  %39 = getelementptr inbounds %struct.cpsw_common, ptr %10, i32 0, i32 28
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %133

42:                                               ; preds = %38, %26
  %43 = phi ptr [ %28, %26 ], [ %33, %38 ]
  tail call void @page_pool_put_page(ptr noundef %43, ptr noundef %0, i32 noundef -1, i1 noundef zeroext true) #13
  br label %149

44:                                               ; preds = %29
  %45 = tail call ptr @page_pool_alloc_pages(ptr noundef %33, i32 noundef 10784) #13
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %51, !prof !22

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.net_device, ptr %30, i32 0, i32 36, i32 6
  %49 = load i32, ptr %48, align 8
  %50 = add i32 %49, 1
  store i32 %50, ptr %48, align 8
  br label %133

51:                                               ; preds = %44
  %52 = getelementptr i8, ptr %30, i32 1460
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %79, label %55

55:                                               ; preds = %51
  %56 = getelementptr %struct.cpsw_priv, ptr %31, i32 0, i32 13, i32 %14
  %57 = getelementptr inbounds %struct.xdp_buff, ptr %5, i32 0, i32 6
  store i32 4096, ptr %57, align 4
  %58 = getelementptr inbounds %struct.xdp_buff, ptr %5, i32 0, i32 4
  store ptr %56, ptr %58, align 4
  %59 = and i32 %2, 524288
  %60 = icmp eq i32 %59, 0
  %61 = add i32 %1, -4
  %62 = select i1 %60, i32 258, i32 262
  %63 = select i1 %60, i32 %1, i32 %61
  %64 = getelementptr i8, ptr %6, i32 %62
  %65 = getelementptr inbounds %struct.xdp_buff, ptr %5, i32 0, i32 3
  store ptr %6, ptr %65, align 4
  store ptr %64, ptr %5, align 4
  %66 = getelementptr i8, ptr %64, i32 %63
  %67 = getelementptr inbounds %struct.xdp_buff, ptr %5, i32 0, i32 1
  store ptr %66, ptr %67, align 4
  %68 = getelementptr i8, ptr %64, i32 1
  %69 = getelementptr inbounds %struct.xdp_buff, ptr %5, i32 0, i32 2
  store ptr %68, ptr %69, align 4
  %70 = getelementptr i8, ptr %30, i32 1992
  %71 = load i32, ptr %70, align 8
  %72 = call i32 @cpsw_run_xdp(ptr noundef %31, i32 noundef %14, ptr noundef nonnull %5, ptr noundef %0, i32 noundef %71, ptr noundef nonnull %4) #13
  %73 = icmp eq i32 %72, 0
  %74 = load ptr, ptr %5, align 4
  %75 = load ptr, ptr %65, align 4
  %76 = ptrtoint ptr %74 to i32
  %77 = ptrtoint ptr %75 to i32
  %78 = sub i32 %76, %77
  br i1 %73, label %79, label %133

79:                                               ; preds = %55, %51
  %80 = phi i32 [ %78, %55 ], [ 258, %51 ]
  %81 = phi i32 [ 0, %55 ], [ %2, %51 ]
  %82 = add i32 %12, 579
  %83 = and i32 %82, -64
  %84 = call ptr @build_skb(ptr noundef %6, i32 noundef %83) #13
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %90

86:                                               ; preds = %79
  %87 = getelementptr inbounds %struct.net_device, ptr %30, i32 0, i32 36, i32 6
  %88 = load i32, ptr %87, align 8
  %89 = add i32 %88, 1
  store i32 %89, ptr %87, align 8
  call void @page_pool_put_page(ptr noundef %33, ptr noundef %0, i32 noundef -1, i1 noundef zeroext true) #13
  br label %133

90:                                               ; preds = %79
  %91 = getelementptr i8, ptr %30, i32 2000
  %92 = load i32, ptr %91, align 16
  %93 = getelementptr inbounds %struct.sk_buff, ptr %84, i32 0, i32 13, i32 0, i32 3
  %94 = trunc i32 %92 to i16
  %95 = load i16, ptr %93, align 2
  %96 = shl i16 %94, 11
  %97 = and i16 %96, 2048
  %98 = and i16 %95, -2049
  %99 = or i16 %97, %98
  store i16 %99, ptr %93, align 2
  %100 = getelementptr inbounds %struct.sk_buff, ptr %84, i32 0, i32 17
  %101 = load ptr, ptr %100, align 4
  %102 = getelementptr i8, ptr %101, i32 %80
  store ptr %102, ptr %100, align 4
  %103 = getelementptr inbounds %struct.sk_buff, ptr %84, i32 0, i32 14
  %104 = load ptr, ptr %103, align 8
  %105 = getelementptr i8, ptr %104, i32 %80
  store ptr %105, ptr %103, align 8
  %106 = load i32, ptr %4, align 4
  %107 = call ptr @skb_put(ptr noundef nonnull %84, i32 noundef %106) #13
  %108 = getelementptr inbounds %struct.anon.0, ptr %84, i32 0, i32 2
  store ptr %30, ptr %108, align 8
  %109 = and i32 %81, 524288
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %90
  call void @cpsw_rx_vlan_encap(ptr noundef nonnull %84) #13
  br label %112

112:                                              ; preds = %111, %90
  %113 = getelementptr i8, ptr %30, i32 1456
  %114 = load i32, ptr %113, align 16
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.cpsw_common, ptr %10, i32 0, i32 23
  %118 = load ptr, ptr %117, align 8
  call void @cpts_rx_timestamp(ptr noundef %118, ptr noundef nonnull %84) #13
  br label %119

119:                                              ; preds = %116, %112
  %120 = call zeroext i16 @eth_type_trans(ptr noundef nonnull %84, ptr noundef %30) #13
  %121 = getelementptr inbounds %struct.sk_buff, ptr %84, i32 0, i32 13, i32 0, i32 16
  store i16 %120, ptr %121, align 8
  %122 = getelementptr inbounds %struct.sk_buff, ptr %84, i32 0, i32 11
  %123 = load i8, ptr %122, align 2
  %124 = or i8 %123, -128
  store i8 %124, ptr %122, align 2
  %125 = call i32 @netif_receive_skb(ptr noundef nonnull %84) #13
  %126 = load i32, ptr %4, align 4
  %127 = getelementptr inbounds %struct.net_device, ptr %30, i32 0, i32 36
  %128 = getelementptr inbounds %struct.net_device, ptr %30, i32 0, i32 36, i32 2
  %129 = load i32, ptr %128, align 8
  %130 = add i32 %129, %126
  store i32 %130, ptr %128, align 8
  %131 = load i32, ptr %127, align 8
  %132 = add i32 %131, 1
  store i32 %132, ptr %127, align 8
  br label %133

133:                                              ; preds = %119, %86, %55, %47, %38
  %134 = phi ptr [ %0, %47 ], [ %45, %55 ], [ %45, %119 ], [ %45, %86 ], [ %0, %38 ]
  %135 = call ptr @page_address(ptr noundef %134) #13
  %136 = getelementptr i8, ptr %135, i32 24
  store ptr %30, ptr %136, align 4
  %137 = getelementptr i8, ptr %135, i32 28
  store i32 %14, ptr %137, align 4
  %138 = getelementptr inbounds %struct.page, ptr %134, i32 0, i32 1, i32 0, i32 2
  %139 = load i32, ptr %138, align 4
  %140 = add i32 %139, 258
  %141 = getelementptr %struct.cpsw_common, ptr %10, i32 0, i32 16, i32 %14
  %142 = load ptr, ptr %141, align 4
  %143 = call i32 @cpdma_chan_submit_mapped(ptr noundef %142, ptr noundef %134, i32 noundef %140, i32 noundef %12, i32 noundef 0) #13
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %133
  %146 = icmp eq i32 %143, -12
  br i1 %146, label %147, label %148, !prof !22

147:                                              ; preds = %145
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 393, i32 noundef 9, ptr noundef null) #13
  br label %148

148:                                              ; preds = %147, %145
  call void @page_pool_put_page(ptr noundef %33, ptr noundef %134, i32 noundef -1, i1 noundef zeroext true) #13
  br label %149

149:                                              ; preds = %148, %133, %42
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cpsw_create_ports(ptr noundef %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.cpsw_common, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.cpsw_common, ptr %0, i32 0, i32 1, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %82, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.cpsw_common, ptr %0, i32 0, i32 13
  %9 = getelementptr inbounds %struct.cpsw_common, ptr %0, i32 0, i32 2
  %10 = getelementptr inbounds %struct.cpsw_common, ptr %0, i32 0, i32 18
  %11 = getelementptr inbounds %struct.cpsw_common, ptr %0, i32 0, i32 3
  %12 = getelementptr inbounds %struct.cpsw_common, ptr %0, i32 0, i32 3, i32 1
  br label %13

13:                                               ; preds = %77, %7
  %14 = phi i32 [ 0, %7 ], [ %78, %77 ]
  %15 = phi ptr [ null, %7 ], [ %79, %77 ]
  %16 = load ptr, ptr %2, align 4
  %17 = getelementptr %struct.cpsw_slave_data, ptr %16, i32 %14, i32 7
  %18 = load i8, ptr %17, align 4, !range !8
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %13
  %21 = add nuw i32 %14, 1
  br label %77

22:                                               ; preds = %13
  %23 = tail call ptr @devm_alloc_etherdev_mqs(ptr noundef %3, i32 noundef 640, i32 noundef 8, i32 noundef 8) #13
  %24 = icmp eq ptr %23, null
  br i1 %24, label %76, label %25

25:                                               ; preds = %22
  %26 = getelementptr i8, ptr %23, i32 1408
  %27 = getelementptr i8, ptr %23, i32 1996
  store ptr %0, ptr %27, align 4
  store ptr %23, ptr %26, align 64
  %28 = getelementptr i8, ptr %23, i32 1412
  store ptr %3, ptr %28, align 4
  %29 = getelementptr i8, ptr %23, i32 1416
  store i32 0, ptr %29, align 8
  %30 = add nuw i32 %14, 1
  %31 = getelementptr i8, ptr %23, i32 1992
  store i32 %30, ptr %31, align 8
  %32 = getelementptr i8, ptr %23, i32 2004
  store i32 60, ptr %32, align 4
  %33 = getelementptr %struct.cpsw_slave_data, ptr %16, i32 %14, i32 4
  %34 = load i32, ptr %33, align 4
  %35 = and i32 %34, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %25
  %38 = getelementptr i8, ptr %33, i32 4
  %39 = load i16, ptr %38, align 2
  %40 = zext i16 %39 to i32
  %41 = or i32 %34, %40
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %37
  %44 = getelementptr i8, ptr %23, i32 1420
  store i32 %34, ptr %44, align 4
  %45 = load i16, ptr %38, align 2
  %46 = getelementptr i8, ptr %23, i32 1424
  store i16 %45, ptr %46, align 2
  %47 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %47, ptr noundef nonnull @.str.47, ptr noundef %44) #14
  br label %54

48:                                               ; preds = %37, %25
  tail call void @get_random_bytes(ptr noundef %33, i32 noundef 6) #13
  %49 = load i8, ptr %33, align 1
  %50 = and i8 %49, -4
  %51 = or i8 %50, 2
  store i8 %51, ptr %33, align 1
  %52 = load ptr, ptr %0, align 8
  %53 = getelementptr i8, ptr %23, i32 1420
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %52, ptr noundef nonnull @.str.48, ptr noundef %53) #14
  br label %54

54:                                               ; preds = %48, %43
  tail call void @dev_addr_mod(ptr noundef nonnull %23, i32 noundef 0, ptr noundef %33, i32 noundef 6) #13
  %55 = getelementptr i8, ptr %23, i32 1420
  %56 = load i32, ptr %33, align 4
  store i32 %56, ptr %55, align 4
  %57 = getelementptr i8, ptr %33, i32 4
  %58 = load i16, ptr %57, align 2
  %59 = getelementptr i8, ptr %23, i32 1424
  store i16 %58, ptr %59, align 2
  %60 = load ptr, ptr %8, align 4
  %61 = getelementptr %struct.cpsw_slave, ptr %60, i32 %14, i32 5
  store ptr %23, ptr %61, align 4
  %62 = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 23
  %63 = load i64, ptr %62, align 16
  %64 = or i64 %63, 8960
  store i64 %64, ptr %62, align 16
  %65 = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 16
  store ptr @cpsw_netdev_ops, ptr %65, align 8
  %66 = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 42
  store ptr @cpsw_ethtool_ops, ptr %66, align 8
  %67 = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 111, i32 1
  store ptr %3, ptr %67, align 4
  %68 = icmp eq ptr %15, null
  br i1 %68, label %69, label %77

69:                                               ; preds = %54
  %70 = load i8, ptr %10, align 8, !range !8
  %71 = icmp eq i8 %70, 0
  %72 = select i1 %71, ptr @cpsw_rx_mq_poll, ptr @cpsw_rx_poll
  tail call void @netif_napi_add(ptr noundef nonnull %23, ptr noundef %9, ptr noundef nonnull %72, i32 noundef 64) #13
  %73 = load i8, ptr %10, align 8, !range !8
  %74 = icmp eq i8 %73, 0
  %75 = select i1 %74, ptr @cpsw_tx_mq_poll, ptr @cpsw_tx_poll
  tail call void @_set_bit(i32 noundef 5, ptr noundef %12) #13
  tail call void @netif_napi_add(ptr noundef nonnull %23, ptr noundef %11, ptr noundef nonnull %75, i32 noundef 64) #13
  br label %77

76:                                               ; preds = %22
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.46) #14
  br label %82

77:                                               ; preds = %69, %54, %20
  %78 = phi i32 [ %21, %20 ], [ %30, %69 ], [ %30, %54 ]
  %79 = phi ptr [ %15, %20 ], [ %23, %69 ], [ %23, %54 ]
  %80 = load i32, ptr %4, align 4
  %81 = icmp ult i32 %78, %80
  br i1 %81, label %13, label %82

82:                                               ; preds = %77, %76, %1
  %83 = phi i32 [ -12, %76 ], [ 0, %1 ], [ 0, %77 ]
  ret i32 %83
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_rx_interrupt(i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_tx_interrupt(i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_misc_interrupt(i32 noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cpsw_register_notifiers(ptr noundef %0) unnamed_addr #4 {
  %2 = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @cpsw_netdevice_nb) #13
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.50) #14
  br label %11

6:                                                ; preds = %1
  %7 = tail call i32 @cpsw_switchdev_register_notifiers(ptr noundef %0) #13
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @cpsw_netdevice_nb) #13
  br label %11

11:                                               ; preds = %9, %6, %4
  %12 = phi i32 [ %2, %4 ], [ %7, %9 ], [ 0, %6 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cpsw_register_devlink(ptr noundef %0) unnamed_addr #4 {
  %2 = load ptr, ptr %0, align 8
  %3 = tail call ptr @devlink_alloc_ns(ptr noundef nonnull @cpsw_devlink_ops, i32 noundef 4, ptr noundef nonnull @init_net, ptr noundef %2) #13
  %4 = getelementptr inbounds %struct.cpsw_common, ptr %0, i32 0, i32 24
  store ptr %3, ptr %4, align 4
  %5 = icmp eq ptr %3, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @devlink_priv(ptr noundef nonnull %3) #13
  store ptr %0, ptr %7, align 4
  %8 = load ptr, ptr %4, align 4
  %9 = tail call i32 @devlink_params_register(ptr noundef %8, ptr noundef nonnull @cpsw_devlink_params, i32 noundef 2) #13
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.51, i32 noundef %9) #14
  %12 = load ptr, ptr %4, align 4
  tail call void @devlink_free(ptr noundef %12) #13
  br label %15

13:                                               ; preds = %6
  %14 = load ptr, ptr %4, align 4
  tail call void @devlink_register(ptr noundef %14) #13
  br label %15

15:                                               ; preds = %13, %11, %1
  %16 = phi i32 [ %9, %11 ], [ 0, %13 ], [ -12, %1 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cpsw_register_ports(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.cpsw_common, ptr %0, i32 0, i32 1, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %42, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.cpsw_common, ptr %0, i32 0, i32 13
  br label %7

7:                                                ; preds = %19, %5
  %8 = phi i32 [ %3, %5 ], [ %20, %19 ]
  %9 = phi i32 [ 0, %5 ], [ %21, %19 ]
  %10 = load ptr, ptr %6, align 4
  %11 = getelementptr %struct.cpsw_slave, ptr %10, i32 %9, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %7
  %15 = tail call i32 @register_netdev(ptr noundef nonnull %12) #13
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %14
  %18 = load i32, ptr %2, align 4
  br label %19

19:                                               ; preds = %17, %7
  %20 = phi i32 [ %18, %17 ], [ %8, %7 ]
  %21 = add nuw i32 %9, 1
  %22 = icmp ult i32 %21, %20
  br i1 %22, label %7, label %42

23:                                               ; preds = %14
  %24 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.57, i32 noundef %9) #14
  %25 = load ptr, ptr %6, align 4
  %26 = getelementptr %struct.cpsw_slave, ptr %25, i32 %9, i32 5
  store ptr null, ptr %26, align 4
  %27 = load i32, ptr %2, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %42, label %29

29:                                               ; preds = %38, %23
  %30 = phi i32 [ %39, %38 ], [ %27, %23 ]
  %31 = phi i32 [ %40, %38 ], [ 0, %23 ]
  %32 = load ptr, ptr %6, align 4
  %33 = getelementptr %struct.cpsw_slave, ptr %32, i32 %31, i32 5
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %29
  tail call void @unregister_netdev(ptr noundef nonnull %34) #13
  %37 = load i32, ptr %2, align 4
  br label %38

38:                                               ; preds = %36, %29
  %39 = phi i32 [ %30, %29 ], [ %37, %36 ]
  %40 = add nuw i32 %31, 1
  %41 = icmp ult i32 %40, %39
  br i1 %41, label %29, label %42

42:                                               ; preds = %38, %23, %19, %1
  %43 = phi i32 [ %15, %23 ], [ 0, %1 ], [ %15, %38 ], [ 0, %19 ]
  ret i32 %43
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @cpsw_unregister_ports(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.cpsw_common, ptr %0, i32 0, i32 1, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %20, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.cpsw_common, ptr %0, i32 0, i32 13
  br label %7

7:                                                ; preds = %16, %5
  %8 = phi i32 [ %3, %5 ], [ %17, %16 ]
  %9 = phi i32 [ 0, %5 ], [ %18, %16 ]
  %10 = load ptr, ptr %6, align 4
  %11 = getelementptr %struct.cpsw_slave, ptr %10, i32 %9, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %7
  tail call void @unregister_netdev(ptr noundef nonnull %12) #13
  %15 = load i32, ptr %2, align 4
  br label %16

16:                                               ; preds = %14, %7
  %17 = phi i32 [ %8, %7 ], [ %15, %14 ]
  %18 = add nuw i32 %9, 1
  %19 = icmp ult i32 %18, %17
  br i1 %19, label %7, label %20

20:                                               ; preds = %16, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpts_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpdma_ctlr_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_of_platform_populate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_of_phy_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_phy_is_fixed_link(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_phy_register_fixed_link(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_phy_mode(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_mac_address(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ti_cm_get_macid(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_run_xdp(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @build_skb(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_rx_vlan_encap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpts_rx_timestamp(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_receive_skb(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpdma_chan_submit_mapped(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_pool_put_page(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_pool_alloc_pages(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_alloc_etherdev_mqs(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_rx_poll(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_rx_mq_poll(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_tx_poll(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_tx_mq_poll(ptr noundef, i32 noundef) #3

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cpsw_get_drvinfo(ptr nocapture noundef readonly %0, ptr noundef %1) #6 {
  %3 = getelementptr i8, ptr %0, i32 1996
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %5, i32 -16
  %7 = getelementptr inbounds %struct.ethtool_drvinfo, ptr %1, i32 0, i32 1
  %8 = tail call i32 @strlcpy(ptr noundef %7, ptr noundef nonnull @.str.17, i32 noundef 32) #13
  %9 = getelementptr inbounds %struct.ethtool_drvinfo, ptr %1, i32 0, i32 2
  %10 = tail call i32 @strlcpy(ptr noundef %9, ptr noundef nonnull @.str.49, i32 noundef 32) #13
  %11 = getelementptr inbounds %struct.ethtool_drvinfo, ptr %1, i32 0, i32 4
  %12 = load ptr, ptr %6, align 8
  %13 = tail call i32 @strlcpy(ptr noundef %11, ptr noundef %12, i32 noundef 32) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_get_regs_len(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_get_regs(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_get_wol(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_set_wol(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_get_msglevel(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_set_msglevel(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_nway_reset(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_get_coalesce(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_get_ringparam(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_set_ringparam(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_get_pauseparam(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpsw_set_pauseparam(ptr noundef %0, ptr noundef %1) #4 {
  %3 = getelementptr i8, ptr %0, i32 1408
  %4 = getelementptr i8, ptr %0, i32 1996
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr @cpsw_slave_index, align 4
  %7 = tail call i32 %6(ptr noundef %5, ptr noundef %3) #13
  %8 = getelementptr inbounds %struct.cpsw_common, ptr %5, i32 0, i32 13
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr %struct.cpsw_slave, ptr %9, i32 %7, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %29, label %13

13:                                               ; preds = %2
  %14 = tail call zeroext i1 @phy_validate_pause(ptr noundef nonnull %11, ptr noundef %1) #13
  br i1 %14, label %15, label %29

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %1, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = icmp ne i32 %17, 0
  %19 = getelementptr i8, ptr %0, i32 1426
  %20 = zext i1 %18 to i8
  store i8 %20, ptr %19, align 2
  %21 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %1, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = icmp ne i32 %22, 0
  %24 = getelementptr i8, ptr %0, i32 1427
  %25 = zext i1 %23 to i8
  store i8 %25, ptr %24, align 1
  %26 = load ptr, ptr %8, align 4
  %27 = getelementptr %struct.cpsw_slave, ptr %26, i32 %7, i32 4
  %28 = load ptr, ptr %27, align 4
  tail call void @phy_set_asym_pause(ptr noundef %28, i1 noundef zeroext %18, i1 noundef zeroext %23) #13
  br label %29

29:                                               ; preds = %15, %13, %2
  %30 = phi i32 [ 0, %15 ], [ -22, %2 ], [ -22, %13 ]
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_get_strings(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_get_ethtool_stats(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_ethtool_op_begin(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_ethtool_op_complete(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_get_sset_count(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_get_channels(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpsw_set_channels(ptr noundef %0, ptr noundef %1) #4 {
  %3 = tail call i32 @cpsw_set_channels_common(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @cpsw_rx_handler) #13
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_get_ts_info(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_get_eee(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_set_eee(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_get_link_ksettings(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_set_link_ksettings(ptr noundef, ptr noundef) #3

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @phy_validate_pause(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_set_asym_pause(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_set_channels_common(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_switchdev_register_notifiers(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpsw_netdevice_event(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readonly %2) #4 {
  %4 = getelementptr inbounds %struct.netdev_notifier_info, ptr %2, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %2, align 4
  %7 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 16
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, @cpsw_netdev_ops
  br i1 %9, label %10, label %108

10:                                               ; preds = %3
  %11 = getelementptr i8, ptr %6, i32 1996
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.cpsw_common, ptr %12, i32 0, i32 1, i32 8
  %14 = load i8, ptr %13, align 2, !range !8
  %15 = icmp eq i8 %14, 0
  %16 = icmp eq i32 %1, 21
  %17 = and i1 %16, %15
  br i1 %17, label %18, label %108

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.netdev_notifier_changeupper_info, ptr %2, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 15
  %22 = load i64, ptr %21, align 16
  %23 = and i64 %22, 2
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %108, label %25

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.netdev_notifier_changeupper_info, ptr %2, i32 0, i32 3
  %27 = load i8, ptr %26, align 1, !range !8
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %68, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.cpsw_common, ptr %12, i32 0, i32 30
  %31 = load i8, ptr %30, align 8
  %32 = icmp eq i8 %31, 0
  %33 = getelementptr inbounds %struct.cpsw_common, ptr %12, i32 0, i32 31
  br i1 %32, label %34, label %35

34:                                               ; preds = %29
  store ptr %20, ptr %33, align 4
  br label %38

35:                                               ; preds = %29
  %36 = load ptr, ptr %33, align 4
  %37 = icmp eq ptr %36, %20
  br i1 %37, label %38, label %104

38:                                               ; preds = %35, %34
  %39 = tail call i32 @switchdev_bridge_port_offload(ptr noundef %6, ptr noundef %6, ptr noundef null, ptr noundef null, ptr noundef null, i1 noundef zeroext false, ptr noundef %5) #13
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %104

41:                                               ; preds = %38
  %42 = getelementptr i8, ptr %6, i32 1992
  %43 = load i32, ptr %42, align 8
  %44 = shl nuw i32 1, %43
  %45 = load i8, ptr %30, align 8
  %46 = trunc i32 %44 to i8
  %47 = or i8 %45, %46
  store i8 %47, ptr %30, align 8
  %48 = getelementptr inbounds %struct.cpsw_common, ptr %12, i32 0, i32 32
  %49 = load i8, ptr %48, align 8, !range !8
  %50 = icmp eq i8 %49, 0
  %51 = icmp eq i8 %47, 6
  %52 = select i1 %50, i1 %51, i1 false
  %53 = zext i1 %52 to i32
  %54 = getelementptr inbounds %struct.cpsw_common, ptr %12, i32 0, i32 1, i32 3
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %108, label %57

57:                                               ; preds = %41
  %58 = getelementptr inbounds %struct.cpsw_common, ptr %12, i32 0, i32 13
  br label %59

59:                                               ; preds = %59, %57
  %60 = phi i32 [ 0, %57 ], [ %65, %59 ]
  %61 = load ptr, ptr %58, align 4
  %62 = getelementptr %struct.cpsw_slave, ptr %61, i32 %60, i32 5
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr i8, ptr %63, i32 2000
  store i32 %53, ptr %64, align 16
  %65 = add nuw i32 %60, 1
  %66 = load i32, ptr %54, align 4
  %67 = icmp ult i32 %65, %66
  br i1 %67, label %59, label %108

68:                                               ; preds = %25
  tail call void @switchdev_bridge_port_unoffload(ptr noundef %6, ptr noundef null, ptr noundef null, ptr noundef null) #13
  %69 = getelementptr i8, ptr %6, i32 1992
  %70 = load i32, ptr %69, align 8
  %71 = shl nuw i32 1, %70
  %72 = getelementptr inbounds %struct.cpsw_common, ptr %12, i32 0, i32 30
  %73 = load i8, ptr %72, align 8
  %74 = trunc i32 %71 to i8
  %75 = xor i8 %74, -1
  %76 = and i8 %73, %75
  store i8 %76, ptr %72, align 8
  %77 = getelementptr inbounds %struct.cpsw_common, ptr %12, i32 0, i32 32
  %78 = load i8, ptr %77, align 8, !range !8
  %79 = icmp eq i8 %78, 0
  %80 = icmp eq i8 %76, 6
  %81 = select i1 %79, i1 %80, i1 false
  %82 = zext i1 %81 to i32
  %83 = getelementptr inbounds %struct.cpsw_common, ptr %12, i32 0, i32 1, i32 3
  %84 = load i32, ptr %83, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %99, label %86

86:                                               ; preds = %68
  %87 = getelementptr inbounds %struct.cpsw_common, ptr %12, i32 0, i32 13
  br label %88

88:                                               ; preds = %88, %86
  %89 = phi i32 [ 0, %86 ], [ %94, %88 ]
  %90 = load ptr, ptr %87, align 4
  %91 = getelementptr %struct.cpsw_slave, ptr %90, i32 %89, i32 5
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr i8, ptr %92, i32 2000
  store i32 %82, ptr %93, align 16
  %94 = add nuw i32 %89, 1
  %95 = load i32, ptr %83, align 4
  %96 = icmp ult i32 %94, %95
  br i1 %96, label %88, label %97

97:                                               ; preds = %88
  %98 = load i8, ptr %72, align 8
  br label %99

99:                                               ; preds = %97, %68
  %100 = phi i8 [ %98, %97 ], [ %76, %68 ]
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %99
  %103 = getelementptr inbounds %struct.cpsw_common, ptr %12, i32 0, i32 31
  store ptr null, ptr %103, align 4
  br label %108

104:                                              ; preds = %38, %35
  %105 = phi i32 [ -95, %35 ], [ %39, %38 ]
  %106 = sub i32 1, %105
  %107 = or i32 %106, 32768
  br label %108

108:                                              ; preds = %104, %102, %99, %59, %41, %18, %10, %3
  %109 = phi i32 [ 0, %10 ], [ %107, %104 ], [ 1, %18 ], [ 1, %41 ], [ 1, %99 ], [ 1, %102 ], [ 0, %3 ], [ 1, %59 ]
  ret i32 %109
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @switchdev_bridge_port_offload(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @switchdev_bridge_port_unoffload(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devlink_priv(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_params_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devlink_alloc_ns(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpsw_dl_switch_mode_get(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #4 {
  %4 = tail call ptr @devlink_priv(ptr noundef %0) #13
  %5 = icmp eq i32 %1, 17
  br i1 %5, label %6, label %11

6:                                                ; preds = %3
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr inbounds %struct.cpsw_common, ptr %7, i32 0, i32 1, i32 8
  %9 = load i8, ptr %8, align 2, !range !8
  %10 = xor i8 %9, 1
  store i8 %10, ptr %2, align 4
  br label %11

11:                                               ; preds = %6, %3
  %12 = phi i32 [ 0, %6 ], [ -95, %3 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpsw_dl_switch_mode_set(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) #4 {
  %4 = tail call ptr @devlink_priv(ptr noundef %0) #13
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.cpsw_common, ptr %5, i32 0, i32 1, i32 7
  %7 = load i16, ptr %6, align 4
  %8 = zext i16 %7 to i32
  %9 = load i8, ptr %2, align 4, !range !8
  %10 = icmp eq i8 %9, 0
  %11 = icmp eq i32 %1, 17
  br i1 %11, label %12, label %186

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.cpsw_common, ptr %5, i32 0, i32 1, i32 8
  %14 = load i8, ptr %13, align 2, !range !8
  %15 = xor i8 %14, 1
  %16 = icmp eq i8 %9, %15
  br i1 %16, label %186, label %17

17:                                               ; preds = %12
  br i1 %10, label %18, label %24

18:                                               ; preds = %17
  %19 = getelementptr inbounds %struct.cpsw_common, ptr %5, i32 0, i32 30
  %20 = load i8, ptr %19, align 8
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.54) #14
  br label %186

24:                                               ; preds = %18, %17
  tail call void @rtnl_lock() #13
  %25 = getelementptr inbounds %struct.cpsw_common, ptr %5, i32 0, i32 1, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = xor i8 %9, 1
  br label %183

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.cpsw_common, ptr %5, i32 0, i32 13
  %32 = load ptr, ptr %31, align 4
  br label %33

33:                                               ; preds = %45, %30
  %34 = phi i32 [ 0, %30 ], [ %47, %45 ]
  %35 = phi i1 [ false, %30 ], [ %46, %45 ]
  %36 = getelementptr %struct.cpsw_slave, ptr %32, i32 %34, i32 5
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %45, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.net_device, ptr %37, i32 0, i32 6
  %41 = load volatile i32, ptr %40, align 4
  %42 = and i32 %41, 1
  %43 = icmp ne i32 %42, 0
  %44 = select i1 %43, i1 true, i1 %35
  br label %45

45:                                               ; preds = %39, %33
  %46 = phi i1 [ %35, %33 ], [ %44, %39 ]
  %47 = add nuw i32 %34, 1
  %48 = icmp eq i32 %47, %26
  br i1 %48, label %49, label %33

49:                                               ; preds = %45
  br i1 %46, label %76, label %50

50:                                               ; preds = %49
  %51 = xor i8 %9, 1
  store i8 %51, ptr %13, align 2
  br i1 %27, label %185, label %52

52:                                               ; preds = %50
  %53 = getelementptr inbounds %struct.cpsw_common, ptr %5, i32 0, i32 13
  br label %54

54:                                               ; preds = %72, %52
  %55 = phi i32 [ %26, %52 ], [ %73, %72 ]
  %56 = phi i32 [ 0, %52 ], [ %74, %72 ]
  %57 = load ptr, ptr %53, align 4
  %58 = getelementptr %struct.cpsw_slave, ptr %57, i32 %56, i32 5
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %72, label %61

61:                                               ; preds = %54
  br i1 %10, label %62, label %66

62:                                               ; preds = %61
  %63 = getelementptr %struct.cpsw_slave, ptr %57, i32 %56, i32 3
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.cpsw_slave_data, ptr %64, i32 0, i32 5
  br label %66

66:                                               ; preds = %62, %61
  %67 = phi ptr [ %65, %62 ], [ %6, %61 ]
  %68 = load i16, ptr %67, align 2
  %69 = zext i16 %68 to i32
  %70 = getelementptr %struct.cpsw_slave, ptr %57, i32 %56, i32 6
  store i32 %69, ptr %70, align 4
  %71 = load i32, ptr %25, align 4
  br label %72

72:                                               ; preds = %66, %54
  %73 = phi i32 [ %55, %54 ], [ %71, %66 ]
  %74 = add nuw i32 %56, 1
  %75 = icmp ult i32 %74, %73
  br i1 %75, label %54, label %185

76:                                               ; preds = %49
  %77 = load ptr, ptr %5, align 8
  br i1 %10, label %146, label %78

78:                                               ; preds = %76
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %77, ptr noundef nonnull @.str.55) #14
  %79 = getelementptr inbounds %struct.cpsw_common, ptr %5, i32 0, i32 17
  %80 = load ptr, ptr %79, align 4
  %81 = tail call i32 @cpsw_ale_control_set(ptr noundef %80, i32 noundef 0, i32 noundef 7, i32 noundef 1) #13
  %82 = load ptr, ptr %79, align 4
  %83 = tail call i32 @cpsw_ale_control_set(ptr noundef %82, i32 noundef 0, i32 noundef 1, i32 noundef 1) #13
  %84 = load ptr, ptr %79, align 4
  %85 = tail call i32 @cpsw_ale_control_get(ptr noundef %84, i32 noundef 0, i32 noundef 2) #13
  tail call fastcc void @cpsw_init_host_port_switch(ptr noundef %5)
  %86 = load i32, ptr %25, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %143, label %88

88:                                               ; preds = %78
  %89 = getelementptr inbounds %struct.cpsw_common, ptr %5, i32 0, i32 13
  br label %90

90:                                               ; preds = %139, %88
  %91 = phi i32 [ 0, %88 ], [ %140, %139 ]
  %92 = load ptr, ptr %89, align 4
  %93 = getelementptr %struct.cpsw_slave, ptr %92, i32 %91
  %94 = getelementptr %struct.cpsw_slave, ptr %92, i32 %91, i32 5
  %95 = load ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, null
  br i1 %96, label %139, label %97

97:                                               ; preds = %90
  %98 = getelementptr %struct.cpsw_slave, ptr %92, i32 %91, i32 6
  store i32 %8, ptr %98, align 4
  %99 = getelementptr i8, ptr %95, i32 2004
  store volatile i32 64, ptr %99, align 4
  %100 = getelementptr inbounds %struct.net_device, ptr %95, i32 0, i32 6
  %101 = load volatile i32, ptr %100, align 4
  %102 = and i32 %101, 1
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %139, label %104

104:                                              ; preds = %97
  %105 = getelementptr i8, ptr %95, i32 1408
  %106 = getelementptr i8, ptr %95, i32 1992
  %107 = load i32, ptr %106, align 8
  %108 = shl nuw i32 1, %107
  %109 = or i32 %108, 1
  %110 = getelementptr i8, ptr %95, i32 1996
  %111 = load ptr, ptr %110, align 4
  %112 = getelementptr inbounds %struct.cpsw_common, ptr %111, i32 0, i32 17
  %113 = load ptr, ptr %112, align 4
  %114 = tail call i32 @cpsw_ale_control_set(ptr noundef %113, i32 noundef %107, i32 noundef 14, i32 noundef 0) #13
  %115 = load ptr, ptr %112, align 4
  %116 = load i32, ptr %106, align 8
  %117 = tail call i32 @cpsw_ale_control_set(ptr noundef %115, i32 noundef %116, i32 noundef 15, i32 noundef 0) #13
  %118 = load ptr, ptr %112, align 4
  %119 = load i32, ptr %106, align 8
  %120 = tail call i32 @cpsw_ale_control_set(ptr noundef %118, i32 noundef %119, i32 noundef 16, i32 noundef 1) #13
  %121 = load ptr, ptr %112, align 4
  %122 = load ptr, ptr %105, align 64
  %123 = getelementptr inbounds %struct.net_device, ptr %122, i32 0, i32 83
  %124 = load i32, ptr %98, align 4
  %125 = trunc i32 %124 to i16
  %126 = tail call i32 @cpsw_ale_add_mcast(ptr noundef %121, ptr noundef %123, i32 noundef %109, i32 noundef 8, i16 noundef zeroext %125, i32 noundef 3) #13
  %127 = load ptr, ptr %112, align 4
  %128 = getelementptr i8, ptr %95, i32 1420
  %129 = load i32, ptr %98, align 4
  %130 = trunc i32 %129 to i16
  %131 = tail call i32 @cpsw_ale_add_ucast(ptr noundef %127, ptr noundef %128, i32 noundef 0, i32 noundef 8, i16 noundef zeroext %130) #13
  %132 = getelementptr inbounds %struct.cpsw_common, ptr %111, i32 0, i32 8
  %133 = load i32, ptr %132, align 8
  %134 = icmp eq i32 %133, 1638666
  %135 = select i1 %134, i32 12, i32 20
  %136 = load i32, ptr %98, align 4
  %137 = load ptr, ptr %93, align 4
  %138 = getelementptr i8, ptr %137, i32 %135
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %138, i32 %136) #13, !srcloc !16
  br label %139

139:                                              ; preds = %104, %97, %90
  %140 = add nuw i32 %91, 1
  %141 = load i32, ptr %25, align 4
  %142 = icmp ult i32 %140, %141
  br i1 %142, label %90, label %143

143:                                              ; preds = %139, %78
  %144 = load ptr, ptr %79, align 4
  %145 = tail call i32 @cpsw_ale_control_set(ptr noundef %144, i32 noundef 0, i32 noundef 7, i32 noundef 0) #13
  br label %183

146:                                              ; preds = %76
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %77, ptr noundef nonnull @.str.56) #14
  %147 = getelementptr inbounds %struct.cpsw_common, ptr %5, i32 0, i32 17
  %148 = load ptr, ptr %147, align 4
  %149 = tail call i32 @cpsw_ale_control_set(ptr noundef %148, i32 noundef 0, i32 noundef 7, i32 noundef 1) #13
  %150 = load ptr, ptr %147, align 4
  %151 = tail call i32 @cpsw_ale_control_set(ptr noundef %150, i32 noundef 0, i32 noundef 1, i32 noundef 1) #13
  %152 = load ptr, ptr %147, align 4
  %153 = tail call i32 @cpsw_ale_control_get(ptr noundef %152, i32 noundef 0, i32 noundef 2) #13
  tail call fastcc void @cpsw_init_host_port_dual_mac(ptr noundef %5)
  %154 = load i32, ptr %25, align 4
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %180, label %156

156:                                              ; preds = %146
  %157 = getelementptr inbounds %struct.cpsw_common, ptr %5, i32 0, i32 13
  br label %158

158:                                              ; preds = %176, %156
  %159 = phi i32 [ %154, %156 ], [ %177, %176 ]
  %160 = phi i32 [ 0, %156 ], [ %178, %176 ]
  %161 = load ptr, ptr %157, align 4
  %162 = getelementptr %struct.cpsw_slave, ptr %161, i32 %160, i32 5
  %163 = load ptr, ptr %162, align 4
  %164 = icmp eq ptr %163, null
  br i1 %164, label %176, label %165

165:                                              ; preds = %158
  %166 = getelementptr %struct.cpsw_slave, ptr %161, i32 %160
  %167 = getelementptr i8, ptr %163, i32 1408
  %168 = getelementptr %struct.cpsw_slave, ptr %161, i32 %160, i32 3
  %169 = load ptr, ptr %168, align 4
  %170 = getelementptr inbounds %struct.cpsw_slave_data, ptr %169, i32 0, i32 5
  %171 = load i16, ptr %170, align 2
  %172 = zext i16 %171 to i32
  %173 = getelementptr %struct.cpsw_slave, ptr %161, i32 %160, i32 6
  store i32 %172, ptr %173, align 4
  %174 = getelementptr i8, ptr %163, i32 2004
  store volatile i32 60, ptr %174, align 4
  tail call fastcc void @cpsw_port_add_dual_emac_def_ale_entries(ptr noundef %167, ptr noundef %166)
  %175 = load i32, ptr %25, align 4
  br label %176

176:                                              ; preds = %165, %158
  %177 = phi i32 [ %159, %158 ], [ %175, %165 ]
  %178 = add nuw i32 %160, 1
  %179 = icmp ult i32 %178, %177
  br i1 %179, label %158, label %180

180:                                              ; preds = %176, %146
  %181 = load ptr, ptr %147, align 4
  %182 = tail call i32 @cpsw_ale_control_set(ptr noundef %181, i32 noundef 0, i32 noundef 7, i32 noundef 0) #13
  br label %183

183:                                              ; preds = %180, %143, %28
  %184 = phi i8 [ %29, %28 ], [ 0, %143 ], [ 1, %180 ]
  store i8 %184, ptr %13, align 2
  br label %185

185:                                              ; preds = %183, %72, %50
  tail call void @rtnl_unlock() #13
  br label %186

186:                                              ; preds = %185, %22, %12, %3
  %187 = phi i32 [ 0, %185 ], [ -22, %22 ], [ -95, %3 ], [ 0, %12 ]
  ret i32 %187
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpsw_dl_ale_ctrl_get(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #4 {
  %4 = tail call ptr @devlink_priv(ptr noundef %0) #13
  %5 = icmp eq i32 %1, 18
  br i1 %5, label %6, label %13

6:                                                ; preds = %3
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr inbounds %struct.cpsw_common, ptr %7, i32 0, i32 17
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @cpsw_ale_control_get(ptr noundef %9, i32 noundef 0, i32 noundef 7) #13
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i8
  store i8 %12, ptr %2, align 4
  br label %13

13:                                               ; preds = %6, %3
  %14 = phi i32 [ 0, %6 ], [ -95, %3 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpsw_dl_ale_ctrl_set(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) #4 {
  %4 = tail call ptr @devlink_priv(ptr noundef %0) #13
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq i32 %1, 18
  br i1 %6, label %7, label %39

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.cpsw_common, ptr %5, i32 0, i32 17
  %9 = load ptr, ptr %8, align 4
  %10 = load i8, ptr %2, align 4, !range !8
  %11 = zext i8 %10 to i32
  %12 = tail call i32 @cpsw_ale_control_set(ptr noundef %9, i32 noundef 0, i32 noundef 7, i32 noundef %11) #13
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %39

14:                                               ; preds = %7
  %15 = load i8, ptr %2, align 4, !range !8
  %16 = getelementptr inbounds %struct.cpsw_common, ptr %5, i32 0, i32 32
  store i8 %15, ptr %16, align 8
  %17 = icmp eq i8 %15, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.cpsw_common, ptr %5, i32 0, i32 30
  %20 = load i8, ptr %19, align 8
  %21 = icmp eq i8 %20, 6
  %22 = zext i1 %21 to i32
  br label %23

23:                                               ; preds = %18, %14
  %24 = phi i32 [ 0, %14 ], [ %22, %18 ]
  %25 = getelementptr inbounds %struct.cpsw_common, ptr %5, i32 0, i32 1, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.cpsw_common, ptr %5, i32 0, i32 13
  br label %30

30:                                               ; preds = %30, %28
  %31 = phi i32 [ 0, %28 ], [ %36, %30 ]
  %32 = load ptr, ptr %29, align 4
  %33 = getelementptr %struct.cpsw_slave, ptr %32, i32 %31, i32 5
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr i8, ptr %34, i32 2000
  store i32 %24, ptr %35, align 16
  %36 = add nuw i32 %31, 1
  %37 = load i32, ptr %25, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %30, label %39

39:                                               ; preds = %30, %23, %7, %3
  %40 = phi i32 [ -95, %3 ], [ 0, %7 ], [ 0, %23 ], [ 0, %30 ]
  ret i32 %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_ale_control_get(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_switchdev_unregister_notifiers(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_phy_deregister_fixed_link(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_params_unregister(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpsw_suspend(ptr noundef %0) #4 {
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
  %25 = phi i32 [ %10, %9 ], [ %10, %16 ], [ %23, %21 ]
  %26 = add nuw i32 %11, 1
  %27 = icmp ult i32 %26, %25
  br i1 %27, label %9, label %28

28:                                               ; preds = %24, %1
  tail call void @rtnl_unlock() #13
  %29 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %0) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpsw_resume(ptr noundef %0) #4 {
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
  %26 = phi i32 [ %11, %10 ], [ %11, %17 ], [ %24, %22 ]
  %27 = add nuw i32 %12, 1
  %28 = icmp ult i32 %27, %26
  br i1 %28, label %10, label %29

29:                                               ; preds = %25, %1
  tail call void @rtnl_unlock() #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i8 0, i8 2}
!9 = !{i64 2148148758}
!10 = !{i64 647865, i64 2148137836, i64 2148137862, i64 2148137909, i64 2148137931, i64 2148137959, i64 2148137979}
!11 = !{i64 634434, i64 634459, i64 634481, i64 634497, i64 634509, i64 634529, i64 634553, i64 634569, i64 634581}
!12 = !{i64 2148148884}
!13 = !{i64 413024}
!14 = !{i64 2157488551}
!15 = !{i64 2157488911}
!16 = !{i64 412606}
!17 = !{i64 2157489831}
!18 = !{i64 2157486049}
!19 = !{i64 2157488048}
!20 = !{i64 2157496349}
!21 = !{!"auto-init"}
!22 = !{!"branch_weights", i32 1, i32 2000}
!23 = !{!"branch_weights", i32 2000, i32 1}
!24 = !{i64 2153461739, i64 2153462227, i64 2153461776, i64 2153461832, i64 2153461866, i64 2153461890, i64 2153461931, i64 2153461952, i64 2153461980, i64 2153462014}
!25 = !{i64 2157501634}
!26 = !{i64 2157501785}
!27 = !{i64 2157485692}
!28 = !{i64 2157487134}
