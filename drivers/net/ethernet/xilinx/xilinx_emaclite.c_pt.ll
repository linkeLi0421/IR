; ModuleID = '/llk/IR/drivers/net/ethernet/xilinx/xilinx_emaclite.c_pt.bc'
source_filename = "../drivers/net/ethernet/xilinx/xilinx_emaclite.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
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
%struct.net_local = type { ptr, i8, i8, i32, i32, ptr, %struct.spinlock, ptr, ptr, ptr, ptr, i32 }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
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
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }

@__initcall__kmod_xilinx_emaclite__332_1293_xemaclite_of_driver_init6 = internal global ptr @xemaclite_of_driver_init, section ".initcall6.init", align 4
@xemaclite_of_driver = internal global %struct.platform_driver { ptr @xemaclite_of_probe, ptr @xemaclite_of_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @xemaclite_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_xemaclite_of_driver_exit = internal global ptr @xemaclite_of_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author333 = internal constant [36 x i8] c"xilinx_emaclite.author=Xilinx, Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_description334 = internal constant [60 x i8] c"xilinx_emaclite.description=Xilinx Ethernet MAC Lite driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file335 = internal constant [65 x i8] c"xilinx_emaclite.file=drivers/net/ethernet/xilinx/xilinx_emaclite\00", section ".modinfo", align 1
@__UNIQUE_ID_license336 = internal constant [28 x i8] c"xilinx_emaclite.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [16 x i8] c"xilinx_emaclite\00", align 1
@xemaclite_of_match = internal constant [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,opb-ethernetlite-1.01.a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,opb-ethernetlite-1.01.b\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,xps-ethernetlite-1.00.a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,xps-ethernetlite-2.00.a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,xps-ethernetlite-2.01.a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,xps-ethernetlite-3.00.a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Device Tree Probing\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"xlnx,tx-ping-pong\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"xlnx,rx-ping-pong\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"No MAC address found, using random\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"phy-handle\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"MAC address is now %pM\0A\00", align 1
@xemaclite_netdev_ops = internal constant %struct.net_device_ops { ptr null, ptr null, ptr @xemaclite_open, ptr @xemaclite_close, ptr @xemaclite_send, ptr null, ptr null, ptr null, ptr null, ptr @xemaclite_set_mac_address, ptr null, ptr null, ptr @xemaclite_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xemaclite_tx_timeout, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@xemaclite_ethtool_ops = internal constant %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @xemaclite_ethtools_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @phy_ethtool_get_link_ksettings, ptr @phy_ethtool_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.7 = private unnamed_addr constant [42 x i8] c"Cannot register network device, aborting\0A\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"Xilinx EmacLite at 0x%08lX mapped to 0x%p, irq=%d\0A\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"Parameter %s not found, defaulting to false\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"Failed to register mdio bus.\0A\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"MDIO of the phy is not registered yet\0A\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"Failed to allocate mdiobus\0A\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"%.8llx\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"Xilinx Emaclite MDIO\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"of_phy_connect() failed\0A\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"Could not allocate interrupt %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [35 x i8] c"Could not allocate receive buffer\0A\00", align 1
@.str.18 = private unnamed_addr constant [46 x i8] c"drivers/net/ethernet/xilinx/xilinx_emaclite.c\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.19 = private unnamed_addr constant [37 x i8] c"Exceeded transmit timeout of %lu ms\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author333, ptr @__UNIQUE_ID_description334, ptr @__UNIQUE_ID_file335, ptr @__UNIQUE_ID_license336, ptr @__exitcall_xemaclite_of_driver_exit, ptr @__initcall__kmod_xilinx_emaclite__332_1293_xemaclite_of_driver_init6, ptr @xemaclite_of_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @xemaclite_of_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @xemaclite_of_driver, ptr noundef null) #11
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @xemaclite_of_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @xemaclite_of_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xemaclite_of_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.resource, align 4
  %3 = alloca %struct.of_phandle_args, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.1) #12
  %5 = tail call ptr @alloc_etherdev_mqs(i32 noundef 44, i32 noundef 1, i32 noundef 1) #11
  %6 = icmp eq ptr %5, null
  br i1 %6, label %127, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %5, ptr %8, align 8
  %9 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 111, i32 1
  store ptr %4, ptr %9, align 4
  %10 = getelementptr i8, ptr %5, i32 1408
  store ptr %5, ptr %10, align 4
  %11 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #11
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %125, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 59
  store i32 %11, ptr %14, align 8
  %15 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #11
  %16 = tail call ptr @devm_ioremap_resource(ptr noundef %4, ptr noundef %15) #11
  %17 = getelementptr i8, ptr %5, i32 1424
  store ptr %16, ptr %17, align 4
  %18 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = ptrtoint ptr %16 to i32
  br label %125

21:                                               ; preds = %13
  %22 = load i32, ptr %15, align 4
  %23 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 4
  store i32 %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.resource, ptr %15, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 3
  store i32 %25, ptr %26, align 8
  %27 = getelementptr i8, ptr %5, i32 1428
  store i32 0, ptr %27, align 4
  %28 = getelementptr i8, ptr %5, i32 1416
  store i32 0, ptr %28, align 4
  %29 = getelementptr i8, ptr %5, i32 1420
  store i32 0, ptr %29, align 4
  %30 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %31 = load ptr, ptr %30, align 8
  %32 = tail call ptr @of_get_property(ptr noundef %31, ptr noundef nonnull @.str.2, ptr noundef null) #11
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %21
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.2) #12
  br label %38

35:                                               ; preds = %21
  %36 = load i32, ptr %32, align 4
  %37 = icmp ne i32 %36, 0
  br label %38

38:                                               ; preds = %35, %34
  %39 = phi i1 [ %37, %35 ], [ false, %34 ]
  %40 = getelementptr i8, ptr %5, i32 1412
  %41 = zext i1 %39 to i8
  store i8 %41, ptr %40, align 4
  %42 = load ptr, ptr %30, align 8
  %43 = tail call ptr @of_get_property(ptr noundef %42, ptr noundef nonnull @.str.3, ptr noundef null) #11
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.3) #12
  br label %49

46:                                               ; preds = %38
  %47 = load i32, ptr %43, align 4
  %48 = icmp ne i32 %47, 0
  br label %49

49:                                               ; preds = %46, %45
  %50 = phi i1 [ %48, %46 ], [ false, %45 ]
  %51 = getelementptr i8, ptr %5, i32 1413
  %52 = zext i1 %50 to i8
  store i8 %52, ptr %51, align 1
  %53 = load ptr, ptr %30, align 8
  %54 = tail call i32 @of_get_ethdev_address(ptr noundef %53, ptr noundef nonnull %5) #11
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %49
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.4) #12
  tail call fastcc void @eth_hw_addr_random(ptr noundef nonnull %5)
  br label %57

57:                                               ; preds = %56, %49
  %58 = load ptr, ptr %17, align 4
  %59 = getelementptr i8, ptr %58, i32 2044
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !8
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 0) #11, !srcloc !9
  %60 = load ptr, ptr %17, align 4
  %61 = getelementptr i8, ptr %60, i32 4092
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !8
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 0) #11, !srcloc !9
  %62 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 72
  %63 = load ptr, ptr %62, align 32
  tail call fastcc void @xemaclite_update_address(ptr noundef %10, ptr noundef %63)
  %64 = load ptr, ptr %30, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false) #11, !annotation !10
  %65 = call i32 @__of_parse_phandle_with_args(ptr noundef %64, ptr noundef nonnull @.str.5, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %3) #11
  %66 = icmp eq i32 %65, 0
  %67 = load ptr, ptr %3, align 4
  %68 = select i1 %66, ptr %67, ptr null
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #11
  %69 = getelementptr i8, ptr %5, i32 1440
  store ptr %68, ptr %69, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %2, i8 0, i32 32, i1 false) #11, !annotation !10
  %70 = load ptr, ptr %69, align 4
  %71 = call ptr @of_get_parent(ptr noundef %70) #11
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %74

73:                                               ; preds = %57
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.10) #12
  br label %109

74:                                               ; preds = %57
  %75 = call ptr @of_get_parent(ptr noundef nonnull %71) #11
  %76 = call i32 @of_address_to_resource(ptr noundef %75, i32 noundef 0, ptr noundef nonnull %2) #11
  %77 = load ptr, ptr %10, align 4
  %78 = getelementptr inbounds %struct.net_device, ptr %77, i32 0, i32 4
  %79 = load i32, ptr %78, align 4
  %80 = load i32, ptr %2, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %88, label %82

82:                                               ; preds = %74
  %83 = load ptr, ptr %69, align 4
  %84 = call ptr @of_phy_find_device(ptr noundef %83) #11
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.11) #12
  br label %109

87:                                               ; preds = %82
  call void @put_device(ptr noundef nonnull %84) #11
  br label %109

88:                                               ; preds = %74
  %89 = load ptr, ptr %17, align 4
  %90 = getelementptr i8, ptr %89, i32 2032
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !8
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %90, i32 8) #11, !srcloc !9
  %91 = call ptr @mdiobus_alloc_size(i32 noundef 0) #11
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.12) #12
  br label %109

94:                                               ; preds = %88
  %95 = getelementptr inbounds %struct.mii_bus, ptr %91, i32 0, i32 2
  %96 = load i32, ptr %2, align 4
  %97 = zext i32 %96 to i64
  %98 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %95, i32 noundef 61, ptr noundef nonnull @.str.13, i64 noundef %97) #11
  %99 = getelementptr inbounds %struct.mii_bus, ptr %91, i32 0, i32 3
  store ptr %10, ptr %99, align 8
  %100 = getelementptr inbounds %struct.mii_bus, ptr %91, i32 0, i32 1
  store ptr @.str.14, ptr %100, align 4
  %101 = getelementptr inbounds %struct.mii_bus, ptr %91, i32 0, i32 4
  store ptr @xemaclite_mdio_read, ptr %101, align 4
  %102 = getelementptr inbounds %struct.mii_bus, ptr %91, i32 0, i32 5
  store ptr @xemaclite_mdio_write, ptr %102, align 8
  %103 = getelementptr inbounds %struct.mii_bus, ptr %91, i32 0, i32 9
  store ptr %4, ptr %103, align 4
  %104 = call i32 @of_mdiobus_register(ptr noundef nonnull %91, ptr noundef nonnull %71) #11
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %94
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.10) #12
  call void @mdiobus_free(ptr noundef nonnull %91) #11
  br label %109

107:                                              ; preds = %94
  %108 = getelementptr i8, ptr %5, i32 1444
  store ptr %91, ptr %108, align 4
  br label %109

109:                                              ; preds = %107, %106, %93, %87, %86, %73
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #11
  %110 = load ptr, ptr %62, align 32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.6, ptr noundef %110) #12
  %111 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 16
  store ptr @xemaclite_netdev_ops, ptr %111, align 8
  %112 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 42
  store ptr @xemaclite_ethtool_ops, ptr %112, align 8
  %113 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 14
  %114 = load i32, ptr %113, align 8
  %115 = and i32 %114, -4097
  store i32 %115, ptr %113, align 8
  %116 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 96
  store i32 6000, ptr %116, align 8
  %117 = call i32 @register_netdev(ptr noundef nonnull %5) #11
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %121, label %119

119:                                              ; preds = %109
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.7) #12
  %120 = load ptr, ptr %69, align 4
  call void @of_node_put(ptr noundef %120) #11
  br label %125

121:                                              ; preds = %109
  %122 = load i32, ptr %23, align 4
  %123 = load ptr, ptr %17, align 4
  %124 = load i32, ptr %14, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.8, i32 noundef %122, ptr noundef %123, i32 noundef %124) #12
  br label %127

125:                                              ; preds = %119, %19, %7
  %126 = phi i32 [ %11, %7 ], [ %20, %19 ], [ %117, %119 ]
  call void @free_netdev(ptr noundef nonnull %5) #11
  br label %127

127:                                              ; preds = %125, %121, %1
  %128 = phi i32 [ %126, %125 ], [ 0, %121 ], [ -12, %1 ]
  ret i32 %128
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xemaclite_of_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 1444
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  tail call void @mdiobus_unregister(ptr noundef nonnull %5) #11
  %8 = load ptr, ptr %4, align 4
  tail call void @mdiobus_free(ptr noundef %8) #11
  store ptr null, ptr %4, align 4
  br label %9

9:                                                ; preds = %7, %1
  tail call void @unregister_netdev(ptr noundef %3) #11
  %10 = getelementptr i8, ptr %3, i32 1440
  %11 = load ptr, ptr %10, align 4
  tail call void @of_node_put(ptr noundef %11) #11
  store ptr null, ptr %10, align 4
  tail call void @free_netdev(ptr noundef %3) #11
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_ethdev_address(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @eth_hw_addr_random(ptr noundef %0) unnamed_addr #5 {
  %2 = alloca [6 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %2, i8 0, i32 6, i1 false), !annotation !10
  call void @get_random_bytes(ptr noundef nonnull %2, i32 noundef 6) #11
  %3 = load i8, ptr %2, align 1
  %4 = and i8 %3, -4
  %5 = or i8 %4, 2
  store i8 %5, ptr %2, align 1
  call void @dev_addr_mod(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2, i32 noundef 6) #11
  %6 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 50
  store i8 1, ptr %6, align 8
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @xemaclite_update_address(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.net_local, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.net_local, ptr %0, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr i8, ptr %4, i32 %6
  %8 = getelementptr i16, ptr %1, i32 1
  %9 = load i16, ptr %1, align 2
  %10 = load i16, ptr %8, align 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  %11 = zext i16 %10 to i32
  %12 = shl nuw i32 %11, 16
  %13 = zext i16 %9 to i32
  %14 = or i32 %12, %13
  store i32 %14, ptr %7, align 4
  %15 = getelementptr i32, ptr %7, i32 1
  %16 = getelementptr i16, ptr %1, i32 2
  %17 = load i16, ptr %16, align 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !12
  tail call void @arm_heavy_mb() #11
  %18 = zext i16 %17 to i32
  store i32 %18, ptr %15, align 4
  %19 = getelementptr i8, ptr %7, i32 2036
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !8
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 6) #11, !srcloc !9
  %20 = getelementptr i8, ptr %7, i32 2044
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #11, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !14
  %22 = or i32 %21, 3
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !8
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %22) #11, !srcloc !9
  br label %23

23:                                               ; preds = %23, %2
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #11, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !14
  %25 = and i32 %24, 3
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %23

27:                                               ; preds = %23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_find_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xemaclite_mdio_read(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.mii_bus, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i64 @ktime_get() #11
  %7 = add i64 %6, 20000000
  %8 = getelementptr inbounds %struct.net_local, ptr %5, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 2032
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #11, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !14
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %29, label %14

14:                                               ; preds = %17, %3
  %15 = tail call i64 @ktime_get() #11
  %16 = icmp sgt i64 %15, %7
  br i1 %16, label %23, label %17

17:                                               ; preds = %14
  tail call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #11
  %18 = load ptr, ptr %8, align 4
  %19 = getelementptr i8, ptr %18, i32 2032
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #11, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !14
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %29, label %14

23:                                               ; preds = %14
  %24 = load ptr, ptr %8, align 4
  %25 = getelementptr i8, ptr %24, i32 2032
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #11, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !14
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %67

29:                                               ; preds = %23, %17, %3
  %30 = load ptr, ptr %8, align 4
  %31 = getelementptr i8, ptr %30, i32 2032
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #11, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !14
  %33 = shl i32 %1, 5
  %34 = or i32 %33, %2
  %35 = or i32 %34, 1024
  %36 = load ptr, ptr %8, align 4
  %37 = getelementptr i8, ptr %36, i32 2020
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !8
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %35) #11, !srcloc !9
  %38 = or i32 %32, 1
  %39 = load ptr, ptr %8, align 4
  %40 = getelementptr i8, ptr %39, i32 2032
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !8
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %38) #11, !srcloc !9
  %41 = tail call i64 @ktime_get() #11
  %42 = add i64 %41, 20000000
  %43 = load ptr, ptr %8, align 4
  %44 = getelementptr i8, ptr %43, i32 2032
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #11, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !14
  %46 = and i32 %45, 1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %63, label %48

48:                                               ; preds = %51, %29
  %49 = tail call i64 @ktime_get() #11
  %50 = icmp sgt i64 %49, %42
  br i1 %50, label %57, label %51

51:                                               ; preds = %48
  tail call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #11
  %52 = load ptr, ptr %8, align 4
  %53 = getelementptr i8, ptr %52, i32 2032
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #11, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !14
  %55 = and i32 %54, 1
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %63, label %48

57:                                               ; preds = %48
  %58 = load ptr, ptr %8, align 4
  %59 = getelementptr i8, ptr %58, i32 2032
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #11, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !14
  %61 = and i32 %60, 1
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %57, %51, %29
  %64 = load ptr, ptr %8, align 4
  %65 = getelementptr i8, ptr %64, i32 2028
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #11, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !14
  br label %67

67:                                               ; preds = %63, %57, %23
  %68 = phi i32 [ %66, %63 ], [ -110, %23 ], [ -110, %57 ]
  ret i32 %68
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xemaclite_mdio_write(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i16 noundef zeroext %3) #2 {
  %5 = getelementptr inbounds %struct.mii_bus, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i64 @ktime_get() #11
  %8 = add i64 %7, 20000000
  %9 = getelementptr inbounds %struct.net_local, ptr %6, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 2032
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #11, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !14
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %30, label %15

15:                                               ; preds = %18, %4
  %16 = tail call i64 @ktime_get() #11
  %17 = icmp sgt i64 %16, %8
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  tail call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #11
  %19 = load ptr, ptr %9, align 4
  %20 = getelementptr i8, ptr %19, i32 2032
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #11, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !14
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %30, label %15

24:                                               ; preds = %15
  %25 = load ptr, ptr %9, align 4
  %26 = getelementptr i8, ptr %25, i32 2032
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #11, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !14
  %28 = and i32 %27, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %24, %18, %4
  %31 = load ptr, ptr %9, align 4
  %32 = getelementptr i8, ptr %31, i32 2032
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #11, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !14
  %34 = shl i32 %1, 5
  %35 = or i32 %34, %2
  %36 = and i32 %35, -1025
  %37 = load ptr, ptr %9, align 4
  %38 = getelementptr i8, ptr %37, i32 2020
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !8
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %36) #11, !srcloc !9
  %39 = zext i16 %3 to i32
  %40 = load ptr, ptr %9, align 4
  %41 = getelementptr i8, ptr %40, i32 2024
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !8
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %39) #11, !srcloc !9
  %42 = or i32 %33, 1
  %43 = load ptr, ptr %9, align 4
  %44 = getelementptr i8, ptr %43, i32 2032
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !8
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %42) #11, !srcloc !9
  br label %45

45:                                               ; preds = %30, %24
  %46 = phi i32 [ 0, %30 ], [ -110, %24 ]
  ret i32 %46
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
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xemaclite_open(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 1408
  %3 = getelementptr i8, ptr %0, i32 1424
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 2040
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !8
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 -2147483648) #11, !srcloc !9
  %6 = load ptr, ptr %3, align 4
  %7 = getelementptr i8, ptr %6, i32 2044
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #11, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !14
  %9 = and i32 %8, -9
  %10 = load ptr, ptr %3, align 4
  %11 = getelementptr i8, ptr %10, i32 2044
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !8
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #11, !srcloc !9
  %12 = load ptr, ptr %3, align 4
  %13 = getelementptr i8, ptr %12, i32 6140
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #11, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !14
  %15 = and i32 %14, -9
  %16 = load ptr, ptr %3, align 4
  %17 = getelementptr i8, ptr %16, i32 6140
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !8
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #11, !srcloc !9
  %18 = getelementptr i8, ptr %0, i32 1440
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %58, label %21

21:                                               ; preds = %1
  %22 = load ptr, ptr %2, align 4
  %23 = tail call ptr @of_phy_connect(ptr noundef %22, ptr noundef nonnull %19, ptr noundef nonnull @xemaclite_adjust_link, i32 noundef 0, i32 noundef 2) #11
  %24 = getelementptr i8, ptr %0, i32 1436
  store ptr %23, ptr %24, align 4
  %25 = icmp eq ptr %23, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load ptr, ptr %2, align 4
  %28 = getelementptr inbounds %struct.net_device, ptr %27, i32 0, i32 111
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.15) #12
  br label %88

29:                                               ; preds = %21
  %30 = tail call i32 @phy_set_max_speed(ptr noundef nonnull %23, i32 noundef 100) #11
  %31 = load ptr, ptr %24, align 4
  %32 = getelementptr inbounds %struct.mdio_device, ptr %31, i32 0, i32 1
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr inbounds %struct.mdio_device, ptr %31, i32 0, i32 6
  %35 = load i32, ptr %34, align 8
  %36 = tail call i32 @mdiobus_write(ptr noundef %33, i32 noundef %35, i32 noundef 9, i16 noundef zeroext 0) #11
  %37 = load ptr, ptr %24, align 4
  %38 = getelementptr inbounds %struct.mdio_device, ptr %37, i32 0, i32 1
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr inbounds %struct.mdio_device, ptr %37, i32 0, i32 6
  %41 = load i32, ptr %40, align 8
  %42 = tail call i32 @mdiobus_write(ptr noundef %39, i32 noundef %41, i32 noundef 4, i16 noundef zeroext 481) #11
  %43 = load ptr, ptr %24, align 4
  %44 = getelementptr inbounds %struct.mdio_device, ptr %43, i32 0, i32 1
  %45 = load ptr, ptr %44, align 8
  %46 = getelementptr inbounds %struct.mdio_device, ptr %43, i32 0, i32 6
  %47 = load i32, ptr %46, align 8
  %48 = tail call i32 @mdiobus_read(ptr noundef %45, i32 noundef %47, i32 noundef 0) #11
  %49 = load ptr, ptr %24, align 4
  %50 = trunc i32 %48 to i16
  %51 = or i16 %50, 4608
  %52 = getelementptr inbounds %struct.mdio_device, ptr %49, i32 0, i32 1
  %53 = load ptr, ptr %52, align 8
  %54 = getelementptr inbounds %struct.mdio_device, ptr %49, i32 0, i32 6
  %55 = load i32, ptr %54, align 8
  %56 = tail call i32 @mdiobus_write(ptr noundef %53, i32 noundef %55, i32 noundef 0, i16 noundef zeroext %51) #11
  %57 = load ptr, ptr %24, align 4
  tail call void @phy_start(ptr noundef %57) #11
  br label %58

58:                                               ; preds = %29, %1
  %59 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 72
  %60 = load ptr, ptr %59, align 32
  tail call fastcc void @xemaclite_update_address(ptr noundef %2, ptr noundef %60)
  %61 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 59
  %62 = load i32, ptr %61, align 8
  %63 = tail call i32 @request_threaded_irq(i32 noundef %62, ptr noundef nonnull @xemaclite_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %0, ptr noundef %0) #11
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %74, label %65

65:                                               ; preds = %58
  %66 = load ptr, ptr %2, align 4
  %67 = getelementptr inbounds %struct.net_device, ptr %66, i32 0, i32 111
  %68 = load i32, ptr %61, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.16, i32 noundef %68) #12
  %69 = getelementptr i8, ptr %0, i32 1436
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %65
  tail call void @phy_disconnect(ptr noundef nonnull %70) #11
  br label %73

73:                                               ; preds = %72, %65
  store ptr null, ptr %69, align 4
  br label %88

74:                                               ; preds = %58
  %75 = load ptr, ptr %3, align 4
  %76 = getelementptr i8, ptr %75, i32 2044
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %76) #11, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !14
  %78 = or i32 %77, 8
  %79 = load ptr, ptr %3, align 4
  %80 = getelementptr i8, ptr %79, i32 2044
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !8
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %80, i32 %78) #11, !srcloc !9
  %81 = load ptr, ptr %3, align 4
  %82 = getelementptr i8, ptr %81, i32 6140
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !8
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %82, i32 8) #11, !srcloc !9
  %83 = load ptr, ptr %3, align 4
  %84 = getelementptr i8, ptr %83, i32 2040
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !8
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 -2147483648) #11, !srcloc !9
  %85 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  %86 = load ptr, ptr %85, align 64
  %87 = getelementptr inbounds %struct.netdev_queue, ptr %86, i32 0, i32 12
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %87) #11
  br label %88

88:                                               ; preds = %74, %73, %26
  %89 = phi i32 [ %63, %73 ], [ 0, %74 ], [ -19, %26 ]
  ret i32 %89
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xemaclite_close(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  %3 = load ptr, ptr %2, align 64
  %4 = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %4) #11
  %5 = getelementptr i8, ptr %0, i32 1424
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 2040
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !8
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 -2147483648) #11, !srcloc !9
  %8 = load ptr, ptr %5, align 4
  %9 = getelementptr i8, ptr %8, i32 2044
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #11, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !14
  %11 = and i32 %10, -9
  %12 = load ptr, ptr %5, align 4
  %13 = getelementptr i8, ptr %12, i32 2044
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !8
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #11, !srcloc !9
  %14 = load ptr, ptr %5, align 4
  %15 = getelementptr i8, ptr %14, i32 6140
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #11, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !14
  %17 = and i32 %16, -9
  %18 = load ptr, ptr %5, align 4
  %19 = getelementptr i8, ptr %18, i32 6140
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !8
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #11, !srcloc !9
  %20 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 59
  %21 = load i32, ptr %20, align 8
  %22 = tail call ptr @free_irq(i32 noundef %21, ptr noundef %0) #11
  %23 = getelementptr i8, ptr %0, i32 1436
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %1
  tail call void @phy_disconnect(ptr noundef nonnull %24) #11
  br label %27

27:                                               ; preds = %26, %1
  store ptr null, ptr %23, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xemaclite_send(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr i8, ptr %1, i32 1408
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %5 = load i32, ptr %4, align 8
  %6 = getelementptr i8, ptr %1, i32 1428
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #11
  %8 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %9 = load ptr, ptr %8, align 4
  %10 = tail call fastcc i32 @xemaclite_send_data(ptr noundef %3, ptr noundef %9, i32 noundef %5)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %25, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 87
  %14 = load ptr, ptr %13, align 64
  %15 = getelementptr inbounds %struct.netdev_queue, ptr %14, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %15) #11
  %16 = getelementptr i8, ptr %1, i32 1432
  store ptr %0, ptr %16, align 4
  %17 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.skb_shared_info, ptr %18, i32 0, i32 3
  %20 = load i8, ptr %19, align 1
  %21 = and i8 %20, 2
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %12
  tail call void @skb_tstamp_tx(ptr noundef %0, ptr noundef null) #11
  br label %24

24:                                               ; preds = %23, %12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #11
  br label %37

25:                                               ; preds = %2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #11
  %26 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.skb_shared_info, ptr %27, i32 0, i32 3
  %29 = load i8, ptr %28, align 1
  %30 = and i8 %29, 2
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %25
  tail call void @skb_tstamp_tx(ptr noundef %0, ptr noundef null) #11
  br label %33

33:                                               ; preds = %32, %25
  %34 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %35, %5
  store i32 %36, ptr %34, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %0, i32 noundef 0) #11
  br label %37

37:                                               ; preds = %33, %24
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xemaclite_set_mac_address(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = getelementptr i8, ptr %0, i32 1408
  %9 = getelementptr inbounds %struct.sockaddr, ptr %1, i32 0, i32 1
  tail call void @dev_addr_mod(ptr noundef %0, i32 noundef 0, ptr noundef %9, i32 noundef 6) #11
  %10 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 72
  %11 = load ptr, ptr %10, align 32
  tail call fastcc void @xemaclite_update_address(ptr noundef %8, ptr noundef %11)
  br label %12

12:                                               ; preds = %7, %2
  %13 = phi i32 [ 0, %7 ], [ -16, %2 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xemaclite_ioctl(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %7
  %13 = add i32 %2, -35143
  %14 = icmp ult i32 %13, 3
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = tail call i32 @phy_mii_ioctl(ptr noundef nonnull %5, ptr noundef %1, i32 noundef %2) #11
  br label %17

17:                                               ; preds = %15, %12, %7, %3
  %18 = phi i32 [ %16, %15 ], [ -22, %7 ], [ -22, %3 ], [ -95, %12 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xemaclite_tx_timeout(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 1408
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 111
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.19, i32 noundef 60000) #12
  %6 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 36, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, 1
  store i32 %8, ptr %6, align 4
  %9 = getelementptr i8, ptr %0, i32 1428
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #11
  %11 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  %12 = load ptr, ptr %11, align 64
  %13 = getelementptr inbounds %struct.netdev_queue, ptr %12, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %13) #11
  %14 = getelementptr i8, ptr %0, i32 1424
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 2040
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !8
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 -2147483648) #11, !srcloc !9
  %17 = load ptr, ptr %14, align 4
  %18 = getelementptr i8, ptr %17, i32 2044
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #11, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !14
  %20 = and i32 %19, -9
  %21 = load ptr, ptr %14, align 4
  %22 = getelementptr i8, ptr %21, i32 2044
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !8
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #11, !srcloc !9
  %23 = load ptr, ptr %14, align 4
  %24 = getelementptr i8, ptr %23, i32 6140
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #11, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !14
  %26 = and i32 %25, -9
  %27 = load ptr, ptr %14, align 4
  %28 = getelementptr i8, ptr %27, i32 6140
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !8
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #11, !srcloc !9
  %29 = load ptr, ptr %14, align 4
  %30 = getelementptr i8, ptr %29, i32 2044
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #11, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !14
  %32 = or i32 %31, 8
  %33 = load ptr, ptr %14, align 4
  %34 = getelementptr i8, ptr %33, i32 2044
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !8
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %32) #11, !srcloc !9
  %35 = load ptr, ptr %14, align 4
  %36 = getelementptr i8, ptr %35, i32 6140
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !8
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 8) #11, !srcloc !9
  %37 = load ptr, ptr %14, align 4
  %38 = getelementptr i8, ptr %37, i32 2040
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !8
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 -2147483648) #11, !srcloc !9
  %39 = getelementptr i8, ptr %0, i32 1432
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %2
  tail call void @consume_skb(ptr noundef nonnull %40) #11
  store ptr null, ptr %39, align 4
  %43 = load i32, ptr %6, align 4
  %44 = add i32 %43, 1
  store i32 %44, ptr %6, align 4
  br label %45

45:                                               ; preds = %42, %2
  %46 = load ptr, ptr %11, align 64
  %47 = load volatile i32, ptr @jiffies, align 64
  %48 = getelementptr inbounds %struct.netdev_queue, ptr %46, i32 0, i32 11
  %49 = load volatile i32, ptr %48, align 8
  %50 = icmp eq i32 %49, %47
  br i1 %50, label %53, label %51

51:                                               ; preds = %45
  store volatile i32 %47, ptr %48, align 8
  %52 = load ptr, ptr %11, align 64
  br label %53

53:                                               ; preds = %51, %45
  %54 = phi ptr [ %46, %45 ], [ %52, %51 ]
  tail call void @netif_tx_wake_queue(ptr noundef %54) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_connect(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xemaclite_adjust_link(ptr nocapture noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 1436
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.phy_device, ptr %3, i32 0, i32 8
  %5 = load i32, ptr %4, align 8
  %6 = getelementptr inbounds %struct.phy_device, ptr %3, i32 0, i32 9
  %7 = load i32, ptr %6, align 4
  %8 = shl i32 %7, 1
  %9 = or i32 %8, %5
  %10 = getelementptr inbounds %struct.phy_device, ptr %3, i32 0, i32 4
  %11 = load i16, ptr %10, align 8
  %12 = lshr i16 %11, 13
  %13 = and i16 %12, 1
  %14 = zext i16 %13 to i32
  %15 = or i32 %9, %14
  %16 = getelementptr i8, ptr %0, i32 1448
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, %15
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  store i32 %15, ptr %16, align 4
  tail call void @phy_print_status(ptr noundef %3) #11
  br label %20

20:                                               ; preds = %19, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_set_max_speed(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xemaclite_interrupt(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr i8, ptr %1, i32 1408
  %4 = getelementptr i8, ptr %1, i32 1424
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 6140
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #11, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !14
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = getelementptr i8, ptr %5, i32 8188
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #11, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !14
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %146, label %15

15:                                               ; preds = %10, %2
  %16 = tail call ptr @__netdev_alloc_skb(ptr noundef %1, i32 noundef 1522, i32 noundef 2592) #11
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 6
  %20 = load i32, ptr %19, align 8
  %21 = add i32 %20, 1
  store i32 %21, ptr %19, align 8
  %22 = load ptr, ptr %3, align 4
  %23 = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 111
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.17) #12
  br label %146

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 17
  %26 = load ptr, ptr %25, align 4
  %27 = ptrtoint ptr %26 to i32
  %28 = sub i32 0, %27
  %29 = and i32 %28, 3
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 14
  %33 = load ptr, ptr %32, align 8
  br label %39

34:                                               ; preds = %24
  %35 = getelementptr i8, ptr %26, i32 %29
  %36 = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 14
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr i8, ptr %37, i32 %29
  br label %39

39:                                               ; preds = %34, %31
  %40 = phi ptr [ %38, %34 ], [ %33, %31 ]
  %41 = phi ptr [ %35, %34 ], [ %26, %31 ]
  %42 = getelementptr i8, ptr %41, i32 2
  store ptr %42, ptr %25, align 4
  %43 = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 14
  %44 = getelementptr i8, ptr %40, i32 2
  store ptr %44, ptr %43, align 8
  %45 = load ptr, ptr %4, align 4
  %46 = getelementptr i8, ptr %1, i32 1420
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr i8, ptr %45, i32 %47
  %49 = getelementptr i8, ptr %48, i32 6140
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #11, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !14
  %51 = and i32 %50, 1
  %52 = icmp eq i32 %51, 0
  %53 = getelementptr i8, ptr %1, i32 1413
  %54 = load i8, ptr %53, align 1, !range !15
  %55 = icmp eq i8 %54, 0
  br i1 %52, label %60, label %56

56:                                               ; preds = %39
  br i1 %55, label %69, label %57

57:                                               ; preds = %56
  %58 = load i32, ptr %46, align 4
  %59 = xor i32 %58, 2048
  store i32 %59, ptr %46, align 4
  br label %69

60:                                               ; preds = %39
  br i1 %55, label %130, label %61

61:                                               ; preds = %60
  %62 = ptrtoint ptr %48 to i32
  %63 = xor i32 %62, 2048
  %64 = inttoptr i32 %63 to ptr
  %65 = getelementptr i8, ptr %64, i32 6140
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #11, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !14
  %67 = and i32 %66, 1
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %130, label %69

69:                                               ; preds = %61, %57, %56
  %70 = phi ptr [ %48, %57 ], [ %48, %56 ], [ %64, %61 ]
  %71 = getelementptr i8, ptr %70, i32 4108
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %71) #11, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !14
  %73 = tail call i32 @llvm.bswap.i32(i32 %72) #11
  %74 = lshr i32 %73, 16
  %75 = icmp ugt i32 %73, 98369535
  %76 = trunc i32 %74 to i16
  br i1 %75, label %77, label %87

77:                                               ; preds = %69
  switch i16 %76, label %86 [
    i16 2048, label %78
    i16 2054, label %91
  ]

78:                                               ; preds = %77
  %79 = getelementptr i8, ptr %70, i32 4112
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %79) #11, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !14
  %81 = tail call i32 @llvm.bswap.i32(i32 %80) #11
  %82 = lshr i32 %81, 16
  %83 = tail call i32 @llvm.umin.i32(i32 %82, i32 1500) #11
  %84 = trunc i32 %83 to i16
  %85 = add nuw nsw i16 %84, 18
  br label %91

86:                                               ; preds = %77
  br label %91

87:                                               ; preds = %69
  %88 = add i16 %76, 18
  %89 = icmp ugt i16 %88, 1518
  br i1 %89, label %90, label %95, !prof !16

90:                                               ; preds = %87
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 447, i32 noundef 9, ptr noundef null) #11
  br label %91

91:                                               ; preds = %90, %86, %78, %77
  %92 = phi i16 [ 46, %77 ], [ 1518, %86 ], [ %85, %78 ], [ 1518, %90 ]
  %93 = getelementptr i8, ptr %70, i32 4096
  %94 = zext i16 %92 to i32
  br label %99

95:                                               ; preds = %87
  %96 = getelementptr i8, ptr %70, i32 4096
  %97 = zext i16 %88 to i32
  %98 = icmp ugt i16 %88, 3
  br i1 %98, label %99, label %116

99:                                               ; preds = %95, %91
  %100 = phi i32 [ %94, %91 ], [ %97, %95 ]
  %101 = phi ptr [ %93, %91 ], [ %96, %95 ]
  %102 = phi i16 [ %92, %91 ], [ %88, %95 ]
  br label %103

103:                                              ; preds = %103, %99
  %104 = phi ptr [ %107, %103 ], [ %101, %99 ]
  %105 = phi ptr [ %113, %103 ], [ %42, %99 ]
  %106 = phi i32 [ %114, %103 ], [ %100, %99 ]
  %107 = getelementptr i32, ptr %104, i32 1
  %108 = load i32, ptr %104, align 4
  %109 = lshr i32 %108, 16
  %110 = trunc i32 %109 to i16
  %111 = trunc i32 %108 to i16
  %112 = getelementptr i16, ptr %105, i32 1
  store i16 %111, ptr %105, align 2
  %113 = getelementptr i16, ptr %105, i32 2
  store i16 %110, ptr %112, align 2
  %114 = add i32 %106, -4
  %115 = icmp ugt i32 %114, 3
  br i1 %115, label %103, label %116

116:                                              ; preds = %103, %95
  %117 = phi i16 [ %88, %95 ], [ %102, %103 ]
  %118 = phi i32 [ %97, %95 ], [ %114, %103 ]
  %119 = phi ptr [ %42, %95 ], [ %113, %103 ]
  %120 = phi ptr [ %96, %95 ], [ %107, %103 ]
  %121 = icmp eq i32 %118, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %116
  %123 = load i32, ptr %120, align 4
  %124 = trunc i32 %123 to i8
  store i8 %124, ptr %119, align 1
  br label %125

125:                                              ; preds = %122, %116
  %126 = getelementptr i8, ptr %70, i32 6140
  %127 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %126) #11, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !14
  %128 = and i32 %127, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !8
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %126, i32 %128) #11, !srcloc !9
  %129 = icmp eq i16 %117, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %125, %61, %60
  %131 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 4
  %132 = load i32, ptr %131, align 8
  %133 = add i32 %132, 1
  store i32 %133, ptr %131, align 8
  tail call void @__dev_kfree_skb_irq(ptr noundef nonnull %16, i32 noundef 1) #11
  br label %146

134:                                              ; preds = %125
  %135 = zext i16 %117 to i32
  %136 = tail call ptr @skb_put(ptr noundef nonnull %16, i32 noundef %135) #11
  %137 = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %16, ptr noundef %1) #11
  %138 = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 13, i32 0, i32 16
  store i16 %137, ptr %138, align 8
  %139 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36
  %140 = load i32, ptr %139, align 8
  %141 = add i32 %140, 1
  store i32 %141, ptr %139, align 8
  %142 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 2
  %143 = load i32, ptr %142, align 8
  %144 = add i32 %143, %135
  store i32 %144, ptr %142, align 8
  %145 = tail call i32 @netif_rx(ptr noundef nonnull %16) #11
  br label %146

146:                                              ; preds = %134, %130, %18, %10
  %147 = getelementptr i8, ptr %5, i32 2044
  %148 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %147) #11, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !14
  %149 = and i32 %148, -2147483647
  %150 = icmp eq i32 %149, -2147483648
  br i1 %150, label %151, label %153

151:                                              ; preds = %146
  %152 = and i32 %148, 2147483647
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !8
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %147, i32 %152) #11, !srcloc !9
  br label %153

153:                                              ; preds = %151, %146
  %154 = getelementptr i8, ptr %5, i32 4092
  %155 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %154) #11, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !14
  %156 = and i32 %155, -2147483647
  %157 = icmp eq i32 %156, -2147483648
  br i1 %157, label %158, label %160

158:                                              ; preds = %153
  %159 = and i32 %155, 2147483647
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !8
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %154, i32 %159) #11, !srcloc !9
  br label %161

160:                                              ; preds = %153
  br i1 %150, label %161, label %192

161:                                              ; preds = %160, %158
  %162 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 1
  %163 = load i32, ptr %162, align 4
  %164 = add i32 %163, 1
  store i32 %164, ptr %162, align 4
  %165 = getelementptr i8, ptr %1, i32 1432
  %166 = load ptr, ptr %165, align 4
  %167 = icmp eq ptr %166, null
  br i1 %167, label %192, label %168

168:                                              ; preds = %161
  %169 = getelementptr inbounds %struct.sk_buff, ptr %166, i32 0, i32 17
  %170 = load ptr, ptr %169, align 4
  %171 = getelementptr inbounds %struct.sk_buff, ptr %166, i32 0, i32 5
  %172 = load i32, ptr %171, align 8
  %173 = tail call fastcc i32 @xemaclite_send_data(ptr noundef %3, ptr noundef %170, i32 noundef %172) #11
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %192

175:                                              ; preds = %168
  %176 = load ptr, ptr %165, align 4
  %177 = getelementptr inbounds %struct.sk_buff, ptr %176, i32 0, i32 5
  %178 = load i32, ptr %177, align 8
  %179 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 3
  %180 = load i32, ptr %179, align 4
  %181 = add i32 %180, %178
  store i32 %181, ptr %179, align 4
  tail call void @__dev_kfree_skb_irq(ptr noundef %176, i32 noundef 0) #11
  store ptr null, ptr %165, align 4
  %182 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 87
  %183 = load ptr, ptr %182, align 64
  %184 = load volatile i32, ptr @jiffies, align 64
  %185 = getelementptr inbounds %struct.netdev_queue, ptr %183, i32 0, i32 11
  %186 = load volatile i32, ptr %185, align 8
  %187 = icmp eq i32 %186, %184
  br i1 %187, label %190, label %188

188:                                              ; preds = %175
  store volatile i32 %184, ptr %185, align 8
  %189 = load ptr, ptr %182, align 64
  br label %190

190:                                              ; preds = %188, %175
  %191 = phi ptr [ %183, %175 ], [ %189, %188 ]
  tail call void @netif_tx_wake_queue(ptr noundef %191) #11
  br label %192

192:                                              ; preds = %190, %168, %161, %160
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_print_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @xemaclite_send_data(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #2 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.net_local, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.net_local, ptr %0, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr i8, ptr %6, i32 %8
  %10 = tail call i32 @llvm.umin.i32(i32 %2, i32 1514)
  %11 = getelementptr i8, ptr %9, i32 2044
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #11, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !14
  %13 = and i32 %12, -2147483647
  %14 = icmp eq i32 %13, 0
  %15 = getelementptr inbounds %struct.net_local, ptr %0, i32 0, i32 1
  %16 = load i8, ptr %15, align 4, !range !15
  %17 = icmp eq i8 %16, 0
  br i1 %14, label %18, label %22

18:                                               ; preds = %3
  br i1 %17, label %31, label %19

19:                                               ; preds = %18
  %20 = load i32, ptr %7, align 4
  %21 = xor i32 %20, 2048
  store i32 %21, ptr %7, align 4
  br label %31

22:                                               ; preds = %3
  br i1 %17, label %70, label %23

23:                                               ; preds = %22
  %24 = ptrtoint ptr %9 to i32
  %25 = xor i32 %24, 2048
  %26 = inttoptr i32 %25 to ptr
  %27 = getelementptr i8, ptr %26, i32 2044
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #11, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !14
  %29 = and i32 %28, -2147483647
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %70

31:                                               ; preds = %23, %19, %18
  %32 = phi ptr [ %9, %19 ], [ %9, %18 ], [ %26, %23 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  %33 = icmp ugt i32 %10, 3
  br i1 %33, label %34, label %48

34:                                               ; preds = %31
  %35 = getelementptr inbounds i16, ptr %4, i32 1
  br label %36

36:                                               ; preds = %36, %34
  %37 = phi ptr [ %32, %34 ], [ %45, %36 ]
  %38 = phi ptr [ %1, %34 ], [ %42, %36 ]
  %39 = phi i32 [ %10, %34 ], [ %46, %36 ]
  %40 = getelementptr i16, ptr %38, i32 1
  %41 = load i16, ptr %38, align 2
  store i16 %41, ptr %4, align 4
  %42 = getelementptr i16, ptr %38, i32 2
  %43 = load i16, ptr %40, align 2
  store i16 %43, ptr %35, align 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  %44 = load i32, ptr %4, align 4
  %45 = getelementptr i32, ptr %37, i32 1
  store i32 %44, ptr %37, align 4
  %46 = add i32 %39, -4
  %47 = icmp ugt i32 %46, 3
  br i1 %47, label %36, label %48

48:                                               ; preds = %36, %31
  %49 = phi i32 [ %10, %31 ], [ %46, %36 ]
  %50 = phi ptr [ %1, %31 ], [ %42, %36 ]
  %51 = phi ptr [ %32, %31 ], [ %45, %36 ]
  %52 = icmp eq i32 %49, 0
  br i1 %52, label %65, label %53

53:                                               ; preds = %48
  store i32 0, ptr %4, align 4
  br label %54

54:                                               ; preds = %54, %53
  %55 = phi ptr [ %4, %53 ], [ %60, %54 ]
  %56 = phi ptr [ %50, %53 ], [ %58, %54 ]
  %57 = phi i32 [ %49, %53 ], [ %61, %54 ]
  %58 = getelementptr i8, ptr %56, i32 1
  %59 = load i8, ptr %56, align 1
  %60 = getelementptr i8, ptr %55, i32 1
  store i8 %59, ptr %55, align 1
  %61 = add i32 %57, -1
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %54

63:                                               ; preds = %54
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !12
  tail call void @arm_heavy_mb() #11
  %64 = load i32, ptr %4, align 4
  store i32 %64, ptr %51, align 4
  br label %65

65:                                               ; preds = %63, %48
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  %66 = getelementptr i8, ptr %32, i32 2036
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !8
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %10) #11, !srcloc !9
  %67 = getelementptr i8, ptr %32, i32 2044
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %67) #11, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !14
  %69 = or i32 %68, -2147483647
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !8
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 %69) #11, !srcloc !9
  br label %70

70:                                               ; preds = %65, %23, %22
  %71 = phi i32 [ 0, %65 ], [ -1, %23 ], [ -1, %22 ]
  ret i32 %71
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_tstamp_tx(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_mii_ioctl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xemaclite_ethtools_get_drvinfo(ptr nocapture noundef readnone %0, ptr noundef %1) #9 {
  %3 = getelementptr inbounds %struct.ethtool_drvinfo, ptr %1, i32 0, i32 1
  %4 = tail call i32 @strlcpy(ptr noundef %3, ptr noundef nonnull @.str, i32 noundef 32) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_get_link_ksettings(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_set_link_ksettings(ptr noundef, ptr noundef) #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }

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
!8 = !{i64 2152990311}
!9 = !{i64 5449218}
!10 = !{!"auto-init"}
!11 = !{i64 2155271912}
!12 = !{i64 2155272033}
!13 = !{i64 5449636}
!14 = !{i64 2152989089}
!15 = !{i8 0, i8 2}
!16 = !{!"branch_weights", i32 1, i32 2000}
