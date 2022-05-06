; ModuleID = '/llk/IR/drivers/net/ethernet/micrel/ks8851_spi.c_pt.bc'
source_filename = "../drivers/net/ethernet/micrel/ks8851_spi.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.90 }
%union.anon.90 = type { ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
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
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
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
%struct.ks8851_net_spi = type { %struct.ks8851_net, %struct.mutex, %struct.work_struct, ptr, %struct.spi_message, %struct.spi_message, %struct.spi_transfer, [2 x %struct.spi_transfer], [8 x i8] }
%struct.ks8851_net = type { ptr, %struct.spinlock, [56 x i8], %union.ks8851_tx_hdr, [8 x i8], [8 x i8], [42 x i8], i32, i16, i8, i16, i16, i16, %struct.mii_if_info, %struct.ks8851_rxctrl, %struct.work_struct, %struct.sk_buff_head, %struct.eeprom_93cx6, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [24 x i8] }
%union.ks8851_tx_hdr = type { [3 x i16] }
%struct.mii_if_info = type { i32, i32, i32, i32, i8, ptr, ptr, ptr }
%struct.ks8851_rxctrl = type { [4 x i16], i16, i16 }
%struct.sk_buff_head = type { %union.anon.115, i32, %struct.spinlock }
%union.anon.115 = type { %struct.anon.116 }
%struct.anon.116 = type { ptr, ptr }
%struct.eeprom_93cx6 = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
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
%struct.netdev_queue = type { ptr, %struct.netdevice_tracker, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, [4 x i8], %struct.spinlock, i32, i32, i32, [48 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [52 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [24 x i8] }

@__initcall__kmod_ks8851_spi__335_477_ks8851_driver_init6 = internal global ptr @ks8851_driver_init, section ".initcall6.init", align 4
@ks8851_driver = internal global %struct.spi_driver { ptr null, ptr @ks8851_probe_spi, ptr @ks8851_remove_spi, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ks8851_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ks8851_pm_ops, ptr null, ptr null } }, align 4
@__exitcall_ks8851_driver_exit = internal global ptr @ks8851_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description336 = internal constant [45 x i8] c"ks8851_spi.description=KS8851 Network driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author337 = internal constant [47 x i8] c"ks8851_spi.author=Ben Dooks <ben@simtec.co.uk>\00", section ".modinfo", align 1
@__UNIQUE_ID_file338 = internal constant [55 x i8] c"ks8851_spi.file=drivers/net/ethernet/micrel/ks8851_spi\00", section ".modinfo", align 1
@__UNIQUE_ID_license339 = internal constant [23 x i8] c"ks8851_spi.license=GPL\00", section ".modinfo", align 1
@__param_str_message = internal constant [19 x i8] c"ks8851_spi.message\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@msg_enable = internal global i32 0, align 4
@__param_message = internal constant %struct.kernel_param { ptr @__param_str_message, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.90 { ptr @msg_enable } }, section "__param", align 4
@__UNIQUE_ID_messagetype340 = internal constant [32 x i8] c"ks8851_spi.parmtype=message:int\00", section ".modinfo", align 1
@__UNIQUE_ID_message341 = internal constant [65 x i8] c"ks8851_spi.parm=message:Message verbosity level (0=none, 31=all)\00", section ".modinfo", align 1
@__UNIQUE_ID_alias342 = internal constant [28 x i8] c"ks8851_spi.alias=spi:ks8851\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [7 x i8] c"ks8851\00", align 1
@ks8851_match_table = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"micrel,ks8851\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@ks8851_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @ks8851_suspend, ptr @ks8851_resume, ptr @ks8851_suspend, ptr @ks8851_resume, ptr @ks8851_suspend, ptr @ks8851_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@ks8851_probe_spi.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"&kss->lock\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"read: spi_sync() failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"spi_sync() failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"%s: spi_sync() failed\0A\00", align 1
@__func__.ks8851_rdfifo_spi = private unnamed_addr constant [18 x i8] c"ks8851_rdfifo_spi\00", align 1
@__func__.ks8851_wrfifo_spi = private unnamed_addr constant [18 x i8] c"ks8851_wrfifo_spi\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_alias342, ptr @__UNIQUE_ID_author337, ptr @__UNIQUE_ID_description336, ptr @__UNIQUE_ID_file338, ptr @__UNIQUE_ID_license339, ptr @__UNIQUE_ID_message341, ptr @__UNIQUE_ID_messagetype340, ptr @__exitcall_ks8851_driver_exit, ptr @__initcall__kmod_ks8851_spi__335_477_ks8851_driver_init6, ptr @__param_message, ptr @ks8851_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ks8851_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @ks8851_driver) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @ks8851_driver_exit() #0 section ".exit.text" {
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @ks8851_driver, i32 0, i32 4)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ks8851_probe_spi(ptr noundef %0) #2 {
  %2 = tail call ptr @devm_alloc_etherdev_mqs(ptr noundef %0, i32 noundef 768, i32 noundef 1, i32 noundef 1) #6
  %3 = icmp eq ptr %2, null
  br i1 %3, label %43, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 5
  store i8 8, ptr %5, align 1
  %6 = getelementptr i8, ptr %2, i32 1668
  store ptr @ks8851_lock_spi, ptr %6, align 4
  %7 = getelementptr i8, ptr %2, i32 1672
  store ptr @ks8851_unlock_spi, ptr %7, align 8
  %8 = getelementptr i8, ptr %2, i32 1676
  store ptr @ks8851_rdreg16_spi, ptr %8, align 4
  %9 = getelementptr i8, ptr %2, i32 1680
  store ptr @ks8851_wrreg16_spi, ptr %9, align 16
  %10 = getelementptr i8, ptr %2, i32 1684
  store ptr @ks8851_rdfifo_spi, ptr %10, align 4
  %11 = getelementptr i8, ptr %2, i32 1688
  store ptr @ks8851_wrfifo_spi, ptr %11, align 8
  %12 = getelementptr i8, ptr %2, i32 1692
  store ptr @ks8851_start_xmit_spi, ptr %12, align 4
  %13 = getelementptr i8, ptr %2, i32 1696
  store ptr @ks8851_rx_skb_spi, ptr %13, align 32
  %14 = getelementptr i8, ptr %2, i32 1700
  store ptr @ks8851_flush_tx_work_spi, ptr %14, align 4
  %15 = getelementptr i8, ptr %2, i32 1544
  store i16 -7422, ptr %15, align 8
  %16 = getelementptr i8, ptr %2, i32 1764
  store ptr %0, ptr %16, align 4
  %17 = getelementptr i8, ptr %2, i32 1728
  tail call void @__mutex_init(ptr noundef %17, ptr noundef nonnull @.str.1, ptr noundef nonnull @ks8851_probe_spi.__key) #6
  %18 = getelementptr i8, ptr %2, i32 1748
  store i32 -32, ptr %18, align 4
  %19 = getelementptr i8, ptr %2, i32 1752
  store volatile ptr %19, ptr %19, align 4
  %20 = getelementptr i8, ptr %2, i32 1756
  store ptr %19, ptr %20, align 4
  %21 = getelementptr i8, ptr %2, i32 1760
  store ptr @ks8851_tx_work, ptr %21, align 4
  %22 = getelementptr i8, ptr %2, i32 1768
  %23 = getelementptr i8, ptr %2, i32 1776
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(56) %23, i8 0, i32 40, i1 false) #6
  store volatile ptr %22, ptr %22, align 4
  %24 = getelementptr i8, ptr %2, i32 1772
  %25 = getelementptr i8, ptr %2, i32 1816
  store volatile ptr %25, ptr %25, align 4
  %26 = getelementptr i8, ptr %2, i32 1820
  store ptr %25, ptr %26, align 4
  %27 = getelementptr i8, ptr %2, i32 1964
  store ptr %27, ptr %24, align 4
  store ptr %22, ptr %27, align 4
  %28 = getelementptr i8, ptr %2, i32 1968
  store ptr %22, ptr %28, align 4
  store volatile ptr %27, ptr %22, align 4
  %29 = getelementptr i8, ptr %2, i32 1824
  %30 = getelementptr i8, ptr %2, i32 1832
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(56) %30, i8 0, i32 40, i1 false) #6
  store volatile ptr %29, ptr %29, align 4
  %31 = getelementptr i8, ptr %2, i32 1828
  %32 = getelementptr i8, ptr %2, i32 1872
  store volatile ptr %32, ptr %32, align 4
  %33 = getelementptr i8, ptr %2, i32 1876
  store ptr %32, ptr %33, align 4
  %34 = getelementptr i8, ptr %2, i32 2060
  %35 = getelementptr i8, ptr %2, i32 2064
  store ptr %29, ptr %35, align 4
  store volatile ptr %34, ptr %29, align 4
  %36 = getelementptr i8, ptr %2, i32 2156
  store ptr %36, ptr %31, align 4
  store ptr %29, ptr %36, align 4
  %37 = getelementptr i8, ptr %2, i32 2160
  store ptr %34, ptr %37, align 4
  store volatile ptr %36, ptr %34, align 4
  %38 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 8
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 59
  store i32 %39, ptr %40, align 8
  %41 = load i32, ptr @msg_enable, align 4
  %42 = tail call i32 @ks8851_probe_common(ptr noundef nonnull %2, ptr noundef %0, i32 noundef %41) #6
  br label %43

43:                                               ; preds = %4, %1
  %44 = phi i32 [ %42, %4 ], [ -12, %1 ]
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ks8851_remove_spi(ptr noundef %0) #2 {
  tail call void @ks8851_remove_common(ptr noundef %0) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_alloc_etherdev_mqs(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ks8851_lock_spi(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr inbounds %struct.ks8851_net_spi, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %3) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ks8851_unlock_spi(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr inbounds %struct.ks8851_net_spi, ptr %0, i32 0, i32 1
  tail call void @mutex_unlock(ptr noundef %3) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ks8851_rdreg16_spi(ptr noundef %0, i32 noundef %1) #2 {
  %3 = and i32 %1, 2
  %4 = icmp eq i32 %3, 0
  %5 = select i1 %4, i32 12, i32 48
  %6 = shl i32 %1, 10
  %7 = or i32 %5, %6
  %8 = lshr i32 %1, 6
  %9 = or i32 %7, %8
  %10 = getelementptr inbounds %struct.ks8851_net, ptr %0, i32 0, i32 5
  %11 = getelementptr inbounds %struct.ks8851_net, ptr %0, i32 0, i32 4
  %12 = trunc i32 %9 to i16
  store i16 %12, ptr %10, align 2
  %13 = getelementptr inbounds %struct.ks8851_net_spi, ptr %0, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.spi_device, ptr %14, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.spi_controller, ptr %16, i32 0, i32 10
  %18 = load i16, ptr %17, align 4
  %19 = and i16 %18, 1
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.ks8851_net_spi, ptr %0, i32 0, i32 5
  %23 = getelementptr inbounds %struct.ks8851_net_spi, ptr %0, i32 0, i32 7
  store ptr %10, ptr %23, align 4
  %24 = getelementptr inbounds %struct.ks8851_net_spi, ptr %0, i32 0, i32 7, i32 0, i32 1
  store ptr null, ptr %24, align 4
  %25 = getelementptr inbounds %struct.ks8851_net_spi, ptr %0, i32 0, i32 7, i32 0, i32 2
  store i32 2, ptr %25, align 4
  %26 = getelementptr %struct.ks8851_net_spi, ptr %0, i32 0, i32 7, i32 1
  store ptr null, ptr %26, align 4
  %27 = getelementptr %struct.ks8851_net_spi, ptr %0, i32 0, i32 7, i32 1, i32 1
  store ptr %11, ptr %27, align 4
  %28 = getelementptr %struct.ks8851_net_spi, ptr %0, i32 0, i32 7, i32 1, i32 2
  store i32 2, ptr %28, align 4
  br label %34

29:                                               ; preds = %2
  %30 = getelementptr inbounds %struct.ks8851_net_spi, ptr %0, i32 0, i32 4
  %31 = getelementptr inbounds %struct.ks8851_net_spi, ptr %0, i32 0, i32 6
  store ptr %10, ptr %31, align 4
  %32 = getelementptr inbounds %struct.ks8851_net_spi, ptr %0, i32 0, i32 6, i32 1
  store ptr %11, ptr %32, align 4
  %33 = getelementptr inbounds %struct.ks8851_net_spi, ptr %0, i32 0, i32 6, i32 2
  store i32 4, ptr %33, align 4
  br label %34

34:                                               ; preds = %29, %21
  %35 = phi ptr [ %22, %21 ], [ %30, %29 ]
  %36 = tail call i32 @spi_sync(ptr noundef %14, ptr noundef %35) #6
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load ptr, ptr %0, align 64
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %39, ptr noundef nonnull @.str.2) #7
  br label %53

40:                                               ; preds = %34
  %41 = load ptr, ptr %13, align 4
  %42 = getelementptr inbounds %struct.spi_device, ptr %41, i32 0, i32 2
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.spi_controller, ptr %43, i32 0, i32 10
  %45 = load i16, ptr %44, align 4
  %46 = and i16 %45, 1
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %40
  %49 = load i16, ptr %11, align 1
  br label %53

50:                                               ; preds = %40
  %51 = getelementptr %struct.ks8851_net, ptr %0, i32 0, i32 4, i32 2
  %52 = load i16, ptr %51, align 1
  br label %53

53:                                               ; preds = %50, %48, %38
  %54 = phi i16 [ 0, %38 ], [ %52, %50 ], [ %49, %48 ]
  %55 = zext i16 %54 to i32
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ks8851_wrreg16_spi(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = alloca [2 x i16], align 4
  %5 = getelementptr inbounds %struct.ks8851_net_spi, ptr %0, i32 0, i32 6
  %6 = getelementptr inbounds %struct.ks8851_net_spi, ptr %0, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  %7 = and i32 %1, 2
  %8 = icmp eq i32 %7, 0
  %9 = select i1 %8, i32 12, i32 48
  %10 = shl i32 %1, 10
  %11 = or i32 %9, %10
  %12 = lshr i32 %1, 6
  %13 = or i32 %11, %12
  %14 = trunc i32 %13 to i16
  %15 = or i16 %14, 64
  store i16 %15, ptr %4, align 4
  %16 = trunc i32 %2 to i16
  %17 = getelementptr inbounds [2 x i16], ptr %4, i32 0, i32 1
  store i16 %16, ptr %17, align 2
  store ptr %4, ptr %5, align 4
  %18 = getelementptr inbounds %struct.ks8851_net_spi, ptr %0, i32 0, i32 6, i32 1
  store ptr null, ptr %18, align 4
  %19 = getelementptr inbounds %struct.ks8851_net_spi, ptr %0, i32 0, i32 6, i32 2
  store i32 4, ptr %19, align 4
  %20 = getelementptr inbounds %struct.ks8851_net_spi, ptr %0, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = call i32 @spi_sync(ptr noundef %21, ptr noundef %6) #6
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load ptr, ptr %0, align 64
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %25, ptr noundef nonnull @.str.3) #7
  br label %26

26:                                               ; preds = %24, %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ks8851_rdfifo_spi(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca [1 x i8], align 1
  %5 = getelementptr inbounds %struct.ks8851_net_spi, ptr %0, i32 0, i32 7
  %6 = getelementptr inbounds %struct.ks8851_net_spi, ptr %0, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #6
  store i8 -128, ptr %4, align 1
  store ptr %4, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ks8851_net_spi, ptr %0, i32 0, i32 7, i32 0, i32 1
  store ptr null, ptr %7, align 4
  %8 = getelementptr inbounds %struct.ks8851_net_spi, ptr %0, i32 0, i32 7, i32 0, i32 2
  store i32 1, ptr %8, align 4
  %9 = getelementptr %struct.ks8851_net_spi, ptr %0, i32 0, i32 7, i32 1
  %10 = getelementptr %struct.ks8851_net_spi, ptr %0, i32 0, i32 7, i32 1, i32 1
  store ptr %1, ptr %10, align 4
  store ptr null, ptr %9, align 4
  %11 = getelementptr %struct.ks8851_net_spi, ptr %0, i32 0, i32 7, i32 1, i32 2
  store i32 %2, ptr %11, align 4
  %12 = getelementptr inbounds %struct.ks8851_net_spi, ptr %0, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = call i32 @spi_sync(ptr noundef %13, ptr noundef %6) #6
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load ptr, ptr %0, align 64
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %17, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ks8851_rdfifo_spi) #7
  br label %18

18:                                               ; preds = %16, %3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ks8851_wrfifo_spi(ptr noundef %0, ptr nocapture noundef readonly %1, i1 noundef zeroext %2) #2 {
  %4 = getelementptr inbounds %struct.ks8851_net_spi, ptr %0, i32 0, i32 7
  %5 = getelementptr inbounds %struct.ks8851_net_spi, ptr %0, i32 0, i32 5
  %6 = getelementptr inbounds %struct.ks8851_net, ptr %0, i32 0, i32 9
  %7 = load i8, ptr %6, align 2
  %8 = add i8 %7, 1
  store i8 %8, ptr %6, align 2
  %9 = and i8 %7, 63
  %10 = zext i8 %9 to i32
  %11 = or i32 %10, 32768
  %12 = select i1 %2, i32 %11, i32 %10
  %13 = getelementptr inbounds %struct.ks8851_net, ptr %0, i32 0, i32 3
  %14 = getelementptr [6 x i8], ptr %13, i32 0, i32 1
  store i8 -64, ptr %14, align 1
  %15 = trunc i32 %12 to i16
  %16 = getelementptr %struct.ks8851_net, ptr %0, i32 0, i32 3, i32 0, i32 1
  store i16 %15, ptr %16, align 2
  %17 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %18 = load i32, ptr %17, align 8
  %19 = trunc i32 %18 to i16
  %20 = getelementptr %struct.ks8851_net, ptr %0, i32 0, i32 3, i32 0, i32 2
  store i16 %19, ptr %20, align 4
  store ptr %14, ptr %4, align 4
  %21 = getelementptr inbounds %struct.ks8851_net_spi, ptr %0, i32 0, i32 7, i32 0, i32 1
  store ptr null, ptr %21, align 4
  %22 = getelementptr inbounds %struct.ks8851_net_spi, ptr %0, i32 0, i32 7, i32 0, i32 2
  store i32 5, ptr %22, align 4
  %23 = getelementptr %struct.ks8851_net_spi, ptr %0, i32 0, i32 7, i32 1
  %24 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %25 = load ptr, ptr %24, align 4
  store ptr %25, ptr %23, align 4
  %26 = getelementptr %struct.ks8851_net_spi, ptr %0, i32 0, i32 7, i32 1, i32 1
  store ptr null, ptr %26, align 4
  %27 = load i32, ptr %17, align 8
  %28 = add i32 %27, 3
  %29 = and i32 %28, -4
  %30 = getelementptr %struct.ks8851_net_spi, ptr %0, i32 0, i32 7, i32 1, i32 2
  store i32 %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.ks8851_net_spi, ptr %0, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 @spi_sync(ptr noundef %32, ptr noundef %5) #6
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %3
  %36 = load ptr, ptr %0, align 64
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %36, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ks8851_wrfifo_spi) #7
  br label %37

37:                                               ; preds = %35, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ks8851_start_xmit_spi(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 8
  %5 = add i32 %4, 7
  %6 = and i32 %5, -4
  %7 = getelementptr i8, ptr %1, i32 1412
  tail call void @_raw_spin_lock(ptr noundef %7) #6
  %8 = getelementptr i8, ptr %1, i32 1540
  %9 = load i16, ptr %8, align 4
  %10 = zext i16 %9 to i32
  %11 = icmp ugt i32 %6, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 87
  %14 = load ptr, ptr %13, align 64
  %15 = getelementptr inbounds %struct.netdev_queue, ptr %14, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %15) #6
  br label %20

16:                                               ; preds = %2
  %17 = trunc i32 %6 to i16
  %18 = sub i16 %9, %17
  store i16 %18, ptr %8, align 4
  %19 = getelementptr i8, ptr %1, i32 1612
  tail call void @skb_queue_tail(ptr noundef %19, ptr noundef %0) #6
  br label %20

20:                                               ; preds = %16, %12
  %21 = phi i32 [ 16, %12 ], [ 0, %16 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  %22 = load i16, ptr %7, align 4
  %23 = add i16 %22, 1
  store i16 %23, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !11
  %24 = getelementptr i8, ptr %1, i32 1748
  %25 = load ptr, ptr @system_wq, align 4
  %26 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %25, ptr noundef %24) #6
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ks8851_rx_skb_spi(ptr nocapture noundef readnone %0, ptr noundef %1) #2 {
  %3 = tail call i32 @netif_rx_ni(ptr noundef %1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ks8851_flush_tx_work_spi(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.ks8851_net_spi, ptr %0, i32 0, i32 2
  %3 = tail call zeroext i1 @flush_work(ptr noundef %2) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ks8851_tx_work(ptr noundef %0) #2 {
  %2 = alloca [2 x i16], align 4
  %3 = alloca [2 x i16], align 4
  %4 = alloca [2 x i16], align 4
  %5 = getelementptr i8, ptr %0, i32 -340
  %6 = getelementptr i8, ptr %0, i32 -136
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  %9 = getelementptr i8, ptr %0, i32 -20
  tail call void @mutex_lock(ptr noundef %9) #6
  br i1 %8, label %88, label %10

10:                                               ; preds = %1
  %11 = getelementptr i8, ptr %0, i32 -202
  %12 = getelementptr i8, ptr %0, i32 132
  %13 = getelementptr i8, ptr %0, i32 20
  %14 = getelementptr inbounds [2 x i16], ptr %4, i32 0, i32 1
  %15 = getelementptr i8, ptr %0, i32 136
  %16 = getelementptr i8, ptr %0, i32 140
  %17 = getelementptr i8, ptr %0, i32 16
  %18 = getelementptr i8, ptr %0, i32 228
  %19 = getelementptr i8, ptr %0, i32 76
  %20 = getelementptr i8, ptr %0, i32 -206
  %21 = getelementptr i8, ptr %0, i32 -275
  %22 = getelementptr i8, ptr %0, i32 -274
  %23 = getelementptr i8, ptr %0, i32 -272
  %24 = getelementptr i8, ptr %0, i32 232
  %25 = getelementptr i8, ptr %0, i32 236
  %26 = getelementptr i8, ptr %0, i32 324
  %27 = getelementptr i8, ptr %0, i32 328
  %28 = getelementptr i8, ptr %0, i32 332
  %29 = getelementptr inbounds [2 x i16], ptr %3, i32 0, i32 1
  %30 = getelementptr inbounds [2 x i16], ptr %2, i32 0, i32 1
  br label %31

31:                                               ; preds = %87, %10
  %32 = call ptr @skb_dequeue(ptr noundef %6) #6
  %33 = load ptr, ptr %6, align 4
  %34 = icmp eq ptr %33, %6
  %35 = icmp eq ptr %32, null
  br i1 %35, label %87, label %36

36:                                               ; preds = %31
  %37 = load i16, ptr %11, align 2
  %38 = or i16 %37, 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i16 2162, ptr %4, align 4
  store i16 %38, ptr %14, align 2
  store ptr %4, ptr %12, align 4
  store ptr null, ptr %15, align 4
  store i32 4, ptr %16, align 4
  %39 = load ptr, ptr %17, align 4
  %40 = call i32 @spi_sync(ptr noundef %39, ptr noundef %13) #6
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load ptr, ptr %5, align 64
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %43, ptr noundef nonnull @.str.3) #7
  br label %44

44:                                               ; preds = %42, %36
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  %45 = load i8, ptr %20, align 2
  %46 = add i8 %45, 1
  store i8 %46, ptr %20, align 2
  %47 = and i8 %45, 63
  %48 = zext i8 %47 to i32
  %49 = or i32 %48, 32768
  %50 = select i1 %34, i32 %49, i32 %48
  store i8 -64, ptr %21, align 1
  %51 = trunc i32 %50 to i16
  store i16 %51, ptr %22, align 2
  %52 = getelementptr inbounds %struct.sk_buff, ptr %32, i32 0, i32 5
  %53 = load i32, ptr %52, align 8
  %54 = trunc i32 %53 to i16
  store i16 %54, ptr %23, align 4
  store ptr %21, ptr %18, align 4
  store ptr null, ptr %24, align 4
  store i32 5, ptr %25, align 4
  %55 = getelementptr inbounds %struct.sk_buff, ptr %32, i32 0, i32 17
  %56 = load ptr, ptr %55, align 4
  store ptr %56, ptr %26, align 4
  store ptr null, ptr %27, align 4
  %57 = load i32, ptr %52, align 8
  %58 = add i32 %57, 3
  %59 = and i32 %58, -4
  store i32 %59, ptr %28, align 4
  %60 = load ptr, ptr %17, align 4
  %61 = call i32 @spi_sync(ptr noundef %60, ptr noundef %19) #6
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %44
  %64 = load ptr, ptr %5, align 64
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %64, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ks8851_wrfifo_spi) #7
  br label %65

65:                                               ; preds = %63, %44
  %66 = load i16, ptr %11, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i16 2162, ptr %3, align 4
  store i16 %66, ptr %29, align 2
  store ptr %3, ptr %12, align 4
  store ptr null, ptr %15, align 4
  store i32 4, ptr %16, align 4
  %67 = load ptr, ptr %17, align 4
  %68 = call i32 @spi_sync(ptr noundef %67, ptr noundef %13) #6
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load ptr, ptr %5, align 64
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %71, ptr noundef nonnull @.str.3) #7
  br label %72

72:                                               ; preds = %70, %65
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i16 78, ptr %2, align 4
  store i16 1, ptr %30, align 2
  store ptr %2, ptr %12, align 4
  store ptr null, ptr %15, align 4
  store i32 4, ptr %16, align 4
  %73 = load ptr, ptr %17, align 4
  %74 = call i32 @spi_sync(ptr noundef %73, ptr noundef %13) #6
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = load ptr, ptr %5, align 64
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %77, ptr noundef nonnull @.str.3) #7
  br label %78

78:                                               ; preds = %76, %72
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  %79 = load ptr, ptr %5, align 64
  %80 = load i32, ptr %52, align 8
  %81 = getelementptr inbounds %struct.net_device, ptr %79, i32 0, i32 36, i32 3
  %82 = load i32, ptr %81, align 4
  %83 = add i32 %82, %80
  store i32 %83, ptr %81, align 4
  %84 = getelementptr inbounds %struct.net_device, ptr %79, i32 0, i32 36, i32 1
  %85 = load i32, ptr %84, align 4
  %86 = add i32 %85, 1
  store i32 %86, ptr %84, align 4
  call void @consume_skb(ptr noundef nonnull %32) #6
  br label %87

87:                                               ; preds = %78, %31
  br i1 %34, label %88, label %31

88:                                               ; preds = %87, %1
  call void @mutex_unlock(ptr noundef %9) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ks8851_probe_common(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx_ni(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ks8851_remove_common(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ks8851_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ks8851_resume(ptr noundef) #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
!8 = !{i64 2149242598}
!9 = !{i64 2149238422}
!10 = !{i64 2149238497, i64 2149238524, i64 2149238571, i64 2149238593, i64 2149238621, i64 2149238641}
!11 = !{i64 2149265601}
