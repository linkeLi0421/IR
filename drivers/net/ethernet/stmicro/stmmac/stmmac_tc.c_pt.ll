; ModuleID = '/llk/IR/drivers/net/ethernet/stmicro/stmmac/stmmac_tc.c_pt.bc'
source_filename = "../drivers/net/ethernet/stmicro/stmmac/stmmac_tc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.stmmac_tc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.timespec64 = type { i64, i32 }
%struct.stmmac_priv = type { [8 x i32], [8 x i32], [8 x i32], i32, i8, i8, i32, i32, i32, i32, i32, [8 x i32], i32, ptr, ptr, ptr, ptr, ptr, %struct.mutex, [56 x i8], [8 x %struct.stmmac_rx_queue], i32, [60 x i8], [8 x %struct.stmmac_tx_queue], i32, [60 x i8], [8 x %struct.stmmac_channel], i32, i32, i32, ptr, %struct.phylink_config, ptr, [20 x i8], %struct.stmmac_extra_stats, %struct.stmmac_safety_stats, ptr, %struct.dma_features, %struct.stmmac_counters, i32, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, %struct.hwtstamp_config, ptr, %struct.ptp_clock_info, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.mutex, ptr, ptr, [128 x i32], i32, i32, [8 x i32], [8 x i32], [25 x i8], [25 x i8], [25 x i8], [26 x i8], [26 x i8], [8 x [30 x i8]], [8 x [34 x i8]], ptr, i32, ptr, %struct.work_struct, i32, ptr, %struct.work_struct, [20 x i8], i32, i32, ptr, i32, ptr, [3 x i32], [3 x i32], i32, ptr, [4 x %struct.stmmac_pps_cfg], %struct.stmmac_rss, ptr, ptr, [12 x i8] }
%struct.stmmac_rx_queue = type { i32, i32, [56 x i8], %struct.xdp_rxq_info, ptr, ptr, ptr, ptr, ptr, [44 x i8], ptr, i32, i32, i32, i32, i32, i32, i32, %struct.anon.138, [20 x i8] }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [40 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.anon.138 = type { ptr, i32, i32 }
%struct.stmmac_tx_queue = type { i32, i32, %struct.hrtimer, i32, ptr, ptr, ptr, ptr, %union.anon.139, ptr, ptr, i32, i32, i32, i32, i32, i32, [16 x i8] }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.139 = type { ptr }
%struct.stmmac_channel = type { %struct.napi_struct, [40 x i8], %struct.napi_struct, [40 x i8], %struct.napi_struct, ptr, %struct.spinlock, i32, [28 x i8] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.list_head = type { ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }
%struct.stmmac_extra_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x %struct.stmmac_txq_stats], [8 x %struct.stmmac_rxq_stats], [40 x i8] }
%struct.stmmac_txq_stats = type { i32, i32 }
%struct.stmmac_rxq_stats = type { i32, i32 }
%struct.stmmac_safety_stats = type { [32 x i32], [32 x i32], [32 x i32] }
%struct.dma_features = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.stmmac_counters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.24 }
%union.anon.24 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.25 }
%union.anon.25 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.stmmac_pps_cfg = type { i8, %struct.timespec64, %struct.timespec64 }
%struct.stmmac_rss = type { i32, [40 x i8], [256 x i32] }
%struct.stmmac_flow_entry = type { i32, i32, i8, i32, i32, i32 }
%struct.plat_stmmacenet_data = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [8 x %struct.stmmac_rxq_cfg], [8 x %struct.stmmac_txq_cfg], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i8, i8, i32, i32, i8, i32, i8, i8, i32, ptr, i8, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.stmmac_rxq_cfg = type { i8, i32, i8, i8, i32 }
%struct.stmmac_txq_cfg = type { i32, i8, i32, i32, i32, i32, i8, i32, i32 }
%struct.stmmac_tc_entry = type { i8, i8, i8, i8, ptr, i32, i32, i32, %struct.anon.119 }
%struct.anon.119 = type { i32, i32, i8, i8, i8, i8, i32 }
%struct.tc_cls_u32_offload = type { %struct.flow_cls_common_offload, i32, %union.anon.120 }
%struct.flow_cls_common_offload = type { i32, i16, i32, ptr }
%union.anon.120 = type { %struct.tc_cls_u32_knode }
%struct.tc_cls_u32_knode = type { ptr, ptr, ptr, i32, i32, i32, i32, i8 }
%struct.tc_u32_sel = type { i8, i8, i8, i16, i16, i16, i16, i32, [0 x %struct.tc_u32_key] }
%struct.tc_u32_key = type { i32, i32, i32, i32 }
%struct.stmmac_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mac_device_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mii_regs, %struct.mac_link, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, [32 x i32], i32, i8, i8 }
%struct.mii_regs = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mac_link = type { i32, i32, i32, i32, i32, i32, %struct.anon.134, %struct.anon.135 }
%struct.anon.134 = type { i32, i32, i32 }
%struct.anon.135 = type { i32, i32, i32, i32 }
%struct.tc_cbs_qopt_offload = type { i8, i32, i32, i32, i32, i32 }
%struct.stmmac_dma_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.flow_match_vlan = type { ptr, ptr }
%struct.flow_match_basic = type { ptr, ptr }
%struct.flow_cls_offload = type { %struct.flow_cls_common_offload, i32, i32, ptr, %struct.flow_stats, i32 }
%struct.flow_stats = type { i64, i64, i64, i64, i32, i8 }
%struct.flow_rule = type { %struct.flow_match, %struct.flow_action }
%struct.flow_match = type { ptr, ptr, ptr }
%struct.flow_action = type { i32, [0 x %struct.flow_action_entry] }
%struct.flow_action_entry = type { i32, i32, i32, ptr, ptr, %union.anon.121, ptr }
%union.anon.121 = type { %struct.anon.126 }
%struct.anon.126 = type { i32, i64, i64, i64, i32 }
%struct.flow_dissector_key_basic = type { i16, i8, i8 }
%struct.stmmac_rfs_entry = type { i32, i16, i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.118, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type {}
%struct.possible_net_t = type {}
%union.anon.118 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.tc_taprio_qopt_offload = type { i8, i64, i64, i64, i32, [0 x %struct.tc_taprio_sched_entry] }
%struct.tc_taprio_sched_entry = type { i8, i32, i32 }
%struct.stmmac_est = type { %struct.mutex, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], i32, [1024 x i32], [1024 x i32], i32 }
%struct.tc_etf_qopt_offload = type { i8, i32 }
%struct.flow_match_ipv4_addrs = type { ptr, ptr }
%struct.flow_dissector_key_ipv4_addrs = type { i32, i32 }
%struct.flow_match_ports = type { ptr, ptr }
%struct.anon.149 = type { i16, i16 }

@dwmac510_tc_ops = dso_local local_unnamed_addr constant %struct.stmmac_tc_ops { ptr @tc_init, ptr @tc_setup_cls_u32, ptr @tc_setup_cbs, ptr @tc_setup_cls, ptr @tc_setup_taprio, ptr @tc_setup_etf }, align 4
@.str = private unnamed_addr constant [35 x i8] c"Enabled L3L4 Flow TC (entries=%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Enabling HW TC (entries=%d, max_off=%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Enabled RFS Flow TC (entries=%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"CBS queue %d: send %d, idle %d, hi %d, lo %d\0A\00", align 1
@__flow_action_hw_stats_check.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"include/net/flow_offload.h\00", align 1
@__flow_action_hw_stats_check.__msg = internal constant [57 x i8] c"stmmac: Driver supports only default HW stats type \22any\22\00", align 1
@flow_action_mixed_hw_stats_check.__msg = internal constant [59 x i8] c"stmmac: Mixing HW stats types for actions is not supported\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"Invalid traffic class\0A\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"Only full mask is supported for EthType filter\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"EthType(0x%x) is not supported\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"Only full mask is supported for VLAN priority\00", align 1
@tc_setup_taprio.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"&priv->plat->est->lock\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"failed to configure EST\0A\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"configured EST\0A\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"start FPE handshake\0A\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"disabled FPE\0A\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"stop FPE handshake\0A\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"%s ETF for Queue %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@switch.table.tc_init.19 = private unnamed_addr constant [3 x i32] [i32 64, i32 128, i32 256], align 4
@switch.table.tc_setup_taprio = private unnamed_addr constant [5 x i32] [i32 64, i32 128, i32 256, i32 512, i32 1024], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @stmmac_calc_tas_basetime(ptr noalias nocapture writeonly sret(%struct.timespec64) align 8 %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(16) %0, i8 0, i32 16, i1 false), !annotation !8
  %5 = icmp slt i64 %2, %1
  br i1 %5, label %12, label %6

6:                                                ; preds = %4
  %7 = sub i64 %2, %1
  %8 = tail call i64 @div64_s64(i64 noundef %7, i64 noundef %3) #7
  %9 = add i64 %8, 1
  %10 = mul i64 %9, %3
  %11 = add i64 %10, %1
  br label %12

12:                                               ; preds = %6, %4
  %13 = phi i64 [ %11, %6 ], [ %1, %4 ]
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %0, i64 noundef %13) #7
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_s64(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tc_init(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 37, i32 39
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %35, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 92
  store i32 %3, ptr %6, align 8
  %7 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 15
  %8 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %3, i32 24) #7
  %9 = extractvalue { i32, i1 } %8, 1
  br i1 %9, label %10, label %12, !prof !9

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 93
  store ptr null, ptr %11, align 4
  br label %106

12:                                               ; preds = %5
  %13 = load ptr, ptr %7, align 8
  %14 = extractvalue { i32, i1 } %8, 0
  %15 = tail call noalias ptr @devm_kmalloc(ptr noundef %13, i32 noundef %14, i32 noundef 3520) #7
  %16 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 93
  store ptr %15, ptr %16, align 4
  %17 = icmp eq ptr %15, null
  br i1 %17, label %106, label %18

18:                                               ; preds = %12
  %19 = load i32, ptr %6, align 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %18
  %22 = getelementptr %struct.stmmac_flow_entry, ptr %15, i32 0, i32 4
  store i32 0, ptr %22, align 4
  %23 = load i32, ptr %6, align 8
  %24 = icmp ugt i32 %23, 1
  br i1 %24, label %25, label %32

25:                                               ; preds = %25, %21
  %26 = phi i32 [ %29, %25 ], [ 1, %21 ]
  %27 = load ptr, ptr %16, align 4
  %28 = getelementptr %struct.stmmac_flow_entry, ptr %27, i32 %26, i32 4
  store i32 %26, ptr %28, align 4
  %29 = add nuw i32 %26, 1
  %30 = load i32, ptr %6, align 8
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %25, label %32

32:                                               ; preds = %25, %21, %18
  %33 = phi i32 [ 0, %18 ], [ %23, %21 ], [ %30, %25 ]
  %34 = load ptr, ptr %7, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %34, ptr noundef nonnull @.str, i32 noundef %33) #8
  br label %35

35:                                               ; preds = %32, %1
  %36 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 94
  store i32 8, ptr %36, align 64
  %37 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 94, i32 1
  store i32 1, ptr %37, align 4
  %38 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 94, i32 2
  store i32 1, ptr %38, align 8
  %39 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 96
  %40 = load i32, ptr %39, align 8
  %41 = add i32 %40, 10
  store i32 %41, ptr %39, align 8
  %42 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 15
  %43 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %41, i32 20) #7
  %44 = extractvalue { i32, i1 } %43, 1
  br i1 %44, label %45, label %47, !prof !9

45:                                               ; preds = %35
  %46 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 97
  store ptr null, ptr %46, align 4
  br label %106

47:                                               ; preds = %35
  %48 = load ptr, ptr %42, align 8
  %49 = extractvalue { i32, i1 } %43, 0
  %50 = tail call noalias ptr @devm_kmalloc(ptr noundef %48, i32 noundef %49, i32 noundef 3520) #7
  %51 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 97
  store ptr %50, ptr %51, align 4
  %52 = icmp eq ptr %50, null
  br i1 %52, label %106, label %53

53:                                               ; preds = %47
  %54 = load ptr, ptr %42, align 8
  %55 = load i32, ptr %39, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %54, ptr noundef nonnull @.str.2, i32 noundef %55) #8
  %56 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 36
  %57 = load ptr, ptr %56, align 64
  %58 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %57, i32 0, i32 10
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %70

61:                                               ; preds = %53
  %62 = load ptr, ptr %42, align 8
  %63 = tail call noalias ptr @devm_kmalloc(ptr noundef %62, i32 noundef 12, i32 noundef 3520) #7
  %64 = load ptr, ptr %56, align 64
  %65 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %64, i32 0, i32 10
  store ptr %63, ptr %65, align 4
  %66 = load ptr, ptr %56, align 64
  %67 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %66, i32 0, i32 10
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %106, label %71

70:                                               ; preds = %53
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %59, i8 0, i32 12, i1 false)
  br label %71

71:                                               ; preds = %70, %61
  %72 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 37, i32 30
  %73 = load i32, ptr %72, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %106, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 37, i32 31
  %77 = load i32, ptr %76, align 4
  %78 = icmp ult i32 %77, 3
  br i1 %78, label %79, label %106

79:                                               ; preds = %75
  %80 = getelementptr inbounds [3 x i32], ptr @switch.table.tc_init.19, i32 0, i32 %77
  %81 = load i32, ptr %80, align 4
  %82 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 90
  store i32 %81, ptr %82, align 16
  %83 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 37, i32 32
  %84 = load i32, ptr %83, align 4
  %85 = icmp ult i32 %84, 3
  br i1 %85, label %86, label %106

86:                                               ; preds = %79
  %87 = getelementptr inbounds [3 x i32], ptr @switch.table.tc_init.19, i32 0, i32 %84
  %88 = load i32, ptr %87, align 4
  %89 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 89
  store i32 %88, ptr %89, align 4
  %90 = mul nuw nsw i32 %88, 36
  %91 = load ptr, ptr %42, align 8
  %92 = tail call noalias ptr @devm_kmalloc(ptr noundef %91, i32 noundef %90, i32 noundef 3520) #7
  %93 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 91
  store ptr %92, ptr %93, align 4
  %94 = icmp eq ptr %92, null
  br i1 %94, label %106, label %95

95:                                               ; preds = %86
  %96 = add nsw i32 %88, -1
  %97 = getelementptr %struct.stmmac_tc_entry, ptr %92, i32 %96
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(36) %97, i8 0, i32 36, i1 false) #7
  store i8 1, ptr %97, align 4
  %98 = getelementptr %struct.stmmac_tc_entry, ptr %92, i32 %96, i32 2
  store i8 1, ptr %98, align 2
  %99 = getelementptr %struct.stmmac_tc_entry, ptr %92, i32 %96, i32 7
  store i32 -1, ptr %99, align 4
  %100 = getelementptr %struct.stmmac_tc_entry, ptr %92, i32 %96, i32 8
  store i32 0, ptr %100, align 4
  %101 = getelementptr %struct.stmmac_tc_entry, ptr %92, i32 %96, i32 8, i32 2
  store i8 1, ptr %101, align 4
  %102 = load ptr, ptr %42, align 8
  %103 = load i32, ptr %89, align 4
  %104 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 90
  %105 = load i32, ptr %104, align 16
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %102, ptr noundef nonnull @.str.1, i32 noundef %103, i32 noundef %105) #8
  br label %106

106:                                              ; preds = %95, %86, %79, %75, %71, %61, %47, %45, %12, %10
  %107 = phi i32 [ 0, %95 ], [ -12, %12 ], [ -12, %61 ], [ 0, %71 ], [ -22, %75 ], [ -22, %79 ], [ -12, %86 ], [ -12, %10 ], [ -12, %47 ], [ -12, %45 ]
  ret i32 %107
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tc_setup_cls_u32(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.tc_cls_u32_offload, ptr %1, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  switch i32 %4, label %194 [
    i32 1, label %5
    i32 0, label %38
    i32 2, label %145
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.tc_cls_u32_offload, ptr %1, i32 0, i32 2, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 89
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %38, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 91
  %13 = load ptr, ptr %12, align 4
  br label %14

14:                                               ; preds = %26, %11
  %15 = phi i32 [ 0, %11 ], [ %28, %26 ]
  %16 = phi ptr [ null, %11 ], [ %27, %26 ]
  %17 = getelementptr %struct.stmmac_tc_entry, ptr %13, i32 %15, i32 6
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, %7
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = getelementptr %struct.stmmac_tc_entry, ptr %13, i32 %15
  %22 = getelementptr %struct.stmmac_tc_entry, ptr %13, i32 %15, i32 3
  %23 = load i8, ptr %22, align 1, !range !10
  %24 = icmp eq i8 %23, 0
  %25 = select i1 %24, ptr %21, ptr %16
  br label %26

26:                                               ; preds = %20, %14
  %27 = phi ptr [ %16, %14 ], [ %25, %20 ]
  %28 = add nuw i32 %15, 1
  %29 = icmp eq i32 %28, %9
  br i1 %29, label %30, label %14

30:                                               ; preds = %26
  %31 = icmp eq ptr %27, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %30
  store i8 0, ptr %27, align 4
  %33 = getelementptr inbounds %struct.stmmac_tc_entry, ptr %27, i32 0, i32 4
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.stmmac_tc_entry, ptr %34, i32 0, i32 3
  store i8 0, ptr %37, align 1
  store i8 0, ptr %34, align 4
  br label %38

38:                                               ; preds = %36, %32, %30, %5, %2
  %39 = getelementptr inbounds %struct.tc_cls_u32_offload, ptr %1, i32 0, i32 2, i32 0, i32 2
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.flow_cls_common_offload, ptr %1, i32 0, i32 2
  %42 = load i32, ptr %41, align 4
  %43 = shl i32 %42, 16
  %44 = getelementptr inbounds %struct.tc_u32_sel, ptr %40, i32 0, i32 2
  %45 = load i8, ptr %44, align 2
  %46 = icmp eq i8 %45, 1
  br i1 %46, label %47, label %194

47:                                               ; preds = %38
  %48 = getelementptr inbounds %struct.tc_u32_sel, ptr %40, i32 0, i32 8
  %49 = getelementptr inbounds %struct.tc_u32_sel, ptr %40, i32 1, i32 5
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.tc_u32_sel, ptr %40, i32 0, i32 1
  %52 = load i8, ptr %51, align 1
  %53 = zext i8 %52 to i32
  %54 = shl i32 %50, %53
  %55 = getelementptr inbounds %struct.tc_u32_sel, ptr %40, i32 1, i32 3
  %56 = load i32, ptr %55, align 4
  %57 = load i32, ptr %48, align 4
  %58 = getelementptr inbounds %struct.flow_cls_common_offload, ptr %1, i32 0, i32 1
  %59 = load i16, ptr %58, align 4
  %60 = tail call i16 @llvm.bswap.i16(i16 %59) #7
  switch i16 %60, label %194 [
    i16 3, label %63
    i16 2048, label %61
  ]

61:                                               ; preds = %47
  %62 = add i32 %54, 14
  br label %63

63:                                               ; preds = %61, %47
  %64 = phi i32 [ %62, %61 ], [ %54, %47 ]
  %65 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 90
  %66 = load i32, ptr %65, align 16
  %67 = icmp ugt i32 %64, %66
  br i1 %67, label %194, label %68

68:                                               ; preds = %63
  %69 = lshr i32 %64, 2
  %70 = and i32 %64, 3
  %71 = getelementptr inbounds %struct.tc_cls_u32_offload, ptr %1, i32 0, i32 2, i32 0, i32 3
  %72 = load i32, ptr %71, align 4
  %73 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 89
  %74 = load i32, ptr %73, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %194, label %76

76:                                               ; preds = %68
  %77 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 91
  %78 = load ptr, ptr %77, align 4
  br label %79

79:                                               ; preds = %79, %76
  %80 = phi i32 [ 0, %76 ], [ %88, %79 ]
  %81 = phi ptr [ null, %76 ], [ %87, %79 ]
  %82 = getelementptr %struct.stmmac_tc_entry, ptr %78, i32 %80
  %83 = load i8, ptr %82, align 4, !range !10
  %84 = icmp ne i8 %83, 0
  %85 = icmp ne ptr %81, null
  %86 = select i1 %84, i1 true, i1 %85
  %87 = select i1 %86, ptr %81, ptr %82
  %88 = add nuw i32 %80, 1
  %89 = icmp eq i32 %88, %74
  br i1 %89, label %90, label %79

90:                                               ; preds = %79
  %91 = icmp eq ptr %87, null
  br i1 %91, label %194, label %92

92:                                               ; preds = %90
  %93 = getelementptr inbounds %struct.stmmac_tc_entry, ptr %87, i32 0, i32 6
  store i32 %72, ptr %93, align 4
  store i8 1, ptr %87, align 4
  %94 = getelementptr inbounds %struct.stmmac_tc_entry, ptr %87, i32 0, i32 8
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(16) %94, i8 0, i32 16, i1 false) #7
  %95 = icmp eq i32 %70, 0
  br i1 %95, label %115, label %96

96:                                               ; preds = %92
  %97 = load i32, ptr %71, align 4
  %98 = load i32, ptr %73, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %144, label %100

100:                                              ; preds = %96
  %101 = load ptr, ptr %77, align 4
  br label %102

102:                                              ; preds = %102, %100
  %103 = phi i32 [ 0, %100 ], [ %111, %102 ]
  %104 = phi ptr [ null, %100 ], [ %110, %102 ]
  %105 = getelementptr %struct.stmmac_tc_entry, ptr %101, i32 %103
  %106 = load i8, ptr %105, align 4, !range !10
  %107 = icmp ne i8 %106, 0
  %108 = icmp ne ptr %104, null
  %109 = select i1 %107, i1 true, i1 %108
  %110 = select i1 %109, ptr %104, ptr %105
  %111 = add nuw i32 %103, 1
  %112 = icmp eq i32 %111, %98
  br i1 %112, label %113, label %102

113:                                              ; preds = %102
  %114 = icmp eq ptr %110, null
  br i1 %114, label %144, label %121

115:                                              ; preds = %92
  %116 = getelementptr inbounds %struct.stmmac_tc_entry, ptr %87, i32 0, i32 4
  store ptr null, ptr %116, align 4
  %117 = getelementptr inbounds %struct.stmmac_tc_entry, ptr %87, i32 0, i32 8, i32 1
  store i32 %57, ptr %117, align 4
  store i32 %56, ptr %94, align 4
  %118 = trunc i32 %69 to i8
  %119 = getelementptr inbounds %struct.stmmac_tc_entry, ptr %87, i32 0, i32 8, i32 3
  store i8 %118, ptr %119, align 1
  %120 = getelementptr inbounds %struct.stmmac_tc_entry, ptr %87, i32 0, i32 7
  store i32 %43, ptr %120, align 4
  br label %144

121:                                              ; preds = %113
  %122 = getelementptr inbounds %struct.stmmac_tc_entry, ptr %110, i32 0, i32 6
  store i32 %97, ptr %122, align 4
  %123 = getelementptr inbounds %struct.stmmac_tc_entry, ptr %110, i32 0, i32 8
  %124 = getelementptr inbounds %struct.stmmac_tc_entry, ptr %110, i32 0, i32 8, i32 2
  store i64 0, ptr %124, align 4
  %125 = getelementptr inbounds %struct.stmmac_tc_entry, ptr %87, i32 0, i32 4
  store ptr %110, ptr %125, align 4
  %126 = shl nuw nsw i32 %70, 3
  %127 = shl i32 %57, %126
  %128 = getelementptr inbounds %struct.stmmac_tc_entry, ptr %87, i32 0, i32 8, i32 1
  store i32 %127, ptr %128, align 4
  %129 = shl i32 %56, %126
  store i32 %129, ptr %94, align 4
  %130 = trunc i32 %69 to i8
  %131 = getelementptr inbounds %struct.stmmac_tc_entry, ptr %87, i32 0, i32 8, i32 3
  store i8 %130, ptr %131, align 1
  %132 = getelementptr inbounds %struct.stmmac_tc_entry, ptr %87, i32 0, i32 7
  store i32 %43, ptr %132, align 4
  %133 = lshr i32 %57, %126
  %134 = sub nuw nsw i32 32, %126
  %135 = lshr i32 -1, %134
  %136 = and i32 %135, %133
  %137 = getelementptr inbounds %struct.stmmac_tc_entry, ptr %110, i32 0, i32 8, i32 1
  store i32 %136, ptr %137, align 4
  %138 = lshr i32 %56, %126
  %139 = and i32 %135, %138
  store i32 %139, ptr %123, align 4
  %140 = add i8 %130, 1
  %141 = getelementptr inbounds %struct.stmmac_tc_entry, ptr %110, i32 0, i32 8, i32 3
  store i8 %140, ptr %141, align 1
  %142 = getelementptr inbounds %struct.stmmac_tc_entry, ptr %110, i32 0, i32 7
  store i32 %43, ptr %142, align 4
  %143 = getelementptr inbounds %struct.stmmac_tc_entry, ptr %110, i32 0, i32 3
  store i8 1, ptr %143, align 1
  store i8 0, ptr %110, align 4
  br label %144

144:                                              ; preds = %121, %115, %113, %96
  store i8 0, ptr %87, align 4
  br label %194

145:                                              ; preds = %2
  %146 = getelementptr inbounds %struct.tc_cls_u32_offload, ptr %1, i32 0, i32 2, i32 0, i32 3
  %147 = load i32, ptr %146, align 4
  %148 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 89
  %149 = load i32, ptr %148, align 4
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %178, label %151

151:                                              ; preds = %145
  %152 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 91
  %153 = load ptr, ptr %152, align 4
  br label %154

154:                                              ; preds = %166, %151
  %155 = phi i32 [ 0, %151 ], [ %168, %166 ]
  %156 = phi ptr [ null, %151 ], [ %167, %166 ]
  %157 = getelementptr %struct.stmmac_tc_entry, ptr %153, i32 %155, i32 6
  %158 = load i32, ptr %157, align 4
  %159 = icmp eq i32 %158, %147
  br i1 %159, label %160, label %166

160:                                              ; preds = %154
  %161 = getelementptr %struct.stmmac_tc_entry, ptr %153, i32 %155
  %162 = getelementptr %struct.stmmac_tc_entry, ptr %153, i32 %155, i32 3
  %163 = load i8, ptr %162, align 1, !range !10
  %164 = icmp eq i8 %163, 0
  %165 = select i1 %164, ptr %161, ptr %156
  br label %166

166:                                              ; preds = %160, %154
  %167 = phi ptr [ %156, %154 ], [ %165, %160 ]
  %168 = add nuw i32 %155, 1
  %169 = icmp eq i32 %168, %149
  br i1 %169, label %170, label %154

170:                                              ; preds = %166
  %171 = icmp eq ptr %167, null
  br i1 %171, label %178, label %172

172:                                              ; preds = %170
  store i8 0, ptr %167, align 4
  %173 = getelementptr inbounds %struct.stmmac_tc_entry, ptr %167, i32 0, i32 4
  %174 = load ptr, ptr %173, align 4
  %175 = icmp eq ptr %174, null
  br i1 %175, label %178, label %176

176:                                              ; preds = %172
  %177 = getelementptr inbounds %struct.stmmac_tc_entry, ptr %174, i32 0, i32 3
  store i8 0, ptr %177, align 1
  store i8 0, ptr %174, align 4
  br label %178

178:                                              ; preds = %176, %172, %170, %145
  %179 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 16
  %180 = load ptr, ptr %179, align 4
  %181 = load ptr, ptr %180, align 4
  %182 = icmp eq ptr %181, null
  br i1 %182, label %194, label %183

183:                                              ; preds = %178
  %184 = getelementptr inbounds %struct.stmmac_ops, ptr %181, i32 0, i32 32
  %185 = load ptr, ptr %184, align 4
  %186 = icmp eq ptr %185, null
  br i1 %186, label %194, label %187

187:                                              ; preds = %183
  %188 = getelementptr inbounds %struct.mac_device_info, ptr %180, i32 0, i32 10
  %189 = load ptr, ptr %188, align 4
  %190 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 91
  %191 = load ptr, ptr %190, align 4
  %192 = load i32, ptr %148, align 4
  %193 = tail call i32 %185(ptr noundef %189, ptr noundef %191, i32 noundef %192) #7
  br label %194

194:                                              ; preds = %187, %183, %178, %144, %90, %68, %63, %47, %38, %2
  %195 = phi i32 [ -95, %2 ], [ -22, %38 ], [ -22, %47 ], [ -22, %63 ], [ -22, %68 ], [ -22, %90 ], [ -22, %144 ], [ %193, %187 ], [ -22, %183 ], [ -22, %178 ]
  ret i32 %195
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tc_setup_cbs(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 36
  %6 = getelementptr inbounds %struct.tc_cbs_qopt_offload, ptr %1, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %118, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr %5, align 64
  %11 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %10, i32 0, i32 30
  %12 = load i32, ptr %11, align 4
  %13 = icmp ult i32 %7, %12
  br i1 %13, label %14, label %118

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 37, i32 13
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %118, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 27
  %20 = load i32, ptr %19, align 64
  switch i32 %20, label %118 [
    i32 10000, label %25
    i32 5000, label %21
    i32 2500, label %22
    i32 1000, label %23
    i32 100, label %24
  ]

21:                                               ; preds = %18
  br label %25

22:                                               ; preds = %18
  br label %25

23:                                               ; preds = %18
  br label %25

24:                                               ; preds = %18
  br label %25

25:                                               ; preds = %24, %23, %22, %21, %18
  %26 = phi i32 [ 4096, %24 ], [ 8192, %23 ], [ 8192, %22 ], [ 32768, %21 ], [ 32768, %18 ]
  %27 = phi i32 [ 100000, %24 ], [ 1000000, %23 ], [ 2500000, %22 ], [ 5000000, %21 ], [ 10000000, %18 ]
  %28 = getelementptr %struct.plat_stmmacenet_data, ptr %10, i32 0, i32 34, i32 %7, i32 1
  %29 = load i8, ptr %28, align 4
  %30 = icmp eq i8 %29, 1
  %31 = load i8, ptr %1, align 4
  %32 = icmp eq i8 %31, 0
  br i1 %30, label %33, label %47

33:                                               ; preds = %25
  br i1 %32, label %48, label %34

34:                                               ; preds = %33
  %35 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 16
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.mac_device_info, ptr %36, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %118, label %40

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.stmmac_dma_ops, ptr %38, i32 0, i32 25
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %118, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 13
  %46 = load ptr, ptr %45, align 32
  tail call void %42(ptr noundef %46, i32 noundef %7, i8 noundef zeroext 0) #7
  br label %61

47:                                               ; preds = %25
  br i1 %32, label %48, label %65

48:                                               ; preds = %47, %33
  %49 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 16
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.mac_device_info, ptr %50, i32 0, i32 2
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %118, label %54

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.stmmac_dma_ops, ptr %52, i32 0, i32 25
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %118, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 13
  %60 = load ptr, ptr %59, align 32
  tail call void %56(ptr noundef %60, i32 noundef %7, i8 noundef zeroext 1) #7
  br label %61

61:                                               ; preds = %58, %44
  %62 = phi i8 [ 1, %58 ], [ 0, %44 ]
  %63 = load ptr, ptr %5, align 64
  %64 = getelementptr %struct.plat_stmmacenet_data, ptr %63, i32 0, i32 34, i32 %7, i32 1
  store i8 %62, ptr %64, align 4
  br label %65

65:                                               ; preds = %61, %47
  %66 = getelementptr inbounds %struct.tc_cbs_qopt_offload, ptr %1, i32 0, i32 4
  %67 = load i32, ptr %66, align 4
  %68 = sext i32 %67 to i64
  %69 = zext i32 %26 to i64
  %70 = mul nsw i64 %69, %68
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !8
  %71 = call i64 @div_s64_rem(i64 noundef %70, i32 noundef %27, ptr noundef nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  %72 = trunc i64 %71 to i32
  %73 = load ptr, ptr %5, align 64
  %74 = getelementptr %struct.plat_stmmacenet_data, ptr %73, i32 0, i32 34, i32 %7, i32 3
  store i32 %72, ptr %74, align 4
  %75 = getelementptr inbounds %struct.tc_cbs_qopt_offload, ptr %1, i32 0, i32 5
  %76 = load i32, ptr %75, align 4
  %77 = sub i32 0, %76
  %78 = sext i32 %77 to i64
  %79 = mul nsw i64 %69, %78
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !8
  %80 = call i64 @div_s64_rem(i64 noundef %79, i32 noundef %27, ptr noundef nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  %81 = trunc i64 %80 to i32
  %82 = load ptr, ptr %5, align 64
  %83 = getelementptr %struct.plat_stmmacenet_data, ptr %82, i32 0, i32 34, i32 %7, i32 2
  store i32 %81, ptr %83, align 4
  %84 = getelementptr inbounds %struct.tc_cbs_qopt_offload, ptr %1, i32 0, i32 2
  %85 = load i32, ptr %84, align 4
  %86 = shl i32 %85, 13
  %87 = load ptr, ptr %5, align 64
  %88 = getelementptr %struct.plat_stmmacenet_data, ptr %87, i32 0, i32 34, i32 %7, i32 4
  store i32 %86, ptr %88, align 4
  %89 = getelementptr inbounds %struct.tc_cbs_qopt_offload, ptr %1, i32 0, i32 3
  %90 = load i32, ptr %89, align 4
  %91 = shl i32 %90, 13
  %92 = load ptr, ptr %5, align 64
  %93 = getelementptr %struct.plat_stmmacenet_data, ptr %92, i32 0, i32 34, i32 %7, i32 5
  store i32 %91, ptr %93, align 4
  %94 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 16
  %95 = load ptr, ptr %94, align 4
  %96 = load ptr, ptr %95, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %118, label %98

98:                                               ; preds = %65
  %99 = getelementptr inbounds %struct.stmmac_ops, ptr %96, i32 0, i32 11
  %100 = load ptr, ptr %99, align 4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %118, label %102

102:                                              ; preds = %98
  %103 = load ptr, ptr %5, align 64
  %104 = getelementptr %struct.plat_stmmacenet_data, ptr %103, i32 0, i32 34, i32 %7, i32 2
  %105 = load i32, ptr %104, align 4
  %106 = getelementptr %struct.plat_stmmacenet_data, ptr %103, i32 0, i32 34, i32 %7, i32 3
  %107 = load i32, ptr %106, align 4
  %108 = getelementptr %struct.plat_stmmacenet_data, ptr %103, i32 0, i32 34, i32 %7, i32 4
  %109 = load i32, ptr %108, align 4
  %110 = getelementptr %struct.plat_stmmacenet_data, ptr %103, i32 0, i32 34, i32 %7, i32 5
  %111 = load i32, ptr %110, align 4
  call void %100(ptr noundef %95, i32 noundef %105, i32 noundef %107, i32 noundef %109, i32 noundef %111, i32 noundef %7) #7
  %112 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 15
  %113 = load ptr, ptr %112, align 8
  %114 = load i32, ptr %75, align 4
  %115 = load i32, ptr %66, align 4
  %116 = load i32, ptr %84, align 4
  %117 = load i32, ptr %89, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %113, ptr noundef nonnull @.str.3, i32 noundef %7, i32 noundef %114, i32 noundef %115, i32 noundef %116, i32 noundef %117) #8
  br label %118

118:                                              ; preds = %102, %98, %65, %54, %48, %40, %34, %18, %14, %9, %2
  %119 = phi i32 [ 0, %102 ], [ -22, %9 ], [ -22, %2 ], [ -95, %14 ], [ -95, %18 ], [ -22, %40 ], [ -22, %34 ], [ -22, %54 ], [ -22, %48 ], [ -22, %98 ], [ -22, %65 ]
  ret i32 %119
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tc_setup_cls(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.flow_match_vlan, align 8
  %4 = alloca %struct.flow_match_basic, align 8
  %5 = alloca %struct.flow_match_basic, align 8
  %6 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 99
  %7 = load i32, ptr %6, align 64
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %519

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.flow_cls_offload, ptr %1, i32 0, i32 1
  %11 = load i32, ptr %10, align 8
  switch i32 %11, label %519 [
    i32 0, label %12
    i32 1, label %365
  ]

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 92
  %14 = load i32, ptr %13, align 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %29, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 93
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.flow_cls_offload, ptr %1, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  br label %21

21:                                               ; preds = %26, %16
  %22 = phi i32 [ 0, %16 ], [ %27, %26 ]
  %23 = getelementptr %struct.stmmac_flow_entry, ptr %18, i32 %22
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, %20
  br i1 %25, label %32, label %26

26:                                               ; preds = %21
  %27 = add nuw i32 %22, 1
  %28 = icmp eq i32 %27, %14
  br i1 %28, label %29, label %21

29:                                               ; preds = %26, %12
  %30 = getelementptr inbounds %struct.flow_cls_offload, ptr %1, i32 0, i32 3
  %31 = load ptr, ptr %30, align 8
  br label %36

32:                                               ; preds = %21
  %33 = getelementptr inbounds %struct.flow_cls_offload, ptr %1, i32 0, i32 3
  %34 = load ptr, ptr %33, align 8
  %35 = icmp eq ptr %23, null
  br i1 %35, label %36, label %57

36:                                               ; preds = %32, %29
  %37 = phi ptr [ %31, %29 ], [ %34, %32 ]
  br i1 %15, label %145, label %38

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 93
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.flow_cls_offload, ptr %1, i32 0, i32 2
  %42 = load i32, ptr %41, align 4
  br label %43

43:                                               ; preds = %52, %38
  %44 = phi i32 [ 0, %38 ], [ %53, %52 ]
  %45 = getelementptr %struct.stmmac_flow_entry, ptr %40, i32 %44
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, %42
  br i1 %47, label %55, label %48

48:                                               ; preds = %43
  %49 = getelementptr %struct.stmmac_flow_entry, ptr %40, i32 %44, i32 3
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %48
  %53 = add nuw i32 %44, 1
  %54 = icmp eq i32 %53, %14
  br i1 %54, label %145, label %43

55:                                               ; preds = %48, %43
  %56 = icmp eq ptr %45, null
  br i1 %56, label %145, label %57

57:                                               ; preds = %55, %32
  %58 = phi ptr [ %34, %32 ], [ %37, %55 ]
  %59 = phi ptr [ %23, %32 ], [ %45, %55 ]
  %60 = getelementptr inbounds %struct.flow_rule, ptr %58, i32 0, i32 1
  %61 = getelementptr inbounds %struct.flow_cls_common_offload, ptr %1, i32 0, i32 3
  %62 = load ptr, ptr %61, align 4
  %63 = load i32, ptr %60, align 8
  switch i32 %63, label %64 [
    i32 0, label %145
    i32 1, label %82
  ]

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.flow_rule, ptr %58, i32 1
  br label %66

66:                                               ; preds = %78, %64
  %67 = phi i32 [ %79, %78 ], [ 0, %64 ]
  %68 = phi i32 [ %72, %78 ], [ 0, %64 ]
  %69 = phi ptr [ %80, %78 ], [ %65, %64 ]
  %70 = icmp eq i32 %67, 0
  %71 = getelementptr inbounds %struct.flow_action_entry, ptr %69, i32 0, i32 2
  %72 = load i32, ptr %71, align 8
  %73 = and i32 %68, 255
  %74 = icmp eq i32 %72, %73
  %75 = select i1 %70, i1 true, i1 %74
  br i1 %75, label %78, label %76

76:                                               ; preds = %66
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @flow_action_mixed_hw_stats_check.__msg) #7
  %77 = icmp eq ptr %62, null
  br i1 %77, label %145, label %97

78:                                               ; preds = %66
  %79 = add nuw i32 %67, 1
  %80 = getelementptr %struct.flow_rule, ptr %58, i32 0, i32 1, i32 1, i32 %79
  %81 = icmp eq i32 %79, %63
  br i1 %81, label %82, label %66

82:                                               ; preds = %78, %57
  %83 = getelementptr inbounds %struct.flow_rule, ptr %58, i32 1, i32 0, i32 2
  %84 = load i32, ptr %83, align 8
  %85 = icmp eq i32 %84, 0
  %86 = load i1, ptr @__flow_action_hw_stats_check.__already_done, align 1
  %87 = xor i1 %86, true
  %88 = select i1 %85, i1 %87, i1 false
  br i1 %88, label %89, label %91, !prof !9

89:                                               ; preds = %82
  store i1 true, ptr @__flow_action_hw_stats_check.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 354, i32 noundef 9, ptr noundef null) #7
  %90 = load i32, ptr %83, align 8
  br label %91

91:                                               ; preds = %89, %82
  %92 = phi i32 [ %84, %82 ], [ %90, %89 ]
  %93 = and i32 %92, 3
  %94 = icmp eq i32 %93, 3
  br i1 %94, label %99, label %95

95:                                               ; preds = %91
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__flow_action_hw_stats_check.__msg) #7
  %96 = icmp eq ptr %62, null
  br i1 %96, label %145, label %97

97:                                               ; preds = %95, %76
  %98 = phi ptr [ @flow_action_mixed_hw_stats_check.__msg, %76 ], [ @__flow_action_hw_stats_check.__msg, %95 ]
  store ptr %98, ptr %62, align 4
  br label %145

99:                                               ; preds = %91
  %100 = load i32, ptr %60, align 8
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %117, label %102

102:                                              ; preds = %99
  %103 = getelementptr inbounds %struct.flow_rule, ptr %58, i32 1
  br label %104

104:                                              ; preds = %113, %102
  %105 = phi i32 [ %114, %113 ], [ 0, %102 ]
  %106 = phi ptr [ %115, %113 ], [ %103, %102 ]
  %107 = load i32, ptr %106, align 8
  %108 = icmp eq i32 %107, 1
  br i1 %108, label %109, label %113

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct.stmmac_flow_entry, ptr %59, i32 0, i32 1
  %111 = load i32, ptr %110, align 4
  %112 = or i32 %111, 1
  store i32 %112, ptr %110, align 4
  br label %117

113:                                              ; preds = %104
  %114 = add nuw i32 %105, 1
  %115 = getelementptr %struct.flow_rule, ptr %58, i32 0, i32 1, i32 1, i32 %114
  %116 = icmp eq i32 %114, %100
  br i1 %116, label %117, label %104

117:                                              ; preds = %113, %109, %99
  %118 = getelementptr inbounds %struct.stmmac_flow_entry, ptr %59, i32 0, i32 3
  %119 = getelementptr inbounds %struct.flow_cls_offload, ptr %1, i32 0, i32 3
  %120 = load ptr, ptr %119, align 8
  %121 = load ptr, ptr %120, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7
  store i64 0, ptr %5, align 8, !annotation !8
  %122 = load i32, ptr %121, align 4
  %123 = and i32 %122, 2
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %117
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  br label %131

126:                                              ; preds = %117
  call void @flow_rule_match_basic(ptr noundef %120, ptr noundef nonnull %5) #7
  %127 = load ptr, ptr %5, align 8
  %128 = getelementptr inbounds %struct.flow_dissector_key_basic, ptr %127, i32 0, i32 1
  %129 = load i8, ptr %128, align 2
  %130 = getelementptr inbounds %struct.stmmac_flow_entry, ptr %59, i32 0, i32 2
  store i8 %129, ptr %130, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  store i32 1, ptr %118, align 4
  br label %131

131:                                              ; preds = %126, %125
  %132 = call fastcc i32 @tc_add_ip4_flow(ptr noundef %0, ptr noundef %1, ptr noundef %59) #7
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %131
  store i32 1, ptr %118, align 4
  br label %135

135:                                              ; preds = %134, %131
  %136 = call fastcc i32 @tc_add_ports_flow(ptr noundef %0, ptr noundef %1, ptr noundef %59) #7
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %135
  store i32 1, ptr %118, align 4
  br label %142

139:                                              ; preds = %135
  %140 = load i32, ptr %118, align 4
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %145, label %142

142:                                              ; preds = %139, %138
  %143 = getelementptr inbounds %struct.flow_cls_offload, ptr %1, i32 0, i32 2
  %144 = load i32, ptr %143, align 4
  store i32 %144, ptr %59, align 4
  br label %519

145:                                              ; preds = %139, %97, %95, %76, %57, %55, %52, %36
  %146 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 96
  %147 = load i32, ptr %146, align 8
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %162, label %149

149:                                              ; preds = %145
  %150 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 97
  %151 = load ptr, ptr %150, align 4
  %152 = getelementptr inbounds %struct.flow_cls_offload, ptr %1, i32 0, i32 2
  %153 = load i32, ptr %152, align 4
  br label %154

154:                                              ; preds = %159, %149
  %155 = phi i32 [ 0, %149 ], [ %160, %159 ]
  %156 = getelementptr %struct.stmmac_rfs_entry, ptr %151, i32 %155
  %157 = load i32, ptr %156, align 4
  %158 = icmp eq i32 %157, %153
  br i1 %158, label %162, label %159

159:                                              ; preds = %154
  %160 = add nuw i32 %155, 1
  %161 = icmp eq i32 %160, %147
  br i1 %161, label %162, label %154

162:                                              ; preds = %159, %154, %145
  %163 = phi ptr [ null, %145 ], [ null, %159 ], [ %156, %154 ]
  %164 = getelementptr inbounds %struct.flow_cls_offload, ptr %1, i32 0, i32 3
  %165 = load ptr, ptr %164, align 8
  %166 = load ptr, ptr %165, align 8
  %167 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 14
  %168 = load ptr, ptr %167, align 4
  %169 = getelementptr inbounds %struct.flow_cls_offload, ptr %1, i32 0, i32 5
  %170 = load i32, ptr %169, align 8
  %171 = and i32 %170, 65535
  %172 = add nsw i32 %171, -65504
  %173 = getelementptr inbounds %struct.net_device, ptr %168, i32 0, i32 117
  %174 = load i16, ptr %173, align 2
  %175 = sext i16 %174 to i32
  %176 = icmp ult i32 %172, %175
  %177 = select i1 %176, i32 %172, i32 -22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  store i64 0, ptr %4, align 8, !annotation !8
  %178 = icmp eq ptr %163, null
  br i1 %178, label %179, label %199

179:                                              ; preds = %162
  br i1 %148, label %267, label %180

180:                                              ; preds = %179
  %181 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 97
  %182 = load ptr, ptr %181, align 4
  %183 = getelementptr inbounds %struct.flow_cls_offload, ptr %1, i32 0, i32 2
  %184 = load i32, ptr %183, align 4
  br label %185

185:                                              ; preds = %194, %180
  %186 = phi i32 [ 0, %180 ], [ %195, %194 ]
  %187 = getelementptr %struct.stmmac_rfs_entry, ptr %182, i32 %186
  %188 = load i32, ptr %187, align 4
  %189 = icmp eq i32 %188, %184
  br i1 %189, label %197, label %190

190:                                              ; preds = %185
  %191 = getelementptr %struct.stmmac_rfs_entry, ptr %182, i32 %186, i32 2
  %192 = load i32, ptr %191, align 4
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %197, label %194

194:                                              ; preds = %190
  %195 = add nuw i32 %186, 1
  %196 = icmp eq i32 %195, %147
  br i1 %196, label %267, label %185

197:                                              ; preds = %190, %185
  %198 = icmp eq ptr %187, null
  br i1 %198, label %267, label %199

199:                                              ; preds = %197, %162
  %200 = phi ptr [ %163, %162 ], [ %187, %197 ]
  %201 = load i32, ptr %166, align 4
  %202 = and i32 %201, 2
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %267, label %204

204:                                              ; preds = %199
  %205 = icmp slt i32 %177, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %204
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %168, ptr noundef nonnull @.str.6) #8
  br label %267

207:                                              ; preds = %204
  call void @flow_rule_match_basic(ptr noundef %165, ptr noundef nonnull %4) #7
  %208 = getelementptr inbounds %struct.flow_match_basic, ptr %4, i32 0, i32 1
  %209 = load ptr, ptr %208, align 4
  %210 = load i16, ptr %209, align 2
  %211 = icmp eq i16 %210, 0
  br i1 %211, label %267, label %212

212:                                              ; preds = %207
  %213 = load ptr, ptr %4, align 8
  %214 = load i16, ptr %213, align 2
  %215 = call i16 @llvm.bswap.i16(i16 %214) #7
  %216 = icmp eq i16 %210, -1
  br i1 %216, label %219, label %217

217:                                              ; preds = %212
  %218 = load ptr, ptr %167, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %218, ptr noundef nonnull @.str.7) #8
  br label %267

219:                                              ; preds = %212
  switch i16 %215, label %258 [
    i16 -30516, label %220
    i16 -30473, label %239
  ]

220:                                              ; preds = %219
  %221 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 95, i32 1
  %222 = load i32, ptr %221, align 4
  %223 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 94, i32 1
  %224 = load i32, ptr %223, align 4
  %225 = icmp ult i32 %222, %224
  br i1 %225, label %226, label %267

226:                                              ; preds = %220
  %227 = getelementptr inbounds %struct.stmmac_rfs_entry, ptr %200, i32 0, i32 3
  store i32 1, ptr %227, align 4
  %228 = load i32, ptr %221, align 4
  %229 = add i32 %228, 1
  store i32 %229, ptr %221, align 4
  %230 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 16
  %231 = load ptr, ptr %230, align 4
  %232 = load ptr, ptr %231, align 4
  %233 = icmp eq ptr %232, null
  br i1 %233, label %261, label %234

234:                                              ; preds = %226
  %235 = getelementptr inbounds %struct.stmmac_ops, ptr %232, i32 0, i32 6
  %236 = load ptr, ptr %235, align 4
  %237 = icmp eq ptr %236, null
  br i1 %237, label %261, label %238

238:                                              ; preds = %234
  call void %236(ptr noundef %231, i8 noundef zeroext 3, i32 noundef %177) #7
  br label %261

239:                                              ; preds = %219
  %240 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 95, i32 2
  %241 = load i32, ptr %240, align 4
  %242 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 94, i32 2
  %243 = load i32, ptr %242, align 8
  %244 = icmp ult i32 %241, %243
  br i1 %244, label %245, label %267

245:                                              ; preds = %239
  %246 = getelementptr inbounds %struct.stmmac_rfs_entry, ptr %200, i32 0, i32 3
  store i32 2, ptr %246, align 4
  %247 = load i32, ptr %240, align 4
  %248 = add i32 %247, 1
  store i32 %248, ptr %240, align 4
  %249 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 16
  %250 = load ptr, ptr %249, align 4
  %251 = load ptr, ptr %250, align 4
  %252 = icmp eq ptr %251, null
  br i1 %252, label %261, label %253

253:                                              ; preds = %245
  %254 = getelementptr inbounds %struct.stmmac_ops, ptr %251, i32 0, i32 6
  %255 = load ptr, ptr %254, align 4
  %256 = icmp eq ptr %255, null
  br i1 %256, label %261, label %257

257:                                              ; preds = %253
  call void %255(ptr noundef %250, i8 noundef zeroext 2, i32 noundef %177) #7
  br label %261

258:                                              ; preds = %219
  %259 = zext i16 %215 to i32
  %260 = load ptr, ptr %167, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %260, ptr noundef nonnull @.str.8, i32 noundef %259) #8
  br label %267

261:                                              ; preds = %257, %253, %245, %238, %234, %226
  %262 = getelementptr inbounds %struct.stmmac_rfs_entry, ptr %200, i32 0, i32 2
  store i32 1, ptr %262, align 4
  %263 = getelementptr inbounds %struct.flow_cls_offload, ptr %1, i32 0, i32 2
  %264 = load i32, ptr %263, align 4
  store i32 %264, ptr %200, align 4
  %265 = getelementptr inbounds %struct.stmmac_rfs_entry, ptr %200, i32 0, i32 4
  store i32 %177, ptr %265, align 4
  %266 = getelementptr inbounds %struct.stmmac_rfs_entry, ptr %200, i32 0, i32 1
  store i16 %215, ptr %266, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  br label %519

267:                                              ; preds = %258, %239, %220, %217, %207, %206, %199, %197, %194, %179
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  %268 = load i32, ptr %146, align 8
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %283, label %270

270:                                              ; preds = %267
  %271 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 97
  %272 = load ptr, ptr %271, align 4
  %273 = getelementptr inbounds %struct.flow_cls_offload, ptr %1, i32 0, i32 2
  %274 = load i32, ptr %273, align 4
  br label %275

275:                                              ; preds = %280, %270
  %276 = phi i32 [ 0, %270 ], [ %281, %280 ]
  %277 = getelementptr %struct.stmmac_rfs_entry, ptr %272, i32 %276
  %278 = load i32, ptr %277, align 4
  %279 = icmp eq i32 %278, %274
  br i1 %279, label %283, label %280

280:                                              ; preds = %275
  %281 = add nuw i32 %276, 1
  %282 = icmp eq i32 %281, %268
  br i1 %282, label %283, label %275

283:                                              ; preds = %280, %275, %267
  %284 = phi ptr [ null, %267 ], [ null, %280 ], [ %277, %275 ]
  %285 = load ptr, ptr %164, align 8
  %286 = load ptr, ptr %285, align 8
  %287 = load ptr, ptr %167, align 4
  %288 = load i32, ptr %169, align 8
  %289 = and i32 %288, 65535
  %290 = add nsw i32 %289, -65504
  %291 = getelementptr inbounds %struct.net_device, ptr %287, i32 0, i32 117
  %292 = load i16, ptr %291, align 2
  %293 = sext i16 %292 to i32
  %294 = icmp ult i32 %290, %293
  %295 = select i1 %294, i32 %290, i32 -22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  store i64 0, ptr %3, align 8, !annotation !8
  %296 = icmp eq ptr %284, null
  br i1 %296, label %297, label %317

297:                                              ; preds = %283
  br i1 %269, label %363, label %298

298:                                              ; preds = %297
  %299 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 97
  %300 = load ptr, ptr %299, align 4
  %301 = getelementptr inbounds %struct.flow_cls_offload, ptr %1, i32 0, i32 2
  %302 = load i32, ptr %301, align 4
  br label %303

303:                                              ; preds = %312, %298
  %304 = phi i32 [ 0, %298 ], [ %313, %312 ]
  %305 = getelementptr %struct.stmmac_rfs_entry, ptr %300, i32 %304
  %306 = load i32, ptr %305, align 4
  %307 = icmp eq i32 %306, %302
  br i1 %307, label %315, label %308

308:                                              ; preds = %303
  %309 = getelementptr %struct.stmmac_rfs_entry, ptr %300, i32 %304, i32 2
  %310 = load i32, ptr %309, align 4
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %315, label %312

312:                                              ; preds = %308
  %313 = add nuw i32 %304, 1
  %314 = icmp eq i32 %313, %268
  br i1 %314, label %363, label %303

315:                                              ; preds = %308, %303
  %316 = icmp eq ptr %305, null
  br i1 %316, label %363, label %317

317:                                              ; preds = %315, %283
  %318 = phi ptr [ %284, %283 ], [ %305, %315 ]
  %319 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 95
  %320 = load i32, ptr %319, align 4
  %321 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 94
  %322 = load i32, ptr %321, align 64
  %323 = icmp ult i32 %320, %322
  br i1 %323, label %324, label %363

324:                                              ; preds = %317
  %325 = load i32, ptr %286, align 4
  %326 = and i32 %325, 1024
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %363, label %328

328:                                              ; preds = %324
  %329 = icmp slt i32 %295, 0
  br i1 %329, label %330, label %331

330:                                              ; preds = %328
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %287, ptr noundef nonnull @.str.6) #8
  br label %363

331:                                              ; preds = %328
  call void @flow_rule_match_vlan(ptr noundef %285, ptr noundef nonnull %3) #7
  %332 = getelementptr inbounds %struct.flow_match_vlan, ptr %3, i32 0, i32 1
  %333 = load ptr, ptr %332, align 4
  %334 = load i16, ptr %333, align 2
  %335 = icmp ult i16 %334, 8192
  br i1 %335, label %363, label %336

336:                                              ; preds = %331
  %337 = icmp ugt i16 %334, -8193
  br i1 %337, label %340, label %338

338:                                              ; preds = %336
  %339 = load ptr, ptr %167, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %339, ptr noundef nonnull @.str.9) #8
  br label %363

340:                                              ; preds = %336
  %341 = load ptr, ptr %3, align 8
  %342 = load i16, ptr %341, align 2
  %343 = lshr i16 %342, 13
  %344 = zext i16 %343 to i32
  %345 = shl nuw nsw i32 1, %344
  %346 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 16
  %347 = load ptr, ptr %346, align 4
  %348 = load ptr, ptr %347, align 4
  %349 = icmp eq ptr %348, null
  br i1 %349, label %355, label %350

350:                                              ; preds = %340
  %351 = getelementptr inbounds %struct.stmmac_ops, ptr %348, i32 0, i32 4
  %352 = load ptr, ptr %351, align 4
  %353 = icmp eq ptr %352, null
  br i1 %353, label %355, label %354

354:                                              ; preds = %350
  call void %352(ptr noundef %347, i32 noundef %345, i32 noundef %295) #7
  br label %355

355:                                              ; preds = %354, %350, %340
  %356 = getelementptr inbounds %struct.stmmac_rfs_entry, ptr %318, i32 0, i32 2
  store i32 1, ptr %356, align 4
  %357 = getelementptr inbounds %struct.flow_cls_offload, ptr %1, i32 0, i32 2
  %358 = load i32, ptr %357, align 4
  store i32 %358, ptr %318, align 4
  %359 = getelementptr inbounds %struct.stmmac_rfs_entry, ptr %318, i32 0, i32 4
  store i32 %295, ptr %359, align 4
  %360 = getelementptr inbounds %struct.stmmac_rfs_entry, ptr %318, i32 0, i32 3
  store i32 0, ptr %360, align 4
  %361 = load i32, ptr %319, align 4
  %362 = add i32 %361, 1
  store i32 %362, ptr %319, align 4
  br label %363

363:                                              ; preds = %355, %338, %331, %330, %324, %317, %315, %312, %297
  %364 = phi i32 [ -22, %330 ], [ -2, %315 ], [ -2, %317 ], [ -22, %324 ], [ -22, %338 ], [ 0, %355 ], [ 0, %331 ], [ -2, %297 ], [ -2, %312 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  br label %519

365:                                              ; preds = %9
  %366 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 92
  %367 = load i32, ptr %366, align 8
  %368 = icmp eq i32 %367, 0
  br i1 %368, label %413, label %369

369:                                              ; preds = %365
  %370 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 93
  %371 = load ptr, ptr %370, align 4
  %372 = getelementptr inbounds %struct.flow_cls_offload, ptr %1, i32 0, i32 2
  %373 = load i32, ptr %372, align 4
  br label %374

374:                                              ; preds = %379, %369
  %375 = phi i32 [ 0, %369 ], [ %380, %379 ]
  %376 = getelementptr %struct.stmmac_flow_entry, ptr %371, i32 %375
  %377 = load i32, ptr %376, align 4
  %378 = icmp eq i32 %377, %373
  br i1 %378, label %382, label %379

379:                                              ; preds = %374
  %380 = add nuw i32 %375, 1
  %381 = icmp eq i32 %380, %367
  br i1 %381, label %413, label %374

382:                                              ; preds = %374
  %383 = icmp eq ptr %376, null
  br i1 %383, label %413, label %384

384:                                              ; preds = %382
  %385 = getelementptr %struct.stmmac_flow_entry, ptr %371, i32 %375, i32 3
  %386 = load i32, ptr %385, align 4
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %413, label %388

388:                                              ; preds = %384
  %389 = getelementptr %struct.stmmac_flow_entry, ptr %371, i32 %375, i32 5
  %390 = load i32, ptr %389, align 4
  %391 = icmp eq i32 %390, 0
  %392 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 16
  %393 = load ptr, ptr %392, align 4
  %394 = load ptr, ptr %393, align 4
  %395 = icmp eq ptr %394, null
  br i1 %391, label %401, label %396

396:                                              ; preds = %388
  br i1 %395, label %406, label %397

397:                                              ; preds = %396
  %398 = getelementptr inbounds %struct.stmmac_ops, ptr %394, i32 0, i32 44
  %399 = load ptr, ptr %398, align 4
  %400 = icmp eq ptr %399, null
  br i1 %400, label %406, label %407

401:                                              ; preds = %388
  br i1 %395, label %406, label %402

402:                                              ; preds = %401
  %403 = getelementptr inbounds %struct.stmmac_ops, ptr %394, i32 0, i32 43
  %404 = load ptr, ptr %403, align 4
  %405 = icmp eq ptr %404, null
  br i1 %405, label %406, label %407

406:                                              ; preds = %402, %401, %397, %396
  store i32 0, ptr %385, align 4
  store i32 0, ptr %376, align 4
  store i32 0, ptr %389, align 4
  br label %413

407:                                              ; preds = %402, %397
  %408 = phi ptr [ %399, %397 ], [ %404, %402 ]
  %409 = getelementptr %struct.stmmac_flow_entry, ptr %371, i32 %375, i32 4
  %410 = load i32, ptr %409, align 4
  %411 = tail call i32 %408(ptr noundef %393, i32 noundef %410, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 0) #7
  store i32 0, ptr %385, align 4
  store i32 0, ptr %376, align 4
  store i32 0, ptr %389, align 4
  %412 = icmp eq i32 %411, 0
  br i1 %412, label %519, label %413

413:                                              ; preds = %407, %406, %384, %382, %379, %365
  %414 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 96
  %415 = load i32, ptr %414, align 8
  %416 = icmp eq i32 %415, 0
  br i1 %416, label %519, label %417

417:                                              ; preds = %413
  %418 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 97
  %419 = load ptr, ptr %418, align 4
  %420 = getelementptr inbounds %struct.flow_cls_offload, ptr %1, i32 0, i32 2
  %421 = load i32, ptr %420, align 4
  br label %422

422:                                              ; preds = %427, %417
  %423 = phi i32 [ 0, %417 ], [ %428, %427 ]
  %424 = getelementptr %struct.stmmac_rfs_entry, ptr %419, i32 %423
  %425 = load i32, ptr %424, align 4
  %426 = icmp eq i32 %425, %421
  br i1 %426, label %430, label %427

427:                                              ; preds = %422
  %428 = add nuw i32 %423, 1
  %429 = icmp eq i32 %428, %415
  br i1 %429, label %478, label %422

430:                                              ; preds = %422
  %431 = icmp eq ptr %424, null
  br i1 %431, label %478, label %432

432:                                              ; preds = %430
  %433 = getelementptr %struct.stmmac_rfs_entry, ptr %419, i32 %423, i32 2
  %434 = load i32, ptr %433, align 4
  %435 = icmp eq i32 %434, 0
  br i1 %435, label %478, label %436

436:                                              ; preds = %432
  %437 = getelementptr %struct.stmmac_rfs_entry, ptr %419, i32 %423, i32 3
  %438 = load i32, ptr %437, align 4
  %439 = add i32 %438, -3
  %440 = icmp ult i32 %439, -2
  br i1 %440, label %478, label %441

441:                                              ; preds = %436
  %442 = getelementptr %struct.stmmac_rfs_entry, ptr %419, i32 %423, i32 1
  %443 = load i16, ptr %442, align 4
  switch i16 %443, label %468 [
    i16 -30516, label %444
    i16 -30473, label %456
  ]

444:                                              ; preds = %441
  %445 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 16
  %446 = load ptr, ptr %445, align 4
  %447 = load ptr, ptr %446, align 4
  %448 = icmp eq ptr %447, null
  br i1 %448, label %454, label %449

449:                                              ; preds = %444
  %450 = getelementptr inbounds %struct.stmmac_ops, ptr %447, i32 0, i32 6
  %451 = load ptr, ptr %450, align 4
  %452 = icmp eq ptr %451, null
  br i1 %452, label %454, label %453

453:                                              ; preds = %449
  tail call void %451(ptr noundef %446, i8 noundef zeroext 3, i32 noundef 0) #7
  br label %454

454:                                              ; preds = %453, %449, %444
  %455 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 95, i32 1
  br label %473

456:                                              ; preds = %441
  %457 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 16
  %458 = load ptr, ptr %457, align 4
  %459 = load ptr, ptr %458, align 4
  %460 = icmp eq ptr %459, null
  br i1 %460, label %466, label %461

461:                                              ; preds = %456
  %462 = getelementptr inbounds %struct.stmmac_ops, ptr %459, i32 0, i32 6
  %463 = load ptr, ptr %462, align 4
  %464 = icmp eq ptr %463, null
  br i1 %464, label %466, label %465

465:                                              ; preds = %461
  tail call void %463(ptr noundef %458, i8 noundef zeroext 2, i32 noundef 0) #7
  br label %466

466:                                              ; preds = %465, %461, %456
  %467 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 95, i32 2
  br label %473

468:                                              ; preds = %441
  %469 = zext i16 %443 to i32
  %470 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 14
  %471 = load ptr, ptr %470, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %471, ptr noundef nonnull @.str.8, i32 noundef %469) #8
  %472 = load i32, ptr %414, align 8
  br label %478

473:                                              ; preds = %466, %454
  %474 = phi ptr [ %467, %466 ], [ %455, %454 ]
  %475 = load i32, ptr %474, align 4
  %476 = add i32 %475, -1
  store i32 %476, ptr %474, align 4
  store i32 0, ptr %433, align 4
  store i32 0, ptr %424, align 4
  %477 = getelementptr %struct.stmmac_rfs_entry, ptr %419, i32 %423, i32 4
  store i32 0, ptr %477, align 4
  store i16 0, ptr %442, align 4
  store i32 0, ptr %437, align 4
  br label %519

478:                                              ; preds = %468, %436, %432, %430, %427
  %479 = phi i32 [ %472, %468 ], [ %415, %436 ], [ %415, %432 ], [ %415, %430 ], [ %415, %427 ]
  %480 = icmp eq i32 %479, 0
  br i1 %480, label %519, label %481

481:                                              ; preds = %478
  %482 = load ptr, ptr %418, align 4
  %483 = load i32, ptr %420, align 4
  br label %484

484:                                              ; preds = %489, %481
  %485 = phi i32 [ 0, %481 ], [ %490, %489 ]
  %486 = getelementptr %struct.stmmac_rfs_entry, ptr %482, i32 %485
  %487 = load i32, ptr %486, align 4
  %488 = icmp eq i32 %487, %483
  br i1 %488, label %492, label %489

489:                                              ; preds = %484
  %490 = add nuw i32 %485, 1
  %491 = icmp eq i32 %490, %479
  br i1 %491, label %519, label %484

492:                                              ; preds = %484
  %493 = icmp eq ptr %486, null
  br i1 %493, label %519, label %494

494:                                              ; preds = %492
  %495 = getelementptr %struct.stmmac_rfs_entry, ptr %482, i32 %485, i32 2
  %496 = load i32, ptr %495, align 4
  %497 = icmp eq i32 %496, 0
  br i1 %497, label %519, label %498

498:                                              ; preds = %494
  %499 = getelementptr %struct.stmmac_rfs_entry, ptr %482, i32 %485, i32 3
  %500 = load i32, ptr %499, align 4
  %501 = icmp eq i32 %500, 0
  br i1 %501, label %502, label %519

502:                                              ; preds = %498
  %503 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 16
  %504 = load ptr, ptr %503, align 4
  %505 = load ptr, ptr %504, align 4
  %506 = icmp eq ptr %505, null
  br i1 %506, label %514, label %507

507:                                              ; preds = %502
  %508 = getelementptr inbounds %struct.stmmac_ops, ptr %505, i32 0, i32 4
  %509 = load ptr, ptr %508, align 4
  %510 = icmp eq ptr %509, null
  br i1 %510, label %514, label %511

511:                                              ; preds = %507
  %512 = getelementptr %struct.stmmac_rfs_entry, ptr %482, i32 %485, i32 4
  %513 = load i32, ptr %512, align 4
  tail call void %509(ptr noundef %504, i32 noundef 0, i32 noundef %513) #7
  br label %514

514:                                              ; preds = %511, %507, %502
  store i32 0, ptr %495, align 4
  store i32 0, ptr %486, align 4
  %515 = getelementptr %struct.stmmac_rfs_entry, ptr %482, i32 %485, i32 4
  store i32 0, ptr %515, align 4
  store i32 0, ptr %499, align 4
  %516 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 95
  %517 = load i32, ptr %516, align 4
  %518 = add i32 %517, -1
  store i32 %518, ptr %516, align 4
  br label %519

519:                                              ; preds = %514, %498, %494, %492, %489, %478, %473, %413, %407, %363, %261, %142, %9, %2
  %520 = phi i32 [ -16, %2 ], [ -95, %9 ], [ %364, %363 ], [ 0, %142 ], [ 0, %261 ], [ 0, %407 ], [ 0, %473 ], [ 0, %514 ], [ -2, %498 ], [ -2, %494 ], [ -2, %492 ], [ -2, %478 ], [ -2, %413 ], [ -2, %489 ]
  ret i32 %520
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tc_setup_taprio(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.timespec64, align 8
  %4 = alloca %struct.timespec64, align 8
  %5 = alloca %struct.timespec64, align 8
  %6 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 37, i32 41
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 37, i32 42
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 36
  %11 = load ptr, ptr %10, align 64
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !8
  %12 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 37, i32 43
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %284, label %15

15:                                               ; preds = %2
  %16 = add i32 %7, -1
  %17 = icmp ult i32 %16, 3
  br i1 %17, label %18, label %284

18:                                               ; preds = %15
  %19 = shl i32 %16, 2
  %20 = add i32 %19, 16
  %21 = add i32 %9, -1
  %22 = icmp ult i32 %21, 5
  br i1 %22, label %23, label %284

23:                                               ; preds = %18
  %24 = load i8, ptr %1, align 8
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %227, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds [5 x i32], ptr @switch.table.tc_setup_taprio, i32 0, i32 %21
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.tc_taprio_qopt_offload, ptr %1, i32 0, i32 4
  %30 = load i32, ptr %29, align 8
  %31 = icmp ult i32 %30, %28
  br i1 %31, label %32, label %284

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.tc_taprio_qopt_offload, ptr %1, i32 0, i32 2
  %34 = load i64, ptr %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %284, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 9
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %49

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 15
  %42 = load ptr, ptr %41, align 8
  %43 = tail call noalias ptr @devm_kmalloc(ptr noundef %42, i32 noundef 8256, i32 noundef 3520) #7
  store ptr %43, ptr %37, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %284, label %45

45:                                               ; preds = %40
  %46 = load ptr, ptr %10, align 64
  %47 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %46, i32 0, i32 9
  %48 = load ptr, ptr %47, align 4
  tail call void @__mutex_init(ptr noundef %48, ptr noundef nonnull @.str.10, ptr noundef nonnull @tc_setup_taprio.__key) #7
  br label %50

49:                                               ; preds = %36
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(8256) %38, i8 0, i32 8256, i1 false)
  br label %50

50:                                               ; preds = %49, %45
  %51 = load i32, ptr %29, align 8
  %52 = load ptr, ptr %10, align 64
  %53 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %52, i32 0, i32 9
  %54 = load ptr, ptr %53, align 4
  tail call void @mutex_lock(ptr noundef %54) #7
  %55 = load ptr, ptr %10, align 64
  %56 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %55, i32 0, i32 9
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.stmmac_est, ptr %57, i32 0, i32 9
  store i32 %51, ptr %58, align 4
  %59 = load i8, ptr %1, align 8
  %60 = zext i8 %59 to i32
  %61 = load ptr, ptr %10, align 64
  %62 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %61, i32 0, i32 9
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.stmmac_est, ptr %63, i32 0, i32 1
  store i32 %60, ptr %64, align 4
  %65 = load ptr, ptr %10, align 64
  %66 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %65, i32 0, i32 9
  %67 = load ptr, ptr %66, align 4
  tail call void @mutex_unlock(ptr noundef %67) #7
  %68 = icmp eq i32 %51, 0
  br i1 %68, label %102, label %69

69:                                               ; preds = %50
  %70 = xor i32 %20, 31
  %71 = lshr i32 -1, %70
  %72 = lshr i32 -1, %20
  br label %73

73:                                               ; preds = %91, %69
  %74 = phi i32 [ 0, %69 ], [ %100, %91 ]
  %75 = phi i1 [ false, %69 ], [ %92, %91 ]
  %76 = getelementptr %struct.tc_taprio_qopt_offload, ptr %1, i32 0, i32 5, i32 %74, i32 2
  %77 = load i32, ptr %76, align 4
  %78 = getelementptr %struct.tc_taprio_qopt_offload, ptr %1, i32 0, i32 5, i32 %74, i32 1
  %79 = load i32, ptr %78, align 4
  %80 = icmp ugt i32 %77, %71
  %81 = icmp ugt i32 %79, %72
  %82 = select i1 %80, i1 true, i1 %81
  br i1 %82, label %284, label %83

83:                                               ; preds = %73
  %84 = getelementptr %struct.tc_taprio_qopt_offload, ptr %1, i32 0, i32 5, i32 %74
  %85 = load i8, ptr %84, align 4
  switch i8 %85, label %284 [
    i8 0, label %86
    i8 1, label %87
    i8 2, label %89
  ]

86:                                               ; preds = %83
  br i1 %75, label %284, label %91

87:                                               ; preds = %83
  %88 = or i32 %79, 1
  br label %91

89:                                               ; preds = %83
  %90 = and i32 %79, -2
  br label %91

91:                                               ; preds = %89, %87, %86
  %92 = phi i1 [ true, %89 ], [ true, %87 ], [ false, %86 ]
  %93 = phi i32 [ %90, %89 ], [ %88, %87 ], [ %79, %86 ]
  %94 = shl i32 %93, %20
  %95 = or i32 %94, %77
  %96 = load ptr, ptr %10, align 64
  %97 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %96, i32 0, i32 9
  %98 = load ptr, ptr %97, align 4
  %99 = getelementptr %struct.stmmac_est, ptr %98, i32 0, i32 8, i32 %74
  store i32 %95, ptr %99, align 4
  %100 = add nuw i32 %74, 1
  %101 = icmp eq i32 %100, %51
  br i1 %101, label %102, label %73

102:                                              ; preds = %91, %50
  %103 = phi i1 [ false, %50 ], [ %92, %91 ]
  %104 = load ptr, ptr %10, align 64
  %105 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %104, i32 0, i32 9
  %106 = load ptr, ptr %105, align 4
  tail call void @mutex_lock(ptr noundef %106) #7
  %107 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 58
  %108 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 58, i32 13
  %109 = load ptr, ptr %108, align 8
  %110 = call i32 %109(ptr noundef %107, ptr noundef nonnull %3) #7
  %111 = load i64, ptr %3, align 8
  %112 = icmp sgt i64 %111, 9223372035
  br i1 %112, label %113, label %117, !prof !9

113:                                              ; preds = %102
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7
  %114 = getelementptr inbounds %struct.tc_taprio_qopt_offload, ptr %1, i32 0, i32 1
  %115 = load i64, ptr %114, align 8
  %116 = load i64, ptr %33, align 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i32 16, i1 false) #7, !alias.scope !11, !annotation !8
  br label %127

117:                                              ; preds = %102
  %118 = getelementptr inbounds [2 x i64], ptr %3, i32 0, i32 1
  %119 = load i64, ptr %118, align 8
  %120 = mul i64 %111, 1000000000
  %121 = and i64 %119, 4294967295
  %122 = add i64 %121, %120
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7
  %123 = getelementptr inbounds %struct.tc_taprio_qopt_offload, ptr %1, i32 0, i32 1
  %124 = load i64, ptr %123, align 8
  %125 = load i64, ptr %33, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !14)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i32 16, i1 false) #7, !alias.scope !14, !annotation !8
  %126 = icmp slt i64 %122, %124
  br i1 %126, label %137, label %127

127:                                              ; preds = %117, %113
  %128 = phi i64 [ %116, %113 ], [ %125, %117 ]
  %129 = phi i64 [ %115, %113 ], [ %124, %117 ]
  %130 = phi ptr [ %114, %113 ], [ %123, %117 ]
  %131 = phi i64 [ 9223372036854775807, %113 ], [ %122, %117 ]
  %132 = sub i64 %131, %129
  %133 = call i64 @div64_s64(i64 noundef %132, i64 noundef %128) #7, !noalias !14
  %134 = add i64 %133, 1
  %135 = mul i64 %134, %128
  %136 = add i64 %135, %129
  br label %137

137:                                              ; preds = %127, %117
  %138 = phi i64 [ %136, %127 ], [ %124, %117 ]
  %139 = phi ptr [ %130, %127 ], [ %123, %117 ]
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %4, i64 noundef %138) #7
  %140 = load i64, ptr %4, align 8
  %141 = getelementptr inbounds i8, ptr %4, i32 8
  %142 = load i32, ptr %141, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7
  %143 = load ptr, ptr %10, align 64
  %144 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %143, i32 0, i32 9
  %145 = load ptr, ptr %144, align 4
  %146 = getelementptr inbounds %struct.stmmac_est, ptr %145, i32 0, i32 4
  store i32 %142, ptr %146, align 4
  %147 = trunc i64 %140 to i32
  %148 = load ptr, ptr %10, align 64
  %149 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %148, i32 0, i32 9
  %150 = load ptr, ptr %149, align 4
  %151 = getelementptr %struct.stmmac_est, ptr %150, i32 0, i32 4, i32 1
  store i32 %147, ptr %151, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7
  %152 = load i64, ptr %139, align 8
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %5, i64 noundef %152) #7
  %153 = load i64, ptr %5, align 8
  %154 = getelementptr inbounds i8, ptr %5, i32 8
  %155 = load i32, ptr %154, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7
  %156 = load ptr, ptr %10, align 64
  %157 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %156, i32 0, i32 9
  %158 = load ptr, ptr %157, align 4
  %159 = getelementptr inbounds %struct.stmmac_est, ptr %158, i32 0, i32 2
  store i32 %155, ptr %159, align 4
  %160 = trunc i64 %153 to i32
  %161 = load ptr, ptr %10, align 64
  %162 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %161, i32 0, i32 9
  %163 = load ptr, ptr %162, align 4
  %164 = getelementptr %struct.stmmac_est, ptr %163, i32 0, i32 2, i32 1
  store i32 %160, ptr %164, align 4
  %165 = load i64, ptr %33, align 8
  %166 = trunc i64 %165 to i32
  %167 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %165, i32 0) #9, !srcloc !16
  %168 = extractvalue { i64, i32 } %167, 0
  %169 = extractvalue { i64, i32 } %167, 1
  %170 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %165, i64 %168, i32 %169) #9, !srcloc !17
  %171 = extractvalue { i64, i32 } %170, 0
  %172 = lshr i64 %171, 29
  %173 = trunc i64 %172 to i32
  %174 = mul i32 %173, -1000000000
  %175 = add i32 %174, %166
  %176 = load ptr, ptr %10, align 64
  %177 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %176, i32 0, i32 9
  %178 = load ptr, ptr %177, align 4
  %179 = getelementptr inbounds %struct.stmmac_est, ptr %178, i32 0, i32 5
  store i32 %175, ptr %179, align 4
  %180 = load ptr, ptr %10, align 64
  %181 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %180, i32 0, i32 9
  %182 = load ptr, ptr %181, align 4
  %183 = getelementptr %struct.stmmac_est, ptr %182, i32 0, i32 5, i32 1
  store i32 %173, ptr %183, align 4
  br i1 %103, label %184, label %192

184:                                              ; preds = %137
  %185 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 37, i32 44
  %186 = load i32, ptr %185, align 4
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %192

188:                                              ; preds = %184
  %189 = load ptr, ptr %10, align 64
  %190 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %189, i32 0, i32 9
  %191 = load ptr, ptr %190, align 4
  call void @mutex_unlock(ptr noundef %191) #7
  br label %284

192:                                              ; preds = %184, %137
  %193 = load ptr, ptr %10, align 64
  %194 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %193, i32 0, i32 10
  %195 = load ptr, ptr %194, align 4
  %196 = zext i1 %103 to i8
  store i8 %196, ptr %195, align 4
  %197 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 16
  %198 = load ptr, ptr %197, align 4
  %199 = load ptr, ptr %198, align 4
  %200 = icmp eq ptr %199, null
  br i1 %200, label %214, label %201

201:                                              ; preds = %192
  %202 = getelementptr inbounds %struct.stmmac_ops, ptr %199, i32 0, i32 46
  %203 = load ptr, ptr %202, align 4
  %204 = icmp eq ptr %203, null
  br i1 %204, label %214, label %205

205:                                              ; preds = %201
  %206 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 13
  %207 = load ptr, ptr %206, align 32
  %208 = load ptr, ptr %10, align 64
  %209 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %208, i32 0, i32 9
  %210 = load ptr, ptr %209, align 4
  %211 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %208, i32 0, i32 50
  %212 = load i32, ptr %211, align 4
  %213 = call i32 %203(ptr noundef %207, ptr noundef %210, i32 noundef %212) #7
  br label %214

214:                                              ; preds = %205, %201, %192
  %215 = phi i32 [ %213, %205 ], [ -22, %201 ], [ -22, %192 ]
  %216 = load ptr, ptr %10, align 64
  %217 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %216, i32 0, i32 9
  %218 = load ptr, ptr %217, align 4
  call void @mutex_unlock(ptr noundef %218) #7
  %219 = icmp eq i32 %215, 0
  %220 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 14
  %221 = load ptr, ptr %220, align 4
  br i1 %219, label %224, label %222

222:                                              ; preds = %214
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %221, ptr noundef nonnull @.str.11) #8
  %223 = load ptr, ptr %10, align 64
  br label %227

224:                                              ; preds = %214
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %221, ptr noundef nonnull @.str.12) #8
  br i1 %103, label %225, label %284

225:                                              ; preds = %224
  call void @stmmac_fpe_handshake(ptr noundef %0, i1 noundef zeroext true) #7
  %226 = load ptr, ptr %220, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %226, ptr noundef nonnull @.str.13) #8
  br label %284

227:                                              ; preds = %222, %23
  %228 = phi ptr [ %223, %222 ], [ %11, %23 ]
  %229 = phi i32 [ %215, %222 ], [ 0, %23 ]
  %230 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %228, i32 0, i32 9
  %231 = load ptr, ptr %230, align 4
  %232 = icmp eq ptr %231, null
  br i1 %232, label %260, label %233

233:                                              ; preds = %227
  call void @mutex_lock(ptr noundef nonnull %231) #7
  %234 = load ptr, ptr %10, align 64
  %235 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %234, i32 0, i32 9
  %236 = load ptr, ptr %235, align 4
  %237 = getelementptr inbounds %struct.stmmac_est, ptr %236, i32 0, i32 1
  store i32 0, ptr %237, align 4
  %238 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 16
  %239 = load ptr, ptr %238, align 4
  %240 = load ptr, ptr %239, align 4
  %241 = icmp eq ptr %240, null
  br i1 %241, label %255, label %242

242:                                              ; preds = %233
  %243 = getelementptr inbounds %struct.stmmac_ops, ptr %240, i32 0, i32 46
  %244 = load ptr, ptr %243, align 4
  %245 = icmp eq ptr %244, null
  br i1 %245, label %255, label %246

246:                                              ; preds = %242
  %247 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 13
  %248 = load ptr, ptr %247, align 32
  %249 = load ptr, ptr %10, align 64
  %250 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %249, i32 0, i32 9
  %251 = load ptr, ptr %250, align 4
  %252 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %249, i32 0, i32 50
  %253 = load i32, ptr %252, align 4
  %254 = call i32 %244(ptr noundef %248, ptr noundef %251, i32 noundef %253) #7
  br label %255

255:                                              ; preds = %246, %242, %233
  %256 = load ptr, ptr %10, align 64
  %257 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %256, i32 0, i32 9
  %258 = load ptr, ptr %257, align 4
  call void @mutex_unlock(ptr noundef %258) #7
  %259 = load ptr, ptr %10, align 64
  br label %260

260:                                              ; preds = %255, %227
  %261 = phi ptr [ %259, %255 ], [ %228, %227 ]
  %262 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %261, i32 0, i32 10
  %263 = load ptr, ptr %262, align 4
  store i8 0, ptr %263, align 4
  %264 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 16
  %265 = load ptr, ptr %264, align 4
  %266 = load ptr, ptr %265, align 4
  %267 = icmp eq ptr %266, null
  br i1 %267, label %280, label %268

268:                                              ; preds = %260
  %269 = getelementptr inbounds %struct.stmmac_ops, ptr %266, i32 0, i32 48
  %270 = load ptr, ptr %269, align 4
  %271 = icmp eq ptr %270, null
  br i1 %271, label %280, label %272

272:                                              ; preds = %268
  %273 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 13
  %274 = load ptr, ptr %273, align 32
  %275 = load ptr, ptr %10, align 64
  %276 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %275, i32 0, i32 30
  %277 = load i32, ptr %276, align 4
  %278 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %275, i32 0, i32 29
  %279 = load i32, ptr %278, align 4
  call void %270(ptr noundef %274, i32 noundef %277, i32 noundef %279, i1 noundef zeroext false) #7
  br label %280

280:                                              ; preds = %272, %268, %260
  %281 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 14
  %282 = load ptr, ptr %281, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %282, ptr noundef nonnull @.str.14) #8
  call void @stmmac_fpe_handshake(ptr noundef %0, i1 noundef zeroext false) #7
  %283 = load ptr, ptr %281, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %283, ptr noundef nonnull @.str.15) #8
  br label %284

284:                                              ; preds = %280, %225, %224, %188, %86, %83, %73, %40, %32, %26, %18, %15, %2
  %285 = phi i32 [ %229, %280 ], [ -95, %188 ], [ -95, %2 ], [ -95, %15 ], [ -95, %18 ], [ -22, %26 ], [ -34, %32 ], [ -12, %40 ], [ 0, %225 ], [ 0, %224 ], [ -34, %73 ], [ -22, %86 ], [ -95, %83 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7
  ret i32 %285
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tc_setup_etf(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 37, i32 45
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %31, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tc_etf_qopt_offload, ptr %1, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 36
  %10 = load ptr, ptr %9, align 64
  %11 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %10, i32 0, i32 30
  %12 = load i32, ptr %11, align 4
  %13 = icmp ult i32 %8, %12
  br i1 %13, label %14, label %31

14:                                               ; preds = %6
  %15 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 23, i32 %8, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %14
  %20 = load i8, ptr %1, align 4
  %21 = icmp eq i8 %20, 0
  %22 = and i32 %16, -3
  %23 = select i1 %21, i32 0, i32 2
  %24 = or i32 %23, %22
  store i32 %24, ptr %15, align 4
  %25 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 14
  %26 = load ptr, ptr %25, align 4
  %27 = load i8, ptr %1, align 4
  %28 = icmp eq i8 %27, 0
  %29 = select i1 %28, ptr @.str.18, ptr @.str.17
  %30 = load i32, ptr %7, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %26, ptr noundef nonnull @.str.16, ptr noundef nonnull %29, i32 noundef %30) #8
  br label %31

31:                                               ; preds = %19, %14, %6, %2
  %32 = phi i32 [ 0, %19 ], [ -95, %2 ], [ -22, %6 ], [ -22, %14 ]
  ret i32 %32
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tc_add_ip4_flow(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = alloca %struct.flow_match_ipv4_addrs, align 8
  %5 = getelementptr inbounds %struct.flow_cls_offload, ptr %1, i32 0, i32 3
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.stmmac_flow_entry, ptr %2, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 1
  %11 = icmp ne i32 %10, 0
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  store i64 0, ptr %4, align 8, !annotation !8
  %12 = load i32, ptr %7, align 4
  %13 = and i32 %12, 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %66, label %15

15:                                               ; preds = %3
  call void @flow_rule_match_ipv4_addrs(ptr noundef %6, ptr noundef nonnull %4) #7
  %16 = load ptr, ptr %4, align 8
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.flow_match_ipv4_addrs, ptr %4, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, %17
  %22 = call i32 @llvm.bswap.i32(i32 %21)
  %23 = icmp eq i32 %21, 0
  br i1 %23, label %41, label %24

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 16
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %66, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.stmmac_ops, ptr %27, i32 0, i32 43
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %66, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.stmmac_flow_entry, ptr %2, i32 0, i32 4
  %35 = load i32, ptr %34, align 4
  %36 = call i32 %31(ptr noundef %26, i32 noundef %35, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext %11, i32 noundef %22) #7
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %66

38:                                               ; preds = %33
  %39 = load ptr, ptr %4, align 8
  %40 = load ptr, ptr %18, align 4
  br label %41

41:                                               ; preds = %38, %15
  %42 = phi ptr [ %40, %38 ], [ %19, %15 ]
  %43 = phi ptr [ %39, %38 ], [ %16, %15 ]
  %44 = getelementptr inbounds %struct.flow_dissector_key_ipv4_addrs, ptr %43, i32 0, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr inbounds %struct.flow_dissector_key_ipv4_addrs, ptr %42, i32 0, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = and i32 %47, %45
  %49 = call i32 @llvm.bswap.i32(i32 %48)
  %50 = icmp eq i32 %48, 0
  br i1 %50, label %65, label %51

51:                                               ; preds = %41
  %52 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 16
  %53 = load ptr, ptr %52, align 4
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %66, label %56

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.stmmac_ops, ptr %54, i32 0, i32 43
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %66, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.stmmac_flow_entry, ptr %2, i32 0, i32 4
  %62 = load i32, ptr %61, align 4
  %63 = call i32 %58(ptr noundef %53, i32 noundef %62, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext %11, i32 noundef %49) #7
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60, %41
  br label %66

66:                                               ; preds = %65, %60, %56, %51, %33, %29, %24, %3
  %67 = phi i32 [ 0, %65 ], [ -22, %3 ], [ %36, %33 ], [ %63, %60 ], [ -22, %29 ], [ -22, %24 ], [ -22, %56 ], [ -22, %51 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  ret i32 %67
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tc_add_ports_flow(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.flow_match_ports, align 8
  %5 = getelementptr inbounds %struct.flow_cls_offload, ptr %1, i32 0, i32 3
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.stmmac_flow_entry, ptr %2, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 1
  %11 = icmp ne i32 %10, 0
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  store i64 0, ptr %4, align 8, !annotation !8
  %12 = load i32, ptr %7, align 4
  %13 = and i32 %12, 16
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %74, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.stmmac_flow_entry, ptr %2, i32 0, i32 2
  %17 = load i8, ptr %16, align 4
  switch i8 %17, label %74 [
    i8 6, label %19
    i8 17, label %18
  ]

18:                                               ; preds = %15
  br label %19

19:                                               ; preds = %18, %15
  %20 = phi i1 [ true, %18 ], [ false, %15 ]
  call void @flow_rule_match_ports(ptr noundef %6, ptr noundef nonnull %4) #7
  %21 = load ptr, ptr %4, align 8
  %22 = load i16, ptr %21, align 4
  %23 = getelementptr inbounds %struct.flow_match_ports, ptr %4, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = load i16, ptr %24, align 4
  %26 = and i16 %25, %22
  %27 = call i16 @llvm.bswap.i16(i16 %26)
  %28 = zext i16 %27 to i32
  %29 = icmp eq i16 %26, 0
  br i1 %29, label %47, label %30

30:                                               ; preds = %19
  %31 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 16
  %32 = load ptr, ptr %31, align 4
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %74, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.stmmac_ops, ptr %33, i32 0, i32 44
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %74, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.stmmac_flow_entry, ptr %2, i32 0, i32 4
  %41 = load i32, ptr %40, align 4
  %42 = call i32 %37(ptr noundef %32, i32 noundef %41, i1 noundef zeroext true, i1 noundef zeroext %20, i1 noundef zeroext true, i1 noundef zeroext %11, i32 noundef %28) #7
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %74

44:                                               ; preds = %39
  %45 = load ptr, ptr %4, align 8
  %46 = load ptr, ptr %23, align 4
  br label %47

47:                                               ; preds = %44, %19
  %48 = phi ptr [ %46, %44 ], [ %24, %19 ]
  %49 = phi ptr [ %45, %44 ], [ %21, %19 ]
  %50 = getelementptr inbounds %struct.anon.149, ptr %49, i32 0, i32 1
  %51 = load i16, ptr %50, align 2
  %52 = getelementptr inbounds %struct.anon.149, ptr %48, i32 0, i32 1
  %53 = load i16, ptr %52, align 2
  %54 = and i16 %53, %51
  %55 = call i16 @llvm.bswap.i16(i16 %54)
  %56 = zext i16 %55 to i32
  %57 = icmp eq i16 %54, 0
  br i1 %57, label %72, label %58

58:                                               ; preds = %47
  %59 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 16
  %60 = load ptr, ptr %59, align 4
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %74, label %63

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.stmmac_ops, ptr %61, i32 0, i32 44
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %74, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.stmmac_flow_entry, ptr %2, i32 0, i32 4
  %69 = load i32, ptr %68, align 4
  %70 = call i32 %65(ptr noundef %60, i32 noundef %69, i1 noundef zeroext true, i1 noundef zeroext %20, i1 noundef zeroext false, i1 noundef zeroext %11, i32 noundef %56) #7
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %67, %47
  %73 = getelementptr inbounds %struct.stmmac_flow_entry, ptr %2, i32 0, i32 5
  store i32 1, ptr %73, align 4
  br label %74

74:                                               ; preds = %72, %67, %63, %58, %39, %35, %30, %15, %3
  %75 = phi i32 [ 0, %72 ], [ -22, %3 ], [ -22, %15 ], [ %42, %39 ], [ %70, %67 ], [ -22, %35 ], [ -22, %30 ], [ -22, %63 ], [ -22, %58 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  ret i32 %75
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_basic(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_ipv4_addrs(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_ports(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_vlan(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @stmmac_fpe_handshake(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind readnone }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i8 0, i8 2}
!11 = !{!12}
!12 = distinct !{!12, !13, !"stmmac_calc_tas_basetime: argument 0:thread"}
!13 = distinct !{!13, !"stmmac_calc_tas_basetime"}
!14 = !{!15}
!15 = distinct !{!15, !13, !"stmmac_calc_tas_basetime: argument 0"}
!16 = !{i64 502187, i64 502214, i64 502236, i64 502264}
!17 = !{i64 502595, i64 502622, i64 502655, i64 502676, i64 502703, i64 502729}
