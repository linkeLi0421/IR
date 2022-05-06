; ModuleID = '/llk/IR/drivers/net/ethernet/allwinner/sun4i-emac.c_pt.bc'
source_filename = "../drivers/net/ethernet/allwinner/sun4i-emac.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.90 }
%union.anon.90 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.emac_board_info = type { ptr, ptr, ptr, %struct.spinlock, ptr, i32, ptr, i16, i32, ptr, i32, i32, i32, i32, ptr, i32 }
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
%struct.sockaddr = type { i16, [14 x i8] }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.1, %union.anon.89, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.89 = type { %struct.atomic_t }
%struct.emac_dma_req = type { ptr, ptr, ptr, i32, i32 }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }

@__param_str_debug = internal constant [17 x i8] c"sun4i_emac.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global i32 -1, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.90 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype330 = internal constant [30 x i8] c"sun4i_emac.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug331 = internal constant [42 x i8] c"sun4i_emac.parm=debug:debug message flags\00", section ".modinfo", align 1
@__param_str_watchdog = internal constant [20 x i8] c"sun4i_emac.watchdog\00", align 1
@watchdog = internal global i32 5000, align 4
@__param_watchdog = internal constant %struct.kernel_param { ptr @__param_str_watchdog, ptr null, ptr @param_ops_int, i16 256, i8 -1, i8 0, %union.anon.90 { ptr @watchdog } }, section "__param", align 4
@__UNIQUE_ID_watchdogtype332 = internal constant [33 x i8] c"sun4i_emac.parmtype=watchdog:int\00", section ".modinfo", align 1
@__UNIQUE_ID_watchdog333 = internal constant [58 x i8] c"sun4i_emac.parm=watchdog:transmit timeout in milliseconds\00", section ".modinfo", align 1
@__initcall__kmod_sun4i_emac__334_1151_emac_driver_init6 = internal global ptr @emac_driver_init, section ".initcall6.init", align 4
@emac_driver = internal global %struct.platform_driver { ptr @emac_probe, ptr @emac_remove, ptr null, ptr @emac_suspend, ptr @emac_resume, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @emac_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_emac_driver_exit = internal global ptr @emac_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author335 = internal constant [44 x i8] c"sun4i_emac.author=Stefan Roese <sr@denx.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_author336 = internal constant [67 x i8] c"sun4i_emac.author=Maxime Ripard <maxime.ripard@free-electrons.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description337 = internal constant [57 x i8] c"sun4i_emac.description=Allwinner A10 emac network driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file338 = internal constant [58 x i8] c"sun4i_emac.file=drivers/net/ethernet/allwinner/sun4i-emac\00", section ".modinfo", align 1
@__UNIQUE_ID_license339 = internal constant [23 x i8] c"sun4i_emac.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [11 x i8] c"sun4i-emac\00", align 1
@emac_of_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-emac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-emac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"could not allocate device.\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"failed to remap registers\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"No irq resource\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"configure dma failed. disable dma.\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Error couldn't enable clock (%d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"Error couldn't map SRAM to device\0A\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"phy-handle\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"phy\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"no associated PHY\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"using random MAC address %pM\0A\00", align 1
@emac_netdev_ops = internal constant %struct.net_device_ops { ptr null, ptr null, ptr @emac_open, ptr @emac_stop, ptr @emac_start_xmit, ptr null, ptr null, ptr null, ptr @emac_set_rx_mode, ptr @emac_set_mac_address, ptr @eth_validate_addr, ptr null, ptr @phy_do_ioctl_running, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @emac_timeout, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@emac_ethtool_ops = internal constant %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @emac_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr @emac_get_msglevel, ptr @emac_set_msglevel, ptr null, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @phy_ethtool_get_link_ksettings, ptr @phy_ethtool_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.11 = private unnamed_addr constant [28 x i8] c"Registering netdev failed!\0A\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"%s: at %p, IRQ %d MAC: %pM\0A\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"not found (%d).\0A\00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"get io resource from device failed.\0A\00", align 1
@.str.15 = private unnamed_addr constant [45 x i8] c"get io resource from device: %pa, size = %u\0A\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.17 = private unnamed_addr constant [48 x i8] c"failed to request dma channel. dma is disabled\0A\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"config dma slave failed\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.19 = private unnamed_addr constant [23 x i8] c"cannot probe MDIO bus\0A\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c" ab : %x\0A\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"dma mapping error.\0A\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"prepare slave single failed\0A\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"alloc emac dma req error.\0A\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"dma submit error.\0A\00", align 1
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.25 = private unnamed_addr constant [28 x i8] c"include/linux/dma-mapping.h\00", align 1
@.str.26 = private unnamed_addr constant [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.27 = private unnamed_addr constant [24 x i8] c"could not find the PHY\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.28 = private unnamed_addr constant [14 x i8] c"tx time out.\0A\00", align 1
@llvm.compiler.used = appending global [14 x ptr] [ptr @__UNIQUE_ID_author335, ptr @__UNIQUE_ID_author336, ptr @__UNIQUE_ID_debug331, ptr @__UNIQUE_ID_debugtype330, ptr @__UNIQUE_ID_description337, ptr @__UNIQUE_ID_file338, ptr @__UNIQUE_ID_license339, ptr @__UNIQUE_ID_watchdog333, ptr @__UNIQUE_ID_watchdogtype332, ptr @__exitcall_emac_driver_exit, ptr @__initcall__kmod_sun4i_emac__334_1151_emac_driver_init6, ptr @__param_debug, ptr @__param_watchdog, ptr @emac_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @emac_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @emac_driver, ptr noundef null) #12
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @emac_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @emac_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @emac_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.dma_slave_config, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = tail call ptr @alloc_etherdev_mqs(i32 noundef 64, i32 noundef 1, i32 noundef 1) #12
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1) #13
  br label %142

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 111, i32 1
  store ptr %3, ptr %10, align 4
  %11 = getelementptr i8, ptr %6, i32 1408
  %12 = getelementptr i8, ptr %6, i32 1412
  store ptr %3, ptr %12, align 4
  %13 = getelementptr i8, ptr %6, i32 1432
  store ptr %6, ptr %13, align 4
  %14 = getelementptr i8, ptr %6, i32 1416
  store ptr %0, ptr %14, align 4
  %15 = load i32, ptr @debug, align 4
  %16 = add i32 %15, -32
  %17 = icmp ult i32 %16, -31
  %18 = shl nsw i32 -1, %15
  %19 = xor i32 %18, -1
  %20 = select i1 %17, i32 0, i32 %19
  %21 = getelementptr i8, ptr %6, i32 1428
  store i32 %20, ptr %21, align 4
  %22 = getelementptr i8, ptr %6, i32 1420
  store i32 0, ptr %22, align 4
  %23 = tail call ptr @of_iomap(ptr noundef %5, i32 noundef 0) #12
  %24 = getelementptr i8, ptr %6, i32 1424
  store ptr %23, ptr %24, align 4
  %25 = icmp eq ptr %23, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2) #13
  br label %139

27:                                               ; preds = %9
  %28 = ptrtoint ptr %23 to i32
  %29 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 5
  store i32 %28, ptr %29, align 32
  %30 = tail call i32 @irq_of_parse_and_map(ptr noundef %5, i32 noundef 0) #12
  %31 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 59
  store i32 %30, ptr %31, align 8
  %32 = icmp eq i32 %30, -6
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef nonnull %6, ptr noundef nonnull @.str.3) #13
  %34 = load i32, ptr %31, align 8
  br label %136

35:                                               ; preds = %27
  %36 = load ptr, ptr %14, align 4
  %37 = load ptr, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #12
  %38 = getelementptr inbounds i8, ptr %2, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %38, i8 0, i32 40, i1 false) #12
  %39 = tail call ptr @platform_get_resource(ptr noundef %36, i32 noundef 512, i32 noundef 0) #12
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %37, ptr noundef nonnull @.str.14) #13
  br label %73

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.resource, ptr %39, i32 0, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = load i32, ptr %39, align 4
  %46 = add i32 %44, 1
  %47 = sub i32 %46, %45
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %37, ptr noundef nonnull @.str.15, ptr noundef nonnull %39, i32 noundef %47) #13
  %48 = load i32, ptr %39, align 4
  %49 = add i32 %48, 76
  %50 = getelementptr i8, ptr %6, i32 1468
  store i32 %49, ptr %50, align 4
  %51 = getelementptr inbounds %struct.platform_device, ptr %36, i32 0, i32 3
  %52 = tail call ptr @dma_request_chan(ptr noundef %51, ptr noundef nonnull @.str.16) #12
  %53 = getelementptr i8, ptr %6, i32 1464
  store ptr %52, ptr %53, align 4
  %54 = icmp ugt ptr %52, inttoptr (i32 -4096 to ptr)
  br i1 %54, label %75, label %55

55:                                               ; preds = %42
  store i32 2, ptr %2, align 4
  %56 = getelementptr inbounds %struct.dma_slave_config, ptr %2, i32 0, i32 4
  store i32 4, ptr %56, align 4
  %57 = getelementptr inbounds %struct.dma_slave_config, ptr %2, i32 0, i32 3
  store i32 4, ptr %57, align 4
  %58 = load i32, ptr %50, align 4
  %59 = getelementptr inbounds %struct.dma_slave_config, ptr %2, i32 0, i32 1
  store i32 %58, ptr %59, align 4
  %60 = getelementptr inbounds %struct.dma_slave_config, ptr %2, i32 0, i32 6
  store i32 4, ptr %60, align 4
  %61 = getelementptr inbounds %struct.dma_slave_config, ptr %2, i32 0, i32 5
  store i32 4, ptr %61, align 4
  %62 = getelementptr inbounds %struct.dma_slave_config, ptr %2, i32 0, i32 9
  store i8 0, ptr %62, align 4
  %63 = load ptr, ptr %52, align 4
  %64 = getelementptr inbounds %struct.dma_device, ptr %63, i32 0, i32 44
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %71, label %67

67:                                               ; preds = %55
  %68 = call i32 %65(ptr noundef %52, ptr noundef nonnull %2) #12
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #12
  br label %79

71:                                               ; preds = %67, %55
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %37, ptr noundef nonnull @.str.18) #13
  %72 = load ptr, ptr %53, align 4
  call void @dma_release_channel(ptr noundef %72) #12
  br label %73

73:                                               ; preds = %71, %41
  %74 = getelementptr i8, ptr %6, i32 1464
  store ptr null, ptr %74, align 4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #12
  br label %78

75:                                               ; preds = %42
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %37, ptr noundef nonnull @.str.17) #13
  %76 = load ptr, ptr %53, align 4
  store ptr null, ptr %53, align 4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #12
  %77 = icmp eq ptr %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %75, %73
  call void (ptr, ptr, ...) @netdev_info(ptr noundef nonnull %6, ptr noundef nonnull @.str.4) #13
  br label %79

79:                                               ; preds = %78, %75, %70
  %80 = call ptr @devm_clk_get(ptr noundef %3, ptr noundef null) #12
  store ptr %80, ptr %11, align 4
  %81 = icmp ugt ptr %80, inttoptr (i32 -4096 to ptr)
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = ptrtoint ptr %80 to i32
  br label %131

84:                                               ; preds = %79
  %85 = call i32 @clk_prepare(ptr noundef %80) #12
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = call i32 @clk_enable(ptr noundef %80) #12
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %87
  call void @clk_unprepare(ptr noundef %80) #12
  br label %91

91:                                               ; preds = %90, %84
  %92 = phi i32 [ %88, %90 ], [ %85, %84 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.5, i32 noundef %92) #13
  br label %131

93:                                               ; preds = %87
  %94 = call i32 @sunxi_sram_claim(ptr noundef %3) #12
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %93
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.6) #13
  br label %128

97:                                               ; preds = %93
  %98 = call fastcc ptr @of_parse_phandle(ptr noundef %5, ptr noundef nonnull @.str.7)
  %99 = getelementptr i8, ptr %6, i32 1444
  store ptr %98, ptr %99, align 4
  %100 = icmp eq ptr %98, null
  br i1 %100, label %101, label %104

101:                                              ; preds = %97
  %102 = call fastcc ptr @of_parse_phandle(ptr noundef %5, ptr noundef nonnull @.str.8)
  store ptr %102, ptr %99, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %125, label %104

104:                                              ; preds = %101, %97
  %105 = call i32 @of_get_ethdev_address(ptr noundef %5, ptr noundef nonnull %6) #12
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %104
  call fastcc void @eth_hw_addr_random(ptr noundef nonnull %6)
  %108 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 72
  %109 = load ptr, ptr %108, align 32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.10, ptr noundef %109) #13
  br label %110

110:                                              ; preds = %107, %104
  %111 = getelementptr i8, ptr %6, i32 1440
  store i32 1, ptr %111, align 4
  call fastcc void @emac_powerup(ptr noundef nonnull %6)
  call fastcc void @emac_reset(ptr noundef %11)
  %112 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 16
  store ptr @emac_netdev_ops, ptr %112, align 8
  %113 = load i32, ptr @watchdog, align 4
  %114 = call i32 @__msecs_to_jiffies(i32 noundef %113) #12
  %115 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 96
  store i32 %114, ptr %115, align 8
  %116 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 42
  store ptr @emac_ethtool_ops, ptr %116, align 8
  %117 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %6, ptr %117, align 8
  call void @netif_carrier_off(ptr noundef nonnull %6) #12
  %118 = call i32 @register_netdev(ptr noundef nonnull %6) #12
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %110
  %121 = load ptr, ptr %24, align 4
  %122 = load i32, ptr %31, align 8
  %123 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 72
  %124 = load ptr, ptr %123, align 32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.12, ptr noundef nonnull %6, ptr noundef %121, i32 noundef %122, ptr noundef %124) #13
  br label %142

125:                                              ; preds = %110, %101
  %126 = phi ptr [ @.str.9, %101 ], [ @.str.11, %110 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull %126) #13
  %127 = call i32 @sunxi_sram_release(ptr noundef %3) #12
  br label %128

128:                                              ; preds = %125, %96
  %129 = phi i32 [ %94, %96 ], [ -19, %125 ]
  %130 = load ptr, ptr %11, align 4
  call void @clk_disable(ptr noundef %130) #12
  call void @clk_unprepare(ptr noundef %130) #12
  br label %131

131:                                              ; preds = %128, %91, %82
  %132 = phi i32 [ %83, %82 ], [ %92, %91 ], [ %129, %128 ]
  %133 = load i32, ptr %31, align 8
  call void @irq_dispose_mapping(i32 noundef %133) #12
  %134 = getelementptr i8, ptr %6, i32 1464
  %135 = load ptr, ptr %134, align 4
  call void @dma_release_channel(ptr noundef %135) #12
  br label %136

136:                                              ; preds = %131, %33
  %137 = phi i32 [ %34, %33 ], [ %132, %131 ]
  %138 = load ptr, ptr %24, align 4
  call void @iounmap(ptr noundef %138) #12
  br label %139

139:                                              ; preds = %136, %26
  %140 = phi i32 [ %137, %136 ], [ -12, %26 ]
  %141 = load ptr, ptr %12, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %141, ptr noundef nonnull @.str.13, i32 noundef %140) #13
  call void @free_netdev(ptr noundef nonnull %6) #12
  br label %142

142:                                              ; preds = %139, %120, %8
  %143 = phi i32 [ %140, %139 ], [ 0, %120 ], [ -12, %8 ]
  ret i32 %143
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @emac_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 1464
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %5, align 4
  %9 = getelementptr inbounds %struct.dma_device, ptr %8, i32 0, i32 47
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = tail call i32 %10(ptr noundef nonnull %5) #12
  %14 = load ptr, ptr %4, align 4
  br label %15

15:                                               ; preds = %12, %7
  %16 = phi ptr [ %5, %7 ], [ %14, %12 ]
  tail call void @dma_release_channel(ptr noundef %16) #12
  br label %17

17:                                               ; preds = %15, %1
  %18 = getelementptr i8, ptr %3, i32 1408
  tail call void @unregister_netdev(ptr noundef %3) #12
  %19 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %20 = tail call i32 @sunxi_sram_release(ptr noundef %19) #12
  %21 = load ptr, ptr %18, align 4
  tail call void @clk_disable(ptr noundef %21) #12
  tail call void @clk_unprepare(ptr noundef %21) #12
  %22 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 59
  %23 = load i32, ptr %22, align 8
  tail call void @irq_dispose_mapping(i32 noundef %23) #12
  %24 = getelementptr i8, ptr %3, i32 1424
  %25 = load ptr, ptr %24, align 4
  tail call void @iounmap(ptr noundef %25) #12
  tail call void @free_netdev(ptr noundef %3) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @emac_suspend(ptr nocapture noundef readonly %0, [1 x i32] %1) #2 {
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %4 = load ptr, ptr %3, align 8
  tail call void @netif_carrier_off(ptr noundef %4) #12
  tail call void @netif_device_detach(ptr noundef %4) #12
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !8
  tail call void @arm_heavy_mb() #12
  %5 = getelementptr i8, ptr %4, i32 1424
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 0) #12, !srcloc !9
  %8 = load ptr, ptr %5, align 4
  %9 = getelementptr i8, ptr %8, i32 88
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !12
  tail call void @arm_heavy_mb() #12
  %11 = load ptr, ptr %5, align 4
  %12 = getelementptr i8, ptr %11, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #12, !srcloc !9
  %13 = load ptr, ptr %5, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !13
  %15 = and i32 %14, -8
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !14
  tail call void @arm_heavy_mb() #12
  %16 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %15) #12, !srcloc !9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @emac_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  tail call void @arm_heavy_mb() #12
  %4 = getelementptr i8, ptr %3, i32 1424
  %5 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 0) #12, !srcloc !9
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 42949600) #12
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !16
  tail call void @arm_heavy_mb() #12
  %7 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 1) #12, !srcloc !9
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 42949600) #12
  tail call fastcc void @emac_init_device(ptr noundef %3)
  tail call void @netif_device_attach(ptr noundef %3) #12
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sunxi_sram_claim(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @of_parse_phandle(ptr noundef %0, ptr noundef %1) unnamed_addr #5 {
  %3 = alloca %struct.of_phandle_args, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false), !annotation !17
  %4 = call i32 @__of_parse_phandle_with_args(ptr noundef %0, ptr noundef %1, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %3) #12
  %5 = icmp eq i32 %4, 0
  %6 = load ptr, ptr %3, align 4
  %7 = select i1 %5, ptr %6, ptr null
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #12
  ret ptr %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_ethdev_address(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @eth_hw_addr_random(ptr noundef %0) unnamed_addr #5 {
  %2 = alloca [6 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %2, i8 0, i32 6, i1 false), !annotation !17
  call void @get_random_bytes(ptr noundef nonnull %2, i32 noundef 6) #12
  %3 = load i8, ptr %2, align 1
  %4 = and i8 %3, -4
  %5 = or i8 %4, 2
  store i8 %5, ptr %2, align 1
  call void @dev_addr_mod(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2, i32 noundef 6) #12
  %6 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 50
  store i8 1, ptr %6, align 8
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #12
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @emac_powerup(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr i8, ptr %0, i32 1424
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 60
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !18
  %6 = or i32 %5, 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !19
  tail call void @arm_heavy_mb() #12
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr i8, ptr %7, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #12, !srcloc !9
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748) #12
  %10 = load ptr, ptr %2, align 4
  %11 = getelementptr i8, ptr %10, i32 92
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !20
  %13 = and i32 %12, -32769
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !21
  tail call void @arm_heavy_mb() #12
  %14 = load ptr, ptr %2, align 4
  %15 = getelementptr i8, ptr %14, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #12, !srcloc !9
  %16 = load ptr, ptr %2, align 4
  %17 = getelementptr i8, ptr %16, i32 124
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !22
  %19 = and i32 %18, -1021
  %20 = or i32 %19, 52
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !23
  tail call void @arm_heavy_mb() #12
  %21 = load ptr, ptr %2, align 4
  %22 = getelementptr i8, ptr %21, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #12, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !24
  tail call void @arm_heavy_mb() #12
  %23 = load ptr, ptr %2, align 4
  %24 = getelementptr i8, ptr %23, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 0) #12, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !25
  tail call void @arm_heavy_mb() #12
  %25 = load ptr, ptr %2, align 4
  %26 = getelementptr i8, ptr %25, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 0) #12, !srcloc !9
  %27 = load ptr, ptr %2, align 4
  %28 = getelementptr i8, ptr %27, i32 88
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !26
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !27
  tail call void @arm_heavy_mb() #12
  %30 = load ptr, ptr %2, align 4
  %31 = getelementptr i8, ptr %30, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %29) #12, !srcloc !9
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748) #12
  %33 = load ptr, ptr %2, align 4
  %34 = getelementptr i8, ptr %33, i32 4
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !28
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !29
  tail call void @arm_heavy_mb() #12
  %36 = or i32 %35, 1
  %37 = load ptr, ptr %2, align 4
  %38 = getelementptr i8, ptr %37, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %36) #12, !srcloc !9
  %39 = load ptr, ptr %2, align 4
  %40 = getelementptr i8, ptr %39, i32 92
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !30
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !31
  tail call void @arm_heavy_mb() #12
  %42 = or i32 %41, 12
  %43 = load ptr, ptr %2, align 4
  %44 = getelementptr i8, ptr %43, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %42) #12, !srcloc !9
  %45 = load ptr, ptr %2, align 4
  %46 = getelementptr i8, ptr %45, i32 96
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !32
  %48 = or i32 %47, 50
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !33
  tail call void @arm_heavy_mb() #12
  %49 = load ptr, ptr %2, align 4
  %50 = getelementptr i8, ptr %49, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %48) #12, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !34
  tail call void @arm_heavy_mb() #12
  %51 = load ptr, ptr %2, align 4
  %52 = getelementptr i8, ptr %51, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 21) #12, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !35
  tail call void @arm_heavy_mb() #12
  %53 = load ptr, ptr %2, align 4
  %54 = getelementptr i8, ptr %53, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 3090) #12, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !36
  tail call void @arm_heavy_mb() #12
  %55 = load ptr, ptr %2, align 4
  %56 = getelementptr i8, ptr %55, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 14095) #12, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !37
  tail call void @arm_heavy_mb() #12
  %57 = load ptr, ptr %2, align 4
  %58 = getelementptr i8, ptr %57, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 1536) #12, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !38
  tail call void @arm_heavy_mb() #12
  %59 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 72
  %60 = load ptr, ptr %59, align 32
  %61 = load i8, ptr %60, align 1
  %62 = zext i8 %61 to i32
  %63 = shl nuw nsw i32 %62, 16
  %64 = getelementptr i8, ptr %60, i32 1
  %65 = load i8, ptr %64, align 1
  %66 = zext i8 %65 to i32
  %67 = shl nuw nsw i32 %66, 8
  %68 = or i32 %67, %63
  %69 = getelementptr i8, ptr %60, i32 2
  %70 = load i8, ptr %69, align 1
  %71 = zext i8 %70 to i32
  %72 = or i32 %68, %71
  %73 = load ptr, ptr %2, align 4
  %74 = getelementptr i8, ptr %73, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 %72) #12, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !39
  tail call void @arm_heavy_mb() #12
  %75 = load ptr, ptr %59, align 32
  %76 = getelementptr i8, ptr %75, i32 3
  %77 = load i8, ptr %76, align 1
  %78 = zext i8 %77 to i32
  %79 = shl nuw nsw i32 %78, 16
  %80 = getelementptr i8, ptr %75, i32 4
  %81 = load i8, ptr %80, align 1
  %82 = zext i8 %81 to i32
  %83 = shl nuw nsw i32 %82, 8
  %84 = or i32 %83, %79
  %85 = getelementptr i8, ptr %75, i32 5
  %86 = load i8, ptr %85, align 1
  %87 = zext i8 %86 to i32
  %88 = or i32 %84, %87
  %89 = load ptr, ptr %2, align 4
  %90 = getelementptr i8, ptr %89, i32 152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %90, i32 %88) #12, !srcloc !9
  %91 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %91(i32 noundef 214748000) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @emac_reset(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  tail call void @arm_heavy_mb() #12
  %2 = getelementptr inbounds %struct.emac_board_info, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 0) #12, !srcloc !9
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 42949600) #12
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !16
  tail call void @arm_heavy_mb() #12
  %5 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 1) #12, !srcloc !9
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 42949600) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sunxi_sram_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_dispose_mapping(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @emac_open(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 59
  %3 = load i32, ptr %2, align 8
  %4 = tail call i32 @request_threaded_irq(i32 noundef %3, ptr noundef nonnull @emac_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %0, ptr noundef %0) #12
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %34

6:                                                ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  tail call void @arm_heavy_mb() #12
  %7 = getelementptr i8, ptr %0, i32 1424
  %8 = load ptr, ptr %7, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 0) #12, !srcloc !9
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 42949600) #12
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !16
  tail call void @arm_heavy_mb() #12
  %10 = load ptr, ptr %7, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 1) #12, !srcloc !9
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 42949600) #12
  tail call fastcc void @emac_init_device(ptr noundef %0)
  %12 = getelementptr i8, ptr %0, i32 1432
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %0, i32 1444
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %0, i32 1460
  %17 = load i32, ptr %16, align 4
  %18 = tail call ptr @of_phy_connect(ptr noundef %13, ptr noundef %15, ptr noundef nonnull @emac_handle_link_change, i32 noundef 0, i32 noundef %17) #12
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %6
  %21 = load ptr, ptr %12, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %21, ptr noundef nonnull @.str.27) #13
  %22 = load i32, ptr %2, align 8
  %23 = tail call ptr @free_irq(i32 noundef %22, ptr noundef %0) #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.19) #13
  br label %34

24:                                               ; preds = %6
  %25 = tail call i32 @phy_set_max_speed(ptr noundef nonnull %18, i32 noundef 100) #12
  %26 = getelementptr i8, ptr %0, i32 1448
  store i32 0, ptr %26, align 4
  %27 = getelementptr i8, ptr %0, i32 1452
  store i32 0, ptr %27, align 4
  %28 = getelementptr i8, ptr %0, i32 1456
  store i32 -1, ptr %28, align 4
  %29 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %30 = load ptr, ptr %29, align 8
  tail call void @phy_start(ptr noundef %30) #12
  %31 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  %32 = load ptr, ptr %31, align 64
  %33 = getelementptr inbounds %struct.netdev_queue, ptr %32, i32 0, i32 12
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %33) #12
  br label %34

34:                                               ; preds = %24, %20, %1
  %35 = phi i32 [ -19, %20 ], [ 0, %24 ], [ -11, %1 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @emac_stop(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  %3 = load ptr, ptr %2, align 64
  %4 = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %4) #12
  tail call void @netif_carrier_off(ptr noundef %0) #12
  %5 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %6 = load ptr, ptr %5, align 8
  tail call void @phy_stop(ptr noundef %6) #12
  %7 = load ptr, ptr %5, align 8
  tail call void @phy_disconnect(ptr noundef %7) #12
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !8
  tail call void @arm_heavy_mb() #12
  %8 = getelementptr i8, ptr %0, i32 1424
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 0) #12, !srcloc !9
  %11 = load ptr, ptr %8, align 4
  %12 = getelementptr i8, ptr %11, i32 88
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !12
  tail call void @arm_heavy_mb() #12
  %14 = load ptr, ptr %8, align 4
  %15 = getelementptr i8, ptr %14, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #12, !srcloc !9
  %16 = load ptr, ptr %8, align 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !13
  %18 = and i32 %17, -8
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !14
  tail call void @arm_heavy_mb() #12
  %19 = load ptr, ptr %8, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %18) #12, !srcloc !9
  %20 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 59
  %21 = load i32, ptr %20, align 8
  %22 = tail call ptr @free_irq(i32 noundef %21, ptr noundef %0) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @emac_start_xmit(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr i8, ptr %1, i32 1436
  %4 = load i16, ptr %3, align 4
  %5 = and i16 %4, 3
  %6 = icmp eq i16 %5, 3
  br i1 %6, label %74, label %7

7:                                                ; preds = %2
  %8 = icmp eq i16 %5, 1
  %9 = zext i1 %8 to i32
  %10 = getelementptr i8, ptr %1, i32 1420
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #12
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !40
  tail call void @arm_heavy_mb() #12
  %12 = getelementptr i8, ptr %1, i32 1424
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %9) #12, !srcloc !9
  %15 = load ptr, ptr %12, align 4
  %16 = getelementptr i8, ptr %15, i32 36
  %17 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %20 = load i32, ptr %19, align 8
  %21 = add i32 %20, -1
  %22 = or i32 %21, 3
  %23 = add i32 %22, 1
  %24 = sdiv i32 %23, 4
  tail call void @__raw_writesl(ptr noundef %16, ptr noundef %18, i32 noundef %24) #12
  %25 = load i32, ptr %19, align 8
  %26 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, %25
  store i32 %28, ptr %26, align 4
  %29 = shl nuw nsw i32 1, %9
  %30 = load i16, ptr %3, align 4
  %31 = trunc i32 %29 to i16
  %32 = or i16 %30, %31
  store i16 %32, ptr %3, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12
  tail call void @arm_heavy_mb() #12
  %33 = load i32, ptr %19, align 8
  %34 = load ptr, ptr %12, align 4
  br i1 %8, label %50, label %35

35:                                               ; preds = %7
  %36 = getelementptr i8, ptr %34, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %33) #12, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !41
  tail call void @arm_heavy_mb() #12
  %37 = load ptr, ptr %12, align 4
  %38 = getelementptr i8, ptr %37, i32 12
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !42
  %40 = or i32 %39, 1
  %41 = load ptr, ptr %12, align 4
  %42 = getelementptr i8, ptr %41, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %40) #12, !srcloc !9
  %43 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 87
  %44 = load ptr, ptr %43, align 64
  %45 = load volatile i32, ptr @jiffies, align 64
  %46 = getelementptr inbounds %struct.netdev_queue, ptr %44, i32 0, i32 11
  %47 = load volatile i32, ptr %46, align 8
  %48 = icmp eq i32 %47, %45
  br i1 %48, label %65, label %49

49:                                               ; preds = %35
  store volatile i32 %45, ptr %46, align 8
  br label %65

50:                                               ; preds = %7
  %51 = getelementptr i8, ptr %34, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %33) #12, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !43
  tail call void @arm_heavy_mb() #12
  %52 = load ptr, ptr %12, align 4
  %53 = getelementptr i8, ptr %52, i32 16
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !44
  %55 = or i32 %54, 1
  %56 = load ptr, ptr %12, align 4
  %57 = getelementptr i8, ptr %56, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %55) #12, !srcloc !9
  %58 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 87
  %59 = load ptr, ptr %58, align 64
  %60 = load volatile i32, ptr @jiffies, align 64
  %61 = getelementptr inbounds %struct.netdev_queue, ptr %59, i32 0, i32 11
  %62 = load volatile i32, ptr %61, align 8
  %63 = icmp eq i32 %62, %60
  br i1 %63, label %65, label %64

64:                                               ; preds = %50
  store volatile i32 %60, ptr %61, align 8
  br label %65

65:                                               ; preds = %64, %50, %49, %35
  %66 = load i16, ptr %3, align 4
  %67 = and i16 %66, 3
  %68 = icmp eq i16 %67, 3
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 87
  %71 = load ptr, ptr %70, align 64
  %72 = getelementptr inbounds %struct.netdev_queue, ptr %71, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %72) #12
  br label %73

73:                                               ; preds = %69, %65
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %11) #12
  tail call void @__dev_kfree_skb_any(ptr noundef %0, i32 noundef 0) #12
  br label %74

74:                                               ; preds = %73, %2
  %75 = phi i32 [ 0, %73 ], [ 16, %2 ]
  ret i32 %75
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @emac_set_rx_mode(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 1424
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 60
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !45
  %6 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 14
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %5, -5439761
  %9 = lshr i32 %7, 4
  %10 = and i32 %9, 16
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !46
  tail call void @arm_heavy_mb() #12
  %11 = or i32 %8, %10
  %12 = or i32 %11, 5439744
  %13 = load ptr, ptr %2, align 4
  %14 = getelementptr i8, ptr %13, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #12, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @emac_set_mac_address(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %42

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.sockaddr, ptr %1, i32 0, i32 1
  tail call void @dev_addr_mod(ptr noundef %0, i32 noundef 0, ptr noundef %8, i32 noundef 6) #12
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !47
  tail call void @arm_heavy_mb() #12
  %9 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 72
  %10 = load ptr, ptr %9, align 32
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i32
  %13 = shl nuw nsw i32 %12, 16
  %14 = getelementptr i8, ptr %10, i32 1
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  %17 = shl nuw nsw i32 %16, 8
  %18 = or i32 %17, %13
  %19 = getelementptr i8, ptr %10, i32 2
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i32
  %22 = or i32 %18, %21
  %23 = getelementptr i8, ptr %0, i32 1424
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %24, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %22) #12, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !48
  tail call void @arm_heavy_mb() #12
  %26 = load ptr, ptr %9, align 32
  %27 = getelementptr i8, ptr %26, i32 3
  %28 = load i8, ptr %27, align 1
  %29 = zext i8 %28 to i32
  %30 = shl nuw nsw i32 %29, 16
  %31 = getelementptr i8, ptr %26, i32 4
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  %34 = shl nuw nsw i32 %33, 8
  %35 = or i32 %34, %30
  %36 = getelementptr i8, ptr %26, i32 5
  %37 = load i8, ptr %36, align 1
  %38 = zext i8 %37 to i32
  %39 = or i32 %35, %38
  %40 = load ptr, ptr %23, align 4
  %41 = getelementptr i8, ptr %40, i32 152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %39) #12, !srcloc !9
  br label %42

42:                                               ; preds = %7, %2
  %43 = phi i32 [ 0, %7 ], [ -16, %2 ]
  ret i32 %43
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_do_ioctl_running(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @emac_timeout(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 1428
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr i8, ptr %0, i32 1412
  %9 = load ptr, ptr %8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.28) #13
  br label %10

10:                                               ; preds = %7, %2
  %11 = getelementptr i8, ptr %0, i32 1420
  %12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %11) #12
  %13 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  %14 = load ptr, ptr %13, align 64
  %15 = getelementptr inbounds %struct.netdev_queue, ptr %14, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %15) #12
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !15
  tail call void @arm_heavy_mb() #12
  %16 = getelementptr i8, ptr %0, i32 1424
  %17 = load ptr, ptr %16, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 0) #12, !srcloc !9
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 42949600) #12
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !16
  tail call void @arm_heavy_mb() #12
  %19 = load ptr, ptr %16, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 1) #12, !srcloc !9
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 42949600) #12
  tail call fastcc void @emac_init_device(ptr noundef %0)
  %21 = load ptr, ptr %13, align 64
  %22 = load volatile i32, ptr @jiffies, align 64
  %23 = getelementptr inbounds %struct.netdev_queue, ptr %21, i32 0, i32 11
  %24 = load volatile i32, ptr %23, align 8
  %25 = icmp eq i32 %24, %22
  br i1 %25, label %28, label %26

26:                                               ; preds = %10
  store volatile i32 %22, ptr %23, align 8
  %27 = load ptr, ptr %13, align 64
  br label %28

28:                                               ; preds = %26, %10
  %29 = phi ptr [ %21, %10 ], [ %27, %26 ]
  tail call void @netif_tx_wake_queue(ptr noundef %29) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %11, i32 noundef %12) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @emac_interrupt(i32 noundef %0, ptr noundef %1) #2 {
  %3 = alloca %struct.scatterlist, align 4
  %4 = getelementptr i8, ptr %1, i32 1408
  %5 = getelementptr i8, ptr %1, i32 1420
  tail call void @_raw_spin_lock(ptr noundef %5) #12
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !49
  tail call void @arm_heavy_mb() #12
  %6 = getelementptr i8, ptr %1, i32 1424
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 0) #12, !srcloc !9
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr i8, ptr %9, i32 88
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !50
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !51
  tail call void @arm_heavy_mb() #12
  %12 = load ptr, ptr %6, align 4
  %13 = getelementptr i8, ptr %12, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #12, !srcloc !9
  %14 = and i32 %11, 256
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %222, label %16

16:                                               ; preds = %2
  %17 = getelementptr i8, ptr %1, i32 1440
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %222

20:                                               ; preds = %16
  store i32 0, ptr %17, align 4
  %21 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 20
  %22 = getelementptr i8, ptr %1, i32 1464
  %23 = getelementptr i8, ptr %1, i32 1412
  %24 = getelementptr inbounds %struct.scatterlist, ptr %3, i32 0, i32 3
  %25 = getelementptr inbounds %struct.scatterlist, ptr %3, i32 0, i32 4
  %26 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36
  %27 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 2
  %28 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 12
  %29 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 10
  br label %30

30:                                               ; preds = %221, %20
  %31 = load ptr, ptr %6, align 4
  %32 = getelementptr i8, ptr %31, i32 80
  %33 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #12, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !52
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %30
  store i32 1, ptr %17, align 4
  %36 = load ptr, ptr %6, align 4
  %37 = getelementptr i8, ptr %36, i32 84
  %38 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #12, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !53
  %39 = or i32 %38, 271
  call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !54
  call void @arm_heavy_mb() #12
  %40 = load ptr, ptr %6, align 4
  %41 = getelementptr i8, ptr %40, i32 84
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %39) #12, !srcloc !9
  %42 = load ptr, ptr %6, align 4
  %43 = getelementptr i8, ptr %42, i32 80
  %44 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #12, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !55
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %222, label %46

46:                                               ; preds = %35, %30
  %47 = load ptr, ptr %6, align 4
  %48 = getelementptr i8, ptr %47, i32 76
  %49 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #12, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !56
  %50 = icmp eq i32 %49, 21184845
  %51 = load ptr, ptr %6, align 4
  br i1 %50, label %79, label %52

52:                                               ; preds = %46
  %53 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #12, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !57
  call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !58
  call void @arm_heavy_mb() #12
  %54 = and i32 %53, -5
  %55 = load ptr, ptr %6, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %54) #12, !srcloc !9
  %56 = load ptr, ptr %6, align 4
  %57 = getelementptr i8, ptr %56, i32 60
  %58 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #12, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !59
  call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !60
  call void @arm_heavy_mb() #12
  %59 = or i32 %58, 8
  %60 = load ptr, ptr %6, align 4
  %61 = getelementptr i8, ptr %60, i32 60
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 %59) #12, !srcloc !9
  br label %62

62:                                               ; preds = %62, %52
  %63 = load ptr, ptr %6, align 4
  %64 = getelementptr i8, ptr %63, i32 60
  %65 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #12, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !61
  %66 = and i32 %65, 8
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %62

68:                                               ; preds = %62
  %69 = load ptr, ptr %6, align 4
  %70 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #12, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !62
  call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !63
  call void @arm_heavy_mb() #12
  %71 = or i32 %70, 4
  %72 = load ptr, ptr %6, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 %71) #12, !srcloc !9
  %73 = load ptr, ptr %6, align 4
  %74 = getelementptr i8, ptr %73, i32 84
  %75 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %74) #12, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !64
  %76 = or i32 %75, 271
  call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !65
  call void @arm_heavy_mb() #12
  %77 = load ptr, ptr %6, align 4
  %78 = getelementptr i8, ptr %77, i32 84
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 %76) #12, !srcloc !9
  store i32 1, ptr %17, align 4
  br label %222

79:                                               ; preds = %46
  %80 = getelementptr i8, ptr %51, i32 76
  %81 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %80) #12, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !66
  %82 = and i32 %81, 65535
  %83 = and i32 %81, 8388608
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %94, !prof !67

85:                                               ; preds = %79
  %86 = and i32 %81, 1048576
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %85
  %89 = load i32, ptr %28, align 8
  %90 = add i32 %89, 1
  store i32 %90, ptr %28, align 8
  br label %91

91:                                               ; preds = %88, %85
  %92 = and i32 %81, 6291456
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %221, label %217

94:                                               ; preds = %79
  %95 = icmp ugt i32 %82, 63
  br i1 %95, label %96, label %221

96:                                               ; preds = %94
  %97 = add nuw nsw i32 %82, 4
  %98 = call ptr @__netdev_alloc_skb(ptr noundef %1, i32 noundef %97, i32 noundef 2592) #12
  %99 = icmp eq ptr %98, null
  br i1 %99, label %221, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.sk_buff, ptr %98, i32 0, i32 17
  %102 = load ptr, ptr %101, align 4
  %103 = getelementptr i8, ptr %102, i32 2
  store ptr %103, ptr %101, align 4
  %104 = getelementptr inbounds %struct.sk_buff, ptr %98, i32 0, i32 14
  %105 = load ptr, ptr %104, align 8
  %106 = getelementptr i8, ptr %105, i32 2
  store ptr %106, ptr %104, align 8
  %107 = add nsw i32 %82, -4
  %108 = call ptr @skb_put(ptr noundef nonnull %98, i32 noundef %107) #12
  %109 = load i32, ptr %21, align 4
  %110 = icmp ult i32 %82, %109
  br i1 %110, label %205, label %111

111:                                              ; preds = %100
  %112 = load ptr, ptr %22, align 4
  %113 = icmp eq ptr %112, null
  br i1 %113, label %205, label %114

114:                                              ; preds = %111
  %115 = load ptr, ptr %6, align 4
  %116 = getelementptr i8, ptr %115, i32 60
  %117 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %116) #12, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !68
  %118 = or i32 %117, 4
  call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !69
  call void @arm_heavy_mb() #12
  %119 = load ptr, ptr %6, align 4
  %120 = getelementptr i8, ptr %119, i32 60
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %120, i32 %118) #12, !srcloc !9
  %121 = load ptr, ptr %23, align 4
  %122 = call zeroext i1 @is_vmalloc_addr(ptr noundef %108) #12
  %123 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %124 = xor i1 %123, true
  %125 = select i1 %122, i1 %124, i1 false
  br i1 %125, label %126, label %135, !prof !67

126:                                              ; preds = %114
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %127 = call ptr @dev_driver_string(ptr noundef %121) #12
  %128 = getelementptr inbounds %struct.device, ptr %121, i32 0, i32 3
  %129 = load ptr, ptr %128, align 4
  %130 = icmp eq ptr %129, null
  br i1 %130, label %131, label %133

131:                                              ; preds = %126
  %132 = load ptr, ptr %121, align 4
  br label %133

133:                                              ; preds = %131, %126
  %134 = phi ptr [ %132, %131 ], [ %129, %126 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.26, ptr noundef %127, ptr noundef %134) #12
  br label %135

135:                                              ; preds = %133, %114
  br i1 %122, label %145, label %136

136:                                              ; preds = %135
  %137 = load ptr, ptr @mem_map, align 4
  %138 = ptrtoint ptr %108 to i32
  %139 = add i32 %138, 1073741824
  %140 = lshr i32 %139, 12
  %141 = getelementptr %struct.page, ptr %137, i32 %140
  %142 = and i32 %138, 4095
  %143 = call i32 @dma_map_page_attrs(ptr noundef %121, ptr noundef %141, i32 noundef %142, i32 noundef %82, i32 noundef 2, i32 noundef 0) #12
  %144 = icmp eq i32 %143, -1
  br i1 %144, label %145, label %147

145:                                              ; preds = %136, %135
  %146 = load ptr, ptr %23, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %146, ptr noundef nonnull @.str.21) #13
  br label %198

147:                                              ; preds = %136
  %148 = load ptr, ptr %22, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, i8 0, i32 20, i1 false) #12, !annotation !17
  call void @sg_init_table(ptr noundef nonnull %3, i32 noundef 1) #12
  store i32 %143, ptr %24, align 4
  store i32 %82, ptr %25, align 4
  %149 = icmp eq ptr %148, null
  br i1 %149, label %157, label %150

150:                                              ; preds = %147
  %151 = load ptr, ptr %148, align 4
  %152 = icmp eq ptr %151, null
  br i1 %152, label %157, label %153

153:                                              ; preds = %150
  %154 = getelementptr inbounds %struct.dma_device, ptr %151, i32 0, i32 39
  %155 = load ptr, ptr %154, align 4
  %156 = icmp eq ptr %155, null
  br i1 %156, label %157, label %158

157:                                              ; preds = %153, %150, %147
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #12
  br label %161

158:                                              ; preds = %153
  %159 = call ptr %155(ptr noundef nonnull %148, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 2, i32 noundef 3, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #12
  %160 = icmp eq ptr %159, null
  br i1 %160, label %161, label %163

161:                                              ; preds = %158, %157
  %162 = load ptr, ptr %23, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %162, ptr noundef nonnull @.str.22) #13
  br label %191

163:                                              ; preds = %158
  %164 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %165 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %164, i32 noundef 2848, i32 noundef 20) #14
  %166 = icmp eq ptr %165, null
  br i1 %166, label %167, label %169

167:                                              ; preds = %163
  %168 = load ptr, ptr %23, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %168, ptr noundef nonnull @.str.23) #13
  br label %182

169:                                              ; preds = %163
  store ptr %4, ptr %165, align 8
  %170 = getelementptr inbounds %struct.emac_dma_req, ptr %165, i32 0, i32 1
  store ptr %159, ptr %170, align 4
  %171 = getelementptr inbounds %struct.emac_dma_req, ptr %165, i32 0, i32 2
  store ptr %98, ptr %171, align 8
  %172 = getelementptr inbounds %struct.emac_dma_req, ptr %165, i32 0, i32 3
  store i32 %143, ptr %172, align 4
  %173 = getelementptr inbounds %struct.emac_dma_req, ptr %165, i32 0, i32 4
  store i32 %82, ptr %173, align 8
  %174 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %159, i32 0, i32 8
  store ptr %165, ptr %174, align 4
  %175 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %159, i32 0, i32 6
  store ptr @emac_dma_done_callback, ptr %175, align 4
  %176 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %159, i32 0, i32 4
  %177 = load ptr, ptr %176, align 4
  %178 = call i32 %177(ptr noundef nonnull %159) #12
  %179 = icmp sgt i32 %178, -1
  br i1 %179, label %193, label %180

180:                                              ; preds = %169
  %181 = load ptr, ptr %23, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %181, ptr noundef nonnull @.str.24) #13
  call void @kfree(ptr noundef nonnull %165) #12
  br label %182

182:                                              ; preds = %180, %167
  %183 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %159, i32 0, i32 1
  %184 = load i32, ptr %183, align 4
  %185 = and i32 %184, 64
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %191, label %187

187:                                              ; preds = %182
  %188 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %159, i32 0, i32 5
  %189 = load ptr, ptr %188, align 4
  %190 = call i32 %189(ptr noundef nonnull %159) #12
  br label %191

191:                                              ; preds = %187, %182, %161
  %192 = load ptr, ptr %23, align 4
  call void @dma_unmap_page_attrs(ptr noundef %192, i32 noundef %143, i32 noundef %82, i32 noundef 2, i32 noundef 0) #12
  br label %198

193:                                              ; preds = %169
  %194 = load ptr, ptr %22, align 4
  %195 = load ptr, ptr %194, align 4
  %196 = getelementptr inbounds %struct.dma_device, ptr %195, i32 0, i32 50
  %197 = load ptr, ptr %196, align 4
  call void %197(ptr noundef %194) #12
  br label %222

198:                                              ; preds = %191, %145
  %199 = load ptr, ptr %6, align 4
  %200 = getelementptr i8, ptr %199, i32 60
  %201 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %200) #12, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !70
  %202 = and i32 %201, -5
  call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !71
  call void @arm_heavy_mb() #12
  %203 = load ptr, ptr %6, align 4
  %204 = getelementptr i8, ptr %203, i32 60
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %204, i32 %202) #12, !srcloc !9
  br label %205

205:                                              ; preds = %198, %111, %100
  %206 = load ptr, ptr %6, align 4
  %207 = getelementptr i8, ptr %206, i32 76
  %208 = add nsw i32 %82, -1
  %209 = or i32 %208, 3
  %210 = add nsw i32 %209, 1
  %211 = sdiv i32 %210, 4
  call void @__raw_readsl(ptr noundef %207, ptr noundef %108, i32 noundef %211) #12
  %212 = load i32, ptr %27, align 8
  %213 = add i32 %212, %82
  store i32 %213, ptr %27, align 8
  %214 = call zeroext i16 @eth_type_trans(ptr noundef nonnull %98, ptr noundef %1) #12
  %215 = getelementptr inbounds %struct.sk_buff, ptr %98, i32 0, i32 13, i32 0, i32 16
  store i16 %214, ptr %215, align 8
  %216 = call i32 @netif_rx(ptr noundef nonnull %98) #12
  br label %217

217:                                              ; preds = %205, %91
  %218 = phi ptr [ %26, %205 ], [ %29, %91 ]
  %219 = load i32, ptr %218, align 8
  %220 = add i32 %219, 1
  store i32 %220, ptr %218, align 8
  br label %221

221:                                              ; preds = %217, %96, %94, %91
  br label %30

222:                                              ; preds = %193, %68, %35, %16, %2
  %223 = and i32 %11, 3
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %238, label %225

225:                                              ; preds = %222
  %226 = getelementptr i8, ptr %1, i32 1436
  %227 = load i16, ptr %226, align 4
  %228 = trunc i32 %223 to i16
  %229 = xor i16 %228, -1
  %230 = and i16 %227, %229
  store i16 %230, ptr %226, align 4
  %231 = icmp eq i32 %223, 3
  %232 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 1
  %233 = load i32, ptr %232, align 4
  %234 = select i1 %231, i32 2, i32 1
  %235 = add i32 %233, %234
  store i32 %235, ptr %232, align 4
  %236 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 87
  %237 = load ptr, ptr %236, align 64
  call void @netif_tx_wake_queue(ptr noundef %237) #12
  br label %238

238:                                              ; preds = %225, %222
  %239 = and i32 %11, 12
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %242, label %241

241:                                              ; preds = %238
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.20, i32 noundef %11) #13
  br label %242

242:                                              ; preds = %241, %238
  %243 = getelementptr i8, ptr %1, i32 1440
  %244 = load i32, ptr %243, align 4
  %245 = icmp eq i32 %244, 1
  %246 = load ptr, ptr %6, align 4
  %247 = getelementptr i8, ptr %246, i32 84
  %248 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %247) #12
  call void asm sideeffect "dsb ", "~{memory}"() #12
  br i1 %245, label %249, label %253

249:                                              ; preds = %242
  %250 = or i32 %248, 271
  call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !72
  call void @arm_heavy_mb() #12
  %251 = load ptr, ptr %6, align 4
  %252 = getelementptr i8, ptr %251, i32 84
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %252, i32 %250) #12, !srcloc !9
  br label %257

253:                                              ; preds = %242
  %254 = or i32 %248, 15
  call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !73
  call void @arm_heavy_mb() #12
  %255 = load ptr, ptr %6, align 4
  %256 = getelementptr i8, ptr %255, i32 84
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %256, i32 %254) #12, !srcloc !9
  br label %257

257:                                              ; preds = %253, %249
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !74
  %258 = load i16, ptr %5, align 4
  %259 = add i16 %258, 1
  store i16 %259, ptr %5, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !75
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !76
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !77
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @emac_init_device(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr i8, ptr %0, i32 1420
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #12
  %4 = getelementptr i8, ptr %0, i32 1424
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 116
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !78
  %8 = and i32 %7, -257
  %9 = getelementptr i8, ptr %0, i32 1452
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 100
  %12 = select i1 %11, i32 256, i32 0
  %13 = or i32 %12, %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !79
  tail call void @arm_heavy_mb() #12
  %14 = load ptr, ptr %4, align 4
  %15 = getelementptr i8, ptr %14, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #12, !srcloc !9
  %16 = load ptr, ptr %4, align 4
  %17 = getelementptr i8, ptr %16, i32 96
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !80
  %19 = and i32 %18, -2
  %20 = getelementptr i8, ptr %0, i32 1456
  %21 = load i32, ptr %20, align 4
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = or i32 %19, %23
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !81
  tail call void @arm_heavy_mb() #12
  %25 = load ptr, ptr %4, align 4
  %26 = getelementptr i8, ptr %25, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #12, !srcloc !9
  %27 = load ptr, ptr %4, align 4
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !82
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !83
  tail call void @arm_heavy_mb() #12
  %29 = or i32 %28, 7
  %30 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %29) #12, !srcloc !9
  %31 = load ptr, ptr %4, align 4
  %32 = getelementptr i8, ptr %31, i32 84
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !84
  %34 = or i32 %33, 271
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !85
  tail call void @arm_heavy_mb() #12
  %35 = load ptr, ptr %4, align 4
  %36 = getelementptr i8, ptr %35, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %34) #12, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @emac_dma_done_callback(ptr noundef %0) #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.emac_dma_req, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.emac_board_info, ptr %2, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.emac_dma_req, ptr %0, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.emac_board_info, ptr %2, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.emac_dma_req, ptr %0, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %10, i32 noundef %12, i32 noundef %8, i32 noundef 2, i32 noundef 0) #12
  %13 = tail call zeroext i16 @eth_type_trans(ptr noundef %4, ptr noundef %6) #12
  %14 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 13, i32 0, i32 16
  store i16 %13, ptr %14, align 8
  %15 = tail call i32 @netif_rx(ptr noundef %4) #12
  %16 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 36
  %17 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 36, i32 2
  %18 = load i32, ptr %17, align 8
  %19 = add i32 %18, %8
  store i32 %19, ptr %17, align 8
  %20 = load i32, ptr %16, align 8
  %21 = add i32 %20, 1
  store i32 %21, ptr %16, align 8
  %22 = getelementptr inbounds %struct.emac_board_info, ptr %2, i32 0, i32 4
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr i8, ptr %23, i32 60
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !86
  %26 = and i32 %25, -5
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !87
  tail call void @arm_heavy_mb() #12
  %27 = load ptr, ptr %22, align 4
  %28 = getelementptr i8, ptr %27, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #12, !srcloc !9
  %29 = load ptr, ptr %22, align 4
  %30 = getelementptr i8, ptr %29, i32 84
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !88
  %32 = or i32 %31, 256
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !89
  tail call void @arm_heavy_mb() #12
  %33 = load ptr, ptr %22, align 4
  %34 = getelementptr i8, ptr %33, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %32) #12, !srcloc !9
  %35 = getelementptr inbounds %struct.emac_board_info, ptr %2, i32 0, i32 8
  store i32 1, ptr %35, align 4
  tail call void @kfree(ptr noundef %0) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_connect(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @emac_handle_link_change(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.phy_device, ptr %3, i32 0, i32 4
  %5 = load i16, ptr %4, align 8
  %6 = and i16 %5, 8192
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %36, label %8

8:                                                ; preds = %1
  %9 = getelementptr i8, ptr %0, i32 1452
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.phy_device, ptr %3, i32 0, i32 8
  %12 = load i32, ptr %11, align 8
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %29, label %14

14:                                               ; preds = %8
  %15 = getelementptr i8, ptr %0, i32 1420
  %16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %15) #12
  %17 = load i32, ptr %11, align 8
  store i32 %17, ptr %9, align 4
  %18 = getelementptr i8, ptr %0, i32 1424
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %19, i32 116
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !78
  %22 = and i32 %21, -257
  %23 = load i32, ptr %9, align 4
  %24 = icmp eq i32 %23, 100
  %25 = select i1 %24, i32 256, i32 0
  %26 = or i32 %25, %22
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !79
  tail call void @arm_heavy_mb() #12
  %27 = load ptr, ptr %18, align 4
  %28 = getelementptr i8, ptr %27, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #12, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %15, i32 noundef %16) #12
  br label %29

29:                                               ; preds = %14, %8
  %30 = phi i32 [ 1, %14 ], [ 0, %8 ]
  %31 = getelementptr i8, ptr %0, i32 1456
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.phy_device, ptr %3, i32 0, i32 9
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %29, %1
  %37 = phi i32 [ %30, %29 ], [ 0, %1 ]
  %38 = load i16, ptr %4, align 8
  %39 = lshr i16 %38, 13
  %40 = and i16 %39, 1
  %41 = zext i16 %40 to i32
  %42 = getelementptr i8, ptr %0, i32 1448
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, %41
  br i1 %44, label %81, label %67

45:                                               ; preds = %29
  %46 = getelementptr i8, ptr %0, i32 1420
  %47 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %46) #12
  %48 = load i32, ptr %33, align 4
  store i32 %48, ptr %31, align 4
  %49 = getelementptr i8, ptr %0, i32 1424
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr i8, ptr %50, i32 96
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !80
  %53 = and i32 %52, -2
  %54 = load i32, ptr %31, align 4
  %55 = icmp ne i32 %54, 0
  %56 = zext i1 %55 to i32
  %57 = or i32 %53, %56
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !81
  tail call void @arm_heavy_mb() #12
  %58 = load ptr, ptr %49, align 4
  %59 = getelementptr i8, ptr %58, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %57) #12, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %46, i32 noundef %47) #12
  %60 = load i16, ptr %4, align 8
  %61 = lshr i16 %60, 13
  %62 = and i16 %61, 1
  %63 = zext i16 %62 to i32
  %64 = getelementptr i8, ptr %0, i32 1448
  %65 = load i32, ptr %64, align 4
  %66 = icmp eq i32 %65, %63
  br i1 %66, label %83, label %67

67:                                               ; preds = %45, %36
  %68 = phi ptr [ %64, %45 ], [ %42, %36 ]
  %69 = phi i32 [ %63, %45 ], [ %41, %36 ]
  %70 = phi i16 [ %62, %45 ], [ %40, %36 ]
  %71 = icmp eq i16 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %67
  %73 = getelementptr i8, ptr %0, i32 1452
  store i32 0, ptr %73, align 4
  %74 = getelementptr i8, ptr %0, i32 1456
  store i32 -1, ptr %74, align 4
  %75 = load i16, ptr %4, align 8
  %76 = lshr i16 %75, 13
  %77 = and i16 %76, 1
  %78 = zext i16 %77 to i32
  br label %79

79:                                               ; preds = %72, %67
  %80 = phi i32 [ %69, %67 ], [ %78, %72 ]
  store i32 %80, ptr %68, align 4
  br label %83

81:                                               ; preds = %36
  %82 = icmp eq i32 %37, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %81, %79, %45
  tail call void @phy_print_status(ptr noundef %3) #12
  br label %84

84:                                               ; preds = %83, %81
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_set_max_speed(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_print_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @emac_get_drvinfo(ptr nocapture noundef readonly %0, ptr noundef %1) #8 {
  %3 = getelementptr inbounds %struct.ethtool_drvinfo, ptr %1, i32 0, i32 1
  %4 = tail call i32 @strlcpy(ptr noundef %3, ptr noundef nonnull @.str, i32 noundef 32) #12
  %5 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 111, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 111
  %10 = load ptr, ptr %9, align 4
  br label %11

11:                                               ; preds = %8, %2
  %12 = phi ptr [ %10, %8 ], [ %6, %2 ]
  %13 = getelementptr inbounds %struct.ethtool_drvinfo, ptr %1, i32 0, i32 4
  %14 = tail call i32 @strlcpy(ptr noundef %13, ptr noundef %12, i32 noundef 32) #12
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @emac_get_msglevel(ptr nocapture noundef readonly %0) #9 {
  %2 = getelementptr i8, ptr %0, i32 1428
  %3 = load i32, ptr %2, align 4
  ret i32 %3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @emac_set_msglevel(ptr nocapture noundef writeonly %0, i32 noundef %1) #10 {
  %3 = getelementptr i8, ptr %0, i32 1428
  store i32 %1, ptr %3, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_get_link_ksettings(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_set_link_ksettings(ptr noundef, ptr noundef) #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

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
!8 = !{i64 2155553515}
!9 = !{i64 4843720}
!10 = !{i64 4844138}
!11 = !{i64 2155553993}
!12 = !{i64 2155554192}
!13 = !{i64 2155554682}
!14 = !{i64 2155554908}
!15 = !{i64 2155510053}
!16 = !{i64 2155510938}
!17 = !{!"auto-init"}
!18 = !{i64 2155520954}
!19 = !{i64 2155521162}
!20 = !{i64 2155522188}
!21 = !{i64 2155522397}
!22 = !{i64 2155522887}
!23 = !{i64 2155523110}
!24 = !{i64 2155523445}
!25 = !{i64 2155523770}
!26 = !{i64 2155524248}
!27 = !{i64 2155524447}
!28 = !{i64 2155516301}
!29 = !{i64 2155516520}
!30 = !{i64 2155517032}
!31 = !{i64 2155517271}
!32 = !{i64 2155517805}
!33 = !{i64 2155518031}
!34 = !{i64 2155518376}
!35 = !{i64 2155518743}
!36 = !{i64 2155519144}
!37 = !{i64 2155519521}
!38 = !{i64 2155525392}
!39 = !{i64 2155525941}
!40 = !{i64 2155532135}
!41 = !{i64 2155533348}
!42 = !{i64 2155533832}
!43 = !{i64 2155534904}
!44 = !{i64 2155535388}
!45 = !{i64 2155520009}
!46 = !{i64 2155520346}
!47 = !{i64 2155527778}
!48 = !{i64 2155528318}
!49 = !{i64 2155549267}
!50 = !{i64 2155549745}
!51 = !{i64 2155549947}
!52 = !{i64 2155536485}
!53 = !{i64 2155537546}
!54 = !{i64 2155537887}
!55 = !{i64 2155538377}
!56 = !{i64 2155538727}
!57 = !{i64 2155539843}
!58 = !{i64 2155540064}
!59 = !{i64 2155540580}
!60 = !{i64 2155540790}
!61 = !{i64 2155541302}
!62 = !{i64 2155541652}
!63 = !{i64 2155541871}
!64 = !{i64 2155542383}
!65 = !{i64 2155542724}
!66 = !{i64 2155543214}
!67 = !{!"branch_weights", i32 1, i32 2000}
!68 = !{i64 2155548021}
!69 = !{i64 2155548229}
!70 = !{i64 2155548719}
!71 = !{i64 2155548927}
!72 = !{i64 2155551667}
!73 = !{i64 2155552489}
!74 = !{i64 2148906171}
!75 = !{i64 2148901995}
!76 = !{i64 2148902070, i64 2148902097, i64 2148902144, i64 2148902166, i64 2148902194, i64 2148902214}
!77 = !{i64 2148929174}
!78 = !{i64 2155507542}
!79 = !{i64 2155507767}
!80 = !{i64 2155508257}
!81 = !{i64 2155508474}
!82 = !{i64 2155529292}
!83 = !{i64 2155529551}
!84 = !{i64 2155530107}
!85 = !{i64 2155530448}
!86 = !{i64 2155512578}
!87 = !{i64 2155512786}
!88 = !{i64 2155513276}
!89 = !{i64 2155513484}
