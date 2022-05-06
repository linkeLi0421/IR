; ModuleID = '/llk/IR/drivers/net/ethernet/calxeda/xgmac.c_pt.bc'
source_filename = "../drivers/net/ethernet/calxeda/xgmac.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xgmac_stats = type { [32 x i8], i32, i8 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.xgmac_dma_desc = type { i32, i32, i32, i32, i32, [3 x i32] }
%struct.netdev_queue = type { ptr, %struct.netdevice_tracker, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, [4 x i8], %struct.spinlock, i32, i32, i32, [48 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [52 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [24 x i8] }
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
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.page = type { i32, %union.anon.1, %union.anon.89, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.89 = type { %struct.atomic_t }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.xgmac_priv = type { ptr, ptr, i32, i32, ptr, ptr, i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, %struct.napi_struct, i32, %struct.xgmac_extra_stats, %struct.spinlock, i32, i8, i8, i32, %struct.work_struct }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.xgmac_extra_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.ethtool_pauseparam = type { i32, i32, i32, i32 }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.111, i32 }
%struct.anon.111 = type { [3 x i32], [3 x i32], [3 x i32] }

@__initcall__kmod_xgmac__320_1927_xgmac_driver_init6 = internal global ptr @xgmac_driver_init, section ".initcall6.init", align 4
@xgmac_driver = internal global %struct.platform_driver { ptr @xgmac_probe, ptr @xgmac_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @xgmac_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xgmac_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_xgmac_driver_exit = internal global ptr @xgmac_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author321 = internal constant [27 x i8] c"xgmac.author=Calxeda, Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_description322 = internal constant [43 x i8] c"xgmac.description=Calxeda 10G XGMAC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file323 = internal constant [46 x i8] c"xgmac.file=drivers/net/ethernet/calxeda/xgmac\00", section ".modinfo", align 1
@__UNIQUE_ID_license324 = internal constant [21 x i8] c"xgmac.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [13 x i8] c"calxedaxgmac\00", align 1
@xgmac_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"calxeda,hb-xgmac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@xgmac_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @xgmac_suspend, ptr @xgmac_resume, ptr @xgmac_suspend, ptr @xgmac_resume, ptr @xgmac_suspend, ptr @xgmac_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@xgmac_netdev_ops = internal constant %struct.net_device_ops { ptr null, ptr null, ptr @xgmac_open, ptr @xgmac_stop, ptr @xgmac_xmit, ptr null, ptr null, ptr null, ptr @xgmac_set_rx_mode, ptr @xgmac_set_mac_address, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xgmac_change_mtu, ptr null, ptr @xgmac_tx_timeout, ptr @xgmac_get_stats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xgmac_set_features, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@xgmac_ethtool_ops = internal constant %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr @xgmac_get_wol, ptr @xgmac_set_wol, ptr null, ptr null, ptr null, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xgmac_get_pauseparam, ptr @xgmac_set_pauseparam, ptr null, ptr @xgmac_get_strings, ptr null, ptr @xgmac_get_ethtool_stats, ptr null, ptr null, ptr null, ptr null, ptr @xgmac_get_sset_count, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xgmac_ethtool_get_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"ioremap failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"h/w version is 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"No irq resource\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Could not request irq %d - ret %d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"No pmt irq resource\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"MAC address %pM not valid\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"include/linux/dma-mapping.h\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@xgmac_gstrings_stats = internal unnamed_addr constant [19 x %struct.xgmac_stats] [%struct.xgmac_stats { [32 x i8] c"tx_frame_flushed\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 288, i8 0 }, %struct.xgmac_stats { [32 x i8] c"tx_payload_error\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 292, i8 0 }, %struct.xgmac_stats { [32 x i8] c"tx_ip_header_error\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 296, i8 0 }, %struct.xgmac_stats { [32 x i8] c"tx_local_fault\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 300, i8 0 }, %struct.xgmac_stats { [32 x i8] c"tx_remote_fault\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 304, i8 0 }, %struct.xgmac_stats { [32 x i8] c"tx_early\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 336, i8 0 }, %struct.xgmac_stats { [32 x i8] c"tx_process_stopped\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 324, i8 0 }, %struct.xgmac_stats { [32 x i8] c"tx_jabber\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 284, i8 0 }, %struct.xgmac_stats { [32 x i8] c"rx_buf_unav\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 328, i8 0 }, %struct.xgmac_stats { [32 x i8] c"rx_process_stopped\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 332, i8 0 }, %struct.xgmac_stats { [32 x i8] c"rx_payload_error\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 316, i8 0 }, %struct.xgmac_stats { [32 x i8] c"rx_ip_header_error\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 320, i8 0 }, %struct.xgmac_stats { [32 x i8] c"rx_da_filter_fail\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 312, i8 0 }, %struct.xgmac_stats { [32 x i8] c"fatal_bus_error\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 340, i8 0 }, %struct.xgmac_stats { [32 x i8] c"rx_watchdog\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2464, i8 1 }, %struct.xgmac_stats { [32 x i8] c"tx_vlan\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2204, i8 1 }, %struct.xgmac_stats { [32 x i8] c"rx_vlan\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2456, i8 1 }, %struct.xgmac_stats { [32 x i8] c"tx_pause\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2196, i8 1 }, %struct.xgmac_stats { [32 x i8] c"rx_pause\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2440, i8 1 }], align 4
@.str.9 = private unnamed_addr constant [37 x i8] c"drivers/net/ethernet/calxeda/xgmac.c\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"transmit jabber\0A\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"receive process stopped\0A\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"transmit early interrupt\0A\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"transmit process stopped\0A\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"fatal bus error\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.15 = private unnamed_addr constant [34 x i8] c"Inconsistent Rx descriptor chain\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author321, ptr @__UNIQUE_ID_description322, ptr @__UNIQUE_ID_file323, ptr @__UNIQUE_ID_license324, ptr @__exitcall_xgmac_driver_exit, ptr @__initcall__kmod_xgmac__320_1927_xgmac_driver_init6, ptr @xgmac_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @xgmac_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @xgmac_driver, ptr noundef null) #14
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @xgmac_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @xgmac_driver) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xgmac_probe(ptr noundef %0) #2 {
  %2 = alloca [6 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %2, i8 0, i32 6, i1 false), !annotation !8
  %3 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #14
  %4 = icmp eq ptr %3, null
  br i1 %4, label %169, label %5

5:                                                ; preds = %1
  %6 = load i32, ptr %3, align 4
  %7 = getelementptr inbounds %struct.resource, ptr %3, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = sub i32 1, %6
  %10 = add i32 %9, %8
  %11 = load ptr, ptr %0, align 8
  %12 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %6, i32 noundef %10, ptr noundef %11, i32 noundef 0) #14
  %13 = icmp eq ptr %12, null
  br i1 %13, label %169, label %14

14:                                               ; preds = %5
  %15 = tail call ptr @alloc_etherdev_mqs(i32 noundef 376, i32 noundef 1, i32 noundef 1) #14
  %16 = icmp eq ptr %15, null
  br i1 %16, label %163, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %19 = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 111, i32 1
  store ptr %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %15, ptr %20, align 8
  %21 = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 16
  store ptr @xgmac_netdev_ops, ptr %21, align 8
  %22 = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 42
  store ptr @xgmac_ethtool_ops, ptr %22, align 8
  %23 = getelementptr i8, ptr %15, i32 1752
  store i32 0, ptr %23, align 8
  %24 = getelementptr i8, ptr %15, i32 1768
  store i32 -32, ptr %24, align 8
  %25 = getelementptr i8, ptr %15, i32 1772
  store volatile ptr %25, ptr %25, align 4
  %26 = getelementptr i8, ptr %15, i32 1776
  store ptr %25, ptr %26, align 4
  %27 = getelementptr i8, ptr %15, i32 1780
  store ptr @xgmac_tx_timeout_work, ptr %27, align 4
  %28 = getelementptr i8, ptr %15, i32 1464
  store ptr %18, ptr %28, align 8
  %29 = getelementptr i8, ptr %15, i32 1460
  store ptr %15, ptr %29, align 4
  %30 = getelementptr i8, ptr %15, i32 1760
  store i8 1, ptr %30, align 8
  %31 = getelementptr i8, ptr %15, i32 1761
  store i8 1, ptr %31, align 1
  %32 = load i32, ptr %3, align 4
  %33 = load i32, ptr %7, align 4
  %34 = sub i32 1, %32
  %35 = add i32 %34, %33
  %36 = tail call ptr @ioremap(i32 noundef %32, i32 noundef %35) #14
  %37 = getelementptr i8, ptr %15, i32 1444
  store ptr %36, ptr %37, align 4
  %38 = icmp eq ptr %36, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %17
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef nonnull %15, ptr noundef nonnull @.str.1) #15
  br label %161

40:                                               ; preds = %17
  %41 = getelementptr i8, ptr %36, i32 32
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #14, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !10
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef nonnull %15, ptr noundef nonnull @.str.2, i32 noundef %42) #15
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !11
  tail call void @arm_heavy_mb() #14
  %43 = load ptr, ptr %37, align 4
  %44 = getelementptr i8, ptr %43, i32 312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 1) #14, !srcloc !12
  %45 = load ptr, ptr %37, align 4
  %46 = getelementptr i8, ptr %45, i32 312
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #14, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !13
  %48 = icmp eq i32 %47, 1
  %49 = select i1 %48, i32 31, i32 7
  %50 = getelementptr i8, ptr %15, i32 1688
  store i32 %49, ptr %50, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !14
  tail call void @arm_heavy_mb() #14
  %51 = load ptr, ptr %37, align 4
  %52 = getelementptr i8, ptr %51, i32 3868
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 0) #14, !srcloc !12
  %53 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #14
  %54 = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 59
  store i32 %53, ptr %54, align 8
  %55 = icmp eq i32 %53, -6
  br i1 %55, label %56, label %58

56:                                               ; preds = %40
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef nonnull %15, ptr noundef nonnull @.str.3) #15
  %57 = load i32, ptr %54, align 8
  br label %158

58:                                               ; preds = %40
  %59 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load ptr, ptr %18, align 4
  br label %64

64:                                               ; preds = %62, %58
  %65 = phi ptr [ %63, %62 ], [ %60, %58 ]
  %66 = tail call i32 @request_threaded_irq(i32 noundef %53, ptr noundef nonnull @xgmac_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %65, ptr noundef nonnull %15) #14
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load i32, ptr %54, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef nonnull %15, ptr noundef nonnull @.str.4, i32 noundef %69, i32 noundef %66) #15
  br label %158

70:                                               ; preds = %64
  %71 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 1) #14
  %72 = getelementptr i8, ptr %15, i32 1756
  store i32 %71, ptr %72, align 4
  %73 = icmp eq i32 %71, -6
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef nonnull %15, ptr noundef nonnull @.str.5) #15
  %75 = load i32, ptr %72, align 4
  br label %154

76:                                               ; preds = %70
  %77 = load ptr, ptr %59, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = load ptr, ptr %18, align 4
  br label %81

81:                                               ; preds = %79, %76
  %82 = phi ptr [ %80, %79 ], [ %77, %76 ]
  %83 = tail call i32 @request_threaded_irq(i32 noundef %71, ptr noundef nonnull @xgmac_pmt_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %82, ptr noundef nonnull %15) #14
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = load i32, ptr %72, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef nonnull %15, ptr noundef nonnull @.str.4, i32 noundef %86, i32 noundef %83) #15
  br label %154

87:                                               ; preds = %81
  tail call void @device_set_wakeup_capable(ptr noundef %18, i1 noundef zeroext true) #14
  %88 = load ptr, ptr %28, align 8
  %89 = getelementptr inbounds %struct.device, ptr %88, i32 0, i32 11, i32 1
  %90 = load i16, ptr %89, align 4
  %91 = and i16 %90, 1
  %92 = icmp eq i16 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %87
  %94 = getelementptr i8, ptr %15, i32 1764
  store i32 32, ptr %94, align 4
  br label %95

95:                                               ; preds = %93, %87
  %96 = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 24
  store i64 33, ptr %96, align 8
  %97 = load ptr, ptr %37, align 4
  %98 = getelementptr i8, ptr %97, i32 3928
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %98) #14, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !15
  %100 = and i32 %99, 65536
  %101 = icmp eq i32 %100, 0
  %102 = load i64, ptr %96, align 8
  br i1 %101, label %105, label %103

103:                                              ; preds = %95
  %104 = or i64 %102, 1099511627794
  store i64 %104, ptr %96, align 8
  br label %105

105:                                              ; preds = %103, %95
  %106 = phi i64 [ %104, %103 ], [ %102, %95 ]
  %107 = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 23
  %108 = load i64, ptr %107, align 16
  %109 = or i64 %108, %106
  store i64 %109, ptr %107, align 16
  %110 = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 15
  %111 = load i64, ptr %110, align 16
  %112 = or i64 %111, 4096
  store i64 %112, ptr %110, align 16
  %113 = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 30
  store i32 46, ptr %113, align 8
  %114 = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 31
  store i32 9000, ptr %114, align 4
  %115 = load ptr, ptr %37, align 4
  %116 = getelementptr i8, ptr %115, i32 64
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %116) #14, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !16
  %118 = getelementptr i8, ptr %115, i32 68
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %118) #14, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !17
  %120 = trunc i32 %119 to i8
  store i8 %120, ptr %2, align 1
  %121 = lshr i32 %119, 8
  %122 = trunc i32 %121 to i8
  %123 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 %122, ptr %123, align 1
  %124 = lshr i32 %119, 16
  %125 = trunc i32 %124 to i8
  %126 = getelementptr inbounds i8, ptr %2, i32 2
  store i8 %125, ptr %126, align 1
  %127 = lshr i32 %119, 24
  %128 = trunc i32 %127 to i8
  %129 = getelementptr inbounds i8, ptr %2, i32 3
  store i8 %128, ptr %129, align 1
  %130 = trunc i32 %117 to i8
  %131 = getelementptr inbounds i8, ptr %2, i32 4
  store i8 %130, ptr %131, align 1
  %132 = lshr i32 %117, 8
  %133 = trunc i32 %132 to i8
  %134 = getelementptr inbounds i8, ptr %2, i32 5
  store i8 %133, ptr %134, align 1
  call void @dev_addr_mod(ptr noundef nonnull %15, i32 noundef 0, ptr noundef nonnull %2, i32 noundef 6) #14
  %135 = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 72
  %136 = load ptr, ptr %135, align 32
  %137 = load i32, ptr %136, align 4
  %138 = and i32 %137, 1
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %105
  %141 = getelementptr i8, ptr %136, i32 4
  %142 = load i16, ptr %141, align 2
  %143 = zext i16 %142 to i32
  %144 = or i32 %137, %143
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %140, %105
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef nonnull %15, ptr noundef nonnull @.str.6, ptr noundef %136) #15
  br label %147

147:                                              ; preds = %146, %140
  %148 = getelementptr i8, ptr %15, i32 1472
  call void @netif_napi_add(ptr noundef nonnull %15, ptr noundef %148, ptr noundef nonnull @xgmac_poll, i32 noundef 64) #14
  %149 = call i32 @register_netdev(ptr noundef nonnull %15) #14
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %169, label %151

151:                                              ; preds = %147
  call void @__netif_napi_del(ptr noundef %148) #14
  call void @synchronize_net() #14
  %152 = load i32, ptr %72, align 4
  %153 = call ptr @free_irq(i32 noundef %152, ptr noundef nonnull %15) #14
  br label %154

154:                                              ; preds = %151, %85, %74
  %155 = phi i32 [ %75, %74 ], [ %83, %85 ], [ %149, %151 ]
  %156 = load i32, ptr %54, align 8
  %157 = call ptr @free_irq(i32 noundef %156, ptr noundef nonnull %15) #14
  br label %158

158:                                              ; preds = %154, %68, %56
  %159 = phi i32 [ %57, %56 ], [ %66, %68 ], [ %155, %154 ]
  %160 = load ptr, ptr %37, align 4
  call void @iounmap(ptr noundef %160) #14
  br label %161

161:                                              ; preds = %158, %39
  %162 = phi i32 [ %159, %158 ], [ -12, %39 ]
  call void @free_netdev(ptr noundef nonnull %15) #14
  br label %163

163:                                              ; preds = %161, %14
  %164 = phi i32 [ %162, %161 ], [ -12, %14 ]
  %165 = load i32, ptr %3, align 4
  %166 = load i32, ptr %7, align 4
  %167 = sub i32 1, %165
  %168 = add i32 %167, %166
  call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %165, i32 noundef %168) #14
  br label %169

169:                                              ; preds = %163, %147, %5, %1
  %170 = phi i32 [ %164, %163 ], [ -19, %1 ], [ -16, %5 ], [ 0, %147 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #14
  ret i32 %170
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xgmac_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 1444
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 3864
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #14, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !18
  %8 = and i32 %7, -8195
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !19
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %8) #14, !srcloc !12
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #14, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !20
  %10 = and i32 %9, -13
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !21
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %10) #14, !srcloc !12
  %11 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 59
  %12 = load i32, ptr %11, align 8
  %13 = tail call ptr @free_irq(i32 noundef %12, ptr noundef %3) #14
  %14 = getelementptr i8, ptr %3, i32 1756
  %15 = load i32, ptr %14, align 4
  %16 = tail call ptr @free_irq(i32 noundef %15, ptr noundef %3) #14
  tail call void @unregister_netdev(ptr noundef %3) #14
  %17 = getelementptr i8, ptr %3, i32 1472
  tail call void @__netif_napi_del(ptr noundef %17) #14
  tail call void @synchronize_net() #14
  %18 = load ptr, ptr %4, align 4
  tail call void @iounmap(ptr noundef %18) #14
  %19 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #14
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.resource, ptr %19, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = sub i32 1, %20
  %24 = add i32 %23, %22
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %20, i32 noundef %24) #14
  tail call void @free_netdev(ptr noundef %3) #14
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xgmac_tx_timeout_work(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -296
  tail call void @napi_disable(ptr noundef %2) #14
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !22
  tail call void @arm_heavy_mb() #14
  %3 = getelementptr i8, ptr %0, i32 -324
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 3868
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 0) #14, !srcloc !12
  %6 = getelementptr i8, ptr %0, i32 -308
  %7 = load ptr, ptr %6, align 4
  tail call void @netif_tx_lock(ptr noundef %7) #14
  %8 = load ptr, ptr %3, align 4
  %9 = getelementptr i8, ptr %8, i32 3864
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #14, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !23
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !24
  tail call void @arm_heavy_mb() #14
  %11 = and i32 %10, -8193
  %12 = load ptr, ptr %3, align 4
  %13 = getelementptr i8, ptr %12, i32 3864
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #14, !srcloc !12
  br label %14

14:                                               ; preds = %14, %1
  %15 = load ptr, ptr %3, align 4
  %16 = getelementptr i8, ptr %15, i32 3860
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #14, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !25
  %18 = and i32 %17, 7340032
  switch i32 %18, label %14 [
    i32 6291456, label %19
    i32 0, label %19
  ]

19:                                               ; preds = %14, %14
  %20 = getelementptr i8, ptr %0, i32 -340
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %59, label %23

23:                                               ; preds = %19
  %24 = getelementptr i8, ptr %0, i32 -344
  %25 = getelementptr i8, ptr %0, i32 -304
  br label %26

26:                                               ; preds = %57, %23
  %27 = phi ptr [ %21, %23 ], [ %58, %57 ]
  %28 = phi i32 [ 0, %23 ], [ %55, %57 ]
  %29 = getelementptr ptr, ptr %27, i32 %28
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %54, label %32

32:                                               ; preds = %26
  %33 = load ptr, ptr %24, align 8
  %34 = getelementptr %struct.xgmac_dma_desc, ptr %33, i32 %28
  %35 = load ptr, ptr %25, align 8
  %36 = getelementptr %struct.xgmac_dma_desc, ptr %33, i32 %28, i32 2
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr %struct.xgmac_dma_desc, ptr %33, i32 %28, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %39, 8191
  %41 = lshr i32 %39, 16
  %42 = and i32 %41, 8191
  %43 = add nuw nsw i32 %42, %40
  tail call void @dma_unmap_page_attrs(ptr noundef %35, i32 noundef %37, i32 noundef %43, i32 noundef 1, i32 noundef 0) #14
  %44 = load i32, ptr %34, align 4
  %45 = and i32 %44, 536870912
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %32
  %48 = load ptr, ptr %20, align 4
  %49 = getelementptr ptr, ptr %48, i32 %28
  %50 = load ptr, ptr %49, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %50, i32 noundef 1) #14
  br label %51

51:                                               ; preds = %47, %32
  %52 = load ptr, ptr %20, align 4
  %53 = getelementptr ptr, ptr %52, i32 %28
  store ptr null, ptr %53, align 4
  br label %54

54:                                               ; preds = %51, %26
  %55 = add nuw nsw i32 %28, 1
  %56 = icmp eq i32 %55, 128
  br i1 %56, label %59, label %57

57:                                               ; preds = %54
  %58 = load ptr, ptr %20, align 4
  br label %26

59:                                               ; preds = %54, %19
  %60 = getelementptr i8, ptr %0, i32 -344
  %61 = load ptr, ptr %60, align 8
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(4096) %61, i8 0, i32 4096, i1 false) #14
  %62 = getelementptr %struct.xgmac_dma_desc, ptr %61, i32 127
  store i32 2097152, ptr %62, align 4
  %63 = getelementptr i8, ptr %0, i32 -332
  store i32 0, ptr %63, align 4
  %64 = getelementptr i8, ptr %0, i32 -336
  store i32 0, ptr %64, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !26
  tail call void @arm_heavy_mb() #14
  %65 = getelementptr i8, ptr %0, i32 -312
  %66 = load i32, ptr %65, align 8
  %67 = load ptr, ptr %3, align 4
  %68 = getelementptr i8, ptr %67, i32 3856
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %66) #14, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !27
  tail call void @arm_heavy_mb() #14
  %69 = or i32 %10, 8192
  %70 = load ptr, ptr %3, align 4
  %71 = getelementptr i8, ptr %70, i32 3864
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 %69) #14, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !28
  tail call void @arm_heavy_mb() #14
  %72 = load ptr, ptr %3, align 4
  %73 = getelementptr i8, ptr %72, i32 3860
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 98310) #14, !srcloc !12
  %74 = load ptr, ptr %6, align 4
  tail call void @netif_tx_unlock(ptr noundef %74) #14
  %75 = load ptr, ptr %6, align 4
  %76 = getelementptr inbounds %struct.net_device, ptr %75, i32 0, i32 87
  %77 = load ptr, ptr %76, align 64
  tail call void @netif_tx_wake_queue(ptr noundef %77) #14
  tail call void @napi_enable(ptr noundef %2) #14
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !29
  tail call void @arm_heavy_mb() #14
  %78 = load ptr, ptr %3, align 4
  %79 = getelementptr i8, ptr %78, i32 3860
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %79, i32 107519) #14, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !30
  tail call void @arm_heavy_mb() #14
  %80 = load ptr, ptr %3, align 4
  %81 = getelementptr i8, ptr %80, i32 3868
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 107519) #14, !srcloc !12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xgmac_interrupt(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr i8, ptr %1, i32 1692
  %4 = getelementptr i8, ptr %1, i32 1444
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 3860
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #14, !srcloc !9
  %8 = load ptr, ptr %4, align 4
  %9 = getelementptr i8, ptr %8, i32 3868
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #14, !srcloc !9
  %11 = and i32 %10, %7
  %12 = load ptr, ptr %4, align 4
  %13 = getelementptr i8, ptr %12, i32 3860
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #14, !srcloc !12
  %14 = and i32 %11, 32768
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %70, label %16, !prof !31

16:                                               ; preds = %2
  %17 = and i32 %11, 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %16
  %20 = getelementptr i8, ptr %1, i32 1460
  %21 = load ptr, ptr %20, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %21, ptr noundef nonnull @.str.10) #15
  %22 = load i32, ptr %3, align 4
  %23 = add i32 %22, 1
  store i32 %23, ptr %3, align 4
  br label %24

24:                                               ; preds = %19, %16
  %25 = and i32 %11, 128
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = getelementptr i8, ptr %1, i32 1736
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %29, 1
  store i32 %30, ptr %28, align 4
  br label %31

31:                                               ; preds = %27, %24
  %32 = and i32 %11, 256
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %31
  %35 = getelementptr i8, ptr %1, i32 1460
  %36 = load ptr, ptr %35, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %36, ptr noundef nonnull @.str.11) #15
  %37 = getelementptr i8, ptr %1, i32 1740
  %38 = load i32, ptr %37, align 4
  %39 = add i32 %38, 1
  store i32 %39, ptr %37, align 4
  br label %40

40:                                               ; preds = %34, %31
  %41 = and i32 %11, 1024
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %40
  %44 = getelementptr i8, ptr %1, i32 1460
  %45 = load ptr, ptr %44, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %45, ptr noundef nonnull @.str.12) #15
  %46 = getelementptr i8, ptr %1, i32 1744
  %47 = load i32, ptr %46, align 4
  %48 = add i32 %47, 1
  store i32 %48, ptr %46, align 4
  br label %49

49:                                               ; preds = %43, %40
  %50 = and i32 %11, 2
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %61, label %52

52:                                               ; preds = %49
  %53 = getelementptr i8, ptr %1, i32 1460
  %54 = load ptr, ptr %53, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %54, ptr noundef nonnull @.str.13) #15
  %55 = getelementptr i8, ptr %1, i32 1732
  %56 = load i32, ptr %55, align 4
  %57 = add i32 %56, 1
  store i32 %57, ptr %55, align 4
  %58 = getelementptr i8, ptr %1, i32 1768
  %59 = load ptr, ptr @system_wq, align 4
  %60 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %59, ptr noundef %58) #14
  br label %61

61:                                               ; preds = %52, %49
  %62 = and i32 %11, 8192
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %61
  %65 = getelementptr i8, ptr %1, i32 1460
  %66 = load ptr, ptr %65, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %66, ptr noundef nonnull @.str.14) #15
  %67 = getelementptr i8, ptr %1, i32 1748
  %68 = load i32, ptr %67, align 4
  %69 = add i32 %68, 1
  store i32 %69, ptr %67, align 4
  br label %70

70:                                               ; preds = %64, %61, %2
  %71 = and i32 %11, 69
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %70
  %74 = load ptr, ptr %4, align 4
  %75 = getelementptr i8, ptr %74, i32 3868
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 41914) #14, !srcloc !12
  %76 = getelementptr i8, ptr %1, i32 1472
  %77 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %76) #14
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  tail call void @__napi_schedule(ptr noundef %76) #14
  br label %79

79:                                               ; preds = %78, %73, %70
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xgmac_pmt_interrupt(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr i8, ptr %1, i32 1444
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 60
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #14, !srcloc !9
  %7 = and i32 %6, 128
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = getelementptr i8, ptr %4, i32 1796
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #14, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !32
  br label %12

12:                                               ; preds = %9, %2
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_wakeup_capable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xgmac_poll(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 -64
  %4 = getelementptr i8, ptr %0, i32 -44
  %5 = getelementptr i8, ptr %0, i32 -40
  %6 = getelementptr i8, ptr %0, i32 -36
  %7 = load i32, ptr %5, align 8
  %8 = load i32, ptr %6, align 4
  %9 = sub i32 %7, %8
  %10 = and i32 %9, 127
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %110, label %12

12:                                               ; preds = %2
  %13 = getelementptr i8, ptr %0, i32 -48
  %14 = getelementptr i8, ptr %0, i32 -8
  %15 = getelementptr i8, ptr %0, i32 220
  %16 = getelementptr i8, ptr %0, i32 224
  %17 = getelementptr i8, ptr %0, i32 -28
  %18 = getelementptr i8, ptr %0, i32 232
  %19 = getelementptr i8, ptr %0, i32 236
  %20 = getelementptr i8, ptr %0, i32 240
  %21 = getelementptr i8, ptr %0, i32 228
  br label %22

22:                                               ; preds = %101, %12
  %23 = phi i32 [ %8, %12 ], [ %105, %101 ]
  %24 = load ptr, ptr %4, align 4
  %25 = getelementptr ptr, ptr %24, i32 %23
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr %13, align 8
  %28 = getelementptr %struct.xgmac_dma_desc, ptr %27, i32 %23
  %29 = load i32, ptr %28, align 4
  %30 = icmp sgt i32 %29, -1
  br i1 %30, label %31, label %110

31:                                               ; preds = %22
  %32 = load ptr, ptr %14, align 8
  %33 = getelementptr %struct.xgmac_dma_desc, ptr %27, i32 %23, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr %struct.xgmac_dma_desc, ptr %27, i32 %23, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %36, 8191
  %38 = lshr i32 %36, 16
  %39 = and i32 %38, 8191
  %40 = add nuw nsw i32 %39, %37
  tail call void @dma_unmap_page_attrs(ptr noundef %32, i32 noundef %34, i32 noundef %40, i32 noundef 1, i32 noundef 0) #14
  %41 = load i32, ptr %28, align 4
  %42 = and i32 %41, 536870912
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %101, label %44

44:                                               ; preds = %31
  %45 = and i32 %41, 32768
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %100, label %47

47:                                               ; preds = %44
  %48 = and i32 %41, 2
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = load i32, ptr %15, align 4
  %52 = add i32 %51, 1
  store i32 %52, ptr %15, align 4
  br label %53

53:                                               ; preds = %50, %47
  %54 = and i32 %41, 32
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %53
  %57 = load i32, ptr %16, align 4
  %58 = add i32 %57, 1
  store i32 %58, ptr %16, align 4
  br label %59

59:                                               ; preds = %56, %53
  %60 = and i32 %41, 1
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %76, label %62

62:                                               ; preds = %59
  %63 = load ptr, ptr %17, align 4
  %64 = getelementptr i8, ptr %63, i32 1024
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #14, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !33
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !34
  tail call void @arm_heavy_mb() #14
  %66 = or i32 %65, 1048576
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 %66) #14, !srcloc !12
  br label %67

67:                                               ; preds = %72, %62
  %68 = phi i32 [ 999, %62 ], [ %74, %72 ]
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #14, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !35
  %70 = and i32 %69, 1048576
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %67
  %73 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %73(i32 noundef 214748) #14
  %74 = add nsw i32 %68, -1
  %75 = icmp eq i32 %68, 0
  br i1 %75, label %76, label %67

76:                                               ; preds = %72, %67, %59
  %77 = and i32 %41, 64
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %76
  %80 = load i32, ptr %18, align 4
  %81 = add i32 %80, 1
  store i32 %81, ptr %18, align 4
  br label %82

82:                                               ; preds = %79, %76
  %83 = and i32 %41, 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %82
  %86 = load i32, ptr %19, align 4
  %87 = add i32 %86, 1
  store i32 %87, ptr %19, align 4
  br label %88

88:                                               ; preds = %85, %82
  %89 = and i32 %41, 8
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %88
  %92 = load i32, ptr %20, align 4
  %93 = add i32 %92, 1
  store i32 %93, ptr %20, align 4
  br label %94

94:                                               ; preds = %91, %88
  %95 = and i32 %41, 128
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %94
  %98 = load i32, ptr %21, align 4
  %99 = add i32 %98, 1
  store i32 %99, ptr %21, align 4
  br label %100

100:                                              ; preds = %97, %94, %44
  tail call void @__dev_kfree_skb_any(ptr noundef %26, i32 noundef 0) #14
  br label %101

101:                                              ; preds = %100, %31
  %102 = load ptr, ptr %4, align 4
  %103 = getelementptr ptr, ptr %102, i32 %23
  store ptr null, ptr %103, align 4
  %104 = add i32 %23, 1
  %105 = and i32 %104, 127
  store i32 %105, ptr %6, align 4
  %106 = load i32, ptr %5, align 8
  %107 = sub i32 %106, %104
  %108 = and i32 %107, 127
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %22

110:                                              ; preds = %101, %22, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !36
  %111 = getelementptr i8, ptr %0, i32 -12
  %112 = load ptr, ptr %111, align 4
  %113 = getelementptr inbounds %struct.net_device, ptr %112, i32 0, i32 87
  %114 = load ptr, ptr %113, align 64
  %115 = getelementptr inbounds %struct.netdev_queue, ptr %114, i32 0, i32 12
  %116 = load volatile i32, ptr %115, align 4
  %117 = and i32 %116, 1
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %127, label %119

119:                                              ; preds = %110
  %120 = load i32, ptr %6, align 4
  %121 = load i32, ptr %5, align 8
  %122 = xor i32 %121, -1
  %123 = add i32 %120, %122
  %124 = and i32 %123, 126
  %125 = icmp ugt i32 %124, 17
  br i1 %125, label %126, label %127, !prof !37

126:                                              ; preds = %119
  tail call void @netif_tx_wake_queue(ptr noundef %114) #14
  br label %127

127:                                              ; preds = %126, %119, %110
  %128 = icmp eq i32 %1, 0
  br i1 %128, label %234, label %129

129:                                              ; preds = %127
  %130 = getelementptr i8, ptr %0, i32 -52
  %131 = getelementptr i8, ptr %0, i32 -56
  %132 = getelementptr i8, ptr %0, i32 248
  %133 = getelementptr i8, ptr %0, i32 256
  %134 = getelementptr i8, ptr %0, i32 252
  %135 = getelementptr i8, ptr %0, i32 -60
  %136 = getelementptr i8, ptr %0, i32 -8
  %137 = getelementptr i8, ptr %0, i32 -24
  br label %138

138:                                              ; preds = %231, %129
  %139 = phi i32 [ 0, %129 ], [ %151, %231 ]
  %140 = load i32, ptr %130, align 4
  %141 = load i32, ptr %131, align 8
  %142 = sub i32 %140, %141
  %143 = and i32 %142, 255
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %234, label %145

145:                                              ; preds = %138
  %146 = load ptr, ptr %3, align 8
  %147 = getelementptr %struct.xgmac_dma_desc, ptr %146, i32 %141
  %148 = load i32, ptr %147, align 4
  %149 = icmp sgt i32 %148, -1
  br i1 %149, label %150, label %234

150:                                              ; preds = %145
  %151 = add nuw i32 %139, 1
  %152 = add i32 %141, 1
  %153 = and i32 %152, 255
  store i32 %153, ptr %131, align 8
  %154 = load i32, ptr %147, align 4
  %155 = getelementptr %struct.xgmac_dma_desc, ptr %146, i32 %141, i32 4
  %156 = load i32, ptr %155, align 4
  %157 = and i32 %154, 1073741824
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %186

159:                                              ; preds = %150
  %160 = and i32 %154, 768
  %161 = icmp eq i32 %160, 768
  br i1 %161, label %162, label %231

162:                                              ; preds = %159
  %163 = and i32 %154, 33
  %164 = icmp ne i32 %163, 33
  %165 = and i32 %156, 3
  %166 = icmp ne i32 %165, 0
  %167 = select i1 %164, i1 true, i1 %166
  %168 = zext i1 %167 to i32
  %169 = and i32 %154, 32768
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %194, label %171

171:                                              ; preds = %162
  %172 = and i32 %154, 22658
  %173 = icmp eq i32 %172, 0
  %174 = and i32 %154, 22659
  %175 = icmp eq i32 %174, 1
  %176 = select i1 %173, i32 %168, i32 -1
  br i1 %175, label %177, label %191

177:                                              ; preds = %171
  %178 = and i32 %156, 8
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %183, label %180

180:                                              ; preds = %177
  %181 = load i32, ptr %133, align 4
  %182 = add i32 %181, 1
  store i32 %182, ptr %133, align 4
  br label %183

183:                                              ; preds = %180, %177
  %184 = and i32 %156, 16
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %194, label %186

186:                                              ; preds = %183, %150
  %187 = phi ptr [ %132, %150 ], [ %134, %183 ]
  %188 = phi i32 [ -1, %150 ], [ 0, %183 ]
  %189 = load i32, ptr %187, align 4
  %190 = add i32 %189, 1
  store i32 %190, ptr %187, align 4
  br label %191

191:                                              ; preds = %186, %171
  %192 = phi i32 [ %176, %171 ], [ %188, %186 ]
  %193 = icmp slt i32 %192, 0
  br i1 %193, label %231, label %194

194:                                              ; preds = %191, %183, %162
  %195 = phi i32 [ %192, %191 ], [ 0, %183 ], [ %168, %162 ]
  %196 = load ptr, ptr %135, align 4
  %197 = getelementptr ptr, ptr %196, i32 %141
  %198 = load ptr, ptr %197, align 4
  %199 = icmp eq ptr %198, null
  br i1 %199, label %200, label %202, !prof !37

200:                                              ; preds = %194
  %201 = load ptr, ptr %111, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %201, ptr noundef nonnull @.str.15) #15
  br label %234

202:                                              ; preds = %194
  store ptr null, ptr %197, align 4
  %203 = load i32, ptr %147, align 4
  %204 = lshr i32 %203, 16
  %205 = and i32 %204, 16383
  %206 = and i32 %203, 32
  %207 = icmp eq i32 %206, 0
  %208 = add nsw i32 %205, -4
  %209 = select i1 %207, i32 %205, i32 %208
  %210 = tail call ptr @skb_put(ptr noundef nonnull %198, i32 noundef %209) #14
  %211 = load ptr, ptr %136, align 8
  %212 = getelementptr %struct.xgmac_dma_desc, ptr %146, i32 %141, i32 2
  %213 = load i32, ptr %212, align 4
  %214 = load i32, ptr %137, align 8
  %215 = add i32 %214, -2
  tail call void @dma_unmap_page_attrs(ptr noundef %211, i32 noundef %213, i32 noundef %215, i32 noundef 2, i32 noundef 0) #14
  %216 = load ptr, ptr %111, align 4
  %217 = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %198, ptr noundef %216) #14
  %218 = getelementptr inbounds %struct.sk_buff, ptr %198, i32 0, i32 13, i32 0, i32 16
  store i16 %217, ptr %218, align 8
  %219 = getelementptr inbounds %struct.sk_buff, ptr %198, i32 0, i32 13
  %220 = trunc i32 %195 to i16
  %221 = load i16, ptr %219, align 8
  %222 = shl nuw nsw i16 %220, 5
  %223 = and i16 %222, 96
  %224 = and i16 %221, -97
  %225 = or i16 %224, %223
  store i16 %225, ptr %219, align 8
  %226 = icmp eq i32 %195, 0
  br i1 %226, label %227, label %229

227:                                              ; preds = %202
  %228 = tail call i32 @netif_receive_skb(ptr noundef nonnull %198) #14
  br label %231

229:                                              ; preds = %202
  %230 = tail call i32 @napi_gro_receive(ptr noundef %0, ptr noundef nonnull %198) #14
  br label %231

231:                                              ; preds = %229, %227, %191, %159
  %232 = icmp eq i32 %151, %1
  br i1 %232, label %233, label %138

233:                                              ; preds = %231
  tail call fastcc void @xgmac_rx_refill(ptr noundef %3) #14
  br label %242

234:                                              ; preds = %200, %145, %138, %127
  %235 = phi i32 [ %151, %200 ], [ 0, %127 ], [ %139, %145 ], [ %139, %138 ]
  tail call fastcc void @xgmac_rx_refill(ptr noundef %3) #14
  %236 = icmp slt i32 %235, %1
  br i1 %236, label %237, label %242

237:                                              ; preds = %234
  %238 = tail call zeroext i1 @napi_complete_done(ptr noundef %0, i32 noundef %235) #14
  %239 = getelementptr i8, ptr %0, i32 -28
  %240 = load ptr, ptr %239, align 4
  %241 = getelementptr i8, ptr %240, i32 3868
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %241, i32 107519) #14, !srcloc !12
  br label %242

242:                                              ; preds = %237, %234, %233
  %243 = phi i32 [ %1, %233 ], [ %235, %237 ], [ %235, %234 ]
  ret i32 %243
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xgmac_open(ptr noundef %0) #2 {
  %2 = alloca [6 x i8], align 1
  %3 = getelementptr i8, ptr %0, i32 1408
  %4 = getelementptr i8, ptr %0, i32 1444
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 72
  %7 = load ptr, ptr %6, align 32
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = getelementptr i8, ptr %7, i32 4
  %13 = load i16, ptr %12, align 2
  %14 = zext i16 %13 to i32
  %15 = or i32 %8, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %11, %1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %2, i8 0, i32 6, i1 false) #14, !annotation !8
  call void @get_random_bytes(ptr noundef nonnull %2, i32 noundef 6) #14
  %18 = load i8, ptr %2, align 1
  %19 = and i8 %18, -4
  %20 = or i8 %19, 2
  store i8 %20, ptr %2, align 1
  call void @dev_addr_mod(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2, i32 noundef 6) #14
  %21 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 50
  store i8 1, ptr %21, align 8
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #14
  %22 = load ptr, ptr %4, align 4
  br label %23

23:                                               ; preds = %17, %11
  %24 = phi ptr [ %22, %17 ], [ %5, %11 ]
  %25 = getelementptr i8, ptr %0, i32 1692
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(60) %25, i8 0, i32 60, i1 false)
  %26 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #14, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !38
  %27 = and i32 %26, 1610612736
  call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !39
  call void @arm_heavy_mb() #14
  %28 = getelementptr i8, ptr %24, i32 3840
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 1) #14, !srcloc !12
  br label %29

29:                                               ; preds = %34, %23
  %30 = phi i32 [ 14999, %23 ], [ %35, %34 ]
  %31 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #14, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !40
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !41
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !42
  %35 = add nsw i32 %30, -1
  %36 = icmp eq i32 %30, 0
  br i1 %36, label %52, label %29

37:                                               ; preds = %29
  %38 = icmp slt i32 %30, 0
  br i1 %38, label %52, label %39

39:                                               ; preds = %37
  call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !43
  call void @arm_heavy_mb() #14
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 35721344) #14, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !44
  call void @arm_heavy_mb() #14
  %40 = getelementptr i8, ptr %24, i32 3868
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 0) #14, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !45
  call void @arm_heavy_mb() #14
  %41 = getelementptr i8, ptr %24, i32 60
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 8388608) #14, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !46
  call void @arm_heavy_mb() #14
  %42 = getelementptr i8, ptr %24, i32 3880
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 7798798) #14, !srcloc !12
  %43 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 23
  %44 = load i64, ptr %43, align 16
  %45 = and i64 %44, 1099511627776
  %46 = icmp eq i64 %45, 0
  %47 = select i1 %46, i32 68157584, i32 68158608
  %48 = or i32 %47, %27
  call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !47
  call void @arm_heavy_mb() #14
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %48) #14, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !48
  call void @arm_heavy_mb() #14
  %49 = getelementptr i8, ptr %24, i32 3864
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 4) #14, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !49
  call void @arm_heavy_mb() #14
  %50 = getelementptr i8, ptr %24, i32 1024
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 2123288) #14, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !50
  call void @arm_heavy_mb() #14
  %51 = getelementptr i8, ptr %24, i32 2048
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 1) #14, !srcloc !12
  br label %52

52:                                               ; preds = %39, %37, %34
  %53 = load ptr, ptr %6, align 32
  call fastcc void @xgmac_set_mac_addr(ptr noundef %5, ptr noundef %53, i32 noundef 0)
  %54 = getelementptr i8, ptr %0, i32 1760
  %55 = load i8, ptr %54, align 8
  %56 = zext i8 %55 to i32
  %57 = getelementptr i8, ptr %0, i32 1761
  %58 = load i8, ptr %57, align 1
  %59 = zext i8 %58 to i32
  call fastcc void @xgmac_set_flow_ctrl(ptr noundef %3, i32 noundef %56, i32 noundef %59)
  %60 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 20
  %61 = load i32, ptr %60, align 4
  %62 = add i32 %61, 27
  %63 = and i32 %62, -8
  %64 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %65 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %64, i32 noundef 3520, i32 noundef 1024) #16
  %66 = getelementptr i8, ptr %0, i32 1412
  store ptr %65, ptr %66, align 4
  %67 = icmp eq ptr %65, null
  br i1 %67, label %138, label %68

68:                                               ; preds = %52
  %69 = getelementptr i8, ptr %0, i32 1464
  %70 = load ptr, ptr %69, align 8
  %71 = getelementptr i8, ptr %0, i32 1452
  %72 = call ptr @dma_alloc_attrs(ptr noundef %70, i32 noundef 8192, ptr noundef %71, i32 noundef 3264, i32 noundef 0) #14
  store ptr %72, ptr %3, align 8
  %73 = icmp eq ptr %72, null
  br i1 %73, label %112, label %74

74:                                               ; preds = %68
  %75 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %76 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %75, i32 noundef 3520, i32 noundef 512) #16
  %77 = getelementptr i8, ptr %0, i32 1428
  store ptr %76, ptr %77, align 4
  %78 = icmp eq ptr %76, null
  br i1 %78, label %108, label %79

79:                                               ; preds = %74
  %80 = load ptr, ptr %69, align 8
  %81 = getelementptr i8, ptr %0, i32 1456
  %82 = call ptr @dma_alloc_attrs(ptr noundef %80, i32 noundef 4096, ptr noundef %81, i32 noundef 3264, i32 noundef 0) #14
  %83 = getelementptr i8, ptr %0, i32 1424
  store ptr %82, ptr %83, align 8
  %84 = icmp eq ptr %82, null
  br i1 %84, label %106, label %85

85:                                               ; preds = %79
  %86 = getelementptr i8, ptr %0, i32 1416
  store i32 0, ptr %86, align 8
  %87 = getelementptr i8, ptr %0, i32 1420
  store i32 0, ptr %87, align 4
  %88 = getelementptr i8, ptr %0, i32 1448
  store i32 %63, ptr %88, align 8
  %89 = load ptr, ptr %3, align 8
  %90 = getelementptr %struct.xgmac_dma_desc, ptr %89, i32 255
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(8192) %89, i8 0, i32 8192, i1 false) #14
  %91 = icmp ult ptr %90, %89
  br i1 %91, label %114, label %92

92:                                               ; preds = %85
  %93 = icmp ugt i32 %63, 8184
  %94 = shl i32 %63, 16
  %95 = add i32 %94, -536338440
  %96 = select i1 %93, i32 %95, i32 %63
  br label %97

97:                                               ; preds = %97, %92
  %98 = phi ptr [ %89, %92 ], [ %100, %97 ]
  %99 = getelementptr inbounds %struct.xgmac_dma_desc, ptr %98, i32 0, i32 1
  store i32 %96, ptr %99, align 4
  %100 = getelementptr %struct.xgmac_dma_desc, ptr %98, i32 1
  %101 = icmp ugt ptr %100, %90
  br i1 %101, label %102, label %97

102:                                              ; preds = %97
  %103 = getelementptr %struct.xgmac_dma_desc, ptr %89, i32 255, i32 1
  %104 = load i32, ptr %103, align 4
  %105 = or i32 %104, 32768
  br label %114

106:                                              ; preds = %79
  %107 = load ptr, ptr %77, align 4
  call void @kfree(ptr noundef %107) #14
  br label %108

108:                                              ; preds = %106, %74
  %109 = load ptr, ptr %69, align 8
  %110 = load ptr, ptr %3, align 8
  %111 = load i32, ptr %71, align 4
  call void @dma_free_attrs(ptr noundef %109, i32 noundef 8192, ptr noundef %110, i32 noundef %111, i32 noundef 0) #14
  br label %112

112:                                              ; preds = %108, %68
  %113 = load ptr, ptr %66, align 4
  call void @kfree(ptr noundef %113) #14
  br label %138

114:                                              ; preds = %102, %85
  %115 = phi i32 [ %105, %102 ], [ 32768, %85 ]
  %116 = getelementptr %struct.xgmac_dma_desc, ptr %89, i32 255, i32 1
  store i32 %115, ptr %116, align 4
  call fastcc void @xgmac_rx_refill(ptr noundef %3) #14
  %117 = getelementptr i8, ptr %0, i32 1436
  store i32 0, ptr %117, align 4
  %118 = getelementptr i8, ptr %0, i32 1432
  store i32 0, ptr %118, align 8
  %119 = load ptr, ptr %83, align 8
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(4096) %119, i8 0, i32 4096, i1 false) #14
  %120 = getelementptr %struct.xgmac_dma_desc, ptr %119, i32 127
  store i32 2097152, ptr %120, align 4
  call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !51
  call void @arm_heavy_mb() #14
  %121 = load i32, ptr %81, align 8
  %122 = load ptr, ptr %4, align 4
  %123 = getelementptr i8, ptr %122, i32 3856
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %123, i32 %121) #14, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !52
  call void @arm_heavy_mb() #14
  %124 = load i32, ptr %71, align 4
  %125 = load ptr, ptr %4, align 4
  %126 = getelementptr i8, ptr %125, i32 3852
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %126, i32 %124) #14, !srcloc !12
  %127 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #14, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !53
  %128 = or i32 %127, 12
  call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !54
  call void @arm_heavy_mb() #14
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %128) #14, !srcloc !12
  %129 = getelementptr i8, ptr %5, i32 3864
  %130 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %129) #14, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !55
  %131 = or i32 %130, 8194
  call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !56
  call void @arm_heavy_mb() #14
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %129, i32 %131) #14, !srcloc !12
  %132 = getelementptr i8, ptr %0, i32 1472
  call void @napi_enable(ptr noundef %132) #14
  %133 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  %134 = load ptr, ptr %133, align 64
  %135 = getelementptr inbounds %struct.netdev_queue, ptr %134, i32 0, i32 12
  call void @_clear_bit(i32 noundef 0, ptr noundef %135) #14
  call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !57
  call void @arm_heavy_mb() #14
  %136 = getelementptr i8, ptr %5, i32 3860
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %136, i32 107519) #14, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !58
  call void @arm_heavy_mb() #14
  %137 = getelementptr i8, ptr %5, i32 3868
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %137, i32 107519) #14, !srcloc !12
  br label %138

138:                                              ; preds = %114, %112, %52
  %139 = phi i32 [ 0, %114 ], [ -12, %112 ], [ -12, %52 ]
  ret i32 %139
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xgmac_stop(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 1408
  %3 = getelementptr i8, ptr %0, i32 1444
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 3868
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #14, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !59
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = getelementptr i8, ptr %0, i32 1472
  tail call void @napi_disable(ptr noundef %9) #14
  br label %10

10:                                               ; preds = %8, %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !60
  tail call void @arm_heavy_mb() #14
  %11 = load ptr, ptr %3, align 4
  %12 = getelementptr i8, ptr %11, i32 3868
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 0) #14, !srcloc !12
  %13 = tail call ptr @llvm.thread.pointer() #14
  %14 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %15 = load volatile i32, ptr %14, align 4
  %16 = add i32 %15, 512
  store volatile i32 %16, ptr %14, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !61
  %17 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %18 = load i32, ptr %17, align 8
  %19 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 92
  tail call void @_raw_spin_lock(ptr noundef %19) #14
  %20 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 88
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %36, label %23

23:                                               ; preds = %10
  %24 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  br label %25

25:                                               ; preds = %25, %23
  %26 = phi i32 [ 0, %23 ], [ %33, %25 ]
  %27 = load ptr, ptr %24, align 64
  %28 = getelementptr %struct.netdev_queue, ptr %27, i32 %26, i32 9
  tail call void @_raw_spin_lock(ptr noundef %28) #14
  %29 = getelementptr %struct.netdev_queue, ptr %27, i32 %26, i32 10
  store volatile i32 %18, ptr %29, align 4
  %30 = getelementptr %struct.netdev_queue, ptr %27, i32 %26, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %30) #14
  store volatile i32 -1, ptr %29, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !62
  %31 = load i16, ptr %28, align 4
  %32 = add i16 %31, 1
  store i16 %32, ptr %28, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !63
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !64
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !65
  %33 = add nuw i32 %26, 1
  %34 = load i32, ptr %20, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %25, label %36

36:                                               ; preds = %25, %10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !62
  %37 = load i16, ptr %19, align 4
  %38 = add i16 %37, 1
  store i16 %38, ptr %19, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !63
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !64
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !65
  tail call fastcc void @local_bh_enable() #14
  %39 = load ptr, ptr %3, align 4
  %40 = getelementptr i8, ptr %39, i32 3864
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #14, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !18
  %42 = and i32 %41, -8195
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !19
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %42) #14, !srcloc !12
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #14, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !20
  %44 = and i32 %43, -13
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !21
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %44) #14, !srcloc !12
  %45 = getelementptr i8, ptr %0, i32 1412
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %71, label %48

48:                                               ; preds = %36
  %49 = getelementptr i8, ptr %0, i32 1464
  %50 = getelementptr i8, ptr %0, i32 1448
  br label %51

51:                                               ; preds = %69, %48
  %52 = phi ptr [ %46, %48 ], [ %70, %69 ]
  %53 = phi i32 [ 0, %48 ], [ %67, %69 ]
  %54 = getelementptr ptr, ptr %52, i32 %53
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %66, label %57

57:                                               ; preds = %51
  %58 = load ptr, ptr %2, align 8
  %59 = load ptr, ptr %49, align 8
  %60 = getelementptr %struct.xgmac_dma_desc, ptr %58, i32 %53, i32 2
  %61 = load i32, ptr %60, align 4
  %62 = load i32, ptr %50, align 8
  %63 = add i32 %62, -2
  tail call void @dma_unmap_page_attrs(ptr noundef %59, i32 noundef %61, i32 noundef %63, i32 noundef 2, i32 noundef 0) #14
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %55, i32 noundef 1) #14
  %64 = load ptr, ptr %45, align 4
  %65 = getelementptr ptr, ptr %64, i32 %53
  store ptr null, ptr %65, align 4
  br label %66

66:                                               ; preds = %57, %51
  %67 = add nuw nsw i32 %53, 1
  %68 = icmp eq i32 %67, 256
  br i1 %68, label %71, label %69

69:                                               ; preds = %66
  %70 = load ptr, ptr %45, align 4
  br label %51

71:                                               ; preds = %66, %36
  %72 = getelementptr i8, ptr %0, i32 1428
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %111, label %75

75:                                               ; preds = %71
  %76 = getelementptr i8, ptr %0, i32 1424
  %77 = getelementptr i8, ptr %0, i32 1464
  br label %78

78:                                               ; preds = %109, %75
  %79 = phi ptr [ %73, %75 ], [ %110, %109 ]
  %80 = phi i32 [ 0, %75 ], [ %107, %109 ]
  %81 = getelementptr ptr, ptr %79, i32 %80
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %106, label %84

84:                                               ; preds = %78
  %85 = load ptr, ptr %76, align 8
  %86 = getelementptr %struct.xgmac_dma_desc, ptr %85, i32 %80
  %87 = load ptr, ptr %77, align 8
  %88 = getelementptr %struct.xgmac_dma_desc, ptr %85, i32 %80, i32 2
  %89 = load i32, ptr %88, align 4
  %90 = getelementptr %struct.xgmac_dma_desc, ptr %85, i32 %80, i32 1
  %91 = load i32, ptr %90, align 4
  %92 = and i32 %91, 8191
  %93 = lshr i32 %91, 16
  %94 = and i32 %93, 8191
  %95 = add nuw nsw i32 %94, %92
  tail call void @dma_unmap_page_attrs(ptr noundef %87, i32 noundef %89, i32 noundef %95, i32 noundef 1, i32 noundef 0) #14
  %96 = load i32, ptr %86, align 4
  %97 = and i32 %96, 536870912
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %84
  %100 = load ptr, ptr %72, align 4
  %101 = getelementptr ptr, ptr %100, i32 %80
  %102 = load ptr, ptr %101, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %102, i32 noundef 1) #14
  br label %103

103:                                              ; preds = %99, %84
  %104 = load ptr, ptr %72, align 4
  %105 = getelementptr ptr, ptr %104, i32 %80
  store ptr null, ptr %105, align 4
  br label %106

106:                                              ; preds = %103, %78
  %107 = add nuw nsw i32 %80, 1
  %108 = icmp eq i32 %107, 128
  br i1 %108, label %111, label %109

109:                                              ; preds = %106
  %110 = load ptr, ptr %72, align 4
  br label %78

111:                                              ; preds = %106, %71
  %112 = getelementptr i8, ptr %0, i32 1424
  %113 = load ptr, ptr %112, align 8
  %114 = icmp eq ptr %113, null
  br i1 %114, label %120, label %115

115:                                              ; preds = %111
  %116 = getelementptr i8, ptr %0, i32 1464
  %117 = load ptr, ptr %116, align 8
  %118 = getelementptr i8, ptr %0, i32 1456
  %119 = load i32, ptr %118, align 8
  tail call void @dma_free_attrs(ptr noundef %117, i32 noundef 4096, ptr noundef nonnull %113, i32 noundef %119, i32 noundef 0) #14
  store ptr null, ptr %112, align 8
  br label %120

120:                                              ; preds = %115, %111
  %121 = load ptr, ptr %2, align 8
  %122 = icmp eq ptr %121, null
  br i1 %122, label %128, label %123

123:                                              ; preds = %120
  %124 = getelementptr i8, ptr %0, i32 1464
  %125 = load ptr, ptr %124, align 8
  %126 = getelementptr i8, ptr %0, i32 1452
  %127 = load i32, ptr %126, align 4
  tail call void @dma_free_attrs(ptr noundef %125, i32 noundef 8192, ptr noundef nonnull %121, i32 noundef %127, i32 noundef 0) #14
  store ptr null, ptr %2, align 8
  br label %128

128:                                              ; preds = %123, %120
  %129 = load ptr, ptr %45, align 4
  tail call void @kfree(ptr noundef %129) #14
  store ptr null, ptr %45, align 4
  %130 = load ptr, ptr %72, align 4
  tail call void @kfree(ptr noundef %130) #14
  store ptr null, ptr %72, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xgmac_xmit(ptr noundef %0, ptr nocapture noundef %1) #2 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.skb_shared_info, ptr %4, i32 0, i32 2
  %6 = load i8, ptr %5, align 2
  %7 = zext i8 %6 to i32
  %8 = getelementptr i8, ptr %1, i32 1440
  %9 = load i32, ptr %8, align 8
  %10 = add i32 %9, 1
  %11 = and i32 %10, 31
  store i32 %11, ptr %8, align 8
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, i32 1073741824, i32 0
  %14 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %15 = load i16, ptr %14, align 8
  %16 = and i16 %15, 96
  %17 = icmp eq i16 %16, 96
  %18 = select i1 %17, i32 12582912, i32 0
  %19 = getelementptr i8, ptr %1, i32 1432
  %20 = load i32, ptr %19, align 8
  %21 = getelementptr i8, ptr %1, i32 1424
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr %struct.xgmac_dma_desc, ptr %22, i32 %20
  %24 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %25 = load i32, ptr %24, align 8
  %26 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %27 = load i32, ptr %26, align 4
  %28 = sub i32 %25, %27
  %29 = getelementptr i8, ptr %1, i32 1464
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %32 = load ptr, ptr %31, align 4
  %33 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %32) #14
  %34 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %35 = xor i1 %34, true
  %36 = select i1 %33, i1 %35, i1 false
  br i1 %36, label %37, label %46, !prof !37

37:                                               ; preds = %2
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %38 = tail call ptr @dev_driver_string(ptr noundef %30) #14
  %39 = getelementptr inbounds %struct.device, ptr %30, i32 0, i32 3
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load ptr, ptr %30, align 4
  br label %44

44:                                               ; preds = %42, %37
  %45 = phi ptr [ %43, %42 ], [ %40, %37 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.8, ptr noundef %38, ptr noundef %45) #14
  br label %46

46:                                               ; preds = %44, %2
  br i1 %33, label %56, label %47

47:                                               ; preds = %46
  %48 = load ptr, ptr @mem_map, align 4
  %49 = ptrtoint ptr %32 to i32
  %50 = add i32 %49, 1073741824
  %51 = lshr i32 %50, 12
  %52 = getelementptr %struct.page, ptr %48, i32 %51
  %53 = and i32 %49, 4095
  %54 = tail call i32 @dma_map_page_attrs(ptr noundef %30, ptr noundef %52, i32 noundef %53, i32 noundef %28, i32 noundef 1, i32 noundef 0) #14
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %56, label %57

56:                                               ; preds = %47, %46
  tail call void @__dev_kfree_skb_any(ptr noundef %0, i32 noundef 1) #14
  br label %193

57:                                               ; preds = %47
  %58 = getelementptr i8, ptr %1, i32 1428
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr ptr, ptr %59, i32 %20
  store ptr %0, ptr %60, align 4
  %61 = icmp ugt i32 %28, 8184
  %62 = shl i32 %28, 16
  %63 = add i32 %62, -536338440
  %64 = select i1 %61, i32 %63, i32 %28
  %65 = getelementptr %struct.xgmac_dma_desc, ptr %22, i32 %20, i32 1
  store i32 %64, ptr %65, align 4
  %66 = getelementptr %struct.xgmac_dma_desc, ptr %22, i32 %20, i32 2
  store i32 %54, ptr %66, align 4
  %67 = icmp sgt i32 %28, 8184
  br i1 %67, label %68, label %71

68:                                               ; preds = %57
  %69 = add i32 %54, 8184
  %70 = getelementptr %struct.xgmac_dma_desc, ptr %22, i32 %20, i32 3
  store i32 %69, ptr %70, align 4
  br label %71

71:                                               ; preds = %68, %57
  %72 = icmp eq i8 %6, 0
  br i1 %72, label %123, label %73

73:                                               ; preds = %71
  %74 = add nsw i32 %7, -1
  br label %75

75:                                               ; preds = %112, %73
  %76 = phi i32 [ 0, %73 ], [ %113, %112 ]
  %77 = phi i32 [ %20, %73 ], [ %90, %112 ]
  %78 = load ptr, ptr %3, align 4
  %79 = getelementptr %struct.skb_shared_info, ptr %78, i32 0, i32 12, i32 %76
  %80 = getelementptr %struct.skb_shared_info, ptr %78, i32 0, i32 12, i32 %76, i32 1
  %81 = load i32, ptr %80, align 4
  %82 = load ptr, ptr %29, align 8
  %83 = load ptr, ptr %79, align 4
  %84 = getelementptr %struct.skb_shared_info, ptr %78, i32 0, i32 12, i32 %76, i32 2
  %85 = load i32, ptr %84, align 4
  %86 = tail call i32 @dma_map_page_attrs(ptr noundef %82, ptr noundef %83, i32 noundef %85, i32 noundef %81, i32 noundef 1, i32 noundef 0) #14
  %87 = icmp eq i32 %86, -1
  br i1 %87, label %159, label %88

88:                                               ; preds = %75
  %89 = add i32 %77, 1
  %90 = and i32 %89, 127
  %91 = load ptr, ptr %21, align 8
  %92 = getelementptr %struct.xgmac_dma_desc, ptr %91, i32 %90
  %93 = load ptr, ptr %58, align 4
  %94 = getelementptr ptr, ptr %93, i32 %90
  store ptr %0, ptr %94, align 4
  %95 = icmp ugt i32 %81, 8184
  %96 = shl i32 %81, 16
  %97 = add i32 %96, -536338440
  %98 = select i1 %95, i32 %97, i32 %81
  %99 = getelementptr %struct.xgmac_dma_desc, ptr %91, i32 %90, i32 1
  store i32 %98, ptr %99, align 4
  %100 = getelementptr %struct.xgmac_dma_desc, ptr %91, i32 %90, i32 2
  store i32 %86, ptr %100, align 4
  %101 = icmp sgt i32 %81, 8184
  br i1 %101, label %102, label %105

102:                                              ; preds = %88
  %103 = add i32 %86, 8184
  %104 = getelementptr %struct.xgmac_dma_desc, ptr %91, i32 %90, i32 3
  store i32 %103, ptr %104, align 4
  br label %105

105:                                              ; preds = %102, %88
  %106 = icmp slt i32 %76, %74
  br i1 %106, label %107, label %112

107:                                              ; preds = %105
  %108 = load i32, ptr %92, align 4
  %109 = and i32 %108, 2097152
  %110 = or i32 %18, %109
  %111 = or i32 %110, -2147483648
  store i32 %111, ptr %92, align 4
  br label %112

112:                                              ; preds = %107, %105
  %113 = add nuw nsw i32 %76, 1
  %114 = icmp eq i32 %113, %7
  br i1 %114, label %115, label %75

115:                                              ; preds = %112
  %116 = icmp eq ptr %92, %23
  br i1 %116, label %123, label %117

117:                                              ; preds = %115
  %118 = load i32, ptr %92, align 4
  %119 = and i32 %118, 2097152
  %120 = or i32 %18, %13
  %121 = or i32 %120, %119
  %122 = or i32 %121, -1610612736
  store i32 %122, ptr %92, align 4
  br label %127

123:                                              ; preds = %115, %71
  %124 = phi i32 [ %90, %115 ], [ %20, %71 ]
  %125 = or i32 %13, %18
  %126 = or i32 %125, 536870912
  br label %127

127:                                              ; preds = %123, %117
  %128 = phi i32 [ %90, %117 ], [ %124, %123 ]
  %129 = phi i32 [ %18, %117 ], [ %126, %123 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !66
  tail call void @arm_heavy_mb() #14
  %130 = load i32, ptr %23, align 4
  %131 = and i32 %130, 2097152
  %132 = or i32 %129, %131
  %133 = or i32 %132, -1879048192
  store i32 %133, ptr %23, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !67
  tail call void @arm_heavy_mb() #14
  %134 = getelementptr i8, ptr %1, i32 1444
  %135 = load ptr, ptr %134, align 4
  %136 = getelementptr i8, ptr %135, i32 3844
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %136, i32 1) #14, !srcloc !12
  %137 = add i32 %128, 1
  %138 = and i32 %137, 127
  store i32 %138, ptr %19, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !68
  %139 = getelementptr i8, ptr %1, i32 1436
  %140 = load i32, ptr %139, align 4
  %141 = load i32, ptr %19, align 8
  %142 = xor i32 %141, -1
  %143 = add i32 %140, %142
  %144 = and i32 %143, 126
  %145 = icmp ult i32 %144, 18
  br i1 %145, label %146, label %193, !prof !37

146:                                              ; preds = %127
  %147 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 87
  %148 = load ptr, ptr %147, align 64
  %149 = getelementptr inbounds %struct.netdev_queue, ptr %148, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %149) #14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !69
  %150 = load i32, ptr %139, align 4
  %151 = load i32, ptr %19, align 8
  %152 = xor i32 %151, -1
  %153 = add i32 %150, %152
  %154 = and i32 %153, 126
  %155 = icmp ugt i32 %154, 17
  br i1 %155, label %156, label %193

156:                                              ; preds = %146
  %157 = load ptr, ptr %147, align 64
  %158 = getelementptr inbounds %struct.netdev_queue, ptr %157, i32 0, i32 12
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %158) #14
  br label %193

159:                                              ; preds = %75
  %160 = icmp eq i32 %76, 0
  br i1 %160, label %185, label %161

161:                                              ; preds = %159
  %162 = load i32, ptr %19, align 8
  br label %163

163:                                              ; preds = %163, %161
  %164 = phi i32 [ %183, %163 ], [ %76, %161 ]
  %165 = phi i32 [ %167, %163 ], [ %162, %161 ]
  %166 = add i32 %165, 1
  %167 = and i32 %166, 127
  %168 = load ptr, ptr %21, align 8
  %169 = getelementptr %struct.xgmac_dma_desc, ptr %168, i32 %167
  %170 = load ptr, ptr %58, align 4
  %171 = getelementptr ptr, ptr %170, i32 %167
  store ptr null, ptr %171, align 4
  %172 = load ptr, ptr %29, align 8
  %173 = getelementptr %struct.xgmac_dma_desc, ptr %168, i32 %167, i32 2
  %174 = load i32, ptr %173, align 4
  %175 = getelementptr %struct.xgmac_dma_desc, ptr %168, i32 %167, i32 1
  %176 = load i32, ptr %175, align 4
  %177 = and i32 %176, 8191
  %178 = lshr i32 %176, 16
  %179 = and i32 %178, 8191
  %180 = add nuw nsw i32 %179, %177
  tail call void @dma_unmap_page_attrs(ptr noundef %172, i32 noundef %174, i32 noundef %180, i32 noundef 1, i32 noundef 0) #14
  %181 = load i32, ptr %169, align 4
  %182 = and i32 %181, 2097152
  store i32 %182, ptr %169, align 4
  %183 = add nsw i32 %164, -1
  %184 = icmp sgt i32 %164, 1
  br i1 %184, label %163, label %185

185:                                              ; preds = %163, %159
  %186 = load ptr, ptr %29, align 8
  %187 = load i32, ptr %66, align 4
  %188 = load i32, ptr %65, align 4
  %189 = and i32 %188, 8191
  %190 = lshr i32 %188, 16
  %191 = and i32 %190, 8191
  %192 = add nuw nsw i32 %191, %189
  tail call void @dma_unmap_page_attrs(ptr noundef %186, i32 noundef %187, i32 noundef %192, i32 noundef 1, i32 noundef 0) #14
  tail call void @__dev_kfree_skb_any(ptr noundef %0, i32 noundef 1) #14
  br label %193

193:                                              ; preds = %185, %156, %146, %127, %56
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xgmac_set_rx_mode(ptr noundef readonly %0) #2 {
  %2 = alloca [16 x i32], align 4
  %3 = getelementptr i8, ptr %0, i32 1444
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #14
  %5 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 14
  %6 = load i32, ptr %5, align 8
  %7 = lshr i32 %6, 8
  %8 = and i32 %7, 1
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %2, i8 0, i32 64, i1 false)
  %9 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 60
  %10 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 60, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr i8, ptr %0, i32 1688
  %13 = load i32, ptr %12, align 8
  %14 = icmp sgt i32 %11, %13
  %15 = or i32 %8, 1026
  %16 = select i1 %14, i32 %15, i32 %8
  %17 = load ptr, ptr %9, align 4
  %18 = icmp eq ptr %17, %9
  br i1 %18, label %42, label %19

19:                                               ; preds = %36, %1
  %20 = phi ptr [ %38, %36 ], [ %17, %1 ]
  %21 = phi i32 [ %37, %36 ], [ 1, %1 ]
  %22 = getelementptr inbounds %struct.netdev_hw_addr, ptr %20, i32 0, i32 2
  br i1 %14, label %23, label %34

23:                                               ; preds = %19
  %24 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %22, i32 noundef 6) #17
  %25 = tail call i32 asm "rbit $0, $1", "=r,r"(i32 %24) #18, !srcloc !70
  %26 = xor i32 %25, -1
  %27 = lshr i32 %26, 23
  %28 = and i32 %27, 31
  %29 = shl nuw i32 1, %28
  %30 = lshr i32 %26, 28
  %31 = getelementptr [16 x i32], ptr %2, i32 0, i32 %30
  %32 = load i32, ptr %31, align 4
  %33 = or i32 %29, %32
  store i32 %33, ptr %31, align 4
  br label %36

34:                                               ; preds = %19
  tail call fastcc void @xgmac_set_mac_addr(ptr noundef %4, ptr noundef %22, i32 noundef %21)
  %35 = add i32 %21, 1
  br label %36

36:                                               ; preds = %34, %23
  %37 = phi i32 [ %21, %23 ], [ %35, %34 ]
  %38 = load ptr, ptr %20, align 4
  %39 = icmp eq ptr %38, %9
  br i1 %39, label %40, label %19

40:                                               ; preds = %36
  %41 = load i32, ptr %5, align 8
  br label %42

42:                                               ; preds = %40, %1
  %43 = phi i32 [ %6, %1 ], [ %41, %40 ]
  %44 = phi i32 [ 1, %1 ], [ %37, %40 ]
  %45 = and i32 %43, 512
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %42
  %48 = or i32 %16, 16
  br label %82

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 61
  %51 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 61, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = add i32 %44, -1
  %54 = add i32 %53, %52
  %55 = load i32, ptr %12, align 8
  %56 = icmp sgt i32 %54, %55
  %57 = or i32 %16, 1028
  %58 = select i1 %56, i32 %57, i32 %16
  %59 = load ptr, ptr %50, align 4
  %60 = icmp eq ptr %59, %50
  br i1 %60, label %82, label %61

61:                                               ; preds = %78, %49
  %62 = phi ptr [ %80, %78 ], [ %59, %49 ]
  %63 = phi i32 [ %79, %78 ], [ %44, %49 ]
  %64 = getelementptr inbounds %struct.netdev_hw_addr, ptr %62, i32 0, i32 2
  br i1 %56, label %65, label %76

65:                                               ; preds = %61
  %66 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %64, i32 noundef 6) #17
  %67 = tail call i32 asm "rbit $0, $1", "=r,r"(i32 %66) #18, !srcloc !70
  %68 = xor i32 %67, -1
  %69 = lshr i32 %68, 23
  %70 = and i32 %69, 31
  %71 = shl nuw i32 1, %70
  %72 = lshr i32 %68, 28
  %73 = getelementptr [16 x i32], ptr %2, i32 0, i32 %72
  %74 = load i32, ptr %73, align 4
  %75 = or i32 %71, %74
  store i32 %75, ptr %73, align 4
  br label %78

76:                                               ; preds = %61
  tail call fastcc void @xgmac_set_mac_addr(ptr noundef %4, ptr noundef %64, i32 noundef %63)
  %77 = add i32 %63, 1
  br label %78

78:                                               ; preds = %76, %65
  %79 = phi i32 [ %63, %65 ], [ %77, %76 ]
  %80 = load ptr, ptr %62, align 4
  %81 = icmp eq ptr %80, %50
  br i1 %81, label %82, label %61

82:                                               ; preds = %78, %49, %47
  %83 = phi i32 [ %44, %47 ], [ %44, %49 ], [ %79, %78 ]
  %84 = phi i32 [ %48, %47 ], [ %58, %49 ], [ %58, %78 ]
  %85 = load i32, ptr %12, align 8
  %86 = icmp sgt i32 %83, %85
  br i1 %86, label %87, label %136

87:                                               ; preds = %136, %82
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !71
  tail call void @arm_heavy_mb() #14
  %88 = load i32, ptr %2, align 4
  %89 = getelementptr i8, ptr %4, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %89, i32 %88) #14, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !71
  tail call void @arm_heavy_mb() #14
  %90 = getelementptr inbounds [16 x i32], ptr %2, i32 0, i32 1
  %91 = load i32, ptr %90, align 4
  %92 = getelementptr i8, ptr %4, i32 772
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 %91) #14, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !71
  tail call void @arm_heavy_mb() #14
  %93 = getelementptr inbounds [16 x i32], ptr %2, i32 0, i32 2
  %94 = load i32, ptr %93, align 4
  %95 = getelementptr i8, ptr %4, i32 776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %95, i32 %94) #14, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !71
  tail call void @arm_heavy_mb() #14
  %96 = getelementptr inbounds [16 x i32], ptr %2, i32 0, i32 3
  %97 = load i32, ptr %96, align 4
  %98 = getelementptr i8, ptr %4, i32 780
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %98, i32 %97) #14, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !71
  tail call void @arm_heavy_mb() #14
  %99 = getelementptr inbounds [16 x i32], ptr %2, i32 0, i32 4
  %100 = load i32, ptr %99, align 4
  %101 = getelementptr i8, ptr %4, i32 784
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %101, i32 %100) #14, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !71
  tail call void @arm_heavy_mb() #14
  %102 = getelementptr inbounds [16 x i32], ptr %2, i32 0, i32 5
  %103 = load i32, ptr %102, align 4
  %104 = getelementptr i8, ptr %4, i32 788
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %104, i32 %103) #14, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !71
  tail call void @arm_heavy_mb() #14
  %105 = getelementptr inbounds [16 x i32], ptr %2, i32 0, i32 6
  %106 = load i32, ptr %105, align 4
  %107 = getelementptr i8, ptr %4, i32 792
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %107, i32 %106) #14, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !71
  tail call void @arm_heavy_mb() #14
  %108 = getelementptr inbounds [16 x i32], ptr %2, i32 0, i32 7
  %109 = load i32, ptr %108, align 4
  %110 = getelementptr i8, ptr %4, i32 796
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %110, i32 %109) #14, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !71
  tail call void @arm_heavy_mb() #14
  %111 = getelementptr inbounds [16 x i32], ptr %2, i32 0, i32 8
  %112 = load i32, ptr %111, align 4
  %113 = getelementptr i8, ptr %4, i32 800
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %113, i32 %112) #14, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !71
  tail call void @arm_heavy_mb() #14
  %114 = getelementptr inbounds [16 x i32], ptr %2, i32 0, i32 9
  %115 = load i32, ptr %114, align 4
  %116 = getelementptr i8, ptr %4, i32 804
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %116, i32 %115) #14, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !71
  tail call void @arm_heavy_mb() #14
  %117 = getelementptr inbounds [16 x i32], ptr %2, i32 0, i32 10
  %118 = load i32, ptr %117, align 4
  %119 = getelementptr i8, ptr %4, i32 808
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %119, i32 %118) #14, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !71
  tail call void @arm_heavy_mb() #14
  %120 = getelementptr inbounds [16 x i32], ptr %2, i32 0, i32 11
  %121 = load i32, ptr %120, align 4
  %122 = getelementptr i8, ptr %4, i32 812
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %122, i32 %121) #14, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !71
  tail call void @arm_heavy_mb() #14
  %123 = getelementptr inbounds [16 x i32], ptr %2, i32 0, i32 12
  %124 = load i32, ptr %123, align 4
  %125 = getelementptr i8, ptr %4, i32 816
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %125, i32 %124) #14, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !71
  tail call void @arm_heavy_mb() #14
  %126 = getelementptr inbounds [16 x i32], ptr %2, i32 0, i32 13
  %127 = load i32, ptr %126, align 4
  %128 = getelementptr i8, ptr %4, i32 820
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %128, i32 %127) #14, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !71
  tail call void @arm_heavy_mb() #14
  %129 = getelementptr inbounds [16 x i32], ptr %2, i32 0, i32 14
  %130 = load i32, ptr %129, align 4
  %131 = getelementptr i8, ptr %4, i32 824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %131, i32 %130) #14, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !71
  tail call void @arm_heavy_mb() #14
  %132 = getelementptr inbounds [16 x i32], ptr %2, i32 0, i32 15
  %133 = load i32, ptr %132, align 4
  %134 = getelementptr i8, ptr %4, i32 828
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %134, i32 %133) #14, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !72
  tail call void @arm_heavy_mb() #14
  %135 = getelementptr i8, ptr %4, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %135, i32 %84) #14, !srcloc !12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #14
  ret void

136:                                              ; preds = %136, %82
  %137 = phi i32 [ %143, %136 ], [ %83, %82 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !73
  tail call void @arm_heavy_mb() #14
  %138 = shl i32 %137, 3
  %139 = add i32 %138, 64
  %140 = getelementptr i8, ptr %4, i32 %139
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %140, i32 0) #14, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !74
  tail call void @arm_heavy_mb() #14
  %141 = add i32 %138, 68
  %142 = getelementptr i8, ptr %4, i32 %141
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %142, i32 0) #14, !srcloc !12
  %143 = add i32 %137, 1
  %144 = load i32, ptr %12, align 8
  %145 = icmp sgt i32 %143, %144
  br i1 %145, label %87, label %136
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xgmac_set_mac_address(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 1444
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.sockaddr, ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = getelementptr %struct.sockaddr, ptr %1, i32 0, i32 1, i32 4
  %11 = load i16, ptr %10, align 2
  %12 = zext i16 %11 to i32
  %13 = or i32 %6, %12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %9
  tail call void @dev_addr_mod(ptr noundef %0, i32 noundef 0, ptr noundef %5, i32 noundef 6) #14
  %16 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 72
  %17 = load ptr, ptr %16, align 32
  tail call fastcc void @xgmac_set_mac_addr(ptr noundef %4, ptr noundef %17, i32 noundef 0)
  br label %18

18:                                               ; preds = %15, %9, %2
  %19 = phi i32 [ 0, %15 ], [ -99, %9 ], [ -99, %2 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xgmac_change_mtu(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = tail call i32 @xgmac_stop(ptr noundef %0)
  %9 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 20
  store i32 %1, ptr %9, align 4
  %10 = tail call i32 @xgmac_open(ptr noundef %0)
  br label %11

11:                                               ; preds = %7, %2
  %12 = phi i32 [ %10, %7 ], [ 0, %2 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xgmac_tx_timeout(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 1768
  %4 = load ptr, ptr @system_wq, align 4
  %5 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %4, ptr noundef %3) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xgmac_get_stats64(ptr noundef %0, ptr nocapture noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 1444
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 1752
  tail call void @_raw_spin_lock_bh(ptr noundef %5) #14
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !75
  tail call void @arm_heavy_mb() #14
  %6 = getelementptr i8, ptr %4, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 8) #14, !srcloc !12
  %7 = getelementptr i8, ptr %4, i32 2320
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #14, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !76
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %1, i32 0, i32 2
  store i64 %9, ptr %10, align 8
  %11 = getelementptr i8, ptr %4, i32 2324
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #14, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !77
  %13 = zext i32 %12 to i64
  %14 = shl nuw i64 %13, 32
  %15 = load i64, ptr %10, align 8
  %16 = or i64 %15, %14
  store i64 %16, ptr %10, align 8
  %17 = getelementptr i8, ptr %4, i32 2304
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #14, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !78
  %19 = zext i32 %18 to i64
  store i64 %19, ptr %1, align 8
  %20 = getelementptr i8, ptr %4, i32 2336
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #14, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !79
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %1, i32 0, i32 8
  store i64 %22, ptr %23, align 8
  %24 = getelementptr i8, ptr %4, i32 2344
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #14, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !80
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %1, i32 0, i32 12
  store i64 %26, ptr %27, align 8
  %28 = getelementptr i8, ptr %4, i32 2424
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #14, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !81
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %1, i32 0, i32 10
  store i64 %30, ptr %31, align 8
  %32 = getelementptr i8, ptr %4, i32 2448
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #14, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !82
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %1, i32 0, i32 15
  store i64 %34, ptr %35, align 8
  %36 = getelementptr i8, ptr %4, i32 2180
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #14, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !83
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %1, i32 0, i32 3
  store i64 %38, ptr %39, align 8
  %40 = getelementptr i8, ptr %4, i32 2184
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #14, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !84
  %42 = zext i32 %41 to i64
  %43 = shl nuw i64 %42, 32
  %44 = load i64, ptr %39, align 8
  %45 = or i64 %44, %43
  store i64 %45, ptr %39, align 8
  %46 = getelementptr i8, ptr %4, i32 2076
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #14, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !85
  %48 = getelementptr i8, ptr %4, i32 2188
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #14, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !86
  %50 = sub i32 %47, %49
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %1, i32 0, i32 5
  store i64 %51, ptr %52, align 8
  %53 = zext i32 %47 to i64
  %54 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %1, i32 0, i32 1
  store i64 %53, ptr %54, align 8
  %55 = getelementptr i8, ptr %4, i32 2172
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #14, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !87
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %1, i32 0, i32 18
  store i64 %57, ptr %58, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !88
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 0) #14, !srcloc !12
  tail call void @_raw_spin_unlock_bh(ptr noundef %5) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xgmac_set_features(ptr nocapture noundef readonly %0, i64 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 23
  %4 = load i64, ptr %3, align 16
  %5 = xor i64 %4, %1
  %6 = and i64 %5, 1099511627776
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %2
  %9 = getelementptr i8, ptr %0, i32 1444
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #14, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !89
  %12 = and i32 %11, -1025
  %13 = lshr i64 %1, 30
  %14 = trunc i64 %13 to i32
  %15 = and i32 %14, 1024
  %16 = or i32 %12, %15
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !90
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %16) #14, !srcloc !12
  br label %17

17:                                               ; preds = %8, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @xgmac_set_mac_addr(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2) unnamed_addr #2 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %39, label %5

5:                                                ; preds = %3
  %6 = getelementptr i8, ptr %1, i32 5
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  %9 = shl nuw nsw i32 %8, 8
  %10 = getelementptr i8, ptr %1, i32 4
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i32
  %13 = icmp eq i32 %2, 0
  %14 = select i1 %13, i32 0, i32 -2147483648
  %15 = or i32 %14, %12
  %16 = or i32 %15, %9
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !91
  tail call void @arm_heavy_mb() #14
  %17 = shl i32 %2, 3
  %18 = add i32 %17, 64
  %19 = getelementptr i8, ptr %0, i32 %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %16) #14, !srcloc !12
  %20 = getelementptr i8, ptr %1, i32 3
  %21 = load i8, ptr %20, align 1
  %22 = zext i8 %21 to i32
  %23 = shl nuw i32 %22, 24
  %24 = getelementptr i8, ptr %1, i32 2
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i32
  %27 = shl nuw nsw i32 %26, 16
  %28 = or i32 %27, %23
  %29 = getelementptr i8, ptr %1, i32 1
  %30 = load i8, ptr %29, align 1
  %31 = zext i8 %30 to i32
  %32 = shl nuw nsw i32 %31, 8
  %33 = or i32 %28, %32
  %34 = load i8, ptr %1, align 1
  %35 = zext i8 %34 to i32
  %36 = or i32 %33, %35
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !92
  tail call void @arm_heavy_mb() #14
  %37 = add i32 %17, 68
  %38 = getelementptr i8, ptr %0, i32 %37
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %36) #14, !srcloc !12
  br label %45

39:                                               ; preds = %3
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !73
  tail call void @arm_heavy_mb() #14
  %40 = shl i32 %2, 3
  %41 = add i32 %40, 64
  %42 = getelementptr i8, ptr %0, i32 %41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 0) #14, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !74
  tail call void @arm_heavy_mb() #14
  %43 = add i32 %40, 68
  %44 = getelementptr i8, ptr %0, i32 %43
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 0) #14, !srcloc !12
  br label %45

45:                                               ; preds = %39, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @xgmac_set_flow_ctrl(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = trunc i32 %1 to i8
  %5 = getelementptr inbounds %struct.xgmac_priv, ptr %0, i32 0, i32 20
  store i8 %4, ptr %5, align 8
  %6 = trunc i32 %2 to i8
  %7 = getelementptr inbounds %struct.xgmac_priv, ptr %0, i32 0, i32 21
  store i8 %6, ptr %7, align 1
  %8 = or i32 %2, %1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %26, label %10

10:                                               ; preds = %3
  %11 = icmp eq i32 %2, 0
  %12 = icmp eq i32 %1, 0
  %13 = select i1 %12, i32 0, i32 4
  %14 = or i32 %13, 2
  %15 = select i1 %11, i32 %13, i32 %14
  %16 = or i32 %15, 67108904
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !93
  tail call void @arm_heavy_mb() #14
  %17 = getelementptr inbounds %struct.xgmac_priv, ptr %0, i32 0, i32 9
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %16) #14, !srcloc !12
  %20 = load ptr, ptr %17, align 4
  %21 = getelementptr i8, ptr %20, i32 1024
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #14, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !94
  %23 = or i32 %22, 256
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !95
  tail call void @arm_heavy_mb() #14
  %24 = load ptr, ptr %17, align 4
  %25 = getelementptr i8, ptr %24, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #14, !srcloc !12
  br label %36

26:                                               ; preds = %3
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !96
  tail call void @arm_heavy_mb() #14
  %27 = getelementptr inbounds %struct.xgmac_priv, ptr %0, i32 0, i32 9
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i8, ptr %28, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 0) #14, !srcloc !12
  %30 = load ptr, ptr %27, align 4
  %31 = getelementptr i8, ptr %30, i32 1024
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #14, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !97
  %33 = and i32 %32, -257
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !98
  tail call void @arm_heavy_mb() #14
  %34 = load ptr, ptr %27, align 4
  %35 = getelementptr i8, ptr %34, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %33) #14, !srcloc !12
  br label %36

36:                                               ; preds = %26, %10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @xgmac_rx_refill(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.xgmac_priv, ptr %0, i32 0, i32 13
  %3 = getelementptr inbounds %struct.xgmac_priv, ptr %0, i32 0, i32 2
  %4 = getelementptr inbounds %struct.xgmac_priv, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %3, align 8
  %6 = load i32, ptr %4, align 4
  %7 = xor i32 %6, -1
  %8 = add i32 %5, %7
  %9 = and i32 %8, 254
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %84, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr %2, align 4
  %13 = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 20
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.xgmac_priv, ptr %0, i32 0, i32 1
  %16 = add i32 %14, 20
  %17 = getelementptr inbounds %struct.xgmac_priv, ptr %0, i32 0, i32 14
  %18 = getelementptr inbounds %struct.xgmac_priv, ptr %0, i32 0, i32 10
  br label %19

19:                                               ; preds = %74, %11
  %20 = phi i32 [ %6, %11 ], [ %79, %74 ]
  %21 = load ptr, ptr %0, align 8
  %22 = getelementptr %struct.xgmac_dma_desc, ptr %21, i32 %20
  %23 = load ptr, ptr %15, align 4
  %24 = getelementptr ptr, ptr %23, i32 %20
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %74

27:                                               ; preds = %19
  %28 = load ptr, ptr %2, align 4
  %29 = tail call ptr @__netdev_alloc_skb(ptr noundef %28, i32 noundef %16, i32 noundef 2592) #14
  %30 = icmp eq ptr %29, null
  br i1 %30, label %84, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.sk_buff, ptr %29, i32 0, i32 17
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr i8, ptr %33, i32 2
  store ptr %34, ptr %32, align 4
  %35 = getelementptr inbounds %struct.sk_buff, ptr %29, i32 0, i32 14
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr i8, ptr %36, i32 2
  store ptr %37, ptr %35, align 8
  %38 = load ptr, ptr %17, align 8
  %39 = load i32, ptr %18, align 8
  %40 = add i32 %39, -2
  %41 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %34) #14
  %42 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %43 = xor i1 %42, true
  %44 = select i1 %41, i1 %43, i1 false
  br i1 %44, label %45, label %54, !prof !37

45:                                               ; preds = %31
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %46 = tail call ptr @dev_driver_string(ptr noundef %38) #14
  %47 = getelementptr inbounds %struct.device, ptr %38, i32 0, i32 3
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load ptr, ptr %38, align 4
  br label %52

52:                                               ; preds = %50, %45
  %53 = phi ptr [ %51, %50 ], [ %48, %45 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.8, ptr noundef %46, ptr noundef %53) #14
  br label %54

54:                                               ; preds = %52, %31
  br i1 %41, label %64, label %55

55:                                               ; preds = %54
  %56 = load ptr, ptr @mem_map, align 4
  %57 = ptrtoint ptr %34 to i32
  %58 = add i32 %57, 1073741824
  %59 = lshr i32 %58, 12
  %60 = getelementptr %struct.page, ptr %56, i32 %59
  %61 = and i32 %57, 4095
  %62 = tail call i32 @dma_map_page_attrs(ptr noundef %38, ptr noundef %60, i32 noundef %61, i32 noundef %40, i32 noundef 2, i32 noundef 0) #14
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %64, label %65

64:                                               ; preds = %55, %54
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %29, i32 noundef 1) #14
  br label %84

65:                                               ; preds = %55
  %66 = load ptr, ptr %15, align 4
  %67 = getelementptr ptr, ptr %66, i32 %20
  store ptr %29, ptr %67, align 4
  %68 = load i32, ptr %18, align 8
  %69 = getelementptr %struct.xgmac_dma_desc, ptr %21, i32 %20, i32 2
  store i32 %62, ptr %69, align 4
  %70 = icmp sgt i32 %68, 8184
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = add i32 %62, 8184
  %73 = getelementptr %struct.xgmac_dma_desc, ptr %21, i32 %20, i32 3
  store i32 %72, ptr %73, align 4
  br label %74

74:                                               ; preds = %71, %65, %19
  %75 = load i32, ptr %4, align 4
  %76 = add i32 %75, 1
  %77 = and i32 %76, 255
  store i32 %77, ptr %4, align 4
  store i32 -2147483648, ptr %22, align 4
  %78 = load i32, ptr %3, align 8
  %79 = load i32, ptr %4, align 4
  %80 = xor i32 %79, -1
  %81 = add i32 %78, %80
  %82 = and i32 %81, 254
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %19

84:                                               ; preds = %74, %64, %27, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #8 {
  br label %1

1:                                                ; preds = %0
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %1) to i32), i32 noundef 512) #14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @xgmac_get_wol(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #11 {
  %3 = getelementptr i8, ptr %0, i32 1464
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 11, i32 1
  %6 = load i16, ptr %5, align 4
  %7 = and i16 %6, 1
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %1, i32 0, i32 1
  store i32 34, ptr %10, align 4
  %11 = getelementptr i8, ptr %0, i32 1764
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %1, i32 0, i32 2
  store i32 %12, ptr %13, align 4
  br label %14

14:                                               ; preds = %9, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xgmac_set_wol(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 1464
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 11, i32 1
  %6 = load i16, ptr %5, align 4
  %7 = and i16 %6, 1
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %1, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, -35
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %9
  %15 = getelementptr i8, ptr %0, i32 1764
  store i32 %11, ptr %15, align 4
  %16 = load i32, ptr %10, align 4
  %17 = icmp eq i32 %16, 0
  %18 = xor i1 %17, true
  %19 = xor i1 %17, true
  %20 = zext i1 %19 to i32
  %21 = tail call i32 @device_set_wakeup_enable(ptr noundef %4, i1 noundef zeroext %18) #14
  %22 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 59
  %23 = load i32, ptr %22, align 8
  %24 = tail call i32 @irq_set_irq_wake(i32 noundef %23, i32 noundef %20) #14
  br label %25

25:                                               ; preds = %14, %9, %2
  %26 = phi i32 [ -524, %2 ], [ -22, %9 ], [ 0, %14 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @xgmac_get_pauseparam(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #12 {
  %3 = getelementptr i8, ptr %0, i32 1760
  %4 = load i8, ptr %3, align 8
  %5 = zext i8 %4 to i32
  %6 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %1, i32 0, i32 2
  store i32 %5, ptr %6, align 4
  %7 = getelementptr i8, ptr %0, i32 1761
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %1, i32 0, i32 3
  store i32 %9, ptr %10, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xgmac_set_pauseparam(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %1, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %0, i32 1408
  %8 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %1, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %1, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  tail call fastcc void @xgmac_set_flow_ctrl(ptr noundef %7, i32 noundef %9, i32 noundef %11)
  br label %12

12:                                               ; preds = %6, %2
  %13 = phi i32 [ 0, %6 ], [ -22, %2 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xgmac_get_strings(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = icmp eq i32 %1, 1
  br i1 %4, label %5, label %24

5:                                                ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(32) %2, ptr noundef nonnull align 4 dereferenceable(32) @xgmac_gstrings_stats, i32 32, i1 false)
  %6 = getelementptr i8, ptr %2, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(32) %6, ptr noundef align 4 dereferenceable(32) getelementptr inbounds ([19 x %struct.xgmac_stats], ptr @xgmac_gstrings_stats, i32 0, i32 1), i32 32, i1 false)
  %7 = getelementptr i8, ptr %2, i32 64
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(32) %7, ptr noundef align 4 dereferenceable(32) getelementptr inbounds ([19 x %struct.xgmac_stats], ptr @xgmac_gstrings_stats, i32 0, i32 2), i32 32, i1 false)
  %8 = getelementptr i8, ptr %2, i32 96
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(32) %8, ptr noundef align 4 dereferenceable(32) getelementptr inbounds ([19 x %struct.xgmac_stats], ptr @xgmac_gstrings_stats, i32 0, i32 3), i32 32, i1 false)
  %9 = getelementptr i8, ptr %2, i32 128
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(32) %9, ptr noundef align 4 dereferenceable(32) getelementptr inbounds ([19 x %struct.xgmac_stats], ptr @xgmac_gstrings_stats, i32 0, i32 4), i32 32, i1 false)
  %10 = getelementptr i8, ptr %2, i32 160
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(32) %10, ptr noundef align 4 dereferenceable(32) getelementptr inbounds ([19 x %struct.xgmac_stats], ptr @xgmac_gstrings_stats, i32 0, i32 5), i32 32, i1 false)
  %11 = getelementptr i8, ptr %2, i32 192
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(32) %11, ptr noundef align 4 dereferenceable(32) getelementptr inbounds ([19 x %struct.xgmac_stats], ptr @xgmac_gstrings_stats, i32 0, i32 6), i32 32, i1 false)
  %12 = getelementptr i8, ptr %2, i32 224
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(32) %12, ptr noundef align 4 dereferenceable(32) getelementptr inbounds ([19 x %struct.xgmac_stats], ptr @xgmac_gstrings_stats, i32 0, i32 7), i32 32, i1 false)
  %13 = getelementptr i8, ptr %2, i32 256
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(32) %13, ptr noundef align 4 dereferenceable(32) getelementptr inbounds ([19 x %struct.xgmac_stats], ptr @xgmac_gstrings_stats, i32 0, i32 8), i32 32, i1 false)
  %14 = getelementptr i8, ptr %2, i32 288
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(32) %14, ptr noundef align 4 dereferenceable(32) getelementptr inbounds ([19 x %struct.xgmac_stats], ptr @xgmac_gstrings_stats, i32 0, i32 9), i32 32, i1 false)
  %15 = getelementptr i8, ptr %2, i32 320
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(32) %15, ptr noundef align 4 dereferenceable(32) getelementptr inbounds ([19 x %struct.xgmac_stats], ptr @xgmac_gstrings_stats, i32 0, i32 10), i32 32, i1 false)
  %16 = getelementptr i8, ptr %2, i32 352
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(32) %16, ptr noundef align 4 dereferenceable(32) getelementptr inbounds ([19 x %struct.xgmac_stats], ptr @xgmac_gstrings_stats, i32 0, i32 11), i32 32, i1 false)
  %17 = getelementptr i8, ptr %2, i32 384
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(32) %17, ptr noundef align 4 dereferenceable(32) getelementptr inbounds ([19 x %struct.xgmac_stats], ptr @xgmac_gstrings_stats, i32 0, i32 12), i32 32, i1 false)
  %18 = getelementptr i8, ptr %2, i32 416
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(32) %18, ptr noundef align 4 dereferenceable(32) getelementptr inbounds ([19 x %struct.xgmac_stats], ptr @xgmac_gstrings_stats, i32 0, i32 13), i32 32, i1 false)
  %19 = getelementptr i8, ptr %2, i32 448
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(32) %19, ptr noundef align 4 dereferenceable(32) getelementptr inbounds ([19 x %struct.xgmac_stats], ptr @xgmac_gstrings_stats, i32 0, i32 14), i32 32, i1 false)
  %20 = getelementptr i8, ptr %2, i32 480
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(32) %20, ptr noundef align 4 dereferenceable(32) getelementptr inbounds ([19 x %struct.xgmac_stats], ptr @xgmac_gstrings_stats, i32 0, i32 15), i32 32, i1 false)
  %21 = getelementptr i8, ptr %2, i32 512
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(32) %21, ptr noundef align 4 dereferenceable(32) getelementptr inbounds ([19 x %struct.xgmac_stats], ptr @xgmac_gstrings_stats, i32 0, i32 16), i32 32, i1 false)
  %22 = getelementptr i8, ptr %2, i32 544
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(32) %22, ptr noundef align 4 dereferenceable(32) getelementptr inbounds ([19 x %struct.xgmac_stats], ptr @xgmac_gstrings_stats, i32 0, i32 17), i32 32, i1 false)
  %23 = getelementptr i8, ptr %2, i32 576
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(32) %23, ptr noundef align 4 dereferenceable(32) getelementptr inbounds ([19 x %struct.xgmac_stats], ptr @xgmac_gstrings_stats, i32 0, i32 18), i32 32, i1 false)
  br label %25

24:                                               ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1632, i32 noundef 9, ptr noundef null) #14
  br label %25

25:                                               ; preds = %24, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xgmac_get_ethtool_stats(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 1408
  %5 = getelementptr i8, ptr %0, i32 1444
  br label %6

6:                                                ; preds = %22, %3
  %7 = phi ptr [ %2, %3 ], [ %24, %22 ]
  %8 = phi i32 [ 0, %3 ], [ %26, %22 ]
  %9 = and i32 %8, 536870910
  %10 = icmp ult i32 %9, 14
  br i1 %10, label %17, label %11

11:                                               ; preds = %6
  %12 = load ptr, ptr %5, align 4
  %13 = getelementptr [19 x %struct.xgmac_stats], ptr @xgmac_gstrings_stats, i32 0, i32 %8, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr i8, ptr %12, i32 %14
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #14, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !99
  br label %22

17:                                               ; preds = %6
  %18 = getelementptr [19 x %struct.xgmac_stats], ptr @xgmac_gstrings_stats, i32 0, i32 %8, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr i8, ptr %4, i32 %19
  %21 = load i32, ptr %20, align 4
  br label %22

22:                                               ; preds = %17, %11
  %23 = phi i32 [ %21, %17 ], [ %16, %11 ]
  %24 = getelementptr i64, ptr %7, i32 1
  %25 = zext i32 %23 to i64
  store i64 %25, ptr %7, align 8
  %26 = add nuw nsw i32 %8, 1
  %27 = icmp eq i32 %26, 19
  br i1 %27, label %28, label %6

28:                                               ; preds = %22
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @xgmac_get_sset_count(ptr nocapture noundef readnone %0, i32 noundef %1) #13 {
  %3 = icmp eq i32 %1, 1
  %4 = select i1 %3, i32 19, i32 -22
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xgmac_ethtool_get_link_ksettings(ptr nocapture noundef readnone %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.ethtool_link_settings, ptr %1, i32 0, i32 5
  store i8 0, ptr %3, align 1
  %4 = getelementptr inbounds %struct.ethtool_link_settings, ptr %1, i32 0, i32 2
  store i8 1, ptr %4, align 4
  %5 = getelementptr inbounds %struct.ethtool_link_settings, ptr %1, i32 0, i32 1
  store i32 10000, ptr %5, align 4
  %6 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %1, i32 0, i32 1
  tail call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %6, i32 noundef 0) #14
  %7 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %1, i32 0, i32 1, i32 1
  tail call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %7, i32 noundef 0) #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_set_wakeup_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_receive_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @napi_gro_receive(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netif_napi_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xgmac_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %50, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %50, label %10

10:                                               ; preds = %5
  tail call void @netif_device_detach(ptr noundef nonnull %3) #14
  %11 = getelementptr i8, ptr %3, i32 1472
  tail call void @napi_disable(ptr noundef %11) #14
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !100
  tail call void @arm_heavy_mb() #14
  %12 = getelementptr i8, ptr %3, i32 1444
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 3868
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 0) #14, !srcloc !12
  %15 = getelementptr i8, ptr %3, i32 1464
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 11, i32 1
  %18 = load i16, ptr %17, align 4
  %19 = and i16 %18, 1
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %43, label %21

21:                                               ; preds = %10
  %22 = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 11, i32 6
  %23 = load ptr, ptr %22, align 8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %43, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr %12, align 4
  %27 = getelementptr i8, ptr %26, i32 3864
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #14, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !101
  %29 = and i32 %28, -8195
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !102
  tail call void @arm_heavy_mb() #14
  %30 = load ptr, ptr %12, align 4
  %31 = getelementptr i8, ptr %30, i32 3864
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %29) #14, !srcloc !12
  %32 = load ptr, ptr %12, align 4
  %33 = getelementptr i8, ptr %3, i32 1764
  %34 = load i32, ptr %33, align 4
  %35 = and i32 %34, 32
  %36 = icmp eq i32 %35, 0
  %37 = select i1 %36, i32 0, i32 3
  %38 = and i32 %34, 2
  %39 = icmp eq i32 %38, 0
  %40 = or i32 %37, 513
  %41 = select i1 %39, i32 %37, i32 %40
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !103
  tail call void @arm_heavy_mb() #14
  %42 = getelementptr i8, ptr %32, i32 1796
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %41) #14, !srcloc !12
  br label %50

43:                                               ; preds = %21, %10
  %44 = load ptr, ptr %12, align 4
  %45 = getelementptr i8, ptr %44, i32 3864
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #14, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !18
  %47 = and i32 %46, -8195
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !19
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %47) #14, !srcloc !12
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #14, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !20
  %49 = and i32 %48, -13
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !21
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %49) #14, !srcloc !12
  br label %50

50:                                               ; preds = %43, %25, %5, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xgmac_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 1444
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %20, label %10

10:                                               ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !103
  tail call void @arm_heavy_mb() #14
  %11 = getelementptr i8, ptr %5, i32 1796
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 0) #14, !srcloc !12
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #14, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !53
  %13 = or i32 %12, 12
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !54
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %13) #14, !srcloc !12
  %14 = getelementptr i8, ptr %5, i32 3864
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #14, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !55
  %16 = or i32 %15, 8194
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !56
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %16) #14, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !104
  tail call void @arm_heavy_mb() #14
  %17 = getelementptr i8, ptr %5, i32 3860
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 107519) #14, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !105
  tail call void @arm_heavy_mb() #14
  %18 = getelementptr i8, ptr %5, i32 3868
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 107519) #14, !srcloc !12
  tail call void @netif_device_attach(ptr noundef %3) #14
  %19 = getelementptr i8, ptr %3, i32 1472
  tail call void @napi_enable(ptr noundef %19) #14
  br label %20

20:                                               ; preds = %10, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nounwind }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind readonly willreturn }
attributes #18 = { nounwind readnone }

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
!9 = !{i64 3544865}
!10 = !{i64 2154928844}
!11 = !{i64 2154929080}
!12 = !{i64 3544447}
!13 = !{i64 2154929661}
!14 = !{i64 2154929861}
!15 = !{i64 2154930618}
!16 = !{i64 2154874787}
!17 = !{i64 2154875212}
!18 = !{i64 2154871752}
!19 = !{i64 2154871974}
!20 = !{i64 2154872460}
!21 = !{i64 2154872682}
!22 = !{i64 2154887426}
!23 = !{i64 2154887920}
!24 = !{i64 2154888148}
!25 = !{i64 2154888676}
!26 = !{i64 2154888895}
!27 = !{i64 2154889282}
!28 = !{i64 2154889735}
!29 = !{i64 2154890802}
!30 = !{i64 2154892127}
!31 = !{!"branch_weights", i32 2000, i32 1}
!32 = !{i64 2154914825}
!33 = !{i64 2154867242}
!34 = !{i64 2154867464}
!35 = !{i64 2154867972}
!36 = !{i64 2154881355}
!37 = !{!"branch_weights", i32 1, i32 2000}
!38 = !{i64 2154892963}
!39 = !{i64 2154893185}
!40 = !{i64 2154893671}
!41 = !{i64 2154893928}
!42 = !{i64 2154893770}
!43 = !{i64 2154894172}
!44 = !{i64 2154894503}
!45 = !{i64 2154894846}
!46 = !{i64 2154895196}
!47 = !{i64 2154895726}
!48 = !{i64 2154896075}
!49 = !{i64 2154896508}
!50 = !{i64 2154896927}
!51 = !{i64 2154879699}
!52 = !{i64 2154880075}
!53 = !{i64 2154870167}
!54 = !{i64 2154870389}
!55 = !{i64 2154870875}
!56 = !{i64 2154871097}
!57 = !{i64 2154898058}
!58 = !{i64 2154899375}
!59 = !{i64 2154900219}
!60 = !{i64 2154900419}
!61 = !{i64 2148913437}
!62 = !{i64 2148981312}
!63 = !{i64 2148977136}
!64 = !{i64 2148977211, i64 2148977238, i64 2148977285, i64 2148977307, i64 2148977335, i64 2148977355}
!65 = !{i64 2149004315}
!66 = !{i64 2154900944}
!67 = !{i64 2154901157}
!68 = !{i64 2154901449}
!69 = !{i64 2154902095}
!70 = !{i64 7162571}
!71 = !{i64 2154913800}
!72 = !{i64 2154914167}
!73 = !{i64 2154873838}
!74 = !{i64 2154874217}
!75 = !{i64 2154915593}
!76 = !{i64 2154916081}
!77 = !{i64 2154916426}
!78 = !{i64 2154916771}
!79 = !{i64 2154917116}
!80 = !{i64 2154917461}
!81 = !{i64 2154917806}
!82 = !{i64 2154918151}
!83 = !{i64 2154918496}
!84 = !{i64 2154918841}
!85 = !{i64 2154919186}
!86 = !{i64 2154919531}
!87 = !{i64 2154919876}
!88 = !{i64 2154920070}
!89 = !{i64 2154920680}
!90 = !{i64 2154921032}
!91 = !{i64 2154873065}
!92 = !{i64 2154873453}
!93 = !{i64 2154875468}
!94 = !{i64 2154875968}
!95 = !{i64 2154876181}
!96 = !{i64 2154876516}
!97 = !{i64 2154877010}
!98 = !{i64 2154877223}
!99 = !{i64 2154925613}
!100 = !{i64 2154931839}
!101 = !{i64 2154932333}
!102 = !{i64 2154932559}
!103 = !{i64 2154931508}
!104 = !{i64 2154933534}
!105 = !{i64 2154934851}
