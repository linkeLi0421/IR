; ModuleID = '/llk/IR/drivers/net/ethernet/asix/ax88796c_main.c_pt.bc'
source_filename = "../drivers/net/ethernet/asix/ax88796c_main.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.90 }
%union.anon.90 = type { ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.lock_class_key = type {}
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.95, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.112, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.95 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.ref_tracker_dir = type {}
%struct.possible_net_t = type {}
%union.anon.112 = type { ptr }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.ax88796c_pcpu_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync, i32, i32, i32, i32 }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.ax88796c_device = type { ptr, ptr, ptr, %struct.work_struct, %struct.mutex, %struct.sk_buff_head, %struct.axspi_data, ptr, ptr, i32, i16, [8 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sk_buff_head = type { %union.anon.113, i32, %struct.spinlock }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type { ptr, ptr }
%struct.axspi_data = type { ptr, %struct.spi_message, [2 x %struct.spi_transfer], [6 x i8], [6 x i8], i8 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
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
%struct.rx_header = type { i16, i16, i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.netdev_queue = type { ptr, %struct.netdevice_tracker, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, [4 x i8], %struct.spinlock, i32, i32, i32, [48 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [52 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [24 x i8] }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@__param_str_msg_enable = internal constant [11 x i8] c"msg_enable\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@msg_enable = internal global i32 198, align 4
@__param_msg_enable = internal constant %struct.kernel_param { ptr @__param_str_msg_enable, ptr @__this_module, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.90 { ptr @msg_enable } }, section "__param", align 4
@__UNIQUE_ID_msg_enabletype332 = internal constant [24 x i8] c"parmtype=msg_enable:int\00", section ".modinfo", align 1
@__UNIQUE_ID_msg_enable333 = internal constant [64 x i8] c"parm=msg_enable:Message mask (see linux/netdevice.h for bitmap)\00", section ".modinfo", align 1
@ax88796c_dt_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"asix,ax88796c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@asix_id = internal constant [2 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"ax88796c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id zeroinitializer], align 4
@__UNIQUE_ID_author338 = internal constant [49 x i8] c"author=\C5\81ukasz Stelmach <l.stelmach@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description339 = internal constant [46 x i8] c"description=ASIX AX88796C SPI Ethernet driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license340 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@ax88796c_no_regs_mask = dso_local global [8 x i32] zeroinitializer, align 4
@.str = private unnamed_addr constant [63 x i8] c"\013ax88796c: Invalid bitmap description, masking all registers\0A\00", align 1
@ax88796c_spi_driver = internal global %struct.spi_driver { ptr @asix_id, ptr @ax88796c_probe, ptr @ax88796c_remove, ptr null, %struct.device_driver { ptr @.str.2, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ax88796c_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"80018001,e1918001,8001a001,fc0d0000\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"ax88796c\00", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@ax88796c_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"&ax_local->spi_lock\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"ax88976c-mdiobus\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"ax88796c-%s.%u\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Could not register MDIO bus\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"AX88796C-SPI Configuration:\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"    Compression : %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"ON\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"OFF\00", align 1
@ax88796c_netdev_ops = internal constant %struct.net_device_ops { ptr null, ptr null, ptr @ax88796c_open, ptr @ax88796c_close, ptr @ax88796c_start_xmit, ptr null, ptr null, ptr null, ptr null, ptr @eth_mac_addr, ptr null, ptr null, ptr @ax88796c_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ax88796c_get_stats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ax88796c_set_features, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@ax88796c_ethtool_ops = external dso_local constant %struct.ethtool_ops, align 4
@.str.11 = private unnamed_addr constant [21 x i8] c"spi read failed: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [48 x i8] c"irq %d, MAC addr %02X:%02X:%02X:%02X:%02X:%02X\0A\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"%s:%02x\00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"failed to register a network device\0A\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"%s %s registered\0A\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"unable to get IRQ %d (errno=%d).\0A\00", align 1
@.str.17 = private unnamed_addr constant [40 x i8] c"\013ax88796c: irq %d for unknown device.\0A\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.18 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.19 = private unnamed_addr constant [32 x i8] c"Could not get 'reset' GPIO: %ld\00", align 1
@.str.20 = private unnamed_addr constant [35 x i8] c"timeout waiting for reload eeprom\0A\00", align 1
@.str.21 = private unnamed_addr constant [35 x i8] c"MAC address read from device tree\0A\00", align 1
@.str.22 = private unnamed_addr constant [33 x i8] c"MAC address read from ASIX chip\0A\00", align 1
@.str.23 = private unnamed_addr constant [24 x i8] c"Use random MAC address\0A\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"Rx Bridge is not idle\0A\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"Header error\0A\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"CRC or MII error\0A\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"%s:     \00", align 1
@.str.28 = private unnamed_addr constant [38 x i8] c"RX data, total len %d, packet len %d\0A\00", align 1
@.str.29 = private unnamed_addr constant [25 x i8] c"  Dump RX packet header:\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"\016\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"  Dump RX packet:\00", align 1
@.str.33 = private unnamed_addr constant [26 x i8] c"< rx, len %zu, type 0x%x\0A\00", align 1
@.str.34 = private unnamed_addr constant [20 x i8] c"netif_rx status %d\0A\00", align 1
@.str.35 = private unnamed_addr constant [44 x i8] c"TX FIFO error, re-initialize the TX bridge\0A\00", align 1
@ax88796c_tx_cmd_buf = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str.36 = private unnamed_addr constant [40 x i8] c"TX packet len %d, total len %d, seq %d\0A\00", align 1
@.str.37 = private unnamed_addr constant [15 x i8] c"  SPI Header:\0A\00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c"  TX SOP:\0A\00", align 1
@.str.39 = private unnamed_addr constant [14 x i8] c"  TX packet:\0A\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"  TX EOP:\0A\00", align 1
@.str.41 = private unnamed_addr constant [31 x i8] c"removing network device %s %s\0A\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_author338, ptr @__UNIQUE_ID_description339, ptr @__UNIQUE_ID_license340, ptr @__UNIQUE_ID_msg_enable333, ptr @__UNIQUE_ID_msg_enabletype332, ptr @__param_msg_enable], section "llvm.metadata"

@__mod_of__ax88796c_dt_ids_device_table = dso_local alias [2 x %struct.of_device_id], ptr @ax88796c_dt_ids
@__mod_spi__asix_id_device_table = dso_local alias [2 x %struct.spi_device_id], ptr @asix_id

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) @ax88796c_no_regs_mask, i8 0, i32 32, i1 false) #11
  %1 = tail call i32 @bitmap_parse(ptr noundef nonnull @.str.1, i32 noundef 35, ptr noundef nonnull @ax88796c_no_regs_mask, i32 noundef 256) #11
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) @ax88796c_no_regs_mask, i8 -1, i32 32, i1 false) #11
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #12
  br label %5

5:                                                ; preds = %3, %0
  %6 = tail call i32 @__spi_register_driver(ptr noundef nonnull @__this_module, ptr noundef nonnull @ax88796c_spi_driver) #11
  ret i32 %6
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @ax88796c_spi_driver, i32 0, i32 4)) #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ax88796c_probe(ptr noundef %0) #5 {
  %2 = alloca [6 x i8], align 1
  %3 = alloca [6 x i8], align 4
  %4 = alloca [64 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %4, i8 0, i32 64, i1 false), !annotation !9
  %5 = tail call ptr @devm_alloc_etherdev_mqs(ptr noundef %0, i32 noundef 388, i32 noundef 1, i32 noundef 1) #11
  %6 = icmp eq ptr %5, null
  br i1 %6, label %273, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 111, i32 1
  store ptr %0, ptr %8, align 4
  %9 = getelementptr i8, ptr %5, i32 1408
  %10 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  store ptr %9, ptr %10, align 8
  store ptr %0, ptr %9, align 4
  %11 = getelementptr i8, ptr %5, i32 1472
  store ptr %0, ptr %11, align 4
  %12 = tail call ptr @__devm_alloc_percpu(ptr noundef %0, i32 noundef 56, i32 noundef 8) #11
  %13 = icmp eq ptr %12, null
  br i1 %13, label %29, label %14

14:                                               ; preds = %7
  %15 = load i32, ptr @nr_cpu_ids, align 4
  %16 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #13
  %17 = icmp ult i32 %16, %15
  br i1 %17, label %18, label %31

18:                                               ; preds = %14
  %19 = ptrtoint ptr %12 to i32
  br label %20

20:                                               ; preds = %20, %18
  %21 = phi i32 [ %16, %18 ], [ %27, %20 ]
  %22 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %21
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, %19
  %25 = inttoptr i32 %24 to ptr
  %26 = getelementptr inbounds %struct.ax88796c_pcpu_stats, ptr %25, i32 0, i32 4
  store i32 0, ptr %26, align 4
  %27 = tail call i32 @cpumask_next(i32 noundef %21, ptr noundef nonnull @__cpu_possible_mask) #13
  %28 = icmp ult i32 %27, %15
  br i1 %28, label %20, label %31

29:                                               ; preds = %7
  %30 = getelementptr i8, ptr %5, i32 1416
  store ptr null, ptr %30, align 4
  br label %273

31:                                               ; preds = %20, %14
  %32 = getelementptr i8, ptr %5, i32 1416
  store ptr %12, ptr %32, align 4
  %33 = getelementptr i8, ptr %5, i32 1412
  store ptr %5, ptr %33, align 4
  %34 = getelementptr i8, ptr %5, i32 1788
  %35 = load i32, ptr @msg_enable, align 4
  %36 = getelementptr i8, ptr %5, i32 1748
  store i32 %35, ptr %36, align 4
  %37 = getelementptr i8, ptr %5, i32 1436
  tail call void @__mutex_init(ptr noundef %37, ptr noundef nonnull @.str.3, ptr noundef nonnull @ax88796c_probe.__key) #11
  %38 = tail call ptr @devm_mdiobus_alloc_size(ptr noundef %0, i32 noundef 0) #11
  %39 = getelementptr i8, ptr %5, i32 1740
  store ptr %38, ptr %39, align 4
  %40 = icmp eq ptr %38, null
  br i1 %40, label %273, label %41

41:                                               ; preds = %31
  %42 = getelementptr inbounds %struct.mii_bus, ptr %38, i32 0, i32 3
  store ptr %9, ptr %42, align 8
  %43 = load ptr, ptr %39, align 4
  %44 = getelementptr inbounds %struct.mii_bus, ptr %43, i32 0, i32 4
  store ptr @ax88796c_mdio_read, ptr %44, align 4
  %45 = load ptr, ptr %39, align 4
  %46 = getelementptr inbounds %struct.mii_bus, ptr %45, i32 0, i32 5
  store ptr @ax88796c_mdio_write, ptr %46, align 8
  %47 = load ptr, ptr %39, align 4
  %48 = getelementptr inbounds %struct.mii_bus, ptr %47, i32 0, i32 1
  store ptr @.str.4, ptr %48, align 4
  %49 = load ptr, ptr %39, align 4
  %50 = getelementptr inbounds %struct.mii_bus, ptr %49, i32 0, i32 13
  store i32 -65537, ptr %50, align 8
  %51 = load ptr, ptr %39, align 4
  %52 = getelementptr inbounds %struct.mii_bus, ptr %51, i32 0, i32 9
  store ptr %0, ptr %52, align 4
  %53 = load ptr, ptr %39, align 4
  %54 = getelementptr inbounds %struct.mii_bus, ptr %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %41
  %59 = load ptr, ptr %0, align 4
  br label %60

60:                                               ; preds = %58, %41
  %61 = phi ptr [ %59, %58 ], [ %56, %41 ]
  %62 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 4
  %63 = load i8, ptr %62, align 4
  %64 = zext i8 %63 to i32
  %65 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %54, i32 noundef 61, ptr noundef nonnull @.str.5, ptr noundef %61, i32 noundef %64)
  %66 = load ptr, ptr %39, align 4
  %67 = tail call i32 @__devm_mdiobus_register(ptr noundef %0, ptr noundef %66, ptr noundef nonnull @__this_module) #11
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %60
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.6) #12
  br label %273

70:                                               ; preds = %60
  %71 = load i32, ptr %36, align 4
  %72 = and i32 %71, 2
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %70
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.7) #12
  %75 = load i32, ptr %34, align 4
  %76 = and i32 %75, 1
  %77 = icmp eq i32 %76, 0
  %78 = select i1 %77, ptr @.str.10, ptr @.str.9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef nonnull %78) #12
  br label %79

79:                                               ; preds = %74, %70
  %80 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 8
  %81 = load i32, ptr %80, align 4
  %82 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 59
  store i32 %81, ptr %82, align 8
  %83 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 16
  store ptr @ax88796c_netdev_ops, ptr %83, align 8
  %84 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 42
  store ptr @ax88796c_ethtool_ops, ptr %84, align 8
  %85 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 24
  %86 = load i64, ptr %85, align 8
  %87 = or i64 %86, 1099511627784
  store i64 %87, ptr %85, align 8
  %88 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 23
  %89 = load i64, ptr %88, align 16
  %90 = or i64 %89, 1099511627784
  store i64 %90, ptr %88, align 16
  %91 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 21
  store i16 8, ptr %91, align 8
  %92 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 22
  store i16 4, ptr %92, align 2
  tail call void @mutex_lock(ptr noundef %37) #11
  %93 = load ptr, ptr %9, align 4
  %94 = tail call ptr @gpiod_get(ptr noundef %93, ptr noundef nonnull @.str.18, i32 noundef 0) #11
  %95 = icmp ugt ptr %94, inttoptr (i32 -4096 to ptr)
  br i1 %95, label %96, label %98

96:                                               ; preds = %79
  %97 = ptrtoint ptr %94 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %93, ptr noundef nonnull @.str.19, i32 noundef %97) #12
  br label %101

98:                                               ; preds = %79
  %99 = tail call i32 @gpiod_direction_output(ptr noundef %94, i32 noundef 1) #11
  tail call void @msleep(i32 noundef 100) #11
  %100 = tail call i32 @gpiod_direction_output(ptr noundef %94, i32 noundef 0) #11
  tail call void @gpiod_put(ptr noundef %94) #11
  tail call void @msleep(i32 noundef 20) #11
  br label %101

101:                                              ; preds = %98, %96
  %102 = tail call fastcc i32 @ax88796c_soft_reset(ptr noundef %9)
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  tail call void @mutex_unlock(ptr noundef %37) #11
  br label %273

105:                                              ; preds = %101
  %106 = tail call zeroext i16 @axspi_read_reg(ptr noundef %11, i8 noundef zeroext 82) #11
  %107 = zext i16 %106 to i32
  %108 = and i32 %107, 15
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %105
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %107) #12
  tail call void @mutex_unlock(ptr noundef %37) #11
  br label %273

111:                                              ; preds = %105
  %112 = tail call i32 @axspi_write_reg(ptr noundef %11, i8 noundef zeroext 120, i16 noundef zeroext 16384) #11
  %113 = tail call i32 @jiffies_to_usecs(i32 noundef 0) #11
  %114 = zext i32 %113 to i64
  %115 = tail call i64 @ktime_get() #11
  %116 = mul nuw nsw i64 %114, 1000
  %117 = add i64 %116, %115
  %118 = tail call zeroext i16 @axspi_read_reg(ptr noundef %11, i8 noundef zeroext 0) #11
  %119 = zext i16 %118 to i32
  %120 = and i32 %119, 128
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %136

122:                                              ; preds = %111
  %123 = icmp eq i32 %113, 0
  br label %124

124:                                              ; preds = %131, %122
  br i1 %123, label %131, label %125

125:                                              ; preds = %124
  %126 = tail call i64 @ktime_get() #11
  %127 = icmp sgt i64 %126, %117
  br i1 %127, label %128, label %131

128:                                              ; preds = %125
  %129 = tail call zeroext i16 @axspi_read_reg(ptr noundef %11, i8 noundef zeroext 0) #11
  %130 = zext i16 %129 to i32
  br label %136

131:                                              ; preds = %125, %124
  %132 = tail call zeroext i16 @axspi_read_reg(ptr noundef %11, i8 noundef zeroext 0) #11
  %133 = zext i16 %132 to i32
  %134 = and i32 %133, 128
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %124, label %136

136:                                              ; preds = %131, %128, %111
  %137 = phi i32 [ %130, %128 ], [ %119, %111 ], [ %133, %131 ]
  %138 = and i32 %137, 128
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %136
  %141 = load ptr, ptr %9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %141, ptr noundef nonnull @.str.20) #12
  br label %142

142:                                              ; preds = %140, %136
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #11
  %143 = load ptr, ptr %9, align 4
  %144 = tail call i32 @platform_get_ethdev_address(ptr noundef %143, ptr noundef %5) #11
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %164

146:                                              ; preds = %142
  %147 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 72
  %148 = load ptr, ptr %147, align 32
  %149 = load i32, ptr %148, align 4
  %150 = and i32 %149, 1
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %164

152:                                              ; preds = %146
  %153 = getelementptr i8, ptr %148, i32 4
  %154 = load i16, ptr %153, align 2
  %155 = zext i16 %154 to i32
  %156 = or i32 %149, %155
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %164, label %158

158:                                              ; preds = %152
  %159 = load i32, ptr %36, align 4
  %160 = and i32 %159, 2
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %207, label %162

162:                                              ; preds = %158
  %163 = load ptr, ptr %9, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %163, ptr noundef nonnull @.str.21) #12
  br label %207

164:                                              ; preds = %152, %146, %142
  %165 = tail call zeroext i16 @axspi_read_reg(ptr noundef %11, i8 noundef zeroext 98) #11
  %166 = trunc i16 %165 to i8
  %167 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 5
  store i8 %166, ptr %167, align 1
  %168 = lshr i16 %165, 8
  %169 = trunc i16 %168 to i8
  %170 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 4
  store i8 %169, ptr %170, align 4
  %171 = tail call zeroext i16 @axspi_read_reg(ptr noundef %11, i8 noundef zeroext 100) #11
  %172 = trunc i16 %171 to i8
  %173 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 3
  store i8 %172, ptr %173, align 1
  %174 = lshr i16 %171, 8
  %175 = trunc i16 %174 to i8
  %176 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 2
  store i8 %175, ptr %176, align 2
  %177 = tail call zeroext i16 @axspi_read_reg(ptr noundef %11, i8 noundef zeroext 102) #11
  %178 = trunc i16 %177 to i8
  %179 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 1
  store i8 %178, ptr %179, align 1
  %180 = lshr i16 %177, 8
  %181 = trunc i16 %180 to i8
  store i8 %181, ptr %3, align 4
  %182 = load i32, ptr %3, align 4
  %183 = and i32 %182, 1
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %196

185:                                              ; preds = %164
  %186 = load i16, ptr %170, align 4
  %187 = zext i16 %186 to i32
  %188 = or i32 %182, %187
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %196, label %190

190:                                              ; preds = %185
  call void @dev_addr_mod(ptr noundef %5, i32 noundef 0, ptr noundef nonnull %3, i32 noundef 6) #11
  %191 = load i32, ptr %36, align 4
  %192 = and i32 %191, 2
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %207, label %194

194:                                              ; preds = %190
  %195 = load ptr, ptr %9, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %195, ptr noundef nonnull @.str.22) #12
  br label %207

196:                                              ; preds = %185, %164
  %197 = load i32, ptr %36, align 4
  %198 = and i32 %197, 2
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %202, label %200

200:                                              ; preds = %196
  %201 = load ptr, ptr %9, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %201, ptr noundef nonnull @.str.23) #12
  br label %202

202:                                              ; preds = %200, %196
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %2, i8 0, i32 6, i1 false) #11, !annotation !9
  call void @get_random_bytes(ptr noundef nonnull %2, i32 noundef 6) #11
  %203 = load i8, ptr %2, align 1
  %204 = and i8 %203, -4
  %205 = or i8 %204, 2
  store i8 %205, ptr %2, align 1
  call void @dev_addr_mod(ptr noundef %5, i32 noundef 0, ptr noundef nonnull %2, i32 noundef 6) #11
  %206 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 50
  store i8 1, ptr %206, align 8
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #11
  br label %207

207:                                              ; preds = %202, %194, %190, %162, %158
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #11
  %208 = load i32, ptr %36, align 4
  %209 = and i32 %208, 2
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %232, label %211

211:                                              ; preds = %207
  %212 = load i32, ptr %82, align 8
  %213 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 72
  %214 = load ptr, ptr %213, align 32
  %215 = load i8, ptr %214, align 1
  %216 = zext i8 %215 to i32
  %217 = getelementptr i8, ptr %214, i32 1
  %218 = load i8, ptr %217, align 1
  %219 = zext i8 %218 to i32
  %220 = getelementptr i8, ptr %214, i32 2
  %221 = load i8, ptr %220, align 1
  %222 = zext i8 %221 to i32
  %223 = getelementptr i8, ptr %214, i32 3
  %224 = load i8, ptr %223, align 1
  %225 = zext i8 %224 to i32
  %226 = getelementptr i8, ptr %214, i32 4
  %227 = load i8, ptr %226, align 1
  %228 = zext i8 %227 to i32
  %229 = getelementptr i8, ptr %214, i32 5
  %230 = load i8, ptr %229, align 1
  %231 = zext i8 %230 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.12, i32 noundef %212, i32 noundef %216, i32 noundef %219, i32 noundef %222, i32 noundef %225, i32 noundef %228, i32 noundef %231) #12
  br label %232

232:                                              ; preds = %211, %207
  %233 = call zeroext i16 @axspi_read_reg(ptr noundef %11, i8 noundef zeroext 12) #11
  %234 = and i16 %233, -16
  %235 = call i32 @axspi_write_reg(ptr noundef %11, i8 noundef zeroext 12, i16 noundef zeroext %234) #11
  call void @mutex_unlock(ptr noundef %37) #11
  %236 = getelementptr i8, ptr %5, i32 1420
  store i32 -32, ptr %236, align 4
  %237 = getelementptr i8, ptr %5, i32 1424
  store volatile ptr %237, ptr %237, align 4
  %238 = getelementptr i8, ptr %5, i32 1428
  store ptr %237, ptr %238, align 4
  %239 = getelementptr i8, ptr %5, i32 1432
  store ptr @ax88796c_work, ptr %239, align 4
  %240 = getelementptr i8, ptr %5, i32 1456
  %241 = getelementptr i8, ptr %5, i32 1468
  store i32 0, ptr %241, align 4
  store ptr %240, ptr %240, align 4
  %242 = getelementptr i8, ptr %5, i32 1460
  store ptr %240, ptr %242, align 4
  %243 = getelementptr i8, ptr %5, i32 1464
  store i32 0, ptr %243, align 4
  %244 = load ptr, ptr %39, align 4
  %245 = getelementptr inbounds %struct.mii_bus, ptr %244, i32 0, i32 2
  %246 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 64, ptr noundef nonnull @.str.13, ptr noundef %245, i32 noundef 16)
  %247 = load ptr, ptr %33, align 4
  %248 = call ptr @phy_connect(ptr noundef %247, ptr noundef nonnull %4, ptr noundef nonnull @ax88796c_handle_link_change, i32 noundef 2) #11
  %249 = getelementptr i8, ptr %5, i32 1744
  store ptr %248, ptr %249, align 4
  %250 = icmp ugt ptr %248, inttoptr (i32 -4096 to ptr)
  br i1 %250, label %251, label %253

251:                                              ; preds = %232
  %252 = ptrtoint ptr %248 to i32
  br label %273

253:                                              ; preds = %232
  %254 = getelementptr inbounds %struct.phy_device, ptr %248, i32 0, i32 21
  store i32 -1, ptr %254, align 4
  %255 = call i32 @devm_register_netdev(ptr noundef %0, ptr noundef nonnull %5) #11
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %259, label %257

257:                                              ; preds = %253
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.14) #12
  %258 = load ptr, ptr %249, align 4
  call void @phy_disconnect(ptr noundef %258) #11
  br label %273

259:                                              ; preds = %253
  %260 = load i32, ptr %36, align 4
  %261 = and i32 %260, 2
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %271, label %263

263:                                              ; preds = %259
  %264 = call ptr @dev_driver_string(ptr noundef %0) #11
  %265 = load ptr, ptr %55, align 4
  %266 = icmp eq ptr %265, null
  br i1 %266, label %267, label %269

267:                                              ; preds = %263
  %268 = load ptr, ptr %0, align 4
  br label %269

269:                                              ; preds = %267, %263
  %270 = phi ptr [ %268, %267 ], [ %265, %263 ]
  call void (ptr, ptr, ...) @netdev_info(ptr noundef nonnull %5, ptr noundef nonnull @.str.15, ptr noundef %264, ptr noundef %270) #12
  br label %271

271:                                              ; preds = %269, %259
  %272 = load ptr, ptr %249, align 4
  call void @phy_attached_info(ptr noundef %272) #11
  br label %273

273:                                              ; preds = %271, %257, %251, %110, %104, %69, %31, %29, %1
  %274 = phi i32 [ %67, %69 ], [ 0, %271 ], [ -12, %1 ], [ -12, %29 ], [ -12, %31 ], [ -19, %104 ], [ -19, %110 ], [ %252, %251 ], [ %255, %257 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #11
  ret i32 %274
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ax88796c_remove(ptr noundef %0) #5 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.ax88796c_device, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 120
  %7 = load ptr, ptr %6, align 8
  tail call void @phy_disconnect(ptr noundef %7) #11
  %8 = getelementptr inbounds %struct.ax88796c_device, ptr %3, i32 0, i32 9
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 2
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %1
  %13 = tail call ptr @dev_driver_string(ptr noundef %0) #11
  %14 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load ptr, ptr %0, align 4
  br label %19

19:                                               ; preds = %17, %12
  %20 = phi ptr [ %18, %17 ], [ %15, %12 ]
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %5, ptr noundef nonnull @.str.41, ptr noundef %13, ptr noundef %20) #12
  br label %21

21:                                               ; preds = %19, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_alloc_etherdev_mqs(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_alloc_percpu(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ax88796c_mdio_read(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ax88796c_mdio_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_mdiobus_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ax88796c_soft_reset(ptr noundef %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.ax88796c_device, ptr %0, i32 0, i32 6
  %3 = tail call i32 @axspi_write_reg(ptr noundef %2, i8 noundef zeroext 0, i16 noundef zeroext 0) #11
  %4 = tail call i32 @axspi_write_reg(ptr noundef %2, i8 noundef zeroext 0, i16 noundef zeroext -32768) #11
  %5 = tail call i32 @jiffies_to_usecs(i32 noundef 16) #11
  %6 = zext i32 %5 to i64
  %7 = tail call i64 @ktime_get() #11
  %8 = mul nuw nsw i64 %6, 1000
  %9 = add i64 %8, %7
  %10 = tail call zeroext i16 @axspi_read_reg(ptr noundef %2, i8 noundef zeroext 0) #11
  %11 = and i16 %10, 128
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %1
  %14 = icmp eq i32 %5, 0
  br label %15

15:                                               ; preds = %19, %13
  br i1 %14, label %19, label %16

16:                                               ; preds = %15
  %17 = tail call i64 @ktime_get() #11
  %18 = icmp sgt i64 %17, %9
  br i1 %18, label %23, label %19

19:                                               ; preds = %16, %15
  %20 = tail call zeroext i16 @axspi_read_reg(ptr noundef %2, i8 noundef zeroext 0) #11
  %21 = and i16 %20, 128
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %15, label %27

23:                                               ; preds = %16
  %24 = tail call zeroext i16 @axspi_read_reg(ptr noundef %2, i8 noundef zeroext 0) #11
  %25 = and i16 %24, 128
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %40, label %27

27:                                               ; preds = %23, %19, %1
  %28 = tail call zeroext i16 @axspi_read_reg(ptr noundef %2, i8 noundef zeroext -118) #11
  %29 = getelementptr inbounds %struct.ax88796c_device, ptr %0, i32 0, i32 18
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  %33 = and i16 %28, -4
  %34 = select i1 %32, i16 0, i16 3
  %35 = or i16 %33, %34
  %36 = xor i1 %32, true
  %37 = zext i1 %36 to i8
  %38 = tail call i32 @axspi_write_reg(ptr noundef %2, i8 noundef zeroext -118, i16 noundef zeroext %35) #11
  %39 = getelementptr inbounds %struct.ax88796c_device, ptr %0, i32 0, i32 6, i32 5
  store i8 %37, ptr %39, align 4
  br label %40

40:                                               ; preds = %27, %23
  %41 = phi i32 [ -110, %23 ], [ 0, %27 ]
  ret i32 %41
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ax88796c_work(ptr noundef %0) #5 {
  %2 = alloca [23 x i8], align 1
  %3 = alloca [23 x i8], align 1
  %4 = getelementptr i8, ptr %0, i32 16
  tail call void @mutex_lock(ptr noundef %4) #11
  %5 = getelementptr i8, ptr %0, i32 372
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %90, label %9

9:                                                ; preds = %1
  %10 = getelementptr i8, ptr %0, i32 -8
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 1408
  %13 = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 61
  %14 = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 61, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr i8, ptr %11, i32 1754
  store i64 0, ptr %16, align 2
  %17 = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 14
  %18 = load i32, ptr %17, align 8
  %19 = and i32 %18, 256
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %86

21:                                               ; preds = %9
  %22 = and i32 %18, 512
  %23 = icmp ne i32 %22, 0
  %24 = icmp sgt i32 %15, 64
  %25 = select i1 %23, i1 true, i1 %24
  br i1 %25, label %86, label %26

26:                                               ; preds = %21
  %27 = icmp eq i32 %15, 0
  br i1 %27, label %86, label %28

28:                                               ; preds = %26
  %29 = load ptr, ptr %13, align 4
  %30 = icmp eq ptr %29, %13
  br i1 %30, label %35, label %71

31:                                               ; preds = %71
  %32 = getelementptr i8, ptr %11, i32 1755
  %33 = load i8, ptr %32, align 1
  %34 = load i8, ptr %16, align 1
  br label %35

35:                                               ; preds = %31, %28
  %36 = phi i8 [ %34, %31 ], [ 0, %28 ]
  %37 = phi i8 [ %33, %31 ], [ 0, %28 ]
  %38 = getelementptr i8, ptr %11, i32 1472
  %39 = zext i8 %37 to i16
  %40 = shl nuw i16 %39, 8
  %41 = zext i8 %36 to i16
  %42 = or i16 %40, %41
  %43 = tail call i32 @axspi_write_reg(ptr noundef %38, i8 noundef zeroext 104, i16 noundef zeroext %42) #11
  %44 = getelementptr i8, ptr %11, i32 1757
  %45 = load i8, ptr %44, align 1
  %46 = zext i8 %45 to i16
  %47 = shl nuw i16 %46, 8
  %48 = getelementptr i8, ptr %11, i32 1756
  %49 = load i8, ptr %48, align 1
  %50 = zext i8 %49 to i16
  %51 = or i16 %47, %50
  %52 = tail call i32 @axspi_write_reg(ptr noundef %38, i8 noundef zeroext 106, i16 noundef zeroext %51) #11
  %53 = getelementptr i8, ptr %11, i32 1759
  %54 = load i8, ptr %53, align 1
  %55 = zext i8 %54 to i16
  %56 = shl nuw i16 %55, 8
  %57 = getelementptr i8, ptr %11, i32 1758
  %58 = load i8, ptr %57, align 1
  %59 = zext i8 %58 to i16
  %60 = or i16 %56, %59
  %61 = tail call i32 @axspi_write_reg(ptr noundef %38, i8 noundef zeroext 108, i16 noundef zeroext %60) #11
  %62 = getelementptr i8, ptr %11, i32 1761
  %63 = load i8, ptr %62, align 1
  %64 = zext i8 %63 to i16
  %65 = shl nuw i16 %64, 8
  %66 = getelementptr i8, ptr %11, i32 1760
  %67 = load i8, ptr %66, align 1
  %68 = zext i8 %67 to i16
  %69 = or i16 %65, %68
  %70 = tail call i32 @axspi_write_reg(ptr noundef %38, i8 noundef zeroext 110, i16 noundef zeroext %69) #11
  br label %86

71:                                               ; preds = %71, %28
  %72 = phi ptr [ %84, %71 ], [ %29, %28 ]
  %73 = getelementptr inbounds %struct.netdev_hw_addr, ptr %72, i32 0, i32 2
  %74 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %73, i32 noundef 6) #13
  %75 = tail call i32 asm "rbit $0, $1", "=r,r"(i32 %74) #14, !srcloc !10
  %76 = lshr i32 %75, 26
  %77 = and i32 %76, 7
  %78 = shl nuw nsw i32 1, %77
  %79 = lshr i32 %75, 29
  %80 = getelementptr %struct.ax88796c_device, ptr %12, i32 0, i32 11, i32 %79
  %81 = load i8, ptr %80, align 1
  %82 = trunc i32 %78 to i8
  %83 = or i8 %81, %82
  store i8 %83, ptr %80, align 1
  %84 = load ptr, ptr %72, align 4
  %85 = icmp eq ptr %84, %13
  br i1 %85, label %31, label %71

86:                                               ; preds = %35, %26, %21, %9
  %87 = phi i16 [ 8, %26 ], [ 9, %9 ], [ 10, %21 ], [ 8, %35 ]
  %88 = getelementptr i8, ptr %11, i32 1472
  %89 = tail call i32 @axspi_write_reg(ptr noundef %88, i8 noundef zeroext 86, i16 noundef zeroext %87) #11
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %5) #11
  br label %90

90:                                               ; preds = %86, %1
  %91 = load volatile i32, ptr %5, align 4
  %92 = and i32 %91, 1
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %330, label %94

94:                                               ; preds = %90
  %95 = getelementptr i8, ptr %0, i32 52
  %96 = tail call i32 @axspi_write_reg(ptr noundef %95, i8 noundef zeroext 8, i16 noundef zeroext -1) #11
  %97 = getelementptr i8, ptr %0, i32 -8
  %98 = getelementptr i8, ptr %0, i32 332
  br label %99

99:                                               ; preds = %216, %94
  %100 = call zeroext i16 @axspi_read_reg(ptr noundef %95, i8 noundef zeroext 6) #11
  %101 = call i32 @axspi_write_reg(ptr noundef %95, i8 noundef zeroext 6, i16 noundef zeroext %100) #11
  %102 = zext i16 %100 to i32
  %103 = and i32 %102, 256
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %107, label %105

105:                                              ; preds = %99
  %106 = call i32 @axspi_write_reg(ptr noundef %95, i8 noundef zeroext 18, i16 noundef zeroext 16384) #11
  store i16 31, ptr %98, align 4
  br label %107

107:                                              ; preds = %105, %99
  %108 = and i32 %102, 64
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %107
  call void @_set_bit(i32 noundef 1, ptr noundef %5) #11
  br label %111

111:                                              ; preds = %110, %107
  %112 = and i32 %102, 512
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %118, label %114

114:                                              ; preds = %111
  %115 = load ptr, ptr %97, align 4
  %116 = getelementptr inbounds %struct.net_device, ptr %115, i32 0, i32 120
  %117 = load ptr, ptr %116, align 8
  call void @phy_mac_interrupt(ptr noundef %117) #11
  br label %118

118:                                              ; preds = %114, %111
  %119 = and i32 %102, 1
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %325, label %121

121:                                              ; preds = %118
  %122 = load ptr, ptr %97, align 4
  %123 = getelementptr i8, ptr %122, i32 1472
  %124 = call zeroext i16 @axspi_read_reg(ptr noundef %123, i8 noundef zeroext 26) #11
  %125 = or i16 %124, -32768
  %126 = call i32 @axspi_write_reg(ptr noundef %123, i8 noundef zeroext 26, i16 noundef zeroext %125) #11
  %127 = call zeroext i16 @axspi_read_reg(ptr noundef %123, i8 noundef zeroext 24) #11
  %128 = trunc i16 %127 to i8
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %325, label %130

130:                                              ; preds = %121
  %131 = call zeroext i16 @axspi_read_reg(ptr noundef %123, i8 noundef zeroext 28) #11
  %132 = and i16 %131, 2047
  %133 = add nuw nsw i16 %132, 5
  %134 = or i16 %133, 3
  %135 = add nuw nsw i16 %134, 1
  %136 = zext i16 %135 to i32
  %137 = call ptr @__netdev_alloc_skb(ptr noundef %122, i32 noundef %136, i32 noundef 2592) #11
  %138 = icmp eq ptr %137, null
  br i1 %138, label %139, label %153

139:                                              ; preds = %130
  %140 = call i32 @axspi_write_reg(ptr noundef %123, i8 noundef zeroext 22, i16 noundef zeroext 16384) #11
  %141 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !11
  %142 = getelementptr i8, ptr %122, i32 1416
  %143 = load ptr, ptr %142, align 4
  %144 = getelementptr inbounds %struct.ax88796c_pcpu_stats, ptr %143, i32 0, i32 5
  %145 = ptrtoint ptr %144 to i32
  %146 = call i32 @llvm.read_register.i32(metadata !0) #11
  %147 = inttoptr i32 %146 to ptr
  %148 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %147) #9, !srcloc !12
  %149 = add i32 %148, %145
  %150 = inttoptr i32 %149 to ptr
  %151 = load i32, ptr %150, align 4
  %152 = add i32 %151, 1
  store i32 %152, ptr %150, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %141) #11, !srcloc !13
  br label %325

153:                                              ; preds = %130
  %154 = lshr exact i16 %135, 1
  %155 = getelementptr inbounds %struct.sk_buff, ptr %137, i32 0, i32 3
  %156 = or i16 %154, -32768
  %157 = call i32 @axspi_write_reg(ptr noundef %123, i8 noundef zeroext 22, i16 noundef zeroext %156) #11
  %158 = call ptr @skb_put(ptr noundef nonnull %137, i32 noundef %136) #11
  %159 = getelementptr inbounds %struct.sk_buff, ptr %137, i32 0, i32 5
  %160 = load i32, ptr %159, align 8
  %161 = call i32 @axspi_read_rxq(ptr noundef %123, ptr noundef %158, i32 noundef %160) #11
  %162 = call zeroext i16 @axspi_read_reg(ptr noundef %123, i8 noundef zeroext 24) #11
  %163 = and i16 %162, 16384
  %164 = icmp eq i16 %163, 0
  br i1 %164, label %165, label %176

165:                                              ; preds = %153
  %166 = call i32 @net_ratelimit() #11
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %174, label %168

168:                                              ; preds = %165
  %169 = getelementptr i8, ptr %122, i32 1748
  %170 = load i32, ptr %169, align 4
  %171 = and i32 %170, 64
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %174, label %173

173:                                              ; preds = %168
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %122, ptr noundef nonnull @.str.24) #12
  br label %174

174:                                              ; preds = %173, %168, %165
  %175 = call i32 @axspi_write_reg(ptr noundef %123, i8 noundef zeroext 24, i16 noundef zeroext -32768) #11
  br label %176

176:                                              ; preds = %174, %153
  %177 = phi i32 [ 3, %174 ], [ 2, %153 ]
  store i32 %177, ptr %155, align 4
  %178 = call i32 @axspi_write_reg(ptr noundef %123, i8 noundef zeroext 6, i16 noundef zeroext 1) #11
  %179 = getelementptr inbounds %struct.sk_buff, ptr %137, i32 0, i32 17
  %180 = load ptr, ptr %179, align 4
  %181 = getelementptr i8, ptr %122, i32 1412
  %182 = load ptr, ptr %181, align 4
  %183 = load i16, ptr %180, align 2
  %184 = call i16 @llvm.bswap.i16(i16 %183) #11
  store i16 %184, ptr %180, align 2
  %185 = getelementptr inbounds %struct.rx_header, ptr %180, i32 0, i32 1
  %186 = load i16, ptr %185, align 2
  %187 = call i16 @llvm.bswap.i16(i16 %186) #11
  store i16 %187, ptr %185, align 2
  %188 = getelementptr inbounds %struct.rx_header, ptr %180, i32 0, i32 2
  %189 = load i16, ptr %188, align 2
  %190 = call i16 @llvm.bswap.i16(i16 %189) #11
  store i16 %190, ptr %188, align 2
  %191 = zext i16 %184 to i32
  %192 = and i32 %191, 2047
  %193 = and i16 %187, 2047
  %194 = xor i16 %193, 2047
  %195 = zext i16 %194 to i32
  %196 = icmp eq i32 %192, %195
  br i1 %196, label %217, label %197

197:                                              ; preds = %176
  %198 = getelementptr i8, ptr %122, i32 1748
  %199 = load i32, ptr %198, align 4
  %200 = and i32 %199, 64
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %203, label %202

202:                                              ; preds = %197
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %182, ptr noundef nonnull @.str.25) #12
  br label %203

203:                                              ; preds = %202, %197
  %204 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !11
  %205 = getelementptr i8, ptr %122, i32 1416
  %206 = load ptr, ptr %205, align 4
  %207 = getelementptr inbounds %struct.ax88796c_pcpu_stats, ptr %206, i32 0, i32 7
  %208 = ptrtoint ptr %207 to i32
  %209 = call i32 @llvm.read_register.i32(metadata !0) #11
  %210 = inttoptr i32 %209 to ptr
  %211 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %210) #9, !srcloc !12
  %212 = add i32 %211, %208
  %213 = inttoptr i32 %212 to ptr
  %214 = load i32, ptr %213, align 4
  %215 = add i32 %214, 1
  store i32 %215, ptr %213, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %204) #11, !srcloc !13
  call void @kfree_skb_reason(ptr noundef nonnull %137, i32 noundef 0) #11
  br label %216

216:                                              ; preds = %324, %320, %317, %314, %226, %203
  br label %99

217:                                              ; preds = %176
  %218 = and i32 %191, 12288
  %219 = icmp eq i32 %218, 0
  %220 = getelementptr i8, ptr %122, i32 1748
  %221 = load i32, ptr %220, align 4
  br i1 %219, label %239, label %222

222:                                              ; preds = %217
  %223 = and i32 %221, 64
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %226, label %225

225:                                              ; preds = %222
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %182, ptr noundef nonnull @.str.26) #12
  br label %226

226:                                              ; preds = %225, %222
  %227 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !11
  %228 = getelementptr i8, ptr %122, i32 1416
  %229 = load ptr, ptr %228, align 4
  %230 = getelementptr inbounds %struct.ax88796c_pcpu_stats, ptr %229, i32 0, i32 8
  %231 = ptrtoint ptr %230 to i32
  %232 = call i32 @llvm.read_register.i32(metadata !0) #11
  %233 = inttoptr i32 %232 to ptr
  %234 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %233) #9, !srcloc !12
  %235 = add i32 %234, %231
  %236 = inttoptr i32 %235 to ptr
  %237 = load i32, ptr %236, align 4
  %238 = add i32 %237, 1
  store i32 %238, ptr %236, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %227) #11, !srcloc !13
  call void @kfree_skb_reason(ptr noundef nonnull %137, i32 noundef 0) #11
  br label %216

239:                                              ; preds = %217
  %240 = and i32 %221, 4096
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %248, label %242

242:                                              ; preds = %239
  call void @llvm.lifetime.start.p0(i64 23, ptr nonnull %3) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(23) %3, i8 0, i32 23, i1 false) #11, !annotation !9
  %243 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 23, ptr noundef nonnull @.str.27, ptr noundef %182) #11
  %244 = load i32, ptr %159, align 8
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %182, ptr noundef nonnull @.str.28, i32 noundef %244, i32 noundef %192) #12
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %182, ptr noundef nonnull @.str.29) #12
  %245 = load ptr, ptr %179, align 4
  call void @print_hex_dump(ptr noundef nonnull @.str.30, ptr noundef nonnull %3, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %245, i32 noundef 6, i1 noundef zeroext false) #11
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %182, ptr noundef nonnull @.str.31) #12
  %246 = load ptr, ptr %179, align 4
  %247 = getelementptr i8, ptr %246, i32 6
  call void @print_hex_dump(ptr noundef nonnull @.str.30, ptr noundef nonnull %3, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %247, i32 noundef %192, i1 noundef zeroext false) #11
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %3) #11
  br label %248

248:                                              ; preds = %242, %239
  %249 = call ptr @skb_pull(ptr noundef nonnull %137, i32 noundef 6) #11
  %250 = load i32, ptr %159, align 8
  %251 = icmp ugt i32 %250, %192
  br i1 %251, label %252, label %262

252:                                              ; preds = %248
  %253 = getelementptr inbounds %struct.sk_buff, ptr %137, i32 0, i32 6
  %254 = load i32, ptr %253, align 4
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %258, label %256

256:                                              ; preds = %252
  %257 = call i32 @___pskb_trim(ptr noundef nonnull %137, i32 noundef %192) #11
  br label %262

258:                                              ; preds = %252
  store i32 %192, ptr %159, align 8
  %259 = load ptr, ptr %179, align 4
  %260 = getelementptr i8, ptr %259, i32 %192
  %261 = getelementptr inbounds %struct.sk_buff, ptr %137, i32 0, i32 14
  store ptr %260, ptr %261, align 8
  br label %262

262:                                              ; preds = %258, %256, %248
  %263 = load ptr, ptr %181, align 4
  %264 = getelementptr i8, ptr %122, i32 1416
  %265 = load ptr, ptr %264, align 4
  %266 = ptrtoint ptr %265 to i32
  %267 = call i32 @llvm.read_register.i32(metadata !0) #11
  %268 = inttoptr i32 %267 to ptr
  %269 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %268) #9, !srcloc !12
  %270 = add i32 %269, %266
  %271 = inttoptr i32 %270 to ptr
  %272 = getelementptr inbounds %struct.net_device, ptr %263, i32 0, i32 23
  %273 = load i64, ptr %272, align 16
  %274 = and i64 %273, 1099511627776
  %275 = icmp eq i64 %274, 0
  br i1 %275, label %289, label %276

276:                                              ; preds = %262
  %277 = load i16, ptr %188, align 2
  %278 = zext i16 %277 to i32
  %279 = and i32 %278, 768
  %280 = icmp ne i32 %279, 0
  %281 = and i32 %278, 5120
  %282 = icmp eq i32 %281, 0
  %283 = or i1 %280, %282
  br i1 %283, label %289, label %284

284:                                              ; preds = %276
  %285 = getelementptr inbounds %struct.sk_buff, ptr %137, i32 0, i32 13
  %286 = load i16, ptr %285, align 8
  %287 = and i16 %286, -97
  %288 = or i16 %287, 32
  store i16 %288, ptr %285, align 8
  br label %289

289:                                              ; preds = %284, %276, %262
  %290 = getelementptr inbounds %struct.ax88796c_pcpu_stats, ptr %271, i32 0, i32 4
  %291 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !11
  %292 = load i32, ptr %290, align 4
  %293 = add i32 %292, 1
  store i32 %293, ptr %290, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !14
  %294 = load i64, ptr %271, align 8
  %295 = add i64 %294, 1
  store i64 %295, ptr %271, align 8
  %296 = getelementptr inbounds %struct.ax88796c_pcpu_stats, ptr %271, i32 0, i32 1
  %297 = load i32, ptr %159, align 8
  %298 = zext i32 %297 to i64
  %299 = load i64, ptr %296, align 8
  %300 = add i64 %299, %298
  store i64 %300, ptr %296, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !15
  %301 = load i32, ptr %290, align 4
  %302 = add i32 %301, 1
  store i32 %302, ptr %290, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %291) #11, !srcloc !13
  %303 = getelementptr inbounds %struct.anon.41, ptr %137, i32 0, i32 2
  store ptr %263, ptr %303, align 8
  %304 = load ptr, ptr %181, align 4
  %305 = call zeroext i16 @eth_type_trans(ptr noundef nonnull %137, ptr noundef %304) #11
  %306 = getelementptr inbounds %struct.sk_buff, ptr %137, i32 0, i32 13, i32 0, i32 16
  store i16 %305, ptr %306, align 8
  %307 = load i32, ptr %220, align 4
  %308 = and i32 %307, 2048
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %314, label %310

310:                                              ; preds = %289
  %311 = load i32, ptr %159, align 8
  %312 = add i32 %311, 14
  %313 = zext i16 %305 to i32
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %263, ptr noundef nonnull @.str.33, i32 noundef %312, i32 noundef %313) #12
  br label %314

314:                                              ; preds = %310, %289
  %315 = call i32 @netif_rx_ni(ptr noundef nonnull %137) #11
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %216, label %317

317:                                              ; preds = %314
  %318 = call i32 @net_ratelimit() #11
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %216, label %320

320:                                              ; preds = %317
  %321 = load i32, ptr %220, align 4
  %322 = and i32 %321, 64
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %216, label %324

324:                                              ; preds = %320
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %263, ptr noundef nonnull @.str.34, i32 noundef %315) #12
  br label %216

325:                                              ; preds = %139, %121, %118
  call void @_clear_bit(i32 noundef 0, ptr noundef %5) #11
  %326 = call i32 @axspi_write_reg(ptr noundef %95, i8 noundef zeroext 8, i16 noundef zeroext 256) #11
  %327 = load ptr, ptr %97, align 4
  %328 = getelementptr inbounds %struct.net_device, ptr %327, i32 0, i32 59
  %329 = load i32, ptr %328, align 8
  call void @enable_irq(i32 noundef %329) #11
  br label %330

330:                                              ; preds = %325, %90
  %331 = load volatile i32, ptr %5, align 4
  %332 = and i32 %331, 2
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %590, label %334

334:                                              ; preds = %330
  %335 = getelementptr i8, ptr %0, i32 44
  %336 = load i32, ptr %335, align 4
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %577, label %338

338:                                              ; preds = %334
  %339 = getelementptr i8, ptr %0, i32 -4
  %340 = getelementptr i8, ptr %0, i32 -8
  %341 = getelementptr i8, ptr %0, i32 36
  %342 = getelementptr i8, ptr %0, i32 52
  %343 = getelementptr i8, ptr %0, i32 328
  %344 = getelementptr i8, ptr %0, i32 332
  br label %345

345:                                              ; preds = %574, %338
  %346 = load ptr, ptr %339, align 4
  %347 = ptrtoint ptr %346 to i32
  %348 = call i32 @llvm.read_register.i32(metadata !0) #11
  %349 = inttoptr i32 %348 to ptr
  %350 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %349) #9, !srcloc !12
  %351 = add i32 %350, %347
  %352 = inttoptr i32 %351 to ptr
  %353 = load ptr, ptr %340, align 4
  %354 = getelementptr i8, ptr %353, i32 1736
  %355 = load i8, ptr %354, align 4
  %356 = icmp eq i8 %355, 0
  %357 = select i1 %356, i8 4, i8 1
  %358 = load ptr, ptr %341, align 4
  %359 = icmp eq ptr %358, %341
  br i1 %359, label %510, label %360

360:                                              ; preds = %345
  %361 = getelementptr inbounds %struct.sk_buff, ptr %358, i32 0, i32 5
  %362 = load i32, ptr %361, align 8
  %363 = and i32 %362, 65535
  %364 = add i32 %362, 135
  %365 = lshr i32 %364, 7
  %366 = getelementptr i8, ptr %353, i32 1472
  %367 = call zeroext i16 @axspi_read_reg(ptr noundef %366, i8 noundef zeroext 16) #11
  %368 = and i16 %367, 63
  %369 = trunc i32 %365 to i16
  %370 = and i16 %369, 255
  %371 = icmp ult i16 %368, %370
  br i1 %371, label %372, label %382

372:                                              ; preds = %360
  %373 = trunc i32 %365 to i8
  %374 = call zeroext i16 @axspi_read_reg(ptr noundef %366, i8 noundef zeroext 16) #11
  %375 = and i16 %374, -16257
  %376 = and i8 %373, 63
  %377 = zext i8 %376 to i16
  %378 = shl nuw nsw i16 %377, 7
  %379 = or i16 %375, %378
  %380 = or i16 %379, 8192
  %381 = call i32 @axspi_write_reg(ptr noundef %366, i8 noundef zeroext 16, i16 noundef zeroext %380) #11
  br label %510

382:                                              ; preds = %360
  %383 = trunc i32 %362 to i16
  %384 = getelementptr inbounds %struct.sk_buff, ptr %358, i32 0, i32 17
  %385 = load ptr, ptr %384, align 4
  %386 = getelementptr inbounds %struct.sk_buff, ptr %358, i32 0, i32 16
  %387 = load ptr, ptr %386, align 8
  %388 = ptrtoint ptr %385 to i32
  %389 = ptrtoint ptr %387 to i32
  %390 = sub i32 %388, %389
  %391 = getelementptr inbounds %struct.sk_buff, ptr %358, i32 0, i32 6
  %392 = load i32, ptr %391, align 4
  %393 = icmp eq i32 %392, 0
  br i1 %393, label %394, label %402

394:                                              ; preds = %382
  %395 = getelementptr inbounds %struct.sk_buff, ptr %358, i32 0, i32 15
  %396 = load ptr, ptr %395, align 4
  %397 = getelementptr inbounds %struct.sk_buff, ptr %358, i32 0, i32 14
  %398 = load ptr, ptr %397, align 8
  %399 = ptrtoint ptr %396 to i32
  %400 = ptrtoint ptr %398 to i32
  %401 = sub i32 %399, %400
  br label %402

402:                                              ; preds = %394, %382
  %403 = phi i32 [ %401, %394 ], [ 0, %382 ]
  %404 = add i32 %362, 255
  %405 = or i32 %404, 3
  %406 = sub i32 1, %362
  %407 = add i32 %405, %406
  %408 = getelementptr i8, ptr %353, i32 1752
  %409 = load i16, ptr %408, align 4
  %410 = add i16 %409, 1
  store i16 %410, ptr %408, align 4
  %411 = trunc i16 %410 to i8
  %412 = and i8 %411, 31
  %413 = getelementptr inbounds %struct.sk_buff, ptr %358, i32 0, i32 11
  %414 = load i8, ptr %413, align 2
  %415 = and i8 %414, 1
  %416 = icmp eq i8 %415, 0
  br i1 %416, label %427, label %417

417:                                              ; preds = %402
  %418 = getelementptr inbounds %struct.sk_buff, ptr %358, i32 0, i32 15
  %419 = load ptr, ptr %418, align 4
  %420 = getelementptr inbounds %struct.skb_shared_info, ptr %419, i32 0, i32 10
  %421 = load volatile i32, ptr %420, align 4
  %422 = and i32 %421, 65535
  %423 = icmp eq i32 %422, 1
  br i1 %423, label %427, label %424

424:                                              ; preds = %417
  %425 = or i8 %357, 8
  %426 = zext i8 %425 to i32
  br label %435

427:                                              ; preds = %417, %402
  %428 = or i8 %357, 8
  %429 = zext i8 %428 to i32
  %430 = icmp slt i32 %390, %429
  br i1 %430, label %435, label %431

431:                                              ; preds = %427
  %432 = and i32 %407, 255
  %433 = add nuw nsw i32 %432, 4
  %434 = icmp slt i32 %403, %433
  br i1 %434, label %435, label %445

435:                                              ; preds = %431, %427, %424
  %436 = phi i32 [ %426, %424 ], [ %429, %431 ], [ %429, %427 ]
  %437 = sub i32 %436, %390
  %438 = call i32 @llvm.smax.i32(i32 %437, i32 0) #11
  %439 = and i32 %407, 255
  %440 = add nuw nsw i32 %439, 4
  %441 = sub i32 %440, %403
  %442 = call i32 @llvm.smax.i32(i32 %441, i32 0) #11
  %443 = call i32 @pskb_expand_head(ptr noundef %358, i32 noundef %438, i32 noundef %442, i32 noundef 3264) #11
  %444 = icmp eq i32 %443, 0
  br i1 %444, label %445, label %510

445:                                              ; preds = %435, %431
  %446 = phi i32 [ %439, %435 ], [ %432, %431 ]
  %447 = zext i8 %412 to i16
  %448 = getelementptr inbounds %struct.sk_buff, ptr %358, i32 0, i32 13
  %449 = load i16, ptr %448, align 8
  %450 = and i16 %383, 2047
  %451 = xor i16 %450, 2047
  %452 = shl i16 %449, 9
  %453 = and i16 %452, -32768
  %454 = xor i16 %453, -32768
  %455 = or i16 %454, %383
  %456 = shl nuw i16 %447, 11
  %457 = or i16 %456, %451
  %458 = call i16 @llvm.bswap.i16(i16 %455) #11
  %459 = call i16 @llvm.bswap.i16(i16 %457) #11
  %460 = or i16 %383, -16384
  %461 = call i16 @llvm.bswap.i16(i16 %460) #11
  %462 = call i16 @llvm.bswap.i16(i16 %451) #11
  %463 = or i16 %456, %383
  %464 = xor i16 %447, -1
  %465 = shl i16 %464, 11
  %466 = or i16 %465, %451
  %467 = call ptr @skb_push(ptr noundef %358, i32 noundef 8) #11
  %468 = zext i16 %462 to i64
  %469 = shl nuw i64 %468, 48
  %470 = zext i16 %461 to i64
  %471 = shl nuw nsw i64 %470, 32
  %472 = or i64 %469, %471
  %473 = zext i16 %459 to i64
  %474 = shl nuw nsw i64 %473, 16
  %475 = or i64 %474, %472
  %476 = zext i16 %458 to i64
  %477 = or i64 %475, %476
  store i64 %477, ptr %467, align 1
  %478 = zext i8 %357 to i32
  %479 = call ptr @skb_push(ptr noundef %358, i32 noundef %478) #11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 %479, ptr noundef nonnull align 1 @ax88796c_tx_cmd_buf, i32 %478, i1 false) #11
  %480 = call ptr @skb_put(ptr noundef %358, i32 noundef %446) #11
  %481 = call ptr @skb_put(ptr noundef %358, i32 noundef 4) #11
  %482 = zext i16 %466 to i32
  %483 = zext i16 %463 to i32
  %484 = shl nuw i32 %483, 16
  %485 = or i32 %484, %482
  %486 = call i32 @llvm.bswap.i32(i32 %485) #11
  store i32 %486, ptr %481, align 1
  call void @skb_unlink(ptr noundef %358, ptr noundef %341) #11
  %487 = getelementptr inbounds %struct.sk_buff, ptr %358, i32 0, i32 3
  store i64 0, ptr %487, align 4
  %488 = getelementptr inbounds %struct.sk_buff, ptr %358, i32 0, i32 3, i32 4
  store i32 %363, ptr %488, align 4
  %489 = getelementptr i8, ptr %353, i32 1748
  %490 = load i32, ptr %489, align 4
  %491 = and i32 %490, 4096
  %492 = icmp eq i32 %491, 0
  br i1 %492, label %508, label %493

493:                                              ; preds = %445
  call void @llvm.lifetime.start.p0(i64 23, ptr nonnull %2) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(23) %2, i8 0, i32 23, i1 false) #11, !annotation !9
  %494 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 23, ptr noundef nonnull @.str.27, ptr noundef %353) #11
  %495 = load i32, ptr %361, align 8
  %496 = zext i8 %412 to i32
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %353, ptr noundef nonnull @.str.36, i32 noundef %363, i32 noundef %495, i32 noundef %496) #12
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %353, ptr noundef nonnull @.str.37) #12
  %497 = load ptr, ptr %384, align 4
  call void @print_hex_dump(ptr noundef nonnull @.str.30, ptr noundef nonnull %2, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %497, i32 noundef 4, i1 noundef zeroext false) #11
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %353, ptr noundef nonnull @.str.38) #12
  %498 = load ptr, ptr %384, align 4
  %499 = getelementptr i8, ptr %498, i32 4
  call void @print_hex_dump(ptr noundef nonnull @.str.30, ptr noundef nonnull %2, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %499, i32 noundef 8, i1 noundef zeroext false) #11
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %353, ptr noundef nonnull @.str.39) #12
  %500 = load ptr, ptr %384, align 4
  %501 = getelementptr i8, ptr %500, i32 12
  %502 = load i32, ptr %361, align 8
  %503 = add i32 %502, -16
  call void @print_hex_dump(ptr noundef nonnull @.str.30, ptr noundef nonnull %2, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %501, i32 noundef %503, i1 noundef zeroext false) #11
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %353, ptr noundef nonnull @.str.40) #12
  %504 = load ptr, ptr %384, align 4
  %505 = load i32, ptr %361, align 8
  %506 = getelementptr i8, ptr %504, i32 -4
  %507 = getelementptr i8, ptr %506, i32 %505
  call void @print_hex_dump(ptr noundef nonnull @.str.30, ptr noundef nonnull %2, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %507, i32 noundef 4, i1 noundef zeroext false) #11
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %2) #11
  br label %508

508:                                              ; preds = %493, %445
  %509 = icmp eq ptr %358, null
  br i1 %509, label %510, label %522

510:                                              ; preds = %508, %435, %372, %345
  %511 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !11
  %512 = load ptr, ptr %339, align 4
  %513 = getelementptr inbounds %struct.ax88796c_pcpu_stats, ptr %512, i32 0, i32 6
  %514 = ptrtoint ptr %513 to i32
  %515 = call i32 @llvm.read_register.i32(metadata !0) #11
  %516 = inttoptr i32 %515 to ptr
  %517 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %516) #9, !srcloc !12
  %518 = add i32 %517, %514
  %519 = inttoptr i32 %518 to ptr
  %520 = load i32, ptr %519, align 4
  %521 = add i32 %520, 1
  store i32 %521, ptr %519, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %511) #11, !srcloc !13
  br label %577

522:                                              ; preds = %508
  %523 = call i32 @axspi_write_reg(ptr noundef %342, i8 noundef zeroext 18, i16 noundef zeroext -32512) #11
  %524 = load ptr, ptr %384, align 4
  %525 = load i32, ptr %361, align 8
  %526 = call i32 @axspi_write_txq(ptr noundef %342, ptr noundef %524, i32 noundef %525) #11
  %527 = call zeroext i16 @axspi_read_reg(ptr noundef %342, i8 noundef zeroext 18) #11
  %528 = and i16 %527, 64
  %529 = icmp eq i16 %528, 0
  br i1 %529, label %534, label %530

530:                                              ; preds = %522
  %531 = call zeroext i16 @axspi_read_reg(ptr noundef %342, i8 noundef zeroext 6) #11
  %532 = and i16 %531, 256
  %533 = icmp eq i16 %532, 0
  br i1 %533, label %559, label %534

534:                                              ; preds = %530, %522
  %535 = call i32 @axspi_write_reg(ptr noundef %342, i8 noundef zeroext 6, i16 noundef zeroext 256) #11
  %536 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !11
  %537 = load ptr, ptr %339, align 4
  %538 = getelementptr inbounds %struct.ax88796c_pcpu_stats, ptr %537, i32 0, i32 6
  %539 = ptrtoint ptr %538 to i32
  %540 = call i32 @llvm.read_register.i32(metadata !0) #11
  %541 = inttoptr i32 %540 to ptr
  %542 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %541) #9, !srcloc !12
  %543 = add i32 %542, %539
  %544 = inttoptr i32 %543 to ptr
  %545 = load i32, ptr %544, align 4
  %546 = add i32 %545, 1
  store i32 %546, ptr %544, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %536) #11, !srcloc !13
  %547 = call i32 @net_ratelimit() #11
  %548 = icmp eq i32 %547, 0
  br i1 %548, label %555, label %549

549:                                              ; preds = %534
  %550 = load i32, ptr %343, align 4
  %551 = and i32 %550, 128
  %552 = icmp eq i32 %551, 0
  br i1 %552, label %555, label %553

553:                                              ; preds = %549
  %554 = load ptr, ptr %340, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %554, ptr noundef nonnull @.str.35) #12
  br label %555

555:                                              ; preds = %553, %549, %534
  %556 = call zeroext i16 @axspi_read_reg(ptr noundef %342, i8 noundef zeroext 18) #11
  %557 = or i16 %556, 16384
  %558 = call i32 @axspi_write_reg(ptr noundef %342, i8 noundef zeroext 18, i16 noundef zeroext %557) #11
  store i16 0, ptr %344, align 4
  br label %574

559:                                              ; preds = %530
  %560 = getelementptr inbounds %struct.ax88796c_pcpu_stats, ptr %352, i32 0, i32 4
  %561 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !11
  %562 = load i32, ptr %560, align 4
  %563 = add i32 %562, 1
  store i32 %563, ptr %560, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !14
  %564 = getelementptr inbounds %struct.ax88796c_pcpu_stats, ptr %352, i32 0, i32 2
  %565 = load i64, ptr %564, align 8
  %566 = add i64 %565, 1
  store i64 %566, ptr %564, align 8
  %567 = getelementptr inbounds %struct.ax88796c_pcpu_stats, ptr %352, i32 0, i32 3
  %568 = load i32, ptr %488, align 4
  %569 = zext i32 %568 to i64
  %570 = load i64, ptr %567, align 8
  %571 = add i64 %570, %569
  store i64 %571, ptr %567, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !15
  %572 = load i32, ptr %560, align 4
  %573 = add i32 %572, 1
  store i32 %573, ptr %560, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %561) #11, !srcloc !13
  br label %574

574:                                              ; preds = %559, %555
  store i32 1, ptr %487, align 4
  call void @consume_skb(ptr noundef nonnull %358) #11
  %575 = load i32, ptr %335, align 4
  %576 = icmp eq i32 %575, 0
  br i1 %576, label %577, label %345

577:                                              ; preds = %574, %510, %334
  call void @_clear_bit(i32 noundef 1, ptr noundef %5) #11
  %578 = getelementptr i8, ptr %0, i32 -8
  %579 = load ptr, ptr %578, align 4
  %580 = getelementptr inbounds %struct.net_device, ptr %579, i32 0, i32 87
  %581 = load ptr, ptr %580, align 64
  %582 = getelementptr inbounds %struct.netdev_queue, ptr %581, i32 0, i32 12
  %583 = load volatile i32, ptr %582, align 4
  %584 = and i32 %583, 1
  %585 = icmp eq i32 %584, 0
  br i1 %585, label %590, label %586

586:                                              ; preds = %577
  %587 = load i32, ptr %335, align 4
  %588 = icmp ult i32 %587, 20
  br i1 %588, label %589, label %590

589:                                              ; preds = %586
  call void @netif_tx_wake_queue(ptr noundef %581) #11
  br label %590

590:                                              ; preds = %589, %586, %577, %330
  call void @mutex_unlock(ptr noundef %4) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @phy_connect(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ax88796c_handle_link_change(ptr noundef %0) #5 {
  %2 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.phy_device, ptr %3, i32 0, i32 4
  %5 = load i16, ptr %4, align 8
  %6 = and i16 %5, 8192
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %32, label %8

8:                                                ; preds = %1
  %9 = getelementptr i8, ptr %0, i32 1768
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.phy_device, ptr %3, i32 0, i32 8
  %12 = load i32, ptr %11, align 8
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %14, label %39

14:                                               ; preds = %8
  %15 = getelementptr i8, ptr %0, i32 1772
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.phy_device, ptr %3, i32 0, i32 9
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %20, label %39

20:                                               ; preds = %14
  %21 = getelementptr i8, ptr %0, i32 1776
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.phy_device, ptr %3, i32 0, i32 11
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %20
  %27 = getelementptr i8, ptr %0, i32 1780
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.phy_device, ptr %3, i32 0, i32 12
  %30 = load i32, ptr %29, align 8
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %26, %1
  %33 = lshr i16 %5, 13
  %34 = and i16 %33, 1
  %35 = zext i16 %34 to i32
  %36 = getelementptr i8, ptr %0, i32 1764
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, %35
  br i1 %38, label %126, label %56

39:                                               ; preds = %26, %20, %14, %8
  store i32 %12, ptr %9, align 4
  %40 = getelementptr inbounds %struct.phy_device, ptr %3, i32 0, i32 9
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr i8, ptr %0, i32 1772
  store i32 %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.phy_device, ptr %3, i32 0, i32 11
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr i8, ptr %0, i32 1776
  store i32 %44, ptr %45, align 4
  %46 = getelementptr inbounds %struct.phy_device, ptr %3, i32 0, i32 12
  %47 = load i32, ptr %46, align 8
  %48 = getelementptr i8, ptr %0, i32 1780
  store i32 %47, ptr %48, align 4
  %49 = load i16, ptr %4, align 8
  %50 = lshr i16 %49, 13
  %51 = and i16 %50, 1
  %52 = zext i16 %51 to i32
  %53 = getelementptr i8, ptr %0, i32 1764
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, %52
  br i1 %55, label %73, label %56

56:                                               ; preds = %39, %32
  %57 = phi i16 [ %49, %39 ], [ %5, %32 ]
  %58 = phi ptr [ %53, %39 ], [ %36, %32 ]
  %59 = phi i16 [ %51, %39 ], [ %34, %32 ]
  %60 = icmp eq i16 %59, 0
  %61 = getelementptr i8, ptr %0, i32 1768
  br i1 %60, label %64, label %62

62:                                               ; preds = %56
  %63 = load i32, ptr %61, align 4
  br label %67

64:                                               ; preds = %56
  store i32 -1, ptr %61, align 4
  %65 = getelementptr i8, ptr %0, i32 1772
  store i32 255, ptr %65, align 4
  %66 = load i16, ptr %4, align 8
  br label %67

67:                                               ; preds = %64, %62
  %68 = phi i32 [ -1, %64 ], [ %63, %62 ]
  %69 = phi i16 [ %66, %64 ], [ %57, %62 ]
  %70 = lshr i16 %69, 13
  %71 = and i16 %70, 1
  %72 = zext i16 %71 to i32
  store i32 %72, ptr %58, align 4
  br label %73

73:                                               ; preds = %67, %39
  %74 = phi i32 [ %68, %67 ], [ %12, %39 ]
  %75 = phi i32 [ %72, %67 ], [ %52, %39 ]
  %76 = icmp ne i32 %75, 0
  %77 = zext i1 %76 to i16
  switch i32 %74, label %126 [
    i32 100, label %78
    i32 10, label %80
    i32 -1, label %80
  ]

78:                                               ; preds = %73
  %79 = or i16 %77, 4
  br label %80

80:                                               ; preds = %78, %73, %73
  %81 = phi i16 [ %77, %73 ], [ %77, %73 ], [ %79, %78 ]
  %82 = getelementptr i8, ptr %0, i32 1772
  %83 = load i32, ptr %82, align 4
  switch i32 %83, label %126 [
    i32 1, label %84
    i32 0, label %86
    i32 255, label %86
  ]

84:                                               ; preds = %80
  %85 = or i16 %81, 4
  br label %86

86:                                               ; preds = %84, %80, %80
  %87 = phi i16 [ %81, %80 ], [ %81, %80 ], [ %85, %84 ]
  %88 = getelementptr i8, ptr %0, i32 1784
  %89 = load i32, ptr %88, align 4
  %90 = and i32 %89, 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %111, label %92

92:                                               ; preds = %86
  %93 = getelementptr i8, ptr %0, i32 1744
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr inbounds %struct.phy_device, ptr %94, i32 0, i32 4
  %96 = load i16, ptr %95, align 8
  %97 = and i16 %96, 4096
  %98 = icmp eq i16 %97, 0
  br i1 %98, label %111, label %99

99:                                               ; preds = %92
  %100 = getelementptr i8, ptr %0, i32 1776
  %101 = load i32, ptr %100, align 4
  %102 = icmp eq i32 %101, 0
  %103 = select i1 %102, i16 0, i16 8
  %104 = or i16 %103, %87
  %105 = getelementptr i8, ptr %0, i32 1780
  %106 = load i32, ptr %105, align 4
  %107 = icmp ne i32 %106, 0
  %108 = xor i1 %102, %107
  %109 = select i1 %108, i16 0, i16 16
  %110 = or i16 %104, %109
  br label %118

111:                                              ; preds = %92, %86
  %112 = trunc i32 %89 to i16
  %113 = shl i16 %112, 3
  %114 = and i16 %113, 8
  %115 = or i16 %114, %87
  %116 = and i16 %113, 16
  %117 = or i16 %115, %116
  br label %118

118:                                              ; preds = %111, %99
  %119 = phi i16 [ %110, %99 ], [ %117, %111 ]
  %120 = getelementptr i8, ptr %0, i32 1436
  tail call void @mutex_lock(ptr noundef %120) #11
  %121 = getelementptr i8, ptr %0, i32 1472
  %122 = tail call zeroext i16 @axspi_read_reg(ptr noundef %121, i8 noundef zeroext 14) #11
  %123 = and i16 %122, -31
  %124 = or i16 %123, %119
  %125 = tail call i32 @axspi_write_reg(ptr noundef %121, i8 noundef zeroext 14, i16 noundef zeroext %124) #11
  tail call void @mutex_unlock(ptr noundef %120) #11
  br label %126

126:                                              ; preds = %118, %80, %73, %32
  %127 = tail call i32 @net_ratelimit() #11
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %131, label %129

129:                                              ; preds = %126
  %130 = load ptr, ptr %2, align 8
  tail call void @phy_print_status(ptr noundef %130) #11
  br label %131

131:                                              ; preds = %129, %126
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_register_netdev(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_attached_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_disconnect(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_mdiobus_alloc_size(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ax88796c_open(ptr noundef %0) #5 {
  %2 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 59
  %3 = load i32, ptr %2, align 8
  %4 = tail call i32 @request_threaded_irq(i32 noundef %3, ptr noundef nonnull @ax88796c_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %0, ptr noundef %0) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = load i32, ptr %2, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.16, i32 noundef %7, i32 noundef %4) #12
  br label %120

8:                                                ; preds = %1
  %9 = getelementptr i8, ptr %0, i32 1408
  %10 = getelementptr i8, ptr %0, i32 1436
  tail call void @mutex_lock(ptr noundef %10) #11
  %11 = tail call fastcc i32 @ax88796c_soft_reset(ptr noundef %9)
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = load i32, ptr %2, align 8
  %15 = tail call ptr @free_irq(i32 noundef %14, ptr noundef %0) #11
  tail call void @mutex_unlock(ptr noundef %10) #11
  br label %120

16:                                               ; preds = %8
  %17 = getelementptr i8, ptr %0, i32 1752
  store i16 31, ptr %17, align 4
  %18 = getelementptr i8, ptr %0, i32 1472
  %19 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 72
  %20 = load ptr, ptr %19, align 32
  %21 = getelementptr i8, ptr %20, i32 4
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i16
  %24 = shl nuw i16 %23, 8
  %25 = getelementptr i8, ptr %20, i32 5
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i16
  %28 = or i16 %24, %27
  %29 = tail call i32 @axspi_write_reg(ptr noundef %18, i8 noundef zeroext 98, i16 noundef zeroext %28) #11
  %30 = load ptr, ptr %19, align 32
  %31 = getelementptr i8, ptr %30, i32 2
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i16
  %34 = shl nuw i16 %33, 8
  %35 = getelementptr i8, ptr %30, i32 3
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i16
  %38 = or i16 %34, %37
  %39 = tail call i32 @axspi_write_reg(ptr noundef %18, i8 noundef zeroext 100, i16 noundef zeroext %38) #11
  %40 = load ptr, ptr %19, align 32
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i16
  %43 = shl nuw i16 %42, 8
  %44 = getelementptr i8, ptr %40, i32 1
  %45 = load i8, ptr %44, align 1
  %46 = zext i8 %45 to i16
  %47 = or i16 %43, %46
  %48 = tail call i32 @axspi_write_reg(ptr noundef %18, i8 noundef zeroext 102, i16 noundef zeroext %47) #11
  %49 = getelementptr i8, ptr %0, i32 1412
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.net_device, ptr %50, i32 0, i32 23
  %52 = load i64, ptr %51, align 16
  %53 = and i64 %52, 1099511627776
  %54 = icmp eq i64 %53, 0
  %55 = select i1 %54, i16 0, i16 797
  %56 = lshr exact i64 %53, 31
  %57 = trunc i64 %56 to i16
  %58 = tail call i32 @axspi_write_reg(ptr noundef %18, i8 noundef zeroext -110, i16 noundef zeroext %55) #11
  %59 = tail call i32 @axspi_write_reg(ptr noundef %18, i8 noundef zeroext -108, i16 noundef zeroext %57) #11
  %60 = load i64, ptr %51, align 16
  %61 = and i64 %60, 8
  %62 = icmp eq i64 %61, 0
  %63 = select i1 %62, i16 0, i16 775
  %64 = lshr exact i64 %61, 2
  %65 = trunc i64 %64 to i16
  %66 = tail call i32 @axspi_write_reg(ptr noundef %18, i8 noundef zeroext -106, i16 noundef zeroext %63) #11
  %67 = tail call i32 @axspi_write_reg(ptr noundef %18, i8 noundef zeroext -104, i16 noundef zeroext %65) #11
  %68 = tail call zeroext i16 @axspi_read_reg(ptr noundef %18, i8 noundef zeroext 48) #11
  %69 = and i16 %68, 32767
  %70 = tail call i32 @axspi_write_reg(ptr noundef %18, i8 noundef zeroext 48, i16 noundef zeroext %69) #11
  %71 = tail call i32 @axspi_write_reg(ptr noundef %18, i8 noundef zeroext 34, i16 noundef zeroext 1) #11
  %72 = tail call zeroext i16 @axspi_read_reg(ptr noundef %18, i8 noundef zeroext 4) #11
  %73 = or i16 %72, -13824
  %74 = tail call i32 @axspi_write_reg(ptr noundef %18, i8 noundef zeroext 4, i16 noundef zeroext %73) #11
  %75 = tail call i32 @axspi_write_reg(ptr noundef %18, i8 noundef zeroext 76, i16 noundef zeroext 773) #11
  %76 = tail call zeroext i16 @axspi_read_reg(ptr noundef %18, i8 noundef zeroext 78) #11
  %77 = and i16 %76, -256
  %78 = or i16 %77, 9
  %79 = tail call i32 @axspi_write_reg(ptr noundef %18, i8 noundef zeroext 78, i16 noundef zeroext %78) #11
  %80 = tail call i32 @axspi_write_reg(ptr noundef %18, i8 noundef zeroext 68, i16 noundef zeroext 4096) #11
  %81 = tail call i32 @axspi_write_reg(ptr noundef %18, i8 noundef zeroext 8, i16 noundef zeroext 256) #11
  tail call void @mutex_unlock(ptr noundef %10) #11
  %82 = getelementptr i8, ptr %0, i32 1744
  %83 = load ptr, ptr %82, align 4
  tail call void @phy_support_asym_pause(ptr noundef %83) #11
  %84 = load ptr, ptr %82, align 4
  %85 = getelementptr inbounds %struct.phy_device, ptr %84, i32 0, i32 17
  %86 = load volatile i32, ptr %85, align 4
  %87 = and i32 %86, 8192
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %16
  %90 = load volatile i32, ptr %85, align 4
  %91 = and i32 %90, 16384
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %89, %16
  br label %94

94:                                               ; preds = %93, %89
  %95 = phi i32 [ 4, %93 ], [ 0, %89 ]
  %96 = load volatile i32, ptr %85, align 4
  %97 = lshr i32 %96, 13
  %98 = and i32 %97, 1
  %99 = or i32 %98, %95
  %100 = load volatile i32, ptr %85, align 4
  %101 = lshr i32 %100, 13
  %102 = load volatile i32, ptr %85, align 4
  %103 = lshr i32 %102, 14
  %104 = xor i32 %103, %101
  %105 = shl nuw nsw i32 %104, 1
  %106 = and i32 %105, 2
  %107 = or i32 %99, %106
  %108 = getelementptr i8, ptr %0, i32 1784
  store i32 %107, ptr %108, align 4
  %109 = load ptr, ptr %49, align 4
  %110 = getelementptr inbounds %struct.net_device, ptr %109, i32 0, i32 120
  %111 = load ptr, ptr %110, align 8
  tail call void @phy_start(ptr noundef %111) #11
  %112 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  %113 = load ptr, ptr %112, align 64
  %114 = getelementptr inbounds %struct.netdev_queue, ptr %113, i32 0, i32 12
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %114) #11
  %115 = getelementptr i8, ptr %0, i32 1476
  %116 = getelementptr i8, ptr %0, i32 1484
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(56) %116, i8 0, i32 40, i1 false) #11
  store volatile ptr %115, ptr %115, align 4
  %117 = getelementptr i8, ptr %0, i32 1480
  store ptr %115, ptr %117, align 4
  %118 = getelementptr i8, ptr %0, i32 1524
  store volatile ptr %118, ptr %118, align 4
  %119 = getelementptr i8, ptr %0, i32 1528
  store ptr %118, ptr %119, align 4
  br label %120

120:                                              ; preds = %94, %13, %6
  %121 = phi i32 [ %4, %6 ], [ %11, %13 ], [ 0, %94 ]
  ret i32 %121
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ax88796c_close(ptr noundef %0) #5 {
  %2 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %3 = load ptr, ptr %2, align 8
  tail call void @phy_stop(ptr noundef %3) #11
  %4 = getelementptr i8, ptr %0, i32 1436
  tail call void @mutex_lock(ptr noundef %4) #11
  %5 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  %6 = load ptr, ptr %5, align 64
  %7 = getelementptr inbounds %struct.netdev_queue, ptr %6, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %7) #11
  %8 = getelementptr i8, ptr %0, i32 1792
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %8) #11
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %8) #11
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %8) #11
  %9 = getelementptr i8, ptr %0, i32 1472
  %10 = tail call i32 @axspi_write_reg(ptr noundef %9, i8 noundef zeroext 8, i16 noundef zeroext -1) #11
  %11 = getelementptr i8, ptr %0, i32 1456
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %11
  %14 = icmp eq ptr %12, null
  %15 = or i1 %13, %14
  br i1 %15, label %30, label %16

16:                                               ; preds = %1
  %17 = getelementptr i8, ptr %0, i32 1464
  br label %18

18:                                               ; preds = %18, %16
  %19 = phi ptr [ %12, %16 ], [ %26, %18 ]
  %20 = load i32, ptr %17, align 4
  %21 = add i32 %20, -1
  store volatile i32 %21, ptr %17, align 4
  %22 = load ptr, ptr %19, align 8
  %23 = getelementptr inbounds %struct.anon.41, ptr %19, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  store ptr null, ptr %23, align 4
  store ptr null, ptr %19, align 8
  %25 = getelementptr inbounds %struct.anon.41, ptr %22, i32 0, i32 1
  store volatile ptr %24, ptr %25, align 4
  store volatile ptr %22, ptr %24, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %19, i32 noundef 0) #11
  %26 = load ptr, ptr %11, align 4
  %27 = icmp eq ptr %26, %11
  %28 = icmp eq ptr %26, null
  %29 = or i1 %27, %28
  br i1 %29, label %30, label %18

30:                                               ; preds = %18, %1
  %31 = getelementptr i8, ptr %0, i32 1408
  %32 = tail call fastcc i32 @ax88796c_soft_reset(ptr noundef %31)
  tail call void @mutex_unlock(ptr noundef %4) #11
  %33 = getelementptr i8, ptr %0, i32 1420
  %34 = tail call zeroext i1 @cancel_work_sync(ptr noundef %33) #11
  %35 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 59
  %36 = load i32, ptr %35, align 8
  %37 = tail call ptr @free_irq(i32 noundef %36, ptr noundef %0) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ax88796c_start_xmit(ptr noundef %0, ptr noundef %1) #5 {
  %3 = getelementptr i8, ptr %1, i32 1456
  tail call void @skb_queue_tail(ptr noundef %3, ptr noundef %0) #11
  %4 = getelementptr i8, ptr %1, i32 1464
  %5 = load i32, ptr %4, align 4
  %6 = icmp ugt i32 %5, 45
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 87
  %9 = load ptr, ptr %8, align 64
  %10 = getelementptr inbounds %struct.netdev_queue, ptr %9, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %10) #11
  br label %11

11:                                               ; preds = %7, %2
  %12 = getelementptr i8, ptr %1, i32 1792
  tail call void @_set_bit(i32 noundef 1, ptr noundef %12) #11
  %13 = getelementptr i8, ptr %1, i32 1420
  %14 = load ptr, ptr @system_wq, align 4
  %15 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %14, ptr noundef %13) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ax88796c_ioctl(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ax88796c_get_stats64(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #5 {
  %3 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #13
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %5 = icmp ult i32 %3, %4
  br i1 %5, label %6, label %67

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %0, i32 1416
  %8 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %1, i32 0, i32 2
  %9 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %1, i32 0, i32 1
  %10 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %1, i32 0, i32 3
  br label %11

11:                                               ; preds = %43, %6
  %12 = phi i32 [ %3, %6 ], [ %64, %43 ]
  %13 = phi i32 [ 0, %6 ], [ %60, %43 ]
  %14 = phi i32 [ 0, %6 ], [ %63, %43 ]
  %15 = phi i32 [ 0, %6 ], [ %54, %43 ]
  %16 = phi i32 [ 0, %6 ], [ %57, %43 ]
  %17 = load ptr, ptr %7, align 4
  %18 = ptrtoint ptr %17 to i32
  %19 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, %18
  %22 = inttoptr i32 %21 to ptr
  %23 = getelementptr inbounds %struct.ax88796c_pcpu_stats, ptr %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.ax88796c_pcpu_stats, ptr %22, i32 0, i32 1
  %25 = getelementptr inbounds %struct.ax88796c_pcpu_stats, ptr %22, i32 0, i32 2
  %26 = getelementptr inbounds %struct.ax88796c_pcpu_stats, ptr %22, i32 0, i32 3
  br label %27

27:                                               ; preds = %35, %11
  %28 = load volatile i32, ptr %23, align 4
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %31, %27
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !16
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !17
  %32 = load volatile i32, ptr %23, align 4
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %31

35:                                               ; preds = %31, %27
  %36 = phi i32 [ %28, %27 ], [ %32, %31 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !18
  %37 = load i64, ptr %22, align 8
  %38 = load i64, ptr %24, align 8
  %39 = load i64, ptr %25, align 8
  %40 = load i64, ptr %26, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !19
  %41 = load volatile i32, ptr %23, align 4
  %42 = icmp eq i32 %41, %36
  br i1 %42, label %43, label %27

43:                                               ; preds = %35
  %44 = load i64, ptr %1, align 8
  %45 = add i64 %44, %37
  store i64 %45, ptr %1, align 8
  %46 = load i64, ptr %8, align 8
  %47 = add i64 %46, %38
  store i64 %47, ptr %8, align 8
  %48 = load i64, ptr %9, align 8
  %49 = add i64 %48, %39
  store i64 %49, ptr %9, align 8
  %50 = load i64, ptr %10, align 8
  %51 = add i64 %50, %40
  store i64 %51, ptr %10, align 8
  %52 = getelementptr inbounds %struct.ax88796c_pcpu_stats, ptr %22, i32 0, i32 5
  %53 = load i32, ptr %52, align 4
  %54 = add i32 %53, %15
  %55 = getelementptr inbounds %struct.ax88796c_pcpu_stats, ptr %22, i32 0, i32 6
  %56 = load i32, ptr %55, align 8
  %57 = add i32 %56, %16
  %58 = getelementptr inbounds %struct.ax88796c_pcpu_stats, ptr %22, i32 0, i32 7
  %59 = load i32, ptr %58, align 4
  %60 = add i32 %59, %13
  %61 = getelementptr inbounds %struct.ax88796c_pcpu_stats, ptr %22, i32 0, i32 8
  %62 = load i32, ptr %61, align 8
  %63 = add i32 %62, %14
  %64 = tail call i32 @cpumask_next(i32 noundef %12, ptr noundef nonnull @__cpu_possible_mask) #13
  %65 = load i32, ptr @nr_cpu_ids, align 4
  %66 = icmp ult i32 %64, %65
  br i1 %66, label %11, label %67

67:                                               ; preds = %43, %2
  %68 = phi i32 [ 0, %2 ], [ %57, %43 ]
  %69 = phi i32 [ 0, %2 ], [ %54, %43 ]
  %70 = phi i32 [ 0, %2 ], [ %63, %43 ]
  %71 = phi i32 [ 0, %2 ], [ %60, %43 ]
  %72 = zext i32 %69 to i64
  %73 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %1, i32 0, i32 6
  store i64 %72, ptr %73, align 8
  %74 = zext i32 %68 to i64
  %75 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %1, i32 0, i32 7
  store i64 %74, ptr %75, align 8
  %76 = zext i32 %71 to i64
  %77 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %1, i32 0, i32 13
  store i64 %76, ptr %77, align 8
  %78 = zext i32 %70 to i64
  %79 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %1, i32 0, i32 12
  store i64 %78, ptr %79, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ax88796c_set_features(ptr noundef %0, i64 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 23
  %4 = load i64, ptr %3, align 16
  %5 = xor i64 %4, %1
  %6 = and i64 %5, 1099511627784
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %29, label %8

8:                                                ; preds = %2
  store i64 %1, ptr %3, align 16
  %9 = getelementptr i8, ptr %0, i32 1412
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 23
  %12 = load i64, ptr %11, align 16
  %13 = and i64 %12, 1099511627776
  %14 = icmp eq i64 %13, 0
  %15 = getelementptr i8, ptr %0, i32 1472
  %16 = select i1 %14, i16 0, i16 797
  %17 = lshr exact i64 %13, 31
  %18 = trunc i64 %17 to i16
  %19 = tail call i32 @axspi_write_reg(ptr noundef %15, i8 noundef zeroext -110, i16 noundef zeroext %16) #11
  %20 = tail call i32 @axspi_write_reg(ptr noundef %15, i8 noundef zeroext -108, i16 noundef zeroext %18) #11
  %21 = load i64, ptr %11, align 16
  %22 = and i64 %21, 8
  %23 = icmp eq i64 %22, 0
  %24 = select i1 %23, i16 0, i16 775
  %25 = lshr exact i64 %22, 2
  %26 = trunc i64 %25 to i16
  %27 = tail call i32 @axspi_write_reg(ptr noundef %15, i8 noundef zeroext -106, i16 noundef zeroext %24) #11
  %28 = tail call i32 @axspi_write_reg(ptr noundef %15, i8 noundef zeroext -104, i16 noundef zeroext %26) #11
  br label %29

29:                                               ; preds = %8, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ax88796c_interrupt(i32 noundef %0, ptr noundef %1) #5 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %0) #12
  br label %11

6:                                                ; preds = %2
  tail call void @disable_irq_nosync(i32 noundef %0) #11
  %7 = getelementptr i8, ptr %1, i32 1792
  tail call void @_set_bit(i32 noundef 0, ptr noundef %7) #11
  %8 = getelementptr i8, ptr %1, i32 1420
  %9 = load ptr, ptr @system_wq, align 4
  %10 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %9, ptr noundef %8) #11
  br label %11

11:                                               ; preds = %6, %4
  %12 = phi i32 [ 1, %6 ], [ 0, %4 ]
  ret i32 %12
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_support_asym_pause(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @axspi_read_reg(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_ethdev_address(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @axspi_write_reg(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_mac_interrupt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @axspi_read_rxq(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___pskb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx_ni(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @axspi_write_txq(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_unlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_print_status(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #10

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { nounwind readonly }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readonly willreturn }
attributes #14 = { nounwind readnone }

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
!9 = !{!"auto-init"}
!10 = !{i64 7455539}
!11 = !{i64 633858, i64 633919}
!12 = !{i64 652558}
!13 = !{i64 636875}
!14 = !{i64 2149794178}
!15 = !{i64 2149794479}
!16 = !{i64 2150361443}
!17 = !{i64 2150361285}
!18 = !{i64 2150361587}
!19 = !{i64 2149793879}
