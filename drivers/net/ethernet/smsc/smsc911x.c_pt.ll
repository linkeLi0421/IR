; ModuleID = '/llk/IR/drivers/net/ethernet/smsc/smsc911x.c_pt.bc'
source_filename = "../drivers/net/ethernet/smsc/smsc911x.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.90 }
%union.anon.90 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.smsc911x_ops = type { ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.97, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.114, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.97 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.ref_tracker_dir = type {}
%struct.possible_net_t = type {}
%union.anon.114 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.smsc911x_platform_config = type { i32, i32, i32, i32, i32, [6 x i8] }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.smsc911x_data = type { ptr, i32, i32, %struct.smsc911x_platform_config, %struct.spinlock, %struct.spinlock, ptr, i32, i32, i32, i32, i32, i32, ptr, %struct.napi_struct, i32, [64 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, ptr, [2 x %struct.regulator_bulk_data], ptr, ptr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
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
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.netdev_queue = type { ptr, %struct.netdevice_tracker, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, [4 x i8], %struct.spinlock, i32, i32, i32, [48 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [52 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [24 x i8] }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_regs = type { i32, i32, i32, [0 x i8] }
%struct.ethtool_eeprom = type { i32, i32, i32, i32, [0 x i8] }

@__UNIQUE_ID_file334 = internal constant [49 x i8] c"smsc911x.file=drivers/net/ethernet/smsc/smsc911x\00", section ".modinfo", align 1
@__UNIQUE_ID_license335 = internal constant [21 x i8] c"smsc911x.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version336 = internal constant [28 x i8] c"smsc911x.version=2008-10-21\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"smsc911x\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"2008-10-21\00", align 1
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292 }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_alias337 = internal constant [33 x i8] c"smsc911x.alias=platform:smsc911x\00", section ".modinfo", align 1
@__param_str_debug = internal constant [15 x i8] c"smsc911x.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global i32 3, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.90 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype338 = internal constant [28 x i8] c"smsc911x.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug339 = internal constant [52 x i8] c"smsc911x.parm=debug:Debug level (0=none,...,16=all)\00", section ".modinfo", align 1
@smsc911x_driver = internal global %struct.platform_driver { ptr @smsc911x_drv_probe, ptr @smsc911x_drv_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @smsc911x_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @smsc911x_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__initcall__kmod_smsc911x__342_2686_smsc911x_init_module6 = internal global ptr @smsc911x_init_module, section ".initcall6.init", align 4
@__exitcall_smsc911x_cleanup_module = internal global ptr @smsc911x_cleanup_module, section ".exitcall.exit", align 4
@smsc911x_dt_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"smsc,lan9115\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@smsc911x_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @smsc911x_suspend, ptr @smsc911x_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"smsc911x-memory\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"\014smsc911x: Could not allocate resource\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"\014smsc911x: Could not allocate irq resource\0A\00", align 1
@iomem_resource = external dso_local global %struct.resource, align 4
@standard_smsc911x_ops = internal constant %struct.smsc911x_ops { ptr @__smsc911x_reg_read, ptr @__smsc911x_reg_write, ptr @smsc911x_rx_readfifo, ptr @smsc911x_tx_writefifo }, align 4
@shifted_smsc911x_ops = internal constant %struct.smsc911x_ops { ptr @__smsc911x_reg_read_shift, ptr @__smsc911x_reg_write_shift, ptr @smsc911x_rx_readfifo_shift, ptr @smsc911x_tx_writefifo_shift }, align 4
@.str.6 = private unnamed_addr constant [18 x i8] c"MAC Address: %pM\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"vdd33a\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"vddvario\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"couldn't get regulators %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"failed to enable regulators %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"failed to enable clock %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"reg-io-width\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"reg-shift\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"smsc,irq-active-high\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"smsc,irq-push-pull\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"smsc,force-internal-phy\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"smsc,force-external-phy\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"smsc,save-mac-address\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.20 = private unnamed_addr constant [36 x i8] c"Device not READY in 100ms aborting\0A\00", align 1
@smsc911x_netdev_ops = internal constant %struct.net_device_ops { ptr null, ptr null, ptr @smsc911x_open, ptr @smsc911x_stop, ptr @smsc911x_hard_start_xmit, ptr null, ptr null, ptr null, ptr @smsc911x_set_multicast_list, ptr @smsc911x_set_mac_address, ptr @eth_validate_addr, ptr null, ptr @phy_do_ioctl_running, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @smsc911x_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@smsc911x_ethtool_ops = internal constant %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @smsc911x_ethtool_getdrvinfo, ptr @smsc911x_ethtool_getregslen, ptr @smsc911x_ethtool_getregs, ptr null, ptr null, ptr @smsc911x_ethtool_getmsglevel, ptr @smsc911x_ethtool_setmsglevel, ptr @phy_ethtool_nway_reset, ptr @ethtool_op_get_link, ptr null, ptr @smsc911x_ethtool_get_eeprom_len, ptr @smsc911x_ethtool_get_eeprom, ptr @smsc911x_ethtool_set_eeprom, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ethtool_op_get_ts_info, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @phy_ethtool_get_link_ksettings, ptr @phy_ethtool_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.21 = private unnamed_addr constant [36 x i8] c"ISR failed signaling test (IRQ %d)\0A\00", align 1
@.str.22 = private unnamed_addr constant [45 x i8] c"SMSC911x/921x identified at %#08lx, IRQ: %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"no PHY found\0A\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"Could not attach to PHY\0A\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"smsc911x-mdio\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"%s-%x\00", align 1
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_alias337, ptr @__UNIQUE_ID_debug339, ptr @__UNIQUE_ID_debugtype338, ptr @__UNIQUE_ID_file334, ptr @__UNIQUE_ID_license335, ptr @__UNIQUE_ID_version336, ptr @__exitcall_smsc911x_cleanup_module, ptr @__initcall__kmod_smsc911x__342_2686_smsc911x_init_module6, ptr @__modver_attr, ptr @__param_debug, ptr @smsc911x_cleanup_module], section "llvm.metadata"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @smsc911x_cleanup_module() #1 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @smsc911x_driver) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @smsc911x_init_module() #1 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @smsc911x_driver, ptr noundef null) #16
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @smsc911x_drv_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr @platform_get_resource_byname(ptr noundef %0, i32 noundef 512, ptr noundef nonnull @.str.3) #16
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #16
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #17
  br label %176

12:                                               ; preds = %7, %1
  %13 = phi ptr [ %8, %7 ], [ %5, %1 ]
  %14 = getelementptr inbounds %struct.resource, ptr %13, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = load i32, ptr %13, align 4
  %17 = add i32 %15, 1
  %18 = sub i32 %17, %16
  %19 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #16
  %20 = icmp eq i32 %19, -517
  br i1 %20, label %176, label %21

21:                                               ; preds = %12
  %22 = icmp slt i32 %19, 1
  br i1 %22, label %23, label %25

23:                                               ; preds = %21
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #17
  br label %176

25:                                               ; preds = %21
  %26 = load i32, ptr %13, align 4
  %27 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %26, i32 noundef %18, ptr noundef nonnull @.str.1, i32 noundef 0) #16
  %28 = icmp eq ptr %27, null
  br i1 %28, label %176, label %29

29:                                               ; preds = %25
  %30 = tail call ptr @alloc_etherdev_mqs(i32 noundef 488, i32 noundef 1, i32 noundef 1) #16
  %31 = icmp eq ptr %30, null
  br i1 %31, label %170, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.net_device, ptr %30, i32 0, i32 111, i32 1
  store ptr %2, ptr %33, align 4
  %34 = getelementptr i8, ptr %30, i32 1408
  %35 = getelementptr inbounds %struct.net_device, ptr %30, i32 0, i32 59
  store i32 %19, ptr %35, align 8
  %36 = load i32, ptr %13, align 4
  %37 = tail call ptr @ioremap(i32 noundef %36, i32 noundef %18) #16
  store ptr %37, ptr %34, align 8
  %38 = icmp eq ptr %37, null
  br i1 %38, label %168, label %39

39:                                               ; preds = %32
  %40 = getelementptr i8, ptr %30, i32 1484
  store ptr %30, ptr %40, align 4
  %41 = load i32, ptr @debug, align 4
  %42 = shl nsw i32 -1, %41
  %43 = xor i32 %42, -1
  %44 = getelementptr i8, ptr %30, i32 1472
  store i32 %43, ptr %44, align 8
  %45 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %30, ptr %45, align 8
  %46 = getelementptr i8, ptr %30, i32 1864
  store ptr @.str.7, ptr %46, align 8
  %47 = getelementptr i8, ptr %30, i32 1876
  store ptr @.str.8, ptr %47, align 4
  %48 = tail call i32 @regulator_bulk_get(ptr noundef %2, i32 noundef 2, ptr noundef %46) #16
  switch i32 %48, label %49 [
    i32 0, label %50
    i32 -517, label %165
  ]

49:                                               ; preds = %39
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef nonnull %30, ptr noundef nonnull @.str.9, i32 noundef %48) #17
  br label %50

50:                                               ; preds = %49, %39
  %51 = tail call ptr @devm_gpiod_get_optional(ptr noundef %2, ptr noundef nonnull @.str.10, i32 noundef 3) #16
  %52 = getelementptr i8, ptr %30, i32 1888
  store ptr %51, ptr %52, align 8
  %53 = tail call ptr @clk_get(ptr noundef %2, ptr noundef null) #16
  %54 = getelementptr i8, ptr %30, i32 1892
  store ptr %53, ptr %54, align 4
  %55 = icmp eq i32 %48, 0
  br i1 %55, label %56, label %165

56:                                               ; preds = %50
  %57 = load ptr, ptr %45, align 8
  %58 = getelementptr i8, ptr %57, i32 1864
  %59 = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %58) #16
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = getelementptr i8, ptr %57, i32 1892
  %63 = load ptr, ptr %62, align 4
  %64 = icmp ugt ptr %63, inttoptr (i32 -4096 to ptr)
  br i1 %64, label %81, label %69

65:                                               ; preds = %56
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %57, ptr noundef nonnull @.str.11, i32 noundef %59) #17
  %66 = getelementptr i8, ptr %57, i32 1892
  %67 = load ptr, ptr %66, align 4
  %68 = icmp ugt ptr %67, inttoptr (i32 -4096 to ptr)
  br i1 %68, label %157, label %69

69:                                               ; preds = %65, %61
  %70 = phi ptr [ %67, %65 ], [ %63, %61 ]
  %71 = tail call i32 @clk_prepare(ptr noundef %70) #16
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = tail call i32 @clk_enable(ptr noundef %70) #16
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %73
  tail call void @clk_unprepare(ptr noundef %70) #16
  br label %77

77:                                               ; preds = %76, %69
  %78 = phi i32 [ %71, %69 ], [ %74, %76 ]
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %157

80:                                               ; preds = %77
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %57, ptr noundef nonnull @.str.12, i32 noundef %78) #17
  br label %157

81:                                               ; preds = %73, %61
  %82 = load ptr, ptr %34, align 8
  %83 = icmp eq ptr %82, null
  br i1 %83, label %155, label %84

84:                                               ; preds = %81
  %85 = getelementptr i8, ptr %30, i32 1420
  %86 = tail call fastcc i32 @smsc911x_probe_config(ptr noundef %85, ptr noundef %2)
  %87 = icmp ne i32 %86, 0
  %88 = icmp ne ptr %4, null
  %89 = select i1 %87, i1 %88, i1 false
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(28) %85, ptr noundef nonnull align 4 dereferenceable(28) %4, i32 28, i1 false)
  br label %93

91:                                               ; preds = %84
  %92 = icmp eq i32 %86, 0
  br i1 %92, label %93, label %155

93:                                               ; preds = %91, %90
  %94 = getelementptr i8, ptr %30, i32 1860
  %95 = getelementptr i8, ptr %30, i32 1432
  %96 = load i32, ptr %95, align 4
  %97 = icmp eq i32 %96, 0
  %98 = select i1 %97, ptr @standard_smsc911x_ops, ptr @shifted_smsc911x_ops
  store ptr %98, ptr %94, align 4
  tail call void @pm_runtime_enable(ptr noundef %2) #16
  %99 = tail call i32 @__pm_runtime_resume(ptr noundef %2, i32 noundef 4) #16
  %100 = tail call fastcc i32 @smsc911x_init(ptr noundef nonnull %30)
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %152, label %102

102:                                              ; preds = %93
  tail call void @netif_carrier_off(ptr noundef nonnull %30) #16
  %103 = tail call fastcc i32 @smsc911x_mii_init(ptr noundef %0, ptr noundef nonnull %30)
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %152

105:                                              ; preds = %102
  %106 = tail call i32 @register_netdev(ptr noundef nonnull %30) #16
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %152

108:                                              ; preds = %105
  %109 = getelementptr i8, ptr %30, i32 1448
  tail call void @_raw_spin_lock_irq(ptr noundef %109) #16
  %110 = getelementptr inbounds %struct.net_device, ptr %30, i32 0, i32 72
  %111 = load ptr, ptr %110, align 32
  %112 = load i32, ptr %111, align 4
  %113 = and i32 %112, 1
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %108
  %116 = getelementptr i8, ptr %111, i32 4
  %117 = load i16, ptr %116, align 2
  %118 = zext i16 %117 to i32
  %119 = or i32 %112, %118
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %122, label %121

121:                                              ; preds = %115
  tail call fastcc void @smsc911x_set_hw_mac_address(ptr noundef %34, ptr noundef %111)
  br label %147

122:                                              ; preds = %115, %108
  %123 = getelementptr i8, ptr %30, i32 1440
  %124 = load i32, ptr %123, align 4
  %125 = and i32 %124, 1
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %122
  %128 = getelementptr i8, ptr %30, i32 1444
  %129 = load i16, ptr %128, align 2
  %130 = zext i16 %129 to i32
  %131 = or i32 %124, %130
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %134, label %133

133:                                              ; preds = %127
  tail call void @dev_addr_mod(ptr noundef nonnull %30, i32 noundef 0, ptr noundef %123, i32 noundef 6) #16
  br label %147

134:                                              ; preds = %127, %122
  tail call fastcc void @smsc911x_read_mac_address(ptr noundef nonnull %30)
  %135 = load ptr, ptr %110, align 32
  %136 = load i32, ptr %135, align 4
  %137 = and i32 %136, 1
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %134
  %140 = getelementptr i8, ptr %135, i32 4
  %141 = load i16, ptr %140, align 2
  %142 = zext i16 %141 to i32
  %143 = or i32 %136, %142
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %139, %134
  tail call fastcc void @eth_hw_addr_random(ptr noundef nonnull %30)
  %146 = load ptr, ptr %110, align 32
  tail call fastcc void @smsc911x_set_hw_mac_address(ptr noundef %34, ptr noundef %146)
  br label %147

147:                                              ; preds = %145, %139, %133, %121
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !8
  %148 = load i16, ptr %109, align 4
  %149 = add i16 %148, 1
  store i16 %149, ptr %109, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #16, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !12
  %150 = tail call i32 @__pm_runtime_idle(ptr noundef %2, i32 noundef 5) #16
  %151 = load ptr, ptr %110, align 32
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef nonnull %30, ptr noundef nonnull @.str.6, ptr noundef %151) #17
  br label %176

152:                                              ; preds = %105, %102, %93
  %153 = phi i32 [ %100, %93 ], [ %103, %102 ], [ %106, %105 ]
  %154 = tail call i32 @__pm_runtime_idle(ptr noundef %2, i32 noundef 5) #16
  tail call void @__pm_runtime_disable(ptr noundef %2, i1 noundef zeroext true) #16
  br label %155

155:                                              ; preds = %152, %91, %81
  %156 = phi i32 [ %153, %152 ], [ -12, %81 ], [ %86, %91 ]
  tail call fastcc void @smsc911x_disable_resources(ptr noundef %0)
  br label %157

157:                                              ; preds = %155, %80, %77, %65
  %158 = phi i32 [ %156, %155 ], [ %78, %80 ], [ %78, %77 ], [ %59, %65 ]
  %159 = load ptr, ptr %45, align 8
  %160 = getelementptr i8, ptr %159, i32 1864
  tail call void @regulator_bulk_free(i32 noundef 2, ptr noundef %160) #16
  %161 = getelementptr i8, ptr %159, i32 1892
  %162 = load ptr, ptr %161, align 4
  %163 = icmp ugt ptr %162, inttoptr (i32 -4096 to ptr)
  br i1 %163, label %165, label %164

164:                                              ; preds = %157
  tail call void @clk_put(ptr noundef %162) #16
  store ptr null, ptr %161, align 4
  br label %165

165:                                              ; preds = %164, %157, %50, %39
  %166 = phi i32 [ %48, %50 ], [ %158, %157 ], [ %158, %164 ], [ %48, %39 ]
  %167 = load ptr, ptr %34, align 8
  tail call void @iounmap(ptr noundef %167) #16
  br label %168

168:                                              ; preds = %165, %32
  %169 = phi i32 [ %166, %165 ], [ -12, %32 ]
  tail call void @free_netdev(ptr noundef nonnull %30) #16
  br label %170

170:                                              ; preds = %168, %29
  %171 = phi i32 [ %169, %168 ], [ -12, %29 ]
  %172 = load i32, ptr %13, align 4
  %173 = load i32, ptr %14, align 4
  %174 = sub i32 1, %172
  %175 = add i32 %174, %173
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %172, i32 noundef %175) #16
  br label %176

176:                                              ; preds = %170, %147, %25, %23, %12, %10
  %177 = phi i32 [ 0, %147 ], [ -19, %23 ], [ %171, %170 ], [ -19, %10 ], [ -517, %12 ], [ -16, %25 ]
  ret i32 %177
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @smsc911x_drv_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6, !prof !13

5:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smsc911x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2321, 0\0A.popsection", ""() #16, !srcloc !14
  unreachable

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %3, i32 1408
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10, !prof !13

9:                                                ; preds = %6
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smsc911x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2323, 0\0A.popsection", ""() #16, !srcloc !15
  unreachable

10:                                               ; preds = %6
  %11 = load ptr, ptr %7, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14, !prof !13

13:                                               ; preds = %10
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smsc911x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2324, 0\0A.popsection", ""() #16, !srcloc !16
  unreachable

14:                                               ; preds = %10
  tail call void @unregister_netdev(ptr noundef nonnull %3) #16
  %15 = getelementptr i8, ptr %3, i32 1456
  %16 = load ptr, ptr %15, align 8
  tail call void @mdiobus_unregister(ptr noundef %16) #16
  %17 = load ptr, ptr %15, align 8
  tail call void @mdiobus_free(ptr noundef %17) #16
  %18 = tail call ptr @platform_get_resource_byname(ptr noundef %0, i32 noundef 512, ptr noundef nonnull @.str.3) #16
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #16
  br label %22

22:                                               ; preds = %20, %14
  %23 = phi ptr [ %18, %14 ], [ %21, %20 ]
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.resource, ptr %23, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = sub i32 1, %24
  %28 = add i32 %27, %26
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %24, i32 noundef %28) #16
  %29 = load ptr, ptr %7, align 8
  tail call void @iounmap(ptr noundef %29) #16
  %30 = load ptr, ptr %2, align 8
  %31 = getelementptr i8, ptr %30, i32 1864
  %32 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %31) #16
  %33 = getelementptr i8, ptr %30, i32 1892
  %34 = load ptr, ptr %33, align 4
  %35 = icmp ugt ptr %34, inttoptr (i32 -4096 to ptr)
  br i1 %35, label %37, label %36

36:                                               ; preds = %22
  tail call void @clk_disable(ptr noundef %34) #16
  tail call void @clk_unprepare(ptr noundef %34) #16
  br label %37

37:                                               ; preds = %36, %22
  %38 = load ptr, ptr %2, align 8
  %39 = getelementptr i8, ptr %38, i32 1864
  tail call void @regulator_bulk_free(i32 noundef 2, ptr noundef %39) #16
  %40 = getelementptr i8, ptr %38, i32 1892
  %41 = load ptr, ptr %40, align 4
  %42 = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  br i1 %42, label %44, label %43

43:                                               ; preds = %37
  tail call void @clk_put(ptr noundef %41) #16
  store ptr null, ptr %40, align 4
  br label %44

44:                                               ; preds = %43, %37
  tail call void @free_netdev(ptr noundef nonnull %3) #16
  %45 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %45, i1 noundef zeroext true) #16
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @smsc911x_probe_config(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  store i32 0, ptr %3, align 4
  %4 = tail call i32 @device_get_phy_mode(ptr noundef %1) #16
  %5 = tail call i32 @llvm.smax.i32(i32 %4, i32 0)
  %6 = getelementptr inbounds %struct.smsc911x_platform_config, ptr %0, i32 0, i32 4
  store i32 %5, ptr %6, align 4
  %7 = getelementptr inbounds %struct.smsc911x_platform_config, ptr %0, i32 0, i32 5
  %8 = tail call i32 @device_get_mac_address(ptr noundef %1, ptr noundef %7) #16
  %9 = call i32 @device_property_read_u32_array(ptr noundef %1, ptr noundef nonnull @.str.13, ptr noundef nonnull %3, i32 noundef 1) #16
  %10 = icmp eq i32 %9, -6
  br i1 %10, label %46, label %11

11:                                               ; preds = %2
  %12 = icmp eq i32 %9, 0
  %13 = load i32, ptr %3, align 4
  %14 = icmp eq i32 %13, 4
  %15 = select i1 %12, i1 %14, i1 false
  %16 = getelementptr inbounds %struct.smsc911x_platform_config, ptr %0, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = select i1 %15, i32 2, i32 1
  %19 = or i32 %17, %18
  store i32 %19, ptr %16, align 4
  %20 = getelementptr inbounds %struct.smsc911x_platform_config, ptr %0, i32 0, i32 3
  %21 = call i32 @device_property_read_u32_array(ptr noundef %1, ptr noundef nonnull @.str.14, ptr noundef %20, i32 noundef 1) #16
  %22 = call zeroext i1 @device_property_present(ptr noundef %1, ptr noundef nonnull @.str.15) #16
  br i1 %22, label %23, label %24

23:                                               ; preds = %11
  store i32 1, ptr %0, align 4
  br label %24

24:                                               ; preds = %23, %11
  %25 = call zeroext i1 @device_property_present(ptr noundef %1, ptr noundef nonnull @.str.16) #16
  br i1 %25, label %26, label %28

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.smsc911x_platform_config, ptr %0, i32 0, i32 1
  store i32 1, ptr %27, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = call zeroext i1 @device_property_present(ptr noundef %1, ptr noundef nonnull @.str.17) #16
  br i1 %29, label %30, label %34

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.smsc911x_platform_config, ptr %0, i32 0, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = or i32 %32, 4
  store i32 %33, ptr %31, align 4
  br label %34

34:                                               ; preds = %30, %28
  %35 = call zeroext i1 @device_property_present(ptr noundef %1, ptr noundef nonnull @.str.18) #16
  br i1 %35, label %36, label %40

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.smsc911x_platform_config, ptr %0, i32 0, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = or i32 %38, 8
  store i32 %39, ptr %37, align 4
  br label %40

40:                                               ; preds = %36, %34
  %41 = call zeroext i1 @device_property_present(ptr noundef %1, ptr noundef nonnull @.str.19) #16
  br i1 %41, label %42, label %46

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.smsc911x_platform_config, ptr %0, i32 0, i32 2
  %44 = load i32, ptr %43, align 4
  %45 = or i32 %44, 16
  store i32 %45, ptr %43, align 4
  br label %46

46:                                               ; preds = %42, %40, %2
  %47 = phi i32 [ -6, %2 ], [ 0, %42 ], [ 0, %40 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  ret i32 %47
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @smsc911x_init(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca [6 x i8], align 1
  %3 = getelementptr i8, ptr %0, i32 1408
  %4 = getelementptr i8, ptr %0, i32 1452
  store i32 0, ptr %4, align 4
  %5 = getelementptr i8, ptr %0, i32 1448
  store i32 0, ptr %5, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %101, label %8

8:                                                ; preds = %1
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #16
  %10 = getelementptr i8, ptr %0, i32 1860
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 %12(ptr noundef %3, i32 noundef 132) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %9) #16
  %14 = and i32 %13, 65537
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %20, %8
  %17 = phi i32 [ %18, %20 ], [ 100, %8 ]
  %18 = add nsw i32 %17, -1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748000) #16
  %22 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #16
  %23 = load ptr, ptr %10, align 4
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 %24(ptr noundef %3, i32 noundef 132) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %22) #16
  %26 = and i32 %25, 65537
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %16, label %29

28:                                               ; preds = %16
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.20) #17
  br label %101

29:                                               ; preds = %20, %8
  %30 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #16
  %31 = load ptr, ptr %10, align 4
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 %32(ptr noundef %3, i32 noundef 100) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %30) #16
  %34 = icmp eq i32 %33, 1126270821
  br i1 %34, label %35, label %48

35:                                               ; preds = %29
  %36 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #16
  %37 = load ptr, ptr %10, align 4
  %38 = getelementptr inbounds %struct.smsc911x_ops, ptr %37, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  tail call void %39(ptr noundef %3, i32 noundef 152, i32 noundef -1) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %36) #16
  %40 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #16
  %41 = load ptr, ptr %10, align 4
  %42 = load ptr, ptr %41, align 4
  %43 = tail call i32 %42(ptr noundef %3, i32 noundef 100) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %40) #16
  %44 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #16
  %45 = load ptr, ptr %10, align 4
  %46 = load ptr, ptr %45, align 4
  %47 = tail call i32 %46(ptr noundef %3, i32 noundef 100) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %44) #16
  br label %48

48:                                               ; preds = %35, %29
  %49 = phi i32 [ %47, %35 ], [ %33, %29 ]
  %50 = icmp eq i32 %49, -2023406815
  br i1 %50, label %51, label %101

51:                                               ; preds = %48
  %52 = getelementptr i8, ptr %0, i32 1416
  store i32 0, ptr %52, align 8
  %53 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #16
  %54 = load ptr, ptr %10, align 4
  %55 = load ptr, ptr %54, align 4
  %56 = tail call i32 %55(ptr noundef %3, i32 noundef 80) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %53) #16
  %57 = getelementptr i8, ptr %0, i32 1412
  store i32 %56, ptr %57, align 4
  %58 = and i32 %56, -65536
  switch i32 %58, label %101 [
    i32 18350080, label %59
    i32 18284544, label %59
    i32 18219008, label %59
    i32 18153472, label %59
    i32 562692096, label %59
    i32 294256640, label %62
    i32 293208064, label %62
    i32 292159488, label %62
    i32 291110912, label %62
    i32 -1844445184, label %61
    i32 -1844379648, label %61
    i32 -1843396608, label %61
    i32 -1843331072, label %61
    i32 -1840250880, label %61
  ]

59:                                               ; preds = %51, %51, %51, %51, %51
  %60 = and i32 %56, 65535
  br label %62

61:                                               ; preds = %51, %51, %51, %51, %51
  br label %62

62:                                               ; preds = %61, %59, %51, %51, %51, %51
  %63 = phi i32 [ 4, %61 ], [ %60, %59 ], [ 3, %51 ], [ 3, %51 ], [ 3, %51 ], [ 3, %51 ]
  store i32 %63, ptr %52, align 8
  %64 = getelementptr i8, ptr %0, i32 1428
  %65 = load i32, ptr %64, align 4
  %66 = and i32 %65, 16
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %88, label %68

68:                                               ; preds = %62
  tail call void @_raw_spin_lock_irq(ptr noundef %5) #16
  %69 = tail call fastcc i32 @smsc911x_mac_read(ptr noundef %3, i32 noundef 2) #16
  %70 = tail call fastcc i32 @smsc911x_mac_read(ptr noundef %3, i32 noundef 3) #16
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #16
  %71 = trunc i32 %70 to i8
  store i8 %71, ptr %2, align 1
  %72 = lshr i32 %70, 8
  %73 = trunc i32 %72 to i8
  %74 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 1
  store i8 %73, ptr %74, align 1
  %75 = lshr i32 %70, 16
  %76 = trunc i32 %75 to i8
  %77 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 2
  store i8 %76, ptr %77, align 1
  %78 = lshr i32 %70, 24
  %79 = trunc i32 %78 to i8
  %80 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 3
  store i8 %79, ptr %80, align 1
  %81 = trunc i32 %69 to i8
  %82 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 4
  store i8 %81, ptr %82, align 1
  %83 = lshr i32 %69, 8
  %84 = trunc i32 %83 to i8
  %85 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 5
  store i8 %84, ptr %85, align 1
  call void @dev_addr_mod(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2, i32 noundef 6) #16
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #16
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !8
  %86 = load i16, ptr %5, align 4
  %87 = add i16 %86, 1
  store i16 %87, ptr %5, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !10
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #16, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !12
  br label %88

88:                                               ; preds = %68, %62
  %89 = call fastcc i32 @smsc911x_phy_reset(ptr noundef %3)
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %88
  %92 = call fastcc i32 @smsc911x_soft_reset(ptr noundef %3)
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 14
  %96 = load i32, ptr %95, align 8
  %97 = or i32 %96, 4096
  store i32 %97, ptr %95, align 8
  %98 = getelementptr i8, ptr %0, i32 1488
  call void @netif_napi_add(ptr noundef %0, ptr noundef %98, ptr noundef nonnull @smsc911x_poll, i32 noundef 16) #16
  %99 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 16
  store ptr @smsc911x_netdev_ops, ptr %99, align 8
  %100 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 42
  store ptr @smsc911x_ethtool_ops, ptr %100, align 8
  br label %101

101:                                              ; preds = %94, %91, %88, %51, %48, %28, %1
  %102 = phi i32 [ -19, %28 ], [ 0, %94 ], [ -19, %1 ], [ -19, %51 ], [ -19, %91 ], [ -19, %88 ], [ -19, %48 ]
  ret i32 %102
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @smsc911x_mii_init(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = getelementptr i8, ptr %1, i32 1408
  %4 = tail call ptr @mdiobus_alloc_size(i32 noundef 0) #16
  %5 = getelementptr i8, ptr %1, i32 1456
  store ptr %4, ptr %5, align 8
  %6 = icmp eq ptr %4, null
  br i1 %6, label %83, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.mii_bus, ptr %4, i32 0, i32 1
  store ptr @.str.25, ptr %8, align 4
  %9 = load ptr, ptr %5, align 8
  %10 = getelementptr inbounds %struct.mii_bus, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %0, align 8
  %12 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %10, i32 noundef 61, ptr noundef nonnull @.str.26, ptr noundef %11, i32 noundef %13)
  %15 = load ptr, ptr %5, align 8
  %16 = getelementptr inbounds %struct.mii_bus, ptr %15, i32 0, i32 3
  store ptr %3, ptr %16, align 8
  %17 = load ptr, ptr %5, align 8
  %18 = getelementptr inbounds %struct.mii_bus, ptr %17, i32 0, i32 4
  store ptr @smsc911x_mii_read, ptr %18, align 4
  %19 = load ptr, ptr %5, align 8
  %20 = getelementptr inbounds %struct.mii_bus, ptr %19, i32 0, i32 5
  store ptr @smsc911x_mii_write, ptr %20, align 8
  %21 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %22 = load ptr, ptr %5, align 8
  %23 = getelementptr inbounds %struct.mii_bus, ptr %22, i32 0, i32 9
  store ptr %21, ptr %23, align 4
  %24 = getelementptr i8, ptr %1, i32 1412
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, -65536
  switch i32 %26, label %73 [
    i32 18284544, label %27
    i32 18153472, label %27
    i32 293208064, label %27
    i32 291110912, label %27
  ]

27:                                               ; preds = %7, %7, %7, %7
  %28 = getelementptr i8, ptr %1, i32 1452
  %29 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %28) #16
  %30 = getelementptr i8, ptr %1, i32 1860
  %31 = load ptr, ptr %30, align 4
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 %32(ptr noundef %3, i32 noundef 116) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %28, i32 noundef %29) #16
  %34 = getelementptr i8, ptr %1, i32 1428
  %35 = load i32, ptr %34, align 4
  %36 = and i32 %35, 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %73

38:                                               ; preds = %27
  %39 = and i32 %35, 8
  %40 = icmp eq i32 %39, 0
  %41 = and i32 %33, 8
  %42 = icmp eq i32 %41, 0
  %43 = select i1 %40, i1 %42, i1 false
  br i1 %43, label %73, label %44

44:                                               ; preds = %38
  %45 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %28) #16
  %46 = load ptr, ptr %30, align 4
  %47 = load ptr, ptr %46, align 4
  %48 = tail call i32 %47(ptr noundef %3, i32 noundef 116) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %28, i32 noundef %45) #16
  %49 = and i32 %48, -97
  %50 = or i32 %49, 64
  %51 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %28) #16
  %52 = load ptr, ptr %30, align 4
  %53 = getelementptr inbounds %struct.smsc911x_ops, ptr %52, i32 0, i32 1
  %54 = load ptr, ptr %53, align 4
  tail call void %54(ptr noundef %3, i32 noundef 116, i32 noundef %50) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %28, i32 noundef %51) #16
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %55(i32 noundef 2147480) #16
  %56 = or i32 %49, 68
  %57 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %28) #16
  %58 = load ptr, ptr %30, align 4
  %59 = getelementptr inbounds %struct.smsc911x_ops, ptr %58, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  tail call void %60(ptr noundef %3, i32 noundef 116, i32 noundef %56) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %28, i32 noundef %57) #16
  %61 = or i32 %49, 36
  %62 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %28) #16
  %63 = load ptr, ptr %30, align 4
  %64 = getelementptr inbounds %struct.smsc911x_ops, ptr %63, i32 0, i32 1
  %65 = load ptr, ptr %64, align 4
  tail call void %65(ptr noundef %3, i32 noundef 116, i32 noundef %61) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %28, i32 noundef %62) #16
  %66 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %66(i32 noundef 2147480) #16
  %67 = or i32 %49, 52
  %68 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %28) #16
  %69 = load ptr, ptr %30, align 4
  %70 = getelementptr inbounds %struct.smsc911x_ops, ptr %69, i32 0, i32 1
  %71 = load ptr, ptr %70, align 4
  tail call void %71(ptr noundef %3, i32 noundef 116, i32 noundef %67) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %28, i32 noundef %68) #16
  %72 = getelementptr i8, ptr %1, i32 1460
  store i32 1, ptr %72, align 4
  br label %77

73:                                               ; preds = %38, %27, %7
  %74 = getelementptr i8, ptr %1, i32 1460
  store i32 0, ptr %74, align 4
  %75 = load ptr, ptr %5, align 8
  %76 = getelementptr inbounds %struct.mii_bus, ptr %75, i32 0, i32 13
  store i32 -3, ptr %76, align 8
  br label %77

77:                                               ; preds = %73, %44
  %78 = load ptr, ptr %5, align 8
  %79 = tail call i32 @__mdiobus_register(ptr noundef %78, ptr noundef null) #16
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %77
  %82 = load ptr, ptr %5, align 8
  tail call void @mdiobus_free(ptr noundef %82) #16
  br label %83

83:                                               ; preds = %81, %77, %2
  %84 = phi i32 [ 0, %77 ], [ -6, %81 ], [ -12, %2 ]
  ret i32 %84
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @smsc911x_set_hw_mac_address(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = getelementptr i8, ptr %1, i32 5
  %4 = load i8, ptr %3, align 1
  %5 = zext i8 %4 to i32
  %6 = shl nuw nsw i32 %5, 8
  %7 = getelementptr i8, ptr %1, i32 4
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = or i32 %6, %9
  %11 = getelementptr i8, ptr %1, i32 3
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = shl nuw i32 %13, 24
  %15 = getelementptr i8, ptr %1, i32 2
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = shl nuw nsw i32 %17, 16
  %19 = or i32 %18, %14
  %20 = getelementptr i8, ptr %1, i32 1
  %21 = load i8, ptr %20, align 1
  %22 = zext i8 %21 to i32
  %23 = shl nuw nsw i32 %22, 8
  %24 = or i32 %19, %23
  %25 = load i8, ptr %1, align 1
  %26 = zext i8 %25 to i32
  %27 = or i32 %24, %26
  tail call fastcc void @smsc911x_mac_write(ptr noundef %0, i32 noundef 2, i32 noundef %10)
  tail call fastcc void @smsc911x_mac_write(ptr noundef %0, i32 noundef 3, i32 noundef %27)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @smsc911x_read_mac_address(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca [6 x i8], align 1
  %3 = getelementptr i8, ptr %0, i32 1408
  %4 = tail call fastcc i32 @smsc911x_mac_read(ptr noundef %3, i32 noundef 2)
  %5 = tail call fastcc i32 @smsc911x_mac_read(ptr noundef %3, i32 noundef 3)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #16
  %6 = trunc i32 %5 to i8
  store i8 %6, ptr %2, align 1
  %7 = lshr i32 %5, 8
  %8 = trunc i32 %7 to i8
  %9 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 1
  store i8 %8, ptr %9, align 1
  %10 = lshr i32 %5, 16
  %11 = trunc i32 %10 to i8
  %12 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 2
  store i8 %11, ptr %12, align 1
  %13 = lshr i32 %5, 24
  %14 = trunc i32 %13 to i8
  %15 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 3
  store i8 %14, ptr %15, align 1
  %16 = trunc i32 %4 to i8
  %17 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 4
  store i8 %16, ptr %17, align 1
  %18 = lshr i32 %4, 8
  %19 = trunc i32 %18 to i8
  %20 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 5
  store i8 %19, ptr %20, align 1
  call void @dev_addr_mod(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2, i32 noundef 6) #16
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #16
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @eth_hw_addr_random(ptr noundef %0) unnamed_addr #6 {
  %2 = alloca [6 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %2, i8 0, i32 6, i1 false), !annotation !17
  call void @get_random_bytes(ptr noundef nonnull %2, i32 noundef 6) #16
  %3 = load i8, ptr %2, align 1
  %4 = and i8 %3, -4
  %5 = or i8 %4, 2
  store i8 %5, ptr %2, align 1
  call void @dev_addr_mod(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2, i32 noundef 6) #16
  %6 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 50
  store i8 1, ptr %6, align 8
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #16
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @smsc911x_disable_resources(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 1864
  %5 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %4) #16
  %6 = getelementptr i8, ptr %3, i32 1892
  %7 = load ptr, ptr %6, align 4
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call void @clk_disable(ptr noundef %7) #16
  tail call void @clk_unprepare(ptr noundef %7) #16
  br label %10

10:                                               ; preds = %9, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_get_phy_mode(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_get_mac_address(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @__smsc911x_reg_read(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.smsc911x_data, ptr %0, i32 0, i32 3, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 2
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8
  %9 = getelementptr i8, ptr %8, i32 %1
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #16, !srcloc !18
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !19
  br label %27

11:                                               ; preds = %2
  %12 = and i32 %4, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %26, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr %0, align 8
  %16 = getelementptr i8, ptr %15, i32 %1
  %17 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %16) #16, !srcloc !20
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !21
  %18 = zext i16 %17 to i32
  %19 = load ptr, ptr %0, align 8
  %20 = getelementptr i8, ptr %19, i32 %1
  %21 = getelementptr i8, ptr %20, i32 2
  %22 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %21) #16, !srcloc !20
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !22
  %23 = zext i16 %22 to i32
  %24 = shl nuw i32 %23, 16
  %25 = or i32 %24, %18
  br label %27

26:                                               ; preds = %11
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smsc911x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 157, 0\0A.popsection", ""() #16, !srcloc !23
  unreachable

27:                                               ; preds = %14, %7
  %28 = phi i32 [ %10, %7 ], [ %25, %14 ]
  ret i32 %28
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @__smsc911x_reg_write(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #6 {
  %4 = getelementptr inbounds %struct.smsc911x_data, ptr %0, i32 0, i32 3, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 2
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !24
  tail call void @arm_heavy_mb() #16
  %9 = load ptr, ptr %0, align 8
  %10 = getelementptr i8, ptr %9, i32 %1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %2) #16, !srcloc !25
  br label %24

11:                                               ; preds = %3
  %12 = and i32 %5, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %11
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !26
  tail call void @arm_heavy_mb() #16
  %15 = trunc i32 %2 to i16
  %16 = load ptr, ptr %0, align 8
  %17 = getelementptr i8, ptr %16, i32 %1
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %17, i16 %15) #16, !srcloc !27
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !28
  tail call void @arm_heavy_mb() #16
  %18 = lshr i32 %2, 16
  %19 = trunc i32 %18 to i16
  %20 = load ptr, ptr %0, align 8
  %21 = getelementptr i8, ptr %20, i32 %1
  %22 = getelementptr i8, ptr %21, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %22, i16 %19) #16, !srcloc !27
  br label %24

23:                                               ; preds = %11
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smsc911x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 203, 0\0A.popsection", ""() #16, !srcloc !29
  unreachable

24:                                               ; preds = %14, %8
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @smsc911x_rx_readfifo(ptr noundef %0, ptr noundef %1, i32 noundef %2) #6 {
  %4 = getelementptr inbounds %struct.smsc911x_data, ptr %0, i32 0, i32 5
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #16
  %6 = getelementptr inbounds %struct.smsc911x_data, ptr %0, i32 0, i32 3, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 32
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %43, label %10

10:                                               ; preds = %3
  %11 = icmp eq i32 %2, 0
  br i1 %11, label %84, label %12

12:                                               ; preds = %40, %10
  %13 = phi i32 [ %42, %40 ], [ %7, %10 ]
  %14 = phi ptr [ %41, %40 ], [ %1, %10 ]
  %15 = phi i32 [ %16, %40 ], [ %2, %10 ]
  %16 = add i32 %15, -1
  %17 = and i32 %13, 2
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %12
  %20 = load ptr, ptr %0, align 8
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #16, !srcloc !18
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !19
  br label %36

22:                                               ; preds = %12
  %23 = and i32 %13, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %0, align 8
  %27 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %26) #16, !srcloc !20
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !21
  %28 = zext i16 %27 to i32
  %29 = load ptr, ptr %0, align 8
  %30 = getelementptr i8, ptr %29, i32 2
  %31 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %30) #16, !srcloc !20
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !22
  %32 = zext i16 %31 to i32
  %33 = shl nuw i32 %32, 16
  %34 = or i32 %33, %28
  br label %36

35:                                               ; preds = %22
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smsc911x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 157, 0\0A.popsection", ""() #16, !srcloc !23
  unreachable

36:                                               ; preds = %25, %19
  %37 = phi i32 [ %21, %19 ], [ %34, %25 ]
  %38 = tail call i32 @llvm.bswap.i32(i32 %37)
  store i32 %38, ptr %14, align 4
  %39 = icmp eq i32 %16, 0
  br i1 %39, label %84, label %40

40:                                               ; preds = %36
  %41 = getelementptr i32, ptr %14, i32 1
  %42 = load i32, ptr %6, align 4
  br label %12

43:                                               ; preds = %3
  %44 = and i32 %7, 2
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %43
  %47 = load ptr, ptr %0, align 8
  tail call void @__raw_readsl(ptr noundef %47, ptr noundef %1, i32 noundef %2) #16
  br label %84

48:                                               ; preds = %43
  %49 = and i32 %7, 1
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %83, label %51

51:                                               ; preds = %48
  %52 = icmp eq i32 %2, 0
  br i1 %52, label %84, label %53

53:                                               ; preds = %80, %51
  %54 = phi i32 [ %82, %80 ], [ %7, %51 ]
  %55 = phi ptr [ %81, %80 ], [ %1, %51 ]
  %56 = phi i32 [ %57, %80 ], [ %2, %51 ]
  %57 = add i32 %56, -1
  %58 = and i32 %54, 2
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %53
  %61 = load ptr, ptr %0, align 8
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #16, !srcloc !18
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !19
  br label %77

63:                                               ; preds = %53
  %64 = and i32 %54, 1
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %76, label %66

66:                                               ; preds = %63
  %67 = load ptr, ptr %0, align 8
  %68 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %67) #16, !srcloc !20
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !21
  %69 = zext i16 %68 to i32
  %70 = load ptr, ptr %0, align 8
  %71 = getelementptr i8, ptr %70, i32 2
  %72 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %71) #16, !srcloc !20
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !22
  %73 = zext i16 %72 to i32
  %74 = shl nuw i32 %73, 16
  %75 = or i32 %74, %69
  br label %77

76:                                               ; preds = %63
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smsc911x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 157, 0\0A.popsection", ""() #16, !srcloc !23
  unreachable

77:                                               ; preds = %66, %60
  %78 = phi i32 [ %62, %60 ], [ %75, %66 ]
  store i32 %78, ptr %55, align 4
  %79 = icmp eq i32 %57, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %77
  %81 = getelementptr i32, ptr %55, i32 1
  %82 = load i32, ptr %6, align 4
  br label %53

83:                                               ; preds = %48
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smsc911x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 328, 0\0A.popsection", ""() #16, !srcloc !30
  unreachable

84:                                               ; preds = %77, %51, %46, %36, %10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #16
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @smsc911x_tx_writefifo(ptr noundef %0, ptr noundef %1, i32 noundef %2) #6 {
  %4 = getelementptr inbounds %struct.smsc911x_data, ptr %0, i32 0, i32 5
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #16
  %6 = getelementptr inbounds %struct.smsc911x_data, ptr %0, i32 0, i32 3, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 32
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %41, label %10

10:                                               ; preds = %3
  %11 = icmp eq i32 %2, 0
  br i1 %11, label %81, label %12

12:                                               ; preds = %39, %10
  %13 = phi i32 [ %40, %39 ], [ %7, %10 ]
  %14 = phi ptr [ %17, %39 ], [ %1, %10 ]
  %15 = phi i32 [ %16, %39 ], [ %2, %10 ]
  %16 = add i32 %15, -1
  %17 = getelementptr i32, ptr %14, i32 1
  %18 = load i32, ptr %14, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %20 = and i32 %13, 2
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %12
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !24
  tail call void @arm_heavy_mb() #16
  %23 = load ptr, ptr %0, align 8
  %24 = getelementptr i8, ptr %23, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %19) #16, !srcloc !25
  br label %37

25:                                               ; preds = %12
  %26 = and i32 %13, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %25
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !26
  tail call void @arm_heavy_mb() #16
  %29 = trunc i32 %19 to i16
  %30 = load ptr, ptr %0, align 8
  %31 = getelementptr i8, ptr %30, i32 32
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %31, i16 %29) #16, !srcloc !27
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !28
  tail call void @arm_heavy_mb() #16
  %32 = lshr i32 %19, 16
  %33 = trunc i32 %32 to i16
  %34 = load ptr, ptr %0, align 8
  %35 = getelementptr i8, ptr %34, i32 34
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %35, i16 %33) #16, !srcloc !27
  br label %37

36:                                               ; preds = %25
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smsc911x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 203, 0\0A.popsection", ""() #16, !srcloc !29
  unreachable

37:                                               ; preds = %28, %22
  %38 = icmp eq i32 %16, 0
  br i1 %38, label %81, label %39

39:                                               ; preds = %37
  %40 = load i32, ptr %6, align 4
  br label %12

41:                                               ; preds = %3
  %42 = and i32 %7, 2
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load ptr, ptr %0, align 8
  %46 = getelementptr i8, ptr %45, i32 32
  tail call void @__raw_writesl(ptr noundef %46, ptr noundef %1, i32 noundef %2) #16
  br label %81

47:                                               ; preds = %41
  %48 = and i32 %7, 1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %80, label %50

50:                                               ; preds = %47
  %51 = icmp eq i32 %2, 0
  br i1 %51, label %81, label %52

52:                                               ; preds = %78, %50
  %53 = phi i32 [ %79, %78 ], [ %7, %50 ]
  %54 = phi ptr [ %57, %78 ], [ %1, %50 ]
  %55 = phi i32 [ %56, %78 ], [ %2, %50 ]
  %56 = add i32 %55, -1
  %57 = getelementptr i32, ptr %54, i32 1
  %58 = load i32, ptr %54, align 4
  %59 = and i32 %53, 2
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %52
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !24
  tail call void @arm_heavy_mb() #16
  %62 = load ptr, ptr %0, align 8
  %63 = getelementptr i8, ptr %62, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 %58) #16, !srcloc !25
  br label %76

64:                                               ; preds = %52
  %65 = and i32 %53, 1
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %75, label %67

67:                                               ; preds = %64
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !26
  tail call void @arm_heavy_mb() #16
  %68 = trunc i32 %58 to i16
  %69 = load ptr, ptr %0, align 8
  %70 = getelementptr i8, ptr %69, i32 32
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %70, i16 %68) #16, !srcloc !27
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !28
  tail call void @arm_heavy_mb() #16
  %71 = lshr i32 %58, 16
  %72 = trunc i32 %71 to i16
  %73 = load ptr, ptr %0, align 8
  %74 = getelementptr i8, ptr %73, i32 34
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %74, i16 %72) #16, !srcloc !27
  br label %76

75:                                               ; preds = %64
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smsc911x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 203, 0\0A.popsection", ""() #16, !srcloc !29
  unreachable

76:                                               ; preds = %67, %61
  %77 = icmp eq i32 %56, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %76
  %79 = load i32, ptr %6, align 4
  br label %52

80:                                               ; preds = %47
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smsc911x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 262, 0\0A.popsection", ""() #16, !srcloc !31
  unreachable

81:                                               ; preds = %76, %50, %44, %37, %10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @__smsc911x_reg_read_shift(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.smsc911x_data, ptr %0, i32 0, i32 3, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 2
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8
  %9 = getelementptr inbounds %struct.smsc911x_data, ptr %0, i32 0, i32 3, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = shl i32 %1, %10
  %12 = getelementptr i8, ptr %8, i32 %11
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #16, !srcloc !18
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !32
  br label %35

14:                                               ; preds = %2
  %15 = and i32 %4, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %34, label %17

17:                                               ; preds = %14
  %18 = load ptr, ptr %0, align 8
  %19 = getelementptr inbounds %struct.smsc911x_data, ptr %0, i32 0, i32 3, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = shl i32 %1, %20
  %22 = getelementptr i8, ptr %18, i32 %21
  %23 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %22) #16, !srcloc !20
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !33
  %24 = zext i16 %23 to i32
  %25 = load ptr, ptr %0, align 8
  %26 = add i32 %1, 2
  %27 = load i32, ptr %19, align 4
  %28 = shl i32 %26, %27
  %29 = getelementptr i8, ptr %25, i32 %28
  %30 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %29) #16, !srcloc !20
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !34
  %31 = zext i16 %30 to i32
  %32 = shl nuw i32 %31, 16
  %33 = or i32 %32, %24
  br label %35

34:                                               ; preds = %14
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smsc911x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 173, 0\0A.popsection", ""() #16, !srcloc !35
  unreachable

35:                                               ; preds = %17, %7
  %36 = phi i32 [ %13, %7 ], [ %33, %17 ]
  ret i32 %36
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @__smsc911x_reg_write_shift(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #6 {
  %4 = getelementptr inbounds %struct.smsc911x_data, ptr %0, i32 0, i32 3, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 2
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %3
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !36
  tail call void @arm_heavy_mb() #16
  %9 = load ptr, ptr %0, align 8
  %10 = getelementptr inbounds %struct.smsc911x_data, ptr %0, i32 0, i32 3, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = shl i32 %1, %11
  %13 = getelementptr i8, ptr %9, i32 %12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %2) #16, !srcloc !25
  br label %32

14:                                               ; preds = %3
  %15 = and i32 %5, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %31, label %17

17:                                               ; preds = %14
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !37
  tail call void @arm_heavy_mb() #16
  %18 = trunc i32 %2 to i16
  %19 = load ptr, ptr %0, align 8
  %20 = getelementptr inbounds %struct.smsc911x_data, ptr %0, i32 0, i32 3, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = shl i32 %1, %21
  %23 = getelementptr i8, ptr %19, i32 %22
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %23, i16 %18) #16, !srcloc !27
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !38
  tail call void @arm_heavy_mb() #16
  %24 = lshr i32 %2, 16
  %25 = trunc i32 %24 to i16
  %26 = load ptr, ptr %0, align 8
  %27 = add i32 %1, 2
  %28 = load i32, ptr %20, align 4
  %29 = shl i32 %27, %28
  %30 = getelementptr i8, ptr %26, i32 %29
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %30, i16 %25) #16, !srcloc !27
  br label %32

31:                                               ; preds = %14
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smsc911x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 222, 0\0A.popsection", ""() #16, !srcloc !39
  unreachable

32:                                               ; preds = %17, %8
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @smsc911x_rx_readfifo_shift(ptr noundef %0, ptr noundef %1, i32 noundef %2) #6 {
  %4 = getelementptr inbounds %struct.smsc911x_data, ptr %0, i32 0, i32 5
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #16
  %6 = getelementptr inbounds %struct.smsc911x_data, ptr %0, i32 0, i32 3, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 32
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %47, label %10

10:                                               ; preds = %3
  %11 = icmp eq i32 %2, 0
  br i1 %11, label %92, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.smsc911x_data, ptr %0, i32 0, i32 3, i32 3
  br label %14

14:                                               ; preds = %44, %12
  %15 = phi i32 [ %7, %12 ], [ %46, %44 ]
  %16 = phi ptr [ %1, %12 ], [ %45, %44 ]
  %17 = phi i32 [ %2, %12 ], [ %18, %44 ]
  %18 = add i32 %17, -1
  %19 = and i32 %15, 2
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %14
  %22 = load ptr, ptr %0, align 8
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #16, !srcloc !18
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !32
  br label %40

24:                                               ; preds = %14
  %25 = and i32 %15, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %39, label %27

27:                                               ; preds = %24
  %28 = load ptr, ptr %0, align 8
  %29 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %28) #16, !srcloc !20
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !33
  %30 = zext i16 %29 to i32
  %31 = load ptr, ptr %0, align 8
  %32 = load i32, ptr %13, align 4
  %33 = shl i32 2, %32
  %34 = getelementptr i8, ptr %31, i32 %33
  %35 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %34) #16, !srcloc !20
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !34
  %36 = zext i16 %35 to i32
  %37 = shl nuw i32 %36, 16
  %38 = or i32 %37, %30
  br label %40

39:                                               ; preds = %24
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smsc911x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 173, 0\0A.popsection", ""() #16, !srcloc !35
  unreachable

40:                                               ; preds = %27, %21
  %41 = phi i32 [ %23, %21 ], [ %38, %27 ]
  %42 = tail call i32 @llvm.bswap.i32(i32 %41)
  store i32 %42, ptr %16, align 4
  %43 = icmp eq i32 %18, 0
  br i1 %43, label %92, label %44

44:                                               ; preds = %40
  %45 = getelementptr i32, ptr %16, i32 1
  %46 = load i32, ptr %6, align 4
  br label %14

47:                                               ; preds = %3
  %48 = and i32 %7, 2
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %47
  %51 = load ptr, ptr %0, align 8
  tail call void @__raw_readsl(ptr noundef %51, ptr noundef %1, i32 noundef %2) #16
  br label %92

52:                                               ; preds = %47
  %53 = and i32 %7, 1
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %91, label %55

55:                                               ; preds = %52
  %56 = icmp eq i32 %2, 0
  br i1 %56, label %92, label %57

57:                                               ; preds = %55
  %58 = getelementptr inbounds %struct.smsc911x_data, ptr %0, i32 0, i32 3, i32 3
  br label %59

59:                                               ; preds = %88, %57
  %60 = phi i32 [ %7, %57 ], [ %90, %88 ]
  %61 = phi ptr [ %1, %57 ], [ %89, %88 ]
  %62 = phi i32 [ %2, %57 ], [ %63, %88 ]
  %63 = add i32 %62, -1
  %64 = and i32 %60, 2
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %59
  %67 = load ptr, ptr %0, align 8
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %67) #16, !srcloc !18
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !32
  br label %85

69:                                               ; preds = %59
  %70 = and i32 %60, 1
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %84, label %72

72:                                               ; preds = %69
  %73 = load ptr, ptr %0, align 8
  %74 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %73) #16, !srcloc !20
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !33
  %75 = zext i16 %74 to i32
  %76 = load ptr, ptr %0, align 8
  %77 = load i32, ptr %58, align 4
  %78 = shl i32 2, %77
  %79 = getelementptr i8, ptr %76, i32 %78
  %80 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %79) #16, !srcloc !20
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !34
  %81 = zext i16 %80 to i32
  %82 = shl nuw i32 %81, 16
  %83 = or i32 %82, %75
  br label %85

84:                                               ; preds = %69
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smsc911x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 173, 0\0A.popsection", ""() #16, !srcloc !35
  unreachable

85:                                               ; preds = %72, %66
  %86 = phi i32 [ %68, %66 ], [ %83, %72 ]
  store i32 %86, ptr %61, align 4
  %87 = icmp eq i32 %63, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %85
  %89 = getelementptr i32, ptr %61, i32 1
  %90 = load i32, ptr %6, align 4
  br label %59

91:                                               ; preds = %52
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smsc911x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 362, 0\0A.popsection", ""() #16, !srcloc !40
  unreachable

92:                                               ; preds = %85, %55, %50, %40, %10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #16
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @smsc911x_tx_writefifo_shift(ptr noundef %0, ptr noundef %1, i32 noundef %2) #6 {
  %4 = getelementptr inbounds %struct.smsc911x_data, ptr %0, i32 0, i32 5
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #16
  %6 = getelementptr inbounds %struct.smsc911x_data, ptr %0, i32 0, i32 3, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 32
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %49, label %10

10:                                               ; preds = %3
  %11 = icmp eq i32 %2, 0
  br i1 %11, label %100, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.smsc911x_data, ptr %0, i32 0, i32 3, i32 3
  br label %14

14:                                               ; preds = %47, %12
  %15 = phi i32 [ %7, %12 ], [ %48, %47 ]
  %16 = phi ptr [ %1, %12 ], [ %19, %47 ]
  %17 = phi i32 [ %2, %12 ], [ %18, %47 ]
  %18 = add i32 %17, -1
  %19 = getelementptr i32, ptr %16, i32 1
  %20 = load i32, ptr %16, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %22 = and i32 %15, 2
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %14
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !36
  tail call void @arm_heavy_mb() #16
  %25 = load ptr, ptr %0, align 8
  %26 = load i32, ptr %13, align 4
  %27 = shl i32 32, %26
  %28 = getelementptr i8, ptr %25, i32 %27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %21) #16, !srcloc !25
  br label %45

29:                                               ; preds = %14
  %30 = and i32 %15, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %44, label %32

32:                                               ; preds = %29
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !37
  tail call void @arm_heavy_mb() #16
  %33 = trunc i32 %21 to i16
  %34 = load ptr, ptr %0, align 8
  %35 = load i32, ptr %13, align 4
  %36 = shl i32 32, %35
  %37 = getelementptr i8, ptr %34, i32 %36
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %37, i16 %33) #16, !srcloc !27
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !38
  tail call void @arm_heavy_mb() #16
  %38 = lshr i32 %21, 16
  %39 = trunc i32 %38 to i16
  %40 = load ptr, ptr %0, align 8
  %41 = load i32, ptr %13, align 4
  %42 = shl i32 34, %41
  %43 = getelementptr i8, ptr %40, i32 %42
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %43, i16 %39) #16, !srcloc !27
  br label %45

44:                                               ; preds = %29
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smsc911x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 222, 0\0A.popsection", ""() #16, !srcloc !39
  unreachable

45:                                               ; preds = %32, %24
  %46 = icmp eq i32 %18, 0
  br i1 %46, label %100, label %47

47:                                               ; preds = %45
  %48 = load i32, ptr %6, align 4
  br label %14

49:                                               ; preds = %3
  %50 = and i32 %7, 2
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %49
  %53 = load ptr, ptr %0, align 8
  %54 = getelementptr inbounds %struct.smsc911x_data, ptr %0, i32 0, i32 3, i32 3
  %55 = load i32, ptr %54, align 4
  %56 = shl i32 32, %55
  %57 = getelementptr i8, ptr %53, i32 %56
  tail call void @__raw_writesl(ptr noundef %57, ptr noundef %1, i32 noundef %2) #16
  br label %100

58:                                               ; preds = %49
  %59 = and i32 %7, 1
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %99, label %61

61:                                               ; preds = %58
  %62 = icmp eq i32 %2, 0
  br i1 %62, label %100, label %63

63:                                               ; preds = %61
  %64 = getelementptr inbounds %struct.smsc911x_data, ptr %0, i32 0, i32 3, i32 3
  br label %65

65:                                               ; preds = %97, %63
  %66 = phi i32 [ %7, %63 ], [ %98, %97 ]
  %67 = phi ptr [ %1, %63 ], [ %70, %97 ]
  %68 = phi i32 [ %2, %63 ], [ %69, %97 ]
  %69 = add i32 %68, -1
  %70 = getelementptr i32, ptr %67, i32 1
  %71 = load i32, ptr %67, align 4
  %72 = and i32 %66, 2
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %65
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !36
  tail call void @arm_heavy_mb() #16
  %75 = load ptr, ptr %0, align 8
  %76 = load i32, ptr %64, align 4
  %77 = shl i32 32, %76
  %78 = getelementptr i8, ptr %75, i32 %77
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 %71) #16, !srcloc !25
  br label %95

79:                                               ; preds = %65
  %80 = and i32 %66, 1
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %94, label %82

82:                                               ; preds = %79
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !37
  tail call void @arm_heavy_mb() #16
  %83 = trunc i32 %71 to i16
  %84 = load ptr, ptr %0, align 8
  %85 = load i32, ptr %64, align 4
  %86 = shl i32 32, %85
  %87 = getelementptr i8, ptr %84, i32 %86
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %87, i16 %83) #16, !srcloc !27
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !38
  tail call void @arm_heavy_mb() #16
  %88 = lshr i32 %71, 16
  %89 = trunc i32 %88 to i16
  %90 = load ptr, ptr %0, align 8
  %91 = load i32, ptr %64, align 4
  %92 = shl i32 34, %91
  %93 = getelementptr i8, ptr %90, i32 %92
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %93, i16 %89) #16, !srcloc !27
  br label %95

94:                                               ; preds = %79
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smsc911x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 222, 0\0A.popsection", ""() #16, !srcloc !39
  unreachable

95:                                               ; preds = %82, %74
  %96 = icmp eq i32 %69, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %95
  %98 = load i32, ptr %6, align 4
  br label %65

99:                                               ; preds = %58
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smsc911x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 296, 0\0A.popsection", ""() #16, !srcloc !41
  unreachable

100:                                              ; preds = %95, %61, %52, %45, %10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @smsc911x_reg_read(ptr noundef %0, i32 noundef %1) unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.smsc911x_data, ptr %0, i32 0, i32 5
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #16
  %5 = getelementptr inbounds %struct.smsc911x_data, ptr %0, i32 0, i32 24
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 %7(ptr noundef %0, i32 noundef %1) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #16
  ret i32 %8
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @smsc911x_reg_write(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.smsc911x_data, ptr %0, i32 0, i32 5
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #16
  %6 = getelementptr inbounds %struct.smsc911x_data, ptr %0, i32 0, i32 24
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.smsc911x_ops, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %9(ptr noundef %0, i32 noundef %1, i32 noundef %2) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @smsc911x_phy_reset(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.smsc911x_data, ptr %0, i32 0, i32 5
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #16
  %4 = getelementptr inbounds %struct.smsc911x_data, ptr %0, i32 0, i32 24
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 %6(ptr noundef %0, i32 noundef 132) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #16
  %8 = or i32 %7, 1024
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #16
  %10 = load ptr, ptr %4, align 4
  %11 = getelementptr inbounds %struct.smsc911x_ops, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  tail call void %12(ptr noundef %0, i32 noundef 132, i32 noundef %8) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %9) #16
  br label %13

13:                                               ; preds = %13, %1
  %14 = phi i32 [ 100000, %1 ], [ %19, %13 ]
  tail call void @msleep(i32 noundef 1) #16
  %15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #16
  %16 = load ptr, ptr %4, align 4
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 %17(ptr noundef %0, i32 noundef 132) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %15) #16
  %19 = add nsw i32 %14, -1
  %20 = icmp ne i32 %14, 0
  %21 = and i32 %18, 1024
  %22 = icmp ne i32 %21, 0
  %23 = select i1 %20, i1 %22, i1 false
  br i1 %23, label %13, label %24

24:                                               ; preds = %13
  br i1 %22, label %26, label %25, !prof !13

25:                                               ; preds = %24
  tail call void @msleep(i32 noundef 1) #16
  br label %26

26:                                               ; preds = %25, %24
  %27 = phi i32 [ 0, %25 ], [ -5, %24 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @smsc911x_soft_reset(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.smsc911x_data, ptr %0, i32 0, i32 13
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 120
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %25, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.mdio_device, ptr %5, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.mdio_device, ptr %5, i32 0, i32 6
  %11 = load i32, ptr %10, align 8
  %12 = tail call i32 @mdiobus_read(ptr noundef %9, i32 noundef %11, i32 noundef 0) #16
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %104, label %14

14:                                               ; preds = %7
  %15 = and i32 %12, 2048
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %14
  %18 = trunc i32 %12 to i16
  %19 = and i16 %18, -2049
  %20 = load ptr, ptr %8, align 8
  %21 = load i32, ptr %10, align 8
  %22 = tail call i32 @mdiobus_write(ptr noundef %20, i32 noundef %21, i32 noundef 0, i16 noundef zeroext %19) #16
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %104, label %24

24:                                               ; preds = %17
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1500, i32 noundef 2) #16
  br label %25

25:                                               ; preds = %24, %14, %1
  %26 = getelementptr inbounds %struct.smsc911x_data, ptr %0, i32 0, i32 2
  %27 = load i32, ptr %26, align 8
  %28 = icmp eq i32 %27, 4
  br i1 %28, label %29, label %53

29:                                               ; preds = %25
  %30 = load ptr, ptr %2, align 4
  %31 = getelementptr inbounds %struct.net_device, ptr %30, i32 0, i32 120
  %32 = load ptr, ptr %31, align 8
  %33 = icmp eq ptr %32, null
  br i1 %33, label %53, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.mdio_device, ptr %32, i32 0, i32 1
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr inbounds %struct.mdio_device, ptr %32, i32 0, i32 6
  %38 = load i32, ptr %37, align 8
  %39 = tail call i32 @mdiobus_read(ptr noundef %36, i32 noundef %38, i32 noundef 17) #16
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %104, label %41

41:                                               ; preds = %34
  %42 = and i32 %39, 8192
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %53, label %44

44:                                               ; preds = %41
  %45 = trunc i32 %39 to i16
  %46 = and i16 %45, -8193
  %47 = load ptr, ptr %35, align 8
  %48 = load i32, ptr %37, align 8
  %49 = tail call i32 @mdiobus_write(ptr noundef %47, i32 noundef %48, i32 noundef 17, i16 noundef zeroext %46) #16
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %104, label %51

51:                                               ; preds = %44
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %52(i32 noundef 429496000) #16
  br label %53

53:                                               ; preds = %51, %41, %29, %25
  %54 = getelementptr inbounds %struct.smsc911x_data, ptr %0, i32 0, i32 1
  %55 = load i32, ptr %54, align 4
  %56 = and i32 %55, -65536
  %57 = icmp eq i32 %56, -1840250880
  %58 = select i1 %57, i32 504, i32 116
  %59 = getelementptr inbounds %struct.smsc911x_data, ptr %0, i32 0, i32 5
  %60 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %59) #16
  %61 = getelementptr inbounds %struct.smsc911x_data, ptr %0, i32 0, i32 24
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.smsc911x_ops, ptr %62, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  tail call void %64(ptr noundef %0, i32 noundef %58, i32 noundef 1) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %59, i32 noundef %60) #16
  br label %65

65:                                               ; preds = %65, %53
  %66 = phi i32 [ 10, %53 ], [ %72, %65 ]
  %67 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %67(i32 noundef 2147480) #16
  %68 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %59) #16
  %69 = load ptr, ptr %61, align 4
  %70 = load ptr, ptr %69, align 4
  %71 = tail call i32 %70(ptr noundef %0, i32 noundef %58) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %59, i32 noundef %68) #16
  %72 = add nsw i32 %66, -1
  %73 = icmp ne i32 %72, 0
  %74 = and i32 %71, 1
  %75 = icmp ne i32 %74, 0
  %76 = select i1 %73, i1 %75, i1 false
  br i1 %76, label %65, label %77

77:                                               ; preds = %65
  br i1 %75, label %104, label %78, !prof !13

78:                                               ; preds = %77
  %79 = load i32, ptr %26, align 8
  %80 = icmp eq i32 %79, 4
  br i1 %80, label %81, label %104

81:                                               ; preds = %78
  %82 = load ptr, ptr %2, align 4
  %83 = getelementptr inbounds %struct.net_device, ptr %82, i32 0, i32 120
  %84 = load ptr, ptr %83, align 8
  %85 = icmp eq ptr %84, null
  br i1 %85, label %103, label %86

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.mdio_device, ptr %84, i32 0, i32 1
  %88 = load ptr, ptr %87, align 8
  %89 = getelementptr inbounds %struct.mdio_device, ptr %84, i32 0, i32 6
  %90 = load i32, ptr %89, align 8
  %91 = tail call i32 @mdiobus_read(ptr noundef %88, i32 noundef %90, i32 noundef 17) #16
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %104, label %93

93:                                               ; preds = %86
  %94 = and i32 %91, 8192
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %93
  %97 = trunc i32 %91 to i16
  %98 = or i16 %97, 8192
  %99 = load ptr, ptr %87, align 8
  %100 = load i32, ptr %89, align 8
  %101 = tail call i32 @mdiobus_write(ptr noundef %99, i32 noundef %100, i32 noundef 17, i16 noundef zeroext %98) #16
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %96, %93, %81
  br label %104

104:                                              ; preds = %103, %96, %86, %78, %77, %44, %34, %17, %7
  %105 = phi i32 [ -5, %77 ], [ %12, %7 ], [ %22, %17 ], [ %39, %34 ], [ %49, %44 ], [ %91, %86 ], [ %101, %96 ], [ 0, %103 ], [ 0, %78 ]
  ret i32 %105
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @smsc911x_poll(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 -80
  %4 = getelementptr i8, ptr %0, i32 -4
  %5 = load ptr, ptr %4, align 4
  %6 = icmp sgt i32 %1, 0
  br i1 %6, label %7, label %105

7:                                                ; preds = %2
  %8 = getelementptr i8, ptr %0, i32 -36
  %9 = getelementptr i8, ptr %0, i32 372
  %10 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 36, i32 4
  %11 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 36, i32 12
  %12 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 36, i32 10
  %13 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 36, i32 8
  %14 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 36, i32 6
  %15 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 36
  %16 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 36, i32 2
  br label %17

17:                                               ; preds = %99, %7
  %18 = phi i32 [ 0, %7 ], [ %47, %99 ]
  %19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #16
  %20 = load ptr, ptr %9, align 4
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 %21(ptr noundef %3, i32 noundef 124) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %19) #16
  %23 = and i32 %22, 16711680
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %17
  %26 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #16
  %27 = load ptr, ptr %9, align 4
  %28 = load ptr, ptr %27, align 4
  %29 = tail call i32 %28(ptr noundef %3, i32 noundef 64) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %26) #16
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %25, %17
  %32 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #16
  %33 = load ptr, ptr %9, align 4
  %34 = getelementptr inbounds %struct.smsc911x_ops, ptr %33, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  tail call void %35(ptr noundef %3, i32 noundef 88, i32 noundef 8) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %32) #16
  %36 = tail call zeroext i1 @napi_complete_done(ptr noundef %0, i32 noundef 0) #16
  %37 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #16
  %38 = load ptr, ptr %9, align 4
  %39 = load ptr, ptr %38, align 4
  %40 = tail call i32 %39(ptr noundef %3, i32 noundef 92) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %37) #16
  %41 = or i32 %40, 8
  %42 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #16
  %43 = load ptr, ptr %9, align 4
  %44 = getelementptr inbounds %struct.smsc911x_ops, ptr %43, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  tail call void %45(ptr noundef %3, i32 noundef 92, i32 noundef %41) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %42) #16
  br label %105

46:                                               ; preds = %25
  %47 = add nuw nsw i32 %18, 1
  %48 = lshr i32 %29, 16
  %49 = and i32 %48, 16383
  %50 = add nuw nsw i32 %49, 5
  %51 = lshr i32 %50, 2
  %52 = and i32 %29, 32768
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %59, label %54, !prof !42

54:                                               ; preds = %46
  %55 = load i32, ptr %10, align 8
  %56 = add i32 %55, 1
  store i32 %56, ptr %10, align 8
  %57 = and i32 %29, 2
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %68, !prof !42

59:                                               ; preds = %54, %46
  %60 = and i32 %29, 4128
  %61 = icmp eq i32 %60, 4128
  br i1 %61, label %62, label %65, !prof !13

62:                                               ; preds = %59
  %63 = load i32, ptr %12, align 8
  %64 = add i32 %63, 1
  store i32 %64, ptr %12, align 8
  br label %65

65:                                               ; preds = %62, %59
  %66 = and i32 %29, 1024
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %65, %54
  %69 = phi ptr [ %11, %54 ], [ %13, %65 ]
  %70 = load i32, ptr %69, align 8
  %71 = add i32 %70, 1
  store i32 %71, ptr %69, align 8
  br label %72

72:                                               ; preds = %68, %65
  br i1 %53, label %74, label %73, !prof !42

73:                                               ; preds = %72
  tail call fastcc void @smsc911x_rx_fastforward(ptr noundef %3, i32 noundef %51)
  br label %99

74:                                               ; preds = %72
  %75 = and i32 %50, 32764
  %76 = tail call ptr @__netdev_alloc_skb(ptr noundef %5, i32 noundef %75, i32 noundef 2592) #16
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %81, !prof !13

78:                                               ; preds = %74
  tail call fastcc void @smsc911x_rx_fastforward(ptr noundef %3, i32 noundef %51)
  %79 = load i32, ptr %14, align 8
  %80 = add i32 %79, 1
  store i32 %80, ptr %14, align 8
  br label %105

81:                                               ; preds = %74
  %82 = load ptr, ptr %9, align 4
  %83 = getelementptr inbounds %struct.smsc911x_ops, ptr %82, i32 0, i32 2
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr inbounds %struct.sk_buff, ptr %76, i32 0, i32 17
  %86 = load ptr, ptr %85, align 4
  tail call void %84(ptr noundef %3, ptr noundef %86, i32 noundef %51) #16
  %87 = load ptr, ptr %85, align 4
  %88 = getelementptr i8, ptr %87, i32 2
  store ptr %88, ptr %85, align 4
  %89 = getelementptr inbounds %struct.sk_buff, ptr %76, i32 0, i32 14
  %90 = load ptr, ptr %89, align 8
  %91 = getelementptr i8, ptr %90, i32 2
  store ptr %91, ptr %89, align 8
  %92 = add nsw i32 %49, -4
  %93 = tail call ptr @skb_put(ptr noundef nonnull %76, i32 noundef %92) #16
  %94 = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %76, ptr noundef %5) #16
  %95 = getelementptr inbounds %struct.sk_buff, ptr %76, i32 0, i32 13, i32 0, i32 16
  store i16 %94, ptr %95, align 8
  %96 = tail call i32 @netif_receive_skb(ptr noundef nonnull %76) #16
  %97 = load i32, ptr %15, align 8
  %98 = add i32 %97, 1
  store i32 %98, ptr %15, align 8
  br label %99

99:                                               ; preds = %81, %73
  %100 = phi ptr [ %16, %81 ], [ %14, %73 ]
  %101 = phi i32 [ %92, %81 ], [ 1, %73 ]
  %102 = load i32, ptr %100, align 8
  %103 = add i32 %102, %101
  store i32 %103, ptr %100, align 8
  %104 = icmp eq i32 %47, %1
  br i1 %104, label %105, label %17

105:                                              ; preds = %99, %78, %31, %2
  %106 = phi i32 [ %18, %31 ], [ %47, %78 ], [ 0, %2 ], [ %1, %99 ]
  ret i32 %106
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @smsc911x_rx_fastforward(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = icmp ugt i32 %1, 3
  br i1 %3, label %6, label %4, !prof !42

4:                                                ; preds = %2
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %32, label %24

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.smsc911x_data, ptr %0, i32 0, i32 5
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #16
  %9 = getelementptr inbounds %struct.smsc911x_data, ptr %0, i32 0, i32 24
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.smsc911x_ops, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  tail call void %12(ptr noundef %0, i32 noundef 120, i32 noundef -2147483648) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #16
  br label %13

13:                                               ; preds = %13, %6
  %14 = phi i32 [ 500, %6 ], [ %21, %13 ]
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748) #16
  %16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #16
  %17 = load ptr, ptr %9, align 4
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 %18(ptr noundef %0, i32 noundef 120) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %16) #16
  %20 = icmp sgt i32 %19, -1
  %21 = add nsw i32 %14, -1
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %20, i1 true, i1 %22
  br i1 %23, label %32, label %13

24:                                               ; preds = %4
  %25 = tail call fastcc i32 @smsc911x_reg_read(ptr noundef %0, i32 noundef 0)
  %26 = icmp eq i32 %1, 1
  br i1 %26, label %32, label %27

27:                                               ; preds = %24
  %28 = tail call fastcc i32 @smsc911x_reg_read(ptr noundef %0, i32 noundef 0)
  %29 = icmp eq i32 %1, 2
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  %31 = tail call fastcc i32 @smsc911x_reg_read(ptr noundef %0, i32 noundef 0)
  br label %32

32:                                               ; preds = %30, %27, %24, %13, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_receive_skb(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @smsc911x_open(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 1408
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 111, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @__pm_runtime_resume(ptr noundef %4, i32 noundef 4) #16
  %6 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %192

9:                                                ; preds = %1
  %10 = getelementptr i8, ptr %0, i32 1456
  %11 = load ptr, ptr %10, align 8
  %12 = tail call ptr @phy_find_first(ptr noundef %11) #16
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.23) #17
  br label %346

15:                                               ; preds = %9
  %16 = getelementptr i8, ptr %0, i32 1436
  %17 = load i32, ptr %16, align 4
  %18 = tail call i32 @phy_connect_direct(ptr noundef %0, ptr noundef nonnull %12, ptr noundef nonnull @smsc911x_phy_adjust_link, i32 noundef %17) #16
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %190

20:                                               ; preds = %15
  tail call void @phy_attached_info(ptr noundef nonnull %12) #16
  %21 = tail call i32 @phy_set_max_speed(ptr noundef nonnull %12, i32 noundef 100) #16
  tail call void @phy_support_asym_pause(ptr noundef nonnull %12) #16
  %22 = getelementptr i8, ptr %0, i32 1464
  store i32 -1, ptr %22, align 8
  %23 = getelementptr i8, ptr %0, i32 1468
  store i32 -1, ptr %23, align 4
  %24 = load ptr, ptr %6, align 8
  %25 = getelementptr i8, ptr %0, i32 1708
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(6) %25, i8 -1, i32 6, i1 false) #16
  %26 = getelementptr i8, ptr %0, i32 1714
  store i8 6, ptr %26, align 1
  %27 = getelementptr i8, ptr %0, i32 1715
  store i8 7, ptr %27, align 1
  %28 = getelementptr i8, ptr %0, i32 1716
  store i8 8, ptr %28, align 1
  %29 = getelementptr i8, ptr %0, i32 1717
  store i8 9, ptr %29, align 1
  %30 = getelementptr i8, ptr %0, i32 1718
  store i8 10, ptr %30, align 1
  %31 = getelementptr i8, ptr %0, i32 1719
  store i8 11, ptr %31, align 1
  %32 = getelementptr i8, ptr %0, i32 1720
  store i8 0, ptr %32, align 4
  %33 = getelementptr i8, ptr %0, i32 1721
  store i8 0, ptr %33, align 1
  br label %34

34:                                               ; preds = %34, %20
  %35 = phi i32 [ 14, %20 ], [ %38, %34 ]
  %36 = trunc i32 %35 to i8
  %37 = getelementptr %struct.smsc911x_data, ptr %2, i32 0, i32 16, i32 %35
  store i8 %36, ptr %37, align 1
  %38 = add nuw nsw i32 %35, 1
  %39 = icmp eq i32 %38, 64
  br i1 %39, label %40, label %34

40:                                               ; preds = %34
  %41 = getelementptr i8, ptr %0, i32 1452
  %42 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %41) #16
  %43 = getelementptr i8, ptr %0, i32 1860
  %44 = load ptr, ptr %43, align 4
  %45 = load ptr, ptr %44, align 4
  %46 = tail call i32 %45(ptr noundef %2, i32 noundef 116) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %41, i32 noundef %42) #16
  %47 = and i32 %46, 983040
  %48 = or i32 %47, 1048576
  %49 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %41) #16
  %50 = load ptr, ptr %43, align 4
  %51 = getelementptr inbounds %struct.smsc911x_ops, ptr %50, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  tail call void %52(ptr noundef %2, i32 noundef 116, i32 noundef %48) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %41, i32 noundef %49) #16
  %53 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %41) #16
  %54 = load ptr, ptr %43, align 4
  %55 = getelementptr inbounds %struct.smsc911x_ops, ptr %54, i32 0, i32 1
  %56 = load ptr, ptr %55, align 4
  tail call void %56(ptr noundef %2, i32 noundef 112, i32 noundef 2) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %41, i32 noundef %53) #16
  %57 = getelementptr i8, ptr %0, i32 1772
  %58 = ptrtoint ptr %57 to i32
  %59 = shl i32 %58, 8
  %60 = and i32 %59, 768
  %61 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %41) #16
  %62 = load ptr, ptr %43, align 4
  %63 = getelementptr inbounds %struct.smsc911x_ops, ptr %62, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  tail call void %64(ptr noundef %2, i32 noundef 108, i32 noundef %60) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %41, i32 noundef %61) #16
  %65 = getelementptr inbounds %struct.mdio_device, ptr %24, i32 0, i32 1
  %66 = getelementptr inbounds %struct.mdio_device, ptr %24, i32 0, i32 6
  %67 = getelementptr i8, ptr %0, i32 1448
  %68 = ptrtoint ptr %25 to i32
  %69 = and i32 %68, 3
  %70 = shl nuw nsw i32 %69, 16
  %71 = or i32 %70, 12352
  %72 = and i32 %68, -4
  %73 = add nuw nsw i32 %69, 67
  %74 = lshr i32 %73, 2
  %75 = inttoptr i32 %72 to ptr
  %76 = and i32 %58, 3
  %77 = add nuw nsw i32 %76, 3
  %78 = getelementptr i8, ptr %0, i32 1836
  br label %79

79:                                               ; preds = %168, %40
  %80 = phi i32 [ 0, %40 ], [ %173, %168 ]
  %81 = load ptr, ptr %65, align 8
  %82 = load i32, ptr %66, align 8
  %83 = tail call i32 @smsc911x_mii_write(ptr noundef %81, i32 noundef %82, i32 noundef 0, i16 noundef zeroext 16640) #16
  %84 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %67) #16
  tail call fastcc void @smsc911x_mac_write(ptr noundef %2, i32 noundef 1, i32 noundef 1048588) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %67, i32 noundef %84) #16
  br label %85

85:                                               ; preds = %165, %79
  %86 = phi i32 [ 0, %79 ], [ %166, %165 ]
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(64) %57, i8 0, i32 64, i1 false) #16
  %87 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %41) #16
  %88 = load ptr, ptr %43, align 4
  %89 = getelementptr inbounds %struct.smsc911x_ops, ptr %88, i32 0, i32 1
  %90 = load ptr, ptr %89, align 4
  tail call void %90(ptr noundef %2, i32 noundef 32, i32 noundef %71) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %41, i32 noundef %87) #16
  %91 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %41) #16
  %92 = load ptr, ptr %43, align 4
  %93 = getelementptr inbounds %struct.smsc911x_ops, ptr %92, i32 0, i32 1
  %94 = load ptr, ptr %93, align 4
  tail call void %94(ptr noundef %2, i32 noundef 32, i32 noundef 4194368) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %41, i32 noundef %91) #16
  %95 = load ptr, ptr %43, align 4
  %96 = getelementptr inbounds %struct.smsc911x_ops, ptr %95, i32 0, i32 3
  %97 = load ptr, ptr %96, align 4
  tail call void %97(ptr noundef %2, ptr noundef %75, i32 noundef %74) #16
  br label %98

98:                                               ; preds = %112, %85
  %99 = phi i32 [ 60, %85 ], [ %114, %112 ]
  %100 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %100(i32 noundef 1073740) #16
  %101 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %41) #16
  %102 = load ptr, ptr %43, align 4
  %103 = load ptr, ptr %102, align 4
  %104 = tail call i32 %103(ptr noundef %2, i32 noundef 128) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %41, i32 noundef %101) #16
  %105 = and i32 %104, 16711680
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %112, label %107

107:                                              ; preds = %98
  %108 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %41) #16
  %109 = load ptr, ptr %43, align 4
  %110 = load ptr, ptr %109, align 4
  %111 = tail call i32 %110(ptr noundef %2, i32 noundef 72) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %41, i32 noundef %108) #16
  br label %112

112:                                              ; preds = %107, %98
  %113 = phi i32 [ %111, %107 ], [ 0, %98 ]
  %114 = add nsw i32 %99, -1
  %115 = icmp ne i32 %99, 0
  %116 = icmp eq i32 %113, 0
  %117 = select i1 %115, i1 %116, i1 false
  br i1 %117, label %98, label %118

118:                                              ; preds = %112
  %119 = and i32 %113, 32768
  %120 = icmp ne i32 %119, 0
  %121 = or i1 %116, %120
  br i1 %121, label %165, label %122

122:                                              ; preds = %136, %118
  %123 = phi i32 [ %138, %136 ], [ 60, %118 ]
  %124 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %124(i32 noundef 1073740) #16
  %125 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %41) #16
  %126 = load ptr, ptr %43, align 4
  %127 = load ptr, ptr %126, align 4
  %128 = tail call i32 %127(ptr noundef %2, i32 noundef 124) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %41, i32 noundef %125) #16
  %129 = and i32 %128, 16711680
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %136, label %131

131:                                              ; preds = %122
  %132 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %41) #16
  %133 = load ptr, ptr %43, align 4
  %134 = load ptr, ptr %133, align 4
  %135 = tail call i32 %134(ptr noundef %2, i32 noundef 64) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %41, i32 noundef %132) #16
  br label %136

136:                                              ; preds = %131, %122
  %137 = phi i32 [ %135, %131 ], [ 0, %122 ]
  %138 = add nsw i32 %123, -1
  %139 = icmp ne i32 %123, 0
  %140 = icmp eq i32 %137, 0
  %141 = select i1 %139, i1 %140, i1 false
  br i1 %141, label %122, label %142

142:                                              ; preds = %136
  %143 = and i32 %137, 32768
  %144 = icmp ne i32 %143, 0
  %145 = or i1 %140, %144
  br i1 %145, label %165, label %146

146:                                              ; preds = %142
  %147 = lshr i32 %137, 16
  %148 = and i32 %147, 16383
  %149 = add nuw nsw i32 %77, %148
  %150 = lshr i32 %149, 2
  %151 = load ptr, ptr %43, align 4
  %152 = getelementptr inbounds %struct.smsc911x_ops, ptr %151, i32 0, i32 2
  %153 = load ptr, ptr %152, align 4
  tail call void %153(ptr noundef %2, ptr noundef %57, i32 noundef %150) #16
  %154 = icmp eq i32 %148, 68
  br i1 %154, label %158, label %165

155:                                              ; preds = %158
  %156 = add nuw nsw i32 %159, 1
  %157 = icmp eq i32 %156, 64
  br i1 %157, label %175, label %158

158:                                              ; preds = %155, %146
  %159 = phi i32 [ %156, %155 ], [ 0, %146 ]
  %160 = getelementptr %struct.smsc911x_data, ptr %2, i32 0, i32 16, i32 %159
  %161 = load i8, ptr %160, align 1
  %162 = getelementptr %struct.smsc911x_data, ptr %2, i32 0, i32 17, i32 %159
  %163 = load i8, ptr %162, align 1
  %164 = icmp eq i8 %161, %163
  br i1 %164, label %155, label %165

165:                                              ; preds = %158, %146, %142, %118
  %166 = add nuw nsw i32 %86, 1
  %167 = icmp eq i32 %166, 10
  br i1 %167, label %168, label %85

168:                                              ; preds = %165
  %169 = load i32, ptr %78, align 4
  %170 = add i32 %169, 1
  store i32 %170, ptr %78, align 4
  %171 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %67) #16
  tail call fastcc void @smsc911x_mac_write(ptr noundef %2, i32 noundef 1, i32 noundef 0) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %67, i32 noundef %171) #16
  %172 = tail call fastcc i32 @smsc911x_phy_reset(ptr noundef %2) #16
  %173 = add nuw nsw i32 %80, 1
  %174 = icmp eq i32 %173, 10
  br i1 %174, label %175, label %79

175:                                              ; preds = %168, %155
  %176 = phi i1 [ false, %155 ], [ true, %168 ]
  %177 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %67) #16
  tail call fastcc void @smsc911x_mac_write(ptr noundef %2, i32 noundef 1, i32 noundef 0) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %67, i32 noundef %177) #16
  %178 = load ptr, ptr %65, align 8
  %179 = load i32, ptr %66, align 8
  %180 = tail call i32 @smsc911x_mii_write(ptr noundef %178, i32 noundef %179, i32 noundef 0, i16 noundef zeroext 0) #16
  %181 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %41) #16
  %182 = load ptr, ptr %43, align 4
  %183 = getelementptr inbounds %struct.smsc911x_ops, ptr %182, i32 0, i32 1
  %184 = load ptr, ptr %183, align 4
  tail call void %184(ptr noundef %2, i32 noundef 112, i32 noundef 0) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %41, i32 noundef %181) #16
  %185 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %41) #16
  %186 = load ptr, ptr %43, align 4
  %187 = getelementptr inbounds %struct.smsc911x_ops, ptr %186, i32 0, i32 1
  %188 = load ptr, ptr %187, align 4
  tail call void %188(ptr noundef %2, i32 noundef 108, i32 noundef 0) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %41, i32 noundef %185) #16
  br i1 %176, label %189, label %192

189:                                              ; preds = %175
  tail call void @phy_disconnect(ptr noundef nonnull %12) #16
  br label %346

190:                                              ; preds = %15
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.24) #17
  %191 = icmp slt i32 %18, 0
  br i1 %191, label %346, label %192

192:                                              ; preds = %190, %175, %1
  %193 = tail call fastcc i32 @smsc911x_soft_reset(ptr noundef %2)
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %343

195:                                              ; preds = %192
  %196 = getelementptr i8, ptr %0, i32 1452
  %197 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %196) #16
  %198 = getelementptr i8, ptr %0, i32 1860
  %199 = load ptr, ptr %198, align 4
  %200 = getelementptr inbounds %struct.smsc911x_ops, ptr %199, i32 0, i32 1
  %201 = load ptr, ptr %200, align 4
  tail call void %201(ptr noundef %2, i32 noundef 116, i32 noundef 327680) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %196, i32 noundef %197) #16
  %202 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %196) #16
  %203 = load ptr, ptr %198, align 4
  %204 = getelementptr inbounds %struct.smsc911x_ops, ptr %203, i32 0, i32 1
  %205 = load ptr, ptr %204, align 4
  tail call void %205(ptr noundef %2, i32 noundef 172, i32 noundef 7223104) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %196, i32 noundef %202) #16
  %206 = getelementptr i8, ptr %0, i32 1448
  tail call void @_raw_spin_lock_irq(ptr noundef %206) #16
  tail call fastcc void @smsc911x_mac_write(ptr noundef %2, i32 noundef 9, i32 noundef 33024)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !8
  %207 = load i16, ptr %206, align 4
  %208 = add i16 %207, 1
  store i16 %208, ptr %206, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #16, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !12
  %209 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %196) #16
  %210 = load ptr, ptr %198, align 4
  %211 = load ptr, ptr %210, align 4
  %212 = tail call i32 %211(ptr noundef %2, i32 noundef 176) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %196, i32 noundef %209) #16
  %213 = icmp sgt i32 %212, -1
  br i1 %213, label %225, label %214

214:                                              ; preds = %218, %195
  %215 = phi i32 [ %216, %218 ], [ 50, %195 ]
  %216 = add nsw i32 %215, -1
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %225, label %218

218:                                              ; preds = %214
  %219 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %219(i32 noundef 2147480) #16
  %220 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %196) #16
  %221 = load ptr, ptr %198, align 4
  %222 = load ptr, ptr %221, align 4
  %223 = tail call i32 %222(ptr noundef %2, i32 noundef 176) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %196, i32 noundef %220) #16
  %224 = icmp sgt i32 %223, -1
  br i1 %224, label %225, label %214

225:                                              ; preds = %218, %214, %195
  %226 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %196) #16
  %227 = load ptr, ptr %198, align 4
  %228 = getelementptr inbounds %struct.smsc911x_ops, ptr %227, i32 0, i32 1
  %229 = load ptr, ptr %228, align 4
  tail call void %229(ptr noundef %2, i32 noundef 136, i32 noundef 1879506944) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %196, i32 noundef %226) #16
  tail call void @_raw_spin_lock_irq(ptr noundef %206) #16
  %230 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 72
  %231 = load ptr, ptr %230, align 32
  %232 = getelementptr i8, ptr %231, i32 5
  %233 = load i8, ptr %232, align 1
  %234 = zext i8 %233 to i32
  %235 = shl nuw nsw i32 %234, 8
  %236 = getelementptr i8, ptr %231, i32 4
  %237 = load i8, ptr %236, align 1
  %238 = zext i8 %237 to i32
  %239 = or i32 %235, %238
  %240 = getelementptr i8, ptr %231, i32 3
  %241 = load i8, ptr %240, align 1
  %242 = zext i8 %241 to i32
  %243 = shl nuw i32 %242, 24
  %244 = getelementptr i8, ptr %231, i32 2
  %245 = load i8, ptr %244, align 1
  %246 = zext i8 %245 to i32
  %247 = shl nuw nsw i32 %246, 16
  %248 = or i32 %247, %243
  %249 = getelementptr i8, ptr %231, i32 1
  %250 = load i8, ptr %249, align 1
  %251 = zext i8 %250 to i32
  %252 = shl nuw nsw i32 %251, 8
  %253 = or i32 %248, %252
  %254 = load i8, ptr %231, align 1
  %255 = zext i8 %254 to i32
  %256 = or i32 %253, %255
  tail call fastcc void @smsc911x_mac_write(ptr noundef %2, i32 noundef 2, i32 noundef %239) #16
  tail call fastcc void @smsc911x_mac_write(ptr noundef %2, i32 noundef 3, i32 noundef %256) #16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !8
  %257 = load i16, ptr %206, align 4
  %258 = add i16 %257, 1
  store i16 %258, ptr %206, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #16, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !12
  %259 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %196) #16
  %260 = load ptr, ptr %198, align 4
  %261 = getelementptr inbounds %struct.smsc911x_ops, ptr %260, i32 0, i32 1
  %262 = load ptr, ptr %261, align 4
  tail call void %262(ptr noundef %2, i32 noundef 92, i32 noundef 0) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %196, i32 noundef %259) #16
  %263 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %196) #16
  %264 = load ptr, ptr %198, align 4
  %265 = getelementptr inbounds %struct.smsc911x_ops, ptr %264, i32 0, i32 1
  %266 = load ptr, ptr %265, align 4
  tail call void %266(ptr noundef %2, i32 noundef 88, i32 noundef -1) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %196, i32 noundef %263) #16
  %267 = getelementptr i8, ptr %0, i32 1420
  %268 = load i32, ptr %267, align 4
  %269 = icmp eq i32 %268, 0
  %270 = select i1 %269, i32 167772416, i32 167772432
  %271 = getelementptr i8, ptr %0, i32 1424
  %272 = load i32, ptr %271, align 4
  %273 = icmp ne i32 %272, 0
  %274 = zext i1 %273 to i32
  %275 = or i32 %270, %274
  %276 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %196) #16
  %277 = load ptr, ptr %198, align 4
  %278 = getelementptr inbounds %struct.smsc911x_ops, ptr %277, i32 0, i32 1
  %279 = load ptr, ptr %278, align 4
  tail call void %279(ptr noundef %2, i32 noundef 84, i32 noundef %275) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %196, i32 noundef %276) #16
  %280 = getelementptr i8, ptr %0, i32 1704
  store i32 0, ptr %280, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #16, !srcloc !43
  %281 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 59
  %282 = load i32, ptr %281, align 8
  %283 = tail call ptr @irq_get_irq_data(i32 noundef %282) #16
  %284 = icmp eq ptr %283, null
  br i1 %284, label %291, label %285

285:                                              ; preds = %225
  %286 = getelementptr inbounds %struct.irq_data, ptr %283, i32 0, i32 3
  %287 = load ptr, ptr %286, align 4
  %288 = load i32, ptr %287, align 4
  %289 = and i32 %288, 15
  %290 = or i32 %289, 128
  br label %291

291:                                              ; preds = %285, %225
  %292 = phi i32 [ %290, %285 ], [ 128, %225 ]
  %293 = load i32, ptr %281, align 8
  %294 = tail call i32 @request_threaded_irq(i32 noundef %293, ptr noundef nonnull @smsc911x_irqhandler, ptr noundef null, i32 noundef %292, ptr noundef %0, ptr noundef %0) #16
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %296, label %343

296:                                              ; preds = %291
  %297 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %196) #16
  %298 = load ptr, ptr %198, align 4
  %299 = load ptr, ptr %298, align 4
  %300 = tail call i32 %299(ptr noundef %2, i32 noundef 92) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %196, i32 noundef %297) #16
  %301 = or i32 %300, -2147483648
  %302 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %196) #16
  %303 = load ptr, ptr %198, align 4
  %304 = getelementptr inbounds %struct.smsc911x_ops, ptr %303, i32 0, i32 1
  %305 = load ptr, ptr %304, align 4
  tail call void %305(ptr noundef %2, i32 noundef 92, i32 noundef %301) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %196, i32 noundef %302) #16
  br label %306

306:                                              ; preds = %310, %296
  %307 = phi i32 [ 999, %296 ], [ %311, %310 ]
  %308 = load i32, ptr %280, align 8
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %310, label %320

310:                                              ; preds = %306
  tail call void @msleep(i32 noundef 1) #16
  %311 = add nsw i32 %307, -1
  %312 = icmp eq i32 %307, 0
  br i1 %312, label %313, label %306

313:                                              ; preds = %310
  %314 = load i32, ptr %280, align 8
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %316, label %320

316:                                              ; preds = %313
  %317 = load i32, ptr %281, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %0, ptr noundef nonnull @.str.21, i32 noundef %317) #17
  %318 = load i32, ptr %281, align 8
  %319 = tail call ptr @free_irq(i32 noundef %318, ptr noundef %0) #16
  br label %343

320:                                              ; preds = %313, %306
  %321 = load ptr, ptr %2, align 8
  %322 = ptrtoint ptr %321 to i32
  %323 = load i32, ptr %281, align 8
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %0, ptr noundef nonnull @.str.22, i32 noundef %322, i32 noundef %323) #17
  %324 = getelementptr i8, ptr %0, i32 1464
  store i32 -1, ptr %324, align 8
  %325 = getelementptr i8, ptr %0, i32 1468
  store i32 -1, ptr %325, align 4
  %326 = load ptr, ptr %6, align 8
  tail call void @phy_start(ptr noundef %326) #16
  %327 = tail call fastcc i32 @smsc911x_reg_read(ptr noundef %2, i32 noundef 116)
  %328 = and i32 %327, 987135
  %329 = or i32 %328, 1048576
  tail call fastcc void @smsc911x_reg_write(ptr noundef %2, i32 noundef 116, i32 noundef %329)
  %330 = tail call fastcc i32 @smsc911x_reg_read(ptr noundef %2, i32 noundef 104)
  %331 = and i32 %330, 16776960
  %332 = or i32 %331, -16777216
  tail call fastcc void @smsc911x_reg_write(ptr noundef %2, i32 noundef 104, i32 noundef %332)
  tail call fastcc void @smsc911x_reg_write(ptr noundef %2, i32 noundef 108, i32 noundef 512)
  %333 = getelementptr i8, ptr %0, i32 1488
  tail call void @napi_enable(ptr noundef %333) #16
  %334 = tail call fastcc i32 @smsc911x_reg_read(ptr noundef %2, i32 noundef 92)
  %335 = or i32 %334, 16777736
  tail call fastcc void @smsc911x_reg_write(ptr noundef %2, i32 noundef 92, i32 noundef %335)
  tail call void @_raw_spin_lock_irq(ptr noundef %206) #16
  %336 = tail call fastcc i32 @smsc911x_mac_read(ptr noundef %2, i32 noundef 1)
  %337 = or i32 %336, 268435468
  tail call fastcc void @smsc911x_mac_write(ptr noundef %2, i32 noundef 1, i32 noundef %337)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !8
  %338 = load i16, ptr %206, align 4
  %339 = add i16 %338, 1
  store i16 %339, ptr %206, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #16, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !12
  tail call fastcc void @smsc911x_reg_write(ptr noundef %2, i32 noundef 112, i32 noundef 2)
  %340 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  %341 = load ptr, ptr %340, align 64
  %342 = getelementptr inbounds %struct.netdev_queue, ptr %341, i32 0, i32 12
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %342) #16
  br label %350

343:                                              ; preds = %316, %291, %192
  %344 = phi i32 [ -19, %316 ], [ %193, %192 ], [ %294, %291 ]
  %345 = load ptr, ptr %6, align 8
  tail call void @phy_disconnect(ptr noundef %345) #16
  store ptr null, ptr %6, align 8
  br label %346

346:                                              ; preds = %343, %190, %189, %14
  %347 = phi i32 [ %344, %343 ], [ %18, %190 ], [ -19, %189 ], [ -19, %14 ]
  %348 = load ptr, ptr %3, align 4
  %349 = tail call i32 @__pm_runtime_idle(ptr noundef %348, i32 noundef 5) #16
  br label %350

350:                                              ; preds = %346, %320
  %351 = phi i32 [ %347, %346 ], [ 0, %320 ]
  ret i32 %351
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @smsc911x_stop(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 1408
  %3 = getelementptr i8, ptr %0, i32 1452
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #16
  %5 = getelementptr i8, ptr %0, i32 1860
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 %7(ptr noundef %2, i32 noundef 84) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #16
  %9 = and i32 %8, -257
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #16
  %11 = load ptr, ptr %5, align 4
  %12 = getelementptr inbounds %struct.smsc911x_ops, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  tail call void %13(ptr noundef %2, i32 noundef 84, i32 noundef %9) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %10) #16
  %14 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  %15 = load ptr, ptr %14, align 64
  %16 = getelementptr inbounds %struct.netdev_queue, ptr %15, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %16) #16
  %17 = getelementptr i8, ptr %0, i32 1488
  tail call void @napi_disable(ptr noundef %17) #16
  %18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #16
  %19 = load ptr, ptr %5, align 4
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 %20(ptr noundef %2, i32 noundef 160) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %18) #16
  %22 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 36, i32 6
  %23 = load i32, ptr %22, align 8
  %24 = add i32 %23, %21
  store i32 %24, ptr %22, align 8
  tail call fastcc void @smsc911x_tx_update_txcounters(ptr noundef %0)
  %25 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 59
  %26 = load i32, ptr %25, align 8
  %27 = tail call ptr @free_irq(i32 noundef %26, ptr noundef %0) #16
  %28 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %29 = load ptr, ptr %28, align 8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %1
  tail call void @phy_stop(ptr noundef nonnull %29) #16
  %32 = load ptr, ptr %28, align 8
  tail call void @phy_disconnect(ptr noundef %32) #16
  store ptr null, ptr %28, align 8
  br label %33

33:                                               ; preds = %31, %1
  tail call void @netif_carrier_off(ptr noundef %0) #16
  %34 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 111, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = tail call i32 @__pm_runtime_idle(ptr noundef %35, i32 noundef 5) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @smsc911x_hard_start_xmit(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr i8, ptr %1, i32 1408
  %4 = getelementptr i8, ptr %1, i32 1452
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #16
  %6 = getelementptr i8, ptr %1, i32 1860
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 %8(ptr noundef %3, i32 noundef 128) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #16
  %10 = and i32 %9, 65535
  %11 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %12 = load ptr, ptr %11, align 4
  %13 = ptrtoint ptr %12 to i32
  %14 = shl i32 %13, 16
  %15 = and i32 %14, 196608
  %16 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %17 = load i32, ptr %16, align 8
  %18 = or i32 %17, %15
  %19 = or i32 %18, 12288
  %20 = shl i32 %17, 16
  %21 = or i32 %20, %17
  %22 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #16
  %23 = load ptr, ptr %6, align 4
  %24 = getelementptr inbounds %struct.smsc911x_ops, ptr %23, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  tail call void %25(ptr noundef %3, i32 noundef 32, i32 noundef %19) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %22) #16
  %26 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #16
  %27 = load ptr, ptr %6, align 4
  %28 = getelementptr inbounds %struct.smsc911x_ops, ptr %27, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  tail call void %29(ptr noundef %3, i32 noundef 32, i32 noundef %21) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %26) #16
  %30 = load ptr, ptr %11, align 4
  %31 = ptrtoint ptr %30 to i32
  %32 = and i32 %31, -4
  %33 = load i32, ptr %16, align 8
  %34 = add i32 %33, 3
  %35 = and i32 %31, 3
  %36 = add i32 %34, %35
  %37 = lshr i32 %36, 2
  %38 = load ptr, ptr %6, align 4
  %39 = getelementptr inbounds %struct.smsc911x_ops, ptr %38, i32 0, i32 3
  %40 = load ptr, ptr %39, align 4
  %41 = inttoptr i32 %32 to ptr
  tail call void %40(ptr noundef %3, ptr noundef %41, i32 noundef %37) #16
  %42 = load i32, ptr %16, align 8
  %43 = add nsw i32 %10, -32
  %44 = sub i32 %43, %42
  %45 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.skb_shared_info, ptr %46, i32 0, i32 3
  %48 = load i8, ptr %47, align 1
  %49 = and i8 %48, 2
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %2
  tail call void @skb_tstamp_tx(ptr noundef %0, ptr noundef null) #16
  br label %52

52:                                               ; preds = %51, %2
  tail call void @__dev_kfree_skb_any(ptr noundef %0, i32 noundef 0) #16
  %53 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #16
  %54 = load ptr, ptr %6, align 4
  %55 = load ptr, ptr %54, align 4
  %56 = tail call i32 %55(ptr noundef %3, i32 noundef 128) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %53) #16
  %57 = and i32 %56, 16646144
  %58 = icmp ugt i32 %57, 1900544
  br i1 %58, label %59, label %60, !prof !13

59:                                               ; preds = %52
  tail call fastcc void @smsc911x_tx_update_txcounters(ptr noundef %1)
  br label %60

60:                                               ; preds = %59, %52
  %61 = icmp ult i32 %44, 1600
  br i1 %61, label %62, label %76

62:                                               ; preds = %60
  %63 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 87
  %64 = load ptr, ptr %63, align 64
  %65 = getelementptr inbounds %struct.netdev_queue, ptr %64, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %65) #16
  %66 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #16
  %67 = load ptr, ptr %6, align 4
  %68 = load ptr, ptr %67, align 4
  %69 = tail call i32 %68(ptr noundef %3, i32 noundef 104) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %66) #16
  %70 = and i32 %69, 16777215
  %71 = or i32 %70, 838860800
  %72 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #16
  %73 = load ptr, ptr %6, align 4
  %74 = getelementptr inbounds %struct.smsc911x_ops, ptr %73, i32 0, i32 1
  %75 = load ptr, ptr %74, align 4
  tail call void %75(ptr noundef %3, i32 noundef 104, i32 noundef %71) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %72) #16
  br label %76

76:                                               ; preds = %62, %60
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @smsc911x_set_multicast_list(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 1408
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 14
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 256
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %0, i32 1844
  store i32 262144, ptr %8, align 4
  br label %42

9:                                                ; preds = %1
  %10 = and i32 %4, 512
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = getelementptr i8, ptr %0, i32 1844
  store i32 524288, ptr %13, align 4
  br label %42

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 61
  %16 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 61, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  %19 = getelementptr i8, ptr %0, i32 1844
  br i1 %18, label %41, label %20

20:                                               ; preds = %14
  store i32 8192, ptr %19, align 4
  %21 = getelementptr i8, ptr %0, i32 1848
  store i32 786432, ptr %21, align 8
  %22 = load ptr, ptr %15, align 4
  %23 = icmp eq ptr %22, %15
  br i1 %23, label %45, label %24

24:                                               ; preds = %24, %20
  %25 = phi ptr [ %39, %24 ], [ %22, %20 ]
  %26 = phi i32 [ %38, %24 ], [ 0, %20 ]
  %27 = phi i32 [ %36, %24 ], [ 0, %20 ]
  %28 = getelementptr inbounds %struct.netdev_hw_addr, ptr %25, i32 0, i32 2
  %29 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %28, i32 noundef 6) #18
  %30 = tail call i32 asm "rbit $0, $1", "=r,r"(i32 %29) #19, !srcloc !44
  %31 = lshr i32 %30, 26
  %32 = and i32 %31, 31
  %33 = shl nuw i32 1, %32
  %34 = icmp sgt i32 %30, -1
  %35 = select i1 %34, i32 %33, i32 0
  %36 = or i32 %35, %27
  %37 = select i1 %34, i32 0, i32 %33
  %38 = or i32 %37, %26
  %39 = load ptr, ptr %25, align 4
  %40 = icmp eq ptr %39, %15
  br i1 %40, label %45, label %24

41:                                               ; preds = %14
  store i32 0, ptr %19, align 4
  br label %42

42:                                               ; preds = %41, %12, %7
  %43 = phi i32 [ 270336, %12 ], [ 794624, %41 ], [ 532480, %7 ]
  %44 = getelementptr i8, ptr %0, i32 1848
  store i32 %43, ptr %44, align 8
  br label %45

45:                                               ; preds = %42, %24, %20
  %46 = phi i32 [ 0, %20 ], [ 0, %42 ], [ %38, %24 ]
  %47 = phi i32 [ 0, %20 ], [ 0, %42 ], [ %36, %24 ]
  %48 = getelementptr i8, ptr %0, i32 1852
  store i32 %46, ptr %48, align 4
  %49 = getelementptr i8, ptr %0, i32 1856
  store i32 %47, ptr %49, align 8
  %50 = getelementptr i8, ptr %0, i32 1448
  %51 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %50) #16
  %52 = getelementptr i8, ptr %0, i32 1416
  %53 = load i32, ptr %52, align 8
  %54 = icmp ult i32 %53, 2
  br i1 %54, label %55, label %62

55:                                               ; preds = %45
  %56 = getelementptr i8, ptr %0, i32 1840
  %57 = load i32, ptr %56, align 8
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %75

59:                                               ; preds = %55
  store i32 1, ptr %56, align 8
  %60 = tail call fastcc i32 @smsc911x_mac_read(ptr noundef %2, i32 noundef 1)
  %61 = and i32 %60, -5
  tail call fastcc void @smsc911x_mac_write(ptr noundef %2, i32 noundef 1, i32 noundef %61)
  br label %75

62:                                               ; preds = %45
  %63 = tail call fastcc i32 @smsc911x_mac_read(ptr noundef %2, i32 noundef 1) #16
  %64 = getelementptr i8, ptr %0, i32 1844
  %65 = load i32, ptr %64, align 4
  %66 = or i32 %65, %63
  %67 = getelementptr i8, ptr %0, i32 1848
  %68 = load i32, ptr %67, align 8
  %69 = xor i32 %68, -1
  %70 = and i32 %66, %69
  tail call fastcc void @smsc911x_mac_write(ptr noundef %2, i32 noundef 1, i32 noundef %70) #16
  %71 = getelementptr i8, ptr %0, i32 1852
  %72 = load i32, ptr %71, align 4
  tail call fastcc void @smsc911x_mac_write(ptr noundef %2, i32 noundef 4, i32 noundef %72) #16
  %73 = getelementptr i8, ptr %0, i32 1856
  %74 = load i32, ptr %73, align 8
  tail call fastcc void @smsc911x_mac_write(ptr noundef %2, i32 noundef 5, i32 noundef %74) #16
  br label %75

75:                                               ; preds = %62, %59, %55
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %50, i32 noundef %51) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @smsc911x_set_mac_address(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 1408
  %4 = getelementptr i8, ptr %0, i32 1416
  %5 = load i32, ptr %4, align 8
  %6 = icmp ult i32 %5, 2
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %55

12:                                               ; preds = %7, %2
  %13 = getelementptr inbounds %struct.sockaddr, ptr %1, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %55

17:                                               ; preds = %12
  %18 = getelementptr %struct.sockaddr, ptr %1, i32 0, i32 1, i32 4
  %19 = load i16, ptr %18, align 2
  %20 = zext i16 %19 to i32
  %21 = or i32 %14, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %55, label %23

23:                                               ; preds = %17
  tail call void @dev_addr_mod(ptr noundef %0, i32 noundef 0, ptr noundef %13, i32 noundef 6) #16
  %24 = getelementptr i8, ptr %0, i32 1448
  tail call void @_raw_spin_lock_irq(ptr noundef %24) #16
  %25 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 72
  %26 = load ptr, ptr %25, align 32
  %27 = getelementptr i8, ptr %26, i32 5
  %28 = load i8, ptr %27, align 1
  %29 = zext i8 %28 to i32
  %30 = shl nuw nsw i32 %29, 8
  %31 = getelementptr i8, ptr %26, i32 4
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  %34 = or i32 %30, %33
  %35 = getelementptr i8, ptr %26, i32 3
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  %38 = shl nuw i32 %37, 24
  %39 = getelementptr i8, ptr %26, i32 2
  %40 = load i8, ptr %39, align 1
  %41 = zext i8 %40 to i32
  %42 = shl nuw nsw i32 %41, 16
  %43 = or i32 %42, %38
  %44 = getelementptr i8, ptr %26, i32 1
  %45 = load i8, ptr %44, align 1
  %46 = zext i8 %45 to i32
  %47 = shl nuw nsw i32 %46, 8
  %48 = or i32 %43, %47
  %49 = load i8, ptr %26, align 1
  %50 = zext i8 %49 to i32
  %51 = or i32 %48, %50
  tail call fastcc void @smsc911x_mac_write(ptr noundef %3, i32 noundef 2, i32 noundef %34) #16
  tail call fastcc void @smsc911x_mac_write(ptr noundef %3, i32 noundef 3, i32 noundef %51) #16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !8
  %52 = load i16, ptr %24, align 4
  %53 = add i16 %52, 1
  store i16 %53, ptr %24, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #16, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !12
  %54 = load ptr, ptr %25, align 32
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef %54) #17
  br label %55

55:                                               ; preds = %23, %17, %12, %7
  %56 = phi i32 [ 0, %23 ], [ -16, %7 ], [ -99, %17 ], [ -99, %12 ]
  ret i32 %56
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_do_ioctl_running(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @smsc911x_get_stats(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 1408
  tail call fastcc void @smsc911x_tx_update_txcounters(ptr noundef %0)
  %3 = getelementptr i8, ptr %0, i32 1452
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #16
  %5 = getelementptr i8, ptr %0, i32 1860
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 %7(ptr noundef %2, i32 noundef 160) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #16
  %9 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 36
  %10 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 36, i32 6
  %11 = load i32, ptr %10, align 8
  %12 = add i32 %11, %8
  store i32 %12, ptr %10, align 8
  ret ptr %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @smsc911x_mac_write(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.smsc911x_data, ptr %0, i32 0, i32 5
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #16
  %6 = getelementptr inbounds %struct.smsc911x_data, ptr %0, i32 0, i32 24
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 %8(ptr noundef %0, i32 noundef 164) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #16
  %10 = icmp sgt i32 %9, -1
  br i1 %10, label %11, label %36, !prof !42

11:                                               ; preds = %3
  %12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #16
  %13 = load ptr, ptr %6, align 4
  %14 = getelementptr inbounds %struct.smsc911x_ops, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  tail call void %15(ptr noundef %0, i32 noundef 168, i32 noundef %2) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %12) #16
  %16 = and i32 %1, 255
  %17 = or i32 %16, -2147483648
  %18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #16
  %19 = load ptr, ptr %6, align 4
  %20 = getelementptr inbounds %struct.smsc911x_ops, ptr %19, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  tail call void %21(ptr noundef %0, i32 noundef 164, i32 noundef %17) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %18) #16
  %22 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #16
  %23 = load ptr, ptr %6, align 4
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 %24(ptr noundef %0, i32 noundef 100) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %22) #16
  br label %26

26:                                               ; preds = %26, %11
  %27 = phi i32 [ 0, %11 ], [ %33, %26 ]
  %28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #16
  %29 = load ptr, ptr %6, align 4
  %30 = load ptr, ptr %29, align 4
  %31 = tail call i32 %30(ptr noundef %0, i32 noundef 164) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %28) #16
  %32 = icmp sgt i32 %31, -1
  %33 = add nuw nsw i32 %27, 1
  %34 = icmp eq i32 %33, 40
  %35 = select i1 %32, i1 true, i1 %34
  br i1 %35, label %36, label %26

36:                                               ; preds = %26, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @smsc911x_irqhandler(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr i8, ptr %1, i32 1408
  %4 = getelementptr i8, ptr %1, i32 1452
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #16
  %6 = getelementptr i8, ptr %1, i32 1860
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 %8(ptr noundef %3, i32 noundef 88) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #16
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #16
  %11 = load ptr, ptr %6, align 4
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 %12(ptr noundef %3, i32 noundef 92) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %10) #16
  %14 = and i32 %13, %9
  %15 = icmp sgt i32 %14, -1
  br i1 %15, label %20, label %16, !prof !42

16:                                               ; preds = %2
  %17 = tail call fastcc i32 @smsc911x_reg_read(ptr noundef %3, i32 noundef 92)
  %18 = and i32 %17, 2147483647
  tail call fastcc void @smsc911x_reg_write(ptr noundef %3, i32 noundef 92, i32 noundef %18)
  tail call fastcc void @smsc911x_reg_write(ptr noundef %3, i32 noundef 88, i32 noundef -2147483648)
  %19 = getelementptr i8, ptr %1, i32 1704
  store i32 1, ptr %19, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #16, !srcloc !45
  br label %20

20:                                               ; preds = %16, %2
  %21 = phi i32 [ 1, %16 ], [ 0, %2 ]
  %22 = and i32 %14, 16777216
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %29, label %24, !prof !42

24:                                               ; preds = %20
  tail call fastcc void @smsc911x_reg_write(ptr noundef %3, i32 noundef 88, i32 noundef 16777216)
  %25 = getelementptr i8, ptr %1, i32 1840
  %26 = load i32, ptr %25, align 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  tail call fastcc void @smsc911x_rx_multicast_update_workaround(ptr noundef %3)
  br label %29

29:                                               ; preds = %28, %24, %20
  %30 = phi i32 [ %21, %20 ], [ 1, %28 ], [ 1, %24 ]
  %31 = and i32 %14, 512
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %49, label %33

33:                                               ; preds = %29
  %34 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #16
  %35 = load ptr, ptr %6, align 4
  %36 = load ptr, ptr %35, align 4
  %37 = tail call i32 %36(ptr noundef %3, i32 noundef 104) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %34) #16
  %38 = or i32 %37, -16777216
  %39 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #16
  %40 = load ptr, ptr %6, align 4
  %41 = getelementptr inbounds %struct.smsc911x_ops, ptr %40, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  tail call void %42(ptr noundef %3, i32 noundef 104, i32 noundef %38) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %39) #16
  %43 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #16
  %44 = load ptr, ptr %6, align 4
  %45 = getelementptr inbounds %struct.smsc911x_ops, ptr %44, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  tail call void %46(ptr noundef %3, i32 noundef 88, i32 noundef 512) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %43) #16
  %47 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 87
  %48 = load ptr, ptr %47, align 64
  tail call void @netif_tx_wake_queue(ptr noundef %48) #16
  br label %49

49:                                               ; preds = %33, %29
  %50 = phi i32 [ 1, %33 ], [ %30, %29 ]
  %51 = and i32 %14, 16384
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %54, label %53, !prof !42

53:                                               ; preds = %49
  tail call fastcc void @smsc911x_reg_write(ptr noundef %3, i32 noundef 88, i32 noundef 16384)
  br label %54

54:                                               ; preds = %53, %49
  %55 = phi i32 [ 1, %53 ], [ %50, %49 ]
  %56 = and i32 %14, 8
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %71, label %58, !prof !13

58:                                               ; preds = %54
  %59 = getelementptr i8, ptr %1, i32 1488
  %60 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %59) #16
  br i1 %60, label %61, label %71, !prof !42

61:                                               ; preds = %58
  %62 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #16
  %63 = load ptr, ptr %6, align 4
  %64 = load ptr, ptr %63, align 4
  %65 = tail call i32 %64(ptr noundef %3, i32 noundef 92) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %62) #16
  %66 = and i32 %65, -9
  %67 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #16
  %68 = load ptr, ptr %6, align 4
  %69 = getelementptr inbounds %struct.smsc911x_ops, ptr %68, i32 0, i32 1
  %70 = load ptr, ptr %69, align 4
  tail call void %70(ptr noundef %3, i32 noundef 92, i32 noundef %66) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %67) #16
  tail call void @__napi_schedule(ptr noundef %59) #16
  br label %71

71:                                               ; preds = %61, %58, %54
  %72 = phi i32 [ %55, %54 ], [ 1, %58 ], [ 1, %61 ]
  ret i32 %72
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_start(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @smsc911x_mac_read(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.smsc911x_data, ptr %0, i32 0, i32 5
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #16
  %5 = getelementptr inbounds %struct.smsc911x_data, ptr %0, i32 0, i32 24
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 %7(ptr noundef %0, i32 noundef 164) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #16
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %10, label %36, !prof !42

10:                                               ; preds = %2
  %11 = and i32 %1, 255
  %12 = or i32 %11, -1073741824
  %13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #16
  %14 = load ptr, ptr %5, align 4
  %15 = getelementptr inbounds %struct.smsc911x_ops, ptr %14, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  tail call void %16(ptr noundef %0, i32 noundef 164, i32 noundef %12) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %13) #16
  %17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #16
  %18 = load ptr, ptr %5, align 4
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 %19(ptr noundef %0, i32 noundef 100) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %17) #16
  br label %24

21:                                               ; preds = %24
  %22 = add nuw nsw i32 %25, 1
  %23 = icmp eq i32 %22, 40
  br i1 %23, label %36, label %24

24:                                               ; preds = %21, %10
  %25 = phi i32 [ 0, %10 ], [ %22, %21 ]
  %26 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #16
  %27 = load ptr, ptr %5, align 4
  %28 = load ptr, ptr %27, align 4
  %29 = tail call i32 %28(ptr noundef %0, i32 noundef 164) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %26) #16
  %30 = icmp sgt i32 %29, -1
  br i1 %30, label %31, label %21

31:                                               ; preds = %24
  %32 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #16
  %33 = load ptr, ptr %5, align 4
  %34 = load ptr, ptr %33, align 4
  %35 = tail call i32 %34(ptr noundef %0, i32 noundef 168) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %32) #16
  br label %36

36:                                               ; preds = %31, %21, %2
  %37 = phi i32 [ %35, %31 ], [ -1, %2 ], [ -1, %21 ]
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_disconnect(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @phy_find_first(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_connect_direct(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @smsc911x_phy_adjust_link(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 1408
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.phy_device, ptr %4, i32 0, i32 9
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr i8, ptr %0, i32 1464
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %6, %8
  br i1 %9, label %74, label %10

10:                                               ; preds = %1
  %11 = getelementptr i8, ptr %0, i32 1448
  %12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %11) #16
  %13 = tail call fastcc i32 @smsc911x_mac_read(ptr noundef %2, i32 noundef 1)
  %14 = load i32, ptr %5, align 4
  %15 = icmp eq i32 %14, 0
  %16 = and i32 %13, -1048577
  %17 = select i1 %15, i32 0, i32 1048576
  %18 = or i32 %17, %16
  tail call fastcc void @smsc911x_mac_write(ptr noundef %2, i32 noundef 1, i32 noundef %18)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %11, i32 noundef %12) #16
  %19 = getelementptr i8, ptr %0, i32 1484
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 120
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr i8, ptr %0, i32 1452
  %24 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %23) #16
  %25 = getelementptr i8, ptr %0, i32 1860
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i32 %27(ptr noundef %2, i32 noundef 172) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %23, i32 noundef %24) #16
  %29 = getelementptr inbounds %struct.phy_device, ptr %22, i32 0, i32 9
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %63

32:                                               ; preds = %10
  %33 = getelementptr inbounds %struct.mdio_device, ptr %22, i32 0, i32 1
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds %struct.mdio_device, ptr %22, i32 0, i32 6
  %36 = load i32, ptr %35, align 8
  %37 = tail call i32 @mdiobus_read(ptr noundef %34, i32 noundef %36, i32 noundef 4) #16
  %38 = load ptr, ptr %33, align 8
  %39 = load i32, ptr %35, align 8
  %40 = tail call i32 @mdiobus_read(ptr noundef %38, i32 noundef %39, i32 noundef 5) #16
  %41 = and i32 %40, %37
  %42 = and i32 %41, 1024
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %32
  %45 = and i32 %41, 2048
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %44
  %48 = and i32 %37, 1024
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = lshr i32 %40, 10
  %52 = and i32 %51, 1
  br label %53

53:                                               ; preds = %50, %47, %44, %32
  %54 = phi i32 [ 0, %44 ], [ 3, %32 ], [ 2, %47 ], [ %52, %50 ]
  %55 = and i32 %54, 2
  %56 = icmp eq i32 %55, 0
  %57 = select i1 %56, i32 0, i32 -65534
  %58 = and i32 %54, 1
  %59 = icmp eq i32 %58, 0
  %60 = and i32 %28, -16
  %61 = select i1 %59, i32 0, i32 15
  %62 = or i32 %61, %60
  br label %65

63:                                               ; preds = %10
  %64 = or i32 %28, 15
  br label %65

65:                                               ; preds = %63, %53
  %66 = phi i32 [ %57, %53 ], [ 0, %63 ]
  %67 = phi i32 [ %62, %53 ], [ %64, %63 ]
  %68 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %11) #16
  tail call fastcc void @smsc911x_mac_write(ptr noundef %2, i32 noundef 8, i32 noundef %66) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %11, i32 noundef %68) #16
  %69 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %23) #16
  %70 = load ptr, ptr %25, align 4
  %71 = getelementptr inbounds %struct.smsc911x_ops, ptr %70, i32 0, i32 1
  %72 = load ptr, ptr %71, align 4
  tail call void %72(ptr noundef %2, i32 noundef 172, i32 noundef %67) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %23, i32 noundef %69) #16
  %73 = load i32, ptr %5, align 4
  store i32 %73, ptr %7, align 8
  br label %74

74:                                               ; preds = %65, %1
  %75 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %76 = load volatile i32, ptr %75, align 4
  %77 = and i32 %76, 4
  %78 = lshr exact i32 %77, 2
  %79 = xor i32 %78, 1
  %80 = getelementptr i8, ptr %0, i32 1468
  %81 = load i32, ptr %80, align 4
  %82 = icmp eq i32 %81, %79
  br i1 %82, label %125, label %83

83:                                               ; preds = %74
  %84 = icmp eq i32 %77, 0
  br i1 %84, label %85, label %102

85:                                               ; preds = %83
  %86 = getelementptr i8, ptr %0, i32 1480
  %87 = load i32, ptr %86, align 8
  %88 = and i32 %87, 268435456
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %124, label %90

90:                                               ; preds = %85
  %91 = getelementptr i8, ptr %0, i32 1460
  %92 = load i32, ptr %91, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %124

94:                                               ; preds = %90
  %95 = getelementptr i8, ptr %0, i32 1476
  store i32 %87, ptr %95, align 4
  %96 = getelementptr i8, ptr %0, i32 1452
  %97 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %96) #16
  %98 = getelementptr i8, ptr %0, i32 1860
  %99 = load ptr, ptr %98, align 4
  %100 = getelementptr inbounds %struct.smsc911x_ops, ptr %99, i32 0, i32 1
  %101 = load ptr, ptr %100, align 4
  tail call void %101(ptr noundef %2, i32 noundef 136, i32 noundef %87) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %96, i32 noundef %97) #16
  br label %124

102:                                              ; preds = %83
  %103 = getelementptr i8, ptr %0, i32 1452
  %104 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %103) #16
  %105 = getelementptr i8, ptr %0, i32 1860
  %106 = load ptr, ptr %105, align 4
  %107 = load ptr, ptr %106, align 4
  %108 = tail call i32 %107(ptr noundef %2, i32 noundef 136) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %103, i32 noundef %104) #16
  %109 = getelementptr i8, ptr %0, i32 1476
  store i32 %108, ptr %109, align 4
  %110 = and i32 %108, 268435456
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %124, label %112

112:                                              ; preds = %102
  %113 = getelementptr i8, ptr %0, i32 1460
  %114 = load i32, ptr %113, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %124

116:                                              ; preds = %112
  %117 = getelementptr i8, ptr %0, i32 1480
  store i32 %108, ptr %117, align 8
  %118 = and i32 %108, -268501250
  %119 = or i32 %118, 65793
  store i32 %119, ptr %109, align 4
  %120 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %103) #16
  %121 = load ptr, ptr %105, align 4
  %122 = getelementptr inbounds %struct.smsc911x_ops, ptr %121, i32 0, i32 1
  %123 = load ptr, ptr %122, align 4
  tail call void %123(ptr noundef %2, i32 noundef 136, i32 noundef %119) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %103, i32 noundef %120) #16
  br label %124

124:                                              ; preds = %116, %112, %102, %94, %90, %85
  store i32 %79, ptr %80, align 4
  br label %125

125:                                              ; preds = %124, %74
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_attached_info(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_set_max_speed(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_support_asym_pause(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @smsc911x_mii_write(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i16 noundef zeroext %3) #2 {
  %5 = getelementptr inbounds %struct.mii_bus, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.mii_bus, ptr %0, i32 0, i32 9
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @__pm_runtime_resume(ptr noundef %8, i32 noundef 4) #16
  %10 = getelementptr inbounds %struct.smsc911x_data, ptr %6, i32 0, i32 4
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #16
  %12 = tail call fastcc i32 @smsc911x_mac_read(ptr noundef %6, i32 noundef 6)
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %31, !prof !42

15:                                               ; preds = %4
  %16 = zext i16 %3 to i32
  tail call fastcc void @smsc911x_mac_write(ptr noundef %6, i32 noundef 7, i32 noundef %16)
  %17 = shl i32 %1, 11
  %18 = and i32 %17, 63488
  %19 = shl i32 %2, 6
  %20 = and i32 %19, 1984
  %21 = or i32 %18, %20
  %22 = or i32 %21, 2
  tail call fastcc void @smsc911x_mac_write(ptr noundef %6, i32 noundef 6, i32 noundef %22)
  br label %26

23:                                               ; preds = %26
  %24 = add nuw nsw i32 %27, 1
  %25 = icmp eq i32 %24, 100
  br i1 %25, label %31, label %26

26:                                               ; preds = %23, %15
  %27 = phi i32 [ 0, %15 ], [ %24, %23 ]
  %28 = tail call fastcc i32 @smsc911x_mac_read(ptr noundef %6, i32 noundef 6)
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %23

31:                                               ; preds = %26, %23, %4
  %32 = phi i32 [ -5, %4 ], [ -5, %23 ], [ 0, %26 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %11) #16
  %33 = load ptr, ptr %7, align 4
  %34 = tail call i32 @__pm_runtime_idle(ptr noundef %33, i32 noundef 5) #16
  ret i32 %32
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @smsc911x_rx_multicast_update_workaround(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.smsc911x_data, ptr %0, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %2) #16
  %3 = tail call fastcc i32 @smsc911x_mac_read(ptr noundef %0, i32 noundef 1)
  %4 = tail call fastcc i32 @smsc911x_mac_read(ptr noundef %0, i32 noundef 1) #16
  %5 = getelementptr inbounds %struct.smsc911x_data, ptr %0, i32 0, i32 20
  %6 = load i32, ptr %5, align 4
  %7 = or i32 %6, %4
  %8 = getelementptr inbounds %struct.smsc911x_data, ptr %0, i32 0, i32 21
  %9 = load i32, ptr %8, align 8
  %10 = xor i32 %9, -1
  %11 = and i32 %7, %10
  tail call fastcc void @smsc911x_mac_write(ptr noundef %0, i32 noundef 1, i32 noundef %11) #16
  %12 = getelementptr inbounds %struct.smsc911x_data, ptr %0, i32 0, i32 22
  %13 = load i32, ptr %12, align 4
  tail call fastcc void @smsc911x_mac_write(ptr noundef %0, i32 noundef 4, i32 noundef %13) #16
  %14 = getelementptr inbounds %struct.smsc911x_data, ptr %0, i32 0, i32 23
  %15 = load i32, ptr %14, align 8
  tail call fastcc void @smsc911x_mac_write(ptr noundef %0, i32 noundef 5, i32 noundef %15) #16
  %16 = tail call fastcc i32 @smsc911x_mac_read(ptr noundef %0, i32 noundef 1)
  %17 = or i32 %16, 4
  tail call fastcc void @smsc911x_mac_write(ptr noundef %0, i32 noundef 1, i32 noundef %17)
  %18 = getelementptr inbounds %struct.smsc911x_data, ptr %0, i32 0, i32 19
  store i32 0, ptr %18, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !8
  %19 = load i16, ptr %2, align 4
  %20 = add i16 %19, 1
  store i16 %20, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !46
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @smsc911x_tx_update_txcounters(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr i8, ptr %0, i32 1408
  %3 = getelementptr i8, ptr %0, i32 1452
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #16
  %5 = getelementptr i8, ptr %0, i32 1860
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 %7(ptr noundef %2, i32 noundef 128) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #16
  %9 = and i32 %8, 16711680
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %71, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 36, i32 5
  %13 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 36, i32 1
  %14 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 36, i32 3
  %15 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 36, i32 9
  %16 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 36, i32 16
  %17 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 36, i32 17
  br label %18

18:                                               ; preds = %64, %11
  %19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #16
  %20 = load ptr, ptr %5, align 4
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 %21(ptr noundef %2, i32 noundef 72) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %19) #16
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %71, label %24

24:                                               ; preds = %18
  %25 = icmp sgt i32 %22, -1
  br i1 %25, label %26, label %64, !prof !42

26:                                               ; preds = %24
  %27 = and i32 %22, 32768
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %33, !prof !42

29:                                               ; preds = %26
  %30 = load i32, ptr %13, align 4
  %31 = add i32 %30, 1
  store i32 %31, ptr %13, align 4
  %32 = lshr i32 %22, 16
  br label %33

33:                                               ; preds = %29, %26
  %34 = phi ptr [ %14, %29 ], [ %12, %26 ]
  %35 = phi i32 [ %32, %29 ], [ 1, %26 ]
  %36 = load i32, ptr %34, align 4
  %37 = add i32 %36, %35
  store i32 %37, ptr %34, align 4
  %38 = and i32 %22, 256
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %45, label %40, !prof !42

40:                                               ; preds = %33
  %41 = load i32, ptr %15, align 4
  %42 = add i32 %41, 16
  store i32 %42, ptr %15, align 4
  %43 = load i32, ptr %16, align 8
  %44 = add i32 %43, 1
  store i32 %44, ptr %16, align 8
  br label %50

45:                                               ; preds = %33
  %46 = lshr i32 %22, 3
  %47 = and i32 %46, 15
  %48 = load i32, ptr %15, align 4
  %49 = add i32 %48, %47
  store i32 %49, ptr %15, align 4
  br label %50

50:                                               ; preds = %45, %40
  %51 = phi i32 [ %49, %45 ], [ %42, %40 ]
  %52 = and i32 %22, 2048
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %57, label %54, !prof !42

54:                                               ; preds = %50
  %55 = load i32, ptr %17, align 4
  %56 = add i32 %55, 1
  store i32 %56, ptr %17, align 4
  br label %57

57:                                               ; preds = %54, %50
  %58 = and i32 %22, 512
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %64, label %60, !prof !42

60:                                               ; preds = %57
  %61 = add i32 %51, 1
  store i32 %61, ptr %15, align 4
  %62 = load i32, ptr %16, align 8
  %63 = add i32 %62, 1
  store i32 %63, ptr %16, align 8
  br label %64

64:                                               ; preds = %60, %57, %24
  %65 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #16
  %66 = load ptr, ptr %5, align 4
  %67 = load ptr, ptr %66, align 4
  %68 = tail call i32 %67(ptr noundef %2, i32 noundef 128) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %65) #16
  %69 = and i32 %68, 16711680
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %18

71:                                               ; preds = %64, %18, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_stop(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_tstamp_tx(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @smsc911x_ethtool_getdrvinfo(ptr nocapture noundef readonly %0, ptr noundef %1) #10 {
  %3 = getelementptr inbounds %struct.ethtool_drvinfo, ptr %1, i32 0, i32 1
  %4 = tail call i32 @strlcpy(ptr noundef %3, ptr noundef nonnull @.str.1, i32 noundef 32) #16
  %5 = getelementptr inbounds %struct.ethtool_drvinfo, ptr %1, i32 0, i32 2
  %6 = tail call i32 @strlcpy(ptr noundef %5, ptr noundef nonnull @.str.2, i32 noundef 32) #16
  %7 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 111, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load ptr, ptr %8, align 4
  br label %14

14:                                               ; preds = %12, %2
  %15 = phi ptr [ %13, %12 ], [ %10, %2 ]
  %16 = getelementptr inbounds %struct.ethtool_drvinfo, ptr %1, i32 0, i32 4
  %17 = tail call i32 @strlcpy(ptr noundef %16, ptr noundef %15, i32 noundef 32) #16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @smsc911x_ethtool_getregslen(ptr nocapture noundef readnone %0) #11 {
  ret i32 280
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @smsc911x_ethtool_getregs(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 1408
  %5 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr i8, ptr %0, i32 1412
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ethtool_regs, ptr %1, i32 0, i32 1
  store i32 %8, ptr %9, align 4
  %10 = getelementptr i8, ptr %0, i32 1452
  %11 = getelementptr i8, ptr %0, i32 1860
  br label %52

12:                                               ; preds = %52
  %13 = getelementptr i8, ptr %0, i32 1448
  %14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %13) #16
  %15 = tail call fastcc i32 @smsc911x_mac_read(ptr noundef %4, i32 noundef 1)
  %16 = getelementptr i32, ptr %2, i32 26
  store i32 %15, ptr %16, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %13, i32 noundef %14) #16
  %17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %13) #16
  %18 = tail call fastcc i32 @smsc911x_mac_read(ptr noundef %4, i32 noundef 2)
  %19 = getelementptr i32, ptr %2, i32 27
  store i32 %18, ptr %19, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %13, i32 noundef %17) #16
  %20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %13) #16
  %21 = tail call fastcc i32 @smsc911x_mac_read(ptr noundef %4, i32 noundef 3)
  %22 = getelementptr i32, ptr %2, i32 28
  store i32 %21, ptr %22, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %13, i32 noundef %20) #16
  %23 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %13) #16
  %24 = tail call fastcc i32 @smsc911x_mac_read(ptr noundef %4, i32 noundef 4)
  %25 = getelementptr i32, ptr %2, i32 29
  store i32 %24, ptr %25, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %13, i32 noundef %23) #16
  %26 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %13) #16
  %27 = tail call fastcc i32 @smsc911x_mac_read(ptr noundef %4, i32 noundef 5)
  %28 = getelementptr i32, ptr %2, i32 30
  store i32 %27, ptr %28, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %13, i32 noundef %26) #16
  %29 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %13) #16
  %30 = tail call fastcc i32 @smsc911x_mac_read(ptr noundef %4, i32 noundef 6)
  %31 = getelementptr i32, ptr %2, i32 31
  store i32 %30, ptr %31, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %13, i32 noundef %29) #16
  %32 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %13) #16
  %33 = tail call fastcc i32 @smsc911x_mac_read(ptr noundef %4, i32 noundef 7)
  %34 = getelementptr i32, ptr %2, i32 32
  store i32 %33, ptr %34, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %13, i32 noundef %32) #16
  %35 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %13) #16
  %36 = tail call fastcc i32 @smsc911x_mac_read(ptr noundef %4, i32 noundef 8)
  %37 = getelementptr i32, ptr %2, i32 33
  store i32 %36, ptr %37, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %13, i32 noundef %35) #16
  %38 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %13) #16
  %39 = tail call fastcc i32 @smsc911x_mac_read(ptr noundef %4, i32 noundef 9)
  %40 = getelementptr i32, ptr %2, i32 34
  store i32 %39, ptr %40, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %13, i32 noundef %38) #16
  %41 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %13) #16
  %42 = tail call fastcc i32 @smsc911x_mac_read(ptr noundef %4, i32 noundef 10)
  %43 = getelementptr i32, ptr %2, i32 35
  store i32 %42, ptr %43, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %13, i32 noundef %41) #16
  %44 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %13) #16
  %45 = tail call fastcc i32 @smsc911x_mac_read(ptr noundef %4, i32 noundef 11)
  %46 = getelementptr i32, ptr %2, i32 36
  store i32 %45, ptr %46, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %13, i32 noundef %44) #16
  %47 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %13) #16
  %48 = tail call fastcc i32 @smsc911x_mac_read(ptr noundef %4, i32 noundef 12)
  %49 = getelementptr i32, ptr %2, i32 37
  store i32 %48, ptr %49, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %13, i32 noundef %47) #16
  %50 = getelementptr inbounds %struct.mdio_device, ptr %6, i32 0, i32 1
  %51 = getelementptr inbounds %struct.mdio_device, ptr %6, i32 0, i32 6
  br label %63

52:                                               ; preds = %52, %3
  %53 = phi i32 [ 0, %3 ], [ %59, %52 ]
  %54 = phi i32 [ 80, %3 ], [ %61, %52 ]
  %55 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #16
  %56 = load ptr, ptr %11, align 4
  %57 = load ptr, ptr %56, align 4
  %58 = tail call i32 %57(ptr noundef %4, i32 noundef %54) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %55) #16
  %59 = add nuw nsw i32 %53, 1
  %60 = getelementptr i32, ptr %2, i32 %53
  store i32 %58, ptr %60, align 4
  %61 = add nuw nsw i32 %54, 4
  %62 = icmp eq i32 %59, 26
  br i1 %62, label %12, label %52

63:                                               ; preds = %63, %12
  %64 = phi i32 [ 38, %12 ], [ %69, %63 ]
  %65 = phi i32 [ 0, %12 ], [ %71, %63 ]
  %66 = load ptr, ptr %50, align 8
  %67 = load i32, ptr %51, align 8
  %68 = tail call i32 @smsc911x_mii_read(ptr noundef %66, i32 noundef %67, i32 noundef %65)
  %69 = add nuw nsw i32 %64, 1
  %70 = getelementptr i32, ptr %2, i32 %64
  store i32 %68, ptr %70, align 4
  %71 = add nuw nsw i32 %65, 1
  %72 = icmp eq i32 %71, 32
  br i1 %72, label %73, label %63

73:                                               ; preds = %63
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @smsc911x_ethtool_getmsglevel(ptr nocapture noundef readonly %0) #12 {
  %2 = getelementptr i8, ptr %0, i32 1472
  %3 = load i32, ptr %2, align 8
  ret i32 %3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @smsc911x_ethtool_setmsglevel(ptr nocapture noundef writeonly %0, i32 noundef %1) #13 {
  %3 = getelementptr i8, ptr %0, i32 1472
  store i32 %1, ptr %3, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_nway_reset(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @smsc911x_ethtool_get_eeprom_len(ptr nocapture noundef readnone %0) #11 {
  ret i32 128
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @smsc911x_ethtool_get_eeprom(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = alloca [128 x i8], align 1
  %5 = getelementptr i8, ptr %0, i32 1408
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %4, i8 0, i32 128, i1 false), !annotation !17
  %6 = getelementptr i8, ptr %0, i32 1452
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #16
  %8 = getelementptr i8, ptr %0, i32 1860
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 %10(ptr noundef %5, i32 noundef 136) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #16
  %12 = and i32 %11, -7340033
  %13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #16
  %14 = load ptr, ptr %8, align 4
  %15 = getelementptr inbounds %struct.smsc911x_ops, ptr %14, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  tail call void %16(ptr noundef %5, i32 noundef 136, i32 noundef %12) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %13) #16
  tail call void @msleep(i32 noundef 1) #16
  %17 = getelementptr inbounds %struct.ethtool_eeprom, ptr %1, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = tail call i32 @llvm.umin.i32(i32 %18, i32 128)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %37, label %21

21:                                               ; preds = %34, %3
  %22 = phi i32 [ %35, %34 ], [ 0, %3 ]
  %23 = tail call fastcc i32 @smsc911x_eeprom_send_cmd(ptr noundef %5, i32 noundef %22) #16
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = icmp slt i32 %23, 0
  br i1 %26, label %41, label %34

27:                                               ; preds = %21
  %28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #16
  %29 = load ptr, ptr %8, align 4
  %30 = load ptr, ptr %29, align 4
  %31 = tail call i32 %30(ptr noundef %5, i32 noundef 180) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %28) #16
  %32 = trunc i32 %31 to i8
  %33 = getelementptr i8, ptr %4, i32 %22
  store i8 %32, ptr %33, align 1
  br label %34

34:                                               ; preds = %27, %25
  %35 = add nuw nsw i32 %22, 1
  %36 = icmp eq i32 %35, %19
  br i1 %36, label %37, label %21

37:                                               ; preds = %34, %3
  %38 = getelementptr inbounds %struct.ethtool_eeprom, ptr %1, i32 0, i32 2
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr [128 x i8], ptr %4, i32 0, i32 %39
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %2, ptr align 1 %40, i32 %19, i1 false)
  br label %41

41:                                               ; preds = %37, %25
  %42 = phi i32 [ %19, %37 ], [ 0, %25 ]
  %43 = phi i32 [ 0, %37 ], [ %23, %25 ]
  store i32 %42, ptr %17, align 4
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #16
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @smsc911x_ethtool_set_eeprom(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 1408
  %5 = getelementptr i8, ptr %0, i32 1452
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #16
  %7 = getelementptr i8, ptr %0, i32 1860
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 %9(ptr noundef %4, i32 noundef 136) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #16
  %11 = and i32 %10, -7340033
  %12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #16
  %13 = load ptr, ptr %7, align 4
  %14 = getelementptr inbounds %struct.smsc911x_ops, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  tail call void %15(ptr noundef %4, i32 noundef 136, i32 noundef %11) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %12) #16
  tail call void @msleep(i32 noundef 1) #16
  %16 = tail call fastcc i32 @smsc911x_eeprom_send_cmd(ptr noundef %4, i32 noundef 536870912)
  %17 = getelementptr inbounds %struct.ethtool_eeprom, ptr %1, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = load i8, ptr %2, align 1
  %20 = and i32 %18, 255
  %21 = or i32 %20, 1342177280
  %22 = tail call fastcc i32 @smsc911x_eeprom_send_cmd(ptr noundef %4, i32 noundef %21) #16
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %3
  %25 = or i32 %20, 805306368
  %26 = zext i8 %19 to i32
  %27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #16
  %28 = load ptr, ptr %7, align 4
  %29 = getelementptr inbounds %struct.smsc911x_ops, ptr %28, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  tail call void %30(ptr noundef %4, i32 noundef 180, i32 noundef %26) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %27) #16
  %31 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #16
  %32 = load ptr, ptr %7, align 4
  %33 = load ptr, ptr %32, align 4
  %34 = tail call i32 %33(ptr noundef %4, i32 noundef 100) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %31) #16
  %35 = tail call fastcc i32 @smsc911x_eeprom_send_cmd(ptr noundef %4, i32 noundef %25) #16
  br label %36

36:                                               ; preds = %24, %3
  %37 = phi i32 [ %22, %3 ], [ %35, %24 ]
  %38 = tail call fastcc i32 @smsc911x_eeprom_send_cmd(ptr noundef %4, i32 noundef 268435456)
  %39 = getelementptr inbounds %struct.ethtool_eeprom, ptr %1, i32 0, i32 3
  store i32 1, ptr %39, align 4
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_ts_info(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_get_link_ksettings(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_set_link_ksettings(ptr noundef, ptr noundef) #0

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @smsc911x_mii_read(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.mii_bus, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.mii_bus, ptr %0, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #16
  %9 = getelementptr inbounds %struct.smsc911x_data, ptr %5, i32 0, i32 4
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #16
  %11 = tail call fastcc i32 @smsc911x_mac_read(ptr noundef %5, i32 noundef 6)
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %30, !prof !42

14:                                               ; preds = %3
  %15 = shl i32 %1, 11
  %16 = and i32 %15, 63488
  %17 = shl i32 %2, 6
  %18 = and i32 %17, 1984
  %19 = or i32 %18, %16
  tail call fastcc void @smsc911x_mac_write(ptr noundef %5, i32 noundef 6, i32 noundef %19)
  br label %23

20:                                               ; preds = %23
  %21 = add nuw nsw i32 %24, 1
  %22 = icmp eq i32 %21, 100
  br i1 %22, label %30, label %23

23:                                               ; preds = %20, %14
  %24 = phi i32 [ 0, %14 ], [ %21, %20 ]
  %25 = tail call fastcc i32 @smsc911x_mac_read(ptr noundef %5, i32 noundef 6)
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %20

28:                                               ; preds = %23
  %29 = tail call fastcc i32 @smsc911x_mac_read(ptr noundef %5, i32 noundef 7)
  br label %30

30:                                               ; preds = %28, %20, %3
  %31 = phi i32 [ %29, %28 ], [ -5, %3 ], [ -5, %20 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #16
  %32 = load ptr, ptr %6, align 4
  %33 = tail call i32 @__pm_runtime_idle(ptr noundef %32, i32 noundef 5) #16
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @smsc911x_eeprom_send_cmd(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.smsc911x_data, ptr %0, i32 0, i32 5
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #16
  %5 = getelementptr inbounds %struct.smsc911x_data, ptr %0, i32 0, i32 24
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 %7(ptr noundef %0, i32 noundef 176) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #16
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %10, label %30

10:                                               ; preds = %2
  %11 = or i32 %1, -2147483648
  %12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #16
  %13 = load ptr, ptr %5, align 4
  %14 = getelementptr inbounds %struct.smsc911x_ops, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  tail call void %15(ptr noundef %0, i32 noundef 176, i32 noundef %11) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %12) #16
  br label %16

16:                                               ; preds = %23, %10
  %17 = phi i32 [ 100, %10 ], [ %24, %23 ]
  tail call void @msleep(i32 noundef 1) #16
  %18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #16
  %19 = load ptr, ptr %5, align 4
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 %20(ptr noundef %0, i32 noundef 176) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %18) #16
  %22 = icmp sgt i32 %21, -1
  br i1 %22, label %26, label %23

23:                                               ; preds = %16
  %24 = add nsw i32 %17, -1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %16

26:                                               ; preds = %16
  %27 = and i32 %21, 512
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %28, i32 0, i32 -22
  br label %30

30:                                               ; preds = %26, %23, %2
  %31 = phi i32 [ -16, %2 ], [ %29, %26 ], [ -11, %23 ]
  ret i32 %31
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mdiobus_register(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_free(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdiobus_alloc_size(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @regulator_bulk_free(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_unregister(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @smsc911x_suspend(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 87
  %10 = load ptr, ptr %9, align 64
  %11 = getelementptr inbounds %struct.netdev_queue, ptr %10, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %11) #16
  tail call void @netif_device_detach(ptr noundef %3) #16
  br label %12

12:                                               ; preds = %8, %1
  %13 = getelementptr i8, ptr %3, i32 1408
  %14 = getelementptr i8, ptr %3, i32 1452
  %15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %14) #16
  %16 = getelementptr i8, ptr %3, i32 1860
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.smsc911x_ops, ptr %17, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  tail call void %19(ptr noundef %13, i32 noundef 132, i32 noundef 4866) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %14, i32 noundef %15) #16
  tail call void @__pm_runtime_disable(ptr noundef %0, i1 noundef zeroext true) #16
  %20 = tail call i32 @__pm_runtime_set_status(ptr noundef %0, i32 noundef 2) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @smsc911x_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 1408
  tail call void @pm_runtime_enable(ptr noundef %0) #16
  %5 = tail call i32 @__pm_runtime_resume(ptr noundef %0, i32 noundef 0) #16
  %6 = getelementptr i8, ptr %3, i32 1452
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #16
  %8 = getelementptr i8, ptr %3, i32 1860
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.smsc911x_ops, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %11(ptr noundef %4, i32 noundef 100, i32 noundef 0) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #16
  %12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #16
  %13 = load ptr, ptr %8, align 4
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 %14(ptr noundef %4, i32 noundef 132) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %12) #16
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %22, %1
  %19 = phi i32 [ %20, %22 ], [ 100, %1 ]
  %20 = add nsw i32 %19, -1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %39, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748000) #16
  %24 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #16
  %25 = load ptr, ptr %8, align 4
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 %26(ptr noundef %4, i32 noundef 132) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %24) #16
  %28 = and i32 %27, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %18, label %30

30:                                               ; preds = %22, %1
  %31 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %32 = load volatile i32, ptr %31, align 4
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %30
  tail call void @netif_device_attach(ptr noundef %3) #16
  %36 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 87
  %37 = load ptr, ptr %36, align 64
  %38 = getelementptr inbounds %struct.netdev_queue, ptr %37, i32 0, i32 12
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %38) #16
  br label %39

39:                                               ; preds = %35, %30, %18
  %40 = phi i32 [ 0, %35 ], [ 0, %30 ], [ -5, %18 ]
  ret i32 %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

attributes #0 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { nounwind }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind readonly willreturn }
attributes #19 = { nounwind readnone }

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
!8 = !{i64 2148955165}
!9 = !{i64 2148950989}
!10 = !{i64 2148951064, i64 2148951091, i64 2148951138, i64 2148951160, i64 2148951188, i64 2148951208}
!11 = !{i64 412097}
!12 = !{i64 2148979309}
!13 = !{!"branch_weights", i32 1, i32 2000}
!14 = !{i64 2156353001, i64 2156353503, i64 2156353038, i64 2156353094, i64 2156353128, i64 2156353152, i64 2156353193, i64 2156353214, i64 2156353242, i64 2156353276}
!15 = !{i64 2156354059, i64 2156354561, i64 2156354096, i64 2156354152, i64 2156354186, i64 2156354210, i64 2156354251, i64 2156354272, i64 2156354300, i64 2156354334}
!16 = !{i64 2156355133, i64 2156355635, i64 2156355170, i64 2156355226, i64 2156355260, i64 2156355284, i64 2156355325, i64 2156355346, i64 2156355374, i64 2156355408}
!17 = !{!"auto-init"}
!18 = !{i64 4900959}
!19 = !{i64 2156265397}
!20 = !{i64 4900121}
!21 = !{i64 2156265821}
!22 = !{i64 2156266173}
!23 = !{i64 2156266412, i64 2156266913, i64 2156266449, i64 2156266505, i64 2156266539, i64 2156266563, i64 2156266604, i64 2156266625, i64 2156266653, i64 2156266687}
!24 = !{i64 2156274960}
!25 = !{i64 4900541}
!26 = !{i64 2156275371}
!27 = !{i64 4899921}
!28 = !{i64 2156275728}
!29 = !{i64 2156276136, i64 2156276637, i64 2156276173, i64 2156276229, i64 2156276263, i64 2156276287, i64 2156276328, i64 2156276349, i64 2156276377, i64 2156276411}
!30 = !{i64 2156284928, i64 2156285429, i64 2156284965, i64 2156285021, i64 2156285055, i64 2156285079, i64 2156285120, i64 2156285141, i64 2156285169, i64 2156285203}
!31 = !{i64 2156281192, i64 2156281693, i64 2156281229, i64 2156281285, i64 2156281319, i64 2156281343, i64 2156281384, i64 2156281405, i64 2156281433, i64 2156281467}
!32 = !{i64 2156267881}
!33 = !{i64 2156268455}
!34 = !{i64 2156273022}
!35 = !{i64 2156273261, i64 2156273762, i64 2156273298, i64 2156273354, i64 2156273388, i64 2156273412, i64 2156273453, i64 2156273474, i64 2156273502, i64 2156273536}
!36 = !{i64 2156277382}
!37 = !{i64 2156277908}
!38 = !{i64 2156278384}
!39 = !{i64 2156278827, i64 2156279328, i64 2156278864, i64 2156278920, i64 2156278954, i64 2156278978, i64 2156279019, i64 2156279040, i64 2156279068, i64 2156279102}
!40 = !{i64 2156286838, i64 2156287339, i64 2156286875, i64 2156286931, i64 2156286965, i64 2156286989, i64 2156287030, i64 2156287051, i64 2156287079, i64 2156287113}
!41 = !{i64 2156283070, i64 2156283571, i64 2156283107, i64 2156283163, i64 2156283197, i64 2156283221, i64 2156283262, i64 2156283283, i64 2156283311, i64 2156283345}
!42 = !{!"branch_weights", i32 2000, i32 1}
!43 = !{i64 2156332619}
!44 = !{i64 264364}
!45 = !{i64 2156326747}
!46 = !{i64 2148978168}
