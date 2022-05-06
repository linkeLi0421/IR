; ModuleID = '/llk/IR/drivers/net/ethernet/intel/igb/igb_ptp.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/igb/igb_ptp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.igb_adapter = type { [128 x i32], ptr, ptr, i32, i32, i32, [10 x %struct.msix_entry], i32, i32, i16, i16, i16, i32, i32, [16 x ptr], i32, [16 x ptr], i32, i32, %struct.timer_list, %struct.timer_list, i16, i32, i32, i32, i16, i16, ptr, %struct.work_struct, %struct.work_struct, i8, i8, %struct.timer_list, i32, ptr, %struct.spinlock, %struct.rtnl_link_stats64, %struct.e1000_hw, %struct.e1000_hw_stats, %struct.e1000_phy_info, i32, [12 x i8], %struct.igb_ring, %struct.igb_ring, i32, [8 x ptr], i32, i32, i16, i16, i32, ptr, i32, i32, i32, ptr, ptr, %struct.ptp_clock_info, %struct.delayed_work, %struct.work_struct, ptr, %struct.hwtstamp_config, i32, i32, i32, i32, %struct.spinlock, %struct.cyclecounter, %struct.timecounter, i32, i32, i32, i8, [4 x %struct.ptp_pin_desc], [2 x %struct.anon.120], [32 x i8], ptr, i8, %struct.i2c_algo_bit_data, %struct.i2c_adapter, ptr, i32, [128 x i8], i32, i32, %struct.e1000_info, i16, %struct.hlist_head, %struct.hlist_head, i32, %struct.spinlock, [3 x i8], ptr, %struct.vf_mac_filter, ptr, [36 x i8] }
%struct.msix_entry = type { i32, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.e1000_hw = type { ptr, ptr, ptr, i32, %struct.e1000_mac_info, %struct.e1000_fc_info, %struct.e1000_phy_info, %struct.e1000_nvm_info, %struct.e1000_bus_info, %struct.e1000_mbx_info, %struct.e1000_host_mng_dhcp_cookie, %union.anon.116, i16, i16, i16, i16, i8 }
%struct.e1000_mac_info = type { %struct.e1000_mac_operations, [6 x i8], [6 x i8], i32, i32, i32, i32, i32, i32, i16, i16, [128 x i32], i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.e1000_thermal_sensor_data }
%struct.e1000_mac_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_thermal_sensor_data = type { [3 x %struct.e1000_thermal_diode_data] }
%struct.e1000_thermal_diode_data = type { i8, i8, i8, i8 }
%struct.e1000_fc_info = type { i32, i32, i16, i8, i8, i32, i32 }
%struct.e1000_nvm_info = type { %struct.e1000_nvm_operations, i32, i32, i32, i32, i16, i16, i16, i16, i16 }
%struct.e1000_nvm_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_bus_info = type { i32, i32, i32, i32, i16, i16 }
%struct.e1000_mbx_info = type { %struct.e1000_mbx_operations, %struct.e1000_mbx_stats, i32, i32, i16 }
%struct.e1000_mbx_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_mbx_stats = type { i32, i32, i32, i32, i32 }
%struct.e1000_host_mng_dhcp_cookie = type { i32, i8, i8, i16, i32, i16, i8, i8 }
%union.anon.116 = type { %struct.e1000_dev_spec_82575 }
%struct.e1000_dev_spec_82575 = type { i8, i8, i8, i8, %struct.e1000_sfp_flags, i8, i8, i8, i8 }
%struct.e1000_sfp_flags = type { i8 }
%struct.e1000_hw_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.e1000_phy_info = type { %struct.e1000_phy_operations, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, [4 x i16], i8, i8, i8, i8, i8, i8, i8 }
%struct.e1000_phy_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.igb_ring = type { ptr, ptr, ptr, ptr, %union.anon.109, ptr, i32, ptr, i32, i32, i16, i8, i8, i8, i8, i32, i32, i32, i32, i16, i16, i16, %union.anon.113, %struct.xdp_rxq_info }
%union.anon.109 = type { ptr }
%union.anon.113 = type { %struct.anon.115 }
%struct.anon.115 = type { ptr, %struct.igb_rx_queue_stats, %struct.u64_stats_sync }
%struct.igb_rx_queue_stats = type { i64, i64, i64, i64, i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [40 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.ptp_pin_desc = type { [64 x i8], i32, i32, i32, [5 x i32] }
%struct.anon.120 = type { %struct.timespec64, %struct.timespec64 }
%struct.timespec64 = type { i64, i32 }
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.23 }
%union.anon.23 = type { i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.e1000_info = type { ptr, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.spinlock = type { %union.anon.22 }
%union.anon.22 = type { %struct.raw_spinlock }
%struct.vf_mac_filter = type { %struct.list_head, i32, i8, [6 x i8] }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, [2 x i8], ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, [4 x i8], i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [11 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [11 x ptr], [11 x ptr], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, [2 x i8], i32, i32, ptr, i32, [7 x i8], [5 x i8] }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.3, [48 x i8], %union.anon.4, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.6, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.3 = type { i64 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { i32, ptr }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.8, i32, i32, i32, i16, i16, %union.anon.10, %union.anon.11, %union.anon.12, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.8 = type { i32 }
%union.anon.10 = type { i32 }
%union.anon.11 = type { i32 }
%union.anon.12 = type { i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.ifreq = type { %union.anon.19, %union.anon.20 }
%union.anon.19 = type { [16 x i8] }
%union.anon.20 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.108, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.ref_tracker_dir = type {}
%struct.possible_net_t = type {}
%union.anon.108 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.ptp_system_timestamp = type { %struct.timespec64, %struct.timespec64 }
%struct.ptp_clock_request = type { i32, %union.anon.117 }
%union.anon.117 = type { %struct.ptp_perout_request }
%struct.ptp_perout_request = type { %union.anon.118, %struct.ptp_clock_time, i32, i32, %union.anon.119 }
%union.anon.118 = type { %struct.ptp_clock_time }
%struct.ptp_clock_time = type { i64, i32, i32 }
%union.anon.119 = type { %struct.ptp_clock_time }
%struct.ptp_extts_request = type { i32, i32, [2 x i32] }

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str = private unnamed_addr constant [28 x i8] c"clearing Rx timestamp hang\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"clearing Tx timestamp hang\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%pm\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"ptp_clock_register failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"added PHC on %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"removed PHC on %s\0A\00", align 1
@igb_pin_direction.mask = internal unnamed_addr constant [4 x i32] [i32 4194304, i32 8388608, i32 1024, i32 2048], align 4
@igb_pin_perout.aux0_sel_sdp = internal unnamed_addr constant [4 x i32] [i32 0, i32 1, i32 2, i32 3], align 4
@igb_pin_perout.aux1_sel_sdp = internal unnamed_addr constant [4 x i32] [i32 0, i32 8, i32 16, i32 24], align 4
@igb_pin_perout.ts_sdp_en = internal unnamed_addr constant [4 x i32] [i32 256, i32 2048, i32 16384, i32 131072], align 4
@igb_pin_perout.ts_sdp_sel_tt0 = internal unnamed_addr constant [4 x i32] zeroinitializer, align 4
@igb_pin_perout.ts_sdp_sel_tt1 = internal unnamed_addr constant [4 x i32] [i32 64, i32 512, i32 4096, i32 32768], align 4
@igb_pin_perout.ts_sdp_sel_fc0 = internal unnamed_addr constant [4 x i32] [i32 128, i32 1024, i32 8192, i32 65536], align 4
@igb_pin_perout.ts_sdp_sel_clr = internal unnamed_addr constant [4 x i32] [i32 192, i32 1536, i32 12288, i32 98304], align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"SDP%d\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @igb_ptp_rx_hang(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 37
  %3 = tail call i32 @igb_rd32(ptr noundef %2, i32 noundef 46624) #10
  %4 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 37, i32 4, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 2
  br i1 %6, label %7, label %34

7:                                                ; preds = %1
  %8 = and i32 %3, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = load volatile i32, ptr @jiffies, align 64
  %12 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 63
  store i32 %11, ptr %12, align 8
  br label %34

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 63
  %15 = load i32, ptr %14, align 8
  %16 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 64
  %17 = load i32, ptr %16, align 4
  %18 = sub i32 %15, %17
  %19 = icmp slt i32 %18, 0
  %20 = select i1 %19, i32 %17, i32 %15
  %21 = load volatile i32, ptr @jiffies, align 64
  %22 = sub i32 500, %21
  %23 = add i32 %22, %20
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %13
  %26 = tail call i32 @igb_rd32(ptr noundef %2, i32 noundef 46632) #10
  %27 = load volatile i32, ptr @jiffies, align 64
  store i32 %27, ptr %14, align 8
  %28 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 71
  %29 = load i32, ptr %28, align 32
  %30 = add i32 %29, 1
  store i32 %30, ptr %28, align 32
  %31 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 34
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %33, ptr noundef nonnull @.str) #11
  br label %34

34:                                               ; preds = %25, %13, %10, %1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_rd32(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @igb_ptp_tx_hang(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 37
  %3 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 62
  %4 = load i32, ptr %3, align 4
  %5 = load volatile i32, ptr @jiffies, align 64
  %6 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 60
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %30, label %9

9:                                                ; preds = %1
  %10 = add i32 %4, 1500
  %11 = sub i32 %10, %5
  %12 = icmp sgt i32 %11, -1
  %13 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 3
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %14, 8
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %16, i1 true, i1 %12
  br i1 %17, label %30, label %18

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 59
  %20 = tail call zeroext i1 @cancel_work_sync(ptr noundef %19) #10
  %21 = load ptr, ptr %6, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %21, i32 noundef 1) #10
  store ptr null, ptr %6, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #10, !srcloc !9
  %22 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 8, ptr elementtype(i32) %13) #10, !srcloc !10
  %23 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 69
  %24 = load i32, ptr %23, align 8
  %25 = add i32 %24, 1
  store i32 %25, ptr %23, align 8
  %26 = tail call i32 @igb_rd32(ptr noundef %2, i32 noundef 46620) #10
  %27 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 34
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %29, ptr noundef nonnull @.str.1) #11
  br label %30

30:                                               ; preds = %18, %9, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @igb_ptp_rx_pktstamp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 64
  %5 = getelementptr inbounds %struct.igb_adapter, ptr %4, i32 0, i32 65
  %6 = load i32, ptr %5, align 16
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %42, label %9

9:                                                ; preds = %3
  %10 = load i64, ptr %1, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %42

12:                                               ; preds = %9
  %13 = getelementptr i64, ptr %1, i32 1
  %14 = load i64, ptr %13, align 8
  %15 = getelementptr inbounds %struct.igb_adapter, ptr %4, i32 0, i32 37, i32 4, i32 3
  %16 = load i32, ptr %15, align 16
  switch i32 %16, label %28 [
    i32 2, label %17
    i32 3, label %17
    i32 5, label %17
    i32 4, label %17
    i32 6, label %23
    i32 7, label %23
  ]

17:                                               ; preds = %12, %12, %12, %12
  %18 = getelementptr inbounds %struct.igb_adapter, ptr %4, i32 0, i32 66
  %19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %18) #10
  %20 = getelementptr inbounds %struct.igb_adapter, ptr %4, i32 0, i32 68
  %21 = tail call i64 @timecounter_cyc2time(ptr noundef %20, i64 noundef %14) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %18, i32 noundef %19) #10
  %22 = load i32, ptr %15, align 16
  br label %28

23:                                               ; preds = %12, %12
  %24 = lshr i64 %14, 32
  %25 = mul nuw nsw i64 %24, 1000000000
  %26 = and i64 %14, 4294967295
  %27 = add nuw nsw i64 %25, %26
  br label %28

28:                                               ; preds = %23, %17, %12
  %29 = phi i32 [ %16, %12 ], [ %22, %17 ], [ %16, %23 ]
  %30 = phi i64 [ 0, %12 ], [ %21, %17 ], [ %27, %23 ]
  %31 = icmp eq i32 %29, 6
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.igb_adapter, ptr %4, i32 0, i32 25
  %34 = load i16, ptr %33, align 64
  switch i16 %34, label %38 [
    i16 10, label %35
    i16 100, label %36
    i16 1000, label %37
  ]

35:                                               ; preds = %32
  br label %38

36:                                               ; preds = %32
  br label %38

37:                                               ; preds = %32
  br label %38

38:                                               ; preds = %37, %36, %35, %32, %28
  %39 = phi i32 [ 0, %32 ], [ 448, %37 ], [ 2213, %36 ], [ 20662, %35 ], [ 0, %28 ]
  %40 = zext i32 %39 to i64
  %41 = sub i64 %30, %40
  store i64 %41, ptr %2, align 8
  br label %42

42:                                               ; preds = %38, %9, %3
  %43 = phi i32 [ 16, %38 ], [ 0, %3 ], [ 0, %9 ]
  ret i32 %43
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @igb_ptp_rx_rgtstamp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 64
  %4 = getelementptr inbounds %struct.igb_adapter, ptr %3, i32 0, i32 37
  %5 = getelementptr inbounds %struct.igb_adapter, ptr %3, i32 0, i32 65
  %6 = load i32, ptr %5, align 16
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %54, label %9

9:                                                ; preds = %2
  %10 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 46624) #10
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %54, label %13

13:                                               ; preds = %9
  %14 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 46628) #10
  %15 = zext i32 %14 to i64
  %16 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 46632) #10
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.skb_shared_info, ptr %19, i32 0, i32 7
  %21 = getelementptr inbounds %struct.igb_adapter, ptr %3, i32 0, i32 37, i32 4, i32 3
  %22 = load i32, ptr %21, align 16
  switch i32 %22, label %36 [
    i32 2, label %23
    i32 3, label %23
    i32 5, label %23
    i32 4, label %23
    i32 6, label %30
    i32 7, label %30
  ]

23:                                               ; preds = %13, %13, %13, %13
  %24 = shl nuw i64 %17, 32
  %25 = or i64 %24, %15
  %26 = getelementptr inbounds %struct.igb_adapter, ptr %3, i32 0, i32 66
  %27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %26) #10
  %28 = getelementptr inbounds %struct.igb_adapter, ptr %3, i32 0, i32 68
  %29 = tail call i64 @timecounter_cyc2time(ptr noundef %28, i64 noundef %25) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %26, i32 noundef %27) #10
  br label %33

30:                                               ; preds = %13, %13
  %31 = mul nuw nsw i64 %17, 1000000000
  %32 = add nuw nsw i64 %31, %15
  br label %33

33:                                               ; preds = %30, %23
  %34 = phi i64 [ %32, %30 ], [ %29, %23 ]
  store i64 %34, ptr %20, align 8
  %35 = load i32, ptr %21, align 16
  br label %36

36:                                               ; preds = %33, %13
  %37 = phi i32 [ %22, %13 ], [ %35, %33 ]
  %38 = icmp eq i32 %37, 6
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.igb_adapter, ptr %3, i32 0, i32 25
  %41 = load i16, ptr %40, align 64
  switch i16 %41, label %45 [
    i16 10, label %42
    i16 100, label %43
    i16 1000, label %44
  ]

42:                                               ; preds = %39
  br label %45

43:                                               ; preds = %39
  br label %45

44:                                               ; preds = %39
  br label %45

45:                                               ; preds = %44, %43, %42, %39, %36
  %46 = phi i32 [ 0, %39 ], [ 448, %44 ], [ 2213, %43 ], [ 20662, %42 ], [ 0, %36 ]
  %47 = load ptr, ptr %18, align 4
  %48 = getelementptr inbounds %struct.skb_shared_info, ptr %47, i32 0, i32 7
  %49 = load i64, ptr %48, align 8
  %50 = zext i32 %46 to i64
  %51 = sub i64 %49, %50
  store i64 %51, ptr %48, align 8
  %52 = load volatile i32, ptr @jiffies, align 64
  %53 = getelementptr inbounds %struct.igb_adapter, ptr %3, i32 0, i32 64
  store i32 %52, ptr %53, align 4
  br label %54

54:                                               ; preds = %45, %9, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @igb_ptp_get_ts_config(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ifreq, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %4, i32 12, i32 -1090519040) #12, !srcloc !11
  %6 = extractvalue { i32, i32 } %5, 0
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %2
  %9 = getelementptr i8, ptr %0, i32 4920
  %10 = tail call ptr @llvm.thread.pointer() #10
  %11 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %12 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %11) #13, !srcloc !12
  %13 = and i32 %12, -13
  %14 = or i32 %13, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #10, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !14
  %15 = tail call i32 @arm_copy_to_user(ptr noundef %4, ptr noundef %9, i32 noundef 12) #10
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #10, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !14
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %16, i32 0, i32 -14
  br label %18

18:                                               ; preds = %8, %2
  %19 = phi i32 [ -14, %2 ], [ %17, %8 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @igb_ptp_set_ts_config(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.hwtstamp_config, align 4
  %4 = getelementptr i8, ptr %0, i32 1408
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %3, i8 0, i32 12, i1 false), !annotation !15
  %5 = getelementptr inbounds %struct.ifreq, ptr %1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 12, i32 -1090519040) #12, !srcloc !16
  %8 = extractvalue { i32, i32 } %7, 0
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %18, !prof !17

10:                                               ; preds = %2
  %11 = tail call ptr @llvm.thread.pointer() #10
  %12 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %13 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %12) #13, !srcloc !12
  %14 = and i32 %13, -13
  %15 = or i32 %14, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #10, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !14
  %16 = call i32 @arm_copy_from_user(ptr noundef nonnull %3, ptr noundef %6, i32 noundef 12) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #10, !srcloc !13
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !14
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18, !prof !17

18:                                               ; preds = %10, %2
  %19 = phi i32 [ %16, %10 ], [ 12, %2 ]
  %20 = sub i32 12, %19
  %21 = getelementptr i8, ptr %3, i32 %20
  call void @llvm.memset.p0.i32(ptr align 1 %21, i8 0, i32 %19, i1 false) #10
  br label %38

22:                                               ; preds = %10
  %23 = call fastcc i32 @igb_ptp_set_timestamp_mode(ptr noundef %4, ptr noundef nonnull %3)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %22
  %26 = getelementptr i8, ptr %0, i32 4920
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(12) %26, ptr noundef nonnull align 4 dereferenceable(12) %3, i32 12, i1 false)
  %27 = load ptr, ptr %5, align 4
  %28 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %27, i32 12, i32 -1090519040) #12, !srcloc !11
  %29 = extractvalue { i32, i32 } %28, 0
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %12) #13, !srcloc !12
  %33 = and i32 %32, -13
  %34 = or i32 %33, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %34) #10, !srcloc !13
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !14
  %35 = call i32 @arm_copy_to_user(ptr noundef %27, ptr noundef nonnull %3, i32 noundef 12) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %32) #10, !srcloc !13
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !14
  %36 = icmp eq i32 %35, 0
  %37 = select i1 %36, i32 0, i32 -14
  br label %38

38:                                               ; preds = %31, %25, %22, %18
  %39 = phi i32 [ %23, %22 ], [ -14, %18 ], [ -14, %25 ], [ %37, %31 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @igb_ptp_set_timestamp_mode(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 37
  %4 = getelementptr inbounds %struct.hwtstamp_config, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  switch i32 %5, label %116 [
    i32 0, label %6
    i32 1, label %7
  ]

6:                                                ; preds = %2
  br label %7

7:                                                ; preds = %6, %2
  %8 = phi i32 [ 16, %2 ], [ 0, %6 ]
  %9 = getelementptr inbounds %struct.hwtstamp_config, ptr %1, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  switch i32 %10, label %19 [
    i32 0, label %20
    i32 4, label %11
    i32 5, label %12
    i32 12, label %13
    i32 9, label %13
    i32 6, label %13
    i32 13, label %13
    i32 10, label %13
    i32 7, label %13
    i32 14, label %13
    i32 11, label %13
    i32 8, label %13
    i32 3, label %14
    i32 15, label %14
    i32 1, label %14
  ]

11:                                               ; preds = %7
  br label %20

12:                                               ; preds = %7
  br label %20

13:                                               ; preds = %7, %7, %7, %7, %7, %7, %7, %7, %7
  store i32 12, ptr %9, align 4
  br label %20

14:                                               ; preds = %7, %7, %7
  %15 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 37, i32 4, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  store i32 1, ptr %9, align 4
  br label %20

19:                                               ; preds = %14, %7
  store i32 0, ptr %9, align 4
  br label %116

20:                                               ; preds = %18, %13, %12, %11, %7
  %21 = phi i1 [ false, %18 ], [ true, %13 ], [ false, %12 ], [ false, %11 ], [ false, %7 ]
  %22 = phi i1 [ false, %18 ], [ true, %13 ], [ true, %12 ], [ true, %11 ], [ false, %7 ]
  %23 = phi i32 [ 0, %18 ], [ 0, %13 ], [ 1, %12 ], [ 0, %11 ], [ %10, %7 ]
  %24 = phi i1 [ true, %18 ], [ true, %13 ], [ true, %12 ], [ true, %11 ], [ false, %7 ]
  %25 = phi i32 [ 24, %18 ], [ 26, %13 ], [ 18, %12 ], [ 18, %11 ], [ %10, %7 ]
  %26 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 37, i32 4, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %33

29:                                               ; preds = %20
  %30 = or i32 %25, %8
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %31, i32 0, i32 -22
  br label %116

33:                                               ; preds = %20
  %34 = icmp ugt i32 %27, 2
  %35 = and i1 %24, %34
  br i1 %35, label %36, label %48

36:                                               ; preds = %33
  store i32 1, ptr %9, align 4
  %37 = load i32, ptr %26, align 4
  %38 = and i32 %37, -2
  %39 = icmp eq i32 %38, 6
  br i1 %39, label %40, label %48

40:                                               ; preds = %36
  %41 = tail call i32 @igb_rd32(ptr noundef %3, i32 noundef 9220) #10
  %42 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 37, i32 1
  %43 = load volatile ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %48, label %45, !prof !18

45:                                               ; preds = %40
  %46 = or i32 %41, -2147483648
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !19
  tail call void @arm_heavy_mb() #10
  %47 = getelementptr i8, ptr %43, i32 9220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %46) #10, !srcloc !20
  br label %48

48:                                               ; preds = %45, %40, %36, %33
  %49 = phi i1 [ %21, %33 ], [ true, %36 ], [ true, %45 ], [ true, %40 ]
  %50 = phi i1 [ %22, %33 ], [ true, %36 ], [ true, %45 ], [ true, %40 ]
  %51 = phi i32 [ %25, %33 ], [ 24, %36 ], [ 24, %45 ], [ 24, %40 ]
  %52 = tail call i32 @igb_rd32(ptr noundef %3, i32 noundef 46612) #10
  %53 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 37, i32 1
  %54 = load volatile ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %60, label %56, !prof !18

56:                                               ; preds = %48
  %57 = and i32 %52, -17
  %58 = or i32 %57, %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !21
  tail call void @arm_heavy_mb() #10
  %59 = getelementptr i8, ptr %54, i32 46612
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %58) #10, !srcloc !20
  br label %60

60:                                               ; preds = %56, %48
  %61 = tail call i32 @igb_rd32(ptr noundef %3, i32 noundef 46624) #10
  %62 = load volatile ptr, ptr %53, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %68, label %64, !prof !18

64:                                               ; preds = %60
  %65 = and i32 %61, -31
  %66 = or i32 %65, %51
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !22
  tail call void @arm_heavy_mb() #10
  %67 = getelementptr i8, ptr %62, i32 46624
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 %66) #10, !srcloc !20
  br label %68

68:                                               ; preds = %64, %60
  %69 = load volatile ptr, ptr %53, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %73, label %71, !prof !18

71:                                               ; preds = %68
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !23
  tail call void @arm_heavy_mb() #10
  %72 = getelementptr i8, ptr %69, i32 24400
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 %23) #10, !srcloc !20
  br label %73

73:                                               ; preds = %71, %68
  %74 = load volatile ptr, ptr %53, align 4
  %75 = icmp eq ptr %74, null
  br i1 %49, label %76, label %79

76:                                               ; preds = %73
  br i1 %75, label %82, label %77, !prof !18

77:                                               ; preds = %76
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !24
  tail call void @arm_heavy_mb() #10
  %78 = getelementptr i8, ptr %74, i32 23740
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 1140885751) #10, !srcloc !20
  br label %82

79:                                               ; preds = %73
  br i1 %75, label %82, label %80, !prof !18

80:                                               ; preds = %79
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !25
  tail call void @arm_heavy_mb() #10
  %81 = getelementptr i8, ptr %74, i32 23740
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 0) #10, !srcloc !20
  br label %82

82:                                               ; preds = %80, %79, %77, %76
  %83 = load volatile ptr, ptr %53, align 4
  %84 = icmp eq ptr %83, null
  br i1 %50, label %85, label %107

85:                                               ; preds = %82
  br i1 %84, label %88, label %86, !prof !18

86:                                               ; preds = %85
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !26
  tail call void @arm_heavy_mb() #10
  %87 = getelementptr i8, ptr %83, i32 23180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 16129) #10, !srcloc !20
  br label %88

88:                                               ; preds = %86, %85
  %89 = load volatile ptr, ptr %53, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %93, label %91, !prof !18

91:                                               ; preds = %88
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !27
  tail call void @arm_heavy_mb() #10
  %92 = getelementptr i8, ptr %89, i32 23212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 528384) #10, !srcloc !20
  br label %93

93:                                               ; preds = %91, %88
  %94 = load i32, ptr %26, align 4
  %95 = icmp eq i32 %94, 2
  br i1 %95, label %96, label %101

96:                                               ; preds = %93
  %97 = load volatile ptr, ptr %53, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %101, label %99, !prof !18

99:                                               ; preds = %96
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !28
  tail call void @arm_heavy_mb() #10
  %100 = getelementptr i8, ptr %97, i32 22988
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %100, i32 16129) #10, !srcloc !20
  br label %101

101:                                              ; preds = %99, %96, %93
  %102 = phi i32 [ -402620399, %93 ], [ 1744863249, %99 ], [ 1744863249, %96 ]
  %103 = load volatile ptr, ptr %53, align 4
  %104 = icmp eq ptr %103, null
  br i1 %104, label %110, label %105, !prof !18

105:                                              ; preds = %101
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !29
  tail call void @arm_heavy_mb() #10
  %106 = getelementptr i8, ptr %103, i32 23020
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %106, i32 %102) #10, !srcloc !20
  br label %110

107:                                              ; preds = %82
  br i1 %84, label %110, label %108, !prof !18

108:                                              ; preds = %107
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !30
  tail call void @arm_heavy_mb() #10
  %109 = getelementptr i8, ptr %83, i32 23020
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %109, i32 -268435456) #10, !srcloc !20
  br label %110

110:                                              ; preds = %108, %107, %105, %101
  %111 = tail call i32 @igb_rd32(ptr noundef %3, i32 noundef 8) #10
  %112 = tail call i32 @igb_rd32(ptr noundef %3, i32 noundef 46616) #10
  %113 = tail call i32 @igb_rd32(ptr noundef %3, i32 noundef 46620) #10
  %114 = tail call i32 @igb_rd32(ptr noundef %3, i32 noundef 46628) #10
  %115 = tail call i32 @igb_rd32(ptr noundef %3, i32 noundef 46632) #10
  br label %116

116:                                              ; preds = %110, %29, %19, %2
  %117 = phi i32 [ -34, %19 ], [ 0, %110 ], [ -34, %2 ], [ %32, %29 ]
  ret i32 %117
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @igb_ptp_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 64
  %4 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 37, i32 4, i32 3
  %5 = load i32, ptr %4, align 4
  switch i32 %5, label %102 [
    i32 2, label %6
    i32 3, label %27
    i32 5, label %27
    i32 4, label %27
    i32 6, label %68
    i32 7, label %68
  ]

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 57
  %8 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 57, i32 1
  %9 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 72
  %10 = load ptr, ptr %9, align 32
  %11 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %8, i32 noundef 16, ptr noundef nonnull @.str.2, ptr noundef %10)
  store ptr null, ptr %7, align 4
  %12 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 57, i32 2
  store i32 999999881, ptr %12, align 4
  %13 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 57, i32 4
  store i32 0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 57, i32 7
  store i32 0, ptr %14, align 4
  %15 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 57, i32 10
  store ptr @igb_ptp_adjfreq_82576, ptr %15, align 4
  %16 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 57, i32 12
  store ptr @igb_ptp_adjtime_82576, ptr %16, align 4
  %17 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 57, i32 14
  store ptr @igb_ptp_gettimex_82576, ptr %17, align 4
  %18 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 57, i32 16
  store ptr @igb_ptp_settime_82576, ptr %18, align 4
  %19 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 57, i32 17
  store ptr @igb_ptp_feature_enable, ptr %19, align 4
  %20 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 67
  store ptr @igb_ptp_read_82576, ptr %20, align 8
  %21 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 67, i32 1
  store i64 -1, ptr %21, align 8
  %22 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 67, i32 2
  store i32 1, ptr %22, align 8
  %23 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 67, i32 3
  store i32 19, ptr %23, align 4
  %24 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 65
  %25 = load i32, ptr %24, align 16
  %26 = or i32 %25, 2
  store i32 %26, ptr %24, align 16
  br label %104

27:                                               ; preds = %1, %1, %1
  %28 = getelementptr %struct.igb_adapter, ptr %0, i32 0, i32 73, i32 0
  %29 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %28, i32 noundef 64, ptr noundef nonnull @.str.8, i32 noundef 0) #10
  %30 = getelementptr %struct.igb_adapter, ptr %0, i32 0, i32 73, i32 0, i32 1
  store i32 0, ptr %30, align 4
  %31 = getelementptr %struct.igb_adapter, ptr %0, i32 0, i32 73, i32 0, i32 2
  store i32 0, ptr %31, align 4
  %32 = getelementptr %struct.igb_adapter, ptr %0, i32 0, i32 73, i32 1
  %33 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %32, i32 noundef 64, ptr noundef nonnull @.str.8, i32 noundef 1) #10
  %34 = getelementptr %struct.igb_adapter, ptr %0, i32 0, i32 73, i32 1, i32 1
  store i32 1, ptr %34, align 4
  %35 = getelementptr %struct.igb_adapter, ptr %0, i32 0, i32 73, i32 1, i32 2
  store i32 0, ptr %35, align 4
  %36 = getelementptr %struct.igb_adapter, ptr %0, i32 0, i32 73, i32 2
  %37 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %36, i32 noundef 64, ptr noundef nonnull @.str.8, i32 noundef 2) #10
  %38 = getelementptr %struct.igb_adapter, ptr %0, i32 0, i32 73, i32 2, i32 1
  store i32 2, ptr %38, align 4
  %39 = getelementptr %struct.igb_adapter, ptr %0, i32 0, i32 73, i32 2, i32 2
  store i32 0, ptr %39, align 4
  %40 = getelementptr %struct.igb_adapter, ptr %0, i32 0, i32 73, i32 3
  %41 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %40, i32 noundef 64, ptr noundef nonnull @.str.8, i32 noundef 3) #10
  %42 = getelementptr %struct.igb_adapter, ptr %0, i32 0, i32 73, i32 3, i32 1
  store i32 3, ptr %42, align 4
  %43 = getelementptr %struct.igb_adapter, ptr %0, i32 0, i32 73, i32 3, i32 2
  store i32 0, ptr %43, align 4
  %44 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 57
  %45 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 57, i32 1
  %46 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 72
  %47 = load ptr, ptr %46, align 32
  %48 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %45, i32 noundef 16, ptr noundef nonnull @.str.2, ptr noundef %47)
  store ptr null, ptr %44, align 4
  %49 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 57, i32 2
  store i32 62499999, ptr %49, align 4
  %50 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 57, i32 4
  store i32 2, ptr %50, align 4
  %51 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 57, i32 5
  store i32 2, ptr %51, align 4
  %52 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 57, i32 6
  store i32 4, ptr %52, align 4
  %53 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 57, i32 7
  store i32 0, ptr %53, align 4
  %54 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 57, i32 8
  store ptr %28, ptr %54, align 4
  %55 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 57, i32 9
  store ptr @igb_ptp_adjfine_82580, ptr %55, align 4
  %56 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 57, i32 12
  store ptr @igb_ptp_adjtime_82576, ptr %56, align 4
  %57 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 57, i32 14
  store ptr @igb_ptp_gettimex_82580, ptr %57, align 4
  %58 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 57, i32 16
  store ptr @igb_ptp_settime_82576, ptr %58, align 4
  %59 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 57, i32 17
  store ptr @igb_ptp_feature_enable_82580, ptr %59, align 4
  %60 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 57, i32 18
  store ptr @igb_ptp_verify_pin, ptr %60, align 4
  %61 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 67
  store ptr @igb_ptp_read_82580, ptr %61, align 8
  %62 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 67, i32 1
  store i64 1099511627775, ptr %62, align 8
  %63 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 67, i32 2
  store i32 1, ptr %63, align 8
  %64 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 67, i32 3
  store i32 0, ptr %64, align 4
  %65 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 65
  %66 = load i32, ptr %65, align 16
  %67 = or i32 %66, 2
  store i32 %67, ptr %65, align 16
  br label %104

68:                                               ; preds = %1, %1
  %69 = getelementptr %struct.igb_adapter, ptr %0, i32 0, i32 73, i32 0
  %70 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %69, i32 noundef 64, ptr noundef nonnull @.str.8, i32 noundef 0) #10
  %71 = getelementptr %struct.igb_adapter, ptr %0, i32 0, i32 73, i32 0, i32 1
  store i32 0, ptr %71, align 4
  %72 = getelementptr %struct.igb_adapter, ptr %0, i32 0, i32 73, i32 0, i32 2
  store i32 0, ptr %72, align 4
  %73 = getelementptr %struct.igb_adapter, ptr %0, i32 0, i32 73, i32 1
  %74 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %73, i32 noundef 64, ptr noundef nonnull @.str.8, i32 noundef 1) #10
  %75 = getelementptr %struct.igb_adapter, ptr %0, i32 0, i32 73, i32 1, i32 1
  store i32 1, ptr %75, align 4
  %76 = getelementptr %struct.igb_adapter, ptr %0, i32 0, i32 73, i32 1, i32 2
  store i32 0, ptr %76, align 4
  %77 = getelementptr %struct.igb_adapter, ptr %0, i32 0, i32 73, i32 2
  %78 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %77, i32 noundef 64, ptr noundef nonnull @.str.8, i32 noundef 2) #10
  %79 = getelementptr %struct.igb_adapter, ptr %0, i32 0, i32 73, i32 2, i32 1
  store i32 2, ptr %79, align 4
  %80 = getelementptr %struct.igb_adapter, ptr %0, i32 0, i32 73, i32 2, i32 2
  store i32 0, ptr %80, align 4
  %81 = getelementptr %struct.igb_adapter, ptr %0, i32 0, i32 73, i32 3
  %82 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %81, i32 noundef 64, ptr noundef nonnull @.str.8, i32 noundef 3) #10
  %83 = getelementptr %struct.igb_adapter, ptr %0, i32 0, i32 73, i32 3, i32 1
  store i32 3, ptr %83, align 4
  %84 = getelementptr %struct.igb_adapter, ptr %0, i32 0, i32 73, i32 3, i32 2
  store i32 0, ptr %84, align 4
  %85 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 57
  %86 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 57, i32 1
  %87 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 72
  %88 = load ptr, ptr %87, align 32
  %89 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %86, i32 noundef 16, ptr noundef nonnull @.str.2, ptr noundef %88)
  store ptr null, ptr %85, align 4
  %90 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 57, i32 2
  store i32 62499999, ptr %90, align 4
  %91 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 57, i32 4
  store i32 2, ptr %91, align 4
  %92 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 57, i32 5
  store i32 2, ptr %92, align 4
  %93 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 57, i32 6
  store i32 4, ptr %93, align 4
  %94 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 57, i32 7
  store i32 1, ptr %94, align 4
  %95 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 57, i32 8
  store ptr %69, ptr %95, align 4
  %96 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 57, i32 9
  store ptr @igb_ptp_adjfine_82580, ptr %96, align 4
  %97 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 57, i32 12
  store ptr @igb_ptp_adjtime_i210, ptr %97, align 4
  %98 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 57, i32 14
  store ptr @igb_ptp_gettimex_i210, ptr %98, align 4
  %99 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 57, i32 16
  store ptr @igb_ptp_settime_i210, ptr %99, align 4
  %100 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 57, i32 17
  store ptr @igb_ptp_feature_enable_i210, ptr %100, align 4
  %101 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 57, i32 18
  store ptr @igb_ptp_verify_pin, ptr %101, align 4
  br label %104

102:                                              ; preds = %1
  %103 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 56
  store ptr null, ptr %103, align 8
  br label %141

104:                                              ; preds = %68, %27, %6
  %105 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 66
  store i32 0, ptr %105, align 4
  %106 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 59
  store i32 -32, ptr %106, align 4
  %107 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 59, i32 1
  store volatile ptr %107, ptr %107, align 4
  %108 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 59, i32 1, i32 1
  store ptr %107, ptr %108, align 4
  %109 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 59, i32 2
  store ptr @igb_ptp_tx_work, ptr %109, align 4
  %110 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 65
  %111 = load i32, ptr %110, align 16
  %112 = and i32 %111, 2
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %120, label %114

114:                                              ; preds = %104
  %115 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 58
  store i32 -32, ptr %115, align 8
  %116 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 58, i32 0, i32 1
  store volatile ptr %116, ptr %116, align 4
  %117 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 58, i32 0, i32 1, i32 1
  store ptr %116, ptr %117, align 4
  %118 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 58, i32 0, i32 2
  store ptr @igb_ptp_overflow_check, ptr %118, align 4
  %119 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 58, i32 1
  tail call void @init_timer_key(ptr noundef %119, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #10
  br label %120

120:                                              ; preds = %114, %104
  %121 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 61, i32 2
  store i32 0, ptr %121, align 8
  %122 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 61, i32 1
  store i32 0, ptr %122, align 4
  tail call void @igb_ptp_reset(ptr noundef %0)
  %123 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 57
  %124 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 34
  %125 = load ptr, ptr %124, align 4
  %126 = getelementptr inbounds %struct.pci_dev, ptr %125, i32 0, i32 44
  %127 = tail call ptr @ptp_clock_register(ptr noundef %123, ptr noundef %126) #10
  %128 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 56
  store ptr %127, ptr %128, align 8
  %129 = icmp ugt ptr %127, inttoptr (i32 -4096 to ptr)
  br i1 %129, label %130, label %133

130:                                              ; preds = %120
  store ptr null, ptr %128, align 8
  %131 = load ptr, ptr %124, align 4
  %132 = getelementptr inbounds %struct.pci_dev, ptr %131, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %132, ptr noundef nonnull @.str.3) #11
  br label %141

133:                                              ; preds = %120
  %134 = icmp eq ptr %127, null
  br i1 %134, label %141, label %135

135:                                              ; preds = %133
  %136 = load ptr, ptr %124, align 4
  %137 = getelementptr inbounds %struct.pci_dev, ptr %136, i32 0, i32 44
  %138 = load ptr, ptr %2, align 64
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %137, ptr noundef nonnull @.str.4, ptr noundef %138) #11
  %139 = load i32, ptr %110, align 16
  %140 = or i32 %139, 1
  store i32 %140, ptr %110, align 16
  br label %141

141:                                              ; preds = %135, %133, %130, %102
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @igb_ptp_adjfreq_82576(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call i32 @llvm.abs.i32(i32 %1, i1 false)
  %4 = sext i32 %3 to i64
  %5 = shl nsw i64 %4, 14
  %6 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %5, i32 0) #12, !srcloc !31
  %7 = extractvalue { i64, i32 } %6, 0
  %8 = extractvalue { i64, i32 } %6, 1
  %9 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %5, i64 %7, i32 %8) #12, !srcloc !32
  %10 = getelementptr i8, ptr %0, i32 -2232
  %11 = load volatile ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %24, label %13, !prof !18

13:                                               ; preds = %2
  %14 = icmp slt i32 %1, 0
  %15 = extractvalue { i64, i32 } %9, 0
  %16 = lshr i64 %15, 20
  %17 = trunc i64 %16 to i32
  %18 = sub i32 0, %17
  %19 = select i1 %14, i32 %18, i32 %17
  %20 = add i32 %19, 8388608
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !33
  tail call void @arm_heavy_mb() #10
  %21 = and i32 %20, 16777215
  %22 = or i32 %21, 16777216
  %23 = getelementptr i8, ptr %11, i32 46600
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %22) #10, !srcloc !20
  br label %24

24:                                               ; preds = %13, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @igb_ptp_adjtime_82576(ptr noundef %0, i64 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 200
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #10
  %5 = getelementptr i8, ptr %0, i32 244
  %6 = load i64, ptr %5, align 8
  %7 = add i64 %6, %1
  store i64 %7, ptr %5, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @igb_ptp_gettimex_82576(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) #0 {
  %4 = alloca %struct.timespec64, align 8
  %5 = getelementptr i8, ptr %0, i32 -2236
  %6 = getelementptr i8, ptr %0, i32 200
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #10
  %8 = icmp eq ptr %2, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = tail call i32 @igb_rd32(ptr noundef %5, i32 noundef 46592) #10
  br label %14

11:                                               ; preds = %3
  tail call void @ktime_get_real_ts64(ptr noundef nonnull %2) #10
  %12 = tail call i32 @igb_rd32(ptr noundef %5, i32 noundef 46592) #10
  %13 = getelementptr inbounds %struct.ptp_system_timestamp, ptr %2, i32 0, i32 1
  tail call void @ktime_get_real_ts64(ptr noundef %13) #10
  br label %14

14:                                               ; preds = %11, %9
  %15 = phi i32 [ %10, %9 ], [ %12, %11 ]
  %16 = tail call i32 @igb_rd32(ptr noundef %5, i32 noundef 46596) #10
  %17 = getelementptr i8, ptr %0, i32 228
  %18 = zext i32 %16 to i64
  %19 = shl nuw i64 %18, 32
  %20 = zext i32 %15 to i64
  %21 = or i64 %19, %20
  %22 = tail call i64 @timecounter_cyc2time(ptr noundef %17, i64 noundef %21) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #10
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %4, i64 noundef %22) #10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @igb_ptp_settime_82576(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load i64, ptr %1, align 8
  %4 = icmp sgt i64 %3, 9223372035
  br i1 %4, label %13, label %5

5:                                                ; preds = %2
  %6 = icmp slt i64 %3, -9223372035
  br i1 %6, label %13, label %7

7:                                                ; preds = %5
  %8 = mul nsw i64 %3, 1000000000
  %9 = getelementptr inbounds %struct.timespec64, ptr %1, i32 0, i32 1
  %10 = load i32, ptr %9, align 8
  %11 = sext i32 %10 to i64
  %12 = add i64 %8, %11
  br label %13

13:                                               ; preds = %7, %5, %2
  %14 = phi i64 [ %12, %7 ], [ 9223372036854775807, %2 ], [ -9223372036854775808, %5 ]
  %15 = getelementptr i8, ptr %0, i32 200
  %16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %15) #10
  %17 = getelementptr i8, ptr %0, i32 228
  %18 = getelementptr i8, ptr %0, i32 204
  tail call void @timecounter_init(ptr noundef %17, ptr noundef %18, i64 noundef %14) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %15, i32 noundef %16) #10
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @igb_ptp_feature_enable(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i32 noundef %2) #7 {
  ret i32 -95
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @igb_ptp_read_82576(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -2440
  %3 = tail call i32 @igb_rd32(ptr noundef %2, i32 noundef 46592) #10
  %4 = tail call i32 @igb_rd32(ptr noundef %2, i32 noundef 46596) #10
  %5 = zext i32 %4 to i64
  %6 = shl nuw i64 %5, 32
  %7 = zext i32 %3 to i64
  %8 = or i64 %6, %7
  ret i64 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @igb_ptp_adjfine_82580(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call i32 @llvm.abs.i32(i32 %1, i1 false)
  %4 = sext i32 %3 to i64
  %5 = shl nsw i64 %4, 13
  %6 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %5) #12, !srcloc !34
  %7 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %5, i64 %6, i32 0) #12, !srcloc !32
  %8 = getelementptr i8, ptr %0, i32 -2232
  %9 = load volatile ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %19, label %11, !prof !18

11:                                               ; preds = %2
  %12 = extractvalue { i64, i32 } %7, 0
  %13 = lshr i64 %12, 12
  %14 = trunc i64 %13 to i32
  %15 = and i32 %14, 2147483647
  %16 = and i32 %1, -2147483648
  %17 = or i32 %15, %16
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !35
  tail call void @arm_heavy_mb() #10
  %18 = getelementptr i8, ptr %9, i32 46600
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %17) #10, !srcloc !20
  br label %19

19:                                               ; preds = %11, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @igb_ptp_gettimex_82580(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) #0 {
  %4 = alloca %struct.timespec64, align 8
  %5 = getelementptr i8, ptr %0, i32 -2236
  %6 = getelementptr i8, ptr %0, i32 200
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #10
  %8 = icmp eq ptr %2, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = tail call i32 @igb_rd32(ptr noundef %5, i32 noundef 46840) #10
  br label %14

11:                                               ; preds = %3
  tail call void @ktime_get_real_ts64(ptr noundef nonnull %2) #10
  %12 = tail call i32 @igb_rd32(ptr noundef %5, i32 noundef 46840) #10
  %13 = getelementptr inbounds %struct.ptp_system_timestamp, ptr %2, i32 0, i32 1
  tail call void @ktime_get_real_ts64(ptr noundef %13) #10
  br label %14

14:                                               ; preds = %11, %9
  %15 = tail call i32 @igb_rd32(ptr noundef %5, i32 noundef 46592) #10
  %16 = tail call i32 @igb_rd32(ptr noundef %5, i32 noundef 46596) #10
  %17 = getelementptr i8, ptr %0, i32 228
  %18 = zext i32 %16 to i64
  %19 = shl nuw i64 %18, 32
  %20 = zext i32 %15 to i64
  %21 = or i64 %19, %20
  %22 = tail call i64 @timecounter_cyc2time(ptr noundef %17, i64 noundef %21) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #10
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %4, i64 noundef %22) #10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @igb_ptp_feature_enable_82580(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca %struct.timespec64, align 8
  %5 = alloca %struct.timespec64, align 8
  %6 = getelementptr i8, ptr %0, i32 -3340
  %7 = getelementptr i8, ptr %0, i32 -2236
  %8 = load i32, ptr %1, align 8
  switch i32 %8, label %203 [
    i32 0, label %9
    i32 1, label %55
  ]

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.ptp_clock_request, ptr %1, i32 0, i32 1
  %11 = getelementptr inbounds %struct.ptp_extts_request, ptr %10, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp ult i32 %12, 16
  br i1 %13, label %14, label %203

14:                                               ; preds = %9
  %15 = icmp eq i32 %2, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %14
  %17 = getelementptr i8, ptr %0, i32 -4
  %18 = load ptr, ptr %17, align 8
  %19 = load i32, ptr %10, align 8
  %20 = tail call i32 @ptp_find_pin(ptr noundef %18, i32 noundef 1, i32 noundef %19) #10
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %203, label %22

22:                                               ; preds = %16, %14
  %23 = phi i32 [ %20, %16 ], [ -1, %14 ]
  %24 = load i32, ptr %10, align 8
  %25 = icmp eq i32 %24, 1
  %26 = select i1 %25, i32 64, i32 32
  %27 = select i1 %25, i32 1024, i32 256
  %28 = getelementptr i8, ptr %0, i32 200
  %29 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %28) #10
  %30 = tail call i32 @igb_rd32(ptr noundef %7, i32 noundef 46656) #10
  %31 = tail call i32 @igb_rd32(ptr noundef %7, i32 noundef 46708) #10
  br i1 %15, label %36, label %32

32:                                               ; preds = %22
  %33 = load i32, ptr %10, align 8
  tail call fastcc void @igb_pin_extts(ptr noundef %6, i32 noundef %33, i32 noundef %23)
  %34 = or i32 %30, %27
  %35 = or i32 %31, %26
  br label %41

36:                                               ; preds = %22
  %37 = xor i32 %27, -1
  %38 = and i32 %30, %37
  %39 = xor i32 %26, -1
  %40 = and i32 %31, %39
  br label %41

41:                                               ; preds = %36, %32
  %42 = phi i32 [ %35, %32 ], [ %40, %36 ]
  %43 = phi i32 [ %34, %32 ], [ %38, %36 ]
  %44 = getelementptr i8, ptr %0, i32 -2232
  %45 = load volatile ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %49, label %47, !prof !18

47:                                               ; preds = %41
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !36
  tail call void @arm_heavy_mb() #10
  %48 = getelementptr i8, ptr %45, i32 46656
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %43) #10, !srcloc !20
  br label %49

49:                                               ; preds = %47, %41
  %50 = load volatile ptr, ptr %44, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %54, label %52, !prof !18

52:                                               ; preds = %49
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !37
  tail call void @arm_heavy_mb() #10
  %53 = getelementptr i8, ptr %50, i32 46708
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %42) #10, !srcloc !20
  br label %54

54:                                               ; preds = %52, %49
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %28, i32 noundef %29) #10
  br label %203

55:                                               ; preds = %3
  %56 = getelementptr inbounds %struct.ptp_clock_request, ptr %1, i32 0, i32 1, i32 0, i32 3
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %203

59:                                               ; preds = %55
  %60 = icmp ne i32 %2, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %59
  %62 = getelementptr i8, ptr %0, i32 -4
  %63 = load ptr, ptr %62, align 8
  %64 = getelementptr inbounds %struct.ptp_clock_request, ptr %1, i32 0, i32 1, i32 0, i32 2
  %65 = load i32, ptr %64, align 8
  %66 = tail call i32 @ptp_find_pin(ptr noundef %63, i32 noundef 2, i32 noundef %65) #10
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %203, label %68

68:                                               ; preds = %61, %59
  %69 = phi i32 [ %66, %61 ], [ -1, %59 ]
  %70 = getelementptr inbounds %struct.ptp_clock_request, ptr %1, i32 0, i32 1, i32 0, i32 1
  %71 = load i64, ptr %70, align 8
  %72 = getelementptr inbounds %struct.ptp_clock_request, ptr %1, i32 0, i32 1, i32 0, i32 1, i32 1
  %73 = load i32, ptr %72, align 8
  %74 = icmp sgt i64 %71, 9223372035
  br i1 %74, label %87, label %75

75:                                               ; preds = %68
  %76 = icmp slt i64 %71, -9223372035
  br i1 %76, label %81, label %77

77:                                               ; preds = %75
  %78 = mul nsw i64 %71, 1000000000
  %79 = sext i32 %73 to i64
  %80 = add i64 %78, %79
  br label %81

81:                                               ; preds = %77, %75
  %82 = phi i64 [ %80, %77 ], [ -9223372036854775808, %75 ]
  %83 = ashr i64 %82, 1
  %84 = icmp slt i64 %82, 16
  %85 = select i1 %60, i1 %84, i1 false
  %86 = trunc i64 %82 to i32
  br i1 %85, label %203, label %87

87:                                               ; preds = %81, %68
  %88 = phi i64 [ %83, %81 ], [ 4611686018427387903, %68 ]
  %89 = phi i32 [ %86, %81 ], [ -1, %68 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #10
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %4, i64 noundef %88) #10
  %90 = load i64, ptr %4, align 8
  %91 = getelementptr inbounds i8, ptr %4, i32 8
  %92 = load i32, ptr %91, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #10
  %93 = getelementptr inbounds %struct.ptp_clock_request, ptr %1, i32 0, i32 1, i32 0, i32 2
  %94 = load i32, ptr %93, align 8
  %95 = icmp eq i32 %94, 1
  %96 = select i1 %95, i32 46672, i32 46664
  %97 = select i1 %95, i32 46668, i32 46660
  %98 = select i1 %95, i32 16, i32 8
  %99 = select i1 %95, i32 2, i32 1
  %100 = getelementptr i8, ptr %0, i32 200
  %101 = call i32 @_raw_spin_lock_irqsave(ptr noundef %100) #10
  %102 = call i32 @igb_rd32(ptr noundef %7, i32 noundef 46656) #10
  %103 = call i32 @igb_rd32(ptr noundef %7, i32 noundef 46708) #10
  %104 = load i32, ptr %93, align 8
  %105 = icmp eq i32 %104, 1
  %106 = select i1 %105, i32 -17, i32 -9
  %107 = and i32 %106, %103
  %108 = select i1 %105, i32 -163, i32 -22
  %109 = and i32 %108, %102
  br i1 %60, label %110, label %189

110:                                              ; preds = %87
  %111 = call i32 @igb_rd32(ptr noundef %7, i32 noundef 46840) #10
  %112 = call i32 @igb_rd32(ptr noundef %7, i32 noundef 46592) #10
  %113 = call i32 @igb_rd32(ptr noundef %7, i32 noundef 46596) #10
  %114 = and i32 %113, 255
  %115 = zext i32 %114 to i64
  %116 = shl nuw nsw i64 %115, 32
  %117 = zext i32 %112 to i64
  %118 = or i64 %116, %117
  %119 = getelementptr i8, ptr %0, i32 228
  %120 = call i64 @timecounter_cyc2time(ptr noundef %119, i64 noundef %118) #10
  %121 = icmp slt i32 %69, 2
  %122 = select i1 %105, i32 128, i32 64
  %123 = select i1 %105, i32 524288, i32 262144
  %124 = select i1 %121, i32 0, i32 24
  %125 = select i1 %121, i32 %123, i32 %122
  %126 = call i32 @igb_rd32(ptr noundef %7, i32 noundef %124) #10
  %127 = and i32 %126, %125
  %128 = icmp eq i32 %127, 0
  %129 = trunc i64 %88 to i32
  %130 = icmp ult i64 %120, 4294967296
  br i1 %130, label %131, label %134, !prof !17

131:                                              ; preds = %110
  %132 = trunc i64 %120 to i32
  %133 = urem i32 %132, %129
  br label %139

134:                                              ; preds = %110
  %135 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %129, i64 %120) #12, !srcloc !38
  %136 = extractvalue { i64, i64 } %135, 0
  %137 = lshr i64 %136, 32
  %138 = trunc i64 %137 to i32
  br label %139

139:                                              ; preds = %134, %131
  %140 = phi i32 [ %133, %131 ], [ %138, %134 ]
  %141 = zext i32 %140 to i64
  %142 = and i32 %89, -2
  %143 = icmp ult i64 %120, 4294967296
  br i1 %143, label %144, label %147, !prof !17

144:                                              ; preds = %139
  %145 = trunc i64 %120 to i32
  %146 = urem i32 %145, %142
  br label %152

147:                                              ; preds = %139
  %148 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %142, i64 %120) #12, !srcloc !38
  %149 = extractvalue { i64, i64 } %148, 0
  %150 = lshr i64 %149, 32
  %151 = trunc i64 %150 to i32
  br label %152

152:                                              ; preds = %147, %144
  %153 = phi i32 [ %146, %144 ], [ %151, %147 ]
  %154 = zext i32 %153 to i64
  %155 = icmp sgt i64 %88, %154
  %156 = select i1 %128, i64 %88, i64 0
  %157 = select i1 %128, i64 0, i64 %88
  %158 = select i1 %155, i64 %156, i64 %157
  %159 = add nsw i64 %118, %88
  %160 = sub i64 %159, %141
  %161 = add i64 %160, %158
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #10
  %162 = sub nsw i64 %88, %154
  %163 = add i64 %162, %161
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %5, i64 noundef %163) #10
  %164 = load i64, ptr %5, align 8
  %165 = getelementptr inbounds i8, ptr %5, i32 8
  %166 = load i32, ptr %165, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #10
  call fastcc void @igb_pin_perout(ptr noundef %6, i32 noundef %104, i32 noundef %69, i32 noundef 0)
  %167 = getelementptr i8, ptr %0, i32 668
  %168 = getelementptr [2 x %struct.anon.120], ptr %167, i32 0, i32 %104
  store i64 %164, ptr %168, align 8
  %169 = getelementptr inbounds %struct.timespec64, ptr %168, i32 0, i32 1
  store i32 %166, ptr %169, align 8
  %170 = getelementptr inbounds %struct.anon.120, ptr %168, i32 0, i32 1
  store i64 %90, ptr %170, align 8
  %171 = getelementptr inbounds %struct.anon.120, ptr %168, i32 0, i32 1, i32 1
  store i32 %92, ptr %171, align 8
  %172 = getelementptr i8, ptr %0, i32 -2232
  %173 = load volatile ptr, ptr %172, align 4
  %174 = icmp eq ptr %173, null
  br i1 %174, label %178, label %175, !prof !18

175:                                              ; preds = %152
  call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !39
  call void @arm_heavy_mb() #10
  %176 = trunc i64 %161 to i32
  %177 = getelementptr i8, ptr %173, i32 %97
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %177, i32 %176) #10, !srcloc !20
  br label %178

178:                                              ; preds = %175, %152
  %179 = load volatile ptr, ptr %172, align 4
  %180 = icmp eq ptr %179, null
  br i1 %180, label %186, label %181, !prof !18

181:                                              ; preds = %178
  call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !40
  call void @arm_heavy_mb() #10
  %182 = lshr i64 %161, 32
  %183 = trunc i64 %182 to i32
  %184 = and i32 %183, 255
  %185 = getelementptr i8, ptr %179, i32 %96
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %185, i32 %184) #10, !srcloc !20
  br label %186

186:                                              ; preds = %181, %178
  %187 = or i32 %109, %99
  %188 = or i32 %107, %98
  br label %189

189:                                              ; preds = %186, %87
  %190 = phi i32 [ %188, %186 ], [ %107, %87 ]
  %191 = phi i32 [ %187, %186 ], [ %109, %87 ]
  %192 = getelementptr i8, ptr %0, i32 -2232
  %193 = load volatile ptr, ptr %192, align 4
  %194 = icmp eq ptr %193, null
  br i1 %194, label %197, label %195, !prof !18

195:                                              ; preds = %189
  call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !41
  call void @arm_heavy_mb() #10
  %196 = getelementptr i8, ptr %193, i32 46656
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %196, i32 %191) #10, !srcloc !20
  br label %197

197:                                              ; preds = %195, %189
  %198 = load volatile ptr, ptr %192, align 4
  %199 = icmp eq ptr %198, null
  br i1 %199, label %202, label %200, !prof !18

200:                                              ; preds = %197
  call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !42
  call void @arm_heavy_mb() #10
  %201 = getelementptr i8, ptr %198, i32 46708
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %201, i32 %190) #10, !srcloc !20
  br label %202

202:                                              ; preds = %200, %197
  call void @_raw_spin_unlock_irqrestore(ptr noundef %100, i32 noundef %101) #10
  br label %203

203:                                              ; preds = %202, %81, %61, %55, %54, %16, %9, %3
  %204 = phi i32 [ 0, %202 ], [ 0, %54 ], [ -95, %9 ], [ -16, %16 ], [ -95, %55 ], [ -16, %61 ], [ -22, %81 ], [ -95, %3 ]
  ret i32 %204
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @igb_ptp_verify_pin(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #7 {
  %5 = icmp eq i32 %2, 3
  %6 = sext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @igb_ptp_read_82580(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -2440
  %3 = tail call i32 @igb_rd32(ptr noundef %2, i32 noundef 46840) #10
  %4 = tail call i32 @igb_rd32(ptr noundef %2, i32 noundef 46592) #10
  %5 = tail call i32 @igb_rd32(ptr noundef %2, i32 noundef 46596) #10
  %6 = zext i32 %5 to i64
  %7 = shl nuw i64 %6, 32
  %8 = zext i32 %4 to i64
  %9 = or i64 %7, %8
  ret i64 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @igb_ptp_adjtime_i210(ptr noundef %0, i64 noundef %1) #0 {
  %3 = alloca %struct.timespec64, align 8
  %4 = alloca %struct.timespec64, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !15
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %3, i64 noundef %1) #10
  %5 = getelementptr i8, ptr %0, i32 200
  %6 = call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #10
  %7 = getelementptr i8, ptr %0, i32 -2236
  %8 = call i32 @igb_rd32(ptr noundef %7, i32 noundef 46840) #10
  %9 = call i32 @igb_rd32(ptr noundef %7, i32 noundef 46592) #10
  %10 = call i32 @igb_rd32(ptr noundef %7, i32 noundef 46596) #10
  %11 = zext i32 %10 to i64
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #10
  %12 = load i64, ptr %3, align 8
  %13 = getelementptr inbounds [2 x i64], ptr %3, i32 0, i32 1
  %14 = load i64, ptr %13, align 8
  %15 = trunc i64 %14 to i32
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i32 16, i1 false) #10, !alias.scope !43, !annotation !15
  %16 = add i64 %12, %11
  %17 = add i32 %9, %15
  %18 = sext i32 %17 to i64
  call void @set_normalized_timespec64(ptr noundef nonnull %4, i64 noundef %16, i64 noundef %18) #10
  %19 = load i64, ptr %4, align 8
  %20 = getelementptr inbounds i8, ptr %4, i32 8
  %21 = load i64, ptr %20, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #10
  %22 = getelementptr i8, ptr %0, i32 -2232
  %23 = load volatile ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25, !prof !18

25:                                               ; preds = %2
  call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !46
  call void @arm_heavy_mb() #10
  %26 = trunc i64 %21 to i32
  %27 = getelementptr i8, ptr %23, i32 46592
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %26) #10, !srcloc !20
  br label %28

28:                                               ; preds = %25, %2
  %29 = load volatile ptr, ptr %22, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %31, !prof !18

31:                                               ; preds = %28
  call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !47
  call void @arm_heavy_mb() #10
  %32 = trunc i64 %19 to i32
  %33 = getelementptr i8, ptr %29, i32 46596
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %32) #10, !srcloc !20
  br label %34

34:                                               ; preds = %31, %28
  call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @igb_ptp_gettimex_i210(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -2236
  %5 = getelementptr i8, ptr %0, i32 200
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #10
  %7 = icmp eq ptr %2, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 46840) #10
  br label %13

10:                                               ; preds = %3
  tail call void @ktime_get_real_ts64(ptr noundef nonnull %2) #10
  %11 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 46840) #10
  %12 = getelementptr inbounds %struct.ptp_system_timestamp, ptr %2, i32 0, i32 1
  tail call void @ktime_get_real_ts64(ptr noundef %12) #10
  br label %13

13:                                               ; preds = %10, %8
  %14 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 46592) #10
  %15 = getelementptr inbounds %struct.timespec64, ptr %1, i32 0, i32 1
  store i32 %14, ptr %15, align 8
  %16 = tail call i32 @igb_rd32(ptr noundef %4, i32 noundef 46596) #10
  %17 = zext i32 %16 to i64
  store i64 %17, ptr %1, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @igb_ptp_settime_i210(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 200
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #10
  %5 = getelementptr i8, ptr %0, i32 -2232
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8, !prof !18

8:                                                ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !46
  tail call void @arm_heavy_mb() #10
  %9 = getelementptr inbounds %struct.timespec64, ptr %1, i32 0, i32 1
  %10 = load i32, ptr %9, align 8
  %11 = getelementptr i8, ptr %6, i32 46592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %10) #10, !srcloc !20
  br label %12

12:                                               ; preds = %8, %2
  %13 = load volatile ptr, ptr %5, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15, !prof !18

15:                                               ; preds = %12
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !47
  tail call void @arm_heavy_mb() #10
  %16 = load i64, ptr %1, align 8
  %17 = trunc i64 %16 to i32
  %18 = getelementptr i8, ptr %13, i32 46596
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %17) #10, !srcloc !20
  br label %19

19:                                               ; preds = %15, %12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @igb_ptp_feature_enable_i210(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca %struct.timespec64, align 8
  %5 = getelementptr i8, ptr %0, i32 -3340
  %6 = getelementptr i8, ptr %0, i32 -2236
  %7 = load i32, ptr %1, align 8
  switch i32 %7, label %190 [
    i32 0, label %8
    i32 1, label %60
    i32 2, label %174
  ]

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.ptp_clock_request, ptr %1, i32 0, i32 1
  %10 = getelementptr inbounds %struct.ptp_extts_request, ptr %9, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp ult i32 %11, 16
  br i1 %12, label %13, label %190

13:                                               ; preds = %8
  %14 = and i32 %11, 9
  %15 = icmp ne i32 %14, 9
  %16 = and i32 %11, 6
  %17 = icmp eq i32 %16, 6
  %18 = or i1 %15, %17
  br i1 %18, label %19, label %190

19:                                               ; preds = %13
  %20 = icmp eq i32 %2, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %19
  %22 = getelementptr i8, ptr %0, i32 -4
  %23 = load ptr, ptr %22, align 8
  %24 = load i32, ptr %9, align 8
  %25 = tail call i32 @ptp_find_pin(ptr noundef %23, i32 noundef 1, i32 noundef %24) #10
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %190, label %27

27:                                               ; preds = %21, %19
  %28 = phi i32 [ %25, %21 ], [ -1, %19 ]
  %29 = load i32, ptr %9, align 8
  %30 = icmp eq i32 %29, 1
  %31 = select i1 %30, i32 64, i32 32
  %32 = select i1 %30, i32 1024, i32 256
  %33 = getelementptr i8, ptr %0, i32 200
  %34 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %33) #10
  %35 = tail call i32 @igb_rd32(ptr noundef %6, i32 noundef 46656) #10
  %36 = tail call i32 @igb_rd32(ptr noundef %6, i32 noundef 46708) #10
  br i1 %20, label %41, label %37

37:                                               ; preds = %27
  %38 = load i32, ptr %9, align 8
  tail call fastcc void @igb_pin_extts(ptr noundef %5, i32 noundef %38, i32 noundef %28)
  %39 = or i32 %35, %32
  %40 = or i32 %36, %31
  br label %46

41:                                               ; preds = %27
  %42 = xor i32 %32, -1
  %43 = and i32 %35, %42
  %44 = xor i32 %31, -1
  %45 = and i32 %36, %44
  br label %46

46:                                               ; preds = %41, %37
  %47 = phi i32 [ %40, %37 ], [ %45, %41 ]
  %48 = phi i32 [ %39, %37 ], [ %43, %41 ]
  %49 = getelementptr i8, ptr %0, i32 -2232
  %50 = load volatile ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %54, label %52, !prof !18

52:                                               ; preds = %46
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !48
  tail call void @arm_heavy_mb() #10
  %53 = getelementptr i8, ptr %50, i32 46656
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %48) #10, !srcloc !20
  br label %54

54:                                               ; preds = %52, %46
  %55 = load volatile ptr, ptr %49, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %59, label %57, !prof !18

57:                                               ; preds = %54
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !49
  tail call void @arm_heavy_mb() #10
  %58 = getelementptr i8, ptr %55, i32 46708
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 %47) #10, !srcloc !20
  br label %59

59:                                               ; preds = %57, %54
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %33, i32 noundef %34) #10
  br label %190

60:                                               ; preds = %3
  %61 = getelementptr inbounds %struct.ptp_clock_request, ptr %1, i32 0, i32 1
  %62 = getelementptr inbounds %struct.ptp_clock_request, ptr %1, i32 0, i32 1, i32 0, i32 3
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %190

65:                                               ; preds = %60
  %66 = icmp eq i32 %2, 0
  br i1 %66, label %74, label %67

67:                                               ; preds = %65
  %68 = getelementptr i8, ptr %0, i32 -4
  %69 = load ptr, ptr %68, align 8
  %70 = getelementptr inbounds %struct.ptp_clock_request, ptr %1, i32 0, i32 1, i32 0, i32 2
  %71 = load i32, ptr %70, align 8
  %72 = tail call i32 @ptp_find_pin(ptr noundef %69, i32 noundef 2, i32 noundef %71) #10
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %190, label %74

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %72, %67 ], [ -1, %65 ]
  %76 = getelementptr inbounds %struct.ptp_clock_request, ptr %1, i32 0, i32 1, i32 0, i32 1
  %77 = load i64, ptr %76, align 8
  %78 = getelementptr inbounds %struct.ptp_clock_request, ptr %1, i32 0, i32 1, i32 0, i32 1, i32 1
  %79 = load i32, ptr %78, align 8
  %80 = icmp sgt i64 %77, 9223372035
  br i1 %80, label %87, label %81

81:                                               ; preds = %74
  %82 = icmp slt i64 %77, -9223372035
  br i1 %82, label %87, label %83

83:                                               ; preds = %81
  %84 = mul nsw i64 %77, 1000000000
  %85 = sext i32 %79 to i64
  %86 = add i64 %84, %85
  br label %87

87:                                               ; preds = %83, %81, %74
  %88 = phi i64 [ %86, %83 ], [ 9223372036854775807, %74 ], [ -9223372036854775808, %81 ]
  %89 = ashr i64 %88, 1
  br i1 %66, label %97, label %90

90:                                               ; preds = %87
  %91 = freeze i64 %88
  %92 = icmp slt i64 %91, 140000002
  br i1 %92, label %95, label %93

93:                                               ; preds = %90
  switch i64 %89, label %97 [
    i64 500000000, label %94
    i64 250000000, label %94
    i64 125000000, label %94
  ]

94:                                               ; preds = %93, %93, %93
  br label %97

95:                                               ; preds = %90
  %96 = icmp slt i64 %91, 16
  br i1 %96, label %190, label %97

97:                                               ; preds = %95, %94, %93, %87
  %98 = phi i1 [ true, %93 ], [ true, %87 ], [ false, %95 ], [ false, %94 ]
  %99 = phi i32 [ 0, %93 ], [ 0, %87 ], [ 1, %95 ], [ 1, %94 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #10
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %4, i64 noundef %89) #10
  %100 = load i64, ptr %4, align 8
  %101 = getelementptr inbounds i8, ptr %4, i32 8
  %102 = load i32, ptr %101, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #10
  %103 = getelementptr inbounds %struct.ptp_clock_request, ptr %1, i32 0, i32 1, i32 0, i32 2
  %104 = load i32, ptr %103, align 8
  %105 = icmp eq i32 %104, 1
  br i1 %105, label %106, label %109

106:                                              ; preds = %97
  %107 = select i1 %98, i32 16, i32 0
  %108 = select i1 %98, i32 2, i32 160
  br label %112

109:                                              ; preds = %97
  %110 = select i1 %98, i32 8, i32 0
  %111 = select i1 %98, i32 1, i32 20
  br label %112

112:                                              ; preds = %109, %106
  %113 = phi i32 [ 46680, %106 ], [ 46676, %109 ]
  %114 = phi i32 [ 46672, %106 ], [ 46664, %109 ]
  %115 = phi i32 [ 46668, %106 ], [ 46660, %109 ]
  %116 = phi i32 [ %107, %106 ], [ %110, %109 ]
  %117 = phi i32 [ %108, %106 ], [ %111, %109 ]
  %118 = getelementptr i8, ptr %0, i32 200
  %119 = call i32 @_raw_spin_lock_irqsave(ptr noundef %118) #10
  %120 = call i32 @igb_rd32(ptr noundef %6, i32 noundef 46656) #10
  %121 = call i32 @igb_rd32(ptr noundef %6, i32 noundef 46708) #10
  %122 = load i32, ptr %103, align 8
  %123 = icmp eq i32 %122, 1
  %124 = select i1 %123, i32 -17, i32 -9
  %125 = and i32 %124, %121
  %126 = select i1 %123, i32 -163, i32 -22
  %127 = and i32 %126, %120
  br i1 %66, label %160, label %128

128:                                              ; preds = %112
  call fastcc void @igb_pin_perout(ptr noundef %5, i32 noundef %122, i32 noundef %75, i32 noundef %99)
  %129 = load i64, ptr %61, align 8
  %130 = getelementptr i8, ptr %0, i32 668
  %131 = getelementptr [2 x %struct.anon.120], ptr %130, i32 0, i32 %122
  store i64 %129, ptr %131, align 8
  %132 = getelementptr inbounds %struct.ptp_clock_request, ptr %1, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %133 = load i32, ptr %132, align 8
  %134 = getelementptr inbounds %struct.timespec64, ptr %131, i32 0, i32 1
  store i32 %133, ptr %134, align 8
  %135 = getelementptr inbounds %struct.anon.120, ptr %131, i32 0, i32 1
  store i64 %100, ptr %135, align 8
  %136 = getelementptr inbounds %struct.anon.120, ptr %131, i32 0, i32 1, i32 1
  store i32 %102, ptr %136, align 8
  %137 = getelementptr i8, ptr %0, i32 -2232
  %138 = load volatile ptr, ptr %137, align 4
  %139 = icmp eq ptr %138, null
  br i1 %139, label %144, label %140, !prof !18

140:                                              ; preds = %128
  call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !50
  call void @arm_heavy_mb() #10
  %141 = load i64, ptr %61, align 8
  %142 = trunc i64 %141 to i32
  %143 = getelementptr i8, ptr %138, i32 %114
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %143, i32 %142) #10, !srcloc !20
  br label %144

144:                                              ; preds = %140, %128
  %145 = load volatile ptr, ptr %137, align 4
  %146 = icmp eq ptr %145, null
  br i1 %146, label %150, label %147, !prof !18

147:                                              ; preds = %144
  call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !51
  call void @arm_heavy_mb() #10
  %148 = load i32, ptr %132, align 8
  %149 = getelementptr i8, ptr %145, i32 %115
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %149, i32 %148) #10, !srcloc !20
  br label %150

150:                                              ; preds = %147, %144
  br i1 %98, label %157, label %151

151:                                              ; preds = %150
  %152 = load volatile ptr, ptr %137, align 4
  %153 = icmp eq ptr %152, null
  br i1 %153, label %157, label %154, !prof !18

154:                                              ; preds = %151
  call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !52
  call void @arm_heavy_mb() #10
  %155 = trunc i64 %89 to i32
  %156 = getelementptr i8, ptr %152, i32 %113
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %156, i32 %155) #10, !srcloc !20
  br label %157

157:                                              ; preds = %154, %151, %150
  %158 = or i32 %127, %117
  %159 = or i32 %125, %116
  br label %160

160:                                              ; preds = %157, %112
  %161 = phi i32 [ %159, %157 ], [ %125, %112 ]
  %162 = phi i32 [ %158, %157 ], [ %127, %112 ]
  %163 = getelementptr i8, ptr %0, i32 -2232
  %164 = load volatile ptr, ptr %163, align 4
  %165 = icmp eq ptr %164, null
  br i1 %165, label %168, label %166, !prof !18

166:                                              ; preds = %160
  call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !53
  call void @arm_heavy_mb() #10
  %167 = getelementptr i8, ptr %164, i32 46656
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %167, i32 %162) #10, !srcloc !20
  br label %168

168:                                              ; preds = %166, %160
  %169 = load volatile ptr, ptr %163, align 4
  %170 = icmp eq ptr %169, null
  br i1 %170, label %173, label %171, !prof !18

171:                                              ; preds = %168
  call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !54
  call void @arm_heavy_mb() #10
  %172 = getelementptr i8, ptr %169, i32 46708
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %172, i32 %161) #10, !srcloc !20
  br label %173

173:                                              ; preds = %171, %168
  call void @_raw_spin_unlock_irqrestore(ptr noundef %118, i32 noundef %119) #10
  br label %190

174:                                              ; preds = %3
  %175 = getelementptr i8, ptr %0, i32 200
  %176 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %175) #10
  %177 = tail call i32 @igb_rd32(ptr noundef %6, i32 noundef 46708) #10
  %178 = icmp ne i32 %2, 0
  %179 = getelementptr i8, ptr %0, i32 280
  %180 = zext i1 %178 to i8
  store i8 %180, ptr %179, align 4
  %181 = getelementptr i8, ptr %0, i32 -2232
  %182 = load volatile ptr, ptr %181, align 4
  %183 = icmp eq ptr %182, null
  br i1 %183, label %189, label %184, !prof !18

184:                                              ; preds = %174
  %185 = and i32 %177, -2
  %186 = zext i1 %178 to i32
  %187 = or i32 %185, %186
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !55
  tail call void @arm_heavy_mb() #10
  %188 = getelementptr i8, ptr %182, i32 46708
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %188, i32 %187) #10, !srcloc !20
  br label %189

189:                                              ; preds = %184, %174
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %175, i32 noundef %176) #10
  br label %190

190:                                              ; preds = %189, %173, %95, %67, %60, %59, %21, %13, %8, %3
  %191 = phi i32 [ 0, %189 ], [ 0, %173 ], [ 0, %59 ], [ -95, %8 ], [ -95, %13 ], [ -16, %21 ], [ -95, %60 ], [ -16, %67 ], [ -22, %95 ], [ -95, %3 ]
  ret i32 %191
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @igb_ptp_tx_work(ptr noundef %0) #0 {
  %2 = alloca %struct.skb_shared_hwtstamps, align 8
  %3 = getelementptr i8, ptr %0, i32 -2388
  %4 = getelementptr i8, ptr %0, i32 16
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %66, label %7

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %0, i32 32
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, 1500
  %11 = load volatile i32, ptr @jiffies, align 64
  %12 = sub i32 %10, %11
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %7
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %5, i32 noundef 1) #10
  store ptr null, ptr %4, align 4
  %15 = getelementptr i8, ptr %0, i32 -2972
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %15) #10, !srcloc !9
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %15, ptr %15, i32 8, ptr elementtype(i32) %15) #10, !srcloc !10
  %17 = getelementptr i8, ptr %0, i32 116
  %18 = load i32, ptr %17, align 8
  %19 = add i32 %18, 1
  store i32 %19, ptr %17, align 8
  %20 = tail call i32 @igb_rd32(ptr noundef %3, i32 noundef 46620) #10
  %21 = getelementptr i8, ptr %0, i32 -2592
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %23, ptr noundef nonnull @.str.1) #11
  br label %66

24:                                               ; preds = %7
  %25 = tail call i32 @igb_rd32(ptr noundef %3, i32 noundef 46612) #10
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %63, label %28

28:                                               ; preds = %24
  %29 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #10
  %30 = tail call i32 @igb_rd32(ptr noundef %3, i32 noundef 46616) #10
  %31 = zext i32 %30 to i64
  %32 = tail call i32 @igb_rd32(ptr noundef %3, i32 noundef 46620) #10
  %33 = zext i32 %32 to i64
  %34 = getelementptr i8, ptr %0, i32 -2308
  %35 = load i32, ptr %34, align 16
  switch i32 %35, label %47 [
    i32 2, label %36
    i32 3, label %36
    i32 5, label %36
    i32 4, label %36
    i32 6, label %44
    i32 7, label %44
  ]

36:                                               ; preds = %28, %28, %28, %28
  %37 = shl nuw i64 %33, 32
  %38 = or i64 %37, %31
  %39 = getelementptr i8, ptr %0, i32 48
  %40 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %39) #10
  %41 = getelementptr i8, ptr %0, i32 76
  %42 = tail call i64 @timecounter_cyc2time(ptr noundef %41, i64 noundef %38) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %39, i32 noundef %40) #10
  %43 = load i32, ptr %34, align 16
  br label %47

44:                                               ; preds = %28, %28
  %45 = mul nuw nsw i64 %33, 1000000000
  %46 = add nuw nsw i64 %45, %31
  br label %47

47:                                               ; preds = %44, %36, %28
  %48 = phi i64 [ 0, %28 ], [ %46, %44 ], [ %42, %36 ]
  %49 = phi i32 [ %35, %28 ], [ %35, %44 ], [ %43, %36 ]
  %50 = icmp eq i32 %49, 6
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = getelementptr i8, ptr %0, i32 -2660
  %53 = load i16, ptr %52, align 64
  switch i16 %53, label %57 [
    i16 10, label %54
    i16 100, label %55
    i16 1000, label %56
  ]

54:                                               ; preds = %51
  br label %57

55:                                               ; preds = %51
  br label %57

56:                                               ; preds = %51
  br label %57

57:                                               ; preds = %56, %55, %54, %51, %47
  %58 = phi i32 [ 0, %51 ], [ 178, %56 ], [ 1024, %55 ], [ 9542, %54 ], [ 0, %47 ]
  %59 = zext i32 %58 to i64
  %60 = add i64 %48, %59
  store i64 %60, ptr %2, align 8
  store ptr null, ptr %4, align 4
  %61 = getelementptr i8, ptr %0, i32 -2972
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %61) #10, !srcloc !9
  %62 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %61, ptr %61, i32 8, ptr elementtype(i32) %61) #10, !srcloc !10
  call void @skb_tstamp_tx(ptr noundef %29, ptr noundef nonnull %2) #10
  call void @__dev_kfree_skb_any(ptr noundef %29, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  br label %66

63:                                               ; preds = %24
  %64 = load ptr, ptr @system_wq, align 4
  %65 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %64, ptr noundef %0) #10
  br label %66

66:                                               ; preds = %63, %57, %14, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @igb_ptp_overflow_check(ptr noundef %0) #0 {
  %2 = alloca %struct.timespec64, align 8
  %3 = getelementptr i8, ptr %0, i32 120
  %4 = tail call i64 @timecounter_read(ptr noundef %3) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #10
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %2, i64 noundef %4) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #10
  %5 = load ptr, ptr @system_wq, align 4
  %6 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %5, ptr noundef %0, i32 noundef 36000) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @igb_ptp_reset(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.timespec64, align 8
  %3 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 37
  %4 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 61
  %5 = tail call fastcc i32 @igb_ptp_set_timestamp_mode(ptr noundef %0, ptr noundef %4)
  %6 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 66
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #10
  %8 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 37, i32 4, i32 3
  %9 = load i32, ptr %8, align 16
  switch i32 %9, label %66 [
    i32 2, label %10
    i32 3, label %16
    i32 5, label %16
    i32 4, label %16
    i32 6, label %16
    i32 7, label %16
  ]

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 37, i32 1
  %12 = load volatile ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %41, label %14, !prof !18

14:                                               ; preds = %10
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !56
  tail call void @arm_heavy_mb() #10
  %15 = getelementptr i8, ptr %12, i32 46600
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 25165824) #10, !srcloc !20
  br label %41

16:                                               ; preds = %1, %1, %1, %1, %1
  %17 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 37, i32 1
  %18 = load volatile ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20, !prof !18

20:                                               ; preds = %16
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !57
  tail call void @arm_heavy_mb() #10
  %21 = getelementptr i8, ptr %18, i32 46656
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 0) #10, !srcloc !20
  br label %22

22:                                               ; preds = %20, %16
  %23 = load volatile ptr, ptr %17, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25, !prof !18

25:                                               ; preds = %22
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !58
  tail call void @arm_heavy_mb() #10
  %26 = getelementptr i8, ptr %23, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 0) #10, !srcloc !20
  br label %27

27:                                               ; preds = %25, %22
  %28 = load volatile ptr, ptr %17, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %36, label %30, !prof !18

30:                                               ; preds = %27
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !59
  tail call void @arm_heavy_mb() #10
  %31 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 72
  %32 = load i8, ptr %31, align 4, !range !60
  %33 = or i8 %32, 2
  %34 = zext i8 %33 to i32
  %35 = getelementptr i8, ptr %28, i32 46708
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %34) #10, !srcloc !20
  br label %36

36:                                               ; preds = %30, %27
  %37 = load volatile ptr, ptr %17, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39, !prof !18

39:                                               ; preds = %36
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !61
  tail call void @arm_heavy_mb() #10
  %40 = getelementptr i8, ptr %37, i32 208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 524288) #10, !srcloc !20
  br label %41

41:                                               ; preds = %39, %36, %14, %10
  %42 = load i32, ptr %8, align 4
  %43 = and i32 %42, -2
  %44 = icmp eq i32 %43, 6
  br i1 %44, label %45, label %62

45:                                               ; preds = %41
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i32 16, i1 false), !annotation !15
  %46 = tail call i64 @ktime_get_with_offset(i32 noundef 0) #10
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %2, i64 noundef %46) #10
  %47 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 37, i32 1
  %48 = load volatile ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %54, label %50, !prof !18

50:                                               ; preds = %45
  call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !46
  call void @arm_heavy_mb() #10
  %51 = getelementptr inbounds %struct.timespec64, ptr %2, i32 0, i32 1
  %52 = load i32, ptr %51, align 8
  %53 = getelementptr i8, ptr %48, i32 46592
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %52) #10, !srcloc !20
  br label %54

54:                                               ; preds = %50, %45
  %55 = load volatile ptr, ptr %47, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %61, label %57, !prof !18

57:                                               ; preds = %54
  call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !47
  call void @arm_heavy_mb() #10
  %58 = load i64, ptr %2, align 8
  %59 = trunc i64 %58 to i32
  %60 = getelementptr i8, ptr %55, i32 46596
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %59) #10, !srcloc !20
  br label %61

61:                                               ; preds = %57, %54
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #10
  br label %66

62:                                               ; preds = %41
  %63 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 68
  %64 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 67
  %65 = tail call i64 @ktime_get_with_offset(i32 noundef 0) #10
  tail call void @timecounter_init(ptr noundef %63, ptr noundef %64, i64 noundef %65) #10
  br label %66

66:                                               ; preds = %62, %61, %1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #10
  %67 = call i32 @igb_rd32(ptr noundef %3, i32 noundef 8) #10
  %68 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 65
  %69 = load i32, ptr %68, align 16
  %70 = and i32 %69, 2
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %66
  %73 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 58
  %74 = load ptr, ptr @system_wq, align 4
  %75 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %74, ptr noundef %73, i32 noundef 36000) #10
  br label %76

76:                                               ; preds = %72, %66
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ptp_clock_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @igb_ptp_suspend(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 65
  %3 = load i32, ptr %2, align 16
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %21, label %6

6:                                                ; preds = %1
  %7 = and i32 %3, 2
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 58
  %11 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %10) #10
  br label %12

12:                                               ; preds = %9, %6
  %13 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 59
  %14 = tail call zeroext i1 @cancel_work_sync(ptr noundef %13) #10
  %15 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 60
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %12
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %16, i32 noundef 1) #10
  store ptr null, ptr %15, align 4
  %19 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %19) #10, !srcloc !9
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %19, ptr %19, i32 8, ptr elementtype(i32) %19) #10, !srcloc !10
  br label %21

21:                                               ; preds = %18, %12, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @igb_ptp_stop(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 65
  %3 = load i32, ptr %2, align 16
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %21, label %6

6:                                                ; preds = %1
  %7 = and i32 %3, 2
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 58
  %11 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %10) #10
  br label %12

12:                                               ; preds = %9, %6
  %13 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 59
  %14 = tail call zeroext i1 @cancel_work_sync(ptr noundef %13) #10
  %15 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 60
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %12
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %16, i32 noundef 1) #10
  store ptr null, ptr %15, align 4
  %19 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %19) #10, !srcloc !9
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %19, ptr %19, i32 8, ptr elementtype(i32) %19) #10, !srcloc !10
  br label %21

21:                                               ; preds = %18, %12, %1
  %22 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 56
  %23 = load ptr, ptr %22, align 8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %34, label %25

25:                                               ; preds = %21
  %26 = tail call i32 @ptp_clock_unregister(ptr noundef nonnull %23) #10
  %27 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 34
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  %30 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 1
  %31 = load ptr, ptr %30, align 64
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %29, ptr noundef nonnull @.str.5, ptr noundef %31) #11
  %32 = load i32, ptr %2, align 16
  %33 = and i32 %32, -2
  store i32 %33, ptr %2, align 16
  br label %34

34:                                               ; preds = %25, %21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_clock_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @timecounter_init(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @timecounter_cyc2time(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_real_ts64(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_find_pin(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @igb_pin_extts(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 37
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5)
  %7 = tail call i32 @igb_rd32(ptr noundef %6, i32 noundef 0) #10
  store i32 %7, ptr %4, align 4
  %8 = tail call i32 @igb_rd32(ptr noundef %6, i32 noundef 24) #10
  store i32 %8, ptr %5, align 4
  %9 = tail call i32 @igb_rd32(ptr noundef %6, i32 noundef 60) #10
  %10 = icmp slt i32 %2, 2
  %11 = select i1 %10, ptr %4, ptr %5
  %12 = getelementptr [4 x i32], ptr @igb_pin_direction.mask, i32 0, i32 %2
  %13 = load i32, ptr %12, align 4
  %14 = xor i32 %13, -1
  %15 = load i32, ptr %11, align 4
  %16 = and i32 %15, %14
  store i32 %16, ptr %11, align 4
  %17 = getelementptr [4 x i32], ptr @igb_pin_perout.ts_sdp_en, i32 0, i32 %2
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %1, 1
  %20 = select i1 %19, ptr @igb_pin_perout.aux1_sel_sdp, ptr @igb_pin_perout.aux0_sel_sdp
  %21 = getelementptr [4 x i32], ptr %20, i32 0, i32 %2
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 37, i32 1
  %24 = load volatile ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %35, label %26, !prof !18

26:                                               ; preds = %3
  %27 = xor i32 %18, -1
  %28 = and i32 %9, %27
  %29 = select i1 %19, i32 -57, i32 -8
  %30 = and i32 %28, %29
  %31 = or i32 %30, %22
  %32 = select i1 %19, i32 32, i32 4
  %33 = or i32 %31, %32
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !62
  tail call void @arm_heavy_mb() #10
  %34 = getelementptr i8, ptr %24, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %33) #10, !srcloc !20
  br label %35

35:                                               ; preds = %26, %3
  %36 = load volatile ptr, ptr %23, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38, !prof !18

38:                                               ; preds = %35
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !63
  tail call void @arm_heavy_mb() #10
  %39 = load i32, ptr %4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %36, i32 %39) #10, !srcloc !20
  br label %40

40:                                               ; preds = %38, %35
  %41 = load volatile ptr, ptr %23, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %46, label %43, !prof !18

43:                                               ; preds = %40
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !64
  tail call void @arm_heavy_mb() #10
  %44 = load i32, ptr %5, align 4
  %45 = getelementptr i8, ptr %41, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %44) #10, !srcloc !20
  br label %46

46:                                               ; preds = %43, %40
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @igb_pin_perout(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 37
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6)
  %8 = tail call i32 @igb_rd32(ptr noundef %7, i32 noundef 0) #10
  store i32 %8, ptr %5, align 4
  %9 = tail call i32 @igb_rd32(ptr noundef %7, i32 noundef 24) #10
  store i32 %9, ptr %6, align 4
  %10 = tail call i32 @igb_rd32(ptr noundef %7, i32 noundef 60) #10
  %11 = icmp slt i32 %2, 2
  %12 = select i1 %11, ptr %5, ptr %6
  %13 = getelementptr [4 x i32], ptr @igb_pin_direction.mask, i32 0, i32 %2
  %14 = load i32, ptr %13, align 4
  %15 = load i32, ptr %12, align 4
  %16 = or i32 %15, %14
  store i32 %16, ptr %12, align 4
  %17 = getelementptr [4 x i32], ptr @igb_pin_perout.aux0_sel_sdp, i32 0, i32 %2
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr [4 x i32], ptr @igb_pin_perout.aux1_sel_sdp, i32 0, i32 %2
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr [4 x i32], ptr @igb_pin_perout.ts_sdp_sel_clr, i32 0, i32 %2
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %3, 0
  %24 = icmp eq i32 %1, 1
  %25 = select i1 %24, ptr @igb_pin_perout.ts_sdp_sel_clr, ptr @igb_pin_perout.ts_sdp_sel_fc0
  %26 = select i1 %24, ptr @igb_pin_perout.ts_sdp_sel_tt1, ptr @igb_pin_perout.ts_sdp_sel_tt0
  %27 = select i1 %23, ptr %26, ptr %25
  %28 = getelementptr [4 x i32], ptr %27, i32 0, i32 %2
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr [4 x i32], ptr @igb_pin_perout.ts_sdp_en, i32 0, i32 %2
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.igb_adapter, ptr %0, i32 0, i32 37, i32 1
  %33 = load volatile ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %49, label %35, !prof !18

35:                                               ; preds = %4
  %36 = and i32 %10, 3
  %37 = icmp eq i32 %36, %18
  %38 = and i32 %10, -5
  %39 = select i1 %37, i32 %38, i32 %10
  %40 = and i32 %39, 24
  %41 = icmp eq i32 %40, %20
  %42 = and i32 %39, -33
  %43 = select i1 %41, i32 %42, i32 %39
  %44 = xor i32 %22, -1
  %45 = and i32 %43, %44
  %46 = or i32 %29, %45
  %47 = or i32 %46, %31
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !65
  tail call void @arm_heavy_mb() #10
  %48 = getelementptr i8, ptr %33, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %47) #10, !srcloc !20
  br label %49

49:                                               ; preds = %35, %4
  %50 = load volatile ptr, ptr %32, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %54, label %52, !prof !18

52:                                               ; preds = %49
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !66
  tail call void @arm_heavy_mb() #10
  %53 = load i32, ptr %5, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %50, i32 %53) #10, !srcloc !20
  br label %54

54:                                               ; preds = %52, %49
  %55 = load volatile ptr, ptr %32, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %60, label %57, !prof !18

57:                                               ; preds = %54
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !67
  tail call void @arm_heavy_mb() #10
  %58 = load i32, ptr %6, align 4
  %59 = getelementptr i8, ptr %55, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %58) #10, !srcloc !20
  br label %60

60:                                               ; preds = %57, %54
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_normalized_timespec64(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_tstamp_tx(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @timecounter_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }
attributes #13 = { nounwind readonly }

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
!8 = !{i64 2148193290}
!9 = !{i64 583137, i64 2148073108, i64 2148073134, i64 2148073181, i64 2148073203, i64 2148073231, i64 2148073251}
!10 = !{i64 2148091444, i64 2148091476, i64 2148091505, i64 2148091539, i64 2148091570, i64 2148091593}
!11 = !{i64 2152678737, i64 2152678762}
!12 = !{i64 5174271}
!13 = !{i64 5174468}
!14 = !{i64 2152659747}
!15 = !{!"auto-init"}
!16 = !{i64 2152678159, i64 2152678184}
!17 = !{!"branch_weights", i32 2000, i32 1}
!18 = !{!"branch_weights", i32 1, i32 2000}
!19 = !{i64 2156680082}
!20 = !{i64 3856654}
!21 = !{i64 2156683547}
!22 = !{i64 2156687023}
!23 = !{i64 2156690453}
!24 = !{i64 2156694241}
!25 = !{i64 2156697848}
!26 = !{i64 2156701661}
!27 = !{i64 2156705370}
!28 = !{i64 2156709170}
!29 = !{i64 2156712810}
!30 = !{i64 2156716296}
!31 = !{i64 445995, i64 446022, i64 446044, i64 446072}
!32 = !{i64 446403, i64 446430, i64 446463, i64 446484, i64 446511, i64 446537}
!33 = !{i64 2156570746}
!34 = !{i64 445708, i64 445735}
!35 = !{i64 2156576045}
!36 = !{i64 2156613911}
!37 = !{i64 2156617325}
!38 = !{i64 2147931539, i64 2147931819, i64 2147932153, i64 2147932487}
!39 = !{i64 2156622384}
!40 = !{i64 2156625851}
!41 = !{i64 2156629314}
!42 = !{i64 2156632728}
!43 = !{!44}
!44 = distinct !{!44, !45, !"timespec64_add: argument 0"}
!45 = distinct !{!45, !"timespec64_add"}
!46 = !{i64 2156560773}
!47 = !{i64 2156564219}
!48 = !{i64 2156638254}
!49 = !{i64 2156641668}
!50 = !{i64 2156646909}
!51 = !{i64 2156650380}
!52 = !{i64 2156653813}
!53 = !{i64 2156657223}
!54 = !{i64 2156660637}
!55 = !{i64 2156668672}
!56 = !{i64 2156725266}
!57 = !{i64 2156728752}
!58 = !{i64 2156732158}
!59 = !{i64 2156735928}
!60 = !{i8 0, i8 2}
!61 = !{i64 2156739560}
!62 = !{i64 2156590925}
!63 = !{i64 2156594337}
!64 = !{i64 2156597755}
!65 = !{i64 2156601672}
!66 = !{i64 2156605084}
!67 = !{i64 2156608502}
