; ModuleID = '/llk/IR/drivers/net/ethernet/micrel/ks8851_common.c_pt.bc'
source_filename = "../drivers/net/ethernet/micrel/ks8851_common.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ks8851_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22ks8851_suspend\22\09\09\09\09\09"
module asm "__kstrtabns_ks8851_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ks8851_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22ks8851_resume\22\09\09\09\09\09"
module asm "__kstrtabns_ks8851_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ks8851_probe_common:\09\09\09\09\09"
module asm "\09.asciz \09\22ks8851_probe_common\22\09\09\09\09\09"
module asm "__kstrtabns_ks8851_probe_common:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ks8851_remove_common:\09\09\09\09\09"
module asm "\09.asciz \09\22ks8851_remove_common\22\09\09\09\09\09"
module asm "__kstrtabns_ks8851_remove_common:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.netdev_queue = type { ptr, %struct.netdevice_tracker, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, [4 x i8], %struct.spinlock, i32, i32, i32, [48 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [52 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [24 x i8] }
%struct.ks8851_net = type { ptr, %struct.spinlock, [56 x i8], %union.ks8851_tx_hdr, [8 x i8], [8 x i8], [42 x i8], i32, i16, i8, i16, i16, i16, %struct.mii_if_info, %struct.ks8851_rxctrl, %struct.work_struct, %struct.sk_buff_head, %struct.eeprom_93cx6, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [24 x i8] }
%union.ks8851_tx_hdr = type { [3 x i16] }
%struct.mii_if_info = type { i32, i32, i32, i32, i8, ptr, ptr, ptr }
%struct.ks8851_rxctrl = type { [4 x i16], i16, i16 }
%struct.sk_buff_head = type { %union.anon.115, i32, %struct.spinlock }
%union.anon.115 = type { %struct.anon.116 }
%struct.anon.116 = type { ptr, ptr }
%struct.eeprom_93cx6 = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8 }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32 }
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
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_eeprom = type { i32, i32, i32, i32, [0 x i8] }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.ifreq = type { %union.anon.98, %union.anon.99 }
%union.anon.98 = type { [16 x i8] }
%union.anon.99 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }

@__kstrtab_ks8851_suspend = external dso_local constant [0 x i8], align 1
@__kstrtabns_ks8851_suspend = external dso_local constant [0 x i8], align 1
@__ksymtab_ks8851_suspend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ks8851_suspend to i32), ptr @__kstrtab_ks8851_suspend, ptr @__kstrtabns_ks8851_suspend }, section "___ksymtab_gpl+ks8851_suspend", align 4
@__kstrtab_ks8851_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_ks8851_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_ks8851_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ks8851_resume to i32), ptr @__kstrtab_ks8851_resume, ptr @__kstrtabns_ks8851_resume }, section "___ksymtab_gpl+ks8851_resume", align 4
@.str = private unnamed_addr constant [12 x i8] c"reset-gpios\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"ks8851_rst_n\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"reset gpio request failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"vdd-io\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"regulator vdd_io enable fail: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"vdd\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"regulator vdd enable fail: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"message enable is %d\0A\00", align 1
@ks8851_ethtool_ops = internal constant %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @ks8851_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr @ks8851_get_msglevel, ptr @ks8851_set_msglevel, ptr @ks8851_nway_reset, ptr @ks8851_get_link, ptr null, ptr @ks8851_get_eeprom_len, ptr @ks8851_get_eeprom, ptr @ks8851_set_eeprom, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ks8851_get_link_ksettings, ptr @ks8851_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@ks8851_netdev_ops = internal constant %struct.net_device_ops { ptr null, ptr null, ptr @ks8851_net_open, ptr @ks8851_net_stop, ptr @ks8851_start_xmit, ptr null, ptr null, ptr null, ptr @ks8851_set_rx_mode, ptr @ks8851_set_mac_address, ptr @eth_validate_addr, ptr null, ptr @ks8851_net_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.8 = private unnamed_addr constant [26 x i8] c"failed to read device ID\0A\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"failed to register network device\0A\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"revision %d, MAC %pM, IRQ %d, %s EEPROM\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"has\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@__kstrtab_ks8851_probe_common = external dso_local constant [0 x i8], align 1
@__kstrtabns_ks8851_probe_common = external dso_local constant [0 x i8], align 1
@__ksymtab_ks8851_probe_common = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ks8851_probe_common to i32), ptr @__kstrtab_ks8851_probe_common, ptr @__kstrtabns_ks8851_probe_common }, section "___ksymtab_gpl+ks8851_probe_common", align 4
@.str.13 = private unnamed_addr constant [8 x i8] c"remove\0A\00", align 1
@__kstrtab_ks8851_remove_common = external dso_local constant [0 x i8], align 1
@__kstrtabns_ks8851_remove_common = external dso_local constant [0 x i8], align 1
@__ksymtab_ks8851_remove_common = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ks8851_remove_common to i32), ptr @__kstrtab_ks8851_remove_common, ptr @__kstrtabns_ks8851_remove_common }, section "___ksymtab_gpl+ks8851_remove_common", align 4
@__UNIQUE_ID_description333 = internal constant [48 x i8] c"ks8851_common.description=KS8851 Network driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author334 = internal constant [50 x i8] c"ks8851_common.author=Ben Dooks <ben@simtec.co.uk>\00", section ".modinfo", align 1
@__UNIQUE_ID_file335 = internal constant [61 x i8] c"ks8851_common.file=drivers/net/ethernet/micrel/ks8851_common\00", section ".modinfo", align 1
@__UNIQUE_ID_license336 = internal constant [26 x i8] c"ks8851_common.license=GPL\00", section ".modinfo", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"shutting down\0A\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"failed to get irq\0A\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"%s: spi bus error\0A\00", align 1
@__func__.ks8851_irq = private unnamed_addr constant [11 x i8] c"ks8851_irq\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"ks8851_eth_mii\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"KS8851\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"1.00\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.21 = private unnamed_addr constant [30 x i8] c"Memory selftest not finished\0A\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"TX memory selftest fail\0A\00", align 1
@.str.23 = private unnamed_addr constant [25 x i8] c"RX memory selftest fail\0A\00", align 1
@.str.24 = private unnamed_addr constant [30 x i8] c"invalid mac address read %pM\0A\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_author334, ptr @__UNIQUE_ID_description333, ptr @__UNIQUE_ID_file335, ptr @__UNIQUE_ID_license336, ptr @__ksymtab_ks8851_probe_common, ptr @__ksymtab_ks8851_remove_common, ptr @__ksymtab_ks8851_resume, ptr @__ksymtab_ks8851_suspend], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ks8851_suspend(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 64
  %5 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 6
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  tail call void @netif_device_detach(ptr noundef %4) #13
  %10 = tail call i32 @ks8851_net_stop(ptr noundef %4)
  br label %11

11:                                               ; preds = %9, %1
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ks8851_net_stop(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr i8, ptr %0, i32 1408
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #13
  store i32 0, ptr %2, align 4, !annotation !8
  %4 = getelementptr i8, ptr %0, i32 1536
  %5 = load i32, ptr %4, align 64
  %6 = and i32 %5, 16
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %0, ptr noundef nonnull @.str.14) #14
  br label %9

9:                                                ; preds = %8, %1
  %10 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  %11 = load ptr, ptr %10, align 64
  %12 = getelementptr inbounds %struct.netdev_queue, ptr %11, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %12) #13
  %13 = getelementptr i8, ptr %0, i32 1668
  %14 = load ptr, ptr %13, align 4
  call void %14(ptr noundef %3, ptr noundef nonnull %2) #13
  %15 = getelementptr i8, ptr %0, i32 1680
  %16 = load ptr, ptr %15, align 16
  call void %16(ptr noundef %3, i32 noundef 144, i32 noundef 0) #13
  %17 = load ptr, ptr %15, align 16
  call void %17(ptr noundef %3, i32 noundef 146, i32 noundef 65535) #13
  %18 = getelementptr i8, ptr %0, i32 1672
  %19 = load ptr, ptr %18, align 8
  call void %19(ptr noundef %3, ptr noundef nonnull %2) #13
  %20 = getelementptr i8, ptr %0, i32 1700
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %9
  call void %21(ptr noundef %3) #13
  br label %24

24:                                               ; preds = %23, %9
  %25 = getelementptr i8, ptr %0, i32 1596
  %26 = call zeroext i1 @flush_work(ptr noundef %25) #13
  %27 = load ptr, ptr %13, align 4
  call void %27(ptr noundef %3, ptr noundef nonnull %2) #13
  %28 = load ptr, ptr %15, align 16
  call void %28(ptr noundef %3, i32 noundef 116, i32 noundef 0) #13
  %29 = load ptr, ptr %15, align 16
  call void %29(ptr noundef %3, i32 noundef 112, i32 noundef 0) #13
  %30 = getelementptr i8, ptr %0, i32 1676
  %31 = load ptr, ptr %30, align 4
  %32 = call i32 %31(ptr noundef %3, i32 noundef 212) #13
  %33 = and i32 %32, -4
  %34 = or i32 %33, 2
  %35 = load ptr, ptr %15, align 16
  call void %35(ptr noundef %3, i32 noundef 212, i32 noundef %34) #13
  %36 = load ptr, ptr %18, align 8
  call void %36(ptr noundef %3, ptr noundef nonnull %2) #13
  %37 = getelementptr i8, ptr %0, i32 1612
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, %37
  br i1 %39, label %44, label %40

40:                                               ; preds = %40, %24
  %41 = call ptr @skb_dequeue(ptr noundef %37) #13
  call void @consume_skb(ptr noundef %41) #13
  %42 = load ptr, ptr %37, align 4
  %43 = icmp eq ptr %42, %37
  br i1 %43, label %44, label %40

44:                                               ; preds = %40, %24
  %45 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 59
  %46 = load i32, ptr %45, align 8
  %47 = call ptr @free_irq(i32 noundef %46, ptr noundef %3) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #13
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ks8851_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 64
  %5 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 6
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = tail call i32 @ks8851_net_open(ptr noundef %4)
  tail call void @netif_device_attach(ptr noundef %4) #13
  br label %11

11:                                               ; preds = %9, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ks8851_net_open(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr i8, ptr %0, i32 1408
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #13
  store i32 0, ptr %2, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 59
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 @request_threaded_irq(i32 noundef %5, ptr noundef null, ptr noundef nonnull @ks8851_irq, i32 noundef 8200, ptr noundef %0, ptr noundef %3) #13
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.15) #14
  br label %45

9:                                                ; preds = %1
  %10 = getelementptr i8, ptr %0, i32 1668
  %11 = load ptr, ptr %10, align 4
  call void %11(ptr noundef %3, ptr noundef nonnull %2) #13
  %12 = getelementptr i8, ptr %0, i32 1676
  %13 = load ptr, ptr %12, align 4
  %14 = call i32 %13(ptr noundef %3, i32 noundef 212) #13
  %15 = and i32 %14, -4
  %16 = getelementptr i8, ptr %0, i32 1680
  %17 = load ptr, ptr %16, align 16
  call void %17(ptr noundef %3, i32 noundef 212, i32 noundef %15) #13
  %18 = load ptr, ptr %16, align 16
  call void %18(ptr noundef %3, i32 noundef 38, i32 noundef 2) #13
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %19(i32 noundef 214748000) #13
  %20 = load ptr, ptr %16, align 16
  call void %20(ptr noundef %3, i32 noundef 38, i32 noundef 0) #13
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %21(i32 noundef 214748000) #13
  %22 = load ptr, ptr %16, align 16
  call void %22(ptr noundef %3, i32 noundef 112, i32 noundef 15) #13
  %23 = load ptr, ptr %16, align 16
  call void %23(ptr noundef %3, i32 noundef 132, i32 noundef 16384) #13
  %24 = load ptr, ptr %16, align 16
  call void %24(ptr noundef %3, i32 noundef 116, i32 noundef 3233) #13
  %25 = load ptr, ptr %16, align 16
  call void %25(ptr noundef %3, i32 noundef 118, i32 noundef 128) #13
  %26 = load ptr, ptr %16, align 16
  call void %26(ptr noundef %3, i32 noundef 140, i32 noundef 1000) #13
  %27 = load ptr, ptr %16, align 16
  call void %27(ptr noundef %3, i32 noundef 142, i32 noundef 4096) #13
  %28 = load ptr, ptr %16, align 16
  call void %28(ptr noundef %3, i32 noundef 156, i32 noundef 10) #13
  %29 = getelementptr i8, ptr %0, i32 1546
  store i16 224, ptr %29, align 2
  %30 = load ptr, ptr %16, align 16
  call void %30(ptr noundef %3, i32 noundef 130, i32 noundef 224) #13
  %31 = getelementptr i8, ptr %0, i32 1544
  %32 = load i16, ptr %31, align 8
  %33 = zext i16 %32 to i32
  %34 = load ptr, ptr %16, align 16
  call void %34(ptr noundef %3, i32 noundef 146, i32 noundef %33) #13
  %35 = load i16, ptr %31, align 8
  %36 = zext i16 %35 to i32
  %37 = load ptr, ptr %16, align 16
  call void %37(ptr noundef %3, i32 noundef 144, i32 noundef %36) #13
  %38 = load ptr, ptr %3, align 64
  %39 = getelementptr inbounds %struct.net_device, ptr %38, i32 0, i32 87
  %40 = load ptr, ptr %39, align 64
  %41 = getelementptr inbounds %struct.netdev_queue, ptr %40, i32 0, i32 12
  call void @_clear_bit(i32 noundef 0, ptr noundef %41) #13
  %42 = getelementptr i8, ptr %0, i32 1672
  %43 = load ptr, ptr %42, align 8
  call void %43(ptr noundef %3, ptr noundef nonnull %2) #13
  %44 = getelementptr i8, ptr %0, i32 1552
  call void @mii_check_link(ptr noundef %44) #13
  br label %45

45:                                               ; preds = %9, %8
  %46 = phi i32 [ %6, %8 ], [ 0, %9 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #13
  ret i32 %46
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ks8851_probe_common(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 1408
  store ptr %0, ptr %4, align 64
  %5 = getelementptr i8, ptr %0, i32 1540
  store i16 6144, ptr %5, align 4
  %6 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 25
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 @of_get_named_gpio_flags(ptr noundef %7, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef null) #13
  %9 = icmp eq i32 %8, -517
  br i1 %9, label %121, label %10

10:                                               ; preds = %3
  %11 = getelementptr i8, ptr %0, i32 1660
  store i32 %8, ptr %11, align 4
  %12 = icmp ult i32 %8, 2048
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = tail call i32 @devm_gpio_request_one(ptr noundef %1, i32 noundef %8, i32 noundef 0, ptr noundef nonnull @.str.1) #13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.2) #14
  br label %121

17:                                               ; preds = %13, %10
  %18 = tail call ptr @devm_regulator_get(ptr noundef %1, ptr noundef nonnull @.str.3) #13
  %19 = getelementptr i8, ptr %0, i32 1656
  store ptr %18, ptr %19, align 8
  %20 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = ptrtoint ptr %18 to i32
  br label %121

23:                                               ; preds = %17
  %24 = tail call i32 @regulator_enable(ptr noundef %18) #13
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.4, i32 noundef %24) #14
  br label %121

27:                                               ; preds = %23
  %28 = tail call ptr @devm_regulator_get(ptr noundef %1, ptr noundef nonnull @.str.5) #13
  %29 = getelementptr i8, ptr %0, i32 1652
  store ptr %28, ptr %29, align 4
  %30 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = ptrtoint ptr %28 to i32
  br label %117

33:                                               ; preds = %27
  %34 = tail call i32 @regulator_enable(ptr noundef %28) #13
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.6, i32 noundef %34) #14
  br label %117

37:                                               ; preds = %33
  br i1 %12, label %38, label %40

38:                                               ; preds = %37
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #13
  %39 = tail call ptr @gpio_to_desc(i32 noundef %8) #13
  tail call void @gpiod_set_raw_value(ptr noundef %39, i32 noundef 1) #13
  br label %40

40:                                               ; preds = %38, %37
  %41 = getelementptr i8, ptr %0, i32 1412
  store i32 0, ptr %41, align 4
  %42 = getelementptr i8, ptr %0, i32 1596
  store i32 -32, ptr %42, align 4
  %43 = getelementptr i8, ptr %0, i32 1600
  store volatile ptr %43, ptr %43, align 4
  %44 = getelementptr i8, ptr %0, i32 1604
  store ptr %43, ptr %44, align 4
  %45 = getelementptr i8, ptr %0, i32 1608
  store ptr @ks8851_rxctrl_work, ptr %45, align 4
  %46 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 111, i32 1
  store ptr %1, ptr %46, align 4
  %47 = getelementptr i8, ptr %0, i32 1628
  store ptr %4, ptr %47, align 4
  %48 = getelementptr i8, ptr %0, i32 1640
  store i32 6, ptr %48, align 4
  %49 = getelementptr i8, ptr %0, i32 1632
  store ptr @ks8851_eeprom_regread, ptr %49, align 4
  %50 = getelementptr i8, ptr %0, i32 1636
  store ptr @ks8851_eeprom_regwrite, ptr %50, align 4
  %51 = getelementptr i8, ptr %0, i32 1552
  %52 = getelementptr i8, ptr %0, i32 1572
  store ptr %0, ptr %52, align 4
  store i32 1, ptr %51, align 16
  %53 = getelementptr i8, ptr %0, i32 1560
  store i32 1, ptr %53, align 8
  %54 = getelementptr i8, ptr %0, i32 1564
  store i32 15, ptr %54, align 4
  %55 = getelementptr i8, ptr %0, i32 1576
  store ptr @ks8851_phy_read, ptr %55, align 8
  %56 = getelementptr i8, ptr %0, i32 1580
  store ptr @ks8851_phy_write, ptr %56, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.7, i32 noundef %2) #14
  %57 = tail call fastcc i32 @ks8851_register_mdiobus(ptr noundef %4, ptr noundef %1)
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %110

59:                                               ; preds = %40
  %60 = icmp ugt i32 %2, 31
  br i1 %60, label %66, label %61

61:                                               ; preds = %59
  %62 = icmp eq i32 %2, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %61
  %64 = shl nsw i32 -1, %2
  %65 = xor i32 %64, -1
  br label %66

66:                                               ; preds = %63, %61, %59
  %67 = phi i32 [ %65, %63 ], [ 7, %59 ], [ 0, %61 ]
  %68 = getelementptr i8, ptr %0, i32 1536
  store i32 %67, ptr %68, align 64
  %69 = getelementptr i8, ptr %0, i32 1612
  %70 = getelementptr i8, ptr %0, i32 1624
  store i32 0, ptr %70, align 4
  store ptr %69, ptr %69, align 4
  %71 = getelementptr i8, ptr %0, i32 1616
  store ptr %69, ptr %71, align 4
  %72 = getelementptr i8, ptr %0, i32 1620
  store i32 0, ptr %72, align 4
  %73 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 42
  store ptr @ks8851_ethtool_ops, ptr %73, align 8
  %74 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  store ptr %4, ptr %74, align 8
  %75 = load ptr, ptr %4, align 64
  tail call void @netif_carrier_off(ptr noundef %75) #13
  %76 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 47
  store i8 4, ptr %76, align 2
  %77 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 16
  store ptr @ks8851_netdev_ops, ptr %77, align 8
  %78 = getelementptr i8, ptr %0, i32 1680
  %79 = load ptr, ptr %78, align 16
  tail call void %79(ptr noundef %4, i32 noundef 38, i32 noundef 1) #13
  %80 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %80(i32 noundef 214748000) #13
  %81 = load ptr, ptr %78, align 16
  tail call void %81(ptr noundef %4, i32 noundef 38, i32 noundef 0) #13
  %82 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %82(i32 noundef 214748000) #13
  %83 = getelementptr i8, ptr %0, i32 1676
  %84 = load ptr, ptr %83, align 4
  %85 = tail call i32 %84(ptr noundef %4, i32 noundef 192) #13
  %86 = and i32 %85, -15
  %87 = icmp eq i32 %86, 34928
  br i1 %87, label %88, label %107

88:                                               ; preds = %66
  %89 = load ptr, ptr %83, align 4
  %90 = tail call i32 %89(ptr noundef %4, i32 noundef 8) #13
  %91 = trunc i32 %90 to i16
  %92 = getelementptr i8, ptr %0, i32 1548
  store i16 %91, ptr %92, align 4
  tail call fastcc void @ks8851_read_selftest(ptr noundef %4)
  %93 = load ptr, ptr %6, align 8
  tail call fastcc void @ks8851_init_mac(ptr noundef %4, ptr noundef %93)
  %94 = tail call i32 @register_netdev(ptr noundef %0) #13
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %107

96:                                               ; preds = %88
  %97 = lshr i32 %85, 1
  %98 = and i32 %97, 7
  %99 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 72
  %100 = load ptr, ptr %99, align 32
  %101 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 59
  %102 = load i32, ptr %101, align 8
  %103 = load i16, ptr %92, align 4
  %104 = and i16 %103, 512
  %105 = icmp eq i16 %104, 0
  %106 = select i1 %105, ptr @.str.12, ptr @.str.11
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef %98, ptr noundef %100, i32 noundef %102, ptr noundef nonnull %106) #14
  br label %121

107:                                              ; preds = %88, %66
  %108 = phi ptr [ @.str.8, %66 ], [ @.str.9, %88 ]
  %109 = phi i32 [ -19, %66 ], [ %94, %88 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull %108) #14
  tail call fastcc void @ks8851_unregister_mdiobus(ptr noundef %4)
  br label %110

110:                                              ; preds = %107, %40
  %111 = phi i32 [ %57, %40 ], [ %109, %107 ]
  br i1 %12, label %112, label %114

112:                                              ; preds = %110
  %113 = tail call ptr @gpio_to_desc(i32 noundef %8) #13
  tail call void @gpiod_set_raw_value(ptr noundef %113, i32 noundef 0) #13
  br label %114

114:                                              ; preds = %112, %110
  %115 = load ptr, ptr %29, align 4
  %116 = tail call i32 @regulator_disable(ptr noundef %115) #13
  br label %117

117:                                              ; preds = %114, %36, %31
  %118 = phi i32 [ %32, %31 ], [ %34, %36 ], [ %111, %114 ]
  %119 = load ptr, ptr %19, align 8
  %120 = tail call i32 @regulator_disable(ptr noundef %119) #13
  br label %121

121:                                              ; preds = %117, %96, %26, %21, %16, %3
  %122 = phi i32 [ %14, %16 ], [ 0, %96 ], [ -517, %3 ], [ %22, %21 ], [ %24, %26 ], [ %118, %117 ]
  ret i32 %122
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_named_gpio_flags(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpio_request_one(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ks8851_rxctrl_work(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr i8, ptr %0, i32 -188
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #13
  store i32 0, ptr %2, align 4, !annotation !8
  %4 = getelementptr i8, ptr %0, i32 72
  %5 = load ptr, ptr %4, align 4
  call void %5(ptr noundef %3, ptr noundef nonnull %2) #13
  %6 = getelementptr i8, ptr %0, i32 84
  %7 = load ptr, ptr %6, align 16
  call void %7(ptr noundef %3, i32 noundef 116, i32 noundef 0) #13
  %8 = getelementptr i8, ptr %0, i32 76
  %9 = load ptr, ptr %8, align 8
  call void %9(ptr noundef %3, ptr noundef nonnull %2) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ks8851_eeprom_regread(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.ks8851_net, ptr %2, i32 0, i32 24
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 %4(ptr noundef %2, i32 noundef 34) #13
  %6 = trunc i32 %5 to i8
  %7 = lshr i8 %6, 3
  %8 = and i8 %7, 1
  %9 = getelementptr inbounds %struct.eeprom_93cx6, ptr %0, i32 0, i32 6
  store i8 %8, ptr %9, align 2
  %10 = lshr i8 %6, 1
  %11 = and i8 %10, 1
  %12 = getelementptr inbounds %struct.eeprom_93cx6, ptr %0, i32 0, i32 7
  store i8 %11, ptr %12, align 1
  %13 = and i8 %6, 1
  %14 = getelementptr inbounds %struct.eeprom_93cx6, ptr %0, i32 0, i32 8
  store i8 %13, ptr %14, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ks8851_eeprom_regwrite(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.eeprom_93cx6, ptr %0, i32 0, i32 4
  %4 = load i8, ptr %3, align 4
  %5 = icmp eq i8 %4, 0
  %6 = select i1 %5, i32 16, i32 48
  %7 = getelementptr inbounds %struct.eeprom_93cx6, ptr %0, i32 0, i32 5
  %8 = load i8, ptr %7, align 1
  %9 = icmp eq i8 %8, 0
  %10 = or i32 %6, 4
  %11 = select i1 %9, i32 %6, i32 %10
  %12 = getelementptr inbounds %struct.eeprom_93cx6, ptr %0, i32 0, i32 7
  %13 = load i8, ptr %12, align 1
  %14 = icmp eq i8 %13, 0
  %15 = or i32 %11, 2
  %16 = select i1 %14, i32 %11, i32 %15
  %17 = getelementptr inbounds %struct.eeprom_93cx6, ptr %0, i32 0, i32 8
  %18 = load i8, ptr %17, align 4
  %19 = icmp ne i8 %18, 0
  %20 = zext i1 %19 to i32
  %21 = or i32 %16, %20
  %22 = getelementptr inbounds %struct.ks8851_net, ptr %2, i32 0, i32 25
  %23 = load ptr, ptr %22, align 16
  tail call void %23(ptr noundef %2, i32 noundef 34, i32 noundef %21) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ks8851_phy_read(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = icmp ult i32 %2, 6
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  br label %19

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %0, i32 1408
  %9 = shl i32 %2, 1
  %10 = add i32 %9, 228
  %11 = getelementptr i8, ptr %0, i32 1668
  %12 = load ptr, ptr %11, align 4
  call void %12(ptr noundef %8, ptr noundef nonnull %4) #13
  %13 = getelementptr i8, ptr %0, i32 1676
  %14 = load ptr, ptr %13, align 4
  %15 = call i32 %14(ptr noundef %8, i32 noundef %10) #13
  %16 = getelementptr i8, ptr %0, i32 1672
  %17 = load ptr, ptr %16, align 8
  call void %17(ptr noundef %8, ptr noundef nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  %18 = icmp slt i32 %15, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %7, %6
  br label %20

20:                                               ; preds = %19, %7
  %21 = phi i32 [ 0, %19 ], [ %15, %7 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ks8851_phy_write(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store i32 0, ptr %5, align 4, !annotation !8
  %6 = icmp ult i32 %2, 6
  br i1 %6, label %7, label %17

7:                                                ; preds = %4
  %8 = getelementptr i8, ptr %0, i32 1408
  %9 = shl i32 %2, 1
  %10 = add i32 %9, 228
  %11 = getelementptr i8, ptr %0, i32 1668
  %12 = load ptr, ptr %11, align 4
  call void %12(ptr noundef %8, ptr noundef nonnull %5) #13
  %13 = getelementptr i8, ptr %0, i32 1680
  %14 = load ptr, ptr %13, align 16
  call void %14(ptr noundef %8, i32 noundef %10, i32 noundef %3) #13
  %15 = getelementptr i8, ptr %0, i32 1672
  %16 = load ptr, ptr %15, align 8
  call void %16(ptr noundef %8, ptr noundef nonnull %5) #13
  br label %17

17:                                               ; preds = %7, %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ks8851_register_mdiobus(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @mdiobus_alloc_size(i32 noundef 0) #13
  %4 = icmp eq ptr %3, null
  br i1 %4, label %26, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.mii_bus, ptr %3, i32 0, i32 1
  store ptr @.str.17, ptr %6, align 4
  %7 = getelementptr inbounds %struct.mii_bus, ptr %3, i32 0, i32 4
  store ptr @ks8851_mdio_read, ptr %7, align 4
  %8 = getelementptr inbounds %struct.mii_bus, ptr %3, i32 0, i32 5
  store ptr @ks8851_mdio_write, ptr %8, align 8
  %9 = getelementptr inbounds %struct.mii_bus, ptr %3, i32 0, i32 3
  store ptr %0, ptr %9, align 8
  %10 = getelementptr inbounds %struct.mii_bus, ptr %3, i32 0, i32 9
  store ptr %1, ptr %10, align 4
  %11 = getelementptr inbounds %struct.mii_bus, ptr %3, i32 0, i32 13
  store i32 -2, ptr %11, align 8
  %12 = getelementptr inbounds %struct.mii_bus, ptr %3, i32 0, i32 2
  %13 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %5
  %17 = load ptr, ptr %1, align 4
  br label %18

18:                                               ; preds = %16, %5
  %19 = phi ptr [ %17, %16 ], [ %14, %5 ]
  %20 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %12, i32 noundef 61, ptr noundef nonnull @.str.18, ptr noundef %19)
  %21 = tail call i32 @__mdiobus_register(ptr noundef nonnull %3, ptr noundef null) #13
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.ks8851_net, ptr %0, i32 0, i32 21
  store ptr %3, ptr %24, align 64
  br label %26

25:                                               ; preds = %18
  tail call void @mdiobus_free(ptr noundef nonnull %3) #13
  br label %26

26:                                               ; preds = %25, %23, %2
  %27 = phi i32 [ %21, %25 ], [ 0, %23 ], [ -12, %2 ]
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ks8851_read_selftest(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ks8851_net, ptr %0, i32 0, i32 24
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 %3(ptr noundef %0, i32 noundef 36) #13
  %5 = and i32 %4, 4112
  %6 = icmp eq i32 %5, 4112
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 64
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %8, ptr noundef nonnull @.str.21) #14
  br label %19

9:                                                ; preds = %1
  %10 = and i32 %4, 2048
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = load ptr, ptr %0, align 64
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %13, ptr noundef nonnull @.str.22) #14
  br label %14

14:                                               ; preds = %12, %9
  %15 = and i32 %4, 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = load ptr, ptr %0, align 64
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %18, ptr noundef nonnull @.str.23) #14
  br label %19

19:                                               ; preds = %17, %14, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ks8851_init_mac(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [6 x i8], align 1
  %4 = alloca i32, align 4
  %5 = alloca [6 x i8], align 1
  %6 = load ptr, ptr %0, align 64
  %7 = tail call i32 @of_get_ethdev_address(ptr noundef %1, ptr noundef %6) #13
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  tail call fastcc void @ks8851_write_mac_addr(ptr noundef %6)
  br label %60

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.ks8851_net, ptr %0, i32 0, i32 12
  %12 = load i16, ptr %11, align 4
  %13 = and i16 %12, 512
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %55, label %15

15:                                               ; preds = %10
  %16 = getelementptr i8, ptr %6, i32 1408
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %5) #13
  %17 = getelementptr i8, ptr %6, i32 1668
  %18 = load ptr, ptr %17, align 4
  call void %18(ptr noundef %16, ptr noundef nonnull %4) #13
  %19 = getelementptr i8, ptr %6, i32 1676
  %20 = load ptr, ptr %19, align 4
  %21 = call i32 %20(ptr noundef %16, i32 noundef 20) #13
  %22 = lshr i32 %21, 8
  %23 = trunc i32 %22 to i8
  store i8 %23, ptr %5, align 1
  %24 = trunc i32 %21 to i8
  %25 = getelementptr inbounds [6 x i8], ptr %5, i32 0, i32 1
  store i8 %24, ptr %25, align 1
  %26 = load ptr, ptr %19, align 4
  %27 = call i32 %26(ptr noundef %16, i32 noundef 18) #13
  %28 = lshr i32 %27, 8
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds [6 x i8], ptr %5, i32 0, i32 2
  store i8 %29, ptr %30, align 1
  %31 = trunc i32 %27 to i8
  %32 = getelementptr inbounds [6 x i8], ptr %5, i32 0, i32 3
  store i8 %31, ptr %32, align 1
  %33 = load ptr, ptr %19, align 4
  %34 = call i32 %33(ptr noundef %16, i32 noundef 16) #13
  %35 = lshr i32 %34, 8
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds [6 x i8], ptr %5, i32 0, i32 4
  store i8 %36, ptr %37, align 1
  %38 = trunc i32 %34 to i8
  %39 = getelementptr inbounds [6 x i8], ptr %5, i32 0, i32 5
  store i8 %38, ptr %39, align 1
  call void @dev_addr_mod(ptr noundef %6, i32 noundef 0, ptr noundef nonnull %5, i32 noundef 6) #13
  %40 = getelementptr i8, ptr %6, i32 1672
  %41 = load ptr, ptr %40, align 8
  call void %41(ptr noundef %16, ptr noundef nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  %42 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 72
  %43 = load ptr, ptr %42, align 32
  %44 = load i32, ptr %43, align 4
  %45 = and i32 %44, 1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %15
  %48 = getelementptr i8, ptr %43, i32 4
  %49 = load i16, ptr %48, align 2
  %50 = zext i16 %49 to i32
  %51 = or i32 %44, %50
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %47, %15
  %54 = load ptr, ptr %0, align 64
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %54, ptr noundef nonnull @.str.24, ptr noundef %43) #14
  br label %55

55:                                               ; preds = %53, %10
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %3, i8 0, i32 6, i1 false) #13, !annotation !8
  call void @get_random_bytes(ptr noundef nonnull %3, i32 noundef 6) #13
  %56 = load i8, ptr %3, align 1
  %57 = and i8 %56, -4
  %58 = or i8 %57, 2
  store i8 %58, ptr %3, align 1
  call void @dev_addr_mod(ptr noundef %6, i32 noundef 0, ptr noundef nonnull %3, i32 noundef 6) #13
  %59 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 50
  store i8 1, ptr %59, align 8
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #13
  call fastcc void @ks8851_write_mac_addr(ptr noundef %6)
  br label %60

60:                                               ; preds = %55, %47, %9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ks8851_unregister_mdiobus(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ks8851_net, ptr %0, i32 0, i32 21
  %3 = load ptr, ptr %2, align 64
  tail call void @mdiobus_unregister(ptr noundef %3) #13
  %4 = load ptr, ptr %2, align 64
  tail call void @mdiobus_free(ptr noundef %4) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ks8851_remove_common(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.ks8851_net, ptr %3, i32 0, i32 21
  %5 = load ptr, ptr %4, align 64
  tail call void @mdiobus_unregister(ptr noundef %5) #13
  %6 = load ptr, ptr %4, align 64
  tail call void @mdiobus_free(ptr noundef %6) #13
  %7 = getelementptr inbounds %struct.ks8851_net, ptr %3, i32 0, i32 7
  %8 = load i32, ptr %7, align 64
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.13) #14
  br label %12

12:                                               ; preds = %11, %1
  %13 = load ptr, ptr %3, align 64
  tail call void @unregister_netdev(ptr noundef %13) #13
  %14 = getelementptr inbounds %struct.ks8851_net, ptr %3, i32 0, i32 20
  %15 = load i32, ptr %14, align 4
  %16 = icmp ult i32 %15, 2048
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = tail call ptr @gpio_to_desc(i32 noundef %15) #13
  tail call void @gpiod_set_raw_value(ptr noundef %18, i32 noundef 0) #13
  br label %19

19:                                               ; preds = %17, %12
  %20 = getelementptr inbounds %struct.ks8851_net, ptr %3, i32 0, i32 18
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 @regulator_disable(ptr noundef %21) #13
  %23 = getelementptr inbounds %struct.ks8851_net, ptr %3, i32 0, i32 19
  %24 = load ptr, ptr %23, align 8
  %25 = tail call i32 @regulator_disable(ptr noundef %24) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ks8851_irq(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.ks8851_net, ptr %1, i32 0, i32 22
  %5 = load ptr, ptr %4, align 4
  call void %5(ptr noundef %1, ptr noundef nonnull %3) #13
  %6 = getelementptr inbounds %struct.ks8851_net, ptr %1, i32 0, i32 24
  %7 = load ptr, ptr %6, align 4
  %8 = call i32 %7(ptr noundef %1, i32 noundef 146) #13
  %9 = and i32 %8, 32768
  %10 = icmp eq i32 %9, 0
  %11 = and i32 %8, 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %2
  %14 = load ptr, ptr %6, align 4
  %15 = call i32 %14(ptr noundef %1, i32 noundef 212) #13
  %16 = and i32 %15, 65475
  %17 = or i32 %16, 8
  %18 = getelementptr inbounds %struct.ks8851_net, ptr %1, i32 0, i32 25
  %19 = load ptr, ptr %18, align 16
  call void %19(ptr noundef %1, i32 noundef 212, i32 noundef %17) #13
  %20 = or i32 %9, 8
  br label %21

21:                                               ; preds = %13, %2
  %22 = phi i32 [ %20, %13 ], [ %9, %2 ]
  %23 = and i32 %8, 256
  %24 = icmp eq i32 %23, 0
  %25 = or i32 %22, %23
  %26 = and i32 %8, 16384
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %21
  %29 = or i32 %25, 16384
  %30 = load ptr, ptr %6, align 4
  %31 = call i32 %30(ptr noundef %1, i32 noundef 120) #13
  %32 = trunc i32 %31 to i16
  %33 = getelementptr inbounds %struct.ks8851_net, ptr %1, i32 0, i32 8
  store i16 %32, ptr %33, align 4
  br label %34

34:                                               ; preds = %28, %21
  %35 = phi i32 [ %29, %28 ], [ %25, %21 ]
  %36 = and i32 %8, 8192
  %37 = icmp eq i32 %36, 0
  %38 = or i32 %35, %36
  %39 = and i32 %8, 2
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %34
  %42 = load ptr, ptr %1, align 64
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %42, ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.ks8851_irq) #14
  %43 = or i32 %38, 2
  br label %44

44:                                               ; preds = %41, %34
  %45 = phi i32 [ %43, %41 ], [ %38, %34 ]
  %46 = getelementptr inbounds %struct.ks8851_net, ptr %1, i32 0, i32 25
  %47 = load ptr, ptr %46, align 16
  call void %47(ptr noundef %1, i32 noundef 146, i32 noundef %45) #13
  br i1 %37, label %109, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %6, align 4
  %50 = call i32 %49(ptr noundef %1, i32 noundef 156) #13
  %51 = lshr i32 %50, 8
  %52 = and i32 %51, 255
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %109, label %54

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.ks8851_net, ptr %1, i32 0, i32 11
  %56 = getelementptr inbounds %struct.ks8851_net, ptr %1, i32 0, i32 26
  %57 = getelementptr inbounds %struct.ks8851_net, ptr %1, i32 0, i32 29
  br label %58

58:                                               ; preds = %102, %54
  %59 = phi i32 [ %52, %54 ], [ %107, %102 ]
  %60 = load ptr, ptr %6, align 4
  %61 = call i32 %60(ptr noundef %1, i32 noundef 124) #13
  %62 = load ptr, ptr %6, align 4
  %63 = call i32 %62(ptr noundef %1, i32 noundef 126) #13
  %64 = and i32 %63, 4095
  %65 = load ptr, ptr %46, align 16
  call void %65(ptr noundef %1, i32 noundef 134, i32 noundef 16384) #13
  %66 = load i16, ptr %55, align 2
  %67 = or i16 %66, 8
  %68 = zext i16 %67 to i32
  %69 = load ptr, ptr %46, align 16
  call void %69(ptr noundef %1, i32 noundef 130, i32 noundef %68) #13
  %70 = icmp ugt i32 %64, 4
  br i1 %70, label %71, label %102

71:                                               ; preds = %58
  %72 = add nsw i32 %64, -1
  %73 = and i32 %72, -4
  %74 = load ptr, ptr %1, align 64
  %75 = or i32 %73, 2
  %76 = call ptr @__netdev_alloc_skb(ptr noundef %74, i32 noundef %75, i32 noundef 2592) #13
  %77 = icmp eq ptr %76, null
  br i1 %77, label %102, label %78

78:                                               ; preds = %71
  %79 = add nsw i32 %64, -4
  %80 = getelementptr inbounds %struct.sk_buff, ptr %76, i32 0, i32 17
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr i8, ptr %81, i32 2
  store ptr %82, ptr %80, align 4
  %83 = getelementptr inbounds %struct.sk_buff, ptr %76, i32 0, i32 14
  %84 = load ptr, ptr %83, align 8
  %85 = getelementptr i8, ptr %84, i32 2
  store ptr %85, ptr %83, align 8
  %86 = call ptr @skb_put(ptr noundef nonnull %76, i32 noundef %79) #13
  %87 = getelementptr i8, ptr %86, i32 -8
  %88 = load ptr, ptr %56, align 4
  %89 = add nuw nsw i32 %73, 8
  call void %88(ptr noundef %1, ptr noundef %87, i32 noundef %89) #13
  %90 = load ptr, ptr %1, align 64
  %91 = call zeroext i16 @eth_type_trans(ptr noundef nonnull %76, ptr noundef %90) #13
  %92 = getelementptr inbounds %struct.sk_buff, ptr %76, i32 0, i32 13, i32 0, i32 16
  store i16 %91, ptr %92, align 8
  %93 = load ptr, ptr %57, align 32
  call void %93(ptr noundef %1, ptr noundef nonnull %76) #13
  %94 = load ptr, ptr %1, align 64
  %95 = getelementptr inbounds %struct.net_device, ptr %94, i32 0, i32 36
  %96 = load i32, ptr %95, align 8
  %97 = add i32 %96, 1
  store i32 %97, ptr %95, align 8
  %98 = load ptr, ptr %1, align 64
  %99 = getelementptr inbounds %struct.net_device, ptr %98, i32 0, i32 36, i32 2
  %100 = load i32, ptr %99, align 8
  %101 = add i32 %100, %79
  store i32 %101, ptr %99, align 8
  br label %102

102:                                              ; preds = %78, %71, %58
  %103 = load i16, ptr %55, align 2
  %104 = or i16 %103, 1
  %105 = zext i16 %104 to i32
  %106 = load ptr, ptr %46, align 16
  call void %106(ptr noundef %1, i32 noundef 130, i32 noundef %105) #13
  %107 = add nsw i32 %59, -1
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %58

109:                                              ; preds = %102, %48, %44
  br i1 %24, label %135, label %110

110:                                              ; preds = %109
  %111 = getelementptr inbounds %struct.ks8851_net, ptr %1, i32 0, i32 14
  %112 = load i16, ptr %111, align 2
  %113 = zext i16 %112 to i32
  %114 = load ptr, ptr %46, align 16
  call void %114(ptr noundef %1, i32 noundef 160, i32 noundef %113) #13
  %115 = getelementptr %struct.ks8851_net, ptr %1, i32 0, i32 14, i32 0, i32 1
  %116 = load i16, ptr %115, align 2
  %117 = zext i16 %116 to i32
  %118 = load ptr, ptr %46, align 16
  call void %118(ptr noundef %1, i32 noundef 162, i32 noundef %117) #13
  %119 = getelementptr %struct.ks8851_net, ptr %1, i32 0, i32 14, i32 0, i32 2
  %120 = load i16, ptr %119, align 2
  %121 = zext i16 %120 to i32
  %122 = load ptr, ptr %46, align 16
  call void %122(ptr noundef %1, i32 noundef 164, i32 noundef %121) #13
  %123 = getelementptr %struct.ks8851_net, ptr %1, i32 0, i32 14, i32 0, i32 3
  %124 = load i16, ptr %123, align 2
  %125 = zext i16 %124 to i32
  %126 = load ptr, ptr %46, align 16
  call void %126(ptr noundef %1, i32 noundef 166, i32 noundef %125) #13
  %127 = getelementptr inbounds %struct.ks8851_net, ptr %1, i32 0, i32 14, i32 2
  %128 = load i16, ptr %127, align 2
  %129 = zext i16 %128 to i32
  %130 = load ptr, ptr %46, align 16
  call void %130(ptr noundef %1, i32 noundef 118, i32 noundef %129) #13
  %131 = getelementptr inbounds %struct.ks8851_net, ptr %1, i32 0, i32 14, i32 1
  %132 = load i16, ptr %131, align 2
  %133 = zext i16 %132 to i32
  %134 = load ptr, ptr %46, align 16
  call void %134(ptr noundef %1, i32 noundef 116, i32 noundef %133) #13
  br label %135

135:                                              ; preds = %110, %109
  %136 = getelementptr inbounds %struct.ks8851_net, ptr %1, i32 0, i32 23
  %137 = load ptr, ptr %136, align 8
  call void %137(ptr noundef %1, ptr noundef nonnull %3) #13
  br i1 %10, label %140, label %138

138:                                              ; preds = %135
  %139 = getelementptr inbounds %struct.ks8851_net, ptr %1, i32 0, i32 13
  call void @mii_check_link(ptr noundef %139) #13
  br label %140

140:                                              ; preds = %138, %135
  br i1 %27, label %145, label %141

141:                                              ; preds = %140
  %142 = load ptr, ptr %1, align 64
  %143 = getelementptr inbounds %struct.net_device, ptr %142, i32 0, i32 87
  %144 = load ptr, ptr %143, align 64
  call void @netif_tx_wake_queue(ptr noundef %144) #13
  br label %145

145:                                              ; preds = %141, %140
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mii_check_link(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_raw_value(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ks8851_mdio_read(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %6, label %28

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.mii_bus, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq i32 %2, 2
  %10 = icmp eq i32 %2, 3
  %11 = select i1 %10, i32 2, i32 %2
  %12 = select i1 %9, i32 3, i32 %11
  %13 = load ptr, ptr %8, align 64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 0, ptr %4, align 4, !annotation !8
  %14 = icmp ult i32 %12, 6
  br i1 %14, label %15, label %26

15:                                               ; preds = %6
  %16 = getelementptr i8, ptr %13, i32 1408
  %17 = shl i32 %12, 1
  %18 = add i32 %17, 228
  %19 = getelementptr i8, ptr %13, i32 1668
  %20 = load ptr, ptr %19, align 4
  call void %20(ptr noundef %16, ptr noundef nonnull %4) #13
  %21 = getelementptr i8, ptr %13, i32 1676
  %22 = load ptr, ptr %21, align 4
  %23 = call i32 %22(ptr noundef %16, i32 noundef %18) #13
  %24 = getelementptr i8, ptr %13, i32 1672
  %25 = load ptr, ptr %24, align 8
  call void %25(ptr noundef %16, ptr noundef nonnull %4) #13
  br label %26

26:                                               ; preds = %15, %6
  %27 = phi i32 [ %23, %15 ], [ -95, %6 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  br label %28

28:                                               ; preds = %26, %3
  %29 = phi i32 [ %27, %26 ], [ -95, %3 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ks8851_mdio_write(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i16 noundef zeroext %3) #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.mii_bus, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %7, align 64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store i32 0, ptr %5, align 4, !annotation !8
  %9 = icmp ult i32 %2, 6
  br i1 %9, label %10, label %21

10:                                               ; preds = %4
  %11 = getelementptr i8, ptr %8, i32 1408
  %12 = zext i16 %3 to i32
  %13 = shl i32 %2, 1
  %14 = add i32 %13, 228
  %15 = getelementptr i8, ptr %8, i32 1668
  %16 = load ptr, ptr %15, align 4
  call void %16(ptr noundef %11, ptr noundef nonnull %5) #13
  %17 = getelementptr i8, ptr %8, i32 1680
  %18 = load ptr, ptr %17, align 16
  call void %18(ptr noundef %11, i32 noundef %14, i32 noundef %12) #13
  %19 = getelementptr i8, ptr %8, i32 1672
  %20 = load ptr, ptr %19, align 8
  call void %20(ptr noundef %11, ptr noundef nonnull %5) #13
  br label %21

21:                                               ; preds = %10, %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  ret i32 0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mdiobus_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdiobus_alloc_size(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ks8851_get_drvinfo(ptr nocapture noundef readonly %0, ptr noundef %1) #6 {
  %3 = getelementptr inbounds %struct.ethtool_drvinfo, ptr %1, i32 0, i32 1
  %4 = tail call i32 @strlcpy(ptr noundef %3, ptr noundef nonnull @.str.19, i32 noundef 32) #13
  %5 = getelementptr inbounds %struct.ethtool_drvinfo, ptr %1, i32 0, i32 2
  %6 = tail call i32 @strlcpy(ptr noundef %5, ptr noundef nonnull @.str.20, i32 noundef 32) #13
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
  %17 = tail call i32 @strlcpy(ptr noundef %16, ptr noundef %15, i32 noundef 32) #13
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @ks8851_get_msglevel(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr i8, ptr %0, i32 1536
  %3 = load i32, ptr %2, align 64
  ret i32 %3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @ks8851_set_msglevel(ptr nocapture noundef writeonly %0, i32 noundef %1) #8 {
  %3 = getelementptr i8, ptr %0, i32 1536
  store i32 %1, ptr %3, align 64
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ks8851_nway_reset(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 1552
  %3 = tail call i32 @mii_nway_restart(ptr noundef %2) #13
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ks8851_get_link(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 1552
  %3 = tail call i32 @mii_link_ok(ptr noundef %2) #13
  ret i32 %3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @ks8851_get_eeprom_len(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr i8, ptr %0, i32 1548
  %3 = load i16, ptr %2, align 4
  %4 = lshr i16 %3, 2
  %5 = and i16 %4, 128
  %6 = zext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ks8851_get_eeprom(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr i8, ptr %0, i32 1408
  %6 = getelementptr inbounds %struct.ethtool_eeprom, ptr %1, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 0, ptr %4, align 4, !annotation !8
  %8 = getelementptr inbounds %struct.ethtool_eeprom, ptr %1, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  %12 = and i32 %7, 1
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %15, label %38

15:                                               ; preds = %3
  %16 = getelementptr i8, ptr %0, i32 1548
  %17 = load i16, ptr %16, align 4
  %18 = and i16 %17, 512
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %38, label %20

20:                                               ; preds = %15
  %21 = getelementptr i8, ptr %0, i32 1668
  %22 = load ptr, ptr %21, align 4
  call void %22(ptr noundef %5, ptr noundef nonnull %4) #13
  %23 = getelementptr i8, ptr %0, i32 1680
  %24 = load ptr, ptr %23, align 16
  call void %24(ptr noundef %5, i32 noundef 34, i32 noundef 17) #13
  %25 = getelementptr inbounds %struct.ethtool_eeprom, ptr %1, i32 0, i32 1
  store i32 34897, ptr %25, align 4
  %26 = getelementptr i8, ptr %0, i32 1628
  %27 = sdiv i32 %7, 2
  %28 = trunc i32 %27 to i8
  %29 = sdiv i32 %9, 2
  %30 = trunc i32 %29 to i16
  call void @eeprom_93cx6_multiread(ptr noundef %26, i8 noundef zeroext %28, ptr noundef %2, i16 noundef zeroext %30) #13
  %31 = getelementptr i8, ptr %0, i32 1676
  %32 = load ptr, ptr %31, align 4
  %33 = call i32 %32(ptr noundef %5, i32 noundef 34) #13
  %34 = and i32 %33, -17
  %35 = load ptr, ptr %23, align 16
  call void %35(ptr noundef %5, i32 noundef 34, i32 noundef %34) #13
  %36 = getelementptr i8, ptr %0, i32 1672
  %37 = load ptr, ptr %36, align 8
  call void %37(ptr noundef %5, ptr noundef nonnull %4) #13
  br label %38

38:                                               ; preds = %20, %15, %3
  %39 = phi i32 [ 0, %20 ], [ -22, %3 ], [ -2, %15 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ks8851_set_eeprom(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = getelementptr i8, ptr %0, i32 1408
  %7 = getelementptr inbounds %struct.ethtool_eeprom, ptr %1, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 0, ptr %4, align 4, !annotation !8
  %9 = getelementptr inbounds %struct.ethtool_eeprom, ptr %1, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #13
  store i16 0, ptr %5, align 2, !annotation !8
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %52

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.ethtool_eeprom, ptr %1, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 34897
  br i1 %15, label %16, label %52

16:                                               ; preds = %12
  %17 = getelementptr i8, ptr %0, i32 1548
  %18 = load i16, ptr %17, align 4
  %19 = and i16 %18, 512
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %52, label %21

21:                                               ; preds = %16
  %22 = getelementptr i8, ptr %0, i32 1668
  %23 = load ptr, ptr %22, align 4
  call void %23(ptr noundef %6, ptr noundef nonnull %4) #13
  %24 = getelementptr i8, ptr %0, i32 1680
  %25 = load ptr, ptr %24, align 16
  call void %25(ptr noundef %6, i32 noundef 34, i32 noundef 17) #13
  %26 = getelementptr i8, ptr %0, i32 1628
  call void @eeprom_93cx6_wren(ptr noundef %26, i1 noundef zeroext true) #13
  %27 = sdiv i32 %8, 2
  %28 = trunc i32 %27 to i8
  call void @eeprom_93cx6_read(ptr noundef %26, i8 noundef zeroext %28, ptr noundef nonnull %5) #13
  %29 = and i32 %8, 1
  %30 = icmp eq i32 %29, 0
  %31 = load i16, ptr %5, align 2
  br i1 %30, label %38, label %32

32:                                               ; preds = %21
  %33 = and i16 %31, 255
  %34 = load i8, ptr %2, align 1
  %35 = zext i8 %34 to i16
  %36 = shl nuw i16 %35, 8
  %37 = or i16 %36, %33
  br label %43

38:                                               ; preds = %21
  %39 = and i16 %31, -256
  %40 = load i8, ptr %2, align 1
  %41 = zext i8 %40 to i16
  %42 = or i16 %39, %41
  br label %43

43:                                               ; preds = %38, %32
  %44 = phi i16 [ %42, %38 ], [ %37, %32 ]
  store i16 %44, ptr %5, align 2
  call void @eeprom_93cx6_write(ptr noundef %26, i8 noundef zeroext %28, i16 noundef zeroext %44) #13
  call void @eeprom_93cx6_wren(ptr noundef %26, i1 noundef zeroext false) #13
  %45 = getelementptr i8, ptr %0, i32 1676
  %46 = load ptr, ptr %45, align 4
  %47 = call i32 %46(ptr noundef %6, i32 noundef 34) #13
  %48 = and i32 %47, -17
  %49 = load ptr, ptr %24, align 16
  call void %49(ptr noundef %6, i32 noundef 34, i32 noundef %48) #13
  %50 = getelementptr i8, ptr %0, i32 1672
  %51 = load ptr, ptr %50, align 8
  call void %51(ptr noundef %6, ptr noundef nonnull %4) #13
  br label %52

52:                                               ; preds = %43, %16, %12, %3
  %53 = phi i32 [ 0, %43 ], [ -22, %3 ], [ -22, %12 ], [ -2, %16 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret i32 %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ks8851_get_link_ksettings(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 1552
  tail call void @mii_ethtool_get_link_ksettings(ptr noundef %3, ptr noundef %1) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ks8851_set_link_ksettings(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 1552
  %4 = tail call i32 @mii_ethtool_set_link_ksettings(ptr noundef %3, ptr noundef %1) #13
  ret i32 %4
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_nway_restart(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_link_ok(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @eeprom_93cx6_multiread(ptr noundef, i8 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @eeprom_93cx6_wren(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @eeprom_93cx6_read(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @eeprom_93cx6_write(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mii_ethtool_get_link_ksettings(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_ethtool_set_link_ksettings(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ks8851_start_xmit(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %1, i32 1692
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 %4(ptr noundef %0, ptr noundef %1) #13
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ks8851_set_rx_mode(ptr noundef %0) #0 {
  %2 = alloca %struct.ks8851_rxctrl, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #13
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %2, i8 0, i64 12, i1 false)
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 256
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %36

7:                                                ; preds = %1
  %8 = and i32 %4, 512
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %36

10:                                               ; preds = %7
  %11 = and i32 %4, 4096
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %36, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 61
  %15 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 61, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %36, label %18

18:                                               ; preds = %13
  %19 = load ptr, ptr %14, align 4
  %20 = icmp eq ptr %19, %14
  br i1 %20, label %36, label %21

21:                                               ; preds = %21, %18
  %22 = phi ptr [ %34, %21 ], [ %19, %18 ]
  %23 = getelementptr inbounds %struct.netdev_hw_addr, ptr %22, i32 0, i32 2
  %24 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %23, i32 noundef 6) #15
  %25 = tail call i32 asm "rbit $0, $1", "=r,r"(i32 %24) #16, !srcloc !9
  %26 = lshr i32 %25, 26
  %27 = and i32 %26, 15
  %28 = shl nuw nsw i32 1, %27
  %29 = lshr i32 %25, 30
  %30 = getelementptr [4 x i16], ptr %2, i32 0, i32 %29
  %31 = load i16, ptr %30, align 2
  %32 = trunc i32 %28 to i16
  %33 = or i16 %31, %32
  store i16 %33, ptr %30, align 2
  %34 = load ptr, ptr %22, align 4
  %35 = icmp eq ptr %34, %14
  br i1 %35, label %36, label %21

36:                                               ; preds = %21, %18, %13, %10, %7, %1
  %37 = phi i16 [ 1203, %1 ], [ 3569, %7 ], [ 3297, %18 ], [ 3233, %13 ], [ 3233, %10 ], [ 3297, %21 ]
  %38 = getelementptr inbounds %struct.ks8851_rxctrl, ptr %2, i32 0, i32 1
  store i16 %37, ptr %38, align 2
  %39 = getelementptr inbounds %struct.ks8851_rxctrl, ptr %2, i32 0, i32 2
  store i16 128, ptr %39, align 2
  %40 = getelementptr i8, ptr %0, i32 1412
  tail call void @_raw_spin_lock(ptr noundef %40) #13
  %41 = getelementptr i8, ptr %0, i32 1584
  %42 = call i32 @bcmp(ptr noundef nonnull dereferenceable(12) %2, ptr noundef dereferenceable(12) %41, i32 12)
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %36
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 16 dereferenceable(12) %41, ptr noundef nonnull align 2 dereferenceable(12) %2, i32 12, i1 false)
  %45 = getelementptr i8, ptr %0, i32 1596
  %46 = load ptr, ptr @system_wq, align 4
  %47 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %46, ptr noundef %45) #13
  br label %48

48:                                               ; preds = %44, %36
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !10
  %49 = load i16, ptr %40, align 4
  %50 = add i16 %49, 1
  store i16 %50, ptr %40, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ks8851_set_mac_address(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %19

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.sockaddr, ptr %1, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %7
  %13 = getelementptr %struct.sockaddr, ptr %1, i32 0, i32 1, i32 4
  %14 = load i16, ptr %13, align 2
  %15 = zext i16 %14 to i32
  %16 = or i32 %9, %15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  tail call void @dev_addr_mod(ptr noundef %0, i32 noundef 0, ptr noundef %8, i32 noundef 6) #13
  tail call fastcc void @ks8851_write_mac_addr(ptr noundef %0)
  br label %19

19:                                               ; preds = %18, %12, %7, %2
  %20 = phi i32 [ 0, %18 ], [ -16, %2 ], [ -99, %12 ], [ -99, %7 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ks8851_net_ioctl(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %0, i32 1552
  %10 = getelementptr inbounds %struct.ifreq, ptr %1, i32 0, i32 1
  %11 = tail call i32 @generic_mii_ioctl(ptr noundef %9, ptr noundef %10, i32 noundef %2, ptr noundef null) #13
  br label %12

12:                                               ; preds = %8, %3
  %13 = phi i32 [ %11, %8 ], [ -22, %3 ]
  ret i32 %13
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #10

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ks8851_write_mac_addr(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr i8, ptr %0, i32 1408
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #13
  store i32 0, ptr %2, align 4, !annotation !8
  %4 = getelementptr i8, ptr %0, i32 1668
  %5 = load ptr, ptr %4, align 4
  call void %5(ptr noundef %3, ptr noundef nonnull %2) #13
  %6 = getelementptr i8, ptr %0, i32 1676
  %7 = load ptr, ptr %6, align 4
  %8 = call i32 %7(ptr noundef %3, i32 noundef 212) #13
  %9 = and i32 %8, -4
  %10 = getelementptr i8, ptr %0, i32 1680
  %11 = load ptr, ptr %10, align 16
  call void %11(ptr noundef %3, i32 noundef 212, i32 noundef %9) #13
  %12 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 72
  %13 = load ptr, ptr %12, align 32
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = shl nuw nsw i32 %15, 8
  %17 = getelementptr i8, ptr %13, i32 1
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = or i32 %16, %19
  %21 = load ptr, ptr %10, align 16
  call void %21(ptr noundef %3, i32 noundef 20, i32 noundef %20) #13
  %22 = load ptr, ptr %12, align 32
  %23 = getelementptr i8, ptr %22, i32 2
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  %26 = shl nuw nsw i32 %25, 8
  %27 = getelementptr i8, ptr %22, i32 3
  %28 = load i8, ptr %27, align 1
  %29 = zext i8 %28 to i32
  %30 = or i32 %26, %29
  %31 = load ptr, ptr %10, align 16
  call void %31(ptr noundef %3, i32 noundef 18, i32 noundef %30) #13
  %32 = load ptr, ptr %12, align 32
  %33 = getelementptr i8, ptr %32, i32 4
  %34 = load i8, ptr %33, align 1
  %35 = zext i8 %34 to i32
  %36 = shl nuw nsw i32 %35, 8
  %37 = getelementptr i8, ptr %32, i32 5
  %38 = load i8, ptr %37, align 1
  %39 = zext i8 %38 to i32
  %40 = or i32 %36, %39
  %41 = load ptr, ptr %10, align 16
  call void %41(ptr noundef %3, i32 noundef 16, i32 noundef %40) #13
  %42 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %43 = load volatile i32, ptr %42, align 4
  %44 = and i32 %43, 1
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %1
  %47 = load ptr, ptr %6, align 4
  %48 = call i32 %47(ptr noundef %3, i32 noundef 212) #13
  %49 = and i32 %48, -4
  %50 = or i32 %49, 2
  %51 = load ptr, ptr %10, align 16
  call void %51(ptr noundef %3, i32 noundef 212, i32 noundef %50) #13
  br label %52

52:                                               ; preds = %46, %1
  %53 = getelementptr i8, ptr %0, i32 1672
  %54 = load ptr, ptr %53, align 8
  call void %54(ptr noundef %3, ptr noundef nonnull %2) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_mii_ioctl(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_ethdev_address(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly nofree nounwind willreturn writeonly }
attributes #11 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nounwind }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind readonly willreturn }
attributes #16 = { nounwind readnone }

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
!9 = !{i64 7111954}
!10 = !{i64 2149261625}
!11 = !{i64 2149257449}
!12 = !{i64 2149257524, i64 2149257551, i64 2149257598, i64 2149257620, i64 2149257648, i64 2149257668}
!13 = !{i64 2149284628}
