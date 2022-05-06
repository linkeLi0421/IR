; ModuleID = '/llk/IR/drivers/net/ethernet/marvell/pxa168_eth.c_pt.bc'
source_filename = "../drivers/net/ethernet/marvell/pxa168_eth.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.120, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.137, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.120 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.ref_tracker_dir = type {}
%struct.possible_net_t = type {}
%union.anon.137 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.pxa168_eth_platform_data = type { i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.netdev_queue = type { ptr, %struct.netdevice_tracker, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, [4 x i8], %struct.spinlock, i32, i32, i32, [48 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [52 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [24 x i8] }
%struct.rx_desc = type { i32, i16, i16, i32, i32 }
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
%struct.pxa168_eth_private = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, i32, i32, ptr, %struct.work_struct, ptr, %struct.napi_struct, i8, i32, i32, i32, i32, i32, %struct.timer_list, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.136, i32 }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.anon.136 = type { [3 x i32], [3 x i32], [3 x i32] }
%struct.tx_desc = type { i32, i16, i16, i32, i32 }
%struct.page = type { i32, %union.anon.1, %union.anon.114, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.114 = type { %struct.atomic_t }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.addr_table_entry = type { i32, i32 }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }

@pxa168_eth_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,pxa168-eth\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_license448 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description449 = internal constant [47 x i8] c"description=Ethernet driver for Marvell PXA168\00", section ".modinfo", align 1
@__UNIQUE_ID_alias450 = internal constant [26 x i8] c"alias=platform:pxa168_eth\00", section ".modinfo", align 1
@pxa168_eth_driver = internal global %struct.platform_driver { ptr @pxa168_eth_probe, ptr @pxa168_eth_remove, ptr @pxa168_eth_shutdown, ptr @pxa168_eth_suspend, ptr @pxa168_eth_resume, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @pxa168_eth_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [11 x i8] c"pxa168-eth\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"\015PXA168 10/100 Ethernet Driver\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Fast Ethernet failed to get clock\0A\00", align 1
@pxa168_eth_netdev_ops = internal constant %struct.net_device_ops { ptr null, ptr null, ptr @pxa168_eth_open, ptr @pxa168_eth_stop, ptr @pxa168_eth_start_xmit, ptr null, ptr null, ptr null, ptr @pxa168_eth_set_rx_mode, ptr @pxa168_eth_set_mac_address, ptr @eth_validate_addr, ptr null, ptr @phy_do_ioctl, ptr null, ptr null, ptr null, ptr null, ptr @pxa168_eth_change_mtu, ptr null, ptr @pxa168_eth_tx_timeout, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@pxa168_ethtool_ops = internal constant %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @pxa168_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @phy_ethtool_nway_reset, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ethtool_op_get_ts_info, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @phy_ethtool_get_link_ksettings, ptr @phy_ethtool_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Using random mac address\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"port-id\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"phy-handle\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"missing phy-handle\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"pxa168_eth smi\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%s-%d\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"can't assign irq\0A\00", align 1
@phy_basic_features = external dso_local local_unnamed_addr global [3 x i32], section ".data..ro_after_init", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"include/linux/dma-mapping.h\00", align 1
@.str.12 = private unnamed_addr constant [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.13 = private unnamed_addr constant [42 x i8] c"Error in freeing Rx Ring. %d skb's still\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.14 = private unnamed_addr constant [16 x i8] c"%s : DMA Stuck\0A\00", align 1
@__func__.abort_dma = private unnamed_addr constant [10 x i8] c"abort_dma\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"Error in TX\0A\00", align 1
@.str.16 = private unnamed_addr constant [65 x i8] c"%s: table section is full, need to move to 16kB implementation?\0A\00", align 1
@.str.17 = private unnamed_addr constant [42 x i8] c"drivers/net/ethernet/marvell/pxa168_eth.c\00", align 1
@.str.18 = private unnamed_addr constant [51 x i8] c"fatal error on re-opening device after MTU change\0A\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"TX timeout  desc_count %d\0A\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.20 = private unnamed_addr constant [4 x i8] c"0.3\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"N/A\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"Rx pkt on multiple desc\0A\00", align 1
@.str.23 = private unnamed_addr constant [34 x i8] c"pxa168_eth: SMI bus busy timeout\0A\00", align 1
@.str.24 = private unnamed_addr constant [36 x i8] c"pxa168_eth: SMI bus read not valid\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_alias450, ptr @__UNIQUE_ID_description449, ptr @__UNIQUE_ID_license448], section "llvm.metadata"

@__mod_of__pxa168_eth_of_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @pxa168_eth_of_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @pxa168_eth_driver, ptr noundef nonnull @__this_module) #15
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @pxa168_eth_driver) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pxa168_eth_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.of_phandle_args, align 4
  %3 = alloca [6 x i8], align 4
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #16
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %6 = tail call ptr @devm_clk_get(ptr noundef %5, ptr noundef null) #15
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.2) #16
  br label %230

9:                                                ; preds = %1
  %10 = tail call i32 @clk_prepare(ptr noundef %6) #15
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = tail call i32 @clk_enable(ptr noundef %6) #15
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  tail call void @clk_unprepare(ptr noundef %6) #15
  br label %16

16:                                               ; preds = %15, %12, %9
  %17 = tail call ptr @alloc_etherdev_mqs(i32 noundef 384, i32 noundef 1, i32 noundef 1) #15
  %18 = icmp eq ptr %17, null
  br i1 %18, label %228, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %17, ptr %20, align 8
  %21 = getelementptr i8, ptr %17, i32 1408
  %22 = getelementptr i8, ptr %17, i32 1500
  store ptr %17, ptr %22, align 4
  %23 = getelementptr i8, ptr %17, i32 1768
  store ptr %6, ptr %23, align 8
  %24 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #15
  %25 = getelementptr i8, ptr %17, i32 1776
  store ptr %24, ptr %25, align 8
  %26 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = ptrtoint ptr %24 to i32
  br label %226

29:                                               ; preds = %19
  %30 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #15
  %31 = icmp eq i32 %30, -517
  br i1 %31, label %226, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 59
  %34 = load i32, ptr %33, align 8
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37, !prof !8

36:                                               ; preds = %32
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/marvell/pxa168_eth.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1424, 0\0A.popsection", ""() #15, !srcloc !9
  unreachable

37:                                               ; preds = %32
  store i32 %30, ptr %33, align 8
  %38 = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 16
  store ptr @pxa168_eth_netdev_ops, ptr %38, align 8
  %39 = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 96
  store i32 200, ptr %39, align 8
  %40 = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 5
  store i32 0, ptr %40, align 32
  %41 = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 42
  store ptr @pxa168_ethtool_ops, ptr %41, align 8
  %42 = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 30
  store i32 68, ptr %42, align 8
  %43 = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 31
  store i32 9500, ptr %43, align 4
  %44 = getelementptr i8, ptr %17, i32 1484
  store i32 -32, ptr %44, align 4
  %45 = getelementptr i8, ptr %17, i32 1488
  store volatile ptr %45, ptr %45, align 4
  %46 = getelementptr i8, ptr %17, i32 1492
  store ptr %45, ptr %46, align 4
  %47 = getelementptr i8, ptr %17, i32 1496
  store ptr @pxa168_eth_tx_timeout_task, ptr %47, align 4
  %48 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %49 = load ptr, ptr %48, align 8
  %50 = tail call i32 @of_get_ethdev_address(ptr noundef %49, ptr noundef nonnull %17) #15
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %85, label %52

52:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #15
  %53 = load ptr, ptr %25, align 8
  %54 = getelementptr i8, ptr %53, i32 1080
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #15, !srcloc !10
  %56 = load ptr, ptr %25, align 8
  %57 = getelementptr i8, ptr %56, i32 1072
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #15, !srcloc !10
  %59 = lshr i32 %55, 24
  %60 = trunc i32 %59 to i8
  store i8 %60, ptr %3, align 4
  %61 = lshr i32 %55, 16
  %62 = trunc i32 %61 to i8
  %63 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 %62, ptr %63, align 1
  %64 = lshr i32 %55, 8
  %65 = trunc i32 %64 to i8
  %66 = getelementptr inbounds i8, ptr %3, i32 2
  store i8 %65, ptr %66, align 2
  %67 = trunc i32 %55 to i8
  %68 = getelementptr inbounds i8, ptr %3, i32 3
  store i8 %67, ptr %68, align 1
  %69 = lshr i32 %58, 8
  %70 = trunc i32 %69 to i8
  %71 = getelementptr inbounds i8, ptr %3, i32 4
  store i8 %70, ptr %71, align 4
  %72 = trunc i32 %58 to i8
  %73 = getelementptr inbounds i8, ptr %3, i32 5
  store i8 %72, ptr %73, align 1
  %74 = load i32, ptr %3, align 4
  %75 = and i32 %74, 1
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %52
  %78 = load i16, ptr %71, align 4
  %79 = zext i16 %78 to i32
  %80 = or i32 %74, %79
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %77
  call void @dev_addr_mod(ptr noundef nonnull %17, i32 noundef 0, ptr noundef nonnull %3, i32 noundef 6) #15
  br label %84

83:                                               ; preds = %77, %52
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.3) #16
  tail call fastcc void @eth_hw_addr_random(ptr noundef nonnull %17)
  br label %84

84:                                               ; preds = %83, %82
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #15
  br label %85

85:                                               ; preds = %84, %37
  %86 = getelementptr i8, ptr %17, i32 1736
  store i32 64, ptr %86, align 8
  %87 = getelementptr i8, ptr %17, i32 1728
  store i32 64, ptr %87, align 8
  %88 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %89 = load ptr, ptr %88, align 4
  %90 = getelementptr i8, ptr %17, i32 1772
  store ptr %89, ptr %90, align 4
  %91 = icmp eq ptr %89, null
  br i1 %91, label %122, label %92

92:                                               ; preds = %85
  %93 = getelementptr inbounds %struct.pxa168_eth_platform_data, ptr %89, i32 0, i32 5
  %94 = load i32, ptr %93, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %92
  store i32 %94, ptr %86, align 8
  br label %97

97:                                               ; preds = %96, %92
  %98 = getelementptr inbounds %struct.pxa168_eth_platform_data, ptr %89, i32 0, i32 6
  %99 = load i32, ptr %98, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %97
  store i32 %99, ptr %87, align 8
  br label %102

102:                                              ; preds = %101, %97
  %103 = load i32, ptr %89, align 4
  %104 = getelementptr i8, ptr %17, i32 1412
  store i32 %103, ptr %104, align 4
  %105 = getelementptr inbounds %struct.pxa168_eth_platform_data, ptr %89, i32 0, i32 1
  %106 = load i32, ptr %105, align 4
  %107 = getelementptr i8, ptr %17, i32 1416
  store i32 %106, ptr %107, align 8
  %108 = getelementptr inbounds %struct.pxa168_eth_platform_data, ptr %89, i32 0, i32 2
  %109 = load i32, ptr %108, align 4
  %110 = getelementptr i8, ptr %17, i32 1420
  store i32 %109, ptr %110, align 4
  %111 = getelementptr inbounds %struct.pxa168_eth_platform_data, ptr %89, i32 0, i32 3
  %112 = load i32, ptr %111, align 4
  %113 = getelementptr i8, ptr %17, i32 1424
  store i32 %112, ptr %113, align 8
  %114 = getelementptr inbounds %struct.pxa168_eth_platform_data, ptr %89, i32 0, i32 4
  %115 = load i32, ptr %114, align 4
  %116 = getelementptr i8, ptr %17, i32 1428
  store i32 %115, ptr %116, align 4
  %117 = getelementptr inbounds %struct.pxa168_eth_platform_data, ptr %89, i32 0, i32 7
  %118 = load ptr, ptr %117, align 4
  %119 = icmp eq ptr %118, null
  br i1 %119, label %141, label %120

120:                                              ; preds = %102
  %121 = call i32 %118() #15
  br label %141

122:                                              ; preds = %85
  %123 = load ptr, ptr %48, align 8
  %124 = icmp eq ptr %123, null
  br i1 %124, label %141, label %125

125:                                              ; preds = %122
  %126 = getelementptr i8, ptr %17, i32 1412
  %127 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %123, ptr noundef nonnull @.str.4, ptr noundef %126, i32 noundef 1, i32 noundef 0) #15
  %128 = load ptr, ptr %48, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false) #15, !annotation !11
  %129 = call i32 @__of_parse_phandle_with_args(ptr noundef %128, ptr noundef nonnull @.str.5, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %2) #15
  %130 = icmp ne i32 %129, 0
  %131 = load ptr, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #15
  %132 = icmp eq ptr %131, null
  %133 = select i1 %130, i1 true, i1 %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %125
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.6) #16
  br label %226

135:                                              ; preds = %125
  %136 = getelementptr i8, ptr %17, i32 1416
  %137 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %131, ptr noundef nonnull @.str.7, ptr noundef %136, i32 noundef 1, i32 noundef 0) #15
  call void @of_node_put(ptr noundef nonnull %131) #15
  %138 = load ptr, ptr %48, align 8
  %139 = getelementptr i8, ptr %17, i32 1428
  %140 = call i32 @of_get_phy_mode(ptr noundef %138, ptr noundef %139) #15
  switch i32 %140, label %226 [
    i32 -19, label %141
    i32 0, label %141
  ]

141:                                              ; preds = %135, %135, %122, %120, %102
  %142 = getelementptr i8, ptr %17, i32 1412
  %143 = load i32, ptr %142, align 4
  %144 = icmp sgt i32 %143, 2
  br i1 %144, label %145, label %146, !prof !8

145:                                              ; preds = %141
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/marvell/pxa168_eth.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1488, 0\0A.popsection", ""() #15, !srcloc !12
  unreachable

146:                                              ; preds = %141
  %147 = getelementptr i8, ptr %17, i32 1504
  %148 = load i32, ptr %86, align 8
  call void @netif_napi_add(ptr noundef nonnull %17, ptr noundef %147, ptr noundef nonnull @pxa168_rx_poll, i32 noundef %148) #15
  %149 = getelementptr i8, ptr %17, i32 1744
  call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(20) %149, i8 0, i32 20, i1 false)
  call void @init_timer_key(ptr noundef %149, ptr noundef nonnull @rxq_refill_timer_wrapper, i32 noundef 0, ptr noundef null, ptr noundef null) #15
  %150 = call ptr @mdiobus_alloc_size(i32 noundef 0) #15
  %151 = getelementptr i8, ptr %17, i32 1764
  store ptr %150, ptr %151, align 4
  %152 = icmp eq ptr %150, null
  br i1 %152, label %226, label %153

153:                                              ; preds = %146
  %154 = getelementptr inbounds %struct.mii_bus, ptr %150, i32 0, i32 3
  store ptr %21, ptr %154, align 8
  %155 = load ptr, ptr %151, align 4
  %156 = getelementptr inbounds %struct.mii_bus, ptr %155, i32 0, i32 1
  store ptr @.str.8, ptr %156, align 4
  %157 = load ptr, ptr %151, align 4
  %158 = getelementptr inbounds %struct.mii_bus, ptr %157, i32 0, i32 4
  store ptr @pxa168_smi_read, ptr %158, align 4
  %159 = load ptr, ptr %151, align 4
  %160 = getelementptr inbounds %struct.mii_bus, ptr %159, i32 0, i32 5
  store ptr @pxa168_smi_write, ptr %160, align 8
  %161 = load ptr, ptr %151, align 4
  %162 = getelementptr inbounds %struct.mii_bus, ptr %161, i32 0, i32 2
  %163 = load ptr, ptr %0, align 8
  %164 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 1
  %165 = load i32, ptr %164, align 4
  %166 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %162, i32 noundef 61, ptr noundef nonnull @.str.9, ptr noundef %163, i32 noundef %165)
  %167 = load ptr, ptr %151, align 4
  %168 = getelementptr inbounds %struct.mii_bus, ptr %167, i32 0, i32 9
  store ptr %5, ptr %168, align 4
  %169 = load ptr, ptr %151, align 4
  %170 = getelementptr inbounds %struct.mii_bus, ptr %169, i32 0, i32 13
  store i32 -1, ptr %170, align 8
  %171 = load ptr, ptr %151, align 4
  %172 = call i32 @__mdiobus_register(ptr noundef %171, ptr noundef nonnull @__this_module) #15
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %223

174:                                              ; preds = %153
  store ptr %0, ptr %21, align 8
  %175 = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 111, i32 1
  store ptr %5, ptr %175, align 4
  %176 = load ptr, ptr %25, align 8
  %177 = getelementptr i8, ptr %176, i32 1112
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %177, i32 0) #15, !srcloc !13
  %178 = load ptr, ptr %25, align 8
  %179 = getelementptr i8, ptr %178, i32 1104
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %179, i32 0) #15, !srcloc !13
  %180 = load ptr, ptr %25, align 8
  %181 = getelementptr i8, ptr %180, i32 1108
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %181, i32 0) #15, !srcloc !13
  call fastcc void @abort_dma(ptr noundef %21) #15
  %182 = getelementptr i8, ptr %17, i32 1780
  %183 = load ptr, ptr %182, align 4
  %184 = icmp eq ptr %183, null
  br i1 %184, label %185, label %192

185:                                              ; preds = %174
  %186 = load ptr, ptr %22, align 4
  %187 = getelementptr inbounds %struct.net_device, ptr %186, i32 0, i32 111, i32 1
  %188 = load ptr, ptr %187, align 4
  %189 = getelementptr i8, ptr %17, i32 1784
  %190 = call ptr @dma_alloc_attrs(ptr noundef %188, i32 noundef 16384, ptr noundef %189, i32 noundef 3264, i32 noundef 0) #15
  store ptr %190, ptr %182, align 4
  %191 = icmp eq ptr %190, null
  br i1 %191, label %218, label %193

192:                                              ; preds = %174
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16384) %183, i8 0, i32 16384, i1 false) #15
  br label %193

193:                                              ; preds = %192, %185
  %194 = getelementptr i8, ptr %17, i32 1784
  %195 = load i32, ptr %194, align 8
  %196 = load ptr, ptr %25, align 8
  %197 = getelementptr i8, ptr %196, i32 1064
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %197, i32 %195) #15, !srcloc !13
  %198 = load ptr, ptr %25, align 8
  %199 = getelementptr i8, ptr %198, i32 1088
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %199, i32 13052) #15, !srcloc !13
  %200 = load ptr, ptr %25, align 8
  %201 = getelementptr i8, ptr %200, i32 1024
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %201, i32 4096) #15, !srcloc !13
  %202 = load ptr, ptr %22, align 4
  %203 = getelementptr inbounds %struct.net_device, ptr %202, i32 0, i32 20
  %204 = load i32, ptr %203, align 4
  %205 = add i32 %204, 43
  %206 = and i32 %205, -8
  %207 = getelementptr i8, ptr %17, i32 1724
  store i32 %206, ptr %207, align 4
  %208 = icmp slt i32 %206, 1519
  br i1 %208, label %214, label %209

209:                                              ; preds = %193
  %210 = icmp ult i32 %206, 1537
  br i1 %210, label %214, label %211

211:                                              ; preds = %209
  %212 = icmp ult i32 %206, 2049
  %213 = select i1 %212, i32 271093304, i32 271109688
  br label %214

214:                                              ; preds = %211, %209, %193
  %215 = phi i32 [ 271060536, %193 ], [ 271076920, %209 ], [ %213, %211 ]
  %216 = load ptr, ptr %25, align 8
  %217 = getelementptr i8, ptr %216, i32 1032
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %217, i32 %215) #15, !srcloc !13
  br label %218

218:                                              ; preds = %214, %185
  %219 = call i32 @register_netdev(ptr noundef nonnull %17) #15
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %230, label %221

221:                                              ; preds = %218
  %222 = load ptr, ptr %151, align 4
  call void @mdiobus_unregister(ptr noundef %222) #15
  br label %223

223:                                              ; preds = %221, %153
  %224 = phi i32 [ %172, %153 ], [ %219, %221 ]
  %225 = load ptr, ptr %151, align 4
  call void @mdiobus_free(ptr noundef %225) #15
  br label %226

226:                                              ; preds = %223, %146, %135, %134, %29, %27
  %227 = phi i32 [ %28, %27 ], [ -517, %29 ], [ %224, %223 ], [ %140, %135 ], [ -22, %134 ], [ -12, %146 ]
  call void @free_netdev(ptr noundef nonnull %17) #15
  br label %228

228:                                              ; preds = %226, %16
  %229 = phi i32 [ %227, %226 ], [ -12, %16 ]
  call void @clk_disable(ptr noundef %6) #15
  call void @clk_unprepare(ptr noundef %6) #15
  br label %230

230:                                              ; preds = %228, %218, %8
  %231 = phi i32 [ -19, %8 ], [ %229, %228 ], [ 0, %218 ]
  ret i32 %231
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pxa168_eth_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 1484
  %5 = tail call zeroext i1 @cancel_work_sync(ptr noundef %4) #15
  %6 = getelementptr i8, ptr %3, i32 1780
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %1
  %10 = getelementptr i8, ptr %3, i32 1500
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 111, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %3, i32 1784
  %15 = load i32, ptr %14, align 8
  tail call void @dma_free_attrs(ptr noundef %13, i32 noundef 16384, ptr noundef nonnull %7, i32 noundef %15, i32 noundef 0) #15
  store ptr null, ptr %6, align 4
  br label %16

16:                                               ; preds = %9, %1
  %17 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 120
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void @phy_disconnect(ptr noundef nonnull %18) #15
  br label %21

21:                                               ; preds = %20, %16
  %22 = getelementptr i8, ptr %3, i32 1768
  %23 = load ptr, ptr %22, align 8
  tail call void @clk_disable(ptr noundef %23) #15
  tail call void @clk_unprepare(ptr noundef %23) #15
  %24 = getelementptr i8, ptr %3, i32 1764
  %25 = load ptr, ptr %24, align 4
  tail call void @mdiobus_unregister(ptr noundef %25) #15
  %26 = load ptr, ptr %24, align 4
  tail call void @mdiobus_free(ptr noundef %26) #15
  tail call void @unregister_netdev(ptr noundef %3) #15
  tail call void @free_netdev(ptr noundef %3) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pxa168_eth_shutdown(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 1408
  %5 = getelementptr i8, ptr %3, i32 1776
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr i8, ptr %6, i32 1112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 0) #15, !srcloc !13
  %8 = load ptr, ptr %5, align 8
  %9 = getelementptr i8, ptr %8, i32 1104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 0) #15, !srcloc !13
  %10 = load ptr, ptr %5, align 8
  %11 = getelementptr i8, ptr %10, i32 1096
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #15, !srcloc !10
  tail call fastcc void @abort_dma(ptr noundef %4) #15
  %13 = load ptr, ptr %5, align 8
  %14 = getelementptr i8, ptr %13, i32 1024
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #15, !srcloc !10
  %16 = and i32 %15, -129
  %17 = load ptr, ptr %5, align 8
  %18 = getelementptr i8, ptr %17, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #15, !srcloc !13
  %19 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 120
  %20 = load ptr, ptr %19, align 8
  tail call void @phy_stop(ptr noundef %20) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @pxa168_eth_suspend(ptr nocapture noundef readnone %0, [1 x i32] %1) #3 {
  ret i32 -38
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @pxa168_eth_resume(ptr nocapture noundef readnone %0) #3 {
  ret i32 -38
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pxa168_eth_tx_timeout_task(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @pxa168_eth_stop(ptr noundef %3)
  %5 = tail call i32 @pxa168_eth_open(ptr noundef %3)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_ethdev_address(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @eth_hw_addr_random(ptr noundef %0) unnamed_addr #8 {
  %2 = alloca [6 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %2, i8 0, i32 6, i1 false), !annotation !11
  call void @get_random_bytes(ptr noundef nonnull %2, i32 noundef 6) #15
  %3 = load i8, ptr %2, align 1
  %4 = and i8 %3, -4
  %5 = or i8 %4, 2
  store i8 %5, ptr %2, align 1
  call void @dev_addr_mod(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2, i32 noundef 6) #15
  %6 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 50
  store i8 1, ptr %6, align 8
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #15
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_phy_mode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pxa168_rx_poll(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 -4
  %4 = load ptr, ptr %3, align 4
  tail call fastcc void @txq_reclaim(ptr noundef %4, i32 noundef 0)
  %5 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 87
  %6 = load ptr, ptr %5, align 64
  %7 = getelementptr inbounds %struct.netdev_queue, ptr %6, i32 0, i32 12
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %2
  %12 = getelementptr i8, ptr %0, i32 224
  %13 = load i32, ptr %12, align 8
  %14 = getelementptr i8, ptr %0, i32 228
  %15 = load i32, ptr %14, align 4
  %16 = sub i32 %13, %15
  %17 = icmp sgt i32 %16, 1
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  tail call void @netif_tx_wake_queue(ptr noundef %6) #15
  br label %19

19:                                               ; preds = %18, %11, %2
  %20 = getelementptr i8, ptr %4, i32 1408
  %21 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 36
  %22 = getelementptr i8, ptr %4, i32 1432
  %23 = getelementptr i8, ptr %4, i32 1436
  %24 = icmp sgt i32 %1, 0
  br i1 %24, label %25, label %101

25:                                               ; preds = %19
  %26 = getelementptr i8, ptr %4, i32 1440
  %27 = getelementptr i8, ptr %4, i32 1452
  %28 = getelementptr i8, ptr %4, i32 1464
  %29 = getelementptr i8, ptr %4, i32 1736
  %30 = getelementptr i8, ptr %4, i32 1740
  %31 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 36, i32 2
  %32 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 36, i32 6
  %33 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 36, i32 4
  br label %34

34:                                               ; preds = %98, %25
  %35 = phi i32 [ 0, %25 ], [ %64, %98 ]
  %36 = load i32, ptr %22, align 8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %101

38:                                               ; preds = %34
  %39 = load i32, ptr %23, align 4
  %40 = load i32, ptr %26, align 8
  %41 = load ptr, ptr %27, align 4
  %42 = getelementptr %struct.rx_desc, ptr %41, i32 %39
  %43 = load i32, ptr %42, align 4
  tail call void asm sideeffect "dmb osh", "~{memory}"() #15, !srcloc !14
  %44 = icmp sgt i32 %43, -1
  br i1 %44, label %45, label %101

45:                                               ; preds = %38
  %46 = load ptr, ptr %28, align 8
  %47 = getelementptr ptr, ptr %46, i32 %39
  %48 = load ptr, ptr %47, align 4
  store ptr null, ptr %47, align 4
  %49 = add i32 %39, 1
  %50 = load i32, ptr %29, align 8
  %51 = srem i32 %49, %50
  store i32 %51, ptr %23, align 4
  %52 = icmp eq i32 %51, %40
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  store i32 1, ptr %22, align 8
  br label %54

54:                                               ; preds = %53, %45
  %55 = load i32, ptr %30, align 4
  %56 = add i32 %55, -1
  store i32 %56, ptr %30, align 4
  %57 = load ptr, ptr %20, align 8
  %58 = getelementptr inbounds %struct.platform_device, ptr %57, i32 0, i32 3
  %59 = getelementptr %struct.rx_desc, ptr %41, i32 %39, i32 3
  %60 = load i32, ptr %59, align 4
  %61 = getelementptr %struct.rx_desc, ptr %41, i32 %39, i32 2
  %62 = load i16, ptr %61, align 2
  %63 = zext i16 %62 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %58, i32 noundef %60, i32 noundef %63, i32 noundef 2, i32 noundef 0) #15
  %64 = add nuw nsw i32 %35, 1
  %65 = load i32, ptr %21, align 4
  %66 = add i32 %65, 1
  store i32 %66, ptr %21, align 4
  %67 = getelementptr %struct.rx_desc, ptr %41, i32 %39, i32 1
  %68 = load i16, ptr %67, align 4
  %69 = zext i16 %68 to i32
  %70 = load i32, ptr %31, align 4
  %71 = add i32 %70, %69
  store i32 %71, ptr %31, align 4
  %72 = and i32 %43, 32768
  %73 = icmp eq i32 %72, 0
  %74 = and i32 %43, 229376
  %75 = icmp eq i32 %74, 196608
  br i1 %75, label %90, label %76

76:                                               ; preds = %54
  %77 = and i32 %43, 196608
  %78 = icmp eq i32 %77, 196608
  %79 = load i32, ptr %32, align 4
  %80 = add i32 %79, 1
  store i32 %80, ptr %32, align 4
  br i1 %78, label %85, label %81

81:                                               ; preds = %76
  %82 = tail call i32 @net_ratelimit() #15
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %81
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %4, ptr noundef nonnull @.str.22) #16
  br label %85

85:                                               ; preds = %84, %81, %76
  br i1 %73, label %89, label %86

86:                                               ; preds = %85
  %87 = load i32, ptr %33, align 4
  %88 = add i32 %87, 1
  store i32 %88, ptr %33, align 4
  br label %89

89:                                               ; preds = %86, %85
  tail call void @__dev_kfree_skb_irq(ptr noundef %48, i32 noundef 1) #15
  br label %98

90:                                               ; preds = %54
  %91 = load i16, ptr %67, align 4
  %92 = zext i16 %91 to i32
  %93 = add nsw i32 %92, -4
  %94 = tail call ptr @skb_put(ptr noundef %48, i32 noundef %93) #15
  %95 = tail call zeroext i16 @eth_type_trans(ptr noundef %48, ptr noundef %4) #15
  %96 = getelementptr inbounds %struct.sk_buff, ptr %48, i32 0, i32 13, i32 0, i32 16
  store i16 %95, ptr %96, align 8
  %97 = tail call i32 @netif_receive_skb(ptr noundef %48) #15
  br label %98

98:                                               ; preds = %90, %89
  %99 = icmp eq i32 %64, %1
  br i1 %99, label %100, label %34

100:                                              ; preds = %98
  tail call fastcc void @rxq_refill(ptr noundef %4) #15
  br label %109

101:                                              ; preds = %38, %34, %19
  %102 = phi i32 [ 0, %19 ], [ %35, %38 ], [ %35, %34 ]
  tail call fastcc void @rxq_refill(ptr noundef %4) #15
  %103 = icmp slt i32 %102, %1
  br i1 %103, label %104, label %109

104:                                              ; preds = %101
  %105 = tail call zeroext i1 @napi_complete_done(ptr noundef %0, i32 noundef %102) #15
  %106 = getelementptr i8, ptr %0, i32 272
  %107 = load ptr, ptr %106, align 8
  %108 = getelementptr i8, ptr %107, i32 1112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %108, i32 268447181) #15, !srcloc !13
  br label %109

109:                                              ; preds = %104, %101, %100
  %110 = phi i32 [ %1, %100 ], [ %102, %104 ], [ %102, %101 ]
  ret i32 %110
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rxq_refill_timer_wrapper(ptr noundef %0) #8 {
  %2 = getelementptr i8, ptr %0, i32 -240
  %3 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %2) #15
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @__napi_schedule(ptr noundef %2) #15
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pxa168_smi_read(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.mii_bus, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  %6 = tail call fastcc i32 @smi_wait_ready(ptr noundef %5)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.pxa168_eth_private, ptr %5, i32 0, i32 20
  %10 = load ptr, ptr %9, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %10, ptr noundef nonnull @.str.23) #16
  br label %90

11:                                               ; preds = %3
  %12 = shl i32 %1, 16
  %13 = shl i32 %2, 21
  %14 = or i32 %12, %13
  %15 = or i32 %14, 67108864
  %16 = getelementptr inbounds %struct.pxa168_eth_private, ptr %5, i32 0, i32 32
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr i8, ptr %17, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %15) #15, !srcloc !13
  %19 = load ptr, ptr %16, align 8
  %20 = getelementptr i8, ptr %19, i32 16
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #15, !srcloc !10
  %22 = and i32 %21, 134217728
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %87

24:                                               ; preds = %11
  tail call void @msleep(i32 noundef 10) #15
  %25 = load ptr, ptr %16, align 8
  %26 = getelementptr i8, ptr %25, i32 16
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #15, !srcloc !10
  %28 = and i32 %27, 134217728
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %87

30:                                               ; preds = %81
  %31 = getelementptr inbounds %struct.pxa168_eth_private, ptr %5, i32 0, i32 20
  %32 = load ptr, ptr %31, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %32, ptr noundef nonnull @.str.24) #16
  br label %90

33:                                               ; preds = %24
  tail call void @msleep(i32 noundef 10) #15
  %34 = load ptr, ptr %16, align 8
  %35 = getelementptr i8, ptr %34, i32 16
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #15, !srcloc !10
  %37 = and i32 %36, 134217728
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %87

39:                                               ; preds = %33
  tail call void @msleep(i32 noundef 10) #15
  %40 = load ptr, ptr %16, align 8
  %41 = getelementptr i8, ptr %40, i32 16
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #15, !srcloc !10
  %43 = and i32 %42, 134217728
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %87

45:                                               ; preds = %39
  tail call void @msleep(i32 noundef 10) #15
  %46 = load ptr, ptr %16, align 8
  %47 = getelementptr i8, ptr %46, i32 16
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #15, !srcloc !10
  %49 = and i32 %48, 134217728
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %87

51:                                               ; preds = %45
  tail call void @msleep(i32 noundef 10) #15
  %52 = load ptr, ptr %16, align 8
  %53 = getelementptr i8, ptr %52, i32 16
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #15, !srcloc !10
  %55 = and i32 %54, 134217728
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %87

57:                                               ; preds = %51
  tail call void @msleep(i32 noundef 10) #15
  %58 = load ptr, ptr %16, align 8
  %59 = getelementptr i8, ptr %58, i32 16
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #15, !srcloc !10
  %61 = and i32 %60, 134217728
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %87

63:                                               ; preds = %57
  tail call void @msleep(i32 noundef 10) #15
  %64 = load ptr, ptr %16, align 8
  %65 = getelementptr i8, ptr %64, i32 16
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #15, !srcloc !10
  %67 = and i32 %66, 134217728
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %87

69:                                               ; preds = %63
  tail call void @msleep(i32 noundef 10) #15
  %70 = load ptr, ptr %16, align 8
  %71 = getelementptr i8, ptr %70, i32 16
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %71) #15, !srcloc !10
  %73 = and i32 %72, 134217728
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %87

75:                                               ; preds = %69
  tail call void @msleep(i32 noundef 10) #15
  %76 = load ptr, ptr %16, align 8
  %77 = getelementptr i8, ptr %76, i32 16
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %77) #15, !srcloc !10
  %79 = and i32 %78, 134217728
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %75
  tail call void @msleep(i32 noundef 10) #15
  %82 = load ptr, ptr %16, align 8
  %83 = getelementptr i8, ptr %82, i32 16
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %83) #15, !srcloc !10
  %85 = and i32 %84, 134217728
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %30, label %87

87:                                               ; preds = %81, %75, %69, %63, %57, %51, %45, %39, %33, %24, %11
  %88 = phi i32 [ %21, %11 ], [ %27, %24 ], [ %36, %33 ], [ %42, %39 ], [ %48, %45 ], [ %54, %51 ], [ %60, %57 ], [ %66, %63 ], [ %72, %69 ], [ %78, %75 ], [ %84, %81 ]
  %89 = and i32 %88, 65535
  br label %90

90:                                               ; preds = %87, %30, %8
  %91 = phi i32 [ -110, %8 ], [ -19, %30 ], [ %89, %87 ]
  ret i32 %91
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pxa168_smi_write(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i16 noundef zeroext %3) #2 {
  %5 = getelementptr inbounds %struct.mii_bus, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 8
  %7 = tail call fastcc i32 @smi_wait_ready(ptr noundef %6)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.pxa168_eth_private, ptr %6, i32 0, i32 20
  %11 = load ptr, ptr %10, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %11, ptr noundef nonnull @.str.23) #16
  br label %26

12:                                               ; preds = %4
  %13 = shl i32 %1, 16
  %14 = shl i32 %2, 21
  %15 = or i32 %14, %13
  %16 = zext i16 %3 to i32
  %17 = or i32 %15, %16
  %18 = getelementptr inbounds %struct.pxa168_eth_private, ptr %6, i32 0, i32 32
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr i8, ptr %19, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %17) #15, !srcloc !13
  %21 = tail call fastcc i32 @smi_wait_ready(ptr noundef %6)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %12
  %24 = getelementptr inbounds %struct.pxa168_eth_private, ptr %6, i32 0, i32 20
  %25 = load ptr, ptr %24, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %25, ptr noundef nonnull @.str.23) #16
  br label %26

26:                                               ; preds = %23, %12, %9
  %27 = phi i32 [ -110, %9 ], [ -110, %23 ], [ 0, %12 ]
  ret i32 %27
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mdiobus_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pxa168_eth_open(ptr noundef %0) #2 {
  %2 = alloca %struct.ethtool_link_ksettings, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %2) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(88) %2, i8 0, i32 88, i1 false) #15, !annotation !11
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %2) #15
  br label %41

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %0, i32 1764
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %0, i32 1416
  %11 = load i32, ptr %10, align 8
  %12 = tail call ptr @mdiobus_scan(ptr noundef %9, i32 noundef %11) #15
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %14, label %16

14:                                               ; preds = %7
  %15 = ptrtoint ptr %12 to i32
  br label %38

16:                                               ; preds = %7
  %17 = getelementptr i8, ptr %0, i32 1428
  %18 = load i32, ptr %17, align 4
  %19 = tail call i32 @phy_connect_direct(ptr noundef %0, ptr noundef %12, ptr noundef nonnull @pxa168_eth_adjust_link, i32 noundef %18) #15
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %2) #15
  br label %170

22:                                               ; preds = %16
  %23 = load i32, ptr %10, align 8
  %24 = trunc i32 %23 to i8
  %25 = getelementptr inbounds %struct.ethtool_link_settings, ptr %2, i32 0, i32 4
  store i8 %24, ptr %25, align 2
  %26 = getelementptr i8, ptr %0, i32 1420
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.ethtool_link_settings, ptr %2, i32 0, i32 1
  store i32 %27, ptr %28, align 4
  %29 = getelementptr i8, ptr %0, i32 1424
  %30 = load i32, ptr %29, align 8
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.ethtool_link_settings, ptr %2, i32 0, i32 2
  store i8 %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %2, i32 0, i32 1, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %33, ptr noundef nonnull align 4 dereferenceable(12) @phy_basic_features, i32 12, i1 false) #15
  %34 = getelementptr inbounds %struct.ethtool_link_settings, ptr %2, i32 0, i32 5
  %35 = icmp eq i32 %27, 0
  %36 = zext i1 %35 to i8
  store i8 %36, ptr %34, align 1
  %37 = call i32 @phy_ethtool_set_link_ksettings(ptr noundef %0, ptr noundef nonnull %2) #15
  br label %38

38:                                               ; preds = %22, %14
  %39 = phi i32 [ %15, %14 ], [ %37, %22 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %2) #15
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %170

41:                                               ; preds = %38, %6
  %42 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 59
  %43 = load i32, ptr %42, align 8
  %44 = call i32 @request_threaded_irq(i32 noundef %43, ptr noundef nonnull @pxa168_eth_int_handler, ptr noundef null, i32 noundef 0, ptr noundef %0, ptr noundef %0) #15
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 111
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.10) #16
  br label %170

48:                                               ; preds = %41
  %49 = getelementptr i8, ptr %0, i32 1432
  store i32 0, ptr %49, align 8
  %50 = getelementptr i8, ptr %0, i32 1736
  %51 = load i32, ptr %50, align 8
  %52 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %51, i32 4) #15
  %53 = extractvalue { i32, i1 } %52, 1
  br i1 %53, label %54, label %56, !prof !8

54:                                               ; preds = %48
  %55 = getelementptr i8, ptr %0, i32 1464
  store ptr null, ptr %55, align 8
  br label %167

56:                                               ; preds = %48
  %57 = extractvalue { i32, i1 } %52, 0
  %58 = call noalias align 64 ptr @__kmalloc(i32 noundef %57, i32 noundef 3520) #17
  %59 = getelementptr i8, ptr %0, i32 1464
  store ptr %58, ptr %59, align 8
  %60 = icmp eq ptr %58, null
  br i1 %60, label %167, label %61

61:                                               ; preds = %56
  %62 = load i32, ptr %50, align 8
  %63 = getelementptr i8, ptr %0, i32 1740
  store i32 0, ptr %63, align 4
  %64 = shl i32 %62, 4
  %65 = getelementptr i8, ptr %0, i32 1460
  store i32 %64, ptr %65, align 4
  %66 = getelementptr i8, ptr %0, i32 1500
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.net_device, ptr %67, i32 0, i32 111, i32 1
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr i8, ptr %0, i32 1456
  %71 = call ptr @dma_alloc_attrs(ptr noundef %69, i32 noundef %64, ptr noundef %70, i32 noundef 3264, i32 noundef 0) #15
  %72 = getelementptr i8, ptr %0, i32 1452
  store ptr %71, ptr %72, align 4
  %73 = icmp eq ptr %71, null
  br i1 %73, label %85, label %74

74:                                               ; preds = %61
  %75 = icmp eq i32 %51, 0
  br i1 %75, label %87, label %76

76:                                               ; preds = %76, %74
  %77 = phi i32 [ %79, %76 ], [ 0, %74 ]
  %78 = load i32, ptr %70, align 8
  %79 = add nuw nsw i32 %77, 1
  %80 = icmp eq i32 %79, %51
  %81 = shl i32 %79, 4
  %82 = select i1 %80, i32 0, i32 %81
  %83 = add i32 %82, %78
  %84 = getelementptr %struct.rx_desc, ptr %71, i32 %77, i32 4
  store i32 %83, ptr %84, align 4
  br i1 %80, label %87, label %76

85:                                               ; preds = %61
  %86 = load ptr, ptr %59, align 8
  call void @kfree(ptr noundef %86) #15
  br label %167

87:                                               ; preds = %76, %74
  %88 = getelementptr i8, ptr %0, i32 1436
  store i32 0, ptr %88, align 4
  %89 = getelementptr i8, ptr %0, i32 1440
  store i32 0, ptr %89, align 8
  %90 = shl i32 %51, 4
  store i32 %90, ptr %65, align 4
  %91 = getelementptr i8, ptr %0, i32 1728
  %92 = load i32, ptr %91, align 8
  %93 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %92, i32 4) #15
  %94 = extractvalue { i32, i1 } %93, 1
  br i1 %94, label %95, label %97, !prof !8

95:                                               ; preds = %87
  %96 = getelementptr i8, ptr %0, i32 1480
  store ptr null, ptr %96, align 8
  br label %166

97:                                               ; preds = %87
  %98 = extractvalue { i32, i1 } %93, 0
  %99 = call noalias align 64 ptr @__kmalloc(i32 noundef %98, i32 noundef 3520) #17
  %100 = getelementptr i8, ptr %0, i32 1480
  store ptr %99, ptr %100, align 8
  %101 = icmp eq ptr %99, null
  br i1 %101, label %166, label %102

102:                                              ; preds = %97
  %103 = load i32, ptr %91, align 8
  %104 = getelementptr i8, ptr %0, i32 1732
  store i32 0, ptr %104, align 4
  %105 = shl i32 %103, 4
  %106 = getelementptr i8, ptr %0, i32 1476
  store i32 %105, ptr %106, align 4
  %107 = load ptr, ptr %66, align 4
  %108 = getelementptr inbounds %struct.net_device, ptr %107, i32 0, i32 111, i32 1
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr i8, ptr %0, i32 1472
  %111 = call ptr @dma_alloc_attrs(ptr noundef %109, i32 noundef %105, ptr noundef %110, i32 noundef 3264, i32 noundef 0) #15
  %112 = getelementptr i8, ptr %0, i32 1468
  store ptr %111, ptr %112, align 4
  %113 = icmp eq ptr %111, null
  br i1 %113, label %125, label %114

114:                                              ; preds = %102
  %115 = icmp eq i32 %92, 0
  br i1 %115, label %127, label %116

116:                                              ; preds = %116, %114
  %117 = phi i32 [ %119, %116 ], [ 0, %114 ]
  %118 = load i32, ptr %110, align 8
  %119 = add nuw nsw i32 %117, 1
  %120 = icmp eq i32 %119, %92
  %121 = shl i32 %119, 4
  %122 = select i1 %120, i32 0, i32 %121
  %123 = add i32 %122, %118
  %124 = getelementptr %struct.tx_desc, ptr %111, i32 %117, i32 4
  store i32 %123, ptr %124, align 4
  br i1 %120, label %127, label %116

125:                                              ; preds = %102
  %126 = load ptr, ptr %100, align 8
  call void @kfree(ptr noundef %126) #15
  br label %166

127:                                              ; preds = %116, %114
  %128 = getelementptr i8, ptr %0, i32 1444
  store i32 0, ptr %128, align 4
  %129 = getelementptr i8, ptr %0, i32 1448
  store i32 0, ptr %129, align 8
  %130 = shl i32 %92, 4
  store i32 %130, ptr %106, align 4
  store i32 0, ptr %89, align 8
  store i32 0, ptr %88, align 4
  call fastcc void @rxq_refill(ptr noundef %0)
  store i32 0, ptr %89, align 8
  store i32 0, ptr %88, align 4
  call void @netif_carrier_off(ptr noundef %0) #15
  %131 = getelementptr i8, ptr %0, i32 1504
  call void @napi_enable(ptr noundef %131) #15
  %132 = load ptr, ptr %3, align 8
  call void @phy_start(ptr noundef %132) #15
  %133 = load i32, ptr %128, align 4
  %134 = load i32, ptr %110, align 8
  %135 = shl i32 %133, 4
  %136 = add i32 %134, %135
  %137 = getelementptr i8, ptr %0, i32 1776
  %138 = load ptr, ptr %137, align 8
  %139 = getelementptr i8, ptr %138, i32 1252
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %139, i32 %136) #15, !srcloc !13
  %140 = load i32, ptr %88, align 4
  %141 = load i32, ptr %70, align 8
  %142 = shl i32 %140, 4
  %143 = add i32 %141, %142
  %144 = load ptr, ptr %137, align 8
  %145 = getelementptr i8, ptr %144, i32 1184
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %145, i32 %143) #15, !srcloc !13
  %146 = load i32, ptr %70, align 8
  %147 = add i32 %146, %142
  %148 = load ptr, ptr %137, align 8
  %149 = getelementptr i8, ptr %148, i32 1152
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %149, i32 %147) #15, !srcloc !13
  %150 = load ptr, ptr %137, align 8
  %151 = getelementptr i8, ptr %150, i32 1104
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %151, i32 0) #15, !srcloc !13
  %152 = load ptr, ptr %137, align 8
  %153 = getelementptr i8, ptr %152, i32 1112
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %153, i32 268447181) #15, !srcloc !13
  %154 = load ptr, ptr %137, align 8
  %155 = getelementptr i8, ptr %154, i32 1024
  %156 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %155) #15, !srcloc !10
  %157 = or i32 %156, 128
  %158 = load ptr, ptr %137, align 8
  %159 = getelementptr i8, ptr %158, i32 1024
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %159, i32 %157) #15, !srcloc !13
  %160 = load ptr, ptr %137, align 8
  %161 = getelementptr i8, ptr %160, i32 1096
  %162 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %161) #15, !srcloc !10
  %163 = or i32 %162, 128
  %164 = load ptr, ptr %137, align 8
  %165 = getelementptr i8, ptr %164, i32 1096
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %165, i32 %163) #15, !srcloc !13
  br label %170

166:                                              ; preds = %125, %97, %95
  call fastcc void @rxq_deinit(ptr noundef %0)
  br label %167

167:                                              ; preds = %166, %85, %56, %54
  %168 = load i32, ptr %42, align 8
  %169 = call ptr @free_irq(i32 noundef %168, ptr noundef %0) #15
  br label %170

170:                                              ; preds = %167, %127, %46, %38, %21
  %171 = phi i32 [ -11, %46 ], [ -12, %167 ], [ 0, %127 ], [ %39, %38 ], [ %19, %21 ]
  ret i32 %171
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pxa168_eth_stop(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 1408
  %3 = getelementptr i8, ptr %0, i32 1776
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 1112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 0) #15, !srcloc !13
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr i8, ptr %6, i32 1104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 0) #15, !srcloc !13
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr i8, ptr %8, i32 1096
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #15, !srcloc !10
  tail call fastcc void @abort_dma(ptr noundef %2) #15
  %11 = load ptr, ptr %3, align 8
  %12 = getelementptr i8, ptr %11, i32 1024
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #15, !srcloc !10
  %14 = and i32 %13, -129
  %15 = load ptr, ptr %3, align 8
  %16 = getelementptr i8, ptr %15, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #15, !srcloc !13
  %17 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %18 = load ptr, ptr %17, align 8
  tail call void @phy_stop(ptr noundef %18) #15
  %19 = load ptr, ptr %3, align 8
  %20 = getelementptr i8, ptr %19, i32 1112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 0) #15, !srcloc !13
  %21 = load ptr, ptr %3, align 8
  %22 = getelementptr i8, ptr %21, i32 1104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 0) #15, !srcloc !13
  %23 = load ptr, ptr %3, align 8
  %24 = getelementptr i8, ptr %23, i32 1108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 0) #15, !srcloc !13
  %25 = getelementptr i8, ptr %0, i32 1504
  tail call void @napi_disable(ptr noundef %25) #15
  %26 = getelementptr i8, ptr %0, i32 1744
  %27 = tail call i32 @del_timer_sync(ptr noundef %26) #15
  tail call void @netif_carrier_off(ptr noundef %0) #15
  %28 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 59
  %29 = load i32, ptr %28, align 8
  %30 = tail call ptr @free_irq(i32 noundef %29, ptr noundef %0) #15
  tail call fastcc void @rxq_deinit(ptr noundef %0)
  tail call fastcc void @txq_reclaim(ptr noundef %0, i32 noundef 1) #15
  %31 = getelementptr i8, ptr %0, i32 1448
  %32 = load i32, ptr %31, align 8
  %33 = getelementptr i8, ptr %0, i32 1444
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %37, label %36, !prof !15

36:                                               ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/marvell/pxa168_eth.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1120, 0\0A.popsection", ""() #15, !srcloc !16
  unreachable

37:                                               ; preds = %1
  %38 = getelementptr i8, ptr %0, i32 1468
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %50, label %41

41:                                               ; preds = %37
  %42 = getelementptr i8, ptr %0, i32 1500
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.net_device, ptr %43, i32 0, i32 111, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr i8, ptr %0, i32 1476
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr i8, ptr %0, i32 1472
  %49 = load i32, ptr %48, align 8
  tail call void @dma_free_attrs(ptr noundef %45, i32 noundef %47, ptr noundef nonnull %39, i32 noundef %49, i32 noundef 0) #15
  br label %50

50:                                               ; preds = %41, %37
  %51 = getelementptr i8, ptr %0, i32 1480
  %52 = load ptr, ptr %51, align 8
  tail call void @kfree(ptr noundef %52) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pxa168_eth_start_xmit(ptr noundef %0, ptr nocapture noundef %1) #2 {
  %3 = getelementptr i8, ptr %1, i32 1444
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, 1
  %6 = getelementptr i8, ptr %1, i32 1728
  %7 = load i32, ptr %6, align 8
  %8 = srem i32 %5, %7
  store i32 %8, ptr %3, align 4
  %9 = getelementptr i8, ptr %1, i32 1448
  %10 = load i32, ptr %9, align 8
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %12, label %13, !prof !8

12:                                               ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/marvell/pxa168_eth.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1218, 0\0A.popsection", ""() #15, !srcloc !17
  unreachable

13:                                               ; preds = %2
  %14 = getelementptr i8, ptr %1, i32 1408
  %15 = getelementptr i8, ptr %1, i32 1732
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, 1
  store i32 %17, ptr %15, align 4
  %18 = getelementptr i8, ptr %1, i32 1468
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr %struct.tx_desc, ptr %19, i32 %4
  %21 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %22 = load i32, ptr %21, align 8
  %23 = getelementptr i8, ptr %1, i32 1480
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr ptr, ptr %24, i32 %4
  store ptr %0, ptr %25, align 4
  %26 = trunc i32 %22 to i16
  %27 = getelementptr %struct.tx_desc, ptr %19, i32 %4, i32 2
  store i16 %26, ptr %27, align 2
  %28 = load ptr, ptr %14, align 8
  %29 = getelementptr inbounds %struct.platform_device, ptr %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %31 = load ptr, ptr %30, align 4
  %32 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %31) #15
  %33 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %34 = xor i1 %33, true
  %35 = select i1 %32, i1 %34, i1 false
  br i1 %35, label %36, label %45, !prof !8

36:                                               ; preds = %13
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %37 = tail call ptr @dev_driver_string(ptr noundef %29) #15
  %38 = getelementptr inbounds %struct.platform_device, ptr %28, i32 0, i32 3, i32 3
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load ptr, ptr %29, align 4
  br label %43

43:                                               ; preds = %41, %36
  %44 = phi ptr [ %42, %41 ], [ %39, %36 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.12, ptr noundef %37, ptr noundef %44) #15
  br label %45

45:                                               ; preds = %43, %13
  br i1 %32, label %54, label %46

46:                                               ; preds = %45
  %47 = load ptr, ptr @mem_map, align 4
  %48 = ptrtoint ptr %31 to i32
  %49 = add i32 %48, 1073741824
  %50 = lshr i32 %49, 12
  %51 = getelementptr %struct.page, ptr %47, i32 %50
  %52 = and i32 %48, 4095
  %53 = tail call i32 @dma_map_page_attrs(ptr noundef %29, ptr noundef %51, i32 noundef %52, i32 noundef %22, i32 noundef 1, i32 noundef 0) #15
  br label %54

54:                                               ; preds = %46, %45
  %55 = phi i32 [ %53, %46 ], [ -1, %45 ]
  %56 = getelementptr %struct.tx_desc, ptr %19, i32 %4, i32 3
  store i32 %55, ptr %56, align 4
  %57 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.skb_shared_info, ptr %58, i32 0, i32 3
  %60 = load i8, ptr %59, align 1
  %61 = and i8 %60, 2
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %54
  tail call void @skb_tstamp_tx(ptr noundef %0, ptr noundef null) #15
  br label %64

64:                                               ; preds = %63, %54
  tail call void asm sideeffect "dmb oshst", "~{memory}"() #15, !srcloc !18
  store i32 -2134441984, ptr %20, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !19
  tail call void @arm_heavy_mb() #15
  %65 = getelementptr i8, ptr %1, i32 1776
  %66 = load ptr, ptr %65, align 8
  %67 = getelementptr i8, ptr %66, i32 1096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 8388736) #15, !srcloc !13
  %68 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 3
  %69 = load i32, ptr %68, align 4
  %70 = add i32 %69, %22
  store i32 %70, ptr %68, align 4
  %71 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 1
  %72 = load i32, ptr %71, align 4
  %73 = add i32 %72, 1
  store i32 %73, ptr %71, align 4
  %74 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 87
  %75 = load ptr, ptr %74, align 64
  %76 = load volatile i32, ptr @jiffies, align 64
  %77 = getelementptr inbounds %struct.netdev_queue, ptr %75, i32 0, i32 11
  %78 = load volatile i32, ptr %77, align 8
  %79 = icmp eq i32 %78, %76
  br i1 %79, label %81, label %80

80:                                               ; preds = %64
  store volatile i32 %76, ptr %77, align 8
  br label %81

81:                                               ; preds = %80, %64
  %82 = load i32, ptr %6, align 8
  %83 = load i32, ptr %15, align 4
  %84 = sub i32 %82, %83
  %85 = icmp slt i32 %84, 2
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load ptr, ptr %74, align 64
  %88 = getelementptr inbounds %struct.netdev_queue, ptr %87, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %88) #15
  br label %89

89:                                               ; preds = %86, %81
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pxa168_eth_set_rx_mode(ptr noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 1408
  %3 = getelementptr i8, ptr %0, i32 1776
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 1024
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #15, !srcloc !10
  %7 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 14
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %6, -2
  %10 = lshr i32 %8, 8
  %11 = and i32 %10, 1
  %12 = or i32 %11, %9
  %13 = load ptr, ptr %3, align 8
  %14 = getelementptr i8, ptr %13, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #15, !srcloc !13
  %15 = getelementptr i8, ptr %0, i32 1780
  %16 = load ptr, ptr %15, align 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(16384) %16, i8 0, i32 16384, i1 false)
  %17 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 72
  %18 = load ptr, ptr %17, align 32
  tail call fastcc void @add_del_hash_entry(ptr noundef %2, ptr noundef %18, i32 noundef 0) #15
  %19 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 61
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %19
  br i1 %21, label %27, label %22

22:                                               ; preds = %22, %1
  %23 = phi ptr [ %25, %22 ], [ %20, %1 ]
  %24 = getelementptr inbounds %struct.netdev_hw_addr, ptr %23, i32 0, i32 2
  tail call fastcc void @add_del_hash_entry(ptr noundef %2, ptr noundef %24, i32 noundef 0) #15
  %25 = load ptr, ptr %23, align 4
  %26 = icmp eq ptr %25, %19
  br i1 %26, label %27, label %22

27:                                               ; preds = %22, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pxa168_eth_set_mac_address(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca [6 x i8], align 1
  %4 = getelementptr i8, ptr %0, i32 1408
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #15
  %5 = getelementptr inbounds %struct.sockaddr, ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %55

9:                                                ; preds = %2
  %10 = getelementptr %struct.sockaddr, ptr %1, i32 0, i32 1, i32 4
  %11 = load i16, ptr %10, align 2
  %12 = zext i16 %11 to i32
  %13 = or i32 %6, %12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %55, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 72
  %17 = load ptr, ptr %16, align 32
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %3, ptr noundef align 1 dereferenceable(6) %17, i32 6, i1 false)
  tail call void @dev_addr_mod(ptr noundef %0, i32 noundef 0, ptr noundef %5, i32 noundef 6) #15
  %18 = load ptr, ptr %16, align 32
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i32
  %21 = shl nuw i32 %20, 24
  %22 = getelementptr i8, ptr %18, i32 1
  %23 = load i8, ptr %22, align 1
  %24 = zext i8 %23 to i32
  %25 = shl nuw nsw i32 %24, 16
  %26 = or i32 %25, %21
  %27 = getelementptr i8, ptr %18, i32 2
  %28 = load i8, ptr %27, align 1
  %29 = zext i8 %28 to i32
  %30 = shl nuw nsw i32 %29, 8
  %31 = or i32 %26, %30
  %32 = getelementptr i8, ptr %18, i32 3
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i32
  %35 = or i32 %31, %34
  %36 = getelementptr i8, ptr %18, i32 4
  %37 = load i8, ptr %36, align 1
  %38 = zext i8 %37 to i32
  %39 = shl nuw nsw i32 %38, 8
  %40 = getelementptr i8, ptr %18, i32 5
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i32
  %43 = or i32 %39, %42
  %44 = getelementptr i8, ptr %0, i32 1776
  %45 = load ptr, ptr %44, align 8
  %46 = getelementptr i8, ptr %45, i32 1080
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %35) #15, !srcloc !13
  %47 = load ptr, ptr %44, align 8
  %48 = getelementptr i8, ptr %47, i32 1072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %43) #15, !srcloc !13
  %49 = tail call ptr @llvm.thread.pointer() #15
  %50 = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 1
  %51 = load volatile i32, ptr %50, align 4
  %52 = add i32 %51, 512
  store volatile i32 %52, ptr %50, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !20
  %53 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 58
  tail call void @_raw_spin_lock(ptr noundef %53) #15
  %54 = load ptr, ptr %16, align 32
  call fastcc void @add_del_hash_entry(ptr noundef %4, ptr noundef nonnull %3, i32 noundef 1) #15
  tail call fastcc void @add_del_hash_entry(ptr noundef %4, ptr noundef %54, i32 noundef 0) #15
  tail call void @_raw_spin_unlock_bh(ptr noundef %53) #15
  br label %55

55:                                               ; preds = %15, %9, %2
  %56 = phi i32 [ 0, %15 ], [ -99, %9 ], [ -99, %2 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #15
  ret i32 %56
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_do_ioctl(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pxa168_eth_change_mtu(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 20
  store i32 %1, ptr %3, align 4
  %4 = getelementptr i8, ptr %0, i32 1500
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 20
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, 43
  %9 = and i32 %8, -8
  %10 = getelementptr i8, ptr %0, i32 1724
  store i32 %9, ptr %10, align 4
  %11 = icmp slt i32 %9, 1519
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = icmp ult i32 %9, 1537
  br i1 %13, label %17, label %14

14:                                               ; preds = %12
  %15 = icmp ult i32 %9, 2049
  %16 = select i1 %15, i32 271093304, i32 271109688
  br label %17

17:                                               ; preds = %14, %12, %2
  %18 = phi i32 [ 271060536, %2 ], [ 271076920, %12 ], [ %16, %14 ]
  %19 = getelementptr i8, ptr %0, i32 1776
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr i8, ptr %20, i32 1032
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %18) #15, !srcloc !13
  %22 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %23 = load volatile i32, ptr %22, align 4
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %17
  %27 = tail call i32 @pxa168_eth_stop(ptr noundef %0)
  %28 = tail call i32 @pxa168_eth_open(ptr noundef %0)
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 111
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.18) #16
  br label %32

32:                                               ; preds = %30, %26, %17
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pxa168_eth_tx_timeout(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 1732
  %4 = load i32, ptr %3, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %0, ptr noundef nonnull @.str.19, i32 noundef %4) #16
  %5 = getelementptr i8, ptr %0, i32 1484
  %6 = load ptr, ptr @system_wq, align 4
  %7 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %6, ptr noundef %5) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pxa168_eth_int_handler(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr i8, ptr %1, i32 1776
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 1104
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #15, !srcloc !10
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %27, label %8

8:                                                ; preds = %2
  %9 = xor i32 %6, -1
  %10 = load ptr, ptr %3, align 8
  %11 = getelementptr i8, ptr %10, i32 1104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #15, !srcloc !13
  %12 = and i32 %6, 12
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %8
  %15 = and i32 %6, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %27, label %21

17:                                               ; preds = %8
  %18 = getelementptr i8, ptr %1, i32 1720
  %19 = load i8, ptr %18, align 8
  %20 = or i8 %19, 2
  store i8 %20, ptr %18, align 8
  br label %21

21:                                               ; preds = %17, %14
  %22 = load ptr, ptr %3, align 8
  %23 = getelementptr i8, ptr %22, i32 1112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 0) #15, !srcloc !13
  %24 = getelementptr i8, ptr %1, i32 1504
  %25 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %24) #15
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  tail call void @__napi_schedule(ptr noundef %24) #15
  br label %27

27:                                               ; preds = %26, %21, %14, %2
  %28 = phi i32 [ 0, %14 ], [ 1, %21 ], [ 1, %26 ], [ 0, %2 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rxq_refill(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr i8, ptr %0, i32 1408
  %3 = getelementptr i8, ptr %0, i32 1740
  %4 = getelementptr i8, ptr %0, i32 1736
  %5 = load i32, ptr %3, align 4
  %6 = load i32, ptr %4, align 8
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %72

8:                                                ; preds = %1
  %9 = getelementptr i8, ptr %0, i32 1724
  %10 = getelementptr i8, ptr %0, i32 1440
  %11 = getelementptr i8, ptr %0, i32 1452
  %12 = getelementptr i8, ptr %0, i32 1464
  %13 = getelementptr i8, ptr %0, i32 1432
  br label %14

14:                                               ; preds = %54, %8
  %15 = load i32, ptr %9, align 4
  %16 = tail call ptr @__netdev_alloc_skb(ptr noundef %0, i32 noundef %15, i32 noundef 2592) #15
  %17 = icmp eq ptr %16, null
  %18 = load i32, ptr %3, align 4
  br i1 %17, label %72, label %19

19:                                               ; preds = %14
  %20 = add i32 %18, 1
  store i32 %20, ptr %3, align 4
  %21 = load i32, ptr %10, align 8
  %22 = load ptr, ptr %11, align 4
  %23 = getelementptr %struct.rx_desc, ptr %22, i32 %21
  %24 = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 15
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 17
  %27 = load ptr, ptr %26, align 4
  %28 = ptrtoint ptr %25 to i32
  %29 = ptrtoint ptr %27 to i32
  %30 = sub i32 %28, %29
  %31 = load ptr, ptr %2, align 8
  %32 = getelementptr inbounds %struct.platform_device, ptr %31, i32 0, i32 3
  %33 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %27) #15
  %34 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %35 = xor i1 %34, true
  %36 = select i1 %33, i1 %35, i1 false
  br i1 %36, label %37, label %46, !prof !8

37:                                               ; preds = %19
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %38 = tail call ptr @dev_driver_string(ptr noundef %32) #15
  %39 = getelementptr inbounds %struct.platform_device, ptr %31, i32 0, i32 3, i32 3
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load ptr, ptr %32, align 4
  br label %44

44:                                               ; preds = %42, %37
  %45 = phi ptr [ %43, %42 ], [ %40, %37 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.12, ptr noundef %38, ptr noundef %45) #15
  br label %46

46:                                               ; preds = %44, %19
  br i1 %33, label %54, label %47

47:                                               ; preds = %46
  %48 = load ptr, ptr @mem_map, align 4
  %49 = add i32 %29, 1073741824
  %50 = lshr i32 %49, 12
  %51 = getelementptr %struct.page, ptr %48, i32 %50
  %52 = and i32 %29, 4095
  %53 = tail call i32 @dma_map_page_attrs(ptr noundef %32, ptr noundef %51, i32 noundef %52, i32 noundef %30, i32 noundef 2, i32 noundef 0) #15
  br label %54

54:                                               ; preds = %47, %46
  %55 = phi i32 [ %53, %47 ], [ -1, %46 ]
  %56 = getelementptr %struct.rx_desc, ptr %22, i32 %21, i32 3
  store i32 %55, ptr %56, align 4
  %57 = trunc i32 %30 to i16
  %58 = getelementptr %struct.rx_desc, ptr %22, i32 %21, i32 2
  store i16 %57, ptr %58, align 2
  %59 = load ptr, ptr %12, align 8
  %60 = getelementptr ptr, ptr %59, i32 %21
  store ptr %16, ptr %60, align 4
  tail call void asm sideeffect "dmb oshst", "~{memory}"() #15, !srcloc !21
  store i32 -2139095040, ptr %23, align 4
  tail call void asm sideeffect "dmb oshst", "~{memory}"() #15, !srcloc !22
  %61 = add i32 %21, 1
  %62 = load i32, ptr %4, align 8
  %63 = srem i32 %61, %62
  store i32 %63, ptr %10, align 8
  store i32 0, ptr %13, align 8
  %64 = load ptr, ptr %26, align 4
  %65 = getelementptr i8, ptr %64, i32 2
  store ptr %65, ptr %26, align 4
  %66 = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 14
  %67 = load ptr, ptr %66, align 8
  %68 = getelementptr i8, ptr %67, i32 2
  store ptr %68, ptr %66, align 8
  %69 = load i32, ptr %3, align 4
  %70 = load i32, ptr %4, align 8
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %14, label %72

72:                                               ; preds = %54, %14, %1
  %73 = phi i32 [ %5, %1 ], [ %18, %14 ], [ %69, %54 ]
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %72
  %76 = load volatile i32, ptr @jiffies, align 64
  %77 = add i32 %76, 10
  %78 = getelementptr i8, ptr %0, i32 1744
  %79 = getelementptr i8, ptr %0, i32 1752
  store i32 %77, ptr %79, align 8
  tail call void @add_timer(ptr noundef %78) #15
  br label %80

80:                                               ; preds = %75, %72
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rxq_deinit(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr i8, ptr %0, i32 1740
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %0, i32 1736
  %7 = getelementptr i8, ptr %0, i32 1464
  br label %8

8:                                                ; preds = %21, %5
  %9 = phi i32 [ %3, %5 ], [ %22, %21 ]
  %10 = phi i32 [ 0, %5 ], [ %23, %21 ]
  %11 = load i32, ptr %6, align 8
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %25

13:                                               ; preds = %8
  %14 = load ptr, ptr %7, align 8
  %15 = getelementptr ptr, ptr %14, i32 %10
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  tail call void @consume_skb(ptr noundef nonnull %16) #15
  %19 = load i32, ptr %2, align 4
  %20 = add i32 %19, -1
  store i32 %20, ptr %2, align 4
  br label %21

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %9, %13 ], [ %20, %18 ]
  %23 = add nuw nsw i32 %10, 1
  %24 = icmp eq i32 %22, 0
  br i1 %24, label %26, label %8

25:                                               ; preds = %8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.13, i32 noundef %9) #16
  br label %26

26:                                               ; preds = %25, %21, %1
  %27 = getelementptr i8, ptr %0, i32 1452
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %39, label %30

30:                                               ; preds = %26
  %31 = getelementptr i8, ptr %0, i32 1500
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.net_device, ptr %32, i32 0, i32 111, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr i8, ptr %0, i32 1460
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr i8, ptr %0, i32 1456
  %38 = load i32, ptr %37, align 8
  tail call void @dma_free_attrs(ptr noundef %34, i32 noundef %36, ptr noundef nonnull %28, i32 noundef %38, i32 noundef 0) #15
  br label %39

39:                                               ; preds = %30, %26
  %40 = getelementptr i8, ptr %0, i32 1464
  %41 = load ptr, ptr %40, align 8
  tail call void @kfree(ptr noundef %41) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdiobus_scan(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_connect_direct(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pxa168_eth_adjust_link(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %0, i32 1776
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %5, i32 1024
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #15, !srcloc !10
  %8 = load ptr, ptr %4, align 8
  %9 = getelementptr i8, ptr %8, i32 1032
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #15, !srcloc !10
  %11 = and i32 %7, -32769
  %12 = and i32 %10, -1314817
  %13 = getelementptr inbounds %struct.phy_device, ptr %3, i32 0, i32 7
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 7
  %16 = or i32 %12, 1048576
  %17 = select i1 %15, i32 %16, i32 %12
  %18 = getelementptr inbounds %struct.phy_device, ptr %3, i32 0, i32 8
  %19 = load i32, ptr %18, align 8
  %20 = icmp eq i32 %19, 100
  %21 = or i32 %17, 262144
  %22 = select i1 %20, i32 %21, i32 %17
  %23 = getelementptr inbounds %struct.phy_device, ptr %3, i32 0, i32 9
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, i32 0, i32 32768
  %27 = or i32 %26, %11
  %28 = getelementptr inbounds %struct.phy_device, ptr %3, i32 0, i32 11
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  %31 = or i32 %22, 4096
  %32 = select i1 %30, i32 %31, i32 %22
  %33 = icmp eq i32 %27, %7
  %34 = icmp eq i32 %32, %10
  %35 = select i1 %33, i1 %34, i1 false
  br i1 %35, label %41, label %36

36:                                               ; preds = %1
  %37 = load ptr, ptr %4, align 8
  %38 = getelementptr i8, ptr %37, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %27) #15, !srcloc !13
  %39 = load ptr, ptr %4, align 8
  %40 = getelementptr i8, ptr %39, i32 1032
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %32) #15, !srcloc !13
  tail call void @phy_print_status(ptr noundef %3) #15
  br label %41

41:                                               ; preds = %36, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_set_link_ksettings(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_print_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #1

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
declare dso_local void @phy_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @abort_dma(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.pxa168_eth_private, ptr %0, i32 0, i32 32
  br label %3

3:                                                ; preds = %76, %1
  %4 = phi i32 [ 40, %1 ], [ %81, %76 ]
  %5 = load ptr, ptr %2, align 8
  %6 = getelementptr i8, ptr %5, i32 1096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 -2147450880) #15, !srcloc !13
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 21474800) #15
  %8 = load ptr, ptr %2, align 8
  %9 = getelementptr i8, ptr %8, i32 1096
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #15, !srcloc !10
  %11 = and i32 %10, -2147450880
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %83, label %13

13:                                               ; preds = %3
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 2147480) #15
  %15 = load ptr, ptr %2, align 8
  %16 = getelementptr i8, ptr %15, i32 1096
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #15, !srcloc !10
  %18 = and i32 %17, -2147450880
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %83, label %20

20:                                               ; preds = %13
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 2147480) #15
  %22 = load ptr, ptr %2, align 8
  %23 = getelementptr i8, ptr %22, i32 1096
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #15, !srcloc !10
  %25 = and i32 %24, -2147450880
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %83, label %27

27:                                               ; preds = %20
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 2147480) #15
  %29 = load ptr, ptr %2, align 8
  %30 = getelementptr i8, ptr %29, i32 1096
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #15, !srcloc !10
  %32 = and i32 %31, -2147450880
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %83, label %34

34:                                               ; preds = %27
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 2147480) #15
  %36 = load ptr, ptr %2, align 8
  %37 = getelementptr i8, ptr %36, i32 1096
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #15, !srcloc !10
  %39 = and i32 %38, -2147450880
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %83, label %41

41:                                               ; preds = %34
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 2147480) #15
  %43 = load ptr, ptr %2, align 8
  %44 = getelementptr i8, ptr %43, i32 1096
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #15, !srcloc !10
  %46 = and i32 %45, -2147450880
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %83, label %48

48:                                               ; preds = %41
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 2147480) #15
  %50 = load ptr, ptr %2, align 8
  %51 = getelementptr i8, ptr %50, i32 1096
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #15, !srcloc !10
  %53 = and i32 %52, -2147450880
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %83, label %55

55:                                               ; preds = %48
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %56(i32 noundef 2147480) #15
  %57 = load ptr, ptr %2, align 8
  %58 = getelementptr i8, ptr %57, i32 1096
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #15, !srcloc !10
  %60 = and i32 %59, -2147450880
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %83, label %62

62:                                               ; preds = %55
  %63 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %63(i32 noundef 2147480) #15
  %64 = load ptr, ptr %2, align 8
  %65 = getelementptr i8, ptr %64, i32 1096
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #15, !srcloc !10
  %67 = and i32 %66, -2147450880
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %83, label %69

69:                                               ; preds = %62
  %70 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %70(i32 noundef 2147480) #15
  %71 = load ptr, ptr %2, align 8
  %72 = getelementptr i8, ptr %71, i32 1096
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %72) #15, !srcloc !10
  %74 = and i32 %73, -2147450880
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %83, label %76

76:                                               ; preds = %69
  %77 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %77(i32 noundef 2147480) #15
  %78 = load ptr, ptr %2, align 8
  %79 = getelementptr i8, ptr %78, i32 1096
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %79) #15, !srcloc !10
  %81 = add nsw i32 %4, -1
  %82 = icmp eq i32 %4, 0
  br i1 %82, label %83, label %3

83:                                               ; preds = %76, %69, %62, %55, %48, %41, %34, %27, %20, %13, %3
  %84 = icmp slt i32 %4, 2
  br i1 %84, label %85, label %88

85:                                               ; preds = %83
  %86 = getelementptr inbounds %struct.pxa168_eth_private, ptr %0, i32 0, i32 20
  %87 = load ptr, ptr %86, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %87, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.abort_dma) #16
  br label %88

88:                                               ; preds = %85, %83
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @txq_reclaim(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = getelementptr i8, ptr %0, i32 1408
  tail call void @netif_tx_lock(ptr noundef %0) #15
  %4 = getelementptr i8, ptr %0, i32 1720
  %5 = load i8, ptr %4, align 8
  %6 = and i8 %5, -3
  store i8 %6, ptr %4, align 8
  %7 = getelementptr i8, ptr %0, i32 1732
  %8 = load i32, ptr %7, align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %57

10:                                               ; preds = %2
  %11 = getelementptr i8, ptr %0, i32 1448
  %12 = getelementptr i8, ptr %0, i32 1468
  %13 = icmp ne i32 %1, 0
  %14 = getelementptr i8, ptr %0, i32 1728
  %15 = getelementptr i8, ptr %0, i32 1480
  %16 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 36, i32 5
  br label %17

17:                                               ; preds = %54, %10
  %18 = phi i32 [ %8, %10 ], [ %55, %54 ]
  %19 = load i32, ptr %11, align 8
  %20 = load ptr, ptr %12, align 4
  %21 = getelementptr %struct.tx_desc, ptr %20, i32 %19
  %22 = load i32, ptr %21, align 4
  %23 = icmp sgt i32 %22, -1
  %24 = select i1 %13, i1 true, i1 %23
  br i1 %24, label %25, label %57

25:                                               ; preds = %17
  %26 = add i32 %19, 1
  %27 = load i32, ptr %14, align 8
  %28 = srem i32 %26, %27
  store i32 %28, ptr %11, align 8
  %29 = add nsw i32 %18, -1
  store i32 %29, ptr %7, align 4
  %30 = getelementptr %struct.tx_desc, ptr %20, i32 %19, i32 3
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr %struct.tx_desc, ptr %20, i32 %19, i32 2
  %33 = load i16, ptr %32, align 2
  %34 = zext i16 %33 to i32
  %35 = load ptr, ptr %15, align 8
  %36 = getelementptr ptr, ptr %35, i32 %19
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %25
  store ptr null, ptr %36, align 4
  br label %40

40:                                               ; preds = %39, %25
  %41 = and i32 %22, 32768
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %40
  %44 = tail call i32 @net_ratelimit() #15
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.15) #16
  br label %47

47:                                               ; preds = %46, %43
  %48 = load i32, ptr %16, align 4
  %49 = add i32 %48, 1
  store i32 %49, ptr %16, align 4
  br label %50

50:                                               ; preds = %47, %40
  %51 = load ptr, ptr %3, align 8
  %52 = getelementptr inbounds %struct.platform_device, ptr %51, i32 0, i32 3
  tail call void @dma_unmap_page_attrs(ptr noundef %52, i32 noundef %31, i32 noundef %34, i32 noundef 1, i32 noundef 0) #15
  br i1 %38, label %54, label %53

53:                                               ; preds = %50
  tail call void @__dev_kfree_skb_irq(ptr noundef nonnull %37, i32 noundef 1) #15
  br label %54

54:                                               ; preds = %53, %50
  %55 = load i32, ptr %7, align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %17, label %57

57:                                               ; preds = %54, %17, %2
  tail call void @netif_tx_unlock(ptr noundef %0) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_tstamp_tx(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @add_del_hash_entry(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #2 {
  %4 = getelementptr i8, ptr %1, i32 1
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = shl nuw nsw i32 %6, 11
  %8 = load i8, ptr %1, align 1
  %9 = zext i8 %8 to i32
  %10 = shl nuw nsw i32 %9, 3
  %11 = and i32 %10, 1920
  %12 = or i32 %11, %7
  %13 = and i32 %10, 120
  %14 = or i32 %12, %13
  %15 = getelementptr i8, ptr %1, i32 3
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = shl i32 %17, 27
  %19 = and i32 %18, -2147483648
  %20 = or i32 %14, %19
  %21 = and i32 %18, 2013265920
  %22 = or i32 %20, %21
  %23 = getelementptr i8, ptr %1, i32 2
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  %26 = shl nuw nsw i32 %25, 19
  %27 = and i32 %26, 125829120
  %28 = or i32 %22, %27
  %29 = and i32 %26, 7864320
  %30 = or i32 %28, %29
  %31 = or i32 %30, 5
  %32 = getelementptr i8, ptr %1, i32 5
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i32
  %35 = shl nuw nsw i32 %34, 11
  %36 = getelementptr i8, ptr %1, i32 4
  %37 = load i8, ptr %36, align 1
  %38 = zext i8 %37 to i32
  %39 = shl nuw nsw i32 %38, 3
  %40 = and i32 %39, 1920
  %41 = or i32 %40, %35
  %42 = and i32 %39, 120
  %43 = or i32 %41, %42
  %44 = lshr i32 %17, 5
  %45 = or i32 %43, %44
  %46 = getelementptr inbounds %struct.pxa168_eth_private, ptr %0, i32 0, i32 33
  %47 = load ptr, ptr %46, align 4
  %48 = tail call i8 @llvm.bitreverse.i8(i8 %5) #15
  %49 = tail call i8 @llvm.bitreverse.i8(i8 %24) #15
  %50 = tail call i8 @llvm.bitreverse.i8(i8 %16) #15
  %51 = tail call i8 @llvm.bitreverse.i8(i8 %37) #15
  %52 = tail call i8 @llvm.bitreverse.i8(i8 %33) #15
  %53 = zext i8 %52 to i32
  %54 = and i32 %53, 3
  %55 = zext i8 %51 to i32
  %56 = shl nuw nsw i32 %55, 2
  %57 = and i32 %56, 508
  %58 = or i32 %57, %54
  %59 = lshr i32 %55, 7
  %60 = zext i8 %50 to i32
  %61 = shl nuw nsw i32 %60, 1
  %62 = or i32 %59, %61
  %63 = zext i8 %49 to i32
  %64 = and i8 %48, 1
  %65 = zext i8 %64 to i32
  %66 = shl nuw nsw i32 %65, 8
  %67 = or i32 %66, %63
  %68 = shl nuw nsw i32 %53, 7
  %69 = and i32 %68, 1536
  %70 = xor i32 %62, %67
  %71 = xor i32 %70, %58
  %72 = or i32 %71, %69
  %73 = getelementptr %struct.addr_table_entry, ptr %47, i32 %72
  %74 = getelementptr %struct.addr_table_entry, ptr %47, i32 2047
  br label %75

75:                                               ; preds = %88, %3
  %76 = phi i32 [ 0, %3 ], [ %92, %88 ]
  %77 = phi ptr [ %73, %3 ], [ %91, %88 ]
  %78 = load i32, ptr %77, align 4
  %79 = and i32 %78, 1
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %96, label %81

81:                                               ; preds = %75
  %82 = xor i32 %78, %30
  %83 = icmp ult i32 %82, 8
  br i1 %83, label %84, label %88

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.addr_table_entry, ptr %77, i32 0, i32 1
  %86 = load i32, ptr %85, align 4
  %87 = icmp eq i32 %86, %45
  br i1 %87, label %96, label %88

88:                                               ; preds = %84, %81
  %89 = icmp eq ptr %77, %74
  %90 = getelementptr %struct.addr_table_entry, ptr %77, i32 1
  %91 = select i1 %89, ptr %47, ptr %90
  %92 = add nuw nsw i32 %76, 1
  %93 = icmp eq i32 %92, 12
  br i1 %93, label %94, label %75

94:                                               ; preds = %88
  %95 = load i32, ptr %91, align 4
  br label %96

96:                                               ; preds = %94, %84, %75
  %97 = phi i32 [ %95, %94 ], [ %78, %75 ], [ %78, %84 ]
  %98 = phi ptr [ %91, %94 ], [ %77, %75 ], [ %77, %84 ]
  %99 = phi i32 [ 12, %94 ], [ %76, %75 ], [ %76, %84 ]
  %100 = xor i32 %97, %30
  %101 = icmp ult i32 %100, 8
  br i1 %101, label %108, label %102

102:                                              ; preds = %96
  %103 = getelementptr inbounds %struct.addr_table_entry, ptr %98, i32 0, i32 1
  %104 = load i32, ptr %103, align 4
  %105 = icmp ne i32 %104, %45
  %106 = icmp ne i32 %2, 0
  %107 = and i1 %106, %105
  br i1 %107, label %119, label %108

108:                                              ; preds = %102, %96
  %109 = icmp eq i32 %99, 12
  %110 = icmp eq i32 %2, 0
  br i1 %109, label %111, label %115

111:                                              ; preds = %108
  br i1 %110, label %112, label %119

112:                                              ; preds = %111
  %113 = getelementptr inbounds %struct.pxa168_eth_private, ptr %0, i32 0, i32 20
  %114 = load ptr, ptr %113, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %114, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17) #16
  br label %119

115:                                              ; preds = %108
  %116 = select i1 %110, i32 %45, i32 0
  %117 = select i1 %110, i32 %31, i32 0
  %118 = getelementptr inbounds %struct.addr_table_entry, ptr %98, i32 0, i32 1
  store i32 %116, ptr %118, align 4
  store i32 %117, ptr %98, align 4
  br label %119

119:                                              ; preds = %115, %112, %111, %102
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pxa168_get_drvinfo(ptr nocapture noundef readnone %0, ptr noundef %1) #13 {
  %3 = getelementptr inbounds %struct.ethtool_drvinfo, ptr %1, i32 0, i32 1
  %4 = tail call i32 @strlcpy(ptr noundef %3, ptr noundef nonnull @.str, i32 noundef 32) #15
  %5 = getelementptr inbounds %struct.ethtool_drvinfo, ptr %1, i32 0, i32 2
  %6 = tail call i32 @strlcpy(ptr noundef %5, ptr noundef nonnull @.str.20, i32 noundef 32) #15
  %7 = getelementptr inbounds %struct.ethtool_drvinfo, ptr %1, i32 0, i32 3
  %8 = tail call i32 @strlcpy(ptr noundef %7, ptr noundef nonnull @.str.21, i32 noundef 32) #15
  %9 = getelementptr inbounds %struct.ethtool_drvinfo, ptr %1, i32 0, i32 4
  %10 = tail call i32 @strlcpy(ptr noundef %9, ptr noundef nonnull @.str.21, i32 noundef 32) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_nway_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_ts_info(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_get_link_ksettings(ptr noundef, ptr noundef) #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_receive_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdiobus_alloc_size(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @smi_wait_ready(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.pxa168_eth_private, ptr %0, i32 0, i32 32
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 16
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #15, !srcloc !10
  %6 = and i32 %5, 268435456
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %69, label %8

8:                                                ; preds = %1
  tail call void @msleep(i32 noundef 10) #15
  %9 = load ptr, ptr %2, align 8
  %10 = getelementptr i8, ptr %9, i32 16
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #15, !srcloc !10
  %12 = and i32 %11, 268435456
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %69, label %14

14:                                               ; preds = %8
  tail call void @msleep(i32 noundef 10) #15
  %15 = load ptr, ptr %2, align 8
  %16 = getelementptr i8, ptr %15, i32 16
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #15, !srcloc !10
  %18 = and i32 %17, 268435456
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %69, label %20

20:                                               ; preds = %14
  tail call void @msleep(i32 noundef 10) #15
  %21 = load ptr, ptr %2, align 8
  %22 = getelementptr i8, ptr %21, i32 16
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #15, !srcloc !10
  %24 = and i32 %23, 268435456
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %69, label %26

26:                                               ; preds = %20
  tail call void @msleep(i32 noundef 10) #15
  %27 = load ptr, ptr %2, align 8
  %28 = getelementptr i8, ptr %27, i32 16
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #15, !srcloc !10
  %30 = and i32 %29, 268435456
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %69, label %32

32:                                               ; preds = %26
  tail call void @msleep(i32 noundef 10) #15
  %33 = load ptr, ptr %2, align 8
  %34 = getelementptr i8, ptr %33, i32 16
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #15, !srcloc !10
  %36 = and i32 %35, 268435456
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %69, label %38

38:                                               ; preds = %32
  tail call void @msleep(i32 noundef 10) #15
  %39 = load ptr, ptr %2, align 8
  %40 = getelementptr i8, ptr %39, i32 16
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #15, !srcloc !10
  %42 = and i32 %41, 268435456
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %69, label %44

44:                                               ; preds = %38
  tail call void @msleep(i32 noundef 10) #15
  %45 = load ptr, ptr %2, align 8
  %46 = getelementptr i8, ptr %45, i32 16
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #15, !srcloc !10
  %48 = and i32 %47, 268435456
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %69, label %50

50:                                               ; preds = %44
  tail call void @msleep(i32 noundef 10) #15
  %51 = load ptr, ptr %2, align 8
  %52 = getelementptr i8, ptr %51, i32 16
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #15, !srcloc !10
  %54 = and i32 %53, 268435456
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %69, label %56

56:                                               ; preds = %50
  tail call void @msleep(i32 noundef 10) #15
  %57 = load ptr, ptr %2, align 8
  %58 = getelementptr i8, ptr %57, i32 16
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #15, !srcloc !10
  %60 = and i32 %59, 268435456
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %56
  tail call void @msleep(i32 noundef 10) #15
  %63 = load ptr, ptr %2, align 8
  %64 = getelementptr i8, ptr %63, i32 16
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #15, !srcloc !10
  %66 = and i32 %65, 268435456
  %67 = icmp eq i32 %66, 0
  %68 = select i1 %67, i32 0, i32 -110
  br label %69

69:                                               ; preds = %62, %56, %50, %44, %38, %32, %26, %20, %14, %8, %1
  %70 = phi i32 [ 0, %1 ], [ 0, %8 ], [ 0, %14 ], [ 0, %20 ], [ 0, %26 ], [ 0, %32 ], [ 0, %38 ], [ 0, %44 ], [ 0, %50 ], [ 0, %56 ], [ %68, %62 ]
  ret i32 %70
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.bitreverse.i8(i8) #10

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #13 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nounwind }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(0) }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 2156195311, i64 2156195818, i64 2156195348, i64 2156195404, i64 2156195438, i64 2156195462, i64 2156195503, i64 2156195524, i64 2156195552, i64 2156195586}
!10 = !{i64 5031471}
!11 = !{!"auto-init"}
!12 = !{i64 2156198080, i64 2156198587, i64 2156198117, i64 2156198173, i64 2156198207, i64 2156198231, i64 2156198272, i64 2156198293, i64 2156198321, i64 2156198355}
!13 = !{i64 5031053}
!14 = !{i64 2156185225}
!15 = !{!"branch_weights", i32 2000, i32 1}
!16 = !{i64 2156188745, i64 2156189252, i64 2156188782, i64 2156188838, i64 2156188872, i64 2156188896, i64 2156188937, i64 2156188958, i64 2156188986, i64 2156189020}
!17 = !{i64 2156191132, i64 2156191639, i64 2156191169, i64 2156191225, i64 2156191259, i64 2156191283, i64 2156191324, i64 2156191345, i64 2156191373, i64 2156191407}
!18 = !{i64 2156193498}
!19 = !{i64 2156193682}
!20 = !{i64 2148905343}
!21 = !{i64 2156177523}
!22 = !{i64 2156177615}
