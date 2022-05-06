; ModuleID = '/llk/IR/drivers/net/ethernet/hisilicon/hix5hd2_gmac.c_pt.bc'
source_filename = "../drivers/net/ethernet/hisilicon/hix5hd2_gmac.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32 }
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
%struct.hix5hd2_priv = type { [4 x %struct.hix5hd2_desc_sw], %struct.hix5hd2_sg_desc_ring, ptr, ptr, [1024 x ptr], [1024 x ptr], ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [3 x i32], ptr, %struct.napi_struct, %struct.work_struct }
%struct.hix5hd2_desc_sw = type { ptr, i32, i32, i32 }
%struct.hix5hd2_sg_desc_ring = type { ptr, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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
%struct.sg_desc = type { i32, i32, i32, i32, [18 x %struct.frags_info] }
%struct.frags_info = type { i32, i32 }
%struct.hix5hd2_desc = type { i32, i32, [24 x i8] }
%struct.netdev_queue = type { ptr, %struct.netdevice_tracker, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, [4 x i8], %struct.spinlock, i32, i32, i32, [48 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [52 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [24 x i8] }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.page = type { i32, %union.anon.1, %union.anon.89, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.89 = type { %struct.atomic_t }

@__initcall__kmod_hix5hd2_gmac__330_1326_hix5hd2_dev_driver_init6 = internal global ptr @hix5hd2_dev_driver_init, section ".initcall6.init", align 4
@hix5hd2_dev_driver = internal global %struct.platform_driver { ptr @hix5hd2_dev_probe, ptr @hix5hd2_dev_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @hix5hd2_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_hix5hd2_dev_driver_exit = internal global ptr @hix5hd2_dev_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description331 = internal constant [63 x i8] c"hix5hd2_gmac.description=HISILICON Gigabit Ethernet MAC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file332 = internal constant [62 x i8] c"hix5hd2_gmac.file=drivers/net/ethernet/hisilicon/hix5hd2_gmac\00", section ".modinfo", align 1
@__UNIQUE_ID_license333 = internal constant [28 x i8] c"hix5hd2_gmac.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias334 = internal constant [38 x i8] c"hix5hd2_gmac.alias=platform:hisi-gmac\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [10 x i8] c"hisi-gmac\00", align 1
@hix5hd2_of_match = internal constant [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hisi-gmac-v1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hisi-gmac-v2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hix5hd2-gmac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hi3798cv200-gmac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hi3516a-gmac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"mac_core\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"failed to get mac core clk\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"failed to enable mac core clk %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"mac_ifc\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"failed to enable mac ifc clk %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"phy\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"hisilicon,phy-reset-delays-us\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"hix5hd2_mii_bus\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"%s-mii\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"not find phy-mode\0A\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"phy-handle\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"not find phy-handle\0A\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"No irq resource\0A\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"devm_request_irq failed\0A\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"using random MAC address %pM\0A\00", align 1
@hix5hd2_netdev_ops = internal constant %struct.net_device_ops { ptr null, ptr null, ptr @hix5hd2_net_open, ptr @hix5hd2_net_close, ptr @hix5hd2_net_xmit, ptr null, ptr null, ptr null, ptr null, ptr @hix5hd2_net_set_mac_address, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hix5hd2_net_timeout, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@hix5hd2_ethtools_ops = internal constant %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @phy_ethtool_get_link_ksettings, ptr @phy_ethtool_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.16 = private unnamed_addr constant [24 x i8] c"register_netdev failed!\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"SMI bus read not valid\0A\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"not supported mode\0A\00", align 1
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"include/linux/dma-mapping.h\00", align 1
@.str.20 = private unnamed_addr constant [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.21 = private unnamed_addr constant [21 x i8] c"inconsistent tx_skb\0A\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"inconsistent rx_skb\0A\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"rcv len err, len = %d\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_alias334, ptr @__UNIQUE_ID_description331, ptr @__UNIQUE_ID_file332, ptr @__UNIQUE_ID_license333, ptr @__exitcall_hix5hd2_dev_driver_exit, ptr @__initcall__kmod_hix5hd2_gmac__330_1326_hix5hd2_dev_driver_init6, ptr @hix5hd2_dev_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @hix5hd2_dev_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @hix5hd2_dev_driver, ptr noundef null) #9
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @hix5hd2_dev_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @hix5hd2_dev_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hix5hd2_dev_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = tail call ptr @alloc_etherdev_mqs(i32 noundef 8568, i32 noundef 1, i32 noundef 1) #9
  %6 = icmp eq ptr %5, null
  br i1 %6, label %202, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %5, ptr %8, align 8
  %9 = getelementptr i8, ptr %5, i32 1408
  %10 = getelementptr i8, ptr %5, i32 9680
  store ptr %2, ptr %10, align 8
  %11 = getelementptr i8, ptr %5, i32 9684
  store ptr %5, ptr %11, align 4
  %12 = tail call ptr @of_match_device(ptr noundef nonnull @hix5hd2_of_match, ptr noundef %2) #9
  %13 = icmp eq ptr %12, null
  br i1 %13, label %200, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.of_device_id, ptr %12, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = ptrtoint ptr %16 to i32
  %18 = getelementptr i8, ptr %5, i32 9696
  store i32 %17, ptr %18, align 8
  %19 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #9
  %20 = getelementptr i8, ptr %5, i32 1480
  store ptr %19, ptr %20, align 8
  %21 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = ptrtoint ptr %19 to i32
  br label %200

24:                                               ; preds = %14
  %25 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 1) #9
  %26 = getelementptr i8, ptr %5, i32 1484
  store ptr %25, ptr %26, align 4
  %27 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = ptrtoint ptr %25 to i32
  br label %200

30:                                               ; preds = %24
  %31 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.1) #9
  %32 = getelementptr i8, ptr %5, i32 9708
  store ptr %31, ptr %32, align 4
  %33 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef nonnull %5, ptr noundef nonnull @.str.2) #10
  br label %200

35:                                               ; preds = %30
  %36 = tail call i32 @clk_prepare(ptr noundef %31) #9
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = tail call i32 @clk_enable(ptr noundef %31) #9
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %38
  tail call void @clk_unprepare(ptr noundef %31) #9
  br label %42

42:                                               ; preds = %41, %35
  %43 = phi i32 [ %36, %35 ], [ %39, %41 ]
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef nonnull %5, ptr noundef nonnull @.str.3, i32 noundef %43) #10
  br label %200

46:                                               ; preds = %42, %38
  %47 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.4) #9
  %48 = getelementptr i8, ptr %5, i32 9712
  %49 = icmp ugt ptr %47, inttoptr (i32 -4096 to ptr)
  %50 = select i1 %49, ptr null, ptr %47
  store ptr %50, ptr %48, align 8
  %51 = tail call i32 @clk_prepare(ptr noundef %50) #9
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %46
  %54 = tail call i32 @clk_enable(ptr noundef %50) #9
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %53
  tail call void @clk_unprepare(ptr noundef %50) #9
  br label %57

57:                                               ; preds = %56, %46
  %58 = phi i32 [ %51, %46 ], [ %54, %56 ]
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef nonnull %5, ptr noundef nonnull @.str.5, i32 noundef %58) #10
  br label %197

61:                                               ; preds = %57, %53
  %62 = tail call ptr @__devm_reset_control_get(ptr noundef %2, ptr noundef nonnull @.str.1, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #9
  %63 = getelementptr i8, ptr %5, i32 9716
  store ptr %62, ptr %63, align 4
  %64 = icmp ugt ptr %62, inttoptr (i32 -4096 to ptr)
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  store ptr null, ptr %63, align 4
  br label %72

66:                                               ; preds = %61
  %67 = icmp eq ptr %62, null
  br i1 %67, label %72, label %68

68:                                               ; preds = %66
  %69 = tail call i32 @reset_control_assert(ptr noundef nonnull %62) #9
  %70 = load ptr, ptr %63, align 4
  %71 = tail call i32 @reset_control_deassert(ptr noundef %70) #9
  br label %72

72:                                               ; preds = %68, %66, %65
  %73 = tail call ptr @__devm_reset_control_get(ptr noundef %2, ptr noundef nonnull @.str.4, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #9
  %74 = getelementptr i8, ptr %5, i32 9720
  %75 = icmp ugt ptr %73, inttoptr (i32 -4096 to ptr)
  %76 = select i1 %75, ptr null, ptr %73
  store ptr %76, ptr %74, align 8
  %77 = tail call ptr @__devm_reset_control_get(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #9
  %78 = getelementptr i8, ptr %5, i32 9724
  store ptr %77, ptr %78, align 4
  %79 = icmp ugt ptr %77, inttoptr (i32 -4096 to ptr)
  br i1 %79, label %80, label %81

80:                                               ; preds = %72
  store ptr null, ptr %78, align 4
  br label %87

81:                                               ; preds = %72
  %82 = getelementptr i8, ptr %5, i32 9728
  %83 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %4, ptr noundef nonnull @.str.7, ptr noundef %82, i32 noundef 3, i32 noundef 0) #9
  %84 = tail call i32 @llvm.smin.i32(i32 %83, i32 0) #9
  %85 = icmp sgt i32 %83, -1
  br i1 %85, label %86, label %194

86:                                               ; preds = %81
  tail call fastcc void @hix5hd2_phy_reset(ptr noundef %9)
  br label %87

87:                                               ; preds = %86, %80
  %88 = tail call ptr @mdiobus_alloc_size(i32 noundef 0) #9
  %89 = icmp eq ptr %88, null
  br i1 %89, label %194, label %90

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.mii_bus, ptr %88, i32 0, i32 3
  store ptr %9, ptr %91, align 8
  %92 = getelementptr inbounds %struct.mii_bus, ptr %88, i32 0, i32 1
  store ptr @.str.8, ptr %92, align 4
  %93 = getelementptr inbounds %struct.mii_bus, ptr %88, i32 0, i32 4
  store ptr @hix5hd2_mdio_read, ptr %93, align 4
  %94 = getelementptr inbounds %struct.mii_bus, ptr %88, i32 0, i32 5
  store ptr @hix5hd2_mdio_write, ptr %94, align 8
  %95 = getelementptr inbounds %struct.mii_bus, ptr %88, i32 0, i32 9
  store ptr %2, ptr %95, align 4
  %96 = getelementptr inbounds %struct.mii_bus, ptr %88, i32 0, i32 2
  %97 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %98 = load ptr, ptr %97, align 4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %102

100:                                              ; preds = %90
  %101 = load ptr, ptr %2, align 4
  br label %102

102:                                              ; preds = %100, %90
  %103 = phi ptr [ %101, %100 ], [ %98, %90 ]
  %104 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %96, i32 noundef 61, ptr noundef nonnull @.str.9, ptr noundef %103)
  %105 = getelementptr i8, ptr %5, i32 9740
  store ptr %88, ptr %105, align 4
  %106 = tail call i32 @of_mdiobus_register(ptr noundef nonnull %88, ptr noundef %4) #9
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %192

108:                                              ; preds = %102
  %109 = getelementptr i8, ptr %5, i32 9692
  %110 = tail call i32 @of_get_phy_mode(ptr noundef %4, ptr noundef %109) #9
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %108
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef nonnull %5, ptr noundef nonnull @.str.10) #10
  br label %190

113:                                              ; preds = %108
  %114 = tail call fastcc ptr @of_parse_phandle(ptr noundef %4)
  %115 = getelementptr i8, ptr %5, i32 9688
  store ptr %114, ptr %115, align 8
  %116 = icmp eq ptr %114, null
  br i1 %116, label %117, label %118

117:                                              ; preds = %113
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef nonnull %5, ptr noundef nonnull @.str.12) #10
  br label %190

118:                                              ; preds = %113
  %119 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #9
  %120 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 59
  store i32 %119, ptr %120, align 8
  %121 = icmp slt i32 %119, 1
  br i1 %121, label %122, label %123

122:                                              ; preds = %118
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef nonnull %5, ptr noundef nonnull @.str.13) #10
  br label %187

123:                                              ; preds = %118
  %124 = load ptr, ptr %0, align 8
  %125 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %119, ptr noundef nonnull @hix5hd2_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %124, ptr noundef nonnull %5) #9
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %123
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef nonnull %5, ptr noundef nonnull @.str.14) #10
  br label %187

128:                                              ; preds = %123
  %129 = tail call i32 @of_get_ethdev_address(ptr noundef %4, ptr noundef nonnull %5) #9
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %134, label %131

131:                                              ; preds = %128
  tail call fastcc void @eth_hw_addr_random(ptr noundef nonnull %5)
  %132 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 72
  %133 = load ptr, ptr %132, align 32
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef nonnull %5, ptr noundef nonnull @.str.15, ptr noundef %133) #10
  br label %134

134:                                              ; preds = %131, %128
  %135 = getelementptr i8, ptr %5, i32 9960
  store i32 -32, ptr %135, align 8
  %136 = getelementptr i8, ptr %5, i32 9964
  store volatile ptr %136, ptr %136, align 4
  %137 = getelementptr i8, ptr %5, i32 9968
  store ptr %136, ptr %137, align 4
  %138 = getelementptr i8, ptr %5, i32 9972
  store ptr @hix5hd2_tx_timeout_task, ptr %138, align 4
  %139 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 96
  store i32 600, ptr %139, align 8
  %140 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 15
  %141 = load i64, ptr %140, align 16
  %142 = or i64 %141, 4096
  store i64 %142, ptr %140, align 16
  %143 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 16
  store ptr @hix5hd2_netdev_ops, ptr %143, align 8
  %144 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 42
  store ptr @hix5hd2_ethtools_ops, ptr %144, align 8
  %145 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 111, i32 1
  store ptr %2, ptr %145, align 4
  %146 = load i32, ptr %18, align 8
  %147 = and i32 %146, 1
  %148 = icmp eq i32 %147, 0
  %149 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 24
  %150 = load i64, ptr %149, align 8
  br i1 %148, label %153, label %151

151:                                              ; preds = %134
  %152 = or i64 %150, 1
  store i64 %152, ptr %149, align 8
  br label %153

153:                                              ; preds = %151, %134
  %154 = phi i64 [ %152, %151 ], [ %150, %134 ]
  %155 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 23
  %156 = load i64, ptr %155, align 16
  %157 = or i64 %154, %156
  %158 = or i64 %157, 32
  store i64 %158, ptr %155, align 16
  %159 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 26
  %160 = load i64, ptr %159, align 8
  %161 = or i64 %160, %158
  store i64 %161, ptr %159, align 8
  %162 = tail call fastcc i32 @hix5hd2_init_hw_desc_queue(ptr noundef %9)
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %187

164:                                              ; preds = %153
  %165 = getelementptr i8, ptr %5, i32 9744
  tail call void @netif_napi_add(ptr noundef nonnull %5, ptr noundef %165, ptr noundef nonnull @hix5hd2_poll, i32 noundef 64) #9
  %166 = load i32, ptr %18, align 8
  %167 = and i32 %166, 1
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %172, label %169

169:                                              ; preds = %164
  %170 = tail call fastcc i32 @hix5hd2_init_sg_desc_queue(ptr noundef %9)
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %180

172:                                              ; preds = %169, %164
  %173 = load ptr, ptr %11, align 4
  %174 = tail call i32 @register_netdev(ptr noundef %173) #9
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %177, label %176

176:                                              ; preds = %172
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef nonnull %5, ptr noundef nonnull @.str.16) #10
  br label %180

177:                                              ; preds = %172
  %178 = load ptr, ptr %48, align 8
  tail call void @clk_disable(ptr noundef %178) #9
  tail call void @clk_unprepare(ptr noundef %178) #9
  %179 = load ptr, ptr %32, align 4
  tail call void @clk_disable(ptr noundef %179) #9
  tail call void @clk_unprepare(ptr noundef %179) #9
  br label %202

180:                                              ; preds = %176, %169
  %181 = phi i32 [ %170, %169 ], [ %174, %176 ]
  %182 = load i32, ptr %18, align 8
  %183 = and i32 %182, 1
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %186, label %185

185:                                              ; preds = %180
  tail call fastcc void @hix5hd2_destroy_sg_desc_queue(ptr noundef %9)
  br label %186

186:                                              ; preds = %185, %180
  tail call void @__netif_napi_del(ptr noundef %165) #9
  tail call void @synchronize_net() #9
  tail call fastcc void @hix5hd2_destroy_hw_desc_queue(ptr noundef %9)
  br label %187

187:                                              ; preds = %186, %153, %127, %122
  %188 = phi i32 [ -22, %122 ], [ %125, %127 ], [ %162, %153 ], [ %181, %186 ]
  %189 = load ptr, ptr %115, align 8
  tail call void @of_node_put(ptr noundef %189) #9
  br label %190

190:                                              ; preds = %187, %117, %112
  %191 = phi i32 [ %110, %112 ], [ %188, %187 ], [ -22, %117 ]
  tail call void @mdiobus_unregister(ptr noundef nonnull %88) #9
  br label %192

192:                                              ; preds = %190, %102
  %193 = phi i32 [ %106, %102 ], [ %191, %190 ]
  tail call void @mdiobus_free(ptr noundef nonnull %88) #9
  br label %194

194:                                              ; preds = %192, %87, %81
  %195 = phi i32 [ %193, %192 ], [ %84, %81 ], [ -12, %87 ]
  %196 = load ptr, ptr %48, align 8
  tail call void @clk_disable(ptr noundef %196) #9
  tail call void @clk_unprepare(ptr noundef %196) #9
  br label %197

197:                                              ; preds = %194, %60
  %198 = phi i32 [ %58, %60 ], [ %195, %194 ]
  %199 = load ptr, ptr %32, align 4
  tail call void @clk_disable(ptr noundef %199) #9
  tail call void @clk_unprepare(ptr noundef %199) #9
  br label %200

200:                                              ; preds = %197, %45, %34, %28, %22, %7
  %201 = phi i32 [ %23, %22 ], [ %29, %28 ], [ -19, %34 ], [ %43, %45 ], [ %198, %197 ], [ -22, %7 ]
  tail call void @free_netdev(ptr noundef nonnull %5) #9
  br label %202

202:                                              ; preds = %200, %177, %1
  %203 = phi i32 [ %201, %200 ], [ 0, %177 ], [ -12, %1 ]
  ret i32 %203
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hix5hd2_dev_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 9744
  tail call void @__netif_napi_del(ptr noundef %4) #9
  tail call void @synchronize_net() #9
  tail call void @unregister_netdev(ptr noundef %3) #9
  %5 = getelementptr i8, ptr %3, i32 9740
  %6 = load ptr, ptr %5, align 4
  tail call void @mdiobus_unregister(ptr noundef %6) #9
  %7 = load ptr, ptr %5, align 4
  tail call void @mdiobus_free(ptr noundef %7) #9
  %8 = getelementptr i8, ptr %3, i32 9696
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %1
  %13 = getelementptr i8, ptr %3, i32 1472
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %12
  %17 = getelementptr i8, ptr %3, i32 9680
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr i8, ptr %3, i32 1476
  %20 = load i32, ptr %19, align 4
  tail call void @dma_free_attrs(ptr noundef %18, i32 noundef 163840, ptr noundef nonnull %14, i32 noundef %20, i32 noundef 0) #9
  store ptr null, ptr %13, align 8
  br label %21

21:                                               ; preds = %16, %12, %1
  %22 = getelementptr i8, ptr %3, i32 1408
  tail call fastcc void @hix5hd2_destroy_hw_desc_queue(ptr noundef %22)
  %23 = getelementptr i8, ptr %3, i32 9688
  %24 = load ptr, ptr %23, align 8
  tail call void @of_node_put(ptr noundef %24) #9
  %25 = getelementptr i8, ptr %3, i32 9960
  %26 = tail call zeroext i1 @cancel_work_sync(ptr noundef %25) #9
  tail call void @free_netdev(ptr noundef %3) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @hix5hd2_phy_reset(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.hix5hd2_priv, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @reset_control_deassert(ptr noundef %3) #9
  %5 = getelementptr inbounds %struct.hix5hd2_priv, ptr %0, i32 0, i32 18
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %1
  %9 = add i32 %6, 999
  %10 = icmp ult i32 %9, 20000
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = add nsw i32 %6, 500
  tail call void @usleep_range_state(i32 noundef %6, i32 noundef %12, i32 noundef 2) #9
  br label %15

13:                                               ; preds = %8
  %14 = udiv i32 %9, 1000
  tail call void @msleep(i32 noundef %14) #9
  br label %15

15:                                               ; preds = %13, %11, %1
  %16 = load ptr, ptr %2, align 4
  %17 = tail call i32 @reset_control_assert(ptr noundef %16) #9
  %18 = getelementptr %struct.hix5hd2_priv, ptr %0, i32 0, i32 18, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %15
  %22 = add i32 %19, 999
  %23 = icmp ult i32 %22, 20000
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = add nsw i32 %19, 500
  tail call void @usleep_range_state(i32 noundef %19, i32 noundef %25, i32 noundef 2) #9
  br label %28

26:                                               ; preds = %21
  %27 = udiv i32 %22, 1000
  tail call void @msleep(i32 noundef %27) #9
  br label %28

28:                                               ; preds = %26, %24, %15
  %29 = load ptr, ptr %2, align 4
  %30 = tail call i32 @reset_control_deassert(ptr noundef %29) #9
  %31 = getelementptr %struct.hix5hd2_priv, ptr %0, i32 0, i32 18, i32 2
  %32 = load i32, ptr %31, align 8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %28
  %35 = add i32 %32, 999
  %36 = icmp ult i32 %35, 20000
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = add nsw i32 %32, 500
  tail call void @usleep_range_state(i32 noundef %32, i32 noundef %38, i32 noundef 2) #9
  br label %41

39:                                               ; preds = %34
  %40 = udiv i32 %35, 1000
  tail call void @msleep(i32 noundef %40) #9
  br label %41

41:                                               ; preds = %39, %37, %28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hix5hd2_mdio_read(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.mii_bus, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.hix5hd2_priv, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr i8, ptr %7, i32 960
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #9, !srcloc !8
  %10 = and i32 %9, 1048576
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %15, %3
  %13 = phi i32 [ %16, %15 ], [ 0, %3 ]
  %14 = icmp eq i32 %13, 10000
  br i1 %14, label %52, label %15

15:                                               ; preds = %12
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #9
  %16 = add nuw nsw i32 %13, 1
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #9, !srcloc !8
  %18 = and i32 %17, 1048576
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %12

20:                                               ; preds = %15, %3
  %21 = shl i32 %1, 8
  %22 = or i32 %21, %2
  %23 = or i32 %22, 1179648
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %23) #9, !srcloc !9
  %24 = load ptr, ptr %4, align 8
  %25 = getelementptr inbounds %struct.hix5hd2_priv, ptr %24, i32 0, i32 2
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr i8, ptr %26, i32 960
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #9, !srcloc !8
  %29 = and i32 %28, 1048576
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %34, %20
  %32 = phi i32 [ %35, %34 ], [ 0, %20 ]
  %33 = icmp eq i32 %32, 10000
  br i1 %33, label %52, label %34

34:                                               ; preds = %31
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #9
  %35 = add nuw nsw i32 %32, 1
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #9, !srcloc !8
  %37 = and i32 %36, 1048576
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %31

39:                                               ; preds = %34, %20
  %40 = getelementptr i8, ptr %7, i32 976
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #9, !srcloc !8
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.mii_bus, ptr %0, i32 0, i32 9
  %46 = load ptr, ptr %45, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.17) #10
  br label %52

47:                                               ; preds = %39
  %48 = load ptr, ptr %6, align 8
  %49 = getelementptr i8, ptr %48, i32 964
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #9, !srcloc !8
  %51 = lshr i32 %50, 16
  br label %52

52:                                               ; preds = %47, %44, %31, %12
  %53 = phi i32 [ -19, %44 ], [ %51, %47 ], [ -110, %31 ], [ -110, %12 ]
  ret i32 %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hix5hd2_mdio_write(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i16 noundef zeroext %3) #2 {
  %5 = getelementptr inbounds %struct.mii_bus, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.hix5hd2_priv, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr i8, ptr %8, i32 960
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #9, !srcloc !8
  %11 = and i32 %10, 1048576
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %16, %4
  %14 = phi i32 [ %17, %16 ], [ 0, %4 ]
  %15 = icmp eq i32 %14, 10000
  br i1 %15, label %42, label %16

16:                                               ; preds = %13
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #9
  %17 = add nuw nsw i32 %14, 1
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #9, !srcloc !8
  %19 = and i32 %18, 1048576
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %13

21:                                               ; preds = %16, %4
  %22 = zext i16 %3 to i32
  %23 = getelementptr i8, ptr %8, i32 964
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %22) #9, !srcloc !9
  %24 = shl i32 %1, 8
  %25 = or i32 %24, %2
  %26 = or i32 %25, 1114112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %26) #9, !srcloc !9
  %27 = load ptr, ptr %5, align 8
  %28 = getelementptr inbounds %struct.hix5hd2_priv, ptr %27, i32 0, i32 2
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr i8, ptr %29, i32 960
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #9, !srcloc !8
  %32 = and i32 %31, 1048576
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %37, %21
  %35 = phi i32 [ %38, %37 ], [ 0, %21 ]
  %36 = icmp eq i32 %35, 10000
  br i1 %36, label %42, label %37

37:                                               ; preds = %34
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #9
  %38 = add nuw nsw i32 %35, 1
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #9, !srcloc !8
  %40 = and i32 %39, 1048576
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %34

42:                                               ; preds = %37, %34, %21, %13
  %43 = phi i32 [ 0, %21 ], [ -110, %34 ], [ 0, %37 ], [ -110, %13 ]
  ret i32 %43
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_mdiobus_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_phy_mode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @of_parse_phandle(ptr noundef %0) unnamed_addr #6 {
  %2 = alloca %struct.of_phandle_args, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false), !annotation !10
  %3 = call i32 @__of_parse_phandle_with_args(ptr noundef %0, ptr noundef nonnull @.str.11, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %2) #9
  %4 = icmp eq i32 %3, 0
  %5 = load ptr, ptr %2, align 4
  %6 = select i1 %4, ptr %5, ptr null
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #9
  ret ptr %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hix5hd2_interrupt(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr i8, ptr %1, i32 1480
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 1472
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #9, !srcloc !8
  %7 = load ptr, ptr %3, align 8
  %8 = getelementptr i8, ptr %7, i32 1472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #9, !srcloc !9
  %9 = and i32 %6, 805961728
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %17, label %11, !prof !11

11:                                               ; preds = %2
  %12 = load ptr, ptr %3, align 8
  %13 = getelementptr i8, ptr %12, i32 1476
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 0) #9, !srcloc !9
  %14 = getelementptr i8, ptr %1, i32 9744
  %15 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %14) #9
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  tail call void @__napi_schedule(ptr noundef %14) #9
  br label %17

17:                                               ; preds = %16, %11, %2
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_ethdev_address(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @eth_hw_addr_random(ptr noundef %0) unnamed_addr #6 {
  %2 = alloca [6 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %2, i8 0, i32 6, i1 false), !annotation !10
  call void @get_random_bytes(ptr noundef nonnull %2, i32 noundef 6) #9
  %3 = load i8, ptr %2, align 1
  %4 = and i8 %3, -4
  %5 = or i8 %4, 2
  store i8 %5, ptr %2, align 1
  call void @dev_addr_mod(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2, i32 noundef 6) #9
  %6 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 50
  store i8 1, ptr %6, align 8
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #9
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hix5hd2_tx_timeout_task(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -276
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @hix5hd2_net_close(ptr noundef %3)
  %5 = load ptr, ptr %2, align 4
  %6 = tail call i32 @hix5hd2_net_open(ptr noundef %5)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @hix5hd2_init_hw_desc_queue(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.hix5hd2_priv, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 0, ptr %2, align 4, !annotation !10
  %5 = getelementptr %struct.hix5hd2_desc_sw, ptr %0, i32 0, i32 2
  store i32 1024, ptr %5, align 8
  %6 = getelementptr [4 x %struct.hix5hd2_desc_sw], ptr %0, i32 0, i32 1, i32 2
  store i32 1024, ptr %6, align 8
  %7 = getelementptr [4 x %struct.hix5hd2_desc_sw], ptr %0, i32 0, i32 2, i32 2
  store i32 1024, ptr %7, align 8
  %8 = getelementptr [4 x %struct.hix5hd2_desc_sw], ptr %0, i32 0, i32 3, i32 2
  store i32 1024, ptr %8, align 8
  %9 = call ptr @dma_alloc_attrs(ptr noundef %4, i32 noundef 32768, ptr noundef nonnull %2, i32 noundef 3264, i32 noundef 0) #9
  %10 = icmp eq ptr %9, null
  br i1 %10, label %42, label %11

11:                                               ; preds = %1
  %12 = getelementptr [4 x %struct.hix5hd2_desc_sw], ptr %0, i32 0, i32 0, i32 3
  store i32 32768, ptr %12, align 4
  store ptr %9, ptr %0, align 8
  %13 = load i32, ptr %2, align 4
  %14 = getelementptr [4 x %struct.hix5hd2_desc_sw], ptr %0, i32 0, i32 0, i32 1
  store i32 %13, ptr %14, align 4
  %15 = load i32, ptr %6, align 8
  %16 = shl i32 %15, 5
  %17 = call ptr @dma_alloc_attrs(ptr noundef %4, i32 noundef %16, ptr noundef nonnull %2, i32 noundef 3264, i32 noundef 0) #9
  %18 = icmp eq ptr %17, null
  br i1 %18, label %42, label %19

19:                                               ; preds = %11
  %20 = getelementptr [4 x %struct.hix5hd2_desc_sw], ptr %0, i32 0, i32 1
  %21 = getelementptr [4 x %struct.hix5hd2_desc_sw], ptr %0, i32 0, i32 1, i32 3
  store i32 %16, ptr %21, align 4
  store ptr %17, ptr %20, align 8
  %22 = load i32, ptr %2, align 4
  %23 = getelementptr [4 x %struct.hix5hd2_desc_sw], ptr %0, i32 0, i32 1, i32 1
  store i32 %22, ptr %23, align 4
  %24 = load i32, ptr %7, align 8
  %25 = shl i32 %24, 5
  %26 = call ptr @dma_alloc_attrs(ptr noundef %4, i32 noundef %25, ptr noundef nonnull %2, i32 noundef 3264, i32 noundef 0) #9
  %27 = icmp eq ptr %26, null
  br i1 %27, label %42, label %28

28:                                               ; preds = %19
  %29 = getelementptr [4 x %struct.hix5hd2_desc_sw], ptr %0, i32 0, i32 2
  %30 = getelementptr [4 x %struct.hix5hd2_desc_sw], ptr %0, i32 0, i32 2, i32 3
  store i32 %25, ptr %30, align 4
  store ptr %26, ptr %29, align 8
  %31 = load i32, ptr %2, align 4
  %32 = getelementptr [4 x %struct.hix5hd2_desc_sw], ptr %0, i32 0, i32 2, i32 1
  store i32 %31, ptr %32, align 4
  %33 = load i32, ptr %8, align 8
  %34 = shl i32 %33, 5
  %35 = call ptr @dma_alloc_attrs(ptr noundef %4, i32 noundef %34, ptr noundef nonnull %2, i32 noundef 3264, i32 noundef 0) #9
  %36 = icmp eq ptr %35, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %28
  %38 = getelementptr [4 x %struct.hix5hd2_desc_sw], ptr %0, i32 0, i32 3
  %39 = getelementptr [4 x %struct.hix5hd2_desc_sw], ptr %0, i32 0, i32 3, i32 3
  store i32 %34, ptr %39, align 4
  store ptr %35, ptr %38, align 8
  %40 = load i32, ptr %2, align 4
  %41 = getelementptr [4 x %struct.hix5hd2_desc_sw], ptr %0, i32 0, i32 3, i32 1
  store i32 %40, ptr %41, align 4
  br label %43

42:                                               ; preds = %28, %19, %11, %1
  call fastcc void @hix5hd2_destroy_hw_desc_queue(ptr noundef %0)
  br label %43

43:                                               ; preds = %42, %37
  %44 = phi i32 [ -12, %42 ], [ 0, %37 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  ret i32 %44
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hix5hd2_poll(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 -60
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 1408
  %6 = getelementptr i8, ptr %4, i32 1480
  %7 = getelementptr i8, ptr %4, i32 1472
  %8 = getelementptr i8, ptr %4, i32 9680
  %9 = getelementptr i8, ptr %4, i32 1456
  %10 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 87
  %11 = getelementptr i8, ptr %4, i32 9684
  %12 = getelementptr i8, ptr %4, i32 1424
  %13 = getelementptr i8, ptr %4, i32 9744
  %14 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 36
  %15 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 36, i32 2
  %16 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 36, i32 4
  %17 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 36, i32 10
  %18 = getelementptr i8, ptr %0, i32 -8264
  br label %19

19:                                               ; preds = %188, %2
  %20 = phi i32 [ 0, %2 ], [ %185, %188 ]
  %21 = phi i32 [ %1, %2 ], [ %189, %188 ]
  tail call void @netif_tx_lock(ptr noundef %4) #9
  %22 = load ptr, ptr %6, align 8
  %23 = getelementptr i8, ptr %22, i32 1452
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #9, !srcloc !8
  %25 = lshr i32 %24, 5
  %26 = load ptr, ptr %6, align 8
  %27 = getelementptr i8, ptr %26, i32 1448
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #9, !srcloc !8
  %29 = lshr i32 %28, 5
  %30 = sub nsw i32 %29, %25
  %31 = and i32 %30, 1023
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %93, label %33

33:                                               ; preds = %80, %19
  %34 = phi i32 [ %45, %80 ], [ 0, %19 ]
  %35 = phi i32 [ %42, %80 ], [ 0, %19 ]
  %36 = phi i32 [ %82, %80 ], [ %25, %19 ]
  %37 = getelementptr %struct.hix5hd2_priv, ptr %5, i32 0, i32 4, i32 %36
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %41, !prof !11

40:                                               ; preds = %33
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %4, ptr noundef nonnull @.str.21) #10
  br label %84

41:                                               ; preds = %33
  %42 = add nuw nsw i32 %35, 1
  %43 = getelementptr inbounds %struct.sk_buff, ptr %38, i32 0, i32 5
  %44 = load i32, ptr %43, align 8
  %45 = add i32 %44, %34
  %46 = getelementptr inbounds %struct.sk_buff, ptr %38, i32 0, i32 15
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.skb_shared_info, ptr %47, i32 0, i32 2
  %49 = load i8, ptr %48, align 2
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %75, label %51

51:                                               ; preds = %41
  %52 = load ptr, ptr %7, align 8
  %53 = getelementptr %struct.sg_desc, ptr %52, i32 %36, i32 2
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr %struct.sg_desc, ptr %52, i32 %36, i32 3
  %56 = load i32, ptr %55, align 4
  %57 = load ptr, ptr %8, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %57, i32 noundef %54, i32 noundef %56, i32 noundef 1, i32 noundef 0) #9
  %58 = load ptr, ptr %46, align 4
  %59 = getelementptr inbounds %struct.skb_shared_info, ptr %58, i32 0, i32 2
  %60 = load i8, ptr %59, align 2
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %80, label %62

62:                                               ; preds = %62, %51
  %63 = phi i32 [ %69, %62 ], [ 0, %51 ]
  %64 = getelementptr %struct.sg_desc, ptr %52, i32 %36, i32 4, i32 %63
  %65 = load i32, ptr %64, align 4
  %66 = getelementptr %struct.sg_desc, ptr %52, i32 %36, i32 4, i32 %63, i32 1
  %67 = load i32, ptr %66, align 4
  %68 = load ptr, ptr %8, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %68, i32 noundef %65, i32 noundef %67, i32 noundef 1, i32 noundef 0) #9
  %69 = add nuw nsw i32 %63, 1
  %70 = load ptr, ptr %46, align 4
  %71 = getelementptr inbounds %struct.skb_shared_info, ptr %70, i32 0, i32 2
  %72 = load i8, ptr %71, align 2
  %73 = zext i8 %72 to i32
  %74 = icmp ult i32 %69, %73
  br i1 %74, label %62, label %80

75:                                               ; preds = %41
  %76 = load ptr, ptr %9, align 8
  %77 = getelementptr %struct.hix5hd2_desc, ptr %76, i32 %36
  %78 = load i32, ptr %77, align 32
  %79 = load ptr, ptr %8, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %79, i32 noundef %78, i32 noundef %44, i32 noundef 1, i32 noundef 0) #9
  br label %80

80:                                               ; preds = %75, %62, %51
  store ptr null, ptr %37, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %38, i32 noundef 0) #9
  %81 = add nuw nsw i32 %36, 1
  %82 = and i32 %81, 1023
  %83 = icmp eq i32 %42, %31
  br i1 %83, label %84, label %33

84:                                               ; preds = %80, %40
  %85 = phi i32 [ %35, %40 ], [ 1, %80 ]
  %86 = phi i32 [ %36, %40 ], [ %82, %80 ]
  %87 = phi i32 [ %34, %40 ], [ %45, %80 ]
  %88 = icmp eq i32 %86, %25
  br i1 %88, label %93, label %89

89:                                               ; preds = %84
  %90 = shl nuw i32 %86, 5
  %91 = load ptr, ptr %6, align 8
  %92 = getelementptr i8, ptr %91, i32 1452
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 %90) #9, !srcloc !9
  br label %93

93:                                               ; preds = %89, %84, %19
  %94 = phi i32 [ %87, %89 ], [ %87, %84 ], [ 0, %19 ]
  %95 = phi i32 [ %85, %89 ], [ %85, %84 ], [ 0, %19 ]
  tail call void @netif_tx_unlock(ptr noundef %4) #9
  %96 = icmp ne i32 %95, 0
  %97 = icmp ne i32 %94, 0
  %98 = select i1 %96, i1 true, i1 %97
  br i1 %98, label %99, label %114

99:                                               ; preds = %93
  %100 = load ptr, ptr %10, align 64
  %101 = icmp eq i32 %94, 0
  br i1 %101, label %114, label %102, !prof !11

102:                                              ; preds = %99
  %103 = getelementptr inbounds %struct.netdev_queue, ptr %100, i32 0, i32 14
  tail call void @dql_completed(ptr noundef %103, i32 noundef %94) #9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  %104 = getelementptr inbounds %struct.netdev_queue, ptr %100, i32 0, i32 14, i32 1
  %105 = load volatile i32, ptr %104, align 4
  %106 = load volatile i32, ptr %103, align 64
  %107 = sub i32 %105, %106
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %114, label %109, !prof !11

109:                                              ; preds = %102
  %110 = getelementptr inbounds %struct.netdev_queue, ptr %100, i32 0, i32 12
  %111 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %110) #9
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %109
  tail call void @netif_schedule_queue(ptr noundef %100) #9
  br label %114

114:                                              ; preds = %113, %109, %102, %99, %93
  %115 = load ptr, ptr %11, align 4
  %116 = getelementptr inbounds %struct.net_device, ptr %115, i32 0, i32 87
  %117 = load ptr, ptr %116, align 64
  %118 = getelementptr inbounds %struct.netdev_queue, ptr %117, i32 0, i32 12
  %119 = load volatile i32, ptr %118, align 4
  %120 = and i32 %119, 1
  %121 = icmp eq i32 %120, 0
  %122 = xor i1 %96, true
  %123 = select i1 %121, i1 true, i1 %122
  br i1 %123, label %125, label %124, !prof !13

124:                                              ; preds = %114
  tail call void @netif_tx_wake_queue(ptr noundef %117) #9
  br label %125

125:                                              ; preds = %124, %114
  %126 = load ptr, ptr %6, align 8
  %127 = getelementptr i8, ptr %126, i32 1324
  %128 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %127) #9, !srcloc !8
  %129 = lshr i32 %128, 5
  %130 = load ptr, ptr %6, align 8
  %131 = getelementptr i8, ptr %130, i32 1320
  %132 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %131) #9, !srcloc !8
  %133 = lshr i32 %132, 5
  %134 = sub nsw i32 %133, %129
  %135 = and i32 %134, 1023
  %136 = tail call i32 @llvm.umin.i32(i32 %135, i32 %21) #9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !14
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %184, label %138

138:                                              ; preds = %172, %125
  %139 = phi i32 [ %175, %172 ], [ 0, %125 ]
  %140 = phi i32 [ %174, %172 ], [ %129, %125 ]
  %141 = getelementptr %struct.hix5hd2_priv, ptr %5, i32 0, i32 5, i32 %140
  %142 = load ptr, ptr %141, align 4
  %143 = icmp eq ptr %142, null
  br i1 %143, label %144, label %145, !prof !11

144:                                              ; preds = %138
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %4, ptr noundef nonnull @.str.22) #10
  br label %177

145:                                              ; preds = %138
  store ptr null, ptr %141, align 4
  %146 = load ptr, ptr %12, align 8
  %147 = getelementptr %struct.hix5hd2_desc, ptr %146, i32 %140
  %148 = getelementptr %struct.hix5hd2_desc, ptr %146, i32 %140, i32 1
  %149 = load i32, ptr %148, align 4
  %150 = lshr i32 %149, 16
  %151 = and i32 %150, 2047
  %152 = load i32, ptr %147, align 32
  %153 = load ptr, ptr %8, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %153, i32 noundef %152, i32 noundef 1600, i32 noundef 2, i32 noundef 0) #9
  %154 = tail call ptr @skb_put(ptr noundef nonnull %142, i32 noundef %151) #9
  %155 = getelementptr inbounds %struct.sk_buff, ptr %142, i32 0, i32 5
  %156 = load i32, ptr %155, align 8
  %157 = icmp ugt i32 %156, 1600
  br i1 %157, label %158, label %163

158:                                              ; preds = %145
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %4, ptr noundef nonnull @.str.23, i32 noundef %156) #10
  %159 = load i32, ptr %16, align 8
  %160 = add i32 %159, 1
  store i32 %160, ptr %16, align 8
  %161 = load i32, ptr %17, align 8
  %162 = add i32 %161, 1
  store i32 %162, ptr %17, align 8
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %142, i32 noundef 1) #9
  br label %172

163:                                              ; preds = %145
  %164 = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %142, ptr noundef %4) #9
  %165 = getelementptr inbounds %struct.sk_buff, ptr %142, i32 0, i32 13, i32 0, i32 16
  store i16 %164, ptr %165, align 8
  %166 = tail call i32 @napi_gro_receive(ptr noundef %13, ptr noundef nonnull %142) #9
  %167 = load i32, ptr %14, align 8
  %168 = add i32 %167, 1
  store i32 %168, ptr %14, align 8
  %169 = load i32, ptr %155, align 8
  %170 = load i32, ptr %15, align 8
  %171 = add i32 %170, %169
  store i32 %171, ptr %15, align 8
  br label %172

172:                                              ; preds = %163, %158
  %173 = add nuw nsw i32 %140, 1
  %174 = and i32 %173, 1023
  %175 = add nuw nsw i32 %139, 1
  %176 = icmp eq i32 %175, %136
  br i1 %176, label %177, label %138

177:                                              ; preds = %172, %144
  %178 = phi i32 [ %140, %144 ], [ %174, %172 ]
  %179 = icmp eq i32 %178, %129
  br i1 %179, label %184, label %180

180:                                              ; preds = %177
  %181 = shl nuw i32 %178, 5
  %182 = load ptr, ptr %6, align 8
  %183 = getelementptr i8, ptr %182, i32 1324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %183, i32 %181) #9, !srcloc !9
  br label %184

184:                                              ; preds = %180, %177, %125
  tail call fastcc void @hix5hd2_rx_refill(ptr noundef %5) #9
  %185 = add i32 %136, %20
  %186 = icmp sge i32 %185, %1
  %187 = or i1 %137, %186
  br i1 %187, label %197, label %188

188:                                              ; preds = %184
  %189 = sub i32 %21, %136
  %190 = load ptr, ptr %18, align 8
  %191 = getelementptr i8, ptr %190, i32 1472
  %192 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %191) #9, !srcloc !8
  %193 = load ptr, ptr %18, align 8
  %194 = getelementptr i8, ptr %193, i32 1472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %194, i32 %192) #9, !srcloc !9
  %195 = and i32 %192, 805961728
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %19

197:                                              ; preds = %188, %184
  %198 = icmp slt i32 %185, %1
  br i1 %198, label %199, label %203

199:                                              ; preds = %197
  %200 = tail call zeroext i1 @napi_complete_done(ptr noundef %0, i32 noundef %185) #9
  %201 = load ptr, ptr %18, align 8
  %202 = getelementptr i8, ptr %201, i32 1476
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %202, i32 805961728) #9, !srcloc !9
  br label %203

203:                                              ; preds = %199, %197
  ret i32 %185
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @hix5hd2_init_sg_desc_queue(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 0, ptr %2, align 4, !annotation !10
  %3 = getelementptr inbounds %struct.hix5hd2_priv, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 8
  %5 = call ptr @dma_alloc_attrs(ptr noundef %4, i32 noundef 163840, ptr noundef nonnull %2, i32 noundef 3264, i32 noundef 0) #9
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.hix5hd2_priv, ptr %0, i32 0, i32 1
  store ptr %5, ptr %8, align 8
  %9 = load i32, ptr %2, align 4
  %10 = getelementptr inbounds %struct.hix5hd2_priv, ptr %0, i32 0, i32 1, i32 1
  store i32 %9, ptr %10, align 4
  br label %11

11:                                               ; preds = %7, %1
  %12 = phi i32 [ 0, %7 ], [ -12, %1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @hix5hd2_destroy_sg_desc_queue(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.hix5hd2_priv, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.hix5hd2_priv, ptr %0, i32 0, i32 6
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.hix5hd2_priv, ptr %0, i32 0, i32 1, i32 1
  %9 = load i32, ptr %8, align 4
  tail call void @dma_free_attrs(ptr noundef %7, i32 noundef 163840, ptr noundef nonnull %3, i32 noundef %9, i32 noundef 0) #9
  store ptr null, ptr %2, align 8
  br label %10

10:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @hix5hd2_destroy_hw_desc_queue(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.hix5hd2_priv, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %0, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 8
  %7 = getelementptr [4 x %struct.hix5hd2_desc_sw], ptr %0, i32 0, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr [4 x %struct.hix5hd2_desc_sw], ptr %0, i32 0, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  tail call void @dma_free_attrs(ptr noundef %6, i32 noundef %8, ptr noundef nonnull %3, i32 noundef %10, i32 noundef 0) #9
  store ptr null, ptr %0, align 8
  br label %11

11:                                               ; preds = %5, %1
  %12 = getelementptr [4 x %struct.hix5hd2_desc_sw], ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %2, align 8
  %17 = getelementptr [4 x %struct.hix5hd2_desc_sw], ptr %0, i32 0, i32 1, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr [4 x %struct.hix5hd2_desc_sw], ptr %0, i32 0, i32 1, i32 1
  %20 = load i32, ptr %19, align 4
  tail call void @dma_free_attrs(ptr noundef %16, i32 noundef %18, ptr noundef nonnull %13, i32 noundef %20, i32 noundef 0) #9
  store ptr null, ptr %12, align 8
  br label %21

21:                                               ; preds = %15, %11
  %22 = getelementptr [4 x %struct.hix5hd2_desc_sw], ptr %0, i32 0, i32 2
  %23 = load ptr, ptr %22, align 8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr %2, align 8
  %27 = getelementptr [4 x %struct.hix5hd2_desc_sw], ptr %0, i32 0, i32 2, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr [4 x %struct.hix5hd2_desc_sw], ptr %0, i32 0, i32 2, i32 1
  %30 = load i32, ptr %29, align 4
  tail call void @dma_free_attrs(ptr noundef %26, i32 noundef %28, ptr noundef nonnull %23, i32 noundef %30, i32 noundef 0) #9
  store ptr null, ptr %22, align 8
  br label %31

31:                                               ; preds = %25, %21
  %32 = getelementptr [4 x %struct.hix5hd2_desc_sw], ptr %0, i32 0, i32 3
  %33 = load ptr, ptr %32, align 8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %31
  %36 = load ptr, ptr %2, align 8
  %37 = getelementptr [4 x %struct.hix5hd2_desc_sw], ptr %0, i32 0, i32 3, i32 3
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr [4 x %struct.hix5hd2_desc_sw], ptr %0, i32 0, i32 3, i32 1
  %40 = load i32, ptr %39, align 4
  tail call void @dma_free_attrs(ptr noundef %36, i32 noundef %38, ptr noundef nonnull %33, i32 noundef %40, i32 noundef 0) #9
  store ptr null, ptr %32, align 8
  br label %41

41:                                               ; preds = %35, %31
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdiobus_alloc_size(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hix5hd2_net_close(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 1408
  %3 = getelementptr i8, ptr %0, i32 1480
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 -7) #9, !srcloc !9
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr i8, ptr %6, i32 1484
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 0) #9, !srcloc !9
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr i8, ptr %8, i32 1476
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 0) #9, !srcloc !9
  %10 = getelementptr i8, ptr %0, i32 9744
  tail call void @napi_disable(ptr noundef %10) #9
  %11 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  %12 = load ptr, ptr %11, align 64
  %13 = getelementptr inbounds %struct.netdev_queue, ptr %12, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %13) #9
  %14 = getelementptr i8, ptr %0, i32 9680
  br label %17

15:                                               ; preds = %27
  %16 = getelementptr i8, ptr %0, i32 1456
  br label %30

17:                                               ; preds = %27, %1
  %18 = phi i32 [ 0, %1 ], [ %28, %27 ]
  %19 = getelementptr %struct.hix5hd2_priv, ptr %2, i32 0, i32 5, i32 %18
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = load ptr, ptr %2, align 8
  %24 = getelementptr %struct.hix5hd2_desc, ptr %23, i32 %18
  %25 = load i32, ptr %24, align 32
  %26 = load ptr, ptr %14, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %26, i32 noundef %25, i32 noundef 1600, i32 noundef 2, i32 noundef 0) #9
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %20, i32 noundef 1) #9
  store ptr null, ptr %19, align 4
  br label %27

27:                                               ; preds = %22, %17
  %28 = add nuw nsw i32 %18, 1
  %29 = icmp eq i32 %28, 1024
  br i1 %29, label %15, label %17

30:                                               ; preds = %42, %15
  %31 = phi i32 [ 0, %15 ], [ %43, %42 ]
  %32 = getelementptr %struct.hix5hd2_priv, ptr %2, i32 0, i32 4, i32 %31
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %42, label %35

35:                                               ; preds = %30
  %36 = load ptr, ptr %16, align 8
  %37 = getelementptr %struct.hix5hd2_desc, ptr %36, i32 %31
  %38 = load i32, ptr %37, align 32
  %39 = load ptr, ptr %14, align 8
  %40 = getelementptr inbounds %struct.sk_buff, ptr %33, i32 0, i32 5
  %41 = load i32, ptr %40, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %39, i32 noundef %38, i32 noundef %41, i32 noundef 1, i32 noundef 0) #9
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %33, i32 noundef 1) #9
  store ptr null, ptr %32, align 4
  br label %42

42:                                               ; preds = %35, %30
  %43 = add nuw nsw i32 %31, 1
  %44 = icmp eq i32 %43, 1024
  br i1 %44, label %45, label %30

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %47 = load ptr, ptr %46, align 8
  %48 = icmp eq ptr %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %45
  tail call void @phy_stop(ptr noundef nonnull %47) #9
  %50 = load ptr, ptr %46, align 8
  tail call void @phy_disconnect(ptr noundef %50) #9
  br label %51

51:                                               ; preds = %49, %45
  %52 = getelementptr i8, ptr %0, i32 9712
  %53 = load ptr, ptr %52, align 8
  tail call void @clk_disable(ptr noundef %53) #9
  tail call void @clk_unprepare(ptr noundef %53) #9
  %54 = getelementptr i8, ptr %0, i32 9708
  %55 = load ptr, ptr %54, align 4
  tail call void @clk_disable(ptr noundef %55) #9
  tail call void @clk_unprepare(ptr noundef %55) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hix5hd2_net_open(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 1408
  %3 = getelementptr i8, ptr %0, i32 9708
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @clk_prepare(ptr noundef %4) #9
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = tail call i32 @clk_enable(ptr noundef %4) #9
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %7
  tail call void @clk_unprepare(ptr noundef %4) #9
  br label %11

11:                                               ; preds = %10, %1
  %12 = phi i32 [ %5, %1 ], [ %8, %10 ]
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.3, i32 noundef %12) #10
  br label %126

15:                                               ; preds = %11, %7
  %16 = getelementptr i8, ptr %0, i32 9712
  %17 = load ptr, ptr %16, align 8
  %18 = tail call i32 @clk_prepare(ptr noundef %17) #9
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = tail call i32 @clk_enable(ptr noundef %17) #9
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %20
  tail call void @clk_unprepare(ptr noundef %17) #9
  br label %24

24:                                               ; preds = %23, %15
  %25 = phi i32 [ %18, %15 ], [ %21, %23 ]
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load ptr, ptr %3, align 4
  tail call void @clk_disable(ptr noundef %28) #9
  tail call void @clk_unprepare(ptr noundef %28) #9
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %25) #10
  br label %126

29:                                               ; preds = %24, %20
  %30 = getelementptr i8, ptr %0, i32 9688
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr i8, ptr %0, i32 9692
  %33 = load i32, ptr %32, align 4
  %34 = tail call ptr @of_phy_connect(ptr noundef %0, ptr noundef %31, ptr noundef nonnull @hix5hd2_adjust_link, i32 noundef 0, i32 noundef %33) #9
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load ptr, ptr %16, align 8
  tail call void @clk_disable(ptr noundef %37) #9
  tail call void @clk_unprepare(ptr noundef %37) #9
  %38 = load ptr, ptr %3, align 4
  tail call void @clk_disable(ptr noundef %38) #9
  tail call void @clk_unprepare(ptr noundef %38) #9
  br label %126

39:                                               ; preds = %29
  tail call void @phy_start(ptr noundef nonnull %34) #9
  %40 = getelementptr i8, ptr %0, i32 1480
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr i8, ptr %41, i32 1476
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 0) #9, !srcloc !9
  %43 = load ptr, ptr %40, align 8
  %44 = getelementptr i8, ptr %43, i32 1472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 -1) #9, !srcloc !9
  %45 = load ptr, ptr %40, align 8
  %46 = getelementptr i8, ptr %45, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 32) #9, !srcloc !9
  %47 = load ptr, ptr %40, align 8
  %48 = getelementptr i8, ptr %47, i32 532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 1600) #9, !srcloc !9
  %49 = load ptr, ptr %40, align 8
  %50 = getelementptr i8, ptr %49, i32 448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 0) #9, !srcloc !9
  %51 = load ptr, ptr %40, align 8
  %52 = getelementptr i8, ptr %51, i32 1496
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 65537) #9, !srcloc !9
  %53 = load ptr, ptr %40, align 8
  %54 = getelementptr i8, ptr %53, i32 1504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 65536) #9, !srcloc !9
  %55 = load ptr, ptr %40, align 8
  %56 = getelementptr i8, ptr %55, i32 1508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 327680) #9, !srcloc !9
  %57 = load ptr, ptr %40, align 8
  %58 = getelementptr i8, ptr %57, i32 1304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 2) #9, !srcloc !9
  %59 = load ptr, ptr %40, align 8
  %60 = getelementptr i8, ptr %59, i32 1284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 8192) #9, !srcloc !9
  %61 = load ptr, ptr %40, align 8
  %62 = getelementptr i8, ptr %61, i32 1304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 0) #9, !srcloc !9
  %63 = load ptr, ptr %40, align 8
  %64 = getelementptr i8, ptr %63, i32 1336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 2) #9, !srcloc !9
  %65 = load ptr, ptr %40, align 8
  %66 = getelementptr i8, ptr %65, i32 1316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 8192) #9, !srcloc !9
  %67 = load ptr, ptr %40, align 8
  %68 = getelementptr i8, ptr %67, i32 1336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 0) #9, !srcloc !9
  %69 = load ptr, ptr %40, align 8
  %70 = getelementptr i8, ptr %69, i32 1432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 2) #9, !srcloc !9
  %71 = load ptr, ptr %40, align 8
  %72 = getelementptr i8, ptr %71, i32 1412
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 8192) #9, !srcloc !9
  %73 = load ptr, ptr %40, align 8
  %74 = getelementptr i8, ptr %73, i32 1432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 0) #9, !srcloc !9
  %75 = load ptr, ptr %40, align 8
  %76 = getelementptr i8, ptr %75, i32 1464
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 2) #9, !srcloc !9
  %77 = load ptr, ptr %40, align 8
  %78 = getelementptr i8, ptr %77, i32 1444
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 8192) #9, !srcloc !9
  %79 = load ptr, ptr %40, align 8
  %80 = getelementptr i8, ptr %79, i32 1464
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %80, i32 0) #9, !srcloc !9
  %81 = getelementptr i8, ptr %0, i32 1412
  %82 = load i32, ptr %81, align 4
  %83 = load ptr, ptr %40, align 8
  %84 = getelementptr i8, ptr %83, i32 1304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 4) #9, !srcloc !9
  %85 = load ptr, ptr %40, align 8
  %86 = getelementptr i8, ptr %85, i32 1280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %86, i32 %82) #9, !srcloc !9
  %87 = load ptr, ptr %40, align 8
  %88 = getelementptr i8, ptr %87, i32 1304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %88, i32 0) #9, !srcloc !9
  %89 = getelementptr i8, ptr %0, i32 1428
  %90 = load i32, ptr %89, align 4
  %91 = load ptr, ptr %40, align 8
  %92 = getelementptr i8, ptr %91, i32 1336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 4) #9, !srcloc !9
  %93 = load ptr, ptr %40, align 8
  %94 = getelementptr i8, ptr %93, i32 1312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %94, i32 %90) #9, !srcloc !9
  %95 = load ptr, ptr %40, align 8
  %96 = getelementptr i8, ptr %95, i32 1336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %96, i32 0) #9, !srcloc !9
  %97 = getelementptr i8, ptr %0, i32 1460
  %98 = load i32, ptr %97, align 4
  %99 = load ptr, ptr %40, align 8
  %100 = getelementptr i8, ptr %99, i32 1464
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %100, i32 4) #9, !srcloc !9
  %101 = load ptr, ptr %40, align 8
  %102 = getelementptr i8, ptr %101, i32 1440
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %102, i32 %98) #9, !srcloc !9
  %103 = load ptr, ptr %40, align 8
  %104 = getelementptr i8, ptr %103, i32 1464
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %104, i32 0) #9, !srcloc !9
  %105 = getelementptr i8, ptr %0, i32 1444
  %106 = load i32, ptr %105, align 4
  %107 = load ptr, ptr %40, align 8
  %108 = getelementptr i8, ptr %107, i32 1432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %108, i32 4) #9, !srcloc !9
  %109 = load ptr, ptr %40, align 8
  %110 = getelementptr i8, ptr %109, i32 1408
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %110, i32 %106) #9, !srcloc !9
  %111 = load ptr, ptr %40, align 8
  %112 = getelementptr i8, ptr %111, i32 1432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %112, i32 0) #9, !srcloc !9
  tail call fastcc void @hix5hd2_rx_refill(ptr noundef %2)
  %113 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  %114 = load ptr, ptr %113, align 64
  %115 = getelementptr inbounds %struct.netdev_queue, ptr %114, i32 0, i32 12
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %115) #9
  %116 = getelementptr inbounds %struct.netdev_queue, ptr %114, i32 0, i32 14
  tail call void @dql_reset(ptr noundef %116) #9
  %117 = load ptr, ptr %113, align 64
  %118 = getelementptr inbounds %struct.netdev_queue, ptr %117, i32 0, i32 12
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %118) #9
  %119 = getelementptr i8, ptr %0, i32 9744
  tail call void @napi_enable(ptr noundef %119) #9
  %120 = load ptr, ptr %40, align 8
  %121 = getelementptr i8, ptr %120, i32 1484
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %121, i32 15) #9, !srcloc !9
  %122 = load ptr, ptr %40, align 8
  %123 = getelementptr i8, ptr %122, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %123, i32 6) #9, !srcloc !9
  %124 = load ptr, ptr %40, align 8
  %125 = getelementptr i8, ptr %124, i32 1476
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %125, i32 805961728) #9, !srcloc !9
  br label %126

126:                                              ; preds = %39, %36, %27, %14
  %127 = phi i32 [ %12, %14 ], [ %25, %27 ], [ 0, %39 ], [ -19, %36 ]
  ret i32 %127
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_connect(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hix5hd2_adjust_link(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %0, i32 9700
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.phy_device, ptr %3, i32 0, i32 8
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %5, %7
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.phy_device, ptr %3, i32 0, i32 9
  %11 = load i32, ptr %10, align 4
  br label %18

12:                                               ; preds = %1
  %13 = getelementptr i8, ptr %0, i32 9704
  %14 = load i32, ptr %13, align 8
  %15 = getelementptr inbounds %struct.phy_device, ptr %3, i32 0, i32 9
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %14, %16
  br i1 %17, label %60, label %18

18:                                               ; preds = %12, %9
  %19 = phi i32 [ %11, %9 ], [ %16, %12 ]
  store i32 %7, ptr %4, align 4
  %20 = getelementptr i8, ptr %0, i32 9704
  store i32 %19, ptr %20, align 8
  %21 = getelementptr i8, ptr %0, i32 9692
  %22 = load i32, ptr %21, align 4
  switch i32 %22, label %31 [
    i32 9, label %23
    i32 2, label %28
  ]

23:                                               ; preds = %18
  %24 = icmp eq i32 %7, 100
  %25 = select i1 %24, i32 47, i32 45
  %26 = icmp eq i32 %7, 1000
  %27 = select i1 %26, i32 44, i32 %25
  br label %32

28:                                               ; preds = %18
  %29 = icmp eq i32 %7, 100
  %30 = select i1 %29, i32 15, i32 13
  br label %32

31:                                               ; preds = %18
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %0, ptr noundef nonnull @.str.18) #10
  br label %32

32:                                               ; preds = %31, %28, %23
  %33 = phi i32 [ 13, %31 ], [ %30, %28 ], [ %27, %23 ]
  %34 = icmp eq i32 %19, 0
  %35 = or i32 %33, 16
  %36 = select i1 %34, i32 %33, i32 %35
  %37 = getelementptr i8, ptr %0, i32 1484
  %38 = load ptr, ptr %37, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %36) #9, !srcloc !9
  %39 = getelementptr i8, ptr %0, i32 9720
  %40 = load ptr, ptr %39, align 8
  %41 = icmp eq ptr %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %32
  %43 = tail call i32 @reset_control_assert(ptr noundef nonnull %40) #9
  %44 = load ptr, ptr %39, align 8
  %45 = tail call i32 @reset_control_deassert(ptr noundef %44) #9
  br label %46

46:                                               ; preds = %42, %32
  %47 = getelementptr i8, ptr %0, i32 1480
  %48 = load ptr, ptr %47, align 8
  %49 = getelementptr i8, ptr %48, i32 436
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 1) #9, !srcloc !9
  %50 = icmp eq i32 %7, 100
  %51 = zext i1 %50 to i32
  %52 = icmp eq i32 %7, 1000
  %53 = select i1 %52, i32 5, i32 %51
  %54 = load ptr, ptr %47, align 8
  %55 = getelementptr i8, ptr %54, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %53) #9, !srcloc !9
  %56 = load ptr, ptr %47, align 8
  %57 = getelementptr i8, ptr %56, i32 436
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 0) #9, !srcloc !9
  %58 = load ptr, ptr %47, align 8
  %59 = getelementptr i8, ptr %58, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %19) #9, !srcloc !9
  tail call void @phy_print_status(ptr noundef %3) #9
  br label %60

60:                                               ; preds = %46, %12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @hix5hd2_rx_refill(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.hix5hd2_priv, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 1288
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #9, !srcloc !8
  %6 = lshr i32 %5, 5
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr i8, ptr %7, i32 1292
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #9, !srcloc !8
  %10 = lshr i32 %9, 5
  %11 = xor i32 %6, -1
  %12 = add nsw i32 %10, %11
  %13 = and i32 %12, 1023
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %68, label %15

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.hix5hd2_priv, ptr %0, i32 0, i32 7
  %17 = getelementptr inbounds %struct.hix5hd2_priv, ptr %0, i32 0, i32 6
  br label %18

18:                                               ; preds = %60, %15
  %19 = phi i32 [ 0, %15 ], [ %66, %60 ]
  %20 = phi i32 [ %6, %15 ], [ %65, %60 ]
  %21 = getelementptr %struct.hix5hd2_priv, ptr %0, i32 0, i32 5, i32 %20
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %68

24:                                               ; preds = %18
  %25 = load ptr, ptr %16, align 4
  %26 = tail call ptr @__netdev_alloc_skb(ptr noundef %25, i32 noundef 1602, i32 noundef 2592) #9
  %27 = icmp eq ptr %26, null
  br i1 %27, label %68, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 17
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr i8, ptr %30, i32 2
  store ptr %31, ptr %29, align 4
  %32 = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 14
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr i8, ptr %33, i32 2
  store ptr %34, ptr %32, align 8
  %35 = load ptr, ptr %17, align 8
  %36 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %31) #9
  %37 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %38 = xor i1 %37, true
  %39 = select i1 %36, i1 %38, i1 false
  br i1 %39, label %40, label %49, !prof !11

40:                                               ; preds = %28
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %41 = tail call ptr @dev_driver_string(ptr noundef %35) #9
  %42 = getelementptr inbounds %struct.device, ptr %35, i32 0, i32 3
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load ptr, ptr %35, align 4
  br label %47

47:                                               ; preds = %45, %40
  %48 = phi ptr [ %46, %45 ], [ %43, %40 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.20, ptr noundef %41, ptr noundef %48) #9
  br label %49

49:                                               ; preds = %47, %28
  br i1 %36, label %59, label %50

50:                                               ; preds = %49
  %51 = load ptr, ptr @mem_map, align 4
  %52 = ptrtoint ptr %31 to i32
  %53 = add i32 %52, 1073741824
  %54 = lshr i32 %53, 12
  %55 = getelementptr %struct.page, ptr %51, i32 %54
  %56 = and i32 %52, 4095
  %57 = tail call i32 @dma_map_page_attrs(ptr noundef %35, ptr noundef %55, i32 noundef %56, i32 noundef 1600, i32 noundef 2, i32 noundef 0) #9
  %58 = icmp eq i32 %57, -1
  br i1 %58, label %59, label %60

59:                                               ; preds = %50, %49
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %26, i32 noundef 1) #9
  br label %68

60:                                               ; preds = %50
  %61 = load ptr, ptr %0, align 8
  %62 = getelementptr %struct.hix5hd2_desc, ptr %61, i32 %20
  store i32 %57, ptr %62, align 32
  store ptr %26, ptr %21, align 4
  %63 = getelementptr %struct.hix5hd2_desc, ptr %61, i32 %20, i32 1
  store i32 1599, ptr %63, align 4
  %64 = add nuw nsw i32 %20, 1
  %65 = and i32 %64, 1023
  %66 = add nuw nsw i32 %19, 1
  %67 = icmp eq i32 %66, %13
  br i1 %67, label %68, label %18

68:                                               ; preds = %60, %59, %24, %18, %1
  %69 = phi i32 [ %20, %59 ], [ %6, %1 ], [ %20, %18 ], [ %65, %60 ], [ %20, %24 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  %70 = icmp eq i32 %69, %6
  br i1 %70, label %75, label %71

71:                                               ; preds = %68
  %72 = shl nuw i32 %69, 5
  %73 = load ptr, ptr %2, align 8
  %74 = getelementptr i8, ptr %73, i32 1288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 %72) #9, !srcloc !9
  br label %75

75:                                               ; preds = %71, %68
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_print_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

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
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dql_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hix5hd2_net_xmit(ptr noundef %0, ptr nocapture noundef %1) #2 {
  %3 = getelementptr i8, ptr %1, i32 1408
  %4 = getelementptr i8, ptr %1, i32 1480
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %5, i32 1416
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #9, !srcloc !8
  %8 = lshr i32 %7, 5
  %9 = getelementptr %struct.hix5hd2_priv, ptr %3, i32 0, i32 4, i32 %8
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %22, label %12, !prof !16

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 7
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, 1
  store i32 %15, ptr %13, align 4
  %16 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 18
  %17 = load i32, ptr %16, align 8
  %18 = add i32 %17, 1
  store i32 %18, ptr %16, align 8
  %19 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 87
  %20 = load ptr, ptr %19, align 64
  %21 = getelementptr inbounds %struct.netdev_queue, ptr %20, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %21) #9
  br label %215

22:                                               ; preds = %2
  %23 = getelementptr i8, ptr %1, i32 1440
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr %struct.hix5hd2_desc, ptr %24, i32 %8
  %26 = getelementptr i8, ptr %1, i32 9696
  %27 = load i32, ptr %26, align 8
  %28 = and i32 %27, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %42, label %30

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.skb_shared_info, ptr %32, i32 0, i32 2
  %34 = load i8, ptr %33, align 2
  %35 = icmp eq i8 %34, 0
  %36 = select i1 %35, i32 0, i32 1073741824
  %37 = zext i8 %34 to i32
  %38 = shl nuw nsw i32 %37, 11
  %39 = or i32 %36, %38
  %40 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %41 = load i32, ptr %40, align 8
  br label %47

42:                                               ; preds = %22
  %43 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %44 = load i32, ptr %43, align 8
  %45 = and i32 %44, 2047
  %46 = or i32 %45, 1610612736
  br label %47

47:                                               ; preds = %42, %30
  %48 = phi i32 [ %41, %30 ], [ %44, %42 ]
  %49 = phi i32 [ %39, %30 ], [ %46, %42 ]
  %50 = shl i32 %48, 16
  %51 = and i32 %50, 134152192
  %52 = or i32 %49, %51
  %53 = or i32 %52, -2147483648
  %54 = getelementptr %struct.hix5hd2_desc, ptr %24, i32 %8, i32 1
  store i32 %53, ptr %54, align 4
  %55 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.skb_shared_info, ptr %56, i32 0, i32 2
  %58 = load i8, ptr %57, align 2
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %137, label %60

60:                                               ; preds = %47
  %61 = getelementptr i8, ptr %1, i32 1472
  %62 = load ptr, ptr %61, align 8
  %63 = getelementptr %struct.sg_desc, ptr %62, i32 %8
  %64 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %65 = load i32, ptr %64, align 8
  store i32 %65, ptr %63, align 4
  %66 = getelementptr i8, ptr %1, i32 9680
  %67 = load ptr, ptr %66, align 8
  %68 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %69 = load ptr, ptr %68, align 4
  %70 = load i32, ptr %64, align 8
  %71 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %72 = load i32, ptr %71, align 4
  %73 = sub i32 %70, %72
  %74 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %69) #9
  %75 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %76 = xor i1 %75, true
  %77 = select i1 %74, i1 %76, i1 false
  br i1 %77, label %78, label %87, !prof !11

78:                                               ; preds = %60
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %79 = tail call ptr @dev_driver_string(ptr noundef %67) #9
  %80 = getelementptr inbounds %struct.device, ptr %67, i32 0, i32 3
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = load ptr, ptr %67, align 4
  br label %85

85:                                               ; preds = %83, %78
  %86 = phi ptr [ %84, %83 ], [ %81, %78 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.20, ptr noundef %79, ptr noundef %86) #9
  br label %87

87:                                               ; preds = %85, %60
  br i1 %74, label %128, label %88

88:                                               ; preds = %87
  %89 = load ptr, ptr @mem_map, align 4
  %90 = ptrtoint ptr %69 to i32
  %91 = add i32 %90, 1073741824
  %92 = lshr i32 %91, 12
  %93 = getelementptr %struct.page, ptr %89, i32 %92
  %94 = and i32 %90, 4095
  %95 = tail call i32 @dma_map_page_attrs(ptr noundef %67, ptr noundef %93, i32 noundef %94, i32 noundef %73, i32 noundef 1, i32 noundef 0) #9
  %96 = icmp eq i32 %95, -1
  br i1 %96, label %128, label %97

97:                                               ; preds = %88
  %98 = getelementptr %struct.sg_desc, ptr %62, i32 %8, i32 2
  store i32 %95, ptr %98, align 4
  %99 = load i32, ptr %64, align 8
  %100 = load i32, ptr %71, align 4
  %101 = sub i32 %99, %100
  %102 = getelementptr %struct.sg_desc, ptr %62, i32 %8, i32 3
  store i32 %101, ptr %102, align 4
  %103 = load ptr, ptr %55, align 4
  %104 = getelementptr inbounds %struct.skb_shared_info, ptr %103, i32 0, i32 2
  %105 = load i8, ptr %104, align 2
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %132, label %107

107:                                              ; preds = %119, %97
  %108 = phi ptr [ %123, %119 ], [ %103, %97 ]
  %109 = phi i32 [ %122, %119 ], [ 0, %97 ]
  %110 = getelementptr %struct.skb_shared_info, ptr %108, i32 0, i32 12, i32 %109
  %111 = getelementptr %struct.skb_shared_info, ptr %108, i32 0, i32 12, i32 %109, i32 1
  %112 = load i32, ptr %111, align 4
  %113 = load ptr, ptr %66, align 8
  %114 = load ptr, ptr %110, align 4
  %115 = getelementptr %struct.skb_shared_info, ptr %108, i32 0, i32 12, i32 %109, i32 2
  %116 = load i32, ptr %115, align 4
  %117 = tail call i32 @dma_map_page_attrs(ptr noundef %113, ptr noundef %114, i32 noundef %116, i32 noundef %112, i32 noundef 1, i32 noundef 0) #9
  %118 = icmp eq i32 %117, -1
  br i1 %118, label %128, label %119, !prof !11

119:                                              ; preds = %107
  %120 = getelementptr %struct.sg_desc, ptr %62, i32 %8, i32 4, i32 %109
  store i32 %117, ptr %120, align 4
  %121 = getelementptr %struct.sg_desc, ptr %62, i32 %8, i32 4, i32 %109, i32 1
  store i32 %112, ptr %121, align 4
  %122 = add nuw nsw i32 %109, 1
  %123 = load ptr, ptr %55, align 4
  %124 = getelementptr inbounds %struct.skb_shared_info, ptr %123, i32 0, i32 2
  %125 = load i8, ptr %124, align 2
  %126 = zext i8 %125 to i32
  %127 = icmp ult i32 %122, %126
  br i1 %127, label %107, label %132

128:                                              ; preds = %107, %88, %87
  tail call void @__dev_kfree_skb_any(ptr noundef %0, i32 noundef 1) #9
  %129 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 7
  %130 = load i32, ptr %129, align 4
  %131 = add i32 %130, 1
  store i32 %131, ptr %129, align 4
  br label %215

132:                                              ; preds = %119, %97
  %133 = getelementptr i8, ptr %1, i32 1476
  %134 = load i32, ptr %133, align 4
  %135 = mul i32 %8, 160
  %136 = add i32 %134, %135
  br label %171

137:                                              ; preds = %47
  %138 = getelementptr i8, ptr %1, i32 9680
  %139 = load ptr, ptr %138, align 8
  %140 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %141 = load ptr, ptr %140, align 4
  %142 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %143 = load i32, ptr %142, align 8
  %144 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %141) #9
  %145 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %146 = xor i1 %145, true
  %147 = select i1 %144, i1 %146, i1 false
  br i1 %147, label %148, label %157, !prof !11

148:                                              ; preds = %137
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %149 = tail call ptr @dev_driver_string(ptr noundef %139) #9
  %150 = getelementptr inbounds %struct.device, ptr %139, i32 0, i32 3
  %151 = load ptr, ptr %150, align 4
  %152 = icmp eq ptr %151, null
  br i1 %152, label %153, label %155

153:                                              ; preds = %148
  %154 = load ptr, ptr %139, align 4
  br label %155

155:                                              ; preds = %153, %148
  %156 = phi ptr [ %154, %153 ], [ %151, %148 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.20, ptr noundef %149, ptr noundef %156) #9
  br label %157

157:                                              ; preds = %155, %137
  br i1 %144, label %167, label %158

158:                                              ; preds = %157
  %159 = load ptr, ptr @mem_map, align 4
  %160 = ptrtoint ptr %141 to i32
  %161 = add i32 %160, 1073741824
  %162 = lshr i32 %161, 12
  %163 = getelementptr %struct.page, ptr %159, i32 %162
  %164 = and i32 %160, 4095
  %165 = tail call i32 @dma_map_page_attrs(ptr noundef %139, ptr noundef %163, i32 noundef %164, i32 noundef %143, i32 noundef 1, i32 noundef 0) #9
  %166 = icmp eq i32 %165, -1
  br i1 %166, label %167, label %171

167:                                              ; preds = %158, %157
  tail call void @__dev_kfree_skb_any(ptr noundef %0, i32 noundef 1) #9
  %168 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 7
  %169 = load i32, ptr %168, align 4
  %170 = add i32 %169, 1
  store i32 %170, ptr %168, align 4
  br label %215

171:                                              ; preds = %158, %132
  %172 = phi i32 [ %136, %132 ], [ %165, %158 ]
  store i32 %172, ptr %25, align 32
  store ptr %0, ptr %9, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %173 = add i32 %7, 32
  %174 = and i32 %173, 32736
  %175 = load ptr, ptr %4, align 8
  %176 = getelementptr i8, ptr %175, i32 1416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %176, i32 %174) #9, !srcloc !9
  %177 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 87
  %178 = load ptr, ptr %177, align 64
  %179 = load volatile i32, ptr @jiffies, align 64
  %180 = getelementptr inbounds %struct.netdev_queue, ptr %178, i32 0, i32 11
  %181 = load volatile i32, ptr %180, align 8
  %182 = icmp eq i32 %181, %179
  br i1 %182, label %185, label %183

183:                                              ; preds = %171
  store volatile i32 %179, ptr %180, align 8
  %184 = load ptr, ptr %177, align 64
  br label %185

185:                                              ; preds = %183, %171
  %186 = phi ptr [ %178, %171 ], [ %184, %183 ]
  %187 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 1
  %188 = load i32, ptr %187, align 4
  %189 = add i32 %188, 1
  store i32 %189, ptr %187, align 4
  %190 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %191 = load i32, ptr %190, align 8
  %192 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 3
  %193 = load i32, ptr %192, align 4
  %194 = add i32 %193, %191
  store i32 %194, ptr %192, align 4
  %195 = load i32, ptr %190, align 8
  %196 = getelementptr inbounds %struct.netdev_queue, ptr %186, i32 0, i32 14
  %197 = icmp ugt i32 %195, 268435455
  br i1 %197, label %198, label %199, !prof !11

198:                                              ; preds = %185
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/dynamic_queue_limits.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #9, !srcloc !18
  unreachable

199:                                              ; preds = %185
  %200 = getelementptr inbounds %struct.netdev_queue, ptr %186, i32 0, i32 14, i32 2
  store i32 %195, ptr %200, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !19
  %201 = load i32, ptr %196, align 64
  %202 = add i32 %201, %195
  store i32 %202, ptr %196, align 64
  %203 = getelementptr inbounds %struct.netdev_queue, ptr %186, i32 0, i32 14, i32 1
  %204 = load volatile i32, ptr %203, align 4
  %205 = load volatile i32, ptr %196, align 64
  %206 = sub i32 %204, %205
  %207 = icmp sgt i32 %206, -1
  br i1 %207, label %215, label %208, !prof !16

208:                                              ; preds = %199
  %209 = getelementptr inbounds %struct.netdev_queue, ptr %186, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 1, ptr noundef %209) #9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !20
  %210 = load volatile i32, ptr %203, align 4
  %211 = load volatile i32, ptr %196, align 64
  %212 = sub i32 %210, %211
  %213 = icmp sgt i32 %212, -1
  br i1 %213, label %214, label %215, !prof !11

214:                                              ; preds = %208
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %209) #9
  br label %215

215:                                              ; preds = %214, %208, %199, %167, %128, %12
  %216 = phi i32 [ 16, %12 ], [ 0, %128 ], [ 0, %167 ], [ 0, %199 ], [ 0, %208 ], [ 0, %214 ]
  ret i32 %216
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hix5hd2_net_set_mac_address(ptr noundef %0, ptr noundef %1) #2 {
  %3 = tail call i32 @eth_mac_addr(ptr noundef %0, ptr noundef %1) #9
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %37

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 72
  %7 = load ptr, ptr %6, align 32
  %8 = getelementptr i8, ptr %7, i32 1
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  %11 = load i8, ptr %7, align 1
  %12 = zext i8 %11 to i32
  %13 = shl nuw nsw i32 %12, 8
  %14 = or i32 %13, %10
  %15 = getelementptr i8, ptr %0, i32 1480
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr i8, ptr %16, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %14) #9, !srcloc !9
  %18 = getelementptr i8, ptr %7, i32 5
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i32
  %21 = getelementptr i8, ptr %7, i32 4
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i32
  %24 = shl nuw nsw i32 %23, 8
  %25 = or i32 %24, %20
  %26 = getelementptr i8, ptr %7, i32 3
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i32
  %29 = shl nuw nsw i32 %28, 16
  %30 = or i32 %25, %29
  %31 = getelementptr i8, ptr %7, i32 2
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  %34 = shl nuw i32 %33, 24
  %35 = or i32 %30, %34
  %36 = load ptr, ptr %15, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %35) #9, !srcloc !9
  br label %37

37:                                               ; preds = %5, %2
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hix5hd2_net_timeout(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 9960
  %4 = load ptr, ptr @system_wq, align 4
  %5 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %4, ptr noundef %3) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_get_link_ksettings(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_set_link_ksettings(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dql_completed(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_schedule_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @napi_gro_receive(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netif_napi_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }

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
!8 = !{i64 3491150}
!9 = !{i64 3490732}
!10 = !{!"auto-init"}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 2154471496}
!13 = !{!"branch_weights", i32 4001, i32 1}
!14 = !{i64 2155347403}
!15 = !{i64 2155346463}
!16 = !{!"branch_weights", i32 2000, i32 1}
!17 = !{i64 2155354116}
!18 = !{i64 2153673186, i64 2153673686, i64 2153673223, i64 2153673279, i64 2153673313, i64 2153673337, i64 2153673378, i64 2153673399, i64 2153673427, i64 2153673461}
!19 = !{i64 2153673966}
!20 = !{i64 2154470451}
